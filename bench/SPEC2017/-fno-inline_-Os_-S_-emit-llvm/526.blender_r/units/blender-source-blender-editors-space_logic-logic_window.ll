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
%struct.uiBut = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, [128 x i8], [400 x i8], %struct.rctf, ptr, float, float, float, float, float, float, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i16], ptr, ptr, i32, i8, i8, i8, i8, i8, i16, i16, ptr, ptr, %struct.PointerRNA, ptr, i32, %struct.PointerRNA, ptr, ptr, ptr, i16, i8, i8, ptr, ptr, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bArmatureActuator = type { [64 x i8], [64 x i8], i32, float, float, float, ptr, ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bPropertyActuator = type { i32, i32, [64 x i8], [64 x i8], ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }

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
@reltable.controller_name = private unnamed_addr constant [8 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.64 to i64), i64 ptrtoint (ptr @reltable.controller_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.65 to i64), i64 ptrtoint (ptr @reltable.controller_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.70 to i64), i64 ptrtoint (ptr @reltable.controller_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.71 to i64), i64 ptrtoint (ptr @reltable.controller_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.66 to i64), i64 ptrtoint (ptr @reltable.controller_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.67 to i64), i64 ptrtoint (ptr @reltable.controller_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.68 to i64), i64 ptrtoint (ptr @reltable.controller_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.69 to i64), i64 ptrtoint (ptr @reltable.controller_name to i64)) to i32)], align 4
@reltable.sensor_name = private unnamed_addr constant [15 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.83 to i64), i64 ptrtoint (ptr @reltable.sensor_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.72 to i64), i64 ptrtoint (ptr @reltable.sensor_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.84 to i64), i64 ptrtoint (ptr @reltable.sensor_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.85 to i64), i64 ptrtoint (ptr @reltable.sensor_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.86 to i64), i64 ptrtoint (ptr @reltable.sensor_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.90 to i64), i64 ptrtoint (ptr @reltable.sensor_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.91 to i64), i64 ptrtoint (ptr @reltable.sensor_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.92 to i64), i64 ptrtoint (ptr @reltable.sensor_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.93 to i64), i64 ptrtoint (ptr @reltable.sensor_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.94 to i64), i64 ptrtoint (ptr @reltable.sensor_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.95 to i64), i64 ptrtoint (ptr @reltable.sensor_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.96 to i64), i64 ptrtoint (ptr @reltable.sensor_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.88 to i64), i64 ptrtoint (ptr @reltable.sensor_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.89 to i64), i64 ptrtoint (ptr @reltable.sensor_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.87 to i64), i64 ptrtoint (ptr @reltable.sensor_name to i64)) to i32)], align 4
@reltable.actuator_name = private unnamed_addr constant [26 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.160 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.161 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.162 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.163 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.164 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.165 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.86 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.72 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.72 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.167 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.166 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.168 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.169 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.93 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.95 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.159 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.72 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.170 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.171 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.172 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.173 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.158 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.30 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.87 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.174 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.90 to i64), i64 ptrtoint (ptr @reltable.actuator_name to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_unique_prop_names(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  %4 = call fastcc ptr @get_selected_and_linked_obs(ptr noundef %0, ptr noundef nonnull %3, i16 noundef signext 219) #12
  %5 = load i16, ptr %3, align 2, !tbaa !5
  %6 = icmp sgt i16 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %2
  %8 = zext nneg i16 %5 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %30, %9 ]
  %11 = phi i16 [ 0, %7 ], [ %29, %9 ]
  %12 = getelementptr inbounds ptr, ptr %4, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 91
  %15 = tail call i32 @BLI_countlist(ptr noundef nonnull %14) #13
  %16 = trunc i32 %15 to i16
  %17 = add i16 %11, %16
  %18 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 92
  %19 = tail call i32 @BLI_countlist(ptr noundef nonnull %18) #13
  %20 = trunc i32 %19 to i16
  %21 = add i16 %17, %20
  %22 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 93
  %23 = tail call i32 @BLI_countlist(ptr noundef nonnull %22) #13
  %24 = trunc i32 %23 to i16
  %25 = add i16 %21, %24
  %26 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 94
  %27 = tail call i32 @BLI_countlist(ptr noundef nonnull %26) #13
  %28 = trunc i32 %27 to i16
  %29 = add i16 %25, %28
  %30 = add nuw nsw i64 %10, 1
  %31 = icmp eq i64 %30, %8
  br i1 %31, label %32, label %9, !llvm.loop !11

32:                                               ; preds = %9
  %33 = icmp eq i16 %29, 0
  br i1 %33, label %36, label %38

34:                                               ; preds = %2
  %35 = icmp eq ptr %4, null
  br i1 %35, label %127, label %36

36:                                               ; preds = %32, %34
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !9
  tail call void %37(ptr noundef nonnull %4) #13
  br label %127

38:                                               ; preds = %32
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !9
  %40 = sext i16 %29 to i64
  %41 = shl nsw i64 %40, 3
  %42 = tail call ptr %39(i64 noundef %41, ptr noundef nonnull @.str) #13
  br i1 %6, label %43, label %108

43:                                               ; preds = %38
  %44 = zext nneg i16 %5 to i64
  br label %45

45:                                               ; preds = %43, %104
  %46 = phi i64 [ 0, %43 ], [ %106, %104 ]
  %47 = phi i16 [ 0, %43 ], [ %105, %104 ]
  %48 = getelementptr inbounds ptr, ptr %4, i64 %46
  %49 = load ptr, ptr %48, align 8, !tbaa !9
  %50 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 91
  %51 = load ptr, ptr %50, align 8, !tbaa !9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %45, %53
  %54 = phi ptr [ %60, %53 ], [ %51, %45 ]
  %55 = phi i16 [ %57, %53 ], [ %47, %45 ]
  %56 = getelementptr inbounds %struct.bProperty, ptr %54, i64 0, i32 2
  %57 = add i16 %55, 1
  %58 = sext i16 %55 to i64
  %59 = getelementptr inbounds ptr, ptr %42, i64 %58
  store ptr %56, ptr %59, align 8, !tbaa !9
  %60 = load ptr, ptr %54, align 8, !tbaa !9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %53, !llvm.loop !13

62:                                               ; preds = %53, %45
  %63 = phi i16 [ %47, %45 ], [ %57, %53 ]
  %64 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 92
  %65 = load ptr, ptr %64, align 8, !tbaa !9
  %66 = icmp eq ptr %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %62, %67
  %68 = phi ptr [ %74, %67 ], [ %65, %62 ]
  %69 = phi i16 [ %71, %67 ], [ %63, %62 ]
  %70 = getelementptr inbounds %struct.bSensor, ptr %68, i64 0, i32 10
  %71 = add i16 %69, 1
  %72 = sext i16 %69 to i64
  %73 = getelementptr inbounds ptr, ptr %42, i64 %72
  store ptr %70, ptr %73, align 8, !tbaa !9
  %74 = load ptr, ptr %68, align 8, !tbaa !9
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %67, !llvm.loop !14

76:                                               ; preds = %67, %62
  %77 = phi i16 [ %63, %62 ], [ %71, %67 ]
  %78 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 93
  %79 = load ptr, ptr %78, align 8, !tbaa !9
  %80 = icmp eq ptr %79, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %76, %81
  %82 = phi ptr [ %88, %81 ], [ %79, %76 ]
  %83 = phi i16 [ %85, %81 ], [ %77, %76 ]
  %84 = getelementptr inbounds %struct.bController, ptr %82, i64 0, i32 11
  %85 = add i16 %83, 1
  %86 = sext i16 %83 to i64
  %87 = getelementptr inbounds ptr, ptr %42, i64 %86
  store ptr %84, ptr %87, align 8, !tbaa !9
  %88 = load ptr, ptr %82, align 8, !tbaa !9
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %81, !llvm.loop !15

90:                                               ; preds = %81, %76
  %91 = phi i16 [ %77, %76 ], [ %85, %81 ]
  %92 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 94
  %93 = load ptr, ptr %92, align 8, !tbaa !9
  %94 = icmp eq ptr %93, null
  br i1 %94, label %104, label %95

95:                                               ; preds = %90, %95
  %96 = phi ptr [ %102, %95 ], [ %93, %90 ]
  %97 = phi i16 [ %99, %95 ], [ %91, %90 ]
  %98 = getelementptr inbounds %struct.bActuator, ptr %96, i64 0, i32 7
  %99 = add i16 %97, 1
  %100 = sext i16 %97 to i64
  %101 = getelementptr inbounds ptr, ptr %42, i64 %100
  store ptr %98, ptr %101, align 8, !tbaa !9
  %102 = load ptr, ptr %96, align 8, !tbaa !9
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %95, !llvm.loop !16

104:                                              ; preds = %95, %90
  %105 = phi i16 [ %91, %90 ], [ %99, %95 ]
  %106 = add nuw nsw i64 %46, 1
  %107 = icmp eq i64 %106, %44
  br i1 %107, label %108, label %45, !llvm.loop !17

108:                                              ; preds = %104, %38
  tail call void @qsort(ptr noundef %42, i64 noundef %40, i64 noundef 8, ptr noundef nonnull @vergname) #13
  %109 = icmp sgt i16 %29, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %108
  %111 = zext nneg i16 %29 to i64
  br label %112

112:                                              ; preds = %110, %121
  %113 = phi i64 [ 0, %110 ], [ %122, %121 ]
  %114 = getelementptr inbounds ptr, ptr %42, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !9
  %116 = icmp eq ptr %115, %1
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %115, ptr noundef nonnull dereferenceable(1) %1) #14
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  tail call void @BLI_newname(ptr noundef %1, i32 noundef 1) #13
  br label %121

121:                                              ; preds = %112, %117, %120
  %122 = add nuw nsw i64 %113, 1
  %123 = icmp eq i64 %122, %111
  br i1 %123, label %124, label %112, !llvm.loop !18

124:                                              ; preds = %121, %108
  %125 = load ptr, ptr @MEM_freeN, align 8, !tbaa !9
  tail call void %125(ptr noundef %4) #13
  %126 = load ptr, ptr @MEM_freeN, align 8, !tbaa !9
  tail call void %126(ptr noundef %42) #13
  br label %127

