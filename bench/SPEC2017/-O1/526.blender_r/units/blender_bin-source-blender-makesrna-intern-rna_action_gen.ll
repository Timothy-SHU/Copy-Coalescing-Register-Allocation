; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_action_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_action_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.TimeMarker = type { ptr, ptr, i32, [64 x i8], i32, ptr }

@rna_Action_fcurves = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Action_groups, ptr null, i32 -1, ptr @.str.1, i32 0, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_ActionFCurves, ptr null }, ptr @Action_fcurves_begin, ptr @Action_fcurves_next, ptr @Action_fcurves_end, ptr @Action_fcurves_get, ptr null, ptr @Action_fcurves_lookup_int, ptr null, ptr null, ptr @RNA_FCurve }, align 8
@rna_Action_groups = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Action_pose_markers, ptr @rna_Action_fcurves, i32 -1, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_ActionGroups, ptr null }, ptr @Action_groups_begin, ptr @Action_groups_next, ptr @Action_groups_end, ptr @Action_groups_get, ptr null, ptr @Action_groups_lookup_int, ptr @Action_groups_lookup_string, ptr null, ptr @RNA_ActionGroup }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"name string\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@rna_Action_pose_markers = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Action_frame_range, ptr @rna_Action_groups, i32 -1, ptr @.str.8, i32 0, ptr @.str.9, ptr @.str.10, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_ActionPoseMarkers, ptr null }, ptr @Action_pose_markers_begin, ptr @Action_pose_markers_next, ptr @Action_pose_markers_end, ptr @Action_pose_markers_get, ptr null, ptr @Action_pose_markers_lookup_int, ptr @Action_pose_markers_lookup_string, ptr null, ptr @RNA_TimelineMarker }, align 8
@rna_ActionFCurves_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionFCurves_rna_type, ptr null, i32 -1, ptr @.str.19, i32 128, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionFCurves_rna_properties_begin, ptr @ActionFCurves_rna_properties_next, ptr @ActionFCurves_rna_properties_end, ptr @ActionFCurves_rna_properties_get, ptr null, ptr null, ptr @ActionFCurves_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_ActionGroups_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionGroups_rna_type, ptr null, i32 -1, ptr @.str.19, i32 128, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionGroups_rna_properties_begin, ptr @ActionGroups_rna_properties_next, ptr @ActionGroups_rna_properties_end, ptr @ActionGroups_rna_properties_get, ptr null, ptr null, ptr @ActionGroups_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_ActionPoseMarkers_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionPoseMarkers_rna_type, ptr null, i32 -1, ptr @.str.19, i32 128, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionPoseMarkers_rna_properties_begin, ptr @ActionPoseMarkers_rna_properties_next, ptr @ActionPoseMarkers_rna_properties_end, ptr @ActionPoseMarkers_rna_properties_get, ptr null, ptr null, ptr @ActionPoseMarkers_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_ActionGroup_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionGroup_rna_type, ptr null, i32 -1, ptr @.str.19, i32 128, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionGroup_rna_properties_begin, ptr @ActionGroup_rna_properties_next, ptr @ActionGroup_rna_properties_end, ptr @ActionGroup_rna_properties_get, ptr null, ptr null, ptr @ActionGroup_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_ActionGroup_channels = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionGroup_select, ptr @rna_ActionGroup_name, i32 -1, ptr @.str.71, i32 0, ptr @.str.72, ptr @.str.73, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionGroup_channels_begin, ptr @ActionGroup_channels_next, ptr @ActionGroup_channels_end, ptr @ActionGroup_channels_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_FCurve }, align 8
@RNA_ThemeBoneColorSet = external global %struct.StructRNA, align 8
@rna_DopeSheet_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_rna_type, ptr null, i32 -1, ptr @.str.19, i32 128, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_rna_properties_begin, ptr @DopeSheet_rna_properties_next, ptr @DopeSheet_rna_properties_end, ptr @DopeSheet_rna_properties_get, ptr null, ptr null, ptr @DopeSheet_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@RNA_Group = external global %struct.StructRNA, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"fcurves\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"F-Curves\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"The individual F-Curves that make up the action\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_ActionFCurves = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ActionGroups, ptr @RNA_Action, ptr null, %struct.ListBase { ptr @rna_ActionFCurves_rna_properties, ptr @rna_ActionFCurves_rna_type } }, ptr @.str.42, ptr null, ptr null, i32 4, ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 17, ptr null, ptr @rna_ActionFCurves_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_ActionFCurves_new_func, ptr @rna_ActionFCurves_remove_func } }, align 8
@RNA_FCurve = external global %struct.StructRNA, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Groups\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Convenient groupings of F-Curves\00", align 1
@RNA_ActionGroups = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ActionPoseMarkers, ptr @RNA_ActionFCurves, ptr null, %struct.ListBase { ptr @rna_ActionGroups_rna_properties, ptr @rna_ActionGroups_rna_type } }, ptr @.str.51, ptr null, ptr null, i32 4, ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 17, ptr null, ptr @rna_ActionGroups_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_ActionGroups_new_func, ptr @rna_ActionGroups_remove_func } }, align 8
@RNA_ActionGroup = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_DopeSheet, ptr @RNA_ActionPoseMarkers, ptr null, %struct.ListBase { ptr @rna_ActionGroup_rna_properties, ptr @rna_ActionGroup_colors } }, ptr @.str.92, ptr null, ptr null, i32 4, ptr @.str.33, ptr @.str.93, ptr @.str.4, i32 17, ptr @rna_ActionGroup_name, ptr @rna_ActionGroup_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Action_frame_range = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Action_id_root, ptr @rna_Action_pose_markers, i32 -1, ptr @.str.11, i32 2, ptr @.str.12, ptr @.str.13, i32 0, ptr @.str.4, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Action_frame_range_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_Action_frame_range_default }, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"pose_markers\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Pose Markers\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"Markers specific to this action, for labeling poses\00", align 1
@RNA_ActionPoseMarkers = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ActionGroup, ptr @RNA_ActionGroups, ptr null, %struct.ListBase { ptr @rna_ActionPoseMarkers_rna_properties, ptr @rna_ActionPoseMarkers_active_index } }, ptr @.str.67, ptr null, ptr null, i32 4, ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 17, ptr null, ptr @rna_ActionPoseMarkers_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_ActionPoseMarkers_new_func, ptr @rna_ActionPoseMarkers_remove_func } }, align 8
@RNA_TimelineMarker = external global %struct.StructRNA, align 8
@rna_Action_id_root = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Action_frame_range, i32 -1, ptr @.str.14, i32 3, ptr @.str.15, ptr @.str.16, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Action_id_root_get, ptr @Action_id_root_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Action_id_root_items, i32 31, i32 17217 }, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c"frame_range\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Frame Range\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"The final frame range of all F-Curves within this action\00", align 1
@rna_Action_frame_range_default = internal global [2 x float] zeroinitializer, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"id_root\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"ID Root Type\00", align 1
@.str.16 = private unnamed_addr constant [95 x i8] c"Type of ID block that action can be used on - DO NOT CHANGE UNLESS YOU KNOW WHAT YOU ARE DOING\00", align 1
@rna_Action_id_root_items = internal global [32 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 17217, ptr @.str.194, i32 115, ptr @.str.17, ptr @.str.28 }, %struct.EnumPropertyItem { i32 21057, ptr @.str.195, i32 172, ptr @.str.196, ptr @.str.28 }, %struct.EnumPropertyItem { i32 21058, ptr @.str.197, i32 182, ptr @.str.198, ptr @.str.28 }, %struct.EnumPropertyItem { i32 16707, ptr @.str.199, i32 168, ptr @.str.200, ptr @.str.28 }, %struct.EnumPropertyItem { i32 21827, ptr @.str.201, i32 161, ptr @.str.202, ptr @.str.28 }, %struct.EnumPropertyItem { i32 18006, ptr @.str.203, i32 186, ptr @.str.204, ptr @.str.28 }, %struct.EnumPropertyItem { i32 17479, ptr @.str.205, i32 197, ptr @.str.206, ptr @.str.28 }, %struct.EnumPropertyItem { i32 21063, ptr @.str.207, i32 171, ptr @.str.47, ptr @.str.28 }, %struct.EnumPropertyItem { i32 19785, ptr @.str.208, i32 183, ptr @.str.209, ptr @.str.28 }, %struct.EnumPropertyItem { i32 17739, ptr @.str.210, i32 176, ptr @.str.211, ptr @.str.28 }, %struct.EnumPropertyItem { i32 16716, ptr @.str.212, i32 164, ptr @.str.213, ptr @.str.28 }, %struct.EnumPropertyItem { i32 18764, ptr @.str.214, i32 170, ptr @.str.215, ptr @.str.28 }, %struct.EnumPropertyItem { i32 21324, ptr @.str.216, i32 198, ptr @.str.217, ptr @.str.28 }, %struct.EnumPropertyItem { i32 21580, ptr @.str.218, i32 163, ptr @.str.219, ptr @.str.28 }, %struct.EnumPropertyItem { i32 21325, ptr @.str.220, i32 467, ptr @.str.221, ptr @.str.28 }, %struct.EnumPropertyItem { i32 16717, ptr @.str.222, i32 165, ptr @.str.223, ptr @.str.28 }, %struct.EnumPropertyItem { i32 16973, ptr @.str.224, i32 162, ptr @.str.225, ptr @.str.28 }, %struct.EnumPropertyItem { i32 17741, ptr @.str.226, i32 160, ptr @.str.227, ptr @.str.28 }, %struct.EnumPropertyItem { i32 21582, ptr @.str.228, i32 119, ptr @.str.229, ptr @.str.28 }, %struct.EnumPropertyItem { i32 16975, ptr @.str.230, i32 159, ptr @.str.231, ptr @.str.28 }, %struct.EnumPropertyItem { i32 17232, ptr @.str.232, i32 321, ptr @.str.233, ptr @.str.28 }, %struct.EnumPropertyItem { i32 19536, ptr @.str.234, i32 54, ptr @.str.235, ptr @.str.28 }, %struct.EnumPropertyItem { i32 16720, ptr @.str.236, i32 169, ptr @.str.237, ptr @.str.28 }, %struct.EnumPropertyItem { i32 17235, ptr @.str.238, i32 156, ptr @.str.239, ptr @.str.28 }, %struct.EnumPropertyItem { i32 21075, ptr @.str.240, i32 27, ptr @.str.241, ptr @.str.28 }, %struct.EnumPropertyItem { i32 19283, ptr @.str.242, i32 90, ptr @.str.243, ptr @.str.28 }, %struct.EnumPropertyItem { i32 20307, ptr @.str.244, i32 501, ptr @.str.245, ptr @.str.28 }, %struct.EnumPropertyItem { i32 22612, ptr @.str.246, i32 112, ptr @.str.247, ptr @.str.28 }, %struct.EnumPropertyItem { i32 17748, ptr @.str.248, i32 166, ptr @.str.249, ptr @.str.28 }, %struct.EnumPropertyItem { i32 20311, ptr @.str.250, i32 158, ptr @.str.251, ptr @.str.28 }, %struct.EnumPropertyItem { i32 19799, ptr @.str.252, i32 26, ptr @.str.253, ptr @.str.28 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_ColorMapping = external global %struct.StructRNA, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"A collection of F-Curves for animation\00", align 1
@rna_ID_name = external global %struct.StringPropertyRNA, align 8
@rna_ID_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_Action = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ActionFCurves, ptr @RNA_ColorMapping, ptr null, %struct.ListBase { ptr @rna_Action_fcurves, ptr @rna_Action_id_root } }, ptr @.str.17, ptr null, ptr null, i32 7, ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 115, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8
@rna_ActionFCurves_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ActionFCurves_rna_properties, i32 -1, ptr @.str.22, i32 8912896, ptr @.str.23, ptr @.str.24, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionFCurves_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.19 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@.str.22 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_ActionFCurves_new_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionFCurves_new_action_group, ptr @rna_ActionFCurves_new_data_path, i32 -1, ptr @.str.29, i32 3, ptr @.str.30, ptr @.str.31, i32 0, ptr @.str.4, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.25 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Data Path\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"F-Curve data path to use\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rna_ActionFCurves_new_data_path = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionFCurves_new_index, ptr null, i32 -1, ptr @.str.25, i32 262149, ptr @.str.26, ptr @.str.27, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.28 }, align 8
@rna_ActionFCurves_new_action_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionFCurves_new_fcurve, ptr @rna_ActionFCurves_new_index, i32 -1, ptr @.str.32, i32 262145, ptr @.str.33, ptr @.str.34, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.28 }, align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"Array index\00", align 1
@rna_ActionFCurves_new_fcurve = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ActionFCurves_new_action_group, i32 -1, ptr @.str.35, i32 8388616, ptr @.str.28, ptr @.str.36, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_FCurve }, align 8
@.str.32 = private unnamed_addr constant [13 x i8] c"action_group\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"Action Group\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"Acton group to add this F-Curve into\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"fcurve\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"Newly created F-Curve\00", align 1
@rna_ActionFCurves_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_ActionFCurves_new_func, ptr null, %struct.ListBase { ptr @rna_ActionFCurves_remove_fcurve, ptr @rna_ActionFCurves_remove_fcurve } }, ptr @.str.40, i32 16, ptr @.str.41, ptr @ActionFCurves_remove_call, ptr null }, align 8
@.str.37 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"Add a keyframe to the F-Curve\00", align 1
@rna_ActionFCurves_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_ActionFCurves_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_ActionFCurves_new_data_path, ptr @rna_ActionFCurves_new_fcurve } }, ptr @.str.37, i32 16, ptr @.str.38, ptr @ActionFCurves_new_call, ptr @rna_ActionFCurves_new_fcurve }, align 8
@.str.39 = private unnamed_addr constant [18 x i8] c"F-Curve to remove\00", align 1
@rna_ActionFCurves_remove_fcurve = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.35, i32 264196, ptr @.str.28, ptr @.str.39, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_FCurve }, align 8
@.str.40 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"Remove action group\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"ActionFCurves\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"Action F-Curves\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"Collection of action F-Curves\00", align 1
@rna_ActionGroups_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ActionGroups_rna_properties, i32 -1, ptr @.str.22, i32 8912896, ptr @.str.23, ptr @.str.24, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionGroups_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ActionGroups_new_action_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ActionGroups_new_name, i32 -1, ptr @.str.32, i32 8388616, ptr @.str.28, ptr @.str.48, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_ActionGroup }, align 8
@.str.45 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"New name for the action group\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@rna_ActionGroups_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionGroups_new_action_group, ptr null, i32 -1, ptr @.str.45, i32 262149, ptr @.str.28, ptr @.str.46, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.47 }, align 8
@.str.48 = private unnamed_addr constant [27 x i8] c"Newly created action group\00", align 1
@rna_ActionGroups_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_ActionGroups_new_func, ptr null, %struct.ListBase { ptr @rna_ActionGroups_remove_action_group, ptr @rna_ActionGroups_remove_action_group } }, ptr @.str.40, i32 16, ptr @.str.41, ptr @ActionGroups_remove_call, ptr null }, align 8
@.str.49 = private unnamed_addr constant [28 x i8] c"Add a keyframe to the curve\00", align 1
@rna_ActionGroups_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_ActionGroups_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_ActionGroups_new_name, ptr @rna_ActionGroups_new_action_group } }, ptr @.str.37, i32 0, ptr @.str.49, ptr @ActionGroups_new_call, ptr @rna_ActionGroups_new_action_group }, align 8
@.str.50 = private unnamed_addr constant [23 x i8] c"Action group to remove\00", align 1
@rna_ActionGroups_remove_action_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.32, i32 264196, ptr @.str.28, ptr @.str.50, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_ActionGroup }, align 8
@.str.51 = private unnamed_addr constant [13 x i8] c"ActionGroups\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"Action Groups\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"Collection of action groups\00", align 1
@rna_ActionPoseMarkers_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionPoseMarkers_active, ptr @rna_ActionPoseMarkers_rna_properties, i32 -1, ptr @.str.22, i32 8912896, ptr @.str.23, ptr @.str.24, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionPoseMarkers_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ActionPoseMarkers_active = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionPoseMarkers_active_index, ptr @rna_ActionPoseMarkers_rna_type, i32 -1, ptr @.str.54, i32 8388609, ptr @.str.55, ptr @.str.56, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionPoseMarkers_active_get, ptr @ActionPoseMarkers_active_set, ptr null, ptr null, ptr @RNA_TimelineMarker }, align 8
@rna_ActionPoseMarkers_active_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ActionPoseMarkers_active, i32 -1, ptr @.str.57, i32 3, ptr @.str.58, ptr @.str.59, i32 0, ptr @.str.4, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionPoseMarkers_active_index_get, ptr @ActionPoseMarkers_active_index_set, ptr null, ptr null, ptr @rna_Action_active_pose_marker_index_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.54 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"Active Pose Marker\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"Active pose marker for this action\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"active_index\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"Active Pose Marker Index\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"Index of active pose marker\00", align 1
@rna_ActionPoseMarkers_new_marker = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ActionPoseMarkers_new_name, i32 -1, ptr @.str.62, i32 8388616, ptr @.str.28, ptr @.str.63, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_TimelineMarker }, align 8
@.str.60 = private unnamed_addr constant [37 x i8] c"New name for the marker (not unique)\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"Marker\00", align 1
@rna_ActionPoseMarkers_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionPoseMarkers_new_marker, ptr null, i32 -1, ptr @.str.45, i32 262149, ptr null, ptr @.str.60, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.61 }, align 8
@.str.62 = private unnamed_addr constant [7 x i8] c"marker\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"Newly created marker\00", align 1
@rna_ActionPoseMarkers_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_ActionPoseMarkers_new_func, ptr null, %struct.ListBase { ptr @rna_ActionPoseMarkers_remove_marker, ptr @rna_ActionPoseMarkers_remove_marker } }, ptr @.str.40, i32 16, ptr @.str.66, ptr @ActionPoseMarkers_remove_call, ptr null }, align 8
@.str.64 = private unnamed_addr constant [32 x i8] c"Add a pose marker to the action\00", align 1
@rna_ActionPoseMarkers_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_ActionPoseMarkers_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_ActionPoseMarkers_new_name, ptr @rna_ActionPoseMarkers_new_marker } }, ptr @.str.37, i32 0, ptr @.str.64, ptr @ActionPoseMarkers_new_call, ptr @rna_ActionPoseMarkers_new_marker }, align 8
@.str.65 = private unnamed_addr constant [26 x i8] c"Timeline marker to remove\00", align 1
@rna_ActionPoseMarkers_remove_marker = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.62, i32 264196, ptr @.str.28, ptr @.str.65, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_TimelineMarker }, align 8
@.str.66 = private unnamed_addr constant [25 x i8] c"Remove a timeline marker\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"ActionPoseMarkers\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"Action Pose Markers\00", align 1
@.str.69 = private unnamed_addr constant [31 x i8] c"Collection of timeline markers\00", align 1
@rna_ActionGroup_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionGroup_name, ptr @rna_ActionGroup_rna_properties, i32 -1, ptr @.str.22, i32 8912896, ptr @.str.23, ptr @.str.24, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionGroup_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ActionGroup_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionGroup_channels, ptr @rna_ActionGroup_rna_type, i32 -1, ptr @.str.45, i32 262145, ptr @.str.70, ptr @.str.28, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionGroup_name_get, ptr @ActionGroup_name_length, ptr @ActionGroup_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.28 }, align 8
@.str.70 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@rna_ActionGroup_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionGroup_lock, ptr @rna_ActionGroup_channels, i32 -1, ptr @.str.74, i32 3, ptr @.str.75, ptr @.str.76, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599622, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionGroup_select_get, ptr @ActionGroup_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.71 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"Channels\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"F-Curves in this group\00", align 1
@rna_ActionGroup_lock = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionGroup_show_expanded, ptr @rna_ActionGroup_select, i32 -1, ptr @.str.77, i32 3, ptr @.str.78, ptr @.str.79, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionGroup_lock_get, ptr @ActionGroup_lock_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.74 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"Action group is selected\00", align 1
@rna_ActionGroup_show_expanded = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionGroup_color_set, ptr @rna_ActionGroup_lock, i32 -1, ptr @.str.80, i32 3, ptr @.str.81, ptr @.str.82, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionGroup_show_expanded_get, ptr @ActionGroup_show_expanded_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.77 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"Action group is locked\00", align 1
@rna_ActionGroup_color_set = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionGroup_is_custom_color_set, ptr @rna_ActionGroup_show_expanded, i32 -1, ptr @.str.83, i32 3, ptr @.str.84, ptr @.str.85, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionGroup_color_set_get, ptr @ActionGroup_color_set_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ActionGroup_color_set_items, i32 22, i32 0 }, align 8
@.str.80 = private unnamed_addr constant [14 x i8] c"show_expanded\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"Expanded\00", align 1
@.str.82 = private unnamed_addr constant [25 x i8] c"Action group is expanded\00", align 1
@rna_ActionGroup_is_custom_color_set = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionGroup_colors, ptr @rna_ActionGroup_color_set, i32 -1, ptr @.str.86, i32 2, ptr @.str.87, ptr @.str.88, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionGroup_is_custom_color_set_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.83 = private unnamed_addr constant [10 x i8] c"color_set\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"Color Set\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"Custom color set to use\00", align 1
@rna_ActionGroup_color_set_items = internal global [23 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.254, i32 0, ptr @.str.255, ptr @.str.28 }, %struct.EnumPropertyItem { i32 1, ptr @.str.256, i32 0, ptr @.str.257, ptr @.str.28 }, %struct.EnumPropertyItem { i32 2, ptr @.str.258, i32 0, ptr @.str.259, ptr @.str.28 }, %struct.EnumPropertyItem { i32 3, ptr @.str.260, i32 0, ptr @.str.261, ptr @.str.28 }, %struct.EnumPropertyItem { i32 4, ptr @.str.262, i32 0, ptr @.str.263, ptr @.str.28 }, %struct.EnumPropertyItem { i32 5, ptr @.str.264, i32 0, ptr @.str.265, ptr @.str.28 }, %struct.EnumPropertyItem { i32 6, ptr @.str.266, i32 0, ptr @.str.267, ptr @.str.28 }, %struct.EnumPropertyItem { i32 7, ptr @.str.268, i32 0, ptr @.str.269, ptr @.str.28 }, %struct.EnumPropertyItem { i32 8, ptr @.str.270, i32 0, ptr @.str.271, ptr @.str.28 }, %struct.EnumPropertyItem { i32 9, ptr @.str.272, i32 0, ptr @.str.273, ptr @.str.28 }, %struct.EnumPropertyItem { i32 10, ptr @.str.274, i32 0, ptr @.str.275, ptr @.str.28 }, %struct.EnumPropertyItem { i32 11, ptr @.str.276, i32 0, ptr @.str.277, ptr @.str.28 }, %struct.EnumPropertyItem { i32 12, ptr @.str.278, i32 0, ptr @.str.279, ptr @.str.28 }, %struct.EnumPropertyItem { i32 13, ptr @.str.280, i32 0, ptr @.str.281, ptr @.str.28 }, %struct.EnumPropertyItem { i32 14, ptr @.str.282, i32 0, ptr @.str.283, ptr @.str.28 }, %struct.EnumPropertyItem { i32 15, ptr @.str.284, i32 0, ptr @.str.285, ptr @.str.28 }, %struct.EnumPropertyItem { i32 16, ptr @.str.286, i32 0, ptr @.str.287, ptr @.str.28 }, %struct.EnumPropertyItem { i32 17, ptr @.str.288, i32 0, ptr @.str.289, ptr @.str.28 }, %struct.EnumPropertyItem { i32 18, ptr @.str.290, i32 0, ptr @.str.291, ptr @.str.28 }, %struct.EnumPropertyItem { i32 19, ptr @.str.292, i32 0, ptr @.str.293, ptr @.str.28 }, %struct.EnumPropertyItem { i32 20, ptr @.str.294, i32 0, ptr @.str.295, ptr @.str.28 }, %struct.EnumPropertyItem { i32 -1, ptr @.str.296, i32 0, ptr @.str.87, ptr @.str.28 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ActionGroup_colors = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ActionGroup_is_custom_color_set, i32 -1, ptr @.str.89, i32 8650752, ptr @.str.90, ptr @.str.91, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionGroup_colors_get, ptr null, ptr null, ptr null, ptr @RNA_ThemeBoneColorSet }, align 8
@.str.86 = private unnamed_addr constant [20 x i8] c"is_custom_color_set\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"Custom Color Set\00", align 1
@.str.88 = private unnamed_addr constant [61 x i8] c"Color set is user-defined instead of a fixed theme color set\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"Colors\00", align 1
@.str.91 = private unnamed_addr constant [57 x i8] c"Copy of the colors associated with the group's color set\00", align 1
@RNA_DopeSheet = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_AnimData, ptr @RNA_ActionGroup, ptr null, %struct.ListBase { ptr @rna_DopeSheet_rna_properties, ptr @rna_DopeSheet_show_speakers } }, ptr @.str.184, ptr null, ptr null, i32 4, ptr @.str.185, ptr @.str.186, ptr @.str.4, i32 17, ptr null, ptr @rna_DopeSheet_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.92 = private unnamed_addr constant [12 x i8] c"ActionGroup\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"Groups of F-Curves\00", align 1
@rna_DopeSheet_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_source, ptr @rna_DopeSheet_rna_properties, i32 -1, ptr @.str.22, i32 8912896, ptr @.str.23, ptr @.str.24, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_DopeSheet_source = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_datablock_filters, ptr @rna_DopeSheet_rna_type, i32 -1, ptr @.str.94, i32 8388672, ptr @.str.95, ptr @.str.96, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_source_get, ptr null, ptr null, ptr null, ptr @RNA_ID }, align 8
@rna_DopeSheet_show_datablock_filters = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_only_selected, ptr @rna_DopeSheet_source, i32 -1, ptr @.str.97, i32 4099, ptr @.str.98, ptr @.str.99, i32 11, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599616, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_datablock_filters_get, ptr @DopeSheet_show_datablock_filters_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.94 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@.str.96 = private unnamed_addr constant [63 x i8] c"ID-Block representing source data, usually ID_SCE (i.e. Scene)\00", align 1
@rna_DopeSheet_show_only_selected = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_hidden, ptr @rna_DopeSheet_show_datablock_filters, i32 -1, ptr @.str.100, i32 3, ptr @.str.101, ptr @.str.102, i32 255, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_only_selected_get, ptr @DopeSheet_show_only_selected_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.97 = private unnamed_addr constant [23 x i8] c"show_datablock_filters\00", align 1
@.str.98 = private unnamed_addr constant [23 x i8] c"Show Datablock Filters\00", align 1
@.str.99 = private unnamed_addr constant [80 x i8] c"Show options for whether channels related to certain types of data are included\00", align 1
@rna_DopeSheet_show_hidden = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_only_errors, ptr @rna_DopeSheet_show_only_selected, i32 -1, ptr @.str.103, i32 3, ptr @.str.104, ptr @.str.105, i32 53, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_hidden_get, ptr @DopeSheet_show_hidden_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.100 = private unnamed_addr constant [19 x i8] c"show_only_selected\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"Only Selected\00", align 1
@.str.102 = private unnamed_addr constant [60 x i8] c"Only include channels relating to selected objects and data\00", align 1
@rna_DopeSheet_show_only_errors = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_only_group_objects, ptr @rna_DopeSheet_show_hidden, i32 -1, ptr @.str.106, i32 3, ptr @.str.107, ptr @.str.108, i32 52, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_only_errors_get, ptr @DopeSheet_show_only_errors_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.103 = private unnamed_addr constant [12 x i8] c"show_hidden\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"Display Hidden\00", align 1
@.str.105 = private unnamed_addr constant [56 x i8] c"Include channels from objects/bone that are not visible\00", align 1
@rna_DopeSheet_show_only_group_objects = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_filter_group, ptr @rna_DopeSheet_show_only_errors, i32 -1, ptr @.str.109, i32 3, ptr @.str.110, ptr @.str.111, i32 171, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_only_group_objects_get, ptr @DopeSheet_show_only_group_objects_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.106 = private unnamed_addr constant [17 x i8] c"show_only_errors\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"Show Errors\00", align 1
@.str.108 = private unnamed_addr constant [67 x i8] c"Only include F-Curves and drivers that are disabled or have errors\00", align 1
@rna_DopeSheet_filter_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_only_matching_fcurves, ptr @rna_DopeSheet_show_only_group_objects, i32 -1, ptr @.str.112, i32 8388609, ptr @.str.113, ptr @.str.114, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_filter_group_get, ptr @DopeSheet_filter_group_set, ptr null, ptr null, ptr @RNA_Group }, align 8
@.str.109 = private unnamed_addr constant [24 x i8] c"show_only_group_objects\00", align 1
@.str.110 = private unnamed_addr constant [22 x i8] c"Only Objects in Group\00", align 1
@.str.111 = private unnamed_addr constant [58 x i8] c"Only include channels from objects in the specified group\00", align 1
@rna_DopeSheet_show_only_matching_fcurves = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_filter_fcurve_name, ptr @rna_DopeSheet_filter_group, i32 -1, ptr @.str.115, i32 3, ptr @.str.116, ptr @.str.117, i32 30, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_only_matching_fcurves_get, ptr @DopeSheet_show_only_matching_fcurves_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.112 = private unnamed_addr constant [13 x i8] c"filter_group\00", align 1
@.str.113 = private unnamed_addr constant [16 x i8] c"Filtering Group\00", align 1
@.str.114 = private unnamed_addr constant [49 x i8] c"Group that included object should be a member of\00", align 1
@rna_DopeSheet_filter_fcurve_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_missing_nla, ptr @rna_DopeSheet_show_only_matching_fcurves, i32 -1, ptr @.str.118, i32 262145, ptr @.str.119, ptr @.str.120, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_filter_fcurve_name_get, ptr @DopeSheet_filter_fcurve_name_length, ptr @DopeSheet_filter_fcurve_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.28 }, align 8
@.str.115 = private unnamed_addr constant [27 x i8] c"show_only_matching_fcurves\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"Only Matching F-Curves\00", align 1
@.str.117 = private unnamed_addr constant [56 x i8] c"Only include F-Curves with names containing search text\00", align 1
@rna_DopeSheet_show_missing_nla = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_summary, ptr @rna_DopeSheet_filter_fcurve_name, i32 -1, ptr @.str.121, i32 3, ptr @.str.122, ptr @.str.123, i32 115, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_missing_nla_get, ptr @DopeSheet_show_missing_nla_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.118 = private unnamed_addr constant [19 x i8] c"filter_fcurve_name\00", align 1
@.str.119 = private unnamed_addr constant [20 x i8] c"F-Curve Name Filter\00", align 1
@.str.120 = private unnamed_addr constant [30 x i8] c"F-Curve live filtering string\00", align 1
@rna_DopeSheet_show_summary = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_expanded_summary, ptr @rna_DopeSheet_show_missing_nla, i32 -1, ptr @.str.124, i32 3, ptr @.str.125, ptr @.str.126, i32 29, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_summary_get, ptr @DopeSheet_show_summary_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.121 = private unnamed_addr constant [17 x i8] c"show_missing_nla\00", align 1
@.str.122 = private unnamed_addr constant [20 x i8] c"Include Missing NLA\00", align 1
@.str.123 = private unnamed_addr constant [65 x i8] c"Include animation data blocks with no NLA data (NLA editor only)\00", align 1
@rna_DopeSheet_show_expanded_summary = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_transforms, ptr @rna_DopeSheet_show_summary, i32 -1, ptr @.str.127, i32 3, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_expanded_summary_get, ptr @DopeSheet_show_expanded_summary_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.124 = private unnamed_addr constant [13 x i8] c"show_summary\00", align 1
@.str.125 = private unnamed_addr constant [16 x i8] c"Display Summary\00", align 1
@.str.126 = private unnamed_addr constant [63 x i8] c"Display an additional 'summary' line (Dope Sheet editors only)\00", align 1
@rna_DopeSheet_show_transforms = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_shapekeys, ptr @rna_DopeSheet_show_expanded_summary, i32 -1, ptr @.str.130, i32 3, ptr @.str.131, ptr @.str.132, i32 575, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_transforms_get, ptr @DopeSheet_show_transforms_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.127 = private unnamed_addr constant [22 x i8] c"show_expanded_summary\00", align 1
@.str.128 = private unnamed_addr constant [17 x i8] c"Collapse Summary\00", align 1
@.str.129 = private unnamed_addr constant [88 x i8] c"Collapse summary when shown, so all other channels get hidden (Dope Sheet editors only)\00", align 1
@rna_DopeSheet_show_shapekeys = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_modifiers, ptr @rna_DopeSheet_show_transforms, i32 -1, ptr @.str.133, i32 3, ptr @.str.134, ptr @.str.135, i32 176, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_shapekeys_get, ptr @DopeSheet_show_shapekeys_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.130 = private unnamed_addr constant [16 x i8] c"show_transforms\00", align 1
@.str.131 = private unnamed_addr constant [19 x i8] c"Display Transforms\00", align 1
@.str.132 = private unnamed_addr constant [73 x i8] c"Include visualization of object-level animation data (mostly transforms)\00", align 1
@rna_DopeSheet_show_modifiers = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_meshes, ptr @rna_DopeSheet_show_shapekeys, i32 -1, ptr @.str.136, i32 3, ptr @.str.137, ptr @.str.138, i32 442, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_modifiers_get, ptr @DopeSheet_show_modifiers_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.133 = private unnamed_addr constant [15 x i8] c"show_shapekeys\00", align 1
@.str.134 = private unnamed_addr constant [18 x i8] c"Display Shapekeys\00", align 1
@.str.135 = private unnamed_addr constant [58 x i8] c"Include visualization of shape key related animation data\00", align 1
@rna_DopeSheet_show_meshes = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_lattices, ptr @rna_DopeSheet_show_modifiers, i32 -1, ptr @.str.139, i32 3, ptr @.str.140, ptr @.str.141, i32 160, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_meshes_get, ptr @DopeSheet_show_meshes_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.136 = private unnamed_addr constant [15 x i8] c"show_modifiers\00", align 1
@.str.137 = private unnamed_addr constant [22 x i8] c"Display Modifier Data\00", align 1
@.str.138 = private unnamed_addr constant [82 x i8] c"Include visualization of animation data related to datablocks linked to modifiers\00", align 1
@rna_DopeSheet_show_lattices = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_cameras, ptr @rna_DopeSheet_show_meshes, i32 -1, ptr @.str.142, i32 3, ptr @.str.143, ptr @.str.144, i32 163, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_lattices_get, ptr @DopeSheet_show_lattices_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.139 = private unnamed_addr constant [12 x i8] c"show_meshes\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"Display Meshes\00", align 1
@.str.141 = private unnamed_addr constant [53 x i8] c"Include visualization of mesh related animation data\00", align 1
@rna_DopeSheet_show_cameras = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_materials, ptr @rna_DopeSheet_show_lattices, i32 -1, ptr @.str.145, i32 3, ptr @.str.146, ptr @.str.147, i32 168, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_cameras_get, ptr @DopeSheet_show_cameras_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.142 = private unnamed_addr constant [14 x i8] c"show_lattices\00", align 1
@.str.143 = private unnamed_addr constant [17 x i8] c"Display Lattices\00", align 1
@.str.144 = private unnamed_addr constant [56 x i8] c"Include visualization of lattice related animation data\00", align 1
@rna_DopeSheet_show_materials = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_lamps, ptr @rna_DopeSheet_show_cameras, i32 -1, ptr @.str.148, i32 3, ptr @.str.149, ptr @.str.150, i32 165, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_materials_get, ptr @DopeSheet_show_materials_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.145 = private unnamed_addr constant [13 x i8] c"show_cameras\00", align 1
@.str.146 = private unnamed_addr constant [15 x i8] c"Display Camera\00", align 1
@.str.147 = private unnamed_addr constant [55 x i8] c"Include visualization of camera related animation data\00", align 1
@rna_DopeSheet_show_lamps = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_linestyles, ptr @rna_DopeSheet_show_materials, i32 -1, ptr @.str.151, i32 3, ptr @.str.152, ptr @.str.153, i32 164, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_lamps_get, ptr @DopeSheet_show_lamps_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.148 = private unnamed_addr constant [15 x i8] c"show_materials\00", align 1
@.str.149 = private unnamed_addr constant [17 x i8] c"Display Material\00", align 1
@.str.150 = private unnamed_addr constant [57 x i8] c"Include visualization of material related animation data\00", align 1
@rna_DopeSheet_show_linestyles = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_textures, ptr @rna_DopeSheet_show_lamps, i32 -1, ptr @.str.154, i32 3, ptr @.str.155, ptr @.str.156, i32 198, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_linestyles_get, ptr @DopeSheet_show_linestyles_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.151 = private unnamed_addr constant [11 x i8] c"show_lamps\00", align 1
@.str.152 = private unnamed_addr constant [13 x i8] c"Display Lamp\00", align 1
@.str.153 = private unnamed_addr constant [53 x i8] c"Include visualization of lamp related animation data\00", align 1
@rna_DopeSheet_show_textures = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_curves, ptr @rna_DopeSheet_show_linestyles, i32 -1, ptr @.str.157, i32 3, ptr @.str.158, ptr @.str.159, i32 166, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_textures_get, ptr @DopeSheet_show_textures_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.154 = private unnamed_addr constant [16 x i8] c"show_linestyles\00", align 1
@.str.155 = private unnamed_addr constant [19 x i8] c"Display Line Style\00", align 1
@.str.156 = private unnamed_addr constant [59 x i8] c"Include visualization of Line Style related Animation data\00", align 1
@rna_DopeSheet_show_curves = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_worlds, ptr @rna_DopeSheet_show_textures, i32 -1, ptr @.str.160, i32 3, ptr @.str.161, ptr @.str.162, i32 161, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_curves_get, ptr @DopeSheet_show_curves_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.157 = private unnamed_addr constant [14 x i8] c"show_textures\00", align 1
@.str.158 = private unnamed_addr constant [16 x i8] c"Display Texture\00", align 1
@.str.159 = private unnamed_addr constant [56 x i8] c"Include visualization of texture related animation data\00", align 1
@rna_DopeSheet_show_worlds = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_scenes, ptr @rna_DopeSheet_show_curves, i32 -1, ptr @.str.163, i32 3, ptr @.str.164, ptr @.str.165, i32 158, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_worlds_get, ptr @DopeSheet_show_worlds_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.160 = private unnamed_addr constant [12 x i8] c"show_curves\00", align 1
@.str.161 = private unnamed_addr constant [14 x i8] c"Display Curve\00", align 1
@.str.162 = private unnamed_addr constant [54 x i8] c"Include visualization of curve related animation data\00", align 1
@rna_DopeSheet_show_scenes = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_particles, ptr @rna_DopeSheet_show_worlds, i32 -1, ptr @.str.166, i32 3, ptr @.str.167, ptr @.str.168, i32 156, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_scenes_get, ptr @DopeSheet_show_scenes_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.163 = private unnamed_addr constant [12 x i8] c"show_worlds\00", align 1
@.str.164 = private unnamed_addr constant [14 x i8] c"Display World\00", align 1
@.str.165 = private unnamed_addr constant [54 x i8] c"Include visualization of world related animation data\00", align 1
@rna_DopeSheet_show_particles = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_metaballs, ptr @rna_DopeSheet_show_scenes, i32 -1, ptr @.str.169, i32 3, ptr @.str.170, ptr @.str.171, i32 169, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_particles_get, ptr @DopeSheet_show_particles_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.166 = private unnamed_addr constant [12 x i8] c"show_scenes\00", align 1
@.str.167 = private unnamed_addr constant [14 x i8] c"Display Scene\00", align 1
@.str.168 = private unnamed_addr constant [54 x i8] c"Include visualization of scene related animation data\00", align 1
@rna_DopeSheet_show_metaballs = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_armatures, ptr @rna_DopeSheet_show_particles, i32 -1, ptr @.str.172, i32 3, ptr @.str.173, ptr @.str.174, i32 162, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_metaballs_get, ptr @DopeSheet_show_metaballs_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.169 = private unnamed_addr constant [15 x i8] c"show_particles\00", align 1
@.str.170 = private unnamed_addr constant [17 x i8] c"Display Particle\00", align 1
@.str.171 = private unnamed_addr constant [57 x i8] c"Include visualization of particle related animation data\00", align 1
@rna_DopeSheet_show_armatures = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_nodes, ptr @rna_DopeSheet_show_metaballs, i32 -1, ptr @.str.175, i32 3, ptr @.str.176, ptr @.str.177, i32 172, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_armatures_get, ptr @DopeSheet_show_armatures_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.172 = private unnamed_addr constant [15 x i8] c"show_metaballs\00", align 1
@.str.173 = private unnamed_addr constant [17 x i8] c"Display Metaball\00", align 1
@.str.174 = private unnamed_addr constant [57 x i8] c"Include visualization of metaball related animation data\00", align 1
@rna_DopeSheet_show_nodes = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DopeSheet_show_speakers, ptr @rna_DopeSheet_show_armatures, i32 -1, ptr @.str.178, i32 3, ptr @.str.179, ptr @.str.180, i32 119, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_nodes_get, ptr @DopeSheet_show_nodes_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.175 = private unnamed_addr constant [15 x i8] c"show_armatures\00", align 1
@.str.176 = private unnamed_addr constant [17 x i8] c"Display Armature\00", align 1
@.str.177 = private unnamed_addr constant [57 x i8] c"Include visualization of armature related animation data\00", align 1
@rna_DopeSheet_show_speakers = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_DopeSheet_show_nodes, i32 -1, ptr @.str.181, i32 3, ptr @.str.182, ptr @.str.183, i32 90, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DopeSheet_show_speakers_get, ptr @DopeSheet_show_speakers_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.178 = private unnamed_addr constant [11 x i8] c"show_nodes\00", align 1
@.str.179 = private unnamed_addr constant [13 x i8] c"Display Node\00", align 1
@.str.180 = private unnamed_addr constant [53 x i8] c"Include visualization of node related animation data\00", align 1
@.str.181 = private unnamed_addr constant [14 x i8] c"show_speakers\00", align 1
@.str.182 = private unnamed_addr constant [16 x i8] c"Display Speaker\00", align 1
@.str.183 = private unnamed_addr constant [56 x i8] c"Include visualization of speaker related animation data\00", align 1
@RNA_AnimData = external global %struct.StructRNA, align 8
@.str.184 = private unnamed_addr constant [10 x i8] c"DopeSheet\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"Dope Sheet\00", align 1
@.str.186 = private unnamed_addr constant [63 x i8] c"Settings for filtering the channels shown in animation editors\00", align 1
@.str.187 = private unnamed_addr constant [42 x i8] c"F-Curve data path empty, invalid argument\00", align 1
@.str.188 = private unnamed_addr constant [47 x i8] c"F-Curve '%s[%d]' already exists in action '%s'\00", align 1
@.str.189 = private unnamed_addr constant [53 x i8] c"F-Curve's action group '%s' not found in action '%s'\00", align 1
@.str.190 = private unnamed_addr constant [33 x i8] c"F-Curve not found in action '%s'\00", align 1
@.str.191 = private unnamed_addr constant [43 x i8] c"Action group '%s' not found in action '%s'\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.192 = private unnamed_addr constant [11 x i8] c"TimeMarker\00", align 1
@.str.193 = private unnamed_addr constant [46 x i8] c"Timeline marker '%s' not found in action '%s'\00", align 1
@.str.194 = private unnamed_addr constant [7 x i8] c"ACTION\00", align 1
@.str.195 = private unnamed_addr constant [9 x i8] c"ARMATURE\00", align 1
@.str.196 = private unnamed_addr constant [9 x i8] c"Armature\00", align 1
@.str.197 = private unnamed_addr constant [6 x i8] c"BRUSH\00", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"Brush\00", align 1
@.str.199 = private unnamed_addr constant [7 x i8] c"CAMERA\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"CURVE\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c"FONT\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c"GREASEPENCIL\00", align 1
@.str.206 = private unnamed_addr constant [14 x i8] c"Grease Pencil\00", align 1
@.str.207 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@.str.208 = private unnamed_addr constant [6 x i8] c"IMAGE\00", align 1
@.str.209 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.210 = private unnamed_addr constant [4 x i8] c"KEY\00", align 1
@.str.211 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.212 = private unnamed_addr constant [5 x i8] c"LAMP\00", align 1
@.str.213 = private unnamed_addr constant [5 x i8] c"Lamp\00", align 1
@.str.214 = private unnamed_addr constant [8 x i8] c"LIBRARY\00", align 1
@.str.215 = private unnamed_addr constant [8 x i8] c"Library\00", align 1
@.str.216 = private unnamed_addr constant [10 x i8] c"LINESTYLE\00", align 1
@.str.217 = private unnamed_addr constant [11 x i8] c"Line Style\00", align 1
@.str.218 = private unnamed_addr constant [8 x i8] c"LATTICE\00", align 1
@.str.219 = private unnamed_addr constant [8 x i8] c"Lattice\00", align 1
@.str.220 = private unnamed_addr constant [5 x i8] c"MASK\00", align 1
@.str.221 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.222 = private unnamed_addr constant [9 x i8] c"MATERIAL\00", align 1
@.str.223 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c"META\00", align 1
@.str.225 = private unnamed_addr constant [9 x i8] c"MetaBall\00", align 1
@.str.226 = private unnamed_addr constant [5 x i8] c"MESH\00", align 1
@.str.227 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@.str.228 = private unnamed_addr constant [9 x i8] c"NODETREE\00", align 1
@.str.229 = private unnamed_addr constant [9 x i8] c"NodeTree\00", align 1
@.str.230 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.231 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.232 = private unnamed_addr constant [11 x i8] c"PAINTCURVE\00", align 1
@.str.233 = private unnamed_addr constant [12 x i8] c"Paint Curve\00", align 1
@.str.234 = private unnamed_addr constant [8 x i8] c"PALETTE\00", align 1
@.str.235 = private unnamed_addr constant [8 x i8] c"Palette\00", align 1
@.str.236 = private unnamed_addr constant [9 x i8] c"PARTICLE\00", align 1
@.str.237 = private unnamed_addr constant [9 x i8] c"Particle\00", align 1
@.str.238 = private unnamed_addr constant [6 x i8] c"SCENE\00", align 1
@.str.239 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.240 = private unnamed_addr constant [7 x i8] c"SCREEN\00", align 1
@.str.241 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.242 = private unnamed_addr constant [8 x i8] c"SPEAKER\00", align 1
@.str.243 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.244 = private unnamed_addr constant [6 x i8] c"SOUND\00", align 1
@.str.245 = private unnamed_addr constant [6 x i8] c"Sound\00", align 1
@.str.246 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@.str.247 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.248 = private unnamed_addr constant [8 x i8] c"TEXTURE\00", align 1
@.str.249 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.250 = private unnamed_addr constant [6 x i8] c"WORLD\00", align 1
@.str.251 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@.str.252 = private unnamed_addr constant [14 x i8] c"WINDOWMANAGER\00", align 1
@.str.253 = private unnamed_addr constant [15 x i8] c"Window Manager\00", align 1
@.str.254 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.255 = private unnamed_addr constant [15 x i8] c"Default Colors\00", align 1
@.str.256 = private unnamed_addr constant [8 x i8] c"THEME01\00", align 1
@.str.257 = private unnamed_addr constant [21 x i8] c"01 - Theme Color Set\00", align 1
@.str.258 = private unnamed_addr constant [8 x i8] c"THEME02\00", align 1
@.str.259 = private unnamed_addr constant [21 x i8] c"02 - Theme Color Set\00", align 1
@.str.260 = private unnamed_addr constant [8 x i8] c"THEME03\00", align 1
@.str.261 = private unnamed_addr constant [21 x i8] c"03 - Theme Color Set\00", align 1
@.str.262 = private unnamed_addr constant [8 x i8] c"THEME04\00", align 1
@.str.263 = private unnamed_addr constant [21 x i8] c"04 - Theme Color Set\00", align 1
@.str.264 = private unnamed_addr constant [8 x i8] c"THEME05\00", align 1
@.str.265 = private unnamed_addr constant [21 x i8] c"05 - Theme Color Set\00", align 1
@.str.266 = private unnamed_addr constant [8 x i8] c"THEME06\00", align 1
@.str.267 = private unnamed_addr constant [21 x i8] c"06 - Theme Color Set\00", align 1
@.str.268 = private unnamed_addr constant [8 x i8] c"THEME07\00", align 1
@.str.269 = private unnamed_addr constant [21 x i8] c"07 - Theme Color Set\00", align 1
@.str.270 = private unnamed_addr constant [8 x i8] c"THEME08\00", align 1
@.str.271 = private unnamed_addr constant [21 x i8] c"08 - Theme Color Set\00", align 1
@.str.272 = private unnamed_addr constant [8 x i8] c"THEME09\00", align 1
@.str.273 = private unnamed_addr constant [21 x i8] c"09 - Theme Color Set\00", align 1
@.str.274 = private unnamed_addr constant [8 x i8] c"THEME10\00", align 1
@.str.275 = private unnamed_addr constant [21 x i8] c"10 - Theme Color Set\00", align 1
@.str.276 = private unnamed_addr constant [8 x i8] c"THEME11\00", align 1
@.str.277 = private unnamed_addr constant [21 x i8] c"11 - Theme Color Set\00", align 1
@.str.278 = private unnamed_addr constant [8 x i8] c"THEME12\00", align 1
@.str.279 = private unnamed_addr constant [21 x i8] c"12 - Theme Color Set\00", align 1
@.str.280 = private unnamed_addr constant [8 x i8] c"THEME13\00", align 1
@.str.281 = private unnamed_addr constant [21 x i8] c"13 - Theme Color Set\00", align 1
@.str.282 = private unnamed_addr constant [8 x i8] c"THEME14\00", align 1
@.str.283 = private unnamed_addr constant [21 x i8] c"14 - Theme Color Set\00", align 1
@.str.284 = private unnamed_addr constant [8 x i8] c"THEME15\00", align 1
@.str.285 = private unnamed_addr constant [21 x i8] c"15 - Theme Color Set\00", align 1
@.str.286 = private unnamed_addr constant [8 x i8] c"THEME16\00", align 1
@.str.287 = private unnamed_addr constant [21 x i8] c"16 - Theme Color Set\00", align 1
@.str.288 = private unnamed_addr constant [8 x i8] c"THEME17\00", align 1
@.str.289 = private unnamed_addr constant [21 x i8] c"17 - Theme Color Set\00", align 1
@.str.290 = private unnamed_addr constant [8 x i8] c"THEME18\00", align 1
@.str.291 = private unnamed_addr constant [21 x i8] c"18 - Theme Color Set\00", align 1
@.str.292 = private unnamed_addr constant [8 x i8] c"THEME19\00", align 1
@.str.293 = private unnamed_addr constant [21 x i8] c"19 - Theme Color Set\00", align 1
@.str.294 = private unnamed_addr constant [8 x i8] c"THEME20\00", align 1
@.str.295 = private unnamed_addr constant [21 x i8] c"20 - Theme Color Set\00", align 1
@.str.296 = private unnamed_addr constant [7 x i8] c"CUSTOM\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rna_Action_id_poll(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bAction, ptr %4, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !40
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %3, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !46
  %15 = sext i16 %14 to i32
  %16 = icmp eq i32 %8, %15
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %2, %10, %6, %12
  %19 = phi i32 [ %17, %12 ], [ 1, %6 ], [ 0, %10 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rna_Action_actedit_assign_poll(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAction, ptr %5, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !40
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %4, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.SpaceAction, ptr %4, i64 0, i32 9
  %15 = load i8, ptr %14, align 8, !tbaa !48
  switch i8 %15, label %20 [
    i8 0, label %16
    i8 1, label %18
  ]

16:                                               ; preds = %13
  %17 = icmp eq i32 %9, 16975
  br label %20

18:                                               ; preds = %13
  %19 = icmp eq i32 %9, 17739
  br label %20

20:                                               ; preds = %2, %11, %13, %7, %18, %16
  %21 = phi i1 [ %17, %16 ], [ %19, %18 ], [ true, %7 ], [ false, %13 ], [ false, %11 ], [ false, %2 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local void @Action_fcurves_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !55
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Action_fcurves, ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.bAction, ptr %5, i64 0, i32 1
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #11
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #11, !noalias !60
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_FCurve, ptr noundef %13) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @Action_fcurves_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_FCurve, ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Action_fcurves_next(ptr noundef %0) #2 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #11, !noalias !63
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_FCurve, ptr noundef %8) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @Action_fcurves_end(ptr noundef %0) #2 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Action_fcurves_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !55
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_Action_fcurves, ptr %10, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.bAction, ptr %8, i64 0, i32 1
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #11
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !59
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #11, !noalias !66
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_FCurve, ptr noundef %17) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br label %18

