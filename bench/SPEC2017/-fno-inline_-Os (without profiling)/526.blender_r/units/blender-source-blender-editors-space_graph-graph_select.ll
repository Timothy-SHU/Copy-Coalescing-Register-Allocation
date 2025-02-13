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
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
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
%struct.KeyframeEditData = type { %struct.ListBase, ptr, ptr, float, float, i32, i32, ptr, i32, i16, i16 }
%struct.CfraElem = type { ptr, ptr, float, i32 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GRAPH_OT_select_all_toggle(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_deselectall_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graphkeys_deselectall_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = call ptr @get_active_fcurve_channel(ptr noundef nonnull %3) #8
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.3) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  call fastcc void @deselect_graph_keys(ptr noundef nonnull %3, i16 noundef signext 0, i16 noundef signext 8, i16 noundef signext 1) #10
  br label %14

13:                                               ; preds = %6
  call fastcc void @deselect_graph_keys(ptr noundef nonnull %3, i16 noundef signext 1, i16 noundef signext 2, i16 noundef signext 1) #10
  br label %14

14:                                               ; preds = %13, %12
  %15 = icmp eq ptr %7, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 9
  %20 = load i16, ptr %19, align 8, !tbaa !25
  %21 = or i16 %20, 6
  store i16 %21, ptr %19, align 8, !tbaa !25
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !28
  call void %22(ptr noundef nonnull %7) #8
  br label %23

23:                                               ; preds = %16, %14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #8
  br label %24

24:                                               ; preds = %2, %23
  %25 = phi i32 [ 4, %23 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %25
}

; Function Attrs: optsize
declare i32 @graphop_visible_keyframes_poll(ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GRAPH_OT_select_border(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_borderselect_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !30
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !31
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %9, align 8, !tbaa !17
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5) #8
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !19
  %14 = load ptr, ptr %10, align 8, !tbaa !18
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #8
  ret void
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graphkeys_borderselect_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.rcti, align 4
  %5 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.22) #8
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  call fastcc void @deselect_graph_keys(ptr noundef nonnull %3, i16 noundef signext 1, i16 noundef signext 4, i16 noundef signext 1) #10
  br label %15

15:                                               ; preds = %14, %8
  %16 = load ptr, ptr %9, align 8, !tbaa !20
  %17 = call i32 @RNA_int_get(ptr noundef %16, ptr noundef nonnull @.str.52) #8
  %18 = icmp eq i32 %17, 3
  %19 = select i1 %18, i16 2, i16 4
  %20 = load ptr, ptr %9, align 8, !tbaa !20
  %21 = call i32 @RNA_boolean_get(ptr noundef %20, ptr noundef nonnull @.str.11) #8
  %22 = trunc i32 %21 to i8
  call void @WM_operator_properties_border_to_rcti(ptr noundef nonnull %1, ptr noundef nonnull %4) #8
  %23 = load ptr, ptr %9, align 8, !tbaa !20
  %24 = call i32 @RNA_boolean_get(ptr noundef %23, ptr noundef nonnull @.str.9) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %15
  %27 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %4) #10
  %28 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %4) #10
  %29 = icmp slt i32 %27, %28
  %30 = select i1 %29, i16 5, i16 2
  br label %31

31:                                               ; preds = %15, %26
  %32 = phi i16 [ %30, %26 ], [ 6, %15 ]
  call void @BLI_rctf_rcti_copy(ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  call fastcc void @borderselect_graphkeys(ptr noundef nonnull %3, ptr noundef nonnull %5, i16 noundef signext %32, i16 noundef signext %19, i8 noundef zeroext %22, ptr noundef null) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #8
  br label %33

33:                                               ; preds = %2, %31
  %34 = phi i32 [ 4, %31 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %34
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GRAPH_OT_select_lasso(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lasso_invoke, ptr %4, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lasso_modal, ptr %5, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_lassoselect_exec, ptr %6, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_lasso_cancel, ptr %8, align 8, !tbaa !31
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = tail call ptr @RNA_def_collection_runtime(ptr noundef %11, ptr noundef nonnull @.str.17, ptr noundef nonnull @RNA_OperatorMousePath, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5) #8
  %13 = load ptr, ptr %10, align 8, !tbaa !18
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #8
  %15 = load ptr, ptr %10, align 8, !tbaa !18
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.22, i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #8
  ret void
}

; Function Attrs: optsize
declare i32 @WM_gesture_lasso_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare i32 @WM_gesture_lasso_modal(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graphkeys_lassoselect_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.rcti, align 4
  %5 = alloca %struct.rctf, align 4
  %6 = alloca %struct.KeyframeEdit_LassoData, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  %7 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %6, i64 0, i32 1
  store ptr %5, ptr %10, align 8, !tbaa !32
  %11 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %6, i64 0, i32 3
  %12 = call ptr @WM_gesture_lasso_path_to_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #8
  %13 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %6, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !34
  %14 = icmp eq ptr %12, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !20
  %18 = call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.22) #8
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  call fastcc void @deselect_graph_keys(ptr noundef nonnull %3, i16 noundef signext 1, i16 noundef signext 4, i16 noundef signext 1) #10
  br label %22

22:                                               ; preds = %21, %15
  %23 = load ptr, ptr %16, align 8, !tbaa !20
  %24 = call i32 @RNA_boolean_get(ptr noundef %23, ptr noundef nonnull @.str.19) #8
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i16 2, i16 4
  %27 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 3
  %28 = load i16, ptr %27, align 4, !tbaa !35
  %29 = icmp eq i16 %28, 2
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !37
  %33 = getelementptr inbounds %struct.SpaceIpo, ptr %32, i64 0, i32 11
  %34 = load i32, ptr %33, align 4, !tbaa !38
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
  %44 = load ptr, ptr %13, align 8, !tbaa !34
  %45 = load i32, ptr %11, align 8, !tbaa !43
  call void @BLI_lasso_boundbox(ptr noundef nonnull %4, ptr noundef %44, i32 noundef %45) #8
  call void @BLI_rctf_rcti_copy(ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  call fastcc void @borderselect_graphkeys(ptr noundef nonnull %3, ptr noundef nonnull %5, i16 noundef signext 7, i16 noundef signext %26, i8 noundef zeroext %43, ptr noundef nonnull %6) #10
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !28
  %47 = load ptr, ptr %13, align 8, !tbaa !34
  call void %46(ptr noundef %47) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #8
  br label %48

48:                                               ; preds = %9, %2, %41
  %49 = phi i32 [ 4, %41 ], [ 2, %2 ], [ 2, %9 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %49
}

; Function Attrs: optsize
declare void @WM_gesture_lasso_cancel(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GRAPH_OT_select_column(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_columnselect_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.27, ptr noundef nonnull @prop_column_select_types, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.5) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graphkeys_columnselect_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.27) #8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  call fastcc void @markers_selectkeys_between(ptr noundef nonnull %3) #10
  br label %15

13:                                               ; preds = %6
  %14 = trunc i32 %9 to i16
  call fastcc void @columnselect_graph_keys(ptr noundef nonnull %3, i16 noundef signext %14) #10
  br label %15

15:                                               ; preds = %13, %12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #8
  br label %16

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 4, %15 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_select_linked(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.30, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_select_linked_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graphkeys_select_linked_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = tail call ptr @ANIM_editkeyframes_ok(i16 noundef signext 3) #8
  %6 = tail call ptr @ANIM_editkeyframes_select(i16 noundef signext 2) #8
  %7 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !45
  %13 = sext i16 %12 to i32
  %14 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2053, ptr noundef %10, i32 noundef %13) #8
  %15 = load ptr, ptr %4, align 8, !tbaa !28
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %9, %25
  %18 = phi ptr [ %26, %25 ], [ %15, %9 ]
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %20, ptr noundef null, ptr noundef %5, ptr noundef null) #8
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %20, ptr noundef null, ptr noundef %6, ptr noundef null) #8
  br label %25

25:                                               ; preds = %23, %17
  %26 = load ptr, ptr %18, align 8, !tbaa !28
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %17, !llvm.loop !47

28:                                               ; preds = %25, %9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #8
  br label %29

29:                                               ; preds = %2, %28
  %30 = phi i32 [ 4, %28 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_select_more(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.33, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_select_more_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graphkeys_select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call fastcc void @select_moreless_graph_keys(ptr noundef nonnull %3, i16 noundef signext 0) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #8
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @GRAPH_OT_select_less(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.36, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_select_less_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graphkeys_select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call fastcc void @select_moreless_graph_keys(ptr noundef nonnull %3, i16 noundef signext 1) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #8
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GRAPH_OT_select_leftright(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.39, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @graphkeys_select_leftright_invoke, ptr %4, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphkeys_select_leftright_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.27, ptr noundef nonnull @prop_graphkeys_leftright_select_types, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.5) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !19
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268435456) #8
  %12 = load ptr, ptr %8, align 8, !tbaa !18
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.5) #8
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graphkeys_select_leftright_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.27) #8
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %3
  %11 = and i32 %7, 65535
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !51
  %21 = sitofp i32 %20 to float
  %22 = call float @UI_view2d_region_to_view_x(ptr noundef nonnull %18, float noundef %21) #8
  %23 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 22, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !52
  %25 = sitofp i32 %24 to float
  %26 = fcmp olt float %22, %25
  %27 = load ptr, ptr %5, align 8, !tbaa !20
  %28 = select i1 %26, i32 1, i32 2
  call void @RNA_enum_set(ptr noundef %27, ptr noundef nonnull @.str.27, i32 noundef %28) #8
  br label %29

29:                                               ; preds = %13, %10
  %30 = call i32 @graphkeys_select_leftright_exec(ptr noundef %0, ptr noundef nonnull %1) #10, !range !71
  br label %31

31:                                               ; preds = %3, %29
  %32 = phi i32 [ %30, %29 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #9
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graphkeys_select_leftright_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.27) #8
  %7 = trunc i32 %6 to i16
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !tbaa !20
  %12 = call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.22) #8
  %13 = and i32 %6, 65535
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = icmp eq i32 %12, 0
  %17 = select i1 %16, i16 1, i16 8
  call fastcc void @graphkeys_select_leftright(ptr noundef nonnull %3, i16 noundef signext %7, i16 noundef signext %17) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239992838, ptr noundef null) #8
  br label %18

