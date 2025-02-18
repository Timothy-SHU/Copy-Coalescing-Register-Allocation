; ModuleID = 'blender/source/blender/editors/space_graph/graph_select.c'
source_filename = "blender/source/blender/editors/space_graph/graph_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.rctf = type { float, float, float, float }
%struct.KeyframeEdit_LassoData = type { ptr, ptr, ptr, i32 }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.KeyframeEditData = type { %struct.ListBase, ptr, ptr, float, float, i32, i32, ptr, i32, i16, i16 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.CfraElem = type { ptr, ptr, float, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.tNearestVertInfo = type { ptr, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }

@.str = private unnamed_addr constant [11 x i8] c"Select All\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"GRAPH_OT_select_all_toggle\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Toggle selection of all keyframes\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Invert\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Border Select\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"GRAPH_OT_select_border\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Select all keyframes within the specified region\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"axis_range\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Axis Range\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"include_handles\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Include Handles\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"Are handles tested individually against the selection criteria\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Lasso Select\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"Select keyframe points using lasso selection\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"GRAPH_OT_select_lasso\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@RNA_OperatorMousePath = external global %struct.StructRNA, align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"Deselect\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Deselect rather than select items\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"Extend selection instead of deselecting everything first\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"GRAPH_OT_select_column\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"Select all keyframes on the specified frame(s)\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@prop_column_select_types = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.54, i32 0, ptr @.str.55, ptr @.str.5 }, %struct.EnumPropertyItem { i32 1, ptr @.str.56, i32 0, ptr @.str.57, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.58, i32 0, ptr @.str.59, ptr @.str.5 }, %struct.EnumPropertyItem { i32 3, ptr @.str.60, i32 0, ptr @.str.61, ptr @.str.5 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.28 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"Select Linked\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"GRAPH_OT_select_linked\00", align 1
@.str.31 = private unnamed_addr constant [65 x i8] c"Select keyframes occurring in the same F-Curves as selected ones\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"Select More\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"GRAPH_OT_select_more\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"Select keyframes beside already selected ones\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"Select Less\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"GRAPH_OT_select_less\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"Deselect keyframes on ends of selection islands\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"Select Left/Right\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"GRAPH_OT_select_leftright\00", align 1
@.str.40 = private unnamed_addr constant [63 x i8] c"Select keyframes to the left or the right of the current frame\00", align 1
@prop_graphkeys_leftright_select_types = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.63, i32 0, ptr @.str.64, ptr @.str.5 }, %struct.EnumPropertyItem { i32 1, ptr @.str.65, i32 0, ptr @.str.66, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.67, i32 0, ptr @.str.68, ptr @.str.5 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.41 = private unnamed_addr constant [14 x i8] c"Extend Select\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"Mouse Select Keys\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"GRAPH_OT_clickselect\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"Select keyframes by clicking on them\00", align 1
@.str.45 = private unnamed_addr constant [75 x i8] c"Toggle keyframe selection instead of leaving newly selected keyframes only\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"column\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"Column Select\00", align 1
@.str.48 = private unnamed_addr constant [77 x i8] c"Select all keyframes that occur on the same frame as the one under the mouse\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"curves\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"Only Curves\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"Select all the keyframes in the curve\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.52 = private unnamed_addr constant [13 x i8] c"gesture_mode\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.53 = private unnamed_addr constant [9 x i8] c"cfraElem\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"KEYS\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"On Selected Keyframes\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"CFRA\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"On Current Frame\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"MARKERS_COLUMN\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"On Selected Markers\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"MARKERS_BETWEEN\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"Between Min/Max Selected Markers\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"selmap graphEdit\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"CHECK\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"Check if Select Left or Right\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"Before current frame\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"After current frame\00", align 1
@.str.69 = private unnamed_addr constant [31 x i8] c"Nearest Graph Vert Info - Bezt\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_select_all_toggle(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_deselectall_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_deselectall_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #7
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = call ptr @get_active_fcurve_channel(ptr noundef nonnull %3) #7
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.3) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  call fastcc void @deselect_graph_keys(ptr noundef nonnull %3, i16 noundef signext 0, i16 noundef signext 8, i16 noundef signext 1)
  br label %14

13:                                               ; preds = %6
  call fastcc void @deselect_graph_keys(ptr noundef nonnull %3, i16 noundef signext 1, i16 noundef signext 2, i16 noundef signext 1)
  br label %14

14:                                               ; preds = %13, %12
  %15 = icmp eq ptr %7, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 9
  %20 = load i16, ptr %19, align 8, !tbaa !54
  %21 = or i16 %20, 6
  store i16 %21, ptr %19, align 8, !tbaa !54
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %22(ptr noundef nonnull %7) #7
  br label %23

23:                                               ; preds = %16, %14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #7
  br label %24

24:                                               ; preds = %2, %23
  %25 = phi i32 [ 4, %23 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  ret i32 %25
}

declare i32 @graphop_visible_keyframes_poll(ptr noundef) #1

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_select_border(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_borderselect_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %9, align 8, !tbaa !46
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #7
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5) #7
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !48
  %14 = load ptr, ptr %10, align 8, !tbaa !47
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #7
  ret void
}

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_borderselect_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.rcti, align 4
  %5 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %40, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.22) #7
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  call fastcc void @deselect_graph_keys(ptr noundef nonnull %3, i16 noundef signext 1, i16 noundef signext 4, i16 noundef signext 1)
  br label %15

15:                                               ; preds = %14, %8
  %16 = load ptr, ptr %9, align 8, !tbaa !49
  %17 = call i32 @RNA_int_get(ptr noundef %16, ptr noundef nonnull @.str.52) #7
  %18 = icmp eq i32 %17, 3
  %19 = select i1 %18, i16 2, i16 4
  %20 = load ptr, ptr %9, align 8, !tbaa !49
  %21 = call i32 @RNA_boolean_get(ptr noundef %20, ptr noundef nonnull @.str.11) #7
  %22 = trunc i32 %21 to i8
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %4) #7
  %23 = load ptr, ptr %9, align 8, !tbaa !49
  %24 = call i32 @RNA_boolean_get(ptr noundef %23, ptr noundef nonnull @.str.9) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !61
  %29 = load i32, ptr %4, align 4, !tbaa !63
  %30 = sub nsw i32 %28, %29
  %31 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !64
  %33 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !65
  %35 = sub nsw i32 %32, %34
  %36 = icmp slt i32 %30, %35
  %37 = select i1 %36, i16 5, i16 2
  br label %38

38:                                               ; preds = %15, %26
  %39 = phi i16 [ %37, %26 ], [ 6, %15 ]
  call void @BLI_rctf_rcti_copy(ptr noundef nonnull %5, ptr noundef nonnull %4) #7
  call fastcc void @borderselect_graphkeys(ptr noundef nonnull %3, ptr noundef nonnull %5, i16 noundef signext %39, i16 noundef signext %19, i8 noundef zeroext %22, ptr noundef null)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #7
  br label %40

