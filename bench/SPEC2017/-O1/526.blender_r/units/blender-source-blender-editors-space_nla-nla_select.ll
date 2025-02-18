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
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
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

; Function Attrs: nounwind uwtable
define dso_local void @NLA_OT_select_all_toggle(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_deselectall_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #6
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !48
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_deselectall_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #6
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #6
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.3) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  call fastcc void @deselect_nla_strips(ptr noundef nonnull %3, i16 noundef signext 0, i16 noundef signext 8)
  br label %13

12:                                               ; preds = %6
  call fastcc void @deselect_nla_strips(ptr noundef nonnull %3, i16 noundef signext 1, i16 noundef signext 2)
  br label %13

13:                                               ; preds = %12, %11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665158, ptr noundef null) #6
  br label %14

14:                                               ; preds = %2, %13
  %15 = phi i32 [ 4, %13 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  ret i32 %15
}

declare i32 @nlaop_poll_tweakmode_off(ptr noundef) #1

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @NLA_OT_select_border(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_borderselect_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !46
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #6
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5) #6
  ret void
}

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_borderselect_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.rctf, align 4
  %5 = alloca %struct.bAnimContext, align 8
  %6 = alloca %struct.rcti, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %7 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %5) #6
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %124, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.16) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  call fastcc void @deselect_nla_strips(ptr noundef nonnull %5, i16 noundef signext 1, i16 noundef signext 4)
  br label %15

15:                                               ; preds = %14, %9
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %6) #6
  %16 = load ptr, ptr %10, align 8, !tbaa !49
  %17 = call i32 @RNA_int_get(ptr noundef %16, ptr noundef nonnull @.str.21) #6
  %18 = icmp eq i32 %17, 3
  %19 = load ptr, ptr %10, align 8, !tbaa !49
  %20 = call i32 @RNA_boolean_get(ptr noundef %19, ptr noundef nonnull @.str.9) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !54
  %25 = load i32, ptr %6, align 8, !tbaa !57
  %26 = sub nsw i32 %24, %25
  %27 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !58
  %29 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !59
  %31 = sub nsw i32 %28, %30
  %32 = icmp slt i32 %26, %31
  %33 = select i1 %32, i16 2, i16 1
  br label %34

34:                                               ; preds = %15, %22
  %35 = phi i16 [ %33, %22 ], [ 0, %15 ]
  %36 = load i64, ptr %6, align 8
  %37 = getelementptr inbounds { i64, i64 }, ptr %6, i64 0, i32 1
  %38 = load i64, ptr %37, align 8
  %39 = trunc i64 %36 to i32
  %40 = lshr i64 %36, 32
  %41 = trunc i64 %40 to i32
  %42 = trunc i64 %38 to i32
  %43 = lshr i64 %38, 32
  %44 = trunc i64 %43 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %45 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !60
  %47 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = getelementptr inbounds %struct.ARegion, ptr %48, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %50 = sitofp i32 %39 to float
  %51 = add nsw i32 %42, 2
  %52 = sitofp i32 %51 to float
  %53 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  call void @UI_view2d_region_to_view(ptr noundef nonnull %49, float noundef %50, float noundef %52, ptr noundef nonnull %4, ptr noundef nonnull %53) #6
  %54 = sitofp i32 %41 to float
  %55 = add nsw i32 %44, -2
  %56 = sitofp i32 %55 to float
  %57 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %58 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  call void @UI_view2d_region_to_view(ptr noundef nonnull %49, float noundef %54, float noundef %56, ptr noundef nonnull %57, ptr noundef nonnull %58) #6
  %59 = load ptr, ptr %5, align 8, !tbaa !63
  %60 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  %61 = load i16, ptr %60, align 8, !tbaa !64
  %62 = sext i16 %61 to i32
  %63 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 11, ptr noundef %59, i32 noundef %62) #6
  %64 = load ptr, ptr %3, align 8, !tbaa !65
  %65 = icmp eq ptr %64, null
  br i1 %65, label %123, label %66

