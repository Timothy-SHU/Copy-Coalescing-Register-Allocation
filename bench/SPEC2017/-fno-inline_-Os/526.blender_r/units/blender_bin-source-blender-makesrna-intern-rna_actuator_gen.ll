; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_actuator_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_actuator_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.bActuator = type { ptr, ptr, ptr, i16, i16, i16, i16, [64 x i8], ptr, ptr }
%struct.bActionActuator = type { ptr, i16, i16, float, float, [64 x i8], [64 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.bObjectActuator = type { i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], ptr }
%struct.bCameraActuator = type { ptr, float, float, float, float, i16, i16, float }
%struct.bSoundActuator = type { i16, i16, i32, i32, [2 x i16], float, float, ptr, %struct.Sound3D, i16, i16, i16, [1 x i16] }
%struct.Sound3D = type { float, float, float, float, float, float, float, float }
%struct.bPropertyActuator = type { i32, i32, [64 x i8], [64 x i8], ptr }
%struct.bConstraintActuator = type { i16, i16, i16, i16, i16, i16, i32, [3 x float], [3 x float], [3 x float], [3 x float], [64 x i8] }
%struct.bEditObjectActuator = type { i32, i16, i16, ptr, ptr, [64 x i8], [3 x float], [3 x float], float, i16, i16, i16, i16, i32 }
%struct.bSceneActuator = type { i16, i16, i32, ptr, ptr }
%struct.bRandomActuator = type { i32, i32, i32, i32, float, float, [64 x i8] }
%struct.bMessageActuator = type { [64 x i8], ptr, [64 x i8], i16, i16, i32, [64 x i8] }
%struct.bGameActuator = type { i16, i16, i32, i32, [64 x i8], [64 x i8] }
%struct.bTwoDFilterActuator = type { [4 x i8], i16, i16, i32, float, ptr }
%struct.bParentActuator = type { [2 x i8], i16, i32, ptr }
%struct.bStateActuator = type { i32, i32 }
%struct.bArmatureActuator = type { [64 x i8], [64 x i8], i32, float, float, float, ptr, ptr }
%struct.bSteeringActuator = type { [5 x i8], i8, i16, i32, float, float, float, float, i32, ptr, ptr }
%struct.bMouseActuator = type { i16, i16, [2 x i32], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.bController = type { ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i32 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }

@RNA_Actuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ActionActuator, ptr @RNA_MotionPathVert, ptr null, %struct.ListBase { ptr @rna_Actuator_rna_properties, ptr @rna_Actuator_active } }, ptr @.str.28, ptr null, ptr null, i32 4, ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr null, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_Actuator_link_func, ptr @rna_Actuator_unlink_func } }, align 8
@actuator_type_items = internal global [19 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 15, ptr @.str.525, i32 0, ptr @.str.34, ptr @.str.9 }, %struct.EnumPropertyItem { i32 23, ptr @.str.526, i32 0, ptr @.str.527, ptr @.str.9 }, %struct.EnumPropertyItem { i32 3, ptr @.str.528, i32 0, ptr @.str.529, ptr @.str.9 }, %struct.EnumPropertyItem { i32 9, ptr @.str.530, i32 0, ptr @.str.432, ptr @.str.9 }, %struct.EnumPropertyItem { i32 10, ptr @.str.531, i32 0, ptr @.str.284, ptr @.str.9 }, %struct.EnumPropertyItem { i32 19, ptr @.str.532, i32 0, ptr @.str.533, ptr @.str.9 }, %struct.EnumPropertyItem { i32 17, ptr @.str.534, i32 0, ptr @.str.378, ptr @.str.9 }, %struct.EnumPropertyItem { i32 14, ptr @.str.535, i32 0, ptr @.str.536, ptr @.str.9 }, %struct.EnumPropertyItem { i32 25, ptr @.str.537, i32 0, ptr @.str.538, ptr @.str.9 }, %struct.EnumPropertyItem { i32 0, ptr @.str.539, i32 0, ptr @.str.540, ptr @.str.9 }, %struct.EnumPropertyItem { i32 20, ptr @.str.541, i32 0, ptr @.str.542, ptr @.str.9 }, %struct.EnumPropertyItem { i32 6, ptr @.str.543, i32 0, ptr @.str.39, ptr @.str.9 }, %struct.EnumPropertyItem { i32 13, ptr @.str.544, i32 0, ptr @.str.545, ptr @.str.9 }, %struct.EnumPropertyItem { i32 11, ptr @.str.546, i32 0, ptr @.str.323, ptr @.str.9 }, %struct.EnumPropertyItem { i32 5, ptr @.str.547, i32 0, ptr @.str.174, ptr @.str.9 }, %struct.EnumPropertyItem { i32 22, ptr @.str.548, i32 0, ptr @.str.423, ptr @.str.9 }, %struct.EnumPropertyItem { i32 18, ptr @.str.549, i32 0, ptr @.str.550, ptr @.str.9 }, %struct.EnumPropertyItem { i32 24, ptr @.str.551, i32 0, ptr @.str.552, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Actuator_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Actuator_rna_type, ptr null, i32 -1, ptr @.str, i32 128, ptr @.str.1, ptr @.str.2, i32 0, ptr @.str.3, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Actuator_rna_properties_begin, ptr @Actuator_rna_properties_next, ptr @Actuator_rna_properties_end, ptr @Actuator_rna_properties_get, ptr null, ptr null, ptr @Actuator_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Action = external global %struct.StructRNA, align 8
@RNA_Object = external global %struct.StructRNA, align 8
@RNA_Sound = external global %struct.StructRNA, align 8
@RNA_Mesh = external global %struct.StructRNA, align 8
@RNA_Scene = external global %struct.StructRNA, align 8
@RNA_Text = external global %struct.StructRNA, align 8
@rna_Actuator_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, i32 -1, ptr @.str.4, i32 8912896, ptr @.str.5, ptr @.str.6, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Actuator_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_Actuator_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Actuator_type, ptr @rna_Actuator_rna_type, i32 -1, ptr @.str.7, i32 262145, ptr @.str.8, ptr @.str.9, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Actuator_name_get, ptr @Actuator_name_length, ptr @Actuator_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.9 }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_Actuator_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Actuator_pin, ptr @rna_Actuator_name, i32 -1, ptr @.str.10, i32 1, ptr @.str.11, ptr @.str.9, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Actuator_type_get, ptr @Actuator_type_set, ptr @rna_Actuator_type_itemf, ptr null, ptr null, ptr null, ptr @rna_Actuator_type_items, i32 18, i32 0 }, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rna_Actuator_pin = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Actuator_show_expanded, ptr @rna_Actuator_type, i32 -1, ptr @.str.12, i32 4099, ptr @.str.13, ptr @.str.14, i32 42, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Actuator_pin_get, ptr @Actuator_pin_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@rna_Actuator_type_items = internal global [19 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 15, ptr @.str.525, i32 0, ptr @.str.34, ptr @.str.9 }, %struct.EnumPropertyItem { i32 23, ptr @.str.526, i32 0, ptr @.str.527, ptr @.str.9 }, %struct.EnumPropertyItem { i32 3, ptr @.str.528, i32 0, ptr @.str.529, ptr @.str.9 }, %struct.EnumPropertyItem { i32 9, ptr @.str.530, i32 0, ptr @.str.432, ptr @.str.9 }, %struct.EnumPropertyItem { i32 10, ptr @.str.531, i32 0, ptr @.str.284, ptr @.str.9 }, %struct.EnumPropertyItem { i32 19, ptr @.str.532, i32 0, ptr @.str.533, ptr @.str.9 }, %struct.EnumPropertyItem { i32 17, ptr @.str.534, i32 0, ptr @.str.378, ptr @.str.9 }, %struct.EnumPropertyItem { i32 14, ptr @.str.535, i32 0, ptr @.str.536, ptr @.str.9 }, %struct.EnumPropertyItem { i32 25, ptr @.str.537, i32 0, ptr @.str.538, ptr @.str.9 }, %struct.EnumPropertyItem { i32 0, ptr @.str.539, i32 0, ptr @.str.540, ptr @.str.9 }, %struct.EnumPropertyItem { i32 20, ptr @.str.541, i32 0, ptr @.str.542, ptr @.str.9 }, %struct.EnumPropertyItem { i32 6, ptr @.str.543, i32 0, ptr @.str.39, ptr @.str.9 }, %struct.EnumPropertyItem { i32 13, ptr @.str.544, i32 0, ptr @.str.545, ptr @.str.9 }, %struct.EnumPropertyItem { i32 11, ptr @.str.546, i32 0, ptr @.str.323, ptr @.str.9 }, %struct.EnumPropertyItem { i32 5, ptr @.str.547, i32 0, ptr @.str.174, ptr @.str.9 }, %struct.EnumPropertyItem { i32 22, ptr @.str.548, i32 0, ptr @.str.423, ptr @.str.9 }, %struct.EnumPropertyItem { i32 18, ptr @.str.549, i32 0, ptr @.str.550, ptr @.str.9 }, %struct.EnumPropertyItem { i32 24, ptr @.str.551, i32 0, ptr @.str.552, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Actuator_show_expanded = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Actuator_active, ptr @rna_Actuator_pin, i32 -1, ptr @.str.15, i32 4099, ptr @.str.16, ptr @.str.17, i32 4, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Actuator_show_expanded_get, ptr @Actuator_show_expanded_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Pinned\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"Display when not linked to a visible states controller\00", align 1
@rna_Actuator_active = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Actuator_show_expanded, i32 -1, ptr @.str.18, i32 3, ptr @.str.19, ptr @.str.20, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Actuator_active_get, ptr @Actuator_active_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.15 = private unnamed_addr constant [14 x i8] c"show_expanded\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Expanded\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"Set actuator expanded in the user interface\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Set the active state of the actuator\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Controller to link to\00", align 1
@RNA_Controller = external global %struct.StructRNA, align 8
@rna_Actuator_link_controller = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.21, i32 8388612, ptr @.str.9, ptr @.str.22, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Controller }, align 8
@rna_Actuator_unlink_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_Actuator_link_func, ptr null, %struct.ListBase { ptr @rna_Actuator_unlink_controller, ptr @rna_Actuator_unlink_controller } }, ptr @.str.26, i32 0, ptr @.str.27, ptr @Actuator_unlink_call, ptr null }, align 8
@.str.23 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"Link the actuator to a controller\00", align 1
@rna_Actuator_link_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Actuator_unlink_func, ptr null, ptr null, %struct.ListBase { ptr @rna_Actuator_link_controller, ptr @rna_Actuator_link_controller } }, ptr @.str.23, i32 0, ptr @.str.24, ptr @Actuator_link_call, ptr null }, align 8
@.str.25 = private unnamed_addr constant [26 x i8] c"Controller to unlink from\00", align 1
@rna_Actuator_unlink_controller = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.21, i32 8388612, ptr @.str.9, ptr @.str.25, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Controller }, align 8
@.str.26 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"Unlink the actuator from a controller\00", align 1
@RNA_ActionActuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ObjectActuator, ptr @RNA_Actuator, ptr null, %struct.ListBase { ptr @rna_ActionActuator_play_mode, ptr @rna_ActionActuator_blend_mode } }, ptr @.str.75, ptr null, ptr null, i32 4, ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr @RNA_Actuator, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_MotionPathVert = external global %struct.StructRNA, align 8
@.str.28 = private unnamed_addr constant [9 x i8] c"Actuator\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"Actuator to apply actions in the game engine\00", align 1
@rna_ActionActuator_action = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionActuator_use_continue_last_frame, ptr @rna_ActionActuator_play_mode, i32 -1, ptr @.str.33, i32 8388673, ptr @.str.34, ptr @.str.9, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionActuator_action_get, ptr @ActionActuator_action_set, ptr null, ptr null, ptr @RNA_Action }, align 8
@.str.30 = private unnamed_addr constant [10 x i8] c"play_mode\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"Action Type\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Action playback type\00", align 1
@rna_ActionActuator_play_mode_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.553, i32 0, ptr @.str.554, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.555, i32 0, ptr @.str.556, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.557, i32 0, ptr @.str.558, ptr @.str.9 }, %struct.EnumPropertyItem { i32 3, ptr @.str.559, i32 0, ptr @.str.560, ptr @.str.9 }, %struct.EnumPropertyItem { i32 4, ptr @.str.561, i32 0, ptr @.str.562, ptr @.str.9 }, %struct.EnumPropertyItem { i32 6, ptr @.str.543, i32 0, ptr @.str.39, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ActionActuator_play_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionActuator_action, ptr null, i32 -1, ptr @.str.30, i32 3, ptr @.str.31, ptr @.str.32, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionActuator_play_mode_get, ptr @ActionActuator_play_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ActionActuator_play_mode_items, i32 6, i32 0 }, align 8
@rna_ActionActuator_use_continue_last_frame = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionActuator_property, ptr @rna_ActionActuator_action, i32 -1, ptr @.str.35, i32 3, ptr @.str.36, ptr @.str.37, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionActuator_use_continue_last_frame_get, ptr @ActionActuator_use_continue_last_frame_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.33 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@rna_ActionActuator_property = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionActuator_frame_start, ptr @rna_ActionActuator_use_continue_last_frame, i32 -1, ptr @.str.38, i32 262145, ptr @.str.39, ptr @.str.40, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionActuator_property_get, ptr @ActionActuator_property_length, ptr @ActionActuator_property_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.9 }, align 8
@.str.35 = private unnamed_addr constant [24 x i8] c"use_continue_last_frame\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"Continue\00", align 1
@.str.37 = private unnamed_addr constant [82 x i8] c"Restore last frame when switching on/off, otherwise play from the start each time\00", align 1
@rna_ActionActuator_frame_start = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionActuator_frame_end, ptr @rna_ActionActuator_property, i32 -1, ptr @.str.41, i32 8195, ptr @.str.42, ptr @.str.9, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @ActionActuator_frame_start_get, ptr @ActionActuator_frame_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 3.000000e+05, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+02, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.38 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"Property\00", align 1
@.str.40 = private unnamed_addr constant [48 x i8] c"Use this property to define the Action position\00", align 1
@rna_ActionActuator_frame_end = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionActuator_frame_blend_in, ptr @rna_ActionActuator_frame_start, i32 -1, ptr @.str.43, i32 8195, ptr @.str.44, ptr @.str.9, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @ActionActuator_frame_end_get, ptr @ActionActuator_frame_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 3.000000e+05, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+02, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.41 = private unnamed_addr constant [12 x i8] c"frame_start\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"Start Frame\00", align 1
@rna_ActionActuator_frame_blend_in = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionActuator_priority, ptr @rna_ActionActuator_frame_end, i32 -1, ptr @.str.45, i32 8195, ptr @.str.46, ptr @.str.47, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 148, i32 1, ptr null, ptr null }, ptr @ActionActuator_frame_blend_in_get, ptr @ActionActuator_frame_blend_in_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 32767, i32 0, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.43 = private unnamed_addr constant [10 x i8] c"frame_end\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"End Frame\00", align 1
@rna_ActionActuator_priority = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionActuator_layer, ptr @rna_ActionActuator_frame_blend_in, i32 -1, ptr @.str.48, i32 8195, ptr @.str.49, ptr @.str.50, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 150, i32 1, ptr null, ptr null }, ptr @ActionActuator_priority_get, ptr @ActionActuator_priority_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 100, i32 0, i32 100, i32 1, i32 0, ptr null }, align 8
@.str.45 = private unnamed_addr constant [15 x i8] c"frame_blend_in\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"Blendin\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"Number of frames of motion blending\00", align 1
@rna_ActionActuator_layer = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionActuator_layer_weight, ptr @rna_ActionActuator_priority, i32 -1, ptr @.str.51, i32 8195, ptr @.str.52, ptr @.str.53, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 152, i32 1, ptr null, ptr null }, ptr @ActionActuator_layer_get, ptr @ActionActuator_layer_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 32766, i32 0, i32 32766, i32 1, i32 0, ptr null }, align 8
@.str.48 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"Priority\00", align 1
@.str.50 = private unnamed_addr constant [162 x i8] c"Execution priority - lower numbers will override actions with higher numbers (with 2 or more actions at once, the overriding channels must be lower in the stack)\00", align 1
@rna_ActionActuator_layer_weight = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionActuator_frame_property, ptr @rna_ActionActuator_layer, i32 -1, ptr @.str.54, i32 8195, ptr @.str.55, ptr @.str.56, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 164, i32 4, ptr null, ptr null }, ptr @ActionActuator_layer_weight_get, ptr @ActionActuator_layer_weight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.51 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"Layer\00", align 1
@.str.53 = private unnamed_addr constant [42 x i8] c"The animation layer to play the action on\00", align 1
@rna_ActionActuator_frame_property = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionActuator_use_additive, ptr @rna_ActionActuator_layer_weight, i32 -1, ptr @.str.57, i32 262145, ptr @.str.58, ptr @.str.59, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionActuator_frame_property_get, ptr @ActionActuator_frame_property_length, ptr @ActionActuator_frame_property_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.9 }, align 8
@.str.54 = private unnamed_addr constant [13 x i8] c"layer_weight\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"Layer Weight\00", align 1
@.str.56 = private unnamed_addr constant [54 x i8] c"How much of the previous layer to blend into this one\00", align 1
@rna_ActionActuator_use_additive = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionActuator_use_force, ptr @rna_ActionActuator_frame_property, i32 -1, ptr @.str.60, i32 3, ptr @.str.61, ptr @.str.62, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionActuator_use_additive_get, ptr @ActionActuator_use_additive_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.57 = private unnamed_addr constant [15 x i8] c"frame_property\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"Frame Property\00", align 1
@.str.59 = private unnamed_addr constant [58 x i8] c"Assign the action's current frame number to this property\00", align 1
@rna_ActionActuator_use_force = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionActuator_use_local, ptr @rna_ActionActuator_use_additive, i32 -1, ptr @.str.63, i32 3, ptr @.str.64, ptr @.str.65, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionActuator_use_force_get, ptr @ActionActuator_use_force_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.60 = private unnamed_addr constant [13 x i8] c"use_additive\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.62 = private unnamed_addr constant [99 x i8] c"Action is added to the current loc/rot/scale in global or local coordinate according to Local flag\00", align 1
@rna_ActionActuator_use_local = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionActuator_apply_to_children, ptr @rna_ActionActuator_use_force, i32 -1, ptr @.str.66, i32 3, ptr @.str.67, ptr @.str.68, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionActuator_use_local_get, ptr @ActionActuator_use_local_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.63 = private unnamed_addr constant [10 x i8] c"use_force\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"Force\00", align 1
@.str.65 = private unnamed_addr constant [93 x i8] c"Apply Action as a global or local force depending on the local option (dynamic objects only)\00", align 1
@rna_ActionActuator_apply_to_children = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionActuator_blend_mode, ptr @rna_ActionActuator_use_local, i32 -1, ptr @.str.69, i32 3, ptr @.str.70, ptr @.str.71, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionActuator_apply_to_children_get, ptr @ActionActuator_apply_to_children_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.66 = private unnamed_addr constant [10 x i8] c"use_local\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.68 = private unnamed_addr constant [68 x i8] c"Let the Action act in local coordinates, used in Force and Add mode\00", align 1
@rna_ActionActuator_blend_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ActionActuator_apply_to_children, i32 -1, ptr @.str.72, i32 3, ptr @.str.73, ptr @.str.74, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionActuator_blend_mode_get, ptr @ActionActuator_blend_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ActionActuator_blend_mode_items, i32 2, i32 0 }, align 8
@.str.69 = private unnamed_addr constant [18 x i8] c"apply_to_children\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"Child\00", align 1
@.str.71 = private unnamed_addr constant [46 x i8] c"Update Action on all children Objects as well\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"blend_mode\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"Blend Mode\00", align 1
@.str.74 = private unnamed_addr constant [47 x i8] c"How this layer is blended with previous layers\00", align 1
@rna_ActionActuator_blend_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.563, i32 0, ptr @.str.564, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.565, i32 0, ptr @.str.61, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_ObjectActuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_CameraActuator, ptr @RNA_ActionActuator, ptr null, %struct.ListBase { ptr @rna_ObjectActuator_mode, ptr @rna_ObjectActuator_use_character_jump } }, ptr @.str.153, ptr null, ptr null, i32 4, ptr @.str.154, ptr @.str.77, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr @RNA_Actuator, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.75 = private unnamed_addr constant [15 x i8] c"ActionActuator\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"Action Actuator\00", align 1
@.str.77 = private unnamed_addr constant [40 x i8] c"Actuator to control the object movement\00", align 1
@rna_ObjectActuator_reference_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_damping, ptr @rna_ObjectActuator_mode, i32 -1, ptr @.str.81, i32 8388609, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectActuator_reference_object_get, ptr @ObjectActuator_reference_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.78 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"Motion Type\00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"Specify the motion system\00", align 1
@rna_ObjectActuator_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.566, i32 0, ptr @.str.567, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.568, i32 0, ptr @.str.569, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.570, i32 0, ptr @.str.571, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ObjectActuator_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_reference_object, ptr null, i32 -1, ptr @.str.78, i32 3, ptr @.str.79, ptr @.str.80, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectActuator_mode_get, ptr @ObjectActuator_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ObjectActuator_mode_items, i32 3, i32 0 }, align 8
@rna_ObjectActuator_damping = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_proportional_coefficient, ptr @rna_ObjectActuator_reference_object, i32 -1, ptr @.str.84, i32 8195, ptr @.str.85, ptr @.str.86, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 6, i32 1, ptr null, ptr null }, ptr @ObjectActuator_damping_get, ptr @ObjectActuator_damping_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1000, i32 -32768, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.81 = private unnamed_addr constant [17 x i8] c"reference_object\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"Reference Object\00", align 1
@.str.83 = private unnamed_addr constant [75 x i8] c"Reference object for velocity calculation, leave empty for world reference\00", align 1
@rna_ObjectActuator_proportional_coefficient = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_integral_coefficient, ptr @rna_ObjectActuator_damping, i32 -1, ptr @.str.87, i32 8195, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @ObjectActuator_proportional_coefficient_get, ptr @ObjectActuator_proportional_coefficient_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.84 = private unnamed_addr constant [8 x i8] c"damping\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"Damping Frames\00", align 1
@.str.86 = private unnamed_addr constant [46 x i8] c"Number of frames to reach the target velocity\00", align 1
@rna_ObjectActuator_integral_coefficient = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_derivate_coefficient, ptr @rna_ObjectActuator_proportional_coefficient, i32 -1, ptr @.str.90, i32 3, ptr @.str.91, ptr @.str.92, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectActuator_integral_coefficient_get, ptr @ObjectActuator_integral_coefficient_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 3.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.87 = private unnamed_addr constant [25 x i8] c"proportional_coefficient\00", align 1
@.str.88 = private unnamed_addr constant [25 x i8] c"Proportional Coefficient\00", align 1
@.str.89 = private unnamed_addr constant [42 x i8] c"Typical value is 60x integral coefficient\00", align 1
@rna_ObjectActuator_derivate_coefficient = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_force_max_x, ptr @rna_ObjectActuator_integral_coefficient, i32 -1, ptr @.str.93, i32 8195, ptr @.str.94, ptr @.str.95, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 28, i32 4, ptr null, ptr null }, ptr @ObjectActuator_derivate_coefficient_get, ptr @ObjectActuator_derivate_coefficient_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.90 = private unnamed_addr constant [21 x i8] c"integral_coefficient\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"Integral Coefficient\00", align 1
@.str.92 = private unnamed_addr constant [71 x i8] c"Low value (0.01) for slow response, high value (0.5) for fast response\00", align 1
@rna_ObjectActuator_force_max_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_force_min_x, ptr @rna_ObjectActuator_derivate_coefficient, i32 -1, ptr @.str.96, i32 8195, ptr @.str.97, ptr @.str.98, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 56, i32 4, ptr null, ptr null }, ptr @ObjectActuator_force_max_x_get, ptr @ObjectActuator_force_max_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.93 = private unnamed_addr constant [21 x i8] c"derivate_coefficient\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"Derivate Coefficient\00", align 1
@.str.95 = private unnamed_addr constant [48 x i8] c"Not required, high values can cause instability\00", align 1
@rna_ObjectActuator_force_min_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_force_max_y, ptr @rna_ObjectActuator_force_max_x, i32 -1, ptr @.str.99, i32 8195, ptr @.str.100, ptr @.str.101, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 68, i32 4, ptr null, ptr null }, ptr @ObjectActuator_force_min_x_get, ptr @ObjectActuator_force_min_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.96 = private unnamed_addr constant [12 x i8] c"force_max_x\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"Max\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"Upper limit for X force\00", align 1
@rna_ObjectActuator_force_max_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_force_min_y, ptr @rna_ObjectActuator_force_min_x, i32 -1, ptr @.str.102, i32 8195, ptr @.str.97, ptr @.str.103, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 60, i32 4, ptr null, ptr null }, ptr @ObjectActuator_force_max_y_get, ptr @ObjectActuator_force_max_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.99 = private unnamed_addr constant [12 x i8] c"force_min_x\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"Min\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"Lower limit for X force\00", align 1
@rna_ObjectActuator_force_min_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_force_max_z, ptr @rna_ObjectActuator_force_max_y, i32 -1, ptr @.str.104, i32 8195, ptr @.str.100, ptr @.str.105, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 72, i32 4, ptr null, ptr null }, ptr @ObjectActuator_force_min_y_get, ptr @ObjectActuator_force_min_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.102 = private unnamed_addr constant [12 x i8] c"force_max_y\00", align 1
@.str.103 = private unnamed_addr constant [24 x i8] c"Upper limit for Y force\00", align 1
@rna_ObjectActuator_force_max_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_force_min_z, ptr @rna_ObjectActuator_force_min_y, i32 -1, ptr @.str.106, i32 8195, ptr @.str.97, ptr @.str.107, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 64, i32 4, ptr null, ptr null }, ptr @ObjectActuator_force_max_z_get, ptr @ObjectActuator_force_max_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.104 = private unnamed_addr constant [12 x i8] c"force_min_y\00", align 1
@.str.105 = private unnamed_addr constant [24 x i8] c"Lower limit for Y force\00", align 1
@rna_ObjectActuator_force_min_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_offset_location, ptr @rna_ObjectActuator_force_max_z, i32 -1, ptr @.str.108, i32 8195, ptr @.str.100, ptr @.str.109, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 76, i32 4, ptr null, ptr null }, ptr @ObjectActuator_force_min_z_get, ptr @ObjectActuator_force_min_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.106 = private unnamed_addr constant [12 x i8] c"force_max_z\00", align 1
@.str.107 = private unnamed_addr constant [24 x i8] c"Upper limit for Z force\00", align 1
@rna_ObjectActuator_offset_location = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_offset_rotation, ptr @rna_ObjectActuator_force_min_z, i32 -1, ptr @.str.110, i32 8195, ptr @.str.111, ptr @.str.112, i32 0, ptr @.str.3, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 318767104, ptr null, ptr null, i32 56, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @ObjectActuator_offset_location_get, ptr @ObjectActuator_offset_location_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr @rna_ObjectActuator_offset_location_default }, align 8
@.str.108 = private unnamed_addr constant [12 x i8] c"force_min_z\00", align 1
@.str.109 = private unnamed_addr constant [24 x i8] c"Lower limit for Z force\00", align 1
@rna_ObjectActuator_offset_rotation = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_force, ptr @rna_ObjectActuator_offset_location, i32 -1, ptr @.str.113, i32 8195, ptr @.str.114, ptr @.str.115, i32 0, ptr @.str.3, i32 2, i32 327706, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 318767104, ptr null, ptr null, i32 68, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @ObjectActuator_offset_rotation_get, ptr @ObjectActuator_offset_rotation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr @rna_ObjectActuator_offset_rotation_default }, align 8
@.str.110 = private unnamed_addr constant [16 x i8] c"offset_location\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"Loc\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@rna_ObjectActuator_offset_location_default = internal global [3 x float] zeroinitializer, align 4
@rna_ObjectActuator_force = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_torque, ptr @rna_ObjectActuator_offset_rotation, i32 -1, ptr @.str.116, i32 8195, ptr @.str.64, ptr @.str.64, i32 0, ptr @.str.3, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 318767104, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @ObjectActuator_force_get, ptr @ObjectActuator_force_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr @rna_ObjectActuator_force_default }, align 8
@.str.113 = private unnamed_addr constant [16 x i8] c"offset_rotation\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"Rot\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"Rotation\00", align 1
@rna_ObjectActuator_offset_rotation_default = internal global [3 x float] zeroinitializer, align 4
@rna_ObjectActuator_torque = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_linear_velocity, ptr @rna_ObjectActuator_force, i32 -1, ptr @.str.117, i32 8195, ptr @.str.118, ptr @.str.118, i32 0, ptr @.str.3, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 318767104, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @ObjectActuator_torque_get, ptr @ObjectActuator_torque_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr @rna_ObjectActuator_torque_default }, align 8
@.str.116 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@rna_ObjectActuator_force_default = internal global [3 x float] zeroinitializer, align 4
@rna_ObjectActuator_linear_velocity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_angular_velocity, ptr @rna_ObjectActuator_torque, i32 -1, ptr @.str.119, i32 8195, ptr @.str.120, ptr @.str.121, i32 0, ptr @.str.3, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 318767104, ptr null, ptr null, i32 80, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @ObjectActuator_linear_velocity_get, ptr @ObjectActuator_linear_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr @rna_ObjectActuator_linear_velocity_default }, align 8
@.str.117 = private unnamed_addr constant [7 x i8] c"torque\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"Torque\00", align 1
@rna_ObjectActuator_torque_default = internal global [3 x float] zeroinitializer, align 4
@rna_ObjectActuator_angular_velocity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_use_local_location, ptr @rna_ObjectActuator_linear_velocity, i32 -1, ptr @.str.122, i32 8195, ptr @.str.123, ptr @.str.124, i32 0, ptr @.str.3, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 318767104, ptr null, ptr null, i32 92, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @ObjectActuator_angular_velocity_get, ptr @ObjectActuator_angular_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr @rna_ObjectActuator_angular_velocity_default }, align 8
@.str.119 = private unnamed_addr constant [16 x i8] c"linear_velocity\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"Linear Velocity\00", align 1
@.str.121 = private unnamed_addr constant [165 x i8] c"Linear velocity (in Servo mode it sets the target relative linear velocity, it will be achieved by automatic application of force - Null velocity is a valid target)\00", align 1
@rna_ObjectActuator_linear_velocity_default = internal global [3 x float] zeroinitializer, align 4
@rna_ObjectActuator_use_local_location = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_use_local_rotation, ptr @rna_ObjectActuator_angular_velocity, i32 -1, ptr @.str.125, i32 3, ptr @.str.67, ptr @.str.126, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectActuator_use_local_location_get, ptr @ObjectActuator_use_local_location_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.122 = private unnamed_addr constant [17 x i8] c"angular_velocity\00", align 1
@.str.123 = private unnamed_addr constant [17 x i8] c"Angular Velocity\00", align 1
@.str.124 = private unnamed_addr constant [17 x i8] c"Angular velocity\00", align 1
@rna_ObjectActuator_angular_velocity_default = internal global [3 x float] zeroinitializer, align 4
@rna_ObjectActuator_use_local_rotation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_use_local_force, ptr @rna_ObjectActuator_use_local_location, i32 -1, ptr @.str.127, i32 3, ptr @.str.67, ptr @.str.128, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectActuator_use_local_rotation_get, ptr @ObjectActuator_use_local_rotation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.125 = private unnamed_addr constant [19 x i8] c"use_local_location\00", align 1
@.str.126 = private unnamed_addr constant [41 x i8] c"Location is defined in local coordinates\00", align 1
@rna_ObjectActuator_use_local_force = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_use_local_torque, ptr @rna_ObjectActuator_use_local_rotation, i32 -1, ptr @.str.129, i32 3, ptr @.str.67, ptr @.str.130, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectActuator_use_local_force_get, ptr @ObjectActuator_use_local_force_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.127 = private unnamed_addr constant [19 x i8] c"use_local_rotation\00", align 1
@.str.128 = private unnamed_addr constant [41 x i8] c"Rotation is defined in local coordinates\00", align 1
@rna_ObjectActuator_use_local_torque = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_use_local_linear_velocity, ptr @rna_ObjectActuator_use_local_force, i32 -1, ptr @.str.131, i32 3, ptr @.str.67, ptr @.str.132, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectActuator_use_local_torque_get, ptr @ObjectActuator_use_local_torque_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.129 = private unnamed_addr constant [16 x i8] c"use_local_force\00", align 1
@.str.130 = private unnamed_addr constant [38 x i8] c"Force is defined in local coordinates\00", align 1
@rna_ObjectActuator_use_local_linear_velocity = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_use_local_angular_velocity, ptr @rna_ObjectActuator_use_local_torque, i32 -1, ptr @.str.133, i32 3, ptr @.str.67, ptr @.str.134, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectActuator_use_local_linear_velocity_get, ptr @ObjectActuator_use_local_linear_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.131 = private unnamed_addr constant [17 x i8] c"use_local_torque\00", align 1
@.str.132 = private unnamed_addr constant [39 x i8] c"Torque is defined in local coordinates\00", align 1
@rna_ObjectActuator_use_local_angular_velocity = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_use_add_linear_velocity, ptr @rna_ObjectActuator_use_local_linear_velocity, i32 -1, ptr @.str.135, i32 3, ptr @.str.67, ptr @.str.136, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectActuator_use_local_angular_velocity_get, ptr @ObjectActuator_use_local_angular_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.133 = private unnamed_addr constant [26 x i8] c"use_local_linear_velocity\00", align 1
@.str.134 = private unnamed_addr constant [41 x i8] c"Velocity is defined in local coordinates\00", align 1
@rna_ObjectActuator_use_add_linear_velocity = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_use_add_character_location, ptr @rna_ObjectActuator_use_local_angular_velocity, i32 -1, ptr @.str.137, i32 3, ptr @.str.61, ptr @.str.138, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectActuator_use_add_linear_velocity_get, ptr @ObjectActuator_use_add_linear_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.135 = private unnamed_addr constant [27 x i8] c"use_local_angular_velocity\00", align 1
@.str.136 = private unnamed_addr constant [49 x i8] c"Angular velocity is defined in local coordinates\00", align 1
@rna_ObjectActuator_use_add_character_location = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_use_servo_limit_x, ptr @rna_ObjectActuator_use_add_linear_velocity, i32 -1, ptr @.str.139, i32 3, ptr @.str.61, ptr @.str.140, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectActuator_use_add_character_location_get, ptr @ObjectActuator_use_add_character_location_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.137 = private unnamed_addr constant [24 x i8] c"use_add_linear_velocity\00", align 1
@.str.138 = private unnamed_addr constant [33 x i8] c"Toggles between ADD and SET linV\00", align 1
@rna_ObjectActuator_use_servo_limit_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_use_servo_limit_y, ptr @rna_ObjectActuator_use_add_character_location, i32 -1, ptr @.str.141, i32 3, ptr @.str.142, ptr @.str.143, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectActuator_use_servo_limit_x_get, ptr @ObjectActuator_use_servo_limit_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.139 = private unnamed_addr constant [27 x i8] c"use_add_character_location\00", align 1
@.str.140 = private unnamed_addr constant [46 x i8] c"Toggle between ADD and SET character location\00", align 1
@rna_ObjectActuator_use_servo_limit_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_use_servo_limit_z, ptr @rna_ObjectActuator_use_servo_limit_x, i32 -1, ptr @.str.144, i32 3, ptr @.str.145, ptr @.str.146, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectActuator_use_servo_limit_y_get, ptr @ObjectActuator_use_servo_limit_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.141 = private unnamed_addr constant [18 x i8] c"use_servo_limit_x\00", align 1
@.str.142 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.143 = private unnamed_addr constant [36 x i8] c"Set limit to force along the X axis\00", align 1
@rna_ObjectActuator_use_servo_limit_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectActuator_use_character_jump, ptr @rna_ObjectActuator_use_servo_limit_y, i32 -1, ptr @.str.147, i32 3, ptr @.str.148, ptr @.str.149, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectActuator_use_servo_limit_z_get, ptr @ObjectActuator_use_servo_limit_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.144 = private unnamed_addr constant [18 x i8] c"use_servo_limit_y\00", align 1
@.str.145 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.146 = private unnamed_addr constant [36 x i8] c"Set limit to force along the Y axis\00", align 1
@rna_ObjectActuator_use_character_jump = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ObjectActuator_use_servo_limit_z, i32 -1, ptr @.str.150, i32 3, ptr @.str.151, ptr @.str.152, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectActuator_use_character_jump_get, ptr @ObjectActuator_use_character_jump_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.147 = private unnamed_addr constant [18 x i8] c"use_servo_limit_z\00", align 1
@.str.148 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.149 = private unnamed_addr constant [36 x i8] c"Set limit to force along the Z axis\00", align 1
@.str.150 = private unnamed_addr constant [19 x i8] c"use_character_jump\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"Jump\00", align 1
@.str.152 = private unnamed_addr constant [69 x i8] c"Make the character jump using the settings in the physics properties\00", align 1
@RNA_CameraActuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SoundActuator, ptr @RNA_ObjectActuator, ptr null, %struct.ListBase { ptr @rna_CameraActuator_object, ptr @rna_CameraActuator_axis } }, ptr @.str.167, ptr null, ptr null, i32 4, ptr @.str.168, ptr @.str.9, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr @RNA_Actuator, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.153 = private unnamed_addr constant [15 x i8] c"ObjectActuator\00", align 1
@.str.154 = private unnamed_addr constant [16 x i8] c"Motion Actuator\00", align 1
@rna_CameraActuator_height = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_CameraActuator_min, ptr @rna_CameraActuator_object, i32 -1, ptr @.str.158, i32 8195, ptr @.str.159, ptr @.str.9, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr @CameraActuator_height_get, ptr @CameraActuator_height_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+01, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.155 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"Camera Object\00", align 1
@.str.157 = private unnamed_addr constant [20 x i8] c"Look at this Object\00", align 1
@rna_CameraActuator_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_CameraActuator_height, ptr null, i32 -1, ptr @.str.155, i32 8388609, ptr @.str.156, ptr @.str.157, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CameraActuator_object_get, ptr @CameraActuator_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_CameraActuator_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_CameraActuator_max, ptr @rna_CameraActuator_height, i32 -1, ptr @.str.160, i32 8195, ptr @.str.100, ptr @.str.9, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @CameraActuator_min_get, ptr @CameraActuator_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+01, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.158 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.159 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@rna_CameraActuator_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_CameraActuator_damping, ptr @rna_CameraActuator_min, i32 -1, ptr @.str.161, i32 8195, ptr @.str.97, ptr @.str.9, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @CameraActuator_max_get, ptr @CameraActuator_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+01, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.160 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@rna_CameraActuator_damping = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_CameraActuator_axis, ptr @rna_CameraActuator_max, i32 -1, ptr @.str.84, i32 8195, ptr @.str.162, ptr @.str.163, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @CameraActuator_damping_get, ptr @CameraActuator_damping_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00, float 1.000000e+01, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.161 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@rna_CameraActuator_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_CameraActuator_damping, i32 -1, ptr @.str.164, i32 3, ptr @.str.165, ptr @.str.166, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CameraActuator_axis_get, ptr @CameraActuator_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_CameraActuator_axis_items, i32 4, i32 0 }, align 8
@.str.162 = private unnamed_addr constant [8 x i8] c"Damping\00", align 1
@.str.163 = private unnamed_addr constant [68 x i8] c"Strength of the constraint that drives the camera behind the target\00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"Axis\00", align 1
@.str.166 = private unnamed_addr constant [39 x i8] c"Axis the Camera will try to get behind\00", align 1
@rna_CameraActuator_axis_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.572, i32 0, ptr @.str.573, ptr @.str.574 }, %struct.EnumPropertyItem { i32 1, ptr @.str.575, i32 0, ptr @.str.576, ptr @.str.577 }, %struct.EnumPropertyItem { i32 3, ptr @.str.578, i32 0, ptr @.str.579, ptr @.str.580 }, %struct.EnumPropertyItem { i32 4, ptr @.str.581, i32 0, ptr @.str.582, ptr @.str.583 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_SoundActuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_PropertyActuator, ptr @RNA_CameraActuator, ptr null, %struct.ListBase { ptr @rna_SoundActuator_sound, ptr @rna_SoundActuator_use_sound_3d } }, ptr @.str.205, ptr null, ptr null, i32 4, ptr @.str.174, ptr @.str.206, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr @RNA_Actuator, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.167 = private unnamed_addr constant [15 x i8] c"CameraActuator\00", align 1
@.str.168 = private unnamed_addr constant [16 x i8] c"Camera Actuator\00", align 1
@rna_SoundActuator_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundActuator_volume, ptr @rna_SoundActuator_sound, i32 -1, ptr @.str.78, i32 3, ptr @.str.170, ptr @.str.9, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SoundActuator_mode_get, ptr @SoundActuator_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SoundActuator_mode_items, i32 6, i32 0 }, align 8
@.str.169 = private unnamed_addr constant [6 x i8] c"sound\00", align 1
@rna_SoundActuator_sound = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundActuator_mode, ptr null, i32 -1, ptr @.str.169, i32 8388673, ptr @.str.169, ptr @.str.9, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SoundActuator_sound_get, ptr @SoundActuator_sound_set, ptr null, ptr null, ptr @RNA_Sound }, align 8
@rna_SoundActuator_volume = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundActuator_pitch, ptr @rna_SoundActuator_mode, i32 -1, ptr @.str.171, i32 8195, ptr @.str.172, ptr @.str.173, i32 0, ptr @.str.174, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @SoundActuator_volume_get, ptr @SoundActuator_volume_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.170 = private unnamed_addr constant [10 x i8] c"Play Mode\00", align 1
@rna_SoundActuator_mode_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.584, i32 0, ptr @.str.585, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.586, i32 0, ptr @.str.587, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.559, i32 0, ptr @.str.560, ptr @.str.9 }, %struct.EnumPropertyItem { i32 3, ptr @.str.561, i32 0, ptr @.str.562, ptr @.str.9 }, %struct.EnumPropertyItem { i32 4, ptr @.str.588, i32 0, ptr @.str.589, ptr @.str.9 }, %struct.EnumPropertyItem { i32 5, ptr @.str.590, i32 0, ptr @.str.591, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SoundActuator_pitch = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundActuator_gain_3d_min, ptr @rna_SoundActuator_volume, i32 -1, ptr @.str.175, i32 8195, ptr @.str.176, ptr @.str.177, i32 0, ptr @.str.174, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @SoundActuator_pitch_get, ptr @SoundActuator_pitch_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.200000e+01, float 1.200000e+01, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.171 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"Volume\00", align 1
@.str.173 = private unnamed_addr constant [28 x i8] c"Initial volume of the sound\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"Sound\00", align 1
@rna_SoundActuator_gain_3d_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundActuator_gain_3d_max, ptr @rna_SoundActuator_pitch, i32 -1, ptr @.str.178, i32 8195, ptr @.str.179, ptr @.str.180, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 32, i32 4, ptr null, ptr null }, ptr @SoundActuator_gain_3d_min_get, ptr @SoundActuator_gain_3d_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.175 = private unnamed_addr constant [6 x i8] c"pitch\00", align 1
@.str.176 = private unnamed_addr constant [6 x i8] c"Pitch\00", align 1
@.str.177 = private unnamed_addr constant [19 x i8] c"Pitch of the sound\00", align 1
@rna_SoundActuator_gain_3d_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundActuator_distance_3d_reference, ptr @rna_SoundActuator_gain_3d_min, i32 -1, ptr @.str.181, i32 8195, ptr @.str.182, ptr @.str.183, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 36, i32 4, ptr null, ptr null }, ptr @SoundActuator_gain_3d_max_get, ptr @SoundActuator_gain_3d_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.178 = private unnamed_addr constant [12 x i8] c"gain_3d_min\00", align 1
@.str.179 = private unnamed_addr constant [13 x i8] c"Minimum Gain\00", align 1
@.str.180 = private unnamed_addr constant [60 x i8] c"The minimum gain of the sound, no matter how far it is away\00", align 1
@rna_SoundActuator_distance_3d_reference = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundActuator_distance_3d_max, ptr @rna_SoundActuator_gain_3d_max, i32 -1, ptr @.str.184, i32 8195, ptr @.str.185, ptr @.str.186, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 40, i32 4, ptr null, ptr null }, ptr @SoundActuator_distance_3d_reference_get, ptr @SoundActuator_distance_3d_reference_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.181 = private unnamed_addr constant [12 x i8] c"gain_3d_max\00", align 1
@.str.182 = private unnamed_addr constant [13 x i8] c"Maximum Gain\00", align 1
@.str.183 = private unnamed_addr constant [56 x i8] c"The maximum gain of the sound, no matter how near it is\00", align 1
@rna_SoundActuator_distance_3d_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundActuator_rolloff_factor_3d, ptr @rna_SoundActuator_distance_3d_reference, i32 -1, ptr @.str.187, i32 8195, ptr @.str.188, ptr @.str.189, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 44, i32 4, ptr null, ptr null }, ptr @SoundActuator_distance_3d_max_get, ptr @SoundActuator_distance_3d_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.184 = private unnamed_addr constant [22 x i8] c"distance_3d_reference\00", align 1
@.str.185 = private unnamed_addr constant [19 x i8] c"Reference Distance\00", align 1
@.str.186 = private unnamed_addr constant [47 x i8] c"The distance where the sound has a gain of 1.0\00", align 1
@rna_SoundActuator_rolloff_factor_3d = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundActuator_cone_outer_gain_3d, ptr @rna_SoundActuator_distance_3d_max, i32 -1, ptr @.str.190, i32 8195, ptr @.str.191, ptr @.str.192, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 48, i32 4, ptr null, ptr null }, ptr @SoundActuator_rolloff_factor_3d_get, ptr @SoundActuator_rolloff_factor_3d_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.187 = private unnamed_addr constant [16 x i8] c"distance_3d_max\00", align 1
@.str.188 = private unnamed_addr constant [17 x i8] c"Maximum Distance\00", align 1
@.str.189 = private unnamed_addr constant [53 x i8] c"The maximum distance at which you can hear the sound\00", align 1
@rna_SoundActuator_cone_outer_gain_3d = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundActuator_cone_outer_angle_3d, ptr @rna_SoundActuator_rolloff_factor_3d, i32 -1, ptr @.str.193, i32 8195, ptr @.str.194, ptr @.str.195, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 60, i32 4, ptr null, ptr null }, ptr @SoundActuator_cone_outer_gain_3d_get, ptr @SoundActuator_cone_outer_gain_3d_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.190 = private unnamed_addr constant [18 x i8] c"rolloff_factor_3d\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"Rolloff\00", align 1
@.str.192 = private unnamed_addr constant [53 x i8] c"The influence factor on volume depending on distance\00", align 1
@rna_SoundActuator_cone_outer_angle_3d = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundActuator_cone_inner_angle_3d, ptr @rna_SoundActuator_cone_outer_gain_3d, i32 -1, ptr @.str.196, i32 8195, ptr @.str.197, ptr @.str.198, i32 0, ptr @.str.3, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 56, i32 4, ptr null, ptr null }, ptr @SoundActuator_cone_outer_angle_3d_get, ptr @SoundActuator_cone_outer_angle_3d_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x401921FB60000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.193 = private unnamed_addr constant [19 x i8] c"cone_outer_gain_3d\00", align 1
@.str.194 = private unnamed_addr constant [16 x i8] c"Cone Outer Gain\00", align 1
@.str.195 = private unnamed_addr constant [139 x i8] c"The gain outside the outer cone (the gain in the outer cone will be interpolated between this value and the normal gain in the inner cone)\00", align 1
@rna_SoundActuator_cone_inner_angle_3d = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundActuator_use_sound_3d, ptr @rna_SoundActuator_cone_outer_angle_3d, i32 -1, ptr @.str.199, i32 8195, ptr @.str.200, ptr @.str.201, i32 0, ptr @.str.3, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 52, i32 4, ptr null, ptr null }, ptr @SoundActuator_cone_inner_angle_3d_get, ptr @SoundActuator_cone_inner_angle_3d_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x401921FB60000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.196 = private unnamed_addr constant [20 x i8] c"cone_outer_angle_3d\00", align 1
@.str.197 = private unnamed_addr constant [17 x i8] c"Cone Outer Angle\00", align 1
@.str.198 = private unnamed_addr constant [28 x i8] c"The angle of the outer cone\00", align 1
@rna_SoundActuator_use_sound_3d = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SoundActuator_cone_inner_angle_3d, i32 -1, ptr @.str.202, i32 3, ptr @.str.203, ptr @.str.204, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SoundActuator_use_sound_3d_get, ptr @SoundActuator_use_sound_3d_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.199 = private unnamed_addr constant [20 x i8] c"cone_inner_angle_3d\00", align 1
@.str.200 = private unnamed_addr constant [17 x i8] c"Cone Inner Angle\00", align 1
@.str.201 = private unnamed_addr constant [28 x i8] c"The angle of the inner cone\00", align 1
@.str.202 = private unnamed_addr constant [13 x i8] c"use_sound_3d\00", align 1
@.str.203 = private unnamed_addr constant [9 x i8] c"3D Sound\00", align 1
@.str.204 = private unnamed_addr constant [24 x i8] c"Enable/Disable 3D Sound\00", align 1
@RNA_PropertyActuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ConstraintActuator, ptr @RNA_SoundActuator, ptr null, %struct.ListBase { ptr @rna_PropertyActuator_mode, ptr @rna_PropertyActuator_object_property } }, ptr @.str.217, ptr null, ptr null, i32 4, ptr @.str.218, ptr @.str.219, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr @RNA_Actuator, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.205 = private unnamed_addr constant [14 x i8] c"SoundActuator\00", align 1
@.str.206 = private unnamed_addr constant [11 x i8] c"Sound file\00", align 1
@rna_PropertyActuator_property = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_PropertyActuator_value, ptr @rna_PropertyActuator_mode, i32 -1, ptr @.str.38, i32 262145, ptr @.str.39, ptr @.str.208, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PropertyActuator_property_get, ptr @PropertyActuator_property_length, ptr @PropertyActuator_property_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.9 }, align 8
@.str.207 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@rna_PropertyActuator_mode_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.592, i32 0, ptr @.str.593, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.565, i32 0, ptr @.str.61, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.594, i32 0, ptr @.str.595, ptr @.str.9 }, %struct.EnumPropertyItem { i32 3, ptr @.str.596, i32 0, ptr @.str.597, ptr @.str.598 }, %struct.EnumPropertyItem { i32 4, ptr @.str.599, i32 0, ptr @.str.600, ptr @.str.598 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_PropertyActuator_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_PropertyActuator_property, ptr null, i32 -1, ptr @.str.78, i32 3, ptr @.str.207, ptr @.str.9, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PropertyActuator_mode_get, ptr @PropertyActuator_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_PropertyActuator_mode_items, i32 5, i32 0 }, align 8
@rna_PropertyActuator_value = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_PropertyActuator_object, ptr @rna_PropertyActuator_property, i32 -1, ptr @.str.209, i32 262145, ptr @.str.210, ptr @.str.211, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PropertyActuator_value_get, ptr @PropertyActuator_value_length, ptr @PropertyActuator_value_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.9 }, align 8
@.str.208 = private unnamed_addr constant [25 x i8] c"The name of the property\00", align 1
@rna_PropertyActuator_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PropertyActuator_object_property, ptr @rna_PropertyActuator_value, i32 -1, ptr @.str.155, i32 8388609, ptr @.str.212, ptr @.str.213, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PropertyActuator_object_get, ptr @PropertyActuator_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.209 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.210 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.211 = private unnamed_addr constant [69 x i8] c"The name of the property or the value to use (use \22\22 around strings)\00", align 1
@rna_PropertyActuator_object_property = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_PropertyActuator_object, i32 -1, ptr @.str.214, i32 262145, ptr @.str.215, ptr @.str.216, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PropertyActuator_object_property_get, ptr @PropertyActuator_object_property_length, ptr @PropertyActuator_object_property_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.9 }, align 8
@.str.212 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.213 = private unnamed_addr constant [22 x i8] c"Copy from this Object\00", align 1
@.str.214 = private unnamed_addr constant [16 x i8] c"object_property\00", align 1
@.str.215 = private unnamed_addr constant [14 x i8] c"Property Name\00", align 1
@.str.216 = private unnamed_addr constant [19 x i8] c"Copy this property\00", align 1
@RNA_ConstraintActuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_EditObjectActuator, ptr @RNA_PropertyActuator, ptr null, %struct.ListBase { ptr @rna_ConstraintActuator_mode, ptr @rna_ConstraintActuator_use_fh_normal } }, ptr @.str.281, ptr null, ptr null, i32 4, ptr @.str.282, ptr @.str.283, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr @RNA_Actuator, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.217 = private unnamed_addr constant [17 x i8] c"PropertyActuator\00", align 1
@.str.218 = private unnamed_addr constant [18 x i8] c"Property Actuator\00", align 1
@.str.219 = private unnamed_addr constant [30 x i8] c"Actuator to handle properties\00", align 1
@rna_ConstraintActuator_limit = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_direction, ptr @rna_ConstraintActuator_mode, i32 -1, ptr @.str.222, i32 3, ptr @.str.223, ptr @.str.9, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_limit_get, ptr @ConstraintActuator_limit_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ConstraintActuator_limit_items, i32 4, i32 0 }, align 8
@.str.220 = private unnamed_addr constant [17 x i8] c"Constraints Mode\00", align 1
@.str.221 = private unnamed_addr constant [27 x i8] c"The type of the constraint\00", align 1
@rna_ConstraintActuator_mode_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.601, i32 0, ptr @.str.602, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.603, i32 0, ptr @.str.604, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.605, i32 0, ptr @.str.606, ptr @.str.9 }, %struct.EnumPropertyItem { i32 3, ptr @.str.607, i32 0, ptr @.str.608, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ConstraintActuator_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_limit, ptr null, i32 -1, ptr @.str.78, i32 3, ptr @.str.220, ptr @.str.221, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_mode_get, ptr @ConstraintActuator_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ConstraintActuator_mode_items, i32 4, i32 0 }, align 8
@rna_ConstraintActuator_direction = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_direction_axis, ptr @rna_ConstraintActuator_limit, i32 -1, ptr @.str.224, i32 3, ptr @.str.225, ptr @.str.226, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_direction_get, ptr @ConstraintActuator_direction_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ConstraintActuator_direction_items, i32 7, i32 0 }, align 8
@.str.222 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c"Limit\00", align 1
@rna_ConstraintActuator_limit_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.609, i32 0, ptr @.str.610, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.611, i32 0, ptr @.str.612, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.613, i32 0, ptr @.str.614, ptr @.str.9 }, %struct.EnumPropertyItem { i32 4, ptr @.str.615, i32 0, ptr @.str.616, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ConstraintActuator_direction_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_limit_min, ptr @rna_ConstraintActuator_direction, i32 -1, ptr @.str.227, i32 3, ptr @.str.225, ptr @.str.228, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_direction_axis_get, ptr @ConstraintActuator_direction_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ConstraintActuator_direction_axis_items, i32 7, i32 0 }, align 8
@.str.224 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.225 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.226 = private unnamed_addr constant [21 x i8] c"Direction of the ray\00", align 1
@rna_ConstraintActuator_direction_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.609, i32 0, ptr @.str.610, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.617, i32 0, ptr @.str.618, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.619, i32 0, ptr @.str.620, ptr @.str.9 }, %struct.EnumPropertyItem { i32 4, ptr @.str.621, i32 0, ptr @.str.622, ptr @.str.9 }, %struct.EnumPropertyItem { i32 8, ptr @.str.623, i32 0, ptr @.str.624, ptr @.str.9 }, %struct.EnumPropertyItem { i32 16, ptr @.str.625, i32 0, ptr @.str.626, ptr @.str.9 }, %struct.EnumPropertyItem { i32 32, ptr @.str.627, i32 0, ptr @.str.628, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ConstraintActuator_limit_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_limit_max, ptr @rna_ConstraintActuator_direction_axis, i32 -1, ptr @.str.229, i32 3, ptr @.str.100, ptr @.str.9, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_limit_min_get, ptr @ConstraintActuator_limit_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -2.000000e+03, float 2.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.227 = private unnamed_addr constant [15 x i8] c"direction_axis\00", align 1
@.str.228 = private unnamed_addr constant [60 x i8] c"Select the axis to be aligned along the reference direction\00", align 1
@rna_ConstraintActuator_direction_axis_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.609, i32 0, ptr @.str.610, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.617, i32 0, ptr @.str.618, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.619, i32 0, ptr @.str.620, ptr @.str.9 }, %struct.EnumPropertyItem { i32 4, ptr @.str.621, i32 0, ptr @.str.622, ptr @.str.9 }, %struct.EnumPropertyItem { i32 8, ptr @.str.623, i32 0, ptr @.str.624, ptr @.str.9 }, %struct.EnumPropertyItem { i32 16, ptr @.str.625, i32 0, ptr @.str.626, ptr @.str.9 }, %struct.EnumPropertyItem { i32 32, ptr @.str.627, i32 0, ptr @.str.628, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ConstraintActuator_limit_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_damping, ptr @rna_ConstraintActuator_limit_min, i32 -1, ptr @.str.230, i32 3, ptr @.str.97, ptr @.str.9, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_limit_max_get, ptr @ConstraintActuator_limit_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -2.000000e+03, float 2.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.229 = private unnamed_addr constant [10 x i8] c"limit_min\00", align 1
@rna_ConstraintActuator_damping = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_range, ptr @rna_ConstraintActuator_limit_max, i32 -1, ptr @.str.84, i32 8195, ptr @.str.162, ptr @.str.231, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 6, i32 1, ptr null, ptr null }, ptr @ConstraintActuator_damping_get, ptr @ConstraintActuator_damping_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 100, i32 -32768, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.230 = private unnamed_addr constant [10 x i8] c"limit_max\00", align 1
@rna_ConstraintActuator_range = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_distance, ptr @rna_ConstraintActuator_damping, i32 -1, ptr @.str.232, i32 3, ptr @.str.233, ptr @.str.234, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_range_get, ptr @ConstraintActuator_range_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.231 = private unnamed_addr constant [60 x i8] c"Damping factor: time constant (in frame) of low pass filter\00", align 1
@rna_ConstraintActuator_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_material, ptr @rna_ConstraintActuator_range, i32 -1, ptr @.str.235, i32 3, ptr @.str.236, ptr @.str.237, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_distance_get, ptr @ConstraintActuator_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -2.000000e+03, float 2.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.232 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.233 = private unnamed_addr constant [6 x i8] c"Range\00", align 1
@.str.234 = private unnamed_addr constant [22 x i8] c"Maximum length of ray\00", align 1
@rna_ConstraintActuator_material = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_property, ptr @rna_ConstraintActuator_distance, i32 -1, ptr @.str.238, i32 262145, ptr @.str.239, ptr @.str.240, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_material_get, ptr @ConstraintActuator_material_length, ptr @ConstraintActuator_material_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.9 }, align 8
@.str.235 = private unnamed_addr constant [9 x i8] c"distance\00", align 1
@.str.236 = private unnamed_addr constant [9 x i8] c"Distance\00", align 1
@.str.237 = private unnamed_addr constant [29 x i8] c"Keep this distance to target\00", align 1
@rna_ConstraintActuator_property = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_time, ptr @rna_ConstraintActuator_material, i32 -1, ptr @.str.38, i32 262145, ptr @.str.39, ptr @.str.241, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_property_get, ptr @ConstraintActuator_property_length, ptr @ConstraintActuator_property_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.9 }, align 8
@.str.238 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@.str.239 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.240 = private unnamed_addr constant [44 x i8] c"Ray detects only Objects with this material\00", align 1
@rna_ConstraintActuator_time = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_damping_rotation, ptr @rna_ConstraintActuator_property, i32 -1, ptr @.str.242, i32 8195, ptr @.str.243, ptr @.str.244, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 8, i32 1, ptr null, ptr null }, ptr @ConstraintActuator_time_get, ptr @ConstraintActuator_time_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1000, i32 -32768, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.241 = private unnamed_addr constant [44 x i8] c"Ray detects only Objects with this property\00", align 1
@rna_ConstraintActuator_damping_rotation = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_direction_axis_pos, ptr @rna_ConstraintActuator_time, i32 -1, ptr @.str.245, i32 8195, ptr @.str.246, ptr @.str.247, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 10, i32 1, ptr null, ptr null }, ptr @ConstraintActuator_damping_rotation_get, ptr @ConstraintActuator_damping_rotation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 100, i32 -32768, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.242 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.243 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.244 = private unnamed_addr constant [50 x i8] c"Maximum activation time in frame, 0 for unlimited\00", align 1
@rna_ConstraintActuator_direction_axis_pos = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_rotation_max, ptr @rna_ConstraintActuator_damping_rotation, i32 -1, ptr @.str.248, i32 3, ptr @.str.225, ptr @.str.228, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_direction_axis_pos_get, ptr @ConstraintActuator_direction_axis_pos_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ConstraintActuator_direction_axis_pos_items, i32 4, i32 0 }, align 8
@.str.245 = private unnamed_addr constant [17 x i8] c"damping_rotation\00", align 1
@.str.246 = private unnamed_addr constant [8 x i8] c"RotDamp\00", align 1
@.str.247 = private unnamed_addr constant [40 x i8] c"Use a different damping for orientation\00", align 1
@rna_ConstraintActuator_rotation_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_angle_min, ptr @rna_ConstraintActuator_direction_axis_pos, i32 -1, ptr @.str.249, i32 8195, ptr @.str.250, ptr @.str.250, i32 0, ptr @.str.3, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 318767104, ptr null, ptr null, i32 52, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @ConstraintActuator_rotation_max_get, ptr @ConstraintActuator_rotation_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -2.000000e+03, float 2.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr @rna_ConstraintActuator_rotation_max_default }, align 8
@.str.248 = private unnamed_addr constant [19 x i8] c"direction_axis_pos\00", align 1
@rna_ConstraintActuator_direction_axis_pos_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.609, i32 0, ptr @.str.610, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.617, i32 0, ptr @.str.618, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.619, i32 0, ptr @.str.620, ptr @.str.9 }, %struct.EnumPropertyItem { i32 4, ptr @.str.621, i32 0, ptr @.str.622, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ConstraintActuator_angle_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_angle_max, ptr @rna_ConstraintActuator_rotation_max, i32 -1, ptr @.str.251, i32 8195, ptr @.str.252, ptr @.str.253, i32 0, ptr @.str.3, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @ConstraintActuator_angle_min_get, ptr @ConstraintActuator_angle_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x400921FB60000000, float 0.000000e+00, float 0x400921FB60000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.249 = private unnamed_addr constant [13 x i8] c"rotation_max\00", align 1
@.str.250 = private unnamed_addr constant [20 x i8] c"Reference Direction\00", align 1
@rna_ConstraintActuator_rotation_max_default = internal global [3 x float] zeroinitializer, align 4
@rna_ConstraintActuator_angle_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_fh_height, ptr @rna_ConstraintActuator_angle_min, i32 -1, ptr @.str.254, i32 8195, ptr @.str.255, ptr @.str.256, i32 0, ptr @.str.3, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 28, i32 4, ptr null, ptr null }, ptr @ConstraintActuator_angle_max_get, ptr @ConstraintActuator_angle_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x400921FB60000000, float 0.000000e+00, float 0x400921FB60000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.251 = private unnamed_addr constant [10 x i8] c"angle_min\00", align 1
@.str.252 = private unnamed_addr constant [10 x i8] c"Min Angle\00", align 1
@.str.253 = private unnamed_addr constant [126 x i8] c"Minimum angle to maintain with target direction (no correction is done if angle with target direction is between min and max)\00", align 1
@rna_ConstraintActuator_fh_height = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_fh_force, ptr @rna_ConstraintActuator_angle_max, i32 -1, ptr @.str.257, i32 3, ptr @.str.236, ptr @.str.258, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_fh_height_get, ptr @ConstraintActuator_fh_height_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 2.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.254 = private unnamed_addr constant [10 x i8] c"angle_max\00", align 1
@.str.255 = private unnamed_addr constant [10 x i8] c"Max Angle\00", align 1
@.str.256 = private unnamed_addr constant [122 x i8] c"Maximum angle allowed with target direction (no correction is done if angle with target direction is between min and max)\00", align 1
@rna_ConstraintActuator_fh_force = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_fh_damping, ptr @rna_ConstraintActuator_fh_height, i32 -1, ptr @.str.259, i32 3, ptr @.str.64, ptr @.str.260, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_fh_force_get, ptr @ConstraintActuator_fh_force_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.257 = private unnamed_addr constant [10 x i8] c"fh_height\00", align 1
@.str.258 = private unnamed_addr constant [31 x i8] c"Height of the force field area\00", align 1
@rna_ConstraintActuator_fh_damping = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_use_force_distance, ptr @rna_ConstraintActuator_fh_force, i32 -1, ptr @.str.261, i32 8195, ptr @.str.162, ptr @.str.262, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 52, i32 4, ptr null, ptr null }, ptr @ConstraintActuator_fh_damping_get, ptr @ConstraintActuator_fh_damping_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.259 = private unnamed_addr constant [9 x i8] c"fh_force\00", align 1
@.str.260 = private unnamed_addr constant [41 x i8] c"Spring force within the force field area\00", align 1
@rna_ConstraintActuator_use_force_distance = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_use_local, ptr @rna_ConstraintActuator_fh_damping, i32 -1, ptr @.str.263, i32 3, ptr @.str.264, ptr @.str.265, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_use_force_distance_get, ptr @ConstraintActuator_use_force_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.261 = private unnamed_addr constant [11 x i8] c"fh_damping\00", align 1
@.str.262 = private unnamed_addr constant [41 x i8] c"Damping factor of the force field spring\00", align 1
@rna_ConstraintActuator_use_local = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_use_normal, ptr @rna_ConstraintActuator_use_force_distance, i32 -1, ptr @.str.66, i32 3, ptr @.str.67, ptr @.str.266, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_use_local_get, ptr @ConstraintActuator_use_local_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.263 = private unnamed_addr constant [19 x i8] c"use_force_distance\00", align 1
@.str.264 = private unnamed_addr constant [15 x i8] c"Force Distance\00", align 1
@.str.265 = private unnamed_addr constant [51 x i8] c"Force distance of object to point of impact of ray\00", align 1
@rna_ConstraintActuator_use_normal = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_use_persistent, ptr @rna_ConstraintActuator_use_local, i32 -1, ptr @.str.267, i32 3, ptr @.str.268, ptr @.str.269, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_use_normal_get, ptr @ConstraintActuator_use_normal_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.266 = private unnamed_addr constant [43 x i8] c"Set ray along object's axis or global axis\00", align 1
@rna_ConstraintActuator_use_persistent = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_use_material_detect, ptr @rna_ConstraintActuator_use_normal, i32 -1, ptr @.str.270, i32 3, ptr @.str.271, ptr @.str.272, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_use_persistent_get, ptr @ConstraintActuator_use_persistent_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.267 = private unnamed_addr constant [11 x i8] c"use_normal\00", align 1
@.str.268 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.269 = private unnamed_addr constant [91 x i8] c"Set object axis along (local axis) or parallel (global axis) to the normal at hit position\00", align 1
@rna_ConstraintActuator_use_material_detect = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_use_fh_paralel_axis, ptr @rna_ConstraintActuator_use_persistent, i32 -1, ptr @.str.273, i32 3, ptr @.str.274, ptr @.str.275, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_use_material_detect_get, ptr @ConstraintActuator_use_material_detect_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.270 = private unnamed_addr constant [15 x i8] c"use_persistent\00", align 1
@.str.271 = private unnamed_addr constant [4 x i8] c"PER\00", align 1
@.str.272 = private unnamed_addr constant [68 x i8] c"Persistent actuator: stays active even if ray does not reach target\00", align 1
@rna_ConstraintActuator_use_fh_paralel_axis = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintActuator_use_fh_normal, ptr @rna_ConstraintActuator_use_material_detect, i32 -1, ptr @.str.276, i32 3, ptr @.str.277, ptr @.str.278, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_use_fh_paralel_axis_get, ptr @ConstraintActuator_use_fh_paralel_axis_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.273 = private unnamed_addr constant [20 x i8] c"use_material_detect\00", align 1
@.str.274 = private unnamed_addr constant [4 x i8] c"M/P\00", align 1
@.str.275 = private unnamed_addr constant [36 x i8] c"Detect material instead of property\00", align 1
@rna_ConstraintActuator_use_fh_normal = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ConstraintActuator_use_fh_paralel_axis, i32 -1, ptr @.str.279, i32 3, ptr @.str.268, ptr @.str.280, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintActuator_use_fh_normal_get, ptr @ConstraintActuator_use_fh_normal_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.276 = private unnamed_addr constant [20 x i8] c"use_fh_paralel_axis\00", align 1
@.str.277 = private unnamed_addr constant [7 x i8] c"Rot Fh\00", align 1
@.str.278 = private unnamed_addr constant [36 x i8] c"Keep object axis parallel to normal\00", align 1
@.str.279 = private unnamed_addr constant [14 x i8] c"use_fh_normal\00", align 1
@.str.280 = private unnamed_addr constant [40 x i8] c"Add a horizontal spring force on slopes\00", align 1
@RNA_EditObjectActuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SceneActuator, ptr @RNA_ConstraintActuator, ptr null, %struct.ListBase { ptr @rna_EditObjectActuator_mode, ptr @rna_EditObjectActuator_use_3d_tracking } }, ptr @.str.317, ptr null, ptr null, i32 4, ptr @.str.318, ptr @.str.319, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr @RNA_Actuator, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.281 = private unnamed_addr constant [19 x i8] c"ConstraintActuator\00", align 1
@.str.282 = private unnamed_addr constant [20 x i8] c"Constraint Actuator\00", align 1
@.str.283 = private unnamed_addr constant [31 x i8] c"Actuator to handle Constraints\00", align 1
@rna_EditObjectActuator_dynamic_operation = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_EditObjectActuator_up_axis, ptr @rna_EditObjectActuator_mode, i32 -1, ptr @.str.286, i32 3, ptr @.str.287, ptr @.str.9, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditObjectActuator_dynamic_operation_get, ptr @EditObjectActuator_dynamic_operation_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_EditObjectActuator_dynamic_operation_items, i32 5, i32 0 }, align 8
@.str.284 = private unnamed_addr constant [12 x i8] c"Edit Object\00", align 1
@.str.285 = private unnamed_addr constant [25 x i8] c"The mode of the actuator\00", align 1
@rna_EditObjectActuator_mode_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.629, i32 0, ptr @.str.630, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.631, i32 0, ptr @.str.632, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.633, i32 0, ptr @.str.634, ptr @.str.9 }, %struct.EnumPropertyItem { i32 3, ptr @.str.635, i32 0, ptr @.str.636, ptr @.str.9 }, %struct.EnumPropertyItem { i32 4, ptr @.str.637, i32 0, ptr @.str.638, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_EditObjectActuator_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_EditObjectActuator_dynamic_operation, ptr null, i32 -1, ptr @.str.78, i32 3, ptr @.str.284, ptr @.str.285, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditObjectActuator_mode_get, ptr @EditObjectActuator_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_EditObjectActuator_mode_items, i32 5, i32 0 }, align 8
@rna_EditObjectActuator_up_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_EditObjectActuator_track_axis, ptr @rna_EditObjectActuator_dynamic_operation, i32 -1, ptr @.str.288, i32 3, ptr @.str.289, ptr @.str.290, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditObjectActuator_up_axis_get, ptr @EditObjectActuator_up_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_EditObjectActuator_up_axis_items, i32 3, i32 0 }, align 8
@.str.286 = private unnamed_addr constant [18 x i8] c"dynamic_operation\00", align 1
@.str.287 = private unnamed_addr constant [18 x i8] c"Dynamic Operation\00", align 1
@rna_EditObjectActuator_dynamic_operation_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.639, i32 0, ptr @.str.640, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.641, i32 0, ptr @.str.642, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.643, i32 0, ptr @.str.644, ptr @.str.9 }, %struct.EnumPropertyItem { i32 3, ptr @.str.645, i32 0, ptr @.str.646, ptr @.str.9 }, %struct.EnumPropertyItem { i32 4, ptr @.str.647, i32 0, ptr @.str.648, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_EditObjectActuator_track_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_EditObjectActuator_object, ptr @rna_EditObjectActuator_up_axis, i32 -1, ptr @.str.291, i32 3, ptr @.str.292, ptr @.str.293, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditObjectActuator_track_axis_get, ptr @EditObjectActuator_track_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_EditObjectActuator_track_axis_items, i32 6, i32 0 }, align 8
@.str.288 = private unnamed_addr constant [8 x i8] c"up_axis\00", align 1
@.str.289 = private unnamed_addr constant [8 x i8] c"Up Axis\00", align 1
@.str.290 = private unnamed_addr constant [28 x i8] c"The axis that points upward\00", align 1
@rna_EditObjectActuator_up_axis_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.649, i32 0, ptr @.str.618, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.650, i32 0, ptr @.str.620, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.651, i32 0, ptr @.str.622, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_EditObjectActuator_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_EditObjectActuator_track_object, ptr @rna_EditObjectActuator_track_axis, i32 -1, ptr @.str.155, i32 8388609, ptr @.str.212, ptr @.str.294, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditObjectActuator_object_get, ptr @EditObjectActuator_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.291 = private unnamed_addr constant [11 x i8] c"track_axis\00", align 1
@.str.292 = private unnamed_addr constant [11 x i8] c"Track Axis\00", align 1
@.str.293 = private unnamed_addr constant [42 x i8] c"The axis that points to the target object\00", align 1
@rna_EditObjectActuator_track_axis_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.652, i32 0, ptr @.str.618, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.653, i32 0, ptr @.str.620, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.654, i32 0, ptr @.str.622, ptr @.str.9 }, %struct.EnumPropertyItem { i32 3, ptr @.str.655, i32 0, ptr @.str.624, ptr @.str.9 }, %struct.EnumPropertyItem { i32 4, ptr @.str.656, i32 0, ptr @.str.626, ptr @.str.9 }, %struct.EnumPropertyItem { i32 5, ptr @.str.657, i32 0, ptr @.str.628, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_EditObjectActuator_track_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_EditObjectActuator_mesh, ptr @rna_EditObjectActuator_object, i32 -1, ptr @.str.295, i32 8388609, ptr @.str.212, ptr @.str.296, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditObjectActuator_track_object_get, ptr @EditObjectActuator_track_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.294 = private unnamed_addr constant [67 x i8] c"Add this Object and all its children (can't be on a visible layer)\00", align 1
@rna_EditObjectActuator_mesh = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_EditObjectActuator_time, ptr @rna_EditObjectActuator_track_object, i32 -1, ptr @.str.297, i32 8388673, ptr @.str.298, ptr @.str.299, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditObjectActuator_mesh_get, ptr @EditObjectActuator_mesh_set, ptr null, ptr null, ptr @RNA_Mesh }, align 8
@.str.295 = private unnamed_addr constant [13 x i8] c"track_object\00", align 1
@.str.296 = private unnamed_addr constant [21 x i8] c"Track to this Object\00", align 1
@rna_EditObjectActuator_time = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_EditObjectActuator_mass, ptr @rna_EditObjectActuator_mesh, i32 -1, ptr @.str.242, i32 8195, ptr @.str.243, ptr @.str.300, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null }, ptr @EditObjectActuator_time_get, ptr @EditObjectActuator_time_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.297 = private unnamed_addr constant [5 x i8] c"mesh\00", align 1
@.str.298 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@.str.299 = private unnamed_addr constant [83 x i8] c"Replace the existing, when left blank 'Phys' will remake the existing physics mesh\00", align 1
@rna_EditObjectActuator_mass = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_EditObjectActuator_linear_velocity, ptr @rna_EditObjectActuator_time, i32 -1, ptr @.str.301, i32 8195, ptr @.str.302, ptr @.str.303, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 112, i32 4, ptr null, ptr null }, ptr @EditObjectActuator_mass_get, ptr @EditObjectActuator_mass_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.300 = private unnamed_addr constant [49 x i8] c"Duration the new Object lives or the track takes\00", align 1
@rna_EditObjectActuator_linear_velocity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_EditObjectActuator_angular_velocity, ptr @rna_EditObjectActuator_mass, i32 -1, ptr @.str.119, i32 8195, ptr @.str.120, ptr @.str.304, i32 0, ptr @.str.3, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 318767104, ptr null, ptr null, i32 88, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @EditObjectActuator_linear_velocity_get, ptr @EditObjectActuator_linear_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr @rna_EditObjectActuator_linear_velocity_default }, align 8
@.str.301 = private unnamed_addr constant [5 x i8] c"mass\00", align 1
@.str.302 = private unnamed_addr constant [5 x i8] c"Mass\00", align 1
@.str.303 = private unnamed_addr constant [23 x i8] c"The mass of the object\00", align 1
@rna_EditObjectActuator_angular_velocity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_EditObjectActuator_use_local_linear_velocity, ptr @rna_EditObjectActuator_linear_velocity, i32 -1, ptr @.str.122, i32 8195, ptr @.str.123, ptr @.str.305, i32 0, ptr @.str.3, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 318767104, ptr null, ptr null, i32 100, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @EditObjectActuator_angular_velocity_get, ptr @EditObjectActuator_angular_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr @rna_EditObjectActuator_angular_velocity_default }, align 8
@.str.304 = private unnamed_addr constant [23 x i8] c"Velocity upon creation\00", align 1
@rna_EditObjectActuator_linear_velocity_default = internal global [3 x float] zeroinitializer, align 4
@rna_EditObjectActuator_use_local_linear_velocity = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditObjectActuator_use_local_angular_velocity, ptr @rna_EditObjectActuator_angular_velocity, i32 -1, ptr @.str.133, i32 3, ptr @.str.67, ptr @.str.306, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditObjectActuator_use_local_linear_velocity_get, ptr @EditObjectActuator_use_local_linear_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.305 = private unnamed_addr constant [31 x i8] c"Angular velocity upon creation\00", align 1
@rna_EditObjectActuator_angular_velocity_default = internal global [3 x float] zeroinitializer, align 4
@rna_EditObjectActuator_use_local_angular_velocity = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditObjectActuator_use_replace_display_mesh, ptr @rna_EditObjectActuator_use_local_linear_velocity, i32 -1, ptr @.str.135, i32 3, ptr @.str.67, ptr @.str.307, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditObjectActuator_use_local_angular_velocity_get, ptr @EditObjectActuator_use_local_angular_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.306 = private unnamed_addr constant [33 x i8] c"Apply the transformation locally\00", align 1
@rna_EditObjectActuator_use_replace_display_mesh = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditObjectActuator_use_replace_physics_mesh, ptr @rna_EditObjectActuator_use_local_angular_velocity, i32 -1, ptr @.str.308, i32 3, ptr @.str.309, ptr @.str.310, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditObjectActuator_use_replace_display_mesh_get, ptr @EditObjectActuator_use_replace_display_mesh_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.307 = private unnamed_addr constant [27 x i8] c"Apply the rotation locally\00", align 1
@rna_EditObjectActuator_use_replace_physics_mesh = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditObjectActuator_use_3d_tracking, ptr @rna_EditObjectActuator_use_replace_display_mesh, i32 -1, ptr @.str.311, i32 3, ptr @.str.312, ptr @.str.313, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditObjectActuator_use_replace_physics_mesh_get, ptr @EditObjectActuator_use_replace_physics_mesh_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.308 = private unnamed_addr constant [25 x i8] c"use_replace_display_mesh\00", align 1
@.str.309 = private unnamed_addr constant [4 x i8] c"Gfx\00", align 1
@.str.310 = private unnamed_addr constant [25 x i8] c"Replace the display mesh\00", align 1
@rna_EditObjectActuator_use_3d_tracking = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_EditObjectActuator_use_replace_physics_mesh, i32 -1, ptr @.str.314, i32 3, ptr @.str.315, ptr @.str.316, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditObjectActuator_use_3d_tracking_get, ptr @EditObjectActuator_use_3d_tracking_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.311 = private unnamed_addr constant [25 x i8] c"use_replace_physics_mesh\00", align 1
@.str.312 = private unnamed_addr constant [5 x i8] c"Phys\00", align 1
@.str.313 = private unnamed_addr constant [80 x i8] c"Replace the physics mesh (triangle bounds only - compound shapes not supported)\00", align 1
@.str.314 = private unnamed_addr constant [16 x i8] c"use_3d_tracking\00", align 1
@.str.315 = private unnamed_addr constant [3 x i8] c"3D\00", align 1
@.str.316 = private unnamed_addr constant [19 x i8] c"Enable 3D tracking\00", align 1
@RNA_SceneActuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_RandomActuator, ptr @RNA_EditObjectActuator, ptr null, %struct.ListBase { ptr @rna_SceneActuator_mode, ptr @rna_SceneActuator_scene } }, ptr @.str.325, ptr null, ptr null, i32 4, ptr @.str.326, ptr @.str.9, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr @RNA_Actuator, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.317 = private unnamed_addr constant [19 x i8] c"EditObjectActuator\00", align 1
@.str.318 = private unnamed_addr constant [21 x i8] c"Edit Object Actuator\00", align 1
@.str.319 = private unnamed_addr constant [30 x i8] c"Actuator used to edit objects\00", align 1
@rna_SceneActuator_camera = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneActuator_scene, ptr @rna_SceneActuator_mode, i32 -1, ptr @.str.320, i32 8388609, ptr @.str.156, ptr @.str.321, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneActuator_camera_get, ptr @SceneActuator_camera_set, ptr null, ptr @rna_Camera_object_poll, ptr @RNA_Object }, align 8
@rna_SceneActuator_mode_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.658, i32 0, ptr @.str.659, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.660, i32 0, ptr @.str.661, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.528, i32 0, ptr @.str.662, ptr @.str.9 }, %struct.EnumPropertyItem { i32 3, ptr @.str.663, i32 0, ptr @.str.664, ptr @.str.9 }, %struct.EnumPropertyItem { i32 4, ptr @.str.665, i32 0, ptr @.str.666, ptr @.str.9 }, %struct.EnumPropertyItem { i32 5, ptr @.str.667, i32 0, ptr @.str.668, ptr @.str.9 }, %struct.EnumPropertyItem { i32 6, ptr @.str.669, i32 0, ptr @.str.670, ptr @.str.9 }, %struct.EnumPropertyItem { i32 7, ptr @.str.671, i32 0, ptr @.str.672, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SceneActuator_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneActuator_camera, ptr null, i32 -1, ptr @.str.78, i32 3, ptr @.str.207, ptr @.str.9, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneActuator_mode_get, ptr @SceneActuator_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SceneActuator_mode_items, i32 8, i32 0 }, align 8
@rna_SceneActuator_scene = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SceneActuator_camera, i32 -1, ptr @.str.322, i32 8388609, ptr @.str.323, ptr @.str.324, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneActuator_scene_get, ptr @SceneActuator_scene_set, ptr null, ptr null, ptr @RNA_Scene }, align 8
@.str.320 = private unnamed_addr constant [7 x i8] c"camera\00", align 1
@.str.321 = private unnamed_addr constant [54 x i8] c"Set this Camera (leave empty to refer to self object)\00", align 1
@.str.322 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.323 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.324 = private unnamed_addr constant [41 x i8] c"Scene to be added/removed/paused/resumed\00", align 1
@RNA_RandomActuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MessageActuator, ptr @RNA_SceneActuator, ptr null, %struct.ListBase { ptr @rna_RandomActuator_seed, ptr @rna_RandomActuator_half_life_time } }, ptr @.str.360, ptr null, ptr null, i32 4, ptr @.str.361, ptr @.str.9, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr @RNA_Actuator, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.325 = private unnamed_addr constant [14 x i8] c"SceneActuator\00", align 1
@.str.326 = private unnamed_addr constant [15 x i8] c"Scene Actuator\00", align 1
@rna_RandomActuator_property = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_RandomActuator_distribution, ptr @rna_RandomActuator_seed, i32 -1, ptr @.str.38, i32 262145, ptr @.str.39, ptr @.str.330, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RandomActuator_property_get, ptr @RandomActuator_property_length, ptr @RandomActuator_property_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.9 }, align 8
@.str.327 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.328 = private unnamed_addr constant [5 x i8] c"Seed\00", align 1
@.str.329 = private unnamed_addr constant [92 x i8] c"Initial seed of the random generator, use Python for more freedom (choose 0 for not random)\00", align 1
@rna_RandomActuator_seed = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_RandomActuator_property, ptr null, i32 -1, ptr @.str.327, i32 8195, ptr @.str.328, ptr @.str.329, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null }, ptr @RandomActuator_seed_get, ptr @RandomActuator_seed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 300000, i32 0, i32 300000, i32 1, i32 0, ptr null }, align 8
@rna_RandomActuator_distribution = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_RandomActuator_use_always_true, ptr @rna_RandomActuator_property, i32 -1, ptr @.str.331, i32 3, ptr @.str.332, ptr @.str.333, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RandomActuator_distribution_get, ptr @RandomActuator_distribution_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_RandomActuator_distribution_items, i32 10, i32 0 }, align 8
@.str.330 = private unnamed_addr constant [41 x i8] c"Assign the random value to this property\00", align 1
@rna_RandomActuator_use_always_true = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RandomActuator_chance, ptr @rna_RandomActuator_distribution, i32 -1, ptr @.str.334, i32 3, ptr @.str.335, ptr @.str.336, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RandomActuator_use_always_true_get, ptr @RandomActuator_use_always_true_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.331 = private unnamed_addr constant [13 x i8] c"distribution\00", align 1
@.str.332 = private unnamed_addr constant [13 x i8] c"Distribution\00", align 1
@.str.333 = private unnamed_addr constant [32 x i8] c"Choose the type of distribution\00", align 1
@rna_RandomActuator_distribution_items = internal global [11 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.673, i32 0, ptr @.str.674, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.675, i32 0, ptr @.str.676, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.677, i32 0, ptr @.str.678, ptr @.str.9 }, %struct.EnumPropertyItem { i32 3, ptr @.str.679, i32 0, ptr @.str.680, ptr @.str.9 }, %struct.EnumPropertyItem { i32 4, ptr @.str.681, i32 0, ptr @.str.682, ptr @.str.9 }, %struct.EnumPropertyItem { i32 5, ptr @.str.683, i32 0, ptr @.str.684, ptr @.str.9 }, %struct.EnumPropertyItem { i32 6, ptr @.str.685, i32 0, ptr @.str.686, ptr @.str.9 }, %struct.EnumPropertyItem { i32 7, ptr @.str.687, i32 0, ptr @.str.688, ptr @.str.9 }, %struct.EnumPropertyItem { i32 8, ptr @.str.689, i32 0, ptr @.str.690, ptr @.str.9 }, %struct.EnumPropertyItem { i32 9, ptr @.str.691, i32 0, ptr @.str.692, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_RandomActuator_chance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RandomActuator_int_value, ptr @rna_RandomActuator_use_always_true, i32 -1, ptr @.str.337, i32 8195, ptr @.str.338, ptr @.str.339, i32 0, ptr @.str.3, i32 2, i32 14, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @RandomActuator_chance_get, ptr @RandomActuator_chance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.334 = private unnamed_addr constant [16 x i8] c"use_always_true\00", align 1
@.str.335 = private unnamed_addr constant [12 x i8] c"Always True\00", align 1
@.str.336 = private unnamed_addr constant [28 x i8] c"Always false or always true\00", align 1
@rna_RandomActuator_int_value = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_RandomActuator_int_min, ptr @rna_RandomActuator_chance, i32 -1, ptr @.str.340, i32 8195, ptr @.str.210, ptr @.str.341, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 8, i32 0, ptr null, ptr null }, ptr @RandomActuator_int_value_get, ptr @RandomActuator_int_value_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -1000, i32 1000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.337 = private unnamed_addr constant [7 x i8] c"chance\00", align 1
@.str.338 = private unnamed_addr constant [7 x i8] c"Chance\00", align 1
@.str.339 = private unnamed_addr constant [64 x i8] c"Pick a number between 0 and 1, success if it's below this value\00", align 1
@rna_RandomActuator_int_min = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_RandomActuator_int_max, ptr @rna_RandomActuator_int_value, i32 -1, ptr @.str.342, i32 8195, ptr @.str.100, ptr @.str.343, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 8, i32 0, ptr null, ptr null }, ptr @RandomActuator_int_min_get, ptr @RandomActuator_int_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -1000, i32 1000, i32 -1000, i32 1000, i32 1, i32 0, ptr null }, align 8
@.str.340 = private unnamed_addr constant [10 x i8] c"int_value\00", align 1
@.str.341 = private unnamed_addr constant [26 x i8] c"Always return this number\00", align 1
@rna_RandomActuator_int_max = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_RandomActuator_int_mean, ptr @rna_RandomActuator_int_min, i32 -1, ptr @.str.344, i32 8195, ptr @.str.97, ptr @.str.345, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 12, i32 0, ptr null, ptr null }, ptr @RandomActuator_int_max_get, ptr @RandomActuator_int_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -1000, i32 1000, i32 -1000, i32 1000, i32 1, i32 0, ptr null }, align 8
@.str.342 = private unnamed_addr constant [8 x i8] c"int_min\00", align 1
@.str.343 = private unnamed_addr constant [58 x i8] c"Choose a number from a range: lower boundary of the range\00", align 1
@rna_RandomActuator_int_mean = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RandomActuator_float_value, ptr @rna_RandomActuator_int_max, i32 -1, ptr @.str.346, i32 8195, ptr @.str.347, ptr @.str.348, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @RandomActuator_int_mean_get, ptr @RandomActuator_int_mean_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+02, float 0x3F847AE140000000, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.344 = private unnamed_addr constant [8 x i8] c"int_max\00", align 1
@.str.345 = private unnamed_addr constant [58 x i8] c"Choose a number from a range: upper boundary of the range\00", align 1
@rna_RandomActuator_float_value = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RandomActuator_float_min, ptr @rna_RandomActuator_int_mean, i32 -1, ptr @.str.349, i32 8195, ptr @.str.210, ptr @.str.341, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @RandomActuator_float_value_get, ptr @RandomActuator_float_value_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.346 = private unnamed_addr constant [9 x i8] c"int_mean\00", align 1
@.str.347 = private unnamed_addr constant [5 x i8] c"Mean\00", align 1
@.str.348 = private unnamed_addr constant [40 x i8] c"Expected mean value of the distribution\00", align 1
@rna_RandomActuator_float_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RandomActuator_float_max, ptr @rna_RandomActuator_float_value, i32 -1, ptr @.str.350, i32 8195, ptr @.str.100, ptr @.str.343, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @RandomActuator_float_min_get, ptr @RandomActuator_float_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.349 = private unnamed_addr constant [12 x i8] c"float_value\00", align 1
@rna_RandomActuator_float_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RandomActuator_float_mean, ptr @rna_RandomActuator_float_min, i32 -1, ptr @.str.351, i32 8195, ptr @.str.97, ptr @.str.345, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @RandomActuator_float_max_get, ptr @RandomActuator_float_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.350 = private unnamed_addr constant [10 x i8] c"float_min\00", align 1
@rna_RandomActuator_float_mean = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RandomActuator_standard_derivation, ptr @rna_RandomActuator_float_max, i32 -1, ptr @.str.352, i32 8195, ptr @.str.347, ptr @.str.353, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @RandomActuator_float_mean_get, ptr @RandomActuator_float_mean_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.351 = private unnamed_addr constant [10 x i8] c"float_max\00", align 1
@rna_RandomActuator_standard_derivation = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RandomActuator_half_life_time, ptr @rna_RandomActuator_float_mean, i32 -1, ptr @.str.354, i32 8195, ptr @.str.355, ptr @.str.356, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @RandomActuator_standard_derivation_get, ptr @RandomActuator_standard_derivation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.352 = private unnamed_addr constant [11 x i8] c"float_mean\00", align 1
@.str.353 = private unnamed_addr constant [48 x i8] c"A normal distribution: mean of the distribution\00", align 1
@rna_RandomActuator_half_life_time = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_RandomActuator_standard_derivation, i32 -1, ptr @.str.357, i32 8195, ptr @.str.358, ptr @.str.359, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @RandomActuator_half_life_time_get, ptr @RandomActuator_half_life_time_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.354 = private unnamed_addr constant [20 x i8] c"standard_derivation\00", align 1
@.str.355 = private unnamed_addr constant [3 x i8] c"SD\00", align 1
@.str.356 = private unnamed_addr constant [62 x i8] c"A normal distribution: standard deviation of the distribution\00", align 1
@.str.357 = private unnamed_addr constant [15 x i8] c"half_life_time\00", align 1
@.str.358 = private unnamed_addr constant [15 x i8] c"Half-Life Time\00", align 1
@.str.359 = private unnamed_addr constant [29 x i8] c"Negative exponential dropoff\00", align 1
@RNA_MessageActuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_GameActuator, ptr @RNA_RandomActuator, ptr null, %struct.ListBase { ptr @rna_MessageActuator_to_property, ptr @rna_MessageActuator_body_property } }, ptr @.str.376, ptr null, ptr null, i32 4, ptr @.str.377, ptr @.str.9, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr @RNA_Actuator, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.360 = private unnamed_addr constant [15 x i8] c"RandomActuator\00", align 1
@.str.361 = private unnamed_addr constant [16 x i8] c"Random Actuator\00", align 1
@rna_MessageActuator_subject = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_MessageActuator_body_type, ptr @rna_MessageActuator_to_property, i32 -1, ptr @.str.365, i32 262145, ptr @.str.366, ptr @.str.367, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MessageActuator_subject_get, ptr @MessageActuator_subject_length, ptr @MessageActuator_subject_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.9 }, align 8
@.str.362 = private unnamed_addr constant [12 x i8] c"to_property\00", align 1
@.str.363 = private unnamed_addr constant [3 x i8] c"To\00", align 1
@.str.364 = private unnamed_addr constant [77 x i8] c"Optional, send message to objects with this name only, or empty to broadcast\00", align 1
@rna_MessageActuator_to_property = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_MessageActuator_subject, ptr null, i32 -1, ptr @.str.362, i32 262145, ptr @.str.363, ptr @.str.364, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MessageActuator_to_property_get, ptr @MessageActuator_to_property_length, ptr @MessageActuator_to_property_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.9 }, align 8
@rna_MessageActuator_body_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MessageActuator_body_message, ptr @rna_MessageActuator_subject, i32 -1, ptr @.str.368, i32 3, ptr @.str.369, ptr @.str.370, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MessageActuator_body_type_get, ptr @MessageActuator_body_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MessageActuator_body_type_items, i32 2, i32 0 }, align 8
@.str.365 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.366 = private unnamed_addr constant [8 x i8] c"Subject\00", align 1
@.str.367 = private unnamed_addr constant [60 x i8] c"Optional, message subject (this is what can be filtered on)\00", align 1
@rna_MessageActuator_body_message = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_MessageActuator_body_property, ptr @rna_MessageActuator_body_type, i32 -1, ptr @.str.371, i32 262145, ptr @.str.369, ptr @.str.372, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MessageActuator_body_message_get, ptr @MessageActuator_body_message_length, ptr @MessageActuator_body_message_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.9 }, align 8
@.str.368 = private unnamed_addr constant [10 x i8] c"body_type\00", align 1
@.str.369 = private unnamed_addr constant [5 x i8] c"Body\00", align 1
@.str.370 = private unnamed_addr constant [51 x i8] c"Toggle message type: either Text or a PropertyName\00", align 1
@rna_MessageActuator_body_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.693, i32 0, ptr @.str.694, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.543, i32 0, ptr @.str.39, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MessageActuator_body_property = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MessageActuator_body_message, i32 -1, ptr @.str.373, i32 262145, ptr @.str.374, ptr @.str.375, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MessageActuator_body_property_get, ptr @MessageActuator_body_property_length, ptr @MessageActuator_body_property_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.9 }, align 8
@.str.371 = private unnamed_addr constant [13 x i8] c"body_message\00", align 1
@.str.372 = private unnamed_addr constant [28 x i8] c"Optional, message body Text\00", align 1
@.str.373 = private unnamed_addr constant [14 x i8] c"body_property\00", align 1
@.str.374 = private unnamed_addr constant [10 x i8] c"Prop Name\00", align 1
@.str.375 = private unnamed_addr constant [51 x i8] c"The message body will be set by the Property Value\00", align 1
@RNA_GameActuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_VisibilityActuator, ptr @RNA_MessageActuator, ptr null, %struct.ListBase { ptr @rna_GameActuator_mode, ptr @rna_GameActuator_filename } }, ptr @.str.382, ptr null, ptr null, i32 4, ptr @.str.383, ptr @.str.9, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr @RNA_Actuator, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.376 = private unnamed_addr constant [16 x i8] c"MessageActuator\00", align 1
@.str.377 = private unnamed_addr constant [17 x i8] c"Message Actuator\00", align 1
@rna_GameActuator_filename = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_GameActuator_mode, i32 -1, ptr @.str.379, i32 262145, ptr @.str.380, ptr @.str.381, i32 0, ptr @.str.3, i32 3, i32 1, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameActuator_filename_get, ptr @GameActuator_filename_length, ptr @GameActuator_filename_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.9 }, align 8
@.str.378 = private unnamed_addr constant [5 x i8] c"Game\00", align 1
@rna_GameActuator_mode_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.695, i32 0, ptr @.str.696, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.658, i32 0, ptr @.str.697, ptr @.str.9 }, %struct.EnumPropertyItem { i32 3, ptr @.str.698, i32 0, ptr @.str.699, ptr @.str.9 }, %struct.EnumPropertyItem { i32 4, ptr @.str.700, i32 0, ptr @.str.701, ptr @.str.9 }, %struct.EnumPropertyItem { i32 5, ptr @.str.702, i32 0, ptr @.str.703, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_GameActuator_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_GameActuator_filename, ptr null, i32 -1, ptr @.str.78, i32 3, ptr @.str.378, ptr @.str.9, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameActuator_mode_get, ptr @GameActuator_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_GameActuator_mode_items, i32 5, i32 0 }, align 8
@.str.379 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.380 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@.str.381 = private unnamed_addr constant [88 x i8] c"Load this blend file, use the \22//\22 prefix for a path relative to the current blend file\00", align 1
@RNA_VisibilityActuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Filter2DActuator, ptr @RNA_GameActuator, ptr null, %struct.ListBase { ptr @rna_VisibilityActuator_use_visible, ptr @rna_VisibilityActuator_apply_to_children } }, ptr @.str.392, ptr null, ptr null, i32 4, ptr @.str.393, ptr @.str.394, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr @RNA_Actuator, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.382 = private unnamed_addr constant [13 x i8] c"GameActuator\00", align 1
@.str.383 = private unnamed_addr constant [14 x i8] c"Game Actuator\00", align 1
@rna_VisibilityActuator_use_occlusion = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_VisibilityActuator_apply_to_children, ptr @rna_VisibilityActuator_use_visible, i32 -1, ptr @.str.387, i32 3, ptr @.str.388, ptr @.str.389, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VisibilityActuator_use_occlusion_get, ptr @VisibilityActuator_use_occlusion_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.384 = private unnamed_addr constant [12 x i8] c"use_visible\00", align 1
@.str.385 = private unnamed_addr constant [8 x i8] c"Visible\00", align 1
@.str.386 = private unnamed_addr constant [98 x i8] c"Set the objects visible (initialized from the object render restriction toggle in physics button)\00", align 1
@rna_VisibilityActuator_use_visible = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_VisibilityActuator_use_occlusion, ptr null, i32 -1, ptr @.str.384, i32 3, ptr @.str.385, ptr @.str.386, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VisibilityActuator_use_visible_get, ptr @VisibilityActuator_use_visible_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_VisibilityActuator_apply_to_children = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_VisibilityActuator_use_occlusion, i32 -1, ptr @.str.69, i32 3, ptr @.str.390, ptr @.str.391, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VisibilityActuator_apply_to_children_get, ptr @VisibilityActuator_apply_to_children_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.387 = private unnamed_addr constant [14 x i8] c"use_occlusion\00", align 1
@.str.388 = private unnamed_addr constant [10 x i8] c"Occlusion\00", align 1
@.str.389 = private unnamed_addr constant [97 x i8] c"Set the object to occlude objects behind it (initialized from the object type in physics button)\00", align 1
@.str.390 = private unnamed_addr constant [9 x i8] c"Children\00", align 1
@.str.391 = private unnamed_addr constant [81 x i8] c"Set all the children of this object to the same visibility/occlusion recursively\00", align 1
@RNA_Filter2DActuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ParentActuator, ptr @RNA_VisibilityActuator, ptr null, %struct.ListBase { ptr @rna_Filter2DActuator_mode, ptr @rna_Filter2DActuator_use_motion_blur } }, ptr @.str.406, ptr null, ptr null, i32 4, ptr @.str.407, ptr @.str.408, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr @RNA_Actuator, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.392 = private unnamed_addr constant [19 x i8] c"VisibilityActuator\00", align 1
@.str.393 = private unnamed_addr constant [20 x i8] c"Visibility Actuator\00", align 1
@.str.394 = private unnamed_addr constant [55 x i8] c"Actuator to set visibility and occlusion of the object\00", align 1
@rna_Filter2DActuator_glsl_shader = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Filter2DActuator_filter_pass, ptr @rna_Filter2DActuator_mode, i32 -1, ptr @.str.396, i32 8388609, ptr @.str.397, ptr @.str.9, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Filter2DActuator_glsl_shader_get, ptr @Filter2DActuator_glsl_shader_set, ptr null, ptr null, ptr @RNA_Text }, align 8
@.str.395 = private unnamed_addr constant [15 x i8] c"Filter 2D Type\00", align 1
@rna_Filter2DActuator_mode_items = internal global [16 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -2, ptr @.str.704, i32 0, ptr @.str.705, ptr @.str.9 }, %struct.EnumPropertyItem { i32 -1, ptr @.str.706, i32 0, ptr @.str.707, ptr @.str.9 }, %struct.EnumPropertyItem { i32 0, ptr @.str.667, i32 0, ptr @.str.708, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.709, i32 0, ptr @.str.710, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.711, i32 0, ptr @.str.712, ptr @.str.9 }, %struct.EnumPropertyItem { i32 3, ptr @.str.713, i32 0, ptr @.str.714, ptr @.str.9 }, %struct.EnumPropertyItem { i32 4, ptr @.str.715, i32 0, ptr @.str.716, ptr @.str.9 }, %struct.EnumPropertyItem { i32 5, ptr @.str.717, i32 0, ptr @.str.718, ptr @.str.9 }, %struct.EnumPropertyItem { i32 6, ptr @.str.719, i32 0, ptr @.str.720, ptr @.str.9 }, %struct.EnumPropertyItem { i32 7, ptr @.str.721, i32 0, ptr @.str.722, ptr @.str.9 }, %struct.EnumPropertyItem { i32 8, ptr @.str.723, i32 0, ptr @.str.724, ptr @.str.9 }, %struct.EnumPropertyItem { i32 9, ptr @.str.725, i32 0, ptr @.str.726, ptr @.str.9 }, %struct.EnumPropertyItem { i32 10, ptr @.str.727, i32 0, ptr @.str.728, ptr @.str.9 }, %struct.EnumPropertyItem { i32 11, ptr @.str.729, i32 0, ptr @.str.730, ptr @.str.9 }, %struct.EnumPropertyItem { i32 12, ptr @.str.731, i32 0, ptr @.str.732, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Filter2DActuator_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Filter2DActuator_glsl_shader, ptr null, i32 -1, ptr @.str.78, i32 3, ptr @.str.395, ptr @.str.9, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Filter2DActuator_mode_get, ptr @Filter2DActuator_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Filter2DActuator_mode_items, i32 15, i32 0 }, align 8
@rna_Filter2DActuator_filter_pass = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Filter2DActuator_motion_blur_factor, ptr @rna_Filter2DActuator_glsl_shader, i32 -1, ptr @.str.398, i32 8195, ptr @.str.399, ptr @.str.400, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 8, i32 0, ptr null, ptr null }, ptr @Filter2DActuator_filter_pass_get, ptr @Filter2DActuator_filter_pass_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 99, i32 0, i32 99, i32 1, i32 0, ptr null }, align 8
@.str.396 = private unnamed_addr constant [12 x i8] c"glsl_shader\00", align 1
@.str.397 = private unnamed_addr constant [7 x i8] c"Script\00", align 1
@rna_Filter2DActuator_motion_blur_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Filter2DActuator_use_motion_blur, ptr @rna_Filter2DActuator_filter_pass, i32 -1, ptr @.str.401, i32 8195, ptr @.str.210, ptr @.str.402, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @Filter2DActuator_motion_blur_factor_get, ptr @Filter2DActuator_motion_blur_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.398 = private unnamed_addr constant [12 x i8] c"filter_pass\00", align 1
@.str.399 = private unnamed_addr constant [12 x i8] c"Pass Number\00", align 1
@.str.400 = private unnamed_addr constant [17 x i8] c"Set filter order\00", align 1
@rna_Filter2DActuator_use_motion_blur = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Filter2DActuator_motion_blur_factor, i32 -1, ptr @.str.403, i32 3, ptr @.str.404, ptr @.str.405, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Filter2DActuator_use_motion_blur_get, ptr @Filter2DActuator_use_motion_blur_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.401 = private unnamed_addr constant [19 x i8] c"motion_blur_factor\00", align 1
@.str.402 = private unnamed_addr constant [19 x i8] c"Motion blur factor\00", align 1
@.str.403 = private unnamed_addr constant [16 x i8] c"use_motion_blur\00", align 1
@.str.404 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.405 = private unnamed_addr constant [27 x i8] c"Enable/Disable Motion Blur\00", align 1
@RNA_ParentActuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_StateActuator, ptr @RNA_Filter2DActuator, ptr null, %struct.ListBase { ptr @rna_ParentActuator_mode, ptr @rna_ParentActuator_use_ghost } }, ptr @.str.417, ptr null, ptr null, i32 4, ptr @.str.418, ptr @.str.9, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr @RNA_Actuator, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.406 = private unnamed_addr constant [17 x i8] c"Filter2DActuator\00", align 1
@.str.407 = private unnamed_addr constant [19 x i8] c"Filter 2D Actuator\00", align 1
@.str.408 = private unnamed_addr constant [41 x i8] c"Actuator to apply screen graphic effects\00", align 1
@rna_ParentActuator_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ParentActuator_use_compound, ptr @rna_ParentActuator_mode, i32 -1, ptr @.str.155, i32 8388609, ptr @.str.409, ptr @.str.410, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParentActuator_object_get, ptr @ParentActuator_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_ParentActuator_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.733, i32 0, ptr @.str.734, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.735, i32 0, ptr @.str.736, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ParentActuator_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ParentActuator_object, ptr null, i32 -1, ptr @.str.78, i32 3, ptr @.str.323, ptr @.str.9, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParentActuator_mode_get, ptr @ParentActuator_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ParentActuator_mode_items, i32 2, i32 0 }, align 8
@rna_ParentActuator_use_compound = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParentActuator_use_ghost, ptr @rna_ParentActuator_object, i32 -1, ptr @.str.411, i32 3, ptr @.str.412, ptr @.str.413, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParentActuator_use_compound_get, ptr @ParentActuator_use_compound_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.409 = private unnamed_addr constant [14 x i8] c"Parent Object\00", align 1
@.str.410 = private unnamed_addr constant [26 x i8] c"Set this object as parent\00", align 1
@rna_ParentActuator_use_ghost = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ParentActuator_use_compound, i32 -1, ptr @.str.414, i32 3, ptr @.str.415, ptr @.str.416, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParentActuator_use_ghost_get, ptr @ParentActuator_use_ghost_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.411 = private unnamed_addr constant [13 x i8] c"use_compound\00", align 1
@.str.412 = private unnamed_addr constant [9 x i8] c"Compound\00", align 1
@.str.413 = private unnamed_addr constant [89 x i8] c"Add this object shape to the parent shape (only if the parent shape is already compound)\00", align 1
@.str.414 = private unnamed_addr constant [10 x i8] c"use_ghost\00", align 1
@.str.415 = private unnamed_addr constant [6 x i8] c"Ghost\00", align 1
@.str.416 = private unnamed_addr constant [38 x i8] c"Make this object ghost while parented\00", align 1
@RNA_StateActuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ArmatureActuator, ptr @RNA_ParentActuator, ptr null, %struct.ListBase { ptr @rna_StateActuator_operation, ptr @rna_StateActuator_states } }, ptr @.str.424, ptr null, ptr null, i32 4, ptr @.str.425, ptr @.str.426, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr @RNA_Actuator, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.417 = private unnamed_addr constant [15 x i8] c"ParentActuator\00", align 1
@.str.418 = private unnamed_addr constant [16 x i8] c"Parent Actuator\00", align 1
@rna_StateActuator_states = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_StateActuator_operation, i32 -1, ptr @.str.422, i32 3, ptr @.str.423, ptr @.str.9, i32 0, ptr @.str.3, i32 0, i32 41, ptr null, i32 1, [3 x i32] [i32 30, i32 0, i32 0], i32 30, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @StateActuator_states_get, ptr @StateActuator_states_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_StateActuator_states_default }, align 8
@.str.419 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.420 = private unnamed_addr constant [10 x i8] c"Operation\00", align 1
@.str.421 = private unnamed_addr constant [46 x i8] c"Select the bit operation on object state mask\00", align 1
@rna_StateActuator_operation_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.660, i32 0, ptr @.str.737, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.565, i32 0, ptr @.str.738, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.667, i32 0, ptr @.str.739, ptr @.str.9 }, %struct.EnumPropertyItem { i32 3, ptr @.str.740, i32 0, ptr @.str.741, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_StateActuator_operation = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_StateActuator_states, ptr null, i32 -1, ptr @.str.419, i32 3, ptr @.str.420, ptr @.str.421, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @StateActuator_operation_get, ptr @StateActuator_operation_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_StateActuator_operation_items, i32 4, i32 0 }, align 8
@.str.422 = private unnamed_addr constant [7 x i8] c"states\00", align 1
@.str.423 = private unnamed_addr constant [6 x i8] c"State\00", align 1
@rna_StateActuator_states_default = internal global [30 x i32] zeroinitializer, align 16
@RNA_ArmatureActuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SteeringActuator, ptr @RNA_StateActuator, ptr null, %struct.ListBase { ptr @rna_ArmatureActuator_mode, ptr @rna_ArmatureActuator_influence } }, ptr @.str.446, ptr null, ptr null, i32 4, ptr @.str.447, ptr @.str.9, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr @RNA_Actuator, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.424 = private unnamed_addr constant [14 x i8] c"StateActuator\00", align 1
@.str.425 = private unnamed_addr constant [15 x i8] c"State Actuator\00", align 1
@.str.426 = private unnamed_addr constant [26 x i8] c"Actuator to handle states\00", align 1
@rna_ArmatureActuator_bone = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ArmatureActuator_constraint, ptr @rna_ArmatureActuator_mode, i32 -1, ptr @.str.428, i32 262145, ptr @.str.429, ptr @.str.430, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Actuator_Armature_update, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArmatureActuator_bone_get, ptr @ArmatureActuator_bone_length, ptr @ArmatureActuator_bone_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.9 }, align 8
@.str.427 = private unnamed_addr constant [16 x i8] c"Constraint Type\00", align 1
@rna_ArmatureActuator_mode_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.742, i32 0, ptr @.str.743, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.704, i32 0, ptr @.str.404, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.706, i32 0, ptr @.str.744, ptr @.str.9 }, %struct.EnumPropertyItem { i32 3, ptr @.str.745, i32 0, ptr @.str.746, ptr @.str.9 }, %struct.EnumPropertyItem { i32 4, ptr @.str.747, i32 0, ptr @.str.748, ptr @.str.9 }, %struct.EnumPropertyItem { i32 5, ptr @.str.749, i32 0, ptr @.str.750, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ArmatureActuator_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ArmatureActuator_bone, ptr null, i32 -1, ptr @.str.78, i32 3, ptr @.str.427, ptr @.str.9, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArmatureActuator_mode_get, ptr @ArmatureActuator_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ArmatureActuator_mode_items, i32 6, i32 0 }, align 8
@rna_ArmatureActuator_constraint = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ArmatureActuator_target, ptr @rna_ArmatureActuator_bone, i32 -1, ptr @.str.431, i32 262145, ptr @.str.432, ptr @.str.433, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Actuator_Armature_update, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArmatureActuator_constraint_get, ptr @ArmatureActuator_constraint_length, ptr @ArmatureActuator_constraint_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.9 }, align 8
@.str.428 = private unnamed_addr constant [5 x i8] c"bone\00", align 1
@.str.429 = private unnamed_addr constant [5 x i8] c"Bone\00", align 1
@.str.430 = private unnamed_addr constant [40 x i8] c"Bone on which the constraint is defined\00", align 1
@rna_ArmatureActuator_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ArmatureActuator_secondary_target, ptr @rna_ArmatureActuator_constraint, i32 -1, ptr @.str.434, i32 8388609, ptr @.str.435, ptr @.str.436, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArmatureActuator_target_get, ptr @ArmatureActuator_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.431 = private unnamed_addr constant [11 x i8] c"constraint\00", align 1
@.str.432 = private unnamed_addr constant [11 x i8] c"Constraint\00", align 1
@.str.433 = private unnamed_addr constant [34 x i8] c"Name of the constraint to control\00", align 1
@rna_ArmatureActuator_secondary_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ArmatureActuator_weight, ptr @rna_ArmatureActuator_target, i32 -1, ptr @.str.437, i32 8388609, ptr @.str.438, ptr @.str.439, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArmatureActuator_secondary_target_get, ptr @ArmatureActuator_secondary_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.434 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.435 = private unnamed_addr constant [7 x i8] c"Target\00", align 1
@.str.436 = private unnamed_addr constant [48 x i8] c"Set this object as the target of the constraint\00", align 1
@rna_ArmatureActuator_weight = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ArmatureActuator_influence, ptr @rna_ArmatureActuator_secondary_target, i32 -1, ptr @.str.440, i32 8195, ptr @.str.441, ptr @.str.442, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 132, i32 4, ptr null, ptr null }, ptr @ArmatureActuator_weight_get, ptr @ArmatureActuator_weight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.437 = private unnamed_addr constant [17 x i8] c"secondary_target\00", align 1
@.str.438 = private unnamed_addr constant [17 x i8] c"Secondary Target\00", align 1
@.str.439 = private unnamed_addr constant [95 x i8] c"Set this object as the secondary target of the constraint (only IK polar target at the moment)\00", align 1
@rna_ArmatureActuator_influence = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ArmatureActuator_weight, i32 -1, ptr @.str.443, i32 8195, ptr @.str.444, ptr @.str.445, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 136, i32 4, ptr null, ptr null }, ptr @ArmatureActuator_influence_get, ptr @ArmatureActuator_influence_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.440 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.441 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@.str.442 = private unnamed_addr constant [26 x i8] c"Weight of this constraint\00", align 1
@.str.443 = private unnamed_addr constant [10 x i8] c"influence\00", align 1
@.str.444 = private unnamed_addr constant [10 x i8] c"Influence\00", align 1
@.str.445 = private unnamed_addr constant [29 x i8] c"Influence of this constraint\00", align 1
@RNA_SteeringActuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MouseActuator, ptr @RNA_ArmatureActuator, ptr null, %struct.ListBase { ptr @rna_SteeringActuator_mode, ptr @rna_SteeringActuator_normal_up } }, ptr @.str.481, ptr null, ptr null, i32 4, ptr @.str.482, ptr @.str.9, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr @RNA_Actuator, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.446 = private unnamed_addr constant [17 x i8] c"ArmatureActuator\00", align 1
@.str.447 = private unnamed_addr constant [18 x i8] c"Armature Actuator\00", align 1
@rna_SteeringActuator_velocity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SteeringActuator_acceleration, ptr @rna_SteeringActuator_mode, i32 -1, ptr @.str.449, i32 8195, ptr @.str.450, ptr @.str.451, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @SteeringActuator_velocity_get, ptr @SteeringActuator_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.448 = private unnamed_addr constant [9 x i8] c"Behavior\00", align 1
@rna_SteeringActuator_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.751, i32 0, ptr @.str.752, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.753, i32 0, ptr @.str.754, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.755, i32 0, ptr @.str.756, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SteeringActuator_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SteeringActuator_velocity, ptr null, i32 -1, ptr @.str.78, i32 3, ptr @.str.448, ptr @.str.9, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SteeringActuator_mode_get, ptr @SteeringActuator_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SteeringActuator_mode_items, i32 3, i32 0 }, align 8
@rna_SteeringActuator_acceleration = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SteeringActuator_turn_speed, ptr @rna_SteeringActuator_velocity, i32 -1, ptr @.str.452, i32 8195, ptr @.str.453, ptr @.str.454, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @SteeringActuator_acceleration_get, ptr @SteeringActuator_acceleration_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.449 = private unnamed_addr constant [9 x i8] c"velocity\00", align 1
@.str.450 = private unnamed_addr constant [9 x i8] c"Velocity\00", align 1
@.str.451 = private unnamed_addr constant [19 x i8] c"Velocity magnitude\00", align 1
@rna_SteeringActuator_turn_speed = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SteeringActuator_distance, ptr @rna_SteeringActuator_acceleration, i32 -1, ptr @.str.455, i32 8195, ptr @.str.456, ptr @.str.457, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 24, i32 4, ptr null, ptr null }, ptr @SteeringActuator_turn_speed_get, ptr @SteeringActuator_turn_speed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 7.200000e+02, float 0.000000e+00, float 7.200000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.452 = private unnamed_addr constant [13 x i8] c"acceleration\00", align 1
@.str.453 = private unnamed_addr constant [13 x i8] c"Acceleration\00", align 1
@.str.454 = private unnamed_addr constant [17 x i8] c"Max acceleration\00", align 1
@rna_SteeringActuator_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SteeringActuator_target, ptr @rna_SteeringActuator_turn_speed, i32 -1, ptr @.str.235, i32 8195, ptr @.str.458, ptr @.str.459, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @SteeringActuator_distance_get, ptr @SteeringActuator_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.455 = private unnamed_addr constant [11 x i8] c"turn_speed\00", align 1
@.str.456 = private unnamed_addr constant [11 x i8] c"Turn Speed\00", align 1
@.str.457 = private unnamed_addr constant [15 x i8] c"Max turn speed\00", align 1
@rna_SteeringActuator_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SteeringActuator_self_terminated, ptr @rna_SteeringActuator_distance, i32 -1, ptr @.str.434, i32 8388609, ptr @.str.460, ptr @.str.461, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SteeringActuator_target_get, ptr @SteeringActuator_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.458 = private unnamed_addr constant [5 x i8] c"Dist\00", align 1
@.str.459 = private unnamed_addr constant [15 x i8] c"Relax distance\00", align 1
@rna_SteeringActuator_self_terminated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SteeringActuator_show_visualization, ptr @rna_SteeringActuator_target, i32 -1, ptr @.str.462, i32 3, ptr @.str.463, ptr @.str.464, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SteeringActuator_self_terminated_get, ptr @SteeringActuator_self_terminated_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.460 = private unnamed_addr constant [14 x i8] c"Target Object\00", align 1
@.str.461 = private unnamed_addr constant [14 x i8] c"Target object\00", align 1
@rna_SteeringActuator_show_visualization = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SteeringActuator_update_period, ptr @rna_SteeringActuator_self_terminated, i32 -1, ptr @.str.465, i32 3, ptr @.str.466, ptr @.str.467, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SteeringActuator_show_visualization_get, ptr @SteeringActuator_show_visualization_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.462 = private unnamed_addr constant [16 x i8] c"self_terminated\00", align 1
@.str.463 = private unnamed_addr constant [16 x i8] c"Self Terminated\00", align 1
@.str.464 = private unnamed_addr constant [33 x i8] c"Terminate when target is reached\00", align 1
@rna_SteeringActuator_update_period = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SteeringActuator_navmesh, ptr @rna_SteeringActuator_show_visualization, i32 -1, ptr @.str.468, i32 8195, ptr @.str.469, ptr @.str.470, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 28, i32 0, ptr null, ptr null }, ptr @SteeringActuator_update_period_get, ptr @SteeringActuator_update_period_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -1, i32 100000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.465 = private unnamed_addr constant [19 x i8] c"show_visualization\00", align 1
@.str.466 = private unnamed_addr constant [10 x i8] c"Visualize\00", align 1
@.str.467 = private unnamed_addr constant [48 x i8] c"Enable debug visualization for 'Path following'\00", align 1
@rna_SteeringActuator_navmesh = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SteeringActuator_facing, ptr @rna_SteeringActuator_update_period, i32 -1, ptr @.str.471, i32 8388609, ptr @.str.472, ptr @.str.473, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SteeringActuator_navmesh_get, ptr @SteeringActuator_navmesh_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.468 = private unnamed_addr constant [14 x i8] c"update_period\00", align 1
@.str.469 = private unnamed_addr constant [14 x i8] c"Update period\00", align 1
@.str.470 = private unnamed_addr constant [19 x i8] c"Path update period\00", align 1
@rna_SteeringActuator_facing = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SteeringActuator_facing_axis, ptr @rna_SteeringActuator_navmesh, i32 -1, ptr @.str.474, i32 3, ptr @.str.475, ptr @.str.476, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SteeringActuator_facing_get, ptr @SteeringActuator_facing_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.471 = private unnamed_addr constant [8 x i8] c"navmesh\00", align 1
@.str.472 = private unnamed_addr constant [23 x i8] c"Navigation Mesh Object\00", align 1
@.str.473 = private unnamed_addr constant [16 x i8] c"Navigation mesh\00", align 1
@rna_SteeringActuator_facing_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SteeringActuator_normal_up, ptr @rna_SteeringActuator_facing, i32 -1, ptr @.str.477, i32 3, ptr @.str.165, ptr @.str.478, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SteeringActuator_facing_axis_get, ptr @SteeringActuator_facing_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SteeringActuator_facing_axis_items, i32 6, i32 1 }, align 8
@.str.474 = private unnamed_addr constant [7 x i8] c"facing\00", align 1
@.str.475 = private unnamed_addr constant [7 x i8] c"Facing\00", align 1
@.str.476 = private unnamed_addr constant [24 x i8] c"Enable automatic facing\00", align 1
@rna_SteeringActuator_normal_up = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SteeringActuator_facing_axis, i32 -1, ptr @.str.479, i32 3, ptr @.str.268, ptr @.str.480, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SteeringActuator_normal_up_get, ptr @SteeringActuator_normal_up_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.477 = private unnamed_addr constant [12 x i8] c"facing_axis\00", align 1
@.str.478 = private unnamed_addr constant [26 x i8] c"Axis for automatic facing\00", align 1
@rna_SteeringActuator_facing_axis_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.142, i32 0, ptr @.str.142, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.145, i32 0, ptr @.str.145, ptr @.str.9 }, %struct.EnumPropertyItem { i32 3, ptr @.str.148, i32 0, ptr @.str.148, ptr @.str.9 }, %struct.EnumPropertyItem { i32 4, ptr @.str.578, i32 0, ptr @.str.579, ptr @.str.9 }, %struct.EnumPropertyItem { i32 5, ptr @.str.581, i32 0, ptr @.str.582, ptr @.str.9 }, %struct.EnumPropertyItem { i32 6, ptr @.str.757, i32 0, ptr @.str.758, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.479 = private unnamed_addr constant [10 x i8] c"normal_up\00", align 1
@.str.480 = private unnamed_addr constant [45 x i8] c"Use normal of the navmesh to set \22UP\22 vector\00", align 1
@RNA_MouseActuator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Armature, ptr @RNA_SteeringActuator, ptr null, %struct.ListBase { ptr @rna_MouseActuator_mode, ptr @rna_MouseActuator_max_y } }, ptr @.str.523, ptr null, ptr null, i32 4, ptr @.str.524, ptr @.str.9, ptr @.str.3, i32 17, ptr @rna_Actuator_name, ptr @rna_Actuator_rna_properties, ptr @RNA_Actuator, ptr null, ptr @rna_Actuator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.481 = private unnamed_addr constant [17 x i8] c"SteeringActuator\00", align 1
@.str.482 = private unnamed_addr constant [18 x i8] c"Steering Actuator\00", align 1
@rna_MouseActuator_visible = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MouseActuator_use_axis_x, ptr @rna_MouseActuator_mode, i32 -1, ptr @.str.483, i32 3, ptr @.str.385, ptr @.str.484, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MouseActuator_visible_get, ptr @MouseActuator_visible_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MouseActuator_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.549, i32 0, ptr @.str.550, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.759, i32 0, ptr @.str.760, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MouseActuator_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MouseActuator_visible, ptr null, i32 -1, ptr @.str.78, i32 3, ptr @.str.207, ptr @.str.9, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MouseActuator_mode_get, ptr @MouseActuator_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MouseActuator_mode_items, i32 2, i32 0 }, align 8
@rna_MouseActuator_use_axis_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MouseActuator_use_axis_y, ptr @rna_MouseActuator_visible, i32 -1, ptr @.str.485, i32 3, ptr @.str.486, ptr @.str.487, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MouseActuator_use_axis_x_get, ptr @MouseActuator_use_axis_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.483 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.484 = private unnamed_addr constant [26 x i8] c"Make mouse cursor visible\00", align 1
@rna_MouseActuator_use_axis_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MouseActuator_reset_x, ptr @rna_MouseActuator_use_axis_x, i32 -1, ptr @.str.488, i32 3, ptr @.str.489, ptr @.str.490, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MouseActuator_use_axis_y_get, ptr @MouseActuator_use_axis_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.485 = private unnamed_addr constant [11 x i8] c"use_axis_x\00", align 1
@.str.486 = private unnamed_addr constant [11 x i8] c"Use X Axis\00", align 1
@.str.487 = private unnamed_addr constant [39 x i8] c"Calculate mouse movement on the X axis\00", align 1
@rna_MouseActuator_reset_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MouseActuator_reset_y, ptr @rna_MouseActuator_use_axis_y, i32 -1, ptr @.str.491, i32 3, ptr @.str.492, ptr @.str.493, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MouseActuator_reset_x_get, ptr @MouseActuator_reset_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.488 = private unnamed_addr constant [11 x i8] c"use_axis_y\00", align 1
@.str.489 = private unnamed_addr constant [11 x i8] c"Use Y Axis\00", align 1
@.str.490 = private unnamed_addr constant [39 x i8] c"Calculate mouse movement on the Y axis\00", align 1
@rna_MouseActuator_reset_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MouseActuator_local_x, ptr @rna_MouseActuator_reset_x, i32 -1, ptr @.str.494, i32 3, ptr @.str.492, ptr @.str.495, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MouseActuator_reset_y_get, ptr @MouseActuator_reset_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.491 = private unnamed_addr constant [8 x i8] c"reset_x\00", align 1
@.str.492 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@.str.493 = private unnamed_addr constant [82 x i8] c"Reset the cursor's X position to the center of the screen space after calculating\00", align 1
@rna_MouseActuator_local_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MouseActuator_local_y, ptr @rna_MouseActuator_reset_y, i32 -1, ptr @.str.496, i32 3, ptr @.str.497, ptr @.str.498, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MouseActuator_local_x_get, ptr @MouseActuator_local_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.494 = private unnamed_addr constant [8 x i8] c"reset_y\00", align 1
@.str.495 = private unnamed_addr constant [82 x i8] c"Reset the cursor's Y position to the center of the screen space after calculating\00", align 1
@rna_MouseActuator_local_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MouseActuator_threshold_x, ptr @rna_MouseActuator_local_x, i32 -1, ptr @.str.499, i32 3, ptr @.str.497, ptr @.str.498, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MouseActuator_local_y_get, ptr @MouseActuator_local_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.496 = private unnamed_addr constant [8 x i8] c"local_x\00", align 1
@.str.497 = private unnamed_addr constant [6 x i8] c"Local\00", align 1
@.str.498 = private unnamed_addr constant [23 x i8] c"Apply rotation locally\00", align 1
@rna_MouseActuator_threshold_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MouseActuator_threshold_y, ptr @rna_MouseActuator_local_y, i32 -1, ptr @.str.500, i32 8195, ptr @.str.501, ptr @.str.502, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @MouseActuator_threshold_x_get, ptr @MouseActuator_threshold_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e-01, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.499 = private unnamed_addr constant [8 x i8] c"local_y\00", align 1
@rna_MouseActuator_threshold_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MouseActuator_object_axis_x, ptr @rna_MouseActuator_threshold_x, i32 -1, ptr @.str.503, i32 8195, ptr @.str.501, ptr @.str.504, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @MouseActuator_threshold_y_get, ptr @MouseActuator_threshold_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e-01, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.500 = private unnamed_addr constant [12 x i8] c"threshold_x\00", align 1
@.str.501 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@.str.502 = private unnamed_addr constant [55 x i8] c"Amount of X motion before mouse movement will register\00", align 1
@rna_MouseActuator_object_axis_x = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MouseActuator_object_axis_y, ptr @rna_MouseActuator_threshold_y, i32 -1, ptr @.str.505, i32 3, ptr @.str.506, ptr @.str.507, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MouseActuator_object_axis_x_get, ptr @MouseActuator_object_axis_x_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MouseActuator_object_axis_x_items, i32 3, i32 0 }, align 8
@.str.503 = private unnamed_addr constant [12 x i8] c"threshold_y\00", align 1
@.str.504 = private unnamed_addr constant [55 x i8] c"Amount of Y motion before mouse movement will register\00", align 1
@rna_MouseActuator_object_axis_y = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MouseActuator_sensitivity_x, ptr @rna_MouseActuator_object_axis_x, i32 -1, ptr @.str.508, i32 3, ptr @.str.506, ptr @.str.509, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MouseActuator_object_axis_y_get, ptr @MouseActuator_object_axis_y_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MouseActuator_object_axis_y_items, i32 3, i32 0 }, align 8
@.str.505 = private unnamed_addr constant [14 x i8] c"object_axis_x\00", align 1
@.str.506 = private unnamed_addr constant [12 x i8] c"Object Axis\00", align 1
@.str.507 = private unnamed_addr constant [66 x i8] c"Local object axis mouse movement in the X direction will apply to\00", align 1
@rna_MouseActuator_object_axis_x_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.761, i32 0, ptr @.str.762, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.763, i32 0, ptr @.str.764, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.765, i32 0, ptr @.str.766, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MouseActuator_sensitivity_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MouseActuator_sensitivity_y, ptr @rna_MouseActuator_object_axis_y, i32 -1, ptr @.str.510, i32 8195, ptr @.str.511, ptr @.str.512, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @MouseActuator_sensitivity_x_get, ptr @MouseActuator_sensitivity_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x3FC99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.508 = private unnamed_addr constant [14 x i8] c"object_axis_y\00", align 1
@.str.509 = private unnamed_addr constant [66 x i8] c"Local object axis mouse movement in the Y direction will apply to\00", align 1
@rna_MouseActuator_object_axis_y_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.761, i32 0, ptr @.str.762, ptr @.str.9 }, %struct.EnumPropertyItem { i32 1, ptr @.str.763, i32 0, ptr @.str.764, ptr @.str.9 }, %struct.EnumPropertyItem { i32 2, ptr @.str.765, i32 0, ptr @.str.766, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MouseActuator_sensitivity_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MouseActuator_min_x, ptr @rna_MouseActuator_sensitivity_x, i32 -1, ptr @.str.513, i32 8195, ptr @.str.511, ptr @.str.514, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 24, i32 4, ptr null, ptr null }, ptr @MouseActuator_sensitivity_y_get, ptr @MouseActuator_sensitivity_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x3FC99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.510 = private unnamed_addr constant [14 x i8] c"sensitivity_x\00", align 1
@.str.511 = private unnamed_addr constant [12 x i8] c"Sensitivity\00", align 1
@.str.512 = private unnamed_addr constant [26 x i8] c"Sensitivity of the X axis\00", align 1
@rna_MouseActuator_min_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MouseActuator_max_x, ptr @rna_MouseActuator_sensitivity_y, i32 -1, ptr @.str.515, i32 8195, ptr @.str.100, ptr @.str.516, i32 0, ptr @.str.3, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 28, i32 4, ptr null, ptr null }, ptr @MouseActuator_min_x_get, ptr @MouseActuator_min_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC04F6A7A20000000, float 0.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 9.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.513 = private unnamed_addr constant [14 x i8] c"sensitivity_y\00", align 1
@.str.514 = private unnamed_addr constant [26 x i8] c"Sensitivity of the Y axis\00", align 1
@rna_MouseActuator_max_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MouseActuator_min_y, ptr @rna_MouseActuator_min_x, i32 -1, ptr @.str.517, i32 8195, ptr @.str.97, ptr @.str.518, i32 0, ptr @.str.3, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 32, i32 4, ptr null, ptr null }, ptr @MouseActuator_max_x_get, ptr @MouseActuator_max_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x404F6A7A20000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 9.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.515 = private unnamed_addr constant [6 x i8] c"min_x\00", align 1
@.str.516 = private unnamed_addr constant [71 x i8] c"Maximum negative rotation allowed by X mouse movement (0 for infinite)\00", align 1
@rna_MouseActuator_min_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MouseActuator_max_y, ptr @rna_MouseActuator_max_x, i32 -1, ptr @.str.519, i32 8195, ptr @.str.100, ptr @.str.520, i32 0, ptr @.str.3, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 36, i32 4, ptr null, ptr null }, ptr @MouseActuator_min_y_get, ptr @MouseActuator_min_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC04F6A7A20000000, float 0.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 9.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.517 = private unnamed_addr constant [6 x i8] c"max_x\00", align 1
@.str.518 = private unnamed_addr constant [71 x i8] c"Maximum positive rotation allowed by X mouse movement (0 for infinite)\00", align 1
@rna_MouseActuator_max_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MouseActuator_min_y, i32 -1, ptr @.str.521, i32 8195, ptr @.str.97, ptr @.str.522, i32 0, ptr @.str.3, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 40, i32 4, ptr null, ptr null }, ptr @MouseActuator_max_y_get, ptr @MouseActuator_max_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x404F6A7A20000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 9.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.519 = private unnamed_addr constant [6 x i8] c"min_y\00", align 1
@.str.520 = private unnamed_addr constant [71 x i8] c"Maximum negative rotation allowed by Y mouse movement (0 for infinite)\00", align 1
@.str.521 = private unnamed_addr constant [6 x i8] c"max_y\00", align 1
@.str.522 = private unnamed_addr constant [71 x i8] c"Maximum positive rotation allowed by Y mouse movement (0 for infinite)\00", align 1
@RNA_Armature = external global %struct.StructRNA, align 8
@.str.523 = private unnamed_addr constant [14 x i8] c"MouseActuator\00", align 1
@.str.524 = private unnamed_addr constant [15 x i8] c"Mouse Actuator\00", align 1
@.str.525 = private unnamed_addr constant [7 x i8] c"ACTION\00", align 1
@.str.526 = private unnamed_addr constant [9 x i8] c"ARMATURE\00", align 1
@.str.527 = private unnamed_addr constant [9 x i8] c"Armature\00", align 1
@.str.528 = private unnamed_addr constant [7 x i8] c"CAMERA\00", align 1
@.str.529 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.530 = private unnamed_addr constant [11 x i8] c"CONSTRAINT\00", align 1
@.str.531 = private unnamed_addr constant [12 x i8] c"EDIT_OBJECT\00", align 1
@.str.532 = private unnamed_addr constant [10 x i8] c"FILTER_2D\00", align 1
@.str.533 = private unnamed_addr constant [10 x i8] c"Filter 2D\00", align 1
@.str.534 = private unnamed_addr constant [5 x i8] c"GAME\00", align 1
@.str.535 = private unnamed_addr constant [8 x i8] c"MESSAGE\00", align 1
@.str.536 = private unnamed_addr constant [8 x i8] c"Message\00", align 1
@.str.537 = private unnamed_addr constant [6 x i8] c"MOUSE\00", align 1
@.str.538 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@.str.539 = private unnamed_addr constant [7 x i8] c"MOTION\00", align 1
@.str.540 = private unnamed_addr constant [7 x i8] c"Motion\00", align 1
@.str.541 = private unnamed_addr constant [7 x i8] c"PARENT\00", align 1
@.str.542 = private unnamed_addr constant [7 x i8] c"Parent\00", align 1
@.str.543 = private unnamed_addr constant [9 x i8] c"PROPERTY\00", align 1
@.str.544 = private unnamed_addr constant [7 x i8] c"RANDOM\00", align 1
@.str.545 = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@.str.546 = private unnamed_addr constant [6 x i8] c"SCENE\00", align 1
@.str.547 = private unnamed_addr constant [6 x i8] c"SOUND\00", align 1
@.str.548 = private unnamed_addr constant [6 x i8] c"STATE\00", align 1
@.str.549 = private unnamed_addr constant [11 x i8] c"VISIBILITY\00", align 1
@.str.550 = private unnamed_addr constant [11 x i8] c"Visibility\00", align 1
@.str.551 = private unnamed_addr constant [9 x i8] c"STEERING\00", align 1
@.str.552 = private unnamed_addr constant [9 x i8] c"Steering\00", align 1
@.str.553 = private unnamed_addr constant [5 x i8] c"PLAY\00", align 1
@.str.554 = private unnamed_addr constant [5 x i8] c"Play\00", align 1
@.str.555 = private unnamed_addr constant [9 x i8] c"PINGPONG\00", align 1
@.str.556 = private unnamed_addr constant [10 x i8] c"Ping Pong\00", align 1
@.str.557 = private unnamed_addr constant [8 x i8] c"FLIPPER\00", align 1
@.str.558 = private unnamed_addr constant [8 x i8] c"Flipper\00", align 1
@.str.559 = private unnamed_addr constant [9 x i8] c"LOOPSTOP\00", align 1
@.str.560 = private unnamed_addr constant [10 x i8] c"Loop Stop\00", align 1
@.str.561 = private unnamed_addr constant [8 x i8] c"LOOPEND\00", align 1
@.str.562 = private unnamed_addr constant [9 x i8] c"Loop End\00", align 1
@.str.563 = private unnamed_addr constant [6 x i8] c"BLEND\00", align 1
@.str.564 = private unnamed_addr constant [6 x i8] c"Blend\00", align 1
@.str.565 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.566 = private unnamed_addr constant [14 x i8] c"OBJECT_NORMAL\00", align 1
@.str.567 = private unnamed_addr constant [14 x i8] c"Simple Motion\00", align 1
@.str.568 = private unnamed_addr constant [13 x i8] c"OBJECT_SERVO\00", align 1
@.str.569 = private unnamed_addr constant [14 x i8] c"Servo Control\00", align 1
@.str.570 = private unnamed_addr constant [17 x i8] c"OBJECT_CHARACTER\00", align 1
@.str.571 = private unnamed_addr constant [17 x i8] c"Character Motion\00", align 1
@.str.572 = private unnamed_addr constant [6 x i8] c"POS_X\00", align 1
@.str.573 = private unnamed_addr constant [3 x i8] c"+X\00", align 1
@.str.574 = private unnamed_addr constant [38 x i8] c"Camera tries to get behind the X axis\00", align 1
@.str.575 = private unnamed_addr constant [6 x i8] c"POS_Y\00", align 1
@.str.576 = private unnamed_addr constant [3 x i8] c"+Y\00", align 1
@.str.577 = private unnamed_addr constant [38 x i8] c"Camera tries to get behind the Y axis\00", align 1
@.str.578 = private unnamed_addr constant [6 x i8] c"NEG_X\00", align 1
@.str.579 = private unnamed_addr constant [3 x i8] c"-X\00", align 1
@.str.580 = private unnamed_addr constant [39 x i8] c"Camera tries to get behind the -X axis\00", align 1
@.str.581 = private unnamed_addr constant [6 x i8] c"NEG_Y\00", align 1
@.str.582 = private unnamed_addr constant [3 x i8] c"-Y\00", align 1
@.str.583 = private unnamed_addr constant [39 x i8] c"Camera tries to get behind the -Y axis\00", align 1
@.str.584 = private unnamed_addr constant [9 x i8] c"PLAYSTOP\00", align 1
@.str.585 = private unnamed_addr constant [10 x i8] c"Play Stop\00", align 1
@.str.586 = private unnamed_addr constant [8 x i8] c"PLAYEND\00", align 1
@.str.587 = private unnamed_addr constant [9 x i8] c"Play End\00", align 1
@.str.588 = private unnamed_addr constant [18 x i8] c"LOOPBIDIRECTIONAL\00", align 1
@.str.589 = private unnamed_addr constant [19 x i8] c"Loop Bidirectional\00", align 1
@.str.590 = private unnamed_addr constant [22 x i8] c"LOOPBIDIRECTIONALSTOP\00", align 1
@.str.591 = private unnamed_addr constant [24 x i8] c"Loop Bidirectional Stop\00", align 1
@.str.592 = private unnamed_addr constant [7 x i8] c"ASSIGN\00", align 1
@.str.593 = private unnamed_addr constant [7 x i8] c"Assign\00", align 1
@.str.594 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1
@.str.595 = private unnamed_addr constant [5 x i8] c"Copy\00", align 1
@.str.596 = private unnamed_addr constant [7 x i8] c"TOGGLE\00", align 1
@.str.597 = private unnamed_addr constant [7 x i8] c"Toggle\00", align 1
@.str.598 = private unnamed_addr constant [41 x i8] c"For bool/int/float/timer properties only\00", align 1
@.str.599 = private unnamed_addr constant [6 x i8] c"LEVEL\00", align 1
@.str.600 = private unnamed_addr constant [6 x i8] c"Level\00", align 1
@.str.601 = private unnamed_addr constant [4 x i8] c"LOC\00", align 1
@.str.602 = private unnamed_addr constant [20 x i8] c"Location Constraint\00", align 1
@.str.603 = private unnamed_addr constant [5 x i8] c"DIST\00", align 1
@.str.604 = private unnamed_addr constant [20 x i8] c"Distance Constraint\00", align 1
@.str.605 = private unnamed_addr constant [4 x i8] c"ORI\00", align 1
@.str.606 = private unnamed_addr constant [23 x i8] c"Orientation Constraint\00", align 1
@.str.607 = private unnamed_addr constant [3 x i8] c"FH\00", align 1
@.str.608 = private unnamed_addr constant [23 x i8] c"Force Field Constraint\00", align 1
@.str.609 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.610 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.611 = private unnamed_addr constant [5 x i8] c"LOCX\00", align 1
@.str.612 = private unnamed_addr constant [6 x i8] c"Loc X\00", align 1
@.str.613 = private unnamed_addr constant [5 x i8] c"LOCY\00", align 1
@.str.614 = private unnamed_addr constant [6 x i8] c"Loc Y\00", align 1
@.str.615 = private unnamed_addr constant [5 x i8] c"LOCZ\00", align 1
@.str.616 = private unnamed_addr constant [6 x i8] c"Loc Z\00", align 1
@.str.617 = private unnamed_addr constant [6 x i8] c"DIRPX\00", align 1
@.str.618 = private unnamed_addr constant [7 x i8] c"X axis\00", align 1
@.str.619 = private unnamed_addr constant [6 x i8] c"DIRPY\00", align 1
@.str.620 = private unnamed_addr constant [7 x i8] c"Y axis\00", align 1
@.str.621 = private unnamed_addr constant [6 x i8] c"DIRPZ\00", align 1
@.str.622 = private unnamed_addr constant [7 x i8] c"Z axis\00", align 1
@.str.623 = private unnamed_addr constant [6 x i8] c"DIRNX\00", align 1
@.str.624 = private unnamed_addr constant [8 x i8] c"-X axis\00", align 1
@.str.625 = private unnamed_addr constant [6 x i8] c"DIRNY\00", align 1
@.str.626 = private unnamed_addr constant [8 x i8] c"-Y axis\00", align 1
@.str.627 = private unnamed_addr constant [6 x i8] c"DIRNZ\00", align 1
@.str.628 = private unnamed_addr constant [8 x i8] c"-Z axis\00", align 1
@.str.629 = private unnamed_addr constant [10 x i8] c"ADDOBJECT\00", align 1
@.str.630 = private unnamed_addr constant [11 x i8] c"Add Object\00", align 1
@.str.631 = private unnamed_addr constant [10 x i8] c"ENDOBJECT\00", align 1
@.str.632 = private unnamed_addr constant [11 x i8] c"End Object\00", align 1
@.str.633 = private unnamed_addr constant [12 x i8] c"REPLACEMESH\00", align 1
@.str.634 = private unnamed_addr constant [13 x i8] c"Replace Mesh\00", align 1
@.str.635 = private unnamed_addr constant [8 x i8] c"TRACKTO\00", align 1
@.str.636 = private unnamed_addr constant [9 x i8] c"Track to\00", align 1
@.str.637 = private unnamed_addr constant [9 x i8] c"DYNAMICS\00", align 1
@.str.638 = private unnamed_addr constant [9 x i8] c"Dynamics\00", align 1
@.str.639 = private unnamed_addr constant [11 x i8] c"RESTOREDYN\00", align 1
@.str.640 = private unnamed_addr constant [17 x i8] c"Restore Dynamics\00", align 1
@.str.641 = private unnamed_addr constant [11 x i8] c"SUSPENDDYN\00", align 1
@.str.642 = private unnamed_addr constant [17 x i8] c"Suspend Dynamics\00", align 1
@.str.643 = private unnamed_addr constant [16 x i8] c"ENABLERIGIDBODY\00", align 1
@.str.644 = private unnamed_addr constant [18 x i8] c"Enable Rigid Body\00", align 1
@.str.645 = private unnamed_addr constant [17 x i8] c"DISABLERIGIDBODY\00", align 1
@.str.646 = private unnamed_addr constant [19 x i8] c"Disable Rigid Body\00", align 1
@.str.647 = private unnamed_addr constant [8 x i8] c"SETMASS\00", align 1
@.str.648 = private unnamed_addr constant [9 x i8] c"Set Mass\00", align 1
@.str.649 = private unnamed_addr constant [8 x i8] c"UPAXISX\00", align 1
@.str.650 = private unnamed_addr constant [8 x i8] c"UPAXISY\00", align 1
@.str.651 = private unnamed_addr constant [8 x i8] c"UPAXISZ\00", align 1
@.str.652 = private unnamed_addr constant [11 x i8] c"TRACKAXISX\00", align 1
@.str.653 = private unnamed_addr constant [11 x i8] c"TRACKAXISY\00", align 1
@.str.654 = private unnamed_addr constant [11 x i8] c"TRACKAXISZ\00", align 1
@.str.655 = private unnamed_addr constant [14 x i8] c"TRACKAXISNEGX\00", align 1
@.str.656 = private unnamed_addr constant [14 x i8] c"TRACKAXISNEGY\00", align 1
@.str.657 = private unnamed_addr constant [14 x i8] c"TRACKAXISNEGZ\00", align 1
@.str.658 = private unnamed_addr constant [8 x i8] c"RESTART\00", align 1
@.str.659 = private unnamed_addr constant [8 x i8] c"Restart\00", align 1
@.str.660 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.661 = private unnamed_addr constant [10 x i8] c"Set Scene\00", align 1
@.str.662 = private unnamed_addr constant [11 x i8] c"Set Camera\00", align 1
@.str.663 = private unnamed_addr constant [9 x i8] c"ADDFRONT\00", align 1
@.str.664 = private unnamed_addr constant [18 x i8] c"Add Overlay Scene\00", align 1
@.str.665 = private unnamed_addr constant [8 x i8] c"ADDBACK\00", align 1
@.str.666 = private unnamed_addr constant [21 x i8] c"Add Background Scene\00", align 1
@.str.667 = private unnamed_addr constant [7 x i8] c"REMOVE\00", align 1
@.str.668 = private unnamed_addr constant [13 x i8] c"Remove Scene\00", align 1
@.str.669 = private unnamed_addr constant [8 x i8] c"SUSPEND\00", align 1
@.str.670 = private unnamed_addr constant [14 x i8] c"Suspend Scene\00", align 1
@.str.671 = private unnamed_addr constant [7 x i8] c"RESUME\00", align 1
@.str.672 = private unnamed_addr constant [13 x i8] c"Resume Scene\00", align 1
@.str.673 = private unnamed_addr constant [14 x i8] c"BOOL_CONSTANT\00", align 1
@.str.674 = private unnamed_addr constant [14 x i8] c"Bool Constant\00", align 1
@.str.675 = private unnamed_addr constant [13 x i8] c"BOOL_UNIFORM\00", align 1
@.str.676 = private unnamed_addr constant [13 x i8] c"Bool Uniform\00", align 1
@.str.677 = private unnamed_addr constant [16 x i8] c"BOOL_BERNOUILLI\00", align 1
@.str.678 = private unnamed_addr constant [15 x i8] c"Bool Bernoulli\00", align 1
@.str.679 = private unnamed_addr constant [13 x i8] c"INT_CONSTANT\00", align 1
@.str.680 = private unnamed_addr constant [13 x i8] c"Int Constant\00", align 1
@.str.681 = private unnamed_addr constant [12 x i8] c"INT_UNIFORM\00", align 1
@.str.682 = private unnamed_addr constant [12 x i8] c"Int Uniform\00", align 1
@.str.683 = private unnamed_addr constant [12 x i8] c"INT_POISSON\00", align 1
@.str.684 = private unnamed_addr constant [12 x i8] c"Int Poisson\00", align 1
@.str.685 = private unnamed_addr constant [15 x i8] c"FLOAT_CONSTANT\00", align 1
@.str.686 = private unnamed_addr constant [15 x i8] c"Float Constant\00", align 1
@.str.687 = private unnamed_addr constant [14 x i8] c"FLOAT_UNIFORM\00", align 1
@.str.688 = private unnamed_addr constant [14 x i8] c"Float Uniform\00", align 1
@.str.689 = private unnamed_addr constant [13 x i8] c"FLOAT_NORMAL\00", align 1
@.str.690 = private unnamed_addr constant [13 x i8] c"Float Normal\00", align 1
@.str.691 = private unnamed_addr constant [27 x i8] c"FLOAT_NEGATIVE_EXPONENTIAL\00", align 1
@.str.692 = private unnamed_addr constant [16 x i8] c"Float Neg. Exp.\00", align 1
@.str.693 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@.str.694 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.695 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.696 = private unnamed_addr constant [21 x i8] c"Start Game From File\00", align 1
@.str.697 = private unnamed_addr constant [13 x i8] c"Restart Game\00", align 1
@.str.698 = private unnamed_addr constant [5 x i8] c"QUIT\00", align 1
@.str.699 = private unnamed_addr constant [10 x i8] c"Quit Game\00", align 1
@.str.700 = private unnamed_addr constant [8 x i8] c"SAVECFG\00", align 1
@.str.701 = private unnamed_addr constant [26 x i8] c"Save bge.logic.globalDict\00", align 1
@.str.702 = private unnamed_addr constant [8 x i8] c"LOADCFG\00", align 1
@.str.703 = private unnamed_addr constant [26 x i8] c"Load bge.logic.globalDict\00", align 1
@.str.704 = private unnamed_addr constant [7 x i8] c"ENABLE\00", align 1
@.str.705 = private unnamed_addr constant [14 x i8] c"Enable Filter\00", align 1
@.str.706 = private unnamed_addr constant [8 x i8] c"DISABLE\00", align 1
@.str.707 = private unnamed_addr constant [15 x i8] c"Disable Filter\00", align 1
@.str.708 = private unnamed_addr constant [14 x i8] c"Remove Filter\00", align 1
@.str.709 = private unnamed_addr constant [11 x i8] c"MOTIONBLUR\00", align 1
@.str.710 = private unnamed_addr constant [12 x i8] c"Motion Blur\00", align 1
@.str.711 = private unnamed_addr constant [5 x i8] c"BLUR\00", align 1
@.str.712 = private unnamed_addr constant [5 x i8] c"Blur\00", align 1
@.str.713 = private unnamed_addr constant [8 x i8] c"SHARPEN\00", align 1
@.str.714 = private unnamed_addr constant [8 x i8] c"Sharpen\00", align 1
@.str.715 = private unnamed_addr constant [9 x i8] c"DILATION\00", align 1
@.str.716 = private unnamed_addr constant [9 x i8] c"Dilation\00", align 1
@.str.717 = private unnamed_addr constant [8 x i8] c"EROSION\00", align 1
@.str.718 = private unnamed_addr constant [8 x i8] c"Erosion\00", align 1
@.str.719 = private unnamed_addr constant [10 x i8] c"LAPLACIAN\00", align 1
@.str.720 = private unnamed_addr constant [10 x i8] c"Laplacian\00", align 1
@.str.721 = private unnamed_addr constant [6 x i8] c"SOBEL\00", align 1
@.str.722 = private unnamed_addr constant [6 x i8] c"Sobel\00", align 1
@.str.723 = private unnamed_addr constant [8 x i8] c"PREWITT\00", align 1
@.str.724 = private unnamed_addr constant [8 x i8] c"Prewitt\00", align 1
@.str.725 = private unnamed_addr constant [10 x i8] c"GRAYSCALE\00", align 1
@.str.726 = private unnamed_addr constant [11 x i8] c"Gray Scale\00", align 1
@.str.727 = private unnamed_addr constant [6 x i8] c"SEPIA\00", align 1
@.str.728 = private unnamed_addr constant [6 x i8] c"Sepia\00", align 1
@.str.729 = private unnamed_addr constant [7 x i8] c"INVERT\00", align 1
@.str.730 = private unnamed_addr constant [7 x i8] c"Invert\00", align 1
@.str.731 = private unnamed_addr constant [13 x i8] c"CUSTOMFILTER\00", align 1
@.str.732 = private unnamed_addr constant [14 x i8] c"Custom Filter\00", align 1
@.str.733 = private unnamed_addr constant [10 x i8] c"SETPARENT\00", align 1
@.str.734 = private unnamed_addr constant [11 x i8] c"Set Parent\00", align 1
@.str.735 = private unnamed_addr constant [13 x i8] c"REMOVEPARENT\00", align 1
@.str.736 = private unnamed_addr constant [14 x i8] c"Remove Parent\00", align 1
@.str.737 = private unnamed_addr constant [10 x i8] c"Set State\00", align 1
@.str.738 = private unnamed_addr constant [10 x i8] c"Add State\00", align 1
@.str.739 = private unnamed_addr constant [13 x i8] c"Remove State\00", align 1
@.str.740 = private unnamed_addr constant [7 x i8] c"CHANGE\00", align 1
@.str.741 = private unnamed_addr constant [13 x i8] c"Change State\00", align 1
@.str.742 = private unnamed_addr constant [4 x i8] c"RUN\00", align 1
@.str.743 = private unnamed_addr constant [13 x i8] c"Run Armature\00", align 1
@.str.744 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@.str.745 = private unnamed_addr constant [10 x i8] c"SETTARGET\00", align 1
@.str.746 = private unnamed_addr constant [11 x i8] c"Set Target\00", align 1
@.str.747 = private unnamed_addr constant [10 x i8] c"SETWEIGHT\00", align 1
@.str.748 = private unnamed_addr constant [11 x i8] c"Set Weight\00", align 1
@.str.749 = private unnamed_addr constant [13 x i8] c"SETINFLUENCE\00", align 1
@.str.750 = private unnamed_addr constant [14 x i8] c"Set Influence\00", align 1
@.str.751 = private unnamed_addr constant [5 x i8] c"SEEK\00", align 1
@.str.752 = private unnamed_addr constant [5 x i8] c"Seek\00", align 1
@.str.753 = private unnamed_addr constant [5 x i8] c"FLEE\00", align 1
@.str.754 = private unnamed_addr constant [5 x i8] c"Flee\00", align 1
@.str.755 = private unnamed_addr constant [14 x i8] c"PATHFOLLOWING\00", align 1
@.str.756 = private unnamed_addr constant [15 x i8] c"Path following\00", align 1
@.str.757 = private unnamed_addr constant [6 x i8] c"NEG_Z\00", align 1
@.str.758 = private unnamed_addr constant [3 x i8] c"-Z\00", align 1
@.str.759 = private unnamed_addr constant [5 x i8] c"LOOK\00", align 1
@.str.760 = private unnamed_addr constant [5 x i8] c"Look\00", align 1
@.str.761 = private unnamed_addr constant [14 x i8] c"OBJECT_AXIS_X\00", align 1
@.str.762 = private unnamed_addr constant [7 x i8] c"X Axis\00", align 1
@.str.763 = private unnamed_addr constant [14 x i8] c"OBJECT_AXIS_Y\00", align 1
@.str.764 = private unnamed_addr constant [7 x i8] c"Y Axis\00", align 1
@.str.765 = private unnamed_addr constant [14 x i8] c"OBJECT_AXIS_Z\00", align 1
@.str.766 = private unnamed_addr constant [7 x i8] c"Z Axis\00", align 1
@switch.table.rna_Actuator_refine = private unnamed_addr constant [26 x ptr] [ptr @RNA_ObjectActuator, ptr @RNA_Actuator, ptr @RNA_Actuator, ptr @RNA_CameraActuator, ptr @RNA_Actuator, ptr @RNA_SoundActuator, ptr @RNA_PropertyActuator, ptr @RNA_Actuator, ptr @RNA_Actuator, ptr @RNA_ConstraintActuator, ptr @RNA_EditObjectActuator, ptr @RNA_SceneActuator, ptr @RNA_Actuator, ptr @RNA_RandomActuator, ptr @RNA_MessageActuator, ptr @RNA_ActionActuator, ptr @RNA_Actuator, ptr @RNA_GameActuator, ptr @RNA_VisibilityActuator, ptr @RNA_Filter2DActuator, ptr @RNA_ParentActuator, ptr @RNA_Actuator, ptr @RNA_StateActuator, ptr @RNA_ArmatureActuator, ptr @RNA_SteeringActuator, ptr @RNA_MouseActuator], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @rna_Actuator_type_itemf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr null, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !tbaa !38
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = icmp eq ptr %8, @RNA_Actuator
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %8, ptr noundef nonnull @RNA_Actuator) #14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %4
  %14 = load ptr, ptr %1, align 8, !tbaa !43
  br label %17

