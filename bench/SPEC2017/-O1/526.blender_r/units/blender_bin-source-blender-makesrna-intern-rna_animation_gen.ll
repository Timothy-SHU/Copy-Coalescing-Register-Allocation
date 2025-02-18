; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_animation_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_animation_gen.c"
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
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.BlenderRNA = type { %struct.ListBase }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.KeyingSet = type { ptr, ptr, %struct.ListBase, [64 x i8], [64 x i8], [240 x i8], [64 x i8], i16, i16, i32 }
%struct.KS_Path = type { ptr, ptr, ptr, [64 x i8], i32, i16, i16, ptr, i32, i16, i16 }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.KeyingSetInfo = type { ptr, ptr, [64 x i8], [64 x i8], [240 x i8], i16, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.ParameterList = type { ptr, ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"NAMED\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Named Group\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"KEYINGSET\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Keying Set Name\00", align 1
@keyingset_path_grouping_items = dso_local local_unnamed_addr global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [17 x i8] c"INSERTKEY_NEEDED\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Only Needed\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"Only insert keyframes where they're needed in the relevant F-Curves\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"INSERTKEY_VISUAL\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Visual Keying\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Insert keyframes based on 'visual transforms'\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"INSERTKEY_XYZ_TO_RGB\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"XYZ=RGB Colors\00", align 1
@.str.15 = private unnamed_addr constant [120 x i8] c"Color for newly added transformation F-Curves (Location, Rotation, Scale) and also Color is based on the transform axis\00", align 1
@keying_flag_items = dso_local local_unnamed_addr global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.10, i32 0, ptr @.str.11, ptr @.str.12 }, %struct.EnumPropertyItem { i32 32, ptr @.str.13, i32 0, ptr @.str.14, ptr @.str.15 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_AnimData_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_AnimData_rna_type, ptr null, i32 -1, ptr @.str.17, i32 128, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.20, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AnimData_rna_properties_begin, ptr @AnimData_rna_properties_next, ptr @AnimData_rna_properties_end, ptr @AnimData_rna_properties_get, ptr null, ptr null, ptr @AnimData_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_AnimData_nla_tracks = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_AnimData_action, ptr @rna_AnimData_rna_type, i32 -1, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.26, i32 0, ptr @.str.20, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_NlaTracks, ptr null }, ptr @AnimData_nla_tracks_begin, ptr @AnimData_nla_tracks_next, ptr @AnimData_nla_tracks_end, ptr @AnimData_nla_tracks_get, ptr null, ptr @AnimData_nla_tracks_lookup_int, ptr @AnimData_nla_tracks_lookup_string, ptr null, ptr @RNA_NlaTrack }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [12 x i8] c"name string\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@RNA_Action = external global %struct.StructRNA, align 8
@rna_AnimData_drivers = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_AnimData_use_nla, ptr @rna_AnimData_action_influence, i32 -1, ptr @.str.39, i32 0, ptr @.str.40, ptr @.str.41, i32 0, ptr @.str.20, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_AnimDataDrivers, ptr null }, ptr @AnimData_drivers_begin, ptr @AnimData_drivers_next, ptr @AnimData_drivers_end, ptr @AnimData_drivers_get, ptr null, ptr @AnimData_drivers_lookup_int, ptr null, ptr null, ptr @RNA_FCurve }, align 8
@rna_NlaTracks_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaTracks_rna_type, ptr null, i32 -1, ptr @.str.17, i32 128, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.20, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaTracks_rna_properties_begin, ptr @NlaTracks_rna_properties_next, ptr @NlaTracks_rna_properties_end, ptr @NlaTracks_rna_properties_get, ptr null, ptr null, ptr @NlaTracks_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_AnimDataDrivers_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_AnimDataDrivers_rna_type, ptr null, i32 -1, ptr @.str.17, i32 128, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.20, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AnimDataDrivers_rna_properties_begin, ptr @AnimDataDrivers_rna_properties_next, ptr @AnimDataDrivers_rna_properties_end, ptr @AnimDataDrivers_rna_properties_get, ptr null, ptr null, ptr @AnimDataDrivers_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_KeyingSet_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSet_rna_type, ptr null, i32 -1, ptr @.str.17, i32 128, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.20, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSet_rna_properties_begin, ptr @KeyingSet_rna_properties_next, ptr @KeyingSet_rna_properties_end, ptr @KeyingSet_rna_properties_get, ptr null, ptr null, ptr @KeyingSet_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_KeyingSet_paths = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSet_is_path_absolute, ptr @rna_KeyingSet_type_info, i32 -1, ptr @.str.81, i32 0, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.20, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_KeyingSetPaths, ptr null }, ptr @KeyingSet_paths_begin, ptr @KeyingSet_paths_next, ptr @KeyingSet_paths_end, ptr @KeyingSet_paths_get, ptr null, ptr @KeyingSet_paths_lookup_int, ptr @KeyingSet_paths_lookup_string, ptr null, ptr @RNA_KeyingSetPath }, align 8
@rna_KeyingSetPaths_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetPaths_rna_type, ptr null, i32 -1, ptr @.str.17, i32 128, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.20, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetPaths_rna_properties_begin, ptr @KeyingSetPaths_rna_properties_next, ptr @KeyingSetPaths_rna_properties_end, ptr @KeyingSetPaths_rna_properties_get, ptr null, ptr null, ptr @KeyingSetPaths_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_KeyingSetPath_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetPath_rna_type, ptr null, i32 -1, ptr @.str.17, i32 128, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.20, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetPath_rna_properties_begin, ptr @KeyingSetPath_rna_properties_next, ptr @KeyingSetPath_rna_properties_end, ptr @KeyingSetPath_rna_properties_get, ptr null, ptr null, ptr @KeyingSetPath_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@rna_KeyingSetInfo_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetInfo_rna_type, ptr null, i32 -1, ptr @.str.17, i32 128, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.20, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetInfo_rna_properties_begin, ptr @KeyingSetInfo_rna_properties_next, ptr @KeyingSetInfo_rna_properties_end, ptr @KeyingSetInfo_rna_properties_get, ptr null, ptr null, ptr @KeyingSetInfo_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_AnimData_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_AnimData_nla_tracks, ptr @rna_AnimData_rna_properties, i32 -1, ptr @.str.21, i32 8912896, ptr @.str.22, ptr @.str.23, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AnimData_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.17 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@.str.21 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_AnimData_action = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_AnimData_action_extrapolation, ptr @rna_AnimData_nla_tracks, i32 -1, ptr @.str.27, i32 8388673, ptr @.str.28, ptr @.str.29, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_AnimData_update, i32 239730688, ptr @rna_AnimData_action_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AnimData_action_get, ptr @AnimData_action_set, ptr null, ptr @rna_Action_id_poll, ptr @RNA_Action }, align 8
@.str.24 = private unnamed_addr constant [11 x i8] c"nla_tracks\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"NLA Tracks\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"NLA Tracks (i.e. Animation Layers)\00", align 1
@RNA_NlaTracks = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_AnimDataDrivers, ptr @RNA_AnimData, ptr null, %struct.ListBase { ptr @rna_NlaTracks_rna_properties, ptr @rna_NlaTracks_active } }, ptr @.str.60, ptr null, ptr null, i32 4, ptr @.str.25, ptr @.str.61, ptr @.str.20, i32 17, ptr null, ptr @rna_NlaTracks_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_NlaTracks_new_func, ptr @rna_NlaTracks_remove_func } }, align 8
@RNA_NlaTrack = external global %struct.StructRNA, align 8
@rna_AnimData_action_extrapolation = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_AnimData_action_blend_type, ptr @rna_AnimData_action, i32 -1, ptr @.str.30, i32 3, ptr @.str.31, ptr @.str.32, i32 0, ptr @.str.20, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AnimData_action_extrapolation_get, ptr @AnimData_action_extrapolation_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_AnimData_action_extrapolation_items, i32 3, i32 0 }, align 8
@.str.27 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"Active Action for this datablock\00", align 1
@rna_AnimData_action_blend_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_AnimData_action_influence, ptr @rna_AnimData_action_extrapolation, i32 -1, ptr @.str.33, i32 3, ptr @.str.34, ptr @.str.35, i32 0, ptr @.str.20, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AnimData_action_blend_type_get, ptr @AnimData_action_blend_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_AnimData_action_blend_type_items, i32 4, i32 0 }, align 8
@.str.30 = private unnamed_addr constant [21 x i8] c"action_extrapolation\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"Action Extrapolation\00", align 1
@.str.32 = private unnamed_addr constant [82 x i8] c"Action to take for gaps past the Active Action's range (when evaluating with NLA)\00", align 1
@rna_AnimData_action_extrapolation_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 2, ptr @.str.167, i32 0, ptr @.str.168, ptr @.str.169 }, %struct.EnumPropertyItem { i32 0, ptr @.str.170, i32 0, ptr @.str.171, ptr @.str.172 }, %struct.EnumPropertyItem { i32 1, ptr @.str.173, i32 0, ptr @.str.174, ptr @.str.175 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_AnimData_action_influence = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_AnimData_drivers, ptr @rna_AnimData_action_blend_type, i32 -1, ptr @.str.36, i32 8195, ptr @.str.37, ptr @.str.38, i32 0, ptr @.str.20, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 92, i32 4, ptr null, ptr null }, ptr @AnimData_action_influence_get, ptr @AnimData_action_influence_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.33 = private unnamed_addr constant [18 x i8] c"action_blend_type\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"Action Blending\00", align 1
@.str.35 = private unnamed_addr constant [74 x i8] c"Method used for combining Active Action's result with result of NLA stack\00", align 1
@rna_AnimData_action_blend_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.176, i32 0, ptr @.str.177, ptr @.str.178 }, %struct.EnumPropertyItem { i32 1, ptr @.str.179, i32 0, ptr @.str.180, ptr @.str.181 }, %struct.EnumPropertyItem { i32 2, ptr @.str.182, i32 0, ptr @.str.183, ptr @.str.184 }, %struct.EnumPropertyItem { i32 3, ptr @.str.185, i32 0, ptr @.str.186, ptr @.str.187 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.36 = private unnamed_addr constant [17 x i8] c"action_influence\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"Action Influence\00", align 1
@.str.38 = private unnamed_addr constant [68 x i8] c"Amount the Active Action contributes to the result of the NLA stack\00", align 1
@rna_AnimData_use_nla = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_AnimData_drivers, i32 -1, ptr @.str.42, i32 3, ptr @.str.43, ptr @.str.44, i32 0, ptr @.str.20, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665152, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AnimData_use_nla_get, ptr @AnimData_use_nla_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.39 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"Drivers\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"The Drivers/Expressions for this datablock\00", align 1
@RNA_AnimDataDrivers = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_KeyingSet, ptr @RNA_NlaTracks, ptr null, %struct.ListBase { ptr @rna_AnimDataDrivers_rna_properties, ptr @rna_AnimDataDrivers_rna_type } }, ptr @.str.68, ptr null, ptr null, i32 4, ptr @.str.40, ptr @.str.69, ptr @.str.20, i32 17, ptr null, ptr @rna_AnimDataDrivers_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_AnimDataDrivers_from_existing_func, ptr @rna_AnimDataDrivers_from_existing_func } }, align 8
@RNA_FCurve = external global %struct.StructRNA, align 8
@.str.42 = private unnamed_addr constant [8 x i8] c"use_nla\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"NLA Evaluation Enabled\00", align 1
@.str.44 = private unnamed_addr constant [50 x i8] c"NLA stack is evaluated when evaluating this block\00", align 1
@RNA_DopeSheet = external global %struct.StructRNA, align 8
@.str.45 = private unnamed_addr constant [9 x i8] c"AnimData\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"Animation Data\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"Animation data for datablock\00", align 1
@RNA_AnimData = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_NlaTracks, ptr @RNA_DopeSheet, ptr null, %struct.ListBase { ptr @rna_AnimData_rna_properties, ptr @rna_AnimData_use_nla } }, ptr @.str.45, ptr null, ptr null, i32 4, ptr @.str.46, ptr @.str.47, ptr @.str.20, i32 167, ptr null, ptr @rna_AnimData_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_NlaTracks_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaTracks_active, ptr @rna_NlaTracks_rna_properties, i32 -1, ptr @.str.21, i32 8912896, ptr @.str.22, ptr @.str.23, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaTracks_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_NlaTracks_active = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_NlaTracks_rna_type, i32 -1, ptr @.str.48, i32 8388609, ptr @.str.49, ptr @.str.50, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239665158, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @NlaTracks_active_get, ptr @NlaTracks_active_set, ptr null, ptr null, ptr @RNA_NlaTrack }, align 8
@.str.48 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"Active Constraint\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"Active Object constraint\00", align 1
@rna_NlaTracks_new_track = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_NlaTracks_new_prev, i32 -1, ptr @.str.53, i32 8388616, ptr @.str.2, ptr @.str.54, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_NlaTrack }, align 8
@.str.51 = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"NLA Track to add the new one after\00", align 1
@rna_NlaTracks_new_prev = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_NlaTracks_new_track, ptr null, i32 -1, ptr @.str.51, i32 8388608, ptr @.str.2, ptr @.str.52, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_NlaTrack }, align 8
@.str.53 = private unnamed_addr constant [6 x i8] c"track\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"New NLA Track\00", align 1
@rna_NlaTracks_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_NlaTracks_new_func, ptr null, %struct.ListBase { ptr @rna_NlaTracks_remove_track, ptr @rna_NlaTracks_remove_track } }, ptr @.str.58, i32 24, ptr @.str.59, ptr @NlaTracks_remove_call, ptr null }, align 8
@.str.55 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"Add a new NLA Track\00", align 1
@rna_NlaTracks_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_NlaTracks_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_NlaTracks_new_prev, ptr @rna_NlaTracks_new_track } }, ptr @.str.55, i32 8, ptr @.str.56, ptr @NlaTracks_new_call, ptr @rna_NlaTracks_new_track }, align 8
@.str.57 = private unnamed_addr constant [20 x i8] c"NLA Track to remove\00", align 1
@rna_NlaTracks_remove_track = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.53, i32 264196, ptr @.str.2, ptr @.str.57, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_NlaTrack }, align 8
@.str.58 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"Remove a NLA Track\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"NlaTracks\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"Collection of NLA Tracks\00", align 1
@rna_AnimDataDrivers_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_AnimDataDrivers_rna_properties, i32 -1, ptr @.str.21, i32 8912896, ptr @.str.22, ptr @.str.23, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AnimDataDrivers_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_AnimDataDrivers_from_existing_driver = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_AnimDataDrivers_from_existing_src_driver, i32 -1, ptr @.str.64, i32 8388616, ptr @.str.2, ptr @.str.65, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_FCurve }, align 8
@.str.62 = private unnamed_addr constant [11 x i8] c"src_driver\00", align 1
@.str.63 = private unnamed_addr constant [57 x i8] c"Existing Driver F-Curve to use as template for a new one\00", align 1
@rna_AnimDataDrivers_from_existing_src_driver = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_AnimDataDrivers_from_existing_driver, ptr null, i32 -1, ptr @.str.62, i32 8388608, ptr @.str.2, ptr @.str.63, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_FCurve }, align 8
@.str.64 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"New Driver F-Curve\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"from_existing\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"Add a new driver given an existing one\00", align 1
@rna_AnimDataDrivers_from_existing_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_AnimDataDrivers_from_existing_src_driver, ptr @rna_AnimDataDrivers_from_existing_driver } }, ptr @.str.66, i32 8, ptr @.str.67, ptr @AnimDataDrivers_from_existing_call, ptr @rna_AnimDataDrivers_from_existing_driver }, align 8
@RNA_KeyingSet = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_KeyingSetPaths, ptr @RNA_AnimDataDrivers, ptr null, %struct.ListBase { ptr @rna_KeyingSet_rna_properties, ptr @rna_KeyingSet_bl_options } }, ptr @.str.92, ptr null, ptr null, i32 4, ptr @.str.93, ptr @.str.94, ptr @.str.20, i32 512, ptr @rna_KeyingSet_bl_label, ptr @rna_KeyingSet_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_KeyingSet_refresh_func, ptr @rna_KeyingSet_refresh_func } }, align 8
@.str.68 = private unnamed_addr constant [16 x i8] c"AnimDataDrivers\00", align 1
@.str.69 = private unnamed_addr constant [30 x i8] c"Collection of Driver F-Curves\00", align 1
@rna_KeyingSet_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSet_bl_idname, ptr @rna_KeyingSet_rna_properties, i32 -1, ptr @.str.21, i32 8912896, ptr @.str.22, ptr @.str.23, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSet_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_KeyingSet_bl_idname = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSet_bl_label, ptr @rna_KeyingSet_rna_type, i32 -1, ptr @.str.70, i32 262161, ptr @.str.71, ptr @.str.72, i32 0, ptr @.str.20, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSet_bl_idname_get, ptr @KeyingSet_bl_idname_length, ptr @KeyingSet_bl_idname_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@rna_KeyingSet_bl_label = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSet_bl_description, ptr @rna_KeyingSet_bl_idname, i32 -1, ptr @.str.73, i32 262145, ptr @.str.74, ptr @.str.2, i32 0, ptr @.str.20, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 68026373, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSet_bl_label_get, ptr @KeyingSet_bl_label_length, ptr @KeyingSet_bl_label_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@.str.70 = private unnamed_addr constant [10 x i8] c"bl_idname\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"ID Name\00", align 1
@.str.72 = private unnamed_addr constant [260 x i8] c"If this is set, the Keying Set gets a custom ID, otherwise it takes the name of the class used to define the Keying Set (for example, if the class name is \22BUILTIN_KSI_location\22, and bl_idname is not set by the script, then bl_idname = \22BUILTIN_KSI_location\22)\00", align 1
@rna_KeyingSet_bl_description = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSet_type_info, ptr @rna_KeyingSet_bl_label, i32 -1, ptr @.str.75, i32 262193, ptr @.str.76, ptr @.str.77, i32 0, ptr @.str.20, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 240, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSet_bl_description_get, ptr @KeyingSet_bl_description_length, ptr @KeyingSet_bl_description_set, ptr null, ptr null, ptr null, i32 240, ptr @.str.2 }, align 8
@.str.73 = private unnamed_addr constant [9 x i8] c"bl_label\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"UI Name\00", align 1
@rna_KeyingSet_type_info = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSet_paths, ptr @rna_KeyingSet_bl_description, i32 -1, ptr @.str.78, i32 8388608, ptr @.str.79, ptr @.str.80, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSet_type_info_get, ptr null, ptr null, ptr null, ptr @RNA_KeyingSetInfo }, align 8
@.str.75 = private unnamed_addr constant [15 x i8] c"bl_description\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.77 = private unnamed_addr constant [38 x i8] c"A short description of the keying set\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"type_info\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"Type Info\00", align 1
@.str.80 = private unnamed_addr constant [51 x i8] c"Callback function defines for built-in Keying Sets\00", align 1
@RNA_KeyingSetInfo = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_AnimViz, ptr @RNA_KeyingSetPath, ptr null, %struct.ListBase { ptr @rna_KeyingSetInfo_rna_properties, ptr @rna_KeyingSetInfo_bl_options } }, ptr @.str.157, ptr null, ptr null, i32 4, ptr @.str.158, ptr @.str.159, ptr @.str.20, i32 17, ptr @rna_KeyingSetInfo_bl_label, ptr @rna_KeyingSetInfo_rna_properties, ptr null, ptr null, ptr @rna_KeyingSetInfo_refine, ptr null, ptr @rna_KeyingSetInfo_register, ptr @rna_KeyingSetInfo_unregister, ptr null, ptr null, %struct.ListBase { ptr @rna_KeyingSetInfo_poll_func, ptr @rna_KeyingSetInfo_generate_func } }, align 8
@rna_KeyingSet_is_path_absolute = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSet_bl_options, ptr @rna_KeyingSet_paths, i32 -1, ptr @.str.84, i32 2, ptr @.str.85, ptr @.str.86, i32 0, ptr @.str.20, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSet_is_path_absolute_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.81 = private unnamed_addr constant [6 x i8] c"paths\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"Paths\00", align 1
@.str.83 = private unnamed_addr constant [64 x i8] c"Keying Set Paths to define settings that get keyframed together\00", align 1
@RNA_KeyingSetPaths = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_KeyingSetPath, ptr @RNA_KeyingSet, ptr null, %struct.ListBase { ptr @rna_KeyingSetPaths_rna_properties, ptr @rna_KeyingSetPaths_active_index } }, ptr @.str.125, ptr null, ptr null, i32 4, ptr @.str.126, ptr @.str.127, ptr @.str.20, i32 17, ptr null, ptr @rna_KeyingSetPaths_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_KeyingSetPaths_add_func, ptr @rna_KeyingSetPaths_clear_func } }, align 8
@RNA_KeyingSetPath = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_KeyingSetInfo, ptr @RNA_KeyingSetPaths, ptr null, %struct.ListBase { ptr @rna_KeyingSetPath_rna_properties, ptr @rna_KeyingSetPath_bl_options } }, ptr @.str.144, ptr null, ptr null, i32 4, ptr @.str.145, ptr @.str.146, ptr @.str.20, i32 17, ptr @rna_KeyingSetPath_data_path, ptr @rna_KeyingSetPath_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_KeyingSet_bl_options = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyingSet_is_path_absolute, i32 -1, ptr @.str.87, i32 2097203, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.20, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSet_bl_options_get, ptr @KeyingSet_bl_options_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyingSet_bl_options_items, i32 3, i32 1 }, align 8
@.str.84 = private unnamed_addr constant [17 x i8] c"is_path_absolute\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"Absolute\00", align 1
@.str.86 = private unnamed_addr constant [97 x i8] c"Keying Set defines specific paths/settings to be keyframed (i.e. is not reliant on context info)\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"bl_options\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"Options\00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c"Keying set options\00", align 1
@rna_KeyingSet_bl_options_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.10, i32 0, ptr @.str.11, ptr @.str.12 }, %struct.EnumPropertyItem { i32 32, ptr @.str.13, i32 0, ptr @.str.14, ptr @.str.15 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.90 = private unnamed_addr constant [8 x i8] c"refresh\00", align 1
@.str.91 = private unnamed_addr constant [100 x i8] c"Refresh Keying Set to ensure that it is valid for the current context (call before each use of one)\00", align 1
@rna_KeyingSet_refresh_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA zeroinitializer, ptr @.str.90, i32 24, ptr @.str.91, ptr @KeyingSet_refresh_call, ptr null }, align 8
@.str.92 = private unnamed_addr constant [10 x i8] c"KeyingSet\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"Keying Set\00", align 1
@.str.94 = private unnamed_addr constant [43 x i8] c"Settings that should be keyframed together\00", align 1
@rna_KeyingSetPaths_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetPaths_active, ptr @rna_KeyingSetPaths_rna_properties, i32 -1, ptr @.str.21, i32 8912896, ptr @.str.22, ptr @.str.23, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetPaths_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_KeyingSetPaths_active = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetPaths_active_index, ptr @rna_KeyingSetPaths_rna_type, i32 -1, ptr @.str.48, i32 8388609, ptr @.str.95, ptr @.str.96, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr @rna_KeyingSet_active_ksPath_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetPaths_active_get, ptr @KeyingSetPaths_active_set, ptr null, ptr null, ptr @RNA_KeyingSetPath }, align 8
@rna_KeyingSetPaths_active_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyingSetPaths_active, i32 -1, ptr @.str.97, i32 3, ptr @.str.98, ptr @.str.99, i32 0, ptr @.str.20, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetPaths_active_index_get, ptr @KeyingSetPaths_active_index_set, ptr null, ptr null, ptr @rna_KeyingSet_active_ksPath_index_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.95 = private unnamed_addr constant [18 x i8] c"Active Keying Set\00", align 1
@.str.96 = private unnamed_addr constant [50 x i8] c"Active Keying Set used to insert/delete keyframes\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"active_index\00", align 1
@.str.98 = private unnamed_addr constant [18 x i8] c"Active Path Index\00", align 1
@.str.99 = private unnamed_addr constant [25 x i8] c"Current Keying Set index\00", align 1
@rna_KeyingSetPaths_add_target_id = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetPaths_add_data_path, ptr @rna_KeyingSetPaths_add_ksp, i32 -1, ptr @.str.103, i32 8388612, ptr @.str.104, ptr @.str.105, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_ID }, align 8
@.str.100 = private unnamed_addr constant [4 x i8] c"ksp\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"New Path\00", align 1
@.str.102 = private unnamed_addr constant [41 x i8] c"Path created and added to the Keying Set\00", align 1
@rna_KeyingSetPaths_add_ksp = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetPaths_add_target_id, ptr null, i32 -1, ptr @.str.100, i32 8388616, ptr @.str.101, ptr @.str.102, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_KeyingSetPath }, align 8
@rna_KeyingSetPaths_add_data_path = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetPaths_add_index, ptr @rna_KeyingSetPaths_add_target_id, i32 -1, ptr @.str.106, i32 262149, ptr @.str.107, ptr @.str.108, i32 0, ptr @.str.20, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 256, ptr @.str.2 }, align 8
@.str.103 = private unnamed_addr constant [10 x i8] c"target_id\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"Target ID\00", align 1
@.str.105 = private unnamed_addr constant [33 x i8] c"ID-Datablock for the destination\00", align 1
@rna_KeyingSetPaths_add_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetPaths_add_group_method, ptr @rna_KeyingSetPaths_add_data_path, i32 -1, ptr @.str.109, i32 3, ptr @.str.110, ptr @.str.111, i32 0, ptr @.str.20, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 -1, i32 2147483647, i32 1, i32 -1, ptr null }, align 8
@.str.106 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"Data-Path\00", align 1
@.str.108 = private unnamed_addr constant [33 x i8] c"RNA-Path to destination property\00", align 1
@rna_KeyingSetPaths_add_group_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetPaths_add_group_name, ptr @rna_KeyingSetPaths_add_index, i32 -1, ptr @.str.112, i32 3, ptr @.str.113, ptr @.str.114, i32 0, ptr @.str.20, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyingSetPaths_add_group_method_items, i32 3, i32 2 }, align 8
@.str.109 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.111 = private unnamed_addr constant [104 x i8] c"The index of the destination property (i.e. axis of Location/Rotation/etc.), or -1 for the entire array\00", align 1
@rna_KeyingSetPaths_add_group_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyingSetPaths_add_group_method, i32 -1, ptr @.str.115, i32 262145, ptr @.str.116, ptr @.str.117, i32 0, ptr @.str.20, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@.str.112 = private unnamed_addr constant [13 x i8] c"group_method\00", align 1
@.str.113 = private unnamed_addr constant [16 x i8] c"Grouping Method\00", align 1
@.str.114 = private unnamed_addr constant [46 x i8] c"Method used to define which Group-name to use\00", align 1
@rna_KeyingSetPaths_add_group_method_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.115 = private unnamed_addr constant [11 x i8] c"group_name\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"Group Name\00", align 1
@.str.117 = private unnamed_addr constant [90 x i8] c"Name of Action Group to assign destination to (only if grouping mode is to use this name)\00", align 1
@rna_KeyingSetPaths_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_KeyingSetPaths_clear_func, ptr @rna_KeyingSetPaths_add_func, ptr null, %struct.ListBase { ptr @rna_KeyingSetPaths_remove_path, ptr @rna_KeyingSetPaths_remove_path } }, ptr @.str.58, i32 16, ptr @.str.122, ptr @KeyingSetPaths_remove_call, ptr null }, align 8
@.str.118 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.119 = private unnamed_addr constant [34 x i8] c"Add a new path for the Keying Set\00", align 1
@rna_KeyingSetPaths_add_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_KeyingSetPaths_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_KeyingSetPaths_add_ksp, ptr @rna_KeyingSetPaths_add_group_name } }, ptr @.str.118, i32 16, ptr @.str.119, ptr @KeyingSetPaths_add_call, ptr @rna_KeyingSetPaths_add_ksp }, align 8
@.str.120 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@rna_KeyingSetPaths_remove_path = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.120, i32 264196, ptr @.str.121, ptr @.str.2, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_KeyingSetPath }, align 8
@rna_KeyingSetPaths_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_KeyingSetPaths_remove_func, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.123, i32 16, ptr @.str.124, ptr @KeyingSetPaths_clear_call, ptr null }, align 8
@.str.122 = private unnamed_addr constant [42 x i8] c"Remove the given path from the Keying Set\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.124 = private unnamed_addr constant [41 x i8] c"Remove all the paths from the Keying Set\00", align 1
@.str.125 = private unnamed_addr constant [15 x i8] c"KeyingSetPaths\00", align 1
@.str.126 = private unnamed_addr constant [17 x i8] c"Keying set paths\00", align 1
@.str.127 = private unnamed_addr constant [31 x i8] c"Collection of keying set paths\00", align 1
@rna_KeyingSetPath_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetPath_id, ptr @rna_KeyingSetPath_rna_properties, i32 -1, ptr @.str.21, i32 8912896, ptr @.str.22, ptr @.str.23, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetPath_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_KeyingSetPath_id = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetPath_id_type, ptr @rna_KeyingSetPath_rna_type, i32 -1, ptr @.str.128, i32 8388673, ptr @.str.129, ptr @.str.130, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68026369, ptr @rna_ksPath_id_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetPath_id_get, ptr @KeyingSetPath_id_set, ptr @rna_ksPath_id_typef, ptr null, ptr @RNA_ID }, align 8
@rna_KeyingSetPath_id_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetPath_group, ptr @rna_KeyingSetPath_id, i32 -1, ptr @.str.131, i32 3, ptr @.str.132, ptr @.str.133, i32 0, ptr @.str.20, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68026369, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetPath_id_type_get, ptr @KeyingSetPath_id_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyingSetPath_id_type_items, i32 31, i32 16975 }, align 8
@.str.128 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"ID-Block\00", align 1
@.str.130 = private unnamed_addr constant [90 x i8] c"ID-Block that keyframes for Keying Set should be added to (for Absolute Keying Sets only)\00", align 1
@rna_KeyingSetPath_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetPath_group_method, ptr @rna_KeyingSetPath_id_type, i32 -1, ptr @.str.134, i32 262145, ptr @.str.116, ptr @.str.135, i32 0, ptr @.str.20, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 68026369, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetPath_group_get, ptr @KeyingSetPath_group_length, ptr @KeyingSetPath_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@.str.131 = private unnamed_addr constant [8 x i8] c"id_type\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"ID Type\00", align 1
@.str.133 = private unnamed_addr constant [34 x i8] c"Type of ID-block that can be used\00", align 1
@rna_KeyingSetPath_id_type_items = internal global [32 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 17217, ptr @.str.188, i32 115, ptr @.str.28, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21057, ptr @.str.189, i32 172, ptr @.str.190, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21058, ptr @.str.191, i32 182, ptr @.str.192, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16707, ptr @.str.193, i32 168, ptr @.str.194, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21827, ptr @.str.195, i32 161, ptr @.str.196, ptr @.str.2 }, %struct.EnumPropertyItem { i32 18006, ptr @.str.197, i32 186, ptr @.str.198, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17479, ptr @.str.199, i32 197, ptr @.str.200, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21063, ptr @.str.201, i32 171, ptr @.str.202, ptr @.str.2 }, %struct.EnumPropertyItem { i32 19785, ptr @.str.203, i32 183, ptr @.str.204, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17739, ptr @.str.205, i32 176, ptr @.str.206, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16716, ptr @.str.207, i32 164, ptr @.str.208, ptr @.str.2 }, %struct.EnumPropertyItem { i32 18764, ptr @.str.209, i32 170, ptr @.str.210, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21324, ptr @.str.211, i32 198, ptr @.str.212, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21580, ptr @.str.213, i32 163, ptr @.str.214, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21325, ptr @.str.215, i32 467, ptr @.str.216, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16717, ptr @.str.217, i32 165, ptr @.str.218, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16973, ptr @.str.219, i32 162, ptr @.str.220, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17741, ptr @.str.221, i32 160, ptr @.str.222, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21582, ptr @.str.223, i32 119, ptr @.str.224, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16975, ptr @.str.225, i32 159, ptr @.str.226, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17232, ptr @.str.227, i32 321, ptr @.str.228, ptr @.str.2 }, %struct.EnumPropertyItem { i32 19536, ptr @.str.229, i32 54, ptr @.str.230, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16720, ptr @.str.231, i32 169, ptr @.str.232, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17235, ptr @.str.233, i32 156, ptr @.str.234, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21075, ptr @.str.235, i32 27, ptr @.str.236, ptr @.str.2 }, %struct.EnumPropertyItem { i32 19283, ptr @.str.237, i32 90, ptr @.str.238, ptr @.str.2 }, %struct.EnumPropertyItem { i32 20307, ptr @.str.239, i32 501, ptr @.str.240, ptr @.str.2 }, %struct.EnumPropertyItem { i32 22612, ptr @.str.241, i32 112, ptr @.str.242, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17748, ptr @.str.243, i32 166, ptr @.str.244, ptr @.str.2 }, %struct.EnumPropertyItem { i32 20311, ptr @.str.245, i32 158, ptr @.str.246, ptr @.str.2 }, %struct.EnumPropertyItem { i32 19799, ptr @.str.247, i32 26, ptr @.str.248, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KeyingSetPath_group_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetPath_data_path, ptr @rna_KeyingSetPath_group, i32 -1, ptr @.str.112, i32 3, ptr @.str.113, ptr @.str.114, i32 0, ptr @.str.20, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68026369, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetPath_group_method_get, ptr @KeyingSetPath_group_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyingSetPath_group_method_items, i32 3, i32 0 }, align 8
@.str.134 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.135 = private unnamed_addr constant [59 x i8] c"Name of Action Group to assign setting(s) for this path to\00", align 1
@rna_KeyingSetPath_data_path = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetPath_array_index, ptr @rna_KeyingSetPath_group_method, i32 -1, ptr @.str.106, i32 262145, ptr @.str.136, ptr @.str.137, i32 0, ptr @.str.20, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68026369, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetPath_data_path_get, ptr @KeyingSetPath_data_path_length, ptr @KeyingSetPath_data_path_set, ptr null, ptr null, ptr null, i32 0, ptr @.str.2 }, align 8
@rna_KeyingSetPath_group_method_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KeyingSetPath_array_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetPath_use_entire_array, ptr @rna_KeyingSetPath_data_path, i32 -1, ptr @.str.138, i32 8195, ptr @.str.139, ptr @.str.140, i32 0, ptr @.str.20, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68026369, ptr null, ptr null, i32 104, i32 0, ptr null, ptr null }, ptr @KeyingSetPath_array_index_get, ptr @KeyingSetPath_array_index_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.136 = private unnamed_addr constant [10 x i8] c"Data Path\00", align 1
@.str.137 = private unnamed_addr constant [25 x i8] c"Path to property setting\00", align 1
@rna_KeyingSetPath_use_entire_array = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetPath_bl_options, ptr @rna_KeyingSetPath_array_index, i32 -1, ptr @.str.141, i32 3, ptr @.str.142, ptr @.str.143, i32 0, ptr @.str.20, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68026369, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetPath_use_entire_array_get, ptr @KeyingSetPath_use_entire_array_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.138 = private unnamed_addr constant [12 x i8] c"array_index\00", align 1
@.str.139 = private unnamed_addr constant [16 x i8] c"RNA Array Index\00", align 1
@.str.140 = private unnamed_addr constant [44 x i8] c"Index to the specific setting if applicable\00", align 1
@rna_KeyingSetPath_bl_options = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyingSetPath_use_entire_array, i32 -1, ptr @.str.87, i32 2097203, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.20, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetPath_bl_options_get, ptr @KeyingSetPath_bl_options_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyingSetPath_bl_options_items, i32 3, i32 1 }, align 8
@.str.141 = private unnamed_addr constant [17 x i8] c"use_entire_array\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"Entire Array\00", align 1
@.str.143 = private unnamed_addr constant [100 x i8] c"When an 'array/vector' type is chosen (Location, Rotation, Color, etc.), entire array is to be used\00", align 1
@rna_KeyingSetPath_bl_options_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.10, i32 0, ptr @.str.11, ptr @.str.12 }, %struct.EnumPropertyItem { i32 32, ptr @.str.13, i32 0, ptr @.str.14, ptr @.str.15 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.144 = private unnamed_addr constant [14 x i8] c"KeyingSetPath\00", align 1
@.str.145 = private unnamed_addr constant [16 x i8] c"Keying Set Path\00", align 1
@.str.146 = private unnamed_addr constant [42 x i8] c"Path to a setting for use in a Keying Set\00", align 1
@rna_KeyingSetInfo_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetInfo_bl_idname, ptr @rna_KeyingSetInfo_rna_properties, i32 -1, ptr @.str.21, i32 8912896, ptr @.str.22, ptr @.str.23, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetInfo_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_KeyingSetInfo_bl_idname = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetInfo_bl_label, ptr @rna_KeyingSetInfo_rna_type, i32 -1, ptr @.str.70, i32 262161, ptr @.str.71, ptr @.str.72, i32 0, ptr @.str.20, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetInfo_bl_idname_get, ptr @KeyingSetInfo_bl_idname_length, ptr @KeyingSetInfo_bl_idname_set, ptr null, ptr null, ptr null, i32 0, ptr @.str.2 }, align 8
@rna_KeyingSetInfo_bl_label = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetInfo_bl_description, ptr @rna_KeyingSetInfo_bl_idname, i32 -1, ptr @.str.73, i32 262161, ptr @.str.74, ptr @.str.2, i32 0, ptr @.str.20, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetInfo_bl_label_get, ptr @KeyingSetInfo_bl_label_length, ptr @KeyingSetInfo_bl_label_set, ptr null, ptr null, ptr null, i32 0, ptr @.str.2 }, align 8
@rna_KeyingSetInfo_bl_description = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetInfo_bl_options, ptr @rna_KeyingSetInfo_bl_label, i32 -1, ptr @.str.75, i32 262193, ptr @.str.76, ptr @.str.77, i32 0, ptr @.str.20, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetInfo_bl_description_get, ptr @KeyingSetInfo_bl_description_length, ptr @KeyingSetInfo_bl_description_set, ptr null, ptr null, ptr null, i32 240, ptr @.str.2 }, align 8
@rna_KeyingSetInfo_bl_options = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyingSetInfo_bl_description, i32 -1, ptr @.str.87, i32 2097203, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.20, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyingSetInfo_bl_options_get, ptr @KeyingSetInfo_bl_options_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyingSetInfo_bl_options_items, i32 3, i32 1 }, align 8
@rna_KeyingSetInfo_bl_options_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.10, i32 0, ptr @.str.11, ptr @.str.12 }, %struct.EnumPropertyItem { i32 32, ptr @.str.13, i32 0, ptr @.str.14, ptr @.str.15 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KeyingSetInfo_poll_context = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyingSetInfo_poll_ok, i32 -1, ptr @.str.148, i32 8388612, ptr @.str.2, ptr @.str.2, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Context }, align 8
@.str.147 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@rna_KeyingSetInfo_poll_ok = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetInfo_poll_context, ptr null, i32 -1, ptr @.str.147, i32 11, ptr @.str.2, ptr @.str.2, i32 0, ptr @.str.20, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, ptr null }, align 8
@.str.148 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@RNA_Context = external global %struct.StructRNA, align 8
@rna_KeyingSetInfo_iterator_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_KeyingSetInfo_generate_func, ptr @rna_KeyingSetInfo_poll_func, ptr null, %struct.ListBase { ptr @rna_KeyingSetInfo_iterator_context, ptr @rna_KeyingSetInfo_iterator_ks } }, ptr @.str.152, i32 32, ptr @.str.153, ptr null, ptr null }, align 8
@.str.149 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@.str.150 = private unnamed_addr constant [38 x i8] c"Test if Keying Set can be used or not\00", align 1
@rna_KeyingSetInfo_poll_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_KeyingSetInfo_iterator_func, ptr null, ptr null, %struct.ListBase { ptr @rna_KeyingSetInfo_poll_ok, ptr @rna_KeyingSetInfo_poll_context } }, ptr @.str.149, i32 32, ptr @.str.150, ptr null, ptr @rna_KeyingSetInfo_poll_ok }, align 8
@rna_KeyingSetInfo_iterator_ks = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyingSetInfo_iterator_context, i32 -1, ptr @.str.151, i32 8388612, ptr @.str.2, ptr @.str.2, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_KeyingSet }, align 8
@rna_KeyingSetInfo_iterator_context = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetInfo_iterator_ks, ptr null, i32 -1, ptr @.str.148, i32 8388612, ptr @.str.2, ptr @.str.2, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Context }, align 8
@.str.151 = private unnamed_addr constant [3 x i8] c"ks\00", align 1
@rna_KeyingSetInfo_generate_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_KeyingSetInfo_iterator_func, ptr null, %struct.ListBase { ptr @rna_KeyingSetInfo_generate_context, ptr @rna_KeyingSetInfo_generate_data } }, ptr @.str.155, i32 32, ptr @.str.156, ptr null, ptr null }, align 8
@.str.152 = private unnamed_addr constant [9 x i8] c"iterator\00", align 1
@.str.153 = private unnamed_addr constant [69 x i8] c"Call generate() on the structs which have properties to be keyframed\00", align 1
@rna_KeyingSetInfo_generate_ks = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetInfo_generate_data, ptr @rna_KeyingSetInfo_generate_context, i32 -1, ptr @.str.151, i32 8388612, ptr @.str.2, ptr @.str.2, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_KeyingSet }, align 8
@rna_KeyingSetInfo_generate_context = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyingSetInfo_generate_ks, ptr null, i32 -1, ptr @.str.148, i32 8388612, ptr @.str.2, ptr @.str.2, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Context }, align 8
@rna_KeyingSetInfo_generate_data = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyingSetInfo_generate_ks, i32 -1, ptr @.str.154, i32 8652804, ptr @.str.2, ptr @.str.2, i32 0, ptr @.str.20, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_AnyType }, align 8
@.str.154 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@RNA_AnyType = external global %struct.StructRNA, align 8
@.str.155 = private unnamed_addr constant [9 x i8] c"generate\00", align 1
@.str.156 = private unnamed_addr constant [73 x i8] c"Add Paths to the Keying Set to keyframe the properties of the given data\00", align 1
@RNA_AnimViz = external global %struct.StructRNA, align 8
@.str.157 = private unnamed_addr constant [14 x i8] c"KeyingSetInfo\00", align 1
@.str.158 = private unnamed_addr constant [16 x i8] c"Keying Set Info\00", align 1
@.str.159 = private unnamed_addr constant [50 x i8] c"Callback function defines for builtin Keying Sets\00", align 1
@.str.160 = private unnamed_addr constant [32 x i8] c"NlaTrack '%s' cannot be removed\00", align 1
@.str.161 = private unnamed_addr constant [39 x i8] c"No valid driver data to create copy of\00", align 1
@.str.162 = private unnamed_addr constant [31 x i8] c"Invalid context for keying set\00", align 1
@.str.163 = private unnamed_addr constant [64 x i8] c"Incomplete built-in keying set, appears to be missing type info\00", align 1
@.str.164 = private unnamed_addr constant [35 x i8] c"Keying set path could not be added\00", align 1
@.str.165 = private unnamed_addr constant [37 x i8] c"Keying set path could not be removed\00", align 1
@.str.166 = private unnamed_addr constant [38 x i8] c"Keying set paths could not be removed\00", align 1
@.str.167 = private unnamed_addr constant [8 x i8] c"NOTHING\00", align 1
@.str.168 = private unnamed_addr constant [8 x i8] c"Nothing\00", align 1
@.str.169 = private unnamed_addr constant [40 x i8] c"Strip has no influence past its extents\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c"HOLD\00", align 1
@.str.171 = private unnamed_addr constant [5 x i8] c"Hold\00", align 1
@.str.172 = private unnamed_addr constant [80 x i8] c"Hold the first frame if no previous strips in track, and always hold last frame\00", align 1
@.str.173 = private unnamed_addr constant [13 x i8] c"HOLD_FORWARD\00", align 1
@.str.174 = private unnamed_addr constant [13 x i8] c"Hold Forward\00", align 1
@.str.175 = private unnamed_addr constant [21 x i8] c"Only hold last frame\00", align 1
@.str.176 = private unnamed_addr constant [8 x i8] c"REPLACE\00", align 1
@.str.177 = private unnamed_addr constant [8 x i8] c"Replace\00", align 1
@.str.178 = private unnamed_addr constant [79 x i8] c"Result strip replaces the accumulated results by amount specified by influence\00", align 1
@.str.179 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.181 = private unnamed_addr constant [61 x i8] c"Weighted result of strip is added to the accumulated results\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"SUBTRACT\00", align 1
@.str.183 = private unnamed_addr constant [9 x i8] c"Subtract\00", align 1
@.str.184 = private unnamed_addr constant [65 x i8] c"Weighted result of strip is removed from the accumulated results\00", align 1
@.str.185 = private unnamed_addr constant [9 x i8] c"MULTIPLY\00", align 1
@.str.186 = private unnamed_addr constant [9 x i8] c"Multiply\00", align 1
@.str.187 = private unnamed_addr constant [68 x i8] c"Weighted result of strip is multiplied with the accumulated results\00", align 1
@.str.188 = private unnamed_addr constant [7 x i8] c"ACTION\00", align 1
@.str.189 = private unnamed_addr constant [9 x i8] c"ARMATURE\00", align 1
@.str.190 = private unnamed_addr constant [9 x i8] c"Armature\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"BRUSH\00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c"Brush\00", align 1
@.str.193 = private unnamed_addr constant [7 x i8] c"CAMERA\00", align 1
@.str.194 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.195 = private unnamed_addr constant [6 x i8] c"CURVE\00", align 1
@.str.196 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.197 = private unnamed_addr constant [5 x i8] c"FONT\00", align 1
@.str.198 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.199 = private unnamed_addr constant [13 x i8] c"GREASEPENCIL\00", align 1
@.str.200 = private unnamed_addr constant [14 x i8] c"Grease Pencil\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"IMAGE\00", align 1
@.str.204 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.205 = private unnamed_addr constant [4 x i8] c"KEY\00", align 1
@.str.206 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c"LAMP\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"Lamp\00", align 1
@.str.209 = private unnamed_addr constant [8 x i8] c"LIBRARY\00", align 1
@.str.210 = private unnamed_addr constant [8 x i8] c"Library\00", align 1
@.str.211 = private unnamed_addr constant [10 x i8] c"LINESTYLE\00", align 1
@.str.212 = private unnamed_addr constant [11 x i8] c"Line Style\00", align 1
@.str.213 = private unnamed_addr constant [8 x i8] c"LATTICE\00", align 1
@.str.214 = private unnamed_addr constant [8 x i8] c"Lattice\00", align 1
@.str.215 = private unnamed_addr constant [5 x i8] c"MASK\00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.217 = private unnamed_addr constant [9 x i8] c"MATERIAL\00", align 1
@.str.218 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c"META\00", align 1
@.str.220 = private unnamed_addr constant [9 x i8] c"MetaBall\00", align 1
@.str.221 = private unnamed_addr constant [5 x i8] c"MESH\00", align 1
@.str.222 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@.str.223 = private unnamed_addr constant [9 x i8] c"NODETREE\00", align 1
@.str.224 = private unnamed_addr constant [9 x i8] c"NodeTree\00", align 1
@.str.225 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.226 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.227 = private unnamed_addr constant [11 x i8] c"PAINTCURVE\00", align 1
@.str.228 = private unnamed_addr constant [12 x i8] c"Paint Curve\00", align 1
@.str.229 = private unnamed_addr constant [8 x i8] c"PALETTE\00", align 1
@.str.230 = private unnamed_addr constant [8 x i8] c"Palette\00", align 1
@.str.231 = private unnamed_addr constant [9 x i8] c"PARTICLE\00", align 1
@.str.232 = private unnamed_addr constant [9 x i8] c"Particle\00", align 1
@.str.233 = private unnamed_addr constant [6 x i8] c"SCENE\00", align 1
@.str.234 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.235 = private unnamed_addr constant [7 x i8] c"SCREEN\00", align 1
@.str.236 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.237 = private unnamed_addr constant [8 x i8] c"SPEAKER\00", align 1
@.str.238 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.239 = private unnamed_addr constant [6 x i8] c"SOUND\00", align 1
@.str.240 = private unnamed_addr constant [6 x i8] c"Sound\00", align 1
@.str.241 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@.str.242 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.243 = private unnamed_addr constant [8 x i8] c"TEXTURE\00", align 1
@.str.244 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.245 = private unnamed_addr constant [6 x i8] c"WORLD\00", align 1
@.str.246 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@.str.247 = private unnamed_addr constant [14 x i8] c"WINDOWMANAGER\00", align 1
@.str.248 = private unnamed_addr constant [15 x i8] c"Window Manager\00", align 1
@.str.249 = private unnamed_addr constant [74 x i8] c"Registering keying set info class: '%s' is too long, maximum length is %d\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.250 = private unnamed_addr constant [23 x i8] c"python keying set info\00", align 1
@BLENDER_RNA = external global %struct.BlenderRNA, align 8
@.str.251 = private unnamed_addr constant [4 x i8] c"ksi\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @AnimData_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_AnimData_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
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
define internal void @AnimData_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @AnimData_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @AnimData_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @AnimData_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @AnimData_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @AnimData_nla_tracks_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_AnimData_nla_tracks, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.AnimData, ptr %5, i64 0, i32 3
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #13
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #13, !noalias !46
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_NlaTrack, ptr noundef %13) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @AnimData_nla_tracks_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_NlaTrack, ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AnimData_nla_tracks_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #13, !noalias !49
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_NlaTrack, ptr noundef %8) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @AnimData_nla_tracks_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @AnimData_nla_tracks_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #13
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_AnimData_nla_tracks, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 3
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #13
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #13, !noalias !52
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_NlaTrack, ptr noundef %17) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
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
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #13
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #13, !noalias !64
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_NlaTrack, ptr noundef %63) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
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
define dso_local i32 @AnimData_nla_tracks_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 2
  store ptr @rna_AnimData_nla_tracks, ptr %11, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.AnimData, ptr %9, i64 0, i32 3
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef null) #13
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !44
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %18 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #13, !noalias !67
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull @RNA_NlaTrack, ptr noundef %18) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %19