66:                                               ; preds = %34
  %67 = icmp eq ptr %46, null
  %68 = getelementptr inbounds %struct.SpaceNla, ptr %46, i64 0, i32 7
  %69 = icmp eq i16 %35, 1
  %70 = icmp eq i16 %35, 2
  %71 = select i1 %18, i32 2, i32 0
  br label %72

72:                                               ; preds = %66, %120
  %73 = phi ptr [ %64, %66 ], [ %121, %120 ]
  %74 = phi float [ 0.000000e+00, %66 ], [ %87, %120 ]
  br i1 %67, label %79, label %75

75:                                               ; preds = %72
  %76 = load i16, ptr %68, align 2, !tbaa !66
  %77 = and i16 %76, 32
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %72
  br label %80

80:                                               ; preds = %75, %79
  %81 = phi float [ 0x3FF3333340000000, %79 ], [ 0x3FE99999A0000000, %75 ]
  %82 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !71
  %83 = sitofp i16 %82 to float
  %84 = fmul float %81, %83
  %85 = sitofp i16 %82 to float
  %86 = call float @llvm.fmuladd.f32(float %85, float 0x3FB99999A0000000, float %84)
  %87 = fsub float %74, %86
  br i1 %69, label %94, label %88

88:                                               ; preds = %80
  %89 = load float, ptr %53, align 4, !tbaa !75
  %90 = fcmp olt float %74, %89
  %91 = load float, ptr %58, align 4
  %92 = fcmp ogt float %87, %91
  %93 = select i1 %90, i1 true, i1 %92
  br i1 %93, label %120, label %94

94:                                               ; preds = %88, %80
  %95 = getelementptr inbounds %struct.bAnimListElem, ptr %73, i64 0, i32 3
  %96 = load i32, ptr %95, align 8, !tbaa !76
  %97 = icmp eq i32 %96, 30
  br i1 %97, label %98, label %120

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.bAnimListElem, ptr %73, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !78
  %101 = getelementptr inbounds %struct.NlaTrack, ptr %100, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !65
  %103 = icmp eq ptr %102, null
  br i1 %103, label %120, label %104

104:                                              ; preds = %98, %117
  %105 = phi ptr [ %118, %117 ], [ %102, %98 ]
  br i1 %70, label %111, label %106

106:                                              ; preds = %104
  %107 = load float, ptr %4, align 4, !tbaa !79
  %108 = load float, ptr %57, align 4, !tbaa !80
  %109 = call zeroext i8 @BKE_nlastrip_within_bounds(ptr noundef nonnull %105, float noundef %107, float noundef %108) #6
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %106, %104
  %112 = getelementptr inbounds %struct.NlaStrip, ptr %105, i64 0, i32 23
  %113 = load i32, ptr %112, align 8, !tbaa !81
  %114 = and i32 %113, -4
  %115 = getelementptr inbounds %struct.NlaStrip, ptr %105, i64 0, i32 23
  %116 = or disjoint i32 %114, %71
  store i32 %116, ptr %115, align 8, !tbaa !81
  br label %117

117:                                              ; preds = %111, %106
  %118 = load ptr, ptr %105, align 8, !tbaa !65
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %104, !llvm.loop !83

120:                                              ; preds = %117, %98, %94, %88
  %121 = load ptr, ptr %73, align 8, !tbaa !65
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %72, !llvm.loop !86

123:                                              ; preds = %120, %34
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665158, ptr noundef null) #6
  br label %124

124:                                              ; preds = %2, %123
  %125 = phi i32 [ 4, %123 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #6
  ret i32 %125
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #1

declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #1

declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @NLA_OT_select_leftright(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @nlaedit_select_leftright_invoke, ptr %4, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_select_leftright_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_nla_active, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.14, ptr noundef nonnull @prop_nlaedit_leftright_select_types, i32 noundef -1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.5) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !48
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268435456) #6
  %12 = load ptr, ptr %8, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5) #6
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_select_leftright_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.14) #6
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %3
  %11 = and i32 %7, 65535
  %12 = icmp eq i32 %11, 65535
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !88
  %21 = sitofp i32 %20 to float
  %22 = call float @UI_view2d_region_to_view_x(ptr noundef nonnull %18, float noundef %21) #6
  %23 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 22, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !89
  %25 = sitofp i32 %24 to float
  %26 = fcmp olt float %22, %25
  %27 = load ptr, ptr %5, align 8, !tbaa !49
  %28 = select i1 %26, i32 1, i32 2
  call void @RNA_enum_set(ptr noundef %27, ptr noundef nonnull @.str.14, i32 noundef %28) #6
  br label %29

