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
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_deselectall_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !48
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_deselectall_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !49 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
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
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_borderselect_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !46
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5) #8
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_borderselect_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !55 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.rcti, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.27) #8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  call fastcc void @deselect_action_keys(ptr noundef nonnull %3, i16 noundef signext 1, i16 noundef signext 4) #10
  br label %14

14:                                               ; preds = %13, %7
  call void @WM_operator_properties_border_to_rcti(ptr noundef nonnull %1, ptr noundef nonnull %4) #8
  %15 = load ptr, ptr %8, align 8, !tbaa !50
  %16 = call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.39) #8
  %17 = icmp eq i32 %16, 3
  %18 = select i1 %17, i16 2, i16 4
  %19 = load ptr, ptr %8, align 8, !tbaa !50
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
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_columnselect_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.13, ptr noundef nonnull @prop_column_select_types, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_columnselect_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !56 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
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
  store ptr @.str.15, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_select_linked_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_select_linked_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !57 {
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
  %10 = load ptr, ptr %3, align 8, !tbaa !58
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !60
  %13 = sext i16 %12 to i32
  %14 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2051, ptr noundef %10, i32 noundef %13) #8
  %15 = load ptr, ptr %4, align 8, !tbaa !61
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %9, %25
  %18 = phi ptr [ %26, %25 ], [ %15, %9 ]
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !62
  %21 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %20, ptr noundef null, ptr noundef %5, ptr noundef null) #8
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %20, ptr noundef null, ptr noundef %6, ptr noundef null) #8
  br label %25

25:                                               ; preds = %23, %17
  %26 = load ptr, ptr %18, align 8, !tbaa !61
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %17, !llvm.loop !65

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
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_select_more_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !67 {
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
  store ptr @.str.21, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_select_less_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !68 {
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
  store ptr @.str.24, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @actkeys_select_leftright_invoke, ptr %4, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_select_leftright_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.13, ptr noundef nonnull @prop_actkeys_leftright_select_types, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !48
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268435456) #8
  %12 = load ptr, ptr %8, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.5) #8
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_select_leftright_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !69 {
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !50
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
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !72
  %21 = sitofp i32 %20 to float
  %22 = call float @UI_view2d_region_to_view_x(ptr noundef nonnull %18, float noundef %21) #8
  %23 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 22, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !73
  %25 = sitofp i32 %24 to float
  %26 = fcmp olt float %22, %25
  %27 = load ptr, ptr %5, align 8, !tbaa !50
  %28 = select i1 %26, i32 1, i32 2
  call void @RNA_enum_set(ptr noundef %27, ptr noundef nonnull @.str.13, i32 noundef %28) #8
  br label %29

29:                                               ; preds = %13, %10
  %30 = call i32 @actkeys_select_leftright_exec(ptr noundef %0, ptr noundef nonnull %1) #10, !range !95
  br label %31

31:                                               ; preds = %3, %29
  %32 = phi i32 [ %30, %29 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #9
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_select_leftright_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !96 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.13) #8
  %7 = trunc i32 %6 to i16
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !tbaa !50
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
  store ptr @.str.29, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.30, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @actkeys_clickselect_invoke, ptr %4, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.32) #8
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #8
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #8
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #8
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actkeys_clickselect_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !97 {
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #9
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.27) #8
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i16 1, i16 8
  %13 = load ptr, ptr %8, align 8, !tbaa !50
  %14 = call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.33) #8
  %15 = trunc i32 %14 to i8
  %16 = load ptr, ptr %8, align 8, !tbaa !50
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
define internal fastcc void @deselect_action_keys(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #0 !PGOFuncName !98 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %0, align 8, !tbaa !58
  %8 = load i16, ptr %6, align 8, !tbaa !60
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
  %19 = load i32, ptr %18, align 8, !tbaa !99
  switch i32 %19, label %30 [
    i32 27, label %20
    i32 29, label %25
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !100
  %23 = call zeroext i8 @ED_gplayer_frame_select_check(ptr noundef %22) #8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %35, label %38

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !100
  %28 = call zeroext i8 @ED_masklayer_frame_select_check(ptr noundef %27) #8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %35, label %38

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !62
  %33 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %32, ptr noundef null, ptr noundef %11, ptr noundef null) #8
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %20, %30, %25
  %36 = load ptr, ptr %17, align 8, !tbaa !61
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %16, !llvm.loop !101

38:                                               ; preds = %35, %20, %25, %30, %3
  %39 = phi i16 [ %2, %3 ], [ %2, %35 ], [ 4, %20 ], [ 4, %25 ], [ 4, %30 ]
  %40 = call ptr @ANIM_editkeyframes_select(i16 noundef signext %39) #8
  %41 = load ptr, ptr %4, align 8, !tbaa !61
  %42 = icmp eq ptr %41, null
  br i1 %42, label %60, label %43

43:                                               ; preds = %38, %57
  %44 = phi ptr [ %58, %57 ], [ %41, %38 ]
  %45 = getelementptr inbounds %struct.bAnimListElem, ptr %44, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !99
  switch i32 %46, label %53 [
    i32 27, label %47
    i32 29, label %50
  ]

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.bAnimListElem, ptr %44, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !100
  call void @ED_gplayer_frame_select_set(ptr noundef %49, i16 noundef signext %39) #8
  br label %57

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.bAnimListElem, ptr %44, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !100
  call void @ED_masklayer_frame_select_set(ptr noundef %52, i16 noundef signext %39) #8
  br label %57

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.bAnimListElem, ptr %44, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !62
  %56 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %55, ptr noundef null, ptr noundef %40, ptr noundef null) #8
  br label %57

57:                                               ; preds = %47, %53, %50
  %58 = load ptr, ptr %44, align 8, !tbaa !61
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %43, !llvm.loop !102

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
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !103 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !104
  %4 = load i32, ptr %0, align 4, !tbaa !105
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !106 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !107
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @borderselect_action(ptr noundef %0, i64 %1, i64 %2, i16 noundef signext %3, i16 noundef signext %4) unnamed_addr #0 !PGOFuncName !109 {
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
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
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
  %30 = load ptr, ptr %0, align 8, !tbaa !58
  %31 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %32 = load i16, ptr %31, align 8, !tbaa !60
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
  %42 = load ptr, ptr %6, align 8, !tbaa !61
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
  %52 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %53 = sitofp i16 %52 to float
  %54 = fmul float %53, 0x3FB99999A0000000
  %55 = call float @llvm.fmuladd.f32(float %53, float 0x3FE99999A0000000, float %54)
  %56 = fsub float %50, %55
  br i1 %37, label %57, label %68