19:                                               ; preds = %3, %16
  %20 = load i32, ptr %13, align 8, !tbaa !44
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %59, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %24 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  br label %25

25:                                               ; preds = %22, %53
  %26 = phi i8 [ 0, %22 ], [ %48, %53 ]
  %27 = load ptr, ptr %24, align 8, !tbaa !70
  %28 = icmp eq ptr %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  %30 = call i32 @NlaTrack_name_length(ptr noundef nonnull %23) #13
  %31 = icmp slt i32 %30, 1024
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  call void @NlaTrack_name_get(ptr noundef nonnull %23, ptr noundef nonnull %7) #13
  %33 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %44

35:                                               ; preds = %29
  %36 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %37 = add nuw nsw i32 %30, 1
  %38 = zext nneg i32 %37 to i64
  %39 = call ptr %36(i64 noundef %38, ptr noundef nonnull @.str.16) #13
  call void @NlaTrack_name_get(ptr noundef nonnull %23, ptr noundef %39) #13
  %40 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) %1) #14
  %41 = icmp eq i32 %40, 0
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %42(ptr noundef %39) #13
  br i1 %41, label %43, label %44

43:                                               ; preds = %35, %32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 24, i1 false)
  br label %44

44:                                               ; preds = %43, %35, %32
  %45 = phi i8 [ %26, %32 ], [ %26, %35 ], [ 1, %43 ]
  %46 = phi i1 [ true, %32 ], [ true, %35 ], [ false, %43 ]
  br i1 %46, label %47, label %56