18:                                               ; preds = %3, %15
  %19 = load i32, ptr %12, align 8, !tbaa !59
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !69
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
  %33 = load ptr, ptr %22, align 8, !tbaa !71
  br label %46

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ %1, %27 ]
  %36 = add nsw i32 %35, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #11
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !72

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
  %52 = load ptr, ptr %48, align 8, !tbaa !75
  store ptr %52, ptr %22, align 8, !tbaa !71
  %53 = icmp sgt i32 %47, 1
  br i1 %53, label %46, label %54, !llvm.loop !77

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
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #11, !noalias !78
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_FCurve, ptr noundef %63) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !55
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
define dso_local void @Action_groups_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !55
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Action_groups, ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.bAction, ptr %5, i64 0, i32 3
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #11
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #11, !noalias !81
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_ActionGroup, ptr noundef %13) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Action_groups_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ActionGroup, ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Action_groups_next(ptr noundef %0) #2 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #11, !noalias !84
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_ActionGroup, ptr noundef %8) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Action_groups_end(ptr noundef %0) #2 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Action_groups_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !55
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_Action_groups, ptr %10, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.bAction, ptr %8, i64 0, i32 3
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #11
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !59
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #11, !noalias !87
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_ActionGroup, ptr noundef %17) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br label %18

18:                                               ; preds = %3, %15
  %19 = load i32, ptr %12, align 8, !tbaa !59
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !69
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
  %33 = load ptr, ptr %22, align 8, !tbaa !71
  br label %46

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ %1, %27 ]
  %36 = add nsw i32 %35, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #11
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !90

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
  %52 = load ptr, ptr %48, align 8, !tbaa !75
  store ptr %52, ptr %22, align 8, !tbaa !71
  %53 = icmp sgt i32 %47, 1
  br i1 %53, label %46, label %54, !llvm.loop !91

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
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #11, !noalias !92
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_ActionGroup, ptr noundef %63) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !55
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
define dso_local i32 @Action_groups_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #11
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !55
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 2
  store ptr @rna_Action_groups, ptr %11, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.bAction, ptr %9, i64 0, i32 3
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef null) #11
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !59
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %18 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #11, !noalias !95
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull @RNA_ActionGroup, ptr noundef %18) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  br label %19

