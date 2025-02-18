; ModuleID = 'blender/source/blender/editors/space_sequencer/sequencer_modifier.c'
source_filename = "blender/source/blender/editors/space_sequencer/sequencer_modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.SequenceModifierData = type { ptr, ptr, i32, i32, [64 x i8], i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [19 x i8] c"Add Strip Modifier\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"SEQUENCER_OT_strip_modifier_add\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Add a modifier to the strip\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@sequence_modifier_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Remove Strip Modifier\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"SEQUENCER_OT_strip_modifier_remove\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Remove a modifier from the strip\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Name of modifier to remove\00", align 1
@SEQUENCER_OT_strip_modifier_move.direction_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 1, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Move modifier up in the stack\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Move modifier down in the stack\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Move Strip Modifier\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"SEQUENCER_OT_strip_modifier_move\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"Move modifier up and down in the stack\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"direction\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_strip_modifier_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @strip_modifier_add_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @strip_modifier_active_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull @sequence_modifier_type_items, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #3
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @strip_modifier_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #3
  %4 = tail call ptr @BKE_sequencer_active_get(ptr noundef %3) #3
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.3) #3
  %8 = tail call ptr @BKE_sequence_modifier_new(ptr noundef %4, ptr noundef null, i32 noundef %7) #3
  tail call void @BKE_sequence_invalidate_cache(ptr noundef %3, ptr noundef %4) #3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #3
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @strip_modifier_active_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #3
  %3 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %2, i8 noundef zeroext 0) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BKE_sequencer_active_get(ptr noundef %2) #3
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @BKE_sequence_supports_modifiers(ptr noundef nonnull %6) #3
  br label %10

10:                                               ; preds = %5, %8
  %11 = phi i32 [ %9, %8 ], [ undef, %5 ]
  br i1 %7, label %12, label %13

12:                                               ; preds = %10, %1
  br label %13

13:                                               ; preds = %10, %12
  %14 = phi i32 [ 0, %12 ], [ %11, %10 ]
  ret i32 %14
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_strip_modifier_remove(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @strip_modifier_remove_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @strip_modifier_active_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 64, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @strip_modifier_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #3
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %4) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #3
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  call void @RNA_string_get(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef nonnull %3) #3
  %8 = call ptr @BKE_sequence_modifier_find_by_name(ptr noundef %5, ptr noundef nonnull %3) #3
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 51
  call void @BLI_remlink(ptr noundef nonnull %11, ptr noundef nonnull %8) #3
  call void @BKE_sequence_modifier_free(ptr noundef nonnull %8) #3
  call void @BKE_sequence_invalidate_cache(ptr noundef %4, ptr noundef %5) #3
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %4) #3
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i32 [ 4, %10 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #3
  ret i32 %13
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_strip_modifier_move(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @strip_modifier_move_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @strip_modifier_active_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 64, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #3
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.21, ptr noundef nonnull @SEQUENCER_OT_strip_modifier_move.direction_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @strip_modifier_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #3
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %4) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #3
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  call void @RNA_string_get(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef nonnull %3) #3
  %8 = load ptr, ptr %6, align 8, !tbaa !49
  %9 = call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.21) #3
  %10 = call ptr @BKE_sequence_modifier_find_by_name(ptr noundef %5, ptr noundef nonnull %3) #3
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %2
  switch i32 %9, label %26 [
    i32 0, label %13
    i32 1, label %20
  ]

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.SequenceModifierData, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 51
  call void @BLI_remlink(ptr noundef nonnull %18, ptr noundef nonnull %10) #3
  %19 = load ptr, ptr %14, align 8, !tbaa !51
  call void @BLI_insertlinkbefore(ptr noundef nonnull %18, ptr noundef %19, ptr noundef nonnull %10) #3
  br label %26

20:                                               ; preds = %12
  %21 = load ptr, ptr %10, align 8, !tbaa !54
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 51
  call void @BLI_remlink(ptr noundef nonnull %24, ptr noundef nonnull %10) #3
  %25 = load ptr, ptr %10, align 8, !tbaa !54
  call void @BLI_insertlinkafter(ptr noundef nonnull %24, ptr noundef %25, ptr noundef nonnull %10) #3
  br label %26

26:                                               ; preds = %12, %23, %20, %13, %17
  call void @BKE_sequence_invalidate_cache(ptr noundef %4, ptr noundef %5) #3
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %4) #3
  br label %27

27:                                               ; preds = %2, %26
  %28 = phi i32 [ 4, %26 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #3
  ret i32 %28
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_sequencer_active_get(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_sequence_modifier_new(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_sequence_invalidate_cache(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @BKE_sequence_supports_modifiers(ptr noundef) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_sequence_modifier_find_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_sequence_modifier_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!51 = !{!52, !36, i64 8}
!52 = !{!"SequenceModifierData", !36, i64 0, !36, i64 8, !53, i64 16, !53, i64 20, !37, i64 24, !53, i64 88, !53, i64 92, !36, i64 96, !36, i64 104}
!53 = !{!"int", !37, i64 0}
!54 = !{!52, !36, i64 0}
