; ModuleID = 'blender/source/blender/editors/space_action/action_select.c'
source_filename = "blender/source/blender/editors/space_action/action_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
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
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.CfraElem = type { ptr, ptr, float, i32 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.TimeMarker = type { ptr, ptr, i32, [64 x i8], i32, ptr }
%struct.DLRBT_Tree = type { ptr, ptr, ptr }
%struct.ActKeyColumn = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i16, float, i16, i16 }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }

@.str = private unnamed_addr constant [11 x i8] c"Select All\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ACTION_OT_select_all_toggle\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Toggle selection of all keyframes\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Invert\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Border Select\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"ACTION_OT_select_border\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Select all keyframes within the specified region\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"axis_range\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Axis Range\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"ACTION_OT_select_column\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"Select all keyframes on the specified frame(s)\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@prop_column_select_types = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.41, i32 0, ptr @.str.42, ptr @.str.5 }, %struct.EnumPropertyItem { i32 1, ptr @.str.43, i32 0, ptr @.str.44, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.5 }, %struct.EnumPropertyItem { i32 3, ptr @.str.47, i32 0, ptr @.str.48, ptr @.str.5 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Select Linked\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"ACTION_OT_select_linked\00", align 1
@.str.17 = private unnamed_addr constant [65 x i8] c"Select keyframes occurring in the same F-Curves as selected ones\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Select More\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"ACTION_OT_select_more\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"Select keyframes beside already selected ones\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"Select Less\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"ACTION_OT_select_less\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"Deselect keyframes on ends of selection islands\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Select Left/Right\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"ACTION_OT_select_leftright\00", align 1
@.str.26 = private unnamed_addr constant [63 x i8] c"Select keyframes to the left or the right of the current frame\00", align 1
@prop_actkeys_leftright_select_types = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.50, i32 0, ptr @.str.51, ptr @.str.5 }, %struct.EnumPropertyItem { i32 1, ptr @.str.52, i32 0, ptr @.str.53, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.54, i32 0, ptr @.str.55, ptr @.str.5 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"Extend Select\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Mouse Select Keys\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"ACTION_OT_clickselect\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Select keyframes by clicking on them\00", align 1
@.str.32 = private unnamed_addr constant [75 x i8] c"Toggle keyframe selection instead of leaving newly selected keyframes only\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"column\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Column Select\00", align 1
@.str.35 = private unnamed_addr constant [77 x i8] c"Select all keyframes that occur on the same frame as the one under the mouse\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"Only Channel\00", align 1
@.str.38 = private unnamed_addr constant [56 x i8] c"Select all the keyframes in the channel under the mouse\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"gesture_mode\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [9 x i8] c"cfraElem\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"KEYS\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"On Selected Keyframes\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"CFRA\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"On Current Frame\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"MARKERS_COLUMN\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"On Selected Markers\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"MARKERS_BETWEEN\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"Between Min/Max Selected Markers\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"selmap actEdit more\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.50 = private unnamed_addr constant [6 x i8] c"CHECK\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"Check if Select Left or Right\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"Before current frame\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"After current frame\00", align 1
@.str.56 = private unnamed_addr constant [72 x i8] c"Error: animation channel (index = %d) not found in mouse_action_keys()\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ACTION_OT_select_all_toggle(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_deselectall_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !19
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_deselectall_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.3) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  call fastcc void @deselect_action_keys(ptr noundef nonnull %3, i16 noundef signext 0, i16 noundef signext 8) #10
  br label %13

12:                                               ; preds = %6
  call fastcc void @deselect_action_keys(ptr noundef nonnull %3, i16 noundef signext 1, i16 noundef signext 2) #10
  br label %13

13:                                               ; preds = %12, %11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #8
  br label %14

14:                                               ; preds = %2, %13
  %15 = phi i32 [ 4, %13 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %15
}

; Function Attrs: optsize
declare i32 @ED_operator_action_active(ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ACTION_OT_select_border(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_borderselect_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !17
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5) #8
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !19
  ret void
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_borderselect_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.rcti, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.27) #8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  call fastcc void @deselect_action_keys(ptr noundef nonnull %3, i16 noundef signext 1, i16 noundef signext 4) #10
  br label %14

14:                                               ; preds = %13, %7
  call void @WM_operator_properties_border_to_rcti(ptr noundef nonnull %1, ptr noundef nonnull %4) #8
  %15 = load ptr, ptr %8, align 8, !tbaa !20
  %16 = call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.39) #8
  %17 = icmp eq i32 %16, 3
  %18 = select i1 %17, i16 2, i16 4
  %19 = load ptr, ptr %8, align 8, !tbaa !20
  %20 = call i32 @RNA_boolean_get(ptr noundef %19, ptr noundef nonnull @.str.9) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %4) #10
  %24 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %4) #10
  %25 = icmp slt i32 %23, %24
  %26 = select i1 %25, i16 2, i16 1
  br label %27

27:                                               ; preds = %14, %22
  %28 = phi i16 [ %26, %22 ], [ 0, %14 ]
  %29 = load i64, ptr %4, align 8
  %30 = getelementptr inbounds { i64, i64 }, ptr %4, i64 0, i32 1
  %31 = load i64, ptr %30, align 8
  call fastcc void @borderselect_action(ptr noundef nonnull %3, i64 %29, i64 %31, i16 noundef signext %28, i16 noundef signext %18) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #8
  br label %32

32:                                               ; preds = %2, %27
  %33 = phi i32 [ 4, %27 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %33
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ACTION_OT_select_column(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_columnselect_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.13, ptr noundef nonnull @prop_column_select_types, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_columnselect_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.13) #8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  call fastcc void @markers_selectkeys_between(ptr noundef nonnull %3) #10
  br label %15

13:                                               ; preds = %6
  %14 = trunc i32 %9 to i16
  call fastcc void @columnselect_action_keys(ptr noundef nonnull %3, i16 noundef signext %14) #10
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
define dso_local void @ACTION_OT_select_linked(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_select_linked_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_select_linked_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
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
  %10 = load ptr, ptr %3, align 8, !tbaa !25
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !27
  %13 = sext i16 %12 to i32
  %14 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2051, ptr noundef %10, i32 noundef %13) #8
  %15 = load ptr, ptr %4, align 8, !tbaa !28
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %9, %25
  %18 = phi ptr [ %26, %25 ], [ %15, %9 ]
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !29
  %21 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %20, ptr noundef null, ptr noundef %5, ptr noundef null) #8
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %20, ptr noundef null, ptr noundef %6, ptr noundef null) #8
  br label %25

25:                                               ; preds = %23, %17
  %26 = load ptr, ptr %18, align 8, !tbaa !28
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %17, !llvm.loop !32

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
define dso_local void @ACTION_OT_select_more(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_select_more_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call fastcc void @select_moreless_action_keys(ptr noundef nonnull %3, i16 noundef signext 0) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #8
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ACTION_OT_select_less(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_select_less_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call fastcc void @select_moreless_action_keys(ptr noundef nonnull %3, i16 noundef signext 1) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #8
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ACTION_OT_select_leftright(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @actkeys_select_leftright_invoke, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_select_leftright_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.13, ptr noundef nonnull @prop_actkeys_leftright_select_types, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !19
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268435456) #8
  %12 = load ptr, ptr %8, align 8, !tbaa !18
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.5) #8
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_select_leftright_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.13) #8
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %3
  %11 = and i32 %7, 65535
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !36
  %21 = sitofp i32 %20 to float
  %22 = call float @UI_view2d_region_to_view_x(ptr noundef nonnull %18, float noundef %21) #8
  %23 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 22, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !37
  %25 = sitofp i32 %24 to float
  %26 = fcmp olt float %22, %25
  %27 = load ptr, ptr %5, align 8, !tbaa !20
  %28 = select i1 %26, i32 1, i32 2
  call void @RNA_enum_set(ptr noundef %27, ptr noundef nonnull @.str.13, i32 noundef %28) #8
  br label %29

29:                                               ; preds = %13, %10
  %30 = call i32 @actkeys_select_leftright_exec(ptr noundef %0, ptr noundef nonnull %1) #10, !range !59
  br label %31