19:                                               ; preds = %3, %16
  %20 = load i32, ptr %13, align 8, !tbaa !59
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %65, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %24 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  br label %25

25:                                               ; preds = %22, %59
  %26 = phi i8 [ 0, %22 ], [ %54, %59 ]
  %27 = load ptr, ptr %24, align 8, !tbaa !47
  %28 = icmp eq ptr %27, null
  br i1 %28, label %53, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bActionGroup, ptr %27, i64 0, i32 5
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
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %40 = add i64 %31, 1
  %41 = and i64 %40, 4294967295
  %42 = call ptr %39(i64 noundef %41, ptr noundef nonnull @.str) #11
  %43 = load ptr, ptr %24, align 8, !tbaa !47
  %44 = getelementptr inbounds %struct.bActionGroup, ptr %43, i64 0, i32 5
  %45 = call ptr @BLI_strncpy_utf8(ptr noundef %42, ptr noundef nonnull %44, i64 noundef 64) #11
  %46 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %1) #12
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
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
  %55 = load i32, ptr %13, align 8, !tbaa !59
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %58 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #11, !noalias !98
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull @RNA_ActionGroup, ptr noundef %58) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br label %59

59:                                               ; preds = %53, %57
  %60 = load i32, ptr %13, align 8, !tbaa !59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %25, !llvm.loop !101

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
define dso_local i32 @ActionGroup_name_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 5
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #12
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionGroup_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.bActionGroup, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @Action_pose_markers_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !55
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Action_pose_markers, ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.bAction, ptr %5, i64 0, i32 4
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #11
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #11, !noalias !102
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_TimelineMarker, ptr noundef %13) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Action_pose_markers_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_TimelineMarker, ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Action_pose_markers_next(ptr noundef %0) #2 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #11, !noalias !105
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_TimelineMarker, ptr noundef %8) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Action_pose_markers_end(ptr noundef %0) #2 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Action_pose_markers_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !55
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_Action_pose_markers, ptr %10, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.bAction, ptr %8, i64 0, i32 4
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #11
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !59
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #11, !noalias !108
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_TimelineMarker, ptr noundef %17) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br label %18