127:                                              ; preds = %34, %36, %124
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_selected_and_linked_obs(ptr noundef %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  store i16 0, ptr %1, align 2, !tbaa !5
  %7 = icmp eq ptr %5, null
  br i1 %7, label %334, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 62
  store i8 0, ptr %14, align 2, !tbaa !19
  tail call fastcc void @set_sca_ob(ptr noundef nonnull %13) #12
  %15 = load ptr, ptr %13, align 8, !tbaa !9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %12, !llvm.loop !27

17:                                               ; preds = %12, %8
  %18 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 12
  %19 = load i32, ptr %18, align 8, !tbaa !28
  %20 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %66, label %23

23:                                               ; preds = %17
  %24 = zext i16 %2 to i32
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %24, 8
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %24, 64
  %30 = icmp eq i32 %29, 0
  br label %31

31:                                               ; preds = %23, %63
  %32 = phi ptr [ %21, %23 ], [ %64, %63 ]
  %33 = getelementptr inbounds %struct.Base, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !47
  %35 = and i32 %34, %19
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %63, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.Base, ptr %32, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !49
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %63, label %42

42:                                               ; preds = %37
  br i1 %26, label %49, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.Base, ptr %32, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !50
  %46 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 62
  %47 = load i8, ptr %46, align 2, !tbaa !19
  %48 = or i8 %47, 1
  store i8 %48, ptr %46, align 2, !tbaa !19
  br label %49

49:                                               ; preds = %43, %42
  br i1 %28, label %56, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.Base, ptr %32, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !50
  %53 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 62
  %54 = load i8, ptr %53, align 2, !tbaa !19
  %55 = or i8 %54, 2
  store i8 %55, ptr %53, align 2, !tbaa !19
  br label %56

56:                                               ; preds = %50, %49
  br i1 %30, label %63, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.Base, ptr %32, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !50
  %60 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 62
  %61 = load i8, ptr %60, align 2, !tbaa !19
  %62 = or i8 %61, 4
  store i8 %62, ptr %60, align 2, !tbaa !19
  br label %63

63:                                               ; preds = %37, %57, %56, %31
  %64 = load ptr, ptr %32, align 8, !tbaa !9
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %31, !llvm.loop !51

66:                                               ; preds = %63, %17
  %67 = icmp eq ptr %6, null
  %68 = zext i16 %2 to i32
  br i1 %67, label %90, label %69

69:                                               ; preds = %66
  %70 = and i32 %68, 2
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 62
  %74 = load i8, ptr %73, align 2, !tbaa !19
  %75 = or i8 %74, 1
  store i8 %75, ptr %73, align 2, !tbaa !19
  br label %76

76:                                               ; preds = %72, %69
  %77 = and i32 %68, 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 62
  %81 = load i8, ptr %80, align 2, !tbaa !19
  %82 = or i8 %81, 2
  store i8 %82, ptr %80, align 2, !tbaa !19
  br label %83

83:                                               ; preds = %79, %76
  %84 = and i32 %68, 128
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 62
  %88 = load i8, ptr %87, align 2, !tbaa !19
  %89 = or i8 %88, 4
  store i8 %89, ptr %87, align 2, !tbaa !19
  br label %90

90:                                               ; preds = %66, %83, %86
  %91 = and i32 %68, 1828
  %92 = icmp eq i32 %91, 0
  %93 = load ptr, ptr %9, align 8, !tbaa !9
  br i1 %92, label %286, label %94

94:                                               ; preds = %90
  %95 = icmp eq ptr %93, null
  %96 = and i32 %68, 516
  %97 = icmp eq i32 %96, 0
  %98 = and i32 %68, 32
  %99 = icmp eq i32 %98, 0
  %100 = and i32 %68, 1280
  %101 = icmp eq i32 %100, 0
  br label %104

102:                                              ; preds = %282
  %103 = icmp eq i32 %283, 0
  br i1 %103, label %286, label %104, !llvm.loop !52

104:                                              ; preds = %94, %102
  br i1 %95, label %299, label %105

105:                                              ; preds = %104, %282
  %106 = phi ptr [ %284, %282 ], [ %93, %104 ]
  %107 = phi i32 [ %283, %282 ], [ 0, %104 ]
  br i1 %97, label %149, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 62
  %110 = load i8, ptr %109, align 2, !tbaa !19
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %149

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 92
  br label %115

115:                                              ; preds = %147, %113
  %116 = phi ptr [ %114, %113 ], [ %118, %147 ]
  %117 = phi i32 [ %107, %113 ], [ 0, %147 ]
  %118 = load ptr, ptr %116, align 8, !tbaa !9
  %119 = icmp eq ptr %118, null
  br i1 %119, label %149, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.bSensor, ptr %118, i64 0, i32 7
  %122 = load i16, ptr %121, align 2, !tbaa !53
  %123 = icmp sgt i16 %122, 0
  br i1 %123, label %124, label %147

124:                                              ; preds = %120
  %125 = zext nneg i16 %122 to i64
  %126 = getelementptr inbounds %struct.bSensor, ptr %118, i64 0, i32 12
  %127 = load ptr, ptr %126, align 8, !tbaa !55
  br label %128

128:                                              ; preds = %124, %144
  %129 = phi i64 [ 0, %124 ], [ %145, %144 ]
  %130 = getelementptr inbounds ptr, ptr %127, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !9
  %132 = icmp eq ptr %131, null
  br i1 %132, label %144, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.bController, ptr %131, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !56
  %136 = icmp eq ptr %135, null
  br i1 %136, label %144, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.Object, ptr %135, i64 0, i32 62
  %139 = load i8, ptr %138, align 2, !tbaa !19
  %140 = and i8 %139, 2
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %137
  %143 = or disjoint i8 %110, 1
  store i8 %143, ptr %109, align 2, !tbaa !19
  br label %149

144:                                              ; preds = %128, %137, %133
  %145 = add nuw nsw i64 %129, 1
  %146 = icmp eq i64 %145, %125
  br i1 %146, label %147, label %128, !llvm.loop !58

147:                                              ; preds = %144, %120
  %148 = icmp eq i32 %117, 0
  br i1 %148, label %115, label %149, !llvm.loop !59

149:                                              ; preds = %115, %147, %142, %108, %105
  %150 = phi i32 [ %107, %108 ], [ %107, %105 ], [ 1, %142 ], [ %117, %115 ], [ 1, %147 ]
  br i1 %99, label %236, label %151

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 62
  %153 = load i8, ptr %152, align 2, !tbaa !19
  %154 = and i8 %153, 2
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %192

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 93
  br label %158

158:                                              ; preds = %190, %156
  %159 = phi ptr [ %157, %156 ], [ %161, %190 ]
  %160 = phi i32 [ %150, %156 ], [ 0, %190 ]
  %161 = load ptr, ptr %159, align 8, !tbaa !9
  %162 = icmp eq ptr %161, null
  br i1 %162, label %192, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.bController, ptr %161, i64 0, i32 6
  %165 = load i16, ptr %164, align 2, !tbaa !60
  %166 = icmp sgt i16 %165, 0
  br i1 %166, label %167, label %190

167:                                              ; preds = %163
  %168 = zext nneg i16 %165 to i64
  %169 = getelementptr inbounds %struct.bController, ptr %161, i64 0, i32 13
  %170 = load ptr, ptr %169, align 8, !tbaa !61
  br label %171

171:                                              ; preds = %167, %187
  %172 = phi i64 [ 0, %167 ], [ %188, %187 ]
  %173 = getelementptr inbounds ptr, ptr %170, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !9
  %175 = icmp eq ptr %174, null
  br i1 %175, label %187, label %176

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.bActuator, ptr %174, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !62
  %179 = icmp eq ptr %178, null
  br i1 %179, label %187, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.Object, ptr %178, i64 0, i32 62
  %182 = load i8, ptr %181, align 2, !tbaa !19
  %183 = and i8 %182, 4
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %180
  %186 = or disjoint i8 %153, 2
  store i8 %186, ptr %152, align 2, !tbaa !19
  br label %192

187:                                              ; preds = %171, %180, %176
  %188 = add nuw nsw i64 %172, 1
  %189 = icmp eq i64 %188, %168
  br i1 %189, label %190, label %171, !llvm.loop !64

190:                                              ; preds = %187, %163
  %191 = icmp eq i32 %160, 0
  br i1 %191, label %158, label %192, !llvm.loop !65

192:                                              ; preds = %190, %158, %185, %151
  %193 = phi i8 [ %153, %151 ], [ %186, %185 ], [ %153, %158 ], [ %153, %190 ]
  %194 = phi i32 [ %150, %151 ], [ 1, %185 ], [ 1, %190 ], [ %160, %158 ]
  %195 = and i8 %193, 1
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %236, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 92
  %199 = load ptr, ptr %198, align 8, !tbaa !9
  %200 = icmp eq ptr %199, null
  br i1 %200, label %236, label %205

201:                                              ; preds = %232, %205
  %202 = phi i32 [ %207, %205 ], [ %233, %232 ]
  %203 = load ptr, ptr %206, align 8, !tbaa !9
  %204 = icmp eq ptr %203, null
  br i1 %204, label %236, label %205, !llvm.loop !66

205:                                              ; preds = %197, %201
  %206 = phi ptr [ %203, %201 ], [ %199, %197 ]
  %207 = phi i32 [ %202, %201 ], [ %194, %197 ]
  %208 = getelementptr inbounds %struct.bSensor, ptr %206, i64 0, i32 7
  %209 = load i16, ptr %208, align 2, !tbaa !53
  %210 = icmp sgt i16 %209, 0
  br i1 %210, label %211, label %201

211:                                              ; preds = %205
  %212 = zext nneg i16 %209 to i64
  %213 = getelementptr inbounds %struct.bSensor, ptr %206, i64 0, i32 12
  %214 = load ptr, ptr %213, align 8, !tbaa !55
  br label %215

215:                                              ; preds = %211, %232
  %216 = phi i64 [ 0, %211 ], [ %234, %232 ]
  %217 = phi i32 [ %207, %211 ], [ %233, %232 ]
  %218 = getelementptr inbounds ptr, ptr %214, i64 %216
  %219 = load ptr, ptr %218, align 8, !tbaa !9
  %220 = icmp eq ptr %219, null
  br i1 %220, label %232, label %221

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.bController, ptr %219, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !56
  %224 = icmp eq ptr %223, null
  br i1 %224, label %232, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.Object, ptr %223, i64 0, i32 62
  %227 = load i8, ptr %226, align 2, !tbaa !19
  %228 = and i8 %227, 2
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = or disjoint i8 %227, 2
  store i8 %231, ptr %226, align 2, !tbaa !19
  br label %232

232:                                              ; preds = %215, %230, %225, %221
  %233 = phi i32 [ 1, %230 ], [ %217, %225 ], [ %217, %221 ], [ %217, %215 ]
  %234 = add nuw nsw i64 %216, 1
  %235 = icmp eq i64 %234, %212
  br i1 %235, label %201, label %215, !llvm.loop !67

236:                                              ; preds = %201, %197, %149, %192
  %237 = phi i32 [ %194, %192 ], [ %150, %149 ], [ %194, %197 ], [ %202, %201 ]
  br i1 %101, label %282, label %238

238:                                              ; preds = %236
  %239 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 62
  %240 = load i8, ptr %239, align 2, !tbaa !19
  %241 = and i8 %240, 2
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %282, label %243

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 93
  %245 = load ptr, ptr %244, align 8, !tbaa !9
  %246 = icmp eq ptr %245, null
  br i1 %246, label %282, label %251

247:                                              ; preds = %278, %251
  %248 = phi i32 [ %253, %251 ], [ %279, %278 ]
  %249 = load ptr, ptr %252, align 8, !tbaa !9
  %250 = icmp eq ptr %249, null
  br i1 %250, label %282, label %251, !llvm.loop !68

251:                                              ; preds = %243, %247
  %252 = phi ptr [ %249, %247 ], [ %245, %243 ]
  %253 = phi i32 [ %248, %247 ], [ %237, %243 ]
  %254 = getelementptr inbounds %struct.bController, ptr %252, i64 0, i32 6
  %255 = load i16, ptr %254, align 2, !tbaa !60
  %256 = icmp sgt i16 %255, 0
  br i1 %256, label %257, label %247

257:                                              ; preds = %251
  %258 = zext nneg i16 %255 to i64
  %259 = getelementptr inbounds %struct.bController, ptr %252, i64 0, i32 13
  %260 = load ptr, ptr %259, align 8, !tbaa !61
  br label %261

261:                                              ; preds = %257, %278
  %262 = phi i64 [ 0, %257 ], [ %280, %278 ]
  %263 = phi i32 [ %253, %257 ], [ %279, %278 ]
  %264 = getelementptr inbounds ptr, ptr %260, i64 %262
  %265 = load ptr, ptr %264, align 8, !tbaa !9
  %266 = icmp eq ptr %265, null
  br i1 %266, label %278, label %267

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.bActuator, ptr %265, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !62
  %270 = icmp eq ptr %269, null
  br i1 %270, label %278, label %271

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.Object, ptr %269, i64 0, i32 62
  %273 = load i8, ptr %272, align 2, !tbaa !19
  %274 = and i8 %273, 4
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = or disjoint i8 %273, 4
  store i8 %277, ptr %272, align 2, !tbaa !19
  br label %278

278:                                              ; preds = %261, %276, %271, %267
  %279 = phi i32 [ 1, %276 ], [ %263, %271 ], [ %263, %267 ], [ %263, %261 ]
  %280 = add nuw nsw i64 %262, 1
  %281 = icmp eq i64 %280, %258
  br i1 %281, label %247, label %261, !llvm.loop !69

282:                                              ; preds = %247, %243, %238, %236
  %283 = phi i32 [ %237, %238 ], [ %237, %236 ], [ %237, %243 ], [ %248, %247 ]
  %284 = load ptr, ptr %106, align 8, !tbaa !9
  %285 = icmp eq ptr %284, null
  br i1 %285, label %102, label %105, !llvm.loop !70

286:                                              ; preds = %102, %90
  %287 = icmp eq ptr %93, null
  br i1 %287, label %299, label %288

288:                                              ; preds = %286, %296
  %289 = phi ptr [ %297, %296 ], [ %93, %286 ]
  %290 = getelementptr inbounds %struct.Object, ptr %289, i64 0, i32 62
  %291 = load i8, ptr %290, align 2, !tbaa !19
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %288
  %294 = load i16, ptr %1, align 2, !tbaa !5
  %295 = add i16 %294, 1
  store i16 %295, ptr %1, align 2, !tbaa !5
  br label %296

296:                                              ; preds = %293, %288
  %297 = load ptr, ptr %289, align 8, !tbaa !9
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %288, !llvm.loop !71

299:                                              ; preds = %104, %296, %286
  %300 = load i16, ptr %1, align 2, !tbaa !5
  %301 = icmp eq i16 %300, 0
  br i1 %301, label %334, label %302

302:                                              ; preds = %299
  %303 = icmp sgt i16 %300, 24
  br i1 %303, label %304, label %305

304:                                              ; preds = %302
  store i16 24, ptr %1, align 2, !tbaa !5
  br label %305

305:                                              ; preds = %304, %302
  %306 = phi i16 [ 24, %304 ], [ %300, %302 ]
  %307 = load ptr, ptr @MEM_callocN, align 8, !tbaa !9
  %308 = sext i16 %306 to i64
  %309 = shl nsw i64 %308, 3
  %310 = tail call ptr %307(i64 noundef %309, ptr noundef nonnull @.str.44) #13
  %311 = load ptr, ptr %9, align 8, !tbaa !72
  br i1 %67, label %313, label %312

312:                                              ; preds = %305
  store ptr %6, ptr %310, align 8, !tbaa !9
  br label %313

313:                                              ; preds = %312, %305
  %314 = phi i32 [ 1, %312 ], [ 0, %305 ]
  %315 = icmp eq ptr %311, null
  br i1 %315, label %333, label %316

316:                                              ; preds = %313, %329
  %317 = phi i32 [ %330, %329 ], [ %314, %313 ]
  %318 = phi ptr [ %331, %329 ], [ %311, %313 ]
  %319 = getelementptr inbounds %struct.Object, ptr %318, i64 0, i32 62
  %320 = load i8, ptr %319, align 2, !tbaa !19
  %321 = icmp eq i8 %320, 0
  %322 = icmp eq ptr %318, %6
  %323 = select i1 %321, i1 true, i1 %322
  br i1 %323, label %329, label %324

324:                                              ; preds = %316
  %325 = sext i32 %317 to i64
  %326 = getelementptr inbounds ptr, ptr %310, i64 %325
  store ptr %318, ptr %326, align 8, !tbaa !9
  %327 = add nsw i32 %317, 1
  %328 = icmp sgt i32 %317, 22
  br i1 %328, label %333, label %329

329:                                              ; preds = %316, %324
  %330 = phi i32 [ %327, %324 ], [ %317, %316 ]
  %331 = load ptr, ptr %318, align 8, !tbaa !74
  %332 = icmp eq ptr %331, null
  br i1 %332, label %333, label %316, !llvm.loop !75

333:                                              ; preds = %329, %324, %313
  tail call void @clear_sca_new_poins() #13
  br label %334

334:                                              ; preds = %299, %3, %333
  %335 = phi ptr [ %310, %333 ], [ null, %3 ], [ null, %299 ]
  ret ptr %335
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vergname(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = load ptr, ptr %1, align 8, !tbaa !9
  %5 = tail call i32 @BLI_natstrcmp(ptr noundef %3, ptr noundef %4) #13
  ret i32 %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_newname(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @logic_buttons(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.PointerRNA, align 8
  %12 = tail call ptr @CTX_wm_space_logic(ptr noundef %0) #13
  %13 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %415, label %15

15:                                               ; preds = %2
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_SpaceLogicEditor, ptr noundef %12, ptr noundef nonnull %3) #13
  %16 = getelementptr inbounds %struct.SpaceLogic, ptr %12, i64 0, i32 7
  %17 = load i16, ptr %16, align 2, !tbaa !76
  %18 = call fastcc ptr @get_selected_and_linked_obs(ptr noundef %0, ptr noundef nonnull %7, i16 noundef signext %17) #12
  %19 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %1) #13
  %20 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i16 noundef signext 0) #13
  call void @uiBlockSetHandleFunc(ptr noundef %20, ptr noundef nonnull @do_logic_buts, ptr noundef null) #13
  %21 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %22 = sdiv i16 %21, 2
  %23 = sext i16 %22 to i32
  call void @uiBoundsBlock(ptr noundef %20, i32 noundef %23) #13
  %24 = load i16, ptr %7, align 2, !tbaa !5
  %25 = icmp sgt i16 %24, 0
  br i1 %25, label %26, label %99

26:                                               ; preds = %15
  %27 = zext nneg i16 %24 to i64
  br label %28

28:                                               ; preds = %26, %96
  %29 = phi i64 [ 0, %26 ], [ %97, %96 ]
  %30 = getelementptr inbounds ptr, ptr %18, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  %32 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 94
  %33 = load ptr, ptr %32, align 8, !tbaa !9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %28, %35
  %36 = phi ptr [ %40, %35 ], [ %33, %28 ]
  %37 = getelementptr inbounds %struct.bActuator, ptr %36, i64 0, i32 4
  %38 = load i16, ptr %37, align 2, !tbaa !82
  %39 = and i16 %38, -25
  store i16 %39, ptr %37, align 2, !tbaa !82
  %40 = load ptr, ptr %36, align 8, !tbaa !9
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %35, !llvm.loop !83

42:                                               ; preds = %35, %28
  %43 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 92
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %42, %46
  %47 = phi ptr [ %51, %46 ], [ %44, %42 ]
  %48 = getelementptr inbounds %struct.bSensor, ptr %47, i64 0, i32 4
  %49 = load i16, ptr %48, align 4, !tbaa !84
  %50 = and i16 %49, -17
  store i16 %50, ptr %48, align 4, !tbaa !84
  %51 = load ptr, ptr %47, align 8, !tbaa !9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %46, !llvm.loop !85

53:                                               ; preds = %46, %42
  %54 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 93
  %55 = load ptr, ptr %54, align 8, !tbaa !9
  %56 = icmp eq ptr %55, null
  br i1 %56, label %96, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 61
  %59 = load i16, ptr %58, align 4, !tbaa !86
  %60 = and i16 %59, 4096
  %61 = icmp eq i16 %60, 0
  %62 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 123
  br label %66

63:                                               ; preds = %93, %75
  %64 = load ptr, ptr %67, align 8, !tbaa !9
  %65 = icmp eq ptr %64, null
  br i1 %65, label %96, label %66, !llvm.loop !87

66:                                               ; preds = %57, %63
  %67 = phi ptr [ %55, %57 ], [ %64, %63 ]
  br i1 %61, label %68, label %74

68:                                               ; preds = %66
  %69 = load i32, ptr %62, align 8, !tbaa !88
  %70 = getelementptr inbounds %struct.bController, ptr %67, i64 0, i32 17
  %71 = load i32, ptr %70, align 4, !tbaa !89
  %72 = and i32 %71, %69
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68, %66
  br label %75

75:                                               ; preds = %74, %68
  %76 = phi i16 [ 24, %74 ], [ 8, %68 ]
  %77 = getelementptr inbounds %struct.bController, ptr %67, i64 0, i32 6
  %78 = load i16, ptr %77, align 2, !tbaa !60
  %79 = icmp sgt i16 %78, 0
  br i1 %79, label %80, label %63

80:                                               ; preds = %75
  %81 = zext nneg i16 %78 to i64
  %82 = getelementptr inbounds %struct.bController, ptr %67, i64 0, i32 13
  %83 = load ptr, ptr %82, align 8, !tbaa !61
  br label %84

84:                                               ; preds = %80, %93
  %85 = phi i64 [ 0, %80 ], [ %94, %93 ]
  %86 = getelementptr inbounds ptr, ptr %83, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !9
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.bActuator, ptr %87, i64 0, i32 4
  %91 = load i16, ptr %90, align 2, !tbaa !82
  %92 = or i16 %91, %76
  store i16 %92, ptr %90, align 2, !tbaa !82
  br label %93

93:                                               ; preds = %84, %89
  %94 = add nuw nsw i64 %85, 1
  %95 = icmp eq i64 %94, %81
  br i1 %95, label %63, label %84, !llvm.loop !90

96:                                               ; preds = %63, %53
  %97 = add nuw nsw i64 %29, 1
  %98 = icmp eq i64 %97, %27
  br i1 %98, label %99, label %28, !llvm.loop !91

99:                                               ; preds = %96, %15
  %100 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %101 = sext i16 %100 to i32
  %102 = mul nsw i32 %101, 21
  %103 = sdiv i16 %100, -2
  %104 = sext i16 %103 to i32
  store i32 %104, ptr %8, align 4, !tbaa !92
  %105 = mul nsw i32 %101, 15
  %106 = call ptr @UI_GetStyle() #13
  %107 = call ptr @uiBlockLayout(ptr noundef %20, i32 noundef 1, i32 noundef 0, i32 noundef %102, i32 noundef %104, i32 noundef %105, i32 noundef 20, i32 noundef 0, ptr noundef %106) #13
  %108 = call ptr @uiLayoutRow(ptr noundef %107, i32 noundef 1) #13
  %109 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %110 = sdiv i16 %109, 2
  %111 = sext i16 %110 to i32
  %112 = sub nsw i32 %102, %111
  %113 = load i32, ptr %8, align 4, !tbaa !92
  %114 = trunc i32 %105 to i16
  %115 = call ptr @uiDefBlockBut(ptr noundef %20, ptr noundef nonnull @controller_menu, ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef %112, i32 noundef %113, i16 noundef signext %114, i16 noundef signext %109, ptr noundef nonnull @.str.3) #13
  call void @uiItemR(ptr noundef %108, ptr noundef nonnull %3, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %108, ptr noundef nonnull %3, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %108, ptr noundef nonnull %3, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef 0) #13
  br i1 %25, label %116, label %211

116:                                              ; preds = %99
  %117 = sitofp i32 %105 to float
  %118 = zext nneg i16 %24 to i64
  br label %119

119:                                              ; preds = %116, %206
  %120 = phi i64 [ 0, %116 ], [ %207, %206 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #11
  %121 = getelementptr inbounds ptr, ptr %18, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !9
  %123 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 62
  %124 = load i8, ptr %123, align 2, !tbaa !19
  %125 = and i8 %124, 2
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %206, label %127

127:                                              ; preds = %119
  call void @RNA_pointer_create(ptr noundef nonnull %122, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef nonnull %122, ptr noundef nonnull %4) #13
  %128 = call ptr @uiLayoutSplit(ptr noundef %107, float noundef 0x3FA99999A0000000, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %128, ptr noundef nonnull %4, ptr noundef nonnull @.str.10, i32 noundef 128, ptr noundef nonnull @.str.3, i32 noundef 11) #13
  %129 = call ptr @uiLayoutRow(ptr noundef %128, i32 noundef 1) #13
  %130 = getelementptr inbounds %struct.ID, ptr %122, i64 0, i32 4, i64 2
  %131 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %132 = sdiv i16 %131, -2
  %133 = zext i16 %132 to i32
  %134 = add nsw i32 %102, %133
  %135 = shl i32 %134, 16
  %136 = ashr exact i32 %135, 16
  %137 = load i32, ptr %8, align 4, !tbaa !92
  %138 = sitofp i16 %131 to float
  %139 = call float @llvm.fmuladd.f32(float %138, float -1.500000e+00, float %117)
  %140 = fptosi float %139 to i16
  %141 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 61
  %142 = call ptr @uiDefButBitS(ptr noundef %20, i32 noundef 1536, i32 noundef 2048, i32 noundef 1, ptr noundef nonnull %130, i32 noundef %136, i32 noundef %137, i16 noundef signext %140, i16 noundef signext %131, ptr noundef nonnull %141, float noundef 0.000000e+00, float noundef 3.100000e+01, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.11) #13
  call void @RNA_pointer_create(ptr noundef nonnull %122, ptr noundef nonnull @RNA_Object, ptr noundef nonnull %122, ptr noundef nonnull %5) #13
  call void @uiLayoutSetContextPointer(ptr noundef %129, ptr noundef nonnull @.str.12, ptr noundef nonnull %5) #13
  call void @uiItemMenuEnumO(ptr noundef %129, ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 0) #13
  %143 = call i32 @RNA_boolean_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.10) #13
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %127
  %146 = call ptr @uiLayoutBox(ptr noundef %107) #13
  %147 = call ptr @uiLayoutSplit(ptr noundef %146, float noundef 0x3FC99999A0000000, i32 noundef 0) #13
  %148 = call ptr @uiLayoutColumn(ptr noundef %147, i32 noundef 0) #13
  call void @uiItemL(ptr noundef %148, ptr noundef nonnull @.str.16, i32 noundef 0) #13
  call void @uiItemL(ptr noundef %148, ptr noundef nonnull @.str.17, i32 noundef 0) #13
  %149 = call ptr @uiLayoutSplit(ptr noundef %147, float noundef 0x3FEB333340000000, i32 noundef 0) #13
  %150 = call ptr @uiLayoutColumn(ptr noundef %149, i32 noundef 0) #13
  %151 = call ptr @uiLayoutRow(ptr noundef %150, i32 noundef 0) #13
  %152 = call i32 @RNA_boolean_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.18) #13
  %153 = icmp eq i32 %152, 0
  %154 = zext i1 %153 to i8
  call void @uiLayoutSetActive(ptr noundef %151, i8 noundef zeroext %154) #13
  call void @uiTemplateGameStates(ptr noundef %151, ptr noundef nonnull %4, ptr noundef nonnull @.str.19, ptr noundef nonnull %4, ptr noundef nonnull @.str.20, i32 noundef 0) #13
  %155 = call ptr @uiLayoutRow(ptr noundef %150, i32 noundef 0) #13
  call void @uiTemplateGameStates(ptr noundef %155, ptr noundef nonnull %4, ptr noundef nonnull @.str.21, ptr noundef nonnull %4, ptr noundef nonnull @.str.20, i32 noundef 0) #13
  %156 = call ptr @uiLayoutColumn(ptr noundef %149, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %156, ptr noundef nonnull %4, ptr noundef nonnull @.str.18, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %156, ptr noundef nonnull %4, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  br label %157

157:                                              ; preds = %145, %127
  %158 = load i16, ptr %141, align 4, !tbaa !86
  %159 = and i16 %158, 2048
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %206, label %161

161:                                              ; preds = %157
  call void @uiItemS(ptr noundef %107) #13
  %162 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 93
  %163 = load ptr, ptr %162, align 8, !tbaa !9
  %164 = icmp eq ptr %163, null
  br i1 %164, label %206, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 123
  br label %167

167:                                              ; preds = %165, %203
  %168 = phi ptr [ %163, %165 ], [ %204, %203 ]
  call void @RNA_pointer_create(ptr noundef nonnull %122, ptr noundef nonnull @RNA_Controller, ptr noundef nonnull %168, ptr noundef nonnull %9) #13
  %169 = load i16, ptr %141, align 4, !tbaa !86
  %170 = and i16 %169, 4096
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load i32, ptr %166, align 8, !tbaa !88
  %174 = getelementptr inbounds %struct.bController, ptr %168, i64 0, i32 17
  %175 = load i32, ptr %174, align 4, !tbaa !89
  %176 = and i32 %175, %173
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %203, label %178

178:                                              ; preds = %172, %167
  %179 = call ptr @uiLayoutSplit(ptr noundef %107, float noundef 0x3FA99999A0000000, i32 noundef 0) #13
  %180 = call ptr @uiLayoutColumn(ptr noundef %179, i32 noundef 0) #13
  %181 = call i32 @RNA_boolean_get(ptr noundef nonnull %9, ptr noundef nonnull @.str.23) #13
  %182 = trunc i32 %181 to i8
  call void @uiLayoutSetActive(ptr noundef %180, i8 noundef zeroext %182) #13
  call void @uiLayoutSetAlignment(ptr noundef %180, i8 noundef zeroext 1) #13
  %183 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %184 = call ptr @uiDefIconBut(ptr noundef %20, i32 noundef 11776, i32 noundef 0, i32 noundef 50, i32 noundef 0, i32 noundef 0, i16 noundef signext %183, i16 noundef signext %183, ptr noundef nonnull %168, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #13
  %185 = call i32 @RNA_boolean_get(ptr noundef nonnull %9, ptr noundef nonnull @.str.23) #13
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  call void @uiButSetFlag(ptr noundef %184, i32 noundef 67108864) #13
  br label %188

188:                                              ; preds = %187, %178
  %189 = call ptr @uiLayoutSplit(ptr noundef %179, float noundef 0x3FEE666660000000, i32 noundef 0) #13
  %190 = call ptr @uiLayoutColumn(ptr noundef %189, i32 noundef 1) #13
  call void @uiLayoutSetContextPointer(ptr noundef %190, ptr noundef nonnull @.str.24, ptr noundef nonnull %9) #13
  %191 = load i32, ptr %8, align 4, !tbaa !92
  call fastcc void @draw_controller_header(ptr noundef %190, ptr noundef nonnull %9, i32 noundef %102, i32 noundef %105, i32 noundef %191) #12
  call fastcc void @draw_brick_controller(ptr noundef %190, ptr noundef nonnull %9) #12
  %192 = call ptr @uiLayoutColumn(ptr noundef %189, i32 noundef 0) #13
  %193 = call i32 @RNA_boolean_get(ptr noundef nonnull %9, ptr noundef nonnull @.str.23) #13
  %194 = trunc i32 %193 to i8
  call void @uiLayoutSetActive(ptr noundef %192, i8 noundef zeroext %194) #13
  call void @uiLayoutSetAlignment(ptr noundef %192, i8 noundef zeroext 1) #13
  %195 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %196 = call ptr @uiDefIconBut(ptr noundef %20, i32 noundef 11264, i32 noundef 0, i32 noundef 49, i32 noundef 0, i32 noundef 0, i16 noundef signext %195, i16 noundef signext %195, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #13
  %197 = call i32 @RNA_boolean_get(ptr noundef nonnull %9, ptr noundef nonnull @.str.23) #13
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %188
  call void @uiButSetFlag(ptr noundef %196, i32 noundef 67108864) #13
  br label %200

200:                                              ; preds = %199, %188
  %201 = getelementptr inbounds %struct.bController, ptr %168, i64 0, i32 13
  %202 = getelementptr inbounds %struct.bController, ptr %168, i64 0, i32 6
  call void @uiSetButLink(ptr noundef %196, ptr noundef null, ptr noundef nonnull %201, ptr noundef nonnull %202, i32 noundef 1, i32 noundef 2) #13
  br label %203

203:                                              ; preds = %172, %200
  %204 = load ptr, ptr %168, align 8, !tbaa !9
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %167, !llvm.loop !93

206:                                              ; preds = %203, %161, %157, %119
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #11
  %207 = add nuw nsw i64 %120, 1
  %208 = icmp eq i64 %207, %118
  br i1 %208, label %209, label %119, !llvm.loop !94

209:                                              ; preds = %206
  %210 = load i16, ptr %7, align 2, !tbaa !5
  br label %211

211:                                              ; preds = %209, %99
  %212 = phi i16 [ %210, %209 ], [ %24, %99 ]
  call void @uiBlockLayoutResolve(ptr noundef %20, ptr noundef null, ptr noundef nonnull %8) #13
  %213 = load i32, ptr %8, align 4, !tbaa !92
  %214 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %215 = sext i16 %214 to i32
  %216 = sdiv i16 %214, 2
  %217 = sext i16 %216 to i32
  %218 = sdiv i16 %214, -2
  %219 = sext i16 %218 to i32
  store i32 %219, ptr %8, align 4, !tbaa !92
  %220 = mul nsw i32 %215, 17
  %221 = call ptr @UI_GetStyle() #13
  %222 = call ptr @uiBlockLayout(ptr noundef %20, i32 noundef 1, i32 noundef 0, i32 noundef %217, i32 noundef %219, i32 noundef %220, i32 noundef 20, i32 noundef 0, ptr noundef %221) #13
  %223 = call ptr @uiLayoutRow(ptr noundef %222, i32 noundef 1) #13
  %224 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %225 = sdiv i16 %224, -2
  %226 = add nsw i16 %225, %216
  %227 = sext i16 %226 to i32
  %228 = load i32, ptr %8, align 4, !tbaa !92
  %229 = mul i16 %224, 15
  %230 = call ptr @uiDefBlockBut(ptr noundef %20, ptr noundef nonnull @sensor_menu, ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef %227, i32 noundef %228, i16 noundef signext %229, i16 noundef signext %224, ptr noundef nonnull @.str.3) #13
  call void @uiItemR(ptr noundef %223, ptr noundef nonnull %3, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %223, ptr noundef nonnull %3, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %223, ptr noundef nonnull %3, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %223, ptr noundef nonnull %3, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef 0) #13
  %231 = icmp sgt i16 %212, 0
  br i1 %231, label %232, label %313

232:                                              ; preds = %211
  %233 = sitofp i32 %220 to float
  br label %234

234:                                              ; preds = %232, %308
  %235 = phi i16 [ %212, %232 ], [ %309, %308 ]
  %236 = phi i64 [ 0, %232 ], [ %310, %308 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #11
  %237 = getelementptr inbounds ptr, ptr %18, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !9
  %239 = getelementptr inbounds %struct.Object, ptr %238, i64 0, i32 62
  %240 = load i8, ptr %239, align 2, !tbaa !19
  %241 = and i8 %240, 1
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %308, label %243

243:                                              ; preds = %234
  %244 = call ptr @uiLayoutRow(ptr noundef %222, i32 noundef 1) #13
  %245 = getelementptr inbounds %struct.ID, ptr %238, i64 0, i32 4, i64 2
  %246 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %247 = sdiv i16 %246, -2
  %248 = zext i16 %247 to i32
  %249 = add nsw i32 %248, %217
  %250 = shl i32 %249, 16
  %251 = ashr exact i32 %250, 16
  %252 = load i32, ptr %8, align 4, !tbaa !92
  %253 = sitofp i16 %246 to float
  %254 = call float @llvm.fmuladd.f32(float %253, float -1.500000e+00, float %233)
  %255 = fptosi float %254 to i16
  %256 = getelementptr inbounds %struct.Object, ptr %238, i64 0, i32 61
  %257 = call ptr @uiDefButBitS(ptr noundef %20, i32 noundef 1536, i32 noundef 64, i32 noundef 1, ptr noundef nonnull %245, i32 noundef %251, i32 noundef %252, i16 noundef signext %255, i16 noundef signext %246, ptr noundef nonnull %256, float noundef 0.000000e+00, float noundef 3.100000e+01, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.31) #13
  call void @RNA_pointer_create(ptr noundef nonnull %238, ptr noundef nonnull @RNA_Object, ptr noundef nonnull %238, ptr noundef nonnull %5) #13
  call void @uiLayoutSetContextPointer(ptr noundef %244, ptr noundef nonnull @.str.12, ptr noundef nonnull %5) #13
  call void @uiItemMenuEnumO(ptr noundef %244, ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.33, i32 noundef 0) #13
  %258 = load i16, ptr %256, align 4, !tbaa !86
  %259 = and i16 %258, 64
  %260 = icmp eq i16 %259, 0
  br i1 %260, label %308, label %261

261:                                              ; preds = %243
  call void @uiItemS(ptr noundef %222) #13
  %262 = getelementptr inbounds %struct.Object, ptr %238, i64 0, i32 92
  %263 = load ptr, ptr %262, align 8, !tbaa !9
  %264 = icmp eq ptr %263, null
  br i1 %264, label %308, label %265

265:                                              ; preds = %261, %303
  %266 = phi ptr [ %304, %303 ], [ %263, %261 ]
  call void @RNA_pointer_create(ptr noundef nonnull %238, ptr noundef nonnull @RNA_Sensor, ptr noundef nonnull %266, ptr noundef nonnull %10) #13
  %267 = load i16, ptr %256, align 4, !tbaa !86
  %268 = and i16 %267, 4096
  %269 = icmp eq i16 %268, 0
  br i1 %269, label %270, label %286

270:                                              ; preds = %265
  %271 = load i16, ptr %16, align 2, !tbaa !76
  %272 = and i16 %271, 512
  %273 = icmp eq i16 %272, 0
  br i1 %273, label %286, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.bSensor, ptr %266, i64 0, i32 7
  %276 = load i16, ptr %275, align 2, !tbaa !53
  %277 = icmp eq i16 %276, 0
  br i1 %277, label %286, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.bSensor, ptr %266, i64 0, i32 4
  %280 = load i16, ptr %279, align 4, !tbaa !84
  %281 = and i16 %280, 32
  %282 = icmp eq i16 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %278
  %284 = call fastcc zeroext i8 @is_sensor_linked(ptr noundef %20, ptr noundef nonnull %266) #12, !range !95
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %303, label %286

286:                                              ; preds = %278, %283, %274, %270, %265
  %287 = getelementptr inbounds %struct.bSensor, ptr %266, i64 0, i32 4
  %288 = load i16, ptr %287, align 4, !tbaa !84
  %289 = or i16 %288, 16
  store i16 %289, ptr %287, align 4, !tbaa !84
  %290 = call ptr @uiLayoutSplit(ptr noundef %222, float noundef 0x3FEE666660000000, i32 noundef 0) #13
  %291 = call ptr @uiLayoutColumn(ptr noundef %290, i32 noundef 1) #13
  call void @uiLayoutSetContextPointer(ptr noundef %291, ptr noundef nonnull @.str.34, ptr noundef nonnull %10) #13
  call fastcc void @draw_sensor_header(ptr noundef %291, ptr noundef nonnull %10, ptr noundef nonnull %3) #12
  call fastcc void @draw_brick_sensor(ptr noundef %291, ptr noundef nonnull %10, ptr noundef %0) #12
  %292 = call ptr @uiLayoutColumn(ptr noundef %290, i32 noundef 0) #13
  %293 = call i32 @RNA_boolean_get(ptr noundef nonnull %10, ptr noundef nonnull @.str.23) #13
  %294 = trunc i32 %293 to i8
  call void @uiLayoutSetActive(ptr noundef %292, i8 noundef zeroext %294) #13
  %295 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %296 = call ptr @uiDefIconBut(ptr noundef %20, i32 noundef 11264, i32 noundef 0, i32 noundef 49, i32 noundef 0, i32 noundef 0, i16 noundef signext %295, i16 noundef signext %295, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #13
  %297 = call i32 @RNA_boolean_get(ptr noundef nonnull %10, ptr noundef nonnull @.str.23) #13
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %286
  call void @uiButSetFlag(ptr noundef %296, i32 noundef 67108864) #13
  br label %300

300:                                              ; preds = %299, %286
  %301 = getelementptr inbounds %struct.bSensor, ptr %266, i64 0, i32 12
  %302 = getelementptr inbounds %struct.bSensor, ptr %266, i64 0, i32 7
  call void @uiSetButLink(ptr noundef %296, ptr noundef null, ptr noundef nonnull %301, ptr noundef nonnull %302, i32 noundef 0, i32 noundef 1) #13
  br label %303

303:                                              ; preds = %283, %300
  %304 = load ptr, ptr %266, align 8, !tbaa !9
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %265, !llvm.loop !96

306:                                              ; preds = %303
  %307 = load i16, ptr %7, align 2, !tbaa !5
  br label %308

308:                                              ; preds = %306, %261, %243, %234
  %309 = phi i16 [ %307, %306 ], [ %235, %261 ], [ %235, %243 ], [ %235, %234 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #11
  %310 = add nuw nsw i64 %236, 1
  %311 = sext i16 %309 to i64
  %312 = icmp slt i64 %310, %311
  br i1 %312, label %234, label %313, !llvm.loop !97

313:                                              ; preds = %308, %211
  %314 = phi i16 [ %212, %211 ], [ %309, %308 ]
  call void @uiBlockLayoutResolve(ptr noundef %20, ptr noundef null, ptr noundef nonnull %8) #13
  %315 = load i32, ptr %8, align 4
  %316 = call i32 @llvm.smin.i32(i32 %213, i32 %315)
  %317 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %318 = sext i16 %317 to i32
  %319 = mul nsw i32 %318, 40
  %320 = sdiv i16 %317, -2
  %321 = sext i16 %320 to i32
  store i32 %321, ptr %8, align 4, !tbaa !92
  %322 = mul nsw i32 %318, 17
  %323 = call ptr @UI_GetStyle() #13
  %324 = call ptr @uiBlockLayout(ptr noundef %20, i32 noundef 1, i32 noundef 0, i32 noundef %319, i32 noundef %321, i32 noundef %322, i32 noundef 20, i32 noundef 0, ptr noundef %323) #13
  %325 = call ptr @uiLayoutRow(ptr noundef %324, i32 noundef 1) #13
  %326 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %327 = sdiv i16 %326, -2
  %328 = sext i16 %327 to i32
  %329 = add nsw i32 %319, %328
  %330 = load i32, ptr %8, align 4, !tbaa !92
  %331 = mul i16 %326, 15
  %332 = call ptr @uiDefBlockBut(ptr noundef %20, ptr noundef nonnull @actuator_menu, ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef %329, i32 noundef %330, i16 noundef signext %331, i16 noundef signext %326, ptr noundef nonnull @.str.3) #13
  call void @uiItemR(ptr noundef %325, ptr noundef nonnull %3, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %325, ptr noundef nonnull %3, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %325, ptr noundef nonnull %3, ptr noundef nonnull @.str.38, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %325, ptr noundef nonnull %3, ptr noundef nonnull @.str.39, i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef 0) #13
  %333 = icmp sgt i16 %314, 0
  br i1 %333, label %334, label %402

334:                                              ; preds = %313
  %335 = sitofp i32 %322 to float
  %336 = zext nneg i16 %314 to i64
  br label %337

337:                                              ; preds = %334, %399
  %338 = phi i64 [ 0, %334 ], [ %400, %399 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #11
  %339 = getelementptr inbounds ptr, ptr %18, i64 %338
  %340 = load ptr, ptr %339, align 8, !tbaa !9
  %341 = getelementptr inbounds %struct.Object, ptr %340, i64 0, i32 62
  %342 = load i8, ptr %341, align 2, !tbaa !19
  %343 = and i8 %342, 4
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %399, label %345

345:                                              ; preds = %337
  %346 = call ptr @uiLayoutRow(ptr noundef %324, i32 noundef 1) #13
  %347 = getelementptr inbounds %struct.ID, ptr %340, i64 0, i32 4, i64 2
  %348 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %349 = sdiv i16 %348, -2
  %350 = zext i16 %349 to i32
  %351 = add nsw i32 %319, %350
  %352 = shl i32 %351, 16
  %353 = ashr exact i32 %352, 16
  %354 = load i32, ptr %8, align 4, !tbaa !92
  %355 = sitofp i16 %348 to float
  %356 = call float @llvm.fmuladd.f32(float %355, float -1.500000e+00, float %335)
  %357 = fptosi float %356 to i16
  %358 = getelementptr inbounds %struct.Object, ptr %340, i64 0, i32 61
  %359 = call ptr @uiDefButBitS(ptr noundef %20, i32 noundef 1536, i32 noundef 128, i32 noundef 1, ptr noundef nonnull %347, i32 noundef %353, i32 noundef %354, i16 noundef signext %357, i16 noundef signext %348, ptr noundef nonnull %358, float noundef 0.000000e+00, float noundef 3.100000e+01, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.40) #13
  call void @RNA_pointer_create(ptr noundef nonnull %340, ptr noundef nonnull @RNA_Object, ptr noundef nonnull %340, ptr noundef nonnull %5) #13
  call void @uiLayoutSetContextPointer(ptr noundef %346, ptr noundef nonnull @.str.12, ptr noundef nonnull %5) #13
  call void @uiItemMenuEnumO(ptr noundef %346, ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.42, i32 noundef 0) #13
  %360 = load i16, ptr %358, align 4, !tbaa !86
  %361 = and i16 %360, 128
  %362 = icmp eq i16 %361, 0
  br i1 %362, label %399, label %363

363:                                              ; preds = %345
  call void @uiItemS(ptr noundef %324) #13
  %364 = getelementptr inbounds %struct.Object, ptr %340, i64 0, i32 94
  %365 = load ptr, ptr %364, align 8, !tbaa !9
  %366 = icmp eq ptr %365, null
  br i1 %366, label %399, label %367

367:                                              ; preds = %363, %396
  %368 = phi ptr [ %397, %396 ], [ %365, %363 ]
  call void @RNA_pointer_create(ptr noundef nonnull %340, ptr noundef nonnull @RNA_Actuator, ptr noundef nonnull %368, ptr noundef nonnull %11) #13
  %369 = load i16, ptr %358, align 4, !tbaa !86
  %370 = and i16 %369, 4096
  %371 = icmp eq i16 %370, 0
  br i1 %371, label %372, label %381

372:                                              ; preds = %367
  %373 = load i16, ptr %16, align 2, !tbaa !76
  %374 = and i16 %373, 1024
  %375 = icmp eq i16 %374, 0
  br i1 %375, label %381, label %376

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.bActuator, ptr %368, i64 0, i32 4
  %378 = load i16, ptr %377, align 2, !tbaa !82
  %379 = and i16 %378, 56
  %380 = icmp eq i16 %379, 8
  br i1 %380, label %396, label %381

381:                                              ; preds = %376, %372, %367
  %382 = getelementptr inbounds %struct.bActuator, ptr %368, i64 0, i32 4
  %383 = load i16, ptr %382, align 2, !tbaa !82
  %384 = or i16 %383, 16
  store i16 %384, ptr %382, align 2, !tbaa !82
  %385 = call ptr @uiLayoutSplit(ptr noundef %324, float noundef 0x3FA99999A0000000, i32 noundef 0) #13
  %386 = call ptr @uiLayoutColumn(ptr noundef %385, i32 noundef 0) #13
  %387 = call i32 @RNA_boolean_get(ptr noundef nonnull %11, ptr noundef nonnull @.str.23) #13
  %388 = trunc i32 %387 to i8
  call void @uiLayoutSetActive(ptr noundef %386, i8 noundef zeroext %388) #13
  %389 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %390 = call ptr @uiDefIconBut(ptr noundef %20, i32 noundef 11776, i32 noundef 0, i32 noundef 50, i32 noundef 0, i32 noundef 0, i16 noundef signext %389, i16 noundef signext %389, ptr noundef nonnull %368, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #13
  %391 = call i32 @RNA_boolean_get(ptr noundef nonnull %11, ptr noundef nonnull @.str.23) #13
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %381
  call void @uiButSetFlag(ptr noundef %390, i32 noundef 67108864) #13
  br label %394

394:                                              ; preds = %393, %381
  %395 = call ptr @uiLayoutColumn(ptr noundef %385, i32 noundef 1) #13
  call void @uiLayoutSetContextPointer(ptr noundef %395, ptr noundef nonnull @.str.43, ptr noundef nonnull %11) #13
  call fastcc void @draw_actuator_header(ptr noundef %395, ptr noundef nonnull %11, ptr noundef nonnull %3) #12
  call fastcc void @draw_brick_actuator(ptr noundef %395, ptr noundef nonnull %11, ptr noundef %0) #12
  br label %396

396:                                              ; preds = %376, %394
  %397 = load ptr, ptr %368, align 8, !tbaa !9
  %398 = icmp eq ptr %397, null
  br i1 %398, label %399, label %367, !llvm.loop !98

399:                                              ; preds = %396, %363, %345, %337
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #11
  %400 = add nuw nsw i64 %338, 1
  %401 = icmp eq i64 %400, %336
  br i1 %401, label %402, label %337, !llvm.loop !99

402:                                              ; preds = %399, %313
  call void @uiBlockLayoutResolve(ptr noundef %20, ptr noundef null, ptr noundef nonnull %8) #13
  %403 = load i32, ptr %8, align 4
  %404 = call i32 @llvm.smin.i32(i32 %316, i32 %403)
  %405 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %406 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %407 = sext i16 %406 to i32
  %408 = sitofp i16 %406 to float
  %409 = fmul float %408, 5.750000e+01
  %410 = fptosi float %409 to i32
  %411 = sub nsw i32 %404, %407
  call void @UI_view2d_totRect_set(ptr noundef nonnull %405, i32 noundef %410, i32 noundef %411) #13
  call void @UI_view2d_view_ortho(ptr noundef nonnull %405) #13
  call void @uiComposeLinks(ptr noundef %20) #13
  call void @uiEndBlock(ptr noundef %0, ptr noundef %20) #13
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %20) #13
  call void @UI_view2d_view_restore(ptr noundef %0) #13
  %412 = icmp eq ptr %18, null
  br i1 %412, label %415, label %413

413:                                              ; preds = %402
  %414 = load ptr, ptr @MEM_freeN, align 8, !tbaa !9
  call void %414(ptr noundef nonnull %18) #13
  br label %415

415:                                              ; preds = %402, %413, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_logic(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_logic_buts(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %316, label %7

7:                                                ; preds = %3
  switch i32 %2, label %316 [
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
  %10 = load i32, ptr %9, align 8, !tbaa !100
  %11 = and i32 %10, -40966
  store i32 %11, ptr %9, align 8, !tbaa !100
  br label %316

12:                                               ; preds = %7, %7, %7
  %13 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 99
  %14 = load i32, ptr %13, align 8, !tbaa !100
  %15 = and i32 %14, -24577
  store i32 %15, ptr %13, align 8, !tbaa !100
  br label %316

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %16, %33
  %21 = phi ptr [ %34, %33 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 61
  %23 = load i16, ptr %22, align 4, !tbaa !86
  %24 = and i16 %23, 256
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = and i16 %23, -257
  store i16 %27, ptr %22, align 4, !tbaa !86
  %28 = tail call ptr @new_sensor(i32 noundef 0) #13
  %29 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 92
  tail call void @BLI_addtail(ptr noundef nonnull %29, ptr noundef %28) #13
  %30 = getelementptr inbounds %struct.bSensor, ptr %28, i64 0, i32 10
  tail call void @make_unique_prop_names(ptr noundef %0, ptr noundef nonnull %30) #12
  %31 = load i16, ptr %22, align 4, !tbaa !86
  %32 = or i16 %31, 64
  store i16 %32, ptr %22, align 4, !tbaa !86
  br label %33

33:                                               ; preds = %20, %26
  %34 = load ptr, ptr %21, align 8, !tbaa !9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %20, !llvm.loop !101

36:                                               ; preds = %33, %16
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.45) #13
  br label %316

37:                                               ; preds = %7
  %38 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %39 = load ptr, ptr %38, align 8, !tbaa !9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %316, label %41

41:                                               ; preds = %37, %58
  %42 = phi ptr [ %59, %58 ], [ %39, %37 ]
  %43 = getelementptr inbounds %struct.Object, ptr %42, i64 0, i32 92
  br label %44

44:                                               ; preds = %48, %41
  %45 = phi ptr [ %43, %41 ], [ %46, %48 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !9
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.bSensor, ptr %46, i64 0, i32 2
  %50 = load i16, ptr %49, align 8, !tbaa !102
  %51 = getelementptr inbounds %struct.bSensor, ptr %46, i64 0, i32 3
  %52 = load i16, ptr %51, align 2, !tbaa !103
  %53 = icmp eq i16 %50, %52
  br i1 %53, label %44, label %54, !llvm.loop !104

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.bSensor, ptr %46, i64 0, i32 2
  %56 = getelementptr inbounds %struct.bSensor, ptr %46, i64 0, i32 3
  tail call void @init_sensor(ptr noundef nonnull %46) #13
  %57 = load i16, ptr %55, align 8, !tbaa !102
  store i16 %57, ptr %56, align 2, !tbaa !103
  br label %58

58:                                               ; preds = %44, %54
  %59 = load ptr, ptr %42, align 8, !tbaa !9
  %60 = icmp eq ptr %59, null
  br i1 %60, label %316, label %41, !llvm.loop !105

61:                                               ; preds = %7
  %62 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %63 = load ptr, ptr %62, align 8, !tbaa !9
  %64 = icmp eq ptr %63, null
  br i1 %64, label %81, label %65

65:                                               ; preds = %61, %78
  %66 = phi ptr [ %79, %78 ], [ %63, %61 ]
  %67 = getelementptr inbounds %struct.Object, ptr %66, i64 0, i32 92
  br label %68

68:                                               ; preds = %72, %65
  %69 = phi ptr [ %67, %65 ], [ %70, %72 ]
  %70 = load ptr, ptr %69, align 8, !tbaa !9
  %71 = icmp eq ptr %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.bSensor, ptr %70, i64 0, i32 4
  %74 = load i16, ptr %73, align 4, !tbaa !84
  %75 = and i16 %74, 2
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %68, label %77, !llvm.loop !106

77:                                               ; preds = %72
  tail call void @BLI_remlink(ptr noundef nonnull %67, ptr noundef nonnull %70) #13
  tail call void @free_sensor(ptr noundef nonnull %70) #13
  br label %78

78:                                               ; preds = %68, %77
  %79 = load ptr, ptr %66, align 8, !tbaa !9
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %65, !llvm.loop !107

81:                                               ; preds = %78, %61
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.46) #13
  br label %316

82:                                               ; preds = %7
  %83 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %84 = load ptr, ptr %83, align 8, !tbaa !9
  %85 = icmp eq ptr %84, null
  br i1 %85, label %116, label %86

86:                                               ; preds = %82, %113
  %87 = phi ptr [ %114, %113 ], [ %84, %82 ]
  %88 = getelementptr inbounds %struct.Object, ptr %87, i64 0, i32 61
  %89 = load i16, ptr %88, align 4, !tbaa !86
  %90 = and i16 %89, 512
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %113, label %92

92:                                               ; preds = %86
  %93 = and i16 %89, -513
  store i16 %93, ptr %88, align 4, !tbaa !86
  %94 = tail call ptr @new_controller(i32 noundef 0) #13
  %95 = getelementptr inbounds %struct.bController, ptr %94, i64 0, i32 11
  tail call void @make_unique_prop_names(ptr noundef %0, ptr noundef nonnull %95) #12
  %96 = load i16, ptr %88, align 4, !tbaa !86
  %97 = or i16 %96, 2048
  store i16 %97, ptr %88, align 4, !tbaa !86
  %98 = getelementptr inbounds %struct.Object, ptr %87, i64 0, i32 93
  tail call void @BLI_addtail(ptr noundef nonnull %98, ptr noundef %94) #13
  %99 = getelementptr inbounds %struct.Object, ptr %87, i64 0, i32 123
  %100 = load i32, ptr %99, align 8, !tbaa !88
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
  br i1 %108, label %109, label %101, !llvm.loop !108

109:                                              ; preds = %101, %106
  %110 = phi i32 [ 32, %106 ], [ %102, %101 ]
  %111 = shl nuw i32 1, %110
  %112 = getelementptr inbounds %struct.bController, ptr %94, i64 0, i32 17
  store i32 %111, ptr %112, align 4, !tbaa !89
  br label %113

113:                                              ; preds = %109, %86
  %114 = load ptr, ptr %87, align 8, !tbaa !9
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %86, !llvm.loop !109

116:                                              ; preds = %113, %82
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.47) #13
  br label %316

117:                                              ; preds = %7
  %118 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %119 = load ptr, ptr %118, align 8, !tbaa !9
  %120 = icmp eq ptr %119, null
  br i1 %120, label %316, label %121

121:                                              ; preds = %117, %130
  %122 = phi ptr [ %131, %130 ], [ %119, %117 ]
  %123 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 61
  %124 = load i16, ptr %123, align 4, !tbaa !86
  %125 = and i16 %124, 4096
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %121
  %128 = and i16 %124, -4097
  store i16 %128, ptr %123, align 4, !tbaa !86
  %129 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 123
  store i32 1073741823, ptr %129, align 8, !tbaa !88
  br label %130

130:                                              ; preds = %121, %127
  %131 = load ptr, ptr %122, align 8, !tbaa !9
  %132 = icmp eq ptr %131, null
  br i1 %132, label %316, label %121, !llvm.loop !110

133:                                              ; preds = %7
  %134 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %135 = load ptr, ptr %134, align 8, !tbaa !9
  %136 = icmp eq ptr %135, null
  br i1 %136, label %316, label %137

137:                                              ; preds = %133, %149
  %138 = phi ptr [ %150, %149 ], [ %135, %133 ]
  %139 = getelementptr inbounds %struct.Object, ptr %138, i64 0, i32 61
  %140 = load i16, ptr %139, align 4, !tbaa !86
  %141 = and i16 %140, 8192
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %137
  %144 = and i16 %140, -8193
  store i16 %144, ptr %139, align 4, !tbaa !86
  %145 = getelementptr inbounds %struct.Object, ptr %138, i64 0, i32 124
  %146 = load i32, ptr %145, align 4, !tbaa !111
  %147 = getelementptr inbounds %struct.Object, ptr %138, i64 0, i32 123
  %148 = tail call i32 @llvm.umax.i32(i32 %146, i32 1)
  store i32 %148, ptr %147, align 8
  br label %149

149:                                              ; preds = %143, %137
  %150 = load ptr, ptr %138, align 8, !tbaa !9
  %151 = icmp eq ptr %150, null
  br i1 %151, label %316, label %137, !llvm.loop !112

152:                                              ; preds = %7
  %153 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %154 = load ptr, ptr %153, align 8, !tbaa !9
  %155 = icmp eq ptr %154, null
  br i1 %155, label %316, label %156

156:                                              ; preds = %152, %173
  %157 = phi ptr [ %174, %173 ], [ %154, %152 ]
  %158 = getelementptr inbounds %struct.Object, ptr %157, i64 0, i32 93
  br label %159

159:                                              ; preds = %163, %156
  %160 = phi ptr [ %158, %156 ], [ %161, %163 ]
  %161 = load ptr, ptr %160, align 8, !tbaa !9
  %162 = icmp eq ptr %161, null
  br i1 %162, label %173, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.bController, ptr %161, i64 0, i32 3
  %165 = load i16, ptr %164, align 8, !tbaa !113
  %166 = getelementptr inbounds %struct.bController, ptr %161, i64 0, i32 7
  %167 = load i16, ptr %166, align 8, !tbaa !114
  %168 = icmp eq i16 %165, %167
  br i1 %168, label %159, label %169, !llvm.loop !115

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.bController, ptr %161, i64 0, i32 3
  %171 = getelementptr inbounds %struct.bController, ptr %161, i64 0, i32 7
  tail call void @init_controller(ptr noundef nonnull %161) #13
  %172 = load i16, ptr %170, align 8, !tbaa !113
  store i16 %172, ptr %171, align 8, !tbaa !114
  br label %173

173:                                              ; preds = %159, %169
  %174 = load ptr, ptr %157, align 8, !tbaa !9
  %175 = icmp eq ptr %174, null
  br i1 %175, label %316, label %156, !llvm.loop !116

176:                                              ; preds = %7
  %177 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %178 = load ptr, ptr %177, align 8, !tbaa !9
  %179 = icmp eq ptr %178, null
  br i1 %179, label %196, label %180

180:                                              ; preds = %176, %193
  %181 = phi ptr [ %194, %193 ], [ %178, %176 ]
  %182 = getelementptr inbounds %struct.Object, ptr %181, i64 0, i32 93
  br label %183

183:                                              ; preds = %187, %180
  %184 = phi ptr [ %182, %180 ], [ %185, %187 ]
  %185 = load ptr, ptr %184, align 8, !tbaa !9
  %186 = icmp eq ptr %185, null
  br i1 %186, label %193, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.bController, ptr %185, i64 0, i32 4
  %189 = load i16, ptr %188, align 2, !tbaa !117
  %190 = and i16 %189, 2
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %183, label %192, !llvm.loop !118

192:                                              ; preds = %187
  tail call void @BLI_remlink(ptr noundef nonnull %182, ptr noundef nonnull %185) #13
  tail call void @unlink_controller(ptr noundef nonnull %185) #13
  tail call void @free_controller(ptr noundef nonnull %185) #13
  br label %193

193:                                              ; preds = %183, %192
  %194 = load ptr, ptr %181, align 8, !tbaa !9
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %180, !llvm.loop !119

196:                                              ; preds = %193, %176
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.48) #13
  br label %316

197:                                              ; preds = %7
  %198 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %199 = load ptr, ptr %198, align 8, !tbaa !9
  %200 = icmp eq ptr %199, null
  br i1 %200, label %217, label %201

201:                                              ; preds = %197, %214
  %202 = phi ptr [ %215, %214 ], [ %199, %197 ]
  %203 = getelementptr inbounds %struct.Object, ptr %202, i64 0, i32 61
  %204 = load i16, ptr %203, align 4, !tbaa !86
  %205 = and i16 %204, 1024
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %214, label %207

207:                                              ; preds = %201
  %208 = and i16 %204, -1025
  store i16 %208, ptr %203, align 4, !tbaa !86
  %209 = tail call ptr @new_actuator(i32 noundef 0) #13
  %210 = getelementptr inbounds %struct.bActuator, ptr %209, i64 0, i32 7
  tail call void @make_unique_prop_names(ptr noundef %0, ptr noundef nonnull %210) #12
  %211 = getelementptr inbounds %struct.Object, ptr %202, i64 0, i32 94
  tail call void @BLI_addtail(ptr noundef nonnull %211, ptr noundef %209) #13
  %212 = load i16, ptr %203, align 4, !tbaa !86
  %213 = or i16 %212, 128
  store i16 %213, ptr %203, align 4, !tbaa !86
  br label %214

214:                                              ; preds = %201, %207
  %215 = load ptr, ptr %202, align 8, !tbaa !9
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %201, !llvm.loop !120

217:                                              ; preds = %214, %197
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.49) #13
  br label %316

218:                                              ; preds = %7
  %219 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %220 = load ptr, ptr %219, align 8, !tbaa !9
  %221 = icmp eq ptr %220, null
  br i1 %221, label %316, label %222

222:                                              ; preds = %218, %239
  %223 = phi ptr [ %240, %239 ], [ %220, %218 ]
  %224 = getelementptr inbounds %struct.Object, ptr %223, i64 0, i32 94
  br label %225

225:                                              ; preds = %229, %222
  %226 = phi ptr [ %224, %222 ], [ %227, %229 ]
  %227 = load ptr, ptr %226, align 8, !tbaa !9
  %228 = icmp eq ptr %227, null
  br i1 %228, label %239, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.bActuator, ptr %227, i64 0, i32 3
  %231 = load i16, ptr %230, align 8, !tbaa !121
  %232 = getelementptr inbounds %struct.bActuator, ptr %227, i64 0, i32 5
  %233 = load i16, ptr %232, align 4, !tbaa !122
  %234 = icmp eq i16 %231, %233
  br i1 %234, label %225, label %235, !llvm.loop !123

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.bActuator, ptr %227, i64 0, i32 3
  %237 = getelementptr inbounds %struct.bActuator, ptr %227, i64 0, i32 5
  tail call void @init_actuator(ptr noundef nonnull %227) #13
  %238 = load i16, ptr %236, align 8, !tbaa !121
  store i16 %238, ptr %237, align 4, !tbaa !122
  br label %239

239:                                              ; preds = %225, %235
  %240 = load ptr, ptr %223, align 8, !tbaa !9
  %241 = icmp eq ptr %240, null
  br i1 %241, label %316, label %222, !llvm.loop !124

242:                                              ; preds = %7
  %243 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %244 = load ptr, ptr %243, align 8, !tbaa !9
  %245 = icmp eq ptr %244, null
  br i1 %245, label %262, label %246

246:                                              ; preds = %242, %259
  %247 = phi ptr [ %260, %259 ], [ %244, %242 ]
  %248 = getelementptr inbounds %struct.Object, ptr %247, i64 0, i32 94
  br label %249

249:                                              ; preds = %253, %246
  %250 = phi ptr [ %248, %246 ], [ %251, %253 ]
  %251 = load ptr, ptr %250, align 8, !tbaa !9
  %252 = icmp eq ptr %251, null
  br i1 %252, label %259, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.bActuator, ptr %251, i64 0, i32 4
  %255 = load i16, ptr %254, align 2, !tbaa !82
  %256 = and i16 %255, 2
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %249, label %258, !llvm.loop !125

258:                                              ; preds = %253
  tail call void @BLI_remlink(ptr noundef nonnull %248, ptr noundef nonnull %251) #13
  tail call void @unlink_actuator(ptr noundef nonnull %251) #13
  tail call void @free_actuator(ptr noundef nonnull %251) #13
  br label %259

259:                                              ; preds = %249, %258
  %260 = load ptr, ptr %247, align 8, !tbaa !9
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %246, !llvm.loop !126

262:                                              ; preds = %259, %242
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.50) #13
  br label %316

263:                                              ; preds = %7
  %264 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %265 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 31
  br label %266

266:                                              ; preds = %313, %263
  %267 = phi ptr [ %264, %263 ], [ %268, %313 ]
  %268 = load ptr, ptr %267, align 8, !tbaa !9
  %269 = icmp eq ptr %268, null
  br i1 %269, label %316, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.Object, ptr %268, i64 0, i32 94
  %272 = load ptr, ptr %271, align 8, !tbaa !9
  %273 = icmp eq ptr %272, null
  br i1 %273, label %313, label %274

274:                                              ; preds = %270, %309
  %275 = phi ptr [ %311, %309 ], [ %272, %270 ]
  %276 = phi i32 [ %310, %309 ], [ 0, %270 ]
  %277 = getelementptr inbounds %struct.bActuator, ptr %275, i64 0, i32 3
  %278 = load i16, ptr %277, align 8, !tbaa !121
  %279 = icmp eq i16 %278, 5
  br i1 %279, label %280, label %309

280:                                              ; preds = %274
  %281 = getelementptr inbounds %struct.bActuator, ptr %275, i64 0, i32 8
  %282 = load ptr, ptr %281, align 8, !tbaa !127
  %283 = getelementptr inbounds %struct.bSoundActuator, ptr %282, i64 0, i32 1
  %284 = load i16, ptr %283, align 2, !tbaa !128
  switch i16 %284, label %285 [
    i16 0, label %309
    i16 -2, label %313
  ]

285:                                              ; preds = %280
  %286 = sext i16 %284 to i32
  br label %287

287:                                              ; preds = %287, %285
  %288 = phi ptr [ %290, %287 ], [ %265, %285 ]
  %289 = phi i32 [ %294, %287 ], [ 1, %285 ]
  %290 = load ptr, ptr %288, align 8, !tbaa !9
  %291 = icmp eq ptr %290, null
  %292 = icmp eq i32 %289, %286
  %293 = select i1 %291, i1 true, i1 %292
  %294 = add nuw nsw i32 %289, 1
  br i1 %293, label %295, label %287, !llvm.loop !131

295:                                              ; preds = %287
  %296 = getelementptr inbounds %struct.bSoundActuator, ptr %282, i64 0, i32 7
  %297 = load ptr, ptr %296, align 8, !tbaa !132
  %298 = icmp eq ptr %297, null
  br i1 %298, label %303, label %299

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.ID, ptr %297, i64 0, i32 6
  %301 = load i32, ptr %300, align 4, !tbaa !133
  %302 = add nsw i32 %301, -1
  store i32 %302, ptr %300, align 4, !tbaa !133
  br label %303

303:                                              ; preds = %299, %295
  store ptr %290, ptr %296, align 8, !tbaa !132
  br i1 %291, label %308, label %304

304:                                              ; preds = %303
  %305 = getelementptr inbounds %struct.ID, ptr %290, i64 0, i32 6
  %306 = load i32, ptr %305, align 4, !tbaa !133
  %307 = add nsw i32 %306, 1
  store i32 %307, ptr %305, align 4, !tbaa !133
  br label %308

308:                                              ; preds = %303, %304
  store i16 0, ptr %283, align 2, !tbaa !128
  br label %309

309:                                              ; preds = %280, %308, %274
  %310 = phi i32 [ %276, %274 ], [ 1, %308 ], [ %276, %280 ]
  %311 = load ptr, ptr %275, align 8, !tbaa !9
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %274, !llvm.loop !134

313:                                              ; preds = %309, %280, %270
  %314 = phi i32 [ 0, %270 ], [ %276, %280 ], [ %310, %309 ]
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %266, label %316, !llvm.loop !135

316:                                              ; preds = %313, %266, %239, %173, %149, %130, %58, %218, %152, %133, %117, %37, %8, %12, %36, %81, %116, %196, %217, %262, %7, %3
  ret void
}

; Function Attrs: optsize
declare void @uiBoundsBlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiBlockLayout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @UI_GetStyle() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefBlockBut(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @controller_menu(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.controller_menu, i16 noundef signext 2) #13
  tail call void @uiBlockSetButmFunc(ptr noundef %4, ptr noundef nonnull @do_controller_menu, ptr noundef null) #13
  %5 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef -20, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #13
  %6 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef -40, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.3) #13
  %7 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 27648, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef -46, i16 noundef signext 160, i16 noundef signext 6, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #13
  %8 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef -66, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #13
  %9 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.54, i32 noundef 0, i32 noundef -86, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 3.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.3) #13
  tail call void @uiBlockSetDirection(ptr noundef %4, i8 noundef zeroext 1) #13
  tail call void @uiEndBlock(ptr noundef %0, ptr noundef %4) #13
  ret ptr %4
}

; Function Attrs: optsize
declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefButBitS(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: optsize
declare void @uiLayoutSetContextPointer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemMenuEnumO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutBox(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiTemplateGameStates(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemS(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetAlignment(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_controller_header(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x i8], align 1
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #11
  %9 = tail call i32 @RNA_int_get(ptr noundef %1, ptr noundef nonnull @.str.56) #13
  %10 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 3, ptr noundef nonnull @.str.55, i32 noundef %9) #13
  %11 = call ptr @uiLayoutBox(ptr noundef %0) #13
  %12 = call ptr @uiLayoutRow(ptr noundef %11, i32 noundef 0) #13
  %13 = call ptr @uiLayoutRow(ptr noundef %12, i32 noundef 0) #13
  %14 = call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.23) #13
  %15 = trunc i32 %14 to i8
  call void @uiLayoutSetActive(ptr noundef %13, i8 noundef zeroext %15) #13
  call void @uiItemR(ptr noundef %13, ptr noundef %1, ptr noundef nonnull @.str.57, i32 noundef 128, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  %16 = call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.57) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %5
  call void @uiItemR(ptr noundef %13, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %13, ptr noundef nonnull %1, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  %19 = call ptr @uiLayoutGetBlock(ptr noundef %0) #13
  %20 = add nsw i32 %3, %2
  %21 = shl i32 %20, 16
  %22 = add i32 %21, -2883584
  %23 = ashr exact i32 %22, 16
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %25 = call ptr @uiDefBlockBut(ptr noundef %19, ptr noundef nonnull @controller_state_mask_menu, ptr noundef %8, ptr noundef nonnull %6, i32 noundef %23, i32 noundef %4, i16 noundef signext 44, i16 noundef signext %24, ptr noundef nonnull @.str.59) #13
  br label %32

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.bController, ptr %8, i64 0, i32 3
  %28 = load i16, ptr %27, align 8, !tbaa !113
  %29 = sext i16 %28 to i32
  %30 = call fastcc ptr @controller_name(i32 noundef %29) #12
  call void @uiItemL(ptr noundef %13, ptr noundef nonnull %30, i32 noundef 0) #13
  %31 = getelementptr inbounds %struct.bController, ptr %8, i64 0, i32 11
  call void @uiItemL(ptr noundef %13, ptr noundef nonnull %31, i32 noundef 0) #13
  call void @uiItemL(ptr noundef %13, ptr noundef nonnull %6, i32 noundef 0) #13
  br label %32

32:                                               ; preds = %26, %18
  %33 = call ptr @uiLayoutRow(ptr noundef %12, i32 noundef 0) #13
  %34 = call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.23) #13
  %35 = trunc i32 %34 to i8
  call void @uiLayoutSetActive(ptr noundef %33, i8 noundef zeroext %35) #13
  call void @uiItemR(ptr noundef %33, ptr noundef nonnull %1, ptr noundef nonnull @.str.60, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  %36 = call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.57) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = call ptr @uiLayoutRow(ptr noundef %12, i32 noundef 1) #13
  %40 = call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.23) #13
  %41 = trunc i32 %40 to i8
  call void @uiLayoutSetActive(ptr noundef %39, i8 noundef zeroext %41) #13
  call void @uiItemEnumO(ptr noundef %39, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.3, i32 noundef 7, ptr noundef nonnull @.str.62, i32 noundef 1) #13
  call void @uiItemEnumO(ptr noundef %39, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.3, i32 noundef 5, ptr noundef nonnull @.str.62, i32 noundef 2) #13
  br label %42

42:                                               ; preds = %38, %32
  %43 = call ptr @uiLayoutRow(ptr noundef %12, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %43, ptr noundef nonnull %1, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  %44 = call ptr @uiLayoutRow(ptr noundef %12, i32 noundef 0) #13
  %45 = call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.23) #13
  %46 = trunc i32 %45 to i8
  call void @uiLayoutSetActive(ptr noundef %44, i8 noundef zeroext %46) #13
  call void @uiItemO(ptr noundef %44, ptr noundef nonnull @.str.3, i32 noundef 19, ptr noundef nonnull @.str.63) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_brick_controller(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.57) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @uiLayoutBox(ptr noundef %0) #13
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.23) #13
  %8 = trunc i32 %7 to i8
  tail call void @uiLayoutSetActive(ptr noundef %6, i8 noundef zeroext %8) #13
  %9 = tail call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.14) #13
  switch i32 %9, label %12 [
    i32 3, label %11
    i32 2, label %10
  ]

10:                                               ; preds = %5
  tail call fastcc void @draw_controller_expression(ptr noundef %6, ptr noundef %1) #12
  br label %12

11:                                               ; preds = %5
  tail call fastcc void @draw_controller_python(ptr noundef %6, ptr noundef %1) #12
  br label %12

12:                                               ; preds = %10, %11, %5, %2
  ret void
}

; Function Attrs: optsize
declare void @uiSetButLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockLayoutResolve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @sensor_menu(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.sensor_menu, i16 noundef signext 2) #13
  tail call void @uiBlockSetButmFunc(ptr noundef %4, ptr noundef nonnull @do_sensor_menu, ptr noundef null) #13
  %5 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef -20, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #13
  %6 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef -40, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.3) #13
  %7 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 27648, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef -46, i16 noundef signext 160, i16 noundef signext 6, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #13
  %8 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.78, i32 noundef 0, i32 noundef -66, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #13
  %9 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.79, i32 noundef 0, i32 noundef -86, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.3) #13
  tail call void @uiBlockSetDirection(ptr noundef %4, i8 noundef zeroext 1) #13
  tail call void @uiEndBlock(ptr noundef %0, ptr noundef %4) #13
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @is_sensor_linked(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bSensor, ptr %1, i64 0, i32 12
  %4 = getelementptr inbounds %struct.bSensor, ptr %1, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !53
  %6 = icmp sgt i16 %5, 0
  br i1 %6, label %12, label %19

7:                                                ; preds = %12
  %8 = add nuw nsw i64 %13, 1
  %9 = load i16, ptr %4, align 2, !tbaa !53
  %10 = sext i16 %9 to i64
  %11 = icmp slt i64 %8, %10
  br i1 %11, label %12, label %19, !llvm.loop !139

12:                                               ; preds = %2, %7
  %13 = phi i64 [ %8, %7 ], [ 0, %2 ]
  %14 = load ptr, ptr %3, align 8, !tbaa !55
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = tail call ptr @uiFindInlink(ptr noundef %0, ptr noundef %16) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %7, label %19

19:                                               ; preds = %12, %7, %2
  %20 = phi i8 [ 0, %2 ], [ 0, %7 ], [ 1, %12 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_sensor_header(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  %6 = tail call ptr @uiLayoutBox(ptr noundef %0) #13
  %7 = tail call ptr @uiLayoutRow(ptr noundef %6, i32 noundef 0) #13
  %8 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 0) #13
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.23) #13
  %10 = trunc i32 %9 to i8
  tail call void @uiLayoutSetActive(ptr noundef %8, i8 noundef zeroext %10) #13
  tail call void @uiItemR(ptr noundef %8, ptr noundef %1, ptr noundef nonnull @.str.57, i32 noundef 128, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.57) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %8, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %8, ptr noundef nonnull %1, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  br label %20

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.bSensor, ptr %5, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !102
  %17 = sext i16 %16 to i32
  %18 = tail call fastcc ptr @sensor_name(i32 noundef %17) #12
  tail call void @uiItemL(ptr noundef %8, ptr noundef nonnull %18, i32 noundef 0) #13
  %19 = getelementptr inbounds %struct.bSensor, ptr %5, i64 0, i32 10
  tail call void @uiItemL(ptr noundef %8, ptr noundef nonnull %19, i32 noundef 0) #13
  br label %20

20:                                               ; preds = %14, %13
  %21 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 0) #13
  %22 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.29) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.57) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %20
  %28 = tail call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.80) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27, %24
  %31 = tail call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.23) #13
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i8 [ 0, %27 ], [ %33, %30 ]
  tail call void @uiLayoutSetActive(ptr noundef %21, i8 noundef zeroext %35) #13
  tail call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.80, i32 noundef 128, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  %36 = tail call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.57) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 1) #13
  %40 = tail call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.23) #13
  %41 = trunc i32 %40 to i8
  tail call void @uiLayoutSetActive(ptr noundef %39, i8 noundef zeroext %41) #13
  tail call void @uiItemEnumO(ptr noundef %39, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.3, i32 noundef 7, ptr noundef nonnull @.str.62, i32 noundef 1) #13
  tail call void @uiItemEnumO(ptr noundef %39, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.3, i32 noundef 5, ptr noundef nonnull @.str.62, i32 noundef 2) #13
  br label %42

