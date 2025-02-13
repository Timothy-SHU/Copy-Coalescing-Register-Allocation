; ModuleID = 'blender/source/blender/editors/space_nla/nla_select.c'
source_filename = "blender/source/blender/editors/space_nla/nla_select.c"
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
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }

@.str = private unnamed_addr constant [15 x i8] c"(De)select All\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"NLA_OT_select_all_toggle\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Select or deselect all NLA-Strips\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Invert\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Border Select\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"NLA_OT_select_border\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Use box selection to grab NLA-Strips\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"axis_range\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Axis Range\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Select Left/Right\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"NLA_OT_select_leftright\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"Select strips to the left or the right of the current frame\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@prop_nlaedit_leftright_select_types = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -1, ptr @.str.23, i32 0, ptr @.str.24, ptr @.str.5 }, %struct.EnumPropertyItem { i32 1, ptr @.str.25, i32 0, ptr @.str.26, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.5 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"Extend Select\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Mouse Select\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"NLA_OT_click_select\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Handle clicks to select NLA Strips\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"gesture_mode\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.22 = private unnamed_addr constant [22 x i8] c"NLA_OT_tweakmode_exit\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"CHECK\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"Check if Select Left or Right\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"Before current frame\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"After current frame\00", align 1
@.str.29 = private unnamed_addr constant [71 x i8] c"Error: animation channel (index = %d) not found in mouse_nla_strips()\0A\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NLA_OT_select_all_toggle(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_deselectall_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !19
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_deselectall_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  call fastcc void @deselect_nla_strips(ptr noundef nonnull %3, i16 noundef signext 0, i16 noundef signext 8) #10
  br label %13

12:                                               ; preds = %6
  call fastcc void @deselect_nla_strips(ptr noundef nonnull %3, i16 noundef signext 1, i16 noundef signext 2) #10
  br label %13

13:                                               ; preds = %12, %11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665158, ptr noundef null) #8
  br label %14

14:                                               ; preds = %2, %13
  %15 = phi i32 [ 4, %13 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %15
}

; Function Attrs: optsize
declare i32 @nlaop_poll_tweakmode_off(ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NLA_OT_select_border(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_borderselect_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !17
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5) #8
  ret void
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_borderselect_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.rcti, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.16) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  call fastcc void @deselect_nla_strips(ptr noundef nonnull %3, i16 noundef signext 1, i16 noundef signext 4) #10
  br label %13

13:                                               ; preds = %12, %7
  call void @WM_operator_properties_border_to_rcti(ptr noundef nonnull %1, ptr noundef nonnull %4) #8
  %14 = load ptr, ptr %8, align 8, !tbaa !20
  %15 = call i32 @RNA_int_get(ptr noundef %14, ptr noundef nonnull @.str.21) #8
  %16 = icmp eq i32 %15, 3
  %17 = select i1 %16, i16 2, i16 4
  %18 = load ptr, ptr %8, align 8, !tbaa !20
  %19 = call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.9) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %13
  %22 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %4) #10
  %23 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %4) #10
  %24 = icmp slt i32 %22, %23
  %25 = select i1 %24, i16 2, i16 1
  br label %26

26:                                               ; preds = %13, %21
  %27 = phi i16 [ %25, %21 ], [ 0, %13 ]
  %28 = load i64, ptr %4, align 8
  %29 = getelementptr inbounds { i64, i64 }, ptr %4, i64 0, i32 1
  %30 = load i64, ptr %29, align 8
  call fastcc void @borderselect_nla_strips(ptr noundef nonnull %3, i64 %28, i64 %30, i16 noundef signext %27, i16 noundef signext %17) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665158, ptr noundef null) #8
  br label %31

31:                                               ; preds = %2, %26
  %32 = phi i32 [ 4, %26 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %32
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NLA_OT_select_leftright(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @nlaedit_select_leftright_invoke, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_select_leftright_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_nla_active, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.14, ptr noundef nonnull @prop_nlaedit_leftright_select_types, i32 noundef -1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.5) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !19
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268435456) #8
  %12 = load ptr, ptr %8, align 8, !tbaa !18
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5) #8
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_select_leftright_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.14) #8
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %3
  %11 = and i32 %7, 65535
  %12 = icmp eq i32 %11, 65535
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !27
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !28
  %21 = sitofp i32 %20 to float
  %22 = call float @UI_view2d_region_to_view_x(ptr noundef nonnull %18, float noundef %21) #8
  %23 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 22, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !30
  %25 = sitofp i32 %24 to float
  %26 = fcmp olt float %22, %25
  %27 = load ptr, ptr %5, align 8, !tbaa !20
  %28 = select i1 %26, i32 1, i32 2
  call void @RNA_enum_set(ptr noundef %27, ptr noundef nonnull @.str.14, i32 noundef %28) #8
  br label %29

