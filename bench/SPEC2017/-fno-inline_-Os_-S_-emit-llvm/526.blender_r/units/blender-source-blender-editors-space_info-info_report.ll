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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @info_report_mask(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 511
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @INFO_OT_report_replay(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_info_active, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @report_replay_exec, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare i32 @ED_operator_info_active(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @report_replay_exec(ptr noundef %0, ptr nocapture readnone %1) #3 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  tail call void @ED_area_tag_redraw(ptr noundef %3) #5
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @INFO_OT_select_pick(ptr nocapture noundef %0) local_unnamed_addr #3 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_info_active, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @select_report_pick_invoke, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_report_pick_exec, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 2147483647) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_report_pick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #3 {
  %4 = tail call ptr @CTX_wm_space_info(ptr noundef %0) #5
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  %6 = tail call ptr @CTX_wm_reports(ptr noundef %0) #5
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #5
  %8 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 7
  %9 = load i16, ptr %8, align 4, !tbaa !19
  %10 = sext i16 %9 to i32
  tail call void @wmSubWindowSet(ptr noundef %7, i32 noundef %10) #5
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !26
  %13 = tail call ptr @info_text_pick(ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %12) #5
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !27
  %16 = tail call i32 @BLI_findindex(ptr noundef %6, ptr noundef %13) #5
  tail call void @RNA_int_set(ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef %16) #5
  %17 = tail call i32 @select_report_pick_exec(ptr noundef %0, ptr noundef %1) #6, !range !29
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_report_pick_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !27
  %5 = tail call i32 @RNA_int_get(ptr noundef %4, ptr noundef nonnull @.str.6) #5
  %6 = tail call ptr @CTX_wm_reports(ptr noundef %0) #5
  %7 = tail call ptr @BLI_findlink(ptr noundef %6, i32 noundef %5) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Report, ptr %7, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !30
  %12 = xor i16 %11, 1
  store i16 %12, ptr %10, align 2, !tbaa !30
  %13 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  tail call void @ED_area_tag_redraw(ptr noundef %13) #5
  br label %14

14:                                               ; preds = %2, %9
  %15 = phi i32 [ 4, %9 ], [ 2, %2 ]
  ret i32 %15
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @INFO_OT_select_all_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_info_active, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @report_select_all_toggle_exec, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @report_select_all_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #3 {
  %3 = tail call ptr @CTX_wm_space_info(ptr noundef %0) #5
  %4 = tail call ptr @CTX_wm_reports(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !32
  %7 = icmp eq ptr %6, null
  br i1 %7, label %52, label %9

8:                                                ; preds = %20
  br i1 %7, label %52, label %38

9:                                                ; preds = %2, %20
  %10 = phi ptr [ %22, %20 ], [ %6, %2 ]
  %11 = getelementptr inbounds %struct.Report, ptr %10, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !33
  %13 = and i16 %12, 511
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.Report, ptr %10, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !30
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %9, %15
  %21 = getelementptr inbounds %struct.Report, ptr %10, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !32
  %23 = icmp eq ptr %22, null
  br i1 %23, label %8, label %9, !llvm.loop !34

24:                                               ; preds = %15, %34
  %25 = phi ptr [ %36, %34 ], [ %6, %15 ]
  %26 = getelementptr inbounds %struct.Report, ptr %25, i64 0, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !33
  %28 = and i16 %27, 511
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.Report, ptr %25, i64 0, i32 3
  %32 = load i16, ptr %31, align 2, !tbaa !30
  %33 = and i16 %32, -2
  store i16 %33, ptr %31, align 2, !tbaa !30
  br label %34

34:                                               ; preds = %24, %30
  %35 = getelementptr inbounds %struct.Report, ptr %25, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !32
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %24, !llvm.loop !36

38:                                               ; preds = %8, %48
  %39 = phi ptr [ %50, %48 ], [ %6, %8 ]
  %40 = getelementptr inbounds %struct.Report, ptr %39, i64 0, i32 2
  %41 = load i16, ptr %40, align 8, !tbaa !33
  %42 = and i16 %41, 511
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.Report, ptr %39, i64 0, i32 3
  %46 = load i16, ptr %45, align 2, !tbaa !30
  %47 = or i16 %46, 1
  store i16 %47, ptr %45, align 2, !tbaa !30
  br label %48

48:                                               ; preds = %38, %44
  %49 = getelementptr inbounds %struct.Report, ptr %39, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !32
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %38, !llvm.loop !37

52:                                               ; preds = %34, %48, %2, %8
  %53 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  tail call void @ED_area_tag_redraw(ptr noundef %53) #5
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @INFO_OT_select_border(ptr noundef %0) local_unnamed_addr #3 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @borderselect_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_info_active, ptr %8, align 8, !tbaa !15
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #5
  ret void
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @borderselect_exec(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.rcti, align 4
  %4 = tail call ptr @CTX_wm_space_info(ptr noundef %0) #5
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  %6 = tail call ptr @CTX_wm_reports(ptr noundef %0) #5
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.21) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %10 = load ptr, ptr %7, align 8, !tbaa !27
  %11 = tail call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.22) #5
  %12 = icmp eq i32 %11, 3
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %3) #5
  %13 = and i32 %9, 255
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 8, !tbaa !32
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %15, %28
  %19 = phi ptr [ %29, %28 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.Report, ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !33
  %22 = and i16 %21, 511
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.Report, ptr %19, i64 0, i32 3
  %26 = load i16, ptr %25, align 2, !tbaa !30
  %27 = and i16 %26, -2
  store i16 %27, ptr %25, align 2, !tbaa !30
  br label %28

28:                                               ; preds = %18, %24
  %29 = load ptr, ptr %19, align 8, !tbaa !32
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !40

31:                                               ; preds = %28, %15, %2
  %32 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !41
  %34 = call ptr @info_text_pick(ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %33) #5
  %35 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !42
  %37 = call ptr @info_text_pick(ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %36) #5
  %38 = icmp eq ptr %34, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %31, %43
  %40 = phi ptr [ %41, %43 ], [ %6, %31 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !32
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.Report, ptr %41, i64 0, i32 2
  %45 = load i16, ptr %44, align 8, !tbaa !33
  %46 = and i16 %45, 511
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %39, label %48, !llvm.loop !43

48:                                               ; preds = %43, %39, %31
  %49 = phi ptr [ %34, %31 ], [ %41, %43 ], [ null, %39 ]
  %50 = icmp eq ptr %37, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.ListBase, ptr %6, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !32
  %54 = icmp eq ptr %53, null
  br i1 %54, label %89, label %55

55:                                               ; preds = %51, %61
  %56 = phi ptr [ %63, %61 ], [ %53, %51 ]
  %57 = getelementptr inbounds %struct.Report, ptr %56, i64 0, i32 2
  %58 = load i16, ptr %57, align 8, !tbaa !33
  %59 = and i16 %58, 511
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.Report, ptr %56, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !32
  %64 = icmp eq ptr %63, null
  br i1 %64, label %89, label %55, !llvm.loop !44

65:                                               ; preds = %55, %48
  %66 = phi ptr [ %37, %48 ], [ %56, %55 ]
  %67 = icmp eq ptr %49, null
  br i1 %67, label %89, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %66, align 8, !tbaa !45
  %70 = icmp eq ptr %49, %69
  br i1 %70, label %87, label %71

71:                                               ; preds = %68
  %72 = zext i1 %12 to i16
  br label %73

73:                                               ; preds = %71, %84
  %74 = phi ptr [ %85, %84 ], [ %49, %71 ]
  %75 = getelementptr inbounds %struct.Report, ptr %74, i64 0, i32 2
  %76 = load i16, ptr %75, align 8, !tbaa !33
  %77 = and i16 %76, 511
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.Report, ptr %74, i64 0, i32 3
  %81 = load i16, ptr %80, align 2, !tbaa !30
  %82 = and i16 %81, -2
  %83 = or disjoint i16 %82, %72
  store i16 %83, ptr %80, align 2, !tbaa !30
  br label %84

84:                                               ; preds = %79, %73
  %85 = load ptr, ptr %74, align 8, !tbaa !45
  %86 = icmp eq ptr %85, %69
  br i1 %86, label %87, label %73, !llvm.loop !46

87:                                               ; preds = %84, %68
  %88 = call ptr @CTX_wm_area(ptr noundef %0) #5
  call void @ED_area_tag_redraw(ptr noundef %88) #5
  br label %89

89:                                               ; preds = %61, %51, %65, %87
  %90 = phi i32 [ 4, %87 ], [ 2, %65 ], [ 2, %51 ], [ 2, %61 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %90
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @INFO_OT_report_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_info_active, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @report_delete_exec, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @report_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #3 {
  %3 = tail call ptr @CTX_wm_space_info(ptr noundef %0) #5
  %4 = tail call ptr @CTX_wm_reports(ptr noundef %0) #5
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %2, %24
  %8 = phi ptr [ %9, %24 ], [ %5, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.Report, ptr %8, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !33
  %12 = and i16 %11, 511
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.Report, ptr %8, i64 0, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !30
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %8) #5
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !32
  %21 = getelementptr inbounds %struct.Report, ptr %8, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  tail call void %20(ptr noundef %22) #5
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !32
  tail call void %23(ptr noundef nonnull %8) #5
  br label %24

24:                                               ; preds = %19, %14, %7
  %25 = icmp eq ptr %9, null
  br i1 %25, label %26, label %7, !llvm.loop !50

26:                                               ; preds = %24, %2
  %27 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  tail call void @ED_area_tag_redraw(ptr noundef %27) #5
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @INFO_OT_report_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_info_active, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @report_copy_exec, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @report_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #3 {
  %3 = tail call ptr @CTX_wm_space_info(ptr noundef %0) #5
  %4 = tail call ptr @CTX_wm_reports(ptr noundef %0) #5
  %5 = tail call ptr @BLI_dynstr_new() #5
  %6 = load ptr, ptr %4, align 8, !tbaa !32
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %2, %22
  %9 = phi ptr [ %23, %22 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.Report, ptr %9, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !33
  %12 = and i16 %11, 511
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Report, ptr %9, i64 0, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !30
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Report, ptr %9, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  tail call void @BLI_dynstr_append(ptr noundef %5, ptr noundef %21) #5
  tail call void @BLI_dynstr_append(ptr noundef %5, ptr noundef nonnull @.str.23) #5
  br label %22

22:                                               ; preds = %8, %14, %19
  %23 = load ptr, ptr %9, align 8, !tbaa !32
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !llvm.loop !51

25:                                               ; preds = %22, %2
  %26 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef %5) #5
  tail call void @BLI_dynstr_free(ptr noundef %5) #5
  tail call void @WM_clipboard_text_set(ptr noundef %26, i8 noundef zeroext 0) #5
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !32
  tail call void %27(ptr noundef %26) #5
  ret i32 4
}

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare ptr @CTX_wm_space_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wmSubWindowSet(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @info_text_pick(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_dynstr_new() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_clipboard_text_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }

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
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 72}
!16 = !{!6, !7, i64 32}
!17 = !{!6, !7, i64 48}
!18 = !{!6, !7, i64 88}
!19 = !{!20, !12, i64 212}
!20 = !{!"ARegion", !7, i64 0, !7, i64 8, !21, i64 16, !24, i64 176, !24, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !23, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!21 = !{!"View2D", !22, i64 0, !22, i64 16, !24, i64 32, !24, i64 48, !24, i64 64, !8, i64 80, !8, i64 88, !23, i64 96, !23, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !25, i64 136, !25, i64 140, !7, i64 144, !7, i64 152}
!22 = !{!"rctf", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12}
!23 = !{!"float", !8, i64 0}
!24 = !{!"rcti", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12}
!25 = !{!"int", !8, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!28, !7, i64 112}
!28 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!29 = !{i32 2, i32 5}
!30 = !{!31, !12, i64 18}
!31 = !{!"Report", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !25, i64 20, !7, i64 24, !7, i64 32}
!32 = !{!7, !7, i64 0}
!33 = !{!31, !12, i64 16}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = distinct !{!36, !35}
!37 = distinct !{!37, !35}
!38 = !{!6, !7, i64 64}
!39 = !{!6, !7, i64 56}
!40 = distinct !{!40, !35}
!41 = !{!24, !25, i64 12}
!42 = !{!24, !25, i64 8}
!43 = distinct !{!43, !35}
!44 = distinct !{!44, !35}
!45 = !{!31, !7, i64 0}
!46 = distinct !{!46, !35}
!47 = !{!48, !7, i64 0}
!48 = !{!"ReportList", !10, i64 0, !25, i64 16, !25, i64 20, !25, i64 24, !25, i64 28, !7, i64 32}
!49 = !{!31, !7, i64 32}
!50 = distinct !{!50, !35}
!51 = distinct !{!51, !35}
