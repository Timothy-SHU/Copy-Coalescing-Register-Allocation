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
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.ChannelDriver = type { %struct.ListBase, [256 x i8], ptr, float, float, i32, i32 }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @graph_buttons_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str) #9
  %4 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %4, ptr noundef nonnull align 1 dereferenceable(14) @.str.1, i64 14, i1 false) #9
  %5 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(16) @.str.2, i64 16, i1 false) #9
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 4
  store i16 42, ptr %6, align 1
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 12
  store ptr @graph_panel_view, ptr %7, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = or i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %3) #9
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = tail call ptr %12(i64 noundef 408, ptr noundef nonnull @.str.4) #9
  %14 = getelementptr inbounds %struct.PanelType, ptr %13, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %14, ptr noundef nonnull align 1 dereferenceable(20) @.str.5, i64 20, i1 false) #9
  %15 = getelementptr inbounds %struct.PanelType, ptr %13, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %15, ptr noundef nonnull align 1 dereferenceable(15) @.str.6, i64 15, i1 false) #9
  %16 = getelementptr inbounds %struct.PanelType, ptr %13, i64 0, i32 4
  store i16 42, ptr %16, align 1
  %17 = getelementptr inbounds %struct.PanelType, ptr %13, i64 0, i32 12
  store ptr @graph_panel_properties, ptr %17, align 8, !tbaa !38
  %18 = getelementptr inbounds %struct.PanelType, ptr %13, i64 0, i32 10
  store ptr @graph_panel_poll, ptr %18, align 8, !tbaa !43
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %13) #9
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %20 = tail call ptr %19(i64 noundef 408, ptr noundef nonnull @.str.4) #9
  %21 = getelementptr inbounds %struct.PanelType, ptr %20, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %21, ptr noundef nonnull align 1 dereferenceable(24) @.str.7, i64 24, i1 false) #9
  %22 = getelementptr inbounds %struct.PanelType, ptr %20, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %22, ptr noundef nonnull align 1 dereferenceable(16) @.str.8, i64 16, i1 false) #9
  %23 = getelementptr inbounds %struct.PanelType, ptr %20, i64 0, i32 4
  store i16 42, ptr %23, align 1
  %24 = getelementptr inbounds %struct.PanelType, ptr %20, i64 0, i32 12
  store ptr @graph_panel_key_properties, ptr %24, align 8, !tbaa !38
  %25 = getelementptr inbounds %struct.PanelType, ptr %20, i64 0, i32 10
  store ptr @graph_panel_poll, ptr %25, align 8, !tbaa !43
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %20) #9
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %27 = tail call ptr %26(i64 noundef 408, ptr noundef nonnull @.str.9) #9
  %28 = getelementptr inbounds %struct.PanelType, ptr %27, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %28, ptr noundef nonnull align 1 dereferenceable(17) @.str.10, i64 17, i1 false) #9
  %29 = getelementptr inbounds %struct.PanelType, ptr %27, i64 0, i32 3
  store i64 32495402425610820, ptr %29, align 1
  %30 = getelementptr inbounds %struct.PanelType, ptr %27, i64 0, i32 4
  store i16 42, ptr %30, align 1
  %31 = getelementptr inbounds %struct.PanelType, ptr %27, i64 0, i32 12
  store ptr @graph_panel_drivers, ptr %31, align 8, !tbaa !38
  %32 = getelementptr inbounds %struct.PanelType, ptr %27, i64 0, i32 10
  store ptr @graph_panel_drivers_poll, ptr %32, align 8, !tbaa !43
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %27) #9
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %34 = tail call ptr %33(i64 noundef 408, ptr noundef nonnull @.str.12) #9
  %35 = getelementptr inbounds %struct.PanelType, ptr %34, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %35, ptr noundef nonnull align 1 dereferenceable(19) @.str.13, i64 19, i1 false) #9
  %36 = getelementptr inbounds %struct.PanelType, ptr %34, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %36, ptr noundef nonnull align 1 dereferenceable(10) @.str.14, i64 10, i1 false) #9
  %37 = getelementptr inbounds %struct.PanelType, ptr %34, i64 0, i32 4
  store i16 42, ptr %37, align 1
  %38 = getelementptr inbounds %struct.PanelType, ptr %34, i64 0, i32 12
  store ptr @graph_panel_modifiers, ptr %38, align 8, !tbaa !38
  %39 = getelementptr inbounds %struct.PanelType, ptr %34, i64 0, i32 10
  store ptr @graph_panel_poll, ptr %39, align 8, !tbaa !43
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %34) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_panel_view(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !44 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #9
  %6 = tail call ptr @CTX_wm_space_graph(ptr noundef %0) #9
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @RNA_id_pointer_create(ptr noundef %7, ptr noundef nonnull %4) #9
  call void @RNA_pointer_create(ptr noundef %5, ptr noundef nonnull @RNA_SpaceGraphEditor, ptr noundef %6, ptr noundef nonnull %3) #9
  %8 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = call ptr @uiLayoutColumn(ptr noundef %9, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %11 = call ptr @uiLayoutColumn(ptr noundef %10, i32 noundef 1) #9
  %12 = call i32 @RNA_boolean_get(ptr noundef nonnull %3, ptr noundef nonnull @.str.18) #9
  %13 = trunc i32 %12 to i8
  call void @uiLayoutSetActive(ptr noundef %11, i8 noundef zeroext %13) #9
  call void @uiItemO(ptr noundef %11, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef nonnull @.str.20) #9
  %14 = call ptr @uiLayoutColumn(ptr noundef %10, i32 noundef 1) #9
  %15 = call i32 @RNA_boolean_get(ptr noundef nonnull %3, ptr noundef nonnull @.str.18) #9
  %16 = trunc i32 %15 to i8
  call void @uiLayoutSetActive(ptr noundef %14, i8 noundef zeroext %16) #9
  %17 = call ptr @uiLayoutSplit(ptr noundef %14, float noundef 0x3FE6666660000000, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %17, ptr noundef nonnull %4, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, i32 noundef 0) #9
  call void @uiItemEnumO(ptr noundef %17, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.25, i32 noundef 1) #9
  %18 = call ptr @uiLayoutSplit(ptr noundef %14, float noundef 0x3FE6666660000000, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %18, ptr noundef nonnull %3, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef 0) #9
  call void @uiItemEnumO(ptr noundef %18, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.25, i32 noundef 6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_panel_properties(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !48 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %7 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #10
  %9 = call fastcc i32 @graph_panel_context(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #11, !range !49
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %12, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = load ptr, ptr %4, align 8, !tbaa !34
  call void @RNA_pointer_create(ptr noundef %14, ptr noundef nonnull @RNA_FCurve, ptr noundef %15, ptr noundef nonnull %5) #9
  %16 = call ptr @uiLayoutColumn(ptr noundef %8, i32 noundef 0) #9
  %17 = load ptr, ptr %3, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = load ptr, ptr %4, align 8, !tbaa !34
  %21 = call i32 @getname_anim_fcurve(ptr noundef nonnull %6, ptr noundef %19, ptr noundef %20) #9
  call void @uiItemL(ptr noundef %16, ptr noundef nonnull %6, i32 noundef %21) #9
  %22 = call ptr @uiLayoutColumn(ptr noundef %8, i32 noundef 1) #9
  %23 = load ptr, ptr %4, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 9
  %25 = load i16, ptr %24, align 8, !tbaa !52
  %26 = lshr i16 %25, 10
  %27 = trunc i16 %26 to i8
  %28 = and i8 %27, 1
  call void @uiLayoutSetEnabled(ptr noundef %22, i8 noundef zeroext %28) #9
  call void @uiItemR(ptr noundef %22, ptr noundef nonnull %5, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef 206) #9
  call void @uiItemR(ptr noundef %22, ptr noundef nonnull %5, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %29 = call ptr @uiLayoutColumn(ptr noundef %8, i32 noundef 1) #9
  call void @uiItemL(ptr noundef %29, ptr noundef nonnull @.str.31, i32 noundef 0) #9
  %30 = call ptr @uiLayoutRow(ptr noundef %29, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %30, ptr noundef nonnull %5, ptr noundef nonnull @.str.32, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef 0) #9
  %31 = call ptr @uiLayoutRow(ptr noundef %30, i32 noundef 1) #9
  %32 = load ptr, ptr %4, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.FCurve, ptr %32, i64 0, i32 13
  %34 = load i32, ptr %33, align 8, !tbaa !56
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  call void @uiLayoutSetEnabled(ptr noundef %31, i8 noundef zeroext %36) #9
  call void @uiItemR(ptr noundef %31, ptr noundef nonnull %5, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef 0) #9
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %38 = load ptr, ptr %3, align 8, !tbaa !34
  call void %37(ptr noundef %38) #9
  br label %39

39:                                               ; preds = %2, %11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graph_panel_poll(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !57 {
  %3 = tail call fastcc i32 @graph_panel_context(ptr noundef %0, ptr noundef null, ptr noundef null) #11, !range !49
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_panel_key_properties(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !58 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %11 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = call fastcc i32 @graph_panel_context(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #11, !range !49
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %107, label %15

15:                                               ; preds = %2
  %16 = call ptr @uiLayoutGetBlock(ptr noundef %12) #9
  %17 = load ptr, ptr %4, align 8, !tbaa !34
  %18 = call fastcc signext i16 @get_active_fcurve_keyframe_edit(ptr noundef %17, ptr noundef nonnull %5, ptr noundef nonnull %6) #11, !range !59
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %89, label %20

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  store ptr null, ptr %10, align 8, !tbaa !34
  %21 = load ptr, ptr %3, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %21, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = load ptr, ptr %5, align 8, !tbaa !34
  call void @RNA_pointer_create(ptr noundef %23, ptr noundef nonnull @RNA_Keyframe, ptr noundef %24, ptr noundef nonnull %7) #9
  %25 = load ptr, ptr %3, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %25, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  call void @RNA_id_pointer_create(ptr noundef %27, ptr noundef nonnull %8) #9
  %28 = load ptr, ptr %4, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.FCurve, ptr %28, i64 0, i32 12
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  %31 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %8, ptr noundef %30, ptr noundef nonnull %9, ptr noundef nonnull %10) #9
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %20
  %34 = load ptr, ptr %10, align 8, !tbaa !34
  %35 = call i32 @RNA_property_subtype(ptr noundef %34) #9
  %36 = and i32 %35, 16711680
  br label %37

37:                                               ; preds = %33, %20
  %38 = phi i32 [ %36, %33 ], [ 0, %20 ]
  %39 = call ptr @uiLayoutColumn(ptr noundef %12, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %7, ptr noundef nonnull @.str.34, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %40 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 0, i32 4
  %41 = load i8, ptr %40, align 4, !tbaa !61
  %42 = icmp ugt i8 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %7, ptr noundef nonnull @.str.35, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %44 = load i8, ptr %40, align 4, !tbaa !61
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi i8 [ %44, %43 ], [ %41, %37 ]
  switch i8 %46, label %51 [
    i8 3, label %47
    i8 7, label %49
  ]

47:                                               ; preds = %45
  %48 = call ptr @uiLayoutColumn(ptr noundef %12, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %48, ptr noundef nonnull %7, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %51

49:                                               ; preds = %45
  %50 = call ptr @uiLayoutColumn(ptr noundef %12, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %50, ptr noundef nonnull %7, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %50, ptr noundef nonnull %7, ptr noundef nonnull @.str.38, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %51

51:                                               ; preds = %45, %49, %47
  %52 = call ptr @uiLayoutColumn(ptr noundef %12, i32 noundef 1) #9
  call void @uiItemL(ptr noundef %52, ptr noundef nonnull @.str.39, i32 noundef 0) #9
  %53 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %54 = call ptr @uiDefButR(ptr noundef %16, i32 noundef 2560, i32 noundef 1, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 0, i16 noundef signext %53, i16 noundef signext %53, ptr noundef nonnull %7, ptr noundef nonnull @.str.41, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #9
  %55 = load ptr, ptr %4, align 8, !tbaa !34
  call void @uiButSetFunc(ptr noundef %54, ptr noundef nonnull @graphedit_activekey_update_cb, ptr noundef %55, ptr noundef nonnull %24) #9
  %56 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %57 = call ptr @uiDefButR(ptr noundef %16, i32 noundef 2560, i32 noundef 1, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef 0, i16 noundef signext %56, i16 noundef signext %56, ptr noundef nonnull %7, ptr noundef nonnull @.str.41, i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #9
  %58 = load ptr, ptr %4, align 8, !tbaa !34
  call void @uiButSetFunc(ptr noundef %57, ptr noundef nonnull @graphedit_activekey_update_cb, ptr noundef %58, ptr noundef nonnull %24) #9
  call void @uiButSetUnitType(ptr noundef %57, i32 noundef %38) #9
  %59 = load ptr, ptr %6, align 8, !tbaa !34
  %60 = icmp eq ptr %59, null
  br i1 %60, label %75, label %61

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.BezTriple, ptr %59, i64 0, i32 4
  %63 = load i8, ptr %62, align 4, !tbaa !61
  %64 = icmp eq i8 %63, 2
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  call void @uiItemL(ptr noundef %52, ptr noundef nonnull @.str.43, i32 noundef 0) #9
  %66 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %67 = call ptr @uiDefButR(ptr noundef %16, i32 noundef 2560, i32 noundef 1, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef 0, i16 noundef signext %66, i16 noundef signext %66, ptr noundef nonnull %7, ptr noundef nonnull @.str.45, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #9
  %68 = load ptr, ptr %4, align 8, !tbaa !34
  call void @uiButSetFunc(ptr noundef %67, ptr noundef nonnull @graphedit_activekey_left_handle_coord_cb, ptr noundef %68, ptr noundef nonnull %24) #9
  %69 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %70 = call ptr @uiDefButR(ptr noundef %16, i32 noundef 2560, i32 noundef 1, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef 0, i16 noundef signext %69, i16 noundef signext %69, ptr noundef nonnull %7, ptr noundef nonnull @.str.45, i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #9
  %71 = load ptr, ptr %4, align 8, !tbaa !34
  call void @uiButSetFunc(ptr noundef %70, ptr noundef nonnull @graphedit_activekey_left_handle_coord_cb, ptr noundef %71, ptr noundef nonnull %24) #9
  call void @uiButSetUnitType(ptr noundef %70, i32 noundef %38) #9
  %72 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %73 = call ptr @uiDefButR(ptr noundef %16, i32 noundef 5632, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i16 noundef signext %72, i16 noundef signext %72, ptr noundef nonnull %7, ptr noundef nonnull @.str.47, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str.48) #9
  %74 = load ptr, ptr %4, align 8, !tbaa !34
  call void @uiButSetFunc(ptr noundef %73, ptr noundef nonnull @graphedit_activekey_handles_cb, ptr noundef %74, ptr noundef nonnull %24) #9
  br label %75

75:                                               ; preds = %65, %61, %51
  %76 = load i8, ptr %40, align 4, !tbaa !61
  %77 = icmp eq i8 %76, 2
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  call void @uiItemL(ptr noundef %52, ptr noundef nonnull @.str.49, i32 noundef 0) #9
  %79 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %80 = call ptr @uiDefButR(ptr noundef %16, i32 noundef 2560, i32 noundef 1, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef 0, i16 noundef signext %79, i16 noundef signext %79, ptr noundef nonnull %7, ptr noundef nonnull @.str.50, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #9
  %81 = load ptr, ptr %4, align 8, !tbaa !34
  call void @uiButSetFunc(ptr noundef %80, ptr noundef nonnull @graphedit_activekey_right_handle_coord_cb, ptr noundef %81, ptr noundef nonnull %24) #9
  %82 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %83 = call ptr @uiDefButR(ptr noundef %16, i32 noundef 2560, i32 noundef 1, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef 0, i16 noundef signext %82, i16 noundef signext %82, ptr noundef nonnull %7, ptr noundef nonnull @.str.50, i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #9
  %84 = load ptr, ptr %4, align 8, !tbaa !34
  call void @uiButSetFunc(ptr noundef %83, ptr noundef nonnull @graphedit_activekey_right_handle_coord_cb, ptr noundef %84, ptr noundef nonnull %24) #9
  call void @uiButSetUnitType(ptr noundef %83, i32 noundef %38) #9
  %85 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %86 = call ptr @uiDefButR(ptr noundef %16, i32 noundef 5632, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i16 noundef signext %85, i16 noundef signext %85, ptr noundef nonnull %7, ptr noundef nonnull @.str.51, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str.52) #9
  %87 = load ptr, ptr %4, align 8, !tbaa !34
  call void @uiButSetFunc(ptr noundef %86, ptr noundef nonnull @graphedit_activekey_handles_cb, ptr noundef %87, ptr noundef nonnull %24) #9
  br label %88

88:                                               ; preds = %78, %75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  br label %104

89:                                               ; preds = %15
  %90 = getelementptr inbounds %struct.FCurve, ptr %17, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !67
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.FCurve, ptr %17, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !68
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  call void @uiItemL(ptr noundef %12, ptr noundef nonnull @.str.53, i32 noundef 0) #9
  call void @uiItemL(ptr noundef %12, ptr noundef nonnull @.str.54, i32 noundef 110) #9
  br label %104

98:                                               ; preds = %93, %89
  %99 = getelementptr inbounds %struct.FCurve, ptr %17, i64 0, i32 6
  %100 = load ptr, ptr %99, align 8, !tbaa !69
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  call void @uiItemL(ptr noundef %12, ptr noundef nonnull @.str.55, i32 noundef 0) #9
  br label %104

103:                                              ; preds = %98
  call void @uiItemL(ptr noundef %12, ptr noundef nonnull @.str.56, i32 noundef 0) #9
  br label %104

104:                                              ; preds = %97, %103, %102, %88
  %105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %106 = load ptr, ptr %3, align 8, !tbaa !34
  call void %105(ptr noundef %106) #9
  br label %107

107:                                              ; preds = %2, %104
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_panel_drivers(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !70 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %9 = call fastcc i32 @graph_panel_context(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #11, !range !49
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %163, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.FCurve, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = call ptr @uiLayoutGetBlock(ptr noundef %16) #9
  call void @uiBlockSetHandleFunc(ptr noundef %17, ptr noundef nonnull @do_graph_region_driver_buttons, ptr noundef null) #9
  %18 = load ptr, ptr %15, align 8, !tbaa !45
  %19 = call ptr @uiLayoutColumn(ptr noundef %18, i32 noundef 0) #9
  %20 = call ptr @uiLayoutGetBlock(ptr noundef %19) #9
  %21 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %22 = mul i16 %21, 10
  %23 = call ptr @uiDefIconTextBut(ptr noundef %20, i32 noundef 512, i32 noundef 10, i32 noundef 692, ptr noundef nonnull @.str.57, i32 noundef 0, i32 noundef 0, i16 noundef signext %22, i16 noundef signext 22, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.58) #9
  %24 = load ptr, ptr %4, align 8, !tbaa !34
  call void @uiButSetFunc(ptr noundef %23, ptr noundef nonnull @driver_update_flags_cb, ptr noundef %24, ptr noundef null) #9
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %26 = mul i16 %25, 10
  %27 = call ptr @uiDefIconTextBut(ptr noundef %20, i32 noundef 512, i32 noundef 10, i32 noundef 32, ptr noundef nonnull @.str.59, i32 noundef 0, i32 noundef 0, i16 noundef signext %26, i16 noundef signext 18, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.60) #9
  %28 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %29 = load ptr, ptr %3, align 8, !tbaa !34
  %30 = call ptr %28(ptr noundef %29) #9
  call void @uiButSetNFunc(ptr noundef %27, ptr noundef nonnull @driver_remove_cb, ptr noundef %30, ptr noundef null) #9
  %31 = load ptr, ptr %3, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.bAnimListElem, ptr %31, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  call void @RNA_pointer_create(ptr noundef %33, ptr noundef nonnull @RNA_Driver, ptr noundef %14, ptr noundef nonnull %5) #9
  %34 = load ptr, ptr %15, align 8, !tbaa !45
  %35 = call ptr @uiLayoutColumn(ptr noundef %34, i32 noundef 1) #9
  %36 = call ptr @uiLayoutGetBlock(ptr noundef %35) #9
  call void @uiItemR(ptr noundef %35, ptr noundef nonnull %5, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %37 = getelementptr inbounds %struct.ChannelDriver, ptr %14, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !72
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %62

40:                                               ; preds = %11
  %41 = getelementptr inbounds %struct.ChannelDriver, ptr %14, i64 0, i32 1
  %42 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(1) @.str.61) #12
  %43 = icmp ne ptr %42, null
  %44 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(1) @.str.62) #12
  %45 = icmp ne ptr %44, null
  call void @uiItemR(ptr noundef %35, ptr noundef nonnull %5, ptr noundef nonnull @.str.63, i32 noundef 0, ptr noundef nonnull @.str.64, i32 noundef 0) #9
  %46 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !74
  %47 = and i32 %46, 8192
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.ChannelDriver, ptr %14, i64 0, i32 6
  %51 = load i32, ptr %50, align 4, !tbaa !76
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49, %40
  %55 = phi ptr [ @.str.65, %40 ], [ @.str.66, %49 ]
  call void @uiItemL(ptr noundef %35, ptr noundef nonnull %55, i32 noundef 3) #9
  br label %56

56:                                               ; preds = %54, %49
  %57 = select i1 %43, i1 true, i1 %45
  br i1 %57, label %58, label %77

58:                                               ; preds = %56
  call void @uiItemL(ptr noundef %35, ptr noundef nonnull @.str.67, i32 noundef 52) #9
  br i1 %43, label %59, label %60

59:                                               ; preds = %58
  call void @uiItemL(ptr noundef %35, ptr noundef nonnull @.str.68, i32 noundef 2) #9
  br label %60

60:                                               ; preds = %59, %58
  br i1 %45, label %61, label %77

61:                                               ; preds = %60
  call void @uiItemL(ptr noundef %35, ptr noundef nonnull @.str.69, i32 noundef 2) #9
  br label %77

62:                                               ; preds = %11
  %63 = getelementptr inbounds %struct.ChannelDriver, ptr %14, i64 0, i32 6
  %64 = load i32, ptr %63, align 4, !tbaa !76
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  call void @uiItemL(ptr noundef %35, ptr noundef nonnull @.str.70, i32 noundef 2) #9
  br label %68

68:                                               ; preds = %67, %62
  %69 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %14) #11, !range !77
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  call void @uiItemL(ptr noundef %35, ptr noundef nonnull @.str.71, i32 noundef 2) #9
  %72 = load ptr, ptr %4, align 8, !tbaa !34
  %73 = getelementptr inbounds %struct.FCurve, ptr %72, i64 0, i32 4
  %74 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %73) #11, !range !77
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  call void @uiItemL(ptr noundef %35, ptr noundef nonnull @.str.72, i32 noundef 110) #9
  call void @uiItemL(ptr noundef %35, ptr noundef nonnull @.str.73, i32 noundef 110) #9
  br label %77

77:                                               ; preds = %56, %61, %60, %68, %76, %71
  %78 = load ptr, ptr %15, align 8, !tbaa !45
  %79 = call ptr @uiLayoutColumn(ptr noundef %78, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %79, ptr noundef nonnull %5, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %80 = getelementptr inbounds %struct.ChannelDriver, ptr %14, i64 0, i32 6
  %81 = load i32, ptr %80, align 4, !tbaa !76
  %82 = and i32 %81, 32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %77
  %85 = call ptr @uiLayoutRow(ptr noundef %79, i32 noundef 1) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  call void @uiItemL(ptr noundef %85, ptr noundef nonnull @.str.75, i32 noundef 0) #9
  %86 = getelementptr inbounds %struct.ChannelDriver, ptr %14, i64 0, i32 3
  %87 = load float, ptr %86, align 8, !tbaa !78
  %88 = fpext float %87 to double
  %89 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 32, ptr noundef nonnull @.str.76, double noundef %88) #9
  call void @uiItemL(ptr noundef %85, ptr noundef nonnull %6, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  br label %90

90:                                               ; preds = %84, %77
  %91 = load ptr, ptr %15, align 8, !tbaa !45
  %92 = call ptr @uiLayoutColumn(ptr noundef %91, i32 noundef 0) #9
  %93 = call ptr @uiLayoutGetBlock(ptr noundef %92) #9
  %94 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %95 = mul i16 %94, 10
  %96 = call ptr @uiDefIconTextBut(ptr noundef %93, i32 noundef 512, i32 noundef 10, i32 noundef 31, ptr noundef nonnull @.str.77, i32 noundef 0, i32 noundef 0, i16 noundef signext %95, i16 noundef signext %94, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.78) #9
  call void @uiButSetFunc(ptr noundef %96, ptr noundef nonnull @driver_add_var_cb, ptr noundef nonnull %14, ptr noundef null) #9
  %97 = load ptr, ptr %14, align 8, !tbaa !34
  %98 = icmp eq ptr %97, null
  br i1 %98, label %160, label %99

99:                                               ; preds = %90, %157
  %100 = phi ptr [ %158, %157 ], [ %97, %90 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  %101 = load ptr, ptr %15, align 8, !tbaa !45
  %102 = call ptr @uiLayoutColumn(ptr noundef %101, i32 noundef 1) #9
  %103 = call ptr @uiLayoutBox(ptr noundef %102) #9
  %104 = load ptr, ptr %3, align 8, !tbaa !34
  %105 = getelementptr inbounds %struct.bAnimListElem, ptr %104, i64 0, i32 9
  %106 = load ptr, ptr %105, align 8, !tbaa !50
  call void @RNA_pointer_create(ptr noundef %106, ptr noundef nonnull @RNA_DriverVariable, ptr noundef nonnull %100, ptr noundef nonnull %7) #9
  %107 = call ptr @uiLayoutRow(ptr noundef %103, i32 noundef 0) #9
  %108 = call ptr @uiLayoutGetBlock(ptr noundef %107) #9
  call void @uiItemR(ptr noundef %107, ptr noundef nonnull %7, ptr noundef nonnull @.str.79, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef 0) #9
  call void @uiBlockSetEmboss(ptr noundef %108, i8 noundef zeroext 1) #9
  %109 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %110 = call ptr @uiDefIconBut(ptr noundef %108, i32 noundef 512, i32 noundef 10, i32 noundef 19, i32 noundef 290, i32 noundef 0, i16 noundef signext %109, i16 noundef signext %109, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.80) #9
  call void @uiButSetFunc(ptr noundef %110, ptr noundef nonnull @driver_delete_var_cb, ptr noundef nonnull %14, ptr noundef nonnull %100) #9
  call void @uiBlockSetEmboss(ptr noundef %108, i8 noundef zeroext 0) #9
  %111 = call ptr @uiLayoutRow(ptr noundef %103, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %111, ptr noundef nonnull %7, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef 0) #9
  %112 = call ptr @uiLayoutBox(ptr noundef %102) #9
  %113 = getelementptr inbounds %struct.DriverVar, ptr %100, i64 0, i32 5
  %114 = load i16, ptr %113, align 2, !tbaa !79
  switch i16 %114, label %131 [
    i16 0, label %115
    i16 1, label %119
    i16 2, label %123
    i16 3, label %127
  ]

115:                                              ; preds = %99
  %116 = load ptr, ptr %3, align 8, !tbaa !34
  %117 = getelementptr inbounds %struct.bAnimListElem, ptr %116, i64 0, i32 9
  %118 = load ptr, ptr %117, align 8, !tbaa !50
  call fastcc void @graph_panel_driverVar__singleProp(ptr noundef %112, ptr noundef %118, ptr noundef nonnull %100) #11
  br label %131

119:                                              ; preds = %99
  %120 = load ptr, ptr %3, align 8, !tbaa !34
  %121 = getelementptr inbounds %struct.bAnimListElem, ptr %120, i64 0, i32 9
  %122 = load ptr, ptr %121, align 8, !tbaa !50
  call fastcc void @graph_panel_driverVar__rotDiff(ptr noundef %112, ptr noundef %122, ptr noundef nonnull %100) #11
  br label %131

123:                                              ; preds = %99
  %124 = load ptr, ptr %3, align 8, !tbaa !34
  %125 = getelementptr inbounds %struct.bAnimListElem, ptr %124, i64 0, i32 9
  %126 = load ptr, ptr %125, align 8, !tbaa !50
  call fastcc void @graph_panel_driverVar__locDiff(ptr noundef %112, ptr noundef %126, ptr noundef nonnull %100) #11
  br label %131

127:                                              ; preds = %99
  %128 = load ptr, ptr %3, align 8, !tbaa !34
  %129 = getelementptr inbounds %struct.bAnimListElem, ptr %128, i64 0, i32 9
  %130 = load ptr, ptr %129, align 8, !tbaa !50
  call fastcc void @graph_panel_driverVar__transChan(ptr noundef %112, ptr noundef %130, ptr noundef nonnull %100) #11
  br label %131

131:                                              ; preds = %99, %127, %123, %119, %115
  %132 = load i32, ptr %80, align 4, !tbaa !76
  %133 = and i32 %132, 32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %157, label %135

135:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #10
  %136 = call ptr @uiLayoutBox(ptr noundef %102) #9
  %137 = call ptr @uiLayoutRow(ptr noundef %136, i32 noundef 1) #9
  call void @uiItemL(ptr noundef %137, ptr noundef nonnull @.str.42, i32 noundef 0) #9
  %138 = load i16, ptr %113, align 2, !tbaa !79
  switch i16 %138, label %151 [
    i16 1, label %144
    i16 3, label %139
  ]

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.DriverVar, ptr %100, i64 0, i32 3, i64 0, i32 3
  %141 = load i16, ptr %140, align 8, !tbaa !81
  %142 = add i16 %141, -3
  %143 = icmp ult i16 %142, 3
  br i1 %143, label %144, label %151

144:                                              ; preds = %139, %135
  %145 = getelementptr inbounds %struct.DriverVar, ptr %100, i64 0, i32 6
  %146 = load float, ptr %145, align 4, !tbaa !83
  %147 = fpext float %146 to double
  %148 = fmul float %146, 0x404CA5DC20000000
  %149 = fpext float %148 to double
  %150 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 32, ptr noundef nonnull @.str.81, double noundef %147, double noundef %149) #9
  br label %156

151:                                              ; preds = %135, %139
  %152 = getelementptr inbounds %struct.DriverVar, ptr %100, i64 0, i32 6
  %153 = load float, ptr %152, align 4, !tbaa !83
  %154 = fpext float %153 to double
  %155 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 32, ptr noundef nonnull @.str.76, double noundef %154) #9
  br label %156

156:                                              ; preds = %151, %144
  call void @uiItemL(ptr noundef %137, ptr noundef nonnull %8, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #10
  br label %157

157:                                              ; preds = %156, %131
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  %158 = load ptr, ptr %100, align 8, !tbaa !34
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %99, !llvm.loop !84

160:                                              ; preds = %157, %90
  %161 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %162 = load ptr, ptr %3, align 8, !tbaa !34
  call void %161(ptr noundef %162) #9
  br label %163

163:                                              ; preds = %2, %160
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graph_panel_drivers_poll(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !86 {
  %3 = tail call ptr @CTX_wm_space_graph(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !87
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @graph_panel_context(ptr noundef %0, ptr noundef null, ptr noundef null) #11, !range !49
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_panel_modifiers(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !92 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %5 = call fastcc i32 @graph_panel_context(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #11, !range !49
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %40, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = call ptr @uiLayoutGetBlock(ptr noundef %9) #9
  call void @uiBlockSetHandleFunc(ptr noundef %10, ptr noundef nonnull @do_graph_region_modifier_buttons, ptr noundef null) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !45
  %12 = call ptr @uiLayoutRow(ptr noundef %11, i32 noundef 0) #9
  %13 = call ptr @uiLayoutGetBlock(ptr noundef %12) #9
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %15 = sitofp i16 %14 to double
  %16 = fmul double %15, 5.000000e-01
  %17 = fptosi double %16 to i32
  %18 = fmul double %15, 7.500000e+00
  %19 = fptosi double %18 to i16
  %20 = call ptr @uiDefButO(ptr noundef %13, i32 noundef 512, ptr noundef nonnull @.str.96, i32 noundef 1, ptr noundef nonnull @.str.97, i32 noundef %17, i32 noundef 0, i16 noundef signext %19, i16 noundef signext %14, ptr noundef nonnull @.str.98) #9
  %21 = call ptr @uiLayoutRow(ptr noundef %12, i32 noundef 1) #9
  call void @uiItemO(ptr noundef %21, ptr noundef nonnull @.str.29, i32 noundef 599, ptr noundef nonnull @.str.99) #9
  call void @uiItemO(ptr noundef %21, ptr noundef nonnull @.str.29, i32 noundef 598, ptr noundef nonnull @.str.100) #9
  %22 = load ptr, ptr %4, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.FCurve, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %7, %26
  %27 = phi ptr [ %35, %26 ], [ %24, %7 ]
  %28 = load ptr, ptr %8, align 8, !tbaa !45
  %29 = call ptr @uiLayoutColumn(ptr noundef %28, i32 noundef 1) #9
  %30 = load ptr, ptr %3, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.bAnimListElem, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !50
  %33 = load ptr, ptr %4, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.FCurve, ptr %33, i64 0, i32 4
  call void @ANIM_uiTemplate_fmodifier_draw(ptr noundef %29, ptr noundef %32, ptr noundef nonnull %34, ptr noundef nonnull %27) #9
  %35 = load ptr, ptr %27, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %26, !llvm.loop !93

37:                                               ; preds = %26, %7
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %39 = load ptr, ptr %3, align 8, !tbaa !34
  call void %38(ptr noundef %39) #9
  br label %40

40:                                               ; preds = %2, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_properties(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !96
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !97
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graph_properties_toggle_exec, ptr %4, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_graphedit_active, ptr %5, align 8, !tbaa !99
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !100
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graph_properties_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !101 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %4 = tail call ptr @graph_has_buttons_region(ptr noundef %3) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %4) #9
  br label %7

7:                                                ; preds = %6, %2
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_graphedit_active(ptr noundef) #2

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_graph(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemEnumO(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @graph_panel_context(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2) unnamed_addr #0 !PGOFuncName !102 {
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #10
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = call ptr @get_active_fcurve_channel(ptr noundef nonnull %4) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %2, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %8, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !103
  store ptr %14, ptr %2, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %12, %10
  %16 = icmp eq ptr %1, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  store ptr %8, ptr %1, align 8, !tbaa !34
  br label %20

18:                                               ; preds = %15
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %19(ptr noundef nonnull %8) #9
  br label %20

20:                                               ; preds = %17, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 1, %18 ], [ 1, %17 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #10
  ret i32 %21
}

; Function Attrs: optsize
declare i32 @getname_anim_fcurve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetEnabled(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_active_fcurve_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef signext i16 @get_active_fcurve_keyframe_edit(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !PGOFuncName !104 {
  store ptr null, ptr %2, align 8, !tbaa !34
  store ptr null, ptr %1, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !105
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %7, %32
  %12 = phi i32 [ %33, %32 ], [ 0, %7 ]
  %13 = phi ptr [ %34, %32 ], [ %5, %7 ]
  %14 = getelementptr inbounds %struct.BezTriple, ptr %13, i64 0, i32 8
  %15 = load i8, ptr %14, align 4, !tbaa !106
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.BezTriple, ptr %13, i64 0, i32 7
  %20 = load i8, ptr %19, align 1, !tbaa !107
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.BezTriple, ptr %13, i64 0, i32 9
  %25 = load i8, ptr %24, align 1, !tbaa !108
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23, %18, %11
  %29 = icmp ne i32 %12, 0
  %30 = sext i1 %29 to i64
  %31 = getelementptr inbounds %struct.BezTriple, ptr %13, i64 %30
  store ptr %31, ptr %2, align 8, !tbaa !34
  store ptr %13, ptr %1, align 8, !tbaa !34
  br label %36

32:                                               ; preds = %23
  %33 = add nuw i32 %12, 1
  %34 = getelementptr inbounds %struct.BezTriple, ptr %13, i64 1
  %35 = icmp eq i32 %33, %9
  br i1 %35, label %36, label %11, !llvm.loop !109

36:                                               ; preds = %32, %3, %7, %28
  %37 = phi i16 [ 1, %28 ], [ 0, %7 ], [ 0, %3 ], [ 0, %32 ]
  ret i16 %37
}

; Function Attrs: optsize
declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefButR(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graphedit_activekey_update_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !110 {
  tail call void @sort_time_fcurve(ptr noundef %1) #9
  tail call void @calchandles_fcurve(ptr noundef %1) #9
  ret void
}

; Function Attrs: optsize
declare void @uiButSetUnitType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graphedit_activekey_left_handle_coord_cb(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !111 {
  %4 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !107
  %6 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 9
  %7 = load i8, ptr %6, align 1, !tbaa !108
  %8 = or i8 %5, 1
  store i8 %8, ptr %4, align 1, !tbaa !107
  %9 = and i8 %7, -2
  store i8 %9, ptr %6, align 1, !tbaa !108
  tail call void @graphedit_activekey_handles_cb(ptr poison, ptr noundef %1, ptr noundef %2) #11
  store i8 %5, ptr %4, align 1, !tbaa !107
  store i8 %7, ptr %6, align 1, !tbaa !108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graphedit_activekey_handles_cb(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !112 {
  %4 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !113
  switch i8 %5, label %10 [
    i8 1, label %6
    i8 4, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 6
  %8 = load i8, ptr %7, align 2, !tbaa !114
  switch i8 %8, label %10 [
    i8 1, label %9
    i8 4, label %9
  ]

9:                                                ; preds = %6, %6
  store i8 3, ptr %4, align 1, !tbaa !113
  store i8 3, ptr %7, align 2, !tbaa !114
  br label %11

10:                                               ; preds = %6, %3
  tail call void @BKE_nurb_bezt_handle_test(ptr noundef nonnull %2, i8 noundef zeroext 1) #9
  br label %11

11:                                               ; preds = %10, %9
  tail call void @graphedit_activekey_update_cb(ptr poison, ptr noundef %1, ptr nonnull poison) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graphedit_activekey_right_handle_coord_cb(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !115 {
  %4 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !107
  %6 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 9
  %7 = load i8, ptr %6, align 1, !tbaa !108
  %8 = and i8 %5, -2
  store i8 %8, ptr %4, align 1, !tbaa !107
  %9 = or i8 %7, 1
  store i8 %9, ptr %6, align 1, !tbaa !108
  tail call void @graphedit_activekey_handles_cb(ptr poison, ptr noundef %1, ptr noundef %2) #11
  store i8 %5, ptr %4, align 1, !tbaa !107
  store i8 %7, ptr %6, align 1, !tbaa !108
  ret void
}

; Function Attrs: optsize
declare void @sort_time_fcurve(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @calchandles_fcurve(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_nurb_bezt_handle_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_graph_region_driver_buttons(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 !PGOFuncName !116 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %6 = icmp eq i32 %2, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @DAG_relations_tag_update(ptr noundef %4) #9
  br label %8

8:                                                ; preds = %3, %7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %5) #9
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefIconTextBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @driver_update_flags_cb(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #5 !PGOFuncName !117 {
  %4 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !52
  %8 = and i16 %7, -1025
  store i16 %8, ptr %6, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.ChannelDriver, ptr %5, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !76
  %11 = and i32 %10, -2
  store i32 %11, ptr %9, align 4, !tbaa !76
  ret void
}

; Function Attrs: optsize
declare void @uiButSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @driver_remove_cb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !118 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !103
  %8 = tail call ptr @CTX_wm_reports(ptr noundef %0) #9
  %9 = icmp eq ptr %5, null
  %10 = icmp eq ptr %7, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.FCurve, ptr %7, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = getelementptr inbounds %struct.FCurve, ptr %7, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !119
  %17 = tail call zeroext i8 @ANIM_remove_driver(ptr noundef %8, ptr noundef nonnull %5, ptr noundef %14, i32 noundef %16, i16 noundef signext 0) #9
  br label %18

18:                                               ; preds = %3, %12
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !120 {
  %2 = load ptr, ptr %0, align 8, !tbaa !121
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @driver_add_var_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !122 {
  %4 = tail call ptr @driver_add_new_variable(ptr noundef %1) #9
  ret void
}

; Function Attrs: optsize
declare ptr @uiLayoutBox(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @driver_delete_var_cb(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !123 {
  tail call void @driver_free_variable(ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @graph_panel_driverVar__singleProp(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !124 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = getelementptr inbounds %struct.DriverVar, ptr %2, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_DriverTarget, ptr noundef nonnull %6, ptr noundef nonnull %4) #9
  %7 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #9
  %8 = getelementptr inbounds %struct.DriverVar, ptr %2, i64 0, i32 3, i64 0, i32 4
  %9 = load i16, ptr %8, align 2, !tbaa !125
  %10 = and i16 %9, 16
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %6, align 8, !tbaa !126
  %14 = icmp eq ptr %13, null
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i8 [ 0, %3 ], [ %15, %12 ]
  call void @uiLayoutSetRedAlert(ptr noundef %7, i8 noundef zeroext %17) #9
  call void @uiTemplateAnyID(ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84) #9
  %18 = load ptr, ptr %6, align 8, !tbaa !126
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @RNA_id_pointer_create(ptr noundef nonnull %18, ptr noundef nonnull %5) #9
  %21 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #9
  %22 = load i16, ptr %8, align 2, !tbaa !125
  %23 = trunc i16 %22 to i8
  %24 = and i8 %23, 16
  call void @uiLayoutSetRedAlert(ptr noundef %21, i8 noundef zeroext %24) #9
  call void @uiTemplatePathBuilder(ptr noundef %21, ptr noundef nonnull %4, ptr noundef nonnull @.str.28, ptr noundef nonnull %5, ptr noundef nonnull @.str.85) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  br label %25

25:                                               ; preds = %20, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @graph_panel_driverVar__rotDiff(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !127 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = getelementptr inbounds %struct.DriverVar, ptr %2, i64 0, i32 3
  %9 = getelementptr inbounds %struct.DriverVar, ptr %2, i64 0, i32 3, i64 1
  %10 = load ptr, ptr %8, align 8, !tbaa !126
  %11 = load ptr, ptr %9, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_DriverTarget, ptr noundef nonnull %8, ptr noundef nonnull %4) #9
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_DriverTarget, ptr noundef nonnull %9, ptr noundef nonnull %5) #9
  %12 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #9
  %13 = getelementptr inbounds %struct.DriverVar, ptr %2, i64 0, i32 3, i64 0, i32 4
  %14 = load i16, ptr %13, align 2, !tbaa !125
  %15 = trunc i16 %14 to i8
  %16 = and i8 %15, 16
  call void @uiLayoutSetRedAlert(ptr noundef %12, i8 noundef zeroext %16) #9
  call void @uiTemplateAnyID(ptr noundef %12, ptr noundef nonnull %4, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.86) #9
  %17 = load ptr, ptr %8, align 8, !tbaa !126
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4
  %21 = load i16, ptr %20, align 8, !tbaa !128
  %22 = icmp eq i16 %21, 16975
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !129
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @RNA_pointer_create(ptr noundef nonnull %17, ptr noundef nonnull @RNA_Pose, ptr noundef nonnull %25, ptr noundef nonnull %6) #9
  call void @uiItemPointerR(ptr noundef %12, ptr noundef nonnull %4, ptr noundef nonnull @.str.87, ptr noundef nonnull %6, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.29, i32 noundef 174) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  br label %28

28:                                               ; preds = %27, %23, %19, %3
  %29 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #9
  %30 = getelementptr inbounds %struct.DriverVar, ptr %2, i64 0, i32 3, i64 1, i32 4
  %31 = load i16, ptr %30, align 2, !tbaa !125
  %32 = trunc i16 %31 to i8
  %33 = and i8 %32, 16
  call void @uiLayoutSetRedAlert(ptr noundef %29, i8 noundef zeroext %33) #9
  call void @uiTemplateAnyID(ptr noundef %29, ptr noundef nonnull %5, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.89) #9
  %34 = load ptr, ptr %9, align 8, !tbaa !126
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.ID, ptr %34, i64 0, i32 4
  %38 = load i16, ptr %37, align 8, !tbaa !128
  %39 = icmp eq i16 %38, 16975
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !129
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  call void @RNA_pointer_create(ptr noundef nonnull %34, ptr noundef nonnull @RNA_Pose, ptr noundef nonnull %42, ptr noundef nonnull %7) #9
  call void @uiItemPointerR(ptr noundef %29, ptr noundef nonnull %5, ptr noundef nonnull @.str.87, ptr noundef nonnull %7, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.29, i32 noundef 174) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  br label %45

45:                                               ; preds = %44, %40, %36, %28
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @graph_panel_driverVar__locDiff(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !134 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = getelementptr inbounds %struct.DriverVar, ptr %2, i64 0, i32 3
  %9 = getelementptr inbounds %struct.DriverVar, ptr %2, i64 0, i32 3, i64 1
  %10 = load ptr, ptr %8, align 8, !tbaa !126
  %11 = load ptr, ptr %9, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_DriverTarget, ptr noundef nonnull %8, ptr noundef nonnull %4) #9
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_DriverTarget, ptr noundef nonnull %9, ptr noundef nonnull %5) #9
  %12 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #9
  %13 = getelementptr inbounds %struct.DriverVar, ptr %2, i64 0, i32 3, i64 0, i32 4
  %14 = load i16, ptr %13, align 2, !tbaa !125
  %15 = trunc i16 %14 to i8
  %16 = and i8 %15, 16
  call void @uiLayoutSetRedAlert(ptr noundef %12, i8 noundef zeroext %16) #9
  call void @uiTemplateAnyID(ptr noundef %12, ptr noundef nonnull %4, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.90) #9
  %17 = load ptr, ptr %8, align 8, !tbaa !126
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4
  %21 = load i16, ptr %20, align 8, !tbaa !128
  %22 = icmp eq i16 %21, 16975
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !129
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @RNA_pointer_create(ptr noundef nonnull %17, ptr noundef nonnull @RNA_Pose, ptr noundef nonnull %25, ptr noundef nonnull %6) #9
  call void @uiItemPointerR(ptr noundef %12, ptr noundef nonnull %4, ptr noundef nonnull @.str.87, ptr noundef nonnull %6, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.29, i32 noundef 174) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  br label %28

28:                                               ; preds = %27, %23, %19, %3
  call void @uiLayoutSetRedAlert(ptr noundef %12, i8 noundef zeroext 0) #9
  call void @uiItemR(ptr noundef %12, ptr noundef nonnull %4, ptr noundef nonnull @.str.91, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %29 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #9
  %30 = getelementptr inbounds %struct.DriverVar, ptr %2, i64 0, i32 3, i64 1, i32 4
  %31 = load i16, ptr %30, align 2, !tbaa !125
  %32 = trunc i16 %31 to i8
  %33 = and i8 %32, 16
  call void @uiLayoutSetRedAlert(ptr noundef %29, i8 noundef zeroext %33) #9
  call void @uiTemplateAnyID(ptr noundef %29, ptr noundef nonnull %5, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.92) #9
  %34 = load ptr, ptr %9, align 8, !tbaa !126
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.ID, ptr %34, i64 0, i32 4
  %38 = load i16, ptr %37, align 8, !tbaa !128
  %39 = icmp eq i16 %38, 16975
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !129
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  call void @RNA_pointer_create(ptr noundef nonnull %34, ptr noundef nonnull @RNA_Pose, ptr noundef nonnull %42, ptr noundef nonnull %7) #9
  call void @uiItemPointerR(ptr noundef %29, ptr noundef nonnull %5, ptr noundef nonnull @.str.87, ptr noundef nonnull %7, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.29, i32 noundef 174) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  br label %45

45:                                               ; preds = %44, %40, %36, %28
  call void @uiLayoutSetRedAlert(ptr noundef %29, i8 noundef zeroext 0) #9
  call void @uiItemR(ptr noundef %29, ptr noundef nonnull %5, ptr noundef nonnull @.str.91, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @graph_panel_driverVar__transChan(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !135 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = getelementptr inbounds %struct.DriverVar, ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_DriverTarget, ptr noundef nonnull %6, ptr noundef nonnull %4) #9
  %8 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #9
  %9 = getelementptr inbounds %struct.DriverVar, ptr %2, i64 0, i32 3, i64 0, i32 4
  %10 = load i16, ptr %9, align 2, !tbaa !125
  %11 = trunc i16 %10 to i8
  %12 = and i8 %11, 16
  call void @uiLayoutSetRedAlert(ptr noundef %8, i8 noundef zeroext %12) #9
  call void @uiTemplateAnyID(ptr noundef %8, ptr noundef nonnull %4, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.93) #9
  %13 = load ptr, ptr %6, align 8, !tbaa !126
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 4
  %17 = load i16, ptr %16, align 8, !tbaa !128
  %18 = icmp eq i16 %17, 16975
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 18
  %21 = load ptr, ptr %20, align 8, !tbaa !129
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @RNA_pointer_create(ptr noundef nonnull %13, ptr noundef nonnull @RNA_Pose, ptr noundef nonnull %21, ptr noundef nonnull %5) #9
  call void @uiItemPointerR(ptr noundef %8, ptr noundef nonnull %4, ptr noundef nonnull @.str.87, ptr noundef nonnull %5, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.29, i32 noundef 174) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  br label %24

24:                                               ; preds = %23, %19, %15, %3
  %25 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %25, ptr noundef nonnull %4, ptr noundef nonnull @.str.94, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %25, ptr noundef nonnull %4, ptr noundef nonnull @.str.91, i32 noundef 0, ptr noundef nonnull @.str.95, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ANIM_remove_driver(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @driver_add_new_variable(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @driver_free_variable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetRedAlert(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiTemplateAnyID(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiTemplatePathBuilder(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemPointerR(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_graph_region_modifier_buttons(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 !PGOFuncName !136 {
  %4 = icmp eq i32 %2, 20
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 234881024, ptr noundef null) #9
  br label %6

6:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefButO(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ANIM_uiTemplate_fmodifier_draw(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @graph_has_buttons_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_toggle_hidden(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize willreturn memory(read) }

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
!38 = !{!39, !35, i64 368}
!39 = !{!"PanelType", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 208, !36, i64 272, !40, i64 336, !40, i64 340, !40, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !41, i64 376}
!40 = !{!"int", !36, i64 0}
!41 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!42 = !{!39, !40, i64 344}
!43 = !{!39, !35, i64 352}
!44 = !{!"graph_buttons.c:graph_panel_view"}
!45 = !{!46, !35, i64 24}
!46 = !{!"Panel", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !36, i64 160, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !47, i64 240, !47, i64 242, !47, i64 244, !47, i64 246, !47, i64 248, !47, i64 250, !40, i64 252, !35, i64 256, !35, i64 264}
!47 = !{!"short", !36, i64 0}
!48 = !{!"graph_buttons.c:graph_panel_properties"}
!49 = !{i32 0, i32 2}
!50 = !{!51, !35, i64 48}
!51 = !{!"bAnimListElem", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !47, i64 36, !47, i64 38, !35, i64 40, !35, i64 48, !35, i64 56}
!52 = !{!53, !47, i64 72}
!53 = !{!"FCurve", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !54, i64 32, !35, i64 48, !35, i64 56, !40, i64 64, !55, i64 68, !47, i64 72, !47, i64 74, !40, i64 76, !35, i64 80, !40, i64 88, !36, i64 92, !55, i64 104, !55, i64 108}
!54 = !{!"ListBase", !35, i64 0, !35, i64 8}
!55 = !{!"float", !36, i64 0}
!56 = !{!53, !40, i64 88}
!57 = !{!"graph_buttons.c:graph_panel_poll"}
!58 = !{!"graph_buttons.c:graph_panel_key_properties"}
!59 = !{i16 0, i16 2}
!60 = !{!53, !35, i64 80}
!61 = !{!62, !36, i64 48}
!62 = !{!"BezTriple", !36, i64 0, !55, i64 36, !55, i64 40, !55, i64 44, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !36, i64 52, !36, i64 53, !36, i64 54, !36, i64 55, !55, i64 56, !55, i64 60, !55, i64 64, !36, i64 68}
!63 = !{!64, !47, i64 8948}
!64 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !47, i64 8472, !47, i64 8474, !47, i64 8476, !47, i64 8478, !47, i64 8480, !47, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !47, i64 8496, !47, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !47, i64 8528, !47, i64 8530, !47, i64 8532, !47, i64 8534, !54, i64 8536, !54, i64 8552, !54, i64 8568, !54, i64 8584, !54, i64 8600, !54, i64 8616, !54, i64 8632, !36, i64 8648, !47, i64 8712, !47, i64 8714, !47, i64 8716, !47, i64 8718, !47, i64 8720, !47, i64 8722, !47, i64 8724, !47, i64 8726, !36, i64 8728, !47, i64 8896, !47, i64 8898, !47, i64 8900, !47, i64 8902, !47, i64 8904, !47, i64 8906, !47, i64 8908, !47, i64 8910, !40, i64 8912, !40, i64 8916, !47, i64 8920, !47, i64 8922, !47, i64 8924, !47, i64 8926, !47, i64 8928, !47, i64 8930, !47, i64 8932, !47, i64 8934, !47, i64 8936, !47, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !47, i64 8944, !47, i64 8946, !47, i64 8948, !47, i64 8950, !47, i64 8952, !47, i64 8954, !55, i64 8956, !55, i64 8960, !40, i64 8964, !47, i64 8968, !47, i64 8970, !55, i64 8972, !47, i64 8976, !47, i64 8978, !47, i64 8980, !47, i64 8982, !65, i64 8984, !36, i64 9760, !36, i64 9772, !47, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !55, i64 10904, !55, i64 10908, !40, i64 10912, !47, i64 10916, !47, i64 10918, !47, i64 10920, !47, i64 10922, !47, i64 10924, !47, i64 10926, !66, i64 10928}
!65 = !{!"ColorBand", !47, i64 0, !47, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!66 = !{!"WalkNavigation", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !47, i64 24, !36, i64 26}
!67 = !{!53, !35, i64 48}
!68 = !{!53, !35, i64 32}
!69 = !{!53, !35, i64 56}
!70 = !{!"graph_buttons.c:graph_panel_drivers"}
!71 = !{!53, !35, i64 24}
!72 = !{!73, !40, i64 288}
!73 = !{!"ChannelDriver", !54, i64 0, !36, i64 16, !35, i64 272, !55, i64 280, !55, i64 284, !40, i64 288, !40, i64 292}
!74 = !{!75, !40, i64 2096}
!75 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !54, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !47, i64 2084, !47, i64 2086, !47, i64 2088, !36, i64 2090, !47, i64 2092, !40, i64 2096, !40, i64 2100, !36, i64 2104, !40, i64 2108, !40, i64 2112, !36, i64 2116}
!76 = !{!73, !40, i64 292}
!77 = !{i8 0, i8 2}
!78 = !{!73, !55, i64 280}
!79 = !{!80, !47, i64 530}
!80 = !{!"DriverVar", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !47, i64 528, !47, i64 530, !55, i64 532}
!81 = !{!82, !47, i64 48}
!82 = !{!"DriverTarget", !35, i64 0, !35, i64 8, !36, i64 16, !47, i64 48, !47, i64 50, !40, i64 52}
!83 = !{!80, !55, i64 532}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"graph_buttons.c:graph_panel_drivers_poll"}
!87 = !{!88, !47, i64 240}
!88 = !{!"SpaceIpo", !35, i64 0, !35, i64 8, !54, i64 16, !40, i64 32, !55, i64 36, !36, i64 40, !89, i64 56, !35, i64 216, !54, i64 224, !47, i64 240, !47, i64 242, !40, i64 244, !55, i64 248, !40, i64 252}
!89 = !{!"View2D", !90, i64 0, !90, i64 16, !91, i64 32, !91, i64 48, !91, i64 64, !36, i64 80, !36, i64 88, !55, i64 96, !55, i64 100, !47, i64 104, !47, i64 106, !47, i64 108, !47, i64 110, !47, i64 112, !47, i64 114, !47, i64 116, !47, i64 118, !47, i64 120, !47, i64 122, !47, i64 124, !47, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!90 = !{!"rctf", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!91 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!92 = !{!"graph_buttons.c:graph_panel_modifiers"}
!93 = distinct !{!93, !85}
!94 = !{!95, !35, i64 0}
!95 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !54, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !41, i64 152, !47, i64 184}
!96 = !{!95, !35, i64 8}
!97 = !{!95, !35, i64 24}
!98 = !{!95, !35, i64 32}
!99 = !{!95, !35, i64 72}
!100 = !{!95, !47, i64 184}
!101 = !{!"graph_buttons.c:graph_properties_toggle_exec"}
!102 = !{!"graph_buttons.c:graph_panel_context"}
!103 = !{!51, !35, i64 16}
!104 = !{!"graph_buttons.c:get_active_fcurve_keyframe_edit"}
!105 = !{!53, !40, i64 64}
!106 = !{!62, !36, i64 52}
!107 = !{!62, !36, i64 51}
!108 = !{!62, !36, i64 53}
!109 = distinct !{!109, !85}
!110 = !{!"graph_buttons.c:graphedit_activekey_update_cb"}
!111 = !{!"graph_buttons.c:graphedit_activekey_left_handle_coord_cb"}
!112 = !{!"graph_buttons.c:graphedit_activekey_handles_cb"}
!113 = !{!62, !36, i64 49}
!114 = !{!62, !36, i64 50}
!115 = !{!"graph_buttons.c:graphedit_activekey_right_handle_coord_cb"}
!116 = !{!"graph_buttons.c:do_graph_region_driver_buttons"}
!117 = !{!"graph_buttons.c:driver_update_flags_cb"}
!118 = !{!"graph_buttons.c:driver_remove_cb"}
!119 = !{!53, !40, i64 76}
!120 = !{!"graph_buttons.c:BLI_listbase_is_empty"}
!121 = !{!54, !35, i64 0}
!122 = !{!"graph_buttons.c:driver_add_var_cb"}
!123 = !{!"graph_buttons.c:driver_delete_var_cb"}
!124 = !{!"graph_buttons.c:graph_panel_driverVar__singleProp"}
!125 = !{!82, !47, i64 50}
!126 = !{!82, !35, i64 0}
!127 = !{!"graph_buttons.c:graph_panel_driverVar__rotDiff"}
!128 = !{!47, !47, i64 0}
!129 = !{!130, !35, i64 288}
!130 = !{!"Object", !131, i64 0, !35, i64 120, !35, i64 128, !47, i64 136, !47, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !132, i64 312, !35, i64 360, !54, i64 368, !54, i64 384, !54, i64 400, !54, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !55, i64 616, !55, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !47, i64 948, !47, i64 950, !47, i64 952, !47, i64 954, !47, i64 956, !47, i64 958, !47, i64 960, !47, i64 962, !47, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !55, i64 988, !55, i64 992, !55, i64 996, !55, i64 1000, !55, i64 1004, !55, i64 1008, !55, i64 1012, !55, i64 1016, !55, i64 1020, !55, i64 1024, !55, i64 1028, !55, i64 1032, !47, i64 1036, !47, i64 1038, !47, i64 1040, !36, i64 1042, !36, i64 1043, !47, i64 1044, !36, i64 1046, !36, i64 1047, !55, i64 1048, !55, i64 1052, !54, i64 1056, !54, i64 1072, !54, i64 1088, !54, i64 1104, !55, i64 1120, !47, i64 1124, !47, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !47, i64 1162, !36, i64 1164, !54, i64 1176, !54, i64 1192, !54, i64 1208, !54, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !47, i64 1266, !55, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !133, i64 1304, !133, i64 1312, !40, i64 1320, !40, i64 1324, !54, i64 1328, !54, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !54, i64 1400, !35, i64 1416}
!131 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !47, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!132 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!133 = !{!"long", !36, i64 0}
!134 = !{!"graph_buttons.c:graph_panel_driverVar__locDiff"}
!135 = !{!"graph_buttons.c:graph_panel_driverVar__transChan"}
!136 = !{!"graph_buttons.c:do_graph_region_modifier_buttons"}
