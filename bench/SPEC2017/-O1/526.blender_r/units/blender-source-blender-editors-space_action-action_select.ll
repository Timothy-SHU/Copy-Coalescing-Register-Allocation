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
%struct.KeyframeEditData = type { %struct.ListBase, ptr, ptr, float, float, i32, i32, ptr, i32, i16, i16 }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.TimeMarker = type { ptr, ptr, i32, [64 x i8], i32, ptr }
%struct.DLRBT_Tree = type { ptr, ptr, ptr }
%struct.ActKeyColumn = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i16, float, i16, i16 }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
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

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !48
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_deselectall_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #7
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.3) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  call fastcc void @deselect_action_keys(ptr noundef nonnull %3, i16 noundef signext 0, i16 noundef signext 8)
  br label %13

12:                                               ; preds = %6
  call fastcc void @deselect_action_keys(ptr noundef nonnull %3, i16 noundef signext 1, i16 noundef signext 2)
  br label %13

13:                                               ; preds = %12, %11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #7
  br label %14

14:                                               ; preds = %2, %13
  %15 = phi i32 [ 4, %13 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  ret i32 %15
}

declare i32 @ED_operator_action_active(ptr noundef) #1

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ACTION_OT_select_border(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_borderselect_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !46
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #7
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5) #7
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !48
  ret void
}

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_borderselect_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 8
  %5 = alloca %struct.rctf, align 4
  %6 = alloca %struct.bAnimContext, align 8
  %7 = alloca %struct.rcti, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %6) #7
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %152, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.27) #7
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  call fastcc void @deselect_action_keys(ptr noundef nonnull %6, i16 noundef signext 1, i16 noundef signext 4)
  br label %17

17:                                               ; preds = %16, %10
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %7) #7
  %18 = load ptr, ptr %11, align 8, !tbaa !49
  %19 = call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.39) #7
  %20 = icmp eq i32 %19, 3
  %21 = select i1 %20, i16 2, i16 4
  %22 = load ptr, ptr %11, align 8, !tbaa !49
  %23 = call i32 @RNA_boolean_get(ptr noundef %22, ptr noundef nonnull @.str.9) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !54
  %28 = load i32, ptr %7, align 8, !tbaa !57
  %29 = sub nsw i32 %27, %28
  %30 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !58
  %32 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !59
  %34 = sub nsw i32 %31, %33
  %35 = icmp slt i32 %29, %34
  %36 = select i1 %35, i16 2, i16 1
  br label %37

37:                                               ; preds = %17, %25
  %38 = phi i16 [ %36, %25 ], [ 0, %17 ]
  %39 = load i64, ptr %7, align 8
  %40 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  %41 = load i64, ptr %40, align 8
  %42 = trunc i64 %39 to i32
  %43 = lshr i64 %39, 32
  %44 = trunc i64 %43 to i32
  %45 = trunc i64 %41 to i32
  %46 = lshr i64 %41, 32
  %47 = trunc i64 %46 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %48 = getelementptr inbounds %struct.bAnimContext, ptr %6, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !60
  %50 = getelementptr inbounds %struct.ARegion, ptr %49, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %51 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !62
  %52 = sitofp i16 %51 to float
  %53 = fmul float %52, 0xBFD99999A0000000
  %54 = sitofp i32 %42 to float
  %55 = add nsw i32 %45, 2
  %56 = sitofp i32 %55 to float
  %57 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  call void @UI_view2d_region_to_view(ptr noundef nonnull %50, float noundef %54, float noundef %56, ptr noundef nonnull %5, ptr noundef nonnull %57) #7
  %58 = sitofp i32 %44 to float
  %59 = add nsw i32 %47, -2
  %60 = sitofp i32 %59 to float
  %61 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %62 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  call void @UI_view2d_region_to_view(ptr noundef nonnull %50, float noundef %58, float noundef %60, ptr noundef nonnull %61, ptr noundef nonnull %62) #7
  %63 = load ptr, ptr %6, align 8, !tbaa !67
  %64 = getelementptr inbounds %struct.bAnimContext, ptr %6, i64 0, i32 1
  %65 = load i16, ptr %64, align 8, !tbaa !68
  %66 = sext i16 %65 to i32
  %67 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %6, ptr noundef nonnull %3, i32 noundef 2059, ptr noundef %63, i32 noundef %66) #7
  %68 = call ptr @ANIM_editkeyframes_select(i16 noundef signext %21) #7
  %69 = icmp eq i16 %38, 1
  %70 = icmp ult i16 %38, 2
  br i1 %70, label %71, label %73

71:                                               ; preds = %37
  %72 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 2) #7
  br label %73

73:                                               ; preds = %71, %37
  %74 = phi ptr [ %72, %71 ], [ null, %37 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %75 = load ptr, ptr %3, align 8, !tbaa !69
  %76 = icmp eq ptr %75, null
  br i1 %76, label %151, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  %79 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 4
  %80 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  %81 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 4
  %82 = getelementptr inbounds %struct.bAnimContext, ptr %6, i64 0, i32 8
  br label %83

83:                                               ; preds = %77, %148
  %84 = phi ptr [ %75, %77 ], [ %149, %148 ]
  %85 = phi float [ %53, %77 ], [ %91, %148 ]
  %86 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %6, ptr noundef nonnull %84) #7
  %87 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !62
  %88 = sitofp i16 %87 to float
  %89 = fmul float %88, 0x3FB99999A0000000
  %90 = call float @llvm.fmuladd.f32(float %88, float 0x3FE99999A0000000, float %89)
  %91 = fsub float %85, %90
  br i1 %70, label %92, label %101

92:                                               ; preds = %83
  %93 = icmp eq ptr %86, null
  %94 = load float, ptr %5, align 4, !tbaa !70
  br i1 %93, label %99, label %95

95:                                               ; preds = %92
  %96 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %86, float noundef %94, i16 noundef signext 1) #7
  store float %96, ptr %78, align 8, !tbaa !72
  %97 = load float, ptr %61, align 4, !tbaa !74
  %98 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %86, float noundef %97, i16 noundef signext 1) #7
  store float %98, ptr %79, align 4, !tbaa !75
  br label %101

99:                                               ; preds = %92
  store float %94, ptr %80, align 8, !tbaa !72
  %100 = load float, ptr %61, align 4, !tbaa !74
  store float %100, ptr %81, align 4, !tbaa !75
  br label %101

101:                                              ; preds = %99, %95, %83
  br i1 %69, label %108, label %102

102:                                              ; preds = %101
  %103 = load float, ptr %57, align 4, !tbaa !76
  %104 = fcmp olt float %85, %103
  %105 = load float, ptr %62, align 4
  %106 = fcmp ogt float %91, %105
  %107 = select i1 %104, i1 true, i1 %106
  br i1 %107, label %148, label %108

108:                                              ; preds = %102, %101
  %109 = getelementptr inbounds %struct.bAnimListElem, ptr %84, i64 0, i32 3
  %110 = load i32, ptr %109, align 8, !tbaa !77
  switch i32 %110, label %145 [
    i32 26, label %111
    i32 27, label %123
    i32 28, label %128
    i32 29, label %140
  ]

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.bAnimListElem, ptr %84, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !79
  %114 = getelementptr inbounds %struct.bGPdata, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !69
  %116 = icmp eq ptr %115, null
  br i1 %116, label %148, label %117

117:                                              ; preds = %111, %117
  %118 = phi ptr [ %121, %117 ], [ %115, %111 ]
  %119 = load float, ptr %5, align 4, !tbaa !70
  %120 = load float, ptr %61, align 4, !tbaa !74
  call void @ED_gplayer_frames_select_border(ptr noundef nonnull %118, float noundef %119, float noundef %120, i16 noundef signext %21) #7
  %121 = load ptr, ptr %118, align 8, !tbaa !69
  %122 = icmp eq ptr %121, null
  br i1 %122, label %148, label %117, !llvm.loop !80

123:                                              ; preds = %108
  %124 = getelementptr inbounds %struct.bAnimListElem, ptr %84, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !79
  %126 = load float, ptr %5, align 4, !tbaa !70
  %127 = load float, ptr %61, align 4, !tbaa !74
  call void @ED_gplayer_frames_select_border(ptr noundef %125, float noundef %126, float noundef %127, i16 noundef signext %21) #7
  br label %148

128:                                              ; preds = %108
  %129 = getelementptr inbounds %struct.bAnimListElem, ptr %84, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !79
  %131 = getelementptr inbounds %struct.Mask, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !69
  %133 = icmp eq ptr %132, null
  br i1 %133, label %148, label %134