47:                                               ; preds = %44, %25
  %48 = phi i8 [ %45, %44 ], [ %26, %25 ]
  call void @rna_iterator_listbase_next(ptr noundef nonnull %6) #13
  %49 = load i32, ptr %13, align 8, !tbaa !44
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %52 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #13, !noalias !71
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull @RNA_NlaTrack, ptr noundef %52) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %53

53:                                               ; preds = %47, %51
  %54 = load i32, ptr %13, align 8, !tbaa !44
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %25, !llvm.loop !74

56:                                               ; preds = %44, %53
  %57 = phi i8 [ %48, %53 ], [ %45, %44 ]
  %58 = zext nneg i8 %57 to i32
  br label %59

59:                                               ; preds = %56, %19
  %60 = phi i32 [ 0, %19 ], [ %58, %56 ]
  call void @rna_iterator_listbase_end(ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #13
  ret i32 %60
}

declare i32 @NlaTrack_name_length(ptr noundef) local_unnamed_addr #3

declare void @NlaTrack_name_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @AnimData_action_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Action, ptr noundef %5) #13
  ret void
}

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @AnimData_action_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !80
  %6 = tail call zeroext i8 @BKE_animdata_set_action(ptr noundef null, ptr noundef %5, ptr noundef %4) #13
  %7 = tail call ptr @BKE_animdata_from_id(ptr noundef %5) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 8
  %11 = load i32, ptr %10, align 4, !tbaa !81
  %12 = or i32 %11, 2
  store i32 %12, ptr %10, align 4, !tbaa !81
  br label %13

13:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AnimData_action_extrapolation_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.AnimData, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !82
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AnimData_action_extrapolation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.AnimData, ptr %4, i64 0, i32 10
  store i16 %5, ptr %6, align 2, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AnimData_action_blend_type_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.AnimData, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !83
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AnimData_action_blend_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.AnimData, ptr %4, i64 0, i32 9
  store i16 %5, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @AnimData_action_influence_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.AnimData, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 4, !tbaa !84
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AnimData_action_influence_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.AnimData, ptr %4, i64 0, i32 11
  store float %8, ptr %9, align 4, !tbaa !84
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AnimData_drivers_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_AnimData_drivers, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.AnimData, ptr %5, i64 0, i32 5
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #13
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #13, !noalias !85
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_FCurve, ptr noundef %13) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @AnimData_drivers_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_FCurve, ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AnimData_drivers_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #13, !noalias !88
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_FCurve, ptr noundef %8) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AnimData_drivers_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @AnimData_drivers_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #13
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_AnimData_drivers, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 5
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #13
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #13, !noalias !91
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_FCurve, ptr noundef %17) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
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
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #13
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !94

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
  br i1 %53, label %46, label %54, !llvm.loop !95

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
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #13, !noalias !96
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_FCurve, ptr noundef %63) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  br label %64