40:                                               ; preds = %2, %38
  %41 = phi i32 [ 4, %38 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  ret i32 %41
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #1

declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #1

declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_select_lasso(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lasso_invoke, ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lasso_modal, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_lassoselect_exec, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_lasso_cancel, ptr %8, align 8, !tbaa !60
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = tail call ptr @RNA_def_collection_runtime(ptr noundef %11, ptr noundef nonnull @.str.17, ptr noundef nonnull @RNA_OperatorMousePath, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5) #7
  %13 = load ptr, ptr %10, align 8, !tbaa !47
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #7
  %15 = load ptr, ptr %10, align 8, !tbaa !47
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.22, i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #7
  ret void
}

declare i32 @WM_gesture_lasso_invoke(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @WM_gesture_lasso_modal(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_lassoselect_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.rcti, align 4
  %5 = alloca %struct.rctf, align 4
  %6 = alloca %struct.KeyframeEdit_LassoData, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #7
  %7 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %6, i64 0, i32 1
  store ptr %5, ptr %10, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %6, i64 0, i32 3
  %12 = call ptr @WM_gesture_lasso_path_to_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #7
  %13 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %6, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !68
  %14 = icmp eq ptr %12, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.22) #7
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  call fastcc void @deselect_graph_keys(ptr noundef nonnull %3, i16 noundef signext 1, i16 noundef signext 4, i16 noundef signext 1)
  br label %22

22:                                               ; preds = %21, %15
  %23 = load ptr, ptr %16, align 8, !tbaa !49
  %24 = call i32 @RNA_boolean_get(ptr noundef %23, ptr noundef nonnull @.str.19) #7
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i16 2, i16 4
  %27 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 3
  %28 = load i16, ptr %27, align 4, !tbaa !69
  %29 = icmp eq i16 %28, 2
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !71
  %33 = getelementptr inbounds %struct.SpaceIpo, ptr %32, i64 0, i32 11
  %34 = load i32, ptr %33, align 4, !tbaa !72
  br i1 %25, label %35, label %38

35:                                               ; preds = %30
  %36 = and i32 %34, 516
  %37 = icmp eq i32 %36, 0
  br label %41

38:                                               ; preds = %30
  %39 = and i32 %34, 4
  %40 = icmp eq i32 %39, 0
  br label %41

41:                                               ; preds = %22, %35, %38
  %42 = phi i1 [ %37, %35 ], [ %40, %38 ], [ false, %22 ]
  %43 = zext i1 %42 to i8
  %44 = load ptr, ptr %13, align 8, !tbaa !68
  %45 = load i32, ptr %11, align 8, !tbaa !76
  call void @BLI_lasso_boundbox(ptr noundef nonnull %4, ptr noundef %44, i32 noundef %45) #7
  call void @BLI_rctf_rcti_copy(ptr noundef nonnull %5, ptr noundef nonnull %4) #7
  call fastcc void @borderselect_graphkeys(ptr noundef nonnull %3, ptr noundef nonnull %5, i16 noundef signext 7, i16 noundef signext %26, i8 noundef zeroext %43, ptr noundef nonnull %6)
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %47 = load ptr, ptr %13, align 8, !tbaa !68
  call void %46(ptr noundef %47) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #7
  br label %48

48:                                               ; preds = %9, %2, %41
  %49 = phi i32 [ 4, %41 ], [ 2, %2 ], [ 2, %9 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  ret i32 %49
}

declare void @WM_gesture_lasso_cancel(ptr noundef, ptr noundef) #1

declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_select_column(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_columnselect_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.27, ptr noundef nonnull @prop_column_select_types, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.5) #7
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_columnselect_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.KeyframeEditData, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %9) #7
  %10 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %9) #7
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %118, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = call i32 @RNA_enum_get(ptr noundef %14, ptr noundef nonnull @.str.27) #7
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %54

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %9, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !77
  call void @ED_markers_get_minmax(ptr noundef %20, i16 noundef signext 1, ptr noundef nonnull %7, ptr noundef nonnull %8) #7
  %21 = load float, ptr %7, align 4, !tbaa !78
  %22 = fadd float %21, -5.000000e-01
  store float %22, ptr %7, align 4, !tbaa !78
  %23 = load float, ptr %8, align 4, !tbaa !78
  %24 = fadd float %23, 5.000000e-01
  store float %24, ptr %8, align 4, !tbaa !78
  %25 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 2) #7
  %26 = call ptr @ANIM_editkeyframes_select(i16 noundef signext 2) #7
  %27 = load float, ptr %7, align 4, !tbaa !78
  %28 = getelementptr inbounds %struct.KeyframeEditData, ptr %6, i64 0, i32 3
  store float %27, ptr %28, align 8, !tbaa !79
  %29 = load float, ptr %8, align 4, !tbaa !78
  %30 = getelementptr inbounds %struct.KeyframeEditData, ptr %6, i64 0, i32 4
  store float %29, ptr %30, align 4, !tbaa !81
  %31 = load ptr, ptr %9, align 8, !tbaa !82
  %32 = getelementptr inbounds %struct.bAnimContext, ptr %9, i64 0, i32 1
  %33 = load i16, ptr %32, align 8, !tbaa !83
  %34 = sext i16 %33 to i32
  %35 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %9, ptr noundef nonnull %5, i32 noundef 2053, ptr noundef %31, i32 noundef %34) #7
  %36 = load ptr, ptr %5, align 8, !tbaa !57
  %37 = icmp eq ptr %36, null
  br i1 %37, label %53, label %38

38:                                               ; preds = %18, %50
  %39 = phi ptr [ %51, %50 ], [ %36, %18 ]
  %40 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %9, ptr noundef nonnull %39) #7
  %41 = icmp eq ptr %40, null
  %42 = getelementptr inbounds %struct.bAnimListElem, ptr %39, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !84
  br i1 %41, label %48, label %44

44:                                               ; preds = %38
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %40, ptr noundef %43, i8 noundef zeroext 0, i8 noundef zeroext 1) #7
  %45 = load ptr, ptr %42, align 8, !tbaa !84
  %46 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %6, ptr noundef %45, ptr noundef %25, ptr noundef %26, ptr noundef null) #7
  %47 = load ptr, ptr %42, align 8, !tbaa !84
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %40, ptr noundef %47, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %50

48:                                               ; preds = %38
  %49 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %6, ptr noundef %43, ptr noundef %25, ptr noundef %26, ptr noundef null) #7
  br label %50

50:                                               ; preds = %48, %44
  %51 = load ptr, ptr %39, align 8, !tbaa !57
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %38, !llvm.loop !85

53:                                               ; preds = %50, %18
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  br label %117

54:                                               ; preds = %12
  %55 = trunc i32 %15 to i16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %56 = getelementptr inbounds %struct.bAnimContext, ptr %9, i64 0, i32 9
  %57 = load ptr, ptr %56, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  switch i16 %55, label %116 [
    i16 0, label %58
    i16 1, label %74
    i16 2, label %81
  ]

58:                                               ; preds = %54
  %59 = load ptr, ptr %9, align 8, !tbaa !82
  %60 = getelementptr inbounds %struct.bAnimContext, ptr %9, i64 0, i32 1
  %61 = load i16, ptr %60, align 8, !tbaa !83
  %62 = sext i16 %61 to i32
  %63 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %9, ptr noundef nonnull %3, i32 noundef 2053, ptr noundef %59, i32 noundef %62) #7
  %64 = load ptr, ptr %3, align 8, !tbaa !57
  %65 = icmp eq ptr %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %58, %66
  %67 = phi ptr [ %71, %66 ], [ %64, %58 ]
  %68 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 8
  %69 = load ptr, ptr %68, align 8, !tbaa !84
  %70 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %69, ptr noundef null, ptr noundef nonnull @bezt_to_cfraelem, ptr noundef null) #7
  %71 = load ptr, ptr %67, align 8, !tbaa !57
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %66, !llvm.loop !89

73:                                               ; preds = %66, %58
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #7
  br label %84

74:                                               ; preds = %54
  %75 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %76 = call ptr %75(i64 noundef 24, ptr noundef nonnull @.str.53) #7
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %76) #7
  %77 = getelementptr inbounds %struct.Scene, ptr %57, i64 0, i32 22, i32 5
  %78 = load i32, ptr %77, align 8, !tbaa !90
  %79 = sitofp i32 %78 to float
  %80 = getelementptr inbounds %struct.CfraElem, ptr %76, i64 0, i32 2
  store float %79, ptr %80, align 8, !tbaa !109
  br label %84

81:                                               ; preds = %54
  %82 = getelementptr inbounds %struct.bAnimContext, ptr %9, i64 0, i32 11
  %83 = load ptr, ptr %82, align 8, !tbaa !77
  call void @ED_markers_make_cfra_list(ptr noundef %83, ptr noundef nonnull %4, i16 noundef signext 1) #7
  br label %84

84:                                               ; preds = %81, %74, %73
  %85 = call ptr @ANIM_editkeyframes_select(i16 noundef signext 2) #7
  %86 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 1) #7
  %87 = load ptr, ptr %9, align 8, !tbaa !82
  %88 = getelementptr inbounds %struct.bAnimContext, ptr %9, i64 0, i32 1
  %89 = load i16, ptr %88, align 8, !tbaa !83
  %90 = sext i16 %89 to i32
  %91 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %9, ptr noundef nonnull %3, i32 noundef 2053, ptr noundef %87, i32 noundef %90) #7
  %92 = load ptr, ptr %3, align 8, !tbaa !57
  %93 = icmp eq ptr %92, null
  br i1 %93, label %115, label %94

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  br label %99

