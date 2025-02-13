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

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @NlaTrack_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
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
define internal void @NlaTrack_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !45 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaTrack_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  call void @NlaTrack_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaTrack_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @NlaTrack_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaTrack_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaTrack_strips_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_NlaTrack_strips, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.NlaTrack, ptr %5, i64 0, i32 2
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #11
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @NlaTrack_strips_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @NlaTrack_strips_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !47 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_NlaStrip, ptr noundef %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaTrack_strips_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  call void @NlaTrack_strips_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaTrack_strips_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @NlaTrack_strips_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #12
  call void @NlaTrack_strips_begin(ptr noundef nonnull %4, ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !48
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
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #11
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !50

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
  %37 = load ptr, ptr %33, align 8, !tbaa !52
  store ptr %37, ptr %10, align 8, !tbaa !54
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !55

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @NlaTrack_strips_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @NlaTrack_strips_end(ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #12
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @NlaTrack_strips_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #12
  call void @NlaTrack_strips_begin(ptr noundef nonnull %4, ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !44
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !56
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @NlaStrip_name_length(ptr noundef nonnull %10) #13
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @NlaStrip_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #13
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str) #11
  call void @NlaStrip_name_get(ptr noundef nonnull %10, ptr noundef %25) #13
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #14
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %28(ptr noundef %25) #11
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @NlaTrack_strips_next(ptr noundef nonnull %4) #13
  %30 = load i32, ptr %6, align 8, !tbaa !44
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !57

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @NlaTrack_strips_end(ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #12
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_name_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 7
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 7
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaTrack_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.NlaTrack, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #11
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaTrack_name_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %3, i64 0, i32 5
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaTrack_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.NlaTrack, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaTrack_active_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !58
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaTrack_is_solo_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !58
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaTrack_is_solo_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_NlaTrack_solo_set(ptr noundef %0, i32 noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_NlaTrack_solo_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !61 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %0, align 8, !tbaa !62
  %6 = tail call ptr @BKE_animdata_from_id(ptr noundef %5) #11
  %7 = icmp eq ptr %4, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %13, %8 ], [ %4, %2 ]
  %10 = getelementptr inbounds %struct.NlaTrack, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !58
  %12 = and i32 %11, -9
  store i32 %12, ptr %10, align 8, !tbaa !58
  %13 = load ptr, ptr %9, align 8, !tbaa !63
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8, !llvm.loop !64

15:                                               ; preds = %8, %15
  %16 = phi ptr [ %21, %15 ], [ %4, %8 ]
  %17 = getelementptr inbounds %struct.NlaTrack, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !58
  %19 = and i32 %18, -9
  store i32 %19, ptr %17, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.NlaTrack, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15, !llvm.loop !66

23:                                               ; preds = %15
  %24 = icmp eq i32 %1, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.NlaTrack, ptr %4, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !58
  %28 = or i32 %27, 8
  store i32 %28, ptr %26, align 8, !tbaa !58
  %29 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !67
  %31 = or i32 %30, 1
  store i32 %31, ptr %29, align 8, !tbaa !67
  br label %36

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !67
  %35 = and i32 %34, -2
  store i32 %35, ptr %33, align 8, !tbaa !67
  br label %36

36:                                               ; preds = %25, %32, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaTrack_select_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !58
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaTrack_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaTrack, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !58
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaTrack_mute_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !58
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaTrack_mute_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaTrack, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !58
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaTrack_lock_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !58
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaTrack_lock_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaTrack, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !58
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @NlaStrips_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @NlaStrips_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !71 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrips_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  call void @NlaStrips_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrips_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @NlaStrips_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrips_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @NlaStrip_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @NlaStrip_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !72 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  call void @NlaStrip_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @NlaStrip_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_NlaStrip_name_set(ptr noundef %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_NlaStrip_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !73 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 7
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #11
  %7 = load ptr, ptr %0, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %7) #11
  tail call void @BKE_nlastrip_validate_name(ptr noundef %10, ptr noundef %4) #11
  br label %11

11:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 21
  %5 = load i16, ptr %4, align 2, !tbaa !74
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_extrapolation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 19
  %5 = load i16, ptr %4, align 2, !tbaa !76
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_extrapolation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 19
  store i16 %5, ptr %6, align 2, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_blend_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 18
  %5 = load i16, ptr %4, align 8, !tbaa !77
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_blend_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 18
  store i16 %5, ptr %6, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_frame_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 8, !tbaa !78
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_frame_start_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  tail call fastcc void @rna_NlaStrip_start_frame_set(ptr noundef %0, float noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_NlaStrip_start_frame_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #8 !PGOFuncName !79 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 21
  %10 = load i16, ptr %9, align 2, !tbaa !74
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 10
  %14 = load float, ptr %13, align 8, !tbaa !78
  %15 = fadd float %14, 0x3FB99999A0000000
  %16 = fcmp ogt float %15, %1
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 11
  %19 = load float, ptr %18, align 4, !tbaa !81
  %20 = fadd float %19, 0xBFB99999A0000000
  %21 = fcmp olt float %20, %1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %12, %17, %22
  %24 = phi float [ %20, %22 ], [ %1, %17 ], [ %15, %12 ]
  %25 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 11
  store float %24, ptr %25, align 4, !tbaa !81
  br label %43

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 11
  %28 = load float, ptr %27, align 4, !tbaa !81
  %29 = fcmp ogt float %28, %1
  br i1 %29, label %43, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 11
  %32 = load float, ptr %31, align 4, !tbaa !81
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
  %40 = load float, ptr %39, align 4, !tbaa !81
  %41 = fcmp olt float %40, %1
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %36, %26, %42, %38, %23, %30, %35
  %44 = phi float [ %24, %23 ], [ %33, %35 ], [ %1, %30 ], [ %40, %42 ], [ %1, %38 ], [ %28, %26 ], [ -3.000000e+05, %36 ]
  %45 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 10
  store float %44, ptr %45, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_frame_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 4, !tbaa !81
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_frame_end_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  tail call fastcc void @rna_NlaStrip_end_frame_set(ptr noundef %0, float noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_NlaStrip_end_frame_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #8 !PGOFuncName !82 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 21
  %9 = load i16, ptr %8, align 2, !tbaa !74
  %10 = icmp eq i16 %9, 1
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 10
  %12 = load float, ptr %11, align 8, !tbaa !78
  %13 = fadd float %12, 0x3FB99999A0000000
  %14 = fcmp ogt float %13, %1
  br i1 %10, label %15, label %25

15:                                               ; preds = %7
  br i1 %14, label %22, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 11
  %18 = load float, ptr %17, align 4, !tbaa !81
  %19 = fadd float %18, 0xBFB99999A0000000
  %20 = fcmp olt float %19, %1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %15, %16, %21
  %23 = phi float [ %19, %21 ], [ %1, %16 ], [ %13, %15 ]
  %24 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 10
  store float %23, ptr %24, align 8, !tbaa !78
  br label %39

25:                                               ; preds = %7
  br i1 %14, label %39, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 10
  %28 = load float, ptr %27, align 8, !tbaa !78
  %29 = fcmp olt float %28, %1
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  br label %39

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 10
  %33 = load float, ptr %32, align 8, !tbaa !78
  %34 = fadd float %33, 0x3FB99999A0000000
  %35 = fcmp ogt float %34, %1
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = fcmp ogt float %1, 3.000000e+05
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %31, %25, %38, %36, %22, %26, %30
  %40 = phi float [ %23, %22 ], [ %28, %30 ], [ %1, %26 ], [ 3.000000e+05, %38 ], [ %1, %36 ], [ %13, %25 ], [ %34, %31 ]
  %41 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 11
  store float %40, ptr %41, align 4, !tbaa !81
  %42 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 21
  %43 = load i16, ptr %42, align 2, !tbaa !74
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 10
  %47 = load float, ptr %46, align 8, !tbaa !78
  %48 = fsub float %40, %47
  %49 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 13
  %50 = load float, ptr %49, align 4, !tbaa !84
  %51 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 12
  %52 = load float, ptr %51, align 8, !tbaa !85
  %53 = fsub float %50, %52
  %54 = tail call float @llvm.fabs.f32(float %53)
  %55 = fcmp ult float %54, 0x3E80000000000000
  %56 = select i1 %55, float 1.000000e+00, float %53
  %57 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 14
  %58 = load float, ptr %57, align 8, !tbaa !86
  %59 = fmul float %58, %56
  %60 = fdiv float %48, %59
  %61 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 15
  store float %60, ptr %61, align 4, !tbaa !87
  br label %62

62:                                               ; preds = %45, %39
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_blend_in_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 16
  %5 = load float, ptr %4, align 8, !tbaa !88
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_blend_in_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  tail call fastcc void @rna_NlaStrip_blend_in_set(ptr noundef %0, float noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_NlaStrip_blend_in_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #8 !PGOFuncName !89 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 11
  %6 = load float, ptr %5, align 4, !tbaa !81
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 10
  %8 = load float, ptr %7, align 8, !tbaa !78
  %9 = fsub float %6, %8
  %10 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 17
  %11 = load float, ptr %10, align 4, !tbaa !90
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
  store float %18, ptr %19, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_blend_out_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 4, !tbaa !90
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_blend_out_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  tail call fastcc void @rna_NlaStrip_blend_out_set(ptr noundef %0, float noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_NlaStrip_blend_out_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #8 !PGOFuncName !91 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 11
  %6 = load float, ptr %5, align 4, !tbaa !81
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 10
  %8 = load float, ptr %7, align 8, !tbaa !78
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
  %18 = load float, ptr %17, align 8, !tbaa !88
  %19 = fcmp olt float %16, %18
  %20 = fsub float %9, %18
  %21 = select i1 %19, float %20, float %15
  %22 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 17
  store float %21, ptr %22, align 4, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_use_auto_blend_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !92
  %6 = lshr i32 %5, 10
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_use_auto_blend_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_NlaStrip_use_auto_blend_set(ptr noundef %0, i32 noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_NlaStrip_use_auto_blend_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !93 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 8, !tbaa !92
  br i1 %5, label %17, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 1024
  store i32 %9, ptr %6, align 8, !tbaa !92
  %10 = load ptr, ptr %0, align 8, !tbaa !62
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.IdAdtTemplate, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !94
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  tail call void @BKE_nla_validate_state(ptr noundef nonnull %14) #11
  br label %20

17:                                               ; preds = %2
  %18 = and i32 %7, -1025
  store i32 %18, ptr %6, align 8, !tbaa !92
  %19 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 16
  store <2 x float> zeroinitializer, ptr %19, align 8, !tbaa !97
  br label %20

20:                                               ; preds = %12, %16, %8, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_action_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Action, ptr noundef %6) #11
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_action_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #11
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #11
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !98
  ret void
}

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_action_frame_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 8, !tbaa !85
  ret float %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_action_frame_start_set(ptr nocapture noundef readonly %0, float noundef %1) #0 {
  tail call fastcc void @rna_NlaStrip_action_start_frame_set(ptr noundef %0, float noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_NlaStrip_action_start_frame_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #0 !PGOFuncName !99 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, -3.000000e+05
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 13
  %8 = load float, ptr %7, align 4, !tbaa !84
  %9 = fcmp olt float %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %2, %6, %10
  %12 = phi float [ %8, %10 ], [ %1, %6 ], [ -3.000000e+05, %2 ]
  %13 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 12
  store float %12, ptr %13, align 8, !tbaa !85
  tail call void @BKE_nlastrip_recalculate_bounds(ptr noundef %4) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_action_frame_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 4, !tbaa !84
  ret float %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_action_frame_end_set(ptr nocapture noundef readonly %0, float noundef %1) #0 {
  tail call fastcc void @rna_NlaStrip_action_end_frame_set(ptr noundef %0, float noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_NlaStrip_action_end_frame_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #0 !PGOFuncName !100 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 12
  %6 = load float, ptr %5, align 8, !tbaa !85
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
  store float %12, ptr %13, align 4, !tbaa !84
  tail call void @BKE_nlastrip_recalculate_bounds(ptr noundef nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_repeat_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 14
  %5 = load float, ptr %4, align 8, !tbaa !86
  ret float %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_repeat_set(ptr nocapture noundef readonly %0, float noundef %1) #0 {
  tail call fastcc void @rna_NlaStrip_repeat_set(ptr noundef %0, float noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_NlaStrip_repeat_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #0 !PGOFuncName !101 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
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
  store float %10, ptr %11, align 8, !tbaa !86
  tail call void @BKE_nlastrip_recalculate_bounds(ptr noundef %4) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_scale_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 15
  %5 = load float, ptr %4, align 4, !tbaa !87
  ret float %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #0 {
  tail call fastcc void @rna_NlaStrip_scale_set(ptr noundef %0, float noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_NlaStrip_scale_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #0 !PGOFuncName !102 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
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
  store float %10, ptr %11, align 4, !tbaa !87
  tail call void @BKE_nlastrip_recalculate_bounds(ptr noundef %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_fcurves_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_NlaStrip_fcurves, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 5
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #11
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @NlaStrip_fcurves_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @NlaStrip_fcurves_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !103 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_FCurve, ptr noundef %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_fcurves_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  call void @NlaStrip_fcurves_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_fcurves_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @NlaStrip_fcurves_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #12
  call void @NlaStrip_fcurves_begin(ptr noundef nonnull %4, ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !48
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
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #11
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !104

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
  %37 = load ptr, ptr %33, align 8, !tbaa !52
  store ptr %37, ptr %10, align 8, !tbaa !54
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !105

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @NlaStrip_fcurves_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @NlaStrip_fcurves_end(ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #12
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_modifiers_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_NlaStrip_modifiers, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 6
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #11
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @NlaStrip_modifiers_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @NlaStrip_modifiers_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !106 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_FModifier, ptr noundef %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_modifiers_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  call void @NlaStrip_modifiers_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_modifiers_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @NlaStrip_modifiers_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #12
  call void @NlaStrip_modifiers_begin(ptr noundef nonnull %4, ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !48
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
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #11
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !107

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
  %37 = load ptr, ptr %33, align 8, !tbaa !52
  store ptr %37, ptr %10, align 8, !tbaa !54
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !108

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @NlaStrip_modifiers_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @NlaStrip_modifiers_end(ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #12
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_strips_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_NlaStrip_strips, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 2
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #11
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @NlaStrip_strips_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @NlaStrip_strips_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !109 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_NlaStrip, ptr noundef %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_strips_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  call void @NlaStrip_strips_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_strips_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @NlaStrip_strips_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #12
  call void @NlaStrip_strips_begin(ptr noundef nonnull %4, ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !48
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
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #11
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !110

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
  %37 = load ptr, ptr %33, align 8, !tbaa !52
  store ptr %37, ptr %10, align 8, !tbaa !54
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !111

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @NlaStrip_strips_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @NlaStrip_strips_end(ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #12
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @NlaStrip_strips_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #12
  call void @NlaStrip_strips_begin(ptr noundef nonnull %4, ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !44
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !56
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @NlaStrip_name_length(ptr noundef nonnull %10) #13
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @NlaStrip_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #13
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str) #11
  call void @NlaStrip_name_get(ptr noundef nonnull %10, ptr noundef %25) #13
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #14
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %28(ptr noundef %25) #11
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @NlaStrip_strips_next(ptr noundef nonnull %4) #13
  %30 = load i32, ptr %6, align 8, !tbaa !44
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !112

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @NlaStrip_strips_end(ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #12
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_influence_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 8, !tbaa !113
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_influence_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 8
  store float %8, ptr %9, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @NlaStrip_strip_time_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 4, !tbaa !114
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_strip_time_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 9
  store float %1, ptr %5, align 4, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_use_animated_influence_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !92
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_use_animated_influence_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_NlaStrip_animated_influence_set(ptr noundef %0, i32 noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_NlaStrip_animated_influence_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !115 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 8, !tbaa !92
  br i1 %5, label %10, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 32
  store i32 %9, ptr %6, align 8, !tbaa !92
  tail call void @BKE_nlastrip_validate_fcurves(ptr noundef %4) #11
  br label %12

10:                                               ; preds = %2
  %11 = and i32 %7, -33
  store i32 %11, ptr %6, align 8, !tbaa !92
  br label %12

12:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_use_animated_time_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !92
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrip_use_animated_time_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_NlaStrip_animated_time_set(ptr noundef %0, i32 noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_NlaStrip_animated_time_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !116 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 8, !tbaa !92
  br i1 %5, label %10, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 64
  store i32 %9, ptr %6, align 8, !tbaa !92
  tail call void @BKE_nlastrip_validate_fcurves(ptr noundef %4) #11
  br label %12

10:                                               ; preds = %2
  %11 = and i32 %7, -65
  store i32 %11, ptr %6, align 8, !tbaa !92
  br label %12

12:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_use_animated_time_cyclic_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !92
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_use_animated_time_cyclic_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 8, !tbaa !92
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_active_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !92
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_select_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !92
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 8, !tbaa !92
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_mute_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !92
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_mute_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 8, !tbaa !92
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 0, i32 4096
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_use_reverse_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !92
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_use_reverse_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 8, !tbaa !92
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @NlaStrip_use_sync_length_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !92
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @NlaStrip_use_sync_length_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 8, !tbaa !92
  %8 = and i32 %7, -513
  %9 = select i1 %5, i32 0, i32 512
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @NlaStrips_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc ptr @rna_NlaStrip_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, ptr noundef %5) #13
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_NlaStrip_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !117 {
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
  %13 = load float, ptr %12, align 8, !tbaa !78
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds %struct.NlaStrip, ptr %7, i64 0, i32 11
  %16 = load float, ptr %15, align 4, !tbaa !81
  %17 = fadd float %16, %14
  store float %17, ptr %15, align 4, !tbaa !81
  store float %11, ptr %12, align 8, !tbaa !78
  %18 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %19 = tail call zeroext i8 @BKE_nlastrips_add_strip(ptr noundef nonnull %18, ptr noundef nonnull %7) #11
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.117) #11
  tail call void @free_nlastrip(ptr noundef null, ptr noundef nonnull %7) #11
  br label %36

22:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %6, i8 0, i64 96, i1 false)
  br label %23

23:                                               ; preds = %23, %22
  %24 = phi ptr [ %0, %22 ], [ %26, %23 ]
  %25 = getelementptr inbounds %struct.NlaTrack, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !65
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !118

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 3
  store ptr %24, ptr %29, align 8, !tbaa !119
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi ptr [ %0, %28 ], [ %32, %30 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !63
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %30, !llvm.loop !120

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 3, i32 1
  store ptr %31, ptr %35, align 8, !tbaa !121
  call void @BKE_nlastrip_validate_name(ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #12
  call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 239665155, ptr noundef null) #11
  br label %36

36:                                               ; preds = %34, %21, %9
  %37 = phi ptr [ null, %9 ], [ null, %21 ], [ %7, %34 ]
  ret ptr %37
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrips_new_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %3, align 8, !tbaa !122
  %8 = getelementptr inbounds i8, ptr %7, i64 8
  %9 = load i32, ptr %8, align 4, !tbaa !124
  %10 = getelementptr inbounds i8, ptr %7, i64 12
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds i8, ptr %7, i64 20
  %13 = tail call fastcc ptr @rna_NlaStrip_new(ptr noundef %6, ptr noundef %0, ptr noundef %1, i32 noundef %9, ptr noundef %11) #13
  store ptr %13, ptr %12, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrips_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @rna_NlaStrip_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_NlaStrip_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !125 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
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

14:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NlaStrips_remove_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %3, align 8, !tbaa !122
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  tail call fastcc void @rna_NlaStrip_remove(ptr noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %8) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_NlaStrip_transform_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !126 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @BKE_nlameta_flush_transforms(ptr noundef %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @rna_NlaStrip_action_editable(ptr nocapture noundef readonly %0) #0 !PGOFuncName !127 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load ptr, ptr %0, align 8, !tbaa !62
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %4) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !67
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !128
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !129
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %6, %18, %1
  %23 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %24 = load i32, ptr %23, align 8, !tbaa !92
  %25 = lshr i32 %24, 4
  %26 = and i32 %25, 1
  %27 = xor i32 %26, 1
  br label %28

28:                                               ; preds = %22, %18, %14, %9
  %29 = phi i32 [ 0, %9 ], [ 0, %14 ], [ 0, %18 ], [ %27, %22 ]
  ret i32 %29
}

; Function Attrs: optsize
declare i32 @rna_Action_id_poll(ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_NlaStrip_path(ptr nocapture noundef readonly %0) #0 !PGOFuncName !130 {
  %2 = alloca [128 x i8], align 16
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load ptr, ptr %0, align 8, !tbaa !62
  %7 = tail call ptr @BKE_animdata_from_id(ptr noundef %6) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %16

13:                                               ; preds = %19
  %14 = load ptr, ptr %17, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16, !llvm.loop !131

16:                                               ; preds = %9, %13
  %17 = phi ptr [ %14, %13 ], [ %11, %9 ]
  %18 = getelementptr inbounds %struct.NlaTrack, ptr %17, i64 0, i32 2
  br label %19

19:                                               ; preds = %23, %16
  %20 = phi ptr [ %18, %16 ], [ %21, %23 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %13, label %23

23:                                               ; preds = %19
  %24 = icmp eq ptr %21, %5
  br i1 %24, label %25, label %19, !llvm.loop !132

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #12
  %26 = getelementptr inbounds %struct.NlaTrack, ptr %17, i64 0, i32 5
  %27 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %26, i64 noundef 128) #11
  %28 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 7
  %29 = call i64 @BLI_strescape(ptr noundef nonnull %3, ptr noundef nonnull %28, i64 noundef 128) #11
  %30 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.152, ptr noundef nonnull %2, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #12
  br label %33

31:                                               ; preds = %13, %9, %1
  %32 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.13) #11
  br label %33

33:                                               ; preds = %25, %31
  %34 = phi ptr [ %32, %31 ], [ %30, %25 ]
  ret ptr %34
}

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_nlastrip_validate_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: optsize
declare void @BKE_nla_validate_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_nlastrip_recalculate_bounds(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_nlastrip_validate_fcurves(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @add_nlastrip(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_nlastrips_add_strip(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_nlastrip(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_nlameta_flush_transforms(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #3

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
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize willreturn memory(read) }

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
!45 = !{!"rna_nla_gen.c:NlaTrack_rna_properties_get"}
!46 = !{!41, !36, i64 16}
!47 = !{!"rna_nla_gen.c:NlaTrack_strips_get"}
!48 = !{!49, !36, i64 16}
!49 = !{!"ListBaseIterator", !36, i64 0, !43, i64 8, !36, i64 16}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!53, !36, i64 0}
!53 = !{!"Link", !36, i64 0, !36, i64 8}
!54 = !{!49, !36, i64 0}
!55 = distinct !{!55, !51}
!56 = !{!40, !36, i64 120}
!57 = distinct !{!57, !51}
!58 = !{!59, !43, i64 32}
!59 = !{!"NlaTrack", !36, i64 0, !36, i64 8, !60, i64 16, !43, i64 32, !43, i64 36, !37, i64 40}
!60 = !{!"ListBase", !36, i64 0, !36, i64 8}
!61 = !{!"rna_nla_gen.c:rna_NlaTrack_solo_set"}
!62 = !{!41, !36, i64 0}
!63 = !{!59, !36, i64 0}
!64 = distinct !{!64, !51}
!65 = !{!59, !36, i64 8}
!66 = distinct !{!66, !51}
!67 = !{!68, !43, i64 80}
!68 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !60, i64 24, !36, i64 40, !60, i64 48, !60, i64 64, !43, i64 80, !43, i64 84, !69, i64 88, !69, i64 90, !70, i64 92}
!69 = !{!"short", !37, i64 0}
!70 = !{!"float", !37, i64 0}
!71 = !{!"rna_nla_gen.c:NlaStrips_rna_properties_get"}
!72 = !{!"rna_nla_gen.c:NlaStrip_rna_properties_get"}
!73 = !{!"rna_nla_gen.c:rna_NlaStrip_name_set"}
!74 = !{!75, !69, i64 190}
!75 = !{!"NlaStrip", !36, i64 0, !36, i64 8, !60, i64 16, !36, i64 32, !36, i64 40, !60, i64 48, !60, i64 64, !37, i64 80, !70, i64 144, !70, i64 148, !70, i64 152, !70, i64 156, !70, i64 160, !70, i64 164, !70, i64 168, !70, i64 172, !70, i64 176, !70, i64 180, !69, i64 184, !69, i64 186, !69, i64 188, !69, i64 190, !36, i64 192, !43, i64 200, !43, i64 204}
!76 = !{!75, !69, i64 186}
!77 = !{!75, !69, i64 184}
!78 = !{!75, !70, i64 152}
!79 = !{!"rna_nla_gen.c:rna_NlaStrip_start_frame_set"}
!80 = !{!75, !36, i64 8}
!81 = !{!75, !70, i64 156}
!82 = !{!"rna_nla_gen.c:rna_NlaStrip_end_frame_set"}
!83 = !{!75, !36, i64 0}
!84 = !{!75, !70, i64 164}
!85 = !{!75, !70, i64 160}
!86 = !{!75, !70, i64 168}
!87 = !{!75, !70, i64 172}
!88 = !{!75, !70, i64 176}
!89 = !{!"rna_nla_gen.c:rna_NlaStrip_blend_in_set"}
!90 = !{!75, !70, i64 180}
!91 = !{!"rna_nla_gen.c:rna_NlaStrip_blend_out_set"}
!92 = !{!75, !43, i64 200}
!93 = !{!"rna_nla_gen.c:rna_NlaStrip_use_auto_blend_set"}
!94 = !{!95, !36, i64 120}
!95 = !{!"IdAdtTemplate", !96, i64 0, !36, i64 120}
!96 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !69, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!97 = !{!70, !70, i64 0}
!98 = !{!75, !36, i64 32}
!99 = !{!"rna_nla_gen.c:rna_NlaStrip_action_start_frame_set"}
!100 = !{!"rna_nla_gen.c:rna_NlaStrip_action_end_frame_set"}
!101 = !{!"rna_nla_gen.c:rna_NlaStrip_repeat_set"}
!102 = !{!"rna_nla_gen.c:rna_NlaStrip_scale_set"}
!103 = !{!"rna_nla_gen.c:NlaStrip_fcurves_get"}
!104 = distinct !{!104, !51}
!105 = distinct !{!105, !51}
!106 = !{!"rna_nla_gen.c:NlaStrip_modifiers_get"}
!107 = distinct !{!107, !51}
!108 = distinct !{!108, !51}
!109 = !{!"rna_nla_gen.c:NlaStrip_strips_get"}
!110 = distinct !{!110, !51}
!111 = distinct !{!111, !51}
!112 = distinct !{!112, !51}
!113 = !{!75, !70, i64 144}
!114 = !{!75, !70, i64 148}
!115 = !{!"rna_nla_gen.c:rna_NlaStrip_animated_influence_set"}
!116 = !{!"rna_nla_gen.c:rna_NlaStrip_animated_time_set"}
!117 = !{!"rna_nla_gen.c:rna_NlaStrip_new"}
!118 = distinct !{!118, !51}
!119 = !{!68, !36, i64 24}
!120 = distinct !{!120, !51}
!121 = !{!68, !36, i64 32}
!122 = !{!123, !36, i64 0}
!123 = !{!"ParameterList", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24}
!124 = !{!43, !43, i64 0}
!125 = !{!"rna_nla_gen.c:rna_NlaStrip_remove"}
!126 = !{!"rna_nla_gen.c:rna_NlaStrip_transform_update"}
!127 = !{!"rna_nla_gen.c:rna_NlaStrip_action_editable"}
!128 = !{!68, !36, i64 40}
!129 = !{!68, !36, i64 8}
!130 = !{!"rna_nla_gen.c:rna_NlaStrip_path"}
!131 = distinct !{!131, !51}
!132 = distinct !{!132, !51}