29:                                               ; preds = %13, %10
  %30 = call i32 @nlaedit_select_leftright_exec(ptr noundef %0, ptr noundef nonnull %1) #10, !range !52
  br label %31

31:                                               ; preds = %3, %29
  %32 = phi i32 [ %30, %29 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #9
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_select_leftright_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.14) #8
  %7 = trunc i32 %6 to i16
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !tbaa !20
  %12 = call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.16) #8
  %13 = and i32 %6, 65535
  %14 = icmp eq i32 %13, 65535
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = icmp eq i32 %12, 0
  %17 = select i1 %16, i16 1, i16 8
  call fastcc void @nlaedit_select_leftright(ptr noundef %0, ptr noundef nonnull %3, i16 noundef signext %7, i16 noundef signext %17) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239992838, ptr noundef null) #8
  br label %18

18:                                               ; preds = %10, %2, %15
  %19 = phi i32 [ 4, %15 ], [ 2, %2 ], [ 2, %10 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %19
}

; Function Attrs: optsize
declare i32 @ED_operator_nla_active(ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NLA_OT_click_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @nlaedit_clickselect_invoke, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_nla_active, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5) #8
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_clickselect_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #9
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.16) #8
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i16 1, i16 8
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call fastcc void @mouse_nla_strips(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %13, i16 noundef signext %12) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665158, ptr noundef null) #8
  br label %14

14:                                               ; preds = %3, %7
  %15 = phi i32 [ 12, %7 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #9
  ret i32 %15
}

; Function Attrs: optsize
declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @deselect_nla_strips(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr %0, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !54
  %8 = sext i16 %7 to i32
  %9 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %5, i32 noundef %8) #8
  %10 = icmp eq i16 %1, 1
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = icmp eq i16 %2, 4
  br label %13