31:                                               ; preds = %3, %29
  %32 = phi i32 [ %30, %29 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #9
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_select_leftright_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.13) #8
  %7 = trunc i32 %6 to i16
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !tbaa !20
  %12 = call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.27) #8
  %13 = and i32 %6, 65535
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = icmp eq i32 %12, 0
  %17 = select i1 %16, i16 1, i16 8
  call fastcc void @actkeys_select_leftright(ptr noundef nonnull %3, i16 noundef signext %7, i16 noundef signext %17) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239992838, ptr noundef null) #8
  br label %18

18:                                               ; preds = %10, %2, %15
  %19 = phi i32 [ 4, %15 ], [ 2, %2 ], [ 2, %10 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ACTION_OT_clickselect(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.30, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @actkeys_clickselect_invoke, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.32) #8
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !18
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #8
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #8
  %12 = load ptr, ptr %7, align 8, !tbaa !18
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #8
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_clickselect_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #9
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.27) #8
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i16 1, i16 8
  %13 = load ptr, ptr %8, align 8, !tbaa !20
  %14 = call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.33) #8
  %15 = trunc i32 %14 to i8
  %16 = load ptr, ptr %8, align 8, !tbaa !20
  %17 = call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.36) #8
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call fastcc void @mouse_action_keys(ptr noundef nonnull %4, ptr noundef nonnull %19, i16 noundef signext %12, i8 noundef zeroext %15, i8 noundef zeroext %18) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239992838, ptr noundef null) #8
  br label %20

20:                                               ; preds = %3, %7
  %21 = phi i32 [ 12, %7 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #9
  ret i32 %21
}

; Function Attrs: optsize
declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @deselect_action_keys(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %0, align 8, !tbaa !25
  %8 = load i16, ptr %6, align 8, !tbaa !27
  %9 = sext i16 %8 to i32
  %10 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 2051, ptr noundef %7, i32 noundef %9) #8
  %11 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 3) #8
  %12 = icmp eq i16 %1, 0
  %13 = load ptr, ptr %4, align 8
  %14 = icmp eq ptr %13, null
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %38, label %16

16:                                               ; preds = %3, %35
  %17 = phi ptr [ %36, %35 ], [ %13, %3 ]
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !60
  switch i32 %19, label %30 [
    i32 27, label %20
    i32 29, label %25
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  %23 = call zeroext i8 @ED_gplayer_frame_select_check(ptr noundef %22) #8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %35, label %38

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !61
  %28 = call zeroext i8 @ED_masklayer_frame_select_check(ptr noundef %27) #8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %35, label %38

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !29
  %33 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %32, ptr noundef null, ptr noundef %11, ptr noundef null) #8
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %20, %30, %25
  %36 = load ptr, ptr %17, align 8, !tbaa !28
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %16, !llvm.loop !62

38:                                               ; preds = %35, %20, %25, %30, %3
  %39 = phi i16 [ %2, %3 ], [ %2, %35 ], [ 4, %20 ], [ 4, %25 ], [ 4, %30 ]
  %40 = call ptr @ANIM_editkeyframes_select(i16 noundef signext %39) #8
  %41 = load ptr, ptr %4, align 8, !tbaa !28
  %42 = icmp eq ptr %41, null
  br i1 %42, label %60, label %43

43:                                               ; preds = %38, %57
  %44 = phi ptr [ %58, %57 ], [ %41, %38 ]
  %45 = getelementptr inbounds %struct.bAnimListElem, ptr %44, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !60
  switch i32 %46, label %53 [
    i32 27, label %47
    i32 29, label %50
  ]

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.bAnimListElem, ptr %44, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !61
  call void @ED_gplayer_frame_select_set(ptr noundef %49, i16 noundef signext %39) #8
  br label %57

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.bAnimListElem, ptr %44, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !61
  call void @ED_masklayer_frame_select_set(ptr noundef %52, i16 noundef signext %39) #8
  br label %57

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.bAnimListElem, ptr %44, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !29
  %56 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %55, ptr noundef null, ptr noundef %40, ptr noundef null) #8
  br label %57

57:                                               ; preds = %47, %53, %50
  %58 = load ptr, ptr %44, align 8, !tbaa !28
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %43, !llvm.loop !63

60:                                               ; preds = %57, %38
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
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
declare zeroext i8 @ED_gplayer_frame_select_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ED_masklayer_frame_select_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ANIM_editkeyframes_select(i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_gplayer_frame_select_set(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_masklayer_frame_select_set(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !64
  %4 = load i32, ptr %0, align 4, !tbaa !65
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !66
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !67
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @borderselect_action(ptr noundef %0, i64 %1, i64 %2, i16 noundef signext %3, i16 noundef signext %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.KeyframeEditData, align 8
  %8 = alloca %struct.rctf, align 4
  %9 = trunc i64 %1 to i32
  %10 = lshr i64 %1, 32
  %11 = trunc i64 %10 to i32
  %12 = trunc i64 %2 to i32
  %13 = lshr i64 %2, 32
  %14 = trunc i64 %13 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !68
  %19 = sitofp i16 %18 to float
  %20 = fmul float %19, 0xBFD99999A0000000
  %21 = sitofp i32 %9 to float
  %22 = add nsw i32 %12, 2
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds %struct.rctf, ptr %8, i64 0, i32 2
  call void @UI_view2d_region_to_view(ptr noundef nonnull %17, float noundef %21, float noundef %23, ptr noundef nonnull %8, ptr noundef nonnull %24) #8
  %25 = sitofp i32 %11 to float
  %26 = add nsw i32 %14, -2
  %27 = sitofp i32 %26 to float
  %28 = getelementptr inbounds %struct.rctf, ptr %8, i64 0, i32 1
  %29 = getelementptr inbounds %struct.rctf, ptr %8, i64 0, i32 3
  call void @UI_view2d_region_to_view(ptr noundef nonnull %17, float noundef %25, float noundef %27, ptr noundef nonnull %28, ptr noundef nonnull %29) #8
  %30 = load ptr, ptr %0, align 8, !tbaa !25
  %31 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %32 = load i16, ptr %31, align 8, !tbaa !27
  %33 = sext i16 %32 to i32
  %34 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 2059, ptr noundef %30, i32 noundef %33) #8
  %35 = call ptr @ANIM_editkeyframes_select(i16 noundef signext %4) #8
  %36 = icmp eq i16 %3, 1
  %37 = icmp ult i16 %3, 2
  br i1 %37, label %38, label %40

38:                                               ; preds = %5
  %39 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 2) #8
  br label %40

40:                                               ; preds = %5, %38
  %41 = phi ptr [ %39, %38 ], [ null, %5 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  %42 = load ptr, ptr %6, align 8, !tbaa !28
  %43 = icmp eq ptr %42, null
  br i1 %43, label %117, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.KeyframeEditData, ptr %7, i64 0, i32 3
  %46 = getelementptr inbounds %struct.KeyframeEditData, ptr %7, i64 0, i32 4
  %47 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 8
  br label %48

48:                                               ; preds = %44, %114
  %49 = phi ptr [ %42, %44 ], [ %115, %114 ]
  %50 = phi float [ %20, %44 ], [ %56, %114 ]
  %51 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %49) #8
  %52 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !68
  %53 = sitofp i16 %52 to float
  %54 = fmul float %53, 0x3FB99999A0000000
  %55 = call float @llvm.fmuladd.f32(float %53, float 0x3FE99999A0000000, float %54)
  %56 = fsub float %50, %55
  br i1 %37, label %57, label %68

57:                                               ; preds = %48
  %58 = icmp eq ptr %51, null
  %59 = load float, ptr %8, align 4, !tbaa !72
  br i1 %58, label %64, label %60

60:                                               ; preds = %57
  %61 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %51, float noundef %59, i16 noundef signext 1) #8
  store float %61, ptr %45, align 8, !tbaa !73
  %62 = load float, ptr %28, align 4, !tbaa !75
  %63 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %51, float noundef %62, i16 noundef signext 1) #8
  br label %66

64:                                               ; preds = %57
  store float %59, ptr %45, align 8, !tbaa !73
  %65 = load float, ptr %28, align 4, !tbaa !75
  br label %66

66:                                               ; preds = %60, %64
  %67 = phi float [ %63, %60 ], [ %65, %64 ]
  store float %67, ptr %46, align 4, !tbaa !76
  br i1 %36, label %74, label %68