57:                                               ; preds = %48
  %58 = icmp eq ptr %51, null
  %59 = load float, ptr %8, align 4, !tbaa !114
  br i1 %58, label %64, label %60

60:                                               ; preds = %57
  %61 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %51, float noundef %59, i16 noundef signext 1) #8
  store float %61, ptr %45, align 8, !tbaa !115
  %62 = load float, ptr %28, align 4, !tbaa !117
  %63 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %51, float noundef %62, i16 noundef signext 1) #8
  br label %66

64:                                               ; preds = %57
  store float %59, ptr %45, align 8, !tbaa !115
  %65 = load float, ptr %28, align 4, !tbaa !117
  br label %66

66:                                               ; preds = %60, %64
  %67 = phi float [ %63, %60 ], [ %65, %64 ]
  store float %67, ptr %46, align 4, !tbaa !118
  br i1 %36, label %74, label %68

68:                                               ; preds = %48, %66
  %69 = load float, ptr %24, align 4, !tbaa !119
  %70 = fcmp olt float %50, %69
  %71 = load float, ptr %29, align 4
  %72 = fcmp ogt float %56, %71
  %73 = select i1 %70, i1 true, i1 %72
  br i1 %73, label %114, label %74

74:                                               ; preds = %68, %66
  %75 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 3
  %76 = load i32, ptr %75, align 8, !tbaa !99
  switch i32 %76, label %111 [
    i32 26, label %77
    i32 27, label %89
    i32 28, label %94
    i32 29, label %106
  ]

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !100
  %80 = getelementptr inbounds %struct.bGPdata, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !61
  %82 = icmp eq ptr %81, null
  br i1 %82, label %114, label %83

83:                                               ; preds = %77, %83
  %84 = phi ptr [ %87, %83 ], [ %81, %77 ]
  %85 = load float, ptr %8, align 4, !tbaa !114
  %86 = load float, ptr %28, align 4, !tbaa !117
  call void @ED_gplayer_frames_select_border(ptr noundef nonnull %84, float noundef %85, float noundef %86, i16 noundef signext %4) #8
  %87 = load ptr, ptr %84, align 8, !tbaa !61
  %88 = icmp eq ptr %87, null
  br i1 %88, label %114, label %83, !llvm.loop !120

89:                                               ; preds = %74
  %90 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !100
  %92 = load float, ptr %8, align 4, !tbaa !114
  %93 = load float, ptr %28, align 4, !tbaa !117
  call void @ED_gplayer_frames_select_border(ptr noundef %91, float noundef %92, float noundef %93, i16 noundef signext %4) #8
  br label %114

94:                                               ; preds = %74
  %95 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !100
  %97 = getelementptr inbounds %struct.Mask, ptr %96, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !61
  %99 = icmp eq ptr %98, null
  br i1 %99, label %114, label %100

100:                                              ; preds = %94, %100
  %101 = phi ptr [ %104, %100 ], [ %98, %94 ]
  %102 = load float, ptr %8, align 4, !tbaa !114
  %103 = load float, ptr %28, align 4, !tbaa !117
  call void @ED_masklayer_frames_select_border(ptr noundef nonnull %101, float noundef %102, float noundef %103, i16 noundef signext %4) #8
  %104 = load ptr, ptr %101, align 8, !tbaa !61
  %105 = icmp eq ptr %104, null
  br i1 %105, label %114, label %100, !llvm.loop !121

106:                                              ; preds = %74
  %107 = getelementptr inbounds %struct.bAnimListElem, ptr %49, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !100
  %109 = load float, ptr %8, align 4, !tbaa !114
  %110 = load float, ptr %28, align 4, !tbaa !117
  call void @ED_masklayer_frames_select_border(ptr noundef %108, float noundef %109, float noundef %110, i16 noundef signext %4) #8
  br label %114

111:                                              ; preds = %74
  %112 = load ptr, ptr %47, align 8, !tbaa !122
  %113 = call signext i16 @ANIM_animchannel_keyframes_loop(ptr noundef nonnull %7, ptr noundef %112, ptr noundef nonnull %49, ptr noundef %41, ptr noundef %35, ptr noundef null) #8
  br label %114

114:                                              ; preds = %100, %83, %94, %77, %89, %106, %111, %68
  %115 = load ptr, ptr %49, align 8, !tbaa !61
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %48, !llvm.loop !123

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
define internal fastcc void @markers_selectkeys_between(ptr noundef %0) unnamed_addr #0 !PGOFuncName !124 {
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
  %7 = load ptr, ptr %6, align 8, !tbaa !125
  call void @ED_markers_get_minmax(ptr noundef %7, i16 noundef signext 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %8 = load float, ptr %4, align 4, !tbaa !126
  %9 = fadd float %8, -5.000000e-01
  store float %9, ptr %4, align 4, !tbaa !126
  %10 = load float, ptr %5, align 4, !tbaa !126
  %11 = fadd float %10, 5.000000e-01
  store float %11, ptr %5, align 4, !tbaa !126
  %12 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 2) #8
  %13 = call ptr @ANIM_editkeyframes_select(i16 noundef signext 2) #8
  %14 = load float, ptr %4, align 4, !tbaa !126
  %15 = getelementptr inbounds %struct.KeyframeEditData, ptr %3, i64 0, i32 3
  store float %14, ptr %15, align 8, !tbaa !115
  %16 = load float, ptr %5, align 4, !tbaa !126
  %17 = getelementptr inbounds %struct.KeyframeEditData, ptr %3, i64 0, i32 4
  store float %16, ptr %17, align 4, !tbaa !118
  %18 = load ptr, ptr %0, align 8, !tbaa !58
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %20 = load i16, ptr %19, align 8, !tbaa !60
  %21 = sext i16 %20 to i32
  %22 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 2051, ptr noundef %18, i32 noundef %21) #8
  %23 = load ptr, ptr %2, align 8, !tbaa !61
  %24 = icmp eq ptr %23, null
  br i1 %24, label %55, label %25