13:                                               ; preds = %11, %30
  %14 = phi ptr [ %15, %30 ], [ %4, %11 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.NlaTrack, ptr %19, i64 0, i32 2
  br label %21

21:                                               ; preds = %25, %17
  %22 = phi ptr [ %20, %17 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.NlaStrip, ptr %23, i64 0, i32 23
  %27 = load i32, ptr %26, align 8, !tbaa !58
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %21, label %31, !llvm.loop !60

30:                                               ; preds = %21
  br i1 %12, label %31, label %13

31:                                               ; preds = %30, %13, %25, %3
  %32 = phi i16 [ %2, %3 ], [ 4, %25 ], [ %2, %13 ], [ 4, %30 ]
  %33 = call fastcc signext i16 @selmodes_to_flagmodes(i16 noundef signext %32) #10, !range !62
  %34 = load ptr, ptr %4, align 8, !tbaa !55
  %35 = icmp eq ptr %34, null
  br i1 %35, label %65, label %36

36:                                               ; preds = %31
  %37 = icmp eq i16 %1, 2
  br label %41

38:                                               ; preds = %59, %41
  %39 = load ptr, ptr %42, align 8, !tbaa !55
  %40 = icmp eq ptr %39, null
  br i1 %40, label %65, label %41, !llvm.loop !63

41:                                               ; preds = %36, %38
  %42 = phi ptr [ %34, %36 ], [ %39, %38 ]
  %43 = getelementptr inbounds %struct.bAnimListElem, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = getelementptr inbounds %struct.NlaTrack, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !55
  %47 = icmp eq ptr %46, null
  br i1 %47, label %38, label %48

48:                                               ; preds = %41, %59
  %49 = phi ptr [ %63, %59 ], [ %46, %41 ]
  %50 = getelementptr inbounds %struct.NlaStrip, ptr %49, i64 0, i32 23
  %51 = load i32, ptr %50, align 8, !tbaa !58
  br i1 %37, label %59, label %52

52:                                               ; preds = %48
  switch i16 %33, label %57 [
    i16 2, label %53
    i16 1, label %55
  ]

53:                                               ; preds = %52
  %54 = xor i32 %51, 2
  br label %59

55:                                               ; preds = %52
  %56 = or i32 %51, 2
  br label %59

57:                                               ; preds = %52
  %58 = and i32 %51, -3
  br label %59

59:                                               ; preds = %48, %53, %57, %55
  %60 = phi i32 [ %54, %53 ], [ %58, %57 ], [ %56, %55 ], [ %51, %48 ]
  %61 = getelementptr inbounds %struct.NlaStrip, ptr %49, i64 0, i32 23
  %62 = and i32 %60, -2
  store i32 %62, ptr %61, align 8, !tbaa !58
  %63 = load ptr, ptr %49, align 8, !tbaa !55
  %64 = icmp eq ptr %63, null
  br i1 %64, label %38, label %48, !llvm.loop !64

65:                                               ; preds = %38, %31
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef signext i16 @selmodes_to_flagmodes(i16 noundef signext %0) unnamed_addr #4 {
  %2 = icmp eq i16 %0, 8
  %3 = select i1 %2, i16 2, i16 1
  %4 = icmp eq i16 %0, 4
  %5 = select i1 %4, i16 0, i16 %3
  ret i16 %5
}

; Function Attrs: optsize
declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !65
  %4 = load i32, ptr %0, align 4, !tbaa !66
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !67
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !68
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @borderselect_nla_strips(ptr noundef %0, i64 %1, i64 %2, i16 noundef signext %3, i16 noundef signext %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.rctf, align 4
  %8 = trunc i64 %1 to i32
  %9 = lshr i64 %1, 32
  %10 = trunc i64 %9 to i32
  %11 = trunc i64 %2 to i32
  %12 = lshr i64 %2, 32
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !27
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  %19 = sitofp i32 %8 to float
  %20 = add nsw i32 %11, 2
  %21 = sitofp i32 %20 to float
  %22 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 2
  call void @UI_view2d_region_to_view(ptr noundef nonnull %18, float noundef %19, float noundef %21, ptr noundef nonnull %7, ptr noundef nonnull %22) #8
  %23 = sitofp i32 %10 to float
  %24 = add nsw i32 %13, -2
  %25 = sitofp i32 %24 to float
  %26 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 1
  %27 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 3
  call void @UI_view2d_region_to_view(ptr noundef nonnull %18, float noundef %23, float noundef %25, ptr noundef nonnull %26, ptr noundef nonnull %27) #8
  %28 = load ptr, ptr %0, align 8, !tbaa !53
  %29 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %30 = load i16, ptr %29, align 8, !tbaa !54
  %31 = sext i16 %30 to i32
  %32 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 11, ptr noundef %28, i32 noundef %31) #8
  %33 = call fastcc signext i16 @selmodes_to_flagmodes(i16 noundef signext %4) #10, !range !62
  %34 = load ptr, ptr %6, align 8, !tbaa !55
  %35 = icmp eq ptr %34, null
  br i1 %35, label %105, label %36

36:                                               ; preds = %5
  %37 = icmp eq ptr %15, null
  %38 = getelementptr inbounds %struct.SpaceNla, ptr %15, i64 0, i32 7
  %39 = icmp eq i16 %3, 1
  %40 = icmp eq i16 %3, 2
  br label %41

41:                                               ; preds = %36, %102
  %42 = phi ptr [ %34, %36 ], [ %103, %102 ]
  %43 = phi float [ 0.000000e+00, %36 ], [ %62, %102 ]
  br i1 %37, label %44, label %46

44:                                               ; preds = %41
  %45 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !70
  br label %54

46:                                               ; preds = %41
  %47 = load i16, ptr %38, align 2, !tbaa !74
  %48 = and i16 %47, 32
  %49 = icmp eq i16 %48, 0
  %50 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !70
  br i1 %49, label %54, label %51

51:                                               ; preds = %46
  %52 = sitofp i16 %50 to float
  %53 = fmul float %52, 0x3FE99999A0000000
  br label %58

54:                                               ; preds = %44, %46
  %55 = phi i16 [ %45, %44 ], [ %50, %46 ]
  %56 = sitofp i16 %55 to float
  %57 = fmul float %56, 0x3FF3333340000000
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi float [ %56, %54 ], [ %52, %51 ]
  %60 = phi float [ %57, %54 ], [ %53, %51 ]
  %61 = call float @llvm.fmuladd.f32(float %59, float 0x3FB99999A0000000, float %60)
  %62 = fsub float %43, %61
  br i1 %39, label %69, label %63

63:                                               ; preds = %58
  %64 = load float, ptr %22, align 4, !tbaa !77
  %65 = fcmp olt float %43, %64
  %66 = load float, ptr %27, align 4
  %67 = fcmp ogt float %62, %66
  %68 = select i1 %65, i1 true, i1 %67
  br i1 %68, label %102, label %69

69:                                               ; preds = %63, %58
  %70 = getelementptr inbounds %struct.bAnimListElem, ptr %42, i64 0, i32 3
  %71 = load i32, ptr %70, align 8, !tbaa !78
  %72 = icmp eq i32 %71, 30
  br i1 %72, label %73, label %102

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.bAnimListElem, ptr %42, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !56
  %76 = getelementptr inbounds %struct.NlaTrack, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !55
  %78 = icmp eq ptr %77, null
  br i1 %78, label %102, label %79

79:                                               ; preds = %73, %99
  %80 = phi ptr [ %100, %99 ], [ %77, %73 ]
  br i1 %40, label %86, label %81

81:                                               ; preds = %79
  %82 = load float, ptr %7, align 4, !tbaa !79
  %83 = load float, ptr %26, align 4, !tbaa !80
  %84 = call zeroext i8 @BKE_nlastrip_within_bounds(ptr noundef nonnull %80, float noundef %82, float noundef %83) #8
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %81, %79
  %87 = getelementptr inbounds %struct.NlaStrip, ptr %80, i64 0, i32 23
  %88 = load i32, ptr %87, align 8, !tbaa !58
  switch i16 %33, label %93 [
    i16 2, label %89
    i16 1, label %91
  ]

89:                                               ; preds = %86
  %90 = xor i32 %88, 2
  br label %95

91:                                               ; preds = %86
  %92 = or i32 %88, 2
  br label %95

93:                                               ; preds = %86
  %94 = and i32 %88, -3
  br label %95

95:                                               ; preds = %91, %93, %89
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ], [ %90, %89 ]
  %97 = getelementptr inbounds %struct.NlaStrip, ptr %80, i64 0, i32 23
  %98 = and i32 %96, -2
  store i32 %98, ptr %97, align 8, !tbaa !58
  br label %99