96:                                               ; preds = %106, %99
  %97 = load ptr, ptr %100, align 8, !tbaa !57
  %98 = icmp eq ptr %97, null
  br i1 %98, label %115, label %99, !llvm.loop !111

99:                                               ; preds = %94, %96
  %100 = phi ptr [ %92, %94 ], [ %97, %96 ]
  %101 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %9, ptr noundef nonnull %100) #7
  %102 = load ptr, ptr %4, align 8, !tbaa !57
  %103 = icmp eq ptr %102, null
  br i1 %103, label %96, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.bAnimListElem, ptr %100, i64 0, i32 8
  br label %106

106:                                              ; preds = %104, %106
  %107 = phi ptr [ %102, %104 ], [ %113, %106 ]
  %108 = getelementptr inbounds %struct.CfraElem, ptr %107, i64 0, i32 2
  %109 = load float, ptr %108, align 8, !tbaa !109
  %110 = call float @BKE_nla_tweakedit_remap(ptr noundef %101, float noundef %109, i16 noundef signext 1) #7
  store float %110, ptr %95, align 8, !tbaa !79
  %111 = load ptr, ptr %105, align 8, !tbaa !84
  %112 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %111, ptr noundef %86, ptr noundef %85, ptr noundef null) #7
  %113 = load ptr, ptr %107, align 8, !tbaa !57
  %114 = icmp eq ptr %113, null
  br i1 %114, label %96, label %106, !llvm.loop !112

115:                                              ; preds = %96, %84
  call void @BLI_freelistN(ptr noundef nonnull %4) #7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #7
  br label %116

116:                                              ; preds = %54, %115
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %117

117:                                              ; preds = %116, %53
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #7
  br label %118

118:                                              ; preds = %2, %117
  %119 = phi i32 [ 4, %117 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %9) #7
  ret i32 %119
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_select_linked(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.30, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_select_linked_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_select_linked_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = tail call ptr @ANIM_editkeyframes_ok(i16 noundef signext 3) #7
  %6 = tail call ptr @ANIM_editkeyframes_select(i16 noundef signext 2) #7
  %7 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !82
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !83
  %13 = sext i16 %12 to i32
  %14 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2053, ptr noundef %10, i32 noundef %13) #7
  %15 = load ptr, ptr %4, align 8, !tbaa !57
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %9, %25
  %18 = phi ptr [ %26, %25 ], [ %15, %9 ]
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !84
  %21 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %20, ptr noundef null, ptr noundef %5, ptr noundef null) #7
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %20, ptr noundef null, ptr noundef %6, ptr noundef null) #7
  br label %25

25:                                               ; preds = %23, %17
  %26 = load ptr, ptr %18, align 8, !tbaa !57
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %17, !llvm.loop !113

28:                                               ; preds = %25, %9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #7
  br label %29

29:                                               ; preds = %2, %28
  %30 = phi i32 [ 4, %28 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_select_more(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.33, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_select_more_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #7
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call fastcc void @select_moreless_graph_keys(ptr noundef nonnull %3, i16 noundef signext 0)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #7
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_select_less(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.36, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_select_less_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #7
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call fastcc void @select_moreless_graph_keys(ptr noundef nonnull %3, i16 noundef signext 1)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #7
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_select_leftright(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.39, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @graphkeys_select_leftright_invoke, ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_select_leftright_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.27, ptr noundef nonnull @prop_graphkeys_leftright_select_types, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.5) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !48
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268435456) #7
  %12 = load ptr, ptr %8, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.5) #7
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_select_leftright_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.27) #7
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #7
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %3
  %11 = and i32 %7, 65535
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !114
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !115
  %21 = sitofp i32 %20 to float
  %22 = call float @UI_view2d_region_to_view_x(ptr noundef nonnull %18, float noundef %21) #7
  %23 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 22, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !90
  %25 = sitofp i32 %24 to float
  %26 = fcmp olt float %22, %25
  %27 = load ptr, ptr %5, align 8, !tbaa !49
  %28 = select i1 %26, i32 1, i32 2
  call void @RNA_enum_set(ptr noundef %27, ptr noundef nonnull @.str.27, i32 noundef %28) #7
  br label %29

29:                                               ; preds = %13, %10
  %30 = call i32 @graphkeys_select_leftright_exec(ptr noundef %0, ptr noundef %1), !range !116
  br label %31

31:                                               ; preds = %3, %29
  %32 = phi i32 [ %30, %29 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #7
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_select_leftright_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 8
  %5 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #7
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.27) #7
  %9 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %5) #7
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %65, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %6, align 8, !tbaa !49
  %13 = call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.22) #7
  %14 = and i32 %8, 65535
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %65, label %16

16:                                               ; preds = %11
  %17 = icmp eq i32 %13, 0
  %18 = select i1 %17, i16 1, i16 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !88
  br i1 %17, label %21, label %22

21:                                               ; preds = %16
  call fastcc void @deselect_graph_keys(ptr noundef nonnull %5, i16 noundef signext 0, i16 noundef signext 4, i16 noundef signext 0)
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi i16 [ 2, %21 ], [ %18, %16 ]
  %24 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 2) #7
  %25 = call ptr @ANIM_editkeyframes_select(i16 noundef signext %23) #7
  %26 = icmp eq i32 %14, 1
  %27 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 4
  br i1 %26, label %28, label %34

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  store float -3.000000e+05, ptr %29, align 8, !tbaa !79
  %30 = getelementptr inbounds %struct.Scene, ptr %20, i64 0, i32 22, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !90
  %32 = sitofp i32 %31 to float
  %33 = fadd float %32, 0x3FB99999A0000000
  br label %40

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.Scene, ptr %20, i64 0, i32 22, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !90
  %37 = sitofp i32 %36 to float
  %38 = fadd float %37, 0xBFB99999A0000000
  %39 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  store float %38, ptr %39, align 8, !tbaa !79
  br label %40

40:                                               ; preds = %34, %28
  %41 = phi float [ 3.000000e+05, %34 ], [ %33, %28 ]
  store float %41, ptr %27, align 4, !tbaa !81
  %42 = load ptr, ptr %5, align 8, !tbaa !82
  %43 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  %44 = load i16, ptr %43, align 8, !tbaa !83
  %45 = sext i16 %44 to i32
  %46 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 2049, ptr noundef %42, i32 noundef %45) #7
  %47 = load ptr, ptr %3, align 8, !tbaa !57
  %48 = icmp eq ptr %47, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %40, %61
  %50 = phi ptr [ %62, %61 ], [ %47, %40 ]
  %51 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %5, ptr noundef nonnull %50) #7
  %52 = icmp eq ptr %51, null
  %53 = getelementptr inbounds %struct.bAnimListElem, ptr %50, i64 0, i32 8
  %54 = load ptr, ptr %53, align 8, !tbaa !84
  br i1 %52, label %59, label %55

55:                                               ; preds = %49
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %51, ptr noundef %54, i8 noundef zeroext 0, i8 noundef zeroext 1) #7
  %56 = load ptr, ptr %53, align 8, !tbaa !84
  %57 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %56, ptr noundef %24, ptr noundef %25, ptr noundef null) #7
  %58 = load ptr, ptr %53, align 8, !tbaa !84
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %51, ptr noundef %58, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %61

59:                                               ; preds = %49
  %60 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %54, ptr noundef %24, ptr noundef %25, ptr noundef null) #7
  br label %61

61:                                               ; preds = %59, %55
  %62 = load ptr, ptr %50, align 8, !tbaa !57
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %49, !llvm.loop !117

64:                                               ; preds = %61, %40
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239992838, ptr noundef null) #7
  br label %65

65:                                               ; preds = %11, %2, %64
  %66 = phi i32 [ 4, %64 ], [ 2, %2 ], [ 2, %11 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #7
  ret i32 %66
}

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @GRAPH_OT_clickselect(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @graphkeys_clickselect_invoke, ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.45) #7
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #7
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.46, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #7
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #7
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.49, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #7
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graphkeys_clickselect_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.KeyframeEditData, align 8
  %6 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #7
  %7 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %6) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %81, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.22) #7
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i16 1, i16 8
  %15 = load ptr, ptr %10, align 8, !tbaa !49
  %16 = call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.46) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %73, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %6, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !88
  %22 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 22, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !90
  %24 = sitofp i32 %23 to float
  %25 = call fastcc ptr @find_nearest_fcurve_vert(ptr noundef nonnull %6, ptr noundef nonnull %19)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %72, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.tNearestVertInfo, ptr %25, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !118
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %29, i64 0, i64 1
  br label %37

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.tNearestVertInfo, ptr %25, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !120
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33, %31
  %38 = phi ptr [ %32, %31 ], [ %35, %33 ]
  %39 = load float, ptr %38, align 4, !tbaa !78
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi float [ %24, %33 ], [ %39, %37 ]
  br i1 %13, label %42, label %43