68:                                               ; preds = %48, %66
  %69 = load float, ptr %24, align 4, !tbaa !77
  %70 = fcmp olt float %50, %69
  %71 = load float, ptr %29, align 4
  %72 = fcmp ogt float %56, %71
  %73 = select i1 %70, i1 true, i1 %72
  br i1 %73, label %114, label %74

74:                                               ; preds = %68, %66
  %75 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 3
  %76 = load i32, ptr %75, align 8, !tbaa !60
  switch i32 %76, label %111 [
    i32 26, label %77
    i32 27, label %89
    i32 28, label %94
    i32 29, label %106
  ]

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !61
  %80 = getelementptr inbounds %struct.bGPdata, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !28
  %82 = icmp eq ptr %81, null
  br i1 %82, label %114, label %83

83:                                               ; preds = %77, %83
  %84 = phi ptr [ %87, %83 ], [ %81, %77 ]
  %85 = load float, ptr %8, align 4, !tbaa !72
  %86 = load float, ptr %28, align 4, !tbaa !75
  call void @ED_gplayer_frames_select_border(ptr noundef nonnull %84, float noundef %85, float noundef %86, i16 noundef signext %4) #8
  %87 = load ptr, ptr %84, align 8, !tbaa !28
  %88 = icmp eq ptr %87, null
  br i1 %88, label %114, label %83, !llvm.loop !78

89:                                               ; preds = %74
  %90 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !61
  %92 = load float, ptr %8, align 4, !tbaa !72
  %93 = load float, ptr %28, align 4, !tbaa !75
  call void @ED_gplayer_frames_select_border(ptr noundef %91, float noundef %92, float noundef %93, i16 noundef signext %4) #8
  br label %114

94:                                               ; preds = %74
  %95 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !61
  %97 = getelementptr inbounds %struct.Mask, ptr %96, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !28
  %99 = icmp eq ptr %98, null
  br i1 %99, label %114, label %100

100:                                              ; preds = %94, %100
  %101 = phi ptr [ %104, %100 ], [ %98, %94 ]
  %102 = load float, ptr %8, align 4, !tbaa !72
  %103 = load float, ptr %28, align 4, !tbaa !75
  call void @ED_masklayer_frames_select_border(ptr noundef nonnull %101, float noundef %102, float noundef %103, i16 noundef signext %4) #8
  %104 = load ptr, ptr %101, align 8, !tbaa !28
  %105 = icmp eq ptr %104, null
  br i1 %105, label %114, label %100, !llvm.loop !79

106:                                              ; preds = %74
  %107 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !61
  %109 = load float, ptr %8, align 4, !tbaa !72
  %110 = load float, ptr %28, align 4, !tbaa !75
  call void @ED_masklayer_frames_select_border(ptr noundef %108, float noundef %109, float noundef %110, i16 noundef signext %4) #8
  br label %114

111:                                              ; preds = %74
  %112 = load ptr, ptr %47, align 8, !tbaa !80
  %113 = call signext i16 @ANIM_animchannel_keyframes_loop(ptr noundef nonnull %7, ptr noundef %112, ptr noundef nonnull %49, ptr noundef %41, ptr noundef %35, ptr noundef null) #8
  br label %114

114:                                              ; preds = %100, %83, %94, %77, %89, %106, %111, %68
  %115 = load ptr, ptr %49, align 8, !tbaa !28
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %48, !llvm.loop !81

117:                                              ; preds = %114, %40
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ANIM_nla_mapping_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare float @BKE_nla_tweakedit_remap(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_gplayer_frames_select_border(ptr noundef, float noundef, float noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_masklayer_frames_select_border(ptr noundef, float noundef, float noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare signext i16 @ANIM_animchannel_keyframes_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  call void @ED_markers_get_minmax(ptr noundef %7, i16 noundef signext 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %8 = load float, ptr %4, align 4, !tbaa !83
  %9 = fadd float %8, -5.000000e-01
  store float %9, ptr %4, align 4, !tbaa !83
  %10 = load float, ptr %5, align 4, !tbaa !83
  %11 = fadd float %10, 5.000000e-01
  store float %11, ptr %5, align 4, !tbaa !83
  %12 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 2) #8
  %13 = call ptr @ANIM_editkeyframes_select(i16 noundef signext 2) #8
  %14 = load float, ptr %4, align 4, !tbaa !83
  %15 = getelementptr inbounds %struct.KeyframeEditData, ptr %3, i64 0, i32 3
  store float %14, ptr %15, align 8, !tbaa !73
  %16 = load float, ptr %5, align 4, !tbaa !83
  %17 = getelementptr inbounds %struct.KeyframeEditData, ptr %3, i64 0, i32 4
  store float %16, ptr %17, align 4, !tbaa !76
  %18 = load ptr, ptr %0, align 8, !tbaa !25
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %20 = load i16, ptr %19, align 8, !tbaa !27
  %21 = sext i16 %20 to i32
  %22 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 2051, ptr noundef %18, i32 noundef %21) #8
  %23 = load ptr, ptr %2, align 8, !tbaa !28
  %24 = icmp eq ptr %23, null
  br i1 %24, label %55, label %25

25:                                               ; preds = %1, %52
  %26 = phi ptr [ %53, %52 ], [ %23, %1 ]
  %27 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %26) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !29
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %27, ptr noundef %31, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %32 = load ptr, ptr %30, align 8, !tbaa !29
  %33 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %3, ptr noundef %32, ptr noundef %12, ptr noundef %13, ptr noundef null) #8
  %34 = load ptr, ptr %30, align 8, !tbaa !29
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %27, ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %52

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !60
  switch i32 %37, label %48 [
    i32 27, label %38
    i32 29, label %43
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !61
  %41 = load float, ptr %4, align 4, !tbaa !83
  %42 = load float, ptr %5, align 4, !tbaa !83
  call void @ED_gplayer_frames_select_border(ptr noundef %40, float noundef %41, float noundef %42, i16 noundef signext 2) #8
  br label %52

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !61
  %46 = load float, ptr %4, align 4, !tbaa !83
  %47 = load float, ptr %5, align 4, !tbaa !83
  call void @ED_masklayer_frames_select_border(ptr noundef %45, float noundef %46, float noundef %47, i16 noundef signext 2) #8
  br label %52

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !29
  %51 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %3, ptr noundef %50, ptr noundef %12, ptr noundef %13, ptr noundef null) #8
  br label %52

52:                                               ; preds = %38, %48, %43, %29
  %53 = load ptr, ptr %26, align 8, !tbaa !28
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %25, !llvm.loop !84

55:                                               ; preds = %52, %1
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @columnselect_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  switch i16 %1, label %97 [
    i16 0, label %7
    i16 1, label %36
    i16 2, label %43
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 8, !tbaa !27
  %10 = icmp eq i16 %9, 3
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !25
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 3, ptr noundef %12, i32 noundef 3) #8
  %14 = load ptr, ptr %3, align 8, !tbaa !28
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %11, %16
  %17 = phi ptr [ %20, %16 ], [ %14, %11 ]
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  call void @ED_gplayer_make_cfra_list(ptr noundef %19, ptr noundef nonnull %4, i8 noundef zeroext 1) #8
  %20 = load ptr, ptr %17, align 8, !tbaa !28
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %16, !llvm.loop !85

22:                                               ; preds = %7
  %23 = sext i16 %9 to i32
  %24 = load ptr, ptr %0, align 8, !tbaa !25
  %25 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 3, ptr noundef %24, i32 noundef %23) #8
  %26 = load ptr, ptr %3, align 8, !tbaa !28
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %22, %28
  %29 = phi ptr [ %33, %28 ], [ %26, %22 ]
  %30 = getelementptr inbounds %struct.bAnimListElem, ptr %29, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !29
  %32 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %31, ptr noundef null, ptr noundef nonnull @bezt_to_cfraelem, ptr noundef null) #8
  %33 = load ptr, ptr %29, align 8, !tbaa !28
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %28, !llvm.loop !86

35:                                               ; preds = %28, %16, %22, %11
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  br label %46

36:                                               ; preds = %2
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !28
  %38 = tail call ptr %37(i64 noundef 24, ptr noundef nonnull @.str.40) #8
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %38) #8
  %39 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !37
  %41 = sitofp i32 %40 to float
  %42 = getelementptr inbounds %struct.CfraElem, ptr %38, i64 0, i32 2
  store float %41, ptr %42, align 8, !tbaa !87
  br label %46

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 11
  %45 = load ptr, ptr %44, align 8, !tbaa !82
  call void @ED_markers_make_cfra_list(ptr noundef %45, ptr noundef nonnull %4, i16 noundef signext 1) #8
  br label %46