134:                                              ; preds = %128, %134
  %135 = phi ptr [ %138, %134 ], [ %132, %128 ]
  %136 = load float, ptr %5, align 4, !tbaa !70
  %137 = load float, ptr %61, align 4, !tbaa !74
  call void @ED_masklayer_frames_select_border(ptr noundef nonnull %135, float noundef %136, float noundef %137, i16 noundef signext %21) #7
  %138 = load ptr, ptr %135, align 8, !tbaa !69
  %139 = icmp eq ptr %138, null
  br i1 %139, label %148, label %134, !llvm.loop !83

140:                                              ; preds = %108
  %141 = getelementptr inbounds %struct.bAnimListElem, ptr %84, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !79
  %143 = load float, ptr %5, align 4, !tbaa !70
  %144 = load float, ptr %61, align 4, !tbaa !74
  call void @ED_masklayer_frames_select_border(ptr noundef %142, float noundef %143, float noundef %144, i16 noundef signext %21) #7
  br label %148

145:                                              ; preds = %108
  %146 = load ptr, ptr %82, align 8, !tbaa !84
  %147 = call signext i16 @ANIM_animchannel_keyframes_loop(ptr noundef nonnull %4, ptr noundef %146, ptr noundef nonnull %84, ptr noundef %74, ptr noundef %68, ptr noundef null) #7
  br label %148

148:                                              ; preds = %134, %117, %128, %111, %145, %140, %123, %102
  %149 = load ptr, ptr %84, align 8, !tbaa !69
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %83, !llvm.loop !85

151:                                              ; preds = %148, %73
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #7
  br label %152

152:                                              ; preds = %2, %151
  %153 = phi i32 [ 4, %151 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #7
  ret i32 %153
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #1

declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #1

declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.13, ptr noundef nonnull @prop_column_select_types, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5) #7
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_columnselect_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  br i1 %11, label %167, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = call i32 @RNA_enum_get(ptr noundef %14, ptr noundef nonnull @.str.13) #7
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %69

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %9, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !86
  call void @ED_markers_get_minmax(ptr noundef %20, i16 noundef signext 1, ptr noundef nonnull %7, ptr noundef nonnull %8) #7
  %21 = load float, ptr %7, align 4, !tbaa !87
  %22 = fadd float %21, -5.000000e-01
  store float %22, ptr %7, align 4, !tbaa !87
  %23 = load float, ptr %8, align 4, !tbaa !87
  %24 = fadd float %23, 5.000000e-01
  store float %24, ptr %8, align 4, !tbaa !87
  %25 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 2) #7
  %26 = call ptr @ANIM_editkeyframes_select(i16 noundef signext 2) #7
  %27 = load float, ptr %7, align 4, !tbaa !87
  %28 = getelementptr inbounds %struct.KeyframeEditData, ptr %6, i64 0, i32 3
  store float %27, ptr %28, align 8, !tbaa !72
  %29 = load float, ptr %8, align 4, !tbaa !87
  %30 = getelementptr inbounds %struct.KeyframeEditData, ptr %6, i64 0, i32 4
  store float %29, ptr %30, align 4, !tbaa !75
  %31 = load ptr, ptr %9, align 8, !tbaa !67
  %32 = getelementptr inbounds %struct.bAnimContext, ptr %9, i64 0, i32 1
  %33 = load i16, ptr %32, align 8, !tbaa !68
  %34 = sext i16 %33 to i32
  %35 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %9, ptr noundef nonnull %5, i32 noundef 2051, ptr noundef %31, i32 noundef %34) #7
  %36 = load ptr, ptr %5, align 8, !tbaa !69
  %37 = icmp eq ptr %36, null
  br i1 %37, label %68, label %38

38:                                               ; preds = %18, %65
  %39 = phi ptr [ %66, %65 ], [ %36, %18 ]
  %40 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %9, ptr noundef nonnull %39) #7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.bAnimListElem, ptr %39, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !88
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %40, ptr noundef %44, i8 noundef zeroext 0, i8 noundef zeroext 1) #7
  %45 = load ptr, ptr %43, align 8, !tbaa !88
  %46 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %6, ptr noundef %45, ptr noundef %25, ptr noundef %26, ptr noundef null) #7
  %47 = load ptr, ptr %43, align 8, !tbaa !88
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %40, ptr noundef %47, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %65

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.bAnimListElem, ptr %39, i64 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !77
  switch i32 %50, label %61 [
    i32 27, label %51
    i32 29, label %56
  ]

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.bAnimListElem, ptr %39, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !79
  %54 = load float, ptr %7, align 4, !tbaa !87
  %55 = load float, ptr %8, align 4, !tbaa !87
  call void @ED_gplayer_frames_select_border(ptr noundef %53, float noundef %54, float noundef %55, i16 noundef signext 2) #7
  br label %65

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.bAnimListElem, ptr %39, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !79
  %59 = load float, ptr %7, align 4, !tbaa !87
  %60 = load float, ptr %8, align 4, !tbaa !87
  call void @ED_masklayer_frames_select_border(ptr noundef %58, float noundef %59, float noundef %60, i16 noundef signext 2) #7
  br label %65

61:                                               ; preds = %48
  %62 = getelementptr inbounds %struct.bAnimListElem, ptr %39, i64 0, i32 8
  %63 = load ptr, ptr %62, align 8, !tbaa !88
  %64 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %6, ptr noundef %63, ptr noundef %25, ptr noundef %26, ptr noundef null) #7
  br label %65

65:                                               ; preds = %61, %56, %51, %42
  %66 = load ptr, ptr %39, align 8, !tbaa !69
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %38, !llvm.loop !89

68:                                               ; preds = %65, %18
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  br label %166

69:                                               ; preds = %12
  %70 = trunc i32 %15 to i16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %71 = getelementptr inbounds %struct.bAnimContext, ptr %9, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  switch i16 %70, label %165 [
    i16 0, label %73
    i16 1, label %102
    i16 2, label %109
  ]

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.bAnimContext, ptr %9, i64 0, i32 1
  %75 = load i16, ptr %74, align 8, !tbaa !68
  %76 = icmp eq i16 %75, 3
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load ptr, ptr %9, align 8, !tbaa !67
  %79 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %9, ptr noundef nonnull %3, i32 noundef 3, ptr noundef %78, i32 noundef 3) #7
  %80 = load ptr, ptr %3, align 8, !tbaa !69
  %81 = icmp eq ptr %80, null
  br i1 %81, label %101, label %82

82:                                               ; preds = %77, %82
  %83 = phi ptr [ %86, %82 ], [ %80, %77 ]
  %84 = getelementptr inbounds %struct.bAnimListElem, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !79
  call void @ED_gplayer_make_cfra_list(ptr noundef %85, ptr noundef nonnull %4, i8 noundef zeroext 1) #7
  %86 = load ptr, ptr %83, align 8, !tbaa !69
  %87 = icmp eq ptr %86, null
  br i1 %87, label %101, label %82, !llvm.loop !91

88:                                               ; preds = %73
  %89 = sext i16 %75 to i32
  %90 = load ptr, ptr %9, align 8, !tbaa !67
  %91 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %9, ptr noundef nonnull %3, i32 noundef 3, ptr noundef %90, i32 noundef %89) #7
  %92 = load ptr, ptr %3, align 8, !tbaa !69
  %93 = icmp eq ptr %92, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %88, %94
  %95 = phi ptr [ %99, %94 ], [ %92, %88 ]
  %96 = getelementptr inbounds %struct.bAnimListElem, ptr %95, i64 0, i32 8
  %97 = load ptr, ptr %96, align 8, !tbaa !88
  %98 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %97, ptr noundef null, ptr noundef nonnull @bezt_to_cfraelem, ptr noundef null) #7
  %99 = load ptr, ptr %95, align 8, !tbaa !69
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %94, !llvm.loop !92

101:                                              ; preds = %94, %82, %88, %77
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #7
  br label %112

102:                                              ; preds = %69
  %103 = load ptr, ptr @MEM_callocN, align 8, !tbaa !69
  %104 = call ptr %103(i64 noundef 24, ptr noundef nonnull @.str.40) #7
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %104) #7
  %105 = getelementptr inbounds %struct.Scene, ptr %72, i64 0, i32 22, i32 5
  %106 = load i32, ptr %105, align 8, !tbaa !93
  %107 = sitofp i32 %106 to float
  %108 = getelementptr inbounds %struct.CfraElem, ptr %104, i64 0, i32 2
  store float %107, ptr %108, align 8, !tbaa !112
  br label %112

109:                                              ; preds = %69
  %110 = getelementptr inbounds %struct.bAnimContext, ptr %9, i64 0, i32 11
  %111 = load ptr, ptr %110, align 8, !tbaa !86
  call void @ED_markers_make_cfra_list(ptr noundef %111, ptr noundef nonnull %4, i16 noundef signext 1) #7
  br label %112