42:                                               ; preds = %40
  call fastcc void @deselect_graph_keys(ptr noundef nonnull %6, i16 noundef signext 0, i16 noundef signext 4, i16 noundef signext 0)
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i16 [ 2, %42 ], [ %14, %40 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %45 = call ptr @ANIM_editkeyframes_select(i16 noundef signext %44) #7
  %46 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 1) #7
  %47 = load ptr, ptr %6, align 8, !tbaa !82
  %48 = getelementptr inbounds %struct.bAnimContext, ptr %6, i64 0, i32 1
  %49 = load i16, ptr %48, align 8, !tbaa !83
  %50 = sext i16 %49 to i32
  %51 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %6, ptr noundef nonnull %4, i32 noundef 2053, ptr noundef %47, i32 noundef %50) #7
  %52 = load ptr, ptr %4, align 8, !tbaa !57
  %53 = icmp eq ptr %52, null
  br i1 %53, label %70, label %54

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 3
  %56 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 3
  br label %57

57:                                               ; preds = %54, %64
  %58 = phi ptr [ %52, %54 ], [ %68, %64 ]
  %59 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %6, ptr noundef nonnull %58) #7
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %59, float noundef %41, i16 noundef signext 1) #7
  store float %62, ptr %55, align 8, !tbaa !79
  br label %64

63:                                               ; preds = %57
  store float %41, ptr %56, align 8, !tbaa !79
  br label %64

64:                                               ; preds = %63, %61
  %65 = getelementptr inbounds %struct.bAnimListElem, ptr %58, i64 0, i32 8
  %66 = load ptr, ptr %65, align 8, !tbaa !84
  %67 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %66, ptr noundef %46, ptr noundef %45, ptr noundef null) #7
  %68 = load ptr, ptr %58, align 8, !tbaa !57
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %57, !llvm.loop !121

70:                                               ; preds = %64, %43
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %71(ptr noundef nonnull %25) #7
  call void @BLI_freelistN(ptr noundef nonnull %5) #7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #7
  br label %72

72:                                               ; preds = %18, %70
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  br label %80

73:                                               ; preds = %9
  %74 = load ptr, ptr %10, align 8, !tbaa !49
  %75 = call i32 @RNA_boolean_get(ptr noundef %74, ptr noundef nonnull @.str.49) #7
  %76 = icmp eq i32 %75, 0
  %77 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  br i1 %76, label %79, label %78

78:                                               ; preds = %73
  call fastcc void @mouse_graph_keys(ptr noundef nonnull %6, ptr noundef nonnull %77, i16 noundef signext %14, i16 noundef signext 1)
  br label %80

79:                                               ; preds = %73
  call fastcc void @mouse_graph_keys(ptr noundef nonnull %6, ptr noundef nonnull %77, i16 noundef signext %14, i16 noundef signext 0)
  br label %80

80:                                               ; preds = %78, %79, %72
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239992838, ptr noundef null) #7
  br label %81

81:                                               ; preds = %3, %80
  %82 = phi i32 [ 12, %80 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #7
  ret i32 %82
}

declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @get_active_fcurve_channel(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @deselect_graph_keys(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  %9 = load ptr, ptr %0, align 8, !tbaa !82
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !83
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 2053, ptr noundef %9, i32 noundef %12) #7
  %14 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 3) #7
  %15 = icmp eq i16 %1, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %4, %20
  %17 = phi ptr [ %18, %20 ], [ %5, %4 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !84
  %23 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %6, ptr noundef %22, ptr noundef null, ptr noundef %14, ptr noundef null) #7
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %16, label %25, !llvm.loop !122

25:                                               ; preds = %20, %16, %4
  %26 = phi i16 [ %2, %4 ], [ %2, %16 ], [ 4, %20 ]
  %27 = call ptr @ANIM_editkeyframes_select(i16 noundef signext %26) #7
  %28 = load ptr, ptr %5, align 8, !tbaa !57
  %29 = icmp eq ptr %28, null
  br i1 %29, label %56, label %30

30:                                               ; preds = %25
  %31 = icmp eq i16 %3, 0
  %32 = getelementptr inbounds %struct.SpaceIpo, ptr %8, i64 0, i32 11
  %33 = icmp eq i16 %26, 4
  %34 = select i1 %33, i16 0, i16 2
  br label %35

35:                                               ; preds = %30, %53
  %36 = phi ptr [ %28, %30 ], [ %54, %53 ]
  %37 = getelementptr inbounds %struct.bAnimListElem, ptr %36, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !84
  %39 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %6, ptr noundef %38, ptr noundef null, ptr noundef %27, ptr noundef null) #7
  br i1 %31, label %53, label %40

40:                                               ; preds = %35
  %41 = load i32, ptr %32, align 4, !tbaa !72
  %42 = and i32 %41, 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.FCurve, ptr %38, i64 0, i32 9
  %46 = load i16, ptr %45, align 8, !tbaa !54
  %47 = and i16 %46, -3
  %48 = or disjoint i16 %47, %34
  store i16 %48, ptr %45, align 8, !tbaa !54
  br label %49

49:                                               ; preds = %44, %40
  %50 = getelementptr inbounds %struct.FCurve, ptr %38, i64 0, i32 9
  %51 = load i16, ptr %50, align 8, !tbaa !54
  %52 = and i16 %51, -5
  store i16 %52, ptr %50, align 8, !tbaa !54
  br label %53

53:                                               ; preds = %49, %35
  %54 = load ptr, ptr %36, align 8, !tbaa !57
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %35, !llvm.loop !123

56:                                               ; preds = %53, %25
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  ret void
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @ANIM_editkeyframes_ok(i16 noundef signext) local_unnamed_addr #1

declare signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ANIM_editkeyframes_select(i16 noundef signext) local_unnamed_addr #1

declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_rctf_rcti_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @borderselect_graphkeys(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3, i8 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca %struct.KeyframeEditData, align 8
  %9 = alloca %struct.rctf, align 4
  %10 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7
  call void @UI_view2d_region_to_view_rctf(ptr noundef nonnull %15, ptr noundef %1, ptr noundef nonnull %9) #7
  %16 = load ptr, ptr %0, align 8, !tbaa !82
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %18 = load i16, ptr %17, align 8, !tbaa !83
  %19 = sext i16 %18 to i32
  %20 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %7, i32 noundef 2053, ptr noundef %16, i32 noundef %19) #7
  %21 = call ptr @ANIM_editkeyframes_select(i16 noundef signext %3) #7
  %22 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  %23 = icmp eq ptr %5, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store ptr %10, ptr %5, align 8, !tbaa !124
  br label %25

25:                                               ; preds = %6, %24
  %26 = phi ptr [ %5, %24 ], [ %10, %6 ]
  %27 = getelementptr inbounds %struct.KeyframeEditData, ptr %8, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !125
  %28 = icmp eq i8 %4, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.KeyframeEditData, ptr %8, i64 0, i32 10
  %31 = load i16, ptr %30, align 2, !tbaa !126
  %32 = or i16 %31, 1
  store i16 %32, ptr %30, align 2, !tbaa !126
  br label %33