64:                                               ; preds = %60, %62, %18
  %65 = phi i1 [ false, %18 ], [ %61, %62 ], [ %61, %60 ]
  %66 = zext i1 %65 to i32
  call void @rna_iterator_listbase_end(ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #13
  ret i32 %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AnimData_use_nla_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.AnimData, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !99
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @AnimData_use_nla_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.AnimData, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !99
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 2, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !99
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaTracks_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_NlaTracks_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @NlaTracks_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaTracks_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaTracks_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NlaTracks_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaTracks_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaTracks_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45, !noalias !100
  %5 = getelementptr inbounds %struct.AnimData, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BKE_nlatrack_find_active(ptr noundef nonnull %5) #13, !noalias !100
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_NlaTrack, ptr noundef %6) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaTracks_active_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 3
  tail call void @BKE_nlatrack_set_active(ptr noundef nonnull %7, ptr noundef %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AnimDataDrivers_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_AnimDataDrivers_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @AnimDataDrivers_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AnimDataDrivers_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AnimDataDrivers_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @AnimDataDrivers_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @AnimDataDrivers_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSet_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_KeyingSet_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @KeyingSet_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSet_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSet_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @KeyingSet_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSet_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSet_bl_idname_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KeyingSet, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #13
  ret void
}

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyingSet_bl_idname_length(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KeyingSet, ptr %3, i64 0, i32 3
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSet_bl_idname_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KeyingSet, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSet_bl_label_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KeyingSet, ptr %4, i64 0, i32 4
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyingSet_bl_label_length(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KeyingSet, ptr %3, i64 0, i32 4
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSet_bl_label_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KeyingSet, ptr %4, i64 0, i32 4
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.KeyingSet, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %42, label %12

12:                                               ; preds = %8, %39
  %13 = phi ptr [ %40, %39 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.KS_Path, ptr %13, i64 0, i32 5
  %15 = load i16, ptr %14, align 4, !tbaa !103
  %16 = icmp eq i16 %15, 2
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.KS_Path, ptr %13, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !105
  %20 = icmp eq ptr %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %19) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %22, align 8, !tbaa !75
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.bAction, ptr %25, i64 0, i32 3
  br label %29

29:                                               ; preds = %33, %27
  %30 = phi ptr [ %28, %27 ], [ %31, %33 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.bActionGroup, ptr %31, i64 0, i32 5
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %34) #14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %29, !llvm.loop !106

37:                                               ; preds = %33
  %38 = tail call ptr @BLI_strncpy(ptr noundef nonnull %34, ptr noundef %1, i64 noundef 64) #13
  br label %39

39:                                               ; preds = %29, %37, %24, %21, %17, %12
  %40 = load ptr, ptr %13, align 8, !tbaa !35
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %12, !llvm.loop !107

42:                                               ; preds = %39, %8, %2
  %43 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSet_bl_description_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KeyingSet, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 240) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyingSet_bl_description_length(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KeyingSet, ptr %3, i64 0, i32 5
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSet_bl_description_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KeyingSet, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 240) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSet_type_info_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45, !noalias !108
  %5 = getelementptr inbounds %struct.KeyingSet, ptr %4, i64 0, i32 7
  %6 = load i16, ptr %5, align 8, !tbaa !111, !noalias !108
  %7 = and i16 %6, 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.KeyingSet, ptr %4, i64 0, i32 6
  %11 = tail call ptr @ANIM_keyingset_info_find_name(ptr noundef nonnull %10) #13, !noalias !108
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %11, %9 ], [ null, %2 ]
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_KeyingSetInfo, ptr noundef %13) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSet_paths_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_KeyingSet_paths, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.KeyingSet, ptr %5, i64 0, i32 2
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #13
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #13, !noalias !113
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_KeyingSetPath, ptr noundef %13) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @KeyingSet_paths_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_KeyingSetPath, ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSet_paths_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #13, !noalias !116
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_KeyingSetPath, ptr noundef %8) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSet_paths_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @KeyingSet_paths_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #13
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_KeyingSet_paths, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.KeyingSet, ptr %8, i64 0, i32 2
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #13
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #13, !noalias !119
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_KeyingSetPath, ptr noundef %17) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
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
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #13
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !122

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
  br i1 %53, label %46, label %54, !llvm.loop !123

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
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #13, !noalias !124
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_KeyingSetPath, ptr noundef %63) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
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
define dso_local i32 @KeyingSet_paths_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 2
  store ptr @rna_KeyingSet_paths, ptr %11, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.KeyingSet, ptr %9, i64 0, i32 2
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef null) #13
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !44
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %18 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #13, !noalias !127
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull @RNA_KeyingSetPath, ptr noundef %18) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %19

