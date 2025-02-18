; ModuleID = 'blender/source/blender/editors/space_logic/logic_window.c'
source_filename = "blender/source/blender/editors/space_logic/logic_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bProperty = type { ptr, ptr, [64 x i8], i16, i16, i32, ptr }
%struct.bSensor = type { ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.bController = type { ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i32 }
%struct.bActuator = type { ptr, ptr, ptr, i16, i16, i16, i16, [64 x i8], ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.SpaceLogic = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.bSoundActuator = type { i16, i16, i32, i32, [2 x i16], float, float, ptr, %struct.Sound3D, i16, i16, i16, [1 x i16] }
%struct.Sound3D = type { float, float, float, float, float, float, float, float }
%struct.bArmatureActuator = type { [64 x i8], [64 x i8], i32, float, float, float, ptr, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bPropertyActuator = type { i32, i32, [64 x i8], [64 x i8], ptr }
%struct.uiBut = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, [128 x i8], [400 x i8], %struct.rctf, ptr, float, float, float, float, float, float, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i16], ptr, ptr, i32, i8, i8, i8, i8, i8, i16, i16, ptr, ptr, %struct.PointerRNA, ptr, i32, %struct.PointerRNA, ptr, ptr, ptr, i16, i8, i8, ptr, ptr, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"names\00", align 1
@RNA_SpaceLogicEditor = external global %struct.StructRNA, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"buttonswin %p\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Controllers\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"show_controllers_selected_objects\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Sel\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"show_controllers_active_object\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Act\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"show_controllers_linked_controller\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Link\00", align 1
@RNA_GameObjectSettings = external global %struct.StructRNA, align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"show_state_panel\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Object name, click to show/hide controllers\00", align 1
@RNA_Object = external global %struct.StructRNA, align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"LOGIC_OT_controller_add\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Add Controller\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Visible\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Initial\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"use_all_states\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"states_visible\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"used_states\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"states_initial\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"show_debug_state\00", align 1
@RNA_Controller = external global %struct.StructRNA, align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Sensors\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"show_sensors_selected_objects\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"show_sensors_active_object\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"show_sensors_linked_controller\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"show_sensors_active_states\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"State\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"Object name, click to show/hide sensors\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"LOGIC_OT_sensor_add\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"Add Sensor\00", align 1
@RNA_Sensor = external global %struct.StructRNA, align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"sensor\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"Actuators\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"show_actuators_selected_objects\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"show_actuators_active_object\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"show_actuators_linked_controller\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"show_actuators_active_states\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"Object name, click to show/hide actuators\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"LOGIC_OT_actuator_add\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"Add Actuator\00", align 1
@RNA_Actuator = external global %struct.StructRNA, align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"actuator\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"idar\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"Add sensor\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"Delete sensor\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"Add controller\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"Delete controller\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"Add actuator\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"Delete actuator\00", align 1
@__func__.controller_menu = private unnamed_addr constant [16 x i8] c"controller_menu\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"Show Objects\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"Hide Objects\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"Show Controllers\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"Hide Controllers\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"states\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"show_expanded\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"Set controller state index (from 1 to 30)\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"use_priority\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"LOGIC_OT_controller_move\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"LOGIC_OT_controller_remove\00", align 1
@__func__.controller_state_mask_menu = private unnamed_addr constant [27 x i8] c"controller_state_mask_menu\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"And\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"Or\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"Nand\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"Nor\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"Xor\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"Xnor\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"Expression\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"Python\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"use_debug\00", align 1
@__func__.sensor_menu = private unnamed_addr constant [12 x i8] c"sensor_menu\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"Show Sensors\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"Hide Sensors\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"LOGIC_OT_sensor_move\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"LOGIC_OT_sensor_remove\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"Always\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"Near\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"Property\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"Armature\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"Actuator\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"Delay\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"Collision\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"Radar\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"Ray\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"Message\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"Joystick\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"use_pulse_true_level\00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"use_pulse_false_level\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"frequency\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"Freq\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"use_level\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"use_tap\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"Invert\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"actuators\00", align 1
@.str.106 = private unnamed_addr constant [36 x i8] c"Sensor only available for armatures\00", align 1
@RNA_Pose = external global %struct.StructRNA, align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"bones\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"bone\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"constraint\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"constraints\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"test_type\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"use_pulse\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"use_material\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"materials\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"use_repeat\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"joystick_index\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"event_type\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"use_all_events\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"button_number\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"axis_number\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"axis_threshold\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"axis_direction\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"hat_number\00", align 1
@.str.129 = private unnamed_addr constant [14 x i8] c"hat_direction\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"single_axis_number\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"Key:\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"use_all_keys\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.134 = private unnamed_addr constant [16 x i8] c"First Modifier:\00", align 1
@.str.135 = private unnamed_addr constant [15 x i8] c"modifier_key_1\00", align 1
@.str.136 = private unnamed_addr constant [17 x i8] c"Second Modifier:\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"modifier_key_2\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.139 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"mouse_event\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"use_x_ray\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"distance\00", align 1
@.str.145 = private unnamed_addr constant [15 x i8] c"reset_distance\00", align 1
@.str.146 = private unnamed_addr constant [16 x i8] c"evaluation_type\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"value_min\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"value_max\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"ray_type\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@__func__.actuator_menu = private unnamed_addr constant [14 x i8] c"actuator_menu\00", align 1
@.str.154 = private unnamed_addr constant [15 x i8] c"Show Actuators\00", align 1
@.str.155 = private unnamed_addr constant [15 x i8] c"Hide Actuators\00", align 1
@.str.156 = private unnamed_addr constant [23 x i8] c"LOGIC_OT_actuator_move\00", align 1
@.str.157 = private unnamed_addr constant [25 x i8] c"LOGIC_OT_actuator_remove\00", align 1
@.str.158 = private unnamed_addr constant [13 x i8] c"Shape Action\00", align 1
@.str.159 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.160 = private unnamed_addr constant [7 x i8] c"Motion\00", align 1
@.str.161 = private unnamed_addr constant [8 x i8] c"F-Curve\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"Lamp\00", align 1
@.str.163 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.165 = private unnamed_addr constant [6 x i8] c"Sound\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"Edit Object\00", align 1
@.str.167 = private unnamed_addr constant [11 x i8] c"Constraint\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c"Game\00", align 1
@.str.171 = private unnamed_addr constant [11 x i8] c"Visibility\00", align 1
@.str.172 = private unnamed_addr constant [10 x i8] c"Filter 2D\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c"Parent\00", align 1
@.str.174 = private unnamed_addr constant [9 x i8] c"Steering\00", align 1
@.str.175 = private unnamed_addr constant [10 x i8] c"play_mode\00", align 1
@.str.176 = private unnamed_addr constant [10 x i8] c"use_force\00", align 1
@.str.177 = private unnamed_addr constant [13 x i8] c"use_additive\00", align 1
@.str.178 = private unnamed_addr constant [10 x i8] c"use_local\00", align 1
@.str.179 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.180 = private unnamed_addr constant [24 x i8] c"use_continue_last_frame\00", align 1
@.str.181 = private unnamed_addr constant [12 x i8] c"frame_start\00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"frame_end\00", align 1
@.str.183 = private unnamed_addr constant [18 x i8] c"apply_to_children\00", align 1
@.str.184 = private unnamed_addr constant [15 x i8] c"frame_blend_in\00", align 1
@.str.185 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.186 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.187 = private unnamed_addr constant [13 x i8] c"layer_weight\00", align 1
@.str.188 = private unnamed_addr constant [11 x i8] c"blend_mode\00", align 1
@.str.189 = private unnamed_addr constant [15 x i8] c"frame_property\00", align 1
@.str.190 = private unnamed_addr constant [38 x i8] c"Actuator only available for armatures\00", align 1
@.str.191 = private unnamed_addr constant [17 x i8] c"secondary_target\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.193 = private unnamed_addr constant [10 x i8] c"influence\00", align 1
@.str.194 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.197 = private unnamed_addr constant [8 x i8] c"damping\00", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"limit_min\00", align 1
@.str.200 = private unnamed_addr constant [10 x i8] c"limit_max\00", align 1
@.str.201 = private unnamed_addr constant [11 x i8] c"use_normal\00", align 1
@.str.202 = private unnamed_addr constant [7 x i8] c"Range:\00", align 1
@.str.203 = private unnamed_addr constant [19 x i8] c"use_force_distance\00", align 1
@.str.204 = private unnamed_addr constant [20 x i8] c"use_material_detect\00", align 1
@.str.205 = private unnamed_addr constant [15 x i8] c"use_persistent\00", align 1
@.str.206 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.207 = private unnamed_addr constant [17 x i8] c"damping_rotation\00", align 1
@.str.208 = private unnamed_addr constant [19 x i8] c"direction_axis_pos\00", align 1
@.str.209 = private unnamed_addr constant [13 x i8] c"rotation_max\00", align 1
@.str.210 = private unnamed_addr constant [10 x i8] c"angle_min\00", align 1
@.str.211 = private unnamed_addr constant [10 x i8] c"angle_max\00", align 1
@.str.212 = private unnamed_addr constant [11 x i8] c"fh_damping\00", align 1
@.str.213 = private unnamed_addr constant [10 x i8] c"fh_height\00", align 1
@.str.214 = private unnamed_addr constant [20 x i8] c"use_fh_paralel_axis\00", align 1
@.str.215 = private unnamed_addr constant [15 x i8] c"direction_axis\00", align 1
@.str.216 = private unnamed_addr constant [9 x i8] c"fh_force\00", align 1
@.str.217 = private unnamed_addr constant [14 x i8] c"use_fh_normal\00", align 1
@.str.218 = private unnamed_addr constant [16 x i8] c"linear_velocity\00", align 1
@.str.219 = private unnamed_addr constant [26 x i8] c"use_local_linear_velocity\00", align 1
@.str.220 = private unnamed_addr constant [17 x i8] c"angular_velocity\00", align 1
@.str.221 = private unnamed_addr constant [27 x i8] c"use_local_angular_velocity\00", align 1
@.str.222 = private unnamed_addr constant [37 x i8] c"Mode only available for mesh objects\00", align 1
@.str.223 = private unnamed_addr constant [5 x i8] c"mesh\00", align 1
@.str.224 = private unnamed_addr constant [25 x i8] c"use_replace_display_mesh\00", align 1
@.str.225 = private unnamed_addr constant [25 x i8] c"use_replace_physics_mesh\00", align 1
@.str.226 = private unnamed_addr constant [13 x i8] c"track_object\00", align 1
@.str.227 = private unnamed_addr constant [16 x i8] c"use_3d_tracking\00", align 1
@.str.228 = private unnamed_addr constant [8 x i8] c"up_axis\00", align 1
@.str.229 = private unnamed_addr constant [11 x i8] c"track_axis\00", align 1
@.str.230 = private unnamed_addr constant [18 x i8] c"dynamic_operation\00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c"mass\00", align 1
@.str.232 = private unnamed_addr constant [12 x i8] c"filter_pass\00", align 1
@.str.233 = private unnamed_addr constant [12 x i8] c"glsl_shader\00", align 1
@.str.234 = private unnamed_addr constant [16 x i8] c"use_motion_blur\00", align 1
@.str.235 = private unnamed_addr constant [19 x i8] c"motion_blur_factor\00", align 1
@.str.236 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.237 = private unnamed_addr constant [12 x i8] c"to_property\00", align 1
@.str.238 = private unnamed_addr constant [8 x i8] c"objects\00", align 1
@.str.239 = private unnamed_addr constant [10 x i8] c"body_type\00", align 1
@.str.240 = private unnamed_addr constant [13 x i8] c"body_message\00", align 1
@.str.241 = private unnamed_addr constant [14 x i8] c"body_property\00", align 1
@.str.242 = private unnamed_addr constant [13 x i8] c"physics_type\00", align 1
@.str.243 = private unnamed_addr constant [16 x i8] c"offset_location\00", align 1
@.str.244 = private unnamed_addr constant [19 x i8] c"use_local_location\00", align 1
@.str.245 = private unnamed_addr constant [16 x i8] c"offset_rotation\00", align 1
@.str.246 = private unnamed_addr constant [19 x i8] c"use_local_rotation\00", align 1
@.str.247 = private unnamed_addr constant [25 x i8] c"Dynamic Object Settings:\00", align 1
@.str.248 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.249 = private unnamed_addr constant [16 x i8] c"use_local_force\00", align 1
@.str.250 = private unnamed_addr constant [7 x i8] c"torque\00", align 1
@.str.251 = private unnamed_addr constant [17 x i8] c"use_local_torque\00", align 1
@.str.252 = private unnamed_addr constant [24 x i8] c"use_add_linear_velocity\00", align 1
@.str.253 = private unnamed_addr constant [17 x i8] c"reference_object\00", align 1
@.str.254 = private unnamed_addr constant [18 x i8] c"use_servo_limit_x\00", align 1
@.str.255 = private unnamed_addr constant [12 x i8] c"force_max_x\00", align 1
@.str.256 = private unnamed_addr constant [12 x i8] c"force_min_x\00", align 1
@.str.257 = private unnamed_addr constant [18 x i8] c"use_servo_limit_y\00", align 1
@.str.258 = private unnamed_addr constant [12 x i8] c"force_max_y\00", align 1
@.str.259 = private unnamed_addr constant [12 x i8] c"force_min_y\00", align 1
@.str.260 = private unnamed_addr constant [18 x i8] c"use_servo_limit_z\00", align 1
@.str.261 = private unnamed_addr constant [12 x i8] c"force_max_z\00", align 1
@.str.262 = private unnamed_addr constant [12 x i8] c"force_min_z\00", align 1
@.str.263 = private unnamed_addr constant [25 x i8] c"proportional_coefficient\00", align 1
@.str.264 = private unnamed_addr constant [21 x i8] c"integral_coefficient\00", align 1
@.str.265 = private unnamed_addr constant [21 x i8] c"derivate_coefficient\00", align 1
@.str.266 = private unnamed_addr constant [27 x i8] c"use_add_character_location\00", align 1
@.str.267 = private unnamed_addr constant [19 x i8] c"use_character_jump\00", align 1
@.str.268 = private unnamed_addr constant [13 x i8] c"use_compound\00", align 1
@.str.269 = private unnamed_addr constant [10 x i8] c"use_ghost\00", align 1
@.str.270 = private unnamed_addr constant [16 x i8] c"object_property\00", align 1
@.str.271 = private unnamed_addr constant [13 x i8] c"distribution\00", align 1
@.str.272 = private unnamed_addr constant [16 x i8] c"use_always_true\00", align 1
@.str.273 = private unnamed_addr constant [47 x i8] c"Choose between true and false, 50% chance each\00", align 1
@.str.274 = private unnamed_addr constant [7 x i8] c"chance\00", align 1
@.str.275 = private unnamed_addr constant [10 x i8] c"int_value\00", align 1
@.str.276 = private unnamed_addr constant [8 x i8] c"int_min\00", align 1
@.str.277 = private unnamed_addr constant [8 x i8] c"int_max\00", align 1
@.str.278 = private unnamed_addr constant [9 x i8] c"int_mean\00", align 1
@.str.279 = private unnamed_addr constant [12 x i8] c"float_value\00", align 1
@.str.280 = private unnamed_addr constant [10 x i8] c"float_min\00", align 1
@.str.281 = private unnamed_addr constant [10 x i8] c"float_max\00", align 1
@.str.282 = private unnamed_addr constant [11 x i8] c"float_mean\00", align 1
@.str.283 = private unnamed_addr constant [20 x i8] c"standard_derivation\00", align 1
@.str.284 = private unnamed_addr constant [15 x i8] c"half_life_time\00", align 1
@.str.285 = private unnamed_addr constant [7 x i8] c"camera\00", align 1
@.str.286 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.287 = private unnamed_addr constant [41 x i8] c"Actuator only available for mesh objects\00", align 1
@.str.288 = private unnamed_addr constant [6 x i8] c"sound\00", align 1
@.str.289 = private unnamed_addr constant [14 x i8] c"SOUND_OT_open\00", align 1
@.str.290 = private unnamed_addr constant [47 x i8] c"Select a sound from the list or load a new one\00", align 1
@.str.291 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.292 = private unnamed_addr constant [6 x i8] c"pitch\00", align 1
@.str.293 = private unnamed_addr constant [13 x i8] c"use_sound_3d\00", align 1
@.str.294 = private unnamed_addr constant [12 x i8] c"gain_3d_min\00", align 1
@.str.295 = private unnamed_addr constant [12 x i8] c"gain_3d_max\00", align 1
@.str.296 = private unnamed_addr constant [22 x i8] c"distance_3d_reference\00", align 1
@.str.297 = private unnamed_addr constant [16 x i8] c"distance_3d_max\00", align 1
@.str.298 = private unnamed_addr constant [18 x i8] c"rolloff_factor_3d\00", align 1
@.str.299 = private unnamed_addr constant [19 x i8] c"cone_outer_gain_3d\00", align 1
@.str.300 = private unnamed_addr constant [20 x i8] c"cone_outer_angle_3d\00", align 1
@.str.301 = private unnamed_addr constant [20 x i8] c"cone_inner_angle_3d\00", align 1
@.str.302 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.303 = private unnamed_addr constant [12 x i8] c"use_visible\00", align 1
@.str.304 = private unnamed_addr constant [14 x i8] c"use_occlusion\00", align 1
@.str.305 = private unnamed_addr constant [8 x i8] c"navmesh\00", align 1
@.str.306 = private unnamed_addr constant [9 x i8] c"velocity\00", align 1
@.str.307 = private unnamed_addr constant [13 x i8] c"acceleration\00", align 1
@.str.308 = private unnamed_addr constant [11 x i8] c"turn_speed\00", align 1
@.str.309 = private unnamed_addr constant [7 x i8] c"facing\00", align 1
@.str.310 = private unnamed_addr constant [12 x i8] c"facing_axis\00", align 1
@.str.311 = private unnamed_addr constant [10 x i8] c"normal_up\00", align 1
@.str.312 = private unnamed_addr constant [16 x i8] c"self_terminated\00", align 1
@.str.313 = private unnamed_addr constant [14 x i8] c"update_period\00", align 1
@.str.314 = private unnamed_addr constant [19 x i8] c"show_visualization\00", align 1
@.str.315 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.316 = private unnamed_addr constant [11 x i8] c"use_axis_x\00", align 1
@.str.317 = private unnamed_addr constant [14 x i8] c"sensitivity_x\00", align 1
@.str.318 = private unnamed_addr constant [12 x i8] c"threshold_x\00", align 1
@.str.319 = private unnamed_addr constant [6 x i8] c"min_x\00", align 1
@.str.320 = private unnamed_addr constant [6 x i8] c"max_x\00", align 1
@.str.321 = private unnamed_addr constant [14 x i8] c"object_axis_x\00", align 1
@.str.322 = private unnamed_addr constant [11 x i8] c"use_axis_y\00", align 1
@.str.323 = private unnamed_addr constant [14 x i8] c"sensitivity_y\00", align 1
@.str.324 = private unnamed_addr constant [12 x i8] c"threshold_y\00", align 1
@.str.325 = private unnamed_addr constant [6 x i8] c"min_y\00", align 1
@.str.326 = private unnamed_addr constant [6 x i8] c"max_y\00", align 1
@.str.327 = private unnamed_addr constant [14 x i8] c"object_axis_y\00", align 1
@.str.328 = private unnamed_addr constant [8 x i8] c"local_x\00", align 1
@.str.329 = private unnamed_addr constant [8 x i8] c"reset_x\00", align 1
@.str.330 = private unnamed_addr constant [8 x i8] c"local_y\00", align 1
@.str.331 = private unnamed_addr constant [8 x i8] c"reset_y\00", align 1
@reltable.logic_buttons = private unnamed_addr constant [8 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.64 to i64), i64 ptrtoint (ptr @reltable.logic_buttons to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.65 to i64), i64 ptrtoint (ptr @reltable.logic_buttons to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.70 to i64), i64 ptrtoint (ptr @reltable.logic_buttons to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.71 to i64), i64 ptrtoint (ptr @reltable.logic_buttons to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.66 to i64), i64 ptrtoint (ptr @reltable.logic_buttons to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.67 to i64), i64 ptrtoint (ptr @reltable.logic_buttons to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.68 to i64), i64 ptrtoint (ptr @reltable.logic_buttons to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.69 to i64), i64 ptrtoint (ptr @reltable.logic_buttons to i64)) to i32)], align 4
@reltable.logic_buttons.334 = private unnamed_addr constant [15 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.83 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.334 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.72 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.334 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.84 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.334 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.85 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.334 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.86 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.334 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.90 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.334 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.91 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.334 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.92 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.334 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.93 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.334 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.94 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.334 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.95 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.334 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.96 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.334 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.88 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.334 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.89 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.334 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.87 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.334 to i64)) to i32)], align 4
@reltable.logic_buttons.335 = private unnamed_addr constant [26 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.160 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.161 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.162 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.163 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.164 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.165 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.86 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.72 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.72 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.167 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.166 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.168 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.169 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.93 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.95 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.159 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.72 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.170 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.171 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.172 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.173 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.158 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.30 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.87 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.174 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.90 to i64), i64 ptrtoint (ptr @reltable.logic_buttons.335 to i64)) to i32)], align 4

; Function Attrs: nounwind uwtable
define dso_local void @make_unique_prop_names(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  %4 = call fastcc ptr @get_selected_and_linked_obs(ptr noundef %0, ptr noundef nonnull %3, i16 noundef signext 219)
  %5 = load i16, ptr %3, align 2, !tbaa !34
  %6 = icmp sgt i16 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = zext nneg i16 %5 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %30, %9 ]
  %11 = phi i16 [ 0, %7 ], [ %29, %9 ]
  %12 = getelementptr inbounds ptr, ptr %4, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 91
  %15 = tail call i32 @BLI_countlist(ptr noundef nonnull %14) #9
  %16 = trunc i32 %15 to i16
  %17 = add i16 %11, %16
  %18 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 92
  %19 = tail call i32 @BLI_countlist(ptr noundef nonnull %18) #9
  %20 = trunc i32 %19 to i16
  %21 = add i16 %17, %20
  %22 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 93
  %23 = tail call i32 @BLI_countlist(ptr noundef nonnull %22) #9
  %24 = trunc i32 %23 to i16
  %25 = add i16 %21, %24
  %26 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 94
  %27 = tail call i32 @BLI_countlist(ptr noundef nonnull %26) #9
  %28 = trunc i32 %27 to i16
  %29 = add i16 %25, %28
  %30 = add nuw nsw i64 %10, 1
  %31 = icmp eq i64 %30, %8
  br i1 %31, label %32, label %9, !llvm.loop !40

32:                                               ; preds = %9, %2
  %33 = phi i16 [ 0, %2 ], [ %29, %9 ]
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = icmp eq ptr %4, null
  br i1 %36, label %129, label %37

37:                                               ; preds = %35
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %38(ptr noundef nonnull %4) #9
  br label %129

39:                                               ; preds = %32
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %41 = sext i16 %33 to i64
  %42 = shl nsw i64 %41, 3
  %43 = tail call ptr %40(i64 noundef %42, ptr noundef nonnull @.str) #9
  %44 = icmp sgt i16 %5, 0
  br i1 %44, label %45, label %110

45:                                               ; preds = %39
  %46 = zext nneg i16 %5 to i64
  br label %47

47:                                               ; preds = %45, %106
  %48 = phi i64 [ 0, %45 ], [ %108, %106 ]
  %49 = phi i16 [ 0, %45 ], [ %107, %106 ]
  %50 = getelementptr inbounds ptr, ptr %4, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !38
  %52 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 91
  %53 = load ptr, ptr %52, align 8, !tbaa !38
  %54 = icmp eq ptr %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %47, %55
  %56 = phi ptr [ %62, %55 ], [ %53, %47 ]
  %57 = phi i16 [ %59, %55 ], [ %49, %47 ]
  %58 = getelementptr inbounds %struct.bProperty, ptr %56, i64 0, i32 2
  %59 = add i16 %57, 1
  %60 = sext i16 %57 to i64
  %61 = getelementptr inbounds ptr, ptr %43, i64 %60
  store ptr %58, ptr %61, align 8, !tbaa !38
  %62 = load ptr, ptr %56, align 8, !tbaa !38
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %55, !llvm.loop !43

64:                                               ; preds = %55, %47
  %65 = phi i16 [ %49, %47 ], [ %59, %55 ]
  %66 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 92
  %67 = load ptr, ptr %66, align 8, !tbaa !38
  %68 = icmp eq ptr %67, null
  br i1 %68, label %78, label %69

69:                                               ; preds = %64, %69
  %70 = phi ptr [ %76, %69 ], [ %67, %64 ]
  %71 = phi i16 [ %73, %69 ], [ %65, %64 ]
  %72 = getelementptr inbounds %struct.bSensor, ptr %70, i64 0, i32 10
  %73 = add i16 %71, 1
  %74 = sext i16 %71 to i64
  %75 = getelementptr inbounds ptr, ptr %43, i64 %74
  store ptr %72, ptr %75, align 8, !tbaa !38
  %76 = load ptr, ptr %70, align 8, !tbaa !38
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %69, !llvm.loop !44

78:                                               ; preds = %69, %64
  %79 = phi i16 [ %65, %64 ], [ %73, %69 ]
  %80 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 93
  %81 = load ptr, ptr %80, align 8, !tbaa !38
  %82 = icmp eq ptr %81, null
  br i1 %82, label %92, label %83

83:                                               ; preds = %78, %83
  %84 = phi ptr [ %90, %83 ], [ %81, %78 ]
  %85 = phi i16 [ %87, %83 ], [ %79, %78 ]
  %86 = getelementptr inbounds %struct.bController, ptr %84, i64 0, i32 11
  %87 = add i16 %85, 1
  %88 = sext i16 %85 to i64
  %89 = getelementptr inbounds ptr, ptr %43, i64 %88
  store ptr %86, ptr %89, align 8, !tbaa !38
  %90 = load ptr, ptr %84, align 8, !tbaa !38
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %83, !llvm.loop !45

92:                                               ; preds = %83, %78
  %93 = phi i16 [ %79, %78 ], [ %87, %83 ]
  %94 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 94
  %95 = load ptr, ptr %94, align 8, !tbaa !38
  %96 = icmp eq ptr %95, null
  br i1 %96, label %106, label %97

97:                                               ; preds = %92, %97
  %98 = phi ptr [ %104, %97 ], [ %95, %92 ]
  %99 = phi i16 [ %101, %97 ], [ %93, %92 ]
  %100 = getelementptr inbounds %struct.bActuator, ptr %98, i64 0, i32 7
  %101 = add i16 %99, 1
  %102 = sext i16 %99 to i64
  %103 = getelementptr inbounds ptr, ptr %43, i64 %102
  store ptr %100, ptr %103, align 8, !tbaa !38
  %104 = load ptr, ptr %98, align 8, !tbaa !38
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %97, !llvm.loop !46