25:                                               ; preds = %1, %52
  %26 = phi ptr [ %53, %52 ], [ %23, %1 ]
  %27 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %26) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %27, ptr noundef %31, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %32 = load ptr, ptr %30, align 8, !tbaa !62
  %33 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %3, ptr noundef %32, ptr noundef %12, ptr noundef %13, ptr noundef null) #8
  %34 = load ptr, ptr %30, align 8, !tbaa !62
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %27, ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %52

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !99
  switch i32 %37, label %48 [
    i32 27, label %38
    i32 29, label %43
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !100
  %41 = load float, ptr %4, align 4, !tbaa !126
  %42 = load float, ptr %5, align 4, !tbaa !126
  call void @ED_gplayer_frames_select_border(ptr noundef %40, float noundef %41, float noundef %42, i16 noundef signext 2) #8
  br label %52

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !100
  %46 = load float, ptr %4, align 4, !tbaa !126
  %47 = load float, ptr %5, align 4, !tbaa !126
  call void @ED_masklayer_frames_select_border(ptr noundef %45, float noundef %46, float noundef %47, i16 noundef signext 2) #8
  br label %52

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !62
  %51 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %3, ptr noundef %50, ptr noundef %12, ptr noundef %13, ptr noundef null) #8
  br label %52

52:                                               ; preds = %38, %48, %43, %29
  %53 = load ptr, ptr %26, align 8, !tbaa !61
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %25, !llvm.loop !127

55:                                               ; preds = %52, %1
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @columnselect_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 !PGOFuncName !128 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  switch i16 %1, label %97 [
    i16 0, label %7
    i16 1, label %36
    i16 2, label %43
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 8, !tbaa !60
  %10 = icmp eq i16 %9, 3
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !58
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 3, ptr noundef %12, i32 noundef 3) #8
  %14 = load ptr, ptr %3, align 8, !tbaa !61
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %11, %16
  %17 = phi ptr [ %20, %16 ], [ %14, %11 ]
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !100
  call void @ED_gplayer_make_cfra_list(ptr noundef %19, ptr noundef nonnull %4, i8 noundef zeroext 1) #8
  %20 = load ptr, ptr %17, align 8, !tbaa !61
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %16, !llvm.loop !129

22:                                               ; preds = %7
  %23 = sext i16 %9 to i32
  %24 = load ptr, ptr %0, align 8, !tbaa !58
  %25 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 3, ptr noundef %24, i32 noundef %23) #8
  %26 = load ptr, ptr %3, align 8, !tbaa !61
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %22, %28
  %29 = phi ptr [ %33, %28 ], [ %26, %22 ]
  %30 = getelementptr inbounds %struct.bAnimListElem, ptr %29, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  %32 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %31, ptr noundef null, ptr noundef nonnull @bezt_to_cfraelem, ptr noundef null) #8
  %33 = load ptr, ptr %29, align 8, !tbaa !61
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %28, !llvm.loop !130

35:                                               ; preds = %28, %16, %22, %11
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  br label %46

36:                                               ; preds = %2
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %38 = tail call ptr %37(i64 noundef 24, ptr noundef nonnull @.str.40) #8
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %38) #8
  %39 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !73
  %41 = sitofp i32 %40 to float
  %42 = getelementptr inbounds %struct.CfraElem, ptr %38, i64 0, i32 2
  store float %41, ptr %42, align 8, !tbaa !131
  br label %46

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 11
  %45 = load ptr, ptr %44, align 8, !tbaa !125
  call void @ED_markers_make_cfra_list(ptr noundef %45, ptr noundef nonnull %4, i16 noundef signext 1) #8
  br label %46

46:                                               ; preds = %43, %36, %35
  %47 = call ptr @ANIM_editkeyframes_select(i16 noundef signext 2) #8
  %48 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 1) #8
  %49 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %0, align 8, !tbaa !58
  %51 = load i16, ptr %49, align 8, !tbaa !60
  %52 = sext i16 %51 to i32
  %53 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 3, ptr noundef %50, i32 noundef %52) #8
  %54 = load ptr, ptr %3, align 8, !tbaa !61
  %55 = icmp eq ptr %54, null
  br i1 %55, label %96, label %56

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  br label %61

58:                                               ; preds = %93, %61
  %59 = load ptr, ptr %62, align 8, !tbaa !61
  %60 = icmp eq ptr %59, null
  br i1 %60, label %96, label %61, !llvm.loop !133

61:                                               ; preds = %56, %58
  %62 = phi ptr [ %54, %56 ], [ %59, %58 ]
  %63 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %62) #8
  %64 = load ptr, ptr %4, align 8, !tbaa !61
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
  %74 = load float, ptr %73, align 8, !tbaa !131
  br i1 %67, label %77, label %75

75:                                               ; preds = %71
  %76 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %63, float noundef %74, i16 noundef signext 1) #8
  br label %77

77:                                               ; preds = %71, %75
  %78 = phi float [ %76, %75 ], [ %74, %71 ]
  store float %78, ptr %57, align 8, !tbaa !115
  %79 = load i32, ptr %68, align 8, !tbaa !99
  switch i32 %79, label %90 [
    i32 27, label %80
    i32 29, label %85
  ]

80:                                               ; preds = %77
  %81 = load ptr, ptr %69, align 8, !tbaa !100
  %82 = getelementptr inbounds %struct.CfraElem, ptr %72, i64 0, i32 2
  %83 = load float, ptr %82, align 8, !tbaa !131
  %84 = fptosi float %83 to i32
  call void @ED_gpencil_select_frame(ptr noundef %81, i32 noundef %84, i16 noundef signext 2) #8
  br label %93

85:                                               ; preds = %77
  %86 = load ptr, ptr %69, align 8, !tbaa !100
  %87 = getelementptr inbounds %struct.CfraElem, ptr %72, i64 0, i32 2
  %88 = load float, ptr %87, align 8, !tbaa !131
  %89 = fptosi float %88 to i32
  call void @ED_mask_select_frame(ptr noundef %86, i32 noundef %89, i16 noundef signext 2) #8
  br label %93

90:                                               ; preds = %77
  %91 = load ptr, ptr %70, align 8, !tbaa !62
  %92 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %91, ptr noundef %48, ptr noundef %47, ptr noundef null) #8
  br label %93