15:                                               ; preds = %10
  %16 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !44
  %23 = icmp eq i16 %22, 25
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @actuator_type_items, i32 noundef 23) #14
  br label %25

25:                                               ; preds = %20, %24, %17
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @actuator_type_items, i32 noundef 15) #14
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @actuator_type_items, i32 noundef 3) #14
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @actuator_type_items, i32 noundef 9) #14
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @actuator_type_items, i32 noundef 10) #14
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @actuator_type_items, i32 noundef 19) #14
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @actuator_type_items, i32 noundef 17) #14
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @actuator_type_items, i32 noundef 14) #14
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @actuator_type_items, i32 noundef 25) #14
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @actuator_type_items, i32 noundef 0) #14
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @actuator_type_items, i32 noundef 20) #14
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @actuator_type_items, i32 noundef 6) #14
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @actuator_type_items, i32 noundef 13) #14
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @actuator_type_items, i32 noundef 11) #14
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @actuator_type_items, i32 noundef 24) #14
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @actuator_type_items, i32 noundef 5) #14
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @actuator_type_items, i32 noundef 22) #14
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @actuator_type_items, i32 noundef 18) #14
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  store i8 1, ptr %3, align 1, !tbaa !52
  %26 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret ptr %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_items_add_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Actuator_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !53
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Actuator_rna_properties, ptr %4, align 8, !tbaa !54
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @Actuator_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Actuator_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !57 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Actuator_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !56
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @Actuator_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Actuator_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Actuator_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Actuator_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Actuator_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 7
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #14
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Actuator_name_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 7
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Actuator_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Actuator_name_set(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Actuator_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !59 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 7
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #14
  %7 = load ptr, ptr %0, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 94
  tail call void @BLI_uniquename(ptr noundef nonnull %10, ptr noundef %4, ptr noundef nonnull @.str.28, i8 noundef zeroext 46, i32 noundef 32, i32 noundef 64) #14
  br label %11

11:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Actuator_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !60
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Actuator_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_Actuator_type_set(ptr noundef %0, i32 noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Actuator_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !62 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !60
  %7 = sext i16 %6 to i32
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = trunc i32 %1 to i16
  store i16 %10, ptr %5, align 8, !tbaa !60
  tail call void @init_actuator(ptr noundef nonnull %4) #14
  br label %11

11:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Actuator_pin_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !63
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Actuator_pin_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !63
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Actuator_show_expanded_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !63
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Actuator_show_expanded_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !63
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Actuator_active_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !63
  %6 = and i16 %5, 64
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Actuator_active_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !63
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 64, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionActuator_play_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bActionActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !65
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionActuator_play_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bActionActuator, ptr %6, i64 0, i32 1
  store i16 %7, ptr %8, align 8, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ActionActuator_action_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Action, ptr noundef %7) #14
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionActuator_action_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #8 {
  tail call fastcc void @rna_Actuator_action_action_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Actuator_action_action_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #8 !PGOFuncName !68 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  store ptr %8, ptr %6, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionActuator_use_continue_last_frame_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bActionActuator, ptr %5, i64 0, i32 10
  %7 = load i16, ptr %6, align 2, !tbaa !69
  %8 = and i16 %7, 1
  %9 = xor i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionActuator_use_continue_last_frame_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bActionActuator, ptr %6, i64 0, i32 10
  %9 = load i16, ptr %8, align 2, !tbaa !69
  %10 = and i16 %9, -2
  %11 = zext i1 %7 to i16
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !69
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ActionActuator_property_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bActionActuator, ptr %6, i64 0, i32 5
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionActuator_property_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bActionActuator, ptr %5, i64 0, i32 5
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #16
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ActionActuator_property_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bActionActuator, ptr %6, i64 0, i32 5
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ActionActuator_frame_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bActionActuator, ptr %5, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !70
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionActuator_frame_start_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bActionActuator, ptr %6, i64 0, i32 3
  store float %1, ptr %7, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ActionActuator_frame_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bActionActuator, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 8, !tbaa !71
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionActuator_frame_end_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bActionActuator, ptr %6, i64 0, i32 4
  store float %1, ptr %7, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionActuator_frame_blend_in_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bActionActuator, ptr %5, i64 0, i32 7
  %7 = load i16, ptr %6, align 4, !tbaa !72
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionActuator_frame_blend_in_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.bActionActuator, ptr %6, i64 0, i32 7
  store i16 %9, ptr %10, align 4, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionActuator_priority_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bActionActuator, ptr %5, i64 0, i32 8
  %7 = load i16, ptr %6, align 2, !tbaa !73
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionActuator_priority_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 100)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.bActionActuator, ptr %6, i64 0, i32 8
  store i16 %9, ptr %10, align 2, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionActuator_layer_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bActionActuator, ptr %5, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !74
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionActuator_layer_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 32766)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.bActionActuator, ptr %6, i64 0, i32 9
  store i16 %9, ptr %10, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ActionActuator_layer_weight_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bActionActuator, ptr %5, i64 0, i32 14
  %7 = load float, ptr %6, align 4, !tbaa !75
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionActuator_layer_weight_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+00
  %9 = select i1 %8, float 1.000000e+00, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bActionActuator, ptr %6, i64 0, i32 14
  store float %10, ptr %11, align 4, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ActionActuator_frame_property_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bActionActuator, ptr %6, i64 0, i32 6
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionActuator_frame_property_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bActionActuator, ptr %5, i64 0, i32 6
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #16
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ActionActuator_frame_property_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bActionActuator, ptr %6, i64 0, i32 6
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionActuator_use_additive_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bActionActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !76
  %8 = lshr i16 %7, 5
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionActuator_use_additive_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  tail call fastcc void @rna_ActionActuator_add_set(ptr noundef %0, i32 noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ActionActuator_add_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !77 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 1
  %8 = getelementptr inbounds %struct.bActionActuator, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !76
  %10 = and i16 %9, -33
  %11 = and i16 %9, -34
  %12 = or disjoint i16 %11, 32
  %13 = select i1 %7, i16 %12, i16 %10
  store i16 %13, ptr %8, align 2, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionActuator_use_force_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bActionActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !76
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionActuator_use_force_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  tail call fastcc void @rna_ActionActuator_force_set(ptr noundef %0, i32 noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ActionActuator_force_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !78 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 1
  %8 = getelementptr inbounds %struct.bActionActuator, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !76
  %10 = and i16 %9, -2
  %11 = and i16 %9, -34
  %12 = or disjoint i16 %11, 1
  %13 = select i1 %7, i16 %12, i16 %10
  store i16 %13, ptr %8, align 2, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionActuator_use_local_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bActionActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !76
  %8 = lshr i16 %7, 2
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionActuator_use_local_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bActionActuator, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !76
  %10 = and i16 %9, -5
  %11 = select i1 %7, i16 0, i16 4
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionActuator_apply_to_children_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bActionActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !76
  %8 = lshr i16 %7, 4
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionActuator_apply_to_children_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bActionActuator, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !76
  %10 = and i16 %9, -17
  %11 = select i1 %7, i16 0, i16 16
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionActuator_blend_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bActionActuator, ptr %5, i64 0, i32 12
  %7 = load i16, ptr %6, align 2, !tbaa !79
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionActuator_blend_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bActionActuator, ptr %6, i64 0, i32 12
  store i16 %7, ptr %8, align 2, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObjectActuator_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bObjectActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !80
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  tail call fastcc void @rna_ObjectActuator_type_set(ptr noundef %0, i32 noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ObjectActuator_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !82 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !80
  %9 = sext i16 %8 to i32
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = trunc i32 %1 to i16
  store i16 %12, ptr %7, align 2, !tbaa !80
  %13 = shl i32 %1, 16
  %14 = ashr exact i32 %13, 16
  switch i32 %14, label %19 [
    i32 0, label %15
    i32 1, label %16
    i32 2, label %18
  ]

15:                                               ; preds = %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %6, i8 0, i64 112, i1 false)
  store i16 15, ptr %6, align 8, !tbaa !83
  br label %19

16:                                               ; preds = %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %6, i8 0, i64 112, i1 false)
  store i16 16, ptr %6, align 8, !tbaa !83
  store i16 1, ptr %7, align 2, !tbaa !80
  %17 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 5
  store <2 x float> <float 3.000000e+01, float 5.000000e-01>, ptr %17, align 4, !tbaa !84
  br label %19

18:                                               ; preds = %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %6, i8 0, i64 112, i1 false)
  store i16 12, ptr %6, align 8, !tbaa !83
  store i16 2, ptr %7, align 2, !tbaa !80
  br label %19