112:                                              ; preds = %109, %102, %101
  %113 = call ptr @ANIM_editkeyframes_select(i16 noundef signext 2) #7
  %114 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 1) #7
  %115 = getelementptr inbounds %struct.bAnimContext, ptr %9, i64 0, i32 1
  %116 = load ptr, ptr %9, align 8, !tbaa !67
  %117 = load i16, ptr %115, align 8, !tbaa !68
  %118 = sext i16 %117 to i32
  %119 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %9, ptr noundef nonnull %3, i32 noundef 3, ptr noundef %116, i32 noundef %118) #7
  %120 = load ptr, ptr %3, align 8, !tbaa !69
  %121 = icmp eq ptr %120, null
  br i1 %121, label %164, label %122

122:                                              ; preds = %112
  %123 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  %124 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  br label %128

125:                                              ; preds = %161, %128
  %126 = load ptr, ptr %129, align 8, !tbaa !69
  %127 = icmp eq ptr %126, null
  br i1 %127, label %164, label %128, !llvm.loop !114

128:                                              ; preds = %122, %125
  %129 = phi ptr [ %120, %122 ], [ %126, %125 ]
  %130 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %9, ptr noundef nonnull %129) #7
  %131 = load ptr, ptr %4, align 8, !tbaa !69
  %132 = icmp eq ptr %131, null
  br i1 %132, label %125, label %133

133:                                              ; preds = %128
  %134 = icmp eq ptr %130, null
  %135 = getelementptr inbounds %struct.bAnimListElem, ptr %129, i64 0, i32 3
  %136 = getelementptr inbounds %struct.bAnimListElem, ptr %129, i64 0, i32 2
  %137 = getelementptr inbounds %struct.bAnimListElem, ptr %129, i64 0, i32 2
  %138 = getelementptr inbounds %struct.bAnimListElem, ptr %129, i64 0, i32 8
  br label %139

139:                                              ; preds = %133, %161
  %140 = phi ptr [ %131, %133 ], [ %162, %161 ]
  %141 = getelementptr inbounds %struct.CfraElem, ptr %140, i64 0, i32 2
  %142 = load float, ptr %141, align 8, !tbaa !112
  br i1 %134, label %145, label %143

143:                                              ; preds = %139
  %144 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %130, float noundef %142, i16 noundef signext 1) #7
  store float %144, ptr %123, align 8, !tbaa !72
  br label %146

145:                                              ; preds = %139
  store float %142, ptr %124, align 8, !tbaa !72
  br label %146

146:                                              ; preds = %145, %143
  %147 = load i32, ptr %135, align 8, !tbaa !77
  switch i32 %147, label %158 [
    i32 27, label %148
    i32 29, label %153
  ]

148:                                              ; preds = %146
  %149 = load ptr, ptr %137, align 8, !tbaa !79
  %150 = getelementptr inbounds %struct.CfraElem, ptr %140, i64 0, i32 2
  %151 = load float, ptr %150, align 8, !tbaa !112
  %152 = fptosi float %151 to i32
  call void @ED_gpencil_select_frame(ptr noundef %149, i32 noundef %152, i16 noundef signext 2) #7
  br label %161

153:                                              ; preds = %146
  %154 = load ptr, ptr %136, align 8, !tbaa !79
  %155 = getelementptr inbounds %struct.CfraElem, ptr %140, i64 0, i32 2
  %156 = load float, ptr %155, align 8, !tbaa !112
  %157 = fptosi float %156 to i32
  call void @ED_mask_select_frame(ptr noundef %154, i32 noundef %157, i16 noundef signext 2) #7
  br label %161

158:                                              ; preds = %146
  %159 = load ptr, ptr %138, align 8, !tbaa !88
  %160 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %159, ptr noundef %114, ptr noundef %113, ptr noundef null) #7
  br label %161

161:                                              ; preds = %158, %153, %148
  %162 = load ptr, ptr %140, align 8, !tbaa !69
  %163 = icmp eq ptr %162, null
  br i1 %163, label %125, label %139, !llvm.loop !115

164:                                              ; preds = %125, %112
  call void @BLI_freelistN(ptr noundef nonnull %4) #7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #7
  br label %165

165:                                              ; preds = %69, %164
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %166

166:                                              ; preds = %165, %68
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #7
  br label %167

167:                                              ; preds = %2, %166
  %168 = phi i32 [ 4, %166 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %9) #7
  ret i32 %168
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_select_linked_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
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
  %10 = load ptr, ptr %3, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !68
  %13 = sext i16 %12 to i32
  %14 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2051, ptr noundef %10, i32 noundef %13) #7
  %15 = load ptr, ptr %4, align 8, !tbaa !69
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %9, %25
  %18 = phi ptr [ %26, %25 ], [ %15, %9 ]
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !88
  %21 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %20, ptr noundef null, ptr noundef %5, ptr noundef null) #7
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %20, ptr noundef null, ptr noundef %6, ptr noundef null) #7
  br label %25

25:                                               ; preds = %23, %17
  %26 = load ptr, ptr %18, align 8, !tbaa !69
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %17, !llvm.loop !116

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

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #7
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call fastcc void @select_moreless_action_keys(ptr noundef nonnull %3, i16 noundef signext 0)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #7
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #7
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call fastcc void @select_moreless_action_keys(ptr noundef nonnull %3, i16 noundef signext 1)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468550, ptr noundef null) #7
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local void @ACTION_OT_select_leftright(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @actkeys_select_leftright_invoke, ptr %4, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @actkeys_select_leftright_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.13, ptr noundef nonnull @prop_actkeys_leftright_select_types, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !48
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268435456) #7
  %12 = load ptr, ptr %8, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.5) #7
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_select_leftright_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.13) #7
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #7
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %3
  %11 = and i32 %7, 65535
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !117
  %21 = sitofp i32 %20 to float
  %22 = call float @UI_view2d_region_to_view_x(ptr noundef nonnull %18, float noundef %21) #7
  %23 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 22, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !93
  %25 = sitofp i32 %24 to float
  %26 = fcmp olt float %22, %25
  %27 = load ptr, ptr %5, align 8, !tbaa !49
  %28 = select i1 %26, i32 1, i32 2
  call void @RNA_enum_set(ptr noundef %27, ptr noundef nonnull @.str.13, i32 noundef %28) #7
  br label %29

29:                                               ; preds = %13, %10
  %30 = call i32 @actkeys_select_leftright_exec(ptr noundef %0, ptr noundef %1), !range !118
  br label %31

31:                                               ; preds = %3, %29
  %32 = phi i32 [ %30, %29 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #7
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_select_leftright_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 8
  %5 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #7
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.13) #7
  %9 = trunc i32 %8 to i16
  %10 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %5) #7
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %129, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %6, align 8, !tbaa !49
  %14 = call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.27) #7
  %15 = and i32 %8, 65535
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %129, label %17

17:                                               ; preds = %12
  %18 = icmp eq i32 %14, 0
  %19 = select i1 %18, i16 1, i16 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !90
  br i1 %18, label %22, label %23

22:                                               ; preds = %17
  call fastcc void @deselect_action_keys(ptr noundef nonnull %5, i16 noundef signext 0, i16 noundef signext 4)
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i16 [ 2, %22 ], [ %19, %17 ]
  %25 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 2) #7
  %26 = call ptr @ANIM_editkeyframes_select(i16 noundef signext %24) #7
  %27 = icmp eq i16 %9, 1
  %28 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 4
  br i1 %27, label %29, label %35

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  store float -3.000000e+05, ptr %30, align 8, !tbaa !72
  %31 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 22, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !93
  %33 = sitofp i32 %32 to float
  %34 = fadd float %33, 0x3FB99999A0000000
  br label %41

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 22, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !93
  %38 = sitofp i32 %37 to float
  %39 = fadd float %38, 0xBFB99999A0000000
  %40 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  store float %39, ptr %40, align 8, !tbaa !72
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi float [ 3.000000e+05, %35 ], [ %34, %29 ]
  store float %42, ptr %28, align 4, !tbaa !75
  %43 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  %44 = load ptr, ptr %5, align 8, !tbaa !67
  %45 = load i16, ptr %43, align 8, !tbaa !68
  %46 = sext i16 %45 to i32
  %47 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 2051, ptr noundef %44, i32 noundef %46) #7
  %48 = load ptr, ptr %3, align 8, !tbaa !69
  %49 = icmp eq ptr %48, null
  br i1 %49, label %85, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  %52 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 4
  %53 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  %54 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 4
  br label %55