18:                                               ; preds = %3, %15
  %19 = load i32, ptr %12, align 8, !tbaa !59
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !69
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
  %33 = load ptr, ptr %22, align 8, !tbaa !71
  br label %46

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ %1, %27 ]
  %36 = add nsw i32 %35, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #11
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !111

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
  %52 = load ptr, ptr %48, align 8, !tbaa !75
  store ptr %52, ptr %22, align 8, !tbaa !71
  %53 = icmp sgt i32 %47, 1
  br i1 %53, label %46, label %54, !llvm.loop !112

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
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #11, !noalias !113
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_TimelineMarker, ptr noundef %63) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !55
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
define dso_local i32 @Action_pose_markers_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #11
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !55
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 2
  store ptr @rna_Action_pose_markers, ptr %11, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.bAction, ptr %9, i64 0, i32 4
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef null) #11
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !59
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %18 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #11, !noalias !116
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull @RNA_TimelineMarker, ptr noundef %18) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  br label %19

19:                                               ; preds = %3, %16
  %20 = load i32, ptr %13, align 8, !tbaa !59
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %59, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %24 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  br label %25

25:                                               ; preds = %22, %53
  %26 = phi i8 [ 0, %22 ], [ %48, %53 ]
  %27 = load ptr, ptr %24, align 8, !tbaa !119
  %28 = icmp eq ptr %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  %30 = call i32 @TimelineMarker_name_length(ptr noundef nonnull %23) #11
  %31 = icmp slt i32 %30, 1024
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  call void @TimelineMarker_name_get(ptr noundef nonnull %23, ptr noundef nonnull %7) #11
  %33 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %44

