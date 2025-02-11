; ModuleID = 'blender/source/blender/editors/space_sequencer/sequencer_ops.c'
source_filename = "blender/source/blender/editors/space_sequencer/sequencer_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }

@.str = private unnamed_addr constant [16 x i8] c"SequencerCommon\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"SEQUENCER_OT_properties\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"WM_OT_context_toggle\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"scene.sequence_editor.show_overlay\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"SEQUENCER_OT_view_toggle\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Sequencer\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"SEQUENCER_OT_select_all\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"SEQUENCER_OT_cut\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"SEQUENCER_OT_mute\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"SEQUENCER_OT_unmute\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"SEQUENCER_OT_lock\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"SEQUENCER_OT_unlock\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"SEQUENCER_OT_reassign_inputs\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"SEQUENCER_OT_reload\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"adjust_length\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"SEQUENCER_OT_offset_clear\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"SEQUENCER_OT_duplicate_move\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"SEQUENCER_OT_delete\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"SEQUENCER_OT_copy\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"SEQUENCER_OT_paste\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"SEQUENCER_OT_images_separate\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"SEQUENCER_OT_meta_toggle\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"SEQUENCER_OT_meta_make\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"SEQUENCER_OT_meta_separate\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"SEQUENCER_OT_view_all\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"SEQUENCER_OT_view_selected\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"SEQUENCER_OT_strip_jump\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"SEQUENCER_OT_swap\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"side\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"SEQUENCER_OT_gap_remove\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"SEQUENCER_OT_gap_insert\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"SEQUENCER_OT_snap\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"SEQUENCER_OT_swap_inputs\00", align 1
@__const.sequencer_keymap.keys = private unnamed_addr constant [10 x i32] [i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 48], align 16
@.str.40 = private unnamed_addr constant [26 x i8] c"SEQUENCER_OT_cut_multicam\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"camera\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"SEQUENCER_OT_select\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"linked_handle\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"left_right\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"linked_time\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"SEQUENCER_OT_select_more\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"SEQUENCER_OT_select_less\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"SEQUENCER_OT_select_linked_pick\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"SEQUENCER_OT_select_linked\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"SEQUENCER_OT_select_border\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"SEQUENCER_OT_select_grouped\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"SEQUENCER_MT_add\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"SEQUENCER_MT_change\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"SEQUENCER_OT_slip\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"WM_OT_context_set_int\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"scene.sequence_editor.overlay_frame\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"SequencerPreview\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"SEQUENCER_OT_view_all_preview\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c"SEQUENCER_OT_view_ghost_border\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"SEQUENCER_OT_view_zoom_ratio\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"ratio\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"SEQUENCER_OT_sample\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"Duplicate Strips\00", align 1
@.str.66 = private unnamed_addr constant [40 x i8] c"Duplicate selected strips and move them\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"SEQUENCER_OT_duplicate\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_translate\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sequencer_operatortypes() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_cut) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_slip) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_mute) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_unmute) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_lock) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_unlock) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_reload) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_refresh_all) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_reassign_inputs) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_swap_inputs) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_duplicate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_delete) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_offset_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_images_separate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_meta_toggle) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_meta_make) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_meta_separate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_gap_remove) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_gap_insert) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_snap) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_strip_jump) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_swap) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_swap_data) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_rendersize) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_copy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_paste) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_view_all) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_view_selected) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_view_all_preview) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_view_toggle) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_view_zoom_ratio) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_view_ghost_border) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_rebuild_proxy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_change_effect_input) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_change_effect_type) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_change_path) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_select_all) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_select) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_select_more) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_select_less) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_select_linked_pick) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_select_linked) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_select_handles) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_select_active_side) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_select_border) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_select_grouped) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_scene_strip_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_movieclip_strip_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_mask_strip_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_movie_strip_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_sound_strip_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_image_strip_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_effect_strip_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_properties) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_strip_modifier_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_strip_modifier_remove) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_strip_modifier_move) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SEQUENCER_OT_sample) #2
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_cut(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_slip(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_mute(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_unmute(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_lock(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_unlock(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_reload(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_refresh_all(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_reassign_inputs(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_swap_inputs(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_duplicate(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_delete(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_offset_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_images_separate(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_meta_toggle(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_meta_make(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_meta_separate(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_gap_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_gap_insert(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_snap(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_strip_jump(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_swap(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_swap_data(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_rendersize(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_copy(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_paste(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_view_all(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_view_selected(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_view_all_preview(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_view_toggle(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_view_zoom_ratio(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_view_ghost_border(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_rebuild_proxy(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_change_effect_input(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_change_effect_type(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_change_path(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_select_all(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_select(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_select_more(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_select_less(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_select_linked_pick(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_select_linked(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_select_handles(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_select_active_side(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_select_border(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_select_grouped(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_scene_strip_add(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_movieclip_strip_add(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_mask_strip_add(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_movie_strip_add(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_sound_strip_add(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_image_strip_add(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_effect_strip_add(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_properties(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_strip_modifier_add(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_strip_modifier_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_strip_modifier_move(ptr noundef) #1

; Function Attrs: optsize
declare void @SEQUENCER_OT_sample(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sequencer_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 8, i32 noundef 0) #2
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 111, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %5 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #2
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 219, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %8 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 8, i32 noundef 0) #2
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %11, ptr noundef nonnull @.str.8, i32 noundef 0) #2
  %12 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %13 = getelementptr inbounds %struct.wmKeyMapItem, ptr %12, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %14, ptr noundef nonnull @.str.8, i32 noundef 3) #2
  %15 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 107, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %16 = getelementptr inbounds %struct.wmKeyMapItem, ptr %15, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %17, ptr noundef nonnull @.str.10, i32 noundef 0) #2
  %18 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 107, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %19 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %20, ptr noundef nonnull @.str.10, i32 noundef 1) #2
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.11, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %22 = getelementptr inbounds %struct.wmKeyMapItem, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %23, ptr noundef nonnull @.str.12, i32 noundef 0) #2
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.11, i32 noundef 104, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %25 = getelementptr inbounds %struct.wmKeyMapItem, ptr %24, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %26, ptr noundef nonnull @.str.12, i32 noundef 1) #2
  %27 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef 104, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %28 = getelementptr inbounds %struct.wmKeyMapItem, ptr %27, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %29, ptr noundef nonnull @.str.12, i32 noundef 0) #2
  %30 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef 104, i32 noundef 1, i32 noundef 5, i32 noundef 0) #2
  %31 = getelementptr inbounds %struct.wmKeyMapItem, ptr %30, i64 0, i32 17
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %32, ptr noundef nonnull @.str.12, i32 noundef 1) #2
  %33 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %34 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 1, i32 noundef 5, i32 noundef 0) #2
  %35 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.16, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %36 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.17, i32 noundef 114, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %37 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.17, i32 noundef 114, i32 noundef 1, i32 noundef 5, i32 noundef 0) #2
  %38 = getelementptr inbounds %struct.wmKeyMapItem, ptr %37, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %39, ptr noundef nonnull @.str.18, i32 noundef 1) #2
  %40 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.19, i32 noundef 111, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %41 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.20, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %42 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %43 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %44 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.22, i32 noundef 99, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %45 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %46 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef 121, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %47 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.25, i32 noundef 219, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %48 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.26, i32 noundef 103, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %49 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.27, i32 noundef 103, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %50 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.28, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %51 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.28, i32 noundef 402, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %52 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.29, i32 noundef 199, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %53 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.30, i32 noundef 168, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %54 = getelementptr inbounds %struct.wmKeyMapItem, ptr %53, i64 0, i32 17
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %55, ptr noundef nonnull @.str.31, i32 noundef 1) #2
  %56 = load ptr, ptr %54, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %56, ptr noundef nonnull @.str.32, i32 noundef 0) #2
  %57 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.30, i32 noundef 169, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %58 = getelementptr inbounds %struct.wmKeyMapItem, ptr %57, i64 0, i32 17
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %59, ptr noundef nonnull @.str.31, i32 noundef 0) #2
  %60 = load ptr, ptr %58, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %60, ptr noundef nonnull @.str.32, i32 noundef 0) #2
  %61 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.30, i32 noundef 168, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %62 = getelementptr inbounds %struct.wmKeyMapItem, ptr %61, i64 0, i32 17
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %63, ptr noundef nonnull @.str.31, i32 noundef 1) #2
  %64 = load ptr, ptr %62, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %64, ptr noundef nonnull @.str.32, i32 noundef 1) #2
  %65 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.30, i32 noundef 169, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %66 = getelementptr inbounds %struct.wmKeyMapItem, ptr %65, i64 0, i32 17
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %67, ptr noundef nonnull @.str.31, i32 noundef 0) #2
  %68 = load ptr, ptr %66, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %68, ptr noundef nonnull @.str.32, i32 noundef 1) #2
  %69 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.33, i32 noundef 137, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %70 = getelementptr inbounds %struct.wmKeyMapItem, ptr %69, i64 0, i32 17
  %71 = load ptr, ptr %70, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %71, ptr noundef nonnull @.str.34, i32 noundef 1) #2
  %72 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.33, i32 noundef 139, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %73 = getelementptr inbounds %struct.wmKeyMapItem, ptr %72, i64 0, i32 17
  %74 = load ptr, ptr %73, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %74, ptr noundef nonnull @.str.34, i32 noundef 2) #2
  %75 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.35, i32 noundef 223, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %76 = getelementptr inbounds %struct.wmKeyMapItem, ptr %75, i64 0, i32 17
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %77, ptr noundef nonnull @.str.36, i32 noundef 0) #2
  %78 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.35, i32 noundef 223, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %79 = getelementptr inbounds %struct.wmKeyMapItem, ptr %78, i64 0, i32 17
  %80 = load ptr, ptr %79, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %80, ptr noundef nonnull @.str.36, i32 noundef 1) #2
  %81 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.37, i32 noundef 234, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %82 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef 115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %83 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.39, i32 noundef 115, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  br label %84

84:                                               ; preds = %1, %84
  %85 = phi i64 [ 1, %1 ], [ %93, %84 ]
  %86 = add nsw i64 %85, -1
  %87 = getelementptr inbounds [10 x i32], ptr @__const.sequencer_keymap.keys, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !11
  %89 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.40, i32 noundef %88, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %90 = getelementptr inbounds %struct.wmKeyMapItem, ptr %89, i64 0, i32 17
  %91 = load ptr, ptr %90, align 8, !tbaa !5
  %92 = trunc i64 %85 to i32
  tail call void @RNA_int_set(ptr noundef %91, ptr noundef nonnull @.str.41, i32 noundef %92) #2
  %93 = add nuw nsw i64 %85, 1
  %94 = icmp eq i64 %93, 11
  br i1 %94, label %95, label %84, !llvm.loop !13

95:                                               ; preds = %84
  %96 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %97 = getelementptr inbounds %struct.wmKeyMapItem, ptr %96, i64 0, i32 17
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %98, ptr noundef nonnull @.str.43, i32 noundef 0) #2
  %99 = load ptr, ptr %97, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %99, ptr noundef nonnull @.str.44, i32 noundef 0) #2
  %100 = load ptr, ptr %97, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %100, ptr noundef nonnull @.str.45, i32 noundef 0) #2
  %101 = load ptr, ptr %97, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %101, ptr noundef nonnull @.str.46, i32 noundef 0) #2
  %102 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %103 = getelementptr inbounds %struct.wmKeyMapItem, ptr %102, i64 0, i32 17
  %104 = load ptr, ptr %103, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %104, ptr noundef nonnull @.str.43, i32 noundef 1) #2
  %105 = load ptr, ptr %103, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %105, ptr noundef nonnull @.str.44, i32 noundef 0) #2
  %106 = load ptr, ptr %103, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %106, ptr noundef nonnull @.str.45, i32 noundef 0) #2
  %107 = load ptr, ptr %103, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %107, ptr noundef nonnull @.str.46, i32 noundef 0) #2
  %108 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef 6, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %109 = getelementptr inbounds %struct.wmKeyMapItem, ptr %108, i64 0, i32 17
  %110 = load ptr, ptr %109, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %110, ptr noundef nonnull @.str.43, i32 noundef 0) #2
  %111 = load ptr, ptr %109, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %111, ptr noundef nonnull @.str.44, i32 noundef 1) #2
  %112 = load ptr, ptr %109, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %112, ptr noundef nonnull @.str.45, i32 noundef 0) #2
  %113 = load ptr, ptr %109, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %113, ptr noundef nonnull @.str.46, i32 noundef 0) #2
  %114 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef 6, i32 noundef 1, i32 noundef 5, i32 noundef 0) #2
  %115 = getelementptr inbounds %struct.wmKeyMapItem, ptr %114, i64 0, i32 17
  %116 = load ptr, ptr %115, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %116, ptr noundef nonnull @.str.43, i32 noundef 1) #2
  %117 = load ptr, ptr %115, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %117, ptr noundef nonnull @.str.44, i32 noundef 1) #2
  %118 = load ptr, ptr %115, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %118, ptr noundef nonnull @.str.45, i32 noundef 0) #2
  %119 = load ptr, ptr %115, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %119, ptr noundef nonnull @.str.46, i32 noundef 0) #2
  %120 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef 6, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %121 = getelementptr inbounds %struct.wmKeyMapItem, ptr %120, i64 0, i32 17
  %122 = load ptr, ptr %121, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %122, ptr noundef nonnull @.str.43, i32 noundef 0) #2
  %123 = load ptr, ptr %121, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %123, ptr noundef nonnull @.str.44, i32 noundef 0) #2
  %124 = load ptr, ptr %121, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %124, ptr noundef nonnull @.str.45, i32 noundef 1) #2
  %125 = load ptr, ptr %121, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %125, ptr noundef nonnull @.str.46, i32 noundef 1) #2
  %126 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef 6, i32 noundef 1, i32 noundef 3, i32 noundef 0) #2
  %127 = getelementptr inbounds %struct.wmKeyMapItem, ptr %126, i64 0, i32 17
  %128 = load ptr, ptr %127, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %128, ptr noundef nonnull @.str.43, i32 noundef 1) #2
  %129 = load ptr, ptr %127, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %129, ptr noundef nonnull @.str.44, i32 noundef 0) #2
  %130 = load ptr, ptr %127, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %130, ptr noundef nonnull @.str.45, i32 noundef 0) #2
  %131 = load ptr, ptr %127, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %131, ptr noundef nonnull @.str.46, i32 noundef 1) #2
  %132 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef 164, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %133 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.48, i32 noundef 162, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %134 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.49, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %135 = getelementptr inbounds %struct.wmKeyMapItem, ptr %134, i64 0, i32 17
  %136 = load ptr, ptr %135, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %136, ptr noundef nonnull @.str.43, i32 noundef 0) #2
  %137 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.49, i32 noundef 108, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %138 = getelementptr inbounds %struct.wmKeyMapItem, ptr %137, i64 0, i32 17
  %139 = load ptr, ptr %138, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %139, ptr noundef nonnull @.str.43, i32 noundef 1) #2
  %140 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.50, i32 noundef 108, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %141 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.51, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %142 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.52, i32 noundef 103, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %143 = tail call ptr @WM_keymap_add_menu(ptr noundef %8, ptr noundef nonnull @.str.53, i32 noundef 97, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %144 = tail call ptr @WM_keymap_add_menu(ptr noundef %8, ptr noundef nonnull @.str.54, i32 noundef 99, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %145 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.55, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %146 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.56, i32 noundef 111, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %147 = getelementptr inbounds %struct.wmKeyMapItem, ptr %146, i64 0, i32 17
  %148 = load ptr, ptr %147, align 8, !tbaa !5
  tail call void @RNA_string_set(ptr noundef %148, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.57) #2
  %149 = load ptr, ptr %147, align 8, !tbaa !5
  tail call void @RNA_int_set(ptr noundef %149, ptr noundef nonnull @.str.58, i32 noundef 0) #2
  tail call void @transform_keymap_for_space(ptr noundef %0, ptr noundef %8, i32 noundef 8) #2
  tail call void @ED_marker_keymap_animedit_conflictfree(ptr noundef %8) #2
  %150 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.59, i32 noundef 8, i32 noundef 0) #2
  %151 = tail call ptr @WM_keymap_add_item(ptr noundef %150, ptr noundef nonnull @.str.60, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %152 = tail call ptr @WM_keymap_add_item(ptr noundef %150, ptr noundef nonnull @.str.60, i32 noundef 402, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %153 = tail call ptr @WM_keymap_add_item(ptr noundef %150, ptr noundef nonnull @.str.61, i32 noundef 111, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %154 = tail call ptr @WM_keymap_add_item(ptr noundef %150, ptr noundef nonnull @.str.62, i32 noundef 151, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %155 = getelementptr inbounds %struct.wmKeyMapItem, ptr %154, i64 0, i32 17
  %156 = load ptr, ptr %155, align 8, !tbaa !5
  tail call void @RNA_float_set(ptr noundef %156, ptr noundef nonnull @.str.63, float noundef 1.000000e+00) #2
  %157 = tail call ptr @WM_keymap_add_item(ptr noundef %150, ptr noundef nonnull @.str.64, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_menu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @transform_keymap_for_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_marker_keymap_animedit_conflictfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatormacros_sequencer() local_unnamed_addr #0 {
  %1 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 3) #2
  %2 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.67) #2
  %3 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.68) #2
  ret void
}

; Function Attrs: optsize
declare ptr @WM_operatortype_append_macro(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_operatortype_macro_define(ptr noundef, ptr noundef) local_unnamed_addr #1

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
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