19:                                               ; preds = %3, %16
  %20 = load i32, ptr %13, align 8, !tbaa !44
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %78, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %24 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  br label %25

25:                                               ; preds = %22, %72
  %26 = phi i8 [ 0, %22 ], [ %67, %72 ]
  %27 = load ptr, ptr %24, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %66, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.KS_Path, ptr %27, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !130
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #14
  %35 = trunc i64 %34 to i32
  br label %36

36:                                               ; preds = %29, %33
  %37 = phi i32 [ %35, %33 ], [ 0, %29 ]
  %38 = icmp slt i32 %37, 1024
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  br i1 %32, label %42, label %40

40:                                               ; preds = %39
  %41 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %31) #13
  br label %43

42:                                               ; preds = %39
  store i8 0, ptr %7, align 16, !tbaa !131
  br label %43

43:                                               ; preds = %40, %42
  %44 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #14
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %62, label %63

46:                                               ; preds = %36
  %47 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %48 = add nuw nsw i32 %37, 1
  %49 = zext nneg i32 %48 to i64
  %50 = call ptr %47(i64 noundef %49, ptr noundef nonnull @.str.16) #13
  %51 = load ptr, ptr %24, align 8, !tbaa !45
  %52 = getelementptr inbounds %struct.KS_Path, ptr %51, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !130
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %46
  %56 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %50, ptr noundef nonnull dereferenceable(1) %53) #13
  br label %58

57:                                               ; preds = %46
  store i8 0, ptr %50, align 1, !tbaa !131
  br label %58

58:                                               ; preds = %55, %57
  %59 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %50, ptr noundef nonnull dereferenceable(1) %1) #14
  %60 = icmp eq i32 %59, 0
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %61(ptr noundef %50) #13
  br i1 %60, label %62, label %63

62:                                               ; preds = %58, %43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 24, i1 false)
  br label %63

63:                                               ; preds = %62, %58, %43
  %64 = phi i8 [ %26, %43 ], [ %26, %58 ], [ 1, %62 ]
  %65 = phi i1 [ true, %43 ], [ true, %58 ], [ false, %62 ]
  br i1 %65, label %66, label %75

66:                                               ; preds = %63, %25
  %67 = phi i8 [ %64, %63 ], [ %26, %25 ]
  call void @rna_iterator_listbase_next(ptr noundef nonnull %6) #13
  %68 = load i32, ptr %13, align 8, !tbaa !44
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %71 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #13, !noalias !132
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull @RNA_KeyingSetPath, ptr noundef %71) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %72

72:                                               ; preds = %66, %70
  %73 = load i32, ptr %13, align 8, !tbaa !44
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %25, !llvm.loop !135

75:                                               ; preds = %63, %72
  %76 = phi i8 [ %67, %72 ], [ %64, %63 ]
  %77 = zext nneg i8 %76 to i32
  br label %78

78:                                               ; preds = %75, %19
  %79 = phi i32 [ 0, %19 ], [ %77, %75 ]
  call void @rna_iterator_listbase_end(ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #13
  ret i32 %79
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyingSetPath_data_path_length(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KS_Path, ptr %3, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !130
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #14
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyingSetPath_data_path_get(ptr nocapture noundef readonly %0, ptr noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KS_Path, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !130
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %6) #13
  br label %11

10:                                               ; preds = %2
  store i8 0, ptr %1, align 1, !tbaa !131
  br label %11

11:                                               ; preds = %8, %10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyingSet_is_path_absolute_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KeyingSet, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 8, !tbaa !111
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyingSet_bl_options_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KeyingSet, ptr %3, i64 0, i32 8
  %5 = load i16, ptr %4, align 2, !tbaa !136
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyingSet_bl_options_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.KeyingSet, ptr %4, i64 0, i32 8
  store i16 %5, ptr %6, align 2, !tbaa !136
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPaths_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_KeyingSetPaths_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @KeyingSetPaths_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPaths_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPaths_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @KeyingSetPaths_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPaths_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPaths_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45, !noalias !137
  %5 = getelementptr inbounds %struct.KeyingSet, ptr %4, i64 0, i32 2
  %6 = getelementptr inbounds %struct.KeyingSet, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !140, !noalias !137
  %8 = add nsw i32 %7, -1
  %9 = tail call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %8) #13, !noalias !137
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_KeyingSetPath, ptr noundef %9) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPaths_active_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.KeyingSet, ptr %6, i64 0, i32 2
  %8 = tail call i32 @BLI_findindex(ptr noundef nonnull %7, ptr noundef %4) #13
  %9 = add nsw i32 %8, 1
  %10 = getelementptr inbounds %struct.KeyingSet, ptr %6, i64 0, i32 9
  store i32 %9, ptr %10, align 4, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyingSetPaths_active_index_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KeyingSet, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !140
  %6 = icmp sgt i32 %5, 1
  %7 = add nsw i32 %5, -1
  %8 = select i1 %6, i32 %7, i32 0
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyingSetPaths_active_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = add nsw i32 %1, 1
  %6 = getelementptr inbounds %struct.KeyingSet, ptr %4, i64 0, i32 9
  store i32 %5, ptr %6, align 4, !tbaa !140
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPath_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_KeyingSetPath_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @KeyingSetPath_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPath_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPath_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @KeyingSetPath_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPath_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPath_id_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KS_Path, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ID, ptr noundef %6) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPath_id_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KS_Path, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #13
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #13
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !105
  ret void
}

declare void @id_us_min(ptr noundef) local_unnamed_addr #3

declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyingSetPath_id_type_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KS_Path, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !141
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyingSetPath_id_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KS_Path, ptr %4, i64 0, i32 4
  store i32 %1, ptr %5, align 8, !tbaa !141
  %6 = getelementptr inbounds %struct.KS_Path, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !142
  %12 = sext i16 %11 to i32
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store ptr null, ptr %6, align 8, !tbaa !105
  br label %15

15:                                               ; preds = %2, %9, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPath_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KS_Path, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyingSetPath_group_length(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KS_Path, ptr %3, i64 0, i32 3
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPath_group_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KS_Path, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyingSetPath_group_method_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KS_Path, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 4, !tbaa !103
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyingSetPath_group_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.KS_Path, ptr %4, i64 0, i32 5
  store i16 %5, ptr %6, align 4, !tbaa !103
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPath_data_path_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KS_Path, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !130
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %9(ptr noundef nonnull %6) #13
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i8, ptr %1, align 1, !tbaa !131
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @BLI_strdup(ptr noundef nonnull %1) #13
  br label %15

15:                                               ; preds = %10, %13
  %16 = phi ptr [ %14, %13 ], [ null, %10 ]
  store ptr %16, ptr %5, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyingSetPath_array_index_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KS_Path, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !143
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyingSetPath_array_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KS_Path, ptr %4, i64 0, i32 8
  store i32 %1, ptr %5, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyingSetPath_use_entire_array_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KS_Path, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 4, !tbaa !144
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyingSetPath_use_entire_array_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.KS_Path, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 4, !tbaa !144
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !144
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyingSetPath_bl_options_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KS_Path, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !145
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyingSetPath_bl_options_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.KS_Path, ptr %4, i64 0, i32 10
  store i16 %5, ptr %6, align 2, !tbaa !145
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetInfo_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_KeyingSetInfo_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @KeyingSetInfo_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetInfo_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetInfo_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @KeyingSetInfo_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetInfo_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetInfo_bl_idname_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KeyingSetInfo, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyingSetInfo_bl_idname_length(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KeyingSetInfo, ptr %3, i64 0, i32 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetInfo_bl_idname_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KeyingSetInfo, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetInfo_bl_label_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KeyingSetInfo, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyingSetInfo_bl_label_length(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KeyingSetInfo, ptr %3, i64 0, i32 3
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetInfo_bl_label_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KeyingSetInfo, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetInfo_bl_description_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KeyingSetInfo, ptr %4, i64 0, i32 4
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 240) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyingSetInfo_bl_description_length(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KeyingSetInfo, ptr %3, i64 0, i32 4
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetInfo_bl_description_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.KeyingSetInfo, ptr %4, i64 0, i32 4
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 240) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyingSetInfo_bl_options_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KeyingSetInfo, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !146
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyingSetInfo_bl_options_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.KeyingSetInfo, ptr %4, i64 0, i32 5
  store i16 %5, ptr %6, align 8, !tbaa !146
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @NlaTracks_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @add_nlatrack(ptr noundef %0, ptr noundef %2) #13
  tail call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 239665155, ptr noundef null) #13
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaTracks_new_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !149
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call ptr @add_nlatrack(ptr noundef %6, ptr noundef %8) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665155, ptr noundef null) #13
  store ptr %10, ptr %9, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaTracks_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %8 = tail call i32 @BLI_findindex(ptr noundef nonnull %7, ptr noundef %6) #13
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.NlaTrack, ptr %6, i64 0, i32 5
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.160, ptr noundef nonnull %11) #13
  br label %13

12:                                               ; preds = %4
  tail call void @free_nlatrack(ptr noundef nonnull %7, ptr noundef %6) #13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 239665156, ptr noundef null) #13
  br label %13

13:                                               ; preds = %10, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NlaTracks_remove_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !149
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 3
  %12 = tail call i32 @BLI_findindex(ptr noundef nonnull %11, ptr noundef %10) #13
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.NlaTrack, ptr %10, i64 0, i32 5
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.160, ptr noundef nonnull %15) #13
  br label %17

16:                                               ; preds = %4
  tail call void @free_nlatrack(ptr noundef nonnull %11, ptr noundef %10) #13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665156, ptr noundef null) #13
  br label %17

17:                                               ; preds = %14, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @AnimDataDrivers_from_existing(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !151
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5, %3
  %10 = tail call ptr @CTX_wm_reports(ptr noundef %1) #13
  tail call void @BKE_report(ptr noundef %10, i32 noundef 32, ptr noundef nonnull @.str.161) #13
  br label %14

11:                                               ; preds = %5
  %12 = tail call ptr @copy_fcurve(ptr noundef nonnull %2) #13
  %13 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 5
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %12) #13
  br label %14