18:                                               ; preds = %10, %2, %15
  %19 = phi i32 [ 4, %15 ], [ 2, %2 ], [ 2, %10 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %19
}

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GRAPH_OT_clickselect(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @graphkeys_clickselect_invoke, ptr %4, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphop_visible_keyframes_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.45) #8
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !18
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.46, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #8
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #8
  %12 = load ptr, ptr %7, align 8, !tbaa !18
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.49, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graphkeys_clickselect_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #9
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.22) #8
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i16 1, i16 8
  %13 = load ptr, ptr %8, align 8, !tbaa !20
  %14 = call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.46) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call fastcc void @graphkeys_mselect_column(ptr noundef nonnull %4, ptr noundef nonnull %17, i16 noundef signext %12) #10
  br label %25

18:                                               ; preds = %7
  %19 = load ptr, ptr %8, align 8, !tbaa !20
  %20 = call i32 @RNA_boolean_get(ptr noundef %19, ptr noundef nonnull @.str.49) #8
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  br i1 %21, label %24, label %23

23:                                               ; preds = %18
  call fastcc void @mouse_graph_keys(ptr noundef nonnull %4, ptr noundef nonnull %22, i16 noundef signext %12, i16 noundef signext 1) #10
  br label %25

24:                                               ; preds = %18
  call fastcc void @mouse_graph_keys(ptr noundef nonnull %4, ptr noundef nonnull %22, i16 noundef signext %12, i16 noundef signext 0) #10
  br label %25

25:                                               ; preds = %23, %24, %16
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239992838, ptr noundef null) #8
  br label %26

26:                                               ; preds = %3, %25
  %27 = phi i32 [ 12, %25 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #9
  ret i32 %27
}

; Function Attrs: optsize
declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_active_fcurve_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @deselect_graph_keys(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  %9 = load ptr, ptr %0, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !45
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 2053, ptr noundef %9, i32 noundef %12) #8
  %14 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 3) #8
  %15 = icmp eq i16 %1, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %4, %20
  %17 = phi ptr [ %18, %20 ], [ %5, %4 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %6, ptr noundef %22, ptr noundef null, ptr noundef %14, ptr noundef null) #8
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %16, label %25, !llvm.loop !72

25:                                               ; preds = %20, %16, %4
  %26 = phi i16 [ %2, %4 ], [ 4, %20 ], [ %2, %16 ]
  %27 = call ptr @ANIM_editkeyframes_select(i16 noundef signext %26) #8
  %28 = load ptr, ptr %5, align 8, !tbaa !28
  %29 = icmp eq ptr %28, null
  br i1 %29, label %57, label %30

30:                                               ; preds = %25
  %31 = icmp eq i16 %3, 0
  %32 = getelementptr inbounds %struct.SpaceIpo, ptr %8, i64 0, i32 11
  %33 = icmp eq i16 %26, 4
  br label %34

34:                                               ; preds = %30, %54
  %35 = phi ptr [ %28, %30 ], [ %55, %54 ]
  %36 = getelementptr inbounds %struct.bAnimListElem, ptr %35, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %6, ptr noundef %37, ptr noundef null, ptr noundef %27, ptr noundef null) #8
  br i1 %31, label %54, label %39

39:                                               ; preds = %34
  %40 = load i32, ptr %32, align 4, !tbaa !38
  %41 = and i32 %40, 32
  %42 = icmp eq i32 %41, 0
  %43 = getelementptr inbounds %struct.FCurve, ptr %37, i64 0, i32 9
  %44 = load i16, ptr %43, align 8, !tbaa !25
  br i1 %42, label %45, label %50

45:                                               ; preds = %39
  br i1 %33, label %46, label %48

46:                                               ; preds = %45
  %47 = and i16 %44, -3
  br label %50

48:                                               ; preds = %45
  %49 = or i16 %44, 2
  br label %50

50:                                               ; preds = %39, %46, %48
  %51 = phi i16 [ %47, %46 ], [ %49, %48 ], [ %44, %39 ]
  %52 = getelementptr inbounds %struct.FCurve, ptr %37, i64 0, i32 9
  %53 = and i16 %51, -5
  store i16 %53, ptr %52, align 8, !tbaa !25
  br label %54

54:                                               ; preds = %50, %34
  %55 = load ptr, ptr %35, align 8, !tbaa !28
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %34, !llvm.loop !73