55:                                               ; preds = %50, %82
  %56 = phi ptr [ %48, %50 ], [ %83, %82 ]
  %57 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %5, ptr noundef nonnull %56) #7
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.bAnimListElem, ptr %56, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !88
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %57, ptr noundef %61, i8 noundef zeroext 0, i8 noundef zeroext 1) #7
  %62 = load ptr, ptr %60, align 8, !tbaa !88
  %63 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %62, ptr noundef %25, ptr noundef %26, ptr noundef null) #7
  %64 = load ptr, ptr %60, align 8, !tbaa !88
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %57, ptr noundef %64, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %82

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.bAnimListElem, ptr %56, i64 0, i32 3
  %67 = load i32, ptr %66, align 8, !tbaa !77
  switch i32 %67, label %78 [
    i32 27, label %68
    i32 29, label %73
  ]

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.bAnimListElem, ptr %56, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !79
  %71 = load float, ptr %53, align 8, !tbaa !72
  %72 = load float, ptr %54, align 4, !tbaa !75
  call void @ED_gplayer_frames_select_border(ptr noundef %70, float noundef %71, float noundef %72, i16 noundef signext %24) #7
  br label %82

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.bAnimListElem, ptr %56, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !79
  %76 = load float, ptr %51, align 8, !tbaa !72
  %77 = load float, ptr %52, align 4, !tbaa !75
  call void @ED_masklayer_frames_select_border(ptr noundef %75, float noundef %76, float noundef %77, i16 noundef signext %24) #7
  br label %82

78:                                               ; preds = %65
  %79 = getelementptr inbounds %struct.bAnimListElem, ptr %56, i64 0, i32 8
  %80 = load ptr, ptr %79, align 8, !tbaa !88
  %81 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %80, ptr noundef %25, ptr noundef %26, ptr noundef null) #7
  br label %82

82:                                               ; preds = %78, %73, %68, %59
  %83 = load ptr, ptr %56, align 8, !tbaa !69
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %55, !llvm.loop !119

85:                                               ; preds = %82, %41
  %86 = icmp eq i16 %24, 2
  br i1 %86, label %87, label %128

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !120
  %90 = icmp eq ptr %89, null
  br i1 %90, label %128, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.SpaceAction, ptr %89, i64 0, i32 11
  %93 = load i16, ptr %92, align 2, !tbaa !121
  %94 = and i16 %93, 2048
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %128, label %96

96:                                               ; preds = %91
  %97 = call ptr @ED_animcontext_get_markers(ptr noundef nonnull %5) #7
  %98 = load ptr, ptr %97, align 8, !tbaa !69
  %99 = icmp eq ptr %98, null
  br i1 %99, label %128, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 22, i32 5
  %102 = icmp eq i16 %9, 2
  %103 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 22, i32 5
  br label %104

104:                                              ; preds = %100, %125
  %105 = phi ptr [ %98, %100 ], [ %126, %125 ]
  br i1 %27, label %106, label %111

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.TimeMarker, ptr %105, i64 0, i32 2
  %108 = load i32, ptr %107, align 8, !tbaa !125
  %109 = load i32, ptr %101, align 8, !tbaa !93
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %106, %104
  br i1 %102, label %112, label %121

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct.TimeMarker, ptr %105, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !125
  %115 = load i32, ptr %103, align 8, !tbaa !93
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %112, %106
  %118 = getelementptr inbounds %struct.TimeMarker, ptr %105, i64 0, i32 4
  %119 = load i32, ptr %118, align 4, !tbaa !127
  %120 = or i32 %119, 1
  store i32 %120, ptr %118, align 4, !tbaa !127
  br label %125

121:                                              ; preds = %112, %111
  %122 = getelementptr inbounds %struct.TimeMarker, ptr %105, i64 0, i32 4
  %123 = load i32, ptr %122, align 4, !tbaa !127
  %124 = and i32 %123, -2
  store i32 %124, ptr %122, align 4, !tbaa !127
  br label %125

125:                                              ; preds = %121, %117
  %126 = load ptr, ptr %105, align 8, !tbaa !69
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %104, !llvm.loop !128

128:                                              ; preds = %125, %96, %85, %87, %91
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239992838, ptr noundef null) #7
  br label %129

129:                                              ; preds = %12, %2, %128
  %130 = phi i32 [ 4, %128 ], [ 2, %2 ], [ 2, %12 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #7
  ret i32 %130
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @ACTION_OT_clickselect(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.30, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @actkeys_clickselect_invoke, ptr %4, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_action_active, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.32) #7
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #7
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #7
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #7
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actkeys_clickselect_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.KeyframeEditData, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca %struct.KeyframeEditData, align 8
  %9 = alloca %struct.ListBase, align 8
  %10 = alloca %struct.DLRBT_Tree, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca %struct.rctf, align 4
  %15 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %15) #7
  %16 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %15) #7
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %324, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = call i32 @RNA_boolean_get(ptr noundef %20, ptr noundef nonnull @.str.27) #7
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i16 1, i16 8
  %24 = load ptr, ptr %19, align 8, !tbaa !49
  %25 = call i32 @RNA_boolean_get(ptr noundef %24, ptr noundef nonnull @.str.33) #7
  %26 = load ptr, ptr %19, align 8, !tbaa !49
  %27 = call i32 @RNA_boolean_get(ptr noundef %26, ptr noundef nonnull @.str.36) #7
  %28 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #7
  %29 = getelementptr inbounds %struct.bAnimContext, ptr %15, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  %31 = getelementptr inbounds %struct.ARegion, ptr %30, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #7
  %32 = getelementptr inbounds %struct.bAnimContext, ptr %15, i64 0, i32 1
  %33 = load i16, ptr %32, align 8, !tbaa !68
  %34 = icmp eq i16 %33, 4
  %35 = load ptr, ptr %15, align 8
  %36 = select i1 %34, ptr %35, ptr null
  %37 = load i32, ptr %28, align 4, !tbaa !117
  %38 = sitofp i32 %37 to float
  %39 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %40 = load i32, ptr %39, align 4, !tbaa !117
  %41 = sitofp i32 %40 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %31, float noundef %38, float noundef %41, ptr noundef nonnull %12, ptr noundef nonnull %13) #7
  %42 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !62
  %43 = sitofp i16 %42 to float
  %44 = fmul float %43, 0x3FB99999A0000000
  %45 = call float @llvm.fmuladd.f32(float %43, float 0x3FE99999A0000000, float %44)
  %46 = fmul float %43, 0x3FD99999A0000000
  %47 = load float, ptr %12, align 4, !tbaa !87
  %48 = load float, ptr %13, align 4, !tbaa !87
  call void @UI_view2d_listview_view_to_cell(ptr noundef nonnull %31, float noundef 0.000000e+00, float noundef %45, float noundef 0.000000e+00, float noundef %46, float noundef %47, float noundef %48, ptr noundef null, ptr noundef nonnull %11) #7
  %49 = load i32, ptr %28, align 4, !tbaa !117
  %50 = add nsw i32 %49, -7
  %51 = sitofp i32 %50 to float
  %52 = load i32, ptr %39, align 4, !tbaa !117
  %53 = sitofp i32 %52 to float
  %54 = getelementptr inbounds %struct.rctf, ptr %14, i64 0, i32 2
  call void @UI_view2d_region_to_view(ptr noundef nonnull %31, float noundef %51, float noundef %53, ptr noundef nonnull %14, ptr noundef nonnull %54) #7
  %55 = load i32, ptr %28, align 4, !tbaa !117
  %56 = add nsw i32 %55, 7
  %57 = sitofp i32 %56 to float
  %58 = load i32, ptr %39, align 4, !tbaa !117
  %59 = sitofp i32 %58 to float
  %60 = getelementptr inbounds %struct.rctf, ptr %14, i64 0, i32 1
  %61 = getelementptr inbounds %struct.rctf, ptr %14, i64 0, i32 3
  call void @UI_view2d_region_to_view(ptr noundef nonnull %31, float noundef %57, float noundef %59, ptr noundef nonnull %60, ptr noundef nonnull %61) #7
  %62 = load ptr, ptr %15, align 8, !tbaa !67
  %63 = load i16, ptr %32, align 8, !tbaa !68
  %64 = sext i16 %63 to i32
  %65 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %15, ptr noundef nonnull %9, i32 noundef 11, ptr noundef %62, i32 noundef %64) #7
  %66 = load i32, ptr %11, align 4, !tbaa !117
  %67 = call ptr @BLI_findlink(ptr noundef nonnull %9, i32 noundef %66) #7
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %18
  %70 = load i32, ptr %11, align 4, !tbaa !117
  %71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i32 noundef %70)
  call void @ANIM_animdata_freelist(ptr noundef nonnull %9) #7
  br label %323