19:                                               ; preds = %15, %16, %18, %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectActuator_reference_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %8) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectActuator_reference_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 12
  store ptr %8, ptr %12, align 8, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObjectActuator_damping_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bObjectActuator, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !86
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_damping_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 -32768)
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 3
  store i16 %9, ptr %10, align 2, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ObjectActuator_proportional_coefficient_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bObjectActuator, ptr %5, i64 0, i32 5
  %7 = load float, ptr %6, align 4, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_proportional_coefficient_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 5
  store float %1, ptr %7, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ObjectActuator_integral_coefficient_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bObjectActuator, ptr %5, i64 0, i32 5, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_integral_coefficient_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  tail call fastcc void @rna_ObjectActuator_integralcoefficient_set(ptr noundef %0, float noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ObjectActuator_integralcoefficient_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #8 !PGOFuncName !87 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 5
  %8 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 5, i64 1
  store float %1, ptr %8, align 4, !tbaa !84
  %9 = fmul float %1, 6.000000e+01
  store float %9, ptr %7, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ObjectActuator_derivate_coefficient_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bObjectActuator, ptr %5, i64 0, i32 5, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_derivate_coefficient_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 5, i64 2
  store float %1, ptr %7, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ObjectActuator_force_max_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bObjectActuator, ptr %5, i64 0, i32 8
  %7 = load float, ptr %6, align 8, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_force_max_x_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 8
  store float %1, ptr %7, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ObjectActuator_force_min_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bObjectActuator, ptr %5, i64 0, i32 9
  %7 = load float, ptr %6, align 4, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_force_min_x_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 9
  store float %1, ptr %7, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ObjectActuator_force_max_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bObjectActuator, ptr %5, i64 0, i32 8, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_force_max_y_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 8, i64 1
  store float %1, ptr %7, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ObjectActuator_force_min_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bObjectActuator, ptr %5, i64 0, i32 9, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_force_min_y_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 9, i64 1
  store float %1, ptr %7, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ObjectActuator_force_max_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bObjectActuator, ptr %5, i64 0, i32 8, i64 2
  %7 = load float, ptr %6, align 8, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_force_max_z_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 8, i64 2
  store float %1, ptr %7, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ObjectActuator_force_min_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bObjectActuator, ptr %5, i64 0, i32 9, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_force_min_z_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 9, i64 2
  store float %1, ptr %7, align 4, !tbaa !84
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_offset_location_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 8
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %7, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds float, ptr %1, i64 %9
  store float %11, ptr %12, align 4, !tbaa !84
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !88

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_offset_location_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 8
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %1, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds float, ptr %7, i64 %9
  store float %11, ptr %12, align 4, !tbaa !84
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !90

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_offset_rotation_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 9
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %7, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds float, ptr %1, i64 %9
  store float %11, ptr %12, align 4, !tbaa !84
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !91

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_offset_rotation_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 9
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %1, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds float, ptr %7, i64 %9
  store float %11, ptr %12, align 4, !tbaa !84
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !92

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_force_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 4
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %7, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds float, ptr %1, i64 %9
  store float %11, ptr %12, align 4, !tbaa !84
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !93

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_force_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 4
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %1, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds float, ptr %7, i64 %9
  store float %11, ptr %12, align 4, !tbaa !84
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !94

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_torque_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 5
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %7, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds float, ptr %1, i64 %9
  store float %11, ptr %12, align 4, !tbaa !84
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !95

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_torque_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 5
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %1, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds float, ptr %7, i64 %9
  store float %11, ptr %12, align 4, !tbaa !84
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !96

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_linear_velocity_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 10
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %7, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds float, ptr %1, i64 %9
  store float %11, ptr %12, align 4, !tbaa !84
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !97

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_linear_velocity_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 10
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %1, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds float, ptr %7, i64 %9
  store float %11, ptr %12, align 4, !tbaa !84
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !98

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_angular_velocity_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 11
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %7, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds float, ptr %1, i64 %9
  store float %11, ptr %12, align 4, !tbaa !84
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !99

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_angular_velocity_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bObjectActuator, ptr %6, i64 0, i32 11
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %1, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds float, ptr %7, i64 %9
  store float %11, ptr %12, align 4, !tbaa !84
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !100

15:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObjectActuator_use_local_location_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i16, ptr %5, align 8, !tbaa !83
  %7 = lshr i16 %6, 2
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_use_local_location_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = load i16, ptr %6, align 8, !tbaa !83
  %9 = and i16 %8, -5
  %10 = select i1 %7, i16 0, i16 4
  %11 = or disjoint i16 %9, %10
  store i16 %11, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObjectActuator_use_local_rotation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i16, ptr %5, align 8, !tbaa !83
  %7 = lshr i16 %6, 3
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_use_local_rotation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = load i16, ptr %6, align 8, !tbaa !83
  %9 = and i16 %8, -9
  %10 = select i1 %7, i16 0, i16 8
  %11 = or disjoint i16 %9, %10
  store i16 %11, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObjectActuator_use_local_force_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i16, ptr %5, align 8, !tbaa !83
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_use_local_force_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp ne i32 %1, 0
  %8 = load i16, ptr %6, align 8, !tbaa !83
  %9 = and i16 %8, -2
  %10 = zext i1 %7 to i16
  %11 = or disjoint i16 %9, %10
  store i16 %11, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObjectActuator_use_local_torque_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i16, ptr %5, align 8, !tbaa !83
  %7 = lshr i16 %6, 1
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_use_local_torque_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = load i16, ptr %6, align 8, !tbaa !83
  %9 = and i16 %8, -3
  %10 = select i1 %7, i16 0, i16 2
  %11 = or disjoint i16 %9, %10
  store i16 %11, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObjectActuator_use_local_linear_velocity_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i16, ptr %5, align 8, !tbaa !83
  %7 = lshr i16 %6, 4
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_use_local_linear_velocity_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = load i16, ptr %6, align 8, !tbaa !83
  %9 = and i16 %8, -17
  %10 = select i1 %7, i16 0, i16 16
  %11 = or disjoint i16 %9, %10
  store i16 %11, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObjectActuator_use_local_angular_velocity_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i16, ptr %5, align 8, !tbaa !83
  %7 = lshr i16 %6, 5
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_use_local_angular_velocity_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = load i16, ptr %6, align 8, !tbaa !83
  %9 = and i16 %8, -33
  %10 = select i1 %7, i16 0, i16 32
  %11 = or disjoint i16 %9, %10
  store i16 %11, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObjectActuator_use_add_linear_velocity_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i16, ptr %5, align 8, !tbaa !83
  %7 = lshr i16 %6, 6
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_use_add_linear_velocity_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = load i16, ptr %6, align 8, !tbaa !83
  %9 = and i16 %8, -65
  %10 = select i1 %7, i16 0, i16 64
  %11 = or disjoint i16 %9, %10
  store i16 %11, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObjectActuator_use_add_character_location_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i16, ptr %5, align 8, !tbaa !83
  %7 = lshr i16 %6, 7
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_use_add_character_location_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = load i16, ptr %6, align 8, !tbaa !83
  %9 = and i16 %8, -129
  %10 = select i1 %7, i16 0, i16 128
  %11 = or disjoint i16 %9, %10
  store i16 %11, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObjectActuator_use_servo_limit_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i16, ptr %5, align 8, !tbaa !83
  %7 = lshr i16 %6, 1
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_use_servo_limit_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = load i16, ptr %6, align 8, !tbaa !83
  %9 = and i16 %8, -3
  %10 = select i1 %7, i16 0, i16 2
  %11 = or disjoint i16 %9, %10
  store i16 %11, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObjectActuator_use_servo_limit_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i16, ptr %5, align 8, !tbaa !83
  %7 = lshr i16 %6, 2
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_use_servo_limit_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = load i16, ptr %6, align 8, !tbaa !83
  %9 = and i16 %8, -5
  %10 = select i1 %7, i16 0, i16 4
  %11 = or disjoint i16 %9, %10
  store i16 %11, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObjectActuator_use_servo_limit_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i16, ptr %5, align 8, !tbaa !83
  %7 = lshr i16 %6, 3
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_use_servo_limit_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = load i16, ptr %6, align 8, !tbaa !83
  %9 = and i16 %8, -9
  %10 = select i1 %7, i16 0, i16 8
  %11 = or disjoint i16 %9, %10
  store i16 %11, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObjectActuator_use_character_jump_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i16, ptr %5, align 8, !tbaa !83
  %7 = lshr i16 %6, 8
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectActuator_use_character_jump_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = load i16, ptr %6, align 8, !tbaa !83
  %9 = and i16 %8, -257
  %10 = select i1 %7, i16 0, i16 256
  %11 = or disjoint i16 %9, %10
  store i16 %11, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CameraActuator_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = load ptr, ptr %6, align 8, !tbaa !101
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CameraActuator_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @CameraActuator_height_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bCameraActuator, ptr %5, i64 0, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !103
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CameraActuator_height_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bCameraActuator, ptr %6, i64 0, i32 1
  store float %1, ptr %7, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @CameraActuator_min_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bCameraActuator, ptr %5, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !104
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CameraActuator_min_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bCameraActuator, ptr %6, i64 0, i32 2
  store float %1, ptr %7, align 4, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @CameraActuator_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bCameraActuator, ptr %5, i64 0, i32 3
  %7 = load float, ptr %6, align 8, !tbaa !105
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CameraActuator_max_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bCameraActuator, ptr %6, i64 0, i32 3
  store float %1, ptr %7, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @CameraActuator_damping_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bCameraActuator, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !106
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CameraActuator_damping_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+01
  %9 = select i1 %8, float 1.000000e+01, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bCameraActuator, ptr %6, i64 0, i32 4
  store float %10, ptr %11, align 4, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CameraActuator_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bCameraActuator, ptr %5, i64 0, i32 6
  %7 = load i16, ptr %6, align 2, !tbaa !107
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CameraActuator_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bCameraActuator, ptr %6, i64 0, i32 6
  store i16 %7, ptr %8, align 2, !tbaa !107
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SoundActuator_sound_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bSoundActuator, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sound, ptr noundef %8) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SoundActuator_sound_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bSoundActuator, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @id_us_plus(ptr noundef nonnull %13) #14
  br label %16