57:                                               ; preds = %54, %25
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ANIM_editkeyframes_ok(i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ANIM_editkeyframes_select(i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !74
  %4 = load i32, ptr %0, align 4, !tbaa !75
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !76
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !77
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare void @BLI_rctf_rcti_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @borderselect_graphkeys(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3, i8 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca %struct.KeyframeEditData, align 8
  %9 = alloca %struct.rctf, align 8
  %10 = alloca %struct.rctf, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9
  call void @UI_view2d_region_to_view_rctf(ptr noundef nonnull %15, ptr noundef %1, ptr noundef nonnull %9) #8
  %16 = load ptr, ptr %0, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %18 = load i16, ptr %17, align 8, !tbaa !45
  %19 = sext i16 %18 to i32
  %20 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %7, i32 noundef 2053, ptr noundef %16, i32 noundef %19) #8
  %21 = call ptr @ANIM_editkeyframes_select(i16 noundef signext %3) #8
  %22 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  %23 = icmp eq ptr %5, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store ptr %10, ptr %5, align 8, !tbaa !78
  br label %25

25:                                               ; preds = %6, %24
  %26 = phi ptr [ %5, %24 ], [ %10, %6 ]
  %27 = getelementptr inbounds %struct.KeyframeEditData, ptr %8, i64 0, i32 2
  store ptr %26, ptr %27, align 8
  %28 = icmp eq i8 %4, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.KeyframeEditData, ptr %8, i64 0, i32 10
  store i16 1, ptr %30, align 2, !tbaa !79
  br label %31

31:                                               ; preds = %25, %29
  %32 = phi i16 [ 0, %29 ], [ 2, %25 ]
  %33 = call signext i16 @ANIM_get_normalization_flags(ptr noundef nonnull %0) #8
  %34 = or i16 %33, %32
  %35 = load ptr, ptr %7, align 8, !tbaa !28
  %36 = icmp eq ptr %35, null
  br i1 %36, label %85, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %39 = zext i1 %28 to i8
  %40 = getelementptr inbounds %struct.rctf, ptr %9, i64 0, i32 2
  %41 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 2
  %42 = icmp eq i16 %2, 5
  %43 = getelementptr inbounds %struct.KeyframeEditData, ptr %8, i64 0, i32 3
  %44 = getelementptr inbounds %struct.SpaceIpo, ptr %12, i64 0, i32 11
  %45 = icmp eq i16 %3, 2
  %46 = insertelement <2 x i1> poison, i1 %42, i64 0
  %47 = shufflevector <2 x i1> %46, <2 x i1> poison, <2 x i32> zeroinitializer
  br label %48

48:                                               ; preds = %37, %82
  %49 = phi ptr [ %35, %37 ], [ %83, %82 ]
  %50 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %49) #8
  %51 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = load ptr, ptr %38, align 8, !tbaa !49
  %54 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 9
  %55 = load ptr, ptr %54, align 8, !tbaa !81
  %56 = call float @ANIM_unit_mapping_get_factor(ptr noundef %53, ptr noundef %55, ptr noundef %52, i16 noundef signext %34) #8
  %57 = icmp eq ptr %50, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %48
  %59 = load ptr, ptr %51, align 8, !tbaa !46
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %50, ptr noundef %59, i8 noundef zeroext 0, i8 noundef zeroext %39) #8
  br label %60

60:                                               ; preds = %58, %48
  %61 = load <2 x float>, ptr %9, align 8, !tbaa !82
  store <2 x float> %61, ptr %10, align 8, !tbaa !82
  %62 = load <2 x float>, ptr %40, align 8, !tbaa !82
  %63 = insertelement <2 x float> poison, float %56, i64 0
  %64 = shufflevector <2 x float> %63, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = fdiv <2 x float> %62, %64
  store <2 x float> %65, ptr %41, align 8, !tbaa !82
  %66 = select <2 x i1> %47, <2 x float> %62, <2 x float> %61
  store <2 x float> %66, ptr %43, align 8, !tbaa !82
  %67 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %8, ptr noundef %52, ptr noundef null, ptr noundef %22, ptr noundef null) #8
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %60
  %70 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %8, ptr noundef %52, ptr noundef %22, ptr noundef %21, ptr noundef null) #8
  %71 = load i32, ptr %44, align 4, !tbaa !38
  %72 = and i32 %71, 32
  %73 = icmp eq i32 %72, 0
  %74 = and i1 %45, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.FCurve, ptr %52, i64 0, i32 9
  %77 = load i16, ptr %76, align 8, !tbaa !25
  %78 = or i16 %77, 2
  store i16 %78, ptr %76, align 8, !tbaa !25
  br label %79

79:                                               ; preds = %69, %75, %60
  br i1 %57, label %82, label %80

80:                                               ; preds = %79
  %81 = load ptr, ptr %51, align 8, !tbaa !46
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %50, ptr noundef %81, i8 noundef zeroext 1, i8 noundef zeroext %39) #8
  br label %82

82:                                               ; preds = %80, %79
  %83 = load ptr, ptr %49, align 8, !tbaa !28
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %48, !llvm.loop !83

85:                                               ; preds = %82, %31
  call void @ANIM_animdata_freelist(ptr noundef nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare signext i16 @ANIM_get_normalization_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ANIM_nla_mapping_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @ANIM_unit_mapping_get_factor(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ANIM_nla_mapping_apply_fcurve(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_gesture_lasso_path_to_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_lasso_boundbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @markers_selectkeys_between(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  %3 = alloca %struct.KeyframeEditData, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  call void @ED_markers_get_minmax(ptr noundef %7, i16 noundef signext 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %8 = load float, ptr %4, align 4, !tbaa !82
  %9 = fadd float %8, -5.000000e-01
  store float %9, ptr %4, align 4, !tbaa !82
  %10 = load float, ptr %5, align 4, !tbaa !82
  %11 = fadd float %10, 5.000000e-01
  store float %11, ptr %5, align 4, !tbaa !82
  %12 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 2) #8
  %13 = call ptr @ANIM_editkeyframes_select(i16 noundef signext 2) #8
  %14 = load float, ptr %4, align 4, !tbaa !82
  %15 = getelementptr inbounds %struct.KeyframeEditData, ptr %3, i64 0, i32 3
  store float %14, ptr %15, align 8, !tbaa !85
  %16 = load float, ptr %5, align 4, !tbaa !82
  %17 = getelementptr inbounds %struct.KeyframeEditData, ptr %3, i64 0, i32 4
  store float %16, ptr %17, align 4, !tbaa !86
  %18 = load ptr, ptr %0, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %20 = load i16, ptr %19, align 8, !tbaa !45
  %21 = sext i16 %20 to i32
  %22 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 2053, ptr noundef %18, i32 noundef %21) #8
  %23 = load ptr, ptr %2, align 8, !tbaa !28
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %1, %37
  %26 = phi ptr [ %38, %37 ], [ %23, %1 ]
  %27 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %26) #8
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  br i1 %28, label %35, label %31

31:                                               ; preds = %25
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %27, ptr noundef %30, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %32 = load ptr, ptr %29, align 8, !tbaa !46
  %33 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %3, ptr noundef %32, ptr noundef %12, ptr noundef %13, ptr noundef null) #8
  %34 = load ptr, ptr %29, align 8, !tbaa !46
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %27, ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %37

35:                                               ; preds = %25
  %36 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %3, ptr noundef %30, ptr noundef %12, ptr noundef %13, ptr noundef null) #8
  br label %37

37:                                               ; preds = %35, %31
  %38 = load ptr, ptr %26, align 8, !tbaa !28
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %25, !llvm.loop !87

