; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_controller_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_controller_gen.c"
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
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.bController = type { ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bPythonCont = type { ptr, [64 x i8], i32, i32 }
%struct.bSensor = type { ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16 }

@.str = private unnamed_addr constant [10 x i8] c"LOGIC_AND\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"And\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Logic And\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"LOGIC_OR\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"Or\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Logic Or\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"LOGIC_NAND\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Nand\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Logic Nand\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"LOGIC_NOR\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Nor\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Logic Nor\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"LOGIC_XOR\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Xor\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"Logic Xor\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"LOGIC_XNOR\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Xnor\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Logic Xnor\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"EXPRESSION\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"Expression\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"PYTHON\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Python\00", align 1
@controller_type_items = dso_local local_unnamed_addr global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.5 }, %struct.EnumPropertyItem { i32 4, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 5, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 6, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 7, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem { i32 2, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.20 }, %struct.EnumPropertyItem { i32 3, ptr @.str.21, i32 0, ptr @.str.22, ptr @.str.20 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Controller_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Controller_rna_type, ptr null, i32 -1, ptr @.str.25, i32 128, ptr @.str.26, ptr @.str.27, i32 0, ptr @.str.28, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Controller_rna_properties_begin, ptr @Controller_rna_properties_next, ptr @Controller_rna_properties_end, ptr @Controller_rna_properties_get, ptr null, ptr null, ptr @Controller_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Controller_actuators = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Controller_states, ptr @rna_Controller_use_priority, i32 -1, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.47, i32 0, ptr @.str.28, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Controller_actuators_begin, ptr @Controller_actuators_next, ptr @Controller_actuators_end, ptr @Controller_actuators_get, ptr @rna_Controller_actuators_length, ptr @Controller_actuators_lookup_int, ptr @Controller_actuators_lookup_string, ptr null, ptr @RNA_Actuator }, align 8
@.str.23 = private unnamed_addr constant [44 x i8] c"Array iterator out of range: %s (index %d)\0A\00", align 1
@__func__.Controller_actuators_lookup_int = private unnamed_addr constant [32 x i8] c"Controller_actuators_lookup_int\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [12 x i8] c"name string\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@RNA_Text = external global %struct.StructRNA, align 8
@rna_Controller_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Controller_name, ptr @rna_Controller_rna_properties, i32 -1, ptr @.str.29, i32 8912896, ptr @.str.30, ptr @.str.31, i32 0, ptr @.str.28, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Controller_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.25 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_Controller_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Controller_type, ptr @rna_Controller_rna_type, i32 -1, ptr @.str.32, i32 262145, ptr @.str.33, ptr @.str.20, i32 0, ptr @.str.28, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Controller_name_get, ptr @Controller_name_length, ptr @Controller_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.20 }, align 8
@.str.29 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_Controller_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Controller_show_expanded, ptr @rna_Controller_name, i32 -1, ptr @.str.34, i32 1, ptr @.str.35, ptr @.str.20, i32 0, ptr @.str.28, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Controller_type_get, ptr @Controller_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Controller_type_items, i32 8, i32 0 }, align 8
@.str.32 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@rna_Controller_show_expanded = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Controller_active, ptr @rna_Controller_type, i32 -1, ptr @.str.36, i32 4099, ptr @.str.37, ptr @.str.38, i32 4, ptr @.str.28, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Controller_show_expanded_get, ptr @Controller_show_expanded_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.34 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@rna_Controller_type_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.5 }, %struct.EnumPropertyItem { i32 4, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 5, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 6, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 7, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem { i32 2, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.20 }, %struct.EnumPropertyItem { i32 3, ptr @.str.21, i32 0, ptr @.str.22, ptr @.str.20 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Controller_active = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Controller_use_priority, ptr @rna_Controller_show_expanded, i32 -1, ptr @.str.39, i32 3, ptr @.str.40, ptr @.str.41, i32 0, ptr @.str.28, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Controller_active_get, ptr @Controller_active_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.36 = private unnamed_addr constant [14 x i8] c"show_expanded\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"Expanded\00", align 1
@.str.38 = private unnamed_addr constant [46 x i8] c"Set controller expanded in the user interface\00", align 1
@rna_Controller_use_priority = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Controller_actuators, ptr @rna_Controller_active, i32 -1, ptr @.str.42, i32 4099, ptr @.str.43, ptr @.str.44, i32 686, ptr @.str.28, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Controller_use_priority_get, ptr @Controller_use_priority_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.39 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"Set the active state of the controller\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"use_priority\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"Priority\00", align 1
@.str.44 = private unnamed_addr constant [91 x i8] c"Mark controller for execution before all non-marked controllers (good for startup scripts)\00", align 1
@rna_Controller_states = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Controller_actuators, i32 -1, ptr @.str.48, i32 3, ptr @.str.20, ptr @.str.49, i32 0, ptr @.str.28, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Controller_states_get, ptr @Controller_states_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 30, i32 1, i32 30, i32 1, i32 0, ptr null }, align 8
@.str.45 = private unnamed_addr constant [10 x i8] c"actuators\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"Actuators\00", align 1
@.str.47 = private unnamed_addr constant [62 x i8] c"The list containing the actuators connected to the controller\00", align 1
@RNA_Actuator = external global %struct.StructRNA, align 8
@.str.48 = private unnamed_addr constant [7 x i8] c"states\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"Set Controller state index (1 to 30)\00", align 1
@rna_Controller_link_actuator = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Controller_link_sensor, i32 -1, ptr @.str.52, i32 8388608, ptr @.str.20, ptr @.str.53, i32 0, ptr @.str.28, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Actuator }, align 8
@.str.50 = private unnamed_addr constant [7 x i8] c"sensor\00", align 1
@.str.51 = private unnamed_addr constant [33 x i8] c"Sensor to link the controller to\00", align 1
@RNA_Sensor = external global %struct.StructRNA, align 8
@rna_Controller_link_sensor = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Controller_link_actuator, ptr null, i32 -1, ptr @.str.50, i32 8388608, ptr @.str.20, ptr @.str.51, i32 0, ptr @.str.28, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Sensor }, align 8
@.str.52 = private unnamed_addr constant [9 x i8] c"actuator\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c"Actuator to link the controller to\00", align 1
@rna_Controller_unlink_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_Controller_link_func, ptr null, %struct.ListBase { ptr @rna_Controller_unlink_sensor, ptr @rna_Controller_unlink_actuator } }, ptr @.str.58, i32 0, ptr @.str.59, ptr @Controller_unlink_call, ptr null }, align 8
@.str.54 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c"Link the controller with a sensor/actuator\00", align 1
@rna_Controller_link_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Controller_unlink_func, ptr null, ptr null, %struct.ListBase { ptr @rna_Controller_link_sensor, ptr @rna_Controller_link_actuator } }, ptr @.str.54, i32 0, ptr @.str.55, ptr @Controller_link_call, ptr null }, align 8
@rna_Controller_unlink_actuator = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Controller_unlink_sensor, i32 -1, ptr @.str.52, i32 8388608, ptr @.str.20, ptr @.str.57, i32 0, ptr @.str.28, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Actuator }, align 8
@.str.56 = private unnamed_addr constant [37 x i8] c"Sensor to unlink the controller from\00", align 1
@rna_Controller_unlink_sensor = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Controller_unlink_actuator, ptr null, i32 -1, ptr @.str.50, i32 8388608, ptr @.str.20, ptr @.str.56, i32 0, ptr @.str.28, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Sensor }, align 8
@.str.57 = private unnamed_addr constant [39 x i8] c"Actuator to unlink the controller from\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.59 = private unnamed_addr constant [45 x i8] c"Unlink the controller from a sensor/actuator\00", align 1
@RNA_ExpressionController = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_PythonController, ptr @RNA_Controller, ptr null, %struct.ListBase { ptr @rna_ExpressionController_expression, ptr @rna_ExpressionController_expression } }, ptr @.str.63, ptr null, ptr null, i32 4, ptr @.str.64, ptr @.str.65, ptr @.str.28, i32 17, ptr @rna_Controller_name, ptr @rna_Controller_rna_properties, ptr @RNA_Controller, ptr null, ptr @rna_Controller_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_Context = external global %struct.StructRNA, align 8
@.str.60 = private unnamed_addr constant [11 x i8] c"Controller\00", align 1
@.str.61 = private unnamed_addr constant [75 x i8] c"Game engine logic brick to process events, connecting sensors to actuators\00", align 1
@RNA_Controller = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ExpressionController, ptr @RNA_Context, ptr null, %struct.ListBase { ptr @rna_Controller_rna_properties, ptr @rna_Controller_states } }, ptr @.str.60, ptr null, ptr null, i32 4, ptr @.str.60, ptr @.str.61, ptr @.str.28, i32 17, ptr @rna_Controller_name, ptr @rna_Controller_rna_properties, ptr null, ptr null, ptr @rna_Controller_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_Controller_link_func, ptr @rna_Controller_unlink_func } }, align 8
@.str.62 = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@rna_ExpressionController_expression = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.62, i32 262145, ptr @.str.19, ptr @.str.20, i32 0, ptr @.str.28, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 128, i32 0, i32 0], i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ExpressionController_expression_get, ptr @ExpressionController_expression_length, ptr @ExpressionController_expression_set, ptr null, ptr null, ptr null, i32 128, ptr @.str.20 }, align 8
@RNA_PythonController = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_AndController, ptr @RNA_ExpressionController, ptr null, %struct.ListBase { ptr @rna_PythonController_mode, ptr @rna_PythonController_use_debug } }, ptr @.str.78, ptr null, ptr null, i32 4, ptr @.str.79, ptr @.str.80, ptr @.str.28, i32 17, ptr @rna_Controller_name, ptr @rna_Controller_rna_properties, ptr @RNA_Controller, ptr null, ptr @rna_Controller_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.63 = private unnamed_addr constant [21 x i8] c"ExpressionController\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"Expression Controller\00", align 1
@.str.65 = private unnamed_addr constant [70 x i8] c"Controller passing on events based on the evaluation of an expression\00", align 1
@rna_PythonController_text = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PythonController_module, ptr @rna_PythonController_mode, i32 -1, ptr @.str.69, i32 8388609, ptr @.str.70, ptr @.str.71, i32 0, ptr @.str.28, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PythonController_text_get, ptr @PythonController_text_set, ptr null, ptr null, ptr @RNA_Text }, align 8
@.str.66 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"Execution Method\00", align 1
@.str.68 = private unnamed_addr constant [50 x i8] c"Python script type (textblock or module - faster)\00", align 1
@rna_PythonController_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.99, i32 0, ptr @.str.100, ptr @.str.20 }, %struct.EnumPropertyItem { i32 1, ptr @.str.101, i32 0, ptr @.str.73, ptr @.str.20 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_PythonController_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_PythonController_text, ptr null, i32 -1, ptr @.str.66, i32 3, ptr @.str.67, ptr @.str.68, i32 0, ptr @.str.28, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PythonController_mode_get, ptr @PythonController_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_PythonController_mode_items, i32 2, i32 0 }, align 8
@rna_PythonController_module = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_PythonController_use_debug, ptr @rna_PythonController_text, i32 -1, ptr @.str.72, i32 262145, ptr @.str.73, ptr @.str.74, i32 0, ptr @.str.28, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PythonController_module_get, ptr @PythonController_module_length, ptr @PythonController_module_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.20 }, align 8
@.str.69 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.71 = private unnamed_addr constant [38 x i8] c"Text datablock with the python script\00", align 1
@rna_PythonController_use_debug = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_PythonController_module, i32 -1, ptr @.str.75, i32 3, ptr @.str.76, ptr @.str.77, i32 0, ptr @.str.28, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PythonController_use_debug_get, ptr @PythonController_use_debug_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.72 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"Module\00", align 1
@.str.74 = private unnamed_addr constant [111 x i8] c"Module name and function to run, e.g. \22someModule.main\22 (internal texts and external python files can be used)\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"use_debug\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.77 = private unnamed_addr constant [89 x i8] c"Continuously reload the module from disk for editing external modules without restarting\00", align 1
@RNA_AndController = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_OrController, ptr @RNA_PythonController, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.81, ptr null, ptr null, i32 4, ptr @.str.82, ptr @.str.83, ptr @.str.28, i32 17, ptr @rna_Controller_name, ptr @rna_Controller_rna_properties, ptr @RNA_Controller, ptr null, ptr @rna_Controller_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.78 = private unnamed_addr constant [17 x i8] c"PythonController\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"Python Controller\00", align 1
@.str.80 = private unnamed_addr constant [37 x i8] c"Controller executing a python script\00", align 1
@RNA_OrController = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_NorController, ptr @RNA_AndController, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.84, ptr null, ptr null, i32 4, ptr @.str.85, ptr @.str.86, ptr @.str.28, i32 17, ptr @rna_Controller_name, ptr @rna_Controller_rna_properties, ptr @RNA_Controller, ptr null, ptr @rna_Controller_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.81 = private unnamed_addr constant [14 x i8] c"AndController\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"And Controller\00", align 1
@.str.83 = private unnamed_addr constant [62 x i8] c"Controller passing on events based on a logical AND operation\00", align 1
@RNA_NorController = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_NandController, ptr @RNA_OrController, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.87, ptr null, ptr null, i32 4, ptr @.str.88, ptr @.str.89, ptr @.str.28, i32 17, ptr @rna_Controller_name, ptr @rna_Controller_rna_properties, ptr @RNA_Controller, ptr null, ptr @rna_Controller_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.84 = private unnamed_addr constant [13 x i8] c"OrController\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"Or Controller\00", align 1
@.str.86 = private unnamed_addr constant [61 x i8] c"Controller passing on events based on a logical OR operation\00", align 1
@RNA_NandController = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_XorController, ptr @RNA_NorController, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.90, ptr null, ptr null, i32 4, ptr @.str.91, ptr @.str.92, ptr @.str.28, i32 17, ptr @rna_Controller_name, ptr @rna_Controller_rna_properties, ptr @RNA_Controller, ptr null, ptr @rna_Controller_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.87 = private unnamed_addr constant [14 x i8] c"NorController\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"Nor Controller\00", align 1
@.str.89 = private unnamed_addr constant [62 x i8] c"Controller passing on events based on a logical NOR operation\00", align 1
@RNA_XorController = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_XnorController, ptr @RNA_NandController, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.93, ptr null, ptr null, i32 4, ptr @.str.94, ptr @.str.95, ptr @.str.28, i32 17, ptr @rna_Controller_name, ptr @rna_Controller_rna_properties, ptr @RNA_Controller, ptr null, ptr @rna_Controller_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.90 = private unnamed_addr constant [15 x i8] c"NandController\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"Nand Controller\00", align 1
@.str.92 = private unnamed_addr constant [63 x i8] c"Controller passing on events based on a logical NAND operation\00", align 1
@RNA_XnorController = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Curve, ptr @RNA_XorController, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.96, ptr null, ptr null, i32 4, ptr @.str.97, ptr @.str.98, ptr @.str.28, i32 17, ptr @rna_Controller_name, ptr @rna_Controller_rna_properties, ptr @RNA_Controller, ptr null, ptr @rna_Controller_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.93 = private unnamed_addr constant [14 x i8] c"XorController\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"Xor Controller\00", align 1
@.str.95 = private unnamed_addr constant [62 x i8] c"Controller passing on events based on a logical XOR operation\00", align 1
@RNA_Curve = external global %struct.StructRNA, align 8
@.str.96 = private unnamed_addr constant [15 x i8] c"XnorController\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"Xnor Controller\00", align 1
@.str.98 = private unnamed_addr constant [63 x i8] c"Controller passing on events based on a logical XNOR operation\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"SCRIPT\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"Script\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"MODULE\00", align 1
@switch.table.rna_Controller_refine = private unnamed_addr constant [8 x ptr] [ptr @RNA_AndController, ptr @RNA_OrController, ptr @RNA_ExpressionController, ptr @RNA_PythonController, ptr @RNA_NandController, ptr @RNA_NorController, ptr @RNA_XorController, ptr @RNA_XnorController], align 8