72:                                               ; preds = %18
  %73 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %15, ptr noundef nonnull %67) #7
  call void @BLI_dlrbTree_init(ptr noundef nonnull %10) #7
  %74 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 8
  %75 = load ptr, ptr %74, align 8, !tbaa !88
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 7
  %79 = load i16, ptr %78, align 2, !tbaa !129
  switch i16 %79, label %97 [
    i16 6, label %80
    i16 7, label %81
    i16 8, label %82
    i16 1, label %83
  ]

80:                                               ; preds = %77
  call void @scene_to_keylist(ptr noundef %36, ptr noundef nonnull %75, ptr noundef nonnull %10, ptr noundef null) #7
  br label %97

81:                                               ; preds = %77
  call void @ob_to_keylist(ptr noundef %36, ptr noundef nonnull %75, ptr noundef nonnull %10, ptr noundef null) #7
  br label %97

82:                                               ; preds = %77
  call void @action_to_keylist(ptr noundef %73, ptr noundef nonnull %75, ptr noundef nonnull %10, ptr noundef null) #7
  br label %97

83:                                               ; preds = %77
  call void @fcurve_to_keylist(ptr noundef %73, ptr noundef nonnull %75, ptr noundef nonnull %10, ptr noundef null) #7
  br label %97

84:                                               ; preds = %72
  %85 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 3
  %86 = load i32, ptr %85, align 8, !tbaa !77
  switch i32 %86, label %97 [
    i32 3, label %87
    i32 6, label %88
    i32 27, label %91
    i32 29, label %94
  ]

87:                                               ; preds = %84
  call void @summary_to_keylist(ptr noundef nonnull %15, ptr noundef nonnull %10, ptr noundef null) #7
  br label %97

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !79
  call void @agroup_to_keylist(ptr noundef %73, ptr noundef %90, ptr noundef nonnull %10, ptr noundef null) #7
  br label %97

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !79
  call void @gpl_to_keylist(ptr noundef %36, ptr noundef %93, ptr noundef nonnull %10) #7
  br label %97

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !79
  call void @mask_to_keylist(ptr noundef %36, ptr noundef %96, ptr noundef nonnull %10) #7
  br label %97

97:                                               ; preds = %94, %91, %88, %87, %84, %83, %82, %81, %80, %77
  %98 = getelementptr inbounds %struct.DLRBT_Tree, ptr %10, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !130
  %100 = icmp eq ptr %99, null
  br i1 %100, label %132, label %101

101:                                              ; preds = %97
  %102 = load float, ptr %14, align 4, !tbaa !70
  %103 = load float, ptr %60, align 4, !tbaa !74
  %104 = fcmp olt float %102, %103
  br label %105

105:                                              ; preds = %101, %123
  %106 = phi i1 [ %100, %101 ], [ %131, %123 ]
  %107 = phi ptr [ %99, %101 ], [ %130, %123 ]
  %108 = getelementptr inbounds %struct.ActKeyColumn, ptr %107, i64 0, i32 8
  %109 = load float, ptr %108, align 4, !tbaa !132
  br i1 %104, label %110, label %114

110:                                              ; preds = %105
  %111 = fcmp olt float %102, %109
  %112 = fcmp olt float %109, %103
  %113 = and i1 %111, %112
  br i1 %113, label %118, label %123

114:                                              ; preds = %105
  %115 = fcmp olt float %103, %109
  %116 = fcmp olt float %109, %102
  %117 = and i1 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114, %110
  %119 = getelementptr inbounds %struct.ActKeyColumn, ptr %107, i64 0, i32 8
  %120 = load float, ptr %119, align 4, !tbaa !132
  %121 = call float @BKE_nla_tweakedit_remap(ptr noundef %73, float noundef %120, i16 noundef signext 1) #7
  %122 = load float, ptr %119, align 4, !tbaa !132
  br label %132

123:                                              ; preds = %114, %110
  %124 = getelementptr inbounds %struct.ActKeyColumn, ptr %107, i64 0, i32 8
  %125 = load float, ptr %124, align 4, !tbaa !132
  %126 = fcmp olt float %125, %102
  %127 = getelementptr inbounds %struct.ActKeyColumn, ptr %107, i64 0, i32 3
  %128 = getelementptr inbounds %struct.ActKeyColumn, ptr %107, i64 0, i32 2
  %129 = select i1 %126, ptr %127, ptr %128
  %130 = load ptr, ptr %129, align 8, !tbaa !69
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %105, !llvm.loop !134

132:                                              ; preds = %123, %97, %118
  %133 = phi i1 [ %106, %118 ], [ %100, %97 ], [ %131, %123 ]
  %134 = phi float [ %121, %118 ], [ 0.000000e+00, %97 ], [ 0.000000e+00, %123 ]
  %135 = phi float [ %122, %118 ], [ 0.000000e+00, %97 ], [ 0.000000e+00, %123 ]
  call void @BLI_remlink(ptr noundef nonnull %9, ptr noundef nonnull %67) #7
  call void @BLI_dlrbTree_free(ptr noundef nonnull %10) #7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %9) #7
  br i1 %22, label %136, label %187

136:                                              ; preds = %132
  call fastcc void @deselect_action_keys(ptr noundef nonnull %15, i16 noundef signext 0, i16 noundef signext 4)
  %137 = load i16, ptr %32, align 8, !tbaa !68
  switch i16 %137, label %187 [
    i16 1, label %138
    i16 4, label %138
    i16 3, label %161
    i16 9, label %174
  ]

138:                                              ; preds = %136, %136
  %139 = load ptr, ptr %15, align 8, !tbaa !67
  %140 = sext i16 %137 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %15, ptr noundef %139, i32 noundef %140, i8 noundef zeroext 0, i32 noundef 0) #7
  %141 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !79
  %143 = icmp eq ptr %142, null
  br i1 %143, label %187, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 3
  %146 = load i32, ptr %145, align 8, !tbaa !77
  switch i32 %146, label %187 [
    i32 6, label %147
    i32 7, label %154
  ]

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.bActionGroup, ptr %142, i64 0, i32 3
  %149 = load i32, ptr %148, align 8, !tbaa !135
  %150 = or i32 %149, 1
  store i32 %150, ptr %148, align 8, !tbaa !135
  %151 = load ptr, ptr %15, align 8, !tbaa !67
  %152 = load i16, ptr %32, align 8, !tbaa !68
  %153 = sext i16 %152 to i32
  call void @ANIM_set_active_channel(ptr noundef nonnull %15, ptr noundef %151, i32 noundef %153, i32 noundef 11, ptr noundef nonnull %142, i32 noundef 6) #7
  br label %187

154:                                              ; preds = %144
  %155 = getelementptr inbounds %struct.FCurve, ptr %142, i64 0, i32 9
  %156 = load i16, ptr %155, align 8, !tbaa !138
  %157 = or i16 %156, 2
  store i16 %157, ptr %155, align 8, !tbaa !138
  %158 = load ptr, ptr %15, align 8, !tbaa !67
  %159 = load i16, ptr %32, align 8, !tbaa !68
  %160 = sext i16 %159 to i32
  call void @ANIM_set_active_channel(ptr noundef nonnull %15, ptr noundef %158, i32 noundef %160, i32 noundef 11, ptr noundef nonnull %142, i32 noundef 7) #7
  br label %187

161:                                              ; preds = %136
  %162 = load ptr, ptr %15, align 8, !tbaa !67
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %15, ptr noundef %162, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 0) #7
  %163 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !79
  %165 = icmp eq ptr %164, null
  br i1 %165, label %187, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 3
  %168 = load i32, ptr %167, align 8, !tbaa !77
  %169 = icmp eq i32 %168, 27
  br i1 %169, label %170, label %187

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.bGPDlayer, ptr %164, i64 0, i32 4
  %172 = load i32, ptr %171, align 8, !tbaa !140
  %173 = or i32 %172, 32
  store i32 %173, ptr %171, align 8, !tbaa !140
  br label %187

174:                                              ; preds = %136
  %175 = load ptr, ptr %15, align 8, !tbaa !67
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %15, ptr noundef %175, i32 noundef 9, i8 noundef zeroext 0, i32 noundef 0) #7
  %176 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !79
  %178 = icmp eq ptr %177, null
  br i1 %178, label %187, label %179

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 3
  %181 = load i32, ptr %180, align 8, !tbaa !77
  %182 = icmp eq i32 %181, 29
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.MaskLayer, ptr %177, i64 0, i32 12
  %185 = load i8, ptr %184, align 2, !tbaa !142
  %186 = or i8 %185, 32
  store i8 %186, ptr %184, align 2, !tbaa !142
  br label %187