35:                                               ; preds = %29
  %36 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %37 = add nuw nsw i32 %30, 1
  %38 = zext nneg i32 %37 to i64
  %39 = call ptr %36(i64 noundef %38, ptr noundef nonnull @.str) #11
  call void @TimelineMarker_name_get(ptr noundef nonnull %23, ptr noundef %39) #11
  %40 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) %1) #12
  %41 = icmp eq i32 %40, 0
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %42(ptr noundef %39) #11
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
  call void @rna_iterator_listbase_next(ptr noundef nonnull %6) #11
  %49 = load i32, ptr %13, align 8, !tbaa !59
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %52 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #11, !noalias !120
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull @RNA_TimelineMarker, ptr noundef %52) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br label %53

53:                                               ; preds = %47, %51
  %54 = load i32, ptr %13, align 8, !tbaa !59
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %25, !llvm.loop !123

56:                                               ; preds = %44, %53
  %57 = phi i8 [ %48, %53 ], [ %45, %44 ]
  %58 = zext nneg i8 %57 to i32
  br label %59

59:                                               ; preds = %56, %19
  %60 = phi i32 [ 0, %19 ], [ %58, %56 ]
  call void @rna_iterator_listbase_end(ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #11
  ret i32 %60
}

declare i32 @TimelineMarker_name_length(ptr noundef) local_unnamed_addr #5