33:                                               ; preds = %25, %29
  %34 = phi i16 [ 0, %29 ], [ 2, %25 ]
  %35 = call signext i16 @ANIM_get_normalization_flags(ptr noundef nonnull %0) #7
  %36 = or i16 %35, %34
  %37 = load ptr, ptr %7, align 8, !tbaa !57
  %38 = icmp eq ptr %37, null
  br i1 %38, label %96, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %41 = zext i1 %28 to i8
  %42 = getelementptr inbounds %struct.rctf, ptr %9, i64 0, i32 1
  %43 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 1
  %44 = getelementptr inbounds %struct.rctf, ptr %9, i64 0, i32 2
  %45 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 2
  %46 = getelementptr inbounds %struct.rctf, ptr %9, i64 0, i32 3
  %47 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 3
  %48 = icmp eq i16 %2, 5
  %49 = getelementptr inbounds %struct.KeyframeEditData, ptr %8, i64 0, i32 3
  %50 = getelementptr inbounds %struct.KeyframeEditData, ptr %8, i64 0, i32 4
  %51 = getelementptr inbounds %struct.KeyframeEditData, ptr %8, i64 0, i32 3
  %52 = getelementptr inbounds %struct.KeyframeEditData, ptr %8, i64 0, i32 4
  %53 = getelementptr inbounds %struct.SpaceIpo, ptr %12, i64 0, i32 11
  %54 = icmp eq i16 %3, 2
  %55 = zext i1 %28 to i8
  br label %56

56:                                               ; preds = %39, %93
  %57 = phi ptr [ %37, %39 ], [ %94, %93 ]
  %58 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %57) #7
  %59 = getelementptr inbounds %struct.bAnimListElem, ptr %57, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !84
  %61 = load ptr, ptr %40, align 8, !tbaa !88
  %62 = getelementptr inbounds %struct.bAnimListElem, ptr %57, i64 0, i32 9
  %63 = load ptr, ptr %62, align 8, !tbaa !127
  %64 = call float @ANIM_unit_mapping_get_factor(ptr noundef %61, ptr noundef %63, ptr noundef %60, i16 noundef signext %36) #7
  %65 = icmp eq ptr %58, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %56
  %67 = load ptr, ptr %59, align 8, !tbaa !84
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %58, ptr noundef %67, i8 noundef zeroext 0, i8 noundef zeroext %41) #7
  br label %68

68:                                               ; preds = %66, %56
  %69 = load float, ptr %9, align 4, !tbaa !128
  store float %69, ptr %10, align 4, !tbaa !128
  %70 = load float, ptr %42, align 4, !tbaa !129
  store float %70, ptr %43, align 4, !tbaa !129
  %71 = load float, ptr %44, align 4, !tbaa !130
  %72 = fdiv float %71, %64
  store float %72, ptr %45, align 4, !tbaa !130
  %73 = load float, ptr %46, align 4, !tbaa !131
  %74 = fdiv float %73, %64
  store float %74, ptr %47, align 4, !tbaa !131
  br i1 %48, label %76, label %75

75:                                               ; preds = %68
  store float %69, ptr %49, align 8, !tbaa !79
  store float %70, ptr %50, align 4, !tbaa !81
  br label %77

76:                                               ; preds = %68
  store float %71, ptr %51, align 8, !tbaa !79
  store float %73, ptr %52, align 4, !tbaa !81
  br label %77

77:                                               ; preds = %76, %75
  %78 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %8, ptr noundef %60, ptr noundef null, ptr noundef %22, ptr noundef null) #7
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %77
  %81 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %8, ptr noundef %60, ptr noundef %22, ptr noundef %21, ptr noundef null) #7
  %82 = load i32, ptr %53, align 4, !tbaa !72
  %83 = and i32 %82, 32
  %84 = icmp eq i32 %83, 0
  %85 = and i1 %54, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.FCurve, ptr %60, i64 0, i32 9
  %88 = load i16, ptr %87, align 8, !tbaa !54
  %89 = or i16 %88, 2
  store i16 %89, ptr %87, align 8, !tbaa !54
  br label %90

90:                                               ; preds = %80, %86, %77
  br i1 %65, label %93, label %91

91:                                               ; preds = %90
  %92 = load ptr, ptr %59, align 8, !tbaa !84
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %58, ptr noundef %92, i8 noundef zeroext 1, i8 noundef zeroext %55) #7
  br label %93

93:                                               ; preds = %91, %90
  %94 = load ptr, ptr %57, align 8, !tbaa !57
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %56, !llvm.loop !132

96:                                               ; preds = %93, %33
  call void @ANIM_animdata_freelist(ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  ret void
}

declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare signext i16 @ANIM_get_normalization_flags(ptr noundef) local_unnamed_addr #1

declare ptr @ANIM_nla_mapping_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @ANIM_unit_mapping_get_factor(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @ANIM_nla_mapping_apply_fcurve(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @WM_gesture_lasso_path_to_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_lasso_boundbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_markers_get_minmax(ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #1

declare signext i16 @bezt_to_cfraelem(ptr noundef, ptr noundef) #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_markers_make_cfra_list(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare float @BKE_nla_tweakedit_remap(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #1

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @select_moreless_graph_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %5 = tail call ptr @ANIM_editkeyframes_buildselmap(i16 noundef signext %1) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %6 = load ptr, ptr %0, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !83
  %9 = sext i16 %8 to i32
  %10 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2053, ptr noundef %6, i32 noundef %9) #7
  %11 = load ptr, ptr %3, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 2
  br label %15

15:                                               ; preds = %13, %32
  %16 = phi ptr [ %11, %13 ], [ %33, %32 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !84
  %19 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !133
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %24 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !134
  %26 = zext i32 %25 to i64
  %27 = call ptr %23(i64 noundef %26, ptr noundef nonnull @.str.62) #7
  store ptr %27, ptr %14, align 8, !tbaa !125
  %28 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %18, ptr noundef null, ptr noundef %5, ptr noundef null) #7
  %29 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %18, ptr noundef null, ptr noundef nonnull @bezt_selmap_flush, ptr noundef null) #7
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %31 = load ptr, ptr %14, align 8, !tbaa !125
  call void %30(ptr noundef %31) #7
  store ptr null, ptr %14, align 8, !tbaa !125
  br label %32

32:                                               ; preds = %15, %22
  %33 = load ptr, ptr %16, align 8, !tbaa !57
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %15, !llvm.loop !135

35:                                               ; preds = %32, %2
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret void
}

declare ptr @ANIM_editkeyframes_buildselmap(i16 noundef signext) local_unnamed_addr #1

declare signext i16 @bezt_selmap_flush(ptr noundef, ptr noundef) #1