187:                                              ; preds = %183, %179, %174, %170, %166, %161, %154, %147, %144, %138, %136, %132
  %188 = phi i16 [ 2, %147 ], [ 2, %154 ], [ 2, %138 ], [ 2, %170 ], [ 2, %166 ], [ 2, %161 ], [ 2, %183 ], [ 2, %179 ], [ 2, %174 ], [ %23, %132 ], [ 2, %144 ], [ 2, %136 ]
  br i1 %133, label %321, label %189

189:                                              ; preds = %187
  %190 = and i32 %25, 255
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %226, label %192

192:                                              ; preds = %189
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  %193 = call ptr @ANIM_editkeyframes_select(i16 noundef signext %188) #7
  %194 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 1) #7
  %195 = load ptr, ptr %15, align 8, !tbaa !67
  %196 = load i16, ptr %32, align 8, !tbaa !68
  %197 = sext i16 %196 to i32
  %198 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %15, ptr noundef nonnull %7, i32 noundef 2051, ptr noundef %195, i32 noundef %197) #7
  %199 = load ptr, ptr %7, align 8, !tbaa !69
  %200 = icmp eq ptr %199, null
  br i1 %200, label %225, label %201

201:                                              ; preds = %192
  %202 = getelementptr inbounds %struct.KeyframeEditData, ptr %8, i64 0, i32 3
  %203 = getelementptr inbounds %struct.KeyframeEditData, ptr %8, i64 0, i32 3
  %204 = fptosi float %135 to i32
  %205 = fptosi float %135 to i32
  br label %206

206:                                              ; preds = %201, %222
  %207 = phi ptr [ %199, %201 ], [ %223, %222 ]
  %208 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %15, ptr noundef nonnull %207) #7
  %209 = icmp eq ptr %208, null
  br i1 %209, label %212, label %210

210:                                              ; preds = %206
  %211 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %208, float noundef %135, i16 noundef signext 1) #7
  store float %211, ptr %202, align 8, !tbaa !72
  br label %213

212:                                              ; preds = %206
  store float %135, ptr %203, align 8, !tbaa !72
  br label %213

213:                                              ; preds = %212, %210
  %214 = getelementptr inbounds %struct.bAnimListElem, ptr %207, i64 0, i32 3
  %215 = load i32, ptr %214, align 8, !tbaa !77
  %216 = getelementptr inbounds %struct.bAnimListElem, ptr %207, i64 0, i32 8
  %217 = load ptr, ptr %216, align 8, !tbaa !88
  switch i32 %215, label %220 [
    i32 27, label %218
    i32 29, label %219
  ]

218:                                              ; preds = %213
  call void @ED_gpencil_select_frame(ptr noundef %217, i32 noundef %205, i16 noundef signext %188) #7
  br label %222

219:                                              ; preds = %213
  call void @ED_mask_select_frame(ptr noundef %217, i32 noundef %204, i16 noundef signext %188) #7
  br label %222

220:                                              ; preds = %213
  %221 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %8, ptr noundef %217, ptr noundef %194, ptr noundef %193, ptr noundef null) #7
  br label %222

222:                                              ; preds = %220, %219, %218
  %223 = load ptr, ptr %207, align 8, !tbaa !69
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %206, !llvm.loop !144

225:                                              ; preds = %222, %192
  call void @BLI_freelistN(ptr noundef nonnull %8) #7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  br label %321

226:                                              ; preds = %189
  %227 = and i32 %27, 255
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %271, label %229

229:                                              ; preds = %226
  %230 = call ptr @ANIM_editkeyframes_select(i16 noundef signext %188) #7
  %231 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 3
  %232 = load i32, ptr %231, align 8, !tbaa !77
  switch i32 %232, label %239 [
    i32 27, label %233
    i32 29, label %236
  ]

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !79
  call void @ED_gpencil_select_frames(ptr noundef %235, i16 noundef signext %188) #7
  br label %321

236:                                              ; preds = %229
  %237 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !79
  call void @ED_mask_select_frames(ptr noundef %238, i16 noundef signext %188) #7
  br label %321

239:                                              ; preds = %229
  %240 = load i16, ptr %32, align 8, !tbaa !68
  switch i16 %240, label %267 [
    i16 3, label %241
    i16 9, label %241
  ]

241:                                              ; preds = %239, %239
  %242 = icmp eq i32 %232, 3
  br i1 %242, label %243, label %267

243:                                              ; preds = %241
  %244 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 7
  %245 = load i16, ptr %244, align 2, !tbaa !129
  %246 = icmp eq i16 %245, 5
  br i1 %246, label %247, label %267

247:                                              ; preds = %243
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %248 = load ptr, ptr %15, align 8, !tbaa !67
  %249 = sext i16 %240 to i32
  %250 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %15, ptr noundef nonnull %6, i32 noundef 2051, ptr noundef %248, i32 noundef %249) #7
  %251 = load ptr, ptr %6, align 8, !tbaa !69
  %252 = icmp eq ptr %251, null
  br i1 %252, label %266, label %253

253:                                              ; preds = %247, %263
  %254 = phi ptr [ %264, %263 ], [ %251, %247 ]
  %255 = getelementptr inbounds %struct.bAnimListElem, ptr %254, i64 0, i32 3
  %256 = load i32, ptr %255, align 8, !tbaa !77
  switch i32 %256, label %263 [
    i32 27, label %257
    i32 29, label %260
  ]

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.bAnimListElem, ptr %254, i64 0, i32 2
  %259 = load ptr, ptr %258, align 8, !tbaa !79
  call void @ED_gpencil_select_frames(ptr noundef %259, i16 noundef signext %188) #7
  br label %263

260:                                              ; preds = %253
  %261 = getelementptr inbounds %struct.bAnimListElem, ptr %254, i64 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !79
  call void @ED_mask_select_frames(ptr noundef %262, i16 noundef signext %188) #7
  br label %263

263:                                              ; preds = %260, %257, %253
  %264 = load ptr, ptr %254, align 8, !tbaa !69
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %253, !llvm.loop !145

266:                                              ; preds = %263, %247
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  br label %321

267:                                              ; preds = %243, %241, %239
  %268 = getelementptr inbounds %struct.bAnimContext, ptr %15, i64 0, i32 8
  %269 = load ptr, ptr %268, align 8, !tbaa !84
  %270 = call signext i16 @ANIM_animchannel_keyframes_loop(ptr noundef null, ptr noundef %269, ptr noundef %67, ptr noundef null, ptr noundef %230, ptr noundef null) #7
  br label %321

271:                                              ; preds = %226
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %272 = call ptr @ANIM_editkeyframes_select(i16 noundef signext %188) #7
  %273 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 1) #7
  %274 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 3
  store float %134, ptr %274, align 8, !tbaa !72
  %275 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 3
  %276 = load i32, ptr %275, align 8, !tbaa !77
  switch i32 %276, label %285 [
    i32 27, label %277
    i32 29, label %281
  ]

277:                                              ; preds = %271
  %278 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !79
  %280 = fptosi float %134 to i32
  call void @ED_gpencil_select_frame(ptr noundef %279, i32 noundef %280, i16 noundef signext %188) #7
  br label %320

281:                                              ; preds = %271
  %282 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 2
  %283 = load ptr, ptr %282, align 8, !tbaa !79
  %284 = fptosi float %134 to i32
  call void @ED_mask_select_frame(ptr noundef %283, i32 noundef %284, i16 noundef signext %188) #7
  br label %320

285:                                              ; preds = %271
  %286 = load i16, ptr %32, align 8, !tbaa !68
  switch i16 %286, label %316 [
    i16 3, label %287
    i16 9, label %287
  ]

287:                                              ; preds = %285, %285
  %288 = icmp eq i32 %276, 3
  br i1 %288, label %289, label %316

289:                                              ; preds = %287
  %290 = getelementptr inbounds %struct.bAnimListElem, ptr %67, i64 0, i32 7
  %291 = load i16, ptr %290, align 2, !tbaa !129
  %292 = icmp eq i16 %291, 5
  br i1 %292, label %293, label %316

293:                                              ; preds = %289
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %294 = load ptr, ptr %15, align 8, !tbaa !67
  %295 = sext i16 %286 to i32
  %296 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %15, ptr noundef nonnull %5, i32 noundef 2051, ptr noundef %294, i32 noundef %295) #7
  %297 = load ptr, ptr %5, align 8, !tbaa !69
  %298 = icmp eq ptr %297, null
  br i1 %298, label %315, label %299

299:                                              ; preds = %293
  %300 = fptosi float %134 to i32
  %301 = fptosi float %134 to i32
  br label %302

302:                                              ; preds = %299, %312
  %303 = phi ptr [ %297, %299 ], [ %313, %312 ]
  %304 = getelementptr inbounds %struct.bAnimListElem, ptr %303, i64 0, i32 3
  %305 = load i32, ptr %304, align 8, !tbaa !77
  switch i32 %305, label %312 [
    i32 27, label %306
    i32 29, label %309
  ]

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.bAnimListElem, ptr %303, i64 0, i32 2
  %308 = load ptr, ptr %307, align 8, !tbaa !79
  call void @ED_gpencil_select_frame(ptr noundef %308, i32 noundef %301, i16 noundef signext %188) #7
  br label %312