46:                                               ; preds = %43, %36, %35
  %47 = call ptr @ANIM_editkeyframes_select(i16 noundef signext 2) #8
  %48 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 1) #8
  %49 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %0, align 8, !tbaa !25
  %51 = load i16, ptr %49, align 8, !tbaa !27
  %52 = sext i16 %51 to i32
  %53 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 3, ptr noundef %50, i32 noundef %52) #8
  %54 = load ptr, ptr %3, align 8, !tbaa !28
  %55 = icmp eq ptr %54, null
  br i1 %55, label %96, label %56

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  br label %61

58:                                               ; preds = %93, %61
  %59 = load ptr, ptr %62, align 8, !tbaa !28
  %60 = icmp eq ptr %59, null
  br i1 %60, label %96, label %61, !llvm.loop !89

61:                                               ; preds = %56, %58
  %62 = phi ptr [ %54, %56 ], [ %59, %58 ]
  %63 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %62) #8
  %64 = load ptr, ptr %4, align 8, !tbaa !28
  %65 = icmp eq ptr %64, null
  br i1 %65, label %58, label %66

66:                                               ; preds = %61
  %67 = icmp eq ptr %63, null
  %68 = getelementptr inbounds %struct.bAnimListElem, ptr %62, i64 0, i32 3
  %69 = getelementptr inbounds %struct.bAnimListElem, ptr %62, i64 0, i32 2
  %70 = getelementptr inbounds %struct.bAnimListElem, ptr %62, i64 0, i32 8
  br label %71

71:                                               ; preds = %66, %93
  %72 = phi ptr [ %64, %66 ], [ %94, %93 ]
  %73 = getelementptr inbounds %struct.CfraElem, ptr %72, i64 0, i32 2
  %74 = load float, ptr %73, align 8, !tbaa !87
  br i1 %67, label %77, label %75

75:                                               ; preds = %71
  %76 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %63, float noundef %74, i16 noundef signext 1) #8
  br label %77

77:                                               ; preds = %71, %75
  %78 = phi float [ %76, %75 ], [ %74, %71 ]
  store float %78, ptr %57, align 8, !tbaa !73
  %79 = load i32, ptr %68, align 8, !tbaa !60
  switch i32 %79, label %90 [
    i32 27, label %80
    i32 29, label %85
  ]

80:                                               ; preds = %77
  %81 = load ptr, ptr %69, align 8, !tbaa !61
  %82 = getelementptr inbounds %struct.CfraElem, ptr %72, i64 0, i32 2
  %83 = load float, ptr %82, align 8, !tbaa !87
  %84 = fptosi float %83 to i32
  call void @ED_gpencil_select_frame(ptr noundef %81, i32 noundef %84, i16 noundef signext 2) #8
  br label %93

85:                                               ; preds = %77
  %86 = load ptr, ptr %69, align 8, !tbaa !61
  %87 = getelementptr inbounds %struct.CfraElem, ptr %72, i64 0, i32 2
  %88 = load float, ptr %87, align 8, !tbaa !87
  %89 = fptosi float %88 to i32
  call void @ED_mask_select_frame(ptr noundef %86, i32 noundef %89, i16 noundef signext 2) #8
  br label %93

90:                                               ; preds = %77
  %91 = load ptr, ptr %70, align 8, !tbaa !29
  %92 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %91, ptr noundef %48, ptr noundef %47, ptr noundef null) #8
  br label %93

93:                                               ; preds = %80, %90, %85
  %94 = load ptr, ptr %72, align 8, !tbaa !28
  %95 = icmp eq ptr %94, null
  br i1 %95, label %58, label %71, !llvm.loop !90

96:                                               ; preds = %58, %46
  call void @BLI_freelistN(ptr noundef nonnull %4) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  br label %97

97:                                               ; preds = %2, %96
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret void
}