declare float @UI_view2d_region_to_view_x(ptr noundef, float noundef) local_unnamed_addr #1

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @mouse_graph_keys(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #0 {
  %5 = alloca %struct.KeyframeEditData, align 8
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = tail call fastcc ptr @find_nearest_fcurve_vert(ptr noundef %0, ptr noundef %1)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %162, label %10

10:                                               ; preds = %4
  %11 = icmp eq i16 %2, 1
  br i1 %11, label %12, label %22

12:                                               ; preds = %10
  tail call fastcc void @deselect_graph_keys(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 4, i16 noundef signext 1)
  %13 = getelementptr inbounds %struct.SpaceIpo, ptr %7, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !72
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 8, !tbaa !82
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %20 = load i16, ptr %19, align 8, !tbaa !83
  %21 = sext i16 %20 to i32
  tail call void @ANIM_deselect_anim_channels(ptr noundef nonnull %0, ptr noundef %18, i32 noundef %21, i8 noundef zeroext 0, i32 noundef 0) #7
  br label %22

22:                                               ; preds = %12, %17, %10
  %23 = phi i16 [ 2, %17 ], [ 2, %12 ], [ %2, %10 ]
  %24 = icmp eq i16 %3, 0
  br i1 %24, label %25, label %95

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tNearestVertInfo, ptr %8, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !136
  %28 = getelementptr inbounds %struct.FCurve, ptr %27, i64 0, i32 9
  %29 = load i16, ptr %28, align 8, !tbaa !54
  %30 = and i16 %29, 8
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %95

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.tNearestVertInfo, ptr %8, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !118
  %35 = icmp eq ptr %34, null
  br i1 %35, label %100, label %36

36:                                               ; preds = %32
  %37 = icmp eq i16 %23, 8
  %38 = getelementptr inbounds %struct.tNearestVertInfo, ptr %8, i64 0, i32 5
  %39 = load i16, ptr %38, align 8, !tbaa !137
  br i1 %37, label %40, label %76

40:                                               ; preds = %36
  switch i16 %39, label %72 [
    i16 0, label %41
    i16 -1, label %68
  ]

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 8
  %43 = load i8, ptr %42, align 4, !tbaa !138
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 7
  %48 = load i8, ptr %47, align 1, !tbaa !140
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 9
  %53 = load i8, ptr %52, align 1, !tbaa !141
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %51, %46, %41
  %57 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 7
  %58 = load i8, ptr %57, align 1, !tbaa !140
  %59 = and i8 %58, -2
  store i8 %59, ptr %57, align 1, !tbaa !140
  %60 = and i8 %43, -2
  store i8 %60, ptr %42, align 4, !tbaa !138
  %61 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 9
  %62 = load i8, ptr %61, align 1, !tbaa !141
  %63 = and i8 %62, -2
  store i8 %63, ptr %61, align 1, !tbaa !141
  br label %100

64:                                               ; preds = %51
  %65 = or disjoint i8 %48, 1
  store i8 %65, ptr %47, align 1, !tbaa !140
  %66 = or disjoint i8 %43, 1
  store i8 %66, ptr %42, align 4, !tbaa !138
  %67 = or disjoint i8 %53, 1
  store i8 %67, ptr %52, align 1, !tbaa !141
  br label %100

68:                                               ; preds = %40
  %69 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 7
  %70 = load i8, ptr %69, align 1, !tbaa !140
  %71 = xor i8 %70, 1
  store i8 %71, ptr %69, align 1, !tbaa !140
  br label %100

72:                                               ; preds = %40
  %73 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 9
  %74 = load i8, ptr %73, align 1, !tbaa !141
  %75 = xor i8 %74, 1
  store i8 %75, ptr %73, align 1, !tbaa !141
  br label %100

76:                                               ; preds = %36
  switch i16 %39, label %91 [
    i16 0, label %77
    i16 -1, label %87
  ]

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 7
  %79 = load i8, ptr %78, align 1, !tbaa !140
  %80 = or i8 %79, 1
  store i8 %80, ptr %78, align 1, !tbaa !140
  %81 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 8
  %82 = load i8, ptr %81, align 4, !tbaa !138
  %83 = or i8 %82, 1
  store i8 %83, ptr %81, align 4, !tbaa !138
  %84 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 9
  %85 = load i8, ptr %84, align 1, !tbaa !141
  %86 = or i8 %85, 1
  store i8 %86, ptr %84, align 1, !tbaa !141
  br label %100

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 7
  %89 = load i8, ptr %88, align 1, !tbaa !140
  %90 = or i8 %89, 1
  store i8 %90, ptr %88, align 1, !tbaa !140
  br label %100

91:                                               ; preds = %76
  %92 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 9
  %93 = load i8, ptr %92, align 1, !tbaa !141
  %94 = or i8 %93, 1
  store i8 %94, ptr %92, align 1, !tbaa !141
  br label %100

95:                                               ; preds = %25, %22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %96 = tail call ptr @ANIM_editkeyframes_select(i16 noundef signext %23) #7
  %97 = getelementptr inbounds %struct.tNearestVertInfo, ptr %8, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !136
  %99 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %98, ptr noundef null, ptr noundef %96, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  br label %100

100:                                              ; preds = %32, %77, %91, %87, %64, %56, %72, %68, %95
  %101 = phi ptr [ %34, %56 ], [ %34, %64 ], [ %34, %68 ], [ %34, %72 ], [ %34, %77 ], [ %34, %87 ], [ %34, %91 ], [ null, %95 ], [ null, %32 ]
  %102 = getelementptr inbounds %struct.SpaceIpo, ptr %7, i64 0, i32 11
  %103 = load i32, ptr %102, align 4, !tbaa !72
  %104 = and i32 %103, 32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %148

106:                                              ; preds = %100
  %107 = icmp eq ptr %101, null
  br i1 %107, label %135, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.BezTriple, ptr %101, i64 0, i32 8
  %110 = load i8, ptr %109, align 4, !tbaa !138
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.BezTriple, ptr %101, i64 0, i32 7
  %115 = load i8, ptr %114, align 1, !tbaa !140
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.BezTriple, ptr %101, i64 0, i32 9
  %120 = load i8, ptr %119, align 1, !tbaa !141
  %121 = and i8 %120, 1
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %118, %113, %108
  %124 = getelementptr inbounds %struct.tNearestVertInfo, ptr %8, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !136
  %126 = getelementptr inbounds %struct.FCurve, ptr %125, i64 0, i32 9
  %127 = load i16, ptr %126, align 8, !tbaa !54
  %128 = or i16 %127, 2
  store i16 %128, ptr %126, align 8, !tbaa !54
  br label %148

129:                                              ; preds = %118
  %130 = getelementptr inbounds %struct.tNearestVertInfo, ptr %8, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !136
  %132 = getelementptr inbounds %struct.FCurve, ptr %131, i64 0, i32 9
  %133 = load i16, ptr %132, align 8, !tbaa !54
  %134 = and i16 %133, -3
  store i16 %134, ptr %132, align 8, !tbaa !54
  br label %148

135:                                              ; preds = %106
  switch i16 %23, label %148 [
    i16 8, label %136
    i16 2, label %142
  ]

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.tNearestVertInfo, ptr %8, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !136
  %139 = getelementptr inbounds %struct.FCurve, ptr %138, i64 0, i32 9
  %140 = load i16, ptr %139, align 8, !tbaa !54
  %141 = xor i16 %140, 2
  store i16 %141, ptr %139, align 8, !tbaa !54
  br label %148

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.tNearestVertInfo, ptr %8, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !136
  %145 = getelementptr inbounds %struct.FCurve, ptr %144, i64 0, i32 9
  %146 = load i16, ptr %145, align 8, !tbaa !54
  %147 = or i16 %146, 2
  store i16 %147, ptr %145, align 8, !tbaa !54
  br label %148

148:                                              ; preds = %135, %129, %123, %142, %136, %100
  %149 = getelementptr inbounds %struct.tNearestVertInfo, ptr %8, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !136
  %151 = getelementptr inbounds %struct.FCurve, ptr %150, i64 0, i32 9
  %152 = load i16, ptr %151, align 8, !tbaa !54
  %153 = and i16 %152, 2
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %148
  %156 = load ptr, ptr %0, align 8, !tbaa !82
  %157 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %158 = load i16, ptr %157, align 8, !tbaa !83
  %159 = sext i16 %158 to i32
  call void @ANIM_set_active_channel(ptr noundef nonnull %0, ptr noundef %156, i32 noundef %159, i32 noundef 2053, ptr noundef %150, i32 noundef 7) #7
  br label %160

160:                                              ; preds = %155, %148
  %161 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %161(ptr noundef nonnull %8) #7
  br label %162

162:                                              ; preds = %4, %160
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_nearest_fcurve_vert(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !114
  %9 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.SpaceIpo, ptr %6, i64 0, i32 11
  %11 = load i32, ptr %10, align 4, !tbaa !72
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 2053, i32 2117
  %15 = tail call signext i16 @ANIM_get_normalization_flags(ptr noundef %0) #7
  %16 = load ptr, ptr %0, align 8, !tbaa !82
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %18 = load i16, ptr %17, align 8, !tbaa !83
  %19 = sext i16 %18 to i32
  %20 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %14, ptr noundef %16, i32 noundef %19) #7
  %21 = load ptr, ptr %3, align 8, !tbaa !57
  %22 = icmp eq ptr %21, null
  br i1 %22, label %100, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  br label %25

25:                                               ; preds = %23, %97
  %26 = phi ptr [ %21, %23 ], [ %98, %97 ]
  %27 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !84
  %29 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %26) #7
  %30 = load ptr, ptr %24, align 8, !tbaa !88
  %31 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !127
  %33 = call float @ANIM_unit_mapping_get_factor(ptr noundef %30, ptr noundef %32, ptr noundef %28, i16 noundef signext %15) #7
  %34 = icmp eq ptr %29, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %25
  %36 = load ptr, ptr %27, align 8, !tbaa !84
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %29, ptr noundef %36, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  br label %37

37:                                               ; preds = %35, %25
  %38 = getelementptr inbounds %struct.FCurve, ptr %28, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !133
  %40 = icmp eq ptr %39, null
  br i1 %40, label %94, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.FCurve, ptr %28, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !134
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %94, label %45

45:                                               ; preds = %41, %89
  %46 = phi i32 [ %90, %89 ], [ 0, %41 ]
  %47 = phi ptr [ %48, %89 ], [ null, %41 ]
  %48 = phi ptr [ %91, %89 ], [ %39, %41 ]
  call fastcc void @nearest_fcurve_vert_store(ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef %28, ptr noundef nonnull %48, i16 noundef signext 0, ptr noundef %1, float noundef %33)
  %49 = load i32, ptr %10, align 4, !tbaa !72
  %50 = and i32 %49, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %89