99:                                               ; preds = %81, %95
  %100 = load ptr, ptr %80, align 8, !tbaa !55
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %79, !llvm.loop !81

102:                                              ; preds = %99, %73, %69, %63
  %103 = load ptr, ptr %42, align 8, !tbaa !55
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %41, !llvm.loop !82

105:                                              ; preds = %102, %5
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare zeroext i8 @BKE_nlastrip_within_bounds(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @UI_view2d_region_to_view_x(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nlaedit_select_leftright(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 15
  %9 = load i16, ptr %8, align 4, !tbaa !83
  %10 = and i16 %9, 4
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.22, i16 noundef signext 6, ptr noundef null) #8
  br label %14

14:                                               ; preds = %12, %4
  %15 = icmp eq i16 %3, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call fastcc void @deselect_nla_strips(ptr noundef nonnull %1, i16 noundef signext 0, i16 noundef signext 4) #10
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i16 [ 2, %16 ], [ %3, %14 ]
  %19 = icmp eq i16 %2, 1
  %20 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !30
  %22 = sitofp i32 %21 to float
  %23 = fadd float %22, 0x3FB99999A0000000
  %24 = fadd float %22, 0xBFB99999A0000000
  %25 = select i1 %19, float -3.000000e+05, float %24
  %26 = select i1 %19, float %23, float 3.000000e+05
  %27 = tail call fastcc signext i16 @selmodes_to_flagmodes(i16 noundef signext %18) #10, !range !62
  %28 = load ptr, ptr %1, align 8, !tbaa !53
  %29 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 1
  %30 = load i16, ptr %29, align 8, !tbaa !54
  %31 = sext i16 %30 to i32
  %32 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 3, ptr noundef %28, i32 noundef %31) #8
  %33 = load ptr, ptr %5, align 8, !tbaa !55
  %34 = icmp eq ptr %33, null
  br i1 %34, label %63, label %38

35:                                               ; preds = %60, %38
  %36 = load ptr, ptr %39, align 8, !tbaa !55
  %37 = icmp eq ptr %36, null
  br i1 %37, label %63, label %38, !llvm.loop !84

38:                                               ; preds = %17, %35
  %39 = phi ptr [ %36, %35 ], [ %33, %17 ]
  %40 = getelementptr inbounds %struct.bAnimListElem, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  %42 = getelementptr inbounds %struct.NlaTrack, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = icmp eq ptr %43, null
  br i1 %44, label %35, label %45

45:                                               ; preds = %38, %60
  %46 = phi ptr [ %61, %60 ], [ %43, %38 ]
  %47 = call zeroext i8 @BKE_nlastrip_within_bounds(ptr noundef nonnull %46, float noundef %25, float noundef %26) #8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.NlaStrip, ptr %46, i64 0, i32 23
  %51 = load i32, ptr %50, align 8, !tbaa !58
  switch i16 %27, label %56 [
    i16 2, label %52
    i16 1, label %54
  ]

52:                                               ; preds = %49
  %53 = xor i32 %51, 2
  br label %58

54:                                               ; preds = %49
  %55 = or i32 %51, 2
  br label %58

56:                                               ; preds = %49
  %57 = and i32 %51, -3
  br label %58

58:                                               ; preds = %52, %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ], [ %53, %52 ]
  store i32 %59, ptr %50, align 8, !tbaa !58
  br label %60

