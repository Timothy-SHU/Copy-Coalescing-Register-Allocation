; ModuleID = 'blender/source/blender/editors/space_action/action_ops.c'
source_filename = "blender/source/blender/editors/space_action/action_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorTypeMacro = type { ptr, ptr, [64 x i8], ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }

@.str = private unnamed_addr constant [25 x i8] c"ACTION_OT_duplicate_move\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Duplicate\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Make a copy of all selected keyframes and move them\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"ACTION_OT_duplicate\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_transform\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Dopesheet\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"ACTION_OT_clickselect\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"column\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"ACTION_OT_select_leftright\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"ACTION_OT_select_all_toggle\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"ACTION_OT_select_border\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"axis_range\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"ACTION_OT_select_column\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"ACTION_OT_select_more\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"ACTION_OT_select_less\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"ACTION_OT_select_linked\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"ACTION_OT_frame_jump\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"ACTION_OT_snap\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"ACTION_OT_mirror\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"ACTION_OT_handle_type\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"ACTION_OT_interpolation_type\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"ACTION_OT_extrapolation_type\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"ACTION_OT_keyframe_type\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"ACTION_OT_clean\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"ACTION_OT_sample\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"ACTION_OT_delete\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"ACTION_OT_keyframe_insert\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"ACTION_OT_copy\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"ACTION_OT_paste\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"ACTION_OT_previewrange_set\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"ACTION_OT_view_all\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"ACTION_OT_view_selected\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"ANIM_OT_channels_editable_toggle\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"ANIM_OT_channels_find\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @action_operatortypes() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_clickselect) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_select_all_toggle) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_select_border) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_select_column) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_select_linked) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_select_more) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_select_less) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_select_leftright) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_snap) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_mirror) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_frame_jump) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_handle_type) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_interpolation_type) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_extrapolation_type) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_keyframe_type) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_sample) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_clean) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_delete) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_duplicate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_keyframe_insert) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_copy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_paste) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_new) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_previewrange_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_view_all) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_view_selected) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ACTION_OT_markers_make_local) #2
  ret void
}

declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

declare void @ACTION_OT_clickselect(ptr noundef) #1

declare void @ACTION_OT_select_all_toggle(ptr noundef) #1

declare void @ACTION_OT_select_border(ptr noundef) #1

declare void @ACTION_OT_select_column(ptr noundef) #1

declare void @ACTION_OT_select_linked(ptr noundef) #1

declare void @ACTION_OT_select_more(ptr noundef) #1

declare void @ACTION_OT_select_less(ptr noundef) #1

declare void @ACTION_OT_select_leftright(ptr noundef) #1

declare void @ACTION_OT_snap(ptr noundef) #1

declare void @ACTION_OT_mirror(ptr noundef) #1

declare void @ACTION_OT_frame_jump(ptr noundef) #1

declare void @ACTION_OT_handle_type(ptr noundef) #1

declare void @ACTION_OT_interpolation_type(ptr noundef) #1

declare void @ACTION_OT_extrapolation_type(ptr noundef) #1

declare void @ACTION_OT_keyframe_type(ptr noundef) #1

declare void @ACTION_OT_sample(ptr noundef) #1

declare void @ACTION_OT_clean(ptr noundef) #1

declare void @ACTION_OT_delete(ptr noundef) #1

declare void @ACTION_OT_duplicate(ptr noundef) #1

declare void @ACTION_OT_keyframe_insert(ptr noundef) #1

declare void @ACTION_OT_copy(ptr noundef) #1

declare void @ACTION_OT_paste(ptr noundef) #1

declare void @ACTION_OT_new(ptr noundef) #1

declare void @ACTION_OT_previewrange_set(ptr noundef) #1

declare void @ACTION_OT_view_all(ptr noundef) #1

declare void @ACTION_OT_view_selected(ptr noundef) #1

declare void @ACTION_OT_markers_make_local(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_operatormacros_action() local_unnamed_addr #0 {
  %1 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 3) #2
  %2 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.3) #2
  %3 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.4) #2
  %4 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @RNA_enum_set(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef 23) #2
  ret void
}