; Function Attrs: nounwind uwtable
define dso_local void @Controller_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Controller_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #12
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #12
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

declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define internal void @Controller_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @Controller_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @Controller_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #12
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @Controller_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @Controller_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #12
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @Controller_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.bController, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #12
  ret void
}

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Controller_name_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 11
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #13
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @Controller_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.bController, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #12
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 93
  tail call void @BLI_uniquename(ptr noundef nonnull %10, ptr noundef %4, ptr noundef nonnull @.str.60, i8 noundef zeroext 46, i32 noundef 40, i32 noundef 64) #12
  br label %11

11:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Controller_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !47
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @Controller_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.bController, ptr %4, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !47
  %7 = sext i16 %6 to i32
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = trunc i32 %1 to i16
  store i16 %10, ptr %5, align 8, !tbaa !47
  tail call void @init_controller(ptr noundef %4) #12
  br label %11

11:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Controller_show_expanded_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !50
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Controller_show_expanded_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.bController, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !50
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Controller_active_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !50
  %6 = and i16 %5, 32
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Controller_active_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bController, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !50
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 32, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Controller_use_priority_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !50
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Controller_use_priority_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bController, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !50
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !50
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Controller_actuators_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Controller_actuators, ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bController, ptr %6, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.bController, ptr %6, i64 0, i32 6
  %10 = load i16, ptr %9, align 2, !tbaa !52
  %11 = sext i16 %10 to i32
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %8, i32 noundef 8, i32 noundef %11, i8 noundef zeroext 0, ptr noundef null) #12
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  %17 = tail call ptr @rna_iterator_array_dereference_get(ptr noundef %0) #12, !noalias !53
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_Actuator, ptr noundef %17) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  br label %18

18:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Controller_actuators_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_dereference_get(ptr noundef %1) #12
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Actuator, ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Controller_actuators_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  %8 = tail call ptr @rna_iterator_array_dereference_get(ptr noundef %0) #12, !noalias !56
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_Actuator, ptr noundef %8) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @Controller_actuators_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #12
  ret void
}

declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @Controller_actuators_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #12
  %7 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %7, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_Controller_actuators, ptr %8, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.bController, ptr %10, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.bController, ptr %10, i64 0, i32 6
  %14 = load i16, ptr %13, align 2, !tbaa !52
  %15 = sext i16 %14 to i32
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef %12, i32 noundef 8, i32 noundef %15, i8 noundef zeroext 0, ptr noundef null) #12
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !44
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  %21 = call ptr @rna_iterator_array_dereference_get(ptr noundef nonnull %5) #12, !noalias !59
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_Actuator, ptr noundef %21) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
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
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull @__func__.Controller_actuators_lookup_int, i32 noundef %1)
  br label %63

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !62
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
  call void @rna_iterator_array_next(ptr noundef nonnull %5) #12
  %46 = icmp sgt i32 %44, 1
  %47 = load i32, ptr %16, align 8
  %48 = icmp ne i32 %47, 0
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %43, label %50, !llvm.loop !64