60:                                               ; preds = %58, %45
  %61 = load ptr, ptr %46, align 8, !tbaa !55
  %62 = icmp eq ptr %61, null
  br i1 %62, label %35, label %45, !llvm.loop !85

63:                                               ; preds = %35, %17
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  ret void
}

; Function Attrs: optsize
declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mouse_nla_strips(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef signext %3) unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !27
  %13 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  %16 = load i32, ptr %2, align 4, !tbaa !28
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds i32, ptr %2, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !28
  %20 = sitofp i32 %19 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %13, float noundef %17, float noundef %20, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  %21 = icmp eq ptr %10, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !70
  %24 = sitofp i16 %23 to float
  %25 = fmul float %24, 0x3FF3333340000000
  %26 = call float @llvm.fmuladd.f32(float %24, float 0x3FB99999A0000000, float %25)
  br label %47

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.SpaceNla, ptr %10, i64 0, i32 7
  %29 = load i16, ptr %28, align 2, !tbaa !74
  %30 = and i16 %29, 32
  %31 = icmp eq i16 %30, 0
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !70
  %33 = sitofp i16 %32 to float
  br i1 %31, label %37, label %34

34:                                               ; preds = %27
  %35 = fmul float %33, 0x3FE99999A0000000
  %36 = call float @llvm.fmuladd.f32(float %33, float 0x3FB99999A0000000, float %35)
  br label %44

37:                                               ; preds = %27
  %38 = fmul float %33, 0x3FF3333340000000
  %39 = call float @llvm.fmuladd.f32(float %33, float 0x3FB99999A0000000, float %38)
  %40 = getelementptr inbounds %struct.SpaceNla, ptr %10, i64 0, i32 7
  %41 = load i16, ptr %40, align 2, !tbaa !74
  %42 = and i16 %41, 32
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %34, %37
  %45 = phi float [ %36, %34 ], [ %39, %37 ]
  %46 = fmul float %33, 0x3FD99999A0000000
  br label %51

47:                                               ; preds = %22, %37
  %48 = phi float [ %39, %37 ], [ %26, %22 ]
  %49 = phi float [ %33, %37 ], [ %24, %22 ]
  %50 = fmul float %49, 0x3FE3333340000000
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi float [ %45, %44 ], [ %48, %47 ]
  %53 = phi float [ %46, %44 ], [ %50, %47 ]
  %54 = load float, ptr %7, align 4, !tbaa !86
  %55 = load float, ptr %8, align 4, !tbaa !86
  call void @UI_view2d_listview_view_to_cell(ptr noundef nonnull %13, float noundef 0.000000e+00, float noundef %52, float noundef 0.000000e+00, float noundef %53, float noundef %54, float noundef %55, ptr noundef null, ptr noundef nonnull %6) #8
  %56 = load i32, ptr %2, align 4, !tbaa !28
  %57 = add nsw i32 %56, -7
  %58 = sitofp i32 %57 to float
  %59 = call float @UI_view2d_region_to_view_x(ptr noundef nonnull %13, float noundef %58) #8
  %60 = load i32, ptr %2, align 4, !tbaa !28
  %61 = add nsw i32 %60, 7
  %62 = sitofp i32 %61 to float
  %63 = call float @UI_view2d_region_to_view_x(ptr noundef nonnull %13, float noundef %62) #8
  %64 = load ptr, ptr %1, align 8, !tbaa !53
  %65 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 1
  %66 = load i16, ptr %65, align 8, !tbaa !54
  %67 = sext i16 %66 to i32
  %68 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 11, ptr noundef %64, i32 noundef %67) #8
  %69 = load i32, ptr %6, align 4, !tbaa !28
  %70 = call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %69) #8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %51
  %73 = load i32, ptr %6, align 4, !tbaa !28
  %74 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %73) #10
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #8
  br label %138