declare void @TimelineMarker_name_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @Action_frame_range_get(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  tail call void @calc_action_range(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %4, i16 noundef signext 0) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Action_id_root_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bAction, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !40
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Action_id_root_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.bAction, ptr %4, i64 0, i32 7
  store i32 %1, ptr %5, align 8, !tbaa !40
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionFCurves_rna_properties_begin(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !55
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ActionFCurves_rna_properties, ptr %4, align 8, !tbaa !57
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #11
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @ActionFCurves_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionFCurves_rna_properties_next(ptr noundef %0) #2 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @ActionFCurves_rna_properties_end(ptr noundef %0) #2 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ActionFCurves_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @ActionFCurves_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @ActionGroups_rna_properties_begin(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !55
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ActionGroups_rna_properties, ptr %4, align 8, !tbaa !57
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #11
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ActionGroups_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionGroups_rna_properties_next(ptr noundef %0) #2 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionGroups_rna_properties_end(ptr noundef %0) #2 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ActionGroups_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionGroups_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionPoseMarkers_rna_properties_begin(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !55
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ActionPoseMarkers_rna_properties, ptr %4, align 8, !tbaa !57
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #11
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ActionPoseMarkers_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionPoseMarkers_rna_properties_next(ptr noundef %0) #2 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionPoseMarkers_rna_properties_end(ptr noundef %0) #2 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ActionPoseMarkers_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionPoseMarkers_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionPoseMarkers_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47, !noalias !124
  %5 = getelementptr inbounds %struct.bAction, ptr %4, i64 0, i32 4
  %6 = getelementptr inbounds %struct.bAction, ptr %4, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !127, !noalias !124
  %8 = add nsw i32 %7, -1
  %9 = tail call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %8) #11, !noalias !124
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_TimelineMarker, ptr noundef %9) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionPoseMarkers_active_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #2 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.bAction, ptr %6, i64 0, i32 4
  %8 = tail call i32 @BLI_findindex(ptr noundef nonnull %7, ptr noundef %4) #11
  %9 = add nsw i32 %8, 1
  %10 = getelementptr inbounds %struct.bAction, ptr %6, i64 0, i32 6
  store i32 %9, ptr %10, align 4, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionPoseMarkers_active_index_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bAction, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !127
  %6 = icmp sgt i32 %5, 1
  %7 = add nsw i32 %5, -1
  %8 = select i1 %6, i32 %7, i32 0
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionPoseMarkers_active_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = add nsw i32 %1, 1
  %6 = getelementptr inbounds %struct.bAction, ptr %4, i64 0, i32 6
  store i32 %5, ptr %6, align 4, !tbaa !127
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionGroup_rna_properties_begin(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !55
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ActionGroup_rna_properties, ptr %4, align 8, !tbaa !57
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #11
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ActionGroup_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionGroup_rna_properties_next(ptr noundef %0) #2 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionGroup_rna_properties_end(ptr noundef %0) #2 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ActionGroup_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionGroup_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @ActionGroup_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.bActionGroup, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionGroup_channels_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !55
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ActionGroup_channels, ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 2
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #11
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #11, !noalias !128
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_FCurve, ptr noundef %13) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ActionGroup_channels_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_FCurve, ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionGroup_channels_next(ptr noundef %0) #2 {
  %2 = alloca %struct.PointerRNA, align 8
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = load ptr, ptr %4, align 8, !tbaa !131
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !133
  %10 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !133
  %12 = icmp eq ptr %11, %9
  br i1 %12, label %14, label %13