14:                                               ; preds = %9, %11
  %15 = phi ptr [ null, %9 ], [ %12, %11 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define dso_local void @AnimDataDrivers_from_existing_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !149
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.FCurve, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %4
  %15 = tail call ptr @CTX_wm_reports(ptr noundef %0) #13
  tail call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str.161) #13
  br label %19

16:                                               ; preds = %10
  %17 = tail call ptr @copy_fcurve(ptr noundef nonnull %8) #13
  %18 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 5
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %17) #13
  br label %19

19:                                               ; preds = %14, %16
  %20 = phi ptr [ null, %14 ], [ %17, %16 ]
  %21 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %20, ptr %21, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSet_refresh(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call signext i16 @ANIM_validate_keyingset(ptr noundef %1, ptr noundef null, ptr noundef %0) #13
  switch i16 %4, label %8 [
    i16 -2, label %5
    i16 -1, label %6
  ]

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %3, %5
  %7 = phi ptr [ @.str.163, %5 ], [ @.str.162, %3 ]
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull %7) #13
  br label %8

8:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSet_refresh_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = tail call signext i16 @ANIM_validate_keyingset(ptr noundef %0, ptr noundef null, ptr noundef %6) #13
  switch i16 %7, label %11 [
    i16 -2, label %8
    i16 -1, label %9
  ]

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ @.str.163, %8 ], [ @.str.162, %4 ]
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %10) #13
  br label %11

11:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @KeyingSetPaths_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq ptr %0, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %4, -1
  %11 = zext i1 %10 to i16
  %12 = select i1 %10, i32 0, i32 %4
  %13 = trunc i32 %5 to i16
  %14 = tail call ptr @BKE_keyingset_add_path(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %6, ptr noundef %3, i32 noundef %12, i16 noundef signext %11, i16 noundef signext %13) #13
  %15 = getelementptr inbounds %struct.KeyingSet, ptr %0, i64 0, i32 2
  %16 = tail call i32 @BLI_countlist(ptr noundef nonnull %15) #13
  %17 = getelementptr inbounds %struct.KeyingSet, ptr %0, i64 0, i32 9
  store i32 %16, ptr %17, align 4, !tbaa !140
  br label %19

18:                                               ; preds = %7
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.164) #13
  br label %19

19:                                               ; preds = %9, %18
  %20 = phi ptr [ %14, %9 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPaths_add_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !149
  %8 = icmp eq ptr %6, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %7, i64 32
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds i8, ptr %7, i64 28
  %13 = load i32, ptr %12, align 4, !tbaa !153
  %14 = getelementptr inbounds i8, ptr %7, i64 24
  %15 = load i32, ptr %14, align 4, !tbaa !153
  %16 = getelementptr inbounds i8, ptr %7, i64 16
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = getelementptr inbounds i8, ptr %7, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = icmp eq i32 %15, -1
  %21 = zext i1 %20 to i16
  %22 = select i1 %20, i32 0, i32 %15
  %23 = trunc i32 %13 to i16
  %24 = tail call ptr @BKE_keyingset_add_path(ptr noundef nonnull %6, ptr noundef %19, ptr noundef %11, ptr noundef %17, i32 noundef %22, i16 noundef signext %21, i16 noundef signext %23) #13
  %25 = getelementptr inbounds %struct.KeyingSet, ptr %6, i64 0, i32 2
  %26 = tail call i32 @BLI_countlist(ptr noundef nonnull %25) #13
  %27 = getelementptr inbounds %struct.KeyingSet, ptr %6, i64 0, i32 9
  store i32 %26, ptr %27, align 4, !tbaa !140
  br label %29

28:                                               ; preds = %4
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.164) #13
  br label %29

29:                                               ; preds = %9, %28
  %30 = phi ptr [ %24, %9 ], [ null, %28 ]
  store ptr %30, ptr %7, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPaths_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %0, null
  %7 = icmp eq ptr %5, null
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.165) #13
  br label %12

10:                                               ; preds = %3
  tail call void @BKE_keyingset_free_path(ptr noundef %0, ptr noundef %5) #13
  %11 = getelementptr inbounds %struct.KeyingSet, ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i32 0, ptr %11, align 4, !tbaa !140
  br label %12

12:                                               ; preds = %9, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPaths_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !149
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = icmp eq ptr %6, null
  %12 = icmp eq ptr %10, null
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.165) #13
  br label %17

15:                                               ; preds = %4
  tail call void @BKE_keyingset_free_path(ptr noundef %6, ptr noundef %10) #13
  %16 = getelementptr inbounds %struct.KeyingSet, ptr %6, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i32 0, ptr %16, align 4, !tbaa !140
  br label %17

17:                                               ; preds = %14, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPaths_clear(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.KeyingSet, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !154
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !155
  tail call void @BKE_keyingset_free_path(ptr noundef nonnull %0, ptr noundef nonnull %9) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !156

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %struct.KeyingSet, ptr %0, i64 0, i32 9
  store i32 0, ptr %13, align 4, !tbaa !140
  br label %15

14:                                               ; preds = %2
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.166) #13
  br label %15

15:                                               ; preds = %12, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KeyingSetPaths_clear_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.KeyingSet, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !154
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %14, %12 ], [ %10, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !155
  tail call void @BKE_keyingset_free_path(ptr noundef nonnull %6, ptr noundef nonnull %13) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %12, !llvm.loop !156

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.KeyingSet, ptr %6, i64 0, i32 9
  store i32 0, ptr %17, align 4, !tbaa !140
  br label %19

18:                                               ; preds = %4
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.166) #13
  br label %19

19:                                               ; preds = %16, %18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_AnimData_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !80
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 3) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_AnimData_action_editable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.AnimData, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !99
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.AnimData, ptr %3, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !157
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.AnimData, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !158
  %15 = icmp eq ptr %14, null
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %12, %1, %8
  %18 = phi i32 [ 0, %8 ], [ 0, %1 ], [ %16, %12 ]
  ret i32 %18
}

declare i32 @rna_Action_id_poll(ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_KeyingSet_active_ksPath_editable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KeyingSet, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !159
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal void @rna_KeyingSet_active_ksPath_index_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  store i32 0, ptr %1, align 4, !tbaa !153
  %8 = getelementptr inbounds %struct.KeyingSet, ptr %7, i64 0, i32 2
  %9 = tail call i32 @BLI_countlist(ptr noundef nonnull %8) #13
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 1)
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr %2, align 4, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_ksPath_id_editable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KS_Path, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !141
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_ksPath_id_typef(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KS_Path, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !141
  %6 = trunc i32 %5 to i16
  %7 = tail call ptr @ID_code_to_RNA_type(i16 noundef signext %6) #13
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal nonnull ptr @rna_KeyingSetInfo_refine(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.KeyingSetInfo, ptr %3, i64 0, i32 9, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !160
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @RNA_KeyingSetInfo, ptr %5
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_KeyingSetInfo_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca %struct.KeyingSetInfo, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %8) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %8, i8 0, i64 448, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_KeyingSetInfo, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  %11 = call i32 %4(ptr noundef nonnull %9, ptr noundef %2, ptr noundef nonnull %10) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %54

13:                                               ; preds = %7
  %14 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #14
  %15 = icmp ugt i64 %14, 63
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.249, ptr noundef %3, i32 noundef 64) #13
  br label %54

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.KeyingSetInfo, ptr %8, i64 0, i32 2
  %19 = call ptr @ANIM_keyingset_info_find_name(ptr noundef nonnull %18) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.KeyingSetInfo, ptr %19, i64 0, i32 9, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !160
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = call ptr @RNA_struct_blender_type_get(ptr noundef nonnull %23) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.KeyingSetInfo, ptr %26, i64 0, i32 9
  call void @RNA_struct_free_extension(ptr noundef nonnull %23, ptr noundef nonnull %29) #13
  call void @RNA_struct_free(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull %23) #13
  call void @WM_main_add_notifier(i32 noundef 33554432, ptr noundef null) #13
  call void @ANIM_keyingset_info_unregister(ptr noundef %0, ptr noundef nonnull %26) #13
  br label %30

30:                                               ; preds = %28, %25, %21, %17
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %32 = call ptr %31(i64 noundef 448, ptr noundef nonnull @.str.250) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %32, ptr noundef nonnull align 8 dereferenceable(448) %8, i64 448, i1 false)
  %33 = getelementptr inbounds %struct.KeyingSetInfo, ptr %32, i64 0, i32 2
  %34 = call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull %33, ptr noundef nonnull @RNA_KeyingSetInfo) #13
  %35 = getelementptr inbounds %struct.KeyingSetInfo, ptr %32, i64 0, i32 9
  %36 = getelementptr inbounds %struct.KeyingSetInfo, ptr %32, i64 0, i32 9, i32 1
  store ptr %34, ptr %36, align 8, !tbaa !160
  store ptr %2, ptr %35, align 8, !tbaa !161
  %37 = getelementptr inbounds %struct.KeyingSetInfo, ptr %32, i64 0, i32 9, i32 2
  store ptr %5, ptr %37, align 8, !tbaa !162
  %38 = getelementptr inbounds %struct.KeyingSetInfo, ptr %32, i64 0, i32 9, i32 3
  store ptr %6, ptr %38, align 8, !tbaa !163
  call void @RNA_struct_blender_type_set(ptr noundef %34, ptr noundef %32) #13
  %39 = load i32, ptr %10, align 4, !tbaa !153
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, ptr null, ptr @RKS_POLL_rna_internal
  %42 = getelementptr inbounds %struct.KeyingSetInfo, ptr %32, i64 0, i32 6
  store ptr %41, ptr %42, align 8, !tbaa !164
  %43 = getelementptr inbounds [3 x i32], ptr %10, i64 0, i64 1
  %44 = load i32, ptr %43, align 4, !tbaa !153
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, ptr null, ptr @RKS_ITER_rna_internal
  %47 = getelementptr inbounds %struct.KeyingSetInfo, ptr %32, i64 0, i32 7
  store ptr %46, ptr %47, align 8, !tbaa !165
  %48 = getelementptr inbounds [3 x i32], ptr %10, i64 0, i64 2
  %49 = load i32, ptr %48, align 4, !tbaa !153
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, ptr null, ptr @RKS_GEN_rna_internal
  %52 = getelementptr inbounds %struct.KeyingSetInfo, ptr %32, i64 0, i32 8
  store ptr %51, ptr %52, align 8, !tbaa !166
  call void @ANIM_keyingset_info_register(ptr noundef %32) #13
  call void @WM_main_add_notifier(i32 noundef 33554432, ptr noundef null) #13
  %53 = load ptr, ptr %36, align 8, !tbaa !160
  br label %54

54:                                               ; preds = %7, %30, %16
  %55 = phi ptr [ null, %16 ], [ %53, %30 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %8) #13
  ret ptr %55
}

; Function Attrs: nounwind uwtable
define internal void @rna_KeyingSetInfo_unregister(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @RNA_struct_blender_type_get(ptr noundef %1) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.KeyingSetInfo, ptr %3, i64 0, i32 9
  tail call void @RNA_struct_free_extension(ptr noundef %1, ptr noundef nonnull %6) #13
  tail call void @RNA_struct_free(ptr noundef nonnull @BLENDER_RNA, ptr noundef %1) #13
  tail call void @WM_main_add_notifier(i32 noundef 33554432, ptr noundef null) #13
  tail call void @ANIM_keyingset_info_unregister(ptr noundef %0, ptr noundef nonnull %3) #13
  br label %7

7:                                                ; preds = %2, %5
  ret void
}

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_animdata_set_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_nlatrack_find_active(ptr noundef) local_unnamed_addr #3

