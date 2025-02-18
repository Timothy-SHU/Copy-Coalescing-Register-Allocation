; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_nla_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_nla_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.IdAdtTemplate = type { %struct.ID, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }

@rna_NlaTrack_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaTrack_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaTrack_rna_properties_begin, ptr @NlaTrack_rna_properties_next, ptr @NlaTrack_rna_properties_end, ptr @NlaTrack_rna_properties_get, ptr null, ptr null, ptr @NlaTrack_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_NlaTrack_strips = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaTrack_name, ptr @rna_NlaTrack_rna_type, i32 -1, ptr @.str.8, i32 0, ptr @.str.9, ptr @.str.10, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_NlaStrips, ptr null }, ptr @NlaTrack_strips_begin, ptr @NlaTrack_strips_next, ptr @NlaTrack_strips_end, ptr @NlaTrack_strips_get, ptr null, ptr @NlaTrack_strips_lookup_int, ptr @NlaTrack_strips_lookup_string, ptr null, ptr @RNA_NlaStrip }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"name string\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@rna_NlaStrips_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrips_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrips_rna_properties_begin, ptr @NlaStrips_rna_properties_next, ptr @NlaStrips_rna_properties_end, ptr @NlaStrips_rna_properties_get, ptr null, ptr null, ptr @NlaStrips_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_NlaStrip_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_rna_properties_begin, ptr @NlaStrip_rna_properties_next, ptr @NlaStrip_rna_properties_end, ptr @NlaStrip_rna_properties_get, ptr null, ptr null, ptr @NlaStrip_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Action = external global %struct.StructRNA, align 8
@rna_NlaStrip_fcurves = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_modifiers, ptr @rna_NlaStrip_scale, i32 -1, ptr @.str.83, i32 0, ptr @.str.84, ptr @.str.85, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_fcurves_begin, ptr @NlaStrip_fcurves_next, ptr @NlaStrip_fcurves_end, ptr @NlaStrip_fcurves_get, ptr null, ptr @NlaStrip_fcurves_lookup_int, ptr null, ptr null, ptr @RNA_FCurve }, align 8
@rna_NlaStrip_modifiers = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_strips, ptr @rna_NlaStrip_fcurves, i32 -1, ptr @.str.86, i32 0, ptr @.str.87, ptr @.str.88, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_modifiers_begin, ptr @NlaStrip_modifiers_next, ptr @NlaStrip_modifiers_end, ptr @NlaStrip_modifiers_get, ptr null, ptr @NlaStrip_modifiers_lookup_int, ptr null, ptr null, ptr @RNA_FModifier }, align 8
@rna_NlaStrip_strips = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_influence, ptr @rna_NlaStrip_modifiers, i32 -1, ptr @.str.8, i32 0, ptr @.str.9, ptr @.str.89, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_strips_begin, ptr @NlaStrip_strips_next, ptr @NlaStrip_strips_end, ptr @NlaStrip_strips_get, ptr null, ptr @NlaStrip_strips_lookup_int, ptr @NlaStrip_strips_lookup_string, ptr null, ptr @RNA_NlaStrip }, align 8
@rna_NlaTrack_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaTrack_strips, ptr @rna_NlaTrack_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaTrack_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_NlaTrack_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaTrack_active, ptr @rna_NlaTrack_strips, i32 -1, ptr @.str.11, i32 262145, ptr @.str.12, ptr @.str.13, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaTrack_name_get, ptr @NlaTrack_name_length, ptr @NlaTrack_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.13 }, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"strips\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"NLA Strips\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"NLA Strips on this NLA-track\00", align 1
@RNA_NlaStrips = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_NlaStrip, ptr @RNA_NlaTrack, ptr null, %struct.ListBase { ptr @rna_NlaStrips_rna_properties, ptr @rna_NlaStrips_rna_type } }, ptr @.str.46, ptr null, ptr null, i32 4, ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 17, ptr null, ptr @rna_NlaStrips_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_NlaStrips_new_func, ptr @rna_NlaStrips_remove_func } }, align 8
@RNA_NlaStrip = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_NodeSocket, ptr @RNA_NlaStrips, ptr null, %struct.ListBase { ptr @rna_NlaStrip_rna_properties, ptr @rna_NlaStrip_use_sync_length } }, ptr @.str.33, ptr null, ptr null, i32 4, ptr @.str.114, ptr @.str.115, ptr @.str.4, i32 116, ptr @rna_NlaStrip_name, ptr @rna_NlaStrip_rna_properties, ptr null, ptr null, ptr null, ptr @rna_NlaStrip_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_NlaTrack_active = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaTrack_is_solo, ptr @rna_NlaTrack_name, i32 -1, ptr @.str.14, i32 2, ptr @.str.15, ptr @.str.16, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaTrack_active_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rna_NlaTrack_is_solo = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaTrack_select, ptr @rna_NlaTrack_active, i32 -1, ptr @.str.17, i32 3, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaTrack_is_solo_get, ptr @NlaTrack_is_solo_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"NLA Track is active\00", align 1
@rna_NlaTrack_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaTrack_mute, ptr @rna_NlaTrack_is_solo, i32 -1, ptr @.str.20, i32 3, ptr @.str.21, ptr @.str.22, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaTrack_select_get, ptr @NlaTrack_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"is_solo\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Solo\00", align 1
@.str.19 = private unnamed_addr constant [116 x i8] c"NLA Track is evaluated itself (i.e. active Action and all other NLA Tracks in the same AnimData block are disabled)\00", align 1
@rna_NlaTrack_mute = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaTrack_lock, ptr @rna_NlaTrack_select, i32 -1, ptr @.str.23, i32 3, ptr @.str.24, ptr @.str.25, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaTrack_mute_get, ptr @NlaTrack_mute_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.20 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"NLA Track is selected\00", align 1
@rna_NlaTrack_lock = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_NlaTrack_mute, i32 -1, ptr @.str.26, i32 3, ptr @.str.27, ptr @.str.28, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaTrack_lock_get, ptr @NlaTrack_lock_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.23 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"Muted\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"NLA Track is not evaluated\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"Locked\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"NLA Track is locked\00", align 1
@RNA_WireframeModifier = external global %struct.StructRNA, align 8
@.str.29 = private unnamed_addr constant [9 x i8] c"NlaTrack\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"NLA Track\00", align 1
@.str.31 = private unnamed_addr constant [62 x i8] c"A animation layer containing Actions referenced as NLA strips\00", align 1
@RNA_NlaTrack = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_NlaStrips, ptr @RNA_WireframeModifier, ptr null, %struct.ListBase { ptr @rna_NlaTrack_rna_properties, ptr @rna_NlaTrack_lock } }, ptr @.str.29, ptr null, ptr null, i32 4, ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 116, ptr @rna_NlaTrack_name, ptr @rna_NlaTrack_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_NlaStrips_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_NlaStrips_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrips_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_NlaStrips_new_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrips_new_action, ptr @rna_NlaStrips_new_name, i32 -1, ptr @.str.34, i32 7, ptr @.str.35, ptr @.str.36, i32 0, ptr @.str.4, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -2147483648, i32 2147483647, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.32 = private unnamed_addr constant [24 x i8] c"Name for the NLA Strips\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"NlaStrip\00", align 1
@rna_NlaStrips_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrips_new_start, ptr null, i32 -1, ptr @.str.11, i32 262149, ptr @.str.13, ptr @.str.32, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.33 }, align 8
@rna_NlaStrips_new_action = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrips_new_strip, ptr @rna_NlaStrips_new_start, i32 -1, ptr @.str.37, i32 8650756, ptr @.str.13, ptr @.str.38, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Action }, align 8
@.str.34 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"Start Frame\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"Start frame for this strip\00", align 1
@rna_NlaStrips_new_strip = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_NlaStrips_new_action, i32 -1, ptr @.str.39, i32 8388616, ptr @.str.13, ptr @.str.40, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_NlaStrip }, align 8
@.str.37 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"Action to assign to this strip\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"New NLA Strip\00", align 1
@rna_NlaStrips_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_NlaStrips_new_func, ptr null, %struct.ListBase { ptr @rna_NlaStrips_remove_strip, ptr @rna_NlaStrips_remove_strip } }, ptr @.str.44, i32 24, ptr @.str.45, ptr @NlaStrips_remove_call, ptr null }, align 8
@.str.41 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"Add a new Action-Clip strip to the track\00", align 1
@rna_NlaStrips_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_NlaStrips_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_NlaStrips_new_name, ptr @rna_NlaStrips_new_strip } }, ptr @.str.41, i32 24, ptr @.str.42, ptr @NlaStrips_new_call, ptr @rna_NlaStrips_new_strip }, align 8
@.str.43 = private unnamed_addr constant [20 x i8] c"NLA Strip to remove\00", align 1
@rna_NlaStrips_remove_strip = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.39, i32 264196, ptr @.str.13, ptr @.str.43, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_NlaStrip }, align 8
@.str.44 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"Remove a NLA Strip\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"NlaStrips\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"Nla Strips\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"Collection of Nla Strips\00", align 1
@rna_NlaStrip_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_name, ptr @rna_NlaStrip_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_NlaStrip_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_type, ptr @rna_NlaStrip_rna_type, i32 -1, ptr @.str.11, i32 262145, ptr @.str.12, ptr @.str.13, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_name_get, ptr @NlaStrip_name_length, ptr @NlaStrip_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.13 }, align 8
@rna_NlaStrip_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_extrapolation, ptr @rna_NlaStrip_name, i32 -1, ptr @.str.49, i32 2, ptr @.str.50, ptr @.str.51, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_type_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_NlaStrip_type_items, i32 4, i32 0 }, align 8
@rna_NlaStrip_extrapolation = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_blend_type, ptr @rna_NlaStrip_type, i32 -1, ptr @.str.52, i32 3, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_extrapolation_get, ptr @NlaStrip_extrapolation_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_NlaStrip_extrapolation_items, i32 3, i32 0 }, align 8
@.str.49 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"Type of NLA Strip\00", align 1
@rna_NlaStrip_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.119, i32 0, ptr @.str.120, ptr @.str.121 }, %struct.EnumPropertyItem { i32 1, ptr @.str.122, i32 0, ptr @.str.123, ptr @.str.124 }, %struct.EnumPropertyItem { i32 2, ptr @.str.125, i32 0, ptr @.str.126, ptr @.str.127 }, %struct.EnumPropertyItem { i32 3, ptr @.str.128, i32 0, ptr @.str.129, ptr @.str.130 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_NlaStrip_blend_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_frame_start, ptr @rna_NlaStrip_extrapolation, i32 -1, ptr @.str.55, i32 3, ptr @.str.56, ptr @.str.57, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_blend_type_get, ptr @NlaStrip_blend_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_NlaStrip_blend_type_items, i32 4, i32 0 }, align 8
@.str.52 = private unnamed_addr constant [14 x i8] c"extrapolation\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"Extrapolation\00", align 1
@.str.54 = private unnamed_addr constant [47 x i8] c"Action to take for gaps past the strip extents\00", align 1
@rna_NlaStrip_extrapolation_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 2, ptr @.str.131, i32 0, ptr @.str.132, ptr @.str.133 }, %struct.EnumPropertyItem { i32 0, ptr @.str.134, i32 0, ptr @.str.135, ptr @.str.136 }, %struct.EnumPropertyItem { i32 1, ptr @.str.137, i32 0, ptr @.str.138, ptr @.str.139 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_NlaStrip_frame_start = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_frame_end, ptr @rna_NlaStrip_blend_type, i32 -1, ptr @.str.58, i32 3, ptr @.str.35, ptr @.str.13, i32 0, ptr @.str.4, i32 2, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_NlaStrip_transform_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_frame_start_get, ptr @NlaStrip_frame_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.55 = private unnamed_addr constant [11 x i8] c"blend_type\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"Blending\00", align 1
@.str.57 = private unnamed_addr constant [65 x i8] c"Method used for combining strip's result with accumulated result\00", align 1
@rna_NlaStrip_blend_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.140, i32 0, ptr @.str.141, ptr @.str.142 }, %struct.EnumPropertyItem { i32 1, ptr @.str.143, i32 0, ptr @.str.144, ptr @.str.145 }, %struct.EnumPropertyItem { i32 2, ptr @.str.146, i32 0, ptr @.str.147, ptr @.str.148 }, %struct.EnumPropertyItem { i32 3, ptr @.str.149, i32 0, ptr @.str.150, ptr @.str.151 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_NlaStrip_frame_end = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_blend_in, ptr @rna_NlaStrip_frame_start, i32 -1, ptr @.str.59, i32 3, ptr @.str.60, ptr @.str.13, i32 0, ptr @.str.4, i32 2, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_NlaStrip_transform_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_frame_end_get, ptr @NlaStrip_frame_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.58 = private unnamed_addr constant [12 x i8] c"frame_start\00", align 1
@rna_NlaStrip_blend_in = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_blend_out, ptr @rna_NlaStrip_frame_end, i32 -1, ptr @.str.61, i32 3, ptr @.str.62, ptr @.str.63, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_blend_in_get, ptr @NlaStrip_blend_in_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.59 = private unnamed_addr constant [10 x i8] c"frame_end\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"End Frame\00", align 1
@rna_NlaStrip_blend_out = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_use_auto_blend, ptr @rna_NlaStrip_blend_in, i32 -1, ptr @.str.64, i32 3, ptr @.str.65, ptr @.str.13, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_blend_out_get, ptr @NlaStrip_blend_out_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.61 = private unnamed_addr constant [9 x i8] c"blend_in\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"Blend In\00", align 1
@.str.63 = private unnamed_addr constant [56 x i8] c"Number of frames at start of strip to fade in influence\00", align 1
@rna_NlaStrip_use_auto_blend = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_action, ptr @rna_NlaStrip_blend_out, i32 -1, ptr @.str.66, i32 3, ptr @.str.67, ptr @.str.68, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_use_auto_blend_get, ptr @NlaStrip_use_auto_blend_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.64 = private unnamed_addr constant [10 x i8] c"blend_out\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"Blend Out\00", align 1
@rna_NlaStrip_action = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_action_frame_start, ptr @rna_NlaStrip_use_auto_blend, i32 -1, ptr @.str.37, i32 8388673, ptr @.str.69, ptr @.str.70, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr @rna_NlaStrip_action_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_action_get, ptr @NlaStrip_action_set, ptr null, ptr @rna_Action_id_poll, ptr @RNA_Action }, align 8
@.str.66 = private unnamed_addr constant [15 x i8] c"use_auto_blend\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"Auto Blend In/Out\00", align 1
@.str.68 = private unnamed_addr constant [89 x i8] c"Number of frames for Blending In/Out is automatically determined from overlapping strips\00", align 1
@rna_NlaStrip_action_frame_start = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_action_frame_end, ptr @rna_NlaStrip_action, i32 -1, ptr @.str.71, i32 3, ptr @.str.72, ptr @.str.73, i32 0, ptr @.str.4, i32 2, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_action_frame_start_get, ptr @NlaStrip_action_frame_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.69 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"Action referenced by this strip\00", align 1
@rna_NlaStrip_action_frame_end = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_repeat, ptr @rna_NlaStrip_action_frame_start, i32 -1, ptr @.str.74, i32 3, ptr @.str.75, ptr @.str.76, i32 0, ptr @.str.4, i32 2, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_action_frame_end_get, ptr @NlaStrip_action_frame_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.71 = private unnamed_addr constant [19 x i8] c"action_frame_start\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"Action Start Frame\00", align 1
@.str.73 = private unnamed_addr constant [31 x i8] c"First frame from action to use\00", align 1
@rna_NlaStrip_repeat = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_scale, ptr @rna_NlaStrip_action_frame_end, i32 -1, ptr @.str.77, i32 3, ptr @.str.78, ptr @.str.79, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_repeat_get, ptr @NlaStrip_repeat_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3FB99999A0000000, float 1.000000e+03, float 0x3FB99999A0000000, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.74 = private unnamed_addr constant [17 x i8] c"action_frame_end\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"Action End Frame\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c"Last frame from action to use\00", align 1
@rna_NlaStrip_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_fcurves, ptr @rna_NlaStrip_repeat, i32 -1, ptr @.str.80, i32 3, ptr @.str.81, ptr @.str.82, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_scale_get, ptr @NlaStrip_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F1A36E2E0000000, float 1.000000e+03, float 0x3F1A36E2E0000000, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.77 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"Repeat\00", align 1
@.str.79 = private unnamed_addr constant [43 x i8] c"Number of times to repeat the action range\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"Scale\00", align 1
@.str.82 = private unnamed_addr constant [26 x i8] c"Scaling factor for action\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"fcurves\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"F-Curves\00", align 1
@.str.85 = private unnamed_addr constant [58 x i8] c"F-Curves for controlling the strip's influence and timing\00", align 1
@RNA_FCurve = external global %struct.StructRNA, align 8
@.str.86 = private unnamed_addr constant [10 x i8] c"modifiers\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"Modifiers\00", align 1
@.str.88 = private unnamed_addr constant [62 x i8] c"Modifiers affecting all the F-Curves in the referenced Action\00", align 1
@RNA_FModifier = external global %struct.StructRNA, align 8
@rna_NlaStrip_influence = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_strip_time, ptr @rna_NlaStrip_strips, i32 -1, ptr @.str.90, i32 8195, ptr @.str.91, ptr @.str.92, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 144, i32 4, ptr null, ptr null }, ptr @NlaStrip_influence_get, ptr @NlaStrip_influence_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.89 = private unnamed_addr constant [75 x i8] c"NLA Strips that this strip acts as a container for (if it is of type Meta)\00", align 1
@rna_NlaStrip_strip_time = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_use_animated_influence, ptr @rna_NlaStrip_influence, i32 -1, ptr @.str.93, i32 8195, ptr @.str.94, ptr @.str.95, i32 0, ptr @.str.4, i32 2, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 148, i32 4, ptr null, ptr null }, ptr @NlaStrip_strip_time_get, ptr @NlaStrip_strip_time_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.90 = private unnamed_addr constant [10 x i8] c"influence\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"Influence\00", align 1
@.str.92 = private unnamed_addr constant [51 x i8] c"Amount the strip contributes to the current result\00", align 1
@rna_NlaStrip_use_animated_influence = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_use_animated_time, ptr @rna_NlaStrip_strip_time, i32 -1, ptr @.str.96, i32 3, ptr @.str.97, ptr @.str.98, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_use_animated_influence_get, ptr @NlaStrip_use_animated_influence_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.93 = private unnamed_addr constant [11 x i8] c"strip_time\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"Strip Time\00", align 1
@.str.95 = private unnamed_addr constant [39 x i8] c"Frame of referenced Action to evaluate\00", align 1
@rna_NlaStrip_use_animated_time = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_use_animated_time_cyclic, ptr @rna_NlaStrip_use_animated_influence, i32 -1, ptr @.str.99, i32 3, ptr @.str.100, ptr @.str.101, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_use_animated_time_get, ptr @NlaStrip_use_animated_time_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.96 = private unnamed_addr constant [23 x i8] c"use_animated_influence\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"Animated Influence\00", align 1
@.str.98 = private unnamed_addr constant [83 x i8] c"Influence setting is controlled by an F-Curve rather than automatically determined\00", align 1
@rna_NlaStrip_use_animated_time_cyclic = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_active, ptr @rna_NlaStrip_use_animated_time, i32 -1, ptr @.str.102, i32 3, ptr @.str.103, ptr @.str.104, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_NlaStrip_transform_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_use_animated_time_cyclic_get, ptr @NlaStrip_use_animated_time_cyclic_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.99 = private unnamed_addr constant [18 x i8] c"use_animated_time\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"Animated Strip Time\00", align 1
@.str.101 = private unnamed_addr constant [76 x i8] c"Strip time is controlled by an F-Curve rather than automatically determined\00", align 1
@rna_NlaStrip_active = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_select, ptr @rna_NlaStrip_use_animated_time_cyclic, i32 -1, ptr @.str.14, i32 2, ptr @.str.15, ptr @.str.105, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_active_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.102 = private unnamed_addr constant [25 x i8] c"use_animated_time_cyclic\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"Cyclic Strip Time\00", align 1
@.str.104 = private unnamed_addr constant [54 x i8] c"Cycle the animated time within the action start & end\00", align 1
@rna_NlaStrip_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_mute, ptr @rna_NlaStrip_active, i32 -1, ptr @.str.20, i32 3, ptr @.str.21, ptr @.str.106, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_select_get, ptr @NlaStrip_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.105 = private unnamed_addr constant [20 x i8] c"NLA Strip is active\00", align 1
@rna_NlaStrip_mute = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_use_reverse, ptr @rna_NlaStrip_select, i32 -1, ptr @.str.23, i32 3, ptr @.str.24, ptr @.str.107, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_mute_get, ptr @NlaStrip_mute_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.106 = private unnamed_addr constant [22 x i8] c"NLA Strip is selected\00", align 1
@rna_NlaStrip_use_reverse = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaStrip_use_sync_length, ptr @rna_NlaStrip_mute, i32 -1, ptr @.str.108, i32 3, ptr @.str.109, ptr @.str.110, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_use_reverse_get, ptr @NlaStrip_use_reverse_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.107 = private unnamed_addr constant [27 x i8] c"NLA Strip is not evaluated\00", align 1
@rna_NlaStrip_use_sync_length = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_NlaStrip_use_reverse, i32 -1, ptr @.str.111, i32 3, ptr @.str.112, ptr @.str.113, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaStrip_use_sync_length_get, ptr @NlaStrip_use_sync_length_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.108 = private unnamed_addr constant [12 x i8] c"use_reverse\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"Reversed\00", align 1
@.str.110 = private unnamed_addr constant [89 x i8] c"NLA Strip is played back in reverse order (only when timing is automatically determined)\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"use_sync_length\00", align 1
@.str.112 = private unnamed_addr constant [19 x i8] c"Sync Action Length\00", align 1
@.str.113 = private unnamed_addr constant [85 x i8] c"Update range of frames referenced from action after tweaking strip and its keyframes\00", align 1
@RNA_NodeSocket = external global %struct.StructRNA, align 8
@.str.114 = private unnamed_addr constant [10 x i8] c"NLA Strip\00", align 1
@.str.115 = private unnamed_addr constant [43 x i8] c"A container referencing an existing Action\00", align 1
@.str.116 = private unnamed_addr constant [27 x i8] c"Unable to create new strip\00", align 1
@.str.117 = private unnamed_addr constant [86 x i8] c"Unable to add strip (the track does not have any space to accommodate this new strip)\00", align 1
@.str.118 = private unnamed_addr constant [39 x i8] c"NLA strip '%s' not found in track '%s'\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"CLIP\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"Action Clip\00", align 1
@.str.121 = private unnamed_addr constant [33 x i8] c"NLA Strip references some Action\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"TRANSITION\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"Transition\00", align 1
@.str.124 = private unnamed_addr constant [48 x i8] c"NLA Strip 'transitions' between adjacent strips\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"META\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"Meta\00", align 1
@.str.127 = private unnamed_addr constant [50 x i8] c"NLA Strip acts as a container for adjacent strips\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"SOUND\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"Sound Clip\00", align 1
@.str.130 = private unnamed_addr constant [50 x i8] c"NLA Strip representing a sound event for speakers\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"NOTHING\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"Nothing\00", align 1
@.str.133 = private unnamed_addr constant [40 x i8] c"Strip has no influence past its extents\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"HOLD\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"Hold\00", align 1
@.str.136 = private unnamed_addr constant [80 x i8] c"Hold the first frame if no previous strips in track, and always hold last frame\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"HOLD_FORWARD\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"Hold Forward\00", align 1
@.str.139 = private unnamed_addr constant [21 x i8] c"Only hold last frame\00", align 1
@.str.140 = private unnamed_addr constant [8 x i8] c"REPLACE\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"Replace\00", align 1
@.str.142 = private unnamed_addr constant [79 x i8] c"Result strip replaces the accumulated results by amount specified by influence\00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.145 = private unnamed_addr constant [61 x i8] c"Weighted result of strip is added to the accumulated results\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"SUBTRACT\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"Subtract\00", align 1
@.str.148 = private unnamed_addr constant [65 x i8] c"Weighted result of strip is removed from the accumulated results\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"MULTIPLY\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"Multiply\00", align 1
@.str.151 = private unnamed_addr constant [68 x i8] c"Weighted result of strip is multiplied with the accumulated results\00", align 1
@.str.152 = private unnamed_addr constant [45 x i8] c"animation_data.nla_tracks[\22%s\22].strips[\22%s\22]\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @NlaTrack_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_NlaTrack_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #11
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #11
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

declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define internal void @NlaTrack_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @NlaTrack_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @NlaTrack_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @NlaTrack_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @NlaTrack_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @NlaTrack_strips_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_NlaTrack_strips, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.NlaTrack, ptr %5, i64 0, i32 2
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #11
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #11, !noalias !46
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_NlaStrip, ptr noundef %13) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @NlaTrack_strips_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_NlaStrip, ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaTrack_strips_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #11, !noalias !49
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_NlaStrip, ptr noundef %8) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @NlaTrack_strips_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @NlaTrack_strips_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_NlaTrack_strips, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.NlaTrack, ptr %8, i64 0, i32 2
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #11
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #11, !noalias !52
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_NlaStrip, ptr noundef %17) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br label %18

18:                                               ; preds = %3, %15
  %19 = load i32, ptr %12, align 8, !tbaa !44
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !55
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
  %33 = load ptr, ptr %22, align 8, !tbaa !57
  br label %46

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ %1, %27 ]
  %36 = add nsw i32 %35, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #11
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !58

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
  %52 = load ptr, ptr %48, align 8, !tbaa !61
  store ptr %52, ptr %22, align 8, !tbaa !57
  %53 = icmp sgt i32 %47, 1
  br i1 %53, label %46, label %54, !llvm.loop !63

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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #11, !noalias !64
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_NlaStrip, ptr noundef %63) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  br label %64

