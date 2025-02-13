; ModuleID = 'blender/source/blender/editors/space_outliner/outliner_ops.c'
source_filename = "blender/source/blender/editors/space_outliner/outliner_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }

@.str = private unnamed_addr constant [9 x i8] c"Outliner\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"OUTLINER_OT_item_rename\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"OUTLINER_OT_item_activate\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"OUTLINER_OT_select_border\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"OUTLINER_OT_item_openclose\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"OUTLINER_OT_operation\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"OUTLINER_OT_show_hierarchy\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"OUTLINER_OT_show_active\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"OUTLINER_OT_scroll_page\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"OUTLINER_OT_show_one_level\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"OUTLINER_OT_selected_toggle\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"OUTLINER_OT_expanded_toggle\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"OUTLINER_OT_renderability_toggle\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"OUTLINER_OT_selectability_toggle\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"OUTLINER_OT_visibility_toggle\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"OUTLINER_OT_keyingset_add_selected\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"OUTLINER_OT_keyingset_remove_selected\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"ANIM_OT_keyframe_insert\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"ANIM_OT_keyframe_delete\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"OUTLINER_OT_drivers_add_selected\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"OUTLINER_OT_drivers_delete_selected\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @outliner_operatortypes() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_item_activate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_select_border) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_item_openclose) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_item_rename) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_operation) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_object_operation) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_group_operation) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_id_operation) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_data_operation) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_animdata_operation) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_action_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_show_one_level) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_show_active) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_show_hierarchy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_scroll_page) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_selected_toggle) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_expanded_toggle) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_renderability_toggle) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_selectability_toggle) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_visibility_toggle) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_keyingset_add_selected) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_keyingset_remove_selected) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_drivers_add_selected) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_drivers_delete_selected) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_parent_drop) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_parent_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_scene_drop) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OUTLINER_OT_material_drop) #2
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @OUTLINER_OT_item_activate(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_select_border(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_item_openclose(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_item_rename(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_operation(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_object_operation(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_group_operation(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_id_operation(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_data_operation(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_animdata_operation(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_action_set(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_show_one_level(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_show_active(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_show_hierarchy(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_scroll_page(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_selected_toggle(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_expanded_toggle(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_renderability_toggle(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_selectability_toggle(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_visibility_toggle(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_keyingset_add_selected(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_keyingset_remove_selected(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_drivers_add_selected(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_drivers_delete_selected(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_parent_drop(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_parent_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_scene_drop(ptr noundef) #1

; Function Attrs: optsize
declare void @OUTLINER_OT_material_drop(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @outliner_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 3, i32 noundef 0) #2
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 0) #2
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 3, i32 noundef 0, i32 noundef 0) #2
  %5 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef 0) #2
  %7 = load ptr, ptr %5, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef 0) #2
  %8 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 3, i32 noundef 1, i32 noundef 0) #2
  %9 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef 0) #2
  %11 = load ptr, ptr %9, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %11, ptr noundef nonnull @.str.4, i32 noundef 1) #2
  %12 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 3, i32 noundef 2, i32 noundef 0) #2
  %13 = getelementptr inbounds %struct.wmKeyMapItem, ptr %12, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %14, ptr noundef nonnull @.str.3, i32 noundef 1) #2
  %15 = load ptr, ptr %13, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %15, ptr noundef nonnull @.str.4, i32 noundef 0) #2
  %16 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 3, i32 noundef 3, i32 noundef 0) #2
  %17 = getelementptr inbounds %struct.wmKeyMapItem, ptr %16, i64 0, i32 17
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %18, ptr noundef nonnull @.str.3, i32 noundef 1) #2
  %19 = load ptr, ptr %17, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %19, ptr noundef nonnull @.str.4, i32 noundef 1) #2
  %20 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 220, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %22 = getelementptr inbounds %struct.wmKeyMapItem, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %23, ptr noundef nonnull @.str.7, i32 noundef 0) #2
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 220, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %25 = getelementptr inbounds %struct.wmKeyMapItem, ptr %24, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %26, ptr noundef nonnull @.str.7, i32 noundef 1) #2
  %27 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %29 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %30 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 226, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %31 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 199, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %32 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 169, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %33 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 168, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %34 = getelementptr inbounds %struct.wmKeyMapItem, ptr %33, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %35, ptr noundef nonnull @.str.12, i32 noundef 1) #2
  %36 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 164, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %37 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 162, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %38 = getelementptr inbounds %struct.wmKeyMapItem, ptr %37, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %39, ptr noundef nonnull @.str.14, i32 noundef 0) #2
  %40 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %41 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 97, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %42 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %43 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %44 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 118, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %45 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef 107, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %46 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 107, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %47 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef 105, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %48 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 105, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %49 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef 100, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %50 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef 100, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 176}
!6 = !{!"wmKeyMapItem", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !8, i64 88, !10, i64 152, !10, i64 154, !10, i64 156, !10, i64 158, !10, i64 160, !10, i64 162, !10, i64 164, !10, i64 166, !10, i64 168, !10, i64 170, !10, i64 172, !10, i64 174, !7, i64 176}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"short", !8, i64 0}