42:                                               ; preds = %38, %34
  %43 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %43, ptr noundef nonnull %1, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  %44 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 0) #13
  %45 = tail call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.23) #13
  %46 = trunc i32 %45 to i8
  tail call void @uiLayoutSetActive(ptr noundef %44, i8 noundef zeroext %46) #13
  tail call void @uiItemO(ptr noundef %44, ptr noundef nonnull @.str.3, i32 noundef 19, ptr noundef nonnull @.str.82) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_brick_sensor(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.57) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %3
  tail call fastcc void @draw_sensor_internal_header(ptr noundef %0, ptr noundef %1) #12
  %7 = tail call ptr @uiLayoutBox(ptr noundef %0) #13
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.23) #13
  %9 = trunc i32 %8 to i8
  tail call void @uiLayoutSetActive(ptr noundef %7, i8 noundef zeroext %9) #13
  %10 = tail call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.14) #13
  switch i32 %10, label %24 [
    i32 12, label %11
    i32 9, label %23
    i32 14, label %12
    i32 6, label %13
    i32 13, label %14
    i32 11, label %15
    i32 3, label %16
    i32 10, label %17
    i32 5, label %18
    i32 2, label %19
    i32 4, label %20
    i32 7, label %21
    i32 8, label %22
  ]

11:                                               ; preds = %6
  tail call fastcc void @draw_sensor_actuator(ptr noundef %7, ptr noundef %1) #12
  br label %24

