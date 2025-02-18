; ModuleID = 'blender/source/blender/editors/space_info/info_report.c'
source_filename = "blender/source/blender/editors/space_info/info_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Report = type { ptr, ptr, i16, i16, i32, ptr, ptr }

@.str = private unnamed_addr constant [17 x i8] c"Replay Operators\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Replay selected reports\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"INFO_OT_report_replay\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Select Report\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Select reports by index\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"INFO_OT_select_pick\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"report_index\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Report\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Index of the report\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"(De)select All\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Select or deselect all reports\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"INFO_OT_select_all_toggle\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Border Select\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Toggle border selection\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"INFO_OT_select_border\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Delete Reports\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Delete selected reports\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"INFO_OT_report_delete\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"Copy Reports to Clipboard\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"Copy selected reports to Clipboard\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"INFO_OT_report_copy\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"gesture_mode\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @info_report_mask(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 511
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @INFO_OT_report_replay(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_info_active, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @report_replay_exec, ptr %5, align 8, !tbaa !45
  ret void
}

declare i32 @ED_operator_info_active(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @report_replay_exec(ptr noundef %0, ptr nocapture readnone %1) #3 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  tail call void @ED_area_tag_redraw(ptr noundef %3) #5
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @INFO_OT_select_pick(ptr nocapture noundef %0) local_unnamed_addr #3 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_info_active, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @select_report_pick_invoke, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_report_pick_exec, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 2147483647) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_report_pick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #3 {
  %4 = tail call ptr @CTX_wm_space_info(ptr noundef %0) #5
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  %6 = tail call ptr @CTX_wm_reports(ptr noundef %0) #5
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #5
  %8 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 7
  %9 = load i16, ptr %8, align 4, !tbaa !48
  %10 = sext i16 %9 to i32
  tail call void @wmSubWindowSet(ptr noundef %7, i32 noundef %10) #5
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !55
  %13 = tail call ptr @info_text_pick(ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %12) #5
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = tail call i32 @BLI_findindex(ptr noundef %6, ptr noundef %13) #5
  tail call void @RNA_int_set(ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef %16) #5
  %17 = load ptr, ptr %14, align 8, !tbaa !56
  %18 = tail call i32 @RNA_int_get(ptr noundef %17, ptr noundef nonnull @.str.6) #5
  %19 = tail call ptr @CTX_wm_reports(ptr noundef %0) #5
  %20 = tail call ptr @BLI_findlink(ptr noundef %19, i32 noundef %18) #5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.Report, ptr %20, i64 0, i32 3
  %24 = load i16, ptr %23, align 2, !tbaa !58
  %25 = xor i16 %24, 1
  store i16 %25, ptr %23, align 2, !tbaa !58
  %26 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  tail call void @ED_area_tag_redraw(ptr noundef %26) #5
  br label %27

27:                                               ; preds = %3, %22
  %28 = phi i32 [ 4, %22 ], [ 2, %3 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_report_pick_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = tail call i32 @RNA_int_get(ptr noundef %4, ptr noundef nonnull @.str.6) #5
  %6 = tail call ptr @CTX_wm_reports(ptr noundef %0) #5
  %7 = tail call ptr @BLI_findlink(ptr noundef %6, i32 noundef %5) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Report, ptr %7, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !58
  %12 = xor i16 %11, 1
  store i16 %12, ptr %10, align 2, !tbaa !58
  %13 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  tail call void @ED_area_tag_redraw(ptr noundef %13) #5
  br label %14

14:                                               ; preds = %2, %9
  %15 = phi i32 [ 4, %9 ], [ 2, %2 ]
  ret i32 %15
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @INFO_OT_select_all_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_info_active, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @report_select_all_toggle_exec, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @report_select_all_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #3 {
  %3 = tail call ptr @CTX_wm_space_info(ptr noundef %0) #5
  %4 = tail call ptr @CTX_wm_reports(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %25, %2
  %9 = load ptr, ptr %5, align 8, !tbaa !60
  %10 = icmp eq ptr %9, null
  br i1 %10, label %57, label %43

11:                                               ; preds = %2, %25
  %12 = phi ptr [ %27, %25 ], [ %6, %2 ]
  %13 = getelementptr inbounds %struct.Report, ptr %12, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !61
  %15 = and i16 %14, 511
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Report, ptr %12, i64 0, i32 3
  %19 = load i16, ptr %18, align 2, !tbaa !58
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8, !tbaa !60
  %24 = icmp eq ptr %23, null
  br i1 %24, label %57, label %29

25:                                               ; preds = %11, %17
  %26 = getelementptr inbounds %struct.Report, ptr %12, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !60
  %28 = icmp eq ptr %27, null
  br i1 %28, label %8, label %11, !llvm.loop !62

29:                                               ; preds = %22, %39
  %30 = phi ptr [ %41, %39 ], [ %23, %22 ]
  %31 = getelementptr inbounds %struct.Report, ptr %30, i64 0, i32 2
  %32 = load i16, ptr %31, align 8, !tbaa !61
  %33 = and i16 %32, 511
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.Report, ptr %30, i64 0, i32 3
  %37 = load i16, ptr %36, align 2, !tbaa !58
  %38 = and i16 %37, -2
  store i16 %38, ptr %36, align 2, !tbaa !58
  br label %39

39:                                               ; preds = %29, %35
  %40 = getelementptr inbounds %struct.Report, ptr %30, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  %42 = icmp eq ptr %41, null
  br i1 %42, label %57, label %29, !llvm.loop !65

43:                                               ; preds = %8, %53
  %44 = phi ptr [ %55, %53 ], [ %9, %8 ]
  %45 = getelementptr inbounds %struct.Report, ptr %44, i64 0, i32 2
  %46 = load i16, ptr %45, align 8, !tbaa !61
  %47 = and i16 %46, 511
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.Report, ptr %44, i64 0, i32 3
  %51 = load i16, ptr %50, align 2, !tbaa !58
  %52 = or i16 %51, 1
  store i16 %52, ptr %50, align 2, !tbaa !58
  br label %53

53:                                               ; preds = %43, %49
  %54 = getelementptr inbounds %struct.Report, ptr %44, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !60
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %43, !llvm.loop !66

57:                                               ; preds = %39, %53, %22, %8
  %58 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  tail call void @ED_area_tag_redraw(ptr noundef %58) #5
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @INFO_OT_select_border(ptr noundef %0) local_unnamed_addr #3 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @borderselect_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !68
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_info_active, ptr %8, align 8, !tbaa !44
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #5
  ret void
}

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @borderselect_exec(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.rcti, align 4
  %4 = tail call ptr @CTX_wm_space_info(ptr noundef %0) #5
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  %6 = tail call ptr @CTX_wm_reports(ptr noundef %0) #5
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.21) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %10 = load ptr, ptr %7, align 8, !tbaa !56
  %11 = tail call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.22) #5
  %12 = icmp eq i32 %11, 3
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %3) #5
  %13 = and i32 %9, 255
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 8, !tbaa !60
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %15, %28
  %19 = phi ptr [ %29, %28 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.Report, ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !61
  %22 = and i16 %21, 511
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.Report, ptr %19, i64 0, i32 3
  %26 = load i16, ptr %25, align 2, !tbaa !58
  %27 = and i16 %26, -2
  store i16 %27, ptr %25, align 2, !tbaa !58
  br label %28

28:                                               ; preds = %18, %24
  %29 = load ptr, ptr %19, align 8, !tbaa !60
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !69

31:                                               ; preds = %28, %15, %2
  %32 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !70
  %34 = call ptr @info_text_pick(ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %33) #5
  %35 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !71
  %37 = call ptr @info_text_pick(ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %36) #5
  %38 = icmp eq ptr %34, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %31, %43
  %40 = phi ptr [ %41, %43 ], [ %6, %31 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.Report, ptr %41, i64 0, i32 2
  %45 = load i16, ptr %44, align 8, !tbaa !61
  %46 = and i16 %45, 511
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %39, label %48, !llvm.loop !72

48:                                               ; preds = %43, %39, %31
  %49 = phi ptr [ %34, %31 ], [ null, %39 ], [ %41, %43 ]
  %50 = icmp eq ptr %37, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.ListBase, ptr %6, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !60
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %51, %61
  %56 = phi ptr [ %63, %61 ], [ %53, %51 ]
  %57 = getelementptr inbounds %struct.Report, ptr %56, i64 0, i32 2
  %58 = load i16, ptr %57, align 8, !tbaa !61
  %59 = and i16 %58, 511
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.Report, ptr %56, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !60
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %55, !llvm.loop !73

65:                                               ; preds = %61, %55, %51, %48
  %66 = phi ptr [ %37, %48 ], [ null, %51 ], [ %56, %55 ], [ null, %61 ]
  %67 = icmp eq ptr %49, null
  %68 = icmp eq ptr %66, null
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %91, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %66, align 8, !tbaa !74
  %72 = icmp eq ptr %49, %71
  br i1 %72, label %89, label %73

73:                                               ; preds = %70
  %74 = zext i1 %12 to i16
  br label %75

75:                                               ; preds = %73, %86
  %76 = phi ptr [ %87, %86 ], [ %49, %73 ]
  %77 = getelementptr inbounds %struct.Report, ptr %76, i64 0, i32 2
  %78 = load i16, ptr %77, align 8, !tbaa !61
  %79 = and i16 %78, 511
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.Report, ptr %76, i64 0, i32 3
  %83 = load i16, ptr %82, align 2, !tbaa !58
  %84 = and i16 %83, -2
  %85 = or disjoint i16 %84, %74
  store i16 %85, ptr %82, align 2, !tbaa !58
  br label %86

86:                                               ; preds = %81, %75
  %87 = load ptr, ptr %76, align 8, !tbaa !74
  %88 = icmp eq ptr %87, %71
  br i1 %88, label %89, label %75, !llvm.loop !75

89:                                               ; preds = %86, %70
  %90 = call ptr @CTX_wm_area(ptr noundef %0) #5
  call void @ED_area_tag_redraw(ptr noundef %90) #5
  br label %91

91:                                               ; preds = %65, %89
  %92 = phi i32 [ 4, %89 ], [ 2, %65 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  ret i32 %92
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #2

declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #2

declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @INFO_OT_report_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_info_active, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @report_delete_exec, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @report_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #3 {
  %3 = tail call ptr @CTX_wm_space_info(ptr noundef %0) #5
  %4 = tail call ptr @CTX_wm_reports(ptr noundef %0) #5
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %2, %24
  %8 = phi ptr [ %9, %24 ], [ %5, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.Report, ptr %8, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !61
  %12 = and i16 %11, 511
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.Report, ptr %8, i64 0, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !58
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %8) #5
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.Report, ptr %8, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !78
  tail call void %20(ptr noundef %22) #5
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  tail call void %23(ptr noundef nonnull %8) #5
  br label %24

24:                                               ; preds = %19, %14, %7
  %25 = icmp eq ptr %9, null
  br i1 %25, label %26, label %7, !llvm.loop !79

26:                                               ; preds = %24, %2
  %27 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  tail call void @ED_area_tag_redraw(ptr noundef %27) #5
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @INFO_OT_report_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_info_active, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @report_copy_exec, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @report_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #3 {
  %3 = tail call ptr @CTX_wm_space_info(ptr noundef %0) #5
  %4 = tail call ptr @CTX_wm_reports(ptr noundef %0) #5
  %5 = tail call ptr @BLI_dynstr_new() #5
  %6 = load ptr, ptr %4, align 8, !tbaa !60
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %2, %22
  %9 = phi ptr [ %23, %22 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.Report, ptr %9, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !61
  %12 = and i16 %11, 511
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Report, ptr %9, i64 0, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !58
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Report, ptr %9, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !78
  tail call void @BLI_dynstr_append(ptr noundef %5, ptr noundef %21) #5
  tail call void @BLI_dynstr_append(ptr noundef %5, ptr noundef nonnull @.str.23) #5
  br label %22

22:                                               ; preds = %8, %14, %19
  %23 = load ptr, ptr %9, align 8, !tbaa !60
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !llvm.loop !80

25:                                               ; preds = %22, %2
  %26 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef %5) #5
  tail call void @BLI_dynstr_free(ptr noundef %5) #5
  tail call void @WM_clipboard_text_set(ptr noundef %26, i8 noundef zeroext 0) #5
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  tail call void %27(ptr noundef %26) #5
  ret i32 4
}

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare ptr @CTX_wm_space_info(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

declare void @wmSubWindowSet(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare ptr @info_text_pick(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_dynstr_new() local_unnamed_addr #2

declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #2

declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #2

declare void @WM_clipboard_text_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

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
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 72}
!45 = !{!35, !36, i64 32}
!46 = !{!35, !36, i64 48}
!47 = !{!35, !36, i64 88}
!48 = !{!49, !41, i64 212}
!49 = !{!"ARegion", !36, i64 0, !36, i64 8, !50, i64 16, !53, i64 176, !53, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !52, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!50 = !{!"View2D", !51, i64 0, !51, i64 16, !53, i64 32, !53, i64 48, !53, i64 64, !37, i64 80, !37, i64 88, !52, i64 96, !52, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !54, i64 136, !54, i64 140, !36, i64 144, !36, i64 152}
!51 = !{!"rctf", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!52 = !{!"float", !37, i64 0}
!53 = !{!"rcti", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!54 = !{!"int", !37, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!57, !36, i64 112}
!57 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!58 = !{!59, !41, i64 18}
!59 = !{!"Report", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !54, i64 20, !36, i64 24, !36, i64 32}
!60 = !{!36, !36, i64 0}
!61 = !{!59, !41, i64 16}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = distinct !{!65, !63, !64}
!66 = distinct !{!66, !63, !64}
!67 = !{!35, !36, i64 64}
!68 = !{!35, !36, i64 56}
!69 = distinct !{!69, !63, !64}
!70 = !{!53, !54, i64 12}
!71 = !{!53, !54, i64 8}
!72 = distinct !{!72, !63, !64}
!73 = distinct !{!73, !63, !64}
!74 = !{!59, !36, i64 0}
!75 = distinct !{!75, !63, !64}
!76 = !{!77, !36, i64 0}
!77 = !{!"ReportList", !39, i64 0, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !36, i64 32}
!78 = !{!59, !36, i64 32}
!79 = distinct !{!79, !63, !64}
!80 = distinct !{!80, !63, !64}
