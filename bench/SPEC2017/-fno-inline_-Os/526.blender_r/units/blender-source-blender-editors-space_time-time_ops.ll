; ModuleID = 'blender/source/blender/editors/space_time/time_ops.c'
source_filename = "blender/source/blender/editors/space_time/time_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
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
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"Timeline\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"TIME_OT_start_frame_set\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"TIME_OT_end_frame_set\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"TIME_OT_view_all\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Set Start Frame\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Set the start frame\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Set End Frame\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Set the end frame\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"View All\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Show the entire playable frame range\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @time_operatortypes() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @TIME_OT_start_frame_set) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @TIME_OT_end_frame_set) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @TIME_OT_view_all) #4
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @TIME_OT_start_frame_set(ptr nocapture noundef writeonly %0) #2 !PGOFuncName !34 {
  store ptr @.str.4, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @time_set_sfra_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_timeline_active, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @TIME_OT_end_frame_set(ptr nocapture noundef writeonly %0) #2 !PGOFuncName !48 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @time_set_efra_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_timeline_active, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @TIME_OT_view_all(ptr nocapture noundef writeonly %0) #2 !PGOFuncName !49 {
  store ptr @.str.8, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.9, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @time_view_all_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_timeline_active, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @time_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 15, i32 noundef 0) #4
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 402, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @time_set_sfra_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !50 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 13
  %9 = load i16, ptr %8, align 8, !tbaa !74
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 6
  store i32 %7, ptr %13, align 4, !tbaa !75
  %14 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 7
  %15 = load i32, ptr %14, align 4, !tbaa !76
  %16 = icmp slt i32 %15, %7
  br i1 %16, label %23, label %24

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 9
  store i32 %7, ptr %18, align 8, !tbaa !77
  %19 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 10
  %20 = load i32, ptr %19, align 4, !tbaa !76
  %21 = icmp slt i32 %20, %7
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  store i32 %7, ptr %19, align 4, !tbaa !78
  br label %24

23:                                               ; preds = %12
  store i32 %7, ptr %14, align 8, !tbaa !79
  br label %24

24:                                               ; preds = %17, %22, %23, %12
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef nonnull %3) #4
  br label %25

25:                                               ; preds = %2, %24
  %26 = phi i32 [ 4, %24 ], [ 2, %2 ]
  ret i32 %26
}

; Function Attrs: optsize
declare i32 @ED_operator_timeline_active(ptr noundef) #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @time_set_efra_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !80 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 13
  %9 = load i16, ptr %8, align 8, !tbaa !74
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 7
  store i32 %7, ptr %13, align 8, !tbaa !79
  %14 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !76
  %16 = icmp sgt i32 %15, %7
  br i1 %16, label %23, label %24

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 10
  store i32 %7, ptr %18, align 4, !tbaa !78
  %19 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 9
  %20 = load i32, ptr %19, align 4, !tbaa !76
  %21 = icmp sgt i32 %20, %7
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  store i32 %7, ptr %19, align 8, !tbaa !77
  br label %24

23:                                               ; preds = %12
  store i32 %7, ptr %14, align 4, !tbaa !75
  br label %24

24:                                               ; preds = %17, %22, %23, %12
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef nonnull %3) #4
  br label %25

25:                                               ; preds = %2, %24
  %26 = phi i32 [ 4, %24 ], [ 2, %2 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @time_view_all_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !81 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #4
  %5 = icmp eq ptr %4, null
  %6 = icmp eq ptr %3, null
  %7 = select i1 %6, i1 true, i1 %5
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 13
  %10 = load i16, ptr %9, align 8, !tbaa !74
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  %13 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 9
  %14 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 6
  %15 = select i1 %12, ptr %14, ptr %13
  %16 = load i32, ptr %15, align 4, !tbaa !76
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1
  store float %17, ptr %18, align 8, !tbaa !82
  %19 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 10
  %20 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 7
  %21 = select i1 %12, ptr %20, ptr %19
  %22 = load i32, ptr %21, align 4, !tbaa !76
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 1
  store float %23, ptr %24, align 4, !tbaa !84
  %25 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %18) #5
  %26 = fmul float %25, 0x3F847AE140000000
  %27 = fsub float %17, %26
  store float %27, ptr %18, align 8, !tbaa !82
  %28 = fadd float %26, %23
  store float %28, ptr %24, align 4, !tbaa !84
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %4) #4
  br label %29