12:                                               ; preds = %6
  tail call fastcc void @draw_sensor_armature(ptr noundef %7, ptr noundef %1) #12
  br label %24

13:                                               ; preds = %6
  tail call fastcc void @draw_sensor_collision(ptr noundef %7, ptr noundef %1, ptr noundef %2) #12
  br label %24

14:                                               ; preds = %6
  tail call fastcc void @draw_sensor_delay(ptr noundef %7, ptr noundef %1) #12
  br label %24

15:                                               ; preds = %6
  tail call fastcc void @draw_sensor_joystick(ptr noundef %7, ptr noundef %1) #12
  br label %24

16:                                               ; preds = %6
  tail call fastcc void @draw_sensor_keyboard(ptr noundef %7, ptr noundef %1) #12
  br label %24

17:                                               ; preds = %6
  tail call fastcc void @draw_sensor_message(ptr noundef %7, ptr noundef %1) #12
  br label %24

18:                                               ; preds = %6
  tail call fastcc void @draw_sensor_mouse(ptr noundef %7, ptr noundef %1, ptr noundef %2) #12
  br label %24

19:                                               ; preds = %6
  tail call fastcc void @draw_sensor_near(ptr noundef %7, ptr noundef %1) #12
  br label %24

20:                                               ; preds = %6
  tail call fastcc void @draw_sensor_property(ptr noundef %7, ptr noundef %1) #12
  br label %24