29:                                               ; preds = %13, %10
  %30 = call i32 @nlaedit_select_leftright_exec(ptr noundef %0, ptr noundef %1), !range !108
  br label %31

31:                                               ; preds = %3, %29
  %32 = phi i32 [ %30, %29 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_select_leftright_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.14) #6
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %70, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8, !tbaa !49
  %12 = call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.16) #6
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i16 1, i16 8
  %15 = and i32 %7, 65535
  %16 = icmp eq i32 %15, 65535
  br i1 %16, label %70, label %17

17:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %18 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = getelementptr inbounds %struct.Scene, ptr %19, i64 0, i32 15
  %21 = load i16, ptr %20, align 4, !tbaa !109
  %22 = and i16 %21, 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.22, i16 noundef signext 6, ptr noundef null) #6
  br label %26

26:                                               ; preds = %24, %17
  br i1 %13, label %27, label %28

27:                                               ; preds = %26
  call fastcc void @deselect_nla_strips(ptr noundef nonnull %4, i16 noundef signext 0, i16 noundef signext 4)
  br label %28

28:                                               ; preds = %27, %26
  %29 = phi i16 [ 2, %27 ], [ %14, %26 ]
  %30 = icmp eq i32 %15, 1
  %31 = getelementptr inbounds %struct.Scene, ptr %19, i64 0, i32 22, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !89
  %33 = sitofp i32 %32 to float
  %34 = fadd float %33, 0x3FB99999A0000000
  %35 = fadd float %33, 0xBFB99999A0000000
  %36 = select i1 %30, float -3.000000e+05, float %35
  %37 = select i1 %30, float %34, float 3.000000e+05
  %38 = icmp eq i16 %29, 8
  %39 = load ptr, ptr %4, align 8, !tbaa !63
  %40 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %41 = load i16, ptr %40, align 8, !tbaa !64
  %42 = sext i16 %41 to i32
  %43 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 3, ptr noundef %39, i32 noundef %42) #6
  %44 = load ptr, ptr %3, align 8, !tbaa !65
  %45 = icmp eq ptr %44, null
  br i1 %45, label %69, label %49

46:                                               ; preds = %66, %49
  %47 = load ptr, ptr %50, align 8, !tbaa !65
  %48 = icmp eq ptr %47, null
  br i1 %48, label %69, label %49, !llvm.loop !110

49:                                               ; preds = %28, %46
  %50 = phi ptr [ %47, %46 ], [ %44, %28 ]
  %51 = getelementptr inbounds %struct.bAnimListElem, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !78
  %53 = getelementptr inbounds %struct.NlaTrack, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !65
  %55 = icmp eq ptr %54, null
  br i1 %55, label %46, label %56

56:                                               ; preds = %49, %66
  %57 = phi ptr [ %67, %66 ], [ %54, %49 ]
  %58 = call zeroext i8 @BKE_nlastrip_within_bounds(ptr noundef nonnull %57, float noundef %36, float noundef %37) #6
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.NlaStrip, ptr %57, i64 0, i32 23
  %62 = load i32, ptr %61, align 8, !tbaa !81
  %63 = or i32 %62, 2
  %64 = xor i32 %62, 2
  %65 = select i1 %38, i32 %64, i32 %63
  store i32 %65, ptr %61, align 8, !tbaa !81
  br label %66

66:                                               ; preds = %60, %56
  %67 = load ptr, ptr %57, align 8, !tbaa !65
  %68 = icmp eq ptr %67, null
  br i1 %68, label %46, label %56, !llvm.loop !111