309:                                              ; preds = %302
  %310 = getelementptr inbounds %struct.bAnimListElem, ptr %303, i64 0, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !79
  call void @ED_mask_select_frame(ptr noundef %311, i32 noundef %300, i16 noundef signext %188) #7
  br label %312

312:                                              ; preds = %309, %306, %302
  %313 = load ptr, ptr %303, align 8, !tbaa !69
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %302, !llvm.loop !146

315:                                              ; preds = %312, %293
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  br label %320

316:                                              ; preds = %289, %287, %285
  %317 = getelementptr inbounds %struct.bAnimContext, ptr %15, i64 0, i32 8
  %318 = load ptr, ptr %317, align 8, !tbaa !84
  %319 = call signext i16 @ANIM_animchannel_keyframes_loop(ptr noundef nonnull %4, ptr noundef %318, ptr noundef %67, ptr noundef %273, ptr noundef %272, ptr noundef null) #7
  br label %320

320:                                              ; preds = %316, %315, %281, %277
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  br label %321

321:                                              ; preds = %320, %267, %266, %236, %233, %225, %187
  %322 = load ptr, ptr @MEM_freeN, align 8, !tbaa !69
  call void %322(ptr noundef nonnull %67) #7
  br label %323

323:                                              ; preds = %69, %321
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239992838, ptr noundef null) #7
  br label %324

324:                                              ; preds = %3, %323
  %325 = phi i32 [ 12, %323 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %15) #7
  ret i32 %325
}

declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @deselect_action_keys(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %0, align 8, !tbaa !67
  %8 = load i16, ptr %6, align 8, !tbaa !68
  %9 = sext i16 %8 to i32
  %10 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 2051, ptr noundef %7, i32 noundef %9) #7
  %11 = call ptr @ANIM_editkeyframes_ok(i16 noundef signext 3) #7
  %12 = icmp eq i16 %1, 0
  %13 = load ptr, ptr %4, align 8
  %14 = icmp eq ptr %13, null
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %38, label %16

16:                                               ; preds = %3, %35
  %17 = phi ptr [ %36, %35 ], [ %13, %3 ]
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !77
  switch i32 %19, label %30 [
    i32 27, label %20
    i32 29, label %25
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !79
  %23 = call zeroext i8 @ED_gplayer_frame_select_check(ptr noundef %22) #7
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %35, label %38

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !79
  %28 = call zeroext i8 @ED_masklayer_frame_select_check(ptr noundef %27) #7
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %35, label %38

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !88
  %33 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %32, ptr noundef null, ptr noundef %11, ptr noundef null) #7
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %20, %30, %25
  %36 = load ptr, ptr %17, align 8, !tbaa !69
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %16, !llvm.loop !147

38:                                               ; preds = %35, %20, %25, %30, %3
  %39 = phi i16 [ %2, %3 ], [ 4, %30 ], [ 4, %25 ], [ 4, %20 ], [ %2, %35 ]
  %40 = call ptr @ANIM_editkeyframes_select(i16 noundef signext %39) #7
  %41 = load ptr, ptr %4, align 8, !tbaa !69
  %42 = icmp eq ptr %41, null
  br i1 %42, label %60, label %43

43:                                               ; preds = %38, %57
  %44 = phi ptr [ %58, %57 ], [ %41, %38 ]
  %45 = getelementptr inbounds %struct.bAnimListElem, ptr %44, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !77
  switch i32 %46, label %53 [
    i32 27, label %47
    i32 29, label %50
  ]

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.bAnimListElem, ptr %44, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !79
  call void @ED_gplayer_frame_select_set(ptr noundef %49, i16 noundef signext %39) #7
  br label %57

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.bAnimListElem, ptr %44, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !79
  call void @ED_masklayer_frame_select_set(ptr noundef %52, i16 noundef signext %39) #7
  br label %57

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.bAnimListElem, ptr %44, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !88
  %56 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %5, ptr noundef %55, ptr noundef null, ptr noundef %40, ptr noundef null) #7
  br label %57

57:                                               ; preds = %47, %53, %50
  %58 = load ptr, ptr %44, align 8, !tbaa !69
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %43, !llvm.loop !148

60:                                               ; preds = %57, %38
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  ret void
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @ANIM_editkeyframes_ok(i16 noundef signext) local_unnamed_addr #1