64:                                               ; preds = %60, %62, %18
  %65 = phi i1 [ false, %18 ], [ %61, %62 ], [ %61, %60 ]
  %66 = zext i1 %65 to i32
  call void @rna_iterator_listbase_end(ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #11
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NlaTrack_strips_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #11
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 2
  store ptr @rna_NlaTrack_strips, ptr %11, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.NlaTrack, ptr %9, i64 0, i32 2
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef null) #11
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !44
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %18 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #11, !noalias !67
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull @RNA_NlaStrip, ptr noundef %18) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  br label %19

19:                                               ; preds = %3, %16
  %20 = load i32, ptr %13, align 8, !tbaa !44
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %65, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %24 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  br label %25

25:                                               ; preds = %22, %59
  %26 = phi i8 [ 0, %22 ], [ %54, %59 ]
  %27 = load ptr, ptr %24, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %53, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.NlaStrip, ptr %27, i64 0, i32 7
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #12
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i32 %32, 1024
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef nonnull %30, i64 noundef 64) #11
  %36 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %50

38:                                               ; preds = %29
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %40 = add i64 %31, 1
  %41 = and i64 %40, 4294967295
  %42 = call ptr %39(i64 noundef %41, ptr noundef nonnull @.str) #11
  %43 = load ptr, ptr %24, align 8, !tbaa !45
  %44 = getelementptr inbounds %struct.NlaStrip, ptr %43, i64 0, i32 7
  %45 = call ptr @BLI_strncpy_utf8(ptr noundef %42, ptr noundef nonnull %44, i64 noundef 64) #11
  %46 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %1) #12
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %48(ptr noundef %42) #11
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
  call void @rna_iterator_listbase_next(ptr noundef nonnull %6) #11
  %55 = load i32, ptr %13, align 8, !tbaa !44
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %58 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #11, !noalias !70
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull @RNA_NlaStrip, ptr noundef %58) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br label %59