69:                                               ; preds = %46, %28
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239992838, ptr noundef null) #6
  br label %70

70:                                               ; preds = %10, %2, %69
  %71 = phi i32 [ 4, %69 ], [ 2, %2 ], [ 2, %10 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #6
  ret i32 %71
}

declare i32 @ED_operator_nla_active(ptr noundef) #1

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @NLA_OT_click_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @nlaedit_clickselect_invoke, ptr %4, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_nla_active, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5) #6
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_clickselect_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %9) #6
  %10 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %9) #6
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %157, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.16) #6
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i16 1, i16 8
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %9, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.bAnimContext, ptr %9, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 2
  %24 = getelementptr inbounds %struct.bAnimContext, ptr %9, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  %26 = load i32, ptr %18, align 4, !tbaa !88
  %27 = sitofp i32 %26 to float
  %28 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !88
  %30 = sitofp i32 %29 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %23, float noundef %27, float noundef %30, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  %31 = icmp eq ptr %20, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.SpaceNla, ptr %20, i64 0, i32 7
  %34 = load i16, ptr %33, align 2, !tbaa !66
  %35 = and i16 %34, 32
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %12
  br label %38

38:                                               ; preds = %32, %37
  %39 = phi float [ 0x3FF3333340000000, %37 ], [ 0x3FE99999A0000000, %32 ]
  %40 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !71
  %41 = sitofp i16 %40 to float
  %42 = fmul float %39, %41
  %43 = sitofp i16 %40 to float
  %44 = call float @llvm.fmuladd.f32(float %43, float 0x3FB99999A0000000, float %42)
  br i1 %31, label %50, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.SpaceNla, ptr %20, i64 0, i32 7
  %47 = load i16, ptr %46, align 2, !tbaa !66
  %48 = and i16 %47, 32
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %38
  br label %51

51:                                               ; preds = %45, %50
  %52 = phi float [ 0x3FE3333340000000, %50 ], [ 0x3FD99999A0000000, %45 ]
  %53 = fmul float %52, %43
  %54 = load float, ptr %7, align 4, !tbaa !112
  %55 = load float, ptr %8, align 4, !tbaa !112
  call void @UI_view2d_listview_view_to_cell(ptr noundef nonnull %23, float noundef 0.000000e+00, float noundef %44, float noundef 0.000000e+00, float noundef %53, float noundef %54, float noundef %55, ptr noundef null, ptr noundef nonnull %6) #6
  %56 = load i32, ptr %18, align 4, !tbaa !88
  %57 = add nsw i32 %56, -7
  %58 = sitofp i32 %57 to float
  %59 = call float @UI_view2d_region_to_view_x(ptr noundef nonnull %23, float noundef %58) #6
  %60 = load i32, ptr %18, align 4, !tbaa !88
  %61 = add nsw i32 %60, 7
  %62 = sitofp i32 %61 to float
  %63 = call float @UI_view2d_region_to_view_x(ptr noundef nonnull %23, float noundef %62) #6
  %64 = load ptr, ptr %9, align 8, !tbaa !63
  %65 = getelementptr inbounds %struct.bAnimContext, ptr %9, i64 0, i32 1
  %66 = load i16, ptr %65, align 8, !tbaa !64
  %67 = sext i16 %66 to i32
  %68 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %9, ptr noundef nonnull %5, i32 noundef 11, ptr noundef %64, i32 noundef %67) #6
  %69 = load i32, ptr %6, align 4, !tbaa !88
  %70 = call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %69) #6
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %51
  %73 = load i32, ptr %6, align 4, !tbaa !88
  %74 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %73)
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #6
  br label %156

75:                                               ; preds = %51
  %76 = getelementptr inbounds %struct.bAnimListElem, ptr %70, i64 0, i32 3
  %77 = load i32, ptr %76, align 8, !tbaa !76
  %78 = icmp eq i32 %77, 30
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.bAnimListElem, ptr %70, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !78
  %82 = getelementptr inbounds %struct.NlaTrack, ptr %81, i64 0, i32 2
  br label %83

