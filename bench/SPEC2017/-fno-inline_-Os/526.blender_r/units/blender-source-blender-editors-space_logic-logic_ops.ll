; ModuleID = 'blender/source/blender/editors/space_logic/logic_ops.c'
source_filename = "blender/source/blender/editors/space_logic/logic_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.bSensor = type { ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bController = type { ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i32 }
%struct.bActuator = type { ptr, ptr, ptr, i16, i16, i16, i16, [64 x i8], ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Remove Sensor\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Remove a sensor from the active object\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"LOGIC_OT_sensor_remove\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"sensor\00", align 1
@RNA_Sensor = external global %struct.StructRNA, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Sensor\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Name of the sensor to edit\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Name of the object the sensor belongs to\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Add Sensor\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Add a sensor to the active object\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"LOGIC_OT_sensor_add\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@DummyRNA_NULL_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Type of sensor to add\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Name of the Sensor to add\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"Name of the Object to add the Sensor to\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"Move Sensor\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"LOGIC_OT_sensor_move\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@logicbricks_move_direction = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.26 }, %struct.EnumPropertyItem { i32 2, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.26 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"Move Up or Down\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Move Up\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Move Down\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Remove Controller\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"Remove a controller from the active object\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"LOGIC_OT_controller_remove\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@RNA_Controller = external global %struct.StructRNA, align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"Controller\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Name of the controller to edit\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"Name of the object the controller belongs to\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"Add Controller\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"Add a controller to the active object\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"LOGIC_OT_controller_add\00", align 1
@controller_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.39 = private unnamed_addr constant [26 x i8] c"Type of controller to add\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"Name of the Controller to add\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"Name of the Object to add the Controller to\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"Move Controller\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"LOGIC_OT_controller_move\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"Remove Actuator\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"Remove an actuator from the active object\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"LOGIC_OT_actuator_remove\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"actuator\00", align 1
@RNA_Actuator = external global %struct.StructRNA, align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"Actuator\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"Name of the actuator to edit\00", align 1
@.str.50 = private unnamed_addr constant [43 x i8] c"Name of the object the actuator belongs to\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"Add Actuator\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"Add an actuator to the active object\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"LOGIC_OT_actuator_add\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"Type of actuator to add\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"Name of the Actuator to add\00", align 1
@.str.56 = private unnamed_addr constant [42 x i8] c"Name of the Object to add the Actuator to\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"Move Actuator\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"LOGIC_OT_actuator_move\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"View All\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"LOGIC_OT_view_all\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"Resize view so you can see all logic bricks\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatortypes_logic() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_sensor_remove) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_sensor_add) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_sensor_move) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_controller_remove) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_controller_add) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_controller_move) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_actuator_remove) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_actuator_add) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_actuator_move) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_view_all) #7
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LOGIC_OT_sensor_remove(ptr nocapture noundef %0) #0 !PGOFuncName !34 {
  store ptr @.str, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sensor_remove_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sensor_remove_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_sensor_poll, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !48
  tail call fastcc void @edit_sensor_properties(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LOGIC_OT_sensor_add(ptr nocapture noundef %0) #0 !PGOFuncName !49 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sensor_add_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !51
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @rna_Sensor_type_itemf) #7
  %12 = load ptr, ptr %8, align 8, !tbaa !50
  %13 = tail call ptr @RNA_def_string(ptr noundef %12, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #7
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #7
  %14 = load ptr, ptr %8, align 8, !tbaa !50
  %15 = tail call ptr @RNA_def_string(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.18) #7
  tail call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 268435456) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LOGIC_OT_sensor_move(ptr nocapture noundef %0) #0 !PGOFuncName !52 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sensor_move_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sensor_move_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_sensor_poll, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !48
  tail call fastcc void @edit_sensor_properties(ptr noundef nonnull %0) #8
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull @logicbricks_move_direction, i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LOGIC_OT_controller_remove(ptr nocapture noundef %0) #0 !PGOFuncName !53 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @controller_remove_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @controller_remove_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_controller_poll, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !48
  tail call fastcc void @edit_controller_properties(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LOGIC_OT_controller_add(ptr nocapture noundef %0) #0 !PGOFuncName !54 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.38, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @controller_add_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @controller_type_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.39) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !51
  %12 = load ptr, ptr %8, align 8, !tbaa !50
  %13 = tail call ptr @RNA_def_string(ptr noundef %12, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.40) #7
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #7
  %14 = load ptr, ptr %8, align 8, !tbaa !50
  %15 = tail call ptr @RNA_def_string(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.41) #7
  tail call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 268435456) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LOGIC_OT_controller_move(ptr nocapture noundef %0) #0 !PGOFuncName !55 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.42, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @controller_move_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @controller_move_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_controller_poll, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !48
  tail call fastcc void @edit_controller_properties(ptr noundef nonnull %0) #8
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull @logicbricks_move_direction, i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LOGIC_OT_actuator_remove(ptr nocapture noundef %0) #0 !PGOFuncName !56 {
  store ptr @.str.44, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.45, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @actuator_remove_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actuator_remove_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_actuator_poll, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !48
  tail call fastcc void @edit_actuator_properties(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LOGIC_OT_actuator_add(ptr nocapture noundef %0) #0 !PGOFuncName !57 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.52, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.53, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actuator_add_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.54) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !51
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @rna_Actuator_type_itemf) #7
  %12 = load ptr, ptr %8, align 8, !tbaa !50
  %13 = tail call ptr @RNA_def_string(ptr noundef %12, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.55) #7
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #7
  %14 = load ptr, ptr %8, align 8, !tbaa !50
  %15 = tail call ptr @RNA_def_string(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.56) #7
  tail call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 268435456) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LOGIC_OT_actuator_move(ptr nocapture noundef %0) #0 !PGOFuncName !58 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.58, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @actuator_move_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actuator_move_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_actuator_poll, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !48
  tail call fastcc void @edit_actuator_properties(ptr noundef nonnull %0) #8
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull @logicbricks_move_direction, i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @LOGIC_OT_view_all(ptr nocapture noundef writeonly %0) #2 !PGOFuncName !59 {
  store ptr @.str.59, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.60, ptr %2, align 8, !tbaa !44
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.61, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @logic_view_all_exec, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_logic_active, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sensor_remove_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !60 {
  %4 = tail call fastcc i32 @edit_sensor_invoke_properties(ptr noundef %0, ptr noundef %1) #8, !range !61
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @sensor_remove_exec(ptr noundef %0, ptr noundef %1) #8, !range !62
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sensor_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !63 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr null, ptr %3, align 8, !tbaa !64
  %4 = call fastcc ptr @edit_sensor_property_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !64
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 92
  tail call void @BLI_remlink(ptr noundef nonnull %8, ptr noundef nonnull %4) #7
  tail call void @free_sensor(ptr noundef nonnull %4) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #7
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edit_sensor_poll(ptr noundef %0) #0 !PGOFuncName !65 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @RNA_Sensor) #7
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  br label %12

12:                                               ; preds = %6, %11
  %13 = phi i32 [ 1, %11 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edit_sensor_properties(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !73 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = tail call ptr @RNA_def_string(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #7
  %5 = load ptr, ptr %2, align 8, !tbaa !50
  %6 = tail call ptr @RNA_def_string(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @edit_sensor_invoke_properties(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !74 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @RNA_Sensor) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.3) #7
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !75
  %10 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %9, ptr noundef nonnull @.str.4) #7
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8, !tbaa !69
  %18 = load ptr, ptr %4, align 8, !tbaa !75
  %19 = getelementptr inbounds %struct.bSensor, ptr %14, i64 0, i32 10
  call void @RNA_string_set(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull %19) #7
  %20 = load ptr, ptr %4, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4, i64 2
  call void @RNA_string_set(ptr noundef %20, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #7
  br label %22

22:                                               ; preds = %12, %8, %16
  %23 = phi i32 [ 1, %16 ], [ 1, %8 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @edit_sensor_property_get(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !77 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #7
  %7 = call fastcc ptr @edit_object_property_get(ptr noundef %0, ptr noundef %1) #8
  store ptr %7, ptr %2, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 92
  %11 = call ptr @BLI_findstring(ptr noundef nonnull %10, ptr noundef nonnull %4, i32 noundef 32) #7
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %11, %9 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret ptr %13
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_sensor(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @edit_object_property_get(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !78 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  call void @RNA_string_get(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #7
  %6 = load i8, ptr %3, align 16, !tbaa !79
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = call ptr @CTX_data_main(ptr noundef %0) #7
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 13
  %11 = call ptr @BLI_findstring(ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 34) #7
  br label %14

12:                                               ; preds = %2
  %13 = call ptr @ED_object_active_context(ptr noundef %0) #7
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %11, %8 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_object_active_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sensor_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !80 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.12) #7
  %9 = tail call fastcc ptr @edit_object_property_get(ptr noundef %0, ptr noundef %1) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @new_sensor(i32 noundef %8) #7
  %13 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 92
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %12) #7
  call void @RNA_pointer_create(ptr noundef nonnull %9, ptr noundef nonnull @RNA_Sensor, ptr noundef %12, ptr noundef nonnull %3) #7
  %14 = call ptr @RNA_struct_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.12) #7
  %15 = load ptr, ptr %6, align 8, !tbaa !75
  call void @RNA_string_get(ptr noundef %15, ptr noundef nonnull @.str.15, ptr noundef nonnull %5) #7
  %16 = load i8, ptr %5, align 16, !tbaa !79
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.bSensor, ptr %12, i64 0, i32 10
  %20 = call ptr @BLI_strncpy(ptr noundef nonnull %19, ptr noundef nonnull %5, i64 noundef 64) #7
  br label %27

21:                                               ; preds = %11
  %22 = call i32 @RNA_property_enum_get(ptr noundef nonnull %3, ptr noundef %14) #7
  %23 = call zeroext i8 @RNA_property_enum_name(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %14, i32 noundef %22, ptr noundef nonnull %4) #7
  %24 = getelementptr inbounds %struct.bSensor, ptr %12, i64 0, i32 10
  %25 = load ptr, ptr %4, align 8, !tbaa !64
  %26 = call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef %25, i64 noundef 64) #7
  br label %27

27:                                               ; preds = %21, %18
  %28 = getelementptr inbounds %struct.bSensor, ptr %12, i64 0, i32 10
  call void @make_unique_prop_names(ptr noundef %0, ptr noundef nonnull %28) #7
  %29 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 61
  %30 = load i16, ptr %29, align 4, !tbaa !81
  %31 = or i16 %30, 64
  store i16 %31, ptr %29, align 4, !tbaa !81
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #7
  br label %32

32:                                               ; preds = %2, %27
  %33 = phi i32 [ 4, %27 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 %33
}

; Function Attrs: optsize
declare i32 @ED_operator_object_active_editable(ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @rna_Sensor_type_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @new_sensor(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_property_enum_name(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @make_unique_prop_names(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sensor_move_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !86 {
  %4 = tail call fastcc i32 @edit_sensor_invoke_properties(ptr noundef %0, ptr noundef %1) #8, !range !61
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @sensor_move_exec(ptr noundef %0, ptr noundef %1) #8, !range !62
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sensor_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !87 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr null, ptr %3, align 8, !tbaa !64
  %4 = call fastcc ptr @edit_sensor_property_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #8
  %5 = tail call fastcc i32 @logicbricks_move_property_get(ptr noundef %1) #8, !range !61
  %6 = icmp eq ptr %4, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !64
  tail call void @sca_move_sensor(ptr noundef nonnull %4, ptr noundef %8, i32 noundef %5) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #7
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i32 [ 4, %7 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @logicbricks_move_property_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !88 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call i32 @RNA_enum_get(ptr noundef %3, ptr noundef nonnull @.str.21) #7
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare void @sca_move_sensor(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @controller_remove_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !89 {
  %4 = tail call fastcc i32 @edit_controller_invoke_properties(ptr noundef %0, ptr noundef %1) #8, !range !61
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @controller_remove_exec(ptr noundef %0, ptr noundef %1) #8, !range !62
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @controller_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !90 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr null, ptr %3, align 8, !tbaa !64
  %4 = call fastcc ptr @edit_controller_property_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !64
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 93
  tail call void @BLI_remlink(ptr noundef nonnull %8, ptr noundef nonnull %4) #7
  tail call void @unlink_controller(ptr noundef nonnull %4) #7
  tail call void @free_controller(ptr noundef nonnull %4) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #7
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edit_controller_poll(ptr noundef %0) #0 !PGOFuncName !91 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @RNA_Controller) #7
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  br label %12

12:                                               ; preds = %6, %11
  %13 = phi i32 [ 1, %11 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edit_controller_properties(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !92 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = tail call ptr @RNA_def_string(ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #7
  %5 = load ptr, ptr %2, align 8, !tbaa !50
  %6 = tail call ptr @RNA_def_string(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.35) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @edit_controller_invoke_properties(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !93 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @RNA_Controller) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.32) #7
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !75
  %10 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %9, ptr noundef nonnull @.str.4) #7
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8, !tbaa !69
  %18 = load ptr, ptr %4, align 8, !tbaa !75
  %19 = getelementptr inbounds %struct.bController, ptr %14, i64 0, i32 11
  call void @RNA_string_set(ptr noundef %18, ptr noundef nonnull @.str.32, ptr noundef nonnull %19) #7
  %20 = load ptr, ptr %4, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4, i64 2
  call void @RNA_string_set(ptr noundef %20, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #7
  br label %22

22:                                               ; preds = %12, %8, %16
  %23 = phi i32 [ 1, %16 ], [ 1, %8 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @edit_controller_property_get(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !94 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.32, ptr noundef nonnull %4) #7
  %7 = call fastcc ptr @edit_object_property_get(ptr noundef %0, ptr noundef %1) #8
  store ptr %7, ptr %2, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 93
  %11 = call ptr @BLI_findstring(ptr noundef nonnull %10, ptr noundef nonnull %4, i32 noundef 40) #7
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %11, %9 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret ptr %13
}

; Function Attrs: optsize
declare void @unlink_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @controller_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !95 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.12) #7
  %9 = tail call fastcc ptr @edit_object_property_get(ptr noundef %0, ptr noundef %1) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @new_controller(i32 noundef %8) #7
  %13 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 93
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %12) #7
  call void @RNA_pointer_create(ptr noundef nonnull %9, ptr noundef nonnull @RNA_Controller, ptr noundef %12, ptr noundef nonnull %3) #7
  %14 = call ptr @RNA_struct_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.12) #7
  %15 = load ptr, ptr %6, align 8, !tbaa !75
  call void @RNA_string_get(ptr noundef %15, ptr noundef nonnull @.str.15, ptr noundef nonnull %5) #7
  %16 = load i8, ptr %5, align 16, !tbaa !79
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.bController, ptr %12, i64 0, i32 11
  %20 = call ptr @BLI_strncpy(ptr noundef nonnull %19, ptr noundef nonnull %5, i64 noundef 64) #7
  br label %27

21:                                               ; preds = %11
  %22 = call i32 @RNA_property_enum_get(ptr noundef nonnull %3, ptr noundef %14) #7
  %23 = call zeroext i8 @RNA_property_enum_name(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %14, i32 noundef %22, ptr noundef nonnull %4) #7
  %24 = getelementptr inbounds %struct.bController, ptr %12, i64 0, i32 11
  %25 = load ptr, ptr %4, align 8, !tbaa !64
  %26 = call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef %25, i64 noundef 64) #7
  br label %27

27:                                               ; preds = %21, %18
  %28 = getelementptr inbounds %struct.bController, ptr %12, i64 0, i32 11
  call void @make_unique_prop_names(ptr noundef %0, ptr noundef nonnull %28) #7
  %29 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 123
  %30 = load i32, ptr %29, align 8, !tbaa !96
  br label %31

31:                                               ; preds = %27, %36
  %32 = phi i32 [ 0, %27 ], [ %37, %36 ]
  %33 = shl nuw nsw i32 1, %32
  %34 = and i32 %30, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = add nuw nsw i32 %32, 1
  %38 = icmp eq i32 %37, 30
  br i1 %38, label %39, label %31, !llvm.loop !97

39:                                               ; preds = %31, %36
  %40 = phi i32 [ 30, %36 ], [ %32, %31 ]
  %41 = shl nuw i32 1, %40
  %42 = getelementptr inbounds %struct.bController, ptr %12, i64 0, i32 17
  store i32 %41, ptr %42, align 4, !tbaa !99
  %43 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 61
  %44 = load i16, ptr %43, align 4, !tbaa !81
  %45 = or i16 %44, 2048
  store i16 %45, ptr %43, align 4, !tbaa !81
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #7
  br label %46

46:                                               ; preds = %2, %39
  %47 = phi i32 [ 4, %39 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 %47
}

; Function Attrs: optsize
declare ptr @new_controller(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @controller_move_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !101 {
  %4 = tail call fastcc i32 @edit_controller_invoke_properties(ptr noundef %0, ptr noundef %1) #8, !range !61
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @controller_move_exec(ptr noundef %0, ptr noundef %1) #8, !range !62
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @controller_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !102 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr null, ptr %3, align 8, !tbaa !64
  %4 = call fastcc ptr @edit_controller_property_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #8
  %5 = tail call fastcc i32 @logicbricks_move_property_get(ptr noundef %1) #8, !range !61
  %6 = icmp eq ptr %4, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !64
  tail call void @sca_move_controller(ptr noundef nonnull %4, ptr noundef %8, i32 noundef %5) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #7
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i32 [ 4, %7 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %10
}

; Function Attrs: optsize
declare void @sca_move_controller(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actuator_remove_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !103 {
  %4 = tail call fastcc i32 @edit_actuator_invoke_properties(ptr noundef %0, ptr noundef %1) #8, !range !61
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @actuator_remove_exec(ptr noundef %0, ptr noundef %1) #8, !range !62
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actuator_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !104 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr null, ptr %3, align 8, !tbaa !64
  %4 = call fastcc ptr @edit_actuator_property_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !64
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 94
  tail call void @BLI_remlink(ptr noundef nonnull %8, ptr noundef nonnull %4) #7
  tail call void @unlink_actuator(ptr noundef nonnull %4) #7
  tail call void @free_actuator(ptr noundef nonnull %4) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #7
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edit_actuator_poll(ptr noundef %0) #0 !PGOFuncName !105 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @RNA_Actuator) #7
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  br label %12

12:                                               ; preds = %6, %11
  %13 = phi i32 [ 1, %11 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edit_actuator_properties(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !106 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = tail call ptr @RNA_def_string(ptr noundef %3, ptr noundef nonnull @.str.47, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #7
  %5 = load ptr, ptr %2, align 8, !tbaa !50
  %6 = tail call ptr @RNA_def_string(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.50) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @edit_actuator_invoke_properties(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !107 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @RNA_Actuator) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.47) #7
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !75
  %10 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %9, ptr noundef nonnull @.str.4) #7
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8, !tbaa !69
  %18 = load ptr, ptr %4, align 8, !tbaa !75
  %19 = getelementptr inbounds %struct.bActuator, ptr %14, i64 0, i32 7
  call void @RNA_string_set(ptr noundef %18, ptr noundef nonnull @.str.47, ptr noundef nonnull %19) #7
  %20 = load ptr, ptr %4, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4, i64 2
  call void @RNA_string_set(ptr noundef %20, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #7
  br label %22

22:                                               ; preds = %12, %8, %16
  %23 = phi i32 [ 1, %16 ], [ 1, %8 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @edit_actuator_property_get(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !108 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.47, ptr noundef nonnull %4) #7
  %7 = call fastcc ptr @edit_object_property_get(ptr noundef %0, ptr noundef %1) #8
  store ptr %7, ptr %2, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 94
  %11 = call ptr @BLI_findstring(ptr noundef nonnull %10, ptr noundef nonnull %4, i32 noundef 32) #7
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %11, %9 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret ptr %13
}

; Function Attrs: optsize
declare void @unlink_actuator(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_actuator(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actuator_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !109 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.12) #7
  %9 = tail call fastcc ptr @edit_object_property_get(ptr noundef %0, ptr noundef %1) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @new_actuator(i32 noundef %8) #7
  %13 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 94
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %12) #7
  call void @RNA_pointer_create(ptr noundef nonnull %9, ptr noundef nonnull @RNA_Actuator, ptr noundef %12, ptr noundef nonnull %3) #7
  %14 = call ptr @RNA_struct_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.12) #7
  %15 = load ptr, ptr %6, align 8, !tbaa !75
  call void @RNA_string_get(ptr noundef %15, ptr noundef nonnull @.str.15, ptr noundef nonnull %5) #7
  %16 = load i8, ptr %5, align 16, !tbaa !79
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.bActuator, ptr %12, i64 0, i32 7
  %20 = call ptr @BLI_strncpy(ptr noundef nonnull %19, ptr noundef nonnull %5, i64 noundef 64) #7
  br label %27

21:                                               ; preds = %11
  %22 = call i32 @RNA_property_enum_get(ptr noundef nonnull %3, ptr noundef %14) #7
  %23 = call zeroext i8 @RNA_property_enum_name(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %14, i32 noundef %22, ptr noundef nonnull %4) #7
  %24 = getelementptr inbounds %struct.bActuator, ptr %12, i64 0, i32 7
  %25 = load ptr, ptr %4, align 8, !tbaa !64
  %26 = call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef %25, i64 noundef 64) #7
  br label %27

27:                                               ; preds = %21, %18
  %28 = getelementptr inbounds %struct.bActuator, ptr %12, i64 0, i32 7
  call void @make_unique_prop_names(ptr noundef %0, ptr noundef nonnull %28) #7
  %29 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 61
  %30 = load i16, ptr %29, align 4, !tbaa !81
  %31 = or i16 %30, 128
  store i16 %31, ptr %29, align 4, !tbaa !81
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #7
  br label %32

32:                                               ; preds = %2, %27
  %33 = phi i32 [ 4, %27 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 %33
}

; Function Attrs: optsize
declare ptr @rna_Actuator_type_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare ptr @new_actuator(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actuator_move_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !110 {
  %4 = tail call fastcc i32 @edit_actuator_invoke_properties(ptr noundef %0, ptr noundef %1) #8, !range !61
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @actuator_move_exec(ptr noundef %0, ptr noundef %1) #8, !range !62
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actuator_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !111 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr null, ptr %3, align 8, !tbaa !64
  %4 = call fastcc ptr @edit_actuator_property_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #8
  %5 = tail call fastcc i32 @logicbricks_move_property_get(ptr noundef %1) #8, !range !61
  %6 = icmp eq ptr %4, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !64
  tail call void @sca_move_actuator(ptr noundef nonnull %4, ptr noundef %8, i32 noundef %5) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #7
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i32 [ 4, %7 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %10
}

; Function Attrs: optsize
declare void @sca_move_actuator(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @logic_view_all_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !112 {
  %3 = alloca %struct.rctf, align 4
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !113
  %6 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1
  %7 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %6) #8
  %8 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %6) #8
  %9 = fdiv float %7, %8
  %10 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #7
  %11 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  %12 = load float, ptr %11, align 4, !tbaa !115
  %13 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %3) #8
  %14 = fneg float %13
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %9, float %12)
  %16 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  store float %15, ptr %16, align 4, !tbaa !117
  call void @UI_view2d_smooth_view(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %3, i32 noundef %10) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_logic_active(ptr noundef) #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !118 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !115
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !117
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !119 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !120
  %4 = load float, ptr %0, align 4, !tbaa !121
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: optsize
declare i32 @WM_operator_smooth_viewtx_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare void @UI_view2d_smooth_view(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

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
!34 = !{!"logic_ops.c:LOGIC_OT_sensor_remove"}
!35 = !{!36, !37, i64 0}
!36 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !40, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152, !42, i64 184}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"ListBase", !37, i64 0, !37, i64 8}
!41 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!42 = !{!"short", !38, i64 0}
!43 = !{!36, !37, i64 24}
!44 = !{!36, !37, i64 8}
!45 = !{!36, !37, i64 48}
!46 = !{!36, !37, i64 32}
!47 = !{!36, !37, i64 72}
!48 = !{!36, !42, i64 184}
!49 = !{!"logic_ops.c:LOGIC_OT_sensor_add"}
!50 = !{!36, !37, i64 88}
!51 = !{!36, !37, i64 104}
!52 = !{!"logic_ops.c:LOGIC_OT_sensor_move"}
!53 = !{!"logic_ops.c:LOGIC_OT_controller_remove"}
!54 = !{!"logic_ops.c:LOGIC_OT_controller_add"}
!55 = !{!"logic_ops.c:LOGIC_OT_controller_move"}
!56 = !{!"logic_ops.c:LOGIC_OT_actuator_remove"}
!57 = !{!"logic_ops.c:LOGIC_OT_actuator_add"}
!58 = !{!"logic_ops.c:LOGIC_OT_actuator_move"}
!59 = !{!"logic_ops.c:LOGIC_OT_view_all"}
!60 = !{!"logic_ops.c:sensor_remove_invoke"}
!61 = !{i32 0, i32 2}
!62 = !{i32 2, i32 5}
!63 = !{!"logic_ops.c:sensor_remove_exec"}
!64 = !{!37, !37, i64 0}
!65 = !{!"logic_ops.c:edit_sensor_poll"}
!66 = !{!67, !37, i64 16}
!67 = !{!"PointerRNA", !68, i64 0, !37, i64 8, !37, i64 16}
!68 = !{!"", !37, i64 0}
!69 = !{!67, !37, i64 0}
!70 = !{!71, !37, i64 24}
!71 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !42, i64 98, !72, i64 100, !72, i64 104, !72, i64 108, !37, i64 112}
!72 = !{!"int", !38, i64 0}
!73 = !{!"logic_ops.c:edit_sensor_properties"}
!74 = !{!"logic_ops.c:edit_sensor_invoke_properties"}
!75 = !{!76, !37, i64 112}
!76 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 144, !37, i64 152, !42, i64 160, !38, i64 162}
!77 = !{!"logic_ops.c:edit_sensor_property_get"}
!78 = !{!"logic_ops.c:edit_object_property_get"}
!79 = !{!38, !38, i64 0}
!80 = !{!"logic_ops.c:sensor_add_exec"}
!81 = !{!82, !42, i64 964}
!82 = !{!"Object", !71, i64 0, !37, i64 120, !37, i64 128, !42, i64 136, !42, i64 138, !72, i64 140, !72, i64 144, !72, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !83, i64 312, !37, i64 360, !40, i64 368, !40, i64 384, !40, i64 400, !40, i64 416, !72, i64 432, !72, i64 436, !37, i64 440, !37, i64 448, !72, i64 456, !72, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !84, i64 616, !84, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !72, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !38, i64 966, !38, i64 967, !72, i64 968, !72, i64 972, !72, i64 976, !72, i64 980, !72, i64 984, !84, i64 988, !84, i64 992, !84, i64 996, !84, i64 1000, !84, i64 1004, !84, i64 1008, !84, i64 1012, !84, i64 1016, !84, i64 1020, !84, i64 1024, !84, i64 1028, !84, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !38, i64 1042, !38, i64 1043, !42, i64 1044, !38, i64 1046, !38, i64 1047, !84, i64 1048, !84, i64 1052, !40, i64 1056, !40, i64 1072, !40, i64 1088, !40, i64 1104, !84, i64 1120, !42, i64 1124, !42, i64 1126, !38, i64 1128, !72, i64 1144, !72, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !42, i64 1162, !38, i64 1164, !40, i64 1176, !40, i64 1192, !40, i64 1208, !40, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !42, i64 1266, !84, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !85, i64 1304, !85, i64 1312, !72, i64 1320, !72, i64 1324, !40, i64 1328, !40, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !40, i64 1400, !37, i64 1416}
!83 = !{!"bAnimVizSettings", !72, i64 0, !72, i64 4, !72, i64 8, !72, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !72, i64 32, !72, i64 36, !72, i64 40, !72, i64 44}
!84 = !{!"float", !38, i64 0}
!85 = !{!"long", !38, i64 0}
!86 = !{!"logic_ops.c:sensor_move_invoke"}
!87 = !{!"logic_ops.c:sensor_move_exec"}
!88 = !{!"logic_ops.c:logicbricks_move_property_get"}
!89 = !{!"logic_ops.c:controller_remove_invoke"}
!90 = !{!"logic_ops.c:controller_remove_exec"}
!91 = !{!"logic_ops.c:edit_controller_poll"}
!92 = !{!"logic_ops.c:edit_controller_properties"}
!93 = !{!"logic_ops.c:edit_controller_invoke_properties"}
!94 = !{!"logic_ops.c:edit_controller_property_get"}
!95 = !{!"logic_ops.c:controller_add_exec"}
!96 = !{!82, !72, i64 1320}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!100, !72, i64 132}
!100 = !{!"bController", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !42, i64 34, !42, i64 36, !42, i64 38, !38, i64 40, !37, i64 104, !37, i64 112, !37, i64 120, !42, i64 128, !42, i64 130, !72, i64 132}
!101 = !{!"logic_ops.c:controller_move_invoke"}
!102 = !{!"logic_ops.c:controller_move_exec"}
!103 = !{!"logic_ops.c:actuator_remove_invoke"}
!104 = !{!"logic_ops.c:actuator_remove_exec"}
!105 = !{!"logic_ops.c:edit_actuator_poll"}
!106 = !{!"logic_ops.c:edit_actuator_properties"}
!107 = !{!"logic_ops.c:edit_actuator_invoke_properties"}
!108 = !{!"logic_ops.c:edit_actuator_property_get"}
!109 = !{!"logic_ops.c:actuator_add_exec"}
!110 = !{!"logic_ops.c:actuator_move_invoke"}
!111 = !{!"logic_ops.c:actuator_move_exec"}
!112 = !{!"logic_ops.c:logic_view_all_exec"}
!113 = !{i64 0, i64 4, !114, i64 4, i64 4, !114, i64 8, i64 4, !114, i64 12, i64 4, !114}
!114 = !{!84, !84, i64 0}
!115 = !{!116, !84, i64 12}
!116 = !{!"rctf", !84, i64 0, !84, i64 4, !84, i64 8, !84, i64 12}
!117 = !{!116, !84, i64 8}
!118 = !{!"logic_ops.c:BLI_rctf_size_y"}
!119 = !{!"logic_ops.c:BLI_rctf_size_x"}
!120 = !{!116, !84, i64 4}
!121 = !{!116, !84, i64 0}