93:                                               ; preds = %80, %90, %85
  %94 = load ptr, ptr %72, align 8, !tbaa !61
  %95 = icmp eq ptr %94, null
  br i1 %95, label %58, label %71, !llvm.loop !134

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
define internal fastcc void @select_moreless_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 !PGOFuncName !135 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %5 = tail call ptr @ANIM_editkeyframes_buildselmap(i16 noundef signext %1) #8
  %6 = load ptr, ptr %0, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !60
  %9 = sext i16 %8 to i32
  %10 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2051, ptr noundef %6, i32 noundef %9) #8
  %11 = load ptr, ptr %3, align 8, !tbaa !61
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 2
  br label %15

15:                                               ; preds = %13, %32
  %16 = phi ptr [ %11, %13 ], [ %33, %32 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !136
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %24 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !138
  %26 = zext i32 %25 to i64
  %27 = call ptr %23(i64 noundef %26, ptr noundef nonnull @.str.49) #8
  store ptr %27, ptr %14, align 8, !tbaa !139
  %28 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef nonnull %18, ptr noundef null, ptr noundef %5, ptr noundef null) #8
  %29 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef nonnull %18, ptr noundef null, ptr noundef nonnull @bezt_selmap_flush, ptr noundef null) #8
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  %31 = load ptr, ptr %14, align 8, !tbaa !139
  call void %30(ptr noundef %31) #8
  store ptr null, ptr %14, align 8, !tbaa !139
  br label %32

32:                                               ; preds = %15, %22
  %33 = load ptr, ptr %16, align 8, !tbaa !61
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %15, !llvm.loop !140

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
define internal fastcc void @actkeys_select_leftright(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #0 !PGOFuncName !141 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !70
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
  %16 = load i32, ptr %15, align 8, !tbaa !73
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
  %25 = load ptr, ptr %0, align 8, !tbaa !58
  %26 = load i16, ptr %24, align 8, !tbaa !60
  %27 = sext i16 %26 to i32
  %28 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 2051, ptr noundef %25, i32 noundef %27) #8
  %29 = load ptr, ptr %4, align 8, !tbaa !61
  %30 = icmp eq ptr %29, null
  br i1 %30, label %61, label %31

31:                                               ; preds = %10, %58
  %32 = phi ptr [ %59, %58 ], [ %29, %10 ]
  %33 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %32) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bAnimListElem, ptr %32, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !62
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %33, ptr noundef %37, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %38 = load ptr, ptr %36, align 8, !tbaa !62
  %39 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %38, ptr noundef %12, ptr noundef %13, ptr noundef null) #8
  %40 = load ptr, ptr %36, align 8, !tbaa !62
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %33, ptr noundef %40, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %58

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.bAnimListElem, ptr %32, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !99
  switch i32 %43, label %54 [
    i32 27, label %44
    i32 29, label %49
  ]

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.bAnimListElem, ptr %32, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !100
  %47 = load float, ptr %22, align 8, !tbaa !115
  %48 = load float, ptr %23, align 4, !tbaa !118
  call void @ED_gplayer_frames_select_border(ptr noundef %46, float noundef %47, float noundef %48, i16 noundef signext %11) #8
  br label %58

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.bAnimListElem, ptr %32, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !100
  %52 = load float, ptr %22, align 8, !tbaa !115
  %53 = load float, ptr %23, align 4, !tbaa !118
  call void @ED_masklayer_frames_select_border(ptr noundef %51, float noundef %52, float noundef %53, i16 noundef signext %11) #8
  br label %58

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.bAnimListElem, ptr %32, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !62
  %57 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %56, ptr noundef %12, ptr noundef %13, ptr noundef null) #8
  br label %58

58:                                               ; preds = %44, %54, %49, %35
  %59 = load ptr, ptr %32, align 8, !tbaa !61
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %31, !llvm.loop !142

61:                                               ; preds = %58, %10
  %62 = icmp eq i16 %11, 2
  br i1 %62, label %63, label %103

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !143
  %66 = icmp eq ptr %65, null
  br i1 %66, label %103, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.SpaceAction, ptr %65, i64 0, i32 11
  %69 = load i16, ptr %68, align 2, !tbaa !144
  %70 = and i16 %69, 2048
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %103, label %72

72:                                               ; preds = %67
  %73 = call ptr @ED_animcontext_get_markers(ptr noundef nonnull %0) #8
  %74 = load ptr, ptr %73, align 8, !tbaa !61
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
  %83 = load i32, ptr %82, align 8, !tbaa !148
  %84 = load i32, ptr %78, align 8, !tbaa !73
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %92, label %96

86:                                               ; preds = %79
  br i1 %77, label %87, label %96

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.TimeMarker, ptr %80, i64 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !148
  %90 = load i32, ptr %78, align 8, !tbaa !73
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %87, %81
  %93 = getelementptr inbounds %struct.TimeMarker, ptr %80, i64 0, i32 4
  %94 = load i32, ptr %93, align 4, !tbaa !150
  %95 = or i32 %94, 1
  store i32 %95, ptr %93, align 4, !tbaa !150
  br label %100

96:                                               ; preds = %81, %87, %86
  %97 = getelementptr inbounds %struct.TimeMarker, ptr %80, i64 0, i32 4
  %98 = load i32, ptr %97, align 4, !tbaa !150
  %99 = and i32 %98, -2
  store i32 %99, ptr %97, align 4, !tbaa !150
  br label %100

100:                                              ; preds = %92, %96
  %101 = load ptr, ptr %80, align 8, !tbaa !61
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %79, !llvm.loop !151

103:                                              ; preds = %100, %72, %63, %67, %61
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret void
}