13:                                               ; preds = %7, %1
  br label %14

14:                                               ; preds = %7, %13
  %15 = phi ptr [ null, %13 ], [ %5, %7 ]
  store ptr %15, ptr %3, align 8, !tbaa !71
  %16 = icmp ne ptr %15, null
  %17 = zext i1 %16 to i32
  %18 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  store i32 %17, ptr %18, align 8, !tbaa !59
  br i1 %16, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  %21 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #11, !noalias !134
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_FCurve, ptr noundef %21) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %22

22:                                               ; preds = %19, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionGroup_channels_end(ptr noundef %0) #2 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionGroup_select_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !137
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionGroup_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.bActionGroup, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !137
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !137
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionGroup_lock_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !137
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionGroup_lock_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bActionGroup, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !137
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !137
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionGroup_show_expanded_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !137
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionGroup_show_expanded_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bActionGroup, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !137
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !137
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionGroup_color_set_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !140
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionGroup_color_set_set(ptr noundef %0, i32 noundef %1) #2 {
  tail call void @rna_ActionGroup_colorset_set(ptr noundef %0, i32 noundef %1) #11
  ret void
}

declare void @rna_ActionGroup_colorset_set(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @ActionGroup_is_custom_color_set_get(ptr noundef %0) #2 {
  %2 = tail call i32 @rna_ActionGroup_is_custom_colorset_get(ptr noundef %0) #11
  ret i32 %2
}

declare i32 @rna_ActionGroup_is_custom_colorset_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @ActionGroup_colors_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.bActionGroup, ptr %4, i64 0, i32 6
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ThemeBoneColorSet, ptr noundef nonnull %5) #11
  ret void
}

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @DopeSheet_rna_properties_begin(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !55
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_DopeSheet_rna_properties, ptr %4, align 8, !tbaa !57
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #11
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DopeSheet_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DopeSheet_rna_properties_next(ptr noundef %0) #2 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DopeSheet_rna_properties_end(ptr noundef %0) #2 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DopeSheet_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @DopeSheet_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DopeSheet_source_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ID, ptr noundef %5) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_datablock_filters_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !142
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_datablock_filters_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !142
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_only_selected_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_only_selected_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_hidden_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 26
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_hidden_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -67108865
  %9 = select i1 %5, i32 0, i32 67108864
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_only_errors_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 28
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_only_errors_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -268435457
  %9 = select i1 %5, i32 0, i32 268435456
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_only_group_objects_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_only_group_objects_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DopeSheet_filter_group_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Group, ptr noundef %6) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DopeSheet_filter_group_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #11
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 2
  store ptr %6, ptr %10, align 8, !tbaa !144
  ret void
}

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_only_matching_fcurves_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 27
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_only_matching_fcurves_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -134217729
  %9 = select i1 %5, i32 0, i32 134217728
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DopeSheet_filter_fcurve_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_filter_fcurve_name_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 3
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #12
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @DopeSheet_filter_fcurve_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_missing_nla_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 25
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_missing_nla_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -33554433
  %9 = select i1 %5, i32 33554432, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_summary_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_summary_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_expanded_summary_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !142
  %6 = and i32 %5, 1
  %7 = xor i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_expanded_summary_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !142
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_transforms_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_transforms_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -257
  %9 = select i1 %5, i32 256, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_shapekeys_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_shapekeys_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -65
  %9 = select i1 %5, i32 64, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_modifiers_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 23
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_modifiers_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -8388609
  %9 = select i1 %5, i32 8388608, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_meshes_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_meshes_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 128, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_lattices_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_lattices_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -513
  %9 = select i1 %5, i32 512, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_cameras_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 10
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_cameras_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -1025
  %9 = select i1 %5, i32 1024, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_materials_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_materials_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 2048, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_lamps_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_lamps_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 4096, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_linestyles_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 22
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_linestyles_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -4194305
  %9 = select i1 %5, i32 4194304, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_textures_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 20
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_textures_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -1048577
  %9 = select i1 %5, i32 1048576, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_curves_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_curves_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -8193
  %9 = select i1 %5, i32 8192, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_worlds_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 14
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_worlds_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -16385
  %9 = select i1 %5, i32 16384, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_scenes_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_scenes_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -32769
  %9 = select i1 %5, i32 32768, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_particles_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_particles_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -65537
  %9 = select i1 %5, i32 65536, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_metaballs_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 17
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_metaballs_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -131073
  %9 = select i1 %5, i32 131072, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_armatures_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 18
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_armatures_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -262145
  %9 = select i1 %5, i32 262144, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_nodes_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 19
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_nodes_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -524289
  %9 = select i1 %5, i32 524288, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DopeSheet_show_speakers_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = lshr i32 %5, 21
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DopeSheet_show_speakers_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = and i32 %7, -2097153
  %9 = select i1 %5, i32 2097152, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ActionFCurves_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = icmp eq ptr %4, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = load i8, ptr %4, align 1, !tbaa !145
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr null, ptr %4
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi ptr [ %10, %7 ], [ null, %5 ]
  %13 = load i8, ptr %2, align 1, !tbaa !145
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.187) #11
  br label %23

16:                                               ; preds = %11
  %17 = tail call ptr @verify_fcurve(ptr noundef %0, ptr noundef %12, ptr noundef null, ptr noundef nonnull %2, i32 noundef %3, i16 noundef signext 0) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.188, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %20) #11
  br label %23

21:                                               ; preds = %16
  %22 = tail call ptr @verify_fcurve(ptr noundef %0, ptr noundef %12, ptr noundef null, ptr noundef nonnull %2, i32 noundef %3, i16 noundef signext 1) #11
  br label %23

23:                                               ; preds = %15, %19, %21
  %24 = phi ptr [ null, %15 ], [ null, %19 ], [ %22, %21 ]
  ret ptr %24
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionFCurves_new_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !146
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !148
  %11 = getelementptr inbounds i8, ptr %7, i64 12
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i8, ptr %12, align 1, !tbaa !145
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, ptr null, ptr %12
  br label %18

18:                                               ; preds = %14, %4
  %19 = phi ptr [ %17, %14 ], [ null, %4 ]
  %20 = load i8, ptr %8, align 1, !tbaa !145
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.187) #11
  br label %30

23:                                               ; preds = %18
  %24 = tail call ptr @verify_fcurve(ptr noundef %6, ptr noundef %19, ptr noundef null, ptr noundef nonnull %8, i32 noundef %10, i16 noundef signext 0) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.188, ptr noundef nonnull %8, i32 noundef %10, ptr noundef nonnull %27) #11
  br label %30

28:                                               ; preds = %23
  %29 = tail call ptr @verify_fcurve(ptr noundef %6, ptr noundef %19, ptr noundef null, ptr noundef nonnull %8, i32 noundef %10, i16 noundef signext 1) #11
  br label %30

30:                                               ; preds = %22, %26, %28
  %31 = phi ptr [ null, %22 ], [ null, %26 ], [ %29, %28 ]
  %32 = getelementptr inbounds i8, ptr %7, i64 20
  store ptr %31, ptr %32, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionFCurves_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  tail call fastcc void @rna_Action_fcurve_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rna_Action_fcurve_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  %11 = tail call i32 @BLI_findindex(ptr noundef nonnull %10, ptr noundef nonnull %7) #11
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load ptr, ptr %6, align 8, !tbaa !133
  %15 = getelementptr inbounds %struct.bActionGroup, ptr %14, i64 0, i32 5
  %16 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.189, ptr noundef nonnull %15, ptr noundef nonnull %16) #11
  br label %25

17:                                               ; preds = %9
  tail call void @action_groups_remove_channel(ptr noundef %0, ptr noundef %5) #11
  tail call void @free_fcurve(ptr noundef %5) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %25

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  %20 = tail call i32 @BLI_findindex(ptr noundef nonnull %19, ptr noundef %5) #11
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.190, ptr noundef nonnull %23) #11
  br label %25

24:                                               ; preds = %18
  tail call void @BLI_remlink(ptr noundef nonnull %19, ptr noundef %5) #11
  tail call void @free_fcurve(ptr noundef %5) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %25

25:                                               ; preds = %17, %24, %22, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionFCurves_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !146
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  tail call fastcc void @rna_Action_fcurve_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ActionGroups_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @action_groups_add_new(ptr noundef %0, ptr noundef %1) #11
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionGroups_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !146
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call ptr @action_groups_add_new(ptr noundef %6, ptr noundef %8) #11
  store ptr %10, ptr %9, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionGroups_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  %7 = tail call zeroext i8 @BLI_remlink_safe(ptr noundef nonnull %6, ptr noundef %5) #11
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 5
  %11 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.191, ptr noundef nonnull %10, ptr noundef nonnull %11) #11
  br label %28

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !149
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %23, %16
  %19 = phi ptr [ %14, %16 ], [ %24, %23 ]
  %20 = getelementptr inbounds %struct.FCurve, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !133
  %22 = icmp eq ptr %21, %5
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load ptr, ptr %19, align 8, !tbaa !131
  tail call void @action_groups_remove_channel(ptr noundef %0, ptr noundef nonnull %19) #11
  tail call void @BLI_addtail(ptr noundef nonnull %17, ptr noundef nonnull %19) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18, !llvm.loop !150

26:                                               ; preds = %23, %18, %12
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %27(ptr noundef %5) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %28

28:                                               ; preds = %9, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionGroups_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !146
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.bAction, ptr %6, i64 0, i32 3
  %12 = tail call zeroext i8 @BLI_remlink_safe(ptr noundef nonnull %11, ptr noundef %10) #11
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.bActionGroup, ptr %10, i64 0, i32 5
  %16 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.191, ptr noundef nonnull %15, ptr noundef nonnull %16) #11
  br label %33

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.bActionGroup, ptr %10, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !149
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bAction, ptr %6, i64 0, i32 1
  br label %23