; Function Attrs: optsize
declare void @ED_markers_get_minmax(ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ANIM_nla_mapping_apply_fcurve(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_gplayer_make_cfra_list(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare signext i16 @bezt_to_cfraelem(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_markers_make_cfra_list(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_gpencil_select_frame(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_mask_select_frame(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @select_moreless_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %5 = tail call ptr @ANIM_editkeyframes_buildselmap(i16 noundef signext %1) #8
  %6 = load ptr, ptr %0, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !27
  %9 = sext i16 %8 to i32
  %10 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2051, ptr noundef %6, i32 noundef %9) #8
  %11 = load ptr, ptr %3, align 8, !tbaa !28
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 2
  br label %15

15:                                               ; preds = %13, %32
  %16 = phi ptr [ %11, %13 ], [ %33, %32 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !29
  %19 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !91
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !28
  %24 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !93
  %26 = zext i32 %25 to i64
  %27 = call ptr %23(i64 noundef %26, ptr noundef nonnull @.str.49) #8
  store ptr %27, ptr %14, align 8, !tbaa !94
  %28 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef nonnull %18, ptr noundef null, ptr noundef %5, ptr noundef null) #8
  %29 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef nonnull %18, ptr noundef null, ptr noundef nonnull @bezt_selmap_flush, ptr noundef null) #8
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !28
  %31 = load ptr, ptr %14, align 8, !tbaa !94
  call void %30(ptr noundef %31) #8
  store ptr null, ptr %14, align 8, !tbaa !94
  br label %32

32:                                               ; preds = %15, %22
  %33 = load ptr, ptr %16, align 8, !tbaa !28
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %15, !llvm.loop !95

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
define internal fastcc void @actkeys_select_leftright(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i16 %2, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call fastcc void @deselect_action_keys(ptr noundef nonnull %0, i16 noundef signext 0, i16 noundef signext 4) #10
  br label %10

10:                                               ; preds = %9, %3
  %11 = phi i16 [ 2, %9 ], [ %2, %3 ]
  %12 = tail call ptr @ANIM_editkeyframes_ok(i16 noundef signext 2) #8
  %13 = tail call ptr @ANIM_editkeyframes_select(i16 noundef signext %11) #8
  %14 = icmp eq i16 %1, 1
  %15 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !37
  %17 = sitofp i32 %16 to float
  %18 = fadd float %17, 0x3FB99999A0000000
  %19 = fadd float %17, 0xBFB99999A0000000
  %20 = select i1 %14, float -3.000000e+05, float %19
  %21 = select i1 %14, float %18, float 3.000000e+05
  %22 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 3
  store float %20, ptr %22, align 8
  %23 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 4
  store float %21, ptr %23, align 4
  %24 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %0, align 8, !tbaa !25
  %26 = load i16, ptr %24, align 8, !tbaa !27
  %27 = sext i16 %26 to i32
  %28 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 2051, ptr noundef %25, i32 noundef %27) #8
  %29 = load ptr, ptr %4, align 8, !tbaa !28
  %30 = icmp eq ptr %29, null
  br i1 %30, label %61, label %31

31:                                               ; preds = %10, %58
  %32 = phi ptr [ %59, %58 ], [ %29, %10 ]
  %33 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %32) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bAnimListElem, ptr %32, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !29
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %33, ptr noundef %37, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %38 = load ptr, ptr %36, align 8, !tbaa !29
  %39 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %38, ptr noundef %12, ptr noundef %13, ptr noundef null) #8
  %40 = load ptr, ptr %36, align 8, !tbaa !29
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %33, ptr noundef %40, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %58

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.bAnimListElem, ptr %32, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !60
  switch i32 %43, label %54 [
    i32 27, label %44
    i32 29, label %49
  ]

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.bAnimListElem, ptr %32, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !61
  %47 = load float, ptr %22, align 8, !tbaa !73
  %48 = load float, ptr %23, align 4, !tbaa !76
  call void @ED_gplayer_frames_select_border(ptr noundef %46, float noundef %47, float noundef %48, i16 noundef signext %11) #8
  br label %58

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.bAnimListElem, ptr %32, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !61
  %52 = load float, ptr %22, align 8, !tbaa !73
  %53 = load float, ptr %23, align 4, !tbaa !76
  call void @ED_masklayer_frames_select_border(ptr noundef %51, float noundef %52, float noundef %53, i16 noundef signext %11) #8
  br label %58

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.bAnimListElem, ptr %32, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !29
  %57 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %56, ptr noundef %12, ptr noundef %13, ptr noundef null) #8
  br label %58

58:                                               ; preds = %44, %54, %49, %35
  %59 = load ptr, ptr %32, align 8, !tbaa !28
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %31, !llvm.loop !96

61:                                               ; preds = %58, %10
  %62 = icmp eq i16 %11, 2
  br i1 %62, label %63, label %103

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !97
  %66 = icmp eq ptr %65, null
  br i1 %66, label %103, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.SpaceAction, ptr %65, i64 0, i32 11
  %69 = load i16, ptr %68, align 2, !tbaa !98
  %70 = and i16 %69, 2048
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %103, label %72

72:                                               ; preds = %67
  %73 = call ptr @ED_animcontext_get_markers(ptr noundef nonnull %0) #8
  %74 = load ptr, ptr %73, align 8, !tbaa !28
  %75 = icmp eq ptr %74, null
  br i1 %75, label %103, label %76

76:                                               ; preds = %72
  %77 = icmp eq i16 %1, 2
  %78 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  br label %79

79:                                               ; preds = %76, %100
  %80 = phi ptr [ %74, %76 ], [ %101, %100 ]
  br i1 %14, label %81, label %86

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.TimeMarker, ptr %80, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !102
  %84 = load i32, ptr %78, align 8, !tbaa !37
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %92, label %96

86:                                               ; preds = %79
  br i1 %77, label %87, label %96

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.TimeMarker, ptr %80, i64 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !102
  %90 = load i32, ptr %78, align 8, !tbaa !37
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %87, %81
  %93 = getelementptr inbounds %struct.TimeMarker, ptr %80, i64 0, i32 4
  %94 = load i32, ptr %93, align 4, !tbaa !104
  %95 = or i32 %94, 1
  store i32 %95, ptr %93, align 4, !tbaa !104
  br label %100

96:                                               ; preds = %81, %87, %86
  %97 = getelementptr inbounds %struct.TimeMarker, ptr %80, i64 0, i32 4
  %98 = load i32, ptr %97, align 4, !tbaa !104
  %99 = and i32 %98, -2
  store i32 %99, ptr %97, align 4, !tbaa !104
  br label %100

100:                                              ; preds = %92, %96
  %101 = load ptr, ptr %80, align 8, !tbaa !28
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %79, !llvm.loop !105

103:                                              ; preds = %100, %72, %63, %67, %61
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret void
}

; Function Attrs: optsize
declare ptr @ED_animcontext_get_markers(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mouse_action_keys(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.DLRBT_Tree, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %12 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !27
  %17 = icmp eq i16 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load ptr, ptr %0, align 8, !tbaa !25
  br label %20

20:                                               ; preds = %18, %5
  %21 = phi ptr [ %19, %18 ], [ null, %5 ]
  %22 = load i32, ptr %1, align 4, !tbaa !36
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds i32, ptr %1, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !36
  %26 = sitofp i32 %25 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %14, float noundef %23, float noundef %26, ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !68
  %28 = sitofp i16 %27 to float
  %29 = fmul float %28, 0x3FB99999A0000000
  %30 = call float @llvm.fmuladd.f32(float %28, float 0x3FE99999A0000000, float %29)
  %31 = fmul float %28, 0x3FD99999A0000000
  %32 = load float, ptr %9, align 4, !tbaa !83
  %33 = load float, ptr %10, align 4, !tbaa !83
  call void @UI_view2d_listview_view_to_cell(ptr noundef nonnull %14, float noundef 0.000000e+00, float noundef %30, float noundef 0.000000e+00, float noundef %31, float noundef %32, float noundef %33, ptr noundef null, ptr noundef nonnull %8) #8
  %34 = load i32, ptr %1, align 4, !tbaa !36
  %35 = add nsw i32 %34, -7
  %36 = sitofp i32 %35 to float
  %37 = load i32, ptr %24, align 4, !tbaa !36
  %38 = sitofp i32 %37 to float
  %39 = getelementptr inbounds %struct.rctf, ptr %11, i64 0, i32 2
  call void @UI_view2d_region_to_view(ptr noundef nonnull %14, float noundef %36, float noundef %38, ptr noundef nonnull %11, ptr noundef nonnull %39) #8
  %40 = load i32, ptr %1, align 4, !tbaa !36
  %41 = add nsw i32 %40, 7
  %42 = sitofp i32 %41 to float
  %43 = load i32, ptr %24, align 4, !tbaa !36
  %44 = sitofp i32 %43 to float
  %45 = getelementptr inbounds %struct.rctf, ptr %11, i64 0, i32 1
  %46 = getelementptr inbounds %struct.rctf, ptr %11, i64 0, i32 3
  call void @UI_view2d_region_to_view(ptr noundef nonnull %14, float noundef %42, float noundef %44, ptr noundef nonnull %45, ptr noundef nonnull %46) #8
  %47 = load ptr, ptr %0, align 8, !tbaa !25
  %48 = load i16, ptr %15, align 8, !tbaa !27
  %49 = sext i16 %48 to i32
  %50 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 11, ptr noundef %47, i32 noundef %49) #8
  %51 = load i32, ptr %8, align 4, !tbaa !36
  %52 = call ptr @BLI_findlink(ptr noundef nonnull %6, i32 noundef %51) #8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %20
  %55 = load i32, ptr %8, align 4, !tbaa !36
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i32 noundef %55) #10
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #8
  br label %180

57:                                               ; preds = %20
  %58 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %52) #8
  call void @BLI_dlrbTree_init(ptr noundef nonnull %7) #8
  %59 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !29
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 7
  %64 = load i16, ptr %63, align 2, !tbaa !106
  switch i16 %64, label %82 [
    i16 6, label %65
    i16 7, label %66
    i16 8, label %67
    i16 1, label %68
  ]

65:                                               ; preds = %62
  call void @scene_to_keylist(ptr noundef %21, ptr noundef nonnull %60, ptr noundef nonnull %7, ptr noundef null) #8
  br label %82

66:                                               ; preds = %62
  call void @ob_to_keylist(ptr noundef %21, ptr noundef nonnull %60, ptr noundef nonnull %7, ptr noundef null) #8
  br label %82

67:                                               ; preds = %62
  call void @action_to_keylist(ptr noundef %58, ptr noundef nonnull %60, ptr noundef nonnull %7, ptr noundef null) #8
  br label %82

68:                                               ; preds = %62
  call void @fcurve_to_keylist(ptr noundef %58, ptr noundef nonnull %60, ptr noundef nonnull %7, ptr noundef null) #8
  br label %82

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 3
  %71 = load i32, ptr %70, align 8, !tbaa !60
  switch i32 %71, label %82 [
    i32 3, label %72
    i32 6, label %73
    i32 27, label %76
    i32 29, label %79
  ]

72:                                               ; preds = %69
  call void @summary_to_keylist(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef null) #8
  br label %82

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !61
  call void @agroup_to_keylist(ptr noundef %58, ptr noundef %75, ptr noundef nonnull %7, ptr noundef null) #8
  br label %82

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !61
  call void @gpl_to_keylist(ptr noundef %21, ptr noundef %78, ptr noundef nonnull %7) #8
  br label %82

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !61
  call void @mask_to_keylist(ptr noundef %21, ptr noundef %81, ptr noundef nonnull %7) #8
  br label %82

82:                                               ; preds = %69, %72, %76, %79, %73, %65, %66, %67, %68, %62
  %83 = getelementptr inbounds %struct.DLRBT_Tree, ptr %7, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !107
  %85 = icmp eq ptr %84, null
  br i1 %85, label %113, label %86

86:                                               ; preds = %82
  %87 = load float, ptr %11, align 4, !tbaa !72
  %88 = load float, ptr %45, align 4, !tbaa !75
  %89 = fcmp olt float %87, %88
  br label %90

90:                                               ; preds = %86, %106
  %91 = phi ptr [ %84, %86 ], [ %111, %106 ]
  %92 = getelementptr inbounds %struct.ActKeyColumn, ptr %91, i64 0, i32 8
  %93 = load float, ptr %92, align 4, !tbaa !109
  br i1 %89, label %94, label %98

94:                                               ; preds = %90
  %95 = fcmp olt float %87, %93
  %96 = fcmp olt float %93, %88
  %97 = and i1 %95, %96
  br i1 %97, label %102, label %106

