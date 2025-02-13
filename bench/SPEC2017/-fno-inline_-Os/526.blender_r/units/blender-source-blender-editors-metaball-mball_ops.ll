; ModuleID = 'blender/source/blender/editors/metaball/mball_ops.c'
source_filename = "blender/source/blender/editors/metaball/mball_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorTypeMacro = type { ptr, ptr, [64 x i8], ptr, ptr }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }

@.str = private unnamed_addr constant [24 x i8] c"MBALL_OT_duplicate_move\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Duplicate\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Make copies of the selected bones within the same armature and move them\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"MBALL_OT_duplicate_metaelems\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_translate\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"proportional\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Metaball\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"OBJECT_OT_metaball_add\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"MBALL_OT_reveal_metaelems\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"MBALL_OT_hide_metaelems\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"MBALL_OT_delete_metaelems\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"MBALL_OT_select_all\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"MBALL_OT_select_similar\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatortypes_metaball() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @MBALL_OT_delete_metaelems) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MBALL_OT_duplicate_metaelems) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MBALL_OT_hide_metaelems) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MBALL_OT_reveal_metaelems) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MBALL_OT_select_all) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MBALL_OT_select_similar) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MBALL_OT_select_random_metaelems) #2
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @MBALL_OT_delete_metaelems(ptr noundef) #1

; Function Attrs: optsize
declare void @MBALL_OT_duplicate_metaelems(ptr noundef) #1

; Function Attrs: optsize
declare void @MBALL_OT_hide_metaelems(ptr noundef) #1

; Function Attrs: optsize
declare void @MBALL_OT_reveal_metaelems(ptr noundef) #1

; Function Attrs: optsize
declare void @MBALL_OT_select_all(ptr noundef) #1

; Function Attrs: optsize
declare void @MBALL_OT_select_similar(ptr noundef) #1

; Function Attrs: optsize
declare void @MBALL_OT_select_random_metaelems(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatormacros_metaball() local_unnamed_addr #0 {
  %1 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 3) #2
  %2 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.3) #2
  %3 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.4) #2
  %4 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @RNA_enum_set(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef 0) #2
  ret void
}

; Function Attrs: optsize
declare ptr @WM_operatortype_append_macro(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_operatortype_macro_define(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_keymap_metaball(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0) #2
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 9
  store ptr @ED_operator_editmball, ptr %3, align 8, !tbaa !39
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 97, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 104, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %6, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %8, ptr noundef nonnull @.str.10, i32 noundef 0) #2
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 104, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef 1) #2
  %12 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %13 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %15 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %16 = getelementptr inbounds %struct.wmKeyMapItem, ptr %15, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %17, ptr noundef nonnull @.str.13, i32 noundef 0) #2
  %18 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %19 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %20, ptr noundef nonnull @.str.13, i32 noundef 3) #2
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 103, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  tail call void @ED_keymap_proportional_cycle(ptr noundef %0, ptr noundef %2) #2
  tail call void @ED_keymap_proportional_editmode(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 1) #2
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_operator_editmball(ptr noundef) #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_keymap_proportional_cycle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_keymap_proportional_editmode(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }

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
!34 = !{!35, !36, i64 88}
!35 = !{!"wmOperatorTypeMacro", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 120}
!40 = !{!"wmKeyMap", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 32, !37, i64 48, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !36, i64 120, !36, i64 128}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!"short", !37, i64 0}
!43 = !{!44, !36, i64 176}
!44 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !42, i64 164, !42, i64 166, !42, i64 168, !42, i64 170, !42, i64 172, !42, i64 174, !36, i64 176}