106:                                              ; preds = %97, %92
  %107 = phi i16 [ %93, %92 ], [ %101, %97 ]
  %108 = add nuw nsw i64 %48, 1
  %109 = icmp eq i64 %108, %46
  br i1 %109, label %110, label %47, !llvm.loop !47

110:                                              ; preds = %106, %39
  tail call void @qsort(ptr noundef %43, i64 noundef %41, i64 noundef 8, ptr noundef nonnull @vergname) #9
  %111 = icmp sgt i16 %33, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %110
  %113 = zext nneg i16 %33 to i64
  br label %114

114:                                              ; preds = %112, %123
  %115 = phi i64 [ 0, %112 ], [ %124, %123 ]
  %116 = getelementptr inbounds ptr, ptr %43, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !38
  %118 = icmp eq ptr %117, %1
  br i1 %118, label %123, label %119

119:                                              ; preds = %114
  %120 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) %1) #10
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  tail call void @BLI_newname(ptr noundef %1, i32 noundef 1) #9
  br label %123

123:                                              ; preds = %114, %119, %122
  %124 = add nuw nsw i64 %115, 1
  %125 = icmp eq i64 %124, %113
  br i1 %125, label %126, label %114, !llvm.loop !48

126:                                              ; preds = %123, %110
  %127 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %127(ptr noundef %4) #9
  %128 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %128(ptr noundef %43) #9
  br label %129

129:                                              ; preds = %35, %37, %126
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_selected_and_linked_obs(ptr noundef %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  store i16 0, ptr %1, align 2, !tbaa !34
  %7 = icmp eq ptr %5, null
  br i1 %7, label %362, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %15

12:                                               ; preds = %30, %26
  %13 = load ptr, ptr %16, align 8, !tbaa !38
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15, !llvm.loop !49

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %13, %12 ], [ %10, %8 ]
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 62
  store i8 0, ptr %17, align 2, !tbaa !50
  %18 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 93
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %15, %21
  %22 = phi ptr [ %24, %21 ], [ %19, %15 ]
  %23 = getelementptr inbounds %struct.bController, ptr %22, i64 0, i32 2
  store ptr %16, ptr %23, align 8, !tbaa !58
  %24 = load ptr, ptr %22, align 8, !tbaa !38
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %21, !llvm.loop !60

26:                                               ; preds = %21, %15
  %27 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 94
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  %29 = icmp eq ptr %28, null
  br i1 %29, label %12, label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %33, %30 ], [ %28, %26 ]
  %32 = getelementptr inbounds %struct.bActuator, ptr %31, i64 0, i32 2
  store ptr %16, ptr %32, align 8, !tbaa !61
  %33 = load ptr, ptr %31, align 8, !tbaa !38
  %34 = icmp eq ptr %33, null
  br i1 %34, label %12, label %30, !llvm.loop !63

35:                                               ; preds = %12, %8
  %36 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 12
  %37 = load i32, ptr %36, align 8, !tbaa !64
  %38 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !38
  %40 = icmp eq ptr %39, null
  br i1 %40, label %84, label %41

41:                                               ; preds = %35
  %42 = zext i16 %2 to i32
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  %45 = and i32 %42, 8
  %46 = icmp eq i32 %45, 0
  %47 = and i32 %42, 64
  %48 = icmp eq i32 %47, 0
  br label %49

49:                                               ; preds = %41, %81
  %50 = phi ptr [ %39, %41 ], [ %82, %81 ]
  %51 = getelementptr inbounds %struct.Base, ptr %50, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !83
  %53 = and i32 %52, %37
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %81, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.Base, ptr %50, i64 0, i32 4
  %57 = load i32, ptr %56, align 8, !tbaa !85
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %81, label %60

60:                                               ; preds = %55
  br i1 %44, label %67, label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.Base, ptr %50, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !86
  %64 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 62
  %65 = load i8, ptr %64, align 2, !tbaa !50
  %66 = or i8 %65, 1
  store i8 %66, ptr %64, align 2, !tbaa !50
  br label %67

67:                                               ; preds = %61, %60
  br i1 %46, label %74, label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds %struct.Base, ptr %50, i64 0, i32 7
  %70 = load ptr, ptr %69, align 8, !tbaa !86
  %71 = getelementptr inbounds %struct.Object, ptr %70, i64 0, i32 62
  %72 = load i8, ptr %71, align 2, !tbaa !50
  %73 = or i8 %72, 2
  store i8 %73, ptr %71, align 2, !tbaa !50
  br label %74

74:                                               ; preds = %68, %67
  br i1 %48, label %81, label %75

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.Base, ptr %50, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !86
  %78 = getelementptr inbounds %struct.Object, ptr %77, i64 0, i32 62
  %79 = load i8, ptr %78, align 2, !tbaa !50
  %80 = or i8 %79, 4
  store i8 %80, ptr %78, align 2, !tbaa !50
  br label %81

81:                                               ; preds = %55, %75, %74, %49
  %82 = load ptr, ptr %50, align 8, !tbaa !38
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %49, !llvm.loop !87

84:                                               ; preds = %81, %35
  %85 = icmp eq ptr %6, null
  br i1 %85, label %108, label %86

86:                                               ; preds = %84
  %87 = zext i16 %2 to i32
  %88 = and i32 %87, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 62
  %92 = load i8, ptr %91, align 2, !tbaa !50
  %93 = or i8 %92, 1
  store i8 %93, ptr %91, align 2, !tbaa !50
  br label %94

94:                                               ; preds = %90, %86
  %95 = and i32 %87, 16
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 62
  %99 = load i8, ptr %98, align 2, !tbaa !50
  %100 = or i8 %99, 2
  store i8 %100, ptr %98, align 2, !tbaa !50
  br label %101

101:                                              ; preds = %97, %94
  %102 = and i32 %87, 128
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 62
  %106 = load i8, ptr %105, align 2, !tbaa !50
  %107 = or i8 %106, 4
  store i8 %107, ptr %105, align 2, !tbaa !50
  br label %108

108:                                              ; preds = %101, %104, %84
  %109 = zext i16 %2 to i32
  %110 = and i32 %109, 1828
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %312, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %9, align 8, !tbaa !38
  %114 = icmp eq ptr %113, null
  %115 = and i32 %109, 516
  %116 = icmp eq i32 %115, 0
  %117 = and i32 %109, 32
  %118 = icmp eq i32 %117, 0
  %119 = and i32 %109, 1280
  %120 = icmp eq i32 %119, 0
  br label %124

121:                                              ; preds = %308, %124
  %122 = phi i32 [ 0, %124 ], [ %309, %308 ]
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %312, label %124, !llvm.loop !88

124:                                              ; preds = %112, %121
  br i1 %114, label %121, label %125

125:                                              ; preds = %124, %308
  %126 = phi ptr [ %310, %308 ], [ %113, %124 ]
  %127 = phi i32 [ %309, %308 ], [ 0, %124 ]
  br i1 %116, label %171, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 62
  %130 = load i8, ptr %129, align 2, !tbaa !50
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %171

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 92
  br label %135

135:                                              ; preds = %168, %133
  %136 = phi ptr [ %134, %133 ], [ %138, %168 ]
  %137 = phi i32 [ %127, %133 ], [ 0, %168 ]
  %138 = load ptr, ptr %136, align 8, !tbaa !38
  %139 = icmp eq ptr %138, null
  br i1 %139, label %171, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.bSensor, ptr %138, i64 0, i32 7
  %142 = load i16, ptr %141, align 2, !tbaa !89
  %143 = icmp sgt i16 %142, 0
  br i1 %143, label %144, label %168

144:                                              ; preds = %140
  %145 = zext nneg i16 %142 to i64
  %146 = getelementptr inbounds %struct.bSensor, ptr %138, i64 0, i32 12
  %147 = load ptr, ptr %146, align 8, !tbaa !91
  br label %148

148:                                              ; preds = %144, %165
  %149 = phi i64 [ 0, %144 ], [ %166, %165 ]
  %150 = getelementptr inbounds ptr, ptr %147, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !38
  %152 = icmp eq ptr %151, null
  br i1 %152, label %165, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.bController, ptr %151, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !58
  %156 = icmp eq ptr %155, null
  br i1 %156, label %165, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.Object, ptr %155, i64 0, i32 62
  %159 = load i8, ptr %158, align 2, !tbaa !50
  %160 = and i8 %159, 2
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = load i8, ptr %129, align 2, !tbaa !50
  %164 = or i8 %163, 1
  store i8 %164, ptr %129, align 2, !tbaa !50
  br label %168

165:                                              ; preds = %148, %157, %153
  %166 = add nuw nsw i64 %149, 1
  %167 = icmp eq i64 %166, %145
  br i1 %167, label %168, label %148, !llvm.loop !92

168:                                              ; preds = %165, %140, %162
  %169 = phi i32 [ 1, %162 ], [ %137, %140 ], [ %137, %165 ]
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %135, label %171, !llvm.loop !93

171:                                              ; preds = %135, %168, %128, %125
  %172 = phi i32 [ %127, %128 ], [ %127, %125 ], [ 1, %168 ], [ %137, %135 ]
  br i1 %118, label %216, label %173

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 62
  %175 = load i8, ptr %174, align 2, !tbaa !50
  %176 = and i8 %175, 2
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %216

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 93
  br label %180

180:                                              ; preds = %213, %178
  %181 = phi ptr [ %179, %178 ], [ %183, %213 ]
  %182 = phi i32 [ %172, %178 ], [ 0, %213 ]
  %183 = load ptr, ptr %181, align 8, !tbaa !38
  %184 = icmp eq ptr %183, null
  br i1 %184, label %216, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.bController, ptr %183, i64 0, i32 6
  %187 = load i16, ptr %186, align 2, !tbaa !94
  %188 = icmp sgt i16 %187, 0
  br i1 %188, label %189, label %213

189:                                              ; preds = %185
  %190 = zext nneg i16 %187 to i64
  %191 = getelementptr inbounds %struct.bController, ptr %183, i64 0, i32 13
  %192 = load ptr, ptr %191, align 8, !tbaa !95
  br label %193

193:                                              ; preds = %189, %210
  %194 = phi i64 [ 0, %189 ], [ %211, %210 ]
  %195 = getelementptr inbounds ptr, ptr %192, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !38
  %197 = icmp eq ptr %196, null
  br i1 %197, label %210, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.bActuator, ptr %196, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !61
  %201 = icmp eq ptr %200, null
  br i1 %201, label %210, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.Object, ptr %200, i64 0, i32 62
  %204 = load i8, ptr %203, align 2, !tbaa !50
  %205 = and i8 %204, 4
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %202
  %208 = load i8, ptr %174, align 2, !tbaa !50
  %209 = or i8 %208, 2
  store i8 %209, ptr %174, align 2, !tbaa !50
  br label %213

210:                                              ; preds = %193, %202, %198
  %211 = add nuw nsw i64 %194, 1
  %212 = icmp eq i64 %211, %190
  br i1 %212, label %213, label %193, !llvm.loop !96

213:                                              ; preds = %210, %185, %207
  %214 = phi i32 [ 1, %207 ], [ %182, %185 ], [ %182, %210 ]
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %180, label %216, !llvm.loop !97

216:                                              ; preds = %180, %213, %173, %171
  %217 = phi i32 [ %172, %173 ], [ %172, %171 ], [ 1, %213 ], [ %182, %180 ]
  br i1 %118, label %262, label %218

218:                                              ; preds = %216
  %219 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 62
  %220 = load i8, ptr %219, align 2, !tbaa !50
  %221 = and i8 %220, 1
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %262, label %223

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 92
  %225 = load ptr, ptr %224, align 8, !tbaa !38
  %226 = icmp eq ptr %225, null
  br i1 %226, label %262, label %231

227:                                              ; preds = %258, %231
  %228 = phi i32 [ %233, %231 ], [ %259, %258 ]
  %229 = load ptr, ptr %232, align 8, !tbaa !38
  %230 = icmp eq ptr %229, null
  br i1 %230, label %262, label %231, !llvm.loop !98

231:                                              ; preds = %223, %227
  %232 = phi ptr [ %229, %227 ], [ %225, %223 ]
  %233 = phi i32 [ %228, %227 ], [ %217, %223 ]
  %234 = getelementptr inbounds %struct.bSensor, ptr %232, i64 0, i32 7
  %235 = load i16, ptr %234, align 2, !tbaa !89
  %236 = icmp sgt i16 %235, 0
  br i1 %236, label %237, label %227

237:                                              ; preds = %231
  %238 = zext nneg i16 %235 to i64
  %239 = getelementptr inbounds %struct.bSensor, ptr %232, i64 0, i32 12
  %240 = load ptr, ptr %239, align 8, !tbaa !91
  br label %241

241:                                              ; preds = %237, %258
  %242 = phi i64 [ 0, %237 ], [ %260, %258 ]
  %243 = phi i32 [ %233, %237 ], [ %259, %258 ]
  %244 = getelementptr inbounds ptr, ptr %240, i64 %242
  %245 = load ptr, ptr %244, align 8, !tbaa !38
  %246 = icmp eq ptr %245, null
  br i1 %246, label %258, label %247

247:                                              ; preds = %241
  %248 = getelementptr inbounds %struct.bController, ptr %245, i64 0, i32 2
  %249 = load ptr, ptr %248, align 8, !tbaa !58
  %250 = icmp eq ptr %249, null
  br i1 %250, label %258, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.Object, ptr %249, i64 0, i32 62
  %253 = load i8, ptr %252, align 2, !tbaa !50
  %254 = and i8 %253, 2
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %251
  %257 = or disjoint i8 %253, 2
  store i8 %257, ptr %252, align 2, !tbaa !50
  br label %258

258:                                              ; preds = %241, %256, %251, %247
  %259 = phi i32 [ 1, %256 ], [ %243, %251 ], [ %243, %247 ], [ %243, %241 ]
  %260 = add nuw nsw i64 %242, 1
  %261 = icmp eq i64 %260, %238
  br i1 %261, label %227, label %241, !llvm.loop !99

262:                                              ; preds = %227, %223, %218, %216
  %263 = phi i32 [ %217, %218 ], [ %217, %216 ], [ %217, %223 ], [ %228, %227 ]
  br i1 %120, label %308, label %264

264:                                              ; preds = %262
  %265 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 62
  %266 = load i8, ptr %265, align 2, !tbaa !50
  %267 = and i8 %266, 2
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %308, label %269

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 93
  %271 = load ptr, ptr %270, align 8, !tbaa !38
  %272 = icmp eq ptr %271, null
  br i1 %272, label %308, label %277

273:                                              ; preds = %304, %277
  %274 = phi i32 [ %279, %277 ], [ %305, %304 ]
  %275 = load ptr, ptr %278, align 8, !tbaa !38
  %276 = icmp eq ptr %275, null
  br i1 %276, label %308, label %277, !llvm.loop !100

277:                                              ; preds = %269, %273
  %278 = phi ptr [ %275, %273 ], [ %271, %269 ]
  %279 = phi i32 [ %274, %273 ], [ %263, %269 ]
  %280 = getelementptr inbounds %struct.bController, ptr %278, i64 0, i32 6
  %281 = load i16, ptr %280, align 2, !tbaa !94
  %282 = icmp sgt i16 %281, 0
  br i1 %282, label %283, label %273

283:                                              ; preds = %277
  %284 = zext nneg i16 %281 to i64
  %285 = getelementptr inbounds %struct.bController, ptr %278, i64 0, i32 13
  %286 = load ptr, ptr %285, align 8, !tbaa !95
  br label %287

287:                                              ; preds = %283, %304
  %288 = phi i64 [ 0, %283 ], [ %306, %304 ]
  %289 = phi i32 [ %279, %283 ], [ %305, %304 ]
  %290 = getelementptr inbounds ptr, ptr %286, i64 %288
  %291 = load ptr, ptr %290, align 8, !tbaa !38
  %292 = icmp eq ptr %291, null
  br i1 %292, label %304, label %293

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct.bActuator, ptr %291, i64 0, i32 2
  %295 = load ptr, ptr %294, align 8, !tbaa !61
  %296 = icmp eq ptr %295, null
  br i1 %296, label %304, label %297

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.Object, ptr %295, i64 0, i32 62
  %299 = load i8, ptr %298, align 2, !tbaa !50
  %300 = and i8 %299, 4
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %297
  %303 = or disjoint i8 %299, 4
  store i8 %303, ptr %298, align 2, !tbaa !50
  br label %304

304:                                              ; preds = %287, %302, %297, %293
  %305 = phi i32 [ 1, %302 ], [ %289, %297 ], [ %289, %293 ], [ %289, %287 ]
  %306 = add nuw nsw i64 %288, 1
  %307 = icmp eq i64 %306, %284
  br i1 %307, label %273, label %287, !llvm.loop !101

308:                                              ; preds = %273, %269, %264, %262
  %309 = phi i32 [ %263, %264 ], [ %263, %262 ], [ %263, %269 ], [ %274, %273 ]
  %310 = load ptr, ptr %126, align 8, !tbaa !38
  %311 = icmp eq ptr %310, null
  br i1 %311, label %121, label %125, !llvm.loop !102

312:                                              ; preds = %121, %108
  %313 = load ptr, ptr %9, align 8, !tbaa !38
  %314 = icmp eq ptr %313, null
  br i1 %314, label %326, label %315

315:                                              ; preds = %312, %323
  %316 = phi ptr [ %324, %323 ], [ %313, %312 ]
  %317 = getelementptr inbounds %struct.Object, ptr %316, i64 0, i32 62
  %318 = load i8, ptr %317, align 2, !tbaa !50
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %315
  %321 = load i16, ptr %1, align 2, !tbaa !34
  %322 = add i16 %321, 1
  store i16 %322, ptr %1, align 2, !tbaa !34
  br label %323

323:                                              ; preds = %320, %315
  %324 = load ptr, ptr %316, align 8, !tbaa !38
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %315, !llvm.loop !103

326:                                              ; preds = %323, %312
  %327 = load i16, ptr %1, align 2, !tbaa !34
  %328 = icmp eq i16 %327, 0
  br i1 %328, label %362, label %329

329:                                              ; preds = %326
  %330 = icmp sgt i16 %327, 24
  br i1 %330, label %331, label %332

331:                                              ; preds = %329
  store i16 24, ptr %1, align 2, !tbaa !34
  br label %332

332:                                              ; preds = %331, %329
  %333 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %334 = load i16, ptr %1, align 2, !tbaa !34
  %335 = sext i16 %334 to i64
  %336 = shl nsw i64 %335, 3
  %337 = tail call ptr %333(i64 noundef %336, ptr noundef nonnull @.str.44) #9
  %338 = load ptr, ptr %9, align 8, !tbaa !104
  br i1 %85, label %340, label %339

339:                                              ; preds = %332
  store ptr %6, ptr %337, align 8, !tbaa !38
  br label %340

340:                                              ; preds = %339, %332
  %341 = phi i32 [ 1, %339 ], [ 0, %332 ]
  %342 = icmp eq ptr %338, null
  br i1 %342, label %361, label %343

343:                                              ; preds = %340, %358
  %344 = phi i32 [ %356, %358 ], [ %341, %340 ]
  %345 = phi ptr [ %359, %358 ], [ %338, %340 ]
  %346 = getelementptr inbounds %struct.Object, ptr %345, i64 0, i32 62
  %347 = load i8, ptr %346, align 2, !tbaa !50
  %348 = icmp eq i8 %347, 0
  %349 = icmp eq ptr %345, %6
  %350 = select i1 %348, i1 true, i1 %349
  br i1 %350, label %355, label %351

351:                                              ; preds = %343
  %352 = sext i32 %344 to i64
  %353 = getelementptr inbounds ptr, ptr %337, i64 %352
  store ptr %345, ptr %353, align 8, !tbaa !38
  %354 = add nsw i32 %344, 1
  br label %355

355:                                              ; preds = %351, %343
  %356 = phi i32 [ %354, %351 ], [ %344, %343 ]
  %357 = icmp sgt i32 %356, 23
  br i1 %357, label %361, label %358

358:                                              ; preds = %355
  %359 = load ptr, ptr %345, align 8, !tbaa !106
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %343, !llvm.loop !107

361:                                              ; preds = %358, %355, %340
  tail call void @clear_sca_new_poins() #9
  br label %362

362:                                              ; preds = %326, %3, %361
  %363 = phi ptr [ %337, %361 ], [ null, %3 ], [ null, %326 ]
  ret ptr %363
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @vergname(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = load ptr, ptr %1, align 8, !tbaa !38
  %5 = tail call i32 @BLI_natstrcmp(ptr noundef %3, ptr noundef %4) #9
  ret i32 %5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare void @BLI_newname(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @logic_buttons(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca [3 x i8], align 1
  %12 = alloca %struct.PointerRNA, align 8
  %13 = alloca %struct.PointerRNA, align 8
  %14 = alloca %struct.PointerRNA, align 8
  %15 = alloca [32 x i8], align 16
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca %struct.PointerRNA, align 8
  %19 = alloca %struct.PointerRNA, align 8
  %20 = alloca %struct.PointerRNA, align 8
  %21 = tail call ptr @CTX_wm_space_logic(ptr noundef %0) #9
  %22 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %723, label %24

24:                                               ; preds = %2
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_SpaceLogicEditor, ptr noundef %21, ptr noundef nonnull %12) #9
  %25 = getelementptr inbounds %struct.SpaceLogic, ptr %21, i64 0, i32 7
  %26 = load i16, ptr %25, align 2, !tbaa !108
  %27 = call fastcc ptr @get_selected_and_linked_obs(ptr noundef %0, ptr noundef nonnull %16, i16 noundef signext %26)
  %28 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %15, i64 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %1) #9
  %29 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %15, i16 noundef signext 0) #9
  call void @uiBlockSetHandleFunc(ptr noundef %29, ptr noundef nonnull @do_logic_buts, ptr noundef null) #9
  %30 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %31 = sdiv i16 %30, 2
  %32 = sext i16 %31 to i32
  call void @uiBoundsBlock(ptr noundef %29, i32 noundef %32) #9
  %33 = load i16, ptr %16, align 2, !tbaa !34
  %34 = icmp sgt i16 %33, 0
  br i1 %34, label %35, label %108

35:                                               ; preds = %24
  %36 = zext nneg i16 %33 to i64
  br label %37

37:                                               ; preds = %35, %105
  %38 = phi i64 [ 0, %35 ], [ %106, %105 ]
  %39 = getelementptr inbounds ptr, ptr %27, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !38
  %41 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 94
  %42 = load ptr, ptr %41, align 8, !tbaa !38
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %37, %44
  %45 = phi ptr [ %49, %44 ], [ %42, %37 ]
  %46 = getelementptr inbounds %struct.bActuator, ptr %45, i64 0, i32 4
  %47 = load i16, ptr %46, align 2, !tbaa !114
  %48 = and i16 %47, -25
  store i16 %48, ptr %46, align 2, !tbaa !114
  %49 = load ptr, ptr %45, align 8, !tbaa !38
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %44, !llvm.loop !115

51:                                               ; preds = %44, %37
  %52 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 92
  %53 = load ptr, ptr %52, align 8, !tbaa !38
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %51, %55
  %56 = phi ptr [ %60, %55 ], [ %53, %51 ]
  %57 = getelementptr inbounds %struct.bSensor, ptr %56, i64 0, i32 4
  %58 = load i16, ptr %57, align 4, !tbaa !116
  %59 = and i16 %58, -17
  store i16 %59, ptr %57, align 4, !tbaa !116
  %60 = load ptr, ptr %56, align 8, !tbaa !38
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %55, !llvm.loop !117

62:                                               ; preds = %55, %51
  %63 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 93
  %64 = load ptr, ptr %63, align 8, !tbaa !38
  %65 = icmp eq ptr %64, null
  br i1 %65, label %105, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 61
  %68 = load i16, ptr %67, align 4, !tbaa !118
  %69 = and i16 %68, 4096
  %70 = icmp eq i16 %69, 0
  %71 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 123
  br label %75

72:                                               ; preds = %102, %84
  %73 = load ptr, ptr %76, align 8, !tbaa !38
  %74 = icmp eq ptr %73, null
  br i1 %74, label %105, label %75, !llvm.loop !119

75:                                               ; preds = %66, %72
  %76 = phi ptr [ %64, %66 ], [ %73, %72 ]
  br i1 %70, label %77, label %83

77:                                               ; preds = %75
  %78 = load i32, ptr %71, align 8, !tbaa !120
  %79 = getelementptr inbounds %struct.bController, ptr %76, i64 0, i32 17
  %80 = load i32, ptr %79, align 4, !tbaa !121
  %81 = and i32 %80, %78
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77, %75
  br label %84

84:                                               ; preds = %83, %77
  %85 = phi i16 [ 24, %83 ], [ 8, %77 ]
  %86 = getelementptr inbounds %struct.bController, ptr %76, i64 0, i32 6
  %87 = load i16, ptr %86, align 2, !tbaa !94
  %88 = icmp sgt i16 %87, 0
  br i1 %88, label %89, label %72

89:                                               ; preds = %84
  %90 = zext nneg i16 %87 to i64
  %91 = getelementptr inbounds %struct.bController, ptr %76, i64 0, i32 13
  %92 = load ptr, ptr %91, align 8, !tbaa !95
  br label %93

93:                                               ; preds = %89, %102
  %94 = phi i64 [ 0, %89 ], [ %103, %102 ]
  %95 = getelementptr inbounds ptr, ptr %92, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !38
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.bActuator, ptr %96, i64 0, i32 4
  %100 = load i16, ptr %99, align 2, !tbaa !114
  %101 = or i16 %100, %85
  store i16 %101, ptr %99, align 2, !tbaa !114
  br label %102

102:                                              ; preds = %93, %98
  %103 = add nuw nsw i64 %94, 1
  %104 = icmp eq i64 %103, %90
  br i1 %104, label %72, label %93, !llvm.loop !122

105:                                              ; preds = %72, %62
  %106 = add nuw nsw i64 %38, 1
  %107 = icmp eq i64 %106, %36
  br i1 %107, label %108, label %37, !llvm.loop !123