; Function Attrs: optsize
declare ptr @ED_animcontext_get_markers(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mouse_action_keys(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !152 {
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
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !60
  %17 = icmp eq i16 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load ptr, ptr %0, align 8, !tbaa !58
  br label %20

20:                                               ; preds = %18, %5
  %21 = phi ptr [ %19, %18 ], [ null, %5 ]
  %22 = load i32, ptr %1, align 4, !tbaa !72
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds i32, ptr %1, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !72
  %26 = sitofp i32 %25 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %14, float noundef %23, float noundef %26, ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %28 = sitofp i16 %27 to float
  %29 = fmul float %28, 0x3FB99999A0000000
  %30 = call float @llvm.fmuladd.f32(float %28, float 0x3FE99999A0000000, float %29)
  %31 = fmul float %28, 0x3FD99999A0000000
  %32 = load float, ptr %9, align 4, !tbaa !126
  %33 = load float, ptr %10, align 4, !tbaa !126
  call void @UI_view2d_listview_view_to_cell(ptr noundef nonnull %14, float noundef 0.000000e+00, float noundef %30, float noundef 0.000000e+00, float noundef %31, float noundef %32, float noundef %33, ptr noundef null, ptr noundef nonnull %8) #8
  %34 = load i32, ptr %1, align 4, !tbaa !72
  %35 = add nsw i32 %34, -7
  %36 = sitofp i32 %35 to float
  %37 = load i32, ptr %24, align 4, !tbaa !72
  %38 = sitofp i32 %37 to float
  %39 = getelementptr inbounds %struct.rctf, ptr %11, i64 0, i32 2
  call void @UI_view2d_region_to_view(ptr noundef nonnull %14, float noundef %36, float noundef %38, ptr noundef nonnull %11, ptr noundef nonnull %39) #8
  %40 = load i32, ptr %1, align 4, !tbaa !72
  %41 = add nsw i32 %40, 7
  %42 = sitofp i32 %41 to float
  %43 = load i32, ptr %24, align 4, !tbaa !72
  %44 = sitofp i32 %43 to float
  %45 = getelementptr inbounds %struct.rctf, ptr %11, i64 0, i32 1
  %46 = getelementptr inbounds %struct.rctf, ptr %11, i64 0, i32 3
  call void @UI_view2d_region_to_view(ptr noundef nonnull %14, float noundef %42, float noundef %44, ptr noundef nonnull %45, ptr noundef nonnull %46) #8
  %47 = load ptr, ptr %0, align 8, !tbaa !58
  %48 = load i16, ptr %15, align 8, !tbaa !60
  %49 = sext i16 %48 to i32
  %50 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 11, ptr noundef %47, i32 noundef %49) #8
  %51 = load i32, ptr %8, align 4, !tbaa !72
  %52 = call ptr @BLI_findlink(ptr noundef nonnull %6, i32 noundef %51) #8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %20
  %55 = load i32, ptr %8, align 4, !tbaa !72
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i32 noundef %55) #10
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #8
  br label %180

57:                                               ; preds = %20
  %58 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %0, ptr noundef nonnull %52) #8
  call void @BLI_dlrbTree_init(ptr noundef nonnull %7) #8
  %59 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !62
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 7
  %64 = load i16, ptr %63, align 2, !tbaa !153
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
  %71 = load i32, ptr %70, align 8, !tbaa !99
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
  %75 = load ptr, ptr %74, align 8, !tbaa !100
  call void @agroup_to_keylist(ptr noundef %58, ptr noundef %75, ptr noundef nonnull %7, ptr noundef null) #8
  br label %82

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !100
  call void @gpl_to_keylist(ptr noundef %21, ptr noundef %78, ptr noundef nonnull %7) #8
  br label %82

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !100
  call void @mask_to_keylist(ptr noundef %21, ptr noundef %81, ptr noundef nonnull %7) #8
  br label %82

82:                                               ; preds = %69, %72, %76, %79, %73, %65, %66, %67, %68, %62
  %83 = getelementptr inbounds %struct.DLRBT_Tree, ptr %7, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !154
  %85 = icmp eq ptr %84, null
  br i1 %85, label %113, label %86

86:                                               ; preds = %82
  %87 = load float, ptr %11, align 4, !tbaa !114
  %88 = load float, ptr %45, align 4, !tbaa !117
  %89 = fcmp olt float %87, %88
  br label %90

90:                                               ; preds = %86, %106
  %91 = phi ptr [ %84, %86 ], [ %111, %106 ]
  %92 = getelementptr inbounds %struct.ActKeyColumn, ptr %91, i64 0, i32 8
  %93 = load float, ptr %92, align 4, !tbaa !156
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
  %105 = load float, ptr %103, align 4, !tbaa !156
  br label %113

106:                                              ; preds = %98, %94
  %107 = fcmp olt float %93, %87
  %108 = getelementptr inbounds %struct.ActKeyColumn, ptr %91, i64 0, i32 3
  %109 = getelementptr inbounds %struct.ActKeyColumn, ptr %91, i64 0, i32 2
  %110 = select i1 %107, ptr %108, ptr %109
  %111 = load ptr, ptr %110, align 8, !tbaa !61
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %90, !llvm.loop !158

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
  %119 = load i16, ptr %15, align 8, !tbaa !60
  switch i16 %119, label %169 [
    i16 1, label %120
    i16 4, label %120
    i16 3, label %143
    i16 9, label %156
  ]

120:                                              ; preds = %118, %118
  %121 = load ptr, ptr %0, align 8, !tbaa !58
  %122 = zext nneg i16 %119 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %0, ptr noundef %121, i32 noundef %122, i8 noundef zeroext 0, i32 noundef 0) #8
  %123 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !100
  %125 = icmp eq ptr %124, null
  br i1 %125, label %169, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 3
  %128 = load i32, ptr %127, align 8, !tbaa !99
  switch i32 %128, label %169 [
    i32 6, label %129
    i32 7, label %136
  ]

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.bActionGroup, ptr %124, i64 0, i32 3
  %131 = load i32, ptr %130, align 8, !tbaa !159
  %132 = or i32 %131, 1
  store i32 %132, ptr %130, align 8, !tbaa !159
  %133 = load ptr, ptr %0, align 8, !tbaa !58
  %134 = load i16, ptr %15, align 8, !tbaa !60
  %135 = sext i16 %134 to i32
  call void @ANIM_set_active_channel(ptr noundef nonnull %0, ptr noundef %133, i32 noundef %135, i32 noundef 11, ptr noundef nonnull %124, i32 noundef 6) #8
  br label %169

136:                                              ; preds = %126
  %137 = getelementptr inbounds %struct.FCurve, ptr %124, i64 0, i32 9
  %138 = load i16, ptr %137, align 8, !tbaa !162
  %139 = or i16 %138, 2
  store i16 %139, ptr %137, align 8, !tbaa !162
  %140 = load ptr, ptr %0, align 8, !tbaa !58
  %141 = load i16, ptr %15, align 8, !tbaa !60
  %142 = sext i16 %141 to i32
  call void @ANIM_set_active_channel(ptr noundef nonnull %0, ptr noundef %140, i32 noundef %142, i32 noundef 11, ptr noundef nonnull %124, i32 noundef 7) #8
  br label %169