16:                                               ; preds = %15, %11
  store ptr %13, ptr %7, align 8, !tbaa !108
  ret void
}

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SoundActuator_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSoundActuator, ptr %5, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !111
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SoundActuator_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bSoundActuator, ptr %6, i64 0, i32 9
  store i16 %7, ptr %8, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SoundActuator_volume_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSoundActuator, ptr %5, i64 0, i32 5
  %7 = load float, ptr %6, align 8, !tbaa !112
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SoundActuator_volume_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 2.000000e+00
  %9 = select i1 %8, float 2.000000e+00, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bSoundActuator, ptr %6, i64 0, i32 5
  store float %10, ptr %11, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SoundActuator_pitch_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSoundActuator, ptr %5, i64 0, i32 6
  %7 = load float, ptr %6, align 4, !tbaa !113
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SoundActuator_pitch_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bSoundActuator, ptr %6, i64 0, i32 6
  store float %1, ptr %7, align 4, !tbaa !113
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SoundActuator_gain_3d_min_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSoundActuator, ptr %5, i64 0, i32 8
  %7 = load float, ptr %6, align 8, !tbaa !114
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SoundActuator_gain_3d_min_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bSoundActuator, ptr %6, i64 0, i32 8
  store float %1, ptr %7, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SoundActuator_gain_3d_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSoundActuator, ptr %5, i64 0, i32 8, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !115
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SoundActuator_gain_3d_max_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bSoundActuator, ptr %6, i64 0, i32 8, i32 1
  store float %1, ptr %7, align 4, !tbaa !115
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SoundActuator_distance_3d_reference_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSoundActuator, ptr %5, i64 0, i32 8, i32 2
  %7 = load float, ptr %6, align 8, !tbaa !116
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SoundActuator_distance_3d_reference_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bSoundActuator, ptr %6, i64 0, i32 8, i32 2
  store float %1, ptr %7, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SoundActuator_distance_3d_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSoundActuator, ptr %5, i64 0, i32 8, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !117
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SoundActuator_distance_3d_max_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bSoundActuator, ptr %6, i64 0, i32 8, i32 3
  store float %1, ptr %7, align 4, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SoundActuator_rolloff_factor_3d_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSoundActuator, ptr %5, i64 0, i32 8, i32 4
  %7 = load float, ptr %6, align 8, !tbaa !118
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SoundActuator_rolloff_factor_3d_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bSoundActuator, ptr %6, i64 0, i32 8, i32 4
  store float %1, ptr %7, align 8, !tbaa !118
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SoundActuator_cone_outer_gain_3d_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSoundActuator, ptr %5, i64 0, i32 8, i32 7
  %7 = load float, ptr %6, align 4, !tbaa !119
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SoundActuator_cone_outer_gain_3d_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bSoundActuator, ptr %6, i64 0, i32 8, i32 7
  store float %1, ptr %7, align 4, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SoundActuator_cone_outer_angle_3d_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSoundActuator, ptr %5, i64 0, i32 8, i32 6
  %7 = load float, ptr %6, align 8, !tbaa !120
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SoundActuator_cone_outer_angle_3d_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bSoundActuator, ptr %6, i64 0, i32 8, i32 6
  store float %1, ptr %7, align 8, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SoundActuator_cone_inner_angle_3d_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSoundActuator, ptr %5, i64 0, i32 8, i32 5
  %7 = load float, ptr %6, align 4, !tbaa !121
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SoundActuator_cone_inner_angle_3d_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bSoundActuator, ptr %6, i64 0, i32 8, i32 5
  store float %1, ptr %7, align 4, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SoundActuator_use_sound_3d_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i16, ptr %5, align 8, !tbaa !122
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SoundActuator_use_sound_3d_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp ne i32 %1, 0
  %8 = load i16, ptr %6, align 8, !tbaa !122
  %9 = and i16 %8, -2
  %10 = zext i1 %7 to i16
  %11 = or disjoint i16 %9, %10
  store i16 %11, ptr %6, align 8, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PropertyActuator_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bPropertyActuator, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !123
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PropertyActuator_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bPropertyActuator, ptr %6, i64 0, i32 1
  store i32 %1, ptr %7, align 4, !tbaa !123
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyActuator_property_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bPropertyActuator, ptr %6, i64 0, i32 2
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PropertyActuator_property_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bPropertyActuator, ptr %5, i64 0, i32 2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #16
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyActuator_property_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bPropertyActuator, ptr %6, i64 0, i32 2
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyActuator_value_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bPropertyActuator, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PropertyActuator_value_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bPropertyActuator, ptr %5, i64 0, i32 3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #16
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyActuator_value_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bPropertyActuator, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyActuator_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bPropertyActuator, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !125
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %8) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyActuator_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.bPropertyActuator, ptr %6, i64 0, i32 4
  store ptr %8, ptr %12, align 8, !tbaa !125
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyActuator_object_property_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bPropertyActuator, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PropertyActuator_object_property_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bPropertyActuator, ptr %5, i64 0, i32 3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #16
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyActuator_object_property_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bPropertyActuator, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConstraintActuator_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i16, ptr %5, align 4, !tbaa !126
  %7 = sext i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  tail call fastcc void @rna_ConstraintActuator_type_set(ptr noundef %0, i32 noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ConstraintActuator_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !128 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = load i16, ptr %6, align 4, !tbaa !126
  %8 = sext i16 %7 to i32
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = trunc i32 %1 to i16
  store i16 %11, ptr %6, align 4, !tbaa !126
  %12 = and i32 %1, 65535
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !129
  switch i16 %16, label %18 [
    i16 8, label %17
    i16 16, label %17
    i16 32, label %17
  ]

17:                                               ; preds = %14, %14, %14
  store i16 0, ptr %15, align 2, !tbaa !129
  br label %18

18:                                               ; preds = %14, %10, %17, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConstraintActuator_limit_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 4, !tbaa !130
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_limit_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 2
  store i16 %7, ptr %8, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConstraintActuator_direction_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !129
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_direction_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 1
  store i16 %7, ptr %8, align 2, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConstraintActuator_direction_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !129
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_direction_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 1
  store i16 %7, ptr %8, align 2, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ConstraintActuator_limit_min_get(ptr nocapture noundef readonly %0) #7 {
  %2 = tail call fastcc float @rna_ConstraintActuator_limitmin_get(ptr noundef %0) #15
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @rna_ConstraintActuator_limitmin_get(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !131 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 4, !tbaa !130
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 7
  br label %35

13:                                               ; preds = %1
  %14 = and i32 %8, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 7, i64 1
  br label %35

18:                                               ; preds = %13
  %19 = and i32 %8, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 7, i64 2
  br label %35

23:                                               ; preds = %18
  %24 = and i32 %8, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 9
  br label %35

28:                                               ; preds = %23
  %29 = and i32 %8, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 9, i64 1
  br label %35

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 9, i64 2
  br label %35

35:                                               ; preds = %16, %26, %33, %31, %21, %11
  %36 = phi ptr [ %12, %11 ], [ %17, %16 ], [ %22, %21 ], [ %27, %26 ], [ %32, %31 ], [ %34, %33 ]
  %37 = load float, ptr %36, align 4, !tbaa !84
  ret float %37
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_limit_min_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  tail call fastcc void @rna_ConstraintActuator_limitmin_set(ptr noundef %0, float noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ConstraintActuator_limitmin_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #8 !PGOFuncName !132 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 2
  %8 = load i16, ptr %7, align 4, !tbaa !130
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 7
  br label %36

14:                                               ; preds = %2
  %15 = and i32 %9, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 7, i64 1
  br label %36

19:                                               ; preds = %14
  %20 = and i32 %9, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 7, i64 2
  br label %36

24:                                               ; preds = %19
  %25 = and i32 %9, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 9
  br label %36

29:                                               ; preds = %24
  %30 = and i32 %9, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 9, i64 1
  br label %36

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 9, i64 2
  br label %36

36:                                               ; preds = %17, %27, %34, %32, %22, %12
  %37 = phi ptr [ %13, %12 ], [ %18, %17 ], [ %23, %22 ], [ %28, %27 ], [ %33, %32 ], [ %35, %34 ]
  store float %1, ptr %37, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ConstraintActuator_limit_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = tail call fastcc float @rna_ConstraintActuator_limitmax_get(ptr noundef %0) #15
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @rna_ConstraintActuator_limitmax_get(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !133 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 4, !tbaa !130
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 8
  br label %35

13:                                               ; preds = %1
  %14 = and i32 %8, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 8, i64 1
  br label %35

18:                                               ; preds = %13
  %19 = and i32 %8, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 8, i64 2
  br label %35

23:                                               ; preds = %18
  %24 = and i32 %8, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 10
  br label %35

28:                                               ; preds = %23
  %29 = and i32 %8, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 10, i64 1
  br label %35

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 10, i64 2
  br label %35

35:                                               ; preds = %16, %26, %33, %31, %21, %11
  %36 = phi ptr [ %12, %11 ], [ %17, %16 ], [ %22, %21 ], [ %27, %26 ], [ %32, %31 ], [ %34, %33 ]
  %37 = load float, ptr %36, align 4, !tbaa !84
  ret float %37
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_limit_max_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  tail call fastcc void @rna_ConstraintActuator_limitmax_set(ptr noundef %0, float noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ConstraintActuator_limitmax_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #8 !PGOFuncName !134 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 2
  %8 = load i16, ptr %7, align 4, !tbaa !130
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 8
  br label %36

14:                                               ; preds = %2
  %15 = and i32 %9, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 8, i64 1
  br label %36

19:                                               ; preds = %14
  %20 = and i32 %9, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 8, i64 2
  br label %36

24:                                               ; preds = %19
  %25 = and i32 %9, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 10
  br label %36

29:                                               ; preds = %24
  %30 = and i32 %9, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 10, i64 1
  br label %36

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 10, i64 2
  br label %36

36:                                               ; preds = %17, %27, %34, %32, %22, %12
  %37 = phi ptr [ %13, %12 ], [ %18, %17 ], [ %23, %22 ], [ %28, %27 ], [ %33, %32 ], [ %35, %34 ]
  store float %1, ptr %37, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConstraintActuator_damping_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !135
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_damping_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 -32768)
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 3
  store i16 %9, ptr %10, align 2, !tbaa !135
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ConstraintActuator_range_get(ptr nocapture noundef readonly %0) #7 {
  %2 = tail call fastcc float @rna_ConstraintActuator_range_get(ptr noundef %0) #15
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @rna_ConstraintActuator_range_get(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !136 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !129
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 8
  br label %20

13:                                               ; preds = %1
  %14 = and i32 %8, 18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 8, i64 1
  br label %20

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 8, i64 2
  br label %20

20:                                               ; preds = %16, %18, %11
  %21 = phi ptr [ %12, %11 ], [ %17, %16 ], [ %19, %18 ]
  %22 = load float, ptr %21, align 4, !tbaa !84
  ret float %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_range_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  tail call fastcc void @rna_ConstraintActuator_range_set(ptr noundef %0, float noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ConstraintActuator_range_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #8 !PGOFuncName !137 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !129
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 8
  br label %21

14:                                               ; preds = %2
  %15 = and i32 %9, 18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 8, i64 1
  br label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 8, i64 2
  br label %21

21:                                               ; preds = %17, %19, %12
  %22 = phi ptr [ %13, %12 ], [ %18, %17 ], [ %20, %19 ]
  store float %1, ptr %22, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ConstraintActuator_distance_get(ptr nocapture noundef readonly %0) #7 {
  %2 = tail call fastcc float @rna_ConstraintActuator_distance_get(ptr noundef %0) #15
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @rna_ConstraintActuator_distance_get(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !138 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !129
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 7
  br label %20

13:                                               ; preds = %1
  %14 = and i32 %8, 18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 7, i64 1
  br label %20

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 7, i64 2
  br label %20

20:                                               ; preds = %16, %18, %11
  %21 = phi ptr [ %12, %11 ], [ %17, %16 ], [ %19, %18 ]
  %22 = load float, ptr %21, align 4, !tbaa !84
  ret float %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  tail call fastcc void @rna_ConstraintActuator_distance_set(ptr noundef %0, float noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ConstraintActuator_distance_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #8 !PGOFuncName !139 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !129
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 7
  br label %21

14:                                               ; preds = %2
  %15 = and i32 %9, 18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 7, i64 1
  br label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 7, i64 2
  br label %21

21:                                               ; preds = %17, %19, %12
  %22 = phi ptr [ %13, %12 ], [ %18, %17 ], [ %20, %19 ]
  store float %1, ptr %22, align 4, !tbaa !84
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConstraintActuator_material_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 11
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConstraintActuator_material_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 11
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #16
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConstraintActuator_material_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 11
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConstraintActuator_property_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 11
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConstraintActuator_property_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 11
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #16
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConstraintActuator_property_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 11
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConstraintActuator_time_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 4
  %7 = load i16, ptr %6, align 4, !tbaa !140
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_time_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 -32768)
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 4
  store i16 %9, ptr %10, align 4, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConstraintActuator_damping_rotation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !141
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_damping_rotation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 -32768)
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 5
  store i16 %9, ptr %10, align 2, !tbaa !141
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConstraintActuator_direction_axis_pos_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !129
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_direction_axis_pos_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 1
  store i16 %7, ptr %8, align 2, !tbaa !129
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_rotation_max_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 10
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %7, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds float, ptr %1, i64 %9
  store float %11, ptr %12, align 4, !tbaa !84
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !142

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_rotation_max_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 10
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %1, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds float, ptr %7, i64 %9
  store float %11, ptr %12, align 4, !tbaa !84
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !143

15:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ConstraintActuator_angle_min_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 7
  %7 = load float, ptr %6, align 4, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_angle_min_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 0x400921FB60000000
  %9 = select i1 %8, float 0x400921FB60000000, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 7
  store float %10, ptr %11, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ConstraintActuator_angle_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_angle_max_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 0x400921FB60000000
  %9 = select i1 %8, float 0x400921FB60000000, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 8
  store float %10, ptr %11, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ConstraintActuator_fh_height_get(ptr nocapture noundef readonly %0) #7 {
  %2 = tail call fastcc float @rna_ConstraintActuator_fhheight_get(ptr noundef %0) #15
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @rna_ConstraintActuator_fhheight_get(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !144 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !129
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 7
  br label %20

13:                                               ; preds = %1
  %14 = and i32 %8, 18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 7, i64 1
  br label %20

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 7, i64 2
  br label %20

20:                                               ; preds = %16, %18, %11
  %21 = phi ptr [ %12, %11 ], [ %17, %16 ], [ %19, %18 ]
  %22 = load float, ptr %21, align 4, !tbaa !84
  ret float %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_fh_height_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  tail call fastcc void @rna_ConstraintActuator_fhheight_set(ptr noundef %0, float noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ConstraintActuator_fhheight_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #8 !PGOFuncName !145 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !129
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 7
  br label %21

14:                                               ; preds = %2
  %15 = and i32 %9, 18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 7, i64 1
  br label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 7, i64 2
  br label %21

21:                                               ; preds = %17, %19, %12
  %22 = phi ptr [ %13, %12 ], [ %18, %17 ], [ %20, %19 ]
  store float %1, ptr %22, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ConstraintActuator_fh_force_get(ptr nocapture noundef readonly %0) #7 {
  %2 = tail call fastcc float @rna_ConstraintActuator_spring_get(ptr noundef %0) #15
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @rna_ConstraintActuator_spring_get(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !146 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !129
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 8
  br label %20

13:                                               ; preds = %1
  %14 = and i32 %8, 18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 8, i64 1
  br label %20

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 8, i64 2
  br label %20

20:                                               ; preds = %16, %18, %11
  %21 = phi ptr [ %12, %11 ], [ %17, %16 ], [ %19, %18 ]
  %22 = load float, ptr %21, align 4, !tbaa !84
  ret float %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_fh_force_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  tail call fastcc void @rna_ConstraintActuator_spring_set(ptr noundef %0, float noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ConstraintActuator_spring_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #8 !PGOFuncName !147 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !129
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 8
  br label %21

14:                                               ; preds = %2
  %15 = and i32 %9, 18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 8, i64 1
  br label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 8, i64 2
  br label %21

21:                                               ; preds = %17, %19, %12
  %22 = phi ptr [ %13, %12 ], [ %18, %17 ], [ %20, %19 ]
  store float %1, ptr %22, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ConstraintActuator_fh_damping_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 10
  %7 = load float, ptr %6, align 4, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_fh_damping_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 10
  store float %1, ptr %7, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConstraintActuator_use_force_distance_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 4, !tbaa !130
  %8 = lshr i16 %7, 9
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_use_force_distance_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 4, !tbaa !130
  %10 = and i16 %9, -513
  %11 = select i1 %7, i16 0, i16 512
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConstraintActuator_use_local_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 4, !tbaa !130
  %8 = lshr i16 %7, 10
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_use_local_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 4, !tbaa !130
  %10 = and i16 %9, -1025
  %11 = select i1 %7, i16 0, i16 1024
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConstraintActuator_use_normal_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 4, !tbaa !130
  %8 = lshr i16 %7, 6
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_use_normal_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 4, !tbaa !130
  %10 = and i16 %9, -65
  %11 = select i1 %7, i16 0, i16 64
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConstraintActuator_use_persistent_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 4, !tbaa !130
  %8 = lshr i16 %7, 8
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_use_persistent_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 4, !tbaa !130
  %10 = and i16 %9, -257
  %11 = select i1 %7, i16 0, i16 256
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConstraintActuator_use_material_detect_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 4, !tbaa !130
  %8 = lshr i16 %7, 7
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_use_material_detect_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  tail call fastcc void @rna_Actuator_constraint_detect_material_set(ptr noundef %0, i32 noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Actuator_constraint_detect_material_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !148 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 2
  %8 = load i16, ptr %7, align 4, !tbaa !130
  %9 = lshr i16 %8, 7
  %10 = and i16 %9, 1
  %11 = zext nneg i16 %10 to i32
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = xor i16 %8, 128
  store i16 %14, ptr %7, align 4, !tbaa !130
  %15 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 11
  store i8 0, ptr %15, align 4, !tbaa !52
  br label %16

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConstraintActuator_use_fh_paralel_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 4, !tbaa !130
  %8 = lshr i16 %7, 11
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_use_fh_paralel_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 4, !tbaa !130
  %10 = and i16 %9, -2049
  %11 = select i1 %7, i16 0, i16 2048
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConstraintActuator_use_fh_normal_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bConstraintActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 4, !tbaa !130
  %8 = lshr i16 %7, 6
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ConstraintActuator_use_fh_normal_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bConstraintActuator, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 4, !tbaa !130
  %10 = and i16 %9, -65
  %11 = select i1 %7, i16 0, i16 64
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditObjectActuator_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bEditObjectActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 4, !tbaa !149
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditObjectActuator_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 1
  store i16 %7, ptr %8, align 4, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditObjectActuator_dynamic_operation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bEditObjectActuator, ptr %5, i64 0, i32 10
  %7 = load i16, ptr %6, align 2, !tbaa !151
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditObjectActuator_dynamic_operation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 10
  store i16 %7, ptr %8, align 2, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditObjectActuator_up_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bEditObjectActuator, ptr %5, i64 0, i32 11
  %7 = load i16, ptr %6, align 8, !tbaa !152
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditObjectActuator_up_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 11
  store i16 %7, ptr %8, align 8, !tbaa !152
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditObjectActuator_track_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bEditObjectActuator, ptr %5, i64 0, i32 12
  %7 = load i16, ptr %6, align 2, !tbaa !153
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditObjectActuator_track_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 12
  store i16 %7, ptr %8, align 2, !tbaa !153
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EditObjectActuator_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !154
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %8) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EditObjectActuator_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 3
  store ptr %8, ptr %12, align 8, !tbaa !154
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EditObjectActuator_track_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !154
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %8) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EditObjectActuator_track_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 3
  store ptr %8, ptr %12, align 8, !tbaa !154
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EditObjectActuator_mesh_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !155
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Mesh, ptr noundef %8) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditObjectActuator_mesh_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #8 {
  tail call fastcc void @rna_Actuator_editobject_mesh_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Actuator_editobject_mesh_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #8 !PGOFuncName !156 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 4
  store ptr %8, ptr %9, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditObjectActuator_time_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i32, ptr %5, align 8, !tbaa !157
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditObjectActuator_time_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  store i32 %1, ptr %6, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @EditObjectActuator_mass_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bEditObjectActuator, ptr %5, i64 0, i32 8
  %7 = load float, ptr %6, align 8, !tbaa !158
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditObjectActuator_mass_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 8
  store float %1, ptr %7, align 8, !tbaa !158
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditObjectActuator_linear_velocity_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 6
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %7, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds float, ptr %1, i64 %9
  store float %11, ptr %12, align 4, !tbaa !84
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !159

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditObjectActuator_linear_velocity_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 6
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %1, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds float, ptr %7, i64 %9
  store float %11, ptr %12, align 4, !tbaa !84
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !160

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditObjectActuator_angular_velocity_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 7
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %7, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds float, ptr %1, i64 %9
  store float %11, ptr %12, align 4, !tbaa !84
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !161

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditObjectActuator_angular_velocity_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 7
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %1, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds float, ptr %7, i64 %9
  store float %11, ptr %12, align 4, !tbaa !84
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !162

15:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditObjectActuator_use_local_linear_velocity_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bEditObjectActuator, ptr %5, i64 0, i32 9
  %7 = load i16, ptr %6, align 4, !tbaa !163
  %8 = lshr i16 %7, 1
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditObjectActuator_use_local_linear_velocity_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 9
  %9 = load i16, ptr %8, align 4, !tbaa !163
  %10 = and i16 %9, -3
  %11 = select i1 %7, i16 0, i16 2
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditObjectActuator_use_local_angular_velocity_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bEditObjectActuator, ptr %5, i64 0, i32 9
  %7 = load i16, ptr %6, align 4, !tbaa !163
  %8 = lshr i16 %7, 2
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditObjectActuator_use_local_angular_velocity_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 9
  %9 = load i16, ptr %8, align 4, !tbaa !163
  %10 = and i16 %9, -5
  %11 = select i1 %7, i16 0, i16 4
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditObjectActuator_use_replace_display_mesh_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bEditObjectActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !164
  %8 = and i16 %7, 2
  %9 = icmp eq i16 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditObjectActuator_use_replace_display_mesh_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !164
  %10 = and i16 %9, -3
  %11 = select i1 %7, i16 2, i16 0
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !164
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditObjectActuator_use_replace_physics_mesh_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bEditObjectActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !164
  %8 = lshr i16 %7, 2
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditObjectActuator_use_replace_physics_mesh_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !164
  %10 = and i16 %9, -5
  %11 = select i1 %7, i16 0, i16 4
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !164
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditObjectActuator_use_3d_tracking_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bEditObjectActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !164
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditObjectActuator_use_3d_tracking_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bEditObjectActuator, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !164
  %10 = and i16 %9, -2
  %11 = zext i1 %7 to i16
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !164
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SceneActuator_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i16, ptr %5, align 8, !tbaa !165
  %7 = sext i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SceneActuator_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = trunc i32 %1 to i16
  store i16 %7, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SceneActuator_camera_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bSceneActuator, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %8) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SceneActuator_camera_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.bSceneActuator, ptr %6, i64 0, i32 4
  store ptr %8, ptr %12, align 8, !tbaa !167
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SceneActuator_scene_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bSceneActuator, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !168
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Scene, ptr noundef %8) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SceneActuator_scene_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.bSceneActuator, ptr %6, i64 0, i32 3
  store ptr %8, ptr %12, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RandomActuator_seed_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i32, ptr %5, align 4, !tbaa !169
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RandomActuator_seed_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 300000)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  store i32 %8, ptr %6, align 4, !tbaa !169
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RandomActuator_property_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bRandomActuator, ptr %6, i64 0, i32 6
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RandomActuator_property_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bRandomActuator, ptr %5, i64 0, i32 6
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #16
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RandomActuator_property_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bRandomActuator, ptr %6, i64 0, i32 6
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RandomActuator_distribution_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bRandomActuator, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !171
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RandomActuator_distribution_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bRandomActuator, ptr %6, i64 0, i32 1
  store i32 %1, ptr %7, align 4, !tbaa !171
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RandomActuator_use_always_true_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bRandomActuator, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !172
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RandomActuator_use_always_true_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bRandomActuator, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !172
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 4, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RandomActuator_chance_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bRandomActuator, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !173
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RandomActuator_chance_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+00
  %9 = select i1 %8, float 1.000000e+00, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bRandomActuator, ptr %6, i64 0, i32 4
  store float %10, ptr %11, align 4, !tbaa !173
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RandomActuator_int_value_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bRandomActuator, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !172
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RandomActuator_int_value_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bRandomActuator, ptr %6, i64 0, i32 2
  store i32 %1, ptr %7, align 4, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RandomActuator_int_min_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bRandomActuator, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !172
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RandomActuator_int_min_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 1000)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 -1000)
  %9 = getelementptr inbounds %struct.bRandomActuator, ptr %6, i64 0, i32 2
  store i32 %8, ptr %9, align 4, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RandomActuator_int_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bRandomActuator, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !174
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RandomActuator_int_max_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 1000)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 -1000)
  %9 = getelementptr inbounds %struct.bRandomActuator, ptr %6, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !174
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RandomActuator_int_mean_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bRandomActuator, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !173
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RandomActuator_int_mean_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, 0x3F847AE140000000
  %8 = fcmp ogt float %1, 1.000000e+02
  %9 = select i1 %8, float 1.000000e+02, float %1
  %10 = select i1 %7, float 0x3F847AE140000000, float %9
  %11 = getelementptr inbounds %struct.bRandomActuator, ptr %6, i64 0, i32 4
  store float %10, ptr %11, align 4, !tbaa !173
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RandomActuator_float_value_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bRandomActuator, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !173
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RandomActuator_float_value_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+00
  %9 = select i1 %8, float 1.000000e+00, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bRandomActuator, ptr %6, i64 0, i32 4
  store float %10, ptr %11, align 4, !tbaa !173
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RandomActuator_float_min_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bRandomActuator, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !173
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RandomActuator_float_min_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bRandomActuator, ptr %6, i64 0, i32 4
  store float %10, ptr %11, align 4, !tbaa !173
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RandomActuator_float_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bRandomActuator, ptr %5, i64 0, i32 5
  %7 = load float, ptr %6, align 4, !tbaa !175
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RandomActuator_float_max_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bRandomActuator, ptr %6, i64 0, i32 5
  store float %10, ptr %11, align 4, !tbaa !175
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RandomActuator_float_mean_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bRandomActuator, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !173
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RandomActuator_float_mean_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bRandomActuator, ptr %6, i64 0, i32 4
  store float %10, ptr %11, align 4, !tbaa !173
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RandomActuator_standard_derivation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bRandomActuator, ptr %5, i64 0, i32 5
  %7 = load float, ptr %6, align 4, !tbaa !175
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RandomActuator_standard_derivation_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bRandomActuator, ptr %6, i64 0, i32 5
  store float %10, ptr %11, align 4, !tbaa !175
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RandomActuator_half_life_time_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bRandomActuator, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !173
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RandomActuator_half_life_time_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bRandomActuator, ptr %6, i64 0, i32 4
  store float %10, ptr %11, align 4, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MessageActuator_to_property_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef %6, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MessageActuator_to_property_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #16
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MessageActuator_to_property_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = tail call ptr @BLI_strncpy_utf8(ptr noundef %6, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MessageActuator_subject_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bMessageActuator, ptr %6, i64 0, i32 2
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MessageActuator_subject_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMessageActuator, ptr %5, i64 0, i32 2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #16
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MessageActuator_subject_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bMessageActuator, ptr %6, i64 0, i32 2
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MessageActuator_body_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMessageActuator, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !176
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MessageActuator_body_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bMessageActuator, ptr %6, i64 0, i32 3
  store i16 %7, ptr %8, align 8, !tbaa !176
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MessageActuator_body_message_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bMessageActuator, ptr %6, i64 0, i32 6
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MessageActuator_body_message_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMessageActuator, ptr %5, i64 0, i32 6
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #16
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MessageActuator_body_message_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bMessageActuator, ptr %6, i64 0, i32 6
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MessageActuator_body_property_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bMessageActuator, ptr %6, i64 0, i32 6
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MessageActuator_body_property_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMessageActuator, ptr %5, i64 0, i32 6
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #16
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MessageActuator_body_property_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bMessageActuator, ptr %6, i64 0, i32 6
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameActuator_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bGameActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !178
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameActuator_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bGameActuator, ptr %6, i64 0, i32 1
  store i16 %7, ptr %8, align 2, !tbaa !178
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameActuator_filename_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bGameActuator, ptr %6, i64 0, i32 4
  %8 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #14
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameActuator_filename_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bGameActuator, ptr %5, i64 0, i32 4
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #16
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameActuator_filename_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bGameActuator, ptr %6, i64 0, i32 4
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VisibilityActuator_use_visible_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i32, ptr %5, align 4, !tbaa !180
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @VisibilityActuator_use_visible_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = load i32, ptr %6, align 4, !tbaa !180
  %9 = and i32 %8, -2
  %10 = zext i1 %7 to i32
  %11 = or disjoint i32 %9, %10
  store i32 %11, ptr %6, align 4, !tbaa !180
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VisibilityActuator_use_occlusion_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i32, ptr %5, align 4, !tbaa !180
  %7 = lshr i32 %6, 2
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @VisibilityActuator_use_occlusion_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = load i32, ptr %6, align 4, !tbaa !180
  %9 = and i32 %8, -5
  %10 = select i1 %7, i32 0, i32 4
  %11 = or disjoint i32 %9, %10
  store i32 %11, ptr %6, align 4, !tbaa !180
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VisibilityActuator_apply_to_children_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i32, ptr %5, align 4, !tbaa !180
  %7 = lshr i32 %6, 1
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @VisibilityActuator_apply_to_children_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = load i32, ptr %6, align 4, !tbaa !180
  %9 = and i32 %8, -3
  %10 = select i1 %7, i32 0, i32 2
  %11 = or disjoint i32 %9, %10
  store i32 %11, ptr %6, align 4, !tbaa !180
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Filter2DActuator_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bTwoDFilterActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 4, !tbaa !182
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Filter2DActuator_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bTwoDFilterActuator, ptr %6, i64 0, i32 1
  store i16 %7, ptr %8, align 4, !tbaa !182
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Filter2DActuator_glsl_shader_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bTwoDFilterActuator, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !184
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Text, ptr noundef %8) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Filter2DActuator_glsl_shader_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.bTwoDFilterActuator, ptr %6, i64 0, i32 5
  store ptr %8, ptr %12, align 8, !tbaa !184
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Filter2DActuator_filter_pass_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bTwoDFilterActuator, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !185
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Filter2DActuator_filter_pass_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 99)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %9 = getelementptr inbounds %struct.bTwoDFilterActuator, ptr %6, i64 0, i32 3
  store i32 %8, ptr %9, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Filter2DActuator_motion_blur_factor_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bTwoDFilterActuator, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !186
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Filter2DActuator_motion_blur_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+00
  %9 = select i1 %8, float 1.000000e+00, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bTwoDFilterActuator, ptr %6, i64 0, i32 4
  store float %10, ptr %11, align 4, !tbaa !186
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Filter2DActuator_use_motion_blur_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bTwoDFilterActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !187
  %8 = and i16 %7, 1
  %9 = xor i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Filter2DActuator_use_motion_blur_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bTwoDFilterActuator, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !187
  %10 = and i16 %9, -2
  %11 = zext i1 %7 to i16
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !187
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParentActuator_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bParentActuator, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !188
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParentActuator_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bParentActuator, ptr %6, i64 0, i32 2
  store i32 %1, ptr %7, align 4, !tbaa !188
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParentActuator_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bParentActuator, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !190
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %8) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParentActuator_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.bParentActuator, ptr %6, i64 0, i32 3
  store ptr %8, ptr %12, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParentActuator_use_compound_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bParentActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !191
  %8 = and i16 %7, 1
  %9 = xor i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParentActuator_use_compound_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bParentActuator, ptr %6, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !191
  %10 = and i16 %9, -2
  %11 = zext i1 %7 to i16
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !191
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParentActuator_use_ghost_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bParentActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !191
  %8 = and i16 %7, 2
  %9 = icmp eq i16 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParentActuator_use_ghost_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bParentActuator, ptr %6, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !191
  %10 = and i16 %9, -3
  %11 = select i1 %7, i16 2, i16 0
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !191
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @StateActuator_operation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i32, ptr %5, align 4, !tbaa !192
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @StateActuator_operation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  store i32 %1, ptr %6, align 4, !tbaa !192
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @StateActuator_states_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bStateActuator, ptr %6, i64 0, i32 1
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %15, %8 ]
  %10 = load i32, ptr %7, align 4, !tbaa !194
  %11 = trunc i64 %9 to i32
  %12 = lshr i32 %10, %11
  %13 = and i32 %12, 1
  %14 = getelementptr inbounds i32, ptr %1, i64 %9
  store i32 %13, ptr %14, align 4, !tbaa !38
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, 30
  br i1 %16, label %17, label %8, !llvm.loop !195

17:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @StateActuator_states_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  tail call fastcc void @rna_StateActuator_state_set(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_StateActuator_state_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !196 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  br label %7

7:                                                ; preds = %2, %7
  %8 = phi i64 [ 0, %2 ], [ %15, %7 ]
  %9 = phi i32 [ 0, %2 ], [ %14, %7 ]
  %10 = getelementptr inbounds i32, ptr %1, i64 %8
  %11 = load i32, ptr %10, align 4, !tbaa !38
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = add nuw nsw i32 %9, %13
  %15 = add nuw nsw i64 %8, 1
  %16 = icmp eq i64 %15, 30
  br i1 %16, label %17, label %7, !llvm.loop !197

17:                                               ; preds = %7
  %18 = icmp eq i32 %14, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.bStateActuator, ptr %6, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !194
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i32 [ %21, %19 ], [ %33, %22 ]
  %24 = phi i64 [ 0, %19 ], [ %34, %22 ]
  %25 = getelementptr inbounds i32, ptr %1, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !38
  %27 = icmp eq i32 %26, 0
  %28 = trunc i64 %24 to i32
  %29 = shl nuw nsw i32 1, %28
  %30 = or i32 %23, %29
  %31 = xor i32 %29, -1
  %32 = and i32 %23, %31
  %33 = select i1 %27, i32 %32, i32 %30
  store i32 %33, ptr %20, align 4, !tbaa !194
  %34 = add nuw nsw i64 %24, 1
  %35 = icmp eq i64 %34, 30
  br i1 %35, label %36, label %22, !llvm.loop !198

36:                                               ; preds = %22, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ArmatureActuator_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bArmatureActuator, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !199
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArmatureActuator_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bArmatureActuator, ptr %6, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !199
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureActuator_bone_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef %6, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ArmatureActuator_bone_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #16
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureActuator_bone_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = tail call ptr @BLI_strncpy_utf8(ptr noundef %6, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureActuator_constraint_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bArmatureActuator, ptr %6, i64 0, i32 1
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ArmatureActuator_constraint_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bArmatureActuator, ptr %5, i64 0, i32 1
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #16
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureActuator_constraint_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bArmatureActuator, ptr %6, i64 0, i32 1
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureActuator_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bArmatureActuator, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !201
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %8) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureActuator_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.bArmatureActuator, ptr %6, i64 0, i32 6
  store ptr %8, ptr %12, align 8, !tbaa !201
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureActuator_secondary_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bArmatureActuator, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !202
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %8) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureActuator_secondary_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.bArmatureActuator, ptr %6, i64 0, i32 7
  store ptr %8, ptr %12, align 8, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ArmatureActuator_weight_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bArmatureActuator, ptr %5, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !203
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArmatureActuator_weight_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+00
  %9 = select i1 %8, float 1.000000e+00, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bArmatureActuator, ptr %6, i64 0, i32 3
  store float %10, ptr %11, align 4, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ArmatureActuator_influence_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bArmatureActuator, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 8, !tbaa !204
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArmatureActuator_influence_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+00
  %9 = select i1 %8, float 1.000000e+00, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bArmatureActuator, ptr %6, i64 0, i32 4
  store float %10, ptr %11, align 8, !tbaa !204
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SteeringActuator_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSteeringActuator, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !205
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SteeringActuator_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bSteeringActuator, ptr %6, i64 0, i32 3
  store i32 %1, ptr %7, align 8, !tbaa !205
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SteeringActuator_velocity_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSteeringActuator, ptr %5, i64 0, i32 5
  %7 = load float, ptr %6, align 8, !tbaa !207
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SteeringActuator_velocity_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bSteeringActuator, ptr %6, i64 0, i32 5
  store float %10, ptr %11, align 8, !tbaa !207
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SteeringActuator_acceleration_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSteeringActuator, ptr %5, i64 0, i32 6
  %7 = load float, ptr %6, align 4, !tbaa !208
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SteeringActuator_acceleration_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bSteeringActuator, ptr %6, i64 0, i32 6
  store float %10, ptr %11, align 4, !tbaa !208
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SteeringActuator_turn_speed_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSteeringActuator, ptr %5, i64 0, i32 7
  %7 = load float, ptr %6, align 8, !tbaa !209
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SteeringActuator_turn_speed_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 7.200000e+02
  %9 = select i1 %8, float 7.200000e+02, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bSteeringActuator, ptr %6, i64 0, i32 7
  store float %10, ptr %11, align 8, !tbaa !209
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SteeringActuator_distance_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSteeringActuator, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !210
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SteeringActuator_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bSteeringActuator, ptr %6, i64 0, i32 4
  store float %10, ptr %11, align 4, !tbaa !210
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SteeringActuator_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bSteeringActuator, ptr %6, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !211
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %8) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SteeringActuator_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.bSteeringActuator, ptr %6, i64 0, i32 9
  store ptr %8, ptr %12, align 8, !tbaa !211
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SteeringActuator_self_terminated_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSteeringActuator, ptr %5, i64 0, i32 1
  %7 = load i8, ptr %6, align 1, !tbaa !212
  %8 = and i8 %7, 1
  %9 = zext nneg i8 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SteeringActuator_self_terminated_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bSteeringActuator, ptr %6, i64 0, i32 1
  %9 = load i8, ptr %8, align 1, !tbaa !212
  %10 = and i8 %9, -2
  %11 = zext i1 %7 to i8
  %12 = or disjoint i8 %10, %11
  store i8 %12, ptr %8, align 1, !tbaa !212
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SteeringActuator_show_visualization_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSteeringActuator, ptr %5, i64 0, i32 1
  %7 = load i8, ptr %6, align 1, !tbaa !212
  %8 = lshr i8 %7, 1
  %9 = and i8 %8, 1
  %10 = zext nneg i8 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SteeringActuator_show_visualization_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bSteeringActuator, ptr %6, i64 0, i32 1
  %9 = load i8, ptr %8, align 1, !tbaa !212
  %10 = and i8 %9, -3
  %11 = select i1 %7, i8 0, i8 2
  %12 = or disjoint i8 %10, %11
  store i8 %12, ptr %8, align 1, !tbaa !212
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SteeringActuator_update_period_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSteeringActuator, ptr %5, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !213
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SteeringActuator_update_period_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bSteeringActuator, ptr %6, i64 0, i32 8
  store i32 %1, ptr %7, align 4, !tbaa !213
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SteeringActuator_navmesh_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bSteeringActuator, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !214
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %8) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SteeringActuator_navmesh_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #8 {
  tail call fastcc void @rna_SteeringActuator_navmesh_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_SteeringActuator_navmesh_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #8 !PGOFuncName !215 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 113
  %12 = load i8, ptr %11, align 8, !tbaa !216
  %13 = icmp eq i8 %12, 7
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %2
  br label %15