declare void @BKE_nlatrack_set_active(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @ANIM_keyingset_info_find_name(ptr noundef) local_unnamed_addr #3

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #3

declare ptr @add_nlatrack(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @free_nlatrack(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #3

declare ptr @copy_fcurve(ptr noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare signext i16 @ANIM_validate_keyingset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_keyingset_add_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

declare void @BKE_keyingset_free_path(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare ptr @ID_code_to_RNA_type(i16 noundef signext) local_unnamed_addr #3

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RNA_def_struct_ptr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_struct_blender_type_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @RKS_POLL_rna_internal(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.ParameterList, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !35
  store ptr %1, ptr %4, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct.KeyingSetInfo, ptr %0, i64 0, i32 9, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !160
  call void @RNA_pointer_create(ptr noundef null, ptr noundef %9, ptr noundef %0, ptr noundef nonnull %5) #13
  %10 = call ptr @RNA_parameter_list_create(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull @rna_KeyingSetInfo_poll_func) #13
  call void @RNA_parameter_set_lookup(ptr noundef nonnull %6, ptr noundef nonnull @.str.251, ptr noundef nonnull %3) #13
  call void @RNA_parameter_set_lookup(ptr noundef nonnull %6, ptr noundef nonnull @.str.148, ptr noundef nonnull %4) #13
  %11 = load ptr, ptr %3, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.KeyingSetInfo, ptr %11, i64 0, i32 9, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !162
  %14 = load ptr, ptr %4, align 8, !tbaa !35
  %15 = call i32 %13(ptr noundef %14, ptr noundef nonnull %5, ptr noundef nonnull @rna_KeyingSetInfo_poll_func, ptr noundef nonnull %6) #13
  call void @RNA_parameter_get_lookup(ptr noundef nonnull %6, ptr noundef nonnull @.str.147, ptr noundef nonnull %7) #13
  %16 = load ptr, ptr %7, align 8, !tbaa !35
  %17 = load i32, ptr %16, align 4, !tbaa !153
  call void @RNA_parameter_list_free(ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal void @RKS_ITER_rna_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.ParameterList, align 8
  store ptr %0, ptr %4, align 8, !tbaa !35
  store ptr %1, ptr %5, align 8, !tbaa !35
  store ptr %2, ptr %6, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #13
  %9 = getelementptr inbounds %struct.KeyingSetInfo, ptr %0, i64 0, i32 9, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !160
  call void @RNA_pointer_create(ptr noundef null, ptr noundef %10, ptr noundef %0, ptr noundef nonnull %7) #13
  %11 = call ptr @RNA_parameter_list_create(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull @rna_KeyingSetInfo_iterator_func) #13
  call void @RNA_parameter_set_lookup(ptr noundef nonnull %8, ptr noundef nonnull @.str.251, ptr noundef nonnull %4) #13
  call void @RNA_parameter_set_lookup(ptr noundef nonnull %8, ptr noundef nonnull @.str.148, ptr noundef nonnull %5) #13
  call void @RNA_parameter_set_lookup(ptr noundef nonnull %8, ptr noundef nonnull @.str.151, ptr noundef nonnull %6) #13
  %12 = load ptr, ptr %4, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.KeyingSetInfo, ptr %12, i64 0, i32 9, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !162
  %15 = load ptr, ptr %5, align 8, !tbaa !35
  %16 = call i32 %14(ptr noundef %15, ptr noundef nonnull %7, ptr noundef nonnull @rna_KeyingSetInfo_iterator_func, ptr noundef nonnull %8) #13
  call void @RNA_parameter_list_free(ptr noundef nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RKS_GEN_rna_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.ParameterList, align 8
  store ptr %0, ptr %5, align 8, !tbaa !35
  store ptr %1, ptr %6, align 8, !tbaa !35
  store ptr %2, ptr %7, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #13
  %10 = getelementptr inbounds %struct.KeyingSetInfo, ptr %0, i64 0, i32 9, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !160
  call void @RNA_pointer_create(ptr noundef null, ptr noundef %11, ptr noundef %0, ptr noundef nonnull %8) #13
  %12 = call ptr @RNA_parameter_list_create(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull @rna_KeyingSetInfo_generate_func) #13
  call void @RNA_parameter_set_lookup(ptr noundef nonnull %9, ptr noundef nonnull @.str.251, ptr noundef nonnull %5) #13
  call void @RNA_parameter_set_lookup(ptr noundef nonnull %9, ptr noundef nonnull @.str.148, ptr noundef nonnull %6) #13
  call void @RNA_parameter_set_lookup(ptr noundef nonnull %9, ptr noundef nonnull @.str.151, ptr noundef nonnull %7) #13
  call void @RNA_parameter_set_lookup(ptr noundef nonnull %9, ptr noundef nonnull @.str.154, ptr noundef %3) #13
  %13 = load ptr, ptr %5, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.KeyingSetInfo, ptr %13, i64 0, i32 9, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !162
  %16 = load ptr, ptr %6, align 8, !tbaa !35
  %17 = call i32 %15(ptr noundef %16, ptr noundef nonnull %8, ptr noundef nonnull @rna_KeyingSetInfo_generate_func, ptr noundef nonnull %9) #13
  call void @RNA_parameter_list_free(ptr noundef nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  ret void
}

declare void @ANIM_keyingset_info_register(ptr noundef) local_unnamed_addr #3

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RNA_parameter_list_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_parameter_set_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_parameter_get_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_parameter_list_free(ptr noundef) local_unnamed_addr #3

declare ptr @RNA_struct_blender_type_get(ptr noundef) local_unnamed_addr #3

declare void @RNA_struct_free_extension(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_struct_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ANIM_keyingset_info_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!47 = distinct !{!47, !48, !"AnimData_nla_tracks_get: argument 0"}
!48 = distinct !{!48, !"AnimData_nla_tracks_get"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"AnimData_nla_tracks_get: argument 0"}
!51 = distinct !{!51, !"AnimData_nla_tracks_get"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"AnimData_nla_tracks_get: argument 0"}
!54 = distinct !{!54, !"AnimData_nla_tracks_get"}
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
!65 = distinct !{!65, !66, !"AnimData_nla_tracks_get: argument 0"}
!66 = distinct !{!66, !"AnimData_nla_tracks_get"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"AnimData_nla_tracks_get: argument 0"}
!69 = distinct !{!69, !"AnimData_nla_tracks_get"}
!70 = !{!40, !36, i64 120}
!71 = !{!72}
!72 = distinct !{!72, !73, !"AnimData_nla_tracks_get: argument 0"}
!73 = distinct !{!73, !"AnimData_nla_tracks_get"}
!74 = distinct !{!74, !59, !60}
!75 = !{!76, !36, i64 0}
!76 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !77, i64 24, !36, i64 40, !77, i64 48, !77, i64 64, !43, i64 80, !43, i64 84, !78, i64 88, !78, i64 90, !79, i64 92}
!77 = !{!"ListBase", !36, i64 0, !36, i64 8}
!78 = !{!"short", !37, i64 0}
!79 = !{!"float", !37, i64 0}
!80 = !{!41, !36, i64 0}
!81 = !{!76, !43, i64 84}
!82 = !{!76, !78, i64 90}
!83 = !{!76, !78, i64 88}
!84 = !{!76, !79, i64 92}
!85 = !{!86}
!86 = distinct !{!86, !87, !"AnimData_drivers_get: argument 0"}
!87 = distinct !{!87, !"AnimData_drivers_get"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"AnimData_drivers_get: argument 0"}
!90 = distinct !{!90, !"AnimData_drivers_get"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"AnimData_drivers_get: argument 0"}
!93 = distinct !{!93, !"AnimData_drivers_get"}
!94 = distinct !{!94, !59, !60}
!95 = distinct !{!95, !59, !60}
!96 = !{!97}
!97 = distinct !{!97, !98, !"AnimData_drivers_get: argument 0"}
!98 = distinct !{!98, !"AnimData_drivers_get"}
!99 = !{!76, !43, i64 80}
!100 = !{!101}
!101 = distinct !{!101, !102, !"rna_NlaTrack_active_get: argument 0"}
!102 = distinct !{!102, !"rna_NlaTrack_active_get"}
!103 = !{!104, !78, i64 92}
!104 = !{!"KS_Path", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !43, i64 88, !78, i64 92, !78, i64 94, !36, i64 96, !43, i64 104, !78, i64 108, !78, i64 110}
!105 = !{!104, !36, i64 16}
!106 = distinct !{!106, !59, !60}
!107 = distinct !{!107, !59, !60}
!108 = !{!109}
!109 = distinct !{!109, !110, !"rna_KeyingSet_typeinfo_get: argument 0"}
!110 = distinct !{!110, !"rna_KeyingSet_typeinfo_get"}
!111 = !{!112, !78, i64 464}
!112 = !{!"KeyingSet", !36, i64 0, !36, i64 8, !77, i64 16, !37, i64 32, !37, i64 96, !37, i64 160, !37, i64 400, !78, i64 464, !78, i64 466, !43, i64 468}
!113 = !{!114}
!114 = distinct !{!114, !115, !"KeyingSet_paths_get: argument 0"}
!115 = distinct !{!115, !"KeyingSet_paths_get"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"KeyingSet_paths_get: argument 0"}
!118 = distinct !{!118, !"KeyingSet_paths_get"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"KeyingSet_paths_get: argument 0"}
!121 = distinct !{!121, !"KeyingSet_paths_get"}
!122 = distinct !{!122, !59, !60}
!123 = distinct !{!123, !59, !60}
!124 = !{!125}
!125 = distinct !{!125, !126, !"KeyingSet_paths_get: argument 0"}
!126 = distinct !{!126, !"KeyingSet_paths_get"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"KeyingSet_paths_get: argument 0"}
!129 = distinct !{!129, !"KeyingSet_paths_get"}
!130 = !{!104, !36, i64 96}
!131 = !{!37, !37, i64 0}
!132 = !{!133}
!133 = distinct !{!133, !134, !"KeyingSet_paths_get: argument 0"}
!134 = distinct !{!134, !"KeyingSet_paths_get"}
!135 = distinct !{!135, !59, !60}
!136 = !{!112, !78, i64 466}
!137 = !{!138}
!138 = distinct !{!138, !139, !"rna_KeyingSet_active_ksPath_get: argument 0"}
!139 = distinct !{!139, !"rna_KeyingSet_active_ksPath_get"}
!140 = !{!112, !43, i64 468}
!141 = !{!104, !43, i64 88}
!142 = !{!78, !78, i64 0}
!143 = !{!104, !43, i64 104}
!144 = !{!104, !78, i64 108}
!145 = !{!104, !78, i64 110}
!146 = !{!147, !78, i64 384}
!147 = !{!"KeyingSetInfo", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !78, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !148, i64 416}
!148 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!149 = !{!150, !36, i64 0}
!150 = !{!"ParameterList", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24}
!151 = !{!152, !36, i64 24}
!152 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !77, i64 32, !36, i64 48, !36, i64 56, !43, i64 64, !79, i64 68, !78, i64 72, !78, i64 74, !43, i64 76, !36, i64 80, !43, i64 88, !37, i64 92, !79, i64 104, !79, i64 108}
!153 = !{!43, !43, i64 0}
!154 = !{!112, !36, i64 16}
!155 = !{!104, !36, i64 0}
!156 = distinct !{!156, !59, !60}
!157 = !{!76, !36, i64 40}
!158 = !{!76, !36, i64 8}
!159 = !{!77, !36, i64 0}
!160 = !{!147, !36, i64 424}
!161 = !{!147, !36, i64 416}
!162 = !{!147, !36, i64 432}
!163 = !{!147, !36, i64 440}
!164 = !{!147, !36, i64 392}
!165 = !{!147, !36, i64 400}
!166 = !{!147, !36, i64 408}