143:                                              ; preds = %118
  %144 = load ptr, ptr %0, align 8, !tbaa !58
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %0, ptr noundef %144, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 0) #8
  %145 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !100
  %147 = icmp eq ptr %146, null
  br i1 %147, label %169, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 3
  %150 = load i32, ptr %149, align 8, !tbaa !99
  %151 = icmp eq i32 %150, 27
  br i1 %151, label %152, label %169

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.bGPDlayer, ptr %146, i64 0, i32 4
  %154 = load i32, ptr %153, align 8, !tbaa !163
  %155 = or i32 %154, 32
  store i32 %155, ptr %153, align 8, !tbaa !163
  br label %169

156:                                              ; preds = %118
  %157 = load ptr, ptr %0, align 8, !tbaa !58
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %0, ptr noundef %157, i32 noundef 9, i8 noundef zeroext 0, i32 noundef 0) #8
  %158 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !100
  %160 = icmp eq ptr %159, null
  br i1 %160, label %169, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.bAnimListElem, ptr %52, i64 0, i32 3
  %163 = load i32, ptr %162, align 8, !tbaa !99
  %164 = icmp eq i32 %163, 29
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.MaskLayer, ptr %159, i64 0, i32 12
  %167 = load i8, ptr %166, align 2, !tbaa !165
  %168 = or i8 %167, 32
  store i8 %168, ptr %166, align 2, !tbaa !165
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
  %179 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
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
define internal fastcc void @actkeys_mselect_column(ptr noundef %0, i16 noundef signext %1, float noundef %2) unnamed_addr #0 !PGOFuncName !167 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %6 = tail call ptr @ANIM_editkeyframes_select(i16 noundef signext %1) #8
  %7 = tail call ptr @ANIM_editkeyframes_ok(i16 noundef signext 1) #8
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %0, align 8, !tbaa !58
  %10 = load i16, ptr %8, align 8, !tbaa !60
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 2051, ptr noundef %9, i32 noundef %11) #8
  %13 = load ptr, ptr %4, align 8, !tbaa !61
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
  store float %25, ptr %16, align 8, !tbaa !115
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %19, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !99
  %28 = getelementptr inbounds %struct.bAnimListElem, ptr %19, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !62
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
  %35 = load ptr, ptr %19, align 8, !tbaa !61
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %18, !llvm.loop !168

37:                                               ; preds = %34, %3
  call void @BLI_freelistN(ptr noundef nonnull %5) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @actkeys_mselect_channel_only(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) unnamed_addr #0 !PGOFuncName !169 {
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @ANIM_editkeyframes_select(i16 noundef signext %2) #8
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !99
  switch i32 %7, label %14 [
    i32 27, label %8
    i32 29, label %11
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !100
  tail call void @ED_gpencil_select_frames(ptr noundef %10, i16 noundef signext %2) #8
  br label %47

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  tail call void @ED_mask_select_frames(ptr noundef %13, i16 noundef signext %2) #8
  br label %47

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !60
  switch i16 %16, label %43 [
    i16 3, label %17
    i16 9, label %17
  ]

17:                                               ; preds = %14, %14
  %18 = icmp eq i32 %7, 3
  br i1 %18, label %19, label %43

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 7
  %21 = load i16, ptr %20, align 2, !tbaa !153
  %22 = icmp eq i16 %21, 5
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %24 = load ptr, ptr %0, align 8, !tbaa !58
  %25 = zext nneg i16 %16 to i32
  %26 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 2051, ptr noundef %24, i32 noundef %25) #8
  %27 = load ptr, ptr %4, align 8, !tbaa !61
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %23, %39
  %30 = phi ptr [ %40, %39 ], [ %27, %23 ]
  %31 = getelementptr inbounds %struct.bAnimListElem, ptr %30, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !99
  switch i32 %32, label %39 [
    i32 27, label %33
    i32 29, label %36
  ]

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.bAnimListElem, ptr %30, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !100
  call void @ED_gpencil_select_frames(ptr noundef %35, i16 noundef signext %2) #8
  br label %39

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.bAnimListElem, ptr %30, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !100
  call void @ED_mask_select_frames(ptr noundef %38, i16 noundef signext %2) #8
  br label %39

39:                                               ; preds = %29, %33, %36
  %40 = load ptr, ptr %30, align 8, !tbaa !61
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %29, !llvm.loop !170

42:                                               ; preds = %39, %23
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br label %47

43:                                               ; preds = %14, %19, %17
  %44 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !122
  %46 = tail call signext i16 @ANIM_animchannel_keyframes_loop(ptr noundef null, ptr noundef %45, ptr noundef nonnull %1, ptr noundef null, ptr noundef %5, ptr noundef null) #8
  br label %47

47:                                               ; preds = %11, %43, %42, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @actkeys_mselect_single(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, float noundef %3) unnamed_addr #0 !PGOFuncName !171 {
  %5 = alloca %struct.KeyframeEditData, align 8
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %7 = tail call ptr @ANIM_editkeyframes_select(i16 noundef signext %2) #8
  %8 = tail call ptr @ANIM_editkeyframes_ok(i16 noundef signext 1) #8
  %9 = getelementptr inbounds %struct.KeyframeEditData, ptr %5, i64 0, i32 3
  store float %3, ptr %9, align 8, !tbaa !115
  %10 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !99
  switch i32 %11, label %20 [
    i32 27, label %12
    i32 29, label %16
  ]

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = fptosi float %3 to i32
  tail call void @ED_gpencil_select_frame(ptr noundef %14, i32 noundef %15, i16 noundef signext %2) #8
  br label %55

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !100
  %19 = fptosi float %3 to i32
  tail call void @ED_mask_select_frame(ptr noundef %18, i32 noundef %19, i16 noundef signext %2) #8
  br label %55

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %22 = load i16, ptr %21, align 8, !tbaa !60
  switch i16 %22, label %51 [
    i16 3, label %23
    i16 9, label %23
  ]

23:                                               ; preds = %20, %20
  %24 = icmp eq i32 %11, 3
  br i1 %24, label %25, label %51

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 7
  %27 = load i16, ptr %26, align 2, !tbaa !153
  %28 = icmp eq i16 %27, 5
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %30 = load ptr, ptr %0, align 8, !tbaa !58
  %31 = zext nneg i16 %22 to i32
  %32 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 2051, ptr noundef %30, i32 noundef %31) #8
  %33 = load ptr, ptr %6, align 8, !tbaa !61
  %34 = icmp eq ptr %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %29
  %36 = fptosi float %3 to i32
  br label %37