50:                                               ; preds = %43, %38
  %51 = phi i32 [ %1, %38 ], [ %45, %43 ]
  %52 = phi i1 [ %41, %38 ], [ %48, %43 ]
  %53 = icmp eq i32 %51, 0
  %54 = select i1 %53, i1 %52, i1 false
  %55 = zext i1 %54 to i32
  br label %63

56:                                               ; preds = %34
  %57 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !67
  %59 = mul nsw i32 %58, %1
  %60 = load ptr, ptr %26, align 8, !tbaa !68
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  store ptr %62, ptr %26, align 8, !tbaa !68
  br label %63

63:                                               ; preds = %50, %56, %32
  %64 = phi i32 [ 0, %32 ], [ %55, %50 ], [ 1, %56 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  %67 = call ptr @rna_iterator_array_dereference_get(ptr noundef nonnull %5) #12, !noalias !69
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_Actuator, ptr noundef %67) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  br label %68

68:                                               ; preds = %63, %66, %22
  %69 = phi i32 [ 0, %22 ], [ %64, %66 ], [ %64, %63 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #12
  ret i32 %69
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @Controller_actuators_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #12
  %8 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %8, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 2
  store ptr @rna_Controller_actuators, ptr %9, align 8, !tbaa !39
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.bController, ptr %11, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.bController, ptr %11, i64 0, i32 6
  %15 = load i16, ptr %14, align 2, !tbaa !52
  %16 = sext i16 %15 to i32
  call void @rna_iterator_array_begin(ptr noundef nonnull %6, ptr noundef %13, i32 noundef 8, i32 noundef %16, i8 noundef zeroext 0, ptr noundef null) #12
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !44
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %22 = call ptr @rna_iterator_array_dereference_get(ptr noundef nonnull %6) #12, !noalias !72
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull @RNA_Actuator, ptr noundef %22) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  br label %23