declare zeroext i8 @ED_gplayer_frame_select_check(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @ED_masklayer_frame_select_check(ptr noundef) local_unnamed_addr #1

declare signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ANIM_editkeyframes_select(i16 noundef signext) local_unnamed_addr #1

declare void @ED_gplayer_frame_select_set(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @ED_masklayer_frame_select_set(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #1

declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ANIM_nla_mapping_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare float @BKE_nla_tweakedit_remap(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #1

declare void @ED_gplayer_frames_select_border(ptr noundef, float noundef, float noundef, i16 noundef signext) local_unnamed_addr #1

declare void @ED_masklayer_frames_select_border(ptr noundef, float noundef, float noundef, i16 noundef signext) local_unnamed_addr #1

declare signext i16 @ANIM_animchannel_keyframes_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_markers_get_minmax(ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ANIM_nla_mapping_apply_fcurve(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @ED_gplayer_make_cfra_list(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare signext i16 @bezt_to_cfraelem(ptr noundef, ptr noundef) #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_markers_make_cfra_list(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @ED_gpencil_select_frame(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

declare void @ED_mask_select_frame(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @select_moreless_action_keys(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.KeyframeEditData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %5 = tail call ptr @ANIM_editkeyframes_buildselmap(i16 noundef signext %1) #7
  %6 = load ptr, ptr %0, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !68
  %9 = sext i16 %8 to i32
  %10 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2051, ptr noundef %6, i32 noundef %9) #7
  %11 = load ptr, ptr %3, align 8, !tbaa !69
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.KeyframeEditData, ptr %4, i64 0, i32 2
  br label %15

15:                                               ; preds = %13, %32
  %16 = phi ptr [ %11, %13 ], [ %33, %32 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !88
  %19 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !149
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !69
  %24 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !150
  %26 = zext i32 %25 to i64
  %27 = call ptr %23(i64 noundef %26, ptr noundef nonnull @.str.49) #7
  store ptr %27, ptr %14, align 8, !tbaa !151
  %28 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %18, ptr noundef null, ptr noundef %5, ptr noundef null) #7
  %29 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef nonnull %4, ptr noundef %18, ptr noundef null, ptr noundef nonnull @bezt_selmap_flush, ptr noundef null) #7
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !69
  %31 = load ptr, ptr %14, align 8, !tbaa !151
  call void %30(ptr noundef %31) #7
  store ptr null, ptr %14, align 8, !tbaa !151
  br label %32

32:                                               ; preds = %15, %22
  %33 = load ptr, ptr %16, align 8, !tbaa !69
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %15, !llvm.loop !152

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

declare ptr @ED_animcontext_get_markers(ptr noundef) local_unnamed_addr #1

declare void @UI_view2d_listview_view_to_cell(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare void @BLI_dlrbTree_init(ptr noundef) local_unnamed_addr #1

declare void @scene_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ob_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @action_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fcurve_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @summary_to_keylist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @agroup_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gpl_to_keylist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mask_to_keylist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_dlrbTree_free(ptr noundef) local_unnamed_addr #1

declare void @ANIM_deselect_anim_channels(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare void @ANIM_set_active_channel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ED_gpencil_select_frames(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @ED_mask_select_frames(ptr noundef, i16 noundef signext) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!51 = !{!35, !36, i64 48}
!52 = !{!35, !36, i64 64}
!53 = !{!35, !36, i64 56}
!54 = !{!55, !56, i64 4}
!55 = !{!"rcti", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!56 = !{!"int", !37, i64 0}
!57 = !{!55, !56, i64 0}
!58 = !{!55, !56, i64 12}
!59 = !{!55, !56, i64 8}
!60 = !{!61, !36, i64 32}
!61 = !{!"bAnimContext", !36, i64 0, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!62 = !{!63, !41, i64 8948}
!63 = !{!"UserDef", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !56, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !56, i64 8484, !56, i64 8488, !56, i64 8492, !41, i64 8496, !41, i64 8498, !56, i64 8500, !56, i64 8504, !56, i64 8508, !56, i64 8512, !56, i64 8516, !56, i64 8520, !56, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !56, i64 8912, !56, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !64, i64 8956, !64, i64 8960, !56, i64 8964, !41, i64 8968, !41, i64 8970, !64, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !65, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !56, i64 10896, !56, i64 10900, !64, i64 10904, !64, i64 10908, !56, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !66, i64 10928}
!64 = !{!"float", !37, i64 0}
!65 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!66 = !{!"WalkNavigation", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20, !41, i64 24, !37, i64 26}
!67 = !{!61, !36, i64 0}
!68 = !{!61, !41, i64 8}
!69 = !{!36, !36, i64 0}
!70 = !{!71, !64, i64 0}
!71 = !{!"rctf", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12}
!72 = !{!73, !64, i64 32}
!73 = !{!"KeyframeEditData", !39, i64 0, !36, i64 16, !36, i64 24, !64, i64 32, !64, i64 36, !56, i64 40, !56, i64 44, !36, i64 48, !56, i64 56, !41, i64 60, !41, i64 62}
!74 = !{!71, !64, i64 4}
!75 = !{!73, !64, i64 36}
!76 = !{!71, !64, i64 8}
!77 = !{!78, !56, i64 24}
!78 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !56, i64 24, !56, i64 28, !56, i64 32, !41, i64 36, !41, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!79 = !{!78, !36, i64 16}
!80 = distinct !{!80, !81, !82}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = distinct !{!83, !81, !82}
!84 = !{!61, !36, i64 40}
!85 = distinct !{!85, !81, !82}
!86 = !{!61, !36, i64 64}
!87 = !{!64, !64, i64 0}
!88 = !{!78, !36, i64 40}
!89 = distinct !{!89, !81, !82}
!90 = !{!61, !36, i64 48}
!91 = distinct !{!91, !81, !82}
!92 = distinct !{!92, !81, !82}
!93 = !{!94, !56, i64 680}
!94 = !{!"Scene", !95, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !56, i64 232, !56, i64 236, !56, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !96, i64 280, !103, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !56, i64 4380, !39, i64 4384, !104, i64 4400, !105, i64 4416, !108, i64 4600, !36, i64 4608, !109, i64 4616, !36, i64 4640, !110, i64 4648, !110, i64 4656, !98, i64 4664, !99, i64 4824, !111, i64 4888, !36, i64 4952}
!95 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !56, i64 100, !56, i64 104, !56, i64 108, !36, i64 112}
!96 = !{!"RenderData", !97, i64 0, !36, i64 248, !36, i64 256, !100, i64 264, !101, i64 328, !56, i64 400, !56, i64 404, !56, i64 408, !64, i64 412, !56, i64 416, !56, i64 420, !56, i64 424, !56, i64 428, !41, i64 432, !41, i64 434, !64, i64 436, !64, i64 440, !64, i64 444, !64, i64 448, !64, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !56, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !56, i64 484, !56, i64 488, !41, i64 492, !41, i64 494, !56, i64 496, !56, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !56, i64 516, !56, i64 520, !56, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !71, i64 544, !71, i64 560, !55, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !64, i64 612, !64, i64 616, !64, i64 620, !64, i64 624, !56, i64 628, !64, i64 632, !64, i64 636, !64, i64 640, !64, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !64, i64 660, !64, i64 664, !41, i64 668, !41, i64 670, !64, i64 672, !64, i64 676, !37, i64 680, !56, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !56, i64 2520, !41, i64 2524, !41, i64 2526, !64, i64 2528, !64, i64 2532, !41, i64 2536, !41, i64 2538, !64, i64 2540, !41, i64 2544, !41, i64 2546, !56, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !64, i64 2560, !64, i64 2564, !36, i64 2568, !56, i64 2576, !64, i64 2580, !37, i64 2584, !102, i64 2616, !56, i64 3976, !56, i64 3980}
!97 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !64, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !98, i64 24, !99, i64 184}
!98 = !{!"ColorManagedViewSettings", !56, i64 0, !56, i64 4, !37, i64 8, !37, i64 72, !64, i64 136, !64, i64 140, !36, i64 144, !36, i64 152}
!99 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!100 = !{!"QuicktimeCodecSettings", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !41, i64 48, !41, i64 50, !56, i64 52, !56, i64 56, !56, i64 60}
!101 = !{!"FFMpegCodecData", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !64, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !56, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !36, i64 64}
!102 = !{!"BakeData", !97, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !64, i64 1280, !64, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!103 = !{!"AudioData", !56, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !56, i64 16, !41, i64 20, !41, i64 22, !64, i64 24, !64, i64 28}
!104 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!105 = !{!"GameData", !104, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !106, i64 40, !41, i64 64, !41, i64 66, !64, i64 68, !107, i64 72, !64, i64 128, !64, i64 132, !56, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !64, i64 164, !64, i64 168, !64, i64 172, !64, i64 176, !64, i64 180}
!106 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !64, i64 8, !64, i64 12, !36, i64 16}
!107 = !{!"RecastData", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20, !64, i64 24, !64, i64 28, !64, i64 32, !64, i64 36, !56, i64 40, !64, i64 44, !64, i64 48, !41, i64 52, !41, i64 54}
!108 = !{!"UnitSettings", !64, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!109 = !{!"PhysicsSettings", !37, i64 0, !56, i64 12, !56, i64 16, !56, i64 20}
!110 = !{!"long", !37, i64 0}
!111 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!112 = !{!113, !64, i64 16}
!113 = !{!"CfraElem", !36, i64 0, !36, i64 8, !64, i64 16, !56, i64 20}
!114 = distinct !{!114, !81, !82}
!115 = distinct !{!115, !81, !82}
!116 = distinct !{!116, !81, !82}
!117 = !{!56, !56, i64 0}
!118 = !{i32 2, i32 5}
!119 = distinct !{!119, !81, !82}
!120 = !{!61, !36, i64 24}
!121 = !{!122, !41, i64 338}
!122 = !{!"SpaceAction", !36, i64 0, !36, i64 8, !39, i64 16, !56, i64 32, !64, i64 36, !37, i64 40, !123, i64 56, !36, i64 216, !124, i64 224, !37, i64 336, !37, i64 337, !41, i64 338, !64, i64 340}
!123 = !{!"View2D", !71, i64 0, !71, i64 16, !55, i64 32, !55, i64 48, !55, i64 64, !37, i64 80, !37, i64 88, !64, i64 96, !64, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !56, i64 136, !56, i64 140, !36, i64 144, !36, i64 152}
!124 = !{!"bDopeSheet", !36, i64 0, !39, i64 8, !36, i64 24, !37, i64 32, !56, i64 96, !56, i64 100, !56, i64 104, !56, i64 108}
!125 = !{!126, !56, i64 16}
!126 = !{!"TimeMarker", !36, i64 0, !36, i64 8, !56, i64 16, !37, i64 20, !56, i64 84, !36, i64 88}
!127 = !{!126, !56, i64 84}
!128 = distinct !{!128, !81, !82}
!129 = !{!78, !41, i64 38}
!130 = !{!131, !36, i64 16}
!131 = !{!"DLRBT_Tree", !36, i64 0, !36, i64 8, !36, i64 16}
!132 = !{!133, !64, i64 44}
!133 = !{!"ActKeyColumn", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 41, !41, i64 42, !64, i64 44, !41, i64 48, !41, i64 50}
!134 = distinct !{!134, !81, !82}
!135 = !{!136, !56, i64 32}
!136 = !{!"bActionGroup", !36, i64 0, !36, i64 8, !39, i64 16, !56, i64 32, !56, i64 36, !37, i64 40, !137, i64 104}
!137 = !{!"ThemeWireColor", !37, i64 0, !37, i64 4, !37, i64 8, !41, i64 12, !41, i64 14}
!138 = !{!139, !41, i64 72}
!139 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 48, !36, i64 56, !56, i64 64, !64, i64 68, !41, i64 72, !41, i64 74, !56, i64 76, !36, i64 80, !56, i64 88, !37, i64 92, !64, i64 104, !64, i64 108}
!140 = !{!141, !56, i64 40}
!141 = !{!"bGPDlayer", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 32, !56, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 64}
!142 = !{!143, !37, i64 142}
!143 = !{!"MaskLayer", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 80, !39, i64 96, !36, i64 112, !36, i64 120, !64, i64 128, !37, i64 132, !37, i64 133, !37, i64 134, !37, i64 135, !37, i64 142, !37, i64 143}
!144 = distinct !{!144, !81, !82}
!145 = distinct !{!145, !81, !82}
!146 = distinct !{!146, !81, !82}
!147 = distinct !{!147, !81, !82}
!148 = distinct !{!148, !81, !82}
!149 = !{!139, !36, i64 48}
!150 = !{!139, !56, i64 64}
!151 = !{!73, !36, i64 24}
!152 = distinct !{!152, !81, !82}