98:                                               ; preds = %90
  %99 = fcmp olt float %88, %93
  %100 = fcmp olt float %93, %87
  %101 = and i1 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98, %94
  %103 = getelementptr inbounds %struct.ActKeyColumn, ptr %91, i64 0, i32 8
  %104 = call float @BKE_nla_tweakedit_remap(ptr noundef %58, float noundef %93, i16 noundef signext 1) #8
  %105 = load float, ptr %103, align 4, !tbaa !109
  br label %113

106:                                              ; preds = %98, %94
  %107 = fcmp olt float %93, %87
  %108 = getelementptr inbounds %struct.ActKeyColumn, ptr %91, i64 0, i32 3
  %109 = getelementptr inbounds %struct.ActKeyColumn, ptr %91, i64 0, i32 2
  %110 = select i1 %107, ptr %108, ptr %109
  %111 = load ptr, ptr %110, align 8, !tbaa !28
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %90, !llvm.loop !111

113:                                              ; preds = %106, %82, %102
  %114 = phi i1 [ false, %102 ], [ true, %82 ], [ true, %106 ]
  %115 = phi float [ %104, %102 ], [ 0.000000e+00, %82 ], [ 0.000000e+00, %106 ]
  %116 = phi float [ %105, %102 ], [ 0.000000e+00, %82 ], [ 0.000000e+00, %106 ]
  call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %52) #8
  call void @BLI_dlrbTree_free(ptr noundef nonnull %7) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #8
  %117 = icmp eq i16 %2, 1
  br i1 %117, label %118, label %169

118:                                              ; preds = %113
  call fastcc void @deselect_action_keys(ptr noundef nonnull %0, i16 noundef signext 0, i16 noundef signext 4) #10
  %119 = load i16, ptr %15, align 8, !tbaa !27
  switch i16 %119, label %169 [
    i16 1, label %120
    i16 4, label %120
    i16 3, label %143
    i16 9, label %156
  ]

120:                                              ; preds = %118, %118
  %121 = load ptr, ptr %0, align 8, !tbaa !25
  %122 = zext nneg i16 %119 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %0, ptr noundef %121, i32 noundef %122, i8 noundef zeroext 0, i32 noundef 0) #8
  %123 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !61
  %125 = icmp eq ptr %124, null
  br i1 %125, label %169, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 3
  %128 = load i32, ptr %127, align 8, !tbaa !60
  switch i32 %128, label %169 [
    i32 6, label %129
    i32 7, label %136
  ]

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.bActionGroup, ptr %124, i64 0, i32 3
  %131 = load i32, ptr %130, align 8, !tbaa !112
  %132 = or i32 %131, 1
  store i32 %132, ptr %130, align 8, !tbaa !112
  %133 = load ptr, ptr %0, align 8, !tbaa !25
  %134 = load i16, ptr %15, align 8, !tbaa !27
  %135 = sext i16 %134 to i32
  call void @ANIM_set_active_channel(ptr noundef nonnull %0, ptr noundef %133, i32 noundef %135, i32 noundef 11, ptr noundef nonnull %124, i32 noundef 6) #8
  br label %169

136:                                              ; preds = %126
  %137 = getelementptr inbounds %struct.FCurve, ptr %124, i64 0, i32 9
  %138 = load i16, ptr %137, align 8, !tbaa !115
  %139 = or i16 %138, 2
  store i16 %139, ptr %137, align 8, !tbaa !115
  %140 = load ptr, ptr %0, align 8, !tbaa !25
  %141 = load i16, ptr %15, align 8, !tbaa !27
  %142 = sext i16 %141 to i32
  call void @ANIM_set_active_channel(ptr noundef nonnull %0, ptr noundef %140, i32 noundef %142, i32 noundef 11, ptr noundef nonnull %124, i32 noundef 7) #8
  br label %169

143:                                              ; preds = %118
  %144 = load ptr, ptr %0, align 8, !tbaa !25
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %0, ptr noundef %144, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 0) #8
  %145 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !61
  %147 = icmp eq ptr %146, null
  br i1 %147, label %169, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 3
  %150 = load i32, ptr %149, align 8, !tbaa !60
  %151 = icmp eq i32 %150, 27
  br i1 %151, label %152, label %169

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.bGPDlayer, ptr %146, i64 0, i32 4
  %154 = load i32, ptr %153, align 8, !tbaa !116
  %155 = or i32 %154, 32
  store i32 %155, ptr %153, align 8, !tbaa !116
  br label %169

156:                                              ; preds = %118
  %157 = load ptr, ptr %0, align 8, !tbaa !25
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %0, ptr noundef %157, i32 noundef 9, i8 noundef zeroext 0, i32 noundef 0) #8
  %158 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !61
  %160 = icmp eq ptr %159, null
  br i1 %160, label %169, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 3
  %163 = load i32, ptr %162, align 8, !tbaa !60
  %164 = icmp eq i32 %163, 29
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.MaskLayer, ptr %159, i64 0, i32 12
  %167 = load i8, ptr %166, align 2, !tbaa !118
  %168 = or i8 %167, 32
  store i8 %168, ptr %166, align 2, !tbaa !118
  br label %169

169:                                              ; preds = %113, %152, %148, %143, %156, %161, %165, %120, %136, %129, %126, %118
  %170 = phi i16 [ 2, %129 ], [ 2, %136 ], [ 2, %120 ], [ 2, %152 ], [ 2, %148 ], [ 2, %143 ], [ 2, %165 ], [ 2, %161 ], [ 2, %156 ], [ %2, %113 ], [ 2, %126 ], [ 2, %118 ]
  br i1 %114, label %178, label %171

171:                                              ; preds = %169
  %172 = icmp eq i8 %3, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %171
  call fastcc void @actkeys_mselect_column(ptr noundef nonnull %0, i16 noundef signext %170, float noundef %116) #10
  br label %178

174:                                              ; preds = %171
  %175 = icmp eq i8 %4, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %174
  call fastcc void @actkeys_mselect_channel_only(ptr noundef nonnull %0, ptr noundef nonnull %52, i16 noundef signext %170) #10
  br label %178

177:                                              ; preds = %174
  call fastcc void @actkeys_mselect_single(ptr noundef nonnull %0, ptr noundef nonnull %52, i16 noundef signext %170, float noundef %115) #10
  br label %178

178:                                              ; preds = %173, %177, %176, %169
  %179 = load ptr, ptr @MEM_freeN, align 8, !tbaa !28
  call void %179(ptr noundef nonnull %52) #8
  br label %180

180:                                              ; preds = %178, %54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_listview_view_to_cell(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_dlrbTree_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @scene_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ob_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @action_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fcurve_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @summary_to_keylist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @agroup_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gpl_to_keylist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mask_to_keylist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_dlrbTree_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ANIM_deselect_anim_channels(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ANIM_set_active_channel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @actkeys_mselect_column(ptr noundef %0, i16 noundef signext %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %6 = tail call ptr @ANIM_editkeyframes_select(i16 noundef signext %1) #8
  %7 = tail call ptr @ANIM_editkeyframes_ok(i16 noundef signext 1) #8
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %0, align 8, !tbaa !25
  %10 = load i16, ptr %8, align 8, !tbaa !27
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 2051, ptr noundef %9, i32 noundef %11) #8
  %13 = load ptr, ptr %4, align 8, !tbaa !28
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 3
  %17 = fptosi float %2 to i32
  br label %18

18:                                               ; preds = %15, %34
  %19 = phi ptr [ %13, %15 ], [ %35, %34 ]
  %20 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %19) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %20, float noundef %2, i16 noundef signext 1) #8
  br label %24

24:                                               ; preds = %18, %22
  %25 = phi float [ %23, %22 ], [ %2, %18 ]
  store float %25, ptr %16, align 8, !tbaa !73
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %19, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !60
  %28 = getelementptr inbounds %struct.bAnimListElem, ptr %19, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !29
  switch i32 %27, label %32 [
    i32 27, label %30
    i32 29, label %31
  ]

30:                                               ; preds = %24
  call void @ED_gpencil_select_frame(ptr noundef %29, i32 noundef %17, i16 noundef signext %1) #8
  br label %34

31:                                               ; preds = %24
  call void @ED_mask_select_frame(ptr noundef %29, i32 noundef %17, i16 noundef signext %1) #8
  br label %34