83:                                               ; preds = %87, %79
  %84 = phi ptr [ %82, %79 ], [ %85, %87 ]
  %85 = load ptr, ptr %84, align 8, !tbaa !65
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = call zeroext i8 @BKE_nlastrip_within_bounds(ptr noundef nonnull %85, float noundef %59, float noundef %63) #6
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %83, label %90, !llvm.loop !113

90:                                               ; preds = %87, %83, %75
  %91 = phi ptr [ null, %75 ], [ %85, %83 ], [ %85, %87 ]
  call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef nonnull %70) #6
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #6
  %92 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 15
  %93 = load i16, ptr %92, align 4, !tbaa !109
  %94 = and i16 %93, 4
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %90
  %97 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.22, i16 noundef signext 6, ptr noundef null) #6
  br label %98

98:                                               ; preds = %96, %90
  br i1 %16, label %99, label %103

99:                                               ; preds = %98
  call fastcc void @deselect_nla_strips(ptr noundef nonnull %9, i16 noundef signext 0, i16 noundef signext 4)
  %100 = load ptr, ptr %9, align 8, !tbaa !63
  %101 = load i16, ptr %65, align 8, !tbaa !64
  %102 = sext i16 %101 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %9, ptr noundef %100, i32 noundef %102, i8 noundef zeroext 0, i32 noundef 0) #6
  br label %103

103:                                              ; preds = %99, %98
  %104 = phi i16 [ 2, %99 ], [ %17, %98 ]
  %105 = icmp eq ptr %91, null
  br i1 %105, label %154, label %106

106:                                              ; preds = %103
  %107 = icmp eq i16 %104, 8
  %108 = getelementptr inbounds %struct.NlaStrip, ptr %91, i64 0, i32 23
  %109 = load i32, ptr %108, align 8, !tbaa !81
  %110 = or i32 %109, 2
  %111 = xor i32 %109, 2
  %112 = select i1 %107, i32 %111, i32 %110
  store i32 %112, ptr %108, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %113 = load ptr, ptr %9, align 8, !tbaa !63
  %114 = load i16, ptr %65, align 8, !tbaa !64
  %115 = sext i16 %114 to i32
  %116 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %9, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %113, i32 noundef %115) #6
  %117 = load ptr, ptr %4, align 8, !tbaa !65
  %118 = icmp eq ptr %117, null
  br i1 %118, label %136, label %122

119:                                              ; preds = %129, %122
  %120 = load ptr, ptr %123, align 8, !tbaa !65
  %121 = icmp eq ptr %120, null
  br i1 %121, label %136, label %122, !llvm.loop !114

122:                                              ; preds = %106, %119
  %123 = phi ptr [ %120, %119 ], [ %117, %106 ]
  %124 = getelementptr inbounds %struct.bAnimListElem, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !78
  %126 = getelementptr inbounds %struct.NlaTrack, ptr %125, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !65
  %128 = icmp eq ptr %127, null
  br i1 %128, label %119, label %129

129:                                              ; preds = %122, %129
  %130 = phi ptr [ %134, %129 ], [ %127, %122 ]
  %131 = getelementptr inbounds %struct.NlaStrip, ptr %130, i64 0, i32 23
  %132 = load i32, ptr %131, align 8, !tbaa !81
  %133 = and i32 %132, -2
  store i32 %133, ptr %131, align 8, !tbaa !81
  %134 = load ptr, ptr %130, align 8, !tbaa !65
  %135 = icmp eq ptr %134, null
  br i1 %135, label %119, label %129, !llvm.loop !115

136:                                              ; preds = %119, %106
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  %137 = getelementptr inbounds %struct.NlaStrip, ptr %91, i64 0, i32 23
  %138 = load i32, ptr %137, align 8, !tbaa !81
  %139 = and i32 %138, 2
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %154, label %141