59:                                               ; preds = %53, %57
  %60 = load i32, ptr %13, align 8, !tbaa !44
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %25, !llvm.loop !73

62:                                               ; preds = %50, %59
  %63 = phi i8 [ %54, %59 ], [ %51, %50 ]
  %64 = zext nneg i8 %63 to i32
  br label %65

65:                                               ; preds = %62, %19
  %66 = phi i32 [ 0, %19 ], [ %64, %62 ]
  call void @rna_iterator_listbase_end(ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #11
  ret i32 %66
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_name_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 7
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #12
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 7
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @NlaTrack_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.NlaTrack, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #11
  ret void
}

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaTrack_name_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %3, i64 0, i32 5
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #12
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @NlaTrack_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.NlaTrack, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaTrack_active_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !74
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaTrack_is_solo_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !74
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaTrack_is_solo_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !77
  %6 = tail call ptr @BKE_animdata_from_id(ptr noundef %5) #11
  %7 = icmp eq ptr %4, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %13, %8 ], [ %4, %2 ]
  %10 = getelementptr inbounds %struct.NlaTrack, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !74
  %12 = and i32 %11, -9
  store i32 %12, ptr %10, align 8, !tbaa !74
  %13 = load ptr, ptr %9, align 8, !tbaa !78
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8, !llvm.loop !79

15:                                               ; preds = %8, %15
  %16 = phi ptr [ %21, %15 ], [ %4, %8 ]
  %17 = getelementptr inbounds %struct.NlaTrack, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !74
  %19 = and i32 %18, -9
  store i32 %19, ptr %17, align 8, !tbaa !74
  %20 = getelementptr inbounds %struct.NlaTrack, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !80
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15, !llvm.loop !81

23:                                               ; preds = %15
  %24 = icmp eq i32 %1, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.NlaTrack, ptr %4, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !74
  %28 = or i32 %27, 8
  store i32 %28, ptr %26, align 8, !tbaa !74
  %29 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !82
  %31 = or i32 %30, 1
  store i32 %31, ptr %29, align 8, !tbaa !82
  br label %36

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !82
  %35 = and i32 %34, -2
  store i32 %35, ptr %33, align 8, !tbaa !82
  br label %36