40:                                               ; preds = %37, %1
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @columnselect_graph_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  switch i16 %1, label %65 [
    i16 0, label %7
    i16 1, label %23
    i16 2, label %30
  ]

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !45
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2053, ptr noundef %8, i32 noundef %11) #8
  %13 = load ptr, ptr %3, align 8, !tbaa !28
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %7, %15
  %16 = phi ptr [ %20, %15 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %18, ptr noundef null, ptr noundef nonnull @bezt_to_cfraelem, ptr noundef null) #8
  %20 = load ptr, ptr %16, align 8, !tbaa !28
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %15, !llvm.loop !88

22:                                               ; preds = %15, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  br label %33

23:                                               ; preds = %2
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !28
  %25 = tail call ptr %24(i64 noundef 24, ptr noundef nonnull @.str.53) #8
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %25) #8
  %26 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !52
  %28 = sitofp i32 %27 to float
  %29 = getelementptr inbounds %struct.CfraElem, ptr %25, i64 0, i32 2
  store float %28, ptr %29, align 8, !tbaa !89
  br label %33

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !84
  call void @ED_markers_make_cfra_list(ptr noundef %32, ptr noundef nonnull %4, i16 noundef signext 1) #8
  br label %33

33:                                               ; preds = %30, %23, %22
  %34 = call ptr @ANIM_editkeyframes_select(i16 noundef signext 2) #8
  %35 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 1) #8
  %36 = load ptr, ptr %0, align 8, !tbaa !44
  %37 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %38 = load i16, ptr %37, align 8, !tbaa !45
  %39 = sext i16 %38 to i32
  %40 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2053, ptr noundef %36, i32 noundef %39) #8
  %41 = load ptr, ptr %3, align 8, !tbaa !28
  %42 = icmp eq ptr %41, null
  br i1 %42, label %64, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  br label %48

45:                                               ; preds = %55, %48
  %46 = load ptr, ptr %49, align 8, !tbaa !28
  %47 = icmp eq ptr %46, null
  br i1 %47, label %64, label %48, !llvm.loop !91

48:                                               ; preds = %43, %45
  %49 = phi ptr [ %41, %43 ], [ %46, %45 ]
  %50 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %49) #8
  %51 = load ptr, ptr %4, align 8, !tbaa !28
  %52 = icmp eq ptr %51, null
  br i1 %52, label %45, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 8
  br label %55

55:                                               ; preds = %53, %55
  %56 = phi ptr [ %51, %53 ], [ %62, %55 ]
  %57 = getelementptr inbounds %struct.CfraElem, ptr %56, i64 0, i32 2
  %58 = load float, ptr %57, align 8, !tbaa !89
  %59 = call float @BKE_nla_tweakedit_remap(ptr noundef %50, float noundef %58, i16 noundef signext 1) #8
  store float %59, ptr %44, align 8, !tbaa !85
  %60 = load ptr, ptr %54, align 8, !tbaa !46
  %61 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %60, ptr noundef %35, ptr noundef %34, ptr noundef null) #8
  %62 = load ptr, ptr %56, align 8, !tbaa !28
  %63 = icmp eq ptr %62, null
  br i1 %63, label %45, label %55, !llvm.loop !92

64:                                               ; preds = %45, %33
  call void @BLI_freelistN(ptr noundef nonnull %4) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  br label %65

65:                                               ; preds = %2, %64
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret void
}

; Function Attrs: optsize
declare void @ED_markers_get_minmax(ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare signext i16 @bezt_to_cfraelem(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_markers_make_cfra_list(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BKE_nla_tweakedit_remap(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @select_moreless_graph_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %5 = tail call ptr @ANIM_editkeyframes_buildselmap(i16 noundef signext %1) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %6 = load ptr, ptr %0, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !45
  %9 = sext i16 %8 to i32
  %10 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2053, ptr noundef %6, i32 noundef %9) #8
  %11 = load ptr, ptr %3, align 8, !tbaa !28
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 2
  br label %15

15:                                               ; preds = %13, %32
  %16 = phi ptr [ %11, %13 ], [ %33, %32 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !28
  %24 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !94
  %26 = zext i32 %25 to i64
  %27 = call ptr %23(i64 noundef %26, ptr noundef nonnull @.str.62) #8
  store ptr %27, ptr %14, align 8, !tbaa !95
  %28 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef nonnull %18, ptr noundef null, ptr noundef %5, ptr noundef null) #8
  %29 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef nonnull %18, ptr noundef null, ptr noundef nonnull @bezt_selmap_flush, ptr noundef null) #8
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !28
  %31 = load ptr, ptr %14, align 8, !tbaa !95
  call void %30(ptr noundef %31) #8
  store ptr null, ptr %14, align 8, !tbaa !95
  br label %32

32:                                               ; preds = %15, %22
  %33 = load ptr, ptr %16, align 8, !tbaa !28
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %15, !llvm.loop !96

35:                                               ; preds = %32, %2
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret void
}

; Function Attrs: optsize
declare ptr @ANIM_editkeyframes_buildselmap(i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare signext i16 @bezt_selmap_flush(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare float @UI_view2d_region_to_view_x(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @graphkeys_select_leftright(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq i16 %2, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call fastcc void @deselect_graph_keys(ptr noundef nonnull %0, i16 noundef signext 0, i16 noundef signext 4, i16 noundef signext 0) #10
  br label %10

10:                                               ; preds = %9, %3
  %11 = phi i16 [ 2, %9 ], [ %2, %3 ]
  %12 = tail call ptr @ANIM_editkeyframes_ok(i16 noundef signext 2) #8
  %13 = tail call ptr @ANIM_editkeyframes_select(i16 noundef signext %11) #8
  %14 = icmp eq i16 %1, 1
  %15 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !52
  %17 = sitofp i32 %16 to float
  %18 = fadd float %17, 0x3FB99999A0000000
  %19 = fadd float %17, 0xBFB99999A0000000
  %20 = select i1 %14, float -3.000000e+05, float %19
  %21 = select i1 %14, float %18, float 3.000000e+05
  %22 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 3
  store float %20, ptr %22, align 8
  %23 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 4
  store float %21, ptr %23, align 4
  %24 = load ptr, ptr %0, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %26 = load i16, ptr %25, align 8, !tbaa !45
  %27 = sext i16 %26 to i32
  %28 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 2049, ptr noundef %24, i32 noundef %27) #8
  %29 = load ptr, ptr %4, align 8, !tbaa !28
  %30 = icmp eq ptr %29, null
  br i1 %30, label %46, label %31

31:                                               ; preds = %10, %43
  %32 = phi ptr [ %44, %43 ], [ %29, %10 ]
  %33 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %32) #8
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds %struct.bAnimListElem, ptr %32, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  br i1 %34, label %41, label %37

37:                                               ; preds = %31
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %33, ptr noundef %36, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %38 = load ptr, ptr %35, align 8, !tbaa !46
  %39 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %38, ptr noundef %12, ptr noundef %13, ptr noundef null) #8
  %40 = load ptr, ptr %35, align 8, !tbaa !46
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %33, ptr noundef %40, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %43

41:                                               ; preds = %31
  %42 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %36, ptr noundef %12, ptr noundef %13, ptr noundef null) #8
  br label %43

43:                                               ; preds = %41, %37
  %44 = load ptr, ptr %32, align 8, !tbaa !28
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %31, !llvm.loop !97

46:                                               ; preds = %43, %10
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @graphkeys_mselect_column(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !52
  %10 = sitofp i32 %9 to float
  %11 = tail call fastcc ptr @find_nearest_fcurve_vert(ptr noundef %0, ptr noundef %1) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %58, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.tNearestVertInfo, ptr %11, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %15, i64 0, i64 1
  br label %23

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.tNearestVertInfo, ptr %11, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19, %17
  %24 = phi ptr [ %18, %17 ], [ %21, %19 ]
  %25 = load float, ptr %24, align 4, !tbaa !82
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi float [ %10, %19 ], [ %25, %23 ]
  %28 = icmp eq i16 %2, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call fastcc void @deselect_graph_keys(ptr noundef nonnull %0, i16 noundef signext 0, i16 noundef signext 4, i16 noundef signext 0) #10
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i16 [ 2, %29 ], [ %2, %26 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %32 = tail call ptr @ANIM_editkeyframes_select(i16 noundef signext %31) #8
  %33 = tail call ptr @ANIM_editkeyframes_ok(i16 noundef signext 1) #8
  %34 = load ptr, ptr %0, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %36 = load i16, ptr %35, align 8, !tbaa !45
  %37 = sext i16 %36 to i32
  %38 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 2053, ptr noundef %34, i32 noundef %37) #8
  %39 = load ptr, ptr %4, align 8, !tbaa !28
  %40 = icmp eq ptr %39, null
  br i1 %40, label %56, label %41

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 3
  br label %43

43:                                               ; preds = %41, %49
  %44 = phi ptr [ %39, %41 ], [ %54, %49 ]
  %45 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %44) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %45, float noundef %27, i16 noundef signext 1) #8
  br label %49