21:                                               ; preds = %6
  tail call fastcc void @draw_sensor_radar(ptr noundef %7, ptr noundef %1) #12
  br label %24

22:                                               ; preds = %6
  tail call fastcc void @draw_sensor_random(ptr noundef %7, ptr noundef %1) #12
  br label %24

23:                                               ; preds = %6
  tail call fastcc void @draw_sensor_ray(ptr noundef %7, ptr noundef %1, ptr noundef %2) #12
  br label %24

24:                                               ; preds = %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @actuator_menu(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.actuator_menu, i16 noundef signext 2) #13
  tail call void @uiBlockSetButmFunc(ptr noundef %4, ptr noundef nonnull @do_actuator_menu, ptr noundef null) #13
  %5 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef -20, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #13
  %6 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef -40, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.3) #13
  %7 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 27648, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef -46, i16 noundef signext 160, i16 noundef signext 6, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #13
  %8 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.154, i32 noundef 0, i32 noundef -66, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #13
  %9 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 10240, i32 noundef 1, ptr noundef nonnull @.str.155, i32 noundef 0, i32 noundef -86, i16 noundef signext 160, i16 noundef signext 19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.3) #13
  tail call void @uiBlockSetDirection(ptr noundef %4, i8 noundef zeroext 1) #13
  tail call void @uiEndBlock(ptr noundef %0, ptr noundef %4) #13
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_header(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  %6 = tail call ptr @uiLayoutBox(ptr noundef %0) #13
  %7 = tail call ptr @uiLayoutRow(ptr noundef %6, i32 noundef 0) #13
  %8 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 0) #13
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.23) #13
  %10 = trunc i32 %9 to i8
  tail call void @uiLayoutSetActive(ptr noundef %8, i8 noundef zeroext %10) #13
  tail call void @uiItemR(ptr noundef %8, ptr noundef %1, ptr noundef nonnull @.str.57, i32 noundef 128, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.57) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  tail call void @uiItemR(ptr noundef %8, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %8, ptr noundef nonnull %1, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  br label %20

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.bActuator, ptr %5, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !121
  %17 = sext i16 %16 to i32
  %18 = tail call fastcc ptr @actuator_name(i32 noundef %17) #12
  tail call void @uiItemL(ptr noundef %8, ptr noundef nonnull %18, i32 noundef 0) #13
  %19 = getelementptr inbounds %struct.bActuator, ptr %5, i64 0, i32 7
  tail call void @uiItemL(ptr noundef %8, ptr noundef nonnull %19, i32 noundef 0) #13
  br label %20

20:                                               ; preds = %14, %13
  %21 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 0) #13
  %22 = tail call i32 @RNA_boolean_get(ptr noundef %2, ptr noundef nonnull @.str.39) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.57) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %20
  %28 = tail call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.80) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27, %24
  %31 = tail call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.23) #13
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i8 [ 0, %27 ], [ %33, %30 ]
  tail call void @uiLayoutSetActive(ptr noundef %21, i8 noundef zeroext %35) #13
  tail call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.80, i32 noundef 128, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  %36 = tail call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.57) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 1) #13
  %40 = tail call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.23) #13
  %41 = trunc i32 %40 to i8
  tail call void @uiLayoutSetActive(ptr noundef %39, i8 noundef zeroext %41) #13
  tail call void @uiItemEnumO(ptr noundef %39, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.3, i32 noundef 7, ptr noundef nonnull @.str.62, i32 noundef 1) #13
  tail call void @uiItemEnumO(ptr noundef %39, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.3, i32 noundef 5, ptr noundef nonnull @.str.62, i32 noundef 2) #13
  br label %42

42:                                               ; preds = %38, %34
  %43 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %43, ptr noundef nonnull %1, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  %44 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 0) #13
  %45 = tail call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.23) #13
  %46 = trunc i32 %45 to i8
  tail call void @uiLayoutSetActive(ptr noundef %44, i8 noundef zeroext %46) #13
  tail call void @uiItemO(ptr noundef %44, ptr noundef nonnull @.str.3, i32 noundef 19, ptr noundef nonnull @.str.157) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_brick_actuator(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.57) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @uiLayoutBox(ptr noundef %0) #13
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.23) #13
  %9 = trunc i32 %8 to i8
  tail call void @uiLayoutSetActive(ptr noundef %7, i8 noundef zeroext %9) #13
  %10 = tail call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.14) #13
  switch i32 %10, label %30 [
    i32 15, label %11
    i32 23, label %12
    i32 3, label %13
    i32 9, label %14
    i32 10, label %15
    i32 19, label %16
    i32 17, label %17
    i32 14, label %18
    i32 0, label %19
    i32 20, label %20
    i32 6, label %21
    i32 13, label %22
    i32 11, label %23
    i32 21, label %24
    i32 5, label %25
    i32 22, label %26
    i32 18, label %27
    i32 24, label %28
    i32 25, label %29
  ]

11:                                               ; preds = %6
  tail call fastcc void @draw_actuator_action(ptr noundef %7, ptr noundef %1) #12
  br label %30

12:                                               ; preds = %6
  tail call fastcc void @draw_actuator_armature(ptr noundef %7, ptr noundef %1) #12
  br label %30

13:                                               ; preds = %6
  tail call fastcc void @draw_actuator_camera(ptr noundef %7, ptr noundef %1) #12
  br label %30

14:                                               ; preds = %6
  tail call fastcc void @draw_actuator_constraint(ptr noundef %7, ptr noundef %1, ptr noundef %2) #12
  br label %30

15:                                               ; preds = %6
  tail call fastcc void @draw_actuator_edit_object(ptr noundef %7, ptr noundef %1) #12
  br label %30

16:                                               ; preds = %6
  tail call fastcc void @draw_actuator_filter_2d(ptr noundef %7, ptr noundef %1) #12
  br label %30

17:                                               ; preds = %6
  tail call fastcc void @draw_actuator_game(ptr noundef %7, ptr noundef %1) #12
  br label %30

18:                                               ; preds = %6
  tail call fastcc void @draw_actuator_message(ptr noundef %7, ptr noundef %1, ptr noundef %2) #12
  br label %30

19:                                               ; preds = %6
  tail call fastcc void @draw_actuator_motion(ptr noundef %7, ptr noundef %1) #12
  br label %30

20:                                               ; preds = %6
  tail call fastcc void @draw_actuator_parent(ptr noundef %7, ptr noundef %1) #12
  br label %30

21:                                               ; preds = %6
  tail call fastcc void @draw_actuator_property(ptr noundef %7, ptr noundef %1) #12
  br label %30

22:                                               ; preds = %6
  tail call fastcc void @draw_actuator_random(ptr noundef %7, ptr noundef %1) #12
  br label %30

23:                                               ; preds = %6
  tail call fastcc void @draw_actuator_scene(ptr noundef %7, ptr noundef %1) #12
  br label %30

24:                                               ; preds = %6
  tail call fastcc void @draw_actuator_shape_action(ptr noundef %7, ptr noundef %1) #12
  br label %30

25:                                               ; preds = %6
  tail call fastcc void @draw_actuator_sound(ptr noundef %7, ptr noundef %1, ptr noundef %2) #12
  br label %30

26:                                               ; preds = %6
  tail call fastcc void @draw_actuator_state(ptr noundef %7, ptr noundef %1) #12
  br label %30

27:                                               ; preds = %6
  tail call fastcc void @draw_actuator_visibility(ptr noundef %7, ptr noundef %1) #12
  br label %30

28:                                               ; preds = %6
  tail call fastcc void @draw_actuator_steering(ptr noundef %7, ptr noundef %1) #12
  br label %30

29:                                               ; preds = %6
  tail call fastcc void @draw_actuator_mouse(ptr noundef %7, ptr noundef %1) #12
  br label %30

