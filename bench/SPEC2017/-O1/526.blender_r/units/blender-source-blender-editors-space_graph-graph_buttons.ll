; ModuleID = 'blender/source/blender/editors/space_graph/graph_buttons.c'
source_filename = "blender/source/blender/editors/space_graph/graph_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.PanelType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Panel = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.ChannelDriver = type { %struct.ListBase, [256 x i8], ptr, float, float, i32, i32 }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"spacetype graph panel view\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"GRAPH_PT_view\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"View Properties\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"spacetype graph panel properties\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"GRAPH_PT_properties\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Active F-Curve\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"GRAPH_PT_key_properties\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Active Keyframe\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"spacetype graph panel drivers\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"GRAPH_PT_drivers\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"spacetype graph panel modifiers\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"GRAPH_PT_modifiers\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"Modifiers\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"GRAPH_OT_properties\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Toggle display properties panel\00", align 1
@RNA_SpaceGraphEditor = external global %struct.StructRNA, align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"show_cursor\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Cursor from Selection\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"GRAPH_OT_frame_jump\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"frame_current\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"Cursor X\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"GRAPH_OT_snap\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"To Keys\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"cursor_position_y\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Cursor Y\00", align 1
@RNA_FCurve = external global %struct.StructRNA, align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"array_index\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Display Color:\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"color_mode\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@RNA_Keyframe = external global %struct.StructRNA, align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"interpolation\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"easing\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"back\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"amplitude\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"Key:\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Frame:\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.41 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"Value:\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"Left Handle:\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"X:\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"handle_left\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"Y:\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"handle_left_type\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"Type of left handle\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"Right Handle:\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"handle_right\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"handle_right_type\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"Type of right handle\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"F-Curve only has F-Modifiers\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"See Modifiers panel below\00", align 1
@.str.55 = private unnamed_addr constant [70 x i8] c"F-Curve doesn't have any keyframes as it only contains sampled points\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"No active keyframe on F-Curve\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"Update Dependencies\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"Force updates of dependencies\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"Remove Driver\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"Remove this driver\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@RNA_Driver = external global %struct.StructRNA, align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"bpy.data.\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"bpy.context.\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"Expr\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.65 = private unnamed_addr constant [38 x i8] c"ERROR: Python auto-execution disabled\00", align 1
@.str.66 = private unnamed_addr constant [33 x i8] c"ERROR: Invalid Python expression\00", align 1
@.str.67 = private unnamed_addr constant [50 x i8] c"WARNING: Driver expression may not work correctly\00", align 1
@.str.68 = private unnamed_addr constant [57 x i8] c"TIP: Use variables instead of bpy.data paths (see below)\00", align 1
@.str.69 = private unnamed_addr constant [50 x i8] c"TIP: bpy.context is not safe for renderfarm usage\00", align 1
@.str.70 = private unnamed_addr constant [33 x i8] c"ERROR: Invalid target channel(s)\00", align 1
@.str.71 = private unnamed_addr constant [44 x i8] c"ERROR: Driver is useless without any inputs\00", align 1
@.str.72 = private unnamed_addr constant [51 x i8] c"TIP: Use F-Curves for procedural animation instead\00", align 1
@.str.73 = private unnamed_addr constant [46 x i8] c"F-Modifiers can generate curves for those too\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"show_debug_info\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"Driver Value:\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"Add Variable\00", align 1
@.str.78 = private unnamed_addr constant [107 x i8] c"Driver variables ensure that all dependencies will be accounted for and that drivers will update correctly\00", align 1
@RNA_DriverVariable = external global %struct.StructRNA, align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"Delete target variable\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"%.3f (%4.1f\C2\B0)\00", align 1
@RNA_DriverTarget = external global %struct.StructRNA, align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"id_type\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"Prop:\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"Bone 1:\00", align 1
@RNA_Pose = external global %struct.StructRNA, align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"bone_target\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"bones\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"Bone 2:\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"Ob/Bone 1:\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"transform_space\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"Ob/Bone 2:\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"Ob/Bone:\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"transform_type\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"Space\00", align 1
@.str.96 = private unnamed_addr constant [23 x i8] c"GRAPH_OT_fmodifier_add\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"Add Modifier\00", align 1
@.str.98 = private unnamed_addr constant [51 x i8] c"Adds a new F-Curve Modifier for the active F-Curve\00", align 1
@.str.99 = private unnamed_addr constant [24 x i8] c"GRAPH_OT_fmodifier_copy\00", align 1
@.str.100 = private unnamed_addr constant [25 x i8] c"GRAPH_OT_fmodifier_paste\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @graph_buttons_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str) #7
  %4 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %4, ptr noundef nonnull align 1 dereferenceable(14) @.str.1, i64 14, i1 false) #7
  %5 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(16) @.str.2, i64 16, i1 false) #7
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 4
  store i16 42, ptr %6, align 1
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 12
  store ptr @graph_panel_view, ptr %7, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = or i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %3) #7
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = tail call ptr %12(i64 noundef 408, ptr noundef nonnull @.str.4) #7
  %14 = getelementptr inbounds %struct.PanelType, ptr %13, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %14, ptr noundef nonnull align 1 dereferenceable(20) @.str.5, i64 20, i1 false) #7
  %15 = getelementptr inbounds %struct.PanelType, ptr %13, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %15, ptr noundef nonnull align 1 dereferenceable(15) @.str.6, i64 15, i1 false) #7
  %16 = getelementptr inbounds %struct.PanelType, ptr %13, i64 0, i32 4
  store i16 42, ptr %16, align 1
  %17 = getelementptr inbounds %struct.PanelType, ptr %13, i64 0, i32 12
  store ptr @graph_panel_properties, ptr %17, align 8, !tbaa !38
  %18 = getelementptr inbounds %struct.PanelType, ptr %13, i64 0, i32 10
  store ptr @graph_panel_poll, ptr %18, align 8, !tbaa !43
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %13) #7
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %20 = tail call ptr %19(i64 noundef 408, ptr noundef nonnull @.str.4) #7
  %21 = getelementptr inbounds %struct.PanelType, ptr %20, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %21, ptr noundef nonnull align 1 dereferenceable(24) @.str.7, i64 24, i1 false) #7
  %22 = getelementptr inbounds %struct.PanelType, ptr %20, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %22, ptr noundef nonnull align 1 dereferenceable(16) @.str.8, i64 16, i1 false) #7
  %23 = getelementptr inbounds %struct.PanelType, ptr %20, i64 0, i32 4
  store i16 42, ptr %23, align 1
  %24 = getelementptr inbounds %struct.PanelType, ptr %20, i64 0, i32 12
  store ptr @graph_panel_key_properties, ptr %24, align 8, !tbaa !38
  %25 = getelementptr inbounds %struct.PanelType, ptr %20, i64 0, i32 10
  store ptr @graph_panel_poll, ptr %25, align 8, !tbaa !43
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %20) #7
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %27 = tail call ptr %26(i64 noundef 408, ptr noundef nonnull @.str.9) #7
  %28 = getelementptr inbounds %struct.PanelType, ptr %27, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %28, ptr noundef nonnull align 1 dereferenceable(17) @.str.10, i64 17, i1 false) #7
  %29 = getelementptr inbounds %struct.PanelType, ptr %27, i64 0, i32 3
  store i64 32495402425610820, ptr %29, align 1
  %30 = getelementptr inbounds %struct.PanelType, ptr %27, i64 0, i32 4
  store i16 42, ptr %30, align 1
  %31 = getelementptr inbounds %struct.PanelType, ptr %27, i64 0, i32 12
  store ptr @graph_panel_drivers, ptr %31, align 8, !tbaa !38
  %32 = getelementptr inbounds %struct.PanelType, ptr %27, i64 0, i32 10
  store ptr @graph_panel_drivers_poll, ptr %32, align 8, !tbaa !43
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %27) #7
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %34 = tail call ptr %33(i64 noundef 408, ptr noundef nonnull @.str.12) #7
  %35 = getelementptr inbounds %struct.PanelType, ptr %34, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %35, ptr noundef nonnull align 1 dereferenceable(19) @.str.13, i64 19, i1 false) #7
  %36 = getelementptr inbounds %struct.PanelType, ptr %34, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %36, ptr noundef nonnull align 1 dereferenceable(10) @.str.14, i64 10, i1 false) #7
  %37 = getelementptr inbounds %struct.PanelType, ptr %34, i64 0, i32 4
  store i16 42, ptr %37, align 1
  %38 = getelementptr inbounds %struct.PanelType, ptr %34, i64 0, i32 12
  store ptr @graph_panel_modifiers, ptr %38, align 8, !tbaa !38
  %39 = getelementptr inbounds %struct.PanelType, ptr %34, i64 0, i32 10
  store ptr @graph_panel_poll, ptr %39, align 8, !tbaa !43
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %34) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @graph_panel_view(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #7
  %6 = tail call ptr @CTX_wm_space_graph(ptr noundef %0) #7
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @RNA_id_pointer_create(ptr noundef %7, ptr noundef nonnull %4) #7
  call void @RNA_pointer_create(ptr noundef %5, ptr noundef nonnull @RNA_SpaceGraphEditor, ptr noundef %6, ptr noundef nonnull %3) #7
  %8 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = call ptr @uiLayoutColumn(ptr noundef %9, i32 noundef 0) #7
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %11 = call ptr @uiLayoutColumn(ptr noundef %10, i32 noundef 1) #7
  %12 = call i32 @RNA_boolean_get(ptr noundef nonnull %3, ptr noundef nonnull @.str.18) #7
  %13 = trunc i32 %12 to i8
  call void @uiLayoutSetActive(ptr noundef %11, i8 noundef zeroext %13) #7
  call void @uiItemO(ptr noundef %11, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef nonnull @.str.20) #7
  %14 = call ptr @uiLayoutColumn(ptr noundef %10, i32 noundef 1) #7
  %15 = call i32 @RNA_boolean_get(ptr noundef nonnull %3, ptr noundef nonnull @.str.18) #7
  %16 = trunc i32 %15 to i8
  call void @uiLayoutSetActive(ptr noundef %14, i8 noundef zeroext %16) #7
  %17 = call ptr @uiLayoutSplit(ptr noundef %14, float noundef 0x3FE6666660000000, i32 noundef 1) #7
  call void @uiItemR(ptr noundef %17, ptr noundef nonnull %4, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, i32 noundef 0) #7
  call void @uiItemEnumO(ptr noundef %17, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.25, i32 noundef 1) #7
  %18 = call ptr @uiLayoutSplit(ptr noundef %14, float noundef 0x3FE6666660000000, i32 noundef 1) #7
  call void @uiItemR(ptr noundef %18, ptr noundef nonnull %3, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef 0) #7
  call void @uiItemEnumO(ptr noundef %18, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.25, i32 noundef 6) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @graph_panel_properties(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  %6 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #7
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = call ptr @get_active_fcurve_channel(ptr noundef nonnull %3) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  br label %16

16:                                               ; preds = %2, %10, %13
  %17 = phi ptr [ undef, %2 ], [ undef, %10 ], [ %11, %13 ]
  %18 = phi ptr [ undef, %2 ], [ undef, %10 ], [ %15, %13 ]
  %19 = phi i1 [ true, %2 ], [ true, %10 ], [ false, %13 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  call void @RNA_pointer_create(ptr noundef %22, ptr noundef nonnull @RNA_FCurve, ptr noundef %18, ptr noundef nonnull %4) #7
  %23 = call ptr @uiLayoutColumn(ptr noundef %7, i32 noundef 0) #7
  %24 = load ptr, ptr %21, align 8, !tbaa !49
  %25 = call i32 @getname_anim_fcurve(ptr noundef nonnull %5, ptr noundef %24, ptr noundef %18) #7
  call void @uiItemL(ptr noundef %23, ptr noundef nonnull %5, i32 noundef %25) #7
  %26 = call ptr @uiLayoutColumn(ptr noundef %7, i32 noundef 1) #7
  %27 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 9
  %28 = load i16, ptr %27, align 8, !tbaa !50
  %29 = lshr i16 %28, 10
  %30 = trunc i16 %29 to i8
  %31 = and i8 %30, 1
  call void @uiLayoutSetEnabled(ptr noundef %26, i8 noundef zeroext %31) #7
  call void @uiItemR(ptr noundef %26, ptr noundef nonnull %4, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef 206) #7
  call void @uiItemR(ptr noundef %26, ptr noundef nonnull %4, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %32 = call ptr @uiLayoutColumn(ptr noundef %7, i32 noundef 1) #7
  call void @uiItemL(ptr noundef %32, ptr noundef nonnull @.str.31, i32 noundef 0) #7
  %33 = call ptr @uiLayoutRow(ptr noundef %32, i32 noundef 1) #7
  call void @uiItemR(ptr noundef %33, ptr noundef nonnull %4, ptr noundef nonnull @.str.32, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef 0) #7
  %34 = call ptr @uiLayoutRow(ptr noundef %33, i32 noundef 1) #7
  %35 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 13
  %36 = load i32, ptr %35, align 8, !tbaa !54
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  call void @uiLayoutSetEnabled(ptr noundef %34, i8 noundef zeroext %38) #7
  call void @uiItemR(ptr noundef %34, ptr noundef nonnull %4, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef 0) #7
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %39(ptr noundef %17) #7
  br label %40

40:                                               ; preds = %16, %20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graph_panel_poll(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #7
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = call ptr @get_active_fcurve_channel(ptr noundef nonnull %3) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %10(ptr noundef nonnull %7) #7
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi i32 [ 0, %2 ], [ 0, %6 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @graph_panel_key_properties(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #7
  %10 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = call ptr @get_active_fcurve_channel(ptr noundef nonnull %3) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.bAnimListElem, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  br label %18

18:                                               ; preds = %2, %12, %15
  %19 = phi ptr [ undef, %2 ], [ undef, %12 ], [ %13, %15 ]
  %20 = phi ptr [ undef, %2 ], [ undef, %12 ], [ %17, %15 ]
  %21 = phi i1 [ true, %2 ], [ true, %12 ], [ false, %15 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  br i1 %21, label %128, label %22

22:                                               ; preds = %18
  %23 = call ptr @uiLayoutGetBlock(ptr noundef %9) #7
  %24 = getelementptr inbounds %struct.FCurve, ptr %20, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = icmp eq ptr %25, null
  br i1 %26, label %56, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.FCurve, ptr %20, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !56
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %27, %52
  %32 = phi i32 [ %53, %52 ], [ 0, %27 ]
  %33 = phi ptr [ %54, %52 ], [ %25, %27 ]
  %34 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 8
  %35 = load i8, ptr %34, align 4, !tbaa !57
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 7
  %40 = load i8, ptr %39, align 1, !tbaa !59
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 9
  %45 = load i8, ptr %44, align 1, !tbaa !60
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43, %38, %31
  %49 = icmp ne i32 %32, 0
  %50 = sext i1 %49 to i64
  %51 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 %50
  br label %56

52:                                               ; preds = %43
  %53 = add nuw i32 %32, 1
  %54 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 1
  %55 = icmp eq i32 %53, %29
  br i1 %55, label %56, label %31, !llvm.loop !61

56:                                               ; preds = %52, %22, %27, %48
  %57 = phi ptr [ null, %22 ], [ null, %27 ], [ %33, %48 ], [ null, %52 ]
  %58 = phi ptr [ null, %22 ], [ null, %27 ], [ %51, %48 ], [ null, %52 ]
  %59 = phi i1 [ true, %22 ], [ true, %27 ], [ false, %48 ], [ true, %52 ]
  br i1 %59, label %114, label %60

60:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  store ptr null, ptr %7, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.bAnimListElem, ptr %19, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !49
  call void @RNA_pointer_create(ptr noundef %62, ptr noundef nonnull @RNA_Keyframe, ptr noundef %57, ptr noundef nonnull %4) #7
  %63 = load ptr, ptr %61, align 8, !tbaa !49
  call void @RNA_id_pointer_create(ptr noundef %63, ptr noundef nonnull %5) #7
  %64 = getelementptr inbounds %struct.FCurve, ptr %20, i64 0, i32 12
  %65 = load ptr, ptr %64, align 8, !tbaa !64
  %66 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %5, ptr noundef %65, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %60
  %69 = load ptr, ptr %7, align 8, !tbaa !34
  %70 = call i32 @RNA_property_subtype(ptr noundef %69) #7
  %71 = and i32 %70, 16711680
  br label %72

72:                                               ; preds = %68, %60
  %73 = phi i32 [ %71, %68 ], [ 0, %60 ]
  %74 = call ptr @uiLayoutColumn(ptr noundef %9, i32 noundef 0) #7
  call void @uiItemR(ptr noundef %74, ptr noundef nonnull %4, ptr noundef nonnull @.str.34, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %75 = getelementptr inbounds %struct.BezTriple, ptr %57, i64 0, i32 4
  %76 = load i8, ptr %75, align 4, !tbaa !65
  %77 = icmp ugt i8 %76, 2
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  call void @uiItemR(ptr noundef %74, ptr noundef nonnull %4, ptr noundef nonnull @.str.35, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  br label %79

79:                                               ; preds = %78, %72
  %80 = load i8, ptr %75, align 4, !tbaa !65
  switch i8 %80, label %85 [
    i8 3, label %81
    i8 7, label %83
  ]

81:                                               ; preds = %79
  %82 = call ptr @uiLayoutColumn(ptr noundef %9, i32 noundef 1) #7
  call void @uiItemR(ptr noundef %82, ptr noundef nonnull %4, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  br label %85

83:                                               ; preds = %79
  %84 = call ptr @uiLayoutColumn(ptr noundef %9, i32 noundef 1) #7
  call void @uiItemR(ptr noundef %84, ptr noundef nonnull %4, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  call void @uiItemR(ptr noundef %84, ptr noundef nonnull %4, ptr noundef nonnull @.str.38, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  br label %85

85:                                               ; preds = %79, %83, %81
  %86 = call ptr @uiLayoutColumn(ptr noundef %9, i32 noundef 1) #7
  call void @uiItemL(ptr noundef %86, ptr noundef nonnull @.str.39, i32 noundef 0) #7
  %87 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !66
  %88 = call ptr @uiDefButR(ptr noundef %23, i32 noundef 2560, i32 noundef 1, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 0, i16 noundef signext %87, i16 noundef signext %87, ptr noundef nonnull %4, ptr noundef nonnull @.str.41, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #7
  call void @uiButSetFunc(ptr noundef %88, ptr noundef nonnull @graphedit_activekey_update_cb, ptr noundef %20, ptr noundef %57) #7
  %89 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !66
  %90 = call ptr @uiDefButR(ptr noundef %23, i32 noundef 2560, i32 noundef 1, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef 0, i16 noundef signext %89, i16 noundef signext %89, ptr noundef nonnull %4, ptr noundef nonnull @.str.41, i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #7
  call void @uiButSetFunc(ptr noundef %90, ptr noundef nonnull @graphedit_activekey_update_cb, ptr noundef %20, ptr noundef %57) #7
  call void @uiButSetUnitType(ptr noundef %90, i32 noundef %73) #7
  %91 = icmp eq ptr %58, null
  br i1 %91, label %103, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.BezTriple, ptr %58, i64 0, i32 4
  %94 = load i8, ptr %93, align 4, !tbaa !65
  %95 = icmp eq i8 %94, 2
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  call void @uiItemL(ptr noundef %86, ptr noundef nonnull @.str.43, i32 noundef 0) #7
  %97 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !66
  %98 = call ptr @uiDefButR(ptr noundef %23, i32 noundef 2560, i32 noundef 1, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef 0, i16 noundef signext %97, i16 noundef signext %97, ptr noundef nonnull %4, ptr noundef nonnull @.str.45, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #7
  call void @uiButSetFunc(ptr noundef %98, ptr noundef nonnull @graphedit_activekey_left_handle_coord_cb, ptr noundef %20, ptr noundef %57) #7
  %99 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !66
  %100 = call ptr @uiDefButR(ptr noundef %23, i32 noundef 2560, i32 noundef 1, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef 0, i16 noundef signext %99, i16 noundef signext %99, ptr noundef nonnull %4, ptr noundef nonnull @.str.45, i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #7
  call void @uiButSetFunc(ptr noundef %100, ptr noundef nonnull @graphedit_activekey_left_handle_coord_cb, ptr noundef %20, ptr noundef %57) #7
  call void @uiButSetUnitType(ptr noundef %100, i32 noundef %73) #7
  %101 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !66
  %102 = call ptr @uiDefButR(ptr noundef %23, i32 noundef 5632, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i16 noundef signext %101, i16 noundef signext %101, ptr noundef nonnull %4, ptr noundef nonnull @.str.47, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str.48) #7
  call void @uiButSetFunc(ptr noundef %102, ptr noundef nonnull @graphedit_activekey_handles_cb, ptr noundef %20, ptr noundef %57) #7
  br label %103

103:                                              ; preds = %96, %92, %85
  %104 = load i8, ptr %75, align 4, !tbaa !65
  %105 = icmp eq i8 %104, 2
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  call void @uiItemL(ptr noundef %86, ptr noundef nonnull @.str.49, i32 noundef 0) #7
  %107 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !66
  %108 = call ptr @uiDefButR(ptr noundef %23, i32 noundef 2560, i32 noundef 1, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef 0, i16 noundef signext %107, i16 noundef signext %107, ptr noundef nonnull %4, ptr noundef nonnull @.str.50, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #7
  call void @uiButSetFunc(ptr noundef %108, ptr noundef nonnull @graphedit_activekey_right_handle_coord_cb, ptr noundef %20, ptr noundef %57) #7
  %109 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !66
  %110 = call ptr @uiDefButR(ptr noundef %23, i32 noundef 2560, i32 noundef 1, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef 0, i16 noundef signext %109, i16 noundef signext %109, ptr noundef nonnull %4, ptr noundef nonnull @.str.50, i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #7
  call void @uiButSetFunc(ptr noundef %110, ptr noundef nonnull @graphedit_activekey_right_handle_coord_cb, ptr noundef %20, ptr noundef %57) #7
  call void @uiButSetUnitType(ptr noundef %110, i32 noundef %73) #7
  %111 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !66
  %112 = call ptr @uiDefButR(ptr noundef %23, i32 noundef 5632, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i16 noundef signext %111, i16 noundef signext %111, ptr noundef nonnull %4, ptr noundef nonnull @.str.51, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str.52) #7
  call void @uiButSetFunc(ptr noundef %112, ptr noundef nonnull @graphedit_activekey_handles_cb, ptr noundef %20, ptr noundef %57) #7
  br label %113

113:                                              ; preds = %106, %103
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %126

114:                                              ; preds = %56
  br i1 %26, label %115, label %120

115:                                              ; preds = %114
  %116 = getelementptr inbounds %struct.FCurve, ptr %20, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !70
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  call void @uiItemL(ptr noundef %9, ptr noundef nonnull @.str.53, i32 noundef 0) #7
  call void @uiItemL(ptr noundef %9, ptr noundef nonnull @.str.54, i32 noundef 110) #7
  br label %126

120:                                              ; preds = %115, %114
  %121 = getelementptr inbounds %struct.FCurve, ptr %20, i64 0, i32 6
  %122 = load ptr, ptr %121, align 8, !tbaa !71
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  call void @uiItemL(ptr noundef %9, ptr noundef nonnull @.str.55, i32 noundef 0) #7
  br label %126

125:                                              ; preds = %120
  call void @uiItemL(ptr noundef %9, ptr noundef nonnull @.str.56, i32 noundef 0) #7
  br label %126

126:                                              ; preds = %119, %125, %124, %113
  %127 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %127(ptr noundef %19) #7
  br label %128

128:                                              ; preds = %18, %126
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @graph_panel_drivers(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
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
  %15 = alloca %struct.bAnimContext, align 8
  %16 = alloca %struct.PointerRNA, align 8
  %17 = alloca [32 x i8], align 16
  %18 = alloca %struct.PointerRNA, align 8
  %19 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #7
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %15) #7
  %20 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %15) #7
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = call ptr @get_active_fcurve_channel(ptr noundef nonnull %15) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  br label %28

28:                                               ; preds = %2, %22, %25
  %29 = phi ptr [ undef, %2 ], [ undef, %22 ], [ %23, %25 ]
  %30 = phi ptr [ undef, %2 ], [ undef, %22 ], [ %27, %25 ]
  %31 = phi i1 [ true, %2 ], [ true, %22 ], [ false, %25 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %15) #7
  br i1 %31, label %284, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.FCurve, ptr %30, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !72
  %35 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  %37 = call ptr @uiLayoutGetBlock(ptr noundef %36) #7
  call void @uiBlockSetHandleFunc(ptr noundef %37, ptr noundef nonnull @do_graph_region_driver_buttons, ptr noundef null) #7
  %38 = load ptr, ptr %35, align 8, !tbaa !44
  %39 = call ptr @uiLayoutColumn(ptr noundef %38, i32 noundef 0) #7
  %40 = call ptr @uiLayoutGetBlock(ptr noundef %39) #7
  %41 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !66
  %42 = mul i16 %41, 10
  %43 = call ptr @uiDefIconTextBut(ptr noundef %40, i32 noundef 512, i32 noundef 10, i32 noundef 692, ptr noundef nonnull @.str.57, i32 noundef 0, i32 noundef 0, i16 noundef signext %42, i16 noundef signext 22, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.58) #7
  call void @uiButSetFunc(ptr noundef %43, ptr noundef nonnull @driver_update_flags_cb, ptr noundef %30, ptr noundef null) #7
  %44 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !66
  %45 = mul i16 %44, 10
  %46 = call ptr @uiDefIconTextBut(ptr noundef %40, i32 noundef 512, i32 noundef 10, i32 noundef 32, ptr noundef nonnull @.str.59, i32 noundef 0, i32 noundef 0, i16 noundef signext %45, i16 noundef signext 18, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.60) #7
  %47 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %48 = call ptr %47(ptr noundef %29) #7
  call void @uiButSetNFunc(ptr noundef %46, ptr noundef nonnull @driver_remove_cb, ptr noundef %48, ptr noundef null) #7
  %49 = getelementptr inbounds %struct.bAnimListElem, ptr %29, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8, !tbaa !49
  call void @RNA_pointer_create(ptr noundef %50, ptr noundef nonnull @RNA_Driver, ptr noundef %34, ptr noundef nonnull %16) #7
  %51 = load ptr, ptr %35, align 8, !tbaa !44
  %52 = call ptr @uiLayoutColumn(ptr noundef %51, i32 noundef 1) #7
  %53 = call ptr @uiLayoutGetBlock(ptr noundef %52) #7
  call void @uiItemR(ptr noundef %52, ptr noundef nonnull %16, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %54 = getelementptr inbounds %struct.ChannelDriver, ptr %34, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !73
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %79

57:                                               ; preds = %32
  %58 = getelementptr inbounds %struct.ChannelDriver, ptr %34, i64 0, i32 1
  %59 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(1) @.str.61) #8
  %60 = icmp ne ptr %59, null
  %61 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(1) @.str.62) #8
  %62 = icmp ne ptr %61, null
  call void @uiItemR(ptr noundef %52, ptr noundef nonnull %16, ptr noundef nonnull @.str.63, i32 noundef 0, ptr noundef nonnull @.str.64, i32 noundef 0) #7
  %63 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !75
  %64 = and i32 %63, 8192
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.ChannelDriver, ptr %34, i64 0, i32 6
  %68 = load i32, ptr %67, align 4, !tbaa !77
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66, %57
  %72 = phi ptr [ @.str.65, %57 ], [ @.str.66, %66 ]
  call void @uiItemL(ptr noundef %52, ptr noundef nonnull %72, i32 noundef 3) #7
  br label %73

73:                                               ; preds = %71, %66
  %74 = select i1 %60, i1 true, i1 %62
  br i1 %74, label %75, label %93

75:                                               ; preds = %73
  call void @uiItemL(ptr noundef %52, ptr noundef nonnull @.str.67, i32 noundef 52) #7
  br i1 %60, label %76, label %77

76:                                               ; preds = %75
  call void @uiItemL(ptr noundef %52, ptr noundef nonnull @.str.68, i32 noundef 2) #7
  br label %77

77:                                               ; preds = %76, %75
  br i1 %62, label %78, label %93

78:                                               ; preds = %77
  call void @uiItemL(ptr noundef %52, ptr noundef nonnull @.str.69, i32 noundef 2) #7
  br label %93

79:                                               ; preds = %32
  %80 = getelementptr inbounds %struct.ChannelDriver, ptr %34, i64 0, i32 6
  %81 = load i32, ptr %80, align 4, !tbaa !77
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  call void @uiItemL(ptr noundef %52, ptr noundef nonnull @.str.70, i32 noundef 2) #7
  br label %85

85:                                               ; preds = %84, %79
  %86 = load ptr, ptr %34, align 8, !tbaa !78
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  call void @uiItemL(ptr noundef %52, ptr noundef nonnull @.str.71, i32 noundef 2) #7
  %89 = getelementptr inbounds %struct.FCurve, ptr %30, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !78
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  call void @uiItemL(ptr noundef %52, ptr noundef nonnull @.str.72, i32 noundef 110) #7
  call void @uiItemL(ptr noundef %52, ptr noundef nonnull @.str.73, i32 noundef 110) #7
  br label %93

93:                                               ; preds = %73, %78, %77, %85, %92, %88
  %94 = load ptr, ptr %35, align 8, !tbaa !44
  %95 = call ptr @uiLayoutColumn(ptr noundef %94, i32 noundef 1) #7
  call void @uiItemR(ptr noundef %95, ptr noundef nonnull %16, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %96 = getelementptr inbounds %struct.ChannelDriver, ptr %34, i64 0, i32 6
  %97 = load i32, ptr %96, align 4, !tbaa !77
  %98 = and i32 %97, 32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %93
  %101 = call ptr @uiLayoutRow(ptr noundef %95, i32 noundef 1) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #7
  call void @uiItemL(ptr noundef %101, ptr noundef nonnull @.str.75, i32 noundef 0) #7
  %102 = getelementptr inbounds %struct.ChannelDriver, ptr %34, i64 0, i32 3
  %103 = load float, ptr %102, align 8, !tbaa !79
  %104 = fpext float %103 to double
  %105 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %17, i64 noundef 32, ptr noundef nonnull @.str.76, double noundef %104) #7
  call void @uiItemL(ptr noundef %101, ptr noundef nonnull %17, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #7
  br label %106

106:                                              ; preds = %100, %93
  %107 = load ptr, ptr %35, align 8, !tbaa !44
  %108 = call ptr @uiLayoutColumn(ptr noundef %107, i32 noundef 0) #7
  %109 = call ptr @uiLayoutGetBlock(ptr noundef %108) #7
  %110 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !66
  %111 = mul i16 %110, 10
  %112 = call ptr @uiDefIconTextBut(ptr noundef %109, i32 noundef 512, i32 noundef 10, i32 noundef 31, ptr noundef nonnull @.str.77, i32 noundef 0, i32 noundef 0, i16 noundef signext %111, i16 noundef signext %110, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.78) #7
  call void @uiButSetFunc(ptr noundef %112, ptr noundef nonnull @driver_add_var_cb, ptr noundef %34, ptr noundef null) #7
  %113 = load ptr, ptr %34, align 8, !tbaa !34
  %114 = icmp eq ptr %113, null
  br i1 %114, label %282, label %115

115:                                              ; preds = %106, %279
  %116 = phi ptr [ %280, %279 ], [ %113, %106 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #7
  %117 = load ptr, ptr %35, align 8, !tbaa !44
  %118 = call ptr @uiLayoutColumn(ptr noundef %117, i32 noundef 1) #7
  %119 = call ptr @uiLayoutBox(ptr noundef %118) #7
  %120 = load ptr, ptr %49, align 8, !tbaa !49
  call void @RNA_pointer_create(ptr noundef %120, ptr noundef nonnull @RNA_DriverVariable, ptr noundef nonnull %116, ptr noundef nonnull %18) #7
  %121 = call ptr @uiLayoutRow(ptr noundef %119, i32 noundef 0) #7
  %122 = call ptr @uiLayoutGetBlock(ptr noundef %121) #7
  call void @uiItemR(ptr noundef %121, ptr noundef nonnull %18, ptr noundef nonnull @.str.79, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef 0) #7
  call void @uiBlockSetEmboss(ptr noundef %122, i8 noundef zeroext 1) #7
  %123 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !66
  %124 = call ptr @uiDefIconBut(ptr noundef %122, i32 noundef 512, i32 noundef 10, i32 noundef 19, i32 noundef 290, i32 noundef 0, i16 noundef signext %123, i16 noundef signext %123, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.80) #7
  call void @uiButSetFunc(ptr noundef %124, ptr noundef nonnull @driver_delete_var_cb, ptr noundef nonnull %34, ptr noundef nonnull %116) #7
  call void @uiBlockSetEmboss(ptr noundef %122, i8 noundef zeroext 0) #7
  %125 = call ptr @uiLayoutRow(ptr noundef %119, i32 noundef 0) #7
  call void @uiItemR(ptr noundef %125, ptr noundef nonnull %18, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef 0) #7
  %126 = call ptr @uiLayoutBox(ptr noundef %118) #7
  %127 = getelementptr inbounds %struct.DriverVar, ptr %116, i64 0, i32 5
  %128 = load i16, ptr %127, align 2, !tbaa !80
  switch i16 %128, label %253 [
    i16 0, label %129
    i16 1, label %151
    i16 2, label %191
    i16 3, label %231
  ]

129:                                              ; preds = %115
  %130 = load ptr, ptr %49, align 8, !tbaa !49
  %131 = getelementptr inbounds %struct.DriverVar, ptr %116, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #7
  call void @RNA_pointer_create(ptr noundef %130, ptr noundef nonnull @RNA_DriverTarget, ptr noundef nonnull %131, ptr noundef nonnull %13) #7
  %132 = call ptr @uiLayoutRow(ptr noundef %126, i32 noundef 0) #7
  %133 = getelementptr inbounds %struct.DriverVar, ptr %116, i64 0, i32 3, i64 0, i32 4
  %134 = load i16, ptr %133, align 2, !tbaa !82
  %135 = and i16 %134, 16
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %129
  %138 = load ptr, ptr %131, align 8, !tbaa !84
  %139 = icmp eq ptr %138, null
  %140 = zext i1 %139 to i8
  br label %141

141:                                              ; preds = %137, %129
  %142 = phi i8 [ 0, %129 ], [ %140, %137 ]
  call void @uiLayoutSetRedAlert(ptr noundef %132, i8 noundef zeroext %142) #7
  call void @uiTemplateAnyID(ptr noundef %132, ptr noundef nonnull %13, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84) #7
  %143 = load ptr, ptr %131, align 8, !tbaa !84
  %144 = icmp eq ptr %143, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #7
  call void @RNA_id_pointer_create(ptr noundef nonnull %143, ptr noundef nonnull %14) #7
  %146 = call ptr @uiLayoutColumn(ptr noundef %126, i32 noundef 1) #7
  %147 = load i16, ptr %133, align 2, !tbaa !82
  %148 = trunc i16 %147 to i8
  %149 = and i8 %148, 16
  call void @uiLayoutSetRedAlert(ptr noundef %146, i8 noundef zeroext %149) #7
  call void @uiTemplatePathBuilder(ptr noundef %146, ptr noundef nonnull %13, ptr noundef nonnull @.str.28, ptr noundef nonnull %14, ptr noundef nonnull @.str.85) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #7
  br label %150

150:                                              ; preds = %141, %145
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #7
  br label %253

151:                                              ; preds = %115
  %152 = load ptr, ptr %49, align 8, !tbaa !49
  %153 = getelementptr inbounds %struct.DriverVar, ptr %116, i64 0, i32 3
  %154 = getelementptr inbounds %struct.DriverVar, ptr %116, i64 0, i32 3, i64 1
  %155 = load ptr, ptr %153, align 8, !tbaa !84
  %156 = load ptr, ptr %154, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #7
  call void @RNA_pointer_create(ptr noundef %152, ptr noundef nonnull @RNA_DriverTarget, ptr noundef nonnull %153, ptr noundef nonnull %9) #7
  call void @RNA_pointer_create(ptr noundef %152, ptr noundef nonnull @RNA_DriverTarget, ptr noundef nonnull %154, ptr noundef nonnull %10) #7
  %157 = call ptr @uiLayoutColumn(ptr noundef %126, i32 noundef 1) #7
  %158 = getelementptr inbounds %struct.DriverVar, ptr %116, i64 0, i32 3, i64 0, i32 4
  %159 = load i16, ptr %158, align 2, !tbaa !82
  %160 = trunc i16 %159 to i8
  %161 = and i8 %160, 16
  call void @uiLayoutSetRedAlert(ptr noundef %157, i8 noundef zeroext %161) #7
  call void @uiTemplateAnyID(ptr noundef %157, ptr noundef nonnull %9, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.86) #7
  %162 = load ptr, ptr %153, align 8, !tbaa !84
  %163 = icmp eq ptr %162, null
  br i1 %163, label %173, label %164

164:                                              ; preds = %151
  %165 = getelementptr inbounds %struct.ID, ptr %162, i64 0, i32 4
  %166 = load i16, ptr %165, align 8, !tbaa !85
  %167 = icmp eq i16 %166, 16975
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.Object, ptr %155, i64 0, i32 18
  %170 = load ptr, ptr %169, align 8, !tbaa !86
  %171 = icmp eq ptr %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #7
  call void @RNA_pointer_create(ptr noundef nonnull %162, ptr noundef nonnull @RNA_Pose, ptr noundef nonnull %170, ptr noundef nonnull %11) #7
  call void @uiItemPointerR(ptr noundef %157, ptr noundef nonnull %9, ptr noundef nonnull @.str.87, ptr noundef nonnull %11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.29, i32 noundef 174) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #7
  br label %173

173:                                              ; preds = %172, %168, %164, %151
  %174 = call ptr @uiLayoutColumn(ptr noundef %126, i32 noundef 1) #7
  %175 = getelementptr inbounds %struct.DriverVar, ptr %116, i64 0, i32 3, i64 1, i32 4
  %176 = load i16, ptr %175, align 2, !tbaa !82
  %177 = trunc i16 %176 to i8
  %178 = and i8 %177, 16
  call void @uiLayoutSetRedAlert(ptr noundef %174, i8 noundef zeroext %178) #7
  call void @uiTemplateAnyID(ptr noundef %174, ptr noundef nonnull %10, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.89) #7
  %179 = load ptr, ptr %154, align 8, !tbaa !84
  %180 = icmp eq ptr %179, null
  br i1 %180, label %190, label %181

181:                                              ; preds = %173
  %182 = getelementptr inbounds %struct.ID, ptr %179, i64 0, i32 4
  %183 = load i16, ptr %182, align 8, !tbaa !85
  %184 = icmp eq i16 %183, 16975
  br i1 %184, label %185, label %190

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.Object, ptr %156, i64 0, i32 18
  %187 = load ptr, ptr %186, align 8, !tbaa !86
  %188 = icmp eq ptr %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %185
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #7
  call void @RNA_pointer_create(ptr noundef nonnull %179, ptr noundef nonnull @RNA_Pose, ptr noundef nonnull %187, ptr noundef nonnull %12) #7
  call void @uiItemPointerR(ptr noundef %174, ptr noundef nonnull %10, ptr noundef nonnull @.str.87, ptr noundef nonnull %12, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.29, i32 noundef 174) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #7
  br label %190

190:                                              ; preds = %173, %181, %185, %189
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #7
  br label %253

191:                                              ; preds = %115
  %192 = load ptr, ptr %49, align 8, !tbaa !49
  %193 = getelementptr inbounds %struct.DriverVar, ptr %116, i64 0, i32 3
  %194 = getelementptr inbounds %struct.DriverVar, ptr %116, i64 0, i32 3, i64 1
  %195 = load ptr, ptr %193, align 8, !tbaa !84
  %196 = load ptr, ptr %194, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  call void @RNA_pointer_create(ptr noundef %192, ptr noundef nonnull @RNA_DriverTarget, ptr noundef nonnull %193, ptr noundef nonnull %5) #7
  call void @RNA_pointer_create(ptr noundef %192, ptr noundef nonnull @RNA_DriverTarget, ptr noundef nonnull %194, ptr noundef nonnull %6) #7
  %197 = call ptr @uiLayoutColumn(ptr noundef %126, i32 noundef 1) #7
  %198 = getelementptr inbounds %struct.DriverVar, ptr %116, i64 0, i32 3, i64 0, i32 4
  %199 = load i16, ptr %198, align 2, !tbaa !82
  %200 = trunc i16 %199 to i8
  %201 = and i8 %200, 16
  call void @uiLayoutSetRedAlert(ptr noundef %197, i8 noundef zeroext %201) #7
  call void @uiTemplateAnyID(ptr noundef %197, ptr noundef nonnull %5, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.90) #7
  %202 = load ptr, ptr %193, align 8, !tbaa !84
  %203 = icmp eq ptr %202, null
  br i1 %203, label %213, label %204

204:                                              ; preds = %191
  %205 = getelementptr inbounds %struct.ID, ptr %202, i64 0, i32 4
  %206 = load i16, ptr %205, align 8, !tbaa !85
  %207 = icmp eq i16 %206, 16975
  br i1 %207, label %208, label %213

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.Object, ptr %195, i64 0, i32 18
  %210 = load ptr, ptr %209, align 8, !tbaa !86
  %211 = icmp eq ptr %210, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %208
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  call void @RNA_pointer_create(ptr noundef nonnull %202, ptr noundef nonnull @RNA_Pose, ptr noundef nonnull %210, ptr noundef nonnull %7) #7
  call void @uiItemPointerR(ptr noundef %197, ptr noundef nonnull %5, ptr noundef nonnull @.str.87, ptr noundef nonnull %7, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.29, i32 noundef 174) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  br label %213

213:                                              ; preds = %212, %208, %204, %191
  call void @uiLayoutSetRedAlert(ptr noundef %197, i8 noundef zeroext 0) #7
  call void @uiItemR(ptr noundef %197, ptr noundef nonnull %5, ptr noundef nonnull @.str.91, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %214 = call ptr @uiLayoutColumn(ptr noundef %126, i32 noundef 1) #7
  %215 = getelementptr inbounds %struct.DriverVar, ptr %116, i64 0, i32 3, i64 1, i32 4
  %216 = load i16, ptr %215, align 2, !tbaa !82
  %217 = trunc i16 %216 to i8
  %218 = and i8 %217, 16
  call void @uiLayoutSetRedAlert(ptr noundef %214, i8 noundef zeroext %218) #7
  call void @uiTemplateAnyID(ptr noundef %214, ptr noundef nonnull %6, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.92) #7
  %219 = load ptr, ptr %194, align 8, !tbaa !84
  %220 = icmp eq ptr %219, null
  br i1 %220, label %230, label %221

221:                                              ; preds = %213
  %222 = getelementptr inbounds %struct.ID, ptr %219, i64 0, i32 4
  %223 = load i16, ptr %222, align 8, !tbaa !85
  %224 = icmp eq i16 %223, 16975
  br i1 %224, label %225, label %230

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.Object, ptr %196, i64 0, i32 18
  %227 = load ptr, ptr %226, align 8, !tbaa !86
  %228 = icmp eq ptr %227, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #7
  call void @RNA_pointer_create(ptr noundef nonnull %219, ptr noundef nonnull @RNA_Pose, ptr noundef nonnull %227, ptr noundef nonnull %8) #7
  call void @uiItemPointerR(ptr noundef %214, ptr noundef nonnull %6, ptr noundef nonnull @.str.87, ptr noundef nonnull %8, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.29, i32 noundef 174) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #7
  br label %230

230:                                              ; preds = %213, %221, %225, %229
  call void @uiLayoutSetRedAlert(ptr noundef %214, i8 noundef zeroext 0) #7
  call void @uiItemR(ptr noundef %214, ptr noundef nonnull %6, ptr noundef nonnull @.str.91, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  br label %253

231:                                              ; preds = %115
  %232 = load ptr, ptr %49, align 8, !tbaa !49
  %233 = getelementptr inbounds %struct.DriverVar, ptr %116, i64 0, i32 3
  %234 = load ptr, ptr %233, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @RNA_pointer_create(ptr noundef %232, ptr noundef nonnull @RNA_DriverTarget, ptr noundef nonnull %233, ptr noundef nonnull %3) #7
  %235 = call ptr @uiLayoutColumn(ptr noundef %126, i32 noundef 1) #7
  %236 = getelementptr inbounds %struct.DriverVar, ptr %116, i64 0, i32 3, i64 0, i32 4
  %237 = load i16, ptr %236, align 2, !tbaa !82
  %238 = trunc i16 %237 to i8
  %239 = and i8 %238, 16
  call void @uiLayoutSetRedAlert(ptr noundef %235, i8 noundef zeroext %239) #7
  call void @uiTemplateAnyID(ptr noundef %235, ptr noundef nonnull %3, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.93) #7
  %240 = load ptr, ptr %233, align 8, !tbaa !84
  %241 = icmp eq ptr %240, null
  br i1 %241, label %251, label %242

242:                                              ; preds = %231
  %243 = getelementptr inbounds %struct.ID, ptr %240, i64 0, i32 4
  %244 = load i16, ptr %243, align 8, !tbaa !85
  %245 = icmp eq i16 %244, 16975
  br i1 %245, label %246, label %251

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.Object, ptr %234, i64 0, i32 18
  %248 = load ptr, ptr %247, align 8, !tbaa !86
  %249 = icmp eq ptr %248, null
  br i1 %249, label %251, label %250

250:                                              ; preds = %246
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @RNA_pointer_create(ptr noundef nonnull %240, ptr noundef nonnull @RNA_Pose, ptr noundef nonnull %248, ptr noundef nonnull %4) #7
  call void @uiItemPointerR(ptr noundef %235, ptr noundef nonnull %3, ptr noundef nonnull @.str.87, ptr noundef nonnull %4, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.29, i32 noundef 174) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %251

251:                                              ; preds = %231, %242, %246, %250
  %252 = call ptr @uiLayoutColumn(ptr noundef %126, i32 noundef 1) #7
  call void @uiItemR(ptr noundef %252, ptr noundef nonnull %3, ptr noundef nonnull @.str.94, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  call void @uiItemR(ptr noundef %252, ptr noundef nonnull %3, ptr noundef nonnull @.str.91, i32 noundef 0, ptr noundef nonnull @.str.95, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  br label %253

253:                                              ; preds = %115, %251, %230, %190, %150
  %254 = load i32, ptr %96, align 4, !tbaa !77
  %255 = and i32 %254, 32
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %279, label %257

257:                                              ; preds = %253
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %19) #7
  %258 = call ptr @uiLayoutBox(ptr noundef %118) #7
  %259 = call ptr @uiLayoutRow(ptr noundef %258, i32 noundef 1) #7
  call void @uiItemL(ptr noundef %259, ptr noundef nonnull @.str.42, i32 noundef 0) #7
  %260 = load i16, ptr %127, align 2, !tbaa !80
  switch i16 %260, label %273 [
    i16 1, label %266
    i16 3, label %261
  ]

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.DriverVar, ptr %116, i64 0, i32 3, i64 0, i32 3
  %263 = load i16, ptr %262, align 8, !tbaa !91
  %264 = add i16 %263, -3
  %265 = icmp ult i16 %264, 3
  br i1 %265, label %266, label %273

266:                                              ; preds = %261, %257
  %267 = getelementptr inbounds %struct.DriverVar, ptr %116, i64 0, i32 6
  %268 = load float, ptr %267, align 4, !tbaa !92
  %269 = fpext float %268 to double
  %270 = fmul float %268, 0x404CA5DC20000000
  %271 = fpext float %270 to double
  %272 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %19, i64 noundef 32, ptr noundef nonnull @.str.81, double noundef %269, double noundef %271) #7
  br label %278

273:                                              ; preds = %257, %261
  %274 = getelementptr inbounds %struct.DriverVar, ptr %116, i64 0, i32 6
  %275 = load float, ptr %274, align 4, !tbaa !92
  %276 = fpext float %275 to double
  %277 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %19, i64 noundef 32, ptr noundef nonnull @.str.76, double noundef %276) #7
  br label %278

278:                                              ; preds = %273, %266
  call void @uiItemL(ptr noundef %259, ptr noundef nonnull %19, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #7
  br label %279

279:                                              ; preds = %278, %253
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #7
  %280 = load ptr, ptr %116, align 8, !tbaa !34
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %115, !llvm.loop !93

282:                                              ; preds = %279, %106
  %283 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %283(ptr noundef %29) #7
  br label %284

284:                                              ; preds = %28, %282
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graph_panel_drivers_poll(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = tail call ptr @CTX_wm_space_graph(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 9
  %6 = load i16, ptr %5, align 8, !tbaa !94
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #7
  %9 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = call ptr @get_active_fcurve_channel(ptr noundef nonnull %3) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %15(ptr noundef nonnull %12) #7
  br label %16

16:                                               ; preds = %8, %11, %14
  %17 = phi i32 [ 0, %8 ], [ 0, %11 ], [ 1, %14 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  br label %18

18:                                               ; preds = %2, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal void @graph_panel_modifiers(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #7
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = call ptr @get_active_fcurve_channel(ptr noundef nonnull %3) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  br label %12

12:                                               ; preds = %2, %6, %9
  %13 = phi ptr [ undef, %2 ], [ undef, %6 ], [ %7, %9 ]
  %14 = phi ptr [ undef, %2 ], [ undef, %6 ], [ %11, %9 ]
  %15 = phi i1 [ true, %2 ], [ true, %6 ], [ false, %9 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  br i1 %15, label %45, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = call ptr @uiLayoutGetBlock(ptr noundef %18) #7
  call void @uiBlockSetHandleFunc(ptr noundef %19, ptr noundef nonnull @do_graph_region_modifier_buttons, ptr noundef null) #7
  %20 = load ptr, ptr %17, align 8, !tbaa !44
  %21 = call ptr @uiLayoutRow(ptr noundef %20, i32 noundef 0) #7
  %22 = call ptr @uiLayoutGetBlock(ptr noundef %21) #7
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !66
  %24 = sitofp i16 %23 to double
  %25 = fmul double %24, 5.000000e-01
  %26 = fptosi double %25 to i32
  %27 = fmul double %24, 7.500000e+00
  %28 = fptosi double %27 to i16
  %29 = call ptr @uiDefButO(ptr noundef %22, i32 noundef 512, ptr noundef nonnull @.str.96, i32 noundef 1, ptr noundef nonnull @.str.97, i32 noundef %26, i32 noundef 0, i16 noundef signext %28, i16 noundef signext %23, ptr noundef nonnull @.str.98) #7
  %30 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 1) #7
  call void @uiItemO(ptr noundef %30, ptr noundef nonnull @.str.29, i32 noundef 599, ptr noundef nonnull @.str.99) #7
  call void @uiItemO(ptr noundef %30, ptr noundef nonnull @.str.29, i32 noundef 598, ptr noundef nonnull @.str.100) #7
  %31 = getelementptr inbounds %struct.FCurve, ptr %14, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.bAnimListElem, ptr %13, i64 0, i32 9
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi ptr [ %32, %34 ], [ %41, %36 ]
  %38 = load ptr, ptr %17, align 8, !tbaa !44
  %39 = call ptr @uiLayoutColumn(ptr noundef %38, i32 noundef 1) #7
  %40 = load ptr, ptr %35, align 8, !tbaa !49
  call void @ANIM_uiTemplate_fmodifier_draw(ptr noundef %39, ptr noundef %40, ptr noundef nonnull %31, ptr noundef nonnull %37) #7
  %41 = load ptr, ptr %37, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %36, !llvm.loop !99

43:                                               ; preds = %36, %16
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %44(ptr noundef %13) #7
  br label %45

45:                                               ; preds = %12, %43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_properties(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !100
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !102
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !103
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graph_properties_toggle_exec, ptr %4, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_graphedit_active, ptr %5, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !106
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graph_properties_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %4 = tail call ptr @graph_has_buttons_region(ptr noundef %3) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %4) #7
  br label %7

7:                                                ; preds = %6, %2
  ret i32 4
}

declare i32 @ED_operator_graphedit_active(ptr noundef) #2

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_graph(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemEnumO(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @getname_anim_fcurve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiLayoutSetEnabled(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_active_fcurve_channel(ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #2

declare ptr @uiDefButR(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @graphedit_activekey_update_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  tail call void @sort_time_fcurve(ptr noundef %1) #7
  tail call void @calchandles_fcurve(ptr noundef %1) #7
  ret void
}

declare void @uiButSetUnitType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @graphedit_activekey_left_handle_coord_cb(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !59
  %6 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 9
  %7 = load i8, ptr %6, align 1, !tbaa !60
  %8 = or i8 %5, 1
  store i8 %8, ptr %4, align 1, !tbaa !59
  %9 = and i8 %7, -2
  store i8 %9, ptr %6, align 1, !tbaa !60
  %10 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 5
  %11 = load i8, ptr %10, align 1, !tbaa !107
  switch i8 %11, label %16 [
    i8 1, label %12
    i8 4, label %12
  ]

12:                                               ; preds = %3, %3
  %13 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 6
  %14 = load i8, ptr %13, align 2, !tbaa !108
  switch i8 %14, label %16 [
    i8 1, label %15
    i8 4, label %15
  ]

15:                                               ; preds = %12, %12
  store i8 3, ptr %10, align 1, !tbaa !107
  store i8 3, ptr %13, align 2, !tbaa !108
  br label %17

16:                                               ; preds = %12, %3
  tail call void @BKE_nurb_bezt_handle_test(ptr noundef %2, i8 noundef zeroext 1) #7
  br label %17

17:                                               ; preds = %15, %16
  tail call void @sort_time_fcurve(ptr noundef %1) #7
  tail call void @calchandles_fcurve(ptr noundef %1) #7
  store i8 %5, ptr %4, align 1, !tbaa !59
  store i8 %7, ptr %6, align 1, !tbaa !60
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @graphedit_activekey_handles_cb(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !107
  switch i8 %5, label %10 [
    i8 1, label %6
    i8 4, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 6
  %8 = load i8, ptr %7, align 2, !tbaa !108
  switch i8 %8, label %10 [
    i8 1, label %9
    i8 4, label %9
  ]

9:                                                ; preds = %6, %6
  store i8 3, ptr %4, align 1, !tbaa !107
  store i8 3, ptr %7, align 2, !tbaa !108
  br label %11

10:                                               ; preds = %6, %3
  tail call void @BKE_nurb_bezt_handle_test(ptr noundef %2, i8 noundef zeroext 1) #7
  br label %11

11:                                               ; preds = %10, %9
  tail call void @sort_time_fcurve(ptr noundef %1) #7
  tail call void @calchandles_fcurve(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @graphedit_activekey_right_handle_coord_cb(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !59
  %6 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 9
  %7 = load i8, ptr %6, align 1, !tbaa !60
  %8 = and i8 %5, -2
  store i8 %8, ptr %4, align 1, !tbaa !59
  %9 = or i8 %7, 1
  store i8 %9, ptr %6, align 1, !tbaa !60
  %10 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 5
  %11 = load i8, ptr %10, align 1, !tbaa !107
  switch i8 %11, label %16 [
    i8 1, label %12
    i8 4, label %12
  ]

12:                                               ; preds = %3, %3
  %13 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 6
  %14 = load i8, ptr %13, align 2, !tbaa !108
  switch i8 %14, label %16 [
    i8 1, label %15
    i8 4, label %15
  ]

15:                                               ; preds = %12, %12
  store i8 3, ptr %10, align 1, !tbaa !107
  store i8 3, ptr %13, align 2, !tbaa !108
  br label %17

16:                                               ; preds = %12, %3
  tail call void @BKE_nurb_bezt_handle_test(ptr noundef %2, i8 noundef zeroext 1) #7
  br label %17

17:                                               ; preds = %15, %16
  tail call void @sort_time_fcurve(ptr noundef %1) #7
  tail call void @calchandles_fcurve(ptr noundef %1) #7
  store i8 %5, ptr %4, align 1, !tbaa !59
  store i8 %7, ptr %6, align 1, !tbaa !60
  ret void
}

declare void @sort_time_fcurve(ptr noundef) local_unnamed_addr #2

declare void @calchandles_fcurve(ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_bezt_handle_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @do_graph_region_driver_buttons(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %6 = icmp eq i32 %2, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @DAG_relations_tag_update(ptr noundef %4) #7
  br label %8

8:                                                ; preds = %3, %7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %5) #7
  ret void
}

declare ptr @uiDefIconTextBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @driver_update_flags_cb(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #4 {
  %4 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !50
  %8 = and i16 %7, -1025
  store i16 %8, ptr %6, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.ChannelDriver, ptr %5, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !77
  %11 = and i32 %10, -2
  store i32 %11, ptr %9, align 4, !tbaa !77
  ret void
}

declare void @uiButSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @driver_remove_cb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = tail call ptr @CTX_wm_reports(ptr noundef %0) #7
  %9 = icmp eq ptr %5, null
  %10 = icmp eq ptr %7, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.FCurve, ptr %7, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.FCurve, ptr %7, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !109
  %17 = tail call zeroext i8 @ANIM_remove_driver(ptr noundef %8, ptr noundef %5, ptr noundef %14, i32 noundef %16, i16 noundef signext 0) #7
  br label %18

18:                                               ; preds = %3, %12
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @driver_add_var_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @driver_add_new_variable(ptr noundef %1) #7
  ret void
}

declare ptr @uiLayoutBox(ptr noundef) local_unnamed_addr #2

declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @driver_delete_var_cb(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @driver_free_variable(ptr noundef %1, ptr noundef %2) #7
  ret void
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ANIM_remove_driver(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @driver_add_new_variable(ptr noundef) local_unnamed_addr #2

declare void @driver_free_variable(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiLayoutSetRedAlert(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @uiTemplateAnyID(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiTemplatePathBuilder(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiItemPointerR(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @do_graph_region_modifier_buttons(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 20
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 234881024, ptr noundef null) #7
  br label %6

6:                                                ; preds = %3, %5
  ret void
}

declare ptr @uiDefButO(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @ANIM_uiTemplate_fmodifier_draw(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @graph_has_buttons_region(ptr noundef) local_unnamed_addr #2

declare void @ED_region_toggle_hidden(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 368}
!39 = !{!"PanelType", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 208, !36, i64 272, !40, i64 336, !40, i64 340, !40, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !41, i64 376}
!40 = !{!"int", !36, i64 0}
!41 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!42 = !{!39, !40, i64 344}
!43 = !{!39, !35, i64 352}
!44 = !{!45, !35, i64 24}
!45 = !{!"Panel", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !36, i64 160, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !46, i64 240, !46, i64 242, !46, i64 244, !46, i64 246, !46, i64 248, !46, i64 250, !40, i64 252, !35, i64 256, !35, i64 264}
!46 = !{!"short", !36, i64 0}
!47 = !{!48, !35, i64 16}
!48 = !{!"bAnimListElem", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !46, i64 36, !46, i64 38, !35, i64 40, !35, i64 48, !35, i64 56}
!49 = !{!48, !35, i64 48}
!50 = !{!51, !46, i64 72}
!51 = !{!"FCurve", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !52, i64 32, !35, i64 48, !35, i64 56, !40, i64 64, !53, i64 68, !46, i64 72, !46, i64 74, !40, i64 76, !35, i64 80, !40, i64 88, !36, i64 92, !53, i64 104, !53, i64 108}
!52 = !{!"ListBase", !35, i64 0, !35, i64 8}
!53 = !{!"float", !36, i64 0}
!54 = !{!51, !40, i64 88}
!55 = !{!51, !35, i64 48}
!56 = !{!51, !40, i64 64}
!57 = !{!58, !36, i64 52}
!58 = !{!"BezTriple", !36, i64 0, !53, i64 36, !53, i64 40, !53, i64 44, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !36, i64 52, !36, i64 53, !36, i64 54, !36, i64 55, !53, i64 56, !53, i64 60, !53, i64 64, !36, i64 68}
!59 = !{!58, !36, i64 51}
!60 = !{!58, !36, i64 53}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!51, !35, i64 80}
!65 = !{!58, !36, i64 48}
!66 = !{!67, !46, i64 8948}
!67 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !46, i64 8472, !46, i64 8474, !46, i64 8476, !46, i64 8478, !46, i64 8480, !46, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !46, i64 8496, !46, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !46, i64 8528, !46, i64 8530, !46, i64 8532, !46, i64 8534, !52, i64 8536, !52, i64 8552, !52, i64 8568, !52, i64 8584, !52, i64 8600, !52, i64 8616, !52, i64 8632, !36, i64 8648, !46, i64 8712, !46, i64 8714, !46, i64 8716, !46, i64 8718, !46, i64 8720, !46, i64 8722, !46, i64 8724, !46, i64 8726, !36, i64 8728, !46, i64 8896, !46, i64 8898, !46, i64 8900, !46, i64 8902, !46, i64 8904, !46, i64 8906, !46, i64 8908, !46, i64 8910, !40, i64 8912, !40, i64 8916, !46, i64 8920, !46, i64 8922, !46, i64 8924, !46, i64 8926, !46, i64 8928, !46, i64 8930, !46, i64 8932, !46, i64 8934, !46, i64 8936, !46, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !46, i64 8944, !46, i64 8946, !46, i64 8948, !46, i64 8950, !46, i64 8952, !46, i64 8954, !53, i64 8956, !53, i64 8960, !40, i64 8964, !46, i64 8968, !46, i64 8970, !53, i64 8972, !46, i64 8976, !46, i64 8978, !46, i64 8980, !46, i64 8982, !68, i64 8984, !36, i64 9760, !36, i64 9772, !46, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !53, i64 10904, !53, i64 10908, !40, i64 10912, !46, i64 10916, !46, i64 10918, !46, i64 10920, !46, i64 10922, !46, i64 10924, !46, i64 10926, !69, i64 10928}
!68 = !{!"ColorBand", !46, i64 0, !46, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!69 = !{!"WalkNavigation", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !46, i64 24, !36, i64 26}
!70 = !{!51, !35, i64 32}
!71 = !{!51, !35, i64 56}
!72 = !{!51, !35, i64 24}
!73 = !{!74, !40, i64 288}
!74 = !{!"ChannelDriver", !52, i64 0, !36, i64 16, !35, i64 272, !53, i64 280, !53, i64 284, !40, i64 288, !40, i64 292}
!75 = !{!76, !40, i64 2096}
!76 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !52, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !46, i64 2084, !46, i64 2086, !46, i64 2088, !36, i64 2090, !46, i64 2092, !40, i64 2096, !40, i64 2100, !36, i64 2104, !40, i64 2108, !40, i64 2112, !36, i64 2116}
!77 = !{!74, !40, i64 292}
!78 = !{!52, !35, i64 0}
!79 = !{!74, !53, i64 280}
!80 = !{!81, !46, i64 530}
!81 = !{!"DriverVar", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !46, i64 528, !46, i64 530, !53, i64 532}
!82 = !{!83, !46, i64 50}
!83 = !{!"DriverTarget", !35, i64 0, !35, i64 8, !36, i64 16, !46, i64 48, !46, i64 50, !40, i64 52}
!84 = !{!83, !35, i64 0}
!85 = !{!46, !46, i64 0}
!86 = !{!87, !35, i64 288}
!87 = !{!"Object", !88, i64 0, !35, i64 120, !35, i64 128, !46, i64 136, !46, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !89, i64 312, !35, i64 360, !52, i64 368, !52, i64 384, !52, i64 400, !52, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !53, i64 616, !53, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !46, i64 948, !46, i64 950, !46, i64 952, !46, i64 954, !46, i64 956, !46, i64 958, !46, i64 960, !46, i64 962, !46, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !53, i64 988, !53, i64 992, !53, i64 996, !53, i64 1000, !53, i64 1004, !53, i64 1008, !53, i64 1012, !53, i64 1016, !53, i64 1020, !53, i64 1024, !53, i64 1028, !53, i64 1032, !46, i64 1036, !46, i64 1038, !46, i64 1040, !36, i64 1042, !36, i64 1043, !46, i64 1044, !36, i64 1046, !36, i64 1047, !53, i64 1048, !53, i64 1052, !52, i64 1056, !52, i64 1072, !52, i64 1088, !52, i64 1104, !53, i64 1120, !46, i64 1124, !46, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !46, i64 1162, !36, i64 1164, !52, i64 1176, !52, i64 1192, !52, i64 1208, !52, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !46, i64 1266, !53, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !90, i64 1304, !90, i64 1312, !40, i64 1320, !40, i64 1324, !52, i64 1328, !52, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !52, i64 1400, !35, i64 1416}
!88 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !46, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!89 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !46, i64 16, !46, i64 18, !46, i64 20, !46, i64 22, !46, i64 24, !46, i64 26, !46, i64 28, !46, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!90 = !{!"long", !36, i64 0}
!91 = !{!83, !46, i64 48}
!92 = !{!81, !53, i64 532}
!93 = distinct !{!93, !62, !63}
!94 = !{!95, !46, i64 240}
!95 = !{!"SpaceIpo", !35, i64 0, !35, i64 8, !52, i64 16, !40, i64 32, !53, i64 36, !36, i64 40, !96, i64 56, !35, i64 216, !52, i64 224, !46, i64 240, !46, i64 242, !40, i64 244, !53, i64 248, !40, i64 252}
!96 = !{!"View2D", !97, i64 0, !97, i64 16, !98, i64 32, !98, i64 48, !98, i64 64, !36, i64 80, !36, i64 88, !53, i64 96, !53, i64 100, !46, i64 104, !46, i64 106, !46, i64 108, !46, i64 110, !46, i64 112, !46, i64 114, !46, i64 116, !46, i64 118, !46, i64 120, !46, i64 122, !46, i64 124, !46, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!97 = !{!"rctf", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!98 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!99 = distinct !{!99, !62, !63}
!100 = !{!101, !35, i64 0}
!101 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !52, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !41, i64 152, !46, i64 184}
!102 = !{!101, !35, i64 8}
!103 = !{!101, !35, i64 24}
!104 = !{!101, !35, i64 32}
!105 = !{!101, !35, i64 72}
!106 = !{!101, !46, i64 184}
!107 = !{!58, !36, i64 49}
!108 = !{!58, !36, i64 50}
!109 = !{!51, !40, i64 76}