declare ptr @WM_operatortype_append_macro(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_operatortype_macro_define(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @action_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 12, i32 noundef 0) #2
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef 0) #2
  %6 = load ptr, ptr %4, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %6, ptr noundef nonnull @.str.9, i32 noundef 0) #2
  %7 = load ptr, ptr %4, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef 0) #2
  %8 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 6, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %9 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %10, ptr noundef nonnull @.str.8, i32 noundef 0) #2
  %11 = load ptr, ptr %9, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %11, ptr noundef nonnull @.str.9, i32 noundef 1) #2
  %12 = load ptr, ptr %9, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %12, ptr noundef nonnull @.str.10, i32 noundef 0) #2
  %13 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %14 = getelementptr inbounds %struct.wmKeyMapItem, ptr %13, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %15, ptr noundef nonnull @.str.8, i32 noundef 1) #2
  %16 = load ptr, ptr %14, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.9, i32 noundef 0) #2
  %17 = load ptr, ptr %14, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %17, ptr noundef nonnull @.str.10, i32 noundef 0) #2
  %18 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 6, i32 noundef 1, i32 noundef 5, i32 noundef 0) #2
  %19 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %20, ptr noundef nonnull @.str.8, i32 noundef 1) #2
  %21 = load ptr, ptr %19, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %21, ptr noundef nonnull @.str.9, i32 noundef 1) #2
  %22 = load ptr, ptr %19, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef 0) #2
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 6, i32 noundef 1, i32 noundef 6, i32 noundef 0) #2
  %24 = getelementptr inbounds %struct.wmKeyMapItem, ptr %23, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %25, ptr noundef nonnull @.str.8, i32 noundef 0) #2
  %26 = load ptr, ptr %24, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %26, ptr noundef nonnull @.str.9, i32 noundef 0) #2
  %27 = load ptr, ptr %24, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %27, ptr noundef nonnull @.str.10, i32 noundef 1) #2
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 6, i32 noundef 1, i32 noundef 7, i32 noundef 0) #2
  %29 = getelementptr inbounds %struct.wmKeyMapItem, ptr %28, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %30, ptr noundef nonnull @.str.8, i32 noundef 1) #2
  %31 = load ptr, ptr %29, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %31, ptr noundef nonnull @.str.9, i32 noundef 0) #2
  %32 = load ptr, ptr %29, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %32, ptr noundef nonnull @.str.10, i32 noundef 1) #2
  %33 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 6, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %34 = getelementptr inbounds %struct.wmKeyMapItem, ptr %33, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %35, ptr noundef nonnull @.str.8, i32 noundef 0) #2
  %36 = load ptr, ptr %34, align 8, !tbaa !39
  tail call void @RNA_enum_set(ptr noundef %36, ptr noundef nonnull @.str.5, i32 noundef 0) #2
  %37 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 6, i32 noundef 1, i32 noundef 3, i32 noundef 0) #2
  %38 = getelementptr inbounds %struct.wmKeyMapItem, ptr %37, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %39, ptr noundef nonnull @.str.8, i32 noundef 1) #2
  %40 = load ptr, ptr %38, align 8, !tbaa !39
  tail call void @RNA_enum_set(ptr noundef %40, ptr noundef nonnull @.str.5, i32 noundef 0) #2
  %41 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 235, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %42 = getelementptr inbounds %struct.wmKeyMapItem, ptr %41, i64 0, i32 17
  %43 = load ptr, ptr %42, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %43, ptr noundef nonnull @.str.8, i32 noundef 0) #2
  %44 = load ptr, ptr %42, align 8, !tbaa !39
  tail call void @RNA_enum_set(ptr noundef %44, ptr noundef nonnull @.str.5, i32 noundef 1) #2
  %45 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 236, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %46 = getelementptr inbounds %struct.wmKeyMapItem, ptr %45, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %47, ptr noundef nonnull @.str.8, i32 noundef 0) #2
  %48 = load ptr, ptr %46, align 8, !tbaa !39
  tail call void @RNA_enum_set(ptr noundef %48, ptr noundef nonnull @.str.5, i32 noundef 2) #2
  %49 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %50 = getelementptr inbounds %struct.wmKeyMapItem, ptr %49, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %51, ptr noundef nonnull @.str.13, i32 noundef 0) #2
  %52 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %53 = getelementptr inbounds %struct.wmKeyMapItem, ptr %52, i64 0, i32 17
  %54 = load ptr, ptr %53, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %54, ptr noundef nonnull @.str.13, i32 noundef 1) #2
  %55 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %56 = getelementptr inbounds %struct.wmKeyMapItem, ptr %55, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %57, ptr noundef nonnull @.str.15, i32 noundef 0) #2
  %58 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 98, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %59 = getelementptr inbounds %struct.wmKeyMapItem, ptr %58, i64 0, i32 17
  %60 = load ptr, ptr %59, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %60, ptr noundef nonnull @.str.15, i32 noundef 1) #2
  %61 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 107, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %62 = getelementptr inbounds %struct.wmKeyMapItem, ptr %61, i64 0, i32 17
  %63 = load ptr, ptr %62, align 8, !tbaa !39
  tail call void @RNA_enum_set(ptr noundef %63, ptr noundef nonnull @.str.5, i32 noundef 0) #2
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 107, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %65 = getelementptr inbounds %struct.wmKeyMapItem, ptr %64, i64 0, i32 17
  %66 = load ptr, ptr %65, align 8, !tbaa !39
  tail call void @RNA_enum_set(ptr noundef %66, ptr noundef nonnull @.str.5, i32 noundef 1) #2
  %67 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 107, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %68 = getelementptr inbounds %struct.wmKeyMapItem, ptr %67, i64 0, i32 17
  %69 = load ptr, ptr %68, align 8, !tbaa !39
  tail call void @RNA_enum_set(ptr noundef %69, ptr noundef nonnull @.str.5, i32 noundef 2) #2
  %70 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 107, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %71 = getelementptr inbounds %struct.wmKeyMapItem, ptr %70, i64 0, i32 17
  %72 = load ptr, ptr %71, align 8, !tbaa !39
  tail call void @RNA_enum_set(ptr noundef %72, ptr noundef nonnull @.str.5, i32 noundef 3) #2
  %73 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 164, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %74 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 162, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %75 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %76 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef 103, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %77 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %78 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef 109, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %79 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %80 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef 116, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %81 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef 101, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %82 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %83 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef 111, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %84 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef 111, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %85 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %86 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %87 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %88 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef 105, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %89 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.31, i32 noundef 99, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %90 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef 118, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %91 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.33, i32 noundef 112, i32 noundef 1, i32 noundef 6, i32 noundef 0) #2
  %92 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %93 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef 402, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %94 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.35, i32 noundef 199, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %95 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.36, i32 noundef 219, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %96 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef 102, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  tail call void @transform_keymap_for_space(ptr noundef %0, ptr noundef %2, i32 noundef 12) #2
  tail call void @ED_marker_keymap_animedit_conflictfree(ptr noundef %2) #2
  ret void
}

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @transform_keymap_for_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ED_marker_keymap_animedit_conflictfree(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!34 = !{!35, !36, i64 88}
!35 = !{!"wmOperatorTypeMacro", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 176}
!40 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !36, i64 176}
!41 = !{!"short", !37, i64 0}