32:                                               ; preds = %24
  %33 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %29, ptr noundef %7, ptr noundef %6, ptr noundef null) #8
  br label %34

34:                                               ; preds = %31, %32, %30
  %35 = load ptr, ptr %19, align 8, !tbaa !28
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %18, !llvm.loop !120

37:                                               ; preds = %34, %3
  call void @BLI_freelistN(ptr noundef nonnull %5) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @actkeys_mselect_channel_only(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @ANIM_editkeyframes_select(i16 noundef signext %2) #8
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !60
  switch i32 %7, label %14 [
    i32 27, label %8
    i32 29, label %11
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  tail call void @ED_gpencil_select_frames(ptr noundef %10, i16 noundef signext %2) #8
  br label %47

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  tail call void @ED_mask_select_frames(ptr noundef %13, i16 noundef signext %2) #8
  br label %47

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !27
  switch i16 %16, label %43 [
    i16 3, label %17
    i16 9, label %17
  ]

17:                                               ; preds = %14, %14
  %18 = icmp eq i32 %7, 3
  br i1 %18, label %19, label %43

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 7
  %21 = load i16, ptr %20, align 2, !tbaa !106
  %22 = icmp eq i16 %21, 5
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %24 = load ptr, ptr %0, align 8, !tbaa !25
  %25 = zext nneg i16 %16 to i32
  %26 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 2051, ptr noundef %24, i32 noundef %25) #8
  %27 = load ptr, ptr %4, align 8, !tbaa !28
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %23, %39
  %30 = phi ptr [ %40, %39 ], [ %27, %23 ]
  %31 = getelementptr inbounds %struct.bAnimListElem, ptr %30, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !60
  switch i32 %32, label %39 [
    i32 27, label %33
    i32 29, label %36
  ]

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.bAnimListElem, ptr %30, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !61
  call void @ED_gpencil_select_frames(ptr noundef %35, i16 noundef signext %2) #8
  br label %39

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.bAnimListElem, ptr %30, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !61
  call void @ED_mask_select_frames(ptr noundef %38, i16 noundef signext %2) #8
  br label %39

39:                                               ; preds = %29, %33, %36
  %40 = load ptr, ptr %30, align 8, !tbaa !28
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %29, !llvm.loop !121

42:                                               ; preds = %39, %23
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br label %47

43:                                               ; preds = %14, %19, %17
  %44 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !80
  %46 = tail call signext i16 @ANIM_animchannel_keyframes_loop(ptr noundef null, ptr noundef %45, ptr noundef nonnull %1, ptr noundef null, ptr noundef %5, ptr noundef null) #8
  br label %47

47:                                               ; preds = %11, %43, %42, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @actkeys_mselect_single(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, float noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.KeyframeEditData, align 8
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %7 = tail call ptr @ANIM_editkeyframes_select(i16 noundef signext %2) #8
  %8 = tail call ptr @ANIM_editkeyframes_ok(i16 noundef signext 1) #8
  %9 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 3
  store float %3, ptr %9, align 8, !tbaa !73
  %10 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !60
  switch i32 %11, label %20 [
    i32 27, label %12
    i32 29, label %16
  ]

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = fptosi float %3 to i32
  tail call void @ED_gpencil_select_frame(ptr noundef %14, i32 noundef %15, i16 noundef signext %2) #8
  br label %55

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = fptosi float %3 to i32
  tail call void @ED_mask_select_frame(ptr noundef %18, i32 noundef %19, i16 noundef signext %2) #8
  br label %55

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %22 = load i16, ptr %21, align 8, !tbaa !27
  switch i16 %22, label %51 [
    i16 3, label %23
    i16 9, label %23
  ]

23:                                               ; preds = %20, %20
  %24 = icmp eq i32 %11, 3
  br i1 %24, label %25, label %51

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 7
  %27 = load i16, ptr %26, align 2, !tbaa !106
  %28 = icmp eq i16 %27, 5
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %30 = load ptr, ptr %0, align 8, !tbaa !25
  %31 = zext nneg i16 %22 to i32
  %32 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 2051, ptr noundef %30, i32 noundef %31) #8
  %33 = load ptr, ptr %6, align 8, !tbaa !28
  %34 = icmp eq ptr %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %29
  %36 = fptosi float %3 to i32
  br label %37

37:                                               ; preds = %35, %47
  %38 = phi ptr [ %33, %35 ], [ %48, %47 ]
  %39 = getelementptr inbounds %struct.bAnimListElem, ptr %38, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !60
  switch i32 %40, label %47 [
    i32 27, label %41
    i32 29, label %44
  ]

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.bAnimListElem, ptr %38, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !61
  call void @ED_gpencil_select_frame(ptr noundef %43, i32 noundef %36, i16 noundef signext %2) #8
  br label %47

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.bAnimListElem, ptr %38, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !61
  call void @ED_mask_select_frame(ptr noundef %46, i32 noundef %36, i16 noundef signext %2) #8
  br label %47

47:                                               ; preds = %37, %41, %44
  %48 = load ptr, ptr %38, align 8, !tbaa !28
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %37, !llvm.loop !122

50:                                               ; preds = %47, %29
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  br label %55

51:                                               ; preds = %20, %25, %23
  %52 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !80
  %54 = call signext i16 @ANIM_animchannel_keyframes_loop(ptr noundef nonnull %5, ptr noundef %53, ptr noundef nonnull %1, ptr noundef %8, ptr noundef %7, ptr noundef null) #8
  br label %55

55:                                               ; preds = %16, %51, %50, %12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  ret void
}