23:                                               ; preds = %28, %21
  %24 = phi ptr [ %19, %21 ], [ %29, %28 ]
  %25 = getelementptr inbounds %struct.FCurve, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !133
  %27 = icmp eq ptr %26, %10
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load ptr, ptr %24, align 8, !tbaa !131
  tail call void @action_groups_remove_channel(ptr noundef %6, ptr noundef nonnull %24) #11
  tail call void @BLI_addtail(ptr noundef nonnull %22, ptr noundef nonnull %24) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %23, !llvm.loop !150

31:                                               ; preds = %28, %23, %17
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %32(ptr noundef %10) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %33

33:                                               ; preds = %14, %31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ActionPoseMarkers_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %4 = tail call ptr %3(i64 noundef 96, ptr noundef nonnull @.str.192) #11
  %5 = getelementptr inbounds %struct.TimeMarker, ptr %4, i64 0, i32 4
  store i32 1, ptr %5, align 4, !tbaa !151
  %6 = getelementptr inbounds %struct.TimeMarker, ptr %4, i64 0, i32 2
  store i32 1, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.TimeMarker, ptr %4, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #11
  %9 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 4
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %4) #11
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionPoseMarkers_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !146
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %11 = tail call ptr %10(i64 noundef 96, ptr noundef nonnull @.str.192) #11
  %12 = getelementptr inbounds %struct.TimeMarker, ptr %11, i64 0, i32 4
  store i32 1, ptr %12, align 4, !tbaa !151
  %13 = getelementptr inbounds %struct.TimeMarker, ptr %11, i64 0, i32 2
  store i32 1, ptr %13, align 8, !tbaa !153
  %14 = getelementptr inbounds %struct.TimeMarker, ptr %11, i64 0, i32 3
  %15 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %14, ptr noundef %8, i64 noundef 64) #11
  %16 = getelementptr inbounds %struct.bAction, ptr %6, i64 0, i32 4
  tail call void @BLI_addtail(ptr noundef nonnull %16, ptr noundef %11) #11
  store ptr %11, ptr %9, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionPoseMarkers_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 4
  %7 = tail call zeroext i8 @BLI_remlink_safe(ptr noundef nonnull %6, ptr noundef %5) #11
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.TimeMarker, ptr %5, i64 0, i32 3
  %11 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.193, ptr noundef nonnull %10, ptr noundef nonnull %11) #11
  br label %14

12:                                               ; preds = %3
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %13(ptr noundef %5) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %14

14:                                               ; preds = %9, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ActionPoseMarkers_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !146
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.bAction, ptr %6, i64 0, i32 4
  %12 = tail call zeroext i8 @BLI_remlink_safe(ptr noundef nonnull %11, ptr noundef %10) #11
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.TimeMarker, ptr %10, i64 0, i32 3
  %16 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.193, ptr noundef nonnull %15, ptr noundef nonnull %16) #11
  br label %19

17:                                               ; preds = %4
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %18(ptr noundef %10) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %19

19:                                               ; preds = %14, %17
  ret void
}

declare ptr @rna_ID_refine(ptr noundef) #5

declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #5

; Function Attrs: nounwind uwtable
define internal void @rna_Action_active_pose_marker_index_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  store i32 0, ptr %1, align 4, !tbaa !148
  %8 = getelementptr inbounds %struct.bAction, ptr %7, i64 0, i32 4
  %9 = tail call i32 @BLI_countlist(ptr noundef nonnull %8) #11
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 1)
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr %2, align 4, !tbaa !148
  ret void
}

declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #5

declare void @calc_action_range(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #5

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @verify_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #5

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @action_groups_remove_channel(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @free_fcurve(ptr noundef) local_unnamed_addr #5

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @action_groups_add_new(ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i8 @BLI_remlink_safe(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !37, i64 0}
!35 = !{!"PointerRNA", !36, i64 0, !37, i64 8, !37, i64 16}
!36 = !{!"", !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !44, i64 192}
!41 = !{!"bAction", !42, i64 0, !45, i64 120, !45, i64 136, !45, i64 152, !45, i64 168, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196}
!42 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !43, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !37, i64 112}
!43 = !{!"short", !38, i64 0}
!44 = !{!"int", !38, i64 0}
!45 = !{!"ListBase", !37, i64 0, !37, i64 8}
!46 = !{!43, !43, i64 0}
!47 = !{!35, !37, i64 16}
!48 = !{!49, !38, i64 336}
!49 = !{!"SpaceAction", !37, i64 0, !37, i64 8, !45, i64 16, !44, i64 32, !50, i64 36, !38, i64 40, !51, i64 56, !37, i64 216, !54, i64 224, !38, i64 336, !38, i64 337, !43, i64 338, !50, i64 340}
!50 = !{!"float", !38, i64 0}
!51 = !{!"View2D", !52, i64 0, !52, i64 16, !53, i64 32, !53, i64 48, !53, i64 64, !38, i64 80, !38, i64 88, !50, i64 96, !50, i64 100, !43, i64 104, !43, i64 106, !43, i64 108, !43, i64 110, !43, i64 112, !43, i64 114, !43, i64 116, !43, i64 118, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !37, i64 128, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!52 = !{!"rctf", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!53 = !{!"rcti", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!54 = !{!"bDopeSheet", !37, i64 0, !45, i64 8, !37, i64 24, !38, i64 32, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108}
!55 = !{i64 0, i64 8, !56, i64 8, i64 8, !56, i64 16, i64 8, !56}
!56 = !{!37, !37, i64 0}
!57 = !{!58, !37, i64 48}
!58 = !{!"CollectionPropertyIterator", !35, i64 0, !35, i64 24, !37, i64 48, !38, i64 56, !44, i64 96, !44, i64 100, !35, i64 104, !44, i64 128}
!59 = !{!58, !44, i64 128}
!60 = !{!61}
!61 = distinct !{!61, !62, !"Action_fcurves_get: argument 0"}
!62 = distinct !{!62, !"Action_fcurves_get"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"Action_fcurves_get: argument 0"}
!65 = distinct !{!65, !"Action_fcurves_get"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"Action_fcurves_get: argument 0"}
!68 = distinct !{!68, !"Action_fcurves_get"}
!69 = !{!70, !37, i64 16}
!70 = !{!"ListBaseIterator", !37, i64 0, !44, i64 8, !37, i64 16}
!71 = !{!70, !37, i64 0}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = !{!76, !37, i64 0}
!76 = !{!"Link", !37, i64 0, !37, i64 8}
!77 = distinct !{!77, !73, !74}
!78 = !{!79}
!79 = distinct !{!79, !80, !"Action_fcurves_get: argument 0"}
!80 = distinct !{!80, !"Action_fcurves_get"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"Action_groups_get: argument 0"}
!83 = distinct !{!83, !"Action_groups_get"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"Action_groups_get: argument 0"}
!86 = distinct !{!86, !"Action_groups_get"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"Action_groups_get: argument 0"}
!89 = distinct !{!89, !"Action_groups_get"}
!90 = distinct !{!90, !73, !74}
!91 = distinct !{!91, !73, !74}
!92 = !{!93}
!93 = distinct !{!93, !94, !"Action_groups_get: argument 0"}
!94 = distinct !{!94, !"Action_groups_get"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"Action_groups_get: argument 0"}
!97 = distinct !{!97, !"Action_groups_get"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"Action_groups_get: argument 0"}
!100 = distinct !{!100, !"Action_groups_get"}
!101 = distinct !{!101, !73, !74}
!102 = !{!103}
!103 = distinct !{!103, !104, !"Action_pose_markers_get: argument 0"}
!104 = distinct !{!104, !"Action_pose_markers_get"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"Action_pose_markers_get: argument 0"}
!107 = distinct !{!107, !"Action_pose_markers_get"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"Action_pose_markers_get: argument 0"}
!110 = distinct !{!110, !"Action_pose_markers_get"}
!111 = distinct !{!111, !73, !74}
!112 = distinct !{!112, !73, !74}
!113 = !{!114}
!114 = distinct !{!114, !115, !"Action_pose_markers_get: argument 0"}
!115 = distinct !{!115, !"Action_pose_markers_get"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"Action_pose_markers_get: argument 0"}
!118 = distinct !{!118, !"Action_pose_markers_get"}
!119 = !{!58, !37, i64 120}
!120 = !{!121}
!121 = distinct !{!121, !122, !"Action_pose_markers_get: argument 0"}
!122 = distinct !{!122, !"Action_pose_markers_get"}
!123 = distinct !{!123, !73, !74}
!124 = !{!125}
!125 = distinct !{!125, !126, !"rna_Action_active_pose_marker_get: argument 0"}
!126 = distinct !{!126, !"rna_Action_active_pose_marker_get"}
!127 = !{!41, !44, i64 188}
!128 = !{!129}
!129 = distinct !{!129, !130, !"ActionGroup_channels_get: argument 0"}
!130 = distinct !{!130, !"ActionGroup_channels_get"}
!131 = !{!132, !37, i64 0}
!132 = !{!"FCurve", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !45, i64 32, !37, i64 48, !37, i64 56, !44, i64 64, !50, i64 68, !43, i64 72, !43, i64 74, !44, i64 76, !37, i64 80, !44, i64 88, !38, i64 92, !50, i64 104, !50, i64 108}
!133 = !{!132, !37, i64 16}
!134 = !{!135}
!135 = distinct !{!135, !136, !"ActionGroup_channels_get: argument 0"}
!136 = distinct !{!136, !"ActionGroup_channels_get"}
!137 = !{!138, !44, i64 32}
!138 = !{!"bActionGroup", !37, i64 0, !37, i64 8, !45, i64 16, !44, i64 32, !44, i64 36, !38, i64 40, !139, i64 104}
!139 = !{!"ThemeWireColor", !38, i64 0, !38, i64 4, !38, i64 8, !43, i64 12, !43, i64 14}
!140 = !{!138, !44, i64 36}
!141 = !{!54, !37, i64 0}
!142 = !{!54, !44, i64 100}
!143 = !{!54, !44, i64 96}
!144 = !{!54, !37, i64 24}
!145 = !{!38, !38, i64 0}
!146 = !{!147, !37, i64 0}
!147 = !{!"ParameterList", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 20, !44, i64 24}
!148 = !{!44, !44, i64 0}
!149 = !{!138, !37, i64 16}
!150 = distinct !{!150, !73, !74}
!151 = !{!152, !44, i64 84}
!152 = !{!"TimeMarker", !37, i64 0, !37, i64 8, !44, i64 16, !38, i64 20, !44, i64 84, !37, i64 88}
!153 = !{!152, !44, i64 16}