36:                                               ; preds = %2, %25, %32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaTrack_select_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !74
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaTrack_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaTrack, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !74
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaTrack_mute_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !74
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaTrack_mute_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaTrack, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !74
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaTrack_lock_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !74
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaTrack_lock_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaTrack, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !74
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrips_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_NlaStrips_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #11
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @NlaStrips_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrips_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrips_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NlaStrips_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrips_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_NlaStrip_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #11
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @NlaStrip_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NlaStrip_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 7
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #11
  %7 = load ptr, ptr %0, align 8, !tbaa !77
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %7) #11
  tail call void @BKE_nlastrip_validate_name(ptr noundef %10, ptr noundef %4) #11
  br label %11

11:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 21
  %5 = load i16, ptr %4, align 2, !tbaa !86
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_extrapolation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 19
  %5 = load i16, ptr %4, align 2, !tbaa !88
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_extrapolation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 19
  store i16 %5, ptr %6, align 2, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_blend_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 18
  %5 = load i16, ptr %4, align 8, !tbaa !89
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_blend_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 18
  store i16 %5, ptr %6, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_frame_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 8, !tbaa !90
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_frame_start_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 21
  %10 = load i16, ptr %9, align 2, !tbaa !86
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 10
  %14 = load float, ptr %13, align 8, !tbaa !90
  %15 = fadd float %14, 0x3FB99999A0000000
  %16 = fcmp ogt float %15, %1
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 11
  %19 = load float, ptr %18, align 4, !tbaa !92
  %20 = fadd float %19, 0xBFB99999A0000000
  %21 = fcmp olt float %20, %1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %17, %12
  %24 = phi float [ %20, %22 ], [ %1, %17 ], [ %15, %12 ]
  %25 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 11
  store float %24, ptr %25, align 4, !tbaa !92
  br label %43

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 11
  %28 = load float, ptr %27, align 4, !tbaa !92
  %29 = fcmp ogt float %28, %1
  br i1 %29, label %43, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 11
  %32 = load float, ptr %31, align 4, !tbaa !92
  %33 = fadd float %32, 0xBFB99999A0000000
  %34 = fcmp olt float %33, %1
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  br label %43

36:                                               ; preds = %2
  %37 = fcmp olt float %1, -3.000000e+05
  br i1 %37, label %43, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 11
  %40 = load float, ptr %39, align 4, !tbaa !92
  %41 = fcmp olt float %40, %1
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %23, %26, %30, %35, %36, %38, %42
  %44 = phi float [ %24, %23 ], [ %33, %35 ], [ %1, %30 ], [ %40, %42 ], [ %1, %38 ], [ %28, %26 ], [ -3.000000e+05, %36 ]
  %45 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 10
  store float %44, ptr %45, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_frame_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 4, !tbaa !92
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_frame_end_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 21
  %9 = load i16, ptr %8, align 2, !tbaa !86
  %10 = icmp eq i16 %9, 1
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 10
  %12 = load float, ptr %11, align 8, !tbaa !90
  %13 = fadd float %12, 0x3FB99999A0000000
  %14 = fcmp ogt float %13, %1
  br i1 %10, label %15, label %25

15:                                               ; preds = %7
  br i1 %14, label %22, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 11
  %18 = load float, ptr %17, align 4, !tbaa !92
  %19 = fadd float %18, 0xBFB99999A0000000
  %20 = fcmp olt float %19, %1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %16, %15
  %23 = phi float [ %19, %21 ], [ %1, %16 ], [ %13, %15 ]
  %24 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 10
  store float %23, ptr %24, align 8, !tbaa !90
  br label %39

25:                                               ; preds = %7
  br i1 %14, label %39, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 10
  %28 = load float, ptr %27, align 8, !tbaa !90
  %29 = fcmp olt float %28, %1
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  br label %39

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 10
  %33 = load float, ptr %32, align 8, !tbaa !90
  %34 = fadd float %33, 0x3FB99999A0000000
  %35 = fcmp ogt float %34, %1
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = fcmp ogt float %1, 3.000000e+05
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %38, %36, %31, %30, %26, %25, %22
  %40 = phi float [ %23, %22 ], [ %28, %30 ], [ %1, %26 ], [ 3.000000e+05, %38 ], [ %1, %36 ], [ %13, %25 ], [ %34, %31 ]
  %41 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 11
  store float %40, ptr %41, align 4, !tbaa !92
  %42 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 21
  %43 = load i16, ptr %42, align 2, !tbaa !86
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 10
  %47 = load float, ptr %46, align 8, !tbaa !90
  %48 = fsub float %40, %47
  %49 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 13
  %50 = load float, ptr %49, align 4, !tbaa !94
  %51 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 12
  %52 = load float, ptr %51, align 8, !tbaa !95
  %53 = fsub float %50, %52
  %54 = tail call float @llvm.fabs.f32(float %53)
  %55 = fcmp ult float %54, 0x3E80000000000000
  %56 = select i1 %55, float 1.000000e+00, float %53
  %57 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 14
  %58 = load float, ptr %57, align 8, !tbaa !96
  %59 = fmul float %58, %56
  %60 = fdiv float %48, %59
  %61 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 15
  store float %60, ptr %61, align 4, !tbaa !97
  br label %62

62:                                               ; preds = %39, %45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_blend_in_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 16
  %5 = load float, ptr %4, align 8, !tbaa !98
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_blend_in_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 11
  %6 = load float, ptr %5, align 4, !tbaa !92
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 10
  %8 = load float, ptr %7, align 8, !tbaa !90
  %9 = fsub float %6, %8
  %10 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 17
  %11 = load float, ptr %10, align 4, !tbaa !99
  %12 = fsub float %9, %11
  %13 = fcmp olt float %1, 0.000000e+00
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = fcmp olt float %12, %1
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %2, %14, %16
  %18 = phi float [ %12, %16 ], [ %1, %14 ], [ 0.000000e+00, %2 ]
  %19 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 16
  store float %18, ptr %19, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_blend_out_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 4, !tbaa !99
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_blend_out_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 11
  %6 = load float, ptr %5, align 4, !tbaa !92
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 10
  %8 = load float, ptr %7, align 8, !tbaa !90
  %9 = fsub float %6, %8
  %10 = fcmp olt float %1, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = fcmp olt float %9, %1
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %2, %11, %13
  %15 = phi float [ %9, %13 ], [ %1, %11 ], [ 0.000000e+00, %2 ]
  %16 = fsub float %9, %15
  %17 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 16
  %18 = load float, ptr %17, align 8, !tbaa !98
  %19 = fcmp olt float %16, %18
  %20 = fsub float %9, %18
  %21 = select i1 %19, float %20, float %15
  %22 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 17
  store float %21, ptr %22, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_use_auto_blend_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !100
  %6 = lshr i32 %5, 10
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_use_auto_blend_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 8, !tbaa !100
  br i1 %5, label %17, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 1024
  store i32 %9, ptr %6, align 8, !tbaa !100
  %10 = load ptr, ptr %0, align 8, !tbaa !77
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.IdAdtTemplate, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  tail call void @BKE_nla_validate_state(ptr noundef nonnull %14) #11
  br label %21

17:                                               ; preds = %2
  %18 = and i32 %7, -1025
  store i32 %18, ptr %6, align 8, !tbaa !100
  %19 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 16
  store float 0.000000e+00, ptr %19, align 8, !tbaa !98
  %20 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 17
  store float 0.000000e+00, ptr %20, align 4, !tbaa !99
  br label %21

21:                                               ; preds = %8, %12, %16, %17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_action_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Action, ptr noundef %6) #11
  ret void
}

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_action_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #11
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #11
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !104
  ret void
}

declare void @id_us_min(ptr noundef) local_unnamed_addr #3

declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_action_frame_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 8, !tbaa !95
  ret float %5
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_action_frame_start_set(ptr nocapture noundef readonly %0, float noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -3.000000e+05
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 13
  %8 = load float, ptr %7, align 4, !tbaa !94
  %9 = fcmp olt float %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %2, %6, %10
  %12 = phi float [ %8, %10 ], [ %1, %6 ], [ -3.000000e+05, %2 ]
  %13 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 12
  store float %12, ptr %13, align 8, !tbaa !95
  tail call void @BKE_nlastrip_recalculate_bounds(ptr noundef %4) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_action_frame_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 4, !tbaa !94
  ret float %5
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_action_frame_end_set(ptr nocapture noundef readonly %0, float noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 12
  %6 = load float, ptr %5, align 8, !tbaa !95
  %7 = fcmp ogt float %6, %1
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = fcmp ogt float %1, 3.000000e+05
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %2, %8, %10
  %12 = phi float [ 3.000000e+05, %10 ], [ %1, %8 ], [ %6, %2 ]
  %13 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 13
  store float %12, ptr %13, align 4, !tbaa !94
  tail call void @BKE_nlastrip_recalculate_bounds(ptr noundef %4) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_repeat_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 14
  %5 = load float, ptr %4, align 8, !tbaa !96
  ret float %5
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_repeat_set(ptr nocapture noundef readonly %0, float noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0x3F847AE140000000
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = fcmp ogt float %1, 1.000000e+03
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %2, %6, %8
  %10 = phi float [ 1.000000e+03, %8 ], [ %1, %6 ], [ 0x3F847AE140000000, %2 ]
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 14
  store float %10, ptr %11, align 8, !tbaa !96
  tail call void @BKE_nlastrip_recalculate_bounds(ptr noundef %4) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_scale_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 15
  %5 = load float, ptr %4, align 4, !tbaa !97
  ret float %5
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0x3F1A36E2E0000000
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = fcmp ogt float %1, 1.000000e+03
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %2, %6, %8
  %10 = phi float [ 1.000000e+03, %8 ], [ %1, %6 ], [ 0x3F1A36E2E0000000, %2 ]
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 15
  store float %10, ptr %11, align 4, !tbaa !97
  tail call void @BKE_nlastrip_recalculate_bounds(ptr noundef %4) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_fcurves_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_NlaStrip_fcurves, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 5
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #11
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #11, !noalias !105
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_FCurve, ptr noundef %13) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @NlaStrip_fcurves_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_FCurve, ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_fcurves_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #11, !noalias !108
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_FCurve, ptr noundef %8) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_fcurves_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @NlaStrip_fcurves_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_NlaStrip_fcurves, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 5
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #11
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #11, !noalias !111
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_FCurve, ptr noundef %17) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br label %18

18:                                               ; preds = %3, %15
  %19 = load i32, ptr %12, align 8, !tbaa !44
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !55
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
  %33 = load ptr, ptr %22, align 8, !tbaa !57
  br label %46

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ %1, %27 ]
  %36 = add nsw i32 %35, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #11
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !114

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
  %52 = load ptr, ptr %48, align 8, !tbaa !61
  store ptr %52, ptr %22, align 8, !tbaa !57
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #11, !noalias !116
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_FCurve, ptr noundef %63) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  br label %64

64:                                               ; preds = %60, %62, %18
  %65 = phi i1 [ false, %18 ], [ %61, %62 ], [ %61, %60 ]
  %66 = zext i1 %65 to i32
  call void @rna_iterator_listbase_end(ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #11
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_modifiers_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_NlaStrip_modifiers, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 6
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #11
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #11, !noalias !119
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_FModifier, ptr noundef %13) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @NlaStrip_modifiers_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_FModifier, ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_modifiers_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #11, !noalias !122
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_FModifier, ptr noundef %8) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_modifiers_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @NlaStrip_modifiers_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_NlaStrip_modifiers, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 6
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #11
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #11, !noalias !125
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_FModifier, ptr noundef %17) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br label %18

18:                                               ; preds = %3, %15
  %19 = load i32, ptr %12, align 8, !tbaa !44
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !55
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
  %33 = load ptr, ptr %22, align 8, !tbaa !57
  br label %46

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ %1, %27 ]
  %36 = add nsw i32 %35, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #11
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !128

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
  %52 = load ptr, ptr %48, align 8, !tbaa !61
  store ptr %52, ptr %22, align 8, !tbaa !57
  %53 = icmp sgt i32 %47, 1
  br i1 %53, label %46, label %54, !llvm.loop !129

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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #11, !noalias !130
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_FModifier, ptr noundef %63) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  br label %64

64:                                               ; preds = %60, %62, %18
  %65 = phi i1 [ false, %18 ], [ %61, %62 ], [ %61, %60 ]
  %66 = zext i1 %65 to i32
  call void @rna_iterator_listbase_end(ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #11
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_strips_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_NlaStrip_strips, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 2
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #11
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #11, !noalias !133
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_NlaStrip, ptr noundef %13) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @NlaStrip_strips_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_NlaStrip, ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_strips_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #11, !noalias !136
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_NlaStrip, ptr noundef %8) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_strips_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @NlaStrip_strips_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_NlaStrip_strips, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 2
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #11
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #11, !noalias !139
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_NlaStrip, ptr noundef %17) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br label %18

18:                                               ; preds = %3, %15
  %19 = load i32, ptr %12, align 8, !tbaa !44
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !55
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
  %33 = load ptr, ptr %22, align 8, !tbaa !57
  br label %46

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ %1, %27 ]
  %36 = add nsw i32 %35, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #11
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !142

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
  %52 = load ptr, ptr %48, align 8, !tbaa !61
  store ptr %52, ptr %22, align 8, !tbaa !57
  %53 = icmp sgt i32 %47, 1
  br i1 %53, label %46, label %54, !llvm.loop !143

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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #11, !noalias !144
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_NlaStrip, ptr noundef %63) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  br label %64

64:                                               ; preds = %60, %62, %18
  %65 = phi i1 [ false, %18 ], [ %61, %62 ], [ %61, %60 ]
  %66 = zext i1 %65 to i32
  call void @rna_iterator_listbase_end(ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #11
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NlaStrip_strips_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #11
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 2
  store ptr @rna_NlaStrip_strips, ptr %11, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.NlaStrip, ptr %9, i64 0, i32 2
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef null) #11
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !44
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %18 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #11, !noalias !147
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull @RNA_NlaStrip, ptr noundef %18) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  br label %19

19:                                               ; preds = %3, %16
  %20 = load i32, ptr %13, align 8, !tbaa !44
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %65, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %24 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  br label %25

25:                                               ; preds = %22, %59
  %26 = phi i8 [ 0, %22 ], [ %54, %59 ]
  %27 = load ptr, ptr %24, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %53, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.NlaStrip, ptr %27, i64 0, i32 7
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #12
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i32 %32, 1024
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef nonnull %30, i64 noundef 64) #11
  %36 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %50

38:                                               ; preds = %29
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %40 = add i64 %31, 1
  %41 = and i64 %40, 4294967295
  %42 = call ptr %39(i64 noundef %41, ptr noundef nonnull @.str) #11
  %43 = load ptr, ptr %24, align 8, !tbaa !45
  %44 = getelementptr inbounds %struct.NlaStrip, ptr %43, i64 0, i32 7
  %45 = call ptr @BLI_strncpy_utf8(ptr noundef %42, ptr noundef nonnull %44, i64 noundef 64) #11
  %46 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %1) #12
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %48(ptr noundef %42) #11
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
  call void @rna_iterator_listbase_next(ptr noundef nonnull %6) #11
  %55 = load i32, ptr %13, align 8, !tbaa !44
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %58 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #11, !noalias !150
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull @RNA_NlaStrip, ptr noundef %58) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br label %59