37:                                               ; preds = %35, %47
  %38 = phi ptr [ %33, %35 ], [ %48, %47 ]
  %39 = getelementptr inbounds %struct.bAnimListElem, ptr %38, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !99
  switch i32 %40, label %47 [
    i32 27, label %41
    i32 29, label %44
  ]

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.bAnimListElem, ptr %38, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !100
  call void @ED_gpencil_select_frame(ptr noundef %43, i32 noundef %36, i16 noundef signext %2) #8
  br label %47

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.bAnimListElem, ptr %38, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !100
  call void @ED_mask_select_frame(ptr noundef %46, i32 noundef %36, i16 noundef signext %2) #8
  br label %47

47:                                               ; preds = %37, %41, %44
  %48 = load ptr, ptr %38, align 8, !tbaa !61
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %37, !llvm.loop !172

50:                                               ; preds = %47, %29
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  br label %55

51:                                               ; preds = %20, %25, %23
  %52 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !122
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
!49 = !{!"action_select.c:actkeys_deselectall_exec"}
!50 = !{!51, !36, i64 112}
!51 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!52 = !{!35, !36, i64 48}
!53 = !{!35, !36, i64 64}
!54 = !{!35, !36, i64 56}
!55 = !{!"action_select.c:actkeys_borderselect_exec"}
!56 = !{!"action_select.c:actkeys_columnselect_exec"}
!57 = !{!"action_select.c:actkeys_select_linked_exec"}
!58 = !{!59, !36, i64 0}
!59 = !{!"bAnimContext", !36, i64 0, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!60 = !{!59, !41, i64 8}
!61 = !{!36, !36, i64 0}
!62 = !{!63, !36, i64 40}
!63 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !64, i64 24, !64, i64 28, !64, i64 32, !41, i64 36, !41, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!64 = !{!"int", !37, i64 0}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"action_select.c:actkeys_select_more_exec"}
!68 = !{!"action_select.c:actkeys_select_less_exec"}
!69 = !{!"action_select.c:actkeys_select_leftright_invoke"}
!70 = !{!59, !36, i64 48}
!71 = !{!59, !36, i64 32}
!72 = !{!64, !64, i64 0}
!73 = !{!74, !64, i64 680}
!74 = !{!"Scene", !75, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !64, i64 232, !64, i64 236, !64, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !76, i64 280, !86, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !64, i64 4380, !39, i64 4384, !87, i64 4400, !88, i64 4416, !91, i64 4600, !36, i64 4608, !92, i64 4616, !36, i64 4640, !93, i64 4648, !93, i64 4656, !79, i64 4664, !80, i64 4824, !94, i64 4888, !36, i64 4952}
!75 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !64, i64 100, !64, i64 104, !64, i64 108, !36, i64 112}
!76 = !{!"RenderData", !77, i64 0, !36, i64 248, !36, i64 256, !81, i64 264, !82, i64 328, !64, i64 400, !64, i64 404, !64, i64 408, !78, i64 412, !64, i64 416, !64, i64 420, !64, i64 424, !64, i64 428, !41, i64 432, !41, i64 434, !78, i64 436, !78, i64 440, !78, i64 444, !78, i64 448, !78, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !64, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !64, i64 484, !64, i64 488, !41, i64 492, !41, i64 494, !64, i64 496, !64, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !64, i64 516, !64, i64 520, !64, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !83, i64 544, !83, i64 560, !84, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !78, i64 612, !78, i64 616, !78, i64 620, !78, i64 624, !64, i64 628, !78, i64 632, !78, i64 636, !78, i64 640, !78, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !78, i64 660, !78, i64 664, !41, i64 668, !41, i64 670, !78, i64 672, !78, i64 676, !37, i64 680, !64, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !64, i64 2520, !41, i64 2524, !41, i64 2526, !78, i64 2528, !78, i64 2532, !41, i64 2536, !41, i64 2538, !78, i64 2540, !41, i64 2544, !41, i64 2546, !64, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !78, i64 2560, !78, i64 2564, !36, i64 2568, !64, i64 2576, !78, i64 2580, !37, i64 2584, !85, i64 2616, !64, i64 3976, !64, i64 3980}
!77 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !78, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !79, i64 24, !80, i64 184}
!78 = !{!"float", !37, i64 0}
!79 = !{!"ColorManagedViewSettings", !64, i64 0, !64, i64 4, !37, i64 8, !37, i64 72, !78, i64 136, !78, i64 140, !36, i64 144, !36, i64 152}
!80 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!81 = !{!"QuicktimeCodecSettings", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20, !64, i64 24, !64, i64 28, !64, i64 32, !64, i64 36, !64, i64 40, !64, i64 44, !41, i64 48, !41, i64 50, !64, i64 52, !64, i64 56, !64, i64 60}
!82 = !{!"FFMpegCodecData", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20, !64, i64 24, !64, i64 28, !78, i64 32, !64, i64 36, !64, i64 40, !64, i64 44, !64, i64 48, !64, i64 52, !64, i64 56, !64, i64 60, !36, i64 64}
!83 = !{!"rctf", !78, i64 0, !78, i64 4, !78, i64 8, !78, i64 12}
!84 = !{!"rcti", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12}
!85 = !{!"BakeData", !77, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !78, i64 1280, !78, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!86 = !{!"AudioData", !64, i64 0, !78, i64 4, !78, i64 8, !78, i64 12, !64, i64 16, !41, i64 20, !41, i64 22, !78, i64 24, !78, i64 28}
!87 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!88 = !{!"GameData", !87, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !89, i64 40, !41, i64 64, !41, i64 66, !78, i64 68, !90, i64 72, !78, i64 128, !78, i64 132, !64, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !78, i64 164, !78, i64 168, !78, i64 172, !78, i64 176, !78, i64 180}
!89 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !78, i64 8, !78, i64 12, !36, i64 16}
!90 = !{!"RecastData", !78, i64 0, !78, i64 4, !78, i64 8, !78, i64 12, !78, i64 16, !78, i64 20, !78, i64 24, !78, i64 28, !78, i64 32, !78, i64 36, !64, i64 40, !78, i64 44, !78, i64 48, !41, i64 52, !41, i64 54}
!91 = !{!"UnitSettings", !78, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!92 = !{!"PhysicsSettings", !37, i64 0, !64, i64 12, !64, i64 16, !64, i64 20}
!93 = !{!"long", !37, i64 0}
!94 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!95 = !{i32 2, i32 5}
!96 = !{!"action_select.c:actkeys_select_leftright_exec"}
!97 = !{!"action_select.c:actkeys_clickselect_invoke"}
!98 = !{!"action_select.c:deselect_action_keys"}
!99 = !{!63, !64, i64 24}
!100 = !{!63, !36, i64 16}
!101 = distinct !{!101, !66}
!102 = distinct !{!102, !66}
!103 = !{!"action_select.c:BLI_rcti_size_x"}
!104 = !{!84, !64, i64 4}
!105 = !{!84, !64, i64 0}
!106 = !{!"action_select.c:BLI_rcti_size_y"}
!107 = !{!84, !64, i64 12}
!108 = !{!84, !64, i64 8}
!109 = !{!"action_select.c:borderselect_action"}
!110 = !{!111, !41, i64 8948}
!111 = !{!"UserDef", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !64, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !64, i64 8484, !64, i64 8488, !64, i64 8492, !41, i64 8496, !41, i64 8498, !64, i64 8500, !64, i64 8504, !64, i64 8508, !64, i64 8512, !64, i64 8516, !64, i64 8520, !64, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !64, i64 8912, !64, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !78, i64 8956, !78, i64 8960, !64, i64 8964, !41, i64 8968, !41, i64 8970, !78, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !112, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !64, i64 10896, !64, i64 10900, !78, i64 10904, !78, i64 10908, !64, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !113, i64 10928}
!112 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!113 = !{!"WalkNavigation", !78, i64 0, !78, i64 4, !78, i64 8, !78, i64 12, !78, i64 16, !78, i64 20, !41, i64 24, !37, i64 26}
!114 = !{!83, !78, i64 0}
!115 = !{!116, !78, i64 32}
!116 = !{!"KeyframeEditData", !39, i64 0, !36, i64 16, !36, i64 24, !78, i64 32, !78, i64 36, !64, i64 40, !64, i64 44, !36, i64 48, !64, i64 56, !41, i64 60, !41, i64 62}
!117 = !{!83, !78, i64 4}
!118 = !{!116, !78, i64 36}
!119 = !{!83, !78, i64 8}
!120 = distinct !{!120, !66}
!121 = distinct !{!121, !66}
!122 = !{!59, !36, i64 40}
!123 = distinct !{!123, !66}
!124 = !{!"action_select.c:markers_selectkeys_between"}
!125 = !{!59, !36, i64 64}
!126 = !{!78, !78, i64 0}
!127 = distinct !{!127, !66}
!128 = !{!"action_select.c:columnselect_action_keys"}
!129 = distinct !{!129, !66}
!130 = distinct !{!130, !66}
!131 = !{!132, !78, i64 16}
!132 = !{!"CfraElem", !36, i64 0, !36, i64 8, !78, i64 16, !64, i64 20}
!133 = distinct !{!133, !66}
!134 = distinct !{!134, !66}
!135 = !{!"action_select.c:select_moreless_action_keys"}
!136 = !{!137, !36, i64 48}
!137 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 48, !36, i64 56, !64, i64 64, !78, i64 68, !41, i64 72, !41, i64 74, !64, i64 76, !36, i64 80, !64, i64 88, !37, i64 92, !78, i64 104, !78, i64 108}
!138 = !{!137, !64, i64 64}
!139 = !{!116, !36, i64 24}
!140 = distinct !{!140, !66}
!141 = !{!"action_select.c:actkeys_select_leftright"}
!142 = distinct !{!142, !66}
!143 = !{!59, !36, i64 24}
!144 = !{!145, !41, i64 338}
!145 = !{!"SpaceAction", !36, i64 0, !36, i64 8, !39, i64 16, !64, i64 32, !78, i64 36, !37, i64 40, !146, i64 56, !36, i64 216, !147, i64 224, !37, i64 336, !37, i64 337, !41, i64 338, !78, i64 340}
!146 = !{!"View2D", !83, i64 0, !83, i64 16, !84, i64 32, !84, i64 48, !84, i64 64, !37, i64 80, !37, i64 88, !78, i64 96, !78, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !64, i64 136, !64, i64 140, !36, i64 144, !36, i64 152}
!147 = !{!"bDopeSheet", !36, i64 0, !39, i64 8, !36, i64 24, !37, i64 32, !64, i64 96, !64, i64 100, !64, i64 104, !64, i64 108}
!148 = !{!149, !64, i64 16}
!149 = !{!"TimeMarker", !36, i64 0, !36, i64 8, !64, i64 16, !37, i64 20, !64, i64 84, !36, i64 88}
!150 = !{!149, !64, i64 84}
!151 = distinct !{!151, !66}
!152 = !{!"action_select.c:mouse_action_keys"}
!153 = !{!63, !41, i64 38}
!154 = !{!155, !36, i64 16}
!155 = !{!"DLRBT_Tree", !36, i64 0, !36, i64 8, !36, i64 16}
!156 = !{!157, !78, i64 44}
!157 = !{!"ActKeyColumn", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 41, !41, i64 42, !78, i64 44, !41, i64 48, !41, i64 50}
!158 = distinct !{!158, !66}
!159 = !{!160, !64, i64 32}
!160 = !{!"bActionGroup", !36, i64 0, !36, i64 8, !39, i64 16, !64, i64 32, !64, i64 36, !37, i64 40, !161, i64 104}
!161 = !{!"ThemeWireColor", !37, i64 0, !37, i64 4, !37, i64 8, !41, i64 12, !41, i64 14}
!162 = !{!137, !41, i64 72}
!163 = !{!164, !64, i64 40}
!164 = !{!"bGPDlayer", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 32, !64, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 64}
!165 = !{!166, !37, i64 142}
!166 = !{!"MaskLayer", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 80, !39, i64 96, !36, i64 112, !36, i64 120, !78, i64 128, !37, i64 132, !37, i64 133, !37, i64 134, !37, i64 135, !37, i64 142, !37, i64 143}
!167 = !{!"action_select.c:actkeys_mselect_column"}
!168 = distinct !{!168, !66}
!169 = !{!"action_select.c:actkeys_mselect_channel_only"}
!170 = distinct !{!170, !66}
!171 = !{!"action_select.c:actkeys_mselect_single"}
!172 = distinct !{!172, !66}