23:                                               ; preds = %3, %20
  %24 = load i32, ptr %17, align 8, !tbaa !44
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %63, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %28 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  br label %29

29:                                               ; preds = %26, %57
  %30 = phi i8 [ 0, %26 ], [ %52, %57 ]
  %31 = load ptr, ptr %28, align 8, !tbaa !75
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %29
  %34 = call i32 @Actuator_name_length(ptr noundef nonnull %27) #12
  %35 = icmp slt i32 %34, 1024
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  call void @Actuator_name_get(ptr noundef nonnull %27, ptr noundef nonnull %7) #12
  %37 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %48

39:                                               ; preds = %33
  %40 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %41 = add nuw nsw i32 %34, 1
  %42 = zext nneg i32 %41 to i64
  %43 = call ptr %40(i64 noundef %42, ptr noundef nonnull @.str.24) #12
  call void @Actuator_name_get(ptr noundef nonnull %27, ptr noundef %43) #12
  %44 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(1) %1) #13
  %45 = icmp eq i32 %44, 0
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %46(ptr noundef %43) #12
  br i1 %45, label %47, label %48

47:                                               ; preds = %39, %36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %27, i64 24, i1 false)
  br label %48

48:                                               ; preds = %47, %39, %36
  %49 = phi i8 [ %30, %36 ], [ %30, %39 ], [ 1, %47 ]
  %50 = phi i1 [ true, %36 ], [ true, %39 ], [ false, %47 ]
  br i1 %50, label %51, label %60