49:                                               ; preds = %43, %47
  %50 = phi float [ %48, %47 ], [ %27, %43 ]
  store float %50, ptr %42, align 8, !tbaa !85
  %51 = getelementptr inbounds %struct.bAnimListElem, ptr %44, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %52, ptr noundef %33, ptr noundef %32, ptr noundef null) #8
  %54 = load ptr, ptr %44, align 8, !tbaa !28
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %43, !llvm.loop !101

56:                                               ; preds = %49, %30
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !28
  call void %57(ptr noundef nonnull %11) #8
  call void @BLI_freelistN(ptr noundef nonnull %5) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  br label %58

58:                                               ; preds = %3, %56
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mouse_graph_keys(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #0 {
  %5 = alloca %struct.KeyframeEditData, align 8
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = tail call fastcc ptr @find_nearest_fcurve_vert(ptr noundef %0, ptr noundef %1) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %161, label %10

10:                                               ; preds = %4
  %11 = icmp eq i16 %2, 1
  br i1 %11, label %12, label %22

12:                                               ; preds = %10
  tail call fastcc void @deselect_graph_keys(ptr noundef nonnull %0, i16 noundef signext 0, i16 noundef signext 4, i16 noundef signext 1) #10
  %13 = getelementptr inbounds %struct.SpaceIpo, ptr %7, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !38
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %20 = load i16, ptr %19, align 8, !tbaa !45
  %21 = sext i16 %20 to i32
  tail call void @ANIM_deselect_anim_channels(ptr noundef nonnull %0, ptr noundef %18, i32 noundef %21, i8 noundef zeroext 0, i32 noundef 0) #8
  br label %22

22:                                               ; preds = %12, %17, %10
  %23 = phi i16 [ 2, %17 ], [ 2, %12 ], [ %2, %10 ]
  %24 = icmp eq i16 %3, 0
  br i1 %24, label %25, label %94

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tNearestVertInfo, ptr %8, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !102
  %28 = getelementptr inbounds %struct.FCurve, ptr %27, i64 0, i32 9
  %29 = load i16, ptr %28, align 8, !tbaa !25
  %30 = and i16 %29, 8
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %94

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.tNearestVertInfo, ptr %8, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !98
  %35 = icmp eq ptr %34, null
  br i1 %35, label %99, label %36

36:                                               ; preds = %32
  %37 = icmp eq i16 %23, 8
  %38 = getelementptr inbounds %struct.tNearestVertInfo, ptr %8, i64 0, i32 5
  %39 = load i16, ptr %38, align 8, !tbaa !103
  br i1 %37, label %40, label %75

40:                                               ; preds = %36
  switch i16 %39, label %71 [
    i16 0, label %41
    i16 -1, label %67
  ]

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 8
  %43 = load i8, ptr %42, align 4, !tbaa !104
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  %46 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 7
  %47 = load i8, ptr %46, align 1, !tbaa !106
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %45, i1 %49, i1 false
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 9
  %53 = load i8, ptr %52, align 1, !tbaa !107
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %41, %51
  %57 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 7
  %58 = and i8 %47, -2
  store i8 %58, ptr %57, align 1, !tbaa !106
  %59 = and i8 %43, -2
  store i8 %59, ptr %42, align 4, !tbaa !104
  %60 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 9
  %61 = load i8, ptr %60, align 1, !tbaa !107
  %62 = and i8 %61, -2
  store i8 %62, ptr %60, align 1, !tbaa !107
  br label %99

63:                                               ; preds = %51
  %64 = or disjoint i8 %47, 1
  store i8 %64, ptr %46, align 1, !tbaa !106
  %65 = or disjoint i8 %43, 1
  store i8 %65, ptr %42, align 4, !tbaa !104
  %66 = or disjoint i8 %53, 1
  store i8 %66, ptr %52, align 1, !tbaa !107
  br label %99

67:                                               ; preds = %40
  %68 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 7
  %69 = load i8, ptr %68, align 1, !tbaa !106
  %70 = xor i8 %69, 1
  store i8 %70, ptr %68, align 1, !tbaa !106
  br label %99

71:                                               ; preds = %40
  %72 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 9
  %73 = load i8, ptr %72, align 1, !tbaa !107
  %74 = xor i8 %73, 1
  store i8 %74, ptr %72, align 1, !tbaa !107
  br label %99

75:                                               ; preds = %36
  switch i16 %39, label %90 [
    i16 0, label %76
    i16 -1, label %86
  ]

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 7
  %78 = load i8, ptr %77, align 1, !tbaa !106
  %79 = or i8 %78, 1
  store i8 %79, ptr %77, align 1, !tbaa !106
  %80 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 8
  %81 = load i8, ptr %80, align 4, !tbaa !104
  %82 = or i8 %81, 1
  store i8 %82, ptr %80, align 4, !tbaa !104
  %83 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 9
  %84 = load i8, ptr %83, align 1, !tbaa !107
  %85 = or i8 %84, 1
  store i8 %85, ptr %83, align 1, !tbaa !107
  br label %99

86:                                               ; preds = %75
  %87 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 7
  %88 = load i8, ptr %87, align 1, !tbaa !106
  %89 = or i8 %88, 1
  store i8 %89, ptr %87, align 1, !tbaa !106
  br label %99

90:                                               ; preds = %75
  %91 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 9
  %92 = load i8, ptr %91, align 1, !tbaa !107
  %93 = or i8 %92, 1
  store i8 %93, ptr %91, align 1, !tbaa !107
  br label %99

94:                                               ; preds = %25, %22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %95 = tail call ptr @ANIM_editkeyframes_select(i16 noundef signext %23) #8
  %96 = getelementptr inbounds %struct.tNearestVertInfo, ptr %8, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !102
  %98 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %97, ptr noundef null, ptr noundef %95, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  br label %99

99:                                               ; preds = %32, %76, %90, %86, %63, %56, %71, %67, %94
  %100 = phi ptr [ %34, %56 ], [ %34, %63 ], [ %34, %67 ], [ %34, %71 ], [ %34, %76 ], [ %34, %86 ], [ %34, %90 ], [ null, %94 ], [ null, %32 ]
  %101 = getelementptr inbounds %struct.SpaceIpo, ptr %7, i64 0, i32 11
  %102 = load i32, ptr %101, align 4, !tbaa !38
  %103 = and i32 %102, 32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %147

105:                                              ; preds = %99
  %106 = icmp eq ptr %100, null
  br i1 %106, label %134, label %107

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.BezTriple, ptr %100, i64 0, i32 8
  %109 = load i8, ptr %108, align 4, !tbaa !104
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.BezTriple, ptr %100, i64 0, i32 7
  %114 = load i8, ptr %113, align 1, !tbaa !106
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.BezTriple, ptr %100, i64 0, i32 9
  %119 = load i8, ptr %118, align 1, !tbaa !107
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %117, %112, %107
  %123 = getelementptr inbounds %struct.tNearestVertInfo, ptr %8, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !102
  %125 = getelementptr inbounds %struct.FCurve, ptr %124, i64 0, i32 9
  %126 = load i16, ptr %125, align 8, !tbaa !25
  %127 = or i16 %126, 2
  store i16 %127, ptr %125, align 8, !tbaa !25
  br label %147

128:                                              ; preds = %117
  %129 = getelementptr inbounds %struct.tNearestVertInfo, ptr %8, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !102
  %131 = getelementptr inbounds %struct.FCurve, ptr %130, i64 0, i32 9
  %132 = load i16, ptr %131, align 8, !tbaa !25
  %133 = and i16 %132, -3
  store i16 %133, ptr %131, align 8, !tbaa !25
  br label %147

134:                                              ; preds = %105
  switch i16 %23, label %147 [
    i16 8, label %135
    i16 2, label %141
  ]

135:                                              ; preds = %134
  %136 = getelementptr inbounds %struct.tNearestVertInfo, ptr %8, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !102
  %138 = getelementptr inbounds %struct.FCurve, ptr %137, i64 0, i32 9
  %139 = load i16, ptr %138, align 8, !tbaa !25
  %140 = xor i16 %139, 2
  store i16 %140, ptr %138, align 8, !tbaa !25
  br label %147

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.tNearestVertInfo, ptr %8, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !102
  %144 = getelementptr inbounds %struct.FCurve, ptr %143, i64 0, i32 9
  %145 = load i16, ptr %144, align 8, !tbaa !25
  %146 = or i16 %145, 2
  store i16 %146, ptr %144, align 8, !tbaa !25
  br label %147

147:                                              ; preds = %134, %128, %122, %141, %135, %99
  %148 = getelementptr inbounds %struct.tNearestVertInfo, ptr %8, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !102
  %150 = getelementptr inbounds %struct.FCurve, ptr %149, i64 0, i32 9
  %151 = load i16, ptr %150, align 8, !tbaa !25
  %152 = and i16 %151, 2
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %147
  %155 = load ptr, ptr %0, align 8, !tbaa !44
  %156 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %157 = load i16, ptr %156, align 8, !tbaa !45
  %158 = sext i16 %157 to i32
  call void @ANIM_set_active_channel(ptr noundef nonnull %0, ptr noundef %155, i32 noundef %158, i32 noundef 2053, ptr noundef nonnull %149, i32 noundef 7) #8
  br label %159

159:                                              ; preds = %154, %147
  %160 = load ptr, ptr @MEM_freeN, align 8, !tbaa !28
  call void %160(ptr noundef nonnull %8) #8
  br label %161

161:                                              ; preds = %4, %159
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_nearest_fcurve_vert(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call fastcc void @get_nearest_fcurve_verts_list(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #10
  %4 = call fastcc ptr @get_best_nearest_fcurve_vert(ptr noundef nonnull %3) #10
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_nearest_fcurve_verts_list(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.SpaceIpo, ptr %6, i64 0, i32 11
  %11 = load i32, ptr %10, align 4, !tbaa !38
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 2053, i32 2117
  %15 = tail call signext i16 @ANIM_get_normalization_flags(ptr noundef %0) #8
  %16 = load ptr, ptr %0, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %18 = load i16, ptr %17, align 8, !tbaa !45
  %19 = sext i16 %18 to i32
  %20 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %14, ptr noundef %16, i32 noundef %19) #8
  %21 = load ptr, ptr %4, align 8, !tbaa !28
  %22 = icmp eq ptr %21, null
  br i1 %22, label %81, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  br label %25

25:                                               ; preds = %23, %78
  %26 = phi ptr [ %21, %23 ], [ %79, %78 ]
  %27 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %26) #8
  %30 = load ptr, ptr %24, align 8, !tbaa !49
  %31 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !81
  %33 = call float @ANIM_unit_mapping_get_factor(ptr noundef %30, ptr noundef %32, ptr noundef %28, i16 noundef signext %15) #8
  %34 = icmp eq ptr %29, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %25
  %36 = load ptr, ptr %27, align 8, !tbaa !46
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %29, ptr noundef %36, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  br label %37

37:                                               ; preds = %35, %25
  %38 = getelementptr inbounds %struct.FCurve, ptr %28, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !93
  %40 = icmp eq ptr %39, null
  br i1 %40, label %75, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.FCurve, ptr %28, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !94
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %75, label %45

45:                                               ; preds = %41, %70
  %46 = phi i32 [ %71, %70 ], [ 0, %41 ]
  %47 = phi ptr [ %48, %70 ], [ null, %41 ]
  %48 = phi ptr [ %72, %70 ], [ %39, %41 ]
  call fastcc void @nearest_fcurve_vert_store(ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %28, ptr noundef nonnull %48, i16 noundef signext 0, ptr noundef %1, float noundef %33) #10
  %49 = call fastcc zeroext i8 @fcurve_handle_sel_check(ptr noundef %6, ptr noundef nonnull %48) #10, !range !108
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %45
  %52 = load i32, ptr %42, align 8, !tbaa !94
  %53 = icmp ugt i32 %52, 1
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = icmp eq ptr %47, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.BezTriple, ptr %48, i64 0, i32 4
  %58 = load i8, ptr %57, align 4, !tbaa !109
  %59 = icmp eq i8 %58, 2
  br i1 %59, label %64, label %65

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.BezTriple, ptr %47, i64 0, i32 4
  %62 = load i8, ptr %61, align 4, !tbaa !109
  %63 = icmp eq i8 %62, 2
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %56
  call fastcc void @nearest_fcurve_vert_store(ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %28, ptr noundef nonnull %48, i16 noundef signext -1, ptr noundef %1, float noundef %33) #10
  br label %65

65:                                               ; preds = %56, %64, %60
  %66 = getelementptr inbounds %struct.BezTriple, ptr %48, i64 0, i32 4
  %67 = load i8, ptr %66, align 4, !tbaa !109
  %68 = icmp eq i8 %67, 2
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  call fastcc void @nearest_fcurve_vert_store(ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %28, ptr noundef nonnull %48, i16 noundef signext 1, ptr noundef %1, float noundef %33) #10
  br label %70

70:                                               ; preds = %45, %51, %69, %65
  %71 = add nuw nsw i32 %46, 1
  %72 = getelementptr inbounds %struct.BezTriple, ptr %48, i64 1
  %73 = load i32, ptr %42, align 8, !tbaa !94
  %74 = icmp ult i32 %71, %73
  br i1 %74, label %45, label %75, !llvm.loop !110

75:                                               ; preds = %70, %41, %37
  br i1 %34, label %78, label %76

76:                                               ; preds = %75
  %77 = load ptr, ptr %27, align 8, !tbaa !46
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %29, ptr noundef %77, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  br label %78

78:                                               ; preds = %76, %75
  %79 = load ptr, ptr %26, align 8, !tbaa !28
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %25, !llvm.loop !111

81:                                               ; preds = %78, %3
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_best_nearest_fcurve_vert(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef %0) #10, !range !108
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %24

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @BLI_listbase_is_single(ptr noundef %0) #10, !range !108
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !28
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %12

10:                                               ; preds = %4
  %11 = tail call ptr @BLI_pophead(ptr noundef %0) #8
  br label %24

12:                                               ; preds = %7, %16
  %13 = phi ptr [ %20, %16 ], [ %8, %7 ]
  %14 = phi i1 [ %19, %16 ], [ true, %7 ]
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %13) #8
  br label %24

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tNearestVertInfo, ptr %13, i64 0, i32 6
  %18 = load i16, ptr %17, align 2, !tbaa !112
  %19 = icmp eq i16 %18, 0
  %20 = load ptr, ptr %13, align 8, !tbaa !28
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12, !llvm.loop !113

22:                                               ; preds = %16, %7
  %23 = tail call ptr @BLI_pophead(ptr noundef nonnull %0) #8
  br label %24

24:                                               ; preds = %1, %22, %15, %10
  %25 = phi ptr [ %11, %10 ], [ %13, %15 ], [ %23, %22 ], [ null, %1 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nearest_fcurve_vert_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, ptr nocapture noundef readonly %5, float noundef %6) unnamed_addr #0 {
  %8 = alloca [2 x i32], align 4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %86, label %10

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  %11 = sext i16 %4 to i64
  %12 = add nsw i64 %11, 1
  %13 = and i64 %12, 4294967295
  %14 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !82
  %16 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 %13, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !82
  %18 = fmul float %17, %6
  %19 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  %20 = call zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef %1, float noundef %15, float noundef %18, ptr noundef nonnull %8, ptr noundef nonnull %19) #8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %85, label %22