59:                                               ; preds = %53, %57
  %60 = load i32, ptr %13, align 8, !tbaa !44
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %25, !llvm.loop !153

62:                                               ; preds = %50, %59
  %63 = phi i8 [ %54, %59 ], [ %51, %50 ]
  %64 = zext nneg i8 %63 to i32
  br label %65

65:                                               ; preds = %62, %19
  %66 = phi i32 [ 0, %19 ], [ %64, %62 ]
  call void @rna_iterator_listbase_end(ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #11
  ret i32 %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_influence_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 8, !tbaa !154
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_influence_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 8
  store float %8, ptr %9, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_strip_time_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 4, !tbaa !155
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_strip_time_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 9
  store float %1, ptr %5, align 4, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_use_animated_influence_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !100
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_use_animated_influence_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 8, !tbaa !100
  br i1 %5, label %10, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 32
  store i32 %9, ptr %6, align 8, !tbaa !100
  tail call void @BKE_nlastrip_validate_fcurves(ptr noundef %4) #11
  br label %12

10:                                               ; preds = %2
  %11 = and i32 %7, -33
  store i32 %11, ptr %6, align 8, !tbaa !100
  br label %12

12:                                               ; preds = %8, %10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_use_animated_time_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !100
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrip_use_animated_time_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 8, !tbaa !100
  br i1 %5, label %10, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 64
  store i32 %9, ptr %6, align 8, !tbaa !100
  tail call void @BKE_nlastrip_validate_fcurves(ptr noundef %4) #11
  br label %12

10:                                               ; preds = %2
  %11 = and i32 %7, -65
  store i32 %11, ptr %6, align 8, !tbaa !100
  br label %12

12:                                               ; preds = %8, %10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_use_animated_time_cyclic_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !100
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_use_animated_time_cyclic_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 8, !tbaa !100
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_active_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !100
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_select_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !100
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 8, !tbaa !100
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_mute_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !100
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_mute_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 8, !tbaa !100
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 0, i32 4096
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_use_reverse_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !100
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_use_reverse_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 8, !tbaa !100
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_use_sync_length_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !100
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_use_sync_length_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 8, !tbaa !100
  %8 = and i32 %7, -513
  %9 = select i1 %5, i32 0, i32 512
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !100
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @NlaStrips_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc ptr @rna_NlaStrip_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, ptr noundef %5)
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @rna_NlaStrip_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.AnimData, align 8
  %7 = tail call ptr @add_nlastrip(ptr noundef %4) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.116) #11
  br label %36

10:                                               ; preds = %5
  %11 = sitofp i32 %3 to float
  %12 = getelementptr inbounds %struct.NlaStrip, ptr %7, i64 0, i32 10
  %13 = load float, ptr %12, align 8, !tbaa !90
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds %struct.NlaStrip, ptr %7, i64 0, i32 11
  %16 = load float, ptr %15, align 4, !tbaa !92
  %17 = fadd float %16, %14
  store float %17, ptr %15, align 4, !tbaa !92
  store float %11, ptr %12, align 8, !tbaa !90
  %18 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %19 = tail call zeroext i8 @BKE_nlastrips_add_strip(ptr noundef nonnull %18, ptr noundef nonnull %7) #11
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.117) #11
  tail call void @free_nlastrip(ptr noundef null, ptr noundef nonnull %7) #11
  br label %36

22:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %6, i8 0, i64 96, i1 false)
  br label %23

23:                                               ; preds = %23, %22
  %24 = phi ptr [ %0, %22 ], [ %26, %23 ]
  %25 = getelementptr inbounds %struct.NlaTrack, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !80
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !156

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 3
  store ptr %24, ptr %29, align 8, !tbaa !157
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi ptr [ %0, %28 ], [ %32, %30 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !78
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %30, !llvm.loop !158

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 3, i32 1
  store ptr %31, ptr %35, align 8, !tbaa !159
  call void @BKE_nlastrip_validate_name(ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #11
  call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 239665155, ptr noundef null) #11
  br label %36

36:                                               ; preds = %34, %21, %9
  %37 = phi ptr [ null, %9 ], [ null, %21 ], [ %7, %34 ]
  ret ptr %37
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrips_new_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !160
  %8 = getelementptr inbounds i8, ptr %7, i64 8
  %9 = load i32, ptr %8, align 4, !tbaa !162
  %10 = getelementptr inbounds i8, ptr %7, i64 12
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds i8, ptr %7, i64 20
  %13 = tail call fastcc ptr @rna_NlaStrip_new(ptr noundef %6, ptr noundef %0, ptr noundef %1, i32 noundef %9, ptr noundef %11)
  store ptr %13, ptr %12, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrips_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %8 = tail call i32 @BLI_findindex(ptr noundef nonnull %7, ptr noundef %6) #11
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 7
  %12 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 5
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.118, ptr noundef nonnull %11, ptr noundef nonnull %12) #11
  br label %14

13:                                               ; preds = %4
  tail call void @free_nlastrip(ptr noundef nonnull %7, ptr noundef %6) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 239665156, ptr noundef null) #11
  br label %14

14:                                               ; preds = %10, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaStrips_remove_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !160
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.NlaTrack, ptr %6, i64 0, i32 2
  %12 = tail call i32 @BLI_findindex(ptr noundef nonnull %11, ptr noundef %10) #11
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.NlaStrip, ptr %10, i64 0, i32 7
  %16 = getelementptr inbounds %struct.NlaTrack, ptr %6, i64 0, i32 5
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.118, ptr noundef nonnull %15, ptr noundef nonnull %16) #11
  br label %18

17:                                               ; preds = %4
  tail call void @free_nlastrip(ptr noundef nonnull %11, ptr noundef %10) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665156, ptr noundef null) #11
  br label %18

18:                                               ; preds = %14, %17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_NlaStrip_transform_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @BKE_nlameta_flush_transforms(ptr noundef %5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @rna_NlaStrip_action_editable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = load ptr, ptr %0, align 8, !tbaa !77
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %4) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !82
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !163
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !164
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %6, %18, %1
  %23 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %24 = load i32, ptr %23, align 8, !tbaa !100
  %25 = lshr i32 %24, 4
  %26 = and i32 %25, 1
  %27 = xor i32 %26, 1
  br label %28

28:                                               ; preds = %22, %18, %14, %9
  %29 = phi i32 [ 0, %9 ], [ 0, %14 ], [ 0, %18 ], [ %27, %22 ]
  ret i32 %29
}

declare i32 @rna_Action_id_poll(ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) #3

; Function Attrs: nounwind uwtable
define internal ptr @rna_NlaStrip_path(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [128 x i8], align 16
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = load ptr, ptr %0, align 8, !tbaa !77
  %7 = tail call ptr @BKE_animdata_from_id(ptr noundef %6) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %16

13:                                               ; preds = %20
  %14 = load ptr, ptr %18, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16, !llvm.loop !165

16:                                               ; preds = %9, %13
  %17 = phi i1 [ %15, %13 ], [ %12, %9 ]
  %18 = phi ptr [ %14, %13 ], [ %11, %9 ]
  %19 = getelementptr inbounds %struct.NlaTrack, ptr %18, i64 0, i32 2
  br label %20

20:                                               ; preds = %24, %16
  %21 = phi ptr [ %19, %16 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %13, label %24

24:                                               ; preds = %20
  %25 = icmp eq ptr %22, %5
  br i1 %25, label %26, label %20, !llvm.loop !166

26:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #11
  %27 = getelementptr inbounds %struct.NlaTrack, ptr %18, i64 0, i32 5
  %28 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %27, i64 noundef 128) #11
  %29 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 7
  %30 = call i64 @BLI_strescape(ptr noundef nonnull %3, ptr noundef nonnull %29, i64 noundef 128) #11
  %31 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.152, ptr noundef nonnull %2, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #11
  br label %32

32:                                               ; preds = %13, %9, %26
  %33 = phi i1 [ %17, %26 ], [ %12, %9 ], [ %15, %13 ]
  %34 = phi ptr [ %31, %26 ], [ undef, %9 ], [ undef, %13 ]
  br i1 %33, label %35, label %37

35:                                               ; preds = %32, %1
  %36 = call ptr @BLI_strdup(ptr noundef nonnull @.str.13) #11
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi ptr [ %36, %35 ], [ %34, %32 ]
  ret ptr %38
}

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #3