; Function Attrs: optsize
declare void @ED_gpencil_select_frames(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_mask_select_frames(ptr noundef, i16 noundef signext) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!22 = !{!6, !7, i64 48}
!23 = !{!6, !7, i64 64}
!24 = !{!6, !7, i64 56}
!25 = !{!26, !7, i64 0}
!26 = !{!"bAnimContext", !7, i64 0, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!27 = !{!26, !12, i64 8}
!28 = !{!7, !7, i64 0}
!29 = !{!30, !7, i64 40}
!30 = !{!"bAnimListElem", !7, i64 0, !7, i64 8, !7, i64 16, !31, i64 24, !31, i64 28, !31, i64 32, !12, i64 36, !12, i64 38, !7, i64 40, !7, i64 48, !7, i64 56}
!31 = !{!"int", !8, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!26, !7, i64 48}
!35 = !{!26, !7, i64 32}
!36 = !{!31, !31, i64 0}
!37 = !{!38, !31, i64 680}
!38 = !{!"Scene", !39, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !31, i64 232, !31, i64 236, !31, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !40, i64 280, !50, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !31, i64 4380, !10, i64 4384, !51, i64 4400, !52, i64 4416, !55, i64 4600, !7, i64 4608, !56, i64 4616, !7, i64 4640, !57, i64 4648, !57, i64 4656, !43, i64 4664, !44, i64 4824, !58, i64 4888, !7, i64 4952}
!39 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !31, i64 100, !31, i64 104, !31, i64 108, !7, i64 112}
!40 = !{!"RenderData", !41, i64 0, !7, i64 248, !7, i64 256, !45, i64 264, !46, i64 328, !31, i64 400, !31, i64 404, !31, i64 408, !42, i64 412, !31, i64 416, !31, i64 420, !31, i64 424, !31, i64 428, !12, i64 432, !12, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !31, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !31, i64 484, !31, i64 488, !12, i64 492, !12, i64 494, !31, i64 496, !31, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !31, i64 516, !31, i64 520, !31, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !47, i64 544, !47, i64 560, !48, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !31, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !42, i64 660, !42, i64 664, !12, i64 668, !12, i64 670, !42, i64 672, !42, i64 676, !8, i64 680, !31, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !31, i64 2520, !12, i64 2524, !12, i64 2526, !42, i64 2528, !42, i64 2532, !12, i64 2536, !12, i64 2538, !42, i64 2540, !12, i64 2544, !12, i64 2546, !31, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !42, i64 2560, !42, i64 2564, !7, i64 2568, !31, i64 2576, !42, i64 2580, !8, i64 2584, !49, i64 2616, !31, i64 3976, !31, i64 3980}
!41 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !42, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !43, i64 24, !44, i64 184}
!42 = !{!"float", !8, i64 0}
!43 = !{!"ColorManagedViewSettings", !31, i64 0, !31, i64 4, !8, i64 8, !8, i64 72, !42, i64 136, !42, i64 140, !7, i64 144, !7, i64 152}
!44 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!45 = !{!"QuicktimeCodecSettings", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20, !31, i64 24, !31, i64 28, !31, i64 32, !31, i64 36, !31, i64 40, !31, i64 44, !12, i64 48, !12, i64 50, !31, i64 52, !31, i64 56, !31, i64 60}
!46 = !{!"FFMpegCodecData", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20, !31, i64 24, !31, i64 28, !42, i64 32, !31, i64 36, !31, i64 40, !31, i64 44, !31, i64 48, !31, i64 52, !31, i64 56, !31, i64 60, !7, i64 64}
!47 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!48 = !{!"rcti", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12}
!49 = !{!"BakeData", !41, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !42, i64 1280, !42, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!50 = !{!"AudioData", !31, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !31, i64 16, !12, i64 20, !12, i64 22, !42, i64 24, !42, i64 28}
!51 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!52 = !{!"GameData", !51, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !53, i64 40, !12, i64 64, !12, i64 66, !42, i64 68, !54, i64 72, !42, i64 128, !42, i64 132, !31, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!53 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !42, i64 8, !42, i64 12, !7, i64 16}
!54 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !31, i64 40, !42, i64 44, !42, i64 48, !12, i64 52, !12, i64 54}
!55 = !{!"UnitSettings", !42, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!56 = !{!"PhysicsSettings", !8, i64 0, !31, i64 12, !31, i64 16, !31, i64 20}
!57 = !{!"long", !8, i64 0}
!58 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!59 = !{i32 2, i32 5}
!60 = !{!30, !31, i64 24}
!61 = !{!30, !7, i64 16}
!62 = distinct !{!62, !33}
!63 = distinct !{!63, !33}
!64 = !{!48, !31, i64 4}
!65 = !{!48, !31, i64 0}
!66 = !{!48, !31, i64 12}
!67 = !{!48, !31, i64 8}
!68 = !{!69, !12, i64 8948}
!69 = !{!"UserDef", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !31, i64 8468, !12, i64 8472, !12, i64 8474, !12, i64 8476, !12, i64 8478, !12, i64 8480, !12, i64 8482, !31, i64 8484, !31, i64 8488, !31, i64 8492, !12, i64 8496, !12, i64 8498, !31, i64 8500, !31, i64 8504, !31, i64 8508, !31, i64 8512, !31, i64 8516, !31, i64 8520, !31, i64 8524, !12, i64 8528, !12, i64 8530, !12, i64 8532, !12, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !12, i64 8712, !12, i64 8714, !12, i64 8716, !12, i64 8718, !12, i64 8720, !12, i64 8722, !12, i64 8724, !12, i64 8726, !8, i64 8728, !12, i64 8896, !12, i64 8898, !12, i64 8900, !12, i64 8902, !12, i64 8904, !12, i64 8906, !12, i64 8908, !12, i64 8910, !31, i64 8912, !31, i64 8916, !12, i64 8920, !12, i64 8922, !12, i64 8924, !12, i64 8926, !12, i64 8928, !12, i64 8930, !12, i64 8932, !12, i64 8934, !12, i64 8936, !12, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !12, i64 8944, !12, i64 8946, !12, i64 8948, !12, i64 8950, !12, i64 8952, !12, i64 8954, !42, i64 8956, !42, i64 8960, !31, i64 8964, !12, i64 8968, !12, i64 8970, !42, i64 8972, !12, i64 8976, !12, i64 8978, !12, i64 8980, !12, i64 8982, !70, i64 8984, !8, i64 9760, !8, i64 9772, !12, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !31, i64 10896, !31, i64 10900, !42, i64 10904, !42, i64 10908, !31, i64 10912, !12, i64 10916, !12, i64 10918, !12, i64 10920, !12, i64 10922, !12, i64 10924, !12, i64 10926, !71, i64 10928}
!70 = !{!"ColorBand", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!71 = !{!"WalkNavigation", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !12, i64 24, !8, i64 26}
!72 = !{!47, !42, i64 0}
!73 = !{!74, !42, i64 32}
!74 = !{!"KeyframeEditData", !10, i64 0, !7, i64 16, !7, i64 24, !42, i64 32, !42, i64 36, !31, i64 40, !31, i64 44, !7, i64 48, !31, i64 56, !12, i64 60, !12, i64 62}
!75 = !{!47, !42, i64 4}
!76 = !{!74, !42, i64 36}
!77 = !{!47, !42, i64 8}
!78 = distinct !{!78, !33}
!79 = distinct !{!79, !33}
!80 = !{!26, !7, i64 40}
!81 = distinct !{!81, !33}
!82 = !{!26, !7, i64 64}
!83 = !{!42, !42, i64 0}
!84 = distinct !{!84, !33}
!85 = distinct !{!85, !33}
!86 = distinct !{!86, !33}
!87 = !{!88, !42, i64 16}
!88 = !{!"CfraElem", !7, i64 0, !7, i64 8, !42, i64 16, !31, i64 20}
!89 = distinct !{!89, !33}
!90 = distinct !{!90, !33}
!91 = !{!92, !7, i64 48}
!92 = !{!"FCurve", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !7, i64 48, !7, i64 56, !31, i64 64, !42, i64 68, !12, i64 72, !12, i64 74, !31, i64 76, !7, i64 80, !31, i64 88, !8, i64 92, !42, i64 104, !42, i64 108}
!93 = !{!92, !31, i64 64}
!94 = !{!74, !7, i64 24}
!95 = distinct !{!95, !33}
!96 = distinct !{!96, !33}
!97 = !{!26, !7, i64 24}
!98 = !{!99, !12, i64 338}
!99 = !{!"SpaceAction", !7, i64 0, !7, i64 8, !10, i64 16, !31, i64 32, !42, i64 36, !8, i64 40, !100, i64 56, !7, i64 216, !101, i64 224, !8, i64 336, !8, i64 337, !12, i64 338, !42, i64 340}
!100 = !{!"View2D", !47, i64 0, !47, i64 16, !48, i64 32, !48, i64 48, !48, i64 64, !8, i64 80, !8, i64 88, !42, i64 96, !42, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !31, i64 136, !31, i64 140, !7, i64 144, !7, i64 152}
!101 = !{!"bDopeSheet", !7, i64 0, !10, i64 8, !7, i64 24, !8, i64 32, !31, i64 96, !31, i64 100, !31, i64 104, !31, i64 108}
!102 = !{!103, !31, i64 16}
!103 = !{!"TimeMarker", !7, i64 0, !7, i64 8, !31, i64 16, !8, i64 20, !31, i64 84, !7, i64 88}
!104 = !{!103, !31, i64 84}
!105 = distinct !{!105, !33}
!106 = !{!30, !12, i64 38}
!107 = !{!108, !7, i64 16}
!108 = !{!"DLRBT_Tree", !7, i64 0, !7, i64 8, !7, i64 16}
!109 = !{!110, !42, i64 44}
!110 = !{!"ActKeyColumn", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !8, i64 41, !12, i64 42, !42, i64 44, !12, i64 48, !12, i64 50}
!111 = distinct !{!111, !33}
!112 = !{!113, !31, i64 32}
!113 = !{!"bActionGroup", !7, i64 0, !7, i64 8, !10, i64 16, !31, i64 32, !31, i64 36, !8, i64 40, !114, i64 104}
!114 = !{!"ThemeWireColor", !8, i64 0, !8, i64 4, !8, i64 8, !12, i64 12, !12, i64 14}
!115 = !{!92, !12, i64 72}
!116 = !{!117, !31, i64 40}
!117 = !{!"bGPDlayer", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 32, !31, i64 40, !12, i64 44, !12, i64 46, !8, i64 48, !8, i64 64}
!118 = !{!119, !8, i64 142}
!119 = !{!"MaskLayer", !7, i64 0, !7, i64 8, !8, i64 16, !10, i64 80, !10, i64 96, !7, i64 112, !7, i64 120, !42, i64 128, !8, i64 132, !8, i64 133, !8, i64 134, !8, i64 135, !8, i64 142, !8, i64 143}
!120 = distinct !{!120, !33}
!121 = distinct !{!121, !33}
!122 = distinct !{!122, !33}