141:                                              ; preds = %136
  %142 = or i32 %138, 1
  store i32 %142, ptr %137, align 8, !tbaa !81
  %143 = load i32, ptr %76, align 8, !tbaa !76
  %144 = icmp eq i32 %143, 30
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.bAnimListElem, ptr %70, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !78
  %148 = getelementptr inbounds %struct.NlaTrack, ptr %147, i64 0, i32 3
  %149 = load i32, ptr %148, align 8, !tbaa !116
  %150 = or i32 %149, 2
  store i32 %150, ptr %148, align 8, !tbaa !116
  %151 = load ptr, ptr %9, align 8, !tbaa !63
  %152 = load i16, ptr %65, align 8, !tbaa !64
  %153 = sext i16 %152 to i32
  call void @ANIM_set_active_channel(ptr noundef nonnull %9, ptr noundef %151, i32 noundef %153, i32 noundef 11, ptr noundef %147, i32 noundef 30) #6
  br label %154

154:                                              ; preds = %145, %141, %136, %103
  %155 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  call void %155(ptr noundef nonnull %70) #6
  br label %156

156:                                              ; preds = %72, %154
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665158, ptr noundef null) #6
  br label %157

157:                                              ; preds = %3, %156
  %158 = phi i32 [ 12, %156 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %9) #6
  ret i32 %158
}

declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @deselect_nla_strips(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr %0, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !64
  %8 = sext i16 %7 to i32
  %9 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %5, i32 noundef %8) #6
  %10 = icmp eq i16 %1, 1
  br i1 %10, label %11, label %32

11:                                               ; preds = %3, %29
  %12 = phi ptr [ %14, %29 ], [ %4, %3 ]
  %13 = phi i16 [ %30, %29 ], [ %2, %3 ]
  %14 = load ptr, ptr %12, align 8, !tbaa !65
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  %19 = getelementptr inbounds %struct.NlaTrack, ptr %18, i64 0, i32 2
  br label %20

20:                                               ; preds = %24, %16
  %21 = phi ptr [ %19, %16 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 23
  %26 = load i32, ptr %25, align 8, !tbaa !81
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %20, label %29, !llvm.loop !118

29:                                               ; preds = %24, %20
  %30 = phi i16 [ %13, %20 ], [ 4, %24 ]
  %31 = icmp eq i16 %30, 4
  br i1 %31, label %32, label %11

32:                                               ; preds = %29, %11, %3
  %33 = phi i16 [ %2, %3 ], [ %30, %29 ], [ %13, %11 ]
  %34 = icmp eq i16 %33, 8
  %35 = select i1 %34, i16 2, i16 1
  %36 = icmp eq i16 %33, 4
  %37 = select i1 %36, i16 0, i16 %35
  %38 = load ptr, ptr %4, align 8, !tbaa !65
  %39 = icmp eq ptr %38, null
  br i1 %39, label %71, label %40

40:                                               ; preds = %32
  %41 = icmp eq i16 %1, 2
  br label %45

42:                                               ; preds = %65, %45
  %43 = load ptr, ptr %46, align 8, !tbaa !65
  %44 = icmp eq ptr %43, null
  br i1 %44, label %71, label %45, !llvm.loop !114

45:                                               ; preds = %40, %42
  %46 = phi ptr [ %38, %40 ], [ %43, %42 ]
  %47 = getelementptr inbounds %struct.bAnimListElem, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !78
  %49 = getelementptr inbounds %struct.NlaTrack, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !65
  %51 = icmp eq ptr %50, null
  br i1 %51, label %42, label %52

52:                                               ; preds = %45, %65
  %53 = phi ptr [ %69, %65 ], [ %50, %45 ]
  br i1 %41, label %65, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.NlaStrip, ptr %53, i64 0, i32 23
  %56 = load i32, ptr %55, align 8, !tbaa !81
  switch i16 %37, label %61 [
    i16 2, label %57
    i16 1, label %59
  ]

57:                                               ; preds = %54
  %58 = xor i32 %56, 2
  br label %63

59:                                               ; preds = %54
  %60 = or i32 %56, 2
  br label %63

61:                                               ; preds = %54
  %62 = and i32 %56, -3
  br label %63

63:                                               ; preds = %59, %61, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %61 ], [ %60, %59 ]
  store i32 %64, ptr %55, align 8, !tbaa !81
  br label %65