30:                                               ; preds = %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %6, %3
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_totRect_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiComposeLinks(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_natstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_sca_ob(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 93
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bController, ptr %6, i64 0, i32 2
  store ptr %0, ptr %7, align 8, !tbaa !56
  %8 = load ptr, ptr %6, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !140

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 94
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.bActuator, ptr %15, i64 0, i32 2
  store ptr %0, ptr %16, align 8, !tbaa !62
  %17 = load ptr, ptr %15, align 8, !tbaa !9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !141

19:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: optsize
declare void @clear_sca_new_poins() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @new_sensor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_sensor(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_sensor(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @new_controller(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unlink_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @new_actuator(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_actuator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unlink_actuator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_actuator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetButmFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_controller_menu(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = tail call ptr @CTX_wm_space_logic(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  %6 = getelementptr inbounds %struct.SpaceLogic, ptr %5, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !76
  %8 = call fastcc ptr @get_selected_and_linked_obs(ptr noundef %0, ptr noundef nonnull %4, i16 noundef signext %7) #12
  %9 = load i16, ptr %4, align 2, !tbaa !5
  %10 = icmp sgt i16 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %3
  %12 = and i32 %2, -3
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i32 %2, 1
  %15 = zext nneg i16 %9 to i64
  br label %19

16:                                               ; preds = %32
  br i1 %10, label %17, label %60

17:                                               ; preds = %16
  %18 = zext nneg i16 %9 to i64
  br label %35

19:                                               ; preds = %11, %32
  %20 = phi i64 [ 0, %11 ], [ %33, %32 ]
  %21 = getelementptr inbounds ptr, ptr %8, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  br i1 %13, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 61
  %25 = load i16, ptr %24, align 4, !tbaa !86
  %26 = or i16 %25, 2048
  store i16 %26, ptr %24, align 4, !tbaa !86
  br label %32

27:                                               ; preds = %19
  br i1 %14, label %28, label %32

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 61
  %30 = load i16, ptr %29, align 4, !tbaa !86
  %31 = and i16 %30, -2049
  store i16 %31, ptr %29, align 4, !tbaa !86
  br label %32

32:                                               ; preds = %23, %28, %27
  %33 = add nuw nsw i64 %20, 1
  %34 = icmp eq i64 %33, %15
  br i1 %34, label %16, label %19, !llvm.loop !142

35:                                               ; preds = %17, %55
  %36 = phi i64 [ 0, %17 ], [ %56, %55 ]
  %37 = getelementptr inbounds ptr, ptr %8, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !9
  %39 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 93
  %40 = load ptr, ptr %39, align 8, !tbaa !9
  %41 = icmp eq ptr %40, null
  br i1 %41, label %55, label %42

42:                                               ; preds = %35, %52
  %43 = phi ptr [ %53, %52 ], [ %40, %35 ]
  switch i32 %2, label %52 [
    i32 2, label %44
    i32 3, label %48
  ]

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.bController, ptr %43, i64 0, i32 4
  %46 = load i16, ptr %45, align 2, !tbaa !117
  %47 = or i16 %46, 1
  store i16 %47, ptr %45, align 2, !tbaa !117
  br label %52

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.bController, ptr %43, i64 0, i32 4
  %50 = load i16, ptr %49, align 2, !tbaa !117
  %51 = and i16 %50, -2
  store i16 %51, ptr %49, align 2, !tbaa !117
  br label %52

52:                                               ; preds = %42, %48, %44
  %53 = load ptr, ptr %43, align 8, !tbaa !9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %42, !llvm.loop !143

55:                                               ; preds = %52, %35
  %56 = add nuw nsw i64 %36, 1
  %57 = icmp eq i64 %56, %18
  br i1 %57, label %58, label %35, !llvm.loop !144

58:                                               ; preds = %55, %3
  %59 = icmp eq ptr %8, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %16, %58
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !9
  tail call void %61(ptr noundef nonnull %8) #13
  br label %62

62:                                               ; preds = %60, %58
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetDirection(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @controller_state_mask_menu(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.controller_state_mask_menu, i16 noundef signext 0) #13
  %5 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef -5, i32 noundef -5, i16 noundef signext 200, i16 noundef signext 34, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #13
  %6 = getelementptr inbounds %struct.bController, ptr %2, i64 0, i32 17
  br label %7

7:                                                ; preds = %3, %35
  %8 = phi i32 [ 0, %3 ], [ %38, %35 ]
  %9 = phi i32 [ 0, %3 ], [ %36, %35 ]
  tail call void @uiBlockBeginAlign(ptr noundef %4) #13
  %10 = mul nsw i32 %9, 13
  br label %13

11:                                               ; preds = %13
  %12 = add nsw i32 %8, 15
  br label %24

13:                                               ; preds = %7, %13
  %14 = phi i32 [ 0, %7 ], [ %22, %13 ]
  %15 = add nsw i32 %8, %14
  %16 = shl nuw nsw i32 1, %15
  %17 = mul nuw nsw i32 %14, 12
  %18 = add nsw i32 %17, %10
  %19 = shl i32 %18, 16
  %20 = ashr exact i32 %19, 16
  %21 = tail call ptr @uiDefButBitI(ptr noundef %4, i32 noundef 1536, i32 noundef %16, i32 noundef %15, ptr noundef nonnull @.str.3, i32 noundef %20, i32 noundef 12, i16 noundef signext 12, i16 noundef signext 12, ptr noundef nonnull %6, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #13
  tail call void @uiButSetFunc(ptr noundef %21, ptr noundef nonnull @check_controller_state_mask, ptr noundef %21, ptr noundef nonnull %6) #13
  %22 = add nuw nsw i32 %14, 1
  %23 = icmp eq i32 %22, 5
  br i1 %23, label %11, label %13, !llvm.loop !145

24:                                               ; preds = %11, %24
  %25 = phi i32 [ 0, %11 ], [ %33, %24 ]
  %26 = add nsw i32 %12, %25
  %27 = shl nuw i32 1, %26
  %28 = mul nuw nsw i32 %25, 12
  %29 = add nsw i32 %28, %10
  %30 = shl i32 %29, 16
  %31 = ashr exact i32 %30, 16
  %32 = tail call ptr @uiDefButBitI(ptr noundef %4, i32 noundef 1536, i32 noundef %27, i32 noundef %26, ptr noundef nonnull @.str.3, i32 noundef %31, i32 noundef 0, i16 noundef signext 12, i16 noundef signext 12, ptr noundef nonnull %6, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #13
  tail call void @uiButSetFunc(ptr noundef %32, ptr noundef nonnull @check_controller_state_mask, ptr noundef %32, ptr noundef nonnull %6) #13
  %33 = add nuw nsw i32 %25, 1
  %34 = icmp eq i32 %33, 5
  br i1 %34, label %35, label %24, !llvm.loop !146

35:                                               ; preds = %24
  %36 = add nsw i32 %8, 5
  %37 = shl i32 %36, 16
  %38 = ashr exact i32 %37, 16
  %39 = icmp slt i32 %38, 15
  br i1 %39, label %7, label %40, !llvm.loop !147

40:                                               ; preds = %35
  tail call void @uiBlockEndAlign(ptr noundef %4) #13
  tail call void @uiBlockSetDirection(ptr noundef %4, i8 noundef zeroext 1) #13
  tail call void @uiEndBlock(ptr noundef %0, ptr noundef %4) #13
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @controller_name(i32 noundef %0) unnamed_addr #7 {
  %2 = icmp ult i32 %0, 8
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = shl i64 %4, 2
  %6 = call ptr @llvm.load.relative.i64(ptr @reltable.controller_name, i64 %5)
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ @.str.72, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare void @uiItemEnumO(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefButBitI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @check_controller_state_mask(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %5 = load i16, ptr %4, align 4, !tbaa !148
  %6 = zext nneg i16 %5 to i32
  %7 = shl nuw i32 1, %6
  store i32 %7, ptr %2, align 4, !tbaa !92
  store i16 1, ptr %4, align 4, !tbaa !148
  ret void
}

; Function Attrs: optsize
declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_controller_expression(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.73, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_controller_python(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FD3333340000000, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  %4 = tail call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.74) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @uiItemR(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @.str.75, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  br label %9

7:                                                ; preds = %2
  %8 = tail call ptr @uiLayoutSplit(ptr noundef %3, float noundef 0x3FE99999A0000000, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %8, ptr noundef %1, ptr noundef nonnull @.str.76, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %8, ptr noundef %1, ptr noundef nonnull @.str.77, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  br label %9

9:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_sensor_menu(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = tail call ptr @CTX_wm_space_logic(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  %6 = getelementptr inbounds %struct.SpaceLogic, ptr %5, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !76
  %8 = call fastcc ptr @get_selected_and_linked_obs(ptr noundef %0, ptr noundef nonnull %4, i16 noundef signext %7) #12
  %9 = load i16, ptr %4, align 2, !tbaa !5
  %10 = icmp sgt i16 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %3
  %12 = and i32 %2, -3
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i32 %2, 1
  %15 = zext nneg i16 %9 to i64
  br label %19

16:                                               ; preds = %32
  br i1 %10, label %17, label %60

17:                                               ; preds = %16
  %18 = zext nneg i16 %9 to i64
  br label %35

19:                                               ; preds = %11, %32
  %20 = phi i64 [ 0, %11 ], [ %33, %32 ]
  %21 = getelementptr inbounds ptr, ptr %8, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  br i1 %13, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 61
  %25 = load i16, ptr %24, align 4, !tbaa !86
  %26 = or i16 %25, 64
  store i16 %26, ptr %24, align 4, !tbaa !86
  br label %32

27:                                               ; preds = %19
  br i1 %14, label %28, label %32

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 61
  %30 = load i16, ptr %29, align 4, !tbaa !86
  %31 = and i16 %30, -65
  store i16 %31, ptr %29, align 4, !tbaa !86
  br label %32

32:                                               ; preds = %23, %28, %27
  %33 = add nuw nsw i64 %20, 1
  %34 = icmp eq i64 %33, %15
  br i1 %34, label %16, label %19, !llvm.loop !150

35:                                               ; preds = %17, %55
  %36 = phi i64 [ 0, %17 ], [ %56, %55 ]
  %37 = getelementptr inbounds ptr, ptr %8, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !9
  %39 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 92
  %40 = load ptr, ptr %39, align 8, !tbaa !9
  %41 = icmp eq ptr %40, null
  br i1 %41, label %55, label %42

42:                                               ; preds = %35, %52
  %43 = phi ptr [ %53, %52 ], [ %40, %35 ]
  switch i32 %2, label %52 [
    i32 2, label %44
    i32 3, label %48
  ]

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.bSensor, ptr %43, i64 0, i32 4
  %46 = load i16, ptr %45, align 4, !tbaa !84
  %47 = or i16 %46, 1
  store i16 %47, ptr %45, align 4, !tbaa !84
  br label %52

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.bSensor, ptr %43, i64 0, i32 4
  %50 = load i16, ptr %49, align 4, !tbaa !84
  %51 = and i16 %50, -2
  store i16 %51, ptr %49, align 4, !tbaa !84
  br label %52

52:                                               ; preds = %42, %48, %44
  %53 = load ptr, ptr %43, align 8, !tbaa !9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %42, !llvm.loop !151

55:                                               ; preds = %52, %35
  %56 = add nuw nsw i64 %36, 1
  %57 = icmp eq i64 %56, %18
  br i1 %57, label %58, label %35, !llvm.loop !152

58:                                               ; preds = %55, %3
  %59 = icmp eq ptr %8, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %16, %58
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !9
  tail call void %61(ptr noundef nonnull %8) #13
  br label %62

62:                                               ; preds = %60, %58
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare ptr @uiFindInlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @sensor_name(i32 noundef %0) unnamed_addr #7 {
  %2 = icmp ult i32 %0, 15
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = shl i64 %4, 2
  %6 = call ptr @llvm.load.relative.i64(ptr @reltable.sensor_name, i64 %5)
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ @.str.72, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_sensor_internal_header(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @uiLayoutBox(ptr noundef %0) #13
  %4 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.23) #13
  %5 = trunc i32 %4 to i8
  tail call void @uiLayoutSetActive(ptr noundef %3, i8 noundef zeroext %5) #13
  %6 = tail call ptr @uiLayoutSplit(ptr noundef %3, float noundef 0x3FDCCCCCC0000000, i32 noundef 0) #13
  %7 = tail call ptr @uiLayoutRow(ptr noundef %6, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %7, ptr noundef %1, ptr noundef nonnull @.str.97, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 47) #13
  tail call void @uiItemR(ptr noundef %7, ptr noundef %1, ptr noundef nonnull @.str.98, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 48) #13
  %8 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 0) #13
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.97) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.98) #13
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i8 [ 1, %2 ], [ %14, %11 ]
  tail call void @uiLayoutSetActive(ptr noundef %8, i8 noundef zeroext %16) #13
  tail call void @uiItemR(ptr noundef %8, ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef 0, ptr noundef nonnull @.str.100, i32 noundef 0) #13
  %17 = tail call ptr @uiLayoutRow(ptr noundef %6, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %17, ptr noundef %1, ptr noundef nonnull @.str.101, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %17, ptr noundef %1, ptr noundef nonnull @.str.102, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %6, ptr noundef %1, ptr noundef nonnull @.str.103, i32 noundef 8, ptr noundef nonnull @.str.104, i32 noundef 0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_sensor_actuator(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @RNA_pointer_create(ptr noundef %4, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %4, ptr noundef nonnull %3) #13
  call void @uiItemPointerR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.43, ptr noundef nonnull %3, ptr noundef nonnull @.str.105, ptr noundef null, i32 noundef 120) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_sensor_armature(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  %7 = getelementptr inbounds %struct.bSensor, ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !154
  %9 = load ptr, ptr %1, align 8, !tbaa !153
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !155
  %12 = icmp eq i16 %11, 25
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.106, i32 noundef 0) #13
  br label %29

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !156
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @RNA_pointer_create(ptr noundef nonnull %9, ptr noundef nonnull @RNA_Pose, ptr noundef nonnull %16, ptr noundef nonnull %3) #13
  %19 = call ptr @RNA_struct_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.107) #13
  call void @uiItemPointerR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.108, ptr noundef nonnull %3, ptr noundef nonnull @.str.107, ptr noundef null, i32 noundef 174) #13
  %20 = call i32 @RNA_property_collection_lookup_string(ptr noundef nonnull %3, ptr noundef %19, ptr noundef %8, ptr noundef nonnull %4) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  call void @uiItemPointerR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.109, ptr noundef nonnull %4, ptr noundef nonnull @.str.110, ptr noundef null, i32 noundef 177) #13
  br label %23

23:                                               ; preds = %22, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %24

24:                                               ; preds = %23, %14
  %25 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #13
  call void @uiItemR(ptr noundef %25, ptr noundef nonnull %1, ptr noundef nonnull @.str.111, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %26 = call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.111) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  call void @uiItemR(ptr noundef %25, ptr noundef nonnull %1, ptr noundef nonnull @.str.112, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %29

29:                                               ; preds = %24, %28, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_sensor_collision(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %5 = tail call ptr @CTX_data_main(ptr noundef %2) #13
  call void @RNA_main_pointer_create(ptr noundef %5, ptr noundef nonnull %4) #13
  %6 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FD3333340000000, i32 noundef 0) #13
  %7 = call ptr @uiLayoutRow(ptr noundef %6, i32 noundef 1) #13
  call void @uiItemR(ptr noundef %7, ptr noundef %1, ptr noundef nonnull @.str.113, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %7, ptr noundef %1, ptr noundef nonnull @.str.114, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %8 = call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.114) #13
  switch i32 %8, label %11 [
    i32 0, label %9
    i32 1, label %10
  ]

9:                                                ; preds = %3
  call void @uiItemR(ptr noundef %6, ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %11

10:                                               ; preds = %3
  call void @uiItemPointerR(ptr noundef %6, ptr noundef %1, ptr noundef nonnull @.str.116, ptr noundef nonnull %4, ptr noundef nonnull @.str.117, ptr noundef null, i32 noundef 165) #13
  br label %11

11:                                               ; preds = %3, %10, %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_sensor_delay(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @.str.118, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @.str.119, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @.str.120, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_sensor_joystick(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.121, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.122, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %3 = tail call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.122) #13
  switch i32 %3, label %22 [
    i32 0, label %4
    i32 1, label %9
    i32 2, label %15
    i32 3, label %20
  ]

4:                                                ; preds = %2
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.123, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.123) #13
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i8
  tail call void @uiLayoutSetActive(ptr noundef %5, i8 noundef zeroext %8) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %1, ptr noundef nonnull @.str.124, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %22

9:                                                ; preds = %2
  %10 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %10, ptr noundef %1, ptr noundef nonnull @.str.125, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %10, ptr noundef %1, ptr noundef nonnull @.str.126, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.123, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %11 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.123) #13
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i8
  tail call void @uiLayoutSetActive(ptr noundef %11, i8 noundef zeroext %14) #13
  tail call void @uiItemR(ptr noundef %11, ptr noundef %1, ptr noundef nonnull @.str.127, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %22

15:                                               ; preds = %2
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.128, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.123, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %16 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.123) #13
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i8
  tail call void @uiLayoutSetActive(ptr noundef %16, i8 noundef zeroext %19) #13
  tail call void @uiItemR(ptr noundef %16, ptr noundef %1, ptr noundef nonnull @.str.129, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %22

20:                                               ; preds = %2
  %21 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.130, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.126, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %22

22:                                               ; preds = %2, %20, %15, %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_sensor_keyboard(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %5 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.131, i32 noundef 0) #13
  %6 = tail call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 0) #13
  %7 = tail call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.132) #13
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i8
  tail call void @uiLayoutSetActive(ptr noundef %6, i8 noundef zeroext %9) #13
  tail call void @uiItemR(ptr noundef %6, ptr noundef nonnull %1, ptr noundef nonnull @.str.133, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  %10 = tail call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %10, ptr noundef nonnull %1, ptr noundef nonnull @.str.132, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %11 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  %12 = tail call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.132) #13
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i8
  tail call void @uiLayoutSetActive(ptr noundef %11, i8 noundef zeroext %14) #13
  %15 = tail call ptr @uiLayoutRow(ptr noundef %11, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %15, ptr noundef nonnull @.str.134, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %15, ptr noundef nonnull %1, ptr noundef nonnull @.str.135, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  %16 = tail call ptr @uiLayoutRow(ptr noundef %11, i32 noundef 0) #13
  tail call void @uiItemL(ptr noundef %16, ptr noundef nonnull @.str.136, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %16, ptr noundef nonnull %1, ptr noundef nonnull @.str.137, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  call void @RNA_pointer_create(ptr noundef %4, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %4, ptr noundef nonnull %3) #13
  call void @uiItemPointerR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.138, ptr noundef nonnull %3, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #13
  call void @uiItemPointerR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.140, ptr noundef nonnull %3, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_sensor_message(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.141, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_sensor_mouse(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %5 = tail call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FE99999A0000000, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %1, ptr noundef nonnull @.str.142, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %6 = tail call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.142) #13
  %7 = icmp eq i32 %6, 32
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  tail call void @uiItemR(ptr noundef %5, ptr noundef %1, ptr noundef nonnull @.str.113, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %9 = tail call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FD3333340000000, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %9, ptr noundef %1, ptr noundef nonnull @.str.114, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  %10 = tail call ptr @uiLayoutSplit(ptr noundef %9, float noundef 0x3FE6666660000000, i32 noundef 0) #13
  %11 = tail call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.114) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @uiItemR(ptr noundef %10, ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  br label %16

14:                                               ; preds = %8
  %15 = tail call ptr @CTX_data_main(ptr noundef %2) #13
  call void @RNA_main_pointer_create(ptr noundef %15, ptr noundef nonnull %4) #13
  call void @uiItemPointerR(ptr noundef %10, ptr noundef %1, ptr noundef nonnull @.str.116, ptr noundef nonnull %4, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.3, i32 noundef 165) #13
  br label %16

16:                                               ; preds = %14, %13
  call void @uiItemR(ptr noundef %10, ptr noundef %1, ptr noundef nonnull @.str.143, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  br label %17

17:                                               ; preds = %16, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_sensor_near(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %3 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @.str.144, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @.str.145, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_sensor_property(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  tail call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.146, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @RNA_pointer_create(ptr noundef %4, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %4, ptr noundef nonnull %3) #13
  call void @uiItemPointerR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.115, ptr noundef nonnull %3, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #13
  %5 = call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.146) #13
  switch i32 %5, label %9 [
    i32 2, label %6
    i32 0, label %8
    i32 1, label %8
    i32 5, label %8
    i32 6, label %8
  ]

6:                                                ; preds = %2
  %7 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull @.str.147, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull @.str.148, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %9

8:                                                ; preds = %2, %2, %2, %2
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.112, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %9

9:                                                ; preds = %2, %8, %6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_sensor_radar(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.149, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %3 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @.str.150, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @.str.144, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_sensor_random(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.151, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_sensor_ray(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %5 = tail call ptr @CTX_data_main(ptr noundef %2) #13
  call void @RNA_main_pointer_create(ptr noundef %5, ptr noundef nonnull %4) #13
  %6 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FD3333340000000, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %6, ptr noundef %1, ptr noundef nonnull @.str.152, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  %7 = call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.152) #13
  switch i32 %7, label %10 [
    i32 0, label %8
    i32 1, label %9
  ]

8:                                                ; preds = %3
  call void @uiItemR(ptr noundef %6, ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  br label %10

9:                                                ; preds = %3
  call void @uiItemPointerR(ptr noundef %6, ptr noundef %1, ptr noundef nonnull @.str.116, ptr noundef nonnull %4, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.3, i32 noundef 165) #13
  br label %10

10:                                               ; preds = %3, %9, %8
  %11 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FD3333340000000, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %11, ptr noundef %1, ptr noundef nonnull @.str.149, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  %12 = call ptr @uiLayoutRow(ptr noundef %11, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %12, ptr noundef %1, ptr noundef nonnull @.str.153, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %12, ptr noundef %1, ptr noundef nonnull @.str.143, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare void @uiItemPointerR(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_collection_lookup_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_main_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_actuator_menu(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = tail call ptr @CTX_wm_space_logic(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  %6 = getelementptr inbounds %struct.SpaceLogic, ptr %5, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !76
  %8 = call fastcc ptr @get_selected_and_linked_obs(ptr noundef %0, ptr noundef nonnull %4, i16 noundef signext %7) #12
  %9 = load i16, ptr %4, align 2, !tbaa !5
  %10 = icmp sgt i16 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %3
  %12 = and i32 %2, -3
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i32 %2, 1
  %15 = zext nneg i16 %9 to i64
  br label %19

16:                                               ; preds = %32
  br i1 %10, label %17, label %60

17:                                               ; preds = %16
  %18 = zext nneg i16 %9 to i64
  br label %35

19:                                               ; preds = %11, %32
  %20 = phi i64 [ 0, %11 ], [ %33, %32 ]
  %21 = getelementptr inbounds ptr, ptr %8, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  br i1 %13, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 61
  %25 = load i16, ptr %24, align 4, !tbaa !86
  %26 = or i16 %25, 128
  store i16 %26, ptr %24, align 4, !tbaa !86
  br label %32

27:                                               ; preds = %19
  br i1 %14, label %28, label %32

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 61
  %30 = load i16, ptr %29, align 4, !tbaa !86
  %31 = and i16 %30, -129
  store i16 %31, ptr %29, align 4, !tbaa !86
  br label %32

32:                                               ; preds = %23, %28, %27
  %33 = add nuw nsw i64 %20, 1
  %34 = icmp eq i64 %33, %15
  br i1 %34, label %16, label %19, !llvm.loop !157

35:                                               ; preds = %17, %55
  %36 = phi i64 [ 0, %17 ], [ %56, %55 ]
  %37 = getelementptr inbounds ptr, ptr %8, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !9
  %39 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 94
  %40 = load ptr, ptr %39, align 8, !tbaa !9
  %41 = icmp eq ptr %40, null
  br i1 %41, label %55, label %42

42:                                               ; preds = %35, %52
  %43 = phi ptr [ %53, %52 ], [ %40, %35 ]
  switch i32 %2, label %52 [
    i32 2, label %44
    i32 3, label %48
  ]

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.bActuator, ptr %43, i64 0, i32 4
  %46 = load i16, ptr %45, align 2, !tbaa !82
  %47 = or i16 %46, 1
  store i16 %47, ptr %45, align 2, !tbaa !82
  br label %52

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.bActuator, ptr %43, i64 0, i32 4
  %50 = load i16, ptr %49, align 2, !tbaa !82
  %51 = and i16 %50, -2
  store i16 %51, ptr %49, align 2, !tbaa !82
  br label %52

52:                                               ; preds = %42, %48, %44
  %53 = load ptr, ptr %43, align 8, !tbaa !9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %42, !llvm.loop !158

55:                                               ; preds = %52, %35
  %56 = add nuw nsw i64 %36, 1
  %57 = icmp eq i64 %56, %18
  br i1 %57, label %58, label %35, !llvm.loop !159

58:                                               ; preds = %55, %3
  %59 = icmp eq ptr %8, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %16, %58
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !9
  tail call void %61(ptr noundef nonnull %8) #13
  br label %62

62:                                               ; preds = %60, %58
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @actuator_name(i32 noundef %0) unnamed_addr #7 {
  %2 = icmp ult i32 %0, 26
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = shl i64 %4, 2
  %6 = call ptr @llvm.load.relative.i64(ptr @reltable.actuator_name, i64 %5)
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ @.str.72, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_action(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @RNA_pointer_create(ptr noundef %4, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %4, ptr noundef nonnull %3) #13
  %5 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %5, ptr noundef nonnull %1, ptr noundef nonnull @.str.175, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  %6 = call ptr @uiLayoutRow(ptr noundef %5, i32 noundef 1) #13
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %1, ptr noundef nonnull @.str.176, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %1, ptr noundef nonnull @.str.177, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %7 = call ptr @uiLayoutColumn(ptr noundef %6, i32 noundef 0) #13
  %8 = call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.177) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.176) #13
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i8 [ 1, %2 ], [ %13, %10 ]
  call void @uiLayoutSetActive(ptr noundef %7, i8 noundef zeroext %15) #13
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull @.str.178, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %16 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %16, ptr noundef nonnull %1, ptr noundef nonnull @.str.179, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %16, ptr noundef nonnull %1, ptr noundef nonnull @.str.180, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %17 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  %18 = call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.175) #13
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  call void @uiItemPointerR(ptr noundef %17, ptr noundef nonnull %1, ptr noundef nonnull @.str.115, ptr noundef nonnull %3, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #13
  br label %22

21:                                               ; preds = %14
  call void @uiItemR(ptr noundef %17, ptr noundef nonnull %1, ptr noundef nonnull @.str.181, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %17, ptr noundef nonnull %1, ptr noundef nonnull @.str.182, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %22

22:                                               ; preds = %21, %20
  call void @uiItemR(ptr noundef %17, ptr noundef nonnull %1, ptr noundef nonnull @.str.183, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %23 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %23, ptr noundef nonnull %1, ptr noundef nonnull @.str.184, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %23, ptr noundef nonnull %1, ptr noundef nonnull @.str.185, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %24 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %24, ptr noundef nonnull %1, ptr noundef nonnull @.str.186, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %24, ptr noundef nonnull %1, ptr noundef nonnull @.str.187, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %24, ptr noundef nonnull %1, ptr noundef nonnull @.str.188, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  call void @uiItemPointerR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.189, ptr noundef nonnull %3, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_armature(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !136
  %8 = getelementptr inbounds %struct.bActuator, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !127
  %10 = load ptr, ptr %1, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store ptr null, ptr %3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !155
  %13 = icmp eq i16 %12, 25
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.190, i32 noundef 0) #13
  br label %63

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !156
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  call void @RNA_pointer_create(ptr noundef nonnull %10, ptr noundef nonnull @RNA_Pose, ptr noundef nonnull %17, ptr noundef nonnull %4) #13
  %20 = call ptr @RNA_struct_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.107) #13
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi ptr [ %20, %19 ], [ null, %15 ]
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %23 = call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.74) #13
  switch i32 %23, label %63 [
    i32 5, label %55
    i32 1, label %24
    i32 2, label %24
    i32 3, label %31
    i32 4, label %47
  ]

24:                                               ; preds = %21, %21
  %25 = load ptr, ptr %16, align 8, !tbaa !156
  %26 = icmp eq ptr %25, null
  br i1 %26, label %63, label %27

27:                                               ; preds = %24
  call void @uiItemPointerR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.108, ptr noundef nonnull %4, ptr noundef nonnull @.str.107, ptr noundef null, i32 noundef 174) #13
  %28 = call i32 @RNA_property_collection_lookup_string(ptr noundef nonnull %4, ptr noundef %22, ptr noundef %9, ptr noundef nonnull %5) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %63, label %30

30:                                               ; preds = %27
  call void @uiItemPointerR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.109, ptr noundef nonnull %5, ptr noundef nonnull @.str.110, ptr noundef null, i32 noundef 177) #13
  br label %63

31:                                               ; preds = %21
  %32 = load ptr, ptr %16, align 8, !tbaa !156
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  call void @uiItemPointerR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.108, ptr noundef nonnull %4, ptr noundef nonnull @.str.107, ptr noundef null, i32 noundef 174) #13
  %35 = call i32 @RNA_property_collection_lookup_string(ptr noundef nonnull %4, ptr noundef %22, ptr noundef %9, ptr noundef nonnull %5) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  call void @uiItemPointerR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.109, ptr noundef nonnull %5, ptr noundef nonnull @.str.110, ptr noundef null, i32 noundef 177) #13
  br label %38

38:                                               ; preds = %34, %37, %31
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.140, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %39 = getelementptr inbounds %struct.bArmatureActuator, ptr %9, i64 0, i32 1
  call fastcc void @get_armature_bone_constraint(ptr noundef nonnull %10, ptr noundef %9, ptr noundef nonnull %39, ptr noundef nonnull %3) #12
  %40 = load ptr, ptr %3, align 8, !tbaa !9
  %41 = icmp eq ptr %40, null
  br i1 %41, label %63, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.bConstraint, ptr %40, i64 0, i32 3
  %44 = load i16, ptr %43, align 8, !tbaa !160
  %45 = icmp eq i16 %44, 3
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.191, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %63

47:                                               ; preds = %21
  %48 = load ptr, ptr %16, align 8, !tbaa !156
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  call void @uiItemPointerR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.108, ptr noundef nonnull %4, ptr noundef nonnull @.str.107, ptr noundef null, i32 noundef 174) #13
  %51 = call i32 @RNA_property_collection_lookup_string(ptr noundef nonnull %4, ptr noundef %22, ptr noundef %9, ptr noundef nonnull %5) #13
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  call void @uiItemPointerR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.109, ptr noundef nonnull %5, ptr noundef nonnull @.str.110, ptr noundef null, i32 noundef 177) #13
  br label %54

54:                                               ; preds = %50, %53, %47
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.192, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %63

55:                                               ; preds = %21
  %56 = load ptr, ptr %16, align 8, !tbaa !156
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  call void @uiItemPointerR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.108, ptr noundef nonnull %4, ptr noundef nonnull @.str.107, ptr noundef null, i32 noundef 174) #13
  %59 = call i32 @RNA_property_collection_lookup_string(ptr noundef nonnull %4, ptr noundef %22, ptr noundef %9, ptr noundef nonnull %5) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  call void @uiItemPointerR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.109, ptr noundef nonnull %5, ptr noundef nonnull @.str.110, ptr noundef null, i32 noundef 177) #13
  br label %62

62:                                               ; preds = %58, %61, %55
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.193, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %63

63:                                               ; preds = %54, %62, %21, %27, %30, %24, %46, %42, %38, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_camera(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %3 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @.str.194, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @.str.149, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.195, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.196, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.197, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_constraint(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %5 = tail call ptr @CTX_data_main(ptr noundef %2) #13
  call void @RNA_main_pointer_create(ptr noundef %5, ptr noundef nonnull %4) #13
  call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %6 = call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.74) #13
  switch i32 %6, label %44 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %27
    i32 3, label %31
  ]

7:                                                ; preds = %3
  call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.198, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %8 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #13
  call void @uiItemR(ptr noundef %8, ptr noundef %1, ptr noundef nonnull @.str.199, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %8, ptr noundef %1, ptr noundef nonnull @.str.200, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.197, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  br label %44

9:                                                ; preds = %3
  %10 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FE99999A0000000, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %10, ptr noundef %1, ptr noundef nonnull @.str.62, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %11 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 1) #13
  call void @uiItemR(ptr noundef %11, ptr noundef %1, ptr noundef nonnull @.str.178, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %11, ptr noundef %1, ptr noundef nonnull @.str.201, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %12 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  %13 = call ptr @uiLayoutColumn(ptr noundef %12, i32 noundef 1) #13
  call void @uiItemL(ptr noundef %13, ptr noundef nonnull @.str.202, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %13, ptr noundef %1, ptr noundef nonnull @.str.153, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  %14 = call ptr @uiLayoutColumn(ptr noundef %12, i32 noundef 1) #13
  call void @uiItemR(ptr noundef %14, ptr noundef %1, ptr noundef nonnull @.str.203, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %15 = call ptr @uiLayoutColumn(ptr noundef %14, i32 noundef 0) #13
  %16 = call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.203) #13
  %17 = icmp eq i32 %16, 1
  %18 = zext i1 %17 to i8
  call void @uiLayoutSetActive(ptr noundef %15, i8 noundef zeroext %18) #13
  call void @uiItemR(ptr noundef %15, ptr noundef %1, ptr noundef nonnull @.str.144, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.197, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  %19 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FC3333340000000, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %19, ptr noundef %1, ptr noundef nonnull @.str.204, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %20 = call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.204) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %9
  call void @uiItemPointerR(ptr noundef %19, ptr noundef %1, ptr noundef nonnull @.str.116, ptr noundef nonnull %4, ptr noundef nonnull @.str.117, ptr noundef null, i32 noundef 165) #13
  br label %24

23:                                               ; preds = %9
  call void @uiItemR(ptr noundef %19, ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %24

24:                                               ; preds = %23, %22
  %25 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FC3333340000000, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %25, ptr noundef %1, ptr noundef nonnull @.str.205, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %26 = call ptr @uiLayoutRow(ptr noundef %25, i32 noundef 1) #13
  call void @uiItemR(ptr noundef %26, ptr noundef %1, ptr noundef nonnull @.str.206, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %26, ptr noundef %1, ptr noundef nonnull @.str.207, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  br label %44

27:                                               ; preds = %3
  call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.208, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %28 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #13
  call void @uiItemR(ptr noundef %28, ptr noundef %1, ptr noundef nonnull @.str.197, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %28, ptr noundef %1, ptr noundef nonnull @.str.206, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %29 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %29, ptr noundef %1, ptr noundef nonnull @.str.209, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %30 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #13
  call void @uiItemR(ptr noundef %30, ptr noundef %1, ptr noundef nonnull @.str.210, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %30, ptr noundef %1, ptr noundef nonnull @.str.211, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %44

31:                                               ; preds = %3
  %32 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 7.500000e-01, i32 noundef 0) #13
  %33 = call ptr @uiLayoutRow(ptr noundef %32, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %33, ptr noundef %1, ptr noundef nonnull @.str.212, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %33, ptr noundef %1, ptr noundef nonnull @.str.213, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %32, ptr noundef %1, ptr noundef nonnull @.str.214, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %34 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %34, ptr noundef %1, ptr noundef nonnull @.str.215, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %35 = call ptr @uiLayoutSplit(ptr noundef %34, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %35, ptr noundef %1, ptr noundef nonnull @.str.216, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %35, ptr noundef %1, ptr noundef nonnull @.str.217, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %36 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FC3333340000000, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %36, ptr noundef %1, ptr noundef nonnull @.str.204, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %37 = call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.204) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  call void @uiItemPointerR(ptr noundef %36, ptr noundef %1, ptr noundef nonnull @.str.116, ptr noundef nonnull %4, ptr noundef nonnull @.str.117, ptr noundef null, i32 noundef 165) #13
  br label %41

40:                                               ; preds = %31
  call void @uiItemR(ptr noundef %36, ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %41

41:                                               ; preds = %40, %39
  %42 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FC3333340000000, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %42, ptr noundef %1, ptr noundef nonnull @.str.205, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %43 = call ptr @uiLayoutRow(ptr noundef %42, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %43, ptr noundef %1, ptr noundef nonnull @.str.206, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %43, ptr noundef %1, ptr noundef nonnull @.str.207, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  br label %44

44:                                               ; preds = %3, %41, %27, %24, %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_edit_object(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !153
  tail call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %4 = tail call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.74) #13
  switch i32 %4, label %33 [
    i32 0, label %5
    i32 4, label %24
    i32 2, label %11
    i32 3, label %19
  ]

5:                                                ; preds = %2
  %6 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %6, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %6, ptr noundef nonnull %1, ptr noundef nonnull @.str.206, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %7 = tail call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #13
  %8 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %8, ptr noundef nonnull %1, ptr noundef nonnull @.str.218, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull @.str.219, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %9 = tail call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #13
  %10 = tail call ptr @uiLayoutRow(ptr noundef %9, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %10, ptr noundef nonnull %1, ptr noundef nonnull @.str.220, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %9, ptr noundef nonnull %1, ptr noundef nonnull @.str.221, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  br label %33

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !155
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.222, i32 noundef 0) #13
  br label %33

16:                                               ; preds = %11
  %17 = tail call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FE3333340000000, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %17, ptr noundef nonnull %1, ptr noundef nonnull @.str.223, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %18 = tail call ptr @uiLayoutRow(ptr noundef %17, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %18, ptr noundef nonnull %1, ptr noundef nonnull @.str.224, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %18, ptr noundef nonnull %1, ptr noundef nonnull @.str.225, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  br label %33

19:                                               ; preds = %2
  %20 = tail call ptr @uiLayoutSplit(ptr noundef %0, float noundef 5.000000e-01, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %20, ptr noundef nonnull %1, ptr noundef nonnull @.str.226, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %21 = tail call ptr @uiLayoutSplit(ptr noundef %20, float noundef 0x3FE6666660000000, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.206, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.227, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %22 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %22, ptr noundef nonnull %1, ptr noundef nonnull @.str.228, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %23 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %23, ptr noundef nonnull %1, ptr noundef nonnull @.str.229, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %33

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %26 = load i16, ptr %25, align 8, !tbaa !155
  %27 = icmp eq i16 %26, 1
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.222, i32 noundef 0) #13
  br label %33

29:                                               ; preds = %24
  tail call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.230, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %30 = tail call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.230) #13
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.231, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %33

33:                                               ; preds = %29, %32, %2, %28, %19, %16, %15, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_filter_2d(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %3 = tail call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.74) #13
  switch i32 %3, label %11 [
    i32 12, label %4
    i32 1, label %5
  ]

4:                                                ; preds = %2
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.232, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.233, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %12

5:                                                ; preds = %2
  %6 = tail call ptr @uiLayoutSplit(ptr noundef %0, float noundef 7.500000e-01, i32 noundef 1) #13
  %7 = tail call ptr @uiLayoutRow(ptr noundef %6, i32 noundef 0) #13
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.234) #13
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i8
  tail call void @uiLayoutSetActive(ptr noundef %7, i8 noundef zeroext %10) #13
  tail call void @uiItemR(ptr noundef %7, ptr noundef %1, ptr noundef nonnull @.str.235, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %6, ptr noundef %1, ptr noundef nonnull @.str.234, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  br label %12

11:                                               ; preds = %2
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.232, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %12

12:                                               ; preds = %11, %5, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_game(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %3 = tail call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.74) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.236, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_message(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %6 = tail call ptr @CTX_data_main(ptr noundef %2) #13
  call void @RNA_main_pointer_create(ptr noundef %6, ptr noundef nonnull %4) #13
  %7 = load ptr, ptr %1, align 8, !tbaa !153
  call void @RNA_pointer_create(ptr noundef %7, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %7, ptr noundef nonnull %5) #13
  call void @uiItemPointerR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.237, ptr noundef nonnull %4, ptr noundef nonnull @.str.238, ptr noundef null, i32 noundef 159) #13
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.141, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %8 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #13
  call void @uiItemR(ptr noundef %8, ptr noundef nonnull %1, ptr noundef nonnull @.str.239, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %9 = call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.239) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @uiItemR(ptr noundef %8, ptr noundef nonnull %1, ptr noundef nonnull @.str.240, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  br label %13

12:                                               ; preds = %3
  call void @uiItemPointerR(ptr noundef %8, ptr noundef nonnull %1, ptr noundef nonnull @.str.241, ptr noundef nonnull %5, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  br label %13

13:                                               ; preds = %12, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_motion(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %4 = load ptr, ptr %1, align 8, !tbaa !153
  call void @RNA_pointer_create(ptr noundef %4, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %4, ptr noundef nonnull %3) #13
  %5 = call i32 @RNA_enum_get(ptr noundef nonnull %3, ptr noundef nonnull @.str.242) #13
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %6 = call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.74) #13
  switch i32 %6, label %53 [
    i32 0, label %7
    i32 1, label %24
    i32 2, label %44
  ]

7:                                                ; preds = %2
  %8 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #13
  %9 = call ptr @uiLayoutRow(ptr noundef %8, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %9, ptr noundef nonnull %1, ptr noundef nonnull @.str.243, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %8, ptr noundef nonnull %1, ptr noundef nonnull @.str.244, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %10 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #13
  %11 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %11, ptr noundef nonnull %1, ptr noundef nonnull @.str.245, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %1, ptr noundef nonnull @.str.246, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %12 = add i32 %5, -2
  %13 = icmp ult i32 %12, 3
  br i1 %13, label %14, label %53

14:                                               ; preds = %7
  call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.247, i32 noundef 0) #13
  %15 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #13
  %16 = call ptr @uiLayoutRow(ptr noundef %15, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %16, ptr noundef nonnull %1, ptr noundef nonnull @.str.248, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %15, ptr noundef nonnull %1, ptr noundef nonnull @.str.249, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %17 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #13
  %18 = call ptr @uiLayoutRow(ptr noundef %17, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %18, ptr noundef nonnull %1, ptr noundef nonnull @.str.250, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %17, ptr noundef nonnull %1, ptr noundef nonnull @.str.251, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %19 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #13
  %20 = call ptr @uiLayoutRow(ptr noundef %19, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %20, ptr noundef nonnull %1, ptr noundef nonnull @.str.218, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %21 = call ptr @uiLayoutRow(ptr noundef %19, i32 noundef 1) #13
  call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.219, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.252, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %22 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #13
  %23 = call ptr @uiLayoutRow(ptr noundef %22, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %23, ptr noundef nonnull %1, ptr noundef nonnull @.str.220, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %22, ptr noundef nonnull %1, ptr noundef nonnull @.str.221, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.197, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %53

24:                                               ; preds = %2
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.253, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %25 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #13
  %26 = call ptr @uiLayoutRow(ptr noundef %25, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %26, ptr noundef nonnull %1, ptr noundef nonnull @.str.218, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %25, ptr noundef nonnull %1, ptr noundef nonnull @.str.219, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %27 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  %28 = call ptr @uiLayoutColumn(ptr noundef %27, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %28, ptr noundef nonnull %1, ptr noundef nonnull @.str.254, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %29 = call ptr @uiLayoutColumn(ptr noundef %28, i32 noundef 1) #13
  %30 = call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.254) #13
  %31 = icmp eq i32 %30, 1
  %32 = zext i1 %31 to i8
  call void @uiLayoutSetActive(ptr noundef %29, i8 noundef zeroext %32) #13
  call void @uiItemR(ptr noundef %29, ptr noundef nonnull %1, ptr noundef nonnull @.str.255, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %29, ptr noundef nonnull %1, ptr noundef nonnull @.str.256, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %33 = call ptr @uiLayoutColumn(ptr noundef %27, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %33, ptr noundef nonnull %1, ptr noundef nonnull @.str.257, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %34 = call ptr @uiLayoutColumn(ptr noundef %33, i32 noundef 1) #13
  %35 = call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.257) #13
  %36 = icmp eq i32 %35, 1
  %37 = zext i1 %36 to i8
  call void @uiLayoutSetActive(ptr noundef %34, i8 noundef zeroext %37) #13
  call void @uiItemR(ptr noundef %34, ptr noundef nonnull %1, ptr noundef nonnull @.str.258, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %34, ptr noundef nonnull %1, ptr noundef nonnull @.str.259, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %38 = call ptr @uiLayoutColumn(ptr noundef %27, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %38, ptr noundef nonnull %1, ptr noundef nonnull @.str.260, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %39 = call ptr @uiLayoutColumn(ptr noundef %38, i32 noundef 1) #13
  %40 = call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.260) #13
  %41 = icmp eq i32 %40, 1
  %42 = zext i1 %41 to i8
  call void @uiLayoutSetActive(ptr noundef %39, i8 noundef zeroext %42) #13
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %1, ptr noundef nonnull @.str.261, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %1, ptr noundef nonnull @.str.262, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %43 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  call void @uiItemR(ptr noundef %43, ptr noundef nonnull %1, ptr noundef nonnull @.str.263, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %43, ptr noundef nonnull %1, ptr noundef nonnull @.str.264, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %43, ptr noundef nonnull %1, ptr noundef nonnull @.str.265, i32 noundef 4, ptr noundef null, i32 noundef 0) #13
  br label %53

44:                                               ; preds = %2
  %45 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #13
  %46 = call ptr @uiLayoutRow(ptr noundef %45, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %46, ptr noundef nonnull %1, ptr noundef nonnull @.str.243, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %47 = call ptr @uiLayoutRow(ptr noundef %45, i32 noundef 1) #13
  call void @uiItemR(ptr noundef %47, ptr noundef nonnull %1, ptr noundef nonnull @.str.244, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %47, ptr noundef nonnull %1, ptr noundef nonnull @.str.266, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %48 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #13
  %49 = call ptr @uiLayoutRow(ptr noundef %48, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %49, ptr noundef nonnull %1, ptr noundef nonnull @.str.245, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %48, ptr noundef nonnull %1, ptr noundef nonnull @.str.246, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %50 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FECCCCCC0000000, i32 noundef 0) #13
  %51 = call ptr @uiLayoutRow(ptr noundef %50, i32 noundef 0) #13
  %52 = call ptr @uiLayoutSplit(ptr noundef %51, float noundef 0x3FE6666660000000, i32 noundef 0) #13
  call void @uiItemL(ptr noundef %52, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %52, ptr noundef nonnull %1, ptr noundef nonnull @.str.267, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  br label %53

53:                                               ; preds = %7, %14, %2, %44, %24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_parent(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %3 = tail call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.74) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %6 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %6, ptr noundef %1, ptr noundef nonnull @.str.268, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %7 = tail call ptr @uiLayoutRow(ptr noundef %6, i32 noundef 0) #13
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.268) #13
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i8
  tail call void @uiLayoutSetActive(ptr noundef %7, i8 noundef zeroext %10) #13
  tail call void @uiItemR(ptr noundef %7, ptr noundef %1, ptr noundef nonnull @.str.269, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %11

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_property(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !136
  %8 = getelementptr inbounds %struct.bActuator, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !127
  %10 = getelementptr inbounds %struct.bPropertyActuator, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @RNA_pointer_create(ptr noundef %5, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %5, ptr noundef nonnull %3) #13
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemPointerR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.115, ptr noundef nonnull %3, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #13
  %12 = call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.74) #13
  switch i32 %12, label %21 [
    i32 2, label %15
    i32 0, label %14
    i32 1, label %13
  ]

13:                                               ; preds = %2
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.112, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %21

14:                                               ; preds = %2
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.112, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %21

15:                                               ; preds = %2
  %16 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %16, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %17 = icmp eq ptr %11, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  call void @RNA_pointer_create(ptr noundef nonnull %11, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef nonnull %11, ptr noundef nonnull %4) #13
  call void @uiItemPointerR(ptr noundef %16, ptr noundef nonnull %1, ptr noundef nonnull @.str.270, ptr noundef nonnull %4, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #13
  br label %21

19:                                               ; preds = %15
  %20 = call ptr @uiLayoutRow(ptr noundef %16, i32 noundef 0) #13
  call void @uiLayoutSetActive(ptr noundef %20, i8 noundef zeroext 0) #13
  call void @uiItemR(ptr noundef %20, ptr noundef nonnull %1, ptr noundef nonnull @.str.270, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %21

21:                                               ; preds = %18, %19, %2, %14, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_random(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %4 = load ptr, ptr %1, align 8, !tbaa !153
  call void @RNA_pointer_create(ptr noundef %4, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %4, ptr noundef nonnull %3) #13
  %5 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %5, ptr noundef nonnull %1, ptr noundef nonnull @.str.151, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %5, ptr noundef nonnull %1, ptr noundef nonnull @.str.271, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %6 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  call void @uiItemPointerR(ptr noundef %6, ptr noundef nonnull %1, ptr noundef nonnull @.str.115, ptr noundef nonnull %3, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #13
  %7 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  %8 = call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.271) #13
  switch i32 %8, label %19 [
    i32 0, label %9
    i32 1, label %10
    i32 2, label %11
    i32 3, label %12
    i32 4, label %13
    i32 5, label %14
    i32 6, label %15
    i32 7, label %16
    i32 8, label %17
    i32 9, label %18
  ]

9:                                                ; preds = %2
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull @.str.272, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  br label %19

10:                                               ; preds = %2
  call void @uiItemL(ptr noundef %7, ptr noundef nonnull @.str.273, i32 noundef 0) #13
  br label %19

11:                                               ; preds = %2
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull @.str.274, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %19

12:                                               ; preds = %2
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull @.str.275, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %19

13:                                               ; preds = %2
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull @.str.276, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull @.str.277, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %19

14:                                               ; preds = %2
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull @.str.278, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %19

15:                                               ; preds = %2
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull @.str.279, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %19

16:                                               ; preds = %2
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull @.str.280, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull @.str.281, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %19

17:                                               ; preds = %2
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull @.str.282, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull @.str.283, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %19

18:                                               ; preds = %2
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull @.str.284, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %19

19:                                               ; preds = %2, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_scene(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %3 = tail call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.74) #13
  switch i32 %3, label %4 [
    i32 2, label %5
    i32 0, label %7
  ]

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %2, %4
  %6 = phi ptr [ @.str.286, %4 ], [ @.str.285, %2 ]
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_shape_action(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !155
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.287, i32 noundef 0) #13
  br label %19

9:                                                ; preds = %2
  call void @RNA_pointer_create(ptr noundef nonnull %4, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef nonnull %4, ptr noundef nonnull %3) #13
  %10 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %1, ptr noundef nonnull @.str.179, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %1, ptr noundef nonnull @.str.180, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %11 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  %12 = call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.74) #13
  %13 = icmp eq i32 %12, 6
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  call void @uiItemPointerR(ptr noundef %11, ptr noundef nonnull %1, ptr noundef nonnull @.str.115, ptr noundef nonnull %3, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #13
  br label %16

15:                                               ; preds = %9
  call void @uiItemR(ptr noundef %11, ptr noundef nonnull %1, ptr noundef nonnull @.str.181, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %11, ptr noundef nonnull %1, ptr noundef nonnull @.str.182, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %16

16:                                               ; preds = %15, %14
  %17 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %17, ptr noundef nonnull %1, ptr noundef nonnull @.str.184, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %17, ptr noundef nonnull %1, ptr noundef nonnull @.str.185, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %18 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  call void @uiItemPointerR(ptr noundef %18, ptr noundef nonnull %1, ptr noundef nonnull @.str.189, ptr noundef nonnull %3, ptr noundef nonnull @.str.139, ptr noundef null, i32 noundef 0) #13
  br label %19

19:                                               ; preds = %16, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_sound(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  tail call void @uiTemplateID(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef nonnull @.str.288, ptr noundef null, ptr noundef nonnull @.str.289, ptr noundef null) #13
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull @.str.288) #13
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.290, i32 noundef 0) #13
  br label %19

9:                                                ; preds = %3
  call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %10 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %10, ptr noundef %1, ptr noundef nonnull @.str.291, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %10, ptr noundef %1, ptr noundef nonnull @.str.292, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.293, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %11 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #13
  %12 = call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.293) #13
  %13 = icmp eq i32 %12, 1
  %14 = zext i1 %13 to i8
  call void @uiLayoutSetActive(ptr noundef %11, i8 noundef zeroext %14) #13
  %15 = call ptr @uiLayoutRow(ptr noundef %11, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %15, ptr noundef %1, ptr noundef nonnull @.str.294, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %15, ptr noundef %1, ptr noundef nonnull @.str.295, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %16 = call ptr @uiLayoutRow(ptr noundef %11, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %16, ptr noundef %1, ptr noundef nonnull @.str.296, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %16, ptr noundef %1, ptr noundef nonnull @.str.297, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %17 = call ptr @uiLayoutRow(ptr noundef %11, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %17, ptr noundef %1, ptr noundef nonnull @.str.298, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %17, ptr noundef %1, ptr noundef nonnull @.str.299, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %18 = call ptr @uiLayoutRow(ptr noundef %11, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %18, ptr noundef %1, ptr noundef nonnull @.str.300, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %18, ptr noundef %1, ptr noundef nonnull @.str.301, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  br label %19

19:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_state(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @RNA_pointer_create(ptr noundef %4, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %4, ptr noundef nonnull %3) #13
  %5 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FD6666660000000, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %5, ptr noundef nonnull %1, ptr noundef nonnull @.str.302, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @uiTemplateLayers(ptr noundef %5, ptr noundef nonnull %1, ptr noundef nonnull @.str.56, ptr noundef nonnull %3, ptr noundef nonnull @.str.20, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_visibility(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @.str.303, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @.str.304, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @.str.183, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_steering(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.140, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.305, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %4 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.144, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.306, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %5 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %1, ptr noundef nonnull @.str.307, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %1, ptr noundef nonnull @.str.308, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %6 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  %7 = tail call ptr @uiLayoutColumn(ptr noundef %6, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %7, ptr noundef %1, ptr noundef nonnull @.str.309, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %8 = tail call ptr @uiLayoutColumn(ptr noundef %6, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %8, ptr noundef %1, ptr noundef nonnull @.str.310, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.309) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @uiLayoutSetActive(ptr noundef %8, i8 noundef zeroext 0) #13
  br label %12

12:                                               ; preds = %11, %2
  %13 = tail call ptr @uiLayoutColumn(ptr noundef %6, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %13, ptr noundef %1, ptr noundef nonnull @.str.311, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %1, ptr noundef nonnull @.str.305) #13
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !136
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  call void @uiLayoutSetActive(ptr noundef %13, i8 noundef zeroext 0) #13
  br label %18

18:                                               ; preds = %17, %12
  %19 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %19, ptr noundef %1, ptr noundef nonnull @.str.312, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %20 = call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.74) #13
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  call void @uiItemR(ptr noundef %19, ptr noundef %1, ptr noundef nonnull @.str.313, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %23 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  br label %24

24:                                               ; preds = %22, %18
  %25 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  call void @uiItemR(ptr noundef %25, ptr noundef %1, ptr noundef nonnull @.str.314, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %26 = call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.74) #13
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  call void @uiLayoutSetActive(ptr noundef %25, i8 noundef zeroext 0) #13
  br label %29

29:                                               ; preds = %28, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_actuator_mouse(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %3 = tail call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.74) #13
  switch i32 %3, label %28 [
    i32 0, label %4
    i32 1, label %6
  ]

4:                                                ; preds = %2
  %5 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %5, ptr noundef %1, ptr noundef nonnull @.str.315, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  br label %28

6:                                                ; preds = %2
  %7 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  %8 = tail call ptr @uiLayoutColumn(ptr noundef %7, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %8, ptr noundef %1, ptr noundef nonnull @.str.316, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %9 = tail call ptr @uiLayoutColumn(ptr noundef %8, i32 noundef 1) #13
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.316) #13
  %11 = icmp eq i32 %10, 1
  %12 = zext i1 %11 to i8
  tail call void @uiLayoutSetActive(ptr noundef %9, i8 noundef zeroext %12) #13
  tail call void @uiItemR(ptr noundef %9, ptr noundef %1, ptr noundef nonnull @.str.317, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %9, ptr noundef %1, ptr noundef nonnull @.str.318, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %9, ptr noundef %1, ptr noundef nonnull @.str.319, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %9, ptr noundef %1, ptr noundef nonnull @.str.320, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %9, ptr noundef %1, ptr noundef nonnull @.str.321, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %13 = tail call ptr @uiLayoutColumn(ptr noundef %7, i32 noundef 1) #13
  tail call void @uiItemR(ptr noundef %13, ptr noundef %1, ptr noundef nonnull @.str.322, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %14 = tail call ptr @uiLayoutColumn(ptr noundef %13, i32 noundef 1) #13
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.322) #13
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i8
  tail call void @uiLayoutSetActive(ptr noundef %14, i8 noundef zeroext %17) #13
  tail call void @uiItemR(ptr noundef %14, ptr noundef %1, ptr noundef nonnull @.str.323, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %14, ptr noundef %1, ptr noundef nonnull @.str.324, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %14, ptr noundef %1, ptr noundef nonnull @.str.325, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %14, ptr noundef %1, ptr noundef nonnull @.str.326, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %14, ptr noundef %1, ptr noundef nonnull @.str.327, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %18 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #13
  %19 = tail call ptr @uiLayoutSplit(ptr noundef %18, float noundef 5.000000e-01, i32 noundef 0) #13
  %20 = tail call ptr @uiLayoutSplit(ptr noundef %19, float noundef 5.000000e-01, i32 noundef 1) #13
  %21 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.316) #13
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i8
  tail call void @uiLayoutSetActive(ptr noundef %20, i8 noundef zeroext %23) #13
  tail call void @uiItemR(ptr noundef %20, ptr noundef %1, ptr noundef nonnull @.str.328, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %20, ptr noundef %1, ptr noundef nonnull @.str.329, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %24 = tail call ptr @uiLayoutSplit(ptr noundef %19, float noundef 5.000000e-01, i32 noundef 1) #13
  %25 = tail call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.322) #13
  %26 = icmp eq i32 %25, 1
  %27 = zext i1 %26 to i8
  tail call void @uiLayoutSetActive(ptr noundef %24, i8 noundef zeroext %27) #13
  tail call void @uiItemR(ptr noundef %24, ptr noundef %1, ptr noundef nonnull @.str.330, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  tail call void @uiItemR(ptr noundef %24, ptr noundef %1, ptr noundef nonnull @.str.331, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  br label %28

28:                                               ; preds = %2, %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_armature_bone_constraint(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !155
  %7 = icmp eq i16 %6, 25
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !156
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %10, ptr noundef %1) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %13, i64 0, i32 3
  %17 = tail call ptr @BLI_findstring(ptr noundef nonnull %16, ptr noundef %2, i32 noundef 30) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store ptr %17, ptr %3, align 8, !tbaa !9
  br label %20

20:                                               ; preds = %12, %19, %15, %8, %4
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiTemplateID(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiTemplateLayers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = !{!20, !7, i64 966}
!20 = !{!"Object", !21, i64 0, !10, i64 120, !10, i64 128, !6, i64 136, !6, i64 138, !22, i64 140, !22, i64 144, !22, i64 148, !7, i64 152, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !23, i64 312, !10, i64 360, !24, i64 368, !24, i64 384, !24, i64 400, !24, i64 416, !22, i64 432, !22, i64 436, !10, i64 440, !10, i64 448, !22, i64 456, !22, i64 460, !7, i64 464, !7, i64 476, !7, i64 488, !7, i64 500, !7, i64 512, !7, i64 524, !7, i64 536, !7, i64 548, !7, i64 560, !7, i64 576, !7, i64 592, !7, i64 604, !25, i64 616, !25, i64 620, !7, i64 624, !7, i64 688, !7, i64 752, !7, i64 816, !7, i64 880, !22, i64 944, !6, i64 948, !6, i64 950, !6, i64 952, !6, i64 954, !6, i64 956, !6, i64 958, !6, i64 960, !6, i64 962, !6, i64 964, !7, i64 966, !7, i64 967, !22, i64 968, !22, i64 972, !22, i64 976, !22, i64 980, !22, i64 984, !25, i64 988, !25, i64 992, !25, i64 996, !25, i64 1000, !25, i64 1004, !25, i64 1008, !25, i64 1012, !25, i64 1016, !25, i64 1020, !25, i64 1024, !25, i64 1028, !25, i64 1032, !6, i64 1036, !6, i64 1038, !6, i64 1040, !7, i64 1042, !7, i64 1043, !6, i64 1044, !7, i64 1046, !7, i64 1047, !25, i64 1048, !25, i64 1052, !24, i64 1056, !24, i64 1072, !24, i64 1088, !24, i64 1104, !25, i64 1120, !6, i64 1124, !6, i64 1126, !7, i64 1128, !22, i64 1144, !22, i64 1148, !10, i64 1152, !7, i64 1160, !7, i64 1161, !6, i64 1162, !7, i64 1164, !24, i64 1176, !24, i64 1192, !24, i64 1208, !24, i64 1224, !10, i64 1240, !10, i64 1248, !10, i64 1256, !7, i64 1264, !7, i64 1265, !6, i64 1266, !25, i64 1268, !10, i64 1272, !10, i64 1280, !10, i64 1288, !10, i64 1296, !26, i64 1304, !26, i64 1312, !22, i64 1320, !22, i64 1324, !24, i64 1328, !24, i64 1344, !10, i64 1360, !10, i64 1368, !10, i64 1376, !7, i64 1384, !10, i64 1392, !24, i64 1400, !10, i64 1416}
!21 = !{!"ID", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !6, i64 98, !22, i64 100, !22, i64 104, !22, i64 108, !10, i64 112}
!22 = !{!"int", !7, i64 0}
!23 = !{!"bAnimVizSettings", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !6, i64 16, !6, i64 18, !6, i64 20, !6, i64 22, !6, i64 24, !6, i64 26, !6, i64 28, !6, i64 30, !22, i64 32, !22, i64 36, !22, i64 40, !22, i64 44}
!24 = !{!"ListBase", !10, i64 0, !10, i64 8}
!25 = !{!"float", !7, i64 0}
!26 = !{!"long", !7, i64 0}
!27 = distinct !{!27, !12}
!28 = !{!29, !22, i64 232}
!29 = !{!"Scene", !21, i64 0, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !24, i64 152, !10, i64 168, !10, i64 176, !7, i64 184, !7, i64 196, !7, i64 208, !7, i64 220, !22, i64 232, !22, i64 236, !22, i64 240, !6, i64 244, !7, i64 246, !7, i64 247, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !30, i64 280, !39, i64 4264, !24, i64 4296, !24, i64 4312, !10, i64 4328, !10, i64 4336, !10, i64 4344, !10, i64 4352, !10, i64 4360, !10, i64 4368, !6, i64 4376, !6, i64 4378, !22, i64 4380, !24, i64 4384, !40, i64 4400, !41, i64 4416, !44, i64 4600, !10, i64 4608, !45, i64 4616, !10, i64 4640, !26, i64 4648, !26, i64 4656, !32, i64 4664, !33, i64 4824, !46, i64 4888, !10, i64 4952}
!30 = !{!"RenderData", !31, i64 0, !10, i64 248, !10, i64 256, !34, i64 264, !35, i64 328, !22, i64 400, !22, i64 404, !22, i64 408, !25, i64 412, !22, i64 416, !22, i64 420, !22, i64 424, !22, i64 428, !6, i64 432, !6, i64 434, !25, i64 436, !25, i64 440, !25, i64 444, !25, i64 448, !25, i64 452, !6, i64 456, !6, i64 458, !6, i64 460, !6, i64 462, !6, i64 464, !6, i64 466, !22, i64 468, !6, i64 472, !6, i64 474, !6, i64 476, !6, i64 478, !6, i64 480, !6, i64 482, !22, i64 484, !22, i64 488, !6, i64 492, !6, i64 494, !22, i64 496, !22, i64 500, !6, i64 504, !6, i64 506, !6, i64 508, !6, i64 510, !6, i64 512, !7, i64 514, !7, i64 515, !22, i64 516, !22, i64 520, !22, i64 524, !6, i64 528, !6, i64 530, !6, i64 532, !6, i64 534, !6, i64 536, !6, i64 538, !6, i64 540, !6, i64 542, !36, i64 544, !36, i64 560, !37, i64 576, !24, i64 592, !6, i64 608, !6, i64 610, !25, i64 612, !25, i64 616, !25, i64 620, !25, i64 624, !22, i64 628, !25, i64 632, !25, i64 636, !25, i64 640, !25, i64 644, !6, i64 648, !6, i64 650, !6, i64 652, !6, i64 654, !6, i64 656, !6, i64 658, !25, i64 660, !25, i64 664, !6, i64 668, !6, i64 670, !25, i64 672, !25, i64 676, !7, i64 680, !22, i64 1704, !6, i64 1708, !6, i64 1710, !7, i64 1712, !7, i64 2480, !7, i64 2496, !7, i64 2512, !7, i64 2513, !7, i64 2514, !7, i64 2515, !22, i64 2520, !6, i64 2524, !6, i64 2526, !25, i64 2528, !25, i64 2532, !6, i64 2536, !6, i64 2538, !25, i64 2540, !6, i64 2544, !6, i64 2546, !22, i64 2548, !6, i64 2552, !6, i64 2554, !6, i64 2556, !6, i64 2558, !25, i64 2560, !25, i64 2564, !10, i64 2568, !22, i64 2576, !25, i64 2580, !7, i64 2584, !38, i64 2616, !22, i64 3976, !22, i64 3980}
!31 = !{!"ImageFormatData", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !6, i64 8, !6, i64 10, !25, i64 12, !7, i64 16, !7, i64 17, !7, i64 18, !32, i64 24, !33, i64 184}
!32 = !{!"ColorManagedViewSettings", !22, i64 0, !22, i64 4, !7, i64 8, !7, i64 72, !25, i64 136, !25, i64 140, !10, i64 144, !10, i64 152}
!33 = !{!"ColorManagedDisplaySettings", !7, i64 0}
!34 = !{!"QuicktimeCodecSettings", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !22, i64 36, !22, i64 40, !22, i64 44, !6, i64 48, !6, i64 50, !22, i64 52, !22, i64 56, !22, i64 60}
!35 = !{!"FFMpegCodecData", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !25, i64 32, !22, i64 36, !22, i64 40, !22, i64 44, !22, i64 48, !22, i64 52, !22, i64 56, !22, i64 60, !10, i64 64}
!36 = !{!"rctf", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12}
!37 = !{!"rcti", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!38 = !{!"BakeData", !31, i64 0, !7, i64 248, !6, i64 1272, !6, i64 1274, !6, i64 1276, !6, i64 1278, !25, i64 1280, !25, i64 1284, !7, i64 1288, !7, i64 1291, !7, i64 1292, !7, i64 1293, !7, i64 1296}
!39 = !{!"AudioData", !22, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !22, i64 16, !6, i64 20, !6, i64 22, !25, i64 24, !25, i64 28}
!40 = !{!"GameFraming", !7, i64 0, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!41 = !{!"GameData", !40, i64 0, !6, i64 16, !6, i64 18, !6, i64 20, !6, i64 22, !6, i64 24, !6, i64 26, !6, i64 28, !6, i64 30, !6, i64 32, !7, i64 34, !42, i64 40, !6, i64 64, !6, i64 66, !25, i64 68, !43, i64 72, !25, i64 128, !25, i64 132, !22, i64 136, !6, i64 140, !6, i64 142, !6, i64 144, !6, i64 146, !6, i64 148, !6, i64 150, !6, i64 152, !6, i64 154, !6, i64 156, !6, i64 158, !6, i64 160, !6, i64 162, !25, i64 164, !25, i64 168, !25, i64 172, !25, i64 176, !25, i64 180}
!42 = !{!"GameDome", !6, i64 0, !6, i64 2, !6, i64 4, !6, i64 6, !25, i64 8, !25, i64 12, !10, i64 16}
!43 = !{!"RecastData", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20, !25, i64 24, !25, i64 28, !25, i64 32, !25, i64 36, !22, i64 40, !25, i64 44, !25, i64 48, !6, i64 52, !6, i64 54}
!44 = !{!"UnitSettings", !25, i64 0, !7, i64 4, !7, i64 5, !6, i64 6}
!45 = !{!"PhysicsSettings", !7, i64 0, !22, i64 12, !22, i64 16, !22, i64 20}
!46 = !{!"ColorManagedColorspaceSettings", !7, i64 0}
!47 = !{!48, !22, i64 16}
!48 = !{!"Base", !10, i64 0, !10, i64 8, !22, i64 16, !22, i64 20, !22, i64 24, !6, i64 28, !6, i64 30, !10, i64 32}
!49 = !{!48, !22, i64 24}
!50 = !{!48, !10, i64 32}
!51 = distinct !{!51, !12}
!52 = distinct !{!52, !12}
!53 = !{!54, !6, i64 26}
!54 = !{!"bSensor", !10, i64 0, !10, i64 8, !6, i64 16, !6, i64 18, !6, i64 20, !6, i64 22, !6, i64 24, !6, i64 26, !6, i64 28, !6, i64 30, !7, i64 32, !10, i64 96, !10, i64 104, !10, i64 112, !6, i64 120, !6, i64 122, !6, i64 124, !6, i64 126}
!55 = !{!54, !10, i64 104}
!56 = !{!57, !10, i64 16}
!57 = !{!"bController", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 26, !6, i64 28, !6, i64 30, !6, i64 32, !6, i64 34, !6, i64 36, !6, i64 38, !7, i64 40, !10, i64 104, !10, i64 112, !10, i64 120, !6, i64 128, !6, i64 130, !22, i64 132}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = !{!57, !6, i64 30}
!61 = !{!57, !10, i64 112}
!62 = !{!63, !10, i64 16}
!63 = !{!"bActuator", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 26, !6, i64 28, !6, i64 30, !7, i64 32, !10, i64 96, !10, i64 104}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = !{!73, !10, i64 1120}
!73 = !{!"Main", !10, i64 0, !10, i64 8, !7, i64 16, !6, i64 1040, !6, i64 1042, !6, i64 1044, !6, i64 1046, !26, i64 1048, !7, i64 1056, !6, i64 1072, !10, i64 1080, !24, i64 1088, !24, i64 1104, !24, i64 1120, !24, i64 1136, !24, i64 1152, !24, i64 1168, !24, i64 1184, !24, i64 1200, !24, i64 1216, !24, i64 1232, !24, i64 1248, !24, i64 1264, !24, i64 1280, !24, i64 1296, !24, i64 1312, !24, i64 1328, !24, i64 1344, !24, i64 1360, !24, i64 1376, !24, i64 1392, !24, i64 1408, !24, i64 1424, !24, i64 1440, !24, i64 1456, !24, i64 1472, !24, i64 1488, !24, i64 1504, !24, i64 1520, !24, i64 1536, !24, i64 1552, !24, i64 1568, !24, i64 1584, !24, i64 1600, !24, i64 1616, !7, i64 1632, !10, i64 1888, !10, i64 1896}
!74 = !{!20, !10, i64 0}
!75 = distinct !{!75, !12}
!76 = !{!77, !6, i64 58}
!77 = !{!"SpaceLogic", !10, i64 0, !10, i64 8, !24, i64 16, !22, i64 32, !25, i64 36, !7, i64 40, !6, i64 56, !6, i64 58, !22, i64 60, !10, i64 64}
!78 = !{!79, !6, i64 8948}
!79 = !{!"UserDef", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !22, i64 8468, !6, i64 8472, !6, i64 8474, !6, i64 8476, !6, i64 8478, !6, i64 8480, !6, i64 8482, !22, i64 8484, !22, i64 8488, !22, i64 8492, !6, i64 8496, !6, i64 8498, !22, i64 8500, !22, i64 8504, !22, i64 8508, !22, i64 8512, !22, i64 8516, !22, i64 8520, !22, i64 8524, !6, i64 8528, !6, i64 8530, !6, i64 8532, !6, i64 8534, !24, i64 8536, !24, i64 8552, !24, i64 8568, !24, i64 8584, !24, i64 8600, !24, i64 8616, !24, i64 8632, !7, i64 8648, !6, i64 8712, !6, i64 8714, !6, i64 8716, !6, i64 8718, !6, i64 8720, !6, i64 8722, !6, i64 8724, !6, i64 8726, !7, i64 8728, !6, i64 8896, !6, i64 8898, !6, i64 8900, !6, i64 8902, !6, i64 8904, !6, i64 8906, !6, i64 8908, !6, i64 8910, !22, i64 8912, !22, i64 8916, !6, i64 8920, !6, i64 8922, !6, i64 8924, !6, i64 8926, !6, i64 8928, !6, i64 8930, !6, i64 8932, !6, i64 8934, !6, i64 8936, !6, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !6, i64 8944, !6, i64 8946, !6, i64 8948, !6, i64 8950, !6, i64 8952, !6, i64 8954, !25, i64 8956, !25, i64 8960, !22, i64 8964, !6, i64 8968, !6, i64 8970, !25, i64 8972, !6, i64 8976, !6, i64 8978, !6, i64 8980, !6, i64 8982, !80, i64 8984, !7, i64 9760, !7, i64 9772, !6, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !22, i64 10896, !22, i64 10900, !25, i64 10904, !25, i64 10908, !22, i64 10912, !6, i64 10916, !6, i64 10918, !6, i64 10920, !6, i64 10922, !6, i64 10924, !6, i64 10926, !81, i64 10928}
!80 = !{!"ColorBand", !6, i64 0, !6, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!81 = !{!"WalkNavigation", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20, !6, i64 24, !7, i64 26}
!82 = !{!63, !6, i64 26}
!83 = distinct !{!83, !12}
!84 = !{!54, !6, i64 20}
!85 = distinct !{!85, !12}
!86 = !{!20, !6, i64 964}
!87 = distinct !{!87, !12}
!88 = !{!20, !22, i64 1320}
!89 = !{!57, !22, i64 132}
!90 = distinct !{!90, !12}
!91 = distinct !{!91, !12}
!92 = !{!22, !22, i64 0}
!93 = distinct !{!93, !12}
!94 = distinct !{!94, !12}
!95 = !{i8 0, i8 2}
!96 = distinct !{!96, !12}
!97 = distinct !{!97, !12}
!98 = distinct !{!98, !12}
!99 = distinct !{!99, !12}
!100 = !{!20, !22, i64 1144}
!101 = distinct !{!101, !12}
!102 = !{!54, !6, i64 16}
!103 = !{!54, !6, i64 18}
!104 = distinct !{!104, !12}
!105 = distinct !{!105, !12}
!106 = distinct !{!106, !12}
!107 = distinct !{!107, !12}
!108 = distinct !{!108, !12}
!109 = distinct !{!109, !12}
!110 = distinct !{!110, !12}
!111 = !{!20, !22, i64 1324}
!112 = distinct !{!112, !12}
!113 = !{!57, !6, i64 24}
!114 = !{!57, !6, i64 32}
!115 = distinct !{!115, !12}
!116 = distinct !{!116, !12}
!117 = !{!57, !6, i64 26}
!118 = distinct !{!118, !12}
!119 = distinct !{!119, !12}
!120 = distinct !{!120, !12}
!121 = !{!63, !6, i64 24}
!122 = !{!63, !6, i64 28}
!123 = distinct !{!123, !12}
!124 = distinct !{!124, !12}
!125 = distinct !{!125, !12}
!126 = distinct !{!126, !12}
!127 = !{!63, !10, i64 96}
!128 = !{!129, !6, i64 2}
!129 = !{!"bSoundActuator", !6, i64 0, !6, i64 2, !22, i64 4, !22, i64 8, !7, i64 12, !25, i64 16, !25, i64 20, !10, i64 24, !130, i64 32, !6, i64 64, !6, i64 66, !6, i64 68, !7, i64 70}
!130 = !{!"Sound3D", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20, !25, i64 24, !25, i64 28}
!131 = distinct !{!131, !12}
!132 = !{!129, !10, i64 24}
!133 = !{!21, !22, i64 100}
!134 = distinct !{!134, !12}
!135 = distinct !{!135, !12}
!136 = !{!137, !10, i64 16}
!137 = !{!"PointerRNA", !138, i64 0, !10, i64 8, !10, i64 16}
!138 = !{!"", !10, i64 0}
!139 = distinct !{!139, !12}
!140 = distinct !{!140, !12}
!141 = distinct !{!141, !12}
!142 = distinct !{!142, !12}
!143 = distinct !{!143, !12}
!144 = distinct !{!144, !12}
!145 = distinct !{!145, !12}
!146 = distinct !{!146, !12}
!147 = distinct !{!147, !12}
!148 = !{!149, !6, i64 36}
!149 = !{!"uiBut", !10, i64 0, !10, i64 8, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !6, i64 32, !6, i64 34, !6, i64 36, !6, i64 38, !6, i64 40, !6, i64 42, !6, i64 44, !6, i64 46, !6, i64 48, !10, i64 56, !7, i64 64, !7, i64 192, !36, i64 592, !10, i64 608, !25, i64 616, !25, i64 620, !25, i64 624, !25, i64 628, !25, i64 632, !25, i64 636, !7, i64 640, !10, i64 648, !10, i64 656, !10, i64 664, !10, i64 672, !10, i64 680, !10, i64 688, !10, i64 696, !10, i64 704, !10, i64 712, !10, i64 720, !10, i64 728, !10, i64 736, !10, i64 744, !10, i64 752, !7, i64 760, !10, i64 768, !10, i64 776, !22, i64 784, !7, i64 788, !7, i64 789, !7, i64 790, !7, i64 791, !7, i64 792, !6, i64 794, !6, i64 796, !10, i64 800, !10, i64 808, !137, i64 816, !10, i64 840, !22, i64 848, !137, i64 856, !10, i64 880, !10, i64 888, !10, i64 896, !6, i64 904, !7, i64 906, !7, i64 907, !10, i64 912, !10, i64 920, !25, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !10, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992}
!150 = distinct !{!150, !12}
!151 = distinct !{!151, !12}
!152 = distinct !{!152, !12}
!153 = !{!137, !10, i64 0}
!154 = !{!54, !10, i64 96}
!155 = !{!20, !6, i64 136}
!156 = !{!20, !10, i64 288}
!157 = distinct !{!157, !12}
!158 = distinct !{!158, !12}
!159 = distinct !{!159, !12}
!160 = !{!161, !6, i64 24}
!161 = !{!"bConstraint", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 26, !7, i64 28, !7, i64 29, !7, i64 30, !6, i64 94, !25, i64 96, !25, i64 100, !10, i64 104, !25, i64 112, !25, i64 116}
!162 = !{!163, !10, i64 136}
!163 = !{!"bPropertyActuator", !22, i64 0, !22, i64 4, !7, i64 8, !7, i64 72, !10, i64 136}