declare void @BKE_nlastrip_validate_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

declare void @BKE_nla_validate_state(ptr noundef) local_unnamed_addr #3

declare void @BKE_nlastrip_recalculate_bounds(ptr noundef) local_unnamed_addr #3

declare void @BKE_nlastrip_validate_fcurves(ptr noundef) local_unnamed_addr #3

declare ptr @add_nlastrip(ptr noundef) local_unnamed_addr #3

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_nlastrips_add_strip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_nlastrip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @BKE_nlameta_flush_transforms(ptr noundef) local_unnamed_addr #3

declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #3

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

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
!46 = !{!47}
!47 = distinct !{!47, !48, !"NlaTrack_strips_get: argument 0"}
!48 = distinct !{!48, !"NlaTrack_strips_get"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"NlaTrack_strips_get: argument 0"}
!51 = distinct !{!51, !"NlaTrack_strips_get"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"NlaTrack_strips_get: argument 0"}
!54 = distinct !{!54, !"NlaTrack_strips_get"}
!55 = !{!56, !36, i64 16}
!56 = !{!"ListBaseIterator", !36, i64 0, !43, i64 8, !36, i64 16}
!57 = !{!56, !36, i64 0}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!62, !36, i64 0}
!62 = !{!"Link", !36, i64 0, !36, i64 8}
!63 = distinct !{!63, !59, !60}
!64 = !{!65}
!65 = distinct !{!65, !66, !"NlaTrack_strips_get: argument 0"}
!66 = distinct !{!66, !"NlaTrack_strips_get"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"NlaTrack_strips_get: argument 0"}
!69 = distinct !{!69, !"NlaTrack_strips_get"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"NlaTrack_strips_get: argument 0"}
!72 = distinct !{!72, !"NlaTrack_strips_get"}
!73 = distinct !{!73, !59, !60}
!74 = !{!75, !43, i64 32}
!75 = !{!"NlaTrack", !36, i64 0, !36, i64 8, !76, i64 16, !43, i64 32, !43, i64 36, !37, i64 40}
!76 = !{!"ListBase", !36, i64 0, !36, i64 8}
!77 = !{!41, !36, i64 0}
!78 = !{!75, !36, i64 0}
!79 = distinct !{!79, !59, !60}
!80 = !{!75, !36, i64 8}
!81 = distinct !{!81, !59, !60}
!82 = !{!83, !43, i64 80}
!83 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !76, i64 24, !36, i64 40, !76, i64 48, !76, i64 64, !43, i64 80, !43, i64 84, !84, i64 88, !84, i64 90, !85, i64 92}
!84 = !{!"short", !37, i64 0}
!85 = !{!"float", !37, i64 0}
!86 = !{!87, !84, i64 190}
!87 = !{!"NlaStrip", !36, i64 0, !36, i64 8, !76, i64 16, !36, i64 32, !36, i64 40, !76, i64 48, !76, i64 64, !37, i64 80, !85, i64 144, !85, i64 148, !85, i64 152, !85, i64 156, !85, i64 160, !85, i64 164, !85, i64 168, !85, i64 172, !85, i64 176, !85, i64 180, !84, i64 184, !84, i64 186, !84, i64 188, !84, i64 190, !36, i64 192, !43, i64 200, !43, i64 204}
!88 = !{!87, !84, i64 186}
!89 = !{!87, !84, i64 184}
!90 = !{!87, !85, i64 152}
!91 = !{!87, !36, i64 8}
!92 = !{!87, !85, i64 156}
!93 = !{!87, !36, i64 0}
!94 = !{!87, !85, i64 164}
!95 = !{!87, !85, i64 160}
!96 = !{!87, !85, i64 168}
!97 = !{!87, !85, i64 172}
!98 = !{!87, !85, i64 176}
!99 = !{!87, !85, i64 180}
!100 = !{!87, !43, i64 200}
!101 = !{!102, !36, i64 120}
!102 = !{!"IdAdtTemplate", !103, i64 0, !36, i64 120}
!103 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !84, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!104 = !{!87, !36, i64 32}
!105 = !{!106}
!106 = distinct !{!106, !107, !"NlaStrip_fcurves_get: argument 0"}
!107 = distinct !{!107, !"NlaStrip_fcurves_get"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"NlaStrip_fcurves_get: argument 0"}
!110 = distinct !{!110, !"NlaStrip_fcurves_get"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"NlaStrip_fcurves_get: argument 0"}
!113 = distinct !{!113, !"NlaStrip_fcurves_get"}
!114 = distinct !{!114, !59, !60}
!115 = distinct !{!115, !59, !60}
!116 = !{!117}
!117 = distinct !{!117, !118, !"NlaStrip_fcurves_get: argument 0"}
!118 = distinct !{!118, !"NlaStrip_fcurves_get"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"NlaStrip_modifiers_get: argument 0"}
!121 = distinct !{!121, !"NlaStrip_modifiers_get"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"NlaStrip_modifiers_get: argument 0"}
!124 = distinct !{!124, !"NlaStrip_modifiers_get"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"NlaStrip_modifiers_get: argument 0"}
!127 = distinct !{!127, !"NlaStrip_modifiers_get"}
!128 = distinct !{!128, !59, !60}
!129 = distinct !{!129, !59, !60}
!130 = !{!131}
!131 = distinct !{!131, !132, !"NlaStrip_modifiers_get: argument 0"}
!132 = distinct !{!132, !"NlaStrip_modifiers_get"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"NlaStrip_strips_get: argument 0"}
!135 = distinct !{!135, !"NlaStrip_strips_get"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"NlaStrip_strips_get: argument 0"}
!138 = distinct !{!138, !"NlaStrip_strips_get"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"NlaStrip_strips_get: argument 0"}
!141 = distinct !{!141, !"NlaStrip_strips_get"}
!142 = distinct !{!142, !59, !60}
!143 = distinct !{!143, !59, !60}
!144 = !{!145}
!145 = distinct !{!145, !146, !"NlaStrip_strips_get: argument 0"}
!146 = distinct !{!146, !"NlaStrip_strips_get"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"NlaStrip_strips_get: argument 0"}
!149 = distinct !{!149, !"NlaStrip_strips_get"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"NlaStrip_strips_get: argument 0"}
!152 = distinct !{!152, !"NlaStrip_strips_get"}
!153 = distinct !{!153, !59, !60}
!154 = !{!87, !85, i64 144}
!155 = !{!87, !85, i64 148}
!156 = distinct !{!156, !59, !60}
!157 = !{!83, !36, i64 24}
!158 = distinct !{!158, !59, !60}
!159 = !{!83, !36, i64 32}
!160 = !{!161, !36, i64 0}
!161 = !{!"ParameterList", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24}
!162 = !{!43, !43, i64 0}
!163 = !{!83, !36, i64 40}
!164 = !{!83, !36, i64 8}
!165 = distinct !{!165, !59, !60}
!166 = distinct !{!166, !59, !60}