29:                                               ; preds = %2, %8
  %30 = phi i32 [ 4, %8 ], [ 2, %2 ]
  ret i32 %30
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !85 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !86
  %4 = load float, ptr %0, align 4, !tbaa !87
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

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
!34 = !{!"time_ops.c:TIME_OT_start_frame_set"}
!35 = !{!36, !37, i64 0}
!36 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !40, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152, !42, i64 184}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"ListBase", !37, i64 0, !37, i64 8}
!41 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!42 = !{!"short", !38, i64 0}
!43 = !{!36, !37, i64 8}
!44 = !{!36, !37, i64 24}
!45 = !{!36, !37, i64 32}
!46 = !{!36, !37, i64 72}
!47 = !{!36, !42, i64 184}
!48 = !{!"time_ops.c:TIME_OT_end_frame_set"}
!49 = !{!"time_ops.c:TIME_OT_view_all"}
!50 = !{!"time_ops.c:time_set_sfra_exec"}
!51 = !{!52, !54, i64 680}
!52 = !{!"Scene", !53, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !40, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !54, i64 232, !54, i64 236, !54, i64 240, !42, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !55, i64 280, !65, i64 4264, !40, i64 4296, !40, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !42, i64 4376, !42, i64 4378, !54, i64 4380, !40, i64 4384, !66, i64 4400, !67, i64 4416, !70, i64 4600, !37, i64 4608, !71, i64 4616, !37, i64 4640, !72, i64 4648, !72, i64 4656, !58, i64 4664, !59, i64 4824, !73, i64 4888, !37, i64 4952}
!53 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !42, i64 98, !54, i64 100, !54, i64 104, !54, i64 108, !37, i64 112}
!54 = !{!"int", !38, i64 0}
!55 = !{!"RenderData", !56, i64 0, !37, i64 248, !37, i64 256, !60, i64 264, !61, i64 328, !54, i64 400, !54, i64 404, !54, i64 408, !57, i64 412, !54, i64 416, !54, i64 420, !54, i64 424, !54, i64 428, !42, i64 432, !42, i64 434, !57, i64 436, !57, i64 440, !57, i64 444, !57, i64 448, !57, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !54, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !54, i64 484, !54, i64 488, !42, i64 492, !42, i64 494, !54, i64 496, !54, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !38, i64 514, !38, i64 515, !54, i64 516, !54, i64 520, !54, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !62, i64 544, !62, i64 560, !63, i64 576, !40, i64 592, !42, i64 608, !42, i64 610, !57, i64 612, !57, i64 616, !57, i64 620, !57, i64 624, !54, i64 628, !57, i64 632, !57, i64 636, !57, i64 640, !57, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !57, i64 660, !57, i64 664, !42, i64 668, !42, i64 670, !57, i64 672, !57, i64 676, !38, i64 680, !54, i64 1704, !42, i64 1708, !42, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !54, i64 2520, !42, i64 2524, !42, i64 2526, !57, i64 2528, !57, i64 2532, !42, i64 2536, !42, i64 2538, !57, i64 2540, !42, i64 2544, !42, i64 2546, !54, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !57, i64 2560, !57, i64 2564, !37, i64 2568, !54, i64 2576, !57, i64 2580, !38, i64 2584, !64, i64 2616, !54, i64 3976, !54, i64 3980}
!56 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !42, i64 8, !42, i64 10, !57, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !58, i64 24, !59, i64 184}
!57 = !{!"float", !38, i64 0}
!58 = !{!"ColorManagedViewSettings", !54, i64 0, !54, i64 4, !38, i64 8, !38, i64 72, !57, i64 136, !57, i64 140, !37, i64 144, !37, i64 152}
!59 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!60 = !{!"QuicktimeCodecSettings", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !54, i64 40, !54, i64 44, !42, i64 48, !42, i64 50, !54, i64 52, !54, i64 56, !54, i64 60}
!61 = !{!"FFMpegCodecData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !57, i64 32, !54, i64 36, !54, i64 40, !54, i64 44, !54, i64 48, !54, i64 52, !54, i64 56, !54, i64 60, !37, i64 64}
!62 = !{!"rctf", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12}
!63 = !{!"rcti", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!64 = !{!"BakeData", !56, i64 0, !38, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !57, i64 1280, !57, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!65 = !{!"AudioData", !54, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !54, i64 16, !42, i64 20, !42, i64 22, !57, i64 24, !57, i64 28}
!66 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!67 = !{!"GameData", !66, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !38, i64 34, !68, i64 40, !42, i64 64, !42, i64 66, !57, i64 68, !69, i64 72, !57, i64 128, !57, i64 132, !54, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !57, i64 164, !57, i64 168, !57, i64 172, !57, i64 176, !57, i64 180}
!68 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !57, i64 8, !57, i64 12, !37, i64 16}
!69 = !{!"RecastData", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !54, i64 40, !57, i64 44, !57, i64 48, !42, i64 52, !42, i64 54}
!70 = !{!"UnitSettings", !57, i64 0, !38, i64 4, !38, i64 5, !42, i64 6}
!71 = !{!"PhysicsSettings", !38, i64 0, !54, i64 12, !54, i64 16, !54, i64 20}
!72 = !{!"long", !38, i64 0}
!73 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!74 = !{!52, !42, i64 712}
!75 = !{!52, !54, i64 684}
!76 = !{!54, !54, i64 0}
!77 = !{!52, !54, i64 696}
!78 = !{!52, !54, i64 700}
!79 = !{!52, !54, i64 688}
!80 = !{!"time_ops.c:time_set_efra_exec"}
!81 = !{!"time_ops.c:time_view_all_exec"}
!82 = !{!83, !57, i64 16}
!83 = !{!"View2D", !62, i64 0, !62, i64 16, !63, i64 32, !63, i64 48, !63, i64 64, !38, i64 80, !38, i64 88, !57, i64 96, !57, i64 100, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !37, i64 128, !54, i64 136, !54, i64 140, !37, i64 144, !37, i64 152}
!84 = !{!83, !57, i64 20}
!85 = !{!"time_ops.c:BLI_rctf_size_x"}
!86 = !{!62, !57, i64 4}
!87 = !{!62, !57, i64 0}
