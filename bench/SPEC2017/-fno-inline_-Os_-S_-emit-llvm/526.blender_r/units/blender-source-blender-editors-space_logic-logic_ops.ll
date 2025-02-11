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
define internal void @LOGIC_OT_sensor_remove(ptr nocapture noundef %0) #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sensor_remove_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sensor_remove_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_sensor_poll, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !18
  tail call fastcc void @edit_sensor_properties(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LOGIC_OT_sensor_add(ptr nocapture noundef %0) #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sensor_add_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !20
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @rna_Sensor_type_itemf) #7
  %12 = load ptr, ptr %8, align 8, !tbaa !19
  %13 = tail call ptr @RNA_def_string(ptr noundef %12, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #7
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #7
  %14 = load ptr, ptr %8, align 8, !tbaa !19
  %15 = tail call ptr @RNA_def_string(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.18) #7
  tail call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 268435456) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LOGIC_OT_sensor_move(ptr nocapture noundef %0) #0 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sensor_move_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sensor_move_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_sensor_poll, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !18
  tail call fastcc void @edit_sensor_properties(ptr noundef nonnull %0) #8
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull @logicbricks_move_direction, i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LOGIC_OT_controller_remove(ptr nocapture noundef %0) #0 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @controller_remove_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @controller_remove_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_controller_poll, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !18
  tail call fastcc void @edit_controller_properties(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LOGIC_OT_controller_add(ptr nocapture noundef %0) #0 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.38, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @controller_add_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @controller_type_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.39) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !20
  %12 = load ptr, ptr %8, align 8, !tbaa !19
  %13 = tail call ptr @RNA_def_string(ptr noundef %12, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.40) #7
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #7
  %14 = load ptr, ptr %8, align 8, !tbaa !19
  %15 = tail call ptr @RNA_def_string(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.41) #7
  tail call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 268435456) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LOGIC_OT_controller_move(ptr nocapture noundef %0) #0 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.42, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @controller_move_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @controller_move_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_controller_poll, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !18
  tail call fastcc void @edit_controller_properties(ptr noundef nonnull %0) #8
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull @logicbricks_move_direction, i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LOGIC_OT_actuator_remove(ptr nocapture noundef %0) #0 {
  store ptr @.str.44, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.45, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @actuator_remove_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actuator_remove_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_actuator_poll, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !18
  tail call fastcc void @edit_actuator_properties(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LOGIC_OT_actuator_add(ptr nocapture noundef %0) #0 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.52, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.53, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actuator_add_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.54) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !20
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @rna_Actuator_type_itemf) #7
  %12 = load ptr, ptr %8, align 8, !tbaa !19
  %13 = tail call ptr @RNA_def_string(ptr noundef %12, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.55) #7
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #7
  %14 = load ptr, ptr %8, align 8, !tbaa !19
  %15 = tail call ptr @RNA_def_string(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.56) #7
  tail call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 268435456) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LOGIC_OT_actuator_move(ptr nocapture noundef %0) #0 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.58, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @actuator_move_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actuator_move_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_actuator_poll, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !18
  tail call fastcc void @edit_actuator_properties(ptr noundef nonnull %0) #8
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull @logicbricks_move_direction, i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @LOGIC_OT_view_all(ptr nocapture noundef writeonly %0) #2 {
  store ptr @.str.59, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.60, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.61, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @logic_view_all_exec, ptr %4, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_logic_active, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sensor_remove_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_sensor_invoke_properties(ptr noundef %0, ptr noundef %1) #8, !range !21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @sensor_remove_exec(ptr noundef %0, ptr noundef %1) #8, !range !22
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sensor_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr null, ptr %3, align 8, !tbaa !23
  %4 = call fastcc ptr @edit_sensor_property_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !23
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
define internal noundef i32 @edit_sensor_poll(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @RNA_Sensor) #7
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !27
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !28
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
define internal fastcc void @edit_sensor_properties(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  %4 = tail call ptr @RNA_def_string(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #7
  %5 = load ptr, ptr %2, align 8, !tbaa !19
  %6 = tail call ptr @RNA_def_string(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @edit_sensor_invoke_properties(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @RNA_Sensor) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !31
  %6 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.3) #7
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !31
  %10 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %9, ptr noundef nonnull @.str.4) #7
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8, !tbaa !27
  %18 = load ptr, ptr %4, align 8, !tbaa !31
  %19 = getelementptr inbounds %struct.bSensor, ptr %14, i64 0, i32 10
  call void @RNA_string_set(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull %19) #7
  %20 = load ptr, ptr %4, align 8, !tbaa !31
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
define internal fastcc ptr @edit_sensor_property_get(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #7
  %7 = call fastcc ptr @edit_object_property_get(ptr noundef %0, ptr noundef %1) #8
  store ptr %7, ptr %2, align 8, !tbaa !23
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
define internal fastcc ptr @edit_object_property_get(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !31
  call void @RNA_string_get(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #7
  %6 = load i8, ptr %3, align 16, !tbaa !33
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
define internal noundef i32 @sensor_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !31
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
  %15 = load ptr, ptr %6, align 8, !tbaa !31
  call void @RNA_string_get(ptr noundef %15, ptr noundef nonnull @.str.15, ptr noundef nonnull %5) #7
  %16 = load i8, ptr %5, align 16, !tbaa !33
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
  %25 = load ptr, ptr %4, align 8, !tbaa !23
  %26 = call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef %25, i64 noundef 64) #7
  br label %27

27:                                               ; preds = %21, %18
  %28 = getelementptr inbounds %struct.bSensor, ptr %12, i64 0, i32 10
  call void @make_unique_prop_names(ptr noundef %0, ptr noundef nonnull %28) #7
  %29 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 61
  %30 = load i16, ptr %29, align 4, !tbaa !34
  %31 = or i16 %30, 64
  store i16 %31, ptr %29, align 4, !tbaa !34
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
define internal noundef i32 @sensor_move_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_sensor_invoke_properties(ptr noundef %0, ptr noundef %1) #8, !range !21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @sensor_move_exec(ptr noundef %0, ptr noundef %1) #8, !range !22
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sensor_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr null, ptr %3, align 8, !tbaa !23
  %4 = call fastcc ptr @edit_sensor_property_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #8
  %5 = tail call fastcc i32 @logicbricks_move_property_get(ptr noundef %1) #8, !range !21
  %6 = icmp eq ptr %4, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !23
  tail call void @sca_move_sensor(ptr noundef nonnull %4, ptr noundef %8, i32 noundef %5) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #7
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i32 [ 4, %7 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @logicbricks_move_property_get(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !31
  %4 = tail call i32 @RNA_enum_get(ptr noundef %3, ptr noundef nonnull @.str.21) #7
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare void @sca_move_sensor(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @controller_remove_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_controller_invoke_properties(ptr noundef %0, ptr noundef %1) #8, !range !21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @controller_remove_exec(ptr noundef %0, ptr noundef %1) #8, !range !22
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @controller_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr null, ptr %3, align 8, !tbaa !23
  %4 = call fastcc ptr @edit_controller_property_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !23
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
define internal noundef i32 @edit_controller_poll(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @RNA_Controller) #7
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !27
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !28
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
define internal fastcc void @edit_controller_properties(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  %4 = tail call ptr @RNA_def_string(ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #7
  %5 = load ptr, ptr %2, align 8, !tbaa !19
  %6 = tail call ptr @RNA_def_string(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.35) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @edit_controller_invoke_properties(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @RNA_Controller) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !31
  %6 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.32) #7
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !31
  %10 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %9, ptr noundef nonnull @.str.4) #7
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8, !tbaa !27
  %18 = load ptr, ptr %4, align 8, !tbaa !31
  %19 = getelementptr inbounds %struct.bController, ptr %14, i64 0, i32 11
  call void @RNA_string_set(ptr noundef %18, ptr noundef nonnull @.str.32, ptr noundef nonnull %19) #7
  %20 = load ptr, ptr %4, align 8, !tbaa !31
  %21 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4, i64 2
  call void @RNA_string_set(ptr noundef %20, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #7
  br label %22

22:                                               ; preds = %12, %8, %16
  %23 = phi i32 [ 1, %16 ], [ 1, %8 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @edit_controller_property_get(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.32, ptr noundef nonnull %4) #7
  %7 = call fastcc ptr @edit_object_property_get(ptr noundef %0, ptr noundef %1) #8
  store ptr %7, ptr %2, align 8, !tbaa !23
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
define internal noundef i32 @controller_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !31
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
  %15 = load ptr, ptr %6, align 8, !tbaa !31
  call void @RNA_string_get(ptr noundef %15, ptr noundef nonnull @.str.15, ptr noundef nonnull %5) #7
  %16 = load i8, ptr %5, align 16, !tbaa !33
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
  %25 = load ptr, ptr %4, align 8, !tbaa !23
  %26 = call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef %25, i64 noundef 64) #7
  br label %27

27:                                               ; preds = %21, %18
  %28 = getelementptr inbounds %struct.bController, ptr %12, i64 0, i32 11
  call void @make_unique_prop_names(ptr noundef %0, ptr noundef nonnull %28) #7
  %29 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 123
  %30 = load i32, ptr %29, align 8, !tbaa !39
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
  br i1 %38, label %39, label %31, !llvm.loop !40

39:                                               ; preds = %31, %36
  %40 = phi i32 [ 30, %36 ], [ %32, %31 ]
  %41 = shl nuw i32 1, %40
  %42 = getelementptr inbounds %struct.bController, ptr %12, i64 0, i32 17
  store i32 %41, ptr %42, align 4, !tbaa !42
  %43 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 61
  %44 = load i16, ptr %43, align 4, !tbaa !34
  %45 = or i16 %44, 2048
  store i16 %45, ptr %43, align 4, !tbaa !34
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
define internal noundef i32 @controller_move_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_controller_invoke_properties(ptr noundef %0, ptr noundef %1) #8, !range !21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @controller_move_exec(ptr noundef %0, ptr noundef %1) #8, !range !22
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @controller_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr null, ptr %3, align 8, !tbaa !23
  %4 = call fastcc ptr @edit_controller_property_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #8
  %5 = tail call fastcc i32 @logicbricks_move_property_get(ptr noundef %1) #8, !range !21
  %6 = icmp eq ptr %4, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !23
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
define internal noundef i32 @actuator_remove_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_actuator_invoke_properties(ptr noundef %0, ptr noundef %1) #8, !range !21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @actuator_remove_exec(ptr noundef %0, ptr noundef %1) #8, !range !22
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actuator_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr null, ptr %3, align 8, !tbaa !23
  %4 = call fastcc ptr @edit_actuator_property_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !23
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
define internal noundef i32 @edit_actuator_poll(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @RNA_Actuator) #7
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !27
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !28
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
define internal fastcc void @edit_actuator_properties(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  %4 = tail call ptr @RNA_def_string(ptr noundef %3, ptr noundef nonnull @.str.47, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #7
  %5 = load ptr, ptr %2, align 8, !tbaa !19
  %6 = tail call ptr @RNA_def_string(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.50) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @edit_actuator_invoke_properties(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @RNA_Actuator) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !31
  %6 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.47) #7
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !31
  %10 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %9, ptr noundef nonnull @.str.4) #7
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8, !tbaa !27
  %18 = load ptr, ptr %4, align 8, !tbaa !31
  %19 = getelementptr inbounds %struct.bActuator, ptr %14, i64 0, i32 7
  call void @RNA_string_set(ptr noundef %18, ptr noundef nonnull @.str.47, ptr noundef nonnull %19) #7
  %20 = load ptr, ptr %4, align 8, !tbaa !31
  %21 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4, i64 2
  call void @RNA_string_set(ptr noundef %20, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #7
  br label %22

22:                                               ; preds = %12, %8, %16
  %23 = phi i32 [ 1, %16 ], [ 1, %8 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @edit_actuator_property_get(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.47, ptr noundef nonnull %4) #7
  %7 = call fastcc ptr @edit_object_property_get(ptr noundef %0, ptr noundef %1) #8
  store ptr %7, ptr %2, align 8, !tbaa !23
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
define internal noundef i32 @actuator_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !31
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
  %15 = load ptr, ptr %6, align 8, !tbaa !31
  call void @RNA_string_get(ptr noundef %15, ptr noundef nonnull @.str.15, ptr noundef nonnull %5) #7
  %16 = load i8, ptr %5, align 16, !tbaa !33
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
  %25 = load ptr, ptr %4, align 8, !tbaa !23
  %26 = call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef %25, i64 noundef 64) #7
  br label %27

27:                                               ; preds = %21, %18
  %28 = getelementptr inbounds %struct.bActuator, ptr %12, i64 0, i32 7
  call void @make_unique_prop_names(ptr noundef %0, ptr noundef nonnull %28) #7
  %29 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 61
  %30 = load i16, ptr %29, align 4, !tbaa !34
  %31 = or i16 %30, 128
  store i16 %31, ptr %29, align 4, !tbaa !34
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
define internal noundef i32 @actuator_move_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_actuator_invoke_properties(ptr noundef %0, ptr noundef %1) #8, !range !21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @actuator_move_exec(ptr noundef %0, ptr noundef %1) #8, !range !22
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actuator_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr null, ptr %3, align 8, !tbaa !23
  %4 = call fastcc ptr @edit_actuator_property_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #8
  %5 = tail call fastcc i32 @logicbricks_move_property_get(ptr noundef %1) #8, !range !21
  %6 = icmp eq ptr %4, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !23
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
define internal noundef i32 @logic_view_all_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rctf, align 4
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !44
  %6 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1
  %7 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %6) #8
  %8 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %6) #8
  %9 = fdiv float %7, %8
  %10 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #7
  %11 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %3) #8
  %14 = fneg float %13
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %9, float %12)
  %16 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  store float %15, ptr %16, align 4, !tbaa !48
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
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !46
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !48
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !49
  %4 = load float, ptr %0, align 4, !tbaa !50
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 48}
!16 = !{!6, !7, i64 32}
!17 = !{!6, !7, i64 72}
!18 = !{!6, !12, i64 184}
!19 = !{!6, !7, i64 88}
!20 = !{!6, !7, i64 104}
!21 = !{i32 0, i32 2}
!22 = !{i32 2, i32 5}
!23 = !{!7, !7, i64 0}
!24 = !{!25, !7, i64 16}
!25 = !{!"PointerRNA", !26, i64 0, !7, i64 8, !7, i64 16}
!26 = !{!"", !7, i64 0}
!27 = !{!25, !7, i64 0}
!28 = !{!29, !7, i64 24}
!29 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !30, i64 100, !30, i64 104, !30, i64 108, !7, i64 112}
!30 = !{!"int", !8, i64 0}
!31 = !{!32, !7, i64 112}
!32 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!33 = !{!8, !8, i64 0}
!34 = !{!35, !12, i64 964}
!35 = !{!"Object", !29, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !30, i64 140, !30, i64 144, !30, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !36, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !30, i64 432, !30, i64 436, !7, i64 440, !7, i64 448, !30, i64 456, !30, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !37, i64 616, !37, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !30, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !30, i64 968, !30, i64 972, !30, i64 976, !30, i64 980, !30, i64 984, !37, i64 988, !37, i64 992, !37, i64 996, !37, i64 1000, !37, i64 1004, !37, i64 1008, !37, i64 1012, !37, i64 1016, !37, i64 1020, !37, i64 1024, !37, i64 1028, !37, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !37, i64 1048, !37, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !37, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !30, i64 1144, !30, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !37, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !38, i64 1304, !38, i64 1312, !30, i64 1320, !30, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!36 = !{!"bAnimVizSettings", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !30, i64 32, !30, i64 36, !30, i64 40, !30, i64 44}
!37 = !{!"float", !8, i64 0}
!38 = !{!"long", !8, i64 0}
!39 = !{!35, !30, i64 1320}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!43, !30, i64 132}
!43 = !{!"bController", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !12, i64 34, !12, i64 36, !12, i64 38, !8, i64 40, !7, i64 104, !7, i64 112, !7, i64 120, !12, i64 128, !12, i64 130, !30, i64 132}
!44 = !{i64 0, i64 4, !45, i64 4, i64 4, !45, i64 8, i64 4, !45, i64 12, i64 4, !45}
!45 = !{!37, !37, i64 0}
!46 = !{!47, !37, i64 12}
!47 = !{!"rctf", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12}
!48 = !{!47, !37, i64 8}
!49 = !{!47, !37, i64 4}
!50 = !{!47, !37, i64 0}