52:                                               ; preds = %45
  %53 = and i32 %49, 512
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.BezTriple, ptr %48, i64 0, i32 8
  %57 = load i8, ptr %56, align 4, !tbaa !138
  %58 = and i8 %57, 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.BezTriple, ptr %48, i64 0, i32 7
  %62 = load i8, ptr %61, align 1, !tbaa !140
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.BezTriple, ptr %48, i64 0, i32 9
  %67 = load i8, ptr %66, align 1, !tbaa !141
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %89, label %70

70:                                               ; preds = %65, %60, %55, %52
  %71 = load i32, ptr %42, align 8, !tbaa !134
  %72 = icmp ugt i32 %71, 1
  br i1 %72, label %73, label %89

73:                                               ; preds = %70
  %74 = icmp eq ptr %47, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.BezTriple, ptr %48, i64 0, i32 4
  %77 = load i8, ptr %76, align 4, !tbaa !142
  %78 = icmp eq i8 %77, 2
  br i1 %78, label %83, label %84

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.BezTriple, ptr %47, i64 0, i32 4
  %81 = load i8, ptr %80, align 4, !tbaa !142
  %82 = icmp eq i8 %81, 2
  br i1 %82, label %83, label %84

83:                                               ; preds = %79, %75
  call fastcc void @nearest_fcurve_vert_store(ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef %28, ptr noundef nonnull %48, i16 noundef signext -1, ptr noundef %1, float noundef %33)
  br label %84

84:                                               ; preds = %83, %79, %75
  %85 = getelementptr inbounds %struct.BezTriple, ptr %48, i64 0, i32 4
  %86 = load i8, ptr %85, align 4, !tbaa !142
  %87 = icmp eq i8 %86, 2
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  call fastcc void @nearest_fcurve_vert_store(ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef %28, ptr noundef nonnull %48, i16 noundef signext 1, ptr noundef %1, float noundef %33)
  br label %89

89:                                               ; preds = %45, %65, %88, %84, %70
  %90 = add nuw nsw i32 %46, 1
  %91 = getelementptr inbounds %struct.BezTriple, ptr %48, i64 1
  %92 = load i32, ptr %42, align 8, !tbaa !134
  %93 = icmp ult i32 %90, %92
  br i1 %93, label %45, label %94, !llvm.loop !143

94:                                               ; preds = %89, %41, %37
  br i1 %34, label %97, label %95

95:                                               ; preds = %94
  %96 = load ptr, ptr %27, align 8, !tbaa !84
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %29, ptr noundef %96, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  br label %97

97:                                               ; preds = %95, %94
  %98 = load ptr, ptr %26, align 8, !tbaa !57
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %25, !llvm.loop !144

100:                                              ; preds = %97, %2
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  %101 = load ptr, ptr %4, align 8, !tbaa !145
  %102 = icmp eq ptr %101, null
  br i1 %102, label %124, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !146
  %106 = icmp eq ptr %101, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %4, align 8, !tbaa !57
  %109 = icmp eq ptr %108, null
  br i1 %109, label %122, label %112

110:                                              ; preds = %103
  %111 = call ptr @BLI_pophead(ptr noundef nonnull %4) #7
  br label %124

112:                                              ; preds = %107, %116
  %113 = phi ptr [ %120, %116 ], [ %108, %107 ]
  %114 = phi i1 [ %119, %116 ], [ true, %107 ]
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %113) #7
  br label %124

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.tNearestVertInfo, ptr %113, i64 0, i32 6
  %118 = load i16, ptr %117, align 2, !tbaa !147
  %119 = icmp eq i16 %118, 0
  %120 = load ptr, ptr %113, align 8, !tbaa !57
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %112, !llvm.loop !148

122:                                              ; preds = %116, %107
  %123 = call ptr @BLI_pophead(ptr noundef nonnull %4) #7
  br label %124

124:                                              ; preds = %100, %110, %115, %122
  %125 = phi ptr [ %111, %110 ], [ %113, %115 ], [ %123, %122 ], [ null, %100 ]
  call void @BLI_freelistN(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  ret ptr %125
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nearest_fcurve_vert_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, ptr nocapture noundef readonly %5, float noundef %6) unnamed_addr #0 {
  %8 = alloca [2 x i32], align 4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %99, label %10

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  %11 = sext i16 %4 to i64
  %12 = add nsw i64 %11, 1
  %13 = and i64 %12, 4294967295
  %14 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !78
  %16 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 %13, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !78
  %18 = fmul float %17, %6
  %19 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  %20 = call zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef %1, float noundef %15, float noundef %18, ptr noundef nonnull %8, ptr noundef nonnull %19) #7
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %98, label %22

22:                                               ; preds = %10
  %23 = load i32, ptr %5, align 4, !tbaa !115
  %24 = load i32, ptr %8, align 4, !tbaa !115
  %25 = sub nsw i32 %23, %24
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds i32, ptr %5, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !115
  %29 = load i32, ptr %19, align 4, !tbaa !115
  %30 = sub nsw i32 %28, %29
  %31 = sitofp i32 %30 to float
  %32 = fmul float %31, %31
  %33 = call float @llvm.fmuladd.f32(float %26, float %26, float %32)
  %34 = call float @sqrtf(float noundef %33) #7
  %35 = fptosi float %34 to i32
  %36 = icmp slt i32 %35, 11
  br i1 %36, label %37, label %98

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !146
  %40 = icmp eq ptr %39, null
  br i1 %40, label %69, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.tNearestVertInfo, ptr %39, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !136
  %44 = icmp eq ptr %43, %2
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.tNearestVertInfo, ptr %39, i64 0, i32 7
  %47 = load i32, ptr %46, align 4, !tbaa !149
  %48 = icmp sgt i32 %47, %35
  br i1 %48, label %68, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.tNearestVertInfo, ptr %39, i64 0, i32 6
  %51 = load i16, ptr %50, align 2, !tbaa !147
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %55 = load i8, ptr %54, align 4, !tbaa !138
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  %60 = load i8, ptr %59, align 1, !tbaa !140
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  %65 = load i8, ptr %64, align 1, !tbaa !141
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63, %58, %53, %45
  br label %69

69:                                               ; preds = %49, %63, %68, %41, %37
  %70 = phi i1 [ false, %68 ], [ true, %63 ], [ true, %49 ], [ true, %41 ], [ true, %37 ]
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %73 = call ptr %72(i64 noundef 48, ptr noundef nonnull @.str.69) #7
  br label %74

74:                                               ; preds = %71, %69
  %75 = phi ptr [ %73, %71 ], [ %39, %69 ]
  %76 = getelementptr inbounds %struct.tNearestVertInfo, ptr %75, i64 0, i32 2
  store ptr %2, ptr %76, align 8, !tbaa !136
  %77 = getelementptr inbounds %struct.tNearestVertInfo, ptr %75, i64 0, i32 3
  store ptr %3, ptr %77, align 8, !tbaa !118
  %78 = getelementptr inbounds %struct.tNearestVertInfo, ptr %75, i64 0, i32 5
  store i16 %4, ptr %78, align 8, !tbaa !137
  %79 = getelementptr inbounds %struct.tNearestVertInfo, ptr %75, i64 0, i32 7
  store i32 %35, ptr %79, align 4, !tbaa !149
  %80 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %81 = load i8, ptr %80, align 4, !tbaa !138
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  %86 = load i8, ptr %85, align 1, !tbaa !140
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  %91 = load i8, ptr %90, align 1, !tbaa !141
  %92 = and i8 %91, 1
  %93 = zext nneg i8 %92 to i16
  br label %94

94:                                               ; preds = %89, %84, %74
  %95 = phi i16 [ 1, %84 ], [ 1, %74 ], [ %93, %89 ]
  %96 = getelementptr inbounds %struct.tNearestVertInfo, ptr %75, i64 0, i32 6
  store i16 %95, ptr %96, align 2, !tbaa !147
  br i1 %70, label %97, label %98

97:                                               ; preds = %94
  call void @BLI_addtail(ptr noundef %0, ptr noundef %75) #7
  br label %98

98:                                               ; preds = %94, %97, %22, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %99

99:                                               ; preds = %7, %98
  ret void
}