22:                                               ; preds = %10
  %23 = call fastcc float @len_v2v2_int(ptr noundef %5, ptr noundef nonnull %8) #10
  %24 = fptosi float %23 to i32
  %25 = icmp slt i32 %24, 11
  br i1 %25, label %26, label %85

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !114
  %29 = icmp eq ptr %28, null
  br i1 %29, label %57, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tNearestVertInfo, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !102
  %33 = icmp eq ptr %32, %2
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.tNearestVertInfo, ptr %28, i64 0, i32 7
  %36 = load i32, ptr %35, align 4, !tbaa !115
  %37 = icmp sgt i32 %36, %24
  br i1 %37, label %60, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.tNearestVertInfo, ptr %28, i64 0, i32 6
  %40 = load i16, ptr %39, align 2, !tbaa !112
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %44 = load i8, ptr %43, align 4, !tbaa !104
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  %49 = load i8, ptr %48, align 1, !tbaa !106
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  %54 = load i8, ptr %53, align 1, !tbaa !107
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52, %38, %30, %26
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !28
  %59 = call ptr %58(i64 noundef 48, ptr noundef nonnull @.str.69) #8
  br label %60

60:                                               ; preds = %52, %47, %42, %34, %57
  %61 = phi i1 [ true, %57 ], [ false, %34 ], [ false, %42 ], [ false, %47 ], [ false, %52 ]
  %62 = phi ptr [ %59, %57 ], [ %28, %34 ], [ %28, %42 ], [ %28, %47 ], [ %28, %52 ]
  %63 = getelementptr inbounds %struct.tNearestVertInfo, ptr %62, i64 0, i32 2
  store ptr %2, ptr %63, align 8, !tbaa !102
  %64 = getelementptr inbounds %struct.tNearestVertInfo, ptr %62, i64 0, i32 3
  store ptr %3, ptr %64, align 8, !tbaa !98
  %65 = getelementptr inbounds %struct.tNearestVertInfo, ptr %62, i64 0, i32 5
  store i16 %4, ptr %65, align 8, !tbaa !103
  %66 = getelementptr inbounds %struct.tNearestVertInfo, ptr %62, i64 0, i32 7
  store i32 %24, ptr %66, align 4, !tbaa !115
  %67 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %68 = load i8, ptr %67, align 4, !tbaa !104
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  %73 = load i8, ptr %72, align 1, !tbaa !106
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  %78 = load i8, ptr %77, align 1, !tbaa !107
  %79 = and i8 %78, 1
  %80 = zext nneg i8 %79 to i16
  br label %81