108:                                              ; preds = %105, %24
  %109 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %110 = sext i16 %109 to i32
  %111 = mul nsw i32 %110, 21
  %112 = sdiv i32 %110, -2
  store i32 %112, ptr %17, align 4, !tbaa !124
  %113 = mul nsw i32 %110, 15
  %114 = call ptr @UI_GetStyle() #9
  %115 = call ptr @uiBlockLayout(ptr noundef %29, i32 noundef 1, i32 noundef 0, i32 noundef %111, i32 noundef %112, i32 noundef %113, i32 noundef 20, i32 noundef 0, ptr noundef %114) #9
  %116 = call ptr @uiLayoutRow(ptr noundef %115, i32 noundef 1) #9
  %117 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %118 = sdiv i16 %117, 2
  %119 = sext i16 %118 to i32
  %120 = sub nsw i32 %111, %119
  %121 = load i32, ptr %17, align 4, !tbaa !124
  %122 = trunc i32 %113 to i16
  %123 = call ptr @uiDefBlockBut(ptr noundef %29, ptr noundef nonnull @controller_menu, ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef %120, i32 noundef %121, i16 noundef signext %122, i16 noundef signext %117, ptr noundef nonnull @.str.3) #9
  call void @uiItemR(ptr noundef %116, ptr noundef nonnull %12, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %116, ptr noundef nonnull %12, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %116, ptr noundef nonnull %12, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef 0) #9
  %124 = load i16, ptr %16, align 2, !tbaa !34
  %125 = icmp sgt i16 %124, 0
  br i1 %125, label %126, label %280

126:                                              ; preds = %108
  %127 = sitofp i32 %113 to float
  %128 = getelementptr inbounds %struct.PointerRNA, ptr %18, i64 0, i32 2
  %129 = mul i32 %110, 2359296
  %130 = add i32 %129, -2883584
  %131 = ashr exact i32 %130, 16
  br label %132

132:                                              ; preds = %126, %275
  %133 = phi i64 [ 0, %126 ], [ %276, %275 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #9
  %134 = getelementptr inbounds ptr, ptr %27, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !38
  %136 = getelementptr inbounds %struct.Object, ptr %135, i64 0, i32 62
  %137 = load i8, ptr %136, align 2, !tbaa !50
  %138 = and i8 %137, 2
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %275, label %140

140:                                              ; preds = %132
  call void @RNA_pointer_create(ptr noundef %135, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %135, ptr noundef nonnull %13) #9
  %141 = call ptr @uiLayoutSplit(ptr noundef %115, float noundef 0x3FA99999A0000000, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %141, ptr noundef nonnull %13, ptr noundef nonnull @.str.10, i32 noundef 128, ptr noundef nonnull @.str.3, i32 noundef 11) #9
  %142 = call ptr @uiLayoutRow(ptr noundef %141, i32 noundef 1) #9
  %143 = getelementptr inbounds %struct.ID, ptr %135, i64 0, i32 4, i64 2
  %144 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %145 = sdiv i16 %144, -2
  %146 = zext i16 %145 to i32
  %147 = add nsw i32 %111, %146
  %148 = shl i32 %147, 16
  %149 = ashr exact i32 %148, 16
  %150 = load i32, ptr %17, align 4, !tbaa !124
  %151 = sitofp i16 %144 to float
  %152 = call float @llvm.fmuladd.f32(float %151, float -1.500000e+00, float %127)
  %153 = fptosi float %152 to i16
  %154 = getelementptr inbounds %struct.Object, ptr %135, i64 0, i32 61
  %155 = call ptr @uiDefButBitS(ptr noundef %29, i32 noundef 1536, i32 noundef 2048, i32 noundef 1, ptr noundef nonnull %143, i32 noundef %149, i32 noundef %150, i16 noundef signext %153, i16 noundef signext %144, ptr noundef nonnull %154, float noundef 0.000000e+00, float noundef 3.100000e+01, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.11) #9
  call void @RNA_pointer_create(ptr noundef %135, ptr noundef nonnull @RNA_Object, ptr noundef %135, ptr noundef nonnull %14) #9
  call void @uiLayoutSetContextPointer(ptr noundef %142, ptr noundef nonnull @.str.12, ptr noundef nonnull %14) #9
  call void @uiItemMenuEnumO(ptr noundef %142, ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 0) #9
  %156 = call i32 @RNA_boolean_get(ptr noundef nonnull %13, ptr noundef nonnull @.str.10) #9
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %170, label %158

158:                                              ; preds = %140
  %159 = call ptr @uiLayoutBox(ptr noundef %115) #9
  %160 = call ptr @uiLayoutSplit(ptr noundef %159, float noundef 0x3FC99999A0000000, i32 noundef 0) #9
  %161 = call ptr @uiLayoutColumn(ptr noundef %160, i32 noundef 0) #9
  call void @uiItemL(ptr noundef %161, ptr noundef nonnull @.str.16, i32 noundef 0) #9
  call void @uiItemL(ptr noundef %161, ptr noundef nonnull @.str.17, i32 noundef 0) #9
  %162 = call ptr @uiLayoutSplit(ptr noundef %160, float noundef 0x3FEB333340000000, i32 noundef 0) #9
  %163 = call ptr @uiLayoutColumn(ptr noundef %162, i32 noundef 0) #9
  %164 = call ptr @uiLayoutRow(ptr noundef %163, i32 noundef 0) #9
  %165 = call i32 @RNA_boolean_get(ptr noundef nonnull %13, ptr noundef nonnull @.str.18) #9
  %166 = icmp eq i32 %165, 0
  %167 = zext i1 %166 to i8
  call void @uiLayoutSetActive(ptr noundef %164, i8 noundef zeroext %167) #9
  call void @uiTemplateGameStates(ptr noundef %164, ptr noundef nonnull %13, ptr noundef nonnull @.str.19, ptr noundef nonnull %13, ptr noundef nonnull @.str.20, i32 noundef 0) #9
  %168 = call ptr @uiLayoutRow(ptr noundef %163, i32 noundef 0) #9
  call void @uiTemplateGameStates(ptr noundef %168, ptr noundef nonnull %13, ptr noundef nonnull @.str.21, ptr noundef nonnull %13, ptr noundef nonnull @.str.20, i32 noundef 0) #9
  %169 = call ptr @uiLayoutColumn(ptr noundef %162, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %169, ptr noundef nonnull %13, ptr noundef nonnull @.str.18, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %169, ptr noundef nonnull %13, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  br label %170

170:                                              ; preds = %158, %140
  %171 = load i16, ptr %154, align 4, !tbaa !118
  %172 = and i16 %171, 2048
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %275, label %174

174:                                              ; preds = %170
  call void @uiItemS(ptr noundef %115) #9
  %175 = getelementptr inbounds %struct.Object, ptr %135, i64 0, i32 93
  %176 = load ptr, ptr %175, align 8, !tbaa !38
  %177 = icmp eq ptr %176, null
  br i1 %177, label %275, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.Object, ptr %135, i64 0, i32 123
  br label %180

180:                                              ; preds = %178, %272
  %181 = phi ptr [ %176, %178 ], [ %273, %272 ]
  call void @RNA_pointer_create(ptr noundef %135, ptr noundef nonnull @RNA_Controller, ptr noundef nonnull %181, ptr noundef nonnull %18) #9
  %182 = load i16, ptr %154, align 4, !tbaa !118
  %183 = and i16 %182, 4096
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load i32, ptr %179, align 8, !tbaa !120
  %187 = getelementptr inbounds %struct.bController, ptr %181, i64 0, i32 17
  %188 = load i32, ptr %187, align 4, !tbaa !121
  %189 = and i32 %188, %186
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %272, label %191

191:                                              ; preds = %185, %180
  %192 = call ptr @uiLayoutSplit(ptr noundef %115, float noundef 0x3FA99999A0000000, i32 noundef 0) #9
  %193 = call ptr @uiLayoutColumn(ptr noundef %192, i32 noundef 0) #9
  %194 = call i32 @RNA_boolean_get(ptr noundef nonnull %18, ptr noundef nonnull @.str.23) #9
  %195 = trunc i32 %194 to i8
  call void @uiLayoutSetActive(ptr noundef %193, i8 noundef zeroext %195) #9
  call void @uiLayoutSetAlignment(ptr noundef %193, i8 noundef zeroext 1) #9
  %196 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %197 = call ptr @uiDefIconBut(ptr noundef %29, i32 noundef 11776, i32 noundef 0, i32 noundef 50, i32 noundef 0, i32 noundef 0, i16 noundef signext %196, i16 noundef signext %196, ptr noundef nonnull %181, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #9
  %198 = call i32 @RNA_boolean_get(ptr noundef nonnull %18, ptr noundef nonnull @.str.23) #9
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %191
  call void @uiButSetFlag(ptr noundef %197, i32 noundef 67108864) #9
  br label %201

201:                                              ; preds = %200, %191
  %202 = call ptr @uiLayoutSplit(ptr noundef %192, float noundef 0x3FEE666660000000, i32 noundef 0) #9
  %203 = call ptr @uiLayoutColumn(ptr noundef %202, i32 noundef 1) #9
  call void @uiLayoutSetContextPointer(ptr noundef %203, ptr noundef nonnull @.str.24, ptr noundef nonnull %18) #9
  %204 = load i32, ptr %17, align 4, !tbaa !124
  %205 = load ptr, ptr %128, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %11) #9
  %206 = call i32 @RNA_int_get(ptr noundef nonnull %18, ptr noundef nonnull @.str.56) #9
  %207 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %11, i64 noundef 3, ptr noundef nonnull @.str.55, i32 noundef %206) #9
  %208 = call ptr @uiLayoutBox(ptr noundef %203) #9
  %209 = call ptr @uiLayoutRow(ptr noundef %208, i32 noundef 0) #9
  %210 = call ptr @uiLayoutRow(ptr noundef %209, i32 noundef 0) #9
  %211 = call i32 @RNA_boolean_get(ptr noundef nonnull %18, ptr noundef nonnull @.str.23) #9
  %212 = trunc i32 %211 to i8
  call void @uiLayoutSetActive(ptr noundef %210, i8 noundef zeroext %212) #9
  call void @uiItemR(ptr noundef %210, ptr noundef nonnull %18, ptr noundef nonnull @.str.57, i32 noundef 128, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  %213 = call i32 @RNA_boolean_get(ptr noundef nonnull %18, ptr noundef nonnull @.str.57) #9
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %201
  call void @uiItemR(ptr noundef %210, ptr noundef nonnull %18, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %210, ptr noundef nonnull %18, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  %216 = call ptr @uiLayoutGetBlock(ptr noundef %203) #9
  %217 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %218 = call ptr @uiDefBlockBut(ptr noundef %216, ptr noundef nonnull @controller_state_mask_menu, ptr noundef %205, ptr noundef nonnull %11, i32 noundef %131, i32 noundef %204, i16 noundef signext 44, i16 noundef signext %217, ptr noundef nonnull @.str.59) #9
  br label %230

219:                                              ; preds = %201
  %220 = getelementptr inbounds %struct.bController, ptr %205, i64 0, i32 3
  %221 = load i16, ptr %220, align 8, !tbaa !128
  %222 = icmp ult i16 %221, 8
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = zext nneg i16 %221 to i64
  %225 = shl i64 %224, 2
  %226 = call ptr @llvm.load.relative.i64(ptr @reltable.logic_buttons, i64 %225)
  br label %227

227:                                              ; preds = %219, %223
  %228 = phi ptr [ %226, %223 ], [ @.str.72, %219 ]
  call void @uiItemL(ptr noundef %210, ptr noundef nonnull %228, i32 noundef 0) #9
  %229 = getelementptr inbounds %struct.bController, ptr %205, i64 0, i32 11
  call void @uiItemL(ptr noundef %210, ptr noundef nonnull %229, i32 noundef 0) #9
  call void @uiItemL(ptr noundef %210, ptr noundef nonnull %11, i32 noundef 0) #9
  br label %230

230:                                              ; preds = %227, %215
  %231 = call ptr @uiLayoutRow(ptr noundef %209, i32 noundef 0) #9
  %232 = call i32 @RNA_boolean_get(ptr noundef nonnull %18, ptr noundef nonnull @.str.23) #9
  %233 = trunc i32 %232 to i8
  call void @uiLayoutSetActive(ptr noundef %231, i8 noundef zeroext %233) #9
  call void @uiItemR(ptr noundef %231, ptr noundef nonnull %18, ptr noundef nonnull @.str.60, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  %234 = call i32 @RNA_boolean_get(ptr noundef nonnull %18, ptr noundef nonnull @.str.57) #9
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %230
  %237 = call ptr @uiLayoutRow(ptr noundef %209, i32 noundef 1) #9
  %238 = call i32 @RNA_boolean_get(ptr noundef nonnull %18, ptr noundef nonnull @.str.23) #9
  %239 = trunc i32 %238 to i8
  call void @uiLayoutSetActive(ptr noundef %237, i8 noundef zeroext %239) #9
  call void @uiItemEnumO(ptr noundef %237, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.3, i32 noundef 7, ptr noundef nonnull @.str.62, i32 noundef 1) #9
  call void @uiItemEnumO(ptr noundef %237, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.3, i32 noundef 5, ptr noundef nonnull @.str.62, i32 noundef 2) #9
  br label %240

240:                                              ; preds = %230, %236
  %241 = call ptr @uiLayoutRow(ptr noundef %209, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %241, ptr noundef nonnull %18, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  %242 = call ptr @uiLayoutRow(ptr noundef %209, i32 noundef 0) #9
  %243 = call i32 @RNA_boolean_get(ptr noundef nonnull %18, ptr noundef nonnull @.str.23) #9
  %244 = trunc i32 %243 to i8
  call void @uiLayoutSetActive(ptr noundef %242, i8 noundef zeroext %244) #9
  call void @uiItemO(ptr noundef %242, ptr noundef nonnull @.str.3, i32 noundef 19, ptr noundef nonnull @.str.63) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %11) #9
  %245 = call i32 @RNA_boolean_get(ptr noundef nonnull %18, ptr noundef nonnull @.str.57) #9
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %260, label %247

247:                                              ; preds = %240
  %248 = call ptr @uiLayoutBox(ptr noundef %203) #9
  %249 = call i32 @RNA_boolean_get(ptr noundef nonnull %18, ptr noundef nonnull @.str.23) #9
  %250 = trunc i32 %249 to i8
  call void @uiLayoutSetActive(ptr noundef %248, i8 noundef zeroext %250) #9
  %251 = call i32 @RNA_enum_get(ptr noundef nonnull %18, ptr noundef nonnull @.str.14) #9
  switch i32 %251, label %260 [
    i32 3, label %253
    i32 2, label %252
  ]

252:                                              ; preds = %247
  call void @uiItemR(ptr noundef %248, ptr noundef nonnull %18, ptr noundef nonnull @.str.73, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  br label %260

253:                                              ; preds = %247
  %254 = call ptr @uiLayoutSplit(ptr noundef %248, float noundef 0x3FD3333340000000, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %254, ptr noundef nonnull %18, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  %255 = call i32 @RNA_enum_get(ptr noundef nonnull %18, ptr noundef nonnull @.str.74) #9
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %253
  call void @uiItemR(ptr noundef %254, ptr noundef nonnull %18, ptr noundef nonnull @.str.75, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  br label %260

258:                                              ; preds = %253
  %259 = call ptr @uiLayoutSplit(ptr noundef %254, float noundef 0x3FE99999A0000000, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %259, ptr noundef nonnull %18, ptr noundef nonnull @.str.76, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %259, ptr noundef nonnull %18, ptr noundef nonnull @.str.77, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  br label %260

260:                                              ; preds = %240, %247, %252, %257, %258
  %261 = call ptr @uiLayoutColumn(ptr noundef %202, i32 noundef 0) #9
  %262 = call i32 @RNA_boolean_get(ptr noundef nonnull %18, ptr noundef nonnull @.str.23) #9
  %263 = trunc i32 %262 to i8
  call void @uiLayoutSetActive(ptr noundef %261, i8 noundef zeroext %263) #9
  call void @uiLayoutSetAlignment(ptr noundef %261, i8 noundef zeroext 1) #9
  %264 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %265 = call ptr @uiDefIconBut(ptr noundef %29, i32 noundef 11264, i32 noundef 0, i32 noundef 49, i32 noundef 0, i32 noundef 0, i16 noundef signext %264, i16 noundef signext %264, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #9
  %266 = call i32 @RNA_boolean_get(ptr noundef nonnull %18, ptr noundef nonnull @.str.23) #9
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %260
  call void @uiButSetFlag(ptr noundef %265, i32 noundef 67108864) #9
  br label %269

269:                                              ; preds = %268, %260
  %270 = getelementptr inbounds %struct.bController, ptr %181, i64 0, i32 13
  %271 = getelementptr inbounds %struct.bController, ptr %181, i64 0, i32 6
  call void @uiSetButLink(ptr noundef %265, ptr noundef null, ptr noundef nonnull %270, ptr noundef nonnull %271, i32 noundef 1, i32 noundef 2) #9
  br label %272

272:                                              ; preds = %185, %269
  %273 = load ptr, ptr %181, align 8, !tbaa !38
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %180, !llvm.loop !129

275:                                              ; preds = %272, %174, %170, %132
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #9
  %276 = add nuw nsw i64 %133, 1
  %277 = load i16, ptr %16, align 2, !tbaa !34
  %278 = sext i16 %277 to i64
  %279 = icmp slt i64 %276, %278
  br i1 %279, label %132, label %280, !llvm.loop !130

280:                                              ; preds = %275, %108
  call void @uiBlockLayoutResolve(ptr noundef %29, ptr noundef null, ptr noundef nonnull %17) #9
  %281 = load i32, ptr %17, align 4, !tbaa !124
  %282 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %283 = sext i16 %282 to i32
  %284 = sdiv i32 %283, 2
  %285 = sdiv i32 %283, -2
  store i32 %285, ptr %17, align 4, !tbaa !124
  %286 = mul nsw i32 %283, 17
  %287 = call ptr @UI_GetStyle() #9
  %288 = call ptr @uiBlockLayout(ptr noundef %29, i32 noundef 1, i32 noundef 0, i32 noundef %284, i32 noundef %285, i32 noundef %286, i32 noundef 20, i32 noundef 0, ptr noundef %287) #9
  %289 = call ptr @uiLayoutRow(ptr noundef %288, i32 noundef 1) #9
  %290 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %291 = sdiv i16 %290, -2
  %292 = sext i16 %291 to i32
  %293 = add nsw i32 %284, %292
  %294 = load i32, ptr %17, align 4, !tbaa !124
  %295 = mul i16 %290, 15
  %296 = call ptr @uiDefBlockBut(ptr noundef %29, ptr noundef nonnull @sensor_menu, ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef %293, i32 noundef %294, i16 noundef signext %295, i16 noundef signext %290, ptr noundef nonnull @.str.3) #9
  call void @uiItemR(ptr noundef %289, ptr noundef nonnull %12, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %289, ptr noundef nonnull %12, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %289, ptr noundef nonnull %12, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %289, ptr noundef nonnull %12, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef 0) #9
  %297 = load i16, ptr %16, align 2, !tbaa !34
  %298 = icmp sgt i16 %297, 0
  br i1 %298, label %299, label %574

299:                                              ; preds = %280
  %300 = sitofp i32 %286 to float
  %301 = getelementptr inbounds %struct.PointerRNA, ptr %19, i64 0, i32 2
  br label %302

302:                                              ; preds = %299, %569
  %303 = phi i64 [ 0, %299 ], [ %570, %569 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #9
  %304 = getelementptr inbounds ptr, ptr %27, i64 %303
  %305 = load ptr, ptr %304, align 8, !tbaa !38
  %306 = getelementptr inbounds %struct.Object, ptr %305, i64 0, i32 62
  %307 = load i8, ptr %306, align 2, !tbaa !50
  %308 = and i8 %307, 1
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %569, label %310

310:                                              ; preds = %302
  %311 = call ptr @uiLayoutRow(ptr noundef %288, i32 noundef 1) #9
  %312 = getelementptr inbounds %struct.ID, ptr %305, i64 0, i32 4, i64 2
  %313 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %314 = sdiv i16 %313, -2
  %315 = zext i16 %314 to i32
  %316 = add nsw i32 %284, %315
  %317 = shl i32 %316, 16
  %318 = ashr exact i32 %317, 16
  %319 = load i32, ptr %17, align 4, !tbaa !124
  %320 = sitofp i16 %313 to float
  %321 = call float @llvm.fmuladd.f32(float %320, float -1.500000e+00, float %300)
  %322 = fptosi float %321 to i16
  %323 = getelementptr inbounds %struct.Object, ptr %305, i64 0, i32 61
  %324 = call ptr @uiDefButBitS(ptr noundef %29, i32 noundef 1536, i32 noundef 64, i32 noundef 1, ptr noundef nonnull %312, i32 noundef %318, i32 noundef %319, i16 noundef signext %322, i16 noundef signext %313, ptr noundef nonnull %323, float noundef 0.000000e+00, float noundef 3.100000e+01, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.31) #9
  call void @RNA_pointer_create(ptr noundef %305, ptr noundef nonnull @RNA_Object, ptr noundef %305, ptr noundef nonnull %14) #9
  call void @uiLayoutSetContextPointer(ptr noundef %311, ptr noundef nonnull @.str.12, ptr noundef nonnull %14) #9
  call void @uiItemMenuEnumO(ptr noundef %311, ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.33, i32 noundef 0) #9
  %325 = load i16, ptr %323, align 4, !tbaa !118
  %326 = and i16 %325, 64
  %327 = icmp eq i16 %326, 0
  br i1 %327, label %569, label %328

328:                                              ; preds = %310
  call void @uiItemS(ptr noundef %288) #9
  %329 = getelementptr inbounds %struct.Object, ptr %305, i64 0, i32 92
  %330 = load ptr, ptr %329, align 8, !tbaa !38
  %331 = icmp eq ptr %330, null
  br i1 %331, label %569, label %332

332:                                              ; preds = %328, %566
  %333 = phi ptr [ %567, %566 ], [ %330, %328 ]
  call void @RNA_pointer_create(ptr noundef %305, ptr noundef nonnull @RNA_Sensor, ptr noundef nonnull %333, ptr noundef nonnull %19) #9
  %334 = load i16, ptr %323, align 4, !tbaa !118
  %335 = and i16 %334, 4096
  %336 = icmp eq i16 %335, 0
  br i1 %336, label %337, label %373

337:                                              ; preds = %332
  %338 = load i16, ptr %25, align 2, !tbaa !108
  %339 = and i16 %338, 512
  %340 = icmp eq i16 %339, 0
  br i1 %340, label %373, label %341

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.bSensor, ptr %333, i64 0, i32 7
  %343 = load i16, ptr %342, align 2, !tbaa !89
  %344 = icmp eq i16 %343, 0
  br i1 %344, label %373, label %345

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.bSensor, ptr %333, i64 0, i32 4
  %347 = load i16, ptr %346, align 4, !tbaa !116
  %348 = and i16 %347, 32
  %349 = icmp eq i16 %348, 0
  br i1 %349, label %350, label %373

350:                                              ; preds = %345
  %351 = load i16, ptr %342, align 2, !tbaa !89
  %352 = icmp sgt i16 %351, 0
  br i1 %352, label %353, label %566

353:                                              ; preds = %350
  %354 = getelementptr inbounds %struct.bSensor, ptr %333, i64 0, i32 12
  %355 = load ptr, ptr %354, align 8, !tbaa !91
  %356 = load ptr, ptr %355, align 8, !tbaa !38
  %357 = call ptr @uiFindInlink(ptr noundef %29, ptr noundef %356) #9
  %358 = icmp eq ptr %357, null
  br i1 %358, label %359, label %371

359:                                              ; preds = %353, %365
  %360 = phi i64 [ %361, %365 ], [ 0, %353 ]
  %361 = add nuw nsw i64 %360, 1
  %362 = load i16, ptr %342, align 2, !tbaa !89
  %363 = sext i16 %362 to i64
  %364 = icmp slt i64 %361, %363
  br i1 %364, label %365, label %566, !llvm.loop !131

365:                                              ; preds = %359
  %366 = load ptr, ptr %354, align 8, !tbaa !91
  %367 = getelementptr inbounds ptr, ptr %366, i64 %361
  %368 = load ptr, ptr %367, align 8, !tbaa !38
  %369 = call ptr @uiFindInlink(ptr noundef %29, ptr noundef %368) #9
  %370 = icmp eq ptr %369, null
  br i1 %370, label %359, label %371, !llvm.loop !131

371:                                              ; preds = %365, %353
  %372 = phi i1 [ %352, %353 ], [ %364, %365 ]
  br i1 %372, label %373, label %566

373:                                              ; preds = %345, %371, %341, %337, %332
  %374 = getelementptr inbounds %struct.bSensor, ptr %333, i64 0, i32 4
  %375 = load i16, ptr %374, align 4, !tbaa !116
  %376 = or i16 %375, 16
  store i16 %376, ptr %374, align 4, !tbaa !116
  %377 = call ptr @uiLayoutSplit(ptr noundef %288, float noundef 0x3FEE666660000000, i32 noundef 0) #9
  %378 = call ptr @uiLayoutColumn(ptr noundef %377, i32 noundef 1) #9
  call void @uiLayoutSetContextPointer(ptr noundef %378, ptr noundef nonnull @.str.34, ptr noundef nonnull %19) #9
  %379 = load ptr, ptr %301, align 8, !tbaa !125
  %380 = call ptr @uiLayoutBox(ptr noundef %378) #9
  %381 = call ptr @uiLayoutRow(ptr noundef %380, i32 noundef 0) #9
  %382 = call ptr @uiLayoutRow(ptr noundef %381, i32 noundef 0) #9
  %383 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.23) #9
  %384 = trunc i32 %383 to i8
  call void @uiLayoutSetActive(ptr noundef %382, i8 noundef zeroext %384) #9
  call void @uiItemR(ptr noundef %382, ptr noundef nonnull %19, ptr noundef nonnull @.str.57, i32 noundef 128, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  %385 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.57) #9
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %388, label %387

387:                                              ; preds = %373
  call void @uiItemR(ptr noundef %382, ptr noundef nonnull %19, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %382, ptr noundef nonnull %19, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  br label %399

388:                                              ; preds = %373
  %389 = getelementptr inbounds %struct.bSensor, ptr %379, i64 0, i32 2
  %390 = load i16, ptr %389, align 8, !tbaa !132
  %391 = icmp ult i16 %390, 15
  br i1 %391, label %392, label %396

392:                                              ; preds = %388
  %393 = zext nneg i16 %390 to i64
  %394 = shl i64 %393, 2
  %395 = call ptr @llvm.load.relative.i64(ptr @reltable.logic_buttons.334, i64 %394)
  br label %396

396:                                              ; preds = %388, %392
  %397 = phi ptr [ %395, %392 ], [ @.str.72, %388 ]
  call void @uiItemL(ptr noundef %382, ptr noundef nonnull %397, i32 noundef 0) #9
  %398 = getelementptr inbounds %struct.bSensor, ptr %379, i64 0, i32 10
  call void @uiItemL(ptr noundef %382, ptr noundef nonnull %398, i32 noundef 0) #9
  br label %399

399:                                              ; preds = %396, %387
  %400 = call ptr @uiLayoutRow(ptr noundef %381, i32 noundef 0) #9
  %401 = call i32 @RNA_boolean_get(ptr noundef nonnull %12, ptr noundef nonnull @.str.29) #9
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %406, label %403

403:                                              ; preds = %399
  %404 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.57) #9
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %409

406:                                              ; preds = %403, %399
  %407 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.80) #9
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %413, label %409

409:                                              ; preds = %406, %403
  %410 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.23) #9
  %411 = icmp ne i32 %410, 0
  %412 = zext i1 %411 to i8
  br label %413

413:                                              ; preds = %409, %406
  %414 = phi i8 [ 0, %406 ], [ %412, %409 ]
  call void @uiLayoutSetActive(ptr noundef %400, i8 noundef zeroext %414) #9
  call void @uiItemR(ptr noundef %400, ptr noundef nonnull %19, ptr noundef nonnull @.str.80, i32 noundef 128, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  %415 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.57) #9
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %421

417:                                              ; preds = %413
  %418 = call ptr @uiLayoutRow(ptr noundef %381, i32 noundef 1) #9
  %419 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.23) #9
  %420 = trunc i32 %419 to i8
  call void @uiLayoutSetActive(ptr noundef %418, i8 noundef zeroext %420) #9
  call void @uiItemEnumO(ptr noundef %418, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.3, i32 noundef 7, ptr noundef nonnull @.str.62, i32 noundef 1) #9
  call void @uiItemEnumO(ptr noundef %418, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.3, i32 noundef 5, ptr noundef nonnull @.str.62, i32 noundef 2) #9
  br label %421

421:                                              ; preds = %413, %417
  %422 = call ptr @uiLayoutRow(ptr noundef %381, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %422, ptr noundef nonnull %19, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  %423 = call ptr @uiLayoutRow(ptr noundef %381, i32 noundef 0) #9
  %424 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.23) #9
  %425 = trunc i32 %424 to i8
  call void @uiLayoutSetActive(ptr noundef %423, i8 noundef zeroext %425) #9
  call void @uiItemO(ptr noundef %423, ptr noundef nonnull @.str.3, i32 noundef 19, ptr noundef nonnull @.str.82) #9
  %426 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.57) #9
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %554, label %428

428:                                              ; preds = %421
  %429 = call ptr @uiLayoutBox(ptr noundef %378) #9
  %430 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.23) #9
  %431 = trunc i32 %430 to i8
  call void @uiLayoutSetActive(ptr noundef %429, i8 noundef zeroext %431) #9
  %432 = call ptr @uiLayoutSplit(ptr noundef %429, float noundef 0x3FDCCCCCC0000000, i32 noundef 0) #9
  %433 = call ptr @uiLayoutRow(ptr noundef %432, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %433, ptr noundef nonnull %19, ptr noundef nonnull @.str.97, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 47) #9
  call void @uiItemR(ptr noundef %433, ptr noundef nonnull %19, ptr noundef nonnull @.str.98, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 48) #9
  %434 = call ptr @uiLayoutRow(ptr noundef %433, i32 noundef 0) #9
  %435 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.97) #9
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %441

437:                                              ; preds = %428
  %438 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.98) #9
  %439 = icmp ne i32 %438, 0
  %440 = zext i1 %439 to i8
  br label %441

441:                                              ; preds = %437, %428
  %442 = phi i8 [ 1, %428 ], [ %440, %437 ]
  call void @uiLayoutSetActive(ptr noundef %434, i8 noundef zeroext %442) #9
  call void @uiItemR(ptr noundef %434, ptr noundef nonnull %19, ptr noundef nonnull @.str.99, i32 noundef 0, ptr noundef nonnull @.str.100, i32 noundef 0) #9
  %443 = call ptr @uiLayoutRow(ptr noundef %432, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %443, ptr noundef nonnull %19, ptr noundef nonnull @.str.101, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %443, ptr noundef nonnull %19, ptr noundef nonnull @.str.102, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %432, ptr noundef nonnull %19, ptr noundef nonnull @.str.103, i32 noundef 8, ptr noundef nonnull @.str.104, i32 noundef 0) #9
  %444 = call ptr @uiLayoutBox(ptr noundef %378) #9
  %445 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.23) #9
  %446 = trunc i32 %445 to i8
  call void @uiLayoutSetActive(ptr noundef %444, i8 noundef zeroext %446) #9
  %447 = call i32 @RNA_enum_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.14) #9
  switch i32 %447, label %554 [
    i32 12, label %448
    i32 9, label %545
    i32 14, label %450
    i32 6, label %474
    i32 13, label %482
    i32 11, label %484
    i32 3, label %504
    i32 10, label %518
    i32 5, label %519
    i32 2, label %533
    i32 4, label %535
    i32 7, label %542
    i32 8, label %544
  ]