declare zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #1

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ANIM_deselect_anim_channels(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare void @ANIM_set_active_channel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!35, !36, i64 88}
!48 = !{!35, !36, i64 104}
!49 = !{!50, !36, i64 112}
!50 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!51 = !{!52, !36, i64 16}
!52 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !53, i64 24, !53, i64 28, !53, i64 32, !41, i64 36, !41, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!53 = !{!"int", !37, i64 0}
!54 = !{!55, !41, i64 72}
!55 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 48, !36, i64 56, !53, i64 64, !56, i64 68, !41, i64 72, !41, i64 74, !53, i64 76, !36, i64 80, !53, i64 88, !37, i64 92, !56, i64 104, !56, i64 108}
!56 = !{!"float", !37, i64 0}
!57 = !{!36, !36, i64 0}
!58 = !{!35, !36, i64 48}
!59 = !{!35, !36, i64 64}
!60 = !{!35, !36, i64 56}
!61 = !{!62, !53, i64 4}
!62 = !{!"rcti", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!63 = !{!62, !53, i64 0}
!64 = !{!62, !53, i64 12}
!65 = !{!62, !53, i64 8}
!66 = !{!67, !36, i64 8}
!67 = !{!"KeyframeEdit_LassoData", !36, i64 0, !36, i64 8, !36, i64 16, !53, i64 24}
!68 = !{!67, !36, i64 16}
!69 = !{!70, !41, i64 12}
!70 = !{!"bAnimContext", !36, i64 0, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!71 = !{!70, !36, i64 24}
!72 = !{!73, !53, i64 244}
!73 = !{!"SpaceIpo", !36, i64 0, !36, i64 8, !39, i64 16, !53, i64 32, !56, i64 36, !37, i64 40, !74, i64 56, !36, i64 216, !39, i64 224, !41, i64 240, !41, i64 242, !53, i64 244, !56, i64 248, !53, i64 252}
!74 = !{!"View2D", !75, i64 0, !75, i64 16, !62, i64 32, !62, i64 48, !62, i64 64, !37, i64 80, !37, i64 88, !56, i64 96, !56, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!75 = !{!"rctf", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!76 = !{!67, !53, i64 24}
!77 = !{!70, !36, i64 64}
!78 = !{!56, !56, i64 0}
!79 = !{!80, !56, i64 32}
!80 = !{!"KeyframeEditData", !39, i64 0, !36, i64 16, !36, i64 24, !56, i64 32, !56, i64 36, !53, i64 40, !53, i64 44, !36, i64 48, !53, i64 56, !41, i64 60, !41, i64 62}
!81 = !{!80, !56, i64 36}
!82 = !{!70, !36, i64 0}
!83 = !{!70, !41, i64 8}
!84 = !{!52, !36, i64 40}
!85 = distinct !{!85, !86, !87}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !{!70, !36, i64 48}
!89 = distinct !{!89, !86, !87}
!90 = !{!91, !53, i64 680}
!91 = !{!"Scene", !92, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !53, i64 232, !53, i64 236, !53, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !93, i64 280, !100, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !53, i64 4380, !39, i64 4384, !101, i64 4400, !102, i64 4416, !105, i64 4600, !36, i64 4608, !106, i64 4616, !36, i64 4640, !107, i64 4648, !107, i64 4656, !95, i64 4664, !96, i64 4824, !108, i64 4888, !36, i64 4952}
!92 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !53, i64 100, !53, i64 104, !53, i64 108, !36, i64 112}
!93 = !{!"RenderData", !94, i64 0, !36, i64 248, !36, i64 256, !97, i64 264, !98, i64 328, !53, i64 400, !53, i64 404, !53, i64 408, !56, i64 412, !53, i64 416, !53, i64 420, !53, i64 424, !53, i64 428, !41, i64 432, !41, i64 434, !56, i64 436, !56, i64 440, !56, i64 444, !56, i64 448, !56, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !53, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !53, i64 484, !53, i64 488, !41, i64 492, !41, i64 494, !53, i64 496, !53, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !53, i64 516, !53, i64 520, !53, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !75, i64 544, !75, i64 560, !62, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !56, i64 612, !56, i64 616, !56, i64 620, !56, i64 624, !53, i64 628, !56, i64 632, !56, i64 636, !56, i64 640, !56, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !56, i64 660, !56, i64 664, !41, i64 668, !41, i64 670, !56, i64 672, !56, i64 676, !37, i64 680, !53, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !53, i64 2520, !41, i64 2524, !41, i64 2526, !56, i64 2528, !56, i64 2532, !41, i64 2536, !41, i64 2538, !56, i64 2540, !41, i64 2544, !41, i64 2546, !53, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !56, i64 2560, !56, i64 2564, !36, i64 2568, !53, i64 2576, !56, i64 2580, !37, i64 2584, !99, i64 2616, !53, i64 3976, !53, i64 3980}
!94 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !56, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !95, i64 24, !96, i64 184}
!95 = !{!"ColorManagedViewSettings", !53, i64 0, !53, i64 4, !37, i64 8, !37, i64 72, !56, i64 136, !56, i64 140, !36, i64 144, !36, i64 152}
!96 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!97 = !{!"QuicktimeCodecSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !41, i64 48, !41, i64 50, !53, i64 52, !53, i64 56, !53, i64 60}
!98 = !{!"FFMpegCodecData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !56, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !36, i64 64}
!99 = !{!"BakeData", !94, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !56, i64 1280, !56, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!100 = !{!"AudioData", !53, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !53, i64 16, !41, i64 20, !41, i64 22, !56, i64 24, !56, i64 28}
!101 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!102 = !{!"GameData", !101, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !103, i64 40, !41, i64 64, !41, i64 66, !56, i64 68, !104, i64 72, !56, i64 128, !56, i64 132, !53, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180}
!103 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !56, i64 8, !56, i64 12, !36, i64 16}
!104 = !{!"RecastData", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !53, i64 40, !56, i64 44, !56, i64 48, !41, i64 52, !41, i64 54}
!105 = !{!"UnitSettings", !56, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!106 = !{!"PhysicsSettings", !37, i64 0, !53, i64 12, !53, i64 16, !53, i64 20}
!107 = !{!"long", !37, i64 0}
!108 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!109 = !{!110, !56, i64 16}
!110 = !{!"CfraElem", !36, i64 0, !36, i64 8, !56, i64 16, !53, i64 20}
!111 = distinct !{!111, !86, !87}
!112 = distinct !{!112, !86, !87}
!113 = distinct !{!113, !86, !87}
!114 = !{!70, !36, i64 32}
!115 = !{!53, !53, i64 0}
!116 = !{i32 2, i32 5}
!117 = distinct !{!117, !86, !87}
!118 = !{!119, !36, i64 24}
!119 = !{!"tNearestVertInfo", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 42, !53, i64 44}
!120 = !{!119, !36, i64 32}
!121 = distinct !{!121, !86, !87}
!122 = distinct !{!122, !86, !87}
!123 = distinct !{!123, !86, !87}
!124 = !{!67, !36, i64 0}
!125 = !{!80, !36, i64 24}
!126 = !{!80, !41, i64 62}
!127 = !{!52, !36, i64 48}
!128 = !{!75, !56, i64 0}
!129 = !{!75, !56, i64 4}
!130 = !{!75, !56, i64 8}
!131 = !{!75, !56, i64 12}
!132 = distinct !{!132, !86, !87}
!133 = !{!55, !36, i64 48}
!134 = !{!55, !53, i64 64}
!135 = distinct !{!135, !86, !87}
!136 = !{!119, !36, i64 16}
!137 = !{!119, !41, i64 40}
!138 = !{!139, !37, i64 52}
!139 = !{!"BezTriple", !37, i64 0, !56, i64 36, !56, i64 40, !56, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !56, i64 56, !56, i64 60, !56, i64 64, !37, i64 68}
!140 = !{!139, !37, i64 51}
!141 = !{!139, !37, i64 53}
!142 = !{!139, !37, i64 48}
!143 = distinct !{!143, !86, !87}
!144 = distinct !{!144, !86, !87}
!145 = !{!39, !36, i64 0}
!146 = !{!39, !36, i64 8}
!147 = !{!119, !41, i64 42}
!148 = distinct !{!148, !86, !87}
!149 = !{!119, !53, i64 44}