81:                                               ; preds = %76, %71, %60
  %82 = phi i16 [ 1, %71 ], [ 1, %60 ], [ %80, %76 ]
  %83 = getelementptr inbounds %struct.tNearestVertInfo, ptr %62, i64 0, i32 6
  store i16 %82, ptr %83, align 2, !tbaa !112
  br i1 %61, label %84, label %85

84:                                               ; preds = %81
  call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef nonnull %62) #8
  br label %85

85:                                               ; preds = %81, %84, %22, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %86

86:                                               ; preds = %7, %85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @fcurve_handle_sel_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.SpaceIpo, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 4, !tbaa !38
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = and i32 %4, 512
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %12 = load i8, ptr %11, align 4, !tbaa !104
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %17 = load i8, ptr %16, align 1, !tbaa !106
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %22 = load i8, ptr %21, align 1, !tbaa !107
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15, %10, %20, %7
  br label %26

26:                                               ; preds = %20, %2, %25
  %27 = phi i8 [ 1, %25 ], [ 0, %2 ], [ 0, %20 ]
  ret i8 %27
}

; Function Attrs: optsize
declare zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2v2_int(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 4, !tbaa !51
  %4 = load i32, ptr %1, align 4, !tbaa !51
  %5 = sub nsw i32 %3, %4
  %6 = sitofp i32 %5 to float
  %7 = getelementptr inbounds i32, ptr %0, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds i32, ptr %1, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !51
  %11 = sub nsw i32 %8, %10
  %12 = sitofp i32 %11 to float
  %13 = fmul float %12, %12
  %14 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %13)
  %15 = tail call float @llvm.sqrt.f32(float %14)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !116
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_single(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !116
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = icmp eq ptr %2, %6
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ANIM_deselect_anim_channels(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ANIM_set_active_channel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }

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
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 72}
!17 = !{!6, !12, i64 184}
!18 = !{!6, !7, i64 88}
!19 = !{!6, !7, i64 104}
!20 = !{!21, !7, i64 112}
!21 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!22 = !{!23, !7, i64 16}
!23 = !{!"bAnimListElem", !7, i64 0, !7, i64 8, !7, i64 16, !24, i64 24, !24, i64 28, !24, i64 32, !12, i64 36, !12, i64 38, !7, i64 40, !7, i64 48, !7, i64 56}
!24 = !{!"int", !8, i64 0}
!25 = !{!26, !12, i64 72}
!26 = !{!"FCurve", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !7, i64 48, !7, i64 56, !24, i64 64, !27, i64 68, !12, i64 72, !12, i64 74, !24, i64 76, !7, i64 80, !24, i64 88, !8, i64 92, !27, i64 104, !27, i64 108}
!27 = !{!"float", !8, i64 0}
!28 = !{!7, !7, i64 0}
!29 = !{!6, !7, i64 48}
!30 = !{!6, !7, i64 64}
!31 = !{!6, !7, i64 56}
!32 = !{!33, !7, i64 8}
!33 = !{!"KeyframeEdit_LassoData", !7, i64 0, !7, i64 8, !7, i64 16, !24, i64 24}
!34 = !{!33, !7, i64 16}
!35 = !{!36, !12, i64 12}
!36 = !{!"bAnimContext", !7, i64 0, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!37 = !{!36, !7, i64 24}
!38 = !{!39, !24, i64 244}
!39 = !{!"SpaceIpo", !7, i64 0, !7, i64 8, !10, i64 16, !24, i64 32, !27, i64 36, !8, i64 40, !40, i64 56, !7, i64 216, !10, i64 224, !12, i64 240, !12, i64 242, !24, i64 244, !27, i64 248, !24, i64 252}
!40 = !{!"View2D", !41, i64 0, !41, i64 16, !42, i64 32, !42, i64 48, !42, i64 64, !8, i64 80, !8, i64 88, !27, i64 96, !27, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !24, i64 136, !24, i64 140, !7, i64 144, !7, i64 152}
!41 = !{!"rctf", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12}
!42 = !{!"rcti", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12}
!43 = !{!33, !24, i64 24}
!44 = !{!36, !7, i64 0}
!45 = !{!36, !12, i64 8}
!46 = !{!23, !7, i64 40}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!36, !7, i64 48}
!50 = !{!36, !7, i64 32}
!51 = !{!24, !24, i64 0}
!52 = !{!53, !24, i64 680}
!53 = !{!"Scene", !54, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !24, i64 232, !24, i64 236, !24, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !55, i64 280, !62, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !24, i64 4380, !10, i64 4384, !63, i64 4400, !64, i64 4416, !67, i64 4600, !7, i64 4608, !68, i64 4616, !7, i64 4640, !69, i64 4648, !69, i64 4656, !57, i64 4664, !58, i64 4824, !70, i64 4888, !7, i64 4952}
!54 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !24, i64 100, !24, i64 104, !24, i64 108, !7, i64 112}
!55 = !{!"RenderData", !56, i64 0, !7, i64 248, !7, i64 256, !59, i64 264, !60, i64 328, !24, i64 400, !24, i64 404, !24, i64 408, !27, i64 412, !24, i64 416, !24, i64 420, !24, i64 424, !24, i64 428, !12, i64 432, !12, i64 434, !27, i64 436, !27, i64 440, !27, i64 444, !27, i64 448, !27, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !24, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !24, i64 484, !24, i64 488, !12, i64 492, !12, i64 494, !24, i64 496, !24, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !24, i64 516, !24, i64 520, !24, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !41, i64 544, !41, i64 560, !42, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !27, i64 612, !27, i64 616, !27, i64 620, !27, i64 624, !24, i64 628, !27, i64 632, !27, i64 636, !27, i64 640, !27, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !27, i64 660, !27, i64 664, !12, i64 668, !12, i64 670, !27, i64 672, !27, i64 676, !8, i64 680, !24, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !24, i64 2520, !12, i64 2524, !12, i64 2526, !27, i64 2528, !27, i64 2532, !12, i64 2536, !12, i64 2538, !27, i64 2540, !12, i64 2544, !12, i64 2546, !24, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !27, i64 2560, !27, i64 2564, !7, i64 2568, !24, i64 2576, !27, i64 2580, !8, i64 2584, !61, i64 2616, !24, i64 3976, !24, i64 3980}
!56 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !27, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !57, i64 24, !58, i64 184}
!57 = !{!"ColorManagedViewSettings", !24, i64 0, !24, i64 4, !8, i64 8, !8, i64 72, !27, i64 136, !27, i64 140, !7, i64 144, !7, i64 152}
!58 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!59 = !{!"QuicktimeCodecSettings", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !24, i64 36, !24, i64 40, !24, i64 44, !12, i64 48, !12, i64 50, !24, i64 52, !24, i64 56, !24, i64 60}
!60 = !{!"FFMpegCodecData", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28, !27, i64 32, !24, i64 36, !24, i64 40, !24, i64 44, !24, i64 48, !24, i64 52, !24, i64 56, !24, i64 60, !7, i64 64}
!61 = !{!"BakeData", !56, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !27, i64 1280, !27, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!62 = !{!"AudioData", !24, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !24, i64 16, !12, i64 20, !12, i64 22, !27, i64 24, !27, i64 28}
!63 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!64 = !{!"GameData", !63, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !65, i64 40, !12, i64 64, !12, i64 66, !27, i64 68, !66, i64 72, !27, i64 128, !27, i64 132, !24, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !27, i64 164, !27, i64 168, !27, i64 172, !27, i64 176, !27, i64 180}
!65 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !27, i64 8, !27, i64 12, !7, i64 16}
!66 = !{!"RecastData", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20, !27, i64 24, !27, i64 28, !27, i64 32, !27, i64 36, !24, i64 40, !27, i64 44, !27, i64 48, !12, i64 52, !12, i64 54}
!67 = !{!"UnitSettings", !27, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!68 = !{!"PhysicsSettings", !8, i64 0, !24, i64 12, !24, i64 16, !24, i64 20}
!69 = !{!"long", !8, i64 0}
!70 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!71 = !{i32 2, i32 5}
!72 = distinct !{!72, !48}
!73 = distinct !{!73, !48}
!74 = !{!42, !24, i64 4}
!75 = !{!42, !24, i64 0}
!76 = !{!42, !24, i64 12}
!77 = !{!42, !24, i64 8}
!78 = !{!33, !7, i64 0}
!79 = !{!80, !12, i64 62}
!80 = !{!"KeyframeEditData", !10, i64 0, !7, i64 16, !7, i64 24, !27, i64 32, !27, i64 36, !24, i64 40, !24, i64 44, !7, i64 48, !24, i64 56, !12, i64 60, !12, i64 62}
!81 = !{!23, !7, i64 48}
!82 = !{!27, !27, i64 0}
!83 = distinct !{!83, !48}
!84 = !{!36, !7, i64 64}
!85 = !{!80, !27, i64 32}
!86 = !{!80, !27, i64 36}
!87 = distinct !{!87, !48}
!88 = distinct !{!88, !48}
!89 = !{!90, !27, i64 16}
!90 = !{!"CfraElem", !7, i64 0, !7, i64 8, !27, i64 16, !24, i64 20}
!91 = distinct !{!91, !48}
!92 = distinct !{!92, !48}
!93 = !{!26, !7, i64 48}
!94 = !{!26, !24, i64 64}
!95 = !{!80, !7, i64 24}
!96 = distinct !{!96, !48}
!97 = distinct !{!97, !48}
!98 = !{!99, !7, i64 24}
!99 = !{!"tNearestVertInfo", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 42, !24, i64 44}
!100 = !{!99, !7, i64 32}
!101 = distinct !{!101, !48}
!102 = !{!99, !7, i64 16}
!103 = !{!99, !12, i64 40}
!104 = !{!105, !8, i64 52}
!105 = !{!"BezTriple", !8, i64 0, !27, i64 36, !27, i64 40, !27, i64 44, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !8, i64 52, !8, i64 53, !8, i64 54, !8, i64 55, !27, i64 56, !27, i64 60, !27, i64 64, !8, i64 68}
!106 = !{!105, !8, i64 51}
!107 = !{!105, !8, i64 53}
!108 = !{i8 0, i8 2}
!109 = !{!105, !8, i64 48}
!110 = distinct !{!110, !48}
!111 = distinct !{!111, !48}
!112 = !{!99, !12, i64 42}
!113 = distinct !{!113, !48}
!114 = !{!10, !7, i64 8}
!115 = !{!99, !24, i64 44}
!116 = !{!10, !7, i64 0}