15:                                               ; preds = %10, %14
  %16 = phi ptr [ null, %14 ], [ %8, %10 ]
  %17 = getelementptr inbounds %struct.bSteeringActuator, ptr %6, i64 0, i32 10
  store ptr %16, ptr %17, align 8, !tbaa !214
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SteeringActuator_facing_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSteeringActuator, ptr %5, i64 0, i32 1
  %7 = load i8, ptr %6, align 1, !tbaa !212
  %8 = lshr i8 %7, 2
  %9 = and i8 %8, 1
  %10 = zext nneg i8 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SteeringActuator_facing_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bSteeringActuator, ptr %6, i64 0, i32 1
  %9 = load i8, ptr %8, align 1, !tbaa !212
  %10 = and i8 %9, -5
  %11 = select i1 %7, i8 0, i8 4
  %12 = or disjoint i8 %10, %11
  store i8 %12, ptr %8, align 1, !tbaa !212
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SteeringActuator_facing_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSteeringActuator, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !217
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SteeringActuator_facing_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bSteeringActuator, ptr %6, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !217
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SteeringActuator_normal_up_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bSteeringActuator, ptr %5, i64 0, i32 1
  %7 = load i8, ptr %6, align 1, !tbaa !212
  %8 = lshr i8 %7, 3
  %9 = and i8 %8, 1
  %10 = zext nneg i8 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SteeringActuator_normal_up_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bSteeringActuator, ptr %6, i64 0, i32 1
  %9 = load i8, ptr %8, align 1, !tbaa !212
  %10 = and i8 %9, -9
  %11 = select i1 %7, i8 0, i8 8
  %12 = or disjoint i8 %10, %11
  store i8 %12, ptr %8, align 1, !tbaa !212
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MouseActuator_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i16, ptr %5, align 4, !tbaa !218
  %7 = sext i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MouseActuator_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = trunc i32 %1 to i16
  store i16 %7, ptr %6, align 4, !tbaa !218
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MouseActuator_visible_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMouseActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !220
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MouseActuator_visible_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bMouseActuator, ptr %6, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !220
  %10 = and i16 %9, -2
  %11 = zext i1 %7 to i16
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MouseActuator_use_axis_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMouseActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !220
  %8 = lshr i16 %7, 1
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MouseActuator_use_axis_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bMouseActuator, ptr %6, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !220
  %10 = and i16 %9, -3
  %11 = select i1 %7, i16 0, i16 2
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MouseActuator_use_axis_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMouseActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !220
  %8 = lshr i16 %7, 2
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MouseActuator_use_axis_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bMouseActuator, ptr %6, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !220
  %10 = and i16 %9, -5
  %11 = select i1 %7, i16 0, i16 4
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MouseActuator_reset_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMouseActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !220
  %8 = lshr i16 %7, 3
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MouseActuator_reset_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bMouseActuator, ptr %6, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !220
  %10 = and i16 %9, -9
  %11 = select i1 %7, i16 0, i16 8
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MouseActuator_reset_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMouseActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !220
  %8 = lshr i16 %7, 4
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MouseActuator_reset_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bMouseActuator, ptr %6, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !220
  %10 = and i16 %9, -17
  %11 = select i1 %7, i16 0, i16 16
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MouseActuator_local_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMouseActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !220
  %8 = lshr i16 %7, 5
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MouseActuator_local_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bMouseActuator, ptr %6, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !220
  %10 = and i16 %9, -33
  %11 = select i1 %7, i16 0, i16 32
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MouseActuator_local_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMouseActuator, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !220
  %8 = lshr i16 %7, 6
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MouseActuator_local_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bMouseActuator, ptr %6, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !220
  %10 = and i16 %9, -65
  %11 = select i1 %7, i16 0, i16 64
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MouseActuator_threshold_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMouseActuator, ptr %5, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MouseActuator_threshold_x_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bMouseActuator, ptr %6, i64 0, i32 3
  store float %1, ptr %7, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MouseActuator_threshold_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMouseActuator, ptr %5, i64 0, i32 3, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MouseActuator_threshold_y_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bMouseActuator, ptr %6, i64 0, i32 3, i64 1
  store float %1, ptr %7, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MouseActuator_object_axis_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMouseActuator, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !38
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MouseActuator_object_axis_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bMouseActuator, ptr %6, i64 0, i32 2
  store i32 %1, ptr %7, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MouseActuator_object_axis_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMouseActuator, ptr %5, i64 0, i32 2, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !38
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MouseActuator_object_axis_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bMouseActuator, ptr %6, i64 0, i32 2, i64 1
  store i32 %1, ptr %7, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MouseActuator_sensitivity_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMouseActuator, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MouseActuator_sensitivity_x_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bMouseActuator, ptr %6, i64 0, i32 4
  store float %1, ptr %7, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MouseActuator_sensitivity_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMouseActuator, ptr %5, i64 0, i32 4, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MouseActuator_sensitivity_y_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bMouseActuator, ptr %6, i64 0, i32 4, i64 1
  store float %1, ptr %7, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MouseActuator_min_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMouseActuator, ptr %5, i64 0, i32 5
  %7 = load float, ptr %6, align 4, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MouseActuator_min_x_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bMouseActuator, ptr %6, i64 0, i32 5
  store float %1, ptr %7, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MouseActuator_max_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMouseActuator, ptr %5, i64 0, i32 5, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MouseActuator_max_x_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bMouseActuator, ptr %6, i64 0, i32 5, i64 1
  store float %1, ptr %7, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MouseActuator_min_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMouseActuator, ptr %5, i64 0, i32 6
  %7 = load float, ptr %6, align 4, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MouseActuator_min_y_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bMouseActuator, ptr %6, i64 0, i32 6
  store float %1, ptr %7, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MouseActuator_max_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bMouseActuator, ptr %5, i64 0, i32 6, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !84
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MouseActuator_max_y_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.bActuator, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.bMouseActuator, ptr %6, i64 0, i32 6, i64 1
  store float %1, ptr %7, align 4, !tbaa !84
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Actuator_link(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Actuator_link(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Actuator_link(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !221 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bController, ptr %1, i64 0, i32 13
  %5 = getelementptr inbounds %struct.bController, ptr %1, i64 0, i32 6
  call void @link_logicbricks(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef signext 8) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Actuator_link_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = load ptr, ptr %3, align 8, !tbaa !222
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  tail call fastcc void @rna_Actuator_link(ptr noundef %6, ptr noundef %8) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Actuator_unlink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Actuator_unlink(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Actuator_unlink(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !224 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bController, ptr %1, i64 0, i32 13
  %5 = getelementptr inbounds %struct.bController, ptr %1, i64 0, i32 6
  call void @unlink_logicbricks(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Actuator_unlink_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = load ptr, ptr %3, align 8, !tbaa !222
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  tail call fastcc void @rna_Actuator_unlink(ptr noundef %6, ptr noundef %8) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef nonnull ptr @rna_Actuator_refine(ptr nocapture noundef readonly %0) #7 !PGOFuncName !225 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !60
  %6 = icmp ult i16 %5, 26
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = zext nneg i16 %5 to i64
  %9 = getelementptr inbounds [26 x ptr], ptr @switch.table.rna_Actuator_refine, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %10, %7 ], [ @RNA_Actuator, %1 ]
  ret ptr %12
}

; Function Attrs: optsize
declare i32 @rna_Camera_object_poll(ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) #2

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @rna_Actuator_Armature_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #11 !PGOFuncName !226 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.bActuator, ptr %5, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = load ptr, ptr %2, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.bArmatureActuator, ptr %7, i64 0, i32 1
  %10 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !44
  %12 = icmp eq i16 %11, 25
  br i1 %12, label %13, label %35

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !227
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %13, %21
  %18 = phi ptr [ %19, %21 ], [ %15, %13 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 4
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %7) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %17, !llvm.loop !228

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 3
  br label %27

27:                                               ; preds = %31, %25
  %28 = phi ptr [ %26, %25 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.bConstraint, ptr %29, i64 0, i32 7
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(1) %9) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %27, !llvm.loop !229

35:                                               ; preds = %17, %13, %3
  store i8 0, ptr %7, align 1, !tbaa !52
  br label %36

36:                                               ; preds = %27, %35
  store i8 0, ptr %9, align 1, !tbaa !52
  br label %37

37:                                               ; preds = %31, %36
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_actuator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @link_logicbricks(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unlink_logicbricks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!41, !35, i64 8}
!41 = !{!"PointerRNA", !42, i64 0, !35, i64 8, !35, i64 16}
!42 = !{!"", !35, i64 0}
!43 = !{!41, !35, i64 0}
!44 = !{!45, !47, i64 136}
!45 = !{!"Object", !46, i64 0, !35, i64 120, !35, i64 128, !47, i64 136, !47, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !48, i64 312, !35, i64 360, !49, i64 368, !49, i64 384, !49, i64 400, !49, i64 416, !39, i64 432, !39, i64 436, !35, i64 440, !35, i64 448, !39, i64 456, !39, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !50, i64 616, !50, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !39, i64 944, !47, i64 948, !47, i64 950, !47, i64 952, !47, i64 954, !47, i64 956, !47, i64 958, !47, i64 960, !47, i64 962, !47, i64 964, !36, i64 966, !36, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !50, i64 988, !50, i64 992, !50, i64 996, !50, i64 1000, !50, i64 1004, !50, i64 1008, !50, i64 1012, !50, i64 1016, !50, i64 1020, !50, i64 1024, !50, i64 1028, !50, i64 1032, !47, i64 1036, !47, i64 1038, !47, i64 1040, !36, i64 1042, !36, i64 1043, !47, i64 1044, !36, i64 1046, !36, i64 1047, !50, i64 1048, !50, i64 1052, !49, i64 1056, !49, i64 1072, !49, i64 1088, !49, i64 1104, !50, i64 1120, !47, i64 1124, !47, i64 1126, !36, i64 1128, !39, i64 1144, !39, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !47, i64 1162, !36, i64 1164, !49, i64 1176, !49, i64 1192, !49, i64 1208, !49, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !47, i64 1266, !50, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !51, i64 1304, !51, i64 1312, !39, i64 1320, !39, i64 1324, !49, i64 1328, !49, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !49, i64 1400, !35, i64 1416}
!46 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !47, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !35, i64 112}
!47 = !{!"short", !36, i64 0}
!48 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!49 = !{!"ListBase", !35, i64 0, !35, i64 8}
!50 = !{!"float", !36, i64 0}
!51 = !{!"long", !36, i64 0}
!52 = !{!36, !36, i64 0}
!53 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34}
!54 = !{!55, !35, i64 48}
!55 = !{!"CollectionPropertyIterator", !41, i64 0, !41, i64 24, !35, i64 48, !36, i64 56, !39, i64 96, !39, i64 100, !41, i64 104, !39, i64 128}
!56 = !{!55, !39, i64 128}
!57 = !{!"rna_actuator_gen.c:Actuator_rna_properties_get"}
!58 = !{!41, !35, i64 16}
!59 = !{!"rna_actuator_gen.c:rna_Actuator_name_set"}
!60 = !{!61, !47, i64 24}
!61 = !{!"bActuator", !35, i64 0, !35, i64 8, !35, i64 16, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !36, i64 32, !35, i64 96, !35, i64 104}
!62 = !{!"rna_actuator_gen.c:rna_Actuator_type_set"}
!63 = !{!61, !47, i64 26}
!64 = !{!61, !35, i64 96}
!65 = !{!66, !47, i64 8}
!66 = !{!"bActionActuator", !35, i64 0, !47, i64 8, !47, i64 10, !50, i64 12, !50, i64 16, !36, i64 20, !36, i64 84, !47, i64 148, !47, i64 150, !47, i64 152, !47, i64 154, !47, i64 156, !47, i64 158, !50, i64 160, !50, i64 164}
!67 = !{!66, !35, i64 0}
!68 = !{!"rna_actuator_gen.c:rna_Actuator_action_action_set"}
!69 = !{!66, !47, i64 154}
!70 = !{!66, !50, i64 12}
!71 = !{!66, !50, i64 16}
!72 = !{!66, !47, i64 148}
!73 = !{!66, !47, i64 150}
!74 = !{!66, !47, i64 152}
!75 = !{!66, !50, i64 164}
!76 = !{!66, !47, i64 10}
!77 = !{!"rna_actuator_gen.c:rna_ActionActuator_add_set"}
!78 = !{!"rna_actuator_gen.c:rna_ActionActuator_force_set"}
!79 = !{!66, !47, i64 158}
!80 = !{!81, !47, i64 2}
!81 = !{!"bObjectActuator", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6, !36, i64 8, !36, i64 20, !36, i64 32, !36, i64 44, !36, i64 56, !36, i64 68, !36, i64 80, !36, i64 92, !35, i64 104}
!82 = !{!"rna_actuator_gen.c:rna_ObjectActuator_type_set"}
!83 = !{!81, !47, i64 0}
!84 = !{!50, !50, i64 0}
!85 = !{!81, !35, i64 104}
!86 = !{!81, !47, i64 6}
!87 = !{!"rna_actuator_gen.c:rna_ObjectActuator_integralcoefficient_set"}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.mustprogress"}
!90 = distinct !{!90, !89}
!91 = distinct !{!91, !89}
!92 = distinct !{!92, !89}
!93 = distinct !{!93, !89}
!94 = distinct !{!94, !89}
!95 = distinct !{!95, !89}
!96 = distinct !{!96, !89}
!97 = distinct !{!97, !89}
!98 = distinct !{!98, !89}
!99 = distinct !{!99, !89}
!100 = distinct !{!100, !89}
!101 = !{!102, !35, i64 0}
!102 = !{!"bCameraActuator", !35, i64 0, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !47, i64 24, !47, i64 26, !50, i64 28}
!103 = !{!102, !50, i64 8}
!104 = !{!102, !50, i64 12}
!105 = !{!102, !50, i64 16}
!106 = !{!102, !50, i64 20}
!107 = !{!102, !47, i64 26}
!108 = !{!109, !35, i64 24}
!109 = !{!"bSoundActuator", !47, i64 0, !47, i64 2, !39, i64 4, !39, i64 8, !36, i64 12, !50, i64 16, !50, i64 20, !35, i64 24, !110, i64 32, !47, i64 64, !47, i64 66, !47, i64 68, !36, i64 70}
!110 = !{!"Sound3D", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28}
!111 = !{!109, !47, i64 64}
!112 = !{!109, !50, i64 16}
!113 = !{!109, !50, i64 20}
!114 = !{!109, !50, i64 32}
!115 = !{!109, !50, i64 36}
!116 = !{!109, !50, i64 40}
!117 = !{!109, !50, i64 44}
!118 = !{!109, !50, i64 48}
!119 = !{!109, !50, i64 60}
!120 = !{!109, !50, i64 56}
!121 = !{!109, !50, i64 52}
!122 = !{!109, !47, i64 0}
!123 = !{!124, !39, i64 4}
!124 = !{!"bPropertyActuator", !39, i64 0, !39, i64 4, !36, i64 8, !36, i64 72, !35, i64 136}
!125 = !{!124, !35, i64 136}
!126 = !{!127, !47, i64 0}
!127 = !{!"bConstraintActuator", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6, !47, i64 8, !47, i64 10, !39, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !36, i64 52, !36, i64 64}
!128 = !{!"rna_actuator_gen.c:rna_ConstraintActuator_type_set"}
!129 = !{!127, !47, i64 2}
!130 = !{!127, !47, i64 4}
!131 = !{!"rna_actuator_gen.c:rna_ConstraintActuator_limitmin_get"}
!132 = !{!"rna_actuator_gen.c:rna_ConstraintActuator_limitmin_set"}
!133 = !{!"rna_actuator_gen.c:rna_ConstraintActuator_limitmax_get"}
!134 = !{!"rna_actuator_gen.c:rna_ConstraintActuator_limitmax_set"}
!135 = !{!127, !47, i64 6}
!136 = !{!"rna_actuator_gen.c:rna_ConstraintActuator_range_get"}
!137 = !{!"rna_actuator_gen.c:rna_ConstraintActuator_range_set"}
!138 = !{!"rna_actuator_gen.c:rna_ConstraintActuator_distance_get"}
!139 = !{!"rna_actuator_gen.c:rna_ConstraintActuator_distance_set"}
!140 = !{!127, !47, i64 8}
!141 = !{!127, !47, i64 10}
!142 = distinct !{!142, !89}
!143 = distinct !{!143, !89}
!144 = !{!"rna_actuator_gen.c:rna_ConstraintActuator_fhheight_get"}
!145 = !{!"rna_actuator_gen.c:rna_ConstraintActuator_fhheight_set"}
!146 = !{!"rna_actuator_gen.c:rna_ConstraintActuator_spring_get"}
!147 = !{!"rna_actuator_gen.c:rna_ConstraintActuator_spring_set"}
!148 = !{!"rna_actuator_gen.c:rna_Actuator_constraint_detect_material_set"}
!149 = !{!150, !47, i64 4}
!150 = !{!"bEditObjectActuator", !39, i64 0, !47, i64 4, !47, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 100, !50, i64 112, !47, i64 116, !47, i64 118, !47, i64 120, !47, i64 122, !39, i64 124}
!151 = !{!150, !47, i64 118}
!152 = !{!150, !47, i64 120}
!153 = !{!150, !47, i64 122}
!154 = !{!150, !35, i64 8}
!155 = !{!150, !35, i64 16}
!156 = !{!"rna_actuator_gen.c:rna_Actuator_editobject_mesh_set"}
!157 = !{!150, !39, i64 0}
!158 = !{!150, !50, i64 112}
!159 = distinct !{!159, !89}
!160 = distinct !{!160, !89}
!161 = distinct !{!161, !89}
!162 = distinct !{!162, !89}
!163 = !{!150, !47, i64 116}
!164 = !{!150, !47, i64 6}
!165 = !{!166, !47, i64 0}
!166 = !{!"bSceneActuator", !47, i64 0, !47, i64 2, !39, i64 4, !35, i64 8, !35, i64 16}
!167 = !{!166, !35, i64 16}
!168 = !{!166, !35, i64 8}
!169 = !{!170, !39, i64 0}
!170 = !{!"bRandomActuator", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !50, i64 16, !50, i64 20, !36, i64 24}
!171 = !{!170, !39, i64 4}
!172 = !{!170, !39, i64 8}
!173 = !{!170, !50, i64 16}
!174 = !{!170, !39, i64 12}
!175 = !{!170, !50, i64 20}
!176 = !{!177, !47, i64 136}
!177 = !{!"bMessageActuator", !36, i64 0, !35, i64 64, !36, i64 72, !47, i64 136, !47, i64 138, !39, i64 140, !36, i64 144}
!178 = !{!179, !47, i64 2}
!179 = !{!"bGameActuator", !47, i64 0, !47, i64 2, !39, i64 4, !39, i64 8, !36, i64 12, !36, i64 76}
!180 = !{!181, !39, i64 0}
!181 = !{!"bVisibilityActuator", !39, i64 0}
!182 = !{!183, !47, i64 4}
!183 = !{!"bTwoDFilterActuator", !36, i64 0, !47, i64 4, !47, i64 6, !39, i64 8, !50, i64 12, !35, i64 16}
!184 = !{!183, !35, i64 16}
!185 = !{!183, !39, i64 8}
!186 = !{!183, !50, i64 12}
!187 = !{!183, !47, i64 6}
!188 = !{!189, !39, i64 4}
!189 = !{!"bParentActuator", !36, i64 0, !47, i64 2, !39, i64 4, !35, i64 8}
!190 = !{!189, !35, i64 8}
!191 = !{!189, !47, i64 2}
!192 = !{!193, !39, i64 0}
!193 = !{!"bStateActuator", !39, i64 0, !39, i64 4}
!194 = !{!193, !39, i64 4}
!195 = distinct !{!195, !89}
!196 = !{!"rna_actuator_gen.c:rna_StateActuator_state_set"}
!197 = distinct !{!197, !89}
!198 = distinct !{!198, !89}
!199 = !{!200, !39, i64 128}
!200 = !{!"bArmatureActuator", !36, i64 0, !36, i64 64, !39, i64 128, !50, i64 132, !50, i64 136, !50, i64 140, !35, i64 144, !35, i64 152}
!201 = !{!200, !35, i64 144}
!202 = !{!200, !35, i64 152}
!203 = !{!200, !50, i64 132}
!204 = !{!200, !50, i64 136}
!205 = !{!206, !39, i64 8}
!206 = !{!"bSteeringActuator", !36, i64 0, !36, i64 5, !47, i64 6, !39, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !39, i64 28, !35, i64 32, !35, i64 40}
!207 = !{!206, !50, i64 16}
!208 = !{!206, !50, i64 20}
!209 = !{!206, !50, i64 24}
!210 = !{!206, !50, i64 12}
!211 = !{!206, !35, i64 32}
!212 = !{!206, !36, i64 5}
!213 = !{!206, !39, i64 28}
!214 = !{!206, !35, i64 40}
!215 = !{!"rna_actuator_gen.c:rna_SteeringActuator_navmesh_set"}
!216 = !{!45, !36, i64 1264}
!217 = !{!206, !47, i64 6}
!218 = !{!219, !47, i64 0}
!219 = !{!"bMouseActuator", !47, i64 0, !47, i64 2, !36, i64 4, !36, i64 12, !36, i64 20, !36, i64 28, !36, i64 36}
!220 = !{!219, !47, i64 2}
!221 = !{!"rna_actuator_gen.c:rna_Actuator_link"}
!222 = !{!223, !35, i64 0}
!223 = !{!"ParameterList", !35, i64 0, !35, i64 8, !39, i64 16, !39, i64 20, !39, i64 24}
!224 = !{!"rna_actuator_gen.c:rna_Actuator_unlink"}
!225 = !{!"rna_actuator_gen.c:rna_Actuator_refine"}
!226 = !{!"rna_actuator_gen.c:rna_Actuator_Armature_update"}
!227 = !{!45, !35, i64 288}
!228 = distinct !{!228, !89}
!229 = distinct !{!229, !89}
