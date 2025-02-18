; ModuleID = 'blender/source/blender/editors/space_logic/logic_ops.c'
source_filename = "blender/source/blender/editors/space_logic/logic_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bSensor = type { ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16 }
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

; Function Attrs: nounwind uwtable
define dso_local void @ED_operatortypes_logic() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_sensor_remove) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_sensor_add) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_sensor_move) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_controller_remove) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_controller_add) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_controller_move) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_actuator_remove) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_actuator_add) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_actuator_move) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_view_all) #6
  ret void
}

declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @LOGIC_OT_sensor_remove(ptr nocapture noundef %0) #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sensor_remove_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sensor_remove_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_sensor_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_string(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LOGIC_OT_sensor_add(ptr nocapture noundef %0) #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sensor_add_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !49
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @rna_Sensor_type_itemf) #6
  %12 = load ptr, ptr %8, align 8, !tbaa !48
  %13 = tail call ptr @RNA_def_string(ptr noundef %12, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #6
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #6
  %14 = load ptr, ptr %8, align 8, !tbaa !48
  %15 = tail call ptr @RNA_def_string(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.18) #6
  tail call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 268435456) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LOGIC_OT_sensor_move(ptr nocapture noundef %0) #0 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sensor_move_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sensor_move_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_sensor_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_string(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #6
  %13 = load ptr, ptr %8, align 8, !tbaa !48
  %14 = tail call ptr @RNA_def_enum(ptr noundef %13, ptr noundef nonnull @.str.21, ptr noundef nonnull @logicbricks_move_direction, i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LOGIC_OT_controller_remove(ptr nocapture noundef %0) #0 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @controller_remove_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @controller_remove_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_controller_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_string(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.35) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LOGIC_OT_controller_add(ptr nocapture noundef %0) #0 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.38, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @controller_add_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @controller_type_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.39) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !49
  %12 = load ptr, ptr %8, align 8, !tbaa !48
  %13 = tail call ptr @RNA_def_string(ptr noundef %12, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.40) #6
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #6
  %14 = load ptr, ptr %8, align 8, !tbaa !48
  %15 = tail call ptr @RNA_def_string(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.41) #6
  tail call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 268435456) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LOGIC_OT_controller_move(ptr nocapture noundef %0) #0 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.42, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @controller_move_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @controller_move_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_controller_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_string(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.35) #6
  %13 = load ptr, ptr %8, align 8, !tbaa !48
  %14 = tail call ptr @RNA_def_enum(ptr noundef %13, ptr noundef nonnull @.str.21, ptr noundef nonnull @logicbricks_move_direction, i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LOGIC_OT_actuator_remove(ptr nocapture noundef %0) #0 {
  store ptr @.str.44, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.45, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @actuator_remove_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actuator_remove_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_actuator_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.47, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_string(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.50) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LOGIC_OT_actuator_add(ptr nocapture noundef %0) #0 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.52, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.53, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actuator_add_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.54) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !49
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @rna_Actuator_type_itemf) #6
  %12 = load ptr, ptr %8, align 8, !tbaa !48
  %13 = tail call ptr @RNA_def_string(ptr noundef %12, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.55) #6
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #6
  %14 = load ptr, ptr %8, align 8, !tbaa !48
  %15 = tail call ptr @RNA_def_string(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.56) #6
  tail call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 268435456) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LOGIC_OT_actuator_move(ptr nocapture noundef %0) #0 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.58, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @actuator_move_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actuator_move_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_actuator_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.47, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_string(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.50) #6
  %13 = load ptr, ptr %8, align 8, !tbaa !48
  %14 = tail call ptr @RNA_def_enum(ptr noundef %13, ptr noundef nonnull @.str.21, ptr noundef nonnull @logicbricks_move_direction, i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @LOGIC_OT_view_all(ptr nocapture noundef writeonly %0) #2 {
  store ptr @.str.59, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.60, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.61, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @logic_view_all_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_logic_active, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sensor_remove_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_sensor_invoke_properties(ptr noundef %0, ptr noundef %1), !range !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @sensor_remove_exec(ptr noundef %0, ptr noundef %1), !range !51
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sensor_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %7 = load ptr, ptr %5, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #6
  %8 = load i8, ptr %3, align 16, !tbaa !54
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = call ptr @CTX_data_main(ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 13
  %13 = call ptr @BLI_findstring(ptr noundef nonnull %12, ptr noundef nonnull %3, i32 noundef 34) #6
  br label %16

14:                                               ; preds = %2
  %15 = call ptr @ED_object_active_context(ptr noundef %0) #6
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 92
  %21 = call ptr @BLI_findstring(ptr noundef nonnull %20, ptr noundef nonnull %4, i32 noundef 32) #6
  br label %22

22:                                               ; preds = %16, %19
  %23 = phi ptr [ %21, %19 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 92
  call void @BLI_remlink(ptr noundef nonnull %26, ptr noundef nonnull %23) #6
  call void @free_sensor(ptr noundef nonnull %23) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #6
  br label %27

27:                                               ; preds = %22, %25
  %28 = phi i32 [ 4, %25 ], [ 2, %22 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edit_sensor_poll(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @RNA_Sensor) #6
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  br label %12

12:                                               ; preds = %6, %11
  %13 = phi i32 [ 1, %11 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @edit_sensor_invoke_properties(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @RNA_Sensor) #6
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.3) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !52
  %10 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %9, ptr noundef nonnull @.str.4) #6
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8, !tbaa !58
  %18 = load ptr, ptr %4, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.bSensor, ptr %14, i64 0, i32 10
  call void @RNA_string_set(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull %19) #6
  %20 = load ptr, ptr %4, align 8, !tbaa !52
  %21 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4, i64 2
  call void @RNA_string_set(ptr noundef %20, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #6
  br label %22

22:                                               ; preds = %12, %8, %16
  %23 = phi i32 [ 1, %16 ], [ 1, %8 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @free_sensor(ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

declare ptr @ED_object_active_context(ptr noundef) local_unnamed_addr #1

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @sensor_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.12) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %10, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #6
  %11 = load i8, ptr %3, align 16, !tbaa !54
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = call ptr @CTX_data_main(ptr noundef %0) #6
  %15 = getelementptr inbounds %struct.Main, ptr %14, i64 0, i32 13
  %16 = call ptr @BLI_findstring(ptr noundef nonnull %15, ptr noundef nonnull %3, i32 noundef 34) #6
  br label %19

17:                                               ; preds = %2
  %18 = call ptr @ED_object_active_context(ptr noundef %0) #6
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %16, %13 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %19
  %23 = call ptr @new_sensor(i32 noundef %9) #6
  %24 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 92
  call void @BLI_addtail(ptr noundef nonnull %24, ptr noundef %23) #6
  call void @RNA_pointer_create(ptr noundef nonnull %20, ptr noundef nonnull @RNA_Sensor, ptr noundef %23, ptr noundef nonnull %4) #6
  %25 = call ptr @RNA_struct_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.12) #6
  %26 = load ptr, ptr %7, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %26, ptr noundef nonnull @.str.15, ptr noundef nonnull %6) #6
  %27 = load i8, ptr %6, align 16, !tbaa !54
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.bSensor, ptr %23, i64 0, i32 10
  %31 = call ptr @BLI_strncpy(ptr noundef nonnull %30, ptr noundef nonnull %6, i64 noundef 64) #6
  br label %38

32:                                               ; preds = %22
  %33 = call i32 @RNA_property_enum_get(ptr noundef nonnull %4, ptr noundef %25) #6
  %34 = call zeroext i8 @RNA_property_enum_name(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %25, i32 noundef %33, ptr noundef nonnull %5) #6
  %35 = getelementptr inbounds %struct.bSensor, ptr %23, i64 0, i32 10
  %36 = load ptr, ptr %5, align 8, !tbaa !62
  %37 = call ptr @BLI_strncpy(ptr noundef nonnull %35, ptr noundef %36, i64 noundef 64) #6
  br label %38

38:                                               ; preds = %32, %29
  %39 = getelementptr inbounds %struct.bSensor, ptr %23, i64 0, i32 10
  call void @make_unique_prop_names(ptr noundef %0, ptr noundef nonnull %39) #6
  %40 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 61
  %41 = load i16, ptr %40, align 4, !tbaa !63
  %42 = or i16 %41, 64
  store i16 %42, ptr %40, align 4, !tbaa !63
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #6
  br label %43

43:                                               ; preds = %19, %38
  %44 = phi i32 [ 4, %38 ], [ 2, %19 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret i32 %44
}

declare i32 @ED_operator_object_active_editable(ptr noundef) #1

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @rna_Sensor_type_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @new_sensor(i32 noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i8 @RNA_property_enum_name(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @make_unique_prop_names(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @sensor_move_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_sensor_invoke_properties(ptr noundef %0, ptr noundef %1), !range !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @sensor_move_exec(ptr noundef %0, ptr noundef %1), !range !51
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sensor_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %7 = load ptr, ptr %5, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #6
  %8 = load i8, ptr %3, align 16, !tbaa !54
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = call ptr @CTX_data_main(ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 13
  %13 = call ptr @BLI_findstring(ptr noundef nonnull %12, ptr noundef nonnull %3, i32 noundef 34) #6
  br label %16

14:                                               ; preds = %2
  %15 = call ptr @ED_object_active_context(ptr noundef %0) #6
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 92
  %21 = call ptr @BLI_findstring(ptr noundef nonnull %20, ptr noundef nonnull %4, i32 noundef 32) #6
  br label %22

22:                                               ; preds = %16, %19
  %23 = phi ptr [ %21, %19 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  %24 = load ptr, ptr %5, align 8, !tbaa !52
  %25 = call i32 @RNA_enum_get(ptr noundef %24, ptr noundef nonnull @.str.21) #6
  %26 = icmp eq ptr %23, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = icmp eq i32 %25, 1
  %29 = zext i1 %28 to i32
  call void @sca_move_sensor(ptr noundef nonnull %23, ptr noundef %17, i32 noundef %29) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #6
  br label %30

30:                                               ; preds = %22, %27
  %31 = phi i32 [ 4, %27 ], [ 2, %22 ]
  ret i32 %31
}

declare void @sca_move_sensor(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @controller_remove_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_controller_invoke_properties(ptr noundef %0, ptr noundef %1), !range !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @controller_remove_exec(ptr noundef %0, ptr noundef %1), !range !51
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @controller_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.32, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %7 = load ptr, ptr %5, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #6
  %8 = load i8, ptr %3, align 16, !tbaa !54
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = call ptr @CTX_data_main(ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 13
  %13 = call ptr @BLI_findstring(ptr noundef nonnull %12, ptr noundef nonnull %3, i32 noundef 34) #6
  br label %16

14:                                               ; preds = %2
  %15 = call ptr @ED_object_active_context(ptr noundef %0) #6
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 93
  %21 = call ptr @BLI_findstring(ptr noundef nonnull %20, ptr noundef nonnull %4, i32 noundef 40) #6
  br label %22

22:                                               ; preds = %16, %19
  %23 = phi ptr [ %21, %19 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 93
  call void @BLI_remlink(ptr noundef nonnull %26, ptr noundef nonnull %23) #6
  call void @unlink_controller(ptr noundef nonnull %23) #6
  call void @free_controller(ptr noundef nonnull %23) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #6
  br label %27

27:                                               ; preds = %22, %25
  %28 = phi i32 [ 4, %25 ], [ 2, %22 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edit_controller_poll(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @RNA_Controller) #6
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  br label %12

12:                                               ; preds = %6, %11
  %13 = phi i32 [ 1, %11 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @edit_controller_invoke_properties(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @RNA_Controller) #6
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.32) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !52
  %10 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %9, ptr noundef nonnull @.str.4) #6
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8, !tbaa !58
  %18 = load ptr, ptr %4, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.bController, ptr %14, i64 0, i32 11
  call void @RNA_string_set(ptr noundef %18, ptr noundef nonnull @.str.32, ptr noundef nonnull %19) #6
  %20 = load ptr, ptr %4, align 8, !tbaa !52
  %21 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4, i64 2
  call void @RNA_string_set(ptr noundef %20, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #6
  br label %22

22:                                               ; preds = %12, %8, %16
  %23 = phi i32 [ 1, %16 ], [ 1, %8 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %23
}

declare void @unlink_controller(ptr noundef) local_unnamed_addr #1

declare void @free_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @controller_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.12) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %10, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #6
  %11 = load i8, ptr %3, align 16, !tbaa !54
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = call ptr @CTX_data_main(ptr noundef %0) #6
  %15 = getelementptr inbounds %struct.Main, ptr %14, i64 0, i32 13
  %16 = call ptr @BLI_findstring(ptr noundef nonnull %15, ptr noundef nonnull %3, i32 noundef 34) #6
  br label %19

17:                                               ; preds = %2
  %18 = call ptr @ED_object_active_context(ptr noundef %0) #6
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %16, %13 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %57, label %22

22:                                               ; preds = %19
  %23 = call ptr @new_controller(i32 noundef %9) #6
  %24 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 93
  call void @BLI_addtail(ptr noundef nonnull %24, ptr noundef %23) #6
  call void @RNA_pointer_create(ptr noundef nonnull %20, ptr noundef nonnull @RNA_Controller, ptr noundef %23, ptr noundef nonnull %4) #6
  %25 = call ptr @RNA_struct_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.12) #6
  %26 = load ptr, ptr %7, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %26, ptr noundef nonnull @.str.15, ptr noundef nonnull %6) #6
  %27 = load i8, ptr %6, align 16, !tbaa !54
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.bController, ptr %23, i64 0, i32 11
  %31 = call ptr @BLI_strncpy(ptr noundef nonnull %30, ptr noundef nonnull %6, i64 noundef 64) #6
  br label %38

32:                                               ; preds = %22
  %33 = call i32 @RNA_property_enum_get(ptr noundef nonnull %4, ptr noundef %25) #6
  %34 = call zeroext i8 @RNA_property_enum_name(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %25, i32 noundef %33, ptr noundef nonnull %5) #6
  %35 = getelementptr inbounds %struct.bController, ptr %23, i64 0, i32 11
  %36 = load ptr, ptr %5, align 8, !tbaa !62
  %37 = call ptr @BLI_strncpy(ptr noundef nonnull %35, ptr noundef %36, i64 noundef 64) #6
  br label %38

38:                                               ; preds = %32, %29
  %39 = getelementptr inbounds %struct.bController, ptr %23, i64 0, i32 11
  call void @make_unique_prop_names(ptr noundef %0, ptr noundef nonnull %39) #6
  %40 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 123
  %41 = load i32, ptr %40, align 8, !tbaa !68
  br label %42

42:                                               ; preds = %38, %47
  %43 = phi i32 [ 0, %38 ], [ %48, %47 ]
  %44 = shl nuw nsw i32 1, %43
  %45 = and i32 %41, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = add nuw nsw i32 %43, 1
  %49 = icmp eq i32 %48, 30
  br i1 %49, label %50, label %42, !llvm.loop !69

50:                                               ; preds = %42, %47
  %51 = phi i32 [ %43, %42 ], [ 30, %47 ]
  %52 = shl nuw i32 1, %51
  %53 = getelementptr inbounds %struct.bController, ptr %23, i64 0, i32 17
  store i32 %52, ptr %53, align 4, !tbaa !72
  %54 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 61
  %55 = load i16, ptr %54, align 4, !tbaa !63
  %56 = or i16 %55, 2048
  store i16 %56, ptr %54, align 4, !tbaa !63
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #6
  br label %57

57:                                               ; preds = %19, %50
  %58 = phi i32 [ 4, %50 ], [ 2, %19 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret i32 %58
}

declare ptr @new_controller(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @controller_move_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_controller_invoke_properties(ptr noundef %0, ptr noundef %1), !range !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @controller_move_exec(ptr noundef %0, ptr noundef %1), !range !51
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @controller_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.32, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %7 = load ptr, ptr %5, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #6
  %8 = load i8, ptr %3, align 16, !tbaa !54
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = call ptr @CTX_data_main(ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 13
  %13 = call ptr @BLI_findstring(ptr noundef nonnull %12, ptr noundef nonnull %3, i32 noundef 34) #6
  br label %16

14:                                               ; preds = %2
  %15 = call ptr @ED_object_active_context(ptr noundef %0) #6
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 93
  %21 = call ptr @BLI_findstring(ptr noundef nonnull %20, ptr noundef nonnull %4, i32 noundef 40) #6
  br label %22

22:                                               ; preds = %16, %19
  %23 = phi ptr [ %21, %19 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  %24 = load ptr, ptr %5, align 8, !tbaa !52
  %25 = call i32 @RNA_enum_get(ptr noundef %24, ptr noundef nonnull @.str.21) #6
  %26 = icmp eq ptr %23, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = icmp eq i32 %25, 1
  %29 = zext i1 %28 to i32
  call void @sca_move_controller(ptr noundef nonnull %23, ptr noundef %17, i32 noundef %29) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #6
  br label %30

30:                                               ; preds = %22, %27
  %31 = phi i32 [ 4, %27 ], [ 2, %22 ]
  ret i32 %31
}

declare void @sca_move_controller(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @actuator_remove_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_actuator_invoke_properties(ptr noundef %0, ptr noundef %1), !range !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @actuator_remove_exec(ptr noundef %0, ptr noundef %1), !range !51
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actuator_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.47, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %7 = load ptr, ptr %5, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #6
  %8 = load i8, ptr %3, align 16, !tbaa !54
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = call ptr @CTX_data_main(ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 13
  %13 = call ptr @BLI_findstring(ptr noundef nonnull %12, ptr noundef nonnull %3, i32 noundef 34) #6
  br label %16

14:                                               ; preds = %2
  %15 = call ptr @ED_object_active_context(ptr noundef %0) #6
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 94
  %21 = call ptr @BLI_findstring(ptr noundef nonnull %20, ptr noundef nonnull %4, i32 noundef 32) #6
  br label %22

22:                                               ; preds = %16, %19
  %23 = phi ptr [ %21, %19 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 94
  call void @BLI_remlink(ptr noundef nonnull %26, ptr noundef nonnull %23) #6
  call void @unlink_actuator(ptr noundef nonnull %23) #6
  call void @free_actuator(ptr noundef nonnull %23) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #6
  br label %27

27:                                               ; preds = %22, %25
  %28 = phi i32 [ 4, %25 ], [ 2, %22 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edit_actuator_poll(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @RNA_Actuator) #6
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  br label %12

12:                                               ; preds = %6, %11
  %13 = phi i32 [ 1, %11 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @edit_actuator_invoke_properties(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @RNA_Actuator) #6
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.47) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !52
  %10 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %9, ptr noundef nonnull @.str.4) #6
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8, !tbaa !58
  %18 = load ptr, ptr %4, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.bActuator, ptr %14, i64 0, i32 7
  call void @RNA_string_set(ptr noundef %18, ptr noundef nonnull @.str.47, ptr noundef nonnull %19) #6
  %20 = load ptr, ptr %4, align 8, !tbaa !52
  %21 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4, i64 2
  call void @RNA_string_set(ptr noundef %20, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #6
  br label %22

22:                                               ; preds = %12, %8, %16
  %23 = phi i32 [ 1, %16 ], [ 1, %8 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %23
}

declare void @unlink_actuator(ptr noundef) local_unnamed_addr #1

declare void @free_actuator(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @actuator_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.12) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %10, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #6
  %11 = load i8, ptr %3, align 16, !tbaa !54
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = call ptr @CTX_data_main(ptr noundef %0) #6
  %15 = getelementptr inbounds %struct.Main, ptr %14, i64 0, i32 13
  %16 = call ptr @BLI_findstring(ptr noundef nonnull %15, ptr noundef nonnull %3, i32 noundef 34) #6
  br label %19

17:                                               ; preds = %2
  %18 = call ptr @ED_object_active_context(ptr noundef %0) #6
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %16, %13 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %19
  %23 = call ptr @new_actuator(i32 noundef %9) #6
  %24 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 94
  call void @BLI_addtail(ptr noundef nonnull %24, ptr noundef %23) #6
  call void @RNA_pointer_create(ptr noundef nonnull %20, ptr noundef nonnull @RNA_Actuator, ptr noundef %23, ptr noundef nonnull %4) #6
  %25 = call ptr @RNA_struct_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.12) #6
  %26 = load ptr, ptr %7, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %26, ptr noundef nonnull @.str.15, ptr noundef nonnull %6) #6
  %27 = load i8, ptr %6, align 16, !tbaa !54
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.bActuator, ptr %23, i64 0, i32 7
  %31 = call ptr @BLI_strncpy(ptr noundef nonnull %30, ptr noundef nonnull %6, i64 noundef 64) #6
  br label %38

32:                                               ; preds = %22
  %33 = call i32 @RNA_property_enum_get(ptr noundef nonnull %4, ptr noundef %25) #6
  %34 = call zeroext i8 @RNA_property_enum_name(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %25, i32 noundef %33, ptr noundef nonnull %5) #6
  %35 = getelementptr inbounds %struct.bActuator, ptr %23, i64 0, i32 7
  %36 = load ptr, ptr %5, align 8, !tbaa !62
  %37 = call ptr @BLI_strncpy(ptr noundef nonnull %35, ptr noundef %36, i64 noundef 64) #6
  br label %38

38:                                               ; preds = %32, %29
  %39 = getelementptr inbounds %struct.bActuator, ptr %23, i64 0, i32 7
  call void @make_unique_prop_names(ptr noundef %0, ptr noundef nonnull %39) #6
  %40 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 61
  %41 = load i16, ptr %40, align 4, !tbaa !63
  %42 = or i16 %41, 128
  store i16 %42, ptr %40, align 4, !tbaa !63
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #6
  br label %43

43:                                               ; preds = %19, %38
  %44 = phi i32 [ 4, %38 ], [ 2, %19 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret i32 %44
}

declare ptr @rna_Actuator_type_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @new_actuator(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @actuator_move_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_actuator_invoke_properties(ptr noundef %0, ptr noundef %1), !range !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @actuator_move_exec(ptr noundef %0, ptr noundef %1), !range !51
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actuator_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.47, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %7 = load ptr, ptr %5, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #6
  %8 = load i8, ptr %3, align 16, !tbaa !54
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = call ptr @CTX_data_main(ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 13
  %13 = call ptr @BLI_findstring(ptr noundef nonnull %12, ptr noundef nonnull %3, i32 noundef 34) #6
  br label %16

14:                                               ; preds = %2
  %15 = call ptr @ED_object_active_context(ptr noundef %0) #6
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 94
  %21 = call ptr @BLI_findstring(ptr noundef nonnull %20, ptr noundef nonnull %4, i32 noundef 32) #6
  br label %22

22:                                               ; preds = %16, %19
  %23 = phi ptr [ %21, %19 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  %24 = load ptr, ptr %5, align 8, !tbaa !52
  %25 = call i32 @RNA_enum_get(ptr noundef %24, ptr noundef nonnull @.str.21) #6
  %26 = icmp eq ptr %23, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = icmp eq i32 %25, 1
  %29 = zext i1 %28 to i32
  call void @sca_move_actuator(ptr noundef nonnull %23, ptr noundef %17, i32 noundef %29) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #6
  br label %30

30:                                               ; preds = %22, %27
  %31 = phi i32 [ 4, %27 ], [ 2, %22 ]
  ret i32 %31
}

declare void @sca_move_actuator(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @logic_view_all_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rctf, align 4
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !74
  %6 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1
  %7 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 3
  %8 = load float, ptr %7, align 4, !tbaa !76
  %9 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 2
  %10 = load float, ptr %9, align 4, !tbaa !78
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 1
  %13 = load float, ptr %12, align 4, !tbaa !79
  %14 = load float, ptr %6, align 4, !tbaa !80
  %15 = fsub float %13, %14
  %16 = fdiv float %11, %15
  %17 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #6
  %18 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  %19 = load float, ptr %18, align 4, !tbaa !76
  %20 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 1
  %21 = load float, ptr %20, align 4, !tbaa !79
  %22 = load float, ptr %3, align 4, !tbaa !80
  %23 = fsub float %21, %22
  %24 = fneg float %23
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %16, float %19)
  %26 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  store float %25, ptr %26, align 4, !tbaa !78
  call void @UI_view2d_smooth_view(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %3, i32 noundef %17) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 4
}

declare i32 @ED_operator_logic_active(ptr noundef) #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @WM_operator_smooth_viewtx_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @UI_view2d_smooth_view(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 32}
!46 = !{!35, !36, i64 72}
!47 = !{!35, !41, i64 184}
!48 = !{!35, !36, i64 88}
!49 = !{!35, !36, i64 104}
!50 = !{i32 0, i32 2}
!51 = !{i32 2, i32 5}
!52 = !{!53, !36, i64 112}
!53 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!54 = !{!37, !37, i64 0}
!55 = !{!56, !36, i64 16}
!56 = !{!"PointerRNA", !57, i64 0, !36, i64 8, !36, i64 16}
!57 = !{!"", !36, i64 0}
!58 = !{!56, !36, i64 0}
!59 = !{!60, !36, i64 24}
!60 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !61, i64 100, !61, i64 104, !61, i64 108, !36, i64 112}
!61 = !{!"int", !37, i64 0}
!62 = !{!36, !36, i64 0}
!63 = !{!64, !41, i64 964}
!64 = !{!"Object", !60, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !61, i64 140, !61, i64 144, !61, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !65, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !61, i64 432, !61, i64 436, !36, i64 440, !36, i64 448, !61, i64 456, !61, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !66, i64 616, !66, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !61, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !61, i64 968, !61, i64 972, !61, i64 976, !61, i64 980, !61, i64 984, !66, i64 988, !66, i64 992, !66, i64 996, !66, i64 1000, !66, i64 1004, !66, i64 1008, !66, i64 1012, !66, i64 1016, !66, i64 1020, !66, i64 1024, !66, i64 1028, !66, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !66, i64 1048, !66, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !66, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !61, i64 1144, !61, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !66, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !67, i64 1304, !67, i64 1312, !61, i64 1320, !61, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!65 = !{!"bAnimVizSettings", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !61, i64 32, !61, i64 36, !61, i64 40, !61, i64 44}
!66 = !{!"float", !37, i64 0}
!67 = !{!"long", !37, i64 0}
!68 = !{!64, !61, i64 1320}
!69 = distinct !{!69, !70, !71}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!73, !61, i64 132}
!73 = !{!"bController", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !41, i64 36, !41, i64 38, !37, i64 40, !36, i64 104, !36, i64 112, !36, i64 120, !41, i64 128, !41, i64 130, !61, i64 132}
!74 = !{i64 0, i64 4, !75, i64 4, i64 4, !75, i64 8, i64 4, !75, i64 12, i64 4, !75}
!75 = !{!66, !66, i64 0}
!76 = !{!77, !66, i64 12}
!77 = !{!"rctf", !66, i64 0, !66, i64 4, !66, i64 8, !66, i64 12}
!78 = !{!77, !66, i64 8}
!79 = !{!77, !66, i64 4}
!80 = !{!77, !66, i64 0}