75:                                               ; preds = %51
  %76 = getelementptr inbounds %struct.bAnimListElem, ptr %70, i64 0, i32 3
  %77 = load i32, ptr %76, align 8, !tbaa !78
  %78 = icmp eq i32 %77, 30
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.bAnimListElem, ptr %70, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !56
  %82 = getelementptr inbounds %struct.NlaTrack, ptr %81, i64 0, i32 2
  br label %83

83:                                               ; preds = %87, %79
  %84 = phi ptr [ %82, %79 ], [ %85, %87 ]
  %85 = load ptr, ptr %84, align 8, !tbaa !55
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = call zeroext i8 @BKE_nlastrip_within_bounds(ptr noundef nonnull %85, float noundef %59, float noundef %63) #8
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %83, label %90, !llvm.loop !87

90:                                               ; preds = %83, %87, %75
  %91 = phi ptr [ null, %75 ], [ null, %83 ], [ %85, %87 ]
  call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef nonnull %70) #8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #8
  %92 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 15
  %93 = load i16, ptr %92, align 4, !tbaa !83
  %94 = and i16 %93, 4
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %90
  %97 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.22, i16 noundef signext 6, ptr noundef null) #8
  br label %98

98:                                               ; preds = %96, %90
  %99 = icmp eq i16 %3, 1
  br i1 %99, label %100, label %104

100:                                              ; preds = %98
  call fastcc void @deselect_nla_strips(ptr noundef nonnull %1, i16 noundef signext 0, i16 noundef signext 4) #10
  %101 = load ptr, ptr %1, align 8, !tbaa !53
  %102 = load i16, ptr %65, align 8, !tbaa !54
  %103 = sext i16 %102 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %1, ptr noundef %101, i32 noundef %103, i8 noundef zeroext 0, i32 noundef 0) #8
  br label %104

104:                                              ; preds = %98, %100
  %105 = phi i16 [ 2, %100 ], [ %3, %98 ]
  %106 = icmp eq ptr %91, null
  br i1 %106, label %136, label %107

107:                                              ; preds = %104
  %108 = call fastcc signext i16 @selmodes_to_flagmodes(i16 noundef signext %105) #10, !range !62
  %109 = getelementptr inbounds %struct.NlaStrip, ptr %91, i64 0, i32 23
  %110 = load i32, ptr %109, align 8, !tbaa !58
  switch i16 %108, label %115 [
    i16 2, label %111
    i16 1, label %113
  ]

111:                                              ; preds = %107
  %112 = xor i32 %110, 2
  br label %117

113:                                              ; preds = %107
  %114 = or i32 %110, 2
  br label %117

115:                                              ; preds = %107
  %116 = and i32 %110, -3
  br label %117

117:                                              ; preds = %113, %115, %111
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ], [ %112, %111 ]
  store i32 %118, ptr %109, align 8, !tbaa !58
  call fastcc void @deselect_nla_strips(ptr noundef nonnull %1, i16 noundef signext 2, i16 noundef signext 0) #10
  %119 = getelementptr inbounds %struct.NlaStrip, ptr %91, i64 0, i32 23
  %120 = load i32, ptr %119, align 8, !tbaa !58
  %121 = and i32 %120, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %136, label %123

123:                                              ; preds = %117
  %124 = or i32 %120, 1
  store i32 %124, ptr %119, align 8, !tbaa !58
  %125 = load i32, ptr %76, align 8, !tbaa !78
  %126 = icmp eq i32 %125, 30
  br i1 %126, label %127, label %136

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.bAnimListElem, ptr %70, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !56
  %130 = getelementptr inbounds %struct.NlaTrack, ptr %129, i64 0, i32 3
  %131 = load i32, ptr %130, align 8, !tbaa !88
  %132 = or i32 %131, 2
  store i32 %132, ptr %130, align 8, !tbaa !88
  %133 = load ptr, ptr %1, align 8, !tbaa !53
  %134 = load i16, ptr %65, align 8, !tbaa !54
  %135 = sext i16 %134 to i32
  call void @ANIM_set_active_channel(ptr noundef nonnull %1, ptr noundef %133, i32 noundef %135, i32 noundef 11, ptr noundef %129, i32 noundef 30) #8
  br label %136