448:                                              ; preds = %441
  %449 = load ptr, ptr %19, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #9
  call void @RNA_pointer_create(ptr noundef %449, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %449, ptr noundef nonnull %10) #9
  call void @uiItemPointerR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.43, ptr noundef nonnull %10, ptr noundef nonnull @.str.105, ptr noundef null, i32 noundef 120) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  br label %554

450:                                              ; preds = %441
  %451 = load ptr, ptr %301, align 8, !tbaa !125
  %452 = getelementptr inbounds %struct.bSensor, ptr %451, i64 0, i32 11
  %453 = load ptr, ptr %452, align 8, !tbaa !134
  %454 = load ptr, ptr %19, align 8, !tbaa !133
  %455 = getelementptr inbounds %struct.Object, ptr %454, i64 0, i32 3
  %456 = load i16, ptr %455, align 8, !tbaa !135
  %457 = icmp eq i16 %456, 25
  br i1 %457, label %459, label %458

458:                                              ; preds = %450
  call void @uiItemL(ptr noundef %444, ptr noundef nonnull @.str.106, i32 noundef 0) #9
  br label %554

459:                                              ; preds = %450
  %460 = getelementptr inbounds %struct.Object, ptr %454, i64 0, i32 18
  %461 = load ptr, ptr %460, align 8, !tbaa !136
  %462 = icmp eq ptr %461, null
  br i1 %462, label %469, label %463

463:                                              ; preds = %459
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #9
  call void @RNA_pointer_create(ptr noundef %454, ptr noundef nonnull @RNA_Pose, ptr noundef nonnull %461, ptr noundef nonnull %8) #9
  %464 = call ptr @RNA_struct_find_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.107) #9
  call void @uiItemPointerR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.108, ptr noundef nonnull %8, ptr noundef nonnull @.str.107, ptr noundef null, i32 noundef 174) #9
  %465 = call i32 @RNA_property_collection_lookup_string(ptr noundef nonnull %8, ptr noundef %464, ptr noundef %453, ptr noundef nonnull %9) #9
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %468, label %467

467:                                              ; preds = %463
  call void @uiItemPointerR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.109, ptr noundef nonnull %9, ptr noundef nonnull @.str.110, ptr noundef null, i32 noundef 177) #9
  br label %468

468:                                              ; preds = %467, %463
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  br label %469

469:                                              ; preds = %468, %459
  %470 = call ptr @uiLayoutRow(ptr noundef %444, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %470, ptr noundef nonnull %19, ptr noundef nonnull @.str.111, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %471 = call i32 @RNA_enum_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.111) #9
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %554, label %473