51:                                               ; preds = %48, %29
  %52 = phi i8 [ %49, %48 ], [ %30, %29 ]
  call void @rna_iterator_array_next(ptr noundef nonnull %6) #12
  %53 = load i32, ptr %17, align 8, !tbaa !44
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  %56 = call ptr @rna_iterator_array_dereference_get(ptr noundef nonnull %6) #12, !noalias !76
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull @RNA_Actuator, ptr noundef %56) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  br label %57

57:                                               ; preds = %51, %55
  %58 = load i32, ptr %17, align 8, !tbaa !44
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %29, !llvm.loop !79

60:                                               ; preds = %48, %57
  %61 = phi i8 [ %52, %57 ], [ %49, %48 ]
  %62 = zext nneg i8 %61 to i32
  br label %63

63:                                               ; preds = %60, %23
  %64 = phi i32 [ 0, %23 ], [ %62, %60 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #12
  ret i32 %64
}

declare i32 @Actuator_name_length(ptr noundef) local_unnamed_addr #3

declare void @Actuator_name_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Controller_states_get(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 17
  %5 = load i32, ptr %4, align 4, !tbaa !80
  br label %6

6:                                                ; preds = %1, %12
  %7 = phi i32 [ 0, %1 ], [ %11, %12 ]
  %8 = shl nuw i32 1, %7
  %9 = and i32 %5, %8
  %10 = icmp eq i32 %9, 0
  %11 = add nuw nsw i32 %7, 1
  br i1 %10, label %12, label %14

12:                                               ; preds = %6
  %13 = icmp eq i32 %11, 32
  br i1 %13, label %14, label %6, !llvm.loop !81

14:                                               ; preds = %12, %6
  %15 = phi i32 [ %11, %6 ], [ 0, %12 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Controller_states_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = add i32 %1, -31
  %4 = icmp ult i32 %3, -30
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = add nsw i32 %1, -1
  %9 = shl nuw nsw i32 1, %8
  %10 = getelementptr inbounds %struct.bController, ptr %7, i64 0, i32 17
  store i32 %9, ptr %10, align 4, !tbaa !80
  br label %11

11:                                               ; preds = %2, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ExpressionController_expression_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.bController, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef %6, i64 noundef 128) #12
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ExpressionController_expression_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #13
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @ExpressionController_expression_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.bController, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = tail call ptr @BLI_strncpy_utf8(ptr noundef %6, ptr noundef %1, i64 noundef 128) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PythonController_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.bPythonCont, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !83
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PythonController_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.bController, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.bPythonCont, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !83
  %9 = icmp eq i32 %8, 0
  %10 = icmp ne i32 %1, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store ptr null, ptr %6, align 8, !tbaa !85
  br label %13

13:                                               ; preds = %2, %12
  store i32 %1, ptr %7, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PythonController_text_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.bController, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Text, ptr noundef %7) #12
  ret void
}

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @PythonController_text_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.bController, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #12
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !85
  ret void
}

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @PythonController_module_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.bController, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.bPythonCont, ptr %6, i64 0, i32 1
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #12
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PythonController_module_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.bPythonCont, ptr %5, i64 0, i32 1
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #13
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local void @PythonController_module_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.bController, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.bPythonCont, ptr %6, i64 0, i32 1
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PythonController_use_debug_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.bPythonCont, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !86
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PythonController_use_debug_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.bController, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bPythonCont, ptr %6, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !86
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 4, !tbaa !86
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Controller_link(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %0, ptr %4, align 8, !tbaa !35
  store ptr %2, ptr %5, align 8, !tbaa !35
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bSensor, ptr %1, i64 0, i32 12
  %9 = getelementptr inbounds %struct.bSensor, ptr %1, i64 0, i32 7
  call void @link_logicbricks(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %9, i16 noundef signext 8) #12
  br label %10

10:                                               ; preds = %7, %3
  %11 = load ptr, ptr %5, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.bController, ptr %14, i64 0, i32 13
  %16 = getelementptr inbounds %struct.bController, ptr %14, i64 0, i32 6
  call void @link_logicbricks(ptr noundef nonnull %5, ptr noundef nonnull %15, ptr noundef nonnull %16, i16 noundef signext 8) #12
  br label %17

17:                                               ; preds = %10, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Controller_link_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = load ptr, ptr %3, align 8, !tbaa !87
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = getelementptr inbounds i8, ptr %9, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr %8, ptr %5, align 8, !tbaa !35
  store ptr %12, ptr %6, align 8, !tbaa !35
  %13 = icmp eq ptr %10, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.bSensor, ptr %10, i64 0, i32 12
  %16 = getelementptr inbounds %struct.bSensor, ptr %10, i64 0, i32 7
  call void @link_logicbricks(ptr noundef nonnull %5, ptr noundef nonnull %15, ptr noundef nonnull %16, i16 noundef signext 8) #12
  br label %17

17:                                               ; preds = %14, %4
  %18 = load ptr, ptr %6, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.bController, ptr %21, i64 0, i32 13
  %23 = getelementptr inbounds %struct.bController, ptr %21, i64 0, i32 6
  call void @link_logicbricks(ptr noundef nonnull %6, ptr noundef nonnull %22, ptr noundef nonnull %23, i16 noundef signext 8) #12
  br label %24

24:                                               ; preds = %17, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Controller_unlink(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %0, ptr %4, align 8, !tbaa !35
  store ptr %2, ptr %5, align 8, !tbaa !35
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bSensor, ptr %1, i64 0, i32 12
  %9 = getelementptr inbounds %struct.bSensor, ptr %1, i64 0, i32 7
  call void @unlink_logicbricks(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  br label %10

10:                                               ; preds = %7, %3
  %11 = load ptr, ptr %5, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.bController, ptr %14, i64 0, i32 13
  %16 = getelementptr inbounds %struct.bController, ptr %14, i64 0, i32 6
  call void @unlink_logicbricks(ptr noundef nonnull %5, ptr noundef nonnull %15, ptr noundef nonnull %16) #12
  br label %17

17:                                               ; preds = %10, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Controller_unlink_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = load ptr, ptr %3, align 8, !tbaa !87
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = getelementptr inbounds i8, ptr %9, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr %8, ptr %5, align 8, !tbaa !35
  store ptr %12, ptr %6, align 8, !tbaa !35
  %13 = icmp eq ptr %10, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.bSensor, ptr %10, i64 0, i32 12
  %16 = getelementptr inbounds %struct.bSensor, ptr %10, i64 0, i32 7
  call void @unlink_logicbricks(ptr noundef nonnull %5, ptr noundef nonnull %15, ptr noundef nonnull %16) #12
  br label %17

17:                                               ; preds = %14, %4
  %18 = load ptr, ptr %6, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.bController, ptr %21, i64 0, i32 13
  %23 = getelementptr inbounds %struct.bController, ptr %21, i64 0, i32 6
  call void @unlink_logicbricks(ptr noundef nonnull %6, ptr noundef nonnull %22, ptr noundef nonnull %23) #12
  br label %24

24:                                               ; preds = %17, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_Controller_actuators_length(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !52
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef nonnull ptr @rna_Controller_refine(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !47
  %6 = icmp ult i16 %5, 8
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = zext nneg i16 %5 to i64
  %9 = getelementptr inbounds [8 x ptr], ptr @switch.table.rna_Controller_refine, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %10, %7 ], [ @RNA_Controller, %1 ]
  ret ptr %12
}

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @init_controller(ptr noundef) local_unnamed_addr #3

declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare ptr @rna_iterator_array_dereference_get(ptr noundef) local_unnamed_addr #3

declare void @link_logicbricks(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @unlink_logicbricks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

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
!46 = !{!41, !36, i64 0}
!47 = !{!48, !49, i64 24}
!48 = !{!"bController", !36, i64 0, !36, i64 8, !36, i64 16, !49, i64 24, !49, i64 26, !49, i64 28, !49, i64 30, !49, i64 32, !49, i64 34, !49, i64 36, !49, i64 38, !37, i64 40, !36, i64 104, !36, i64 112, !36, i64 120, !49, i64 128, !49, i64 130, !43, i64 132}
!49 = !{!"short", !37, i64 0}
!50 = !{!48, !49, i64 26}
!51 = !{!48, !36, i64 112}
!52 = !{!48, !49, i64 30}
!53 = !{!54}
!54 = distinct !{!54, !55, !"Controller_actuators_get: argument 0"}
!55 = distinct !{!55, !"Controller_actuators_get"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"Controller_actuators_get: argument 0"}
!58 = distinct !{!58, !"Controller_actuators_get"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"Controller_actuators_get: argument 0"}
!61 = distinct !{!61, !"Controller_actuators_get"}
!62 = !{!63, !36, i64 32}
!63 = !{!"ArrayIterator", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !43, i64 28, !36, i64 32}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!63, !43, i64 24}
!68 = !{!63, !36, i64 0}
!69 = !{!70}
!70 = distinct !{!70, !71, !"Controller_actuators_get: argument 0"}
!71 = distinct !{!71, !"Controller_actuators_get"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"Controller_actuators_get: argument 0"}
!74 = distinct !{!74, !"Controller_actuators_get"}
!75 = !{!40, !36, i64 120}
!76 = !{!77}
!77 = distinct !{!77, !78, !"Controller_actuators_get: argument 0"}
!78 = distinct !{!78, !"Controller_actuators_get"}
!79 = distinct !{!79, !65, !66}
!80 = !{!48, !43, i64 132}
!81 = distinct !{!81, !65, !66}
!82 = !{!48, !36, i64 104}
!83 = !{!84, !43, i64 72}
!84 = !{!"bPythonCont", !36, i64 0, !37, i64 8, !43, i64 72, !43, i64 76}
!85 = !{!84, !36, i64 0}
!86 = !{!84, !43, i64 76}
!87 = !{!88, !36, i64 0}
!88 = !{!"ParameterList", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24}