136:                                              ; preds = %117, %127, %123, %104
  %137 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %137(ptr noundef nonnull %70) #8
  br label %138

138:                                              ; preds = %136, %72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_listview_view_to_cell(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ANIM_deselect_anim_channels(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ANIM_set_active_channel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!25 = !{!26, !7, i64 48}
!26 = !{!"bAnimContext", !7, i64 0, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!27 = !{!26, !7, i64 32}
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !8, i64 0}
!30 = !{!31, !29, i64 680}
!31 = !{!"Scene", !32, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !29, i64 232, !29, i64 236, !29, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !33, i64 280, !43, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !29, i64 4380, !10, i64 4384, !44, i64 4400, !45, i64 4416, !48, i64 4600, !7, i64 4608, !49, i64 4616, !7, i64 4640, !50, i64 4648, !50, i64 4656, !36, i64 4664, !37, i64 4824, !51, i64 4888, !7, i64 4952}
!32 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !29, i64 100, !29, i64 104, !29, i64 108, !7, i64 112}
!33 = !{!"RenderData", !34, i64 0, !7, i64 248, !7, i64 256, !38, i64 264, !39, i64 328, !29, i64 400, !29, i64 404, !29, i64 408, !35, i64 412, !29, i64 416, !29, i64 420, !29, i64 424, !29, i64 428, !12, i64 432, !12, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !29, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !29, i64 484, !29, i64 488, !12, i64 492, !12, i64 494, !29, i64 496, !29, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !29, i64 516, !29, i64 520, !29, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !40, i64 544, !40, i64 560, !41, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !29, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !35, i64 660, !35, i64 664, !12, i64 668, !12, i64 670, !35, i64 672, !35, i64 676, !8, i64 680, !29, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !29, i64 2520, !12, i64 2524, !12, i64 2526, !35, i64 2528, !35, i64 2532, !12, i64 2536, !12, i64 2538, !35, i64 2540, !12, i64 2544, !12, i64 2546, !29, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !35, i64 2560, !35, i64 2564, !7, i64 2568, !29, i64 2576, !35, i64 2580, !8, i64 2584, !42, i64 2616, !29, i64 3976, !29, i64 3980}
!34 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !35, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !36, i64 24, !37, i64 184}
!35 = !{!"float", !8, i64 0}
!36 = !{!"ColorManagedViewSettings", !29, i64 0, !29, i64 4, !8, i64 8, !8, i64 72, !35, i64 136, !35, i64 140, !7, i64 144, !7, i64 152}
!37 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!38 = !{!"QuicktimeCodecSettings", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !29, i64 24, !29, i64 28, !29, i64 32, !29, i64 36, !29, i64 40, !29, i64 44, !12, i64 48, !12, i64 50, !29, i64 52, !29, i64 56, !29, i64 60}
!39 = !{!"FFMpegCodecData", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !29, i64 24, !29, i64 28, !35, i64 32, !29, i64 36, !29, i64 40, !29, i64 44, !29, i64 48, !29, i64 52, !29, i64 56, !29, i64 60, !7, i64 64}
!40 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!41 = !{!"rcti", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12}
!42 = !{!"BakeData", !34, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !35, i64 1280, !35, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!43 = !{!"AudioData", !29, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !29, i64 16, !12, i64 20, !12, i64 22, !35, i64 24, !35, i64 28}
!44 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!45 = !{!"GameData", !44, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !46, i64 40, !12, i64 64, !12, i64 66, !35, i64 68, !47, i64 72, !35, i64 128, !35, i64 132, !29, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!46 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !35, i64 8, !35, i64 12, !7, i64 16}
!47 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !29, i64 40, !35, i64 44, !35, i64 48, !12, i64 52, !12, i64 54}
!48 = !{!"UnitSettings", !35, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!49 = !{!"PhysicsSettings", !8, i64 0, !29, i64 12, !29, i64 16, !29, i64 20}
!50 = !{!"long", !8, i64 0}
!51 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!52 = !{i32 2, i32 5}
!53 = !{!26, !7, i64 0}
!54 = !{!26, !12, i64 8}
!55 = !{!7, !7, i64 0}
!56 = !{!57, !7, i64 16}
!57 = !{!"bAnimListElem", !7, i64 0, !7, i64 8, !7, i64 16, !29, i64 24, !29, i64 28, !29, i64 32, !12, i64 36, !12, i64 38, !7, i64 40, !7, i64 48, !7, i64 56}
!58 = !{!59, !29, i64 200}
!59 = !{!"NlaStrip", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 32, !7, i64 40, !10, i64 48, !10, i64 64, !8, i64 80, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !12, i64 184, !12, i64 186, !12, i64 188, !12, i64 190, !7, i64 192, !29, i64 200, !29, i64 204}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{i16 0, i16 3}
!63 = distinct !{!63, !61}
!64 = distinct !{!64, !61}
!65 = !{!41, !29, i64 4}
!66 = !{!41, !29, i64 0}
!67 = !{!41, !29, i64 12}
!68 = !{!41, !29, i64 8}
!69 = !{!26, !7, i64 24}
!70 = !{!71, !12, i64 8948}
!71 = !{!"UserDef", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !29, i64 8468, !12, i64 8472, !12, i64 8474, !12, i64 8476, !12, i64 8478, !12, i64 8480, !12, i64 8482, !29, i64 8484, !29, i64 8488, !29, i64 8492, !12, i64 8496, !12, i64 8498, !29, i64 8500, !29, i64 8504, !29, i64 8508, !29, i64 8512, !29, i64 8516, !29, i64 8520, !29, i64 8524, !12, i64 8528, !12, i64 8530, !12, i64 8532, !12, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !12, i64 8712, !12, i64 8714, !12, i64 8716, !12, i64 8718, !12, i64 8720, !12, i64 8722, !12, i64 8724, !12, i64 8726, !8, i64 8728, !12, i64 8896, !12, i64 8898, !12, i64 8900, !12, i64 8902, !12, i64 8904, !12, i64 8906, !12, i64 8908, !12, i64 8910, !29, i64 8912, !29, i64 8916, !12, i64 8920, !12, i64 8922, !12, i64 8924, !12, i64 8926, !12, i64 8928, !12, i64 8930, !12, i64 8932, !12, i64 8934, !12, i64 8936, !12, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !12, i64 8944, !12, i64 8946, !12, i64 8948, !12, i64 8950, !12, i64 8952, !12, i64 8954, !35, i64 8956, !35, i64 8960, !29, i64 8964, !12, i64 8968, !12, i64 8970, !35, i64 8972, !12, i64 8976, !12, i64 8978, !12, i64 8980, !12, i64 8982, !72, i64 8984, !8, i64 9760, !8, i64 9772, !12, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !29, i64 10896, !29, i64 10900, !35, i64 10904, !35, i64 10908, !29, i64 10912, !12, i64 10916, !12, i64 10918, !12, i64 10920, !12, i64 10922, !12, i64 10924, !12, i64 10926, !73, i64 10928}
!72 = !{!"ColorBand", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!73 = !{!"WalkNavigation", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !12, i64 24, !8, i64 26}
!74 = !{!75, !12, i64 58}
!75 = !{!"SpaceNla", !7, i64 0, !7, i64 8, !10, i64 16, !29, i64 32, !35, i64 36, !8, i64 40, !12, i64 56, !12, i64 58, !29, i64 60, !7, i64 64, !76, i64 72}
!76 = !{!"View2D", !40, i64 0, !40, i64 16, !41, i64 32, !41, i64 48, !41, i64 64, !8, i64 80, !8, i64 88, !35, i64 96, !35, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !29, i64 136, !29, i64 140, !7, i64 144, !7, i64 152}
!77 = !{!40, !35, i64 8}
!78 = !{!57, !29, i64 24}
!79 = !{!40, !35, i64 0}
!80 = !{!40, !35, i64 4}
!81 = distinct !{!81, !61}
!82 = distinct !{!82, !61}
!83 = !{!31, !12, i64 244}
!84 = distinct !{!84, !61}
!85 = distinct !{!85, !61}
!86 = !{!35, !35, i64 0}
!87 = distinct !{!87, !61}
!88 = !{!89, !29, i64 32}
!89 = !{!"NlaTrack", !7, i64 0, !7, i64 8, !10, i64 16, !29, i64 32, !29, i64 36, !8, i64 40}