65:                                               ; preds = %63, %52
  %66 = getelementptr inbounds %struct.NlaStrip, ptr %53, i64 0, i32 23
  %67 = load i32, ptr %66, align 8, !tbaa !81
  %68 = and i32 %67, -2
  store i32 %68, ptr %66, align 8, !tbaa !81
  %69 = load ptr, ptr %53, align 8, !tbaa !65
  %70 = icmp eq ptr %69, null
  br i1 %70, label %42, label %52, !llvm.loop !115

71:                                               ; preds = %42, %32
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret void
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #1

declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare zeroext i8 @BKE_nlastrip_within_bounds(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @UI_view2d_region_to_view_x(ptr noundef, float noundef) local_unnamed_addr #1

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

declare void @UI_view2d_listview_view_to_cell(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ANIM_deselect_anim_channels(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare void @ANIM_set_active_channel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!60 = !{!61, !36, i64 24}
!61 = !{!"bAnimContext", !36, i64 0, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!62 = !{!61, !36, i64 32}
!63 = !{!61, !36, i64 0}
!64 = !{!61, !41, i64 8}
!65 = !{!36, !36, i64 0}
!66 = !{!67, !41, i64 58}
!67 = !{!"SpaceNla", !36, i64 0, !36, i64 8, !39, i64 16, !56, i64 32, !68, i64 36, !37, i64 40, !41, i64 56, !41, i64 58, !56, i64 60, !36, i64 64, !69, i64 72}
!68 = !{!"float", !37, i64 0}
!69 = !{!"View2D", !70, i64 0, !70, i64 16, !55, i64 32, !55, i64 48, !55, i64 64, !37, i64 80, !37, i64 88, !68, i64 96, !68, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !56, i64 136, !56, i64 140, !36, i64 144, !36, i64 152}
!70 = !{!"rctf", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12}
!71 = !{!72, !41, i64 8948}
!72 = !{!"UserDef", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !56, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !56, i64 8484, !56, i64 8488, !56, i64 8492, !41, i64 8496, !41, i64 8498, !56, i64 8500, !56, i64 8504, !56, i64 8508, !56, i64 8512, !56, i64 8516, !56, i64 8520, !56, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !56, i64 8912, !56, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !68, i64 8956, !68, i64 8960, !56, i64 8964, !41, i64 8968, !41, i64 8970, !68, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !73, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !56, i64 10896, !56, i64 10900, !68, i64 10904, !68, i64 10908, !56, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !74, i64 10928}
!73 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!74 = !{!"WalkNavigation", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12, !68, i64 16, !68, i64 20, !41, i64 24, !37, i64 26}
!75 = !{!70, !68, i64 8}
!76 = !{!77, !56, i64 24}
!77 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !56, i64 24, !56, i64 28, !56, i64 32, !41, i64 36, !41, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!78 = !{!77, !36, i64 16}
!79 = !{!70, !68, i64 0}
!80 = !{!70, !68, i64 4}
!81 = !{!82, !56, i64 200}
!82 = !{!"NlaStrip", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 32, !36, i64 40, !39, i64 48, !39, i64 64, !37, i64 80, !68, i64 144, !68, i64 148, !68, i64 152, !68, i64 156, !68, i64 160, !68, i64 164, !68, i64 168, !68, i64 172, !68, i64 176, !68, i64 180, !41, i64 184, !41, i64 186, !41, i64 188, !41, i64 190, !36, i64 192, !56, i64 200, !56, i64 204}
!83 = distinct !{!83, !84, !85}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = distinct !{!86, !84, !85}
!87 = !{!61, !36, i64 48}
!88 = !{!56, !56, i64 0}
!89 = !{!90, !56, i64 680}
!90 = !{!"Scene", !91, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !56, i64 232, !56, i64 236, !56, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !92, i64 280, !99, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !56, i64 4380, !39, i64 4384, !100, i64 4400, !101, i64 4416, !104, i64 4600, !36, i64 4608, !105, i64 4616, !36, i64 4640, !106, i64 4648, !106, i64 4656, !94, i64 4664, !95, i64 4824, !107, i64 4888, !36, i64 4952}
!91 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !56, i64 100, !56, i64 104, !56, i64 108, !36, i64 112}
!92 = !{!"RenderData", !93, i64 0, !36, i64 248, !36, i64 256, !96, i64 264, !97, i64 328, !56, i64 400, !56, i64 404, !56, i64 408, !68, i64 412, !56, i64 416, !56, i64 420, !56, i64 424, !56, i64 428, !41, i64 432, !41, i64 434, !68, i64 436, !68, i64 440, !68, i64 444, !68, i64 448, !68, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !56, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !56, i64 484, !56, i64 488, !41, i64 492, !41, i64 494, !56, i64 496, !56, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !56, i64 516, !56, i64 520, !56, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !70, i64 544, !70, i64 560, !55, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !68, i64 612, !68, i64 616, !68, i64 620, !68, i64 624, !56, i64 628, !68, i64 632, !68, i64 636, !68, i64 640, !68, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !68, i64 660, !68, i64 664, !41, i64 668, !41, i64 670, !68, i64 672, !68, i64 676, !37, i64 680, !56, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !56, i64 2520, !41, i64 2524, !41, i64 2526, !68, i64 2528, !68, i64 2532, !41, i64 2536, !41, i64 2538, !68, i64 2540, !41, i64 2544, !41, i64 2546, !56, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !68, i64 2560, !68, i64 2564, !36, i64 2568, !56, i64 2576, !68, i64 2580, !37, i64 2584, !98, i64 2616, !56, i64 3976, !56, i64 3980}
!93 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !68, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !94, i64 24, !95, i64 184}
!94 = !{!"ColorManagedViewSettings", !56, i64 0, !56, i64 4, !37, i64 8, !37, i64 72, !68, i64 136, !68, i64 140, !36, i64 144, !36, i64 152}
!95 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!96 = !{!"QuicktimeCodecSettings", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !41, i64 48, !41, i64 50, !56, i64 52, !56, i64 56, !56, i64 60}
!97 = !{!"FFMpegCodecData", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !68, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !56, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !36, i64 64}
!98 = !{!"BakeData", !93, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !68, i64 1280, !68, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!99 = !{!"AudioData", !56, i64 0, !68, i64 4, !68, i64 8, !68, i64 12, !56, i64 16, !41, i64 20, !41, i64 22, !68, i64 24, !68, i64 28}
!100 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!101 = !{!"GameData", !100, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !102, i64 40, !41, i64 64, !41, i64 66, !68, i64 68, !103, i64 72, !68, i64 128, !68, i64 132, !56, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !68, i64 164, !68, i64 168, !68, i64 172, !68, i64 176, !68, i64 180}
!102 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !68, i64 8, !68, i64 12, !36, i64 16}
!103 = !{!"RecastData", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12, !68, i64 16, !68, i64 20, !68, i64 24, !68, i64 28, !68, i64 32, !68, i64 36, !56, i64 40, !68, i64 44, !68, i64 48, !41, i64 52, !41, i64 54}
!104 = !{!"UnitSettings", !68, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!105 = !{!"PhysicsSettings", !37, i64 0, !56, i64 12, !56, i64 16, !56, i64 20}
!106 = !{!"long", !37, i64 0}
!107 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!108 = !{i32 2, i32 5}
!109 = !{!90, !41, i64 244}
!110 = distinct !{!110, !84, !85}
!111 = distinct !{!111, !84, !85}
!112 = !{!68, !68, i64 0}
!113 = distinct !{!113, !84, !85}
!114 = distinct !{!114, !84, !85}
!115 = distinct !{!115, !84, !85}
!116 = !{!117, !56, i64 32}
!117 = !{!"NlaTrack", !36, i64 0, !36, i64 8, !39, i64 16, !56, i64 32, !56, i64 36, !37, i64 40}
!118 = distinct !{!118, !84, !85}