473:                                              ; preds = %469
  call void @uiItemR(ptr noundef %470, ptr noundef nonnull %19, ptr noundef nonnull @.str.112, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %554

474:                                              ; preds = %441
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %475 = call ptr @CTX_data_main(ptr noundef %0) #9
  call void @RNA_main_pointer_create(ptr noundef %475, ptr noundef nonnull %7) #9
  %476 = call ptr @uiLayoutSplit(ptr noundef %444, float noundef 0x3FD3333340000000, i32 noundef 0) #9
  %477 = call ptr @uiLayoutRow(ptr noundef %476, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %477, ptr noundef nonnull %19, ptr noundef nonnull @.str.113, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %477, ptr noundef nonnull %19, ptr noundef nonnull @.str.114, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %478 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.114) #9
  switch i32 %478, label %481 [
    i32 0, label %479
    i32 1, label %480
  ]

479:                                              ; preds = %474
  call void @uiItemR(ptr noundef %476, ptr noundef nonnull %19, ptr noundef nonnull @.str.115, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %481

480:                                              ; preds = %474
  call void @uiItemPointerR(ptr noundef %476, ptr noundef nonnull %19, ptr noundef nonnull @.str.116, ptr noundef nonnull %7, ptr noundef nonnull @.str.117, ptr noundef null, i32 noundef 165) #9
  br label %481

481:                                              ; preds = %480, %479, %474
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  br label %554

482:                                              ; preds = %441
  %483 = call ptr @uiLayoutRow(ptr noundef %444, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %483, ptr noundef nonnull %19, ptr noundef nonnull @.str.118, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %483, ptr noundef nonnull %19, ptr noundef nonnull @.str.119, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %483, ptr noundef nonnull %19, ptr noundef nonnull @.str.120, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %554

484:                                              ; preds = %441
  call void @uiItemR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.121, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.122, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %485 = call i32 @RNA_enum_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.122) #9
  switch i32 %485, label %554 [
    i32 0, label %486
    i32 1, label %491
    i32 2, label %497
    i32 3, label %502
  ]

486:                                              ; preds = %484
  call void @uiItemR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.123, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %487 = call ptr @uiLayoutColumn(ptr noundef %444, i32 noundef 0) #9
  %488 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.123) #9
  %489 = icmp eq i32 %488, 0
  %490 = zext i1 %489 to i8
  call void @uiLayoutSetActive(ptr noundef %487, i8 noundef zeroext %490) #9
  call void @uiItemR(ptr noundef %487, ptr noundef nonnull %19, ptr noundef nonnull @.str.124, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %554

491:                                              ; preds = %484
  %492 = call ptr @uiLayoutRow(ptr noundef %444, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %492, ptr noundef nonnull %19, ptr noundef nonnull @.str.125, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %492, ptr noundef nonnull %19, ptr noundef nonnull @.str.126, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.123, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %493 = call ptr @uiLayoutColumn(ptr noundef %444, i32 noundef 0) #9
  %494 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.123) #9
  %495 = icmp eq i32 %494, 0
  %496 = zext i1 %495 to i8
  call void @uiLayoutSetActive(ptr noundef %493, i8 noundef zeroext %496) #9
  call void @uiItemR(ptr noundef %493, ptr noundef nonnull %19, ptr noundef nonnull @.str.127, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %554

497:                                              ; preds = %484
  call void @uiItemR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.128, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.123, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %498 = call ptr @uiLayoutColumn(ptr noundef %444, i32 noundef 0) #9
  %499 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.123) #9
  %500 = icmp eq i32 %499, 0
  %501 = zext i1 %500 to i8
  call void @uiLayoutSetActive(ptr noundef %498, i8 noundef zeroext %501) #9
  call void @uiItemR(ptr noundef %498, ptr noundef nonnull %19, ptr noundef nonnull @.str.129, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %554

502:                                              ; preds = %484
  %503 = call ptr @uiLayoutRow(ptr noundef %444, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %503, ptr noundef nonnull %19, ptr noundef nonnull @.str.130, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %503, ptr noundef nonnull %19, ptr noundef nonnull @.str.126, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %554

504:                                              ; preds = %441
  %505 = load ptr, ptr %19, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %506 = call ptr @uiLayoutRow(ptr noundef %444, i32 noundef 0) #9
  call void @uiItemL(ptr noundef %506, ptr noundef nonnull @.str.131, i32 noundef 0) #9
  %507 = call ptr @uiLayoutColumn(ptr noundef %506, i32 noundef 0) #9
  %508 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.132) #9
  %509 = icmp eq i32 %508, 0
  %510 = zext i1 %509 to i8
  call void @uiLayoutSetActive(ptr noundef %507, i8 noundef zeroext %510) #9
  call void @uiItemR(ptr noundef %507, ptr noundef nonnull %19, ptr noundef nonnull @.str.133, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  %511 = call ptr @uiLayoutColumn(ptr noundef %506, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %511, ptr noundef nonnull %19, ptr noundef nonnull @.str.132, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %512 = call ptr @uiLayoutColumn(ptr noundef %444, i32 noundef 0) #9
  %513 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.132) #9
  %514 = icmp eq i32 %513, 0
  %515 = zext i1 %514 to i8
  call void @uiLayoutSetActive(ptr noundef %512, i8 noundef zeroext %515) #9
  %516 = call ptr @uiLayoutRow(ptr noundef %512, i32 noundef 0) #9
  call void @uiItemL(ptr noundef %516, ptr noundef nonnull @.str.134, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %516, ptr noundef nonnull %19, ptr noundef nonnull @.str.135, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  %517 = call ptr @uiLayoutRow(ptr noundef %512, i32 noundef 0) #9
  call void @uiItemL(ptr noundef %517, ptr noundef nonnull @.str.136, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %517, ptr noundef nonnull %19, ptr noundef nonnull @.str.137, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  call void @RNA_pointer_create(ptr noundef %505, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %505, ptr noundef nonnull %6) #9
  call void @uiItemPointerR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.138, ptr noundef nonnull %6, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #9
  call void @uiItemPointerR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.140, ptr noundef nonnull %6, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  br label %554

518:                                              ; preds = %441
  call void @uiItemR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.141, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %554

519:                                              ; preds = %441
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %520 = call ptr @uiLayoutSplit(ptr noundef %444, float noundef 0x3FE99999A0000000, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %520, ptr noundef nonnull %19, ptr noundef nonnull @.str.142, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %521 = call i32 @RNA_enum_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.142) #9
  %522 = icmp eq i32 %521, 32
  br i1 %522, label %523, label %532

523:                                              ; preds = %519
  call void @uiItemR(ptr noundef %520, ptr noundef nonnull %19, ptr noundef nonnull @.str.113, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %524 = call ptr @uiLayoutSplit(ptr noundef %444, float noundef 0x3FD3333340000000, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %524, ptr noundef nonnull %19, ptr noundef nonnull @.str.114, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  %525 = call ptr @uiLayoutSplit(ptr noundef %524, float noundef 0x3FE6666660000000, i32 noundef 0) #9
  %526 = call i32 @RNA_enum_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.114) #9
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %523
  call void @uiItemR(ptr noundef %525, ptr noundef nonnull %19, ptr noundef nonnull @.str.115, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  br label %531

529:                                              ; preds = %523
  %530 = call ptr @CTX_data_main(ptr noundef %0) #9
  call void @RNA_main_pointer_create(ptr noundef %530, ptr noundef nonnull %5) #9
  call void @uiItemPointerR(ptr noundef %525, ptr noundef nonnull %19, ptr noundef nonnull @.str.116, ptr noundef nonnull %5, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.3, i32 noundef 165) #9
  br label %531

531:                                              ; preds = %529, %528
  call void @uiItemR(ptr noundef %525, ptr noundef nonnull %19, ptr noundef nonnull @.str.143, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  br label %532

532:                                              ; preds = %531, %519
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  br label %554

533:                                              ; preds = %441
  call void @uiItemR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.115, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %534 = call ptr @uiLayoutRow(ptr noundef %444, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %534, ptr noundef nonnull %19, ptr noundef nonnull @.str.144, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %534, ptr noundef nonnull %19, ptr noundef nonnull @.str.145, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %554

535:                                              ; preds = %441
  %536 = load ptr, ptr %19, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @uiItemR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.146, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @RNA_pointer_create(ptr noundef %536, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %536, ptr noundef nonnull %4) #9
  call void @uiItemPointerR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.115, ptr noundef nonnull %4, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #9
  %537 = call i32 @RNA_enum_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.146) #9
  switch i32 %537, label %541 [
    i32 2, label %538
    i32 0, label %540
    i32 1, label %540
    i32 5, label %540
    i32 6, label %540
  ]

538:                                              ; preds = %535
  %539 = call ptr @uiLayoutRow(ptr noundef %444, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %539, ptr noundef nonnull %19, ptr noundef nonnull @.str.147, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %539, ptr noundef nonnull %19, ptr noundef nonnull @.str.148, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %541

540:                                              ; preds = %535, %535, %535, %535
  call void @uiItemR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.112, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %541

541:                                              ; preds = %540, %538, %535
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  br label %554

542:                                              ; preds = %441
  call void @uiItemR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.115, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.149, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %543 = call ptr @uiLayoutRow(ptr noundef %444, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %543, ptr noundef nonnull %19, ptr noundef nonnull @.str.150, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %543, ptr noundef nonnull %19, ptr noundef nonnull @.str.144, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %554

544:                                              ; preds = %441
  call void @uiItemR(ptr noundef %444, ptr noundef nonnull %19, ptr noundef nonnull @.str.151, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %554

545:                                              ; preds = %441
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  %546 = call ptr @CTX_data_main(ptr noundef %0) #9
  call void @RNA_main_pointer_create(ptr noundef %546, ptr noundef nonnull %3) #9
  %547 = call ptr @uiLayoutSplit(ptr noundef %444, float noundef 0x3FD3333340000000, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %547, ptr noundef nonnull %19, ptr noundef nonnull @.str.152, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  %548 = call i32 @RNA_enum_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.152) #9
  switch i32 %548, label %551 [
    i32 0, label %549
    i32 1, label %550
  ]

549:                                              ; preds = %545
  call void @uiItemR(ptr noundef %547, ptr noundef nonnull %19, ptr noundef nonnull @.str.115, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  br label %551

550:                                              ; preds = %545
  call void @uiItemPointerR(ptr noundef %547, ptr noundef nonnull %19, ptr noundef nonnull @.str.116, ptr noundef nonnull %3, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.3, i32 noundef 165) #9
  br label %551

551:                                              ; preds = %550, %549, %545
  %552 = call ptr @uiLayoutSplit(ptr noundef %444, float noundef 0x3FD3333340000000, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %552, ptr noundef nonnull %19, ptr noundef nonnull @.str.149, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  %553 = call ptr @uiLayoutRow(ptr noundef %552, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %553, ptr noundef nonnull %19, ptr noundef nonnull @.str.153, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %553, ptr noundef nonnull %19, ptr noundef nonnull @.str.143, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  br label %554

554:                                              ; preds = %421, %441, %448, %458, %469, %473, %481, %482, %484, %486, %491, %497, %502, %504, %518, %532, %533, %541, %542, %544, %551
  %555 = call ptr @uiLayoutColumn(ptr noundef %377, i32 noundef 0) #9
  %556 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.23) #9
  %557 = trunc i32 %556 to i8
  call void @uiLayoutSetActive(ptr noundef %555, i8 noundef zeroext %557) #9
  %558 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %559 = call ptr @uiDefIconBut(ptr noundef %29, i32 noundef 11264, i32 noundef 0, i32 noundef 49, i32 noundef 0, i32 noundef 0, i16 noundef signext %558, i16 noundef signext %558, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #9
  %560 = call i32 @RNA_boolean_get(ptr noundef nonnull %19, ptr noundef nonnull @.str.23) #9
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %563

562:                                              ; preds = %554
  call void @uiButSetFlag(ptr noundef %559, i32 noundef 67108864) #9
  br label %563

563:                                              ; preds = %562, %554
  %564 = getelementptr inbounds %struct.bSensor, ptr %333, i64 0, i32 12
  %565 = getelementptr inbounds %struct.bSensor, ptr %333, i64 0, i32 7
  call void @uiSetButLink(ptr noundef %559, ptr noundef null, ptr noundef nonnull %564, ptr noundef nonnull %565, i32 noundef 0, i32 noundef 1) #9
  br label %566

566:                                              ; preds = %359, %350, %371, %563
  %567 = load ptr, ptr %333, align 8, !tbaa !38
  %568 = icmp eq ptr %567, null
  br i1 %568, label %569, label %332, !llvm.loop !137

569:                                              ; preds = %566, %328, %310, %302
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #9
  %570 = add nuw nsw i64 %303, 1
  %571 = load i16, ptr %16, align 2, !tbaa !34
  %572 = sext i16 %571 to i64
  %573 = icmp slt i64 %570, %572
  br i1 %573, label %302, label %574, !llvm.loop !138

574:                                              ; preds = %569, %280
  %575 = phi i16 [ %297, %280 ], [ %571, %569 ]
  call void @uiBlockLayoutResolve(ptr noundef %29, ptr noundef null, ptr noundef nonnull %17) #9
  %576 = load i32, ptr %17, align 4
  %577 = call i32 @llvm.smin.i32(i32 %281, i32 %576)
  %578 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %579 = sext i16 %578 to i32
  %580 = mul nsw i32 %579, 40
  %581 = sdiv i32 %579, -2
  store i32 %581, ptr %17, align 4, !tbaa !124
  %582 = mul nsw i32 %579, 17
  %583 = call ptr @UI_GetStyle() #9
  %584 = call ptr @uiBlockLayout(ptr noundef %29, i32 noundef 1, i32 noundef 0, i32 noundef %580, i32 noundef %581, i32 noundef %582, i32 noundef 20, i32 noundef 0, ptr noundef %583) #9
  %585 = call ptr @uiLayoutRow(ptr noundef %584, i32 noundef 1) #9
  %586 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %587 = sdiv i16 %586, -2
  %588 = sext i16 %587 to i32
  %589 = add nsw i32 %580, %588
  %590 = load i32, ptr %17, align 4, !tbaa !124
  %591 = mul i16 %586, 15
  %592 = call ptr @uiDefBlockBut(ptr noundef %29, ptr noundef nonnull @actuator_menu, ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef %589, i32 noundef %590, i16 noundef signext %591, i16 noundef signext %586, ptr noundef nonnull @.str.3) #9
  call void @uiItemR(ptr noundef %585, ptr noundef nonnull %12, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %585, ptr noundef nonnull %12, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %585, ptr noundef nonnull %12, ptr noundef nonnull @.str.38, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %585, ptr noundef nonnull %12, ptr noundef nonnull @.str.39, i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef 0) #9
  %593 = icmp sgt i16 %575, 0
  br i1 %593, label %594, label %710

594:                                              ; preds = %574
  %595 = sitofp i32 %582 to float
  %596 = getelementptr inbounds %struct.PointerRNA, ptr %20, i64 0, i32 2
  %597 = zext nneg i16 %575 to i64
  br label %598

598:                                              ; preds = %594, %707
  %599 = phi i64 [ 0, %594 ], [ %708, %707 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #9
  %600 = getelementptr inbounds ptr, ptr %27, i64 %599
  %601 = load ptr, ptr %600, align 8, !tbaa !38
  %602 = getelementptr inbounds %struct.Object, ptr %601, i64 0, i32 62
  %603 = load i8, ptr %602, align 2, !tbaa !50
  %604 = and i8 %603, 4
  %605 = icmp eq i8 %604, 0
  br i1 %605, label %707, label %606

606:                                              ; preds = %598
  %607 = call ptr @uiLayoutRow(ptr noundef %584, i32 noundef 1) #9
  %608 = getelementptr inbounds %struct.ID, ptr %601, i64 0, i32 4, i64 2
  %609 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %610 = sdiv i16 %609, -2
  %611 = zext i16 %610 to i32
  %612 = add nsw i32 %580, %611
  %613 = shl i32 %612, 16
  %614 = ashr exact i32 %613, 16
  %615 = load i32, ptr %17, align 4, !tbaa !124
  %616 = sitofp i16 %609 to float
  %617 = call float @llvm.fmuladd.f32(float %616, float -1.500000e+00, float %595)
  %618 = fptosi float %617 to i16
  %619 = getelementptr inbounds %struct.Object, ptr %601, i64 0, i32 61
  %620 = call ptr @uiDefButBitS(ptr noundef %29, i32 noundef 1536, i32 noundef 128, i32 noundef 1, ptr noundef nonnull %608, i32 noundef %614, i32 noundef %615, i16 noundef signext %618, i16 noundef signext %609, ptr noundef nonnull %619, float noundef 0.000000e+00, float noundef 3.100000e+01, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.40) #9
  call void @RNA_pointer_create(ptr noundef %601, ptr noundef nonnull @RNA_Object, ptr noundef %601, ptr noundef nonnull %14) #9
  call void @uiLayoutSetContextPointer(ptr noundef %607, ptr noundef nonnull @.str.12, ptr noundef nonnull %14) #9
  call void @uiItemMenuEnumO(ptr noundef %607, ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.42, i32 noundef 0) #9
  %621 = load i16, ptr %619, align 4, !tbaa !118
  %622 = and i16 %621, 128
  %623 = icmp eq i16 %622, 0
  br i1 %623, label %707, label %624

624:                                              ; preds = %606
  call void @uiItemS(ptr noundef %584) #9
  %625 = getelementptr inbounds %struct.Object, ptr %601, i64 0, i32 94
  %626 = load ptr, ptr %625, align 8, !tbaa !38
  %627 = icmp eq ptr %626, null
  br i1 %627, label %707, label %628

628:                                              ; preds = %624, %704
  %629 = phi ptr [ %705, %704 ], [ %626, %624 ]
  call void @RNA_pointer_create(ptr noundef %601, ptr noundef nonnull @RNA_Actuator, ptr noundef nonnull %629, ptr noundef nonnull %20) #9
  %630 = load i16, ptr %619, align 4, !tbaa !118
  %631 = and i16 %630, 4096
  %632 = icmp eq i16 %631, 0
  br i1 %632, label %633, label %642

633:                                              ; preds = %628
  %634 = load i16, ptr %25, align 2, !tbaa !108
  %635 = and i16 %634, 1024
  %636 = icmp eq i16 %635, 0
  br i1 %636, label %642, label %637

637:                                              ; preds = %633
  %638 = getelementptr inbounds %struct.bActuator, ptr %629, i64 0, i32 4
  %639 = load i16, ptr %638, align 2, !tbaa !114
  %640 = and i16 %639, 56
  %641 = icmp eq i16 %640, 8
  br i1 %641, label %704, label %642

642:                                              ; preds = %637, %633, %628
  %643 = getelementptr inbounds %struct.bActuator, ptr %629, i64 0, i32 4
  %644 = load i16, ptr %643, align 2, !tbaa !114
  %645 = or i16 %644, 16
  store i16 %645, ptr %643, align 2, !tbaa !114
  %646 = call ptr @uiLayoutSplit(ptr noundef %584, float noundef 0x3FA99999A0000000, i32 noundef 0) #9
  %647 = call ptr @uiLayoutColumn(ptr noundef %646, i32 noundef 0) #9
  %648 = call i32 @RNA_boolean_get(ptr noundef nonnull %20, ptr noundef nonnull @.str.23) #9
  %649 = trunc i32 %648 to i8
  call void @uiLayoutSetActive(ptr noundef %647, i8 noundef zeroext %649) #9
  %650 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %651 = call ptr @uiDefIconBut(ptr noundef %29, i32 noundef 11776, i32 noundef 0, i32 noundef 50, i32 noundef 0, i32 noundef 0, i16 noundef signext %650, i16 noundef signext %650, ptr noundef nonnull %629, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #9
  %652 = call i32 @RNA_boolean_get(ptr noundef nonnull %20, ptr noundef nonnull @.str.23) #9
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %654, label %655

654:                                              ; preds = %642
  call void @uiButSetFlag(ptr noundef %651, i32 noundef 67108864) #9
  br label %655

655:                                              ; preds = %654, %642
  %656 = call ptr @uiLayoutColumn(ptr noundef %646, i32 noundef 1) #9
  call void @uiLayoutSetContextPointer(ptr noundef %656, ptr noundef nonnull @.str.43, ptr noundef nonnull %20) #9
  %657 = load ptr, ptr %596, align 8, !tbaa !125
  %658 = call ptr @uiLayoutBox(ptr noundef %656) #9
  %659 = call ptr @uiLayoutRow(ptr noundef %658, i32 noundef 0) #9
  %660 = call ptr @uiLayoutRow(ptr noundef %659, i32 noundef 0) #9
  %661 = call i32 @RNA_boolean_get(ptr noundef nonnull %20, ptr noundef nonnull @.str.23) #9
  %662 = trunc i32 %661 to i8
  call void @uiLayoutSetActive(ptr noundef %660, i8 noundef zeroext %662) #9
  call void @uiItemR(ptr noundef %660, ptr noundef nonnull %20, ptr noundef nonnull @.str.57, i32 noundef 128, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  %663 = call i32 @RNA_boolean_get(ptr noundef nonnull %20, ptr noundef nonnull @.str.57) #9
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %666, label %665

665:                                              ; preds = %655
  call void @uiItemR(ptr noundef %660, ptr noundef nonnull %20, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %660, ptr noundef nonnull %20, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  br label %677

666:                                              ; preds = %655
  %667 = getelementptr inbounds %struct.bActuator, ptr %657, i64 0, i32 3
  %668 = load i16, ptr %667, align 8, !tbaa !139
  %669 = icmp ult i16 %668, 26
  br i1 %669, label %670, label %674

670:                                              ; preds = %666
  %671 = zext nneg i16 %668 to i64
  %672 = shl i64 %671, 2
  %673 = call ptr @llvm.load.relative.i64(ptr @reltable.logic_buttons.335, i64 %672)
  br label %674

674:                                              ; preds = %666, %670
  %675 = phi ptr [ %673, %670 ], [ @.str.72, %666 ]
  call void @uiItemL(ptr noundef %660, ptr noundef nonnull %675, i32 noundef 0) #9
  %676 = getelementptr inbounds %struct.bActuator, ptr %657, i64 0, i32 7
  call void @uiItemL(ptr noundef %660, ptr noundef nonnull %676, i32 noundef 0) #9
  br label %677

677:                                              ; preds = %674, %665
  %678 = call ptr @uiLayoutRow(ptr noundef %659, i32 noundef 0) #9
  %679 = call i32 @RNA_boolean_get(ptr noundef nonnull %12, ptr noundef nonnull @.str.39) #9
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %684, label %681

681:                                              ; preds = %677
  %682 = call i32 @RNA_boolean_get(ptr noundef nonnull %20, ptr noundef nonnull @.str.57) #9
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %684, label %687

684:                                              ; preds = %681, %677
  %685 = call i32 @RNA_boolean_get(ptr noundef nonnull %20, ptr noundef nonnull @.str.80) #9
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %691, label %687

687:                                              ; preds = %684, %681
  %688 = call i32 @RNA_boolean_get(ptr noundef nonnull %20, ptr noundef nonnull @.str.23) #9
  %689 = icmp ne i32 %688, 0
  %690 = zext i1 %689 to i8
  br label %691

691:                                              ; preds = %687, %684
  %692 = phi i8 [ 0, %684 ], [ %690, %687 ]
  call void @uiLayoutSetActive(ptr noundef %678, i8 noundef zeroext %692) #9
  call void @uiItemR(ptr noundef %678, ptr noundef nonnull %20, ptr noundef nonnull @.str.80, i32 noundef 128, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  %693 = call i32 @RNA_boolean_get(ptr noundef nonnull %20, ptr noundef nonnull @.str.57) #9
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %695, label %699

695:                                              ; preds = %691
  %696 = call ptr @uiLayoutRow(ptr noundef %659, i32 noundef 1) #9
  %697 = call i32 @RNA_boolean_get(ptr noundef nonnull %20, ptr noundef nonnull @.str.23) #9
  %698 = trunc i32 %697 to i8
  call void @uiLayoutSetActive(ptr noundef %696, i8 noundef zeroext %698) #9
  call void @uiItemEnumO(ptr noundef %696, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.3, i32 noundef 7, ptr noundef nonnull @.str.62, i32 noundef 1) #9
  call void @uiItemEnumO(ptr noundef %696, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.3, i32 noundef 5, ptr noundef nonnull @.str.62, i32 noundef 2) #9
  br label %699

699:                                              ; preds = %691, %695
  %700 = call ptr @uiLayoutRow(ptr noundef %659, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %700, ptr noundef nonnull %20, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  %701 = call ptr @uiLayoutRow(ptr noundef %659, i32 noundef 0) #9
  %702 = call i32 @RNA_boolean_get(ptr noundef nonnull %20, ptr noundef nonnull @.str.23) #9
  %703 = trunc i32 %702 to i8
  call void @uiLayoutSetActive(ptr noundef %701, i8 noundef zeroext %703) #9
  call void @uiItemO(ptr noundef %701, ptr noundef nonnull @.str.3, i32 noundef 19, ptr noundef nonnull @.str.157) #9
  call fastcc void @draw_brick_actuator(ptr noundef %656, ptr noundef nonnull %20, ptr noundef %0)
  br label %704

704:                                              ; preds = %637, %699
  %705 = load ptr, ptr %629, align 8, !tbaa !38
  %706 = icmp eq ptr %705, null
  br i1 %706, label %707, label %628, !llvm.loop !140

707:                                              ; preds = %704, %624, %606, %598
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #9
  %708 = add nuw nsw i64 %599, 1
  %709 = icmp eq i64 %708, %597
  br i1 %709, label %710, label %598, !llvm.loop !141

710:                                              ; preds = %707, %574
  call void @uiBlockLayoutResolve(ptr noundef %29, ptr noundef null, ptr noundef nonnull %17) #9
  %711 = load i32, ptr %17, align 4
  %712 = call i32 @llvm.smin.i32(i32 %577, i32 %711)
  %713 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %714 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %715 = sext i16 %714 to i32
  %716 = sitofp i16 %714 to float
  %717 = fmul float %716, 5.750000e+01
  %718 = fptosi float %717 to i32
  %719 = sub nsw i32 %712, %715
  call void @UI_view2d_totRect_set(ptr noundef nonnull %713, i32 noundef %718, i32 noundef %719) #9
  call void @UI_view2d_view_ortho(ptr noundef nonnull %713) #9
  call void @uiComposeLinks(ptr noundef %29) #9
  call void @uiEndBlock(ptr noundef %0, ptr noundef %29) #9
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %29) #9
  call void @UI_view2d_view_restore(ptr noundef %0) #9
  %720 = icmp eq ptr %27, null
  br i1 %720, label %723, label %721

721:                                              ; preds = %710
  %722 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  call void %722(ptr noundef nonnull %27) #9
  br label %723

723:                                              ; preds = %710, %721, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #9
  ret void
}

declare ptr @CTX_wm_space_logic(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @do_logic_buts(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %320, label %7

7:                                                ; preds = %3
  switch i32 %2, label %320 [
    i32 2714, label %8
    i32 2715, label %12
    i32 2717, label %12
    i32 2716, label %12
    i32 2703, label %16
    i32 2704, label %37
    i32 2705, label %61
    i32 2706, label %82
    i32 2718, label %117
    i32 2719, label %133
    i32 2707, label %152
    i32 2708, label %176
    i32 2709, label %197
    i32 2710, label %218
    i32 2711, label %242
    i32 2712, label %263
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 99
  %10 = load i32, ptr %9, align 8, !tbaa !142
  %11 = and i32 %10, -40966
  store i32 %11, ptr %9, align 8, !tbaa !142
  br label %320

12:                                               ; preds = %7, %7, %7
  %13 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 99
  %14 = load i32, ptr %13, align 8, !tbaa !142
  %15 = and i32 %14, -24577
  store i32 %15, ptr %13, align 8, !tbaa !142
  br label %320

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !38
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %16, %33
  %21 = phi ptr [ %34, %33 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 61
  %23 = load i16, ptr %22, align 4, !tbaa !118
  %24 = and i16 %23, 256
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = and i16 %23, -257
  store i16 %27, ptr %22, align 4, !tbaa !118
  %28 = tail call ptr @new_sensor(i32 noundef 0) #9
  %29 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 92
  tail call void @BLI_addtail(ptr noundef nonnull %29, ptr noundef %28) #9
  %30 = getelementptr inbounds %struct.bSensor, ptr %28, i64 0, i32 10
  tail call void @make_unique_prop_names(ptr noundef %0, ptr noundef nonnull %30)
  %31 = load i16, ptr %22, align 4, !tbaa !118
  %32 = or i16 %31, 64
  store i16 %32, ptr %22, align 4, !tbaa !118
  br label %33

33:                                               ; preds = %20, %26
  %34 = load ptr, ptr %21, align 8, !tbaa !38
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %20, !llvm.loop !143

36:                                               ; preds = %33, %16
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.45) #9
  br label %320

37:                                               ; preds = %7
  %38 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %39 = load ptr, ptr %38, align 8, !tbaa !38
  %40 = icmp eq ptr %39, null
  br i1 %40, label %320, label %41

41:                                               ; preds = %37, %58
  %42 = phi ptr [ %59, %58 ], [ %39, %37 ]
  %43 = getelementptr inbounds %struct.Object, ptr %42, i64 0, i32 92
  br label %44

44:                                               ; preds = %48, %41
  %45 = phi ptr [ %43, %41 ], [ %46, %48 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !38
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.bSensor, ptr %46, i64 0, i32 2
  %50 = load i16, ptr %49, align 8, !tbaa !132
  %51 = getelementptr inbounds %struct.bSensor, ptr %46, i64 0, i32 3
  %52 = load i16, ptr %51, align 2, !tbaa !144
  %53 = icmp eq i16 %50, %52
  br i1 %53, label %44, label %54, !llvm.loop !145

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.bSensor, ptr %46, i64 0, i32 2
  %56 = getelementptr inbounds %struct.bSensor, ptr %46, i64 0, i32 3
  tail call void @init_sensor(ptr noundef nonnull %46) #9
  %57 = load i16, ptr %55, align 8, !tbaa !132
  store i16 %57, ptr %56, align 2, !tbaa !144
  br label %58

58:                                               ; preds = %44, %54
  %59 = load ptr, ptr %42, align 8, !tbaa !38
  %60 = icmp eq ptr %59, null
  br i1 %60, label %320, label %41, !llvm.loop !146

61:                                               ; preds = %7
  %62 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %63 = load ptr, ptr %62, align 8, !tbaa !38
  %64 = icmp eq ptr %63, null
  br i1 %64, label %81, label %65

65:                                               ; preds = %61, %78
  %66 = phi ptr [ %79, %78 ], [ %63, %61 ]
  %67 = getelementptr inbounds %struct.Object, ptr %66, i64 0, i32 92
  br label %68

68:                                               ; preds = %72, %65
  %69 = phi ptr [ %67, %65 ], [ %70, %72 ]
  %70 = load ptr, ptr %69, align 8, !tbaa !38
  %71 = icmp eq ptr %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.bSensor, ptr %70, i64 0, i32 4
  %74 = load i16, ptr %73, align 4, !tbaa !116
  %75 = and i16 %74, 2
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %68, label %77, !llvm.loop !147

77:                                               ; preds = %72
  tail call void @BLI_remlink(ptr noundef nonnull %67, ptr noundef nonnull %70) #9
  tail call void @free_sensor(ptr noundef nonnull %70) #9
  br label %78

78:                                               ; preds = %68, %77
  %79 = load ptr, ptr %66, align 8, !tbaa !38
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %65, !llvm.loop !148

81:                                               ; preds = %78, %61
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.46) #9
  br label %320

82:                                               ; preds = %7
  %83 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %84 = load ptr, ptr %83, align 8, !tbaa !38
  %85 = icmp eq ptr %84, null
  br i1 %85, label %116, label %86

86:                                               ; preds = %82, %113
  %87 = phi ptr [ %114, %113 ], [ %84, %82 ]
  %88 = getelementptr inbounds %struct.Object, ptr %87, i64 0, i32 61
  %89 = load i16, ptr %88, align 4, !tbaa !118
  %90 = and i16 %89, 512
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %113, label %92

92:                                               ; preds = %86
  %93 = and i16 %89, -513
  store i16 %93, ptr %88, align 4, !tbaa !118
  %94 = tail call ptr @new_controller(i32 noundef 0) #9
  %95 = getelementptr inbounds %struct.bController, ptr %94, i64 0, i32 11
  tail call void @make_unique_prop_names(ptr noundef %0, ptr noundef nonnull %95)
  %96 = load i16, ptr %88, align 4, !tbaa !118
  %97 = or i16 %96, 2048
  store i16 %97, ptr %88, align 4, !tbaa !118
  %98 = getelementptr inbounds %struct.Object, ptr %87, i64 0, i32 93
  tail call void @BLI_addtail(ptr noundef nonnull %98, ptr noundef %94) #9
  %99 = getelementptr inbounds %struct.Object, ptr %87, i64 0, i32 123
  %100 = load i32, ptr %99, align 8, !tbaa !120
  br label %101

101:                                              ; preds = %92, %106
  %102 = phi i32 [ 0, %92 ], [ %107, %106 ]
  %103 = shl nuw i32 1, %102
  %104 = and i32 %100, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = add nuw nsw i32 %102, 1
  %108 = icmp eq i32 %107, 32
  br i1 %108, label %109, label %101, !llvm.loop !149

109:                                              ; preds = %101, %106
  %110 = phi i32 [ %102, %101 ], [ 32, %106 ]
  %111 = shl nuw i32 1, %110
  %112 = getelementptr inbounds %struct.bController, ptr %94, i64 0, i32 17
  store i32 %111, ptr %112, align 4, !tbaa !121
  br label %113

113:                                              ; preds = %109, %86
  %114 = load ptr, ptr %87, align 8, !tbaa !38
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %86, !llvm.loop !150

116:                                              ; preds = %113, %82
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.47) #9
  br label %320

117:                                              ; preds = %7
  %118 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %119 = load ptr, ptr %118, align 8, !tbaa !38
  %120 = icmp eq ptr %119, null
  br i1 %120, label %320, label %121

121:                                              ; preds = %117, %130
  %122 = phi ptr [ %131, %130 ], [ %119, %117 ]
  %123 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 61
  %124 = load i16, ptr %123, align 4, !tbaa !118
  %125 = and i16 %124, 4096
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %121
  %128 = and i16 %124, -4097
  store i16 %128, ptr %123, align 4, !tbaa !118
  %129 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 123
  store i32 1073741823, ptr %129, align 8, !tbaa !120
  br label %130

130:                                              ; preds = %121, %127
  %131 = load ptr, ptr %122, align 8, !tbaa !38
  %132 = icmp eq ptr %131, null
  br i1 %132, label %320, label %121, !llvm.loop !151

133:                                              ; preds = %7
  %134 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %135 = load ptr, ptr %134, align 8, !tbaa !38
  %136 = icmp eq ptr %135, null
  br i1 %136, label %320, label %137

137:                                              ; preds = %133, %149
  %138 = phi ptr [ %150, %149 ], [ %135, %133 ]
  %139 = getelementptr inbounds %struct.Object, ptr %138, i64 0, i32 61
  %140 = load i16, ptr %139, align 4, !tbaa !118
  %141 = and i16 %140, 8192
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %137
  %144 = and i16 %140, -8193
  store i16 %144, ptr %139, align 4, !tbaa !118
  %145 = getelementptr inbounds %struct.Object, ptr %138, i64 0, i32 124
  %146 = load i32, ptr %145, align 4, !tbaa !152
  %147 = getelementptr inbounds %struct.Object, ptr %138, i64 0, i32 123
  %148 = tail call i32 @llvm.umax.i32(i32 %146, i32 1)
  store i32 %148, ptr %147, align 8
  br label %149

149:                                              ; preds = %143, %137
  %150 = load ptr, ptr %138, align 8, !tbaa !38
  %151 = icmp eq ptr %150, null
  br i1 %151, label %320, label %137, !llvm.loop !153

152:                                              ; preds = %7
  %153 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %154 = load ptr, ptr %153, align 8, !tbaa !38
  %155 = icmp eq ptr %154, null
  br i1 %155, label %320, label %156

156:                                              ; preds = %152, %173
  %157 = phi ptr [ %174, %173 ], [ %154, %152 ]
  %158 = getelementptr inbounds %struct.Object, ptr %157, i64 0, i32 93
  br label %159

159:                                              ; preds = %163, %156
  %160 = phi ptr [ %158, %156 ], [ %161, %163 ]
  %161 = load ptr, ptr %160, align 8, !tbaa !38
  %162 = icmp eq ptr %161, null
  br i1 %162, label %173, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.bController, ptr %161, i64 0, i32 3
  %165 = load i16, ptr %164, align 8, !tbaa !128
  %166 = getelementptr inbounds %struct.bController, ptr %161, i64 0, i32 7
  %167 = load i16, ptr %166, align 8, !tbaa !154
  %168 = icmp eq i16 %165, %167
  br i1 %168, label %159, label %169, !llvm.loop !155

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.bController, ptr %161, i64 0, i32 3
  %171 = getelementptr inbounds %struct.bController, ptr %161, i64 0, i32 7
  tail call void @init_controller(ptr noundef nonnull %161) #9
  %172 = load i16, ptr %170, align 8, !tbaa !128
  store i16 %172, ptr %171, align 8, !tbaa !154
  br label %173

173:                                              ; preds = %159, %169
  %174 = load ptr, ptr %157, align 8, !tbaa !38
  %175 = icmp eq ptr %174, null
  br i1 %175, label %320, label %156, !llvm.loop !156

176:                                              ; preds = %7
  %177 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %178 = load ptr, ptr %177, align 8, !tbaa !38
  %179 = icmp eq ptr %178, null
  br i1 %179, label %196, label %180

180:                                              ; preds = %176, %193
  %181 = phi ptr [ %194, %193 ], [ %178, %176 ]
  %182 = getelementptr inbounds %struct.Object, ptr %181, i64 0, i32 93
  br label %183

183:                                              ; preds = %187, %180
  %184 = phi ptr [ %182, %180 ], [ %185, %187 ]
  %185 = load ptr, ptr %184, align 8, !tbaa !38
  %186 = icmp eq ptr %185, null
  br i1 %186, label %193, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.bController, ptr %185, i64 0, i32 4
  %189 = load i16, ptr %188, align 2, !tbaa !157
  %190 = and i16 %189, 2
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %183, label %192, !llvm.loop !158

192:                                              ; preds = %187
  tail call void @BLI_remlink(ptr noundef nonnull %182, ptr noundef nonnull %185) #9
  tail call void @unlink_controller(ptr noundef nonnull %185) #9
  tail call void @free_controller(ptr noundef nonnull %185) #9
  br label %193

193:                                              ; preds = %183, %192
  %194 = load ptr, ptr %181, align 8, !tbaa !38
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %180, !llvm.loop !159

196:                                              ; preds = %193, %176
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.48) #9
  br label %320

197:                                              ; preds = %7
  %198 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %199 = load ptr, ptr %198, align 8, !tbaa !38
  %200 = icmp eq ptr %199, null
  br i1 %200, label %217, label %201

201:                                              ; preds = %197, %214
  %202 = phi ptr [ %215, %214 ], [ %199, %197 ]
  %203 = getelementptr inbounds %struct.Object, ptr %202, i64 0, i32 61
  %204 = load i16, ptr %203, align 4, !tbaa !118
  %205 = and i16 %204, 1024
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %214, label %207

207:                                              ; preds = %201
  %208 = and i16 %204, -1025
  store i16 %208, ptr %203, align 4, !tbaa !118
  %209 = tail call ptr @new_actuator(i32 noundef 0) #9
  %210 = getelementptr inbounds %struct.bActuator, ptr %209, i64 0, i32 7
  tail call void @make_unique_prop_names(ptr noundef %0, ptr noundef nonnull %210)
  %211 = getelementptr inbounds %struct.Object, ptr %202, i64 0, i32 94
  tail call void @BLI_addtail(ptr noundef nonnull %211, ptr noundef %209) #9
  %212 = load i16, ptr %203, align 4, !tbaa !118
  %213 = or i16 %212, 128
  store i16 %213, ptr %203, align 4, !tbaa !118
  br label %214

214:                                              ; preds = %201, %207
  %215 = load ptr, ptr %202, align 8, !tbaa !38
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %201, !llvm.loop !160

217:                                              ; preds = %214, %197
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.49) #9
  br label %320

218:                                              ; preds = %7
  %219 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %220 = load ptr, ptr %219, align 8, !tbaa !38
  %221 = icmp eq ptr %220, null
  br i1 %221, label %320, label %222

222:                                              ; preds = %218, %239
  %223 = phi ptr [ %240, %239 ], [ %220, %218 ]
  %224 = getelementptr inbounds %struct.Object, ptr %223, i64 0, i32 94
  br label %225

225:                                              ; preds = %229, %222
  %226 = phi ptr [ %224, %222 ], [ %227, %229 ]
  %227 = load ptr, ptr %226, align 8, !tbaa !38
  %228 = icmp eq ptr %227, null
  br i1 %228, label %239, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.bActuator, ptr %227, i64 0, i32 3
  %231 = load i16, ptr %230, align 8, !tbaa !139
  %232 = getelementptr inbounds %struct.bActuator, ptr %227, i64 0, i32 5
  %233 = load i16, ptr %232, align 4, !tbaa !161
  %234 = icmp eq i16 %231, %233
  br i1 %234, label %225, label %235, !llvm.loop !162

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.bActuator, ptr %227, i64 0, i32 3
  %237 = getelementptr inbounds %struct.bActuator, ptr %227, i64 0, i32 5
  tail call void @init_actuator(ptr noundef nonnull %227) #9
  %238 = load i16, ptr %236, align 8, !tbaa !139
  store i16 %238, ptr %237, align 4, !tbaa !161
  br label %239

239:                                              ; preds = %225, %235
  %240 = load ptr, ptr %223, align 8, !tbaa !38
  %241 = icmp eq ptr %240, null
  br i1 %241, label %320, label %222, !llvm.loop !163

242:                                              ; preds = %7
  %243 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %244 = load ptr, ptr %243, align 8, !tbaa !38
  %245 = icmp eq ptr %244, null
  br i1 %245, label %262, label %246

246:                                              ; preds = %242, %259
  %247 = phi ptr [ %260, %259 ], [ %244, %242 ]
  %248 = getelementptr inbounds %struct.Object, ptr %247, i64 0, i32 94
  br label %249

249:                                              ; preds = %253, %246
  %250 = phi ptr [ %248, %246 ], [ %251, %253 ]
  %251 = load ptr, ptr %250, align 8, !tbaa !38
  %252 = icmp eq ptr %251, null
  br i1 %252, label %259, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.bActuator, ptr %251, i64 0, i32 4
  %255 = load i16, ptr %254, align 2, !tbaa !114
  %256 = and i16 %255, 2
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %249, label %258, !llvm.loop !164

258:                                              ; preds = %253
  tail call void @BLI_remlink(ptr noundef nonnull %248, ptr noundef nonnull %251) #9
  tail call void @unlink_actuator(ptr noundef nonnull %251) #9
  tail call void @free_actuator(ptr noundef nonnull %251) #9
  br label %259

259:                                              ; preds = %249, %258
  %260 = load ptr, ptr %247, align 8, !tbaa !38
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %246, !llvm.loop !165

262:                                              ; preds = %259, %242
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.50) #9
  br label %320

263:                                              ; preds = %7
  %264 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %265 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 31
  br label %266

266:                                              ; preds = %317, %263
  %267 = phi ptr [ %264, %263 ], [ %268, %317 ]
  %268 = load ptr, ptr %267, align 8, !tbaa !38
  %269 = icmp eq ptr %268, null
  br i1 %269, label %320, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.Object, ptr %268, i64 0, i32 94
  %272 = load ptr, ptr %271, align 8, !tbaa !38
  %273 = icmp eq ptr %272, null
  br i1 %273, label %317, label %274

274:                                              ; preds = %270, %313
  %275 = phi ptr [ %315, %313 ], [ %272, %270 ]
  %276 = phi i32 [ %314, %313 ], [ 0, %270 ]
  %277 = getelementptr inbounds %struct.bActuator, ptr %275, i64 0, i32 3
  %278 = load i16, ptr %277, align 8, !tbaa !139
  %279 = icmp eq i16 %278, 5
  br i1 %279, label %280, label %313

280:                                              ; preds = %274
  %281 = getelementptr inbounds %struct.bActuator, ptr %275, i64 0, i32 8
  %282 = load ptr, ptr %281, align 8, !tbaa !166
  %283 = getelementptr inbounds %struct.bSoundActuator, ptr %282, i64 0, i32 1
  %284 = load i16, ptr %283, align 2, !tbaa !167
  switch i16 %284, label %285 [
    i16 0, label %310
    i16 -2, label %309
  ]

285:                                              ; preds = %280
  %286 = sext i16 %284 to i32
  br label %287

287:                                              ; preds = %287, %285
  %288 = phi ptr [ %290, %287 ], [ %265, %285 ]
  %289 = phi i32 [ %294, %287 ], [ 1, %285 ]
  %290 = load ptr, ptr %288, align 8, !tbaa !38
  %291 = icmp eq ptr %290, null
  %292 = icmp eq i32 %289, %286
  %293 = select i1 %291, i1 true, i1 %292
  %294 = add nuw nsw i32 %289, 1
  br i1 %293, label %295, label %287, !llvm.loop !170

295:                                              ; preds = %287
  %296 = getelementptr inbounds %struct.bSoundActuator, ptr %282, i64 0, i32 7
  %297 = load ptr, ptr %296, align 8, !tbaa !171
  %298 = icmp eq ptr %297, null
  br i1 %298, label %303, label %299

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.ID, ptr %297, i64 0, i32 6
  %301 = load i32, ptr %300, align 4, !tbaa !172
  %302 = add nsw i32 %301, -1
  store i32 %302, ptr %300, align 4, !tbaa !172
  br label %303

303:                                              ; preds = %299, %295
  store ptr %290, ptr %296, align 8, !tbaa !171
  br i1 %291, label %308, label %304

304:                                              ; preds = %303
  %305 = getelementptr inbounds %struct.ID, ptr %290, i64 0, i32 6
  %306 = load i32, ptr %305, align 4, !tbaa !172
  %307 = add nsw i32 %306, 1
  store i32 %307, ptr %305, align 4, !tbaa !172
  br label %308

308:                                              ; preds = %304, %303
  store i16 0, ptr %283, align 2, !tbaa !167
  br label %310

309:                                              ; preds = %280
  br label %310

310:                                              ; preds = %280, %309, %308
  %311 = phi i32 [ %276, %280 ], [ 1, %308 ], [ %276, %309 ]
  %312 = phi i1 [ true, %280 ], [ true, %308 ], [ false, %309 ]
  br i1 %312, label %313, label %317

313:                                              ; preds = %310, %274
  %314 = phi i32 [ %311, %310 ], [ %276, %274 ]
  %315 = load ptr, ptr %275, align 8, !tbaa !38
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %274, !llvm.loop !173

317:                                              ; preds = %313, %310, %270
  %318 = phi i32 [ 0, %270 ], [ %314, %313 ], [ %311, %310 ]
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %266, label %320, !llvm.loop !174

320:                                              ; preds = %317, %266, %239, %173, %149, %130, %58, %218, %152, %133, %117, %37, %8, %12, %36, %81, %116, %196, %217, %262, %7, %3
  ret void
}

declare void @uiBoundsBlock(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiBlockLayout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @UI_GetStyle() local_unnamed_addr #2

declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiDefBlockBut(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef ptr @controller_menu(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.controller_menu, i16 noundef signext 2) #9
  tail call void @uiBlockSetButmFunc(ptr noundef %4, ptr noundef nonnull @do_controller_menu, ptr noundef null) #9
  %5 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef -20, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #9
  %6 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef -40, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.3) #9
  %7 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 27648, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef -46, i16 noundef signext 160, i16 noundef signext 6, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #9
  %8 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef -66, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #9
  %9 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.54, i32 noundef 0, i32 noundef -86, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 3.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.3) #9
  tail call void @uiBlockSetDirection(ptr noundef %4, i8 noundef zeroext 1) #9
  tail call void @uiEndBlock(ptr noundef %0, ptr noundef %4) #9
  ret ptr %4
}

declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiDefButBitS(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @uiLayoutSetContextPointer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiItemMenuEnumO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutBox(ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @uiTemplateGameStates(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemS(ptr noundef) local_unnamed_addr #2

declare void @uiLayoutSetAlignment(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiButSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiSetButLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @uiBlockLayoutResolve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef ptr @sensor_menu(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.sensor_menu, i16 noundef signext 2) #9
  tail call void @uiBlockSetButmFunc(ptr noundef %4, ptr noundef nonnull @do_sensor_menu, ptr noundef null) #9
  %5 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef -20, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #9
  %6 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef -40, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.3) #9
  %7 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 27648, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef -46, i16 noundef signext 160, i16 noundef signext 6, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #9
  %8 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.78, i32 noundef 0, i32 noundef -66, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #9
  %9 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.79, i32 noundef 0, i32 noundef -86, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.3) #9
  tail call void @uiBlockSetDirection(ptr noundef %4, i8 noundef zeroext 1) #9
  tail call void @uiEndBlock(ptr noundef %0, ptr noundef %4) #9
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @actuator_menu(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.actuator_menu, i16 noundef signext 2) #9
  tail call void @uiBlockSetButmFunc(ptr noundef %4, ptr noundef nonnull @do_actuator_menu, ptr noundef null) #9
  %5 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef -20, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #9
  %6 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef -40, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.3) #9
  %7 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 27648, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef -46, i16 noundef signext 160, i16 noundef signext 6, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #9
  %8 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.154, i32 noundef 0, i32 noundef -66, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #9
  %9 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.155, i32 noundef 0, i32 noundef -86, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.3) #9
  tail call void @uiBlockSetDirection(ptr noundef %4, i8 noundef zeroext 1) #9
  tail call void @uiEndBlock(ptr noundef %0, ptr noundef %4) #9
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_brick_actuator(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.PointerRNA, align 8
  %12 = alloca %struct.PointerRNA, align 8
  %13 = alloca %struct.PointerRNA, align 8
  %14 = alloca %struct.PointerRNA, align 8
  %15 = alloca %struct.PointerRNA, align 8
  %16 = alloca %struct.PointerRNA, align 8
  %17 = alloca %struct.PointerRNA, align 8
  %18 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.57) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %406, label %20

20:                                               ; preds = %3
  %21 = tail call ptr @uiLayoutBox(ptr noundef %0) #9
  %22 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.23) #9
  %23 = trunc i32 %22 to i8
  tail call void @uiLayoutSetActive(ptr noundef %21, i8 noundef zeroext %23) #9
  %24 = tail call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.14) #9
  switch i32 %24, label %406 [
    i32 15, label %25
    i32 23, label %47
    i32 3, label %118
    i32 9, label %121
    i32 10, label %162
    i32 19, label %193
    i32 17, label %203
    i32 14, label %207
    i32 0, label %216
    i32 20, label %267
    i32 6, label %276
    i32 13, label %294
    i32 11, label %311
    i32 21, label %315
    i32 5, label %332
    i32 22, label %348
    i32 18, label %351
    i32 24, label %353
    i32 25, label %380
  ]

25:                                               ; preds = %20
  %26 = load ptr, ptr %1, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #9
  call void @RNA_pointer_create(ptr noundef %26, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %26, ptr noundef nonnull %17) #9
  %27 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %27, ptr noundef nonnull %1, ptr noundef nonnull @.str.175, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  %28 = call ptr @uiLayoutRow(ptr noundef %27, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %28, ptr noundef nonnull %1, ptr noundef nonnull @.str.176, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %28, ptr noundef nonnull %1, ptr noundef nonnull @.str.177, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %29 = call ptr @uiLayoutColumn(ptr noundef %28, i32 noundef 0) #9
  %30 = call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.177) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.176) #9
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i8
  br label %36

36:                                               ; preds = %32, %25
  %37 = phi i8 [ 1, %25 ], [ %35, %32 ]
  call void @uiLayoutSetActive(ptr noundef %29, i8 noundef zeroext %37) #9
  call void @uiItemR(ptr noundef %29, ptr noundef nonnull %1, ptr noundef nonnull @.str.178, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %38 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %38, ptr noundef nonnull %1, ptr noundef nonnull @.str.179, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %38, ptr noundef nonnull %1, ptr noundef nonnull @.str.180, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %39 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  %40 = call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.175) #9
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  call void @uiItemPointerR(ptr noundef %39, ptr noundef nonnull %1, ptr noundef nonnull @.str.115, ptr noundef nonnull %17, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #9
  br label %44

43:                                               ; preds = %36
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %1, ptr noundef nonnull @.str.181, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %1, ptr noundef nonnull @.str.182, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %44

44:                                               ; preds = %42, %43
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %1, ptr noundef nonnull @.str.183, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %45 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %45, ptr noundef nonnull %1, ptr noundef nonnull @.str.184, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %45, ptr noundef nonnull %1, ptr noundef nonnull @.str.185, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %46 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %46, ptr noundef nonnull %1, ptr noundef nonnull @.str.186, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %46, ptr noundef nonnull %1, ptr noundef nonnull @.str.187, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %46, ptr noundef nonnull %1, ptr noundef nonnull @.str.188, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  call void @uiItemPointerR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.189, ptr noundef nonnull %17, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #9
  br label %406

47:                                               ; preds = %20
  %48 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !125
  %50 = getelementptr inbounds %struct.bActuator, ptr %49, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !166
  %52 = load ptr, ptr %1, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #9
  %53 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 3
  %54 = load i16, ptr %53, align 8, !tbaa !135
  %55 = icmp eq i16 %54, 25
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  tail call void @uiItemL(ptr noundef %21, ptr noundef nonnull @.str.190, i32 noundef 0) #9
  br label %117

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 18
  %59 = load ptr, ptr %58, align 8, !tbaa !136
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  call void @RNA_pointer_create(ptr noundef %52, ptr noundef nonnull @RNA_Pose, ptr noundef nonnull %59, ptr noundef nonnull %15) #9
  %62 = call ptr @RNA_struct_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.107) #9
  br label %63

63:                                               ; preds = %61, %57
  %64 = phi ptr [ %62, %61 ], [ null, %57 ]
  call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %65 = call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.74) #9
  switch i32 %65, label %117 [
    i32 5, label %109
    i32 1, label %66
    i32 2, label %66
    i32 3, label %73
    i32 4, label %101
  ]

66:                                               ; preds = %63, %63
  %67 = load ptr, ptr %58, align 8, !tbaa !136
  %68 = icmp eq ptr %67, null
  br i1 %68, label %117, label %69

69:                                               ; preds = %66
  call void @uiItemPointerR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.108, ptr noundef nonnull %15, ptr noundef nonnull @.str.107, ptr noundef null, i32 noundef 174) #9
  %70 = call i32 @RNA_property_collection_lookup_string(ptr noundef nonnull %15, ptr noundef %64, ptr noundef %51, ptr noundef nonnull %16) #9
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %117, label %72

72:                                               ; preds = %69
  call void @uiItemPointerR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.109, ptr noundef nonnull %16, ptr noundef nonnull @.str.110, ptr noundef null, i32 noundef 177) #9
  br label %117

73:                                               ; preds = %63
  %74 = load ptr, ptr %58, align 8, !tbaa !136
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  call void @uiItemPointerR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.108, ptr noundef nonnull %15, ptr noundef nonnull @.str.107, ptr noundef null, i32 noundef 174) #9
  %77 = call i32 @RNA_property_collection_lookup_string(ptr noundef nonnull %15, ptr noundef %64, ptr noundef %51, ptr noundef nonnull %16) #9
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  call void @uiItemPointerR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.109, ptr noundef nonnull %16, ptr noundef nonnull @.str.110, ptr noundef null, i32 noundef 177) #9
  br label %80

80:                                               ; preds = %79, %76, %73
  call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.140, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %81 = getelementptr inbounds %struct.bArmatureActuator, ptr %51, i64 0, i32 1
  %82 = load i16, ptr %53, align 8, !tbaa !135
  %83 = icmp eq i16 %82, 25
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load ptr, ptr %58, align 8, !tbaa !136
  %86 = icmp eq ptr %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %85, ptr noundef %51) #9
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.bPoseChannel, ptr %88, i64 0, i32 3
  %92 = call ptr @BLI_findstring(ptr noundef nonnull %91, ptr noundef nonnull %81, i32 noundef 30) #9
  br label %93

93:                                               ; preds = %90, %87, %84, %80
  %94 = phi ptr [ null, %84 ], [ null, %87 ], [ null, %80 ], [ %92, %90 ]
  %95 = icmp eq ptr %94, null
  br i1 %95, label %117, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.bConstraint, ptr %94, i64 0, i32 3
  %98 = load i16, ptr %97, align 8, !tbaa !175
  %99 = icmp eq i16 %98, 3
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.191, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %117

101:                                              ; preds = %63
  %102 = load ptr, ptr %58, align 8, !tbaa !136
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  call void @uiItemPointerR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.108, ptr noundef nonnull %15, ptr noundef nonnull @.str.107, ptr noundef null, i32 noundef 174) #9
  %105 = call i32 @RNA_property_collection_lookup_string(ptr noundef nonnull %15, ptr noundef %64, ptr noundef %51, ptr noundef nonnull %16) #9
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  call void @uiItemPointerR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.109, ptr noundef nonnull %16, ptr noundef nonnull @.str.110, ptr noundef null, i32 noundef 177) #9
  br label %108

108:                                              ; preds = %107, %104, %101
  call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.192, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %117

109:                                              ; preds = %63
  %110 = load ptr, ptr %58, align 8, !tbaa !136
  %111 = icmp eq ptr %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  call void @uiItemPointerR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.108, ptr noundef nonnull %15, ptr noundef nonnull @.str.107, ptr noundef null, i32 noundef 174) #9
  %113 = call i32 @RNA_property_collection_lookup_string(ptr noundef nonnull %15, ptr noundef %64, ptr noundef %51, ptr noundef nonnull %16) #9
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  call void @uiItemPointerR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.109, ptr noundef nonnull %16, ptr noundef nonnull @.str.110, ptr noundef null, i32 noundef 177) #9
  br label %116

116:                                              ; preds = %115, %112, %109
  call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.193, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %117

117:                                              ; preds = %56, %63, %66, %69, %72, %93, %96, %100, %108, %116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #9
  br label %406

118:                                              ; preds = %20
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %119 = tail call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %119, ptr noundef %1, ptr noundef nonnull @.str.194, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %119, ptr noundef %1, ptr noundef nonnull @.str.149, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %120 = tail call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 1) #9
  tail call void @uiItemR(ptr noundef %120, ptr noundef %1, ptr noundef nonnull @.str.195, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %120, ptr noundef %1, ptr noundef nonnull @.str.196, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.197, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %406

121:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #9
  %122 = tail call ptr @CTX_data_main(ptr noundef %2) #9
  call void @RNA_main_pointer_create(ptr noundef %122, ptr noundef nonnull %14) #9
  call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %123 = call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.74) #9
  switch i32 %123, label %161 [
    i32 0, label %124
    i32 1, label %126
    i32 2, label %144
    i32 3, label %148
  ]

124:                                              ; preds = %121
  call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.198, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %125 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %125, ptr noundef %1, ptr noundef nonnull @.str.199, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %125, ptr noundef %1, ptr noundef nonnull @.str.200, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.197, i32 noundef 4, ptr noundef null, i32 noundef 0) #9
  br label %161

126:                                              ; preds = %121
  %127 = call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FE99999A0000000, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %127, ptr noundef %1, ptr noundef nonnull @.str.62, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %128 = call ptr @uiLayoutRow(ptr noundef %127, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %128, ptr noundef %1, ptr noundef nonnull @.str.178, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %128, ptr noundef %1, ptr noundef nonnull @.str.201, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %129 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  %130 = call ptr @uiLayoutColumn(ptr noundef %129, i32 noundef 1) #9
  call void @uiItemL(ptr noundef %130, ptr noundef nonnull @.str.202, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %130, ptr noundef %1, ptr noundef nonnull @.str.153, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  %131 = call ptr @uiLayoutColumn(ptr noundef %129, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %131, ptr noundef %1, ptr noundef nonnull @.str.203, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %132 = call ptr @uiLayoutColumn(ptr noundef %131, i32 noundef 0) #9
  %133 = call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.203) #9
  %134 = icmp eq i32 %133, 1
  %135 = zext i1 %134 to i8
  call void @uiLayoutSetActive(ptr noundef %132, i8 noundef zeroext %135) #9
  call void @uiItemR(ptr noundef %132, ptr noundef %1, ptr noundef nonnull @.str.144, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.197, i32 noundef 4, ptr noundef null, i32 noundef 0) #9
  %136 = call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FC3333340000000, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %136, ptr noundef %1, ptr noundef nonnull @.str.204, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %137 = call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.204) #9
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %126
  call void @uiItemPointerR(ptr noundef %136, ptr noundef %1, ptr noundef nonnull @.str.116, ptr noundef nonnull %14, ptr noundef nonnull @.str.117, ptr noundef null, i32 noundef 165) #9
  br label %141

140:                                              ; preds = %126
  call void @uiItemR(ptr noundef %136, ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %141

141:                                              ; preds = %140, %139
  %142 = call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FC3333340000000, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %142, ptr noundef %1, ptr noundef nonnull @.str.205, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %143 = call ptr @uiLayoutRow(ptr noundef %142, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %143, ptr noundef %1, ptr noundef nonnull @.str.206, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %143, ptr noundef %1, ptr noundef nonnull @.str.207, i32 noundef 4, ptr noundef null, i32 noundef 0) #9
  br label %161

144:                                              ; preds = %121
  call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.208, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %145 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %145, ptr noundef %1, ptr noundef nonnull @.str.197, i32 noundef 4, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %145, ptr noundef %1, ptr noundef nonnull @.str.206, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %146 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %146, ptr noundef %1, ptr noundef nonnull @.str.209, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %147 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %147, ptr noundef %1, ptr noundef nonnull @.str.210, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %147, ptr noundef %1, ptr noundef nonnull @.str.211, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %161

148:                                              ; preds = %121
  %149 = call ptr @uiLayoutSplit(ptr noundef %21, float noundef 7.500000e-01, i32 noundef 0) #9
  %150 = call ptr @uiLayoutRow(ptr noundef %149, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %150, ptr noundef %1, ptr noundef nonnull @.str.212, i32 noundef 4, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %150, ptr noundef %1, ptr noundef nonnull @.str.213, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %149, ptr noundef %1, ptr noundef nonnull @.str.214, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %151 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %151, ptr noundef %1, ptr noundef nonnull @.str.215, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %152 = call ptr @uiLayoutSplit(ptr noundef %151, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %152, ptr noundef %1, ptr noundef nonnull @.str.216, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %152, ptr noundef %1, ptr noundef nonnull @.str.217, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %153 = call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FC3333340000000, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %153, ptr noundef %1, ptr noundef nonnull @.str.204, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %154 = call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.204) #9
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %148
  call void @uiItemPointerR(ptr noundef %153, ptr noundef %1, ptr noundef nonnull @.str.116, ptr noundef nonnull %14, ptr noundef nonnull @.str.117, ptr noundef null, i32 noundef 165) #9
  br label %158

157:                                              ; preds = %148
  call void @uiItemR(ptr noundef %153, ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %158

158:                                              ; preds = %157, %156
  %159 = call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FC3333340000000, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %159, ptr noundef %1, ptr noundef nonnull @.str.205, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %160 = call ptr @uiLayoutRow(ptr noundef %159, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %160, ptr noundef %1, ptr noundef nonnull @.str.206, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %160, ptr noundef %1, ptr noundef nonnull @.str.207, i32 noundef 4, ptr noundef null, i32 noundef 0) #9
  br label %161

161:                                              ; preds = %121, %124, %141, %144, %158
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #9
  br label %406

162:                                              ; preds = %20
  %163 = load ptr, ptr %1, align 8, !tbaa !133
  tail call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %164 = tail call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.74) #9
  switch i32 %164, label %406 [
    i32 0, label %165
    i32 4, label %184
    i32 2, label %171
    i32 3, label %179
  ]

165:                                              ; preds = %162
  %166 = tail call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %166, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %166, ptr noundef nonnull %1, ptr noundef nonnull @.str.206, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %167 = tail call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #9
  %168 = tail call ptr @uiLayoutRow(ptr noundef %167, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %168, ptr noundef nonnull %1, ptr noundef nonnull @.str.218, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %167, ptr noundef nonnull %1, ptr noundef nonnull @.str.219, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %169 = tail call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #9
  %170 = tail call ptr @uiLayoutRow(ptr noundef %169, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %170, ptr noundef nonnull %1, ptr noundef nonnull @.str.220, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %169, ptr noundef nonnull %1, ptr noundef nonnull @.str.221, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  br label %406

171:                                              ; preds = %162
  %172 = getelementptr inbounds %struct.Object, ptr %163, i64 0, i32 3
  %173 = load i16, ptr %172, align 8, !tbaa !135
  %174 = icmp eq i16 %173, 1
  br i1 %174, label %176, label %175

175:                                              ; preds = %171
  tail call void @uiItemL(ptr noundef %21, ptr noundef nonnull @.str.222, i32 noundef 0) #9
  br label %406

176:                                              ; preds = %171
  %177 = tail call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FE3333340000000, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %177, ptr noundef nonnull %1, ptr noundef nonnull @.str.223, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %178 = tail call ptr @uiLayoutRow(ptr noundef %177, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %178, ptr noundef nonnull %1, ptr noundef nonnull @.str.224, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %178, ptr noundef nonnull %1, ptr noundef nonnull @.str.225, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  br label %406

179:                                              ; preds = %162
  %180 = tail call ptr @uiLayoutSplit(ptr noundef %21, float noundef 5.000000e-01, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %180, ptr noundef nonnull %1, ptr noundef nonnull @.str.226, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %181 = tail call ptr @uiLayoutSplit(ptr noundef %180, float noundef 0x3FE6666660000000, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %181, ptr noundef nonnull %1, ptr noundef nonnull @.str.206, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %181, ptr noundef nonnull %1, ptr noundef nonnull @.str.227, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %182 = tail call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %182, ptr noundef nonnull %1, ptr noundef nonnull @.str.228, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %183 = tail call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %183, ptr noundef nonnull %1, ptr noundef nonnull @.str.229, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %406

184:                                              ; preds = %162
  %185 = getelementptr inbounds %struct.Object, ptr %163, i64 0, i32 3
  %186 = load i16, ptr %185, align 8, !tbaa !135
  %187 = icmp eq i16 %186, 1
  br i1 %187, label %189, label %188

188:                                              ; preds = %184
  tail call void @uiItemL(ptr noundef %21, ptr noundef nonnull @.str.222, i32 noundef 0) #9
  br label %406

189:                                              ; preds = %184
  tail call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.230, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %190 = tail call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.230) #9
  %191 = icmp eq i32 %190, 4
  br i1 %191, label %192, label %406

192:                                              ; preds = %189
  tail call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.231, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %406

193:                                              ; preds = %20
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %194 = tail call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.74) #9
  switch i32 %194, label %202 [
    i32 12, label %195
    i32 1, label %196
  ]

195:                                              ; preds = %193
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.232, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.233, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %406

196:                                              ; preds = %193
  %197 = tail call ptr @uiLayoutSplit(ptr noundef %21, float noundef 7.500000e-01, i32 noundef 1) #9
  %198 = tail call ptr @uiLayoutRow(ptr noundef %197, i32 noundef 0) #9
  %199 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.234) #9
  %200 = icmp eq i32 %199, 1
  %201 = zext i1 %200 to i8
  tail call void @uiLayoutSetActive(ptr noundef %198, i8 noundef zeroext %201) #9
  tail call void @uiItemR(ptr noundef %198, ptr noundef %1, ptr noundef nonnull @.str.235, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %197, ptr noundef %1, ptr noundef nonnull @.str.234, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  br label %406

202:                                              ; preds = %193
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.232, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %406

203:                                              ; preds = %20
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %204 = tail call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.74) #9
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %406

206:                                              ; preds = %203
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.236, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %406

207:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #9
  %208 = tail call ptr @CTX_data_main(ptr noundef %2) #9
  call void @RNA_main_pointer_create(ptr noundef %208, ptr noundef nonnull %12) #9
  %209 = load ptr, ptr %1, align 8, !tbaa !133
  call void @RNA_pointer_create(ptr noundef %209, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %209, ptr noundef nonnull %13) #9
  call void @uiItemPointerR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.237, ptr noundef nonnull %12, ptr noundef nonnull @.str.238, ptr noundef null, i32 noundef 159) #9
  call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.141, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %210 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %210, ptr noundef nonnull %1, ptr noundef nonnull @.str.239, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %211 = call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.239) #9
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %207
  call void @uiItemR(ptr noundef %210, ptr noundef nonnull %1, ptr noundef nonnull @.str.240, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  br label %215

214:                                              ; preds = %207
  call void @uiItemPointerR(ptr noundef %210, ptr noundef nonnull %1, ptr noundef nonnull @.str.241, ptr noundef nonnull %13, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  br label %215

215:                                              ; preds = %213, %214
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #9
  br label %406

216:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  %217 = load ptr, ptr %1, align 8, !tbaa !133
  call void @RNA_pointer_create(ptr noundef %217, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %217, ptr noundef nonnull %11) #9
  %218 = call i32 @RNA_enum_get(ptr noundef nonnull %11, ptr noundef nonnull @.str.242) #9
  call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %219 = call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.74) #9
  switch i32 %219, label %266 [
    i32 0, label %220
    i32 1, label %237
    i32 2, label %257
  ]

220:                                              ; preds = %216
  %221 = call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #9
  %222 = call ptr @uiLayoutRow(ptr noundef %221, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %222, ptr noundef nonnull %1, ptr noundef nonnull @.str.243, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %221, ptr noundef nonnull %1, ptr noundef nonnull @.str.244, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %223 = call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #9
  %224 = call ptr @uiLayoutRow(ptr noundef %223, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %224, ptr noundef nonnull %1, ptr noundef nonnull @.str.245, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %223, ptr noundef nonnull %1, ptr noundef nonnull @.str.246, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %225 = add i32 %218, -2
  %226 = icmp ult i32 %225, 3
  br i1 %226, label %227, label %266

227:                                              ; preds = %220
  call void @uiItemL(ptr noundef %21, ptr noundef nonnull @.str.247, i32 noundef 0) #9
  %228 = call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #9
  %229 = call ptr @uiLayoutRow(ptr noundef %228, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %229, ptr noundef nonnull %1, ptr noundef nonnull @.str.248, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %228, ptr noundef nonnull %1, ptr noundef nonnull @.str.249, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %230 = call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #9
  %231 = call ptr @uiLayoutRow(ptr noundef %230, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %231, ptr noundef nonnull %1, ptr noundef nonnull @.str.250, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %230, ptr noundef nonnull %1, ptr noundef nonnull @.str.251, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %232 = call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #9
  %233 = call ptr @uiLayoutRow(ptr noundef %232, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %233, ptr noundef nonnull %1, ptr noundef nonnull @.str.218, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %234 = call ptr @uiLayoutRow(ptr noundef %232, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %234, ptr noundef nonnull %1, ptr noundef nonnull @.str.219, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %234, ptr noundef nonnull %1, ptr noundef nonnull @.str.252, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %235 = call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #9
  %236 = call ptr @uiLayoutRow(ptr noundef %235, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %236, ptr noundef nonnull %1, ptr noundef nonnull @.str.220, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %235, ptr noundef nonnull %1, ptr noundef nonnull @.str.221, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.197, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %266

237:                                              ; preds = %216
  call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.253, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %238 = call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #9
  %239 = call ptr @uiLayoutRow(ptr noundef %238, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %239, ptr noundef nonnull %1, ptr noundef nonnull @.str.218, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %238, ptr noundef nonnull %1, ptr noundef nonnull @.str.219, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %240 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  %241 = call ptr @uiLayoutColumn(ptr noundef %240, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %241, ptr noundef nonnull %1, ptr noundef nonnull @.str.254, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %242 = call ptr @uiLayoutColumn(ptr noundef %241, i32 noundef 1) #9
  %243 = call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.254) #9
  %244 = icmp eq i32 %243, 1
  %245 = zext i1 %244 to i8
  call void @uiLayoutSetActive(ptr noundef %242, i8 noundef zeroext %245) #9
  call void @uiItemR(ptr noundef %242, ptr noundef nonnull %1, ptr noundef nonnull @.str.255, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %242, ptr noundef nonnull %1, ptr noundef nonnull @.str.256, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %246 = call ptr @uiLayoutColumn(ptr noundef %240, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %246, ptr noundef nonnull %1, ptr noundef nonnull @.str.257, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %247 = call ptr @uiLayoutColumn(ptr noundef %246, i32 noundef 1) #9
  %248 = call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.257) #9
  %249 = icmp eq i32 %248, 1
  %250 = zext i1 %249 to i8
  call void @uiLayoutSetActive(ptr noundef %247, i8 noundef zeroext %250) #9
  call void @uiItemR(ptr noundef %247, ptr noundef nonnull %1, ptr noundef nonnull @.str.258, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %247, ptr noundef nonnull %1, ptr noundef nonnull @.str.259, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %251 = call ptr @uiLayoutColumn(ptr noundef %240, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %251, ptr noundef nonnull %1, ptr noundef nonnull @.str.260, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %252 = call ptr @uiLayoutColumn(ptr noundef %251, i32 noundef 1) #9
  %253 = call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.260) #9
  %254 = icmp eq i32 %253, 1
  %255 = zext i1 %254 to i8
  call void @uiLayoutSetActive(ptr noundef %252, i8 noundef zeroext %255) #9
  call void @uiItemR(ptr noundef %252, ptr noundef nonnull %1, ptr noundef nonnull @.str.261, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %252, ptr noundef nonnull %1, ptr noundef nonnull @.str.262, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %256 = call ptr @uiLayoutColumn(ptr noundef %21, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %256, ptr noundef nonnull %1, ptr noundef nonnull @.str.263, i32 noundef 4, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %256, ptr noundef nonnull %1, ptr noundef nonnull @.str.264, i32 noundef 4, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %256, ptr noundef nonnull %1, ptr noundef nonnull @.str.265, i32 noundef 4, ptr noundef null, i32 noundef 0) #9
  br label %266

257:                                              ; preds = %216
  %258 = call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #9
  %259 = call ptr @uiLayoutRow(ptr noundef %258, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %259, ptr noundef nonnull %1, ptr noundef nonnull @.str.243, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %260 = call ptr @uiLayoutRow(ptr noundef %258, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %260, ptr noundef nonnull %1, ptr noundef nonnull @.str.244, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %260, ptr noundef nonnull %1, ptr noundef nonnull @.str.266, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %261 = call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #9
  %262 = call ptr @uiLayoutRow(ptr noundef %261, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %262, ptr noundef nonnull %1, ptr noundef nonnull @.str.245, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %261, ptr noundef nonnull %1, ptr noundef nonnull @.str.246, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %263 = call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #9
  %264 = call ptr @uiLayoutRow(ptr noundef %263, i32 noundef 0) #9
  %265 = call ptr @uiLayoutSplit(ptr noundef %264, float noundef 0x3FE6666660000000, i32 noundef 0) #9
  call void @uiItemL(ptr noundef %265, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %265, ptr noundef nonnull %1, ptr noundef nonnull @.str.267, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  br label %266

266:                                              ; preds = %216, %220, %227, %237, %257
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  br label %406

267:                                              ; preds = %20
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %268 = tail call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.74) #9
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %406

270:                                              ; preds = %267
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %271 = tail call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %271, ptr noundef %1, ptr noundef nonnull @.str.268, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %272 = tail call ptr @uiLayoutRow(ptr noundef %271, i32 noundef 0) #9
  %273 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.268) #9
  %274 = icmp eq i32 %273, 1
  %275 = zext i1 %274 to i8
  tail call void @uiLayoutSetActive(ptr noundef %272, i8 noundef zeroext %275) #9
  tail call void @uiItemR(ptr noundef %272, ptr noundef %1, ptr noundef nonnull @.str.269, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %406

276:                                              ; preds = %20
  %277 = load ptr, ptr %1, align 8, !tbaa !133
  %278 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !125
  %280 = getelementptr inbounds %struct.bActuator, ptr %279, i64 0, i32 8
  %281 = load ptr, ptr %280, align 8, !tbaa !166
  %282 = getelementptr inbounds %struct.bPropertyActuator, ptr %281, i64 0, i32 4
  %283 = load ptr, ptr %282, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #9
  call void @RNA_pointer_create(ptr noundef %277, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %277, ptr noundef nonnull %9) #9
  call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemPointerR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.115, ptr noundef nonnull %9, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #9
  %284 = call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.74) #9
  switch i32 %284, label %293 [
    i32 2, label %287
    i32 0, label %286
    i32 1, label %285
  ]

285:                                              ; preds = %276
  call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.112, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %293

286:                                              ; preds = %276
  call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.112, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %293

287:                                              ; preds = %276
  %288 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %288, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %289 = icmp eq ptr %283, null
  br i1 %289, label %291, label %290

290:                                              ; preds = %287
  call void @RNA_pointer_create(ptr noundef nonnull %283, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef nonnull %283, ptr noundef nonnull %10) #9
  call void @uiItemPointerR(ptr noundef %288, ptr noundef nonnull %1, ptr noundef nonnull @.str.270, ptr noundef nonnull %10, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #9
  br label %293

291:                                              ; preds = %287
  %292 = call ptr @uiLayoutRow(ptr noundef %288, i32 noundef 0) #9
  call void @uiLayoutSetActive(ptr noundef %292, i8 noundef zeroext 0) #9
  call void @uiItemR(ptr noundef %292, ptr noundef nonnull %1, ptr noundef nonnull @.str.270, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %293

293:                                              ; preds = %276, %285, %286, %290, %291
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #9
  br label %406

294:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %295 = load ptr, ptr %1, align 8, !tbaa !133
  call void @RNA_pointer_create(ptr noundef %295, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %295, ptr noundef nonnull %8) #9
  %296 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %296, ptr noundef nonnull %1, ptr noundef nonnull @.str.151, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %296, ptr noundef nonnull %1, ptr noundef nonnull @.str.271, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %297 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  call void @uiItemPointerR(ptr noundef %297, ptr noundef nonnull %1, ptr noundef nonnull @.str.115, ptr noundef nonnull %8, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #9
  %298 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  %299 = call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.271) #9
  switch i32 %299, label %310 [
    i32 0, label %300
    i32 1, label %301
    i32 2, label %302
    i32 3, label %303
    i32 4, label %304
    i32 5, label %305
    i32 6, label %306
    i32 7, label %307
    i32 8, label %308
    i32 9, label %309
  ]

300:                                              ; preds = %294
  call void @uiItemR(ptr noundef %298, ptr noundef nonnull %1, ptr noundef nonnull @.str.272, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  br label %310

301:                                              ; preds = %294
  call void @uiItemL(ptr noundef %298, ptr noundef nonnull @.str.273, i32 noundef 0) #9
  br label %310

302:                                              ; preds = %294
  call void @uiItemR(ptr noundef %298, ptr noundef nonnull %1, ptr noundef nonnull @.str.274, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %310

303:                                              ; preds = %294
  call void @uiItemR(ptr noundef %298, ptr noundef nonnull %1, ptr noundef nonnull @.str.275, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %310

304:                                              ; preds = %294
  call void @uiItemR(ptr noundef %298, ptr noundef nonnull %1, ptr noundef nonnull @.str.276, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %298, ptr noundef nonnull %1, ptr noundef nonnull @.str.277, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %310

305:                                              ; preds = %294
  call void @uiItemR(ptr noundef %298, ptr noundef nonnull %1, ptr noundef nonnull @.str.278, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %310

306:                                              ; preds = %294
  call void @uiItemR(ptr noundef %298, ptr noundef nonnull %1, ptr noundef nonnull @.str.279, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %310

307:                                              ; preds = %294
  call void @uiItemR(ptr noundef %298, ptr noundef nonnull %1, ptr noundef nonnull @.str.280, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %298, ptr noundef nonnull %1, ptr noundef nonnull @.str.281, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %310

308:                                              ; preds = %294
  call void @uiItemR(ptr noundef %298, ptr noundef nonnull %1, ptr noundef nonnull @.str.282, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %298, ptr noundef nonnull %1, ptr noundef nonnull @.str.283, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %310

309:                                              ; preds = %294
  call void @uiItemR(ptr noundef %298, ptr noundef nonnull %1, ptr noundef nonnull @.str.284, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %310

310:                                              ; preds = %294, %300, %301, %302, %303, %304, %305, %306, %307, %308, %309
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  br label %406

311:                                              ; preds = %20
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %312 = tail call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.74) #9
  switch i32 %312, label %314 [
    i32 2, label %313
    i32 0, label %406
  ]

313:                                              ; preds = %311
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.285, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %406

314:                                              ; preds = %311
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.286, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %406

315:                                              ; preds = %20
  %316 = load ptr, ptr %1, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %317 = getelementptr inbounds %struct.Object, ptr %316, i64 0, i32 3
  %318 = load i16, ptr %317, align 8, !tbaa !135
  %319 = icmp eq i16 %318, 1
  br i1 %319, label %321, label %320

320:                                              ; preds = %315
  tail call void @uiItemL(ptr noundef %21, ptr noundef nonnull @.str.287, i32 noundef 0) #9
  br label %331

321:                                              ; preds = %315
  call void @RNA_pointer_create(ptr noundef %316, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %316, ptr noundef nonnull %7) #9
  %322 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %322, ptr noundef nonnull %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %322, ptr noundef nonnull %1, ptr noundef nonnull @.str.179, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %322, ptr noundef nonnull %1, ptr noundef nonnull @.str.180, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %323 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  %324 = call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.74) #9
  %325 = icmp eq i32 %324, 6
  br i1 %325, label %326, label %327

326:                                              ; preds = %321
  call void @uiItemPointerR(ptr noundef %323, ptr noundef nonnull %1, ptr noundef nonnull @.str.115, ptr noundef nonnull %7, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #9
  br label %328

327:                                              ; preds = %321
  call void @uiItemR(ptr noundef %323, ptr noundef nonnull %1, ptr noundef nonnull @.str.181, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %323, ptr noundef nonnull %1, ptr noundef nonnull @.str.182, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %328

328:                                              ; preds = %327, %326
  %329 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %329, ptr noundef nonnull %1, ptr noundef nonnull @.str.184, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %329, ptr noundef nonnull %1, ptr noundef nonnull @.str.185, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %330 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  call void @uiItemPointerR(ptr noundef %330, ptr noundef nonnull %1, ptr noundef nonnull @.str.189, ptr noundef nonnull %7, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #9
  br label %331

331:                                              ; preds = %320, %328
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  br label %406

332:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6)
  tail call void @uiTemplateID(ptr noundef %21, ptr noundef %2, ptr noundef %1, ptr noundef nonnull @.str.288, ptr noundef null, ptr noundef nonnull @.str.289, ptr noundef null) #9
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef %1, ptr noundef nonnull @.str.288) #9
  %333 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  %334 = load ptr, ptr %333, align 8, !tbaa !125
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %337

336:                                              ; preds = %332
  call void @uiItemL(ptr noundef %21, ptr noundef nonnull @.str.290, i32 noundef 0) #9
  br label %347

337:                                              ; preds = %332
  call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %338 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %338, ptr noundef %1, ptr noundef nonnull @.str.291, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %338, ptr noundef %1, ptr noundef nonnull @.str.292, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.293, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %339 = call ptr @uiLayoutColumn(ptr noundef %21, i32 noundef 0) #9
  %340 = call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.293) #9
  %341 = icmp eq i32 %340, 1
  %342 = zext i1 %341 to i8
  call void @uiLayoutSetActive(ptr noundef %339, i8 noundef zeroext %342) #9
  %343 = call ptr @uiLayoutRow(ptr noundef %339, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %343, ptr noundef %1, ptr noundef nonnull @.str.294, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %343, ptr noundef %1, ptr noundef nonnull @.str.295, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %344 = call ptr @uiLayoutRow(ptr noundef %339, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %344, ptr noundef %1, ptr noundef nonnull @.str.296, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %344, ptr noundef %1, ptr noundef nonnull @.str.297, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %345 = call ptr @uiLayoutRow(ptr noundef %339, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %345, ptr noundef %1, ptr noundef nonnull @.str.298, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %345, ptr noundef %1, ptr noundef nonnull @.str.299, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %346 = call ptr @uiLayoutRow(ptr noundef %339, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %346, ptr noundef %1, ptr noundef nonnull @.str.300, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %346, ptr noundef %1, ptr noundef nonnull @.str.301, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %347

347:                                              ; preds = %336, %337
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6)
  br label %406

348:                                              ; preds = %20
  %349 = load ptr, ptr %1, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @RNA_pointer_create(ptr noundef %349, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %349, ptr noundef nonnull %5) #9
  %350 = call ptr @uiLayoutSplit(ptr noundef %21, float noundef 0x3FD6666660000000, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %350, ptr noundef nonnull %1, ptr noundef nonnull @.str.302, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiTemplateLayers(ptr noundef %350, ptr noundef nonnull %1, ptr noundef nonnull @.str.56, ptr noundef nonnull %5, ptr noundef nonnull @.str.20, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  br label %406

351:                                              ; preds = %20
  %352 = tail call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %352, ptr noundef %1, ptr noundef nonnull @.str.303, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %352, ptr noundef %1, ptr noundef nonnull @.str.304, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %352, ptr noundef %1, ptr noundef nonnull @.str.183, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %406

353:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4)
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.140, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.305, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %354 = tail call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %354, ptr noundef %1, ptr noundef nonnull @.str.144, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %354, ptr noundef %1, ptr noundef nonnull @.str.306, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %355 = tail call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %355, ptr noundef %1, ptr noundef nonnull @.str.307, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %355, ptr noundef %1, ptr noundef nonnull @.str.308, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %356 = tail call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  %357 = tail call ptr @uiLayoutColumn(ptr noundef %356, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %357, ptr noundef %1, ptr noundef nonnull @.str.309, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %358 = tail call ptr @uiLayoutColumn(ptr noundef %356, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %358, ptr noundef %1, ptr noundef nonnull @.str.310, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %359 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.309) #9
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %353
  tail call void @uiLayoutSetActive(ptr noundef %358, i8 noundef zeroext 0) #9
  br label %362

362:                                              ; preds = %361, %353
  %363 = tail call ptr @uiLayoutColumn(ptr noundef %356, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %363, ptr noundef %1, ptr noundef nonnull @.str.311, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull @.str.305) #9
  %364 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %365 = load ptr, ptr %364, align 8, !tbaa !125
  %366 = icmp eq ptr %365, null
  br i1 %366, label %367, label %368

367:                                              ; preds = %362
  call void @uiLayoutSetActive(ptr noundef %363, i8 noundef zeroext 0) #9
  br label %368

368:                                              ; preds = %367, %362
  %369 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %369, ptr noundef %1, ptr noundef nonnull @.str.312, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %370 = call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.74) #9
  %371 = icmp eq i32 %370, 2
  br i1 %371, label %372, label %374

372:                                              ; preds = %368
  call void @uiItemR(ptr noundef %369, ptr noundef %1, ptr noundef nonnull @.str.313, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %373 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  br label %374

374:                                              ; preds = %372, %368
  %375 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %375, ptr noundef %1, ptr noundef nonnull @.str.314, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %376 = call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.74) #9
  %377 = icmp eq i32 %376, 2
  br i1 %377, label %379, label %378

378:                                              ; preds = %374
  call void @uiLayoutSetActive(ptr noundef %375, i8 noundef zeroext 0) #9
  br label %379

379:                                              ; preds = %374, %378
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4)
  br label %406

380:                                              ; preds = %20
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %381 = tail call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.74) #9
  switch i32 %381, label %406 [
    i32 0, label %382
    i32 1, label %384
  ]

382:                                              ; preds = %380
  %383 = tail call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %383, ptr noundef %1, ptr noundef nonnull @.str.315, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  br label %406

384:                                              ; preds = %380
  %385 = tail call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  %386 = tail call ptr @uiLayoutColumn(ptr noundef %385, i32 noundef 1) #9
  tail call void @uiItemR(ptr noundef %386, ptr noundef %1, ptr noundef nonnull @.str.316, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %387 = tail call ptr @uiLayoutColumn(ptr noundef %386, i32 noundef 1) #9
  %388 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.316) #9
  %389 = icmp eq i32 %388, 1
  %390 = zext i1 %389 to i8
  tail call void @uiLayoutSetActive(ptr noundef %387, i8 noundef zeroext %390) #9
  tail call void @uiItemR(ptr noundef %387, ptr noundef %1, ptr noundef nonnull @.str.317, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %387, ptr noundef %1, ptr noundef nonnull @.str.318, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %387, ptr noundef %1, ptr noundef nonnull @.str.319, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %387, ptr noundef %1, ptr noundef nonnull @.str.320, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %387, ptr noundef %1, ptr noundef nonnull @.str.321, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %391 = tail call ptr @uiLayoutColumn(ptr noundef %385, i32 noundef 1) #9
  tail call void @uiItemR(ptr noundef %391, ptr noundef %1, ptr noundef nonnull @.str.322, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %392 = tail call ptr @uiLayoutColumn(ptr noundef %391, i32 noundef 1) #9
  %393 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.322) #9
  %394 = icmp eq i32 %393, 1
  %395 = zext i1 %394 to i8
  tail call void @uiLayoutSetActive(ptr noundef %392, i8 noundef zeroext %395) #9
  tail call void @uiItemR(ptr noundef %392, ptr noundef %1, ptr noundef nonnull @.str.323, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %392, ptr noundef %1, ptr noundef nonnull @.str.324, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %392, ptr noundef %1, ptr noundef nonnull @.str.325, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %392, ptr noundef %1, ptr noundef nonnull @.str.326, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %392, ptr noundef %1, ptr noundef nonnull @.str.327, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %396 = tail call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 0) #9
  %397 = tail call ptr @uiLayoutSplit(ptr noundef %396, float noundef 5.000000e-01, i32 noundef 0) #9
  %398 = tail call ptr @uiLayoutSplit(ptr noundef %397, float noundef 5.000000e-01, i32 noundef 1) #9
  %399 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.316) #9
  %400 = icmp eq i32 %399, 1
  %401 = zext i1 %400 to i8
  tail call void @uiLayoutSetActive(ptr noundef %398, i8 noundef zeroext %401) #9
  tail call void @uiItemR(ptr noundef %398, ptr noundef %1, ptr noundef nonnull @.str.328, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %398, ptr noundef %1, ptr noundef nonnull @.str.329, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  %402 = tail call ptr @uiLayoutSplit(ptr noundef %397, float noundef 5.000000e-01, i32 noundef 1) #9
  %403 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.322) #9
  %404 = icmp eq i32 %403, 1
  %405 = zext i1 %404 to i8
  tail call void @uiLayoutSetActive(ptr noundef %402, i8 noundef zeroext %405) #9
  tail call void @uiItemR(ptr noundef %402, ptr noundef %1, ptr noundef nonnull @.str.330, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  tail call void @uiItemR(ptr noundef %402, ptr noundef %1, ptr noundef nonnull @.str.331, i32 noundef 8, ptr noundef null, i32 noundef 0) #9
  br label %406

406:                                              ; preds = %384, %382, %380, %314, %313, %311, %270, %267, %206, %203, %202, %196, %195, %192, %189, %188, %179, %176, %175, %165, %162, %44, %117, %118, %161, %215, %266, %293, %310, %331, %347, %348, %351, %379, %20, %3
  ret void
}

declare void @UI_view2d_totRect_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #2

declare void @uiComposeLinks(ptr noundef) local_unnamed_addr #2

declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_natstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @clear_sca_new_poins() local_unnamed_addr #2

declare ptr @new_sensor(i32 noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @init_sensor(ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @free_sensor(ptr noundef) local_unnamed_addr #2

declare ptr @new_controller(i32 noundef) local_unnamed_addr #2

declare void @init_controller(ptr noundef) local_unnamed_addr #2

declare void @unlink_controller(ptr noundef) local_unnamed_addr #2

declare void @free_controller(ptr noundef) local_unnamed_addr #2

declare ptr @new_actuator(i32 noundef) local_unnamed_addr #2

declare void @init_actuator(ptr noundef) local_unnamed_addr #2

declare void @unlink_actuator(ptr noundef) local_unnamed_addr #2

declare void @free_actuator(ptr noundef) local_unnamed_addr #2

declare void @uiBlockSetButmFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @do_controller_menu(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = tail call ptr @CTX_wm_space_logic(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  %6 = getelementptr inbounds %struct.SpaceLogic, ptr %5, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !108
  %8 = call fastcc ptr @get_selected_and_linked_obs(ptr noundef %0, ptr noundef nonnull %4, i16 noundef signext %7)
  %9 = load i16, ptr %4, align 2, !tbaa !34
  %10 = icmp sgt i16 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = and i32 %2, -3
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i32 %2, 1
  %15 = zext nneg i16 %9 to i64
  br label %20

16:                                               ; preds = %33, %3
  %17 = icmp sgt i16 %9, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %16
  %19 = zext nneg i16 %9 to i64
  br label %36

20:                                               ; preds = %11, %33
  %21 = phi i64 [ 0, %11 ], [ %34, %33 ]
  %22 = getelementptr inbounds ptr, ptr %8, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  br i1 %13, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 61
  %26 = load i16, ptr %25, align 4, !tbaa !118
  %27 = or i16 %26, 2048
  store i16 %27, ptr %25, align 4, !tbaa !118
  br label %33

28:                                               ; preds = %20
  br i1 %14, label %29, label %33

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 61
  %31 = load i16, ptr %30, align 4, !tbaa !118
  %32 = and i16 %31, -2049
  store i16 %32, ptr %30, align 4, !tbaa !118
  br label %33

33:                                               ; preds = %24, %29, %28
  %34 = add nuw nsw i64 %21, 1
  %35 = icmp eq i64 %34, %15
  br i1 %35, label %16, label %20, !llvm.loop !179

36:                                               ; preds = %18, %56
  %37 = phi i64 [ 0, %18 ], [ %57, %56 ]
  %38 = getelementptr inbounds ptr, ptr %8, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !38
  %40 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 93
  %41 = load ptr, ptr %40, align 8, !tbaa !38
  %42 = icmp eq ptr %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %36, %53
  %44 = phi ptr [ %54, %53 ], [ %41, %36 ]
  switch i32 %2, label %53 [
    i32 2, label %45
    i32 3, label %49
  ]

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.bController, ptr %44, i64 0, i32 4
  %47 = load i16, ptr %46, align 2, !tbaa !157
  %48 = or i16 %47, 1
  store i16 %48, ptr %46, align 2, !tbaa !157
  br label %53

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.bController, ptr %44, i64 0, i32 4
  %51 = load i16, ptr %50, align 2, !tbaa !157
  %52 = and i16 %51, -2
  store i16 %52, ptr %50, align 2, !tbaa !157
  br label %53

53:                                               ; preds = %43, %49, %45
  %54 = load ptr, ptr %44, align 8, !tbaa !38
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %43, !llvm.loop !180

56:                                               ; preds = %53, %36
  %57 = add nuw nsw i64 %37, 1
  %58 = icmp eq i64 %57, %19
  br i1 %58, label %59, label %36, !llvm.loop !181

59:                                               ; preds = %56, %16
  %60 = icmp eq ptr %8, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %62(ptr noundef nonnull %8) #9
  br label %63

63:                                               ; preds = %61, %59
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  ret void
}

declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiBlockSetDirection(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef ptr @controller_state_mask_menu(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.controller_state_mask_menu, i16 noundef signext 0) #9
  %5 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef -5, i32 noundef -5, i16 noundef signext 200, i16 noundef signext 34, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #9
  %6 = getelementptr inbounds %struct.bController, ptr %2, i64 0, i32 17
  %7 = getelementptr inbounds %struct.bController, ptr %2, i64 0, i32 17
  br label %8

8:                                                ; preds = %3, %37
  %9 = phi i32 [ 0, %3 ], [ %40, %37 ]
  %10 = phi i32 [ 0, %3 ], [ %38, %37 ]
  tail call void @uiBlockBeginAlign(ptr noundef %4) #9
  %11 = mul nsw i32 %10, 13
  br label %15

12:                                               ; preds = %15
  %13 = add nsw i32 %9, 15
  %14 = mul nsw i32 %10, 13
  br label %26

15:                                               ; preds = %8, %15
  %16 = phi i32 [ 0, %8 ], [ %24, %15 ]
  %17 = add nsw i32 %9, %16
  %18 = shl nuw nsw i32 1, %17
  %19 = mul nuw nsw i32 %16, 12
  %20 = add nsw i32 %19, %11
  %21 = shl i32 %20, 16
  %22 = ashr exact i32 %21, 16
  %23 = tail call ptr @uiDefButBitI(ptr noundef %4, i32 noundef 1536, i32 noundef %18, i32 noundef %17, ptr noundef nonnull @.str.3, i32 noundef %22, i32 noundef 12, i16 noundef signext 12, i16 noundef signext 12, ptr noundef nonnull %6, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #9
  tail call void @uiButSetFunc(ptr noundef %23, ptr noundef nonnull @check_controller_state_mask, ptr noundef %23, ptr noundef nonnull %6) #9
  %24 = add nuw nsw i32 %16, 1
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %12, label %15, !llvm.loop !182

26:                                               ; preds = %12, %26
  %27 = phi i32 [ 0, %12 ], [ %35, %26 ]
  %28 = add nsw i32 %13, %27
  %29 = shl nuw i32 1, %28
  %30 = mul nuw nsw i32 %27, 12
  %31 = add nsw i32 %30, %14
  %32 = shl i32 %31, 16
  %33 = ashr exact i32 %32, 16
  %34 = tail call ptr @uiDefButBitI(ptr noundef %4, i32 noundef 1536, i32 noundef %29, i32 noundef %28, ptr noundef nonnull @.str.3, i32 noundef %33, i32 noundef 0, i16 noundef signext 12, i16 noundef signext 12, ptr noundef nonnull %7, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #9
  tail call void @uiButSetFunc(ptr noundef %34, ptr noundef nonnull @check_controller_state_mask, ptr noundef %34, ptr noundef nonnull %7) #9
  %35 = add nuw nsw i32 %27, 1
  %36 = icmp eq i32 %35, 5
  br i1 %36, label %37, label %26, !llvm.loop !183

37:                                               ; preds = %26
  %38 = add nsw i32 %9, 5
  %39 = shl i32 %38, 16
  %40 = ashr exact i32 %39, 16
  %41 = icmp slt i32 %40, 15
  br i1 %41, label %8, label %42, !llvm.loop !184

42:                                               ; preds = %37
  tail call void @uiBlockEndAlign(ptr noundef %4) #9
  tail call void @uiBlockSetDirection(ptr noundef %4, i8 noundef zeroext 1) #9
  tail call void @uiEndBlock(ptr noundef %0, ptr noundef %4) #9
  ret ptr %4
}

declare void @uiItemEnumO(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #2

declare ptr @uiDefButBitI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @check_controller_state_mask(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %5 = load i16, ptr %4, align 4, !tbaa !185
  %6 = zext nneg i16 %5 to i32
  %7 = shl nuw i32 1, %6
  store i32 %7, ptr %2, align 4, !tbaa !124
  store i16 1, ptr %4, align 4, !tbaa !185
  ret void
}

declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @do_sensor_menu(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = tail call ptr @CTX_wm_space_logic(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  %6 = getelementptr inbounds %struct.SpaceLogic, ptr %5, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !108
  %8 = call fastcc ptr @get_selected_and_linked_obs(ptr noundef %0, ptr noundef nonnull %4, i16 noundef signext %7)
  %9 = load i16, ptr %4, align 2, !tbaa !34
  %10 = icmp sgt i16 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = and i32 %2, -3
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i32 %2, 1
  %15 = zext nneg i16 %9 to i64
  br label %20

16:                                               ; preds = %33, %3
  %17 = icmp sgt i16 %9, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %16
  %19 = zext nneg i16 %9 to i64
  br label %36

20:                                               ; preds = %11, %33
  %21 = phi i64 [ 0, %11 ], [ %34, %33 ]
  %22 = getelementptr inbounds ptr, ptr %8, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  br i1 %13, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 61
  %26 = load i16, ptr %25, align 4, !tbaa !118
  %27 = or i16 %26, 64
  store i16 %27, ptr %25, align 4, !tbaa !118
  br label %33

28:                                               ; preds = %20
  br i1 %14, label %29, label %33

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 61
  %31 = load i16, ptr %30, align 4, !tbaa !118
  %32 = and i16 %31, -65
  store i16 %32, ptr %30, align 4, !tbaa !118
  br label %33

33:                                               ; preds = %24, %29, %28
  %34 = add nuw nsw i64 %21, 1
  %35 = icmp eq i64 %34, %15
  br i1 %35, label %16, label %20, !llvm.loop !187

36:                                               ; preds = %18, %56
  %37 = phi i64 [ 0, %18 ], [ %57, %56 ]
  %38 = getelementptr inbounds ptr, ptr %8, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !38
  %40 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 92
  %41 = load ptr, ptr %40, align 8, !tbaa !38
  %42 = icmp eq ptr %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %36, %53
  %44 = phi ptr [ %54, %53 ], [ %41, %36 ]
  switch i32 %2, label %53 [
    i32 2, label %45
    i32 3, label %49
  ]

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.bSensor, ptr %44, i64 0, i32 4
  %47 = load i16, ptr %46, align 4, !tbaa !116
  %48 = or i16 %47, 1
  store i16 %48, ptr %46, align 4, !tbaa !116
  br label %53

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.bSensor, ptr %44, i64 0, i32 4
  %51 = load i16, ptr %50, align 4, !tbaa !116
  %52 = and i16 %51, -2
  store i16 %52, ptr %50, align 4, !tbaa !116
  br label %53

53:                                               ; preds = %43, %49, %45
  %54 = load ptr, ptr %44, align 8, !tbaa !38
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %43, !llvm.loop !188

56:                                               ; preds = %53, %36
  %57 = add nuw nsw i64 %37, 1
  %58 = icmp eq i64 %57, %19
  br i1 %58, label %59, label %36, !llvm.loop !189

59:                                               ; preds = %56, %16
  %60 = icmp eq ptr %8, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %62(ptr noundef nonnull %8) #9
  br label %63

63:                                               ; preds = %61, %59
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  ret void
}

declare ptr @uiFindInlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiItemPointerR(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_collection_lookup_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_main_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @do_actuator_menu(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = tail call ptr @CTX_wm_space_logic(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  %6 = getelementptr inbounds %struct.SpaceLogic, ptr %5, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !108
  %8 = call fastcc ptr @get_selected_and_linked_obs(ptr noundef %0, ptr noundef nonnull %4, i16 noundef signext %7)
  %9 = load i16, ptr %4, align 2, !tbaa !34
  %10 = icmp sgt i16 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = and i32 %2, -3
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i32 %2, 1
  %15 = zext nneg i16 %9 to i64
  br label %20

16:                                               ; preds = %33, %3
  %17 = icmp sgt i16 %9, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %16
  %19 = zext nneg i16 %9 to i64
  br label %36

20:                                               ; preds = %11, %33
  %21 = phi i64 [ 0, %11 ], [ %34, %33 ]
  %22 = getelementptr inbounds ptr, ptr %8, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  br i1 %13, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 61
  %26 = load i16, ptr %25, align 4, !tbaa !118
  %27 = or i16 %26, 128
  store i16 %27, ptr %25, align 4, !tbaa !118
  br label %33

28:                                               ; preds = %20
  br i1 %14, label %29, label %33

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 61
  %31 = load i16, ptr %30, align 4, !tbaa !118
  %32 = and i16 %31, -129
  store i16 %32, ptr %30, align 4, !tbaa !118
  br label %33

33:                                               ; preds = %24, %29, %28
  %34 = add nuw nsw i64 %21, 1
  %35 = icmp eq i64 %34, %15
  br i1 %35, label %16, label %20, !llvm.loop !190

36:                                               ; preds = %18, %56
  %37 = phi i64 [ 0, %18 ], [ %57, %56 ]
  %38 = getelementptr inbounds ptr, ptr %8, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !38
  %40 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 94
  %41 = load ptr, ptr %40, align 8, !tbaa !38
  %42 = icmp eq ptr %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %36, %53
  %44 = phi ptr [ %54, %53 ], [ %41, %36 ]
  switch i32 %2, label %53 [
    i32 2, label %45
    i32 3, label %49
  ]

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.bActuator, ptr %44, i64 0, i32 4
  %47 = load i16, ptr %46, align 2, !tbaa !114
  %48 = or i16 %47, 1
  store i16 %48, ptr %46, align 2, !tbaa !114
  br label %53

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.bActuator, ptr %44, i64 0, i32 4
  %51 = load i16, ptr %50, align 2, !tbaa !114
  %52 = and i16 %51, -2
  store i16 %52, ptr %50, align 2, !tbaa !114
  br label %53

53:                                               ; preds = %43, %49, %45
  %54 = load ptr, ptr %44, align 8, !tbaa !38
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %43, !llvm.loop !191

56:                                               ; preds = %53, %36
  %57 = add nuw nsw i64 %37, 1
  %58 = icmp eq i64 %57, %19
  br i1 %58, label %59, label %36, !llvm.loop !192

59:                                               ; preds = %56, %16
  %60 = icmp eq ptr %8, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %62(ptr noundef nonnull %8) #9
  br label %63

63:                                               ; preds = %61, %59
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  ret void
}

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiTemplateID(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiTemplateLayers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !36, i64 0}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !41, !42}
!44 = distinct !{!44, !41, !42}
!45 = distinct !{!45, !41, !42}
!46 = distinct !{!46, !41, !42}
!47 = distinct !{!47, !41, !42}
!48 = distinct !{!48, !41, !42}
!49 = distinct !{!49, !41, !42}
!50 = !{!51, !36, i64 966}
!51 = !{!"Object", !52, i64 0, !39, i64 120, !39, i64 128, !35, i64 136, !35, i64 138, !53, i64 140, !53, i64 144, !53, i64 148, !36, i64 152, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !54, i64 312, !39, i64 360, !55, i64 368, !55, i64 384, !55, i64 400, !55, i64 416, !53, i64 432, !53, i64 436, !39, i64 440, !39, i64 448, !53, i64 456, !53, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !56, i64 616, !56, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !53, i64 944, !35, i64 948, !35, i64 950, !35, i64 952, !35, i64 954, !35, i64 956, !35, i64 958, !35, i64 960, !35, i64 962, !35, i64 964, !36, i64 966, !36, i64 967, !53, i64 968, !53, i64 972, !53, i64 976, !53, i64 980, !53, i64 984, !56, i64 988, !56, i64 992, !56, i64 996, !56, i64 1000, !56, i64 1004, !56, i64 1008, !56, i64 1012, !56, i64 1016, !56, i64 1020, !56, i64 1024, !56, i64 1028, !56, i64 1032, !35, i64 1036, !35, i64 1038, !35, i64 1040, !36, i64 1042, !36, i64 1043, !35, i64 1044, !36, i64 1046, !36, i64 1047, !56, i64 1048, !56, i64 1052, !55, i64 1056, !55, i64 1072, !55, i64 1088, !55, i64 1104, !56, i64 1120, !35, i64 1124, !35, i64 1126, !36, i64 1128, !53, i64 1144, !53, i64 1148, !39, i64 1152, !36, i64 1160, !36, i64 1161, !35, i64 1162, !36, i64 1164, !55, i64 1176, !55, i64 1192, !55, i64 1208, !55, i64 1224, !39, i64 1240, !39, i64 1248, !39, i64 1256, !36, i64 1264, !36, i64 1265, !35, i64 1266, !56, i64 1268, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !57, i64 1304, !57, i64 1312, !53, i64 1320, !53, i64 1324, !55, i64 1328, !55, i64 1344, !39, i64 1360, !39, i64 1368, !39, i64 1376, !36, i64 1384, !39, i64 1392, !55, i64 1400, !39, i64 1416}
!52 = !{!"ID", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !36, i64 32, !35, i64 98, !53, i64 100, !53, i64 104, !53, i64 108, !39, i64 112}
!53 = !{!"int", !36, i64 0}
!54 = !{!"bAnimVizSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !35, i64 16, !35, i64 18, !35, i64 20, !35, i64 22, !35, i64 24, !35, i64 26, !35, i64 28, !35, i64 30, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44}
!55 = !{!"ListBase", !39, i64 0, !39, i64 8}
!56 = !{!"float", !36, i64 0}
!57 = !{!"long", !36, i64 0}
!58 = !{!59, !39, i64 16}
!59 = !{!"bController", !39, i64 0, !39, i64 8, !39, i64 16, !35, i64 24, !35, i64 26, !35, i64 28, !35, i64 30, !35, i64 32, !35, i64 34, !35, i64 36, !35, i64 38, !36, i64 40, !39, i64 104, !39, i64 112, !39, i64 120, !35, i64 128, !35, i64 130, !53, i64 132}
!60 = distinct !{!60, !41, !42}
!61 = !{!62, !39, i64 16}
!62 = !{!"bActuator", !39, i64 0, !39, i64 8, !39, i64 16, !35, i64 24, !35, i64 26, !35, i64 28, !35, i64 30, !36, i64 32, !39, i64 96, !39, i64 104}
!63 = distinct !{!63, !41, !42}
!64 = !{!65, !53, i64 232}
!65 = !{!"Scene", !52, i64 0, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !55, i64 152, !39, i64 168, !39, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !53, i64 232, !53, i64 236, !53, i64 240, !35, i64 244, !36, i64 246, !36, i64 247, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !66, i64 280, !75, i64 4264, !55, i64 4296, !55, i64 4312, !39, i64 4328, !39, i64 4336, !39, i64 4344, !39, i64 4352, !39, i64 4360, !39, i64 4368, !35, i64 4376, !35, i64 4378, !53, i64 4380, !55, i64 4384, !76, i64 4400, !77, i64 4416, !80, i64 4600, !39, i64 4608, !81, i64 4616, !39, i64 4640, !57, i64 4648, !57, i64 4656, !68, i64 4664, !69, i64 4824, !82, i64 4888, !39, i64 4952}
!66 = !{!"RenderData", !67, i64 0, !39, i64 248, !39, i64 256, !70, i64 264, !71, i64 328, !53, i64 400, !53, i64 404, !53, i64 408, !56, i64 412, !53, i64 416, !53, i64 420, !53, i64 424, !53, i64 428, !35, i64 432, !35, i64 434, !56, i64 436, !56, i64 440, !56, i64 444, !56, i64 448, !56, i64 452, !35, i64 456, !35, i64 458, !35, i64 460, !35, i64 462, !35, i64 464, !35, i64 466, !53, i64 468, !35, i64 472, !35, i64 474, !35, i64 476, !35, i64 478, !35, i64 480, !35, i64 482, !53, i64 484, !53, i64 488, !35, i64 492, !35, i64 494, !53, i64 496, !53, i64 500, !35, i64 504, !35, i64 506, !35, i64 508, !35, i64 510, !35, i64 512, !36, i64 514, !36, i64 515, !53, i64 516, !53, i64 520, !53, i64 524, !35, i64 528, !35, i64 530, !35, i64 532, !35, i64 534, !35, i64 536, !35, i64 538, !35, i64 540, !35, i64 542, !72, i64 544, !72, i64 560, !73, i64 576, !55, i64 592, !35, i64 608, !35, i64 610, !56, i64 612, !56, i64 616, !56, i64 620, !56, i64 624, !53, i64 628, !56, i64 632, !56, i64 636, !56, i64 640, !56, i64 644, !35, i64 648, !35, i64 650, !35, i64 652, !35, i64 654, !35, i64 656, !35, i64 658, !56, i64 660, !56, i64 664, !35, i64 668, !35, i64 670, !56, i64 672, !56, i64 676, !36, i64 680, !53, i64 1704, !35, i64 1708, !35, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !53, i64 2520, !35, i64 2524, !35, i64 2526, !56, i64 2528, !56, i64 2532, !35, i64 2536, !35, i64 2538, !56, i64 2540, !35, i64 2544, !35, i64 2546, !53, i64 2548, !35, i64 2552, !35, i64 2554, !35, i64 2556, !35, i64 2558, !56, i64 2560, !56, i64 2564, !39, i64 2568, !53, i64 2576, !56, i64 2580, !36, i64 2584, !74, i64 2616, !53, i64 3976, !53, i64 3980}
!67 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !35, i64 8, !35, i64 10, !56, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !68, i64 24, !69, i64 184}
!68 = !{!"ColorManagedViewSettings", !53, i64 0, !53, i64 4, !36, i64 8, !36, i64 72, !56, i64 136, !56, i64 140, !39, i64 144, !39, i64 152}
!69 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!70 = !{!"QuicktimeCodecSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !35, i64 48, !35, i64 50, !53, i64 52, !53, i64 56, !53, i64 60}
!71 = !{!"FFMpegCodecData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !56, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !39, i64 64}
!72 = !{!"rctf", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!73 = !{!"rcti", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!74 = !{!"BakeData", !67, i64 0, !36, i64 248, !35, i64 1272, !35, i64 1274, !35, i64 1276, !35, i64 1278, !56, i64 1280, !56, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!75 = !{!"AudioData", !53, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !53, i64 16, !35, i64 20, !35, i64 22, !56, i64 24, !56, i64 28}
!76 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!77 = !{!"GameData", !76, i64 0, !35, i64 16, !35, i64 18, !35, i64 20, !35, i64 22, !35, i64 24, !35, i64 26, !35, i64 28, !35, i64 30, !35, i64 32, !36, i64 34, !78, i64 40, !35, i64 64, !35, i64 66, !56, i64 68, !79, i64 72, !56, i64 128, !56, i64 132, !53, i64 136, !35, i64 140, !35, i64 142, !35, i64 144, !35, i64 146, !35, i64 148, !35, i64 150, !35, i64 152, !35, i64 154, !35, i64 156, !35, i64 158, !35, i64 160, !35, i64 162, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180}
!78 = !{!"GameDome", !35, i64 0, !35, i64 2, !35, i64 4, !35, i64 6, !56, i64 8, !56, i64 12, !39, i64 16}
!79 = !{!"RecastData", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !53, i64 40, !56, i64 44, !56, i64 48, !35, i64 52, !35, i64 54}
!80 = !{!"UnitSettings", !56, i64 0, !36, i64 4, !36, i64 5, !35, i64 6}
!81 = !{!"PhysicsSettings", !36, i64 0, !53, i64 12, !53, i64 16, !53, i64 20}
!82 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!83 = !{!84, !53, i64 16}
!84 = !{!"Base", !39, i64 0, !39, i64 8, !53, i64 16, !53, i64 20, !53, i64 24, !35, i64 28, !35, i64 30, !39, i64 32}
!85 = !{!84, !53, i64 24}
!86 = !{!84, !39, i64 32}
!87 = distinct !{!87, !41, !42}
!88 = distinct !{!88, !41, !42}
!89 = !{!90, !35, i64 26}
!90 = !{!"bSensor", !39, i64 0, !39, i64 8, !35, i64 16, !35, i64 18, !35, i64 20, !35, i64 22, !35, i64 24, !35, i64 26, !35, i64 28, !35, i64 30, !36, i64 32, !39, i64 96, !39, i64 104, !39, i64 112, !35, i64 120, !35, i64 122, !35, i64 124, !35, i64 126}
!91 = !{!90, !39, i64 104}
!92 = distinct !{!92, !41, !42}
!93 = distinct !{!93, !41, !42}
!94 = !{!59, !35, i64 30}
!95 = !{!59, !39, i64 112}
!96 = distinct !{!96, !41, !42}
!97 = distinct !{!97, !41, !42}
!98 = distinct !{!98, !41, !42}
!99 = distinct !{!99, !41, !42}
!100 = distinct !{!100, !41, !42}
!101 = distinct !{!101, !41, !42}
!102 = distinct !{!102, !41, !42}
!103 = distinct !{!103, !41, !42}
!104 = !{!105, !39, i64 1120}
!105 = !{!"Main", !39, i64 0, !39, i64 8, !36, i64 16, !35, i64 1040, !35, i64 1042, !35, i64 1044, !35, i64 1046, !57, i64 1048, !36, i64 1056, !35, i64 1072, !39, i64 1080, !55, i64 1088, !55, i64 1104, !55, i64 1120, !55, i64 1136, !55, i64 1152, !55, i64 1168, !55, i64 1184, !55, i64 1200, !55, i64 1216, !55, i64 1232, !55, i64 1248, !55, i64 1264, !55, i64 1280, !55, i64 1296, !55, i64 1312, !55, i64 1328, !55, i64 1344, !55, i64 1360, !55, i64 1376, !55, i64 1392, !55, i64 1408, !55, i64 1424, !55, i64 1440, !55, i64 1456, !55, i64 1472, !55, i64 1488, !55, i64 1504, !55, i64 1520, !55, i64 1536, !55, i64 1552, !55, i64 1568, !55, i64 1584, !55, i64 1600, !55, i64 1616, !36, i64 1632, !39, i64 1888, !39, i64 1896}
!106 = !{!51, !39, i64 0}
!107 = distinct !{!107, !41, !42}
!108 = !{!109, !35, i64 58}
!109 = !{!"SpaceLogic", !39, i64 0, !39, i64 8, !55, i64 16, !53, i64 32, !56, i64 36, !36, i64 40, !35, i64 56, !35, i64 58, !53, i64 60, !39, i64 64}
!110 = !{!111, !35, i64 8948}
!111 = !{!"UserDef", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !53, i64 8468, !35, i64 8472, !35, i64 8474, !35, i64 8476, !35, i64 8478, !35, i64 8480, !35, i64 8482, !53, i64 8484, !53, i64 8488, !53, i64 8492, !35, i64 8496, !35, i64 8498, !53, i64 8500, !53, i64 8504, !53, i64 8508, !53, i64 8512, !53, i64 8516, !53, i64 8520, !53, i64 8524, !35, i64 8528, !35, i64 8530, !35, i64 8532, !35, i64 8534, !55, i64 8536, !55, i64 8552, !55, i64 8568, !55, i64 8584, !55, i64 8600, !55, i64 8616, !55, i64 8632, !36, i64 8648, !35, i64 8712, !35, i64 8714, !35, i64 8716, !35, i64 8718, !35, i64 8720, !35, i64 8722, !35, i64 8724, !35, i64 8726, !36, i64 8728, !35, i64 8896, !35, i64 8898, !35, i64 8900, !35, i64 8902, !35, i64 8904, !35, i64 8906, !35, i64 8908, !35, i64 8910, !53, i64 8912, !53, i64 8916, !35, i64 8920, !35, i64 8922, !35, i64 8924, !35, i64 8926, !35, i64 8928, !35, i64 8930, !35, i64 8932, !35, i64 8934, !35, i64 8936, !35, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !35, i64 8944, !35, i64 8946, !35, i64 8948, !35, i64 8950, !35, i64 8952, !35, i64 8954, !56, i64 8956, !56, i64 8960, !53, i64 8964, !35, i64 8968, !35, i64 8970, !56, i64 8972, !35, i64 8976, !35, i64 8978, !35, i64 8980, !35, i64 8982, !112, i64 8984, !36, i64 9760, !36, i64 9772, !35, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !53, i64 10896, !53, i64 10900, !56, i64 10904, !56, i64 10908, !53, i64 10912, !35, i64 10916, !35, i64 10918, !35, i64 10920, !35, i64 10922, !35, i64 10924, !35, i64 10926, !113, i64 10928}
!112 = !{!"ColorBand", !35, i64 0, !35, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!113 = !{!"WalkNavigation", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !35, i64 24, !36, i64 26}
!114 = !{!62, !35, i64 26}
!115 = distinct !{!115, !41, !42}
!116 = !{!90, !35, i64 20}
!117 = distinct !{!117, !41, !42}
!118 = !{!51, !35, i64 964}
!119 = distinct !{!119, !41, !42}
!120 = !{!51, !53, i64 1320}
!121 = !{!59, !53, i64 132}
!122 = distinct !{!122, !41, !42}
!123 = distinct !{!123, !41, !42}
!124 = !{!53, !53, i64 0}
!125 = !{!126, !39, i64 16}
!126 = !{!"PointerRNA", !127, i64 0, !39, i64 8, !39, i64 16}
!127 = !{!"", !39, i64 0}
!128 = !{!59, !35, i64 24}
!129 = distinct !{!129, !41, !42}
!130 = distinct !{!130, !41, !42}
!131 = distinct !{!131, !41, !42}
!132 = !{!90, !35, i64 16}
!133 = !{!126, !39, i64 0}
!134 = !{!90, !39, i64 96}
!135 = !{!51, !35, i64 136}
!136 = !{!51, !39, i64 288}
!137 = distinct !{!137, !41, !42}
!138 = distinct !{!138, !41, !42}
!139 = !{!62, !35, i64 24}
!140 = distinct !{!140, !41, !42}
!141 = distinct !{!141, !41, !42}
!142 = !{!51, !53, i64 1144}
!143 = distinct !{!143, !41, !42}
!144 = !{!90, !35, i64 18}
!145 = distinct !{!145, !41, !42}
!146 = distinct !{!146, !41, !42}
!147 = distinct !{!147, !41, !42}
!148 = distinct !{!148, !41, !42}
!149 = distinct !{!149, !41, !42}
!150 = distinct !{!150, !41, !42}
!151 = distinct !{!151, !41, !42}
!152 = !{!51, !53, i64 1324}
!153 = distinct !{!153, !41, !42}
!154 = !{!59, !35, i64 32}
!155 = distinct !{!155, !41, !42}
!156 = distinct !{!156, !41, !42}
!157 = !{!59, !35, i64 26}
!158 = distinct !{!158, !41, !42}
!159 = distinct !{!159, !41, !42}
!160 = distinct !{!160, !41, !42}
!161 = !{!62, !35, i64 28}
!162 = distinct !{!162, !41, !42}
!163 = distinct !{!163, !41, !42}
!164 = distinct !{!164, !41, !42}
!165 = distinct !{!165, !41, !42}
!166 = !{!62, !39, i64 96}
!167 = !{!168, !35, i64 2}
!168 = !{!"bSoundActuator", !35, i64 0, !35, i64 2, !53, i64 4, !53, i64 8, !36, i64 12, !56, i64 16, !56, i64 20, !39, i64 24, !169, i64 32, !35, i64 64, !35, i64 66, !35, i64 68, !36, i64 70}
!169 = !{!"Sound3D", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28}
!170 = distinct !{!170, !41, !42}
!171 = !{!168, !39, i64 24}
!172 = !{!52, !53, i64 100}
!173 = distinct !{!173, !41, !42}
!174 = distinct !{!174, !41, !42}
!175 = !{!176, !35, i64 24}
!176 = !{!"bConstraint", !39, i64 0, !39, i64 8, !39, i64 16, !35, i64 24, !35, i64 26, !36, i64 28, !36, i64 29, !36, i64 30, !35, i64 94, !56, i64 96, !56, i64 100, !39, i64 104, !56, i64 112, !56, i64 116}
!177 = !{!178, !39, i64 136}
!178 = !{!"bPropertyActuator", !53, i64 0, !53, i64 4, !36, i64 8, !36, i64 72, !39, i64 136}
!179 = distinct !{!179, !41, !42}
!180 = distinct !{!180, !41, !42}
!181 = distinct !{!181, !41, !42}
!182 = distinct !{!182, !41, !42}
!183 = distinct !{!183, !41, !42}
!184 = distinct !{!184, !41, !42}
!185 = !{!186, !35, i64 36}
!186 = !{!"uiBut", !39, i64 0, !39, i64 8, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !35, i64 32, !35, i64 34, !35, i64 36, !35, i64 38, !35, i64 40, !35, i64 42, !35, i64 44, !35, i64 46, !35, i64 48, !39, i64 56, !36, i64 64, !36, i64 192, !72, i64 592, !39, i64 608, !56, i64 616, !56, i64 620, !56, i64 624, !56, i64 628, !56, i64 632, !56, i64 636, !36, i64 640, !39, i64 648, !39, i64 656, !39, i64 664, !39, i64 672, !39, i64 680, !39, i64 688, !39, i64 696, !39, i64 704, !39, i64 712, !39, i64 720, !39, i64 728, !39, i64 736, !39, i64 744, !39, i64 752, !36, i64 760, !39, i64 768, !39, i64 776, !53, i64 784, !36, i64 788, !36, i64 789, !36, i64 790, !36, i64 791, !36, i64 792, !35, i64 794, !35, i64 796, !39, i64 800, !39, i64 808, !126, i64 816, !39, i64 840, !53, i64 848, !126, i64 856, !39, i64 880, !39, i64 888, !39, i64 896, !35, i64 904, !36, i64 906, !36, i64 907, !39, i64 912, !39, i64 920, !56, i64 928, !39, i64 936, !39, i64 944, !39, i64 952, !39, i64 960, !39, i64 968, !39, i64 976, !39, i64 984, !39, i64 992}
!187 = distinct !{!187, !41, !42}
!188 = distinct !{!188, !41, !42}
!189 = distinct !{!189, !41, !42}
!190 = distinct !{!190, !41, !42}
!191 = distinct !{!191, !41, !42}
!192 = distinct !{!192, !41, !42}
