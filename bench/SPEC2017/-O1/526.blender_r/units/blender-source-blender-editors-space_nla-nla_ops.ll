; ModuleID = 'blender/source/blender/editors/space_nla/nla_ops.c'
source_filename = "blender/source/blender/editors/space_nla/nla_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.ListBase = type { ptr, ptr }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }

@.str = private unnamed_addr constant [12 x i8] c"NLA Generic\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"NLA_OT_properties\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"NLA_OT_tweakmode_enter\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"NLA_OT_tweakmode_exit\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"ANIM_OT_channels_find\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"NLA Channels\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"NLA Editor\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"NLA_OT_channels_click\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"NLA_OT_tracks_add\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"above_selected\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"NLA_OT_tracks_delete\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"NLA_OT_click_select\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"NLA_OT_select_leftright\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"NLA_OT_select_all_toggle\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"NLA_OT_select_border\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"axis_range\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"NLA_OT_previewrange_set\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"NLA_OT_view_all\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"NLA_OT_view_selected\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"NLA_OT_actionclip_add\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"NLA_OT_transition_add\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"NLA_OT_soundclip_add\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"NLA_OT_meta_add\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"NLA_OT_meta_remove\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"NLA_OT_duplicate\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"linked\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"NLA_OT_make_single_user\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"NLA_OT_delete\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"NLA_OT_split\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"NLA_OT_mute_toggle\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"NLA_OT_swap\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"NLA_OT_move_up\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"NLA_OT_move_down\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"NLA_OT_apply_scale\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"NLA_OT_clear_scale\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"NLA_OT_snap\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"NLA_OT_fmodifier_add\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @nlaop_poll_tweakmode_off(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ED_operator_nla_active(ptr noundef %0) #3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 15
  %9 = load i16, ptr %8, align 4, !tbaa !34
  %10 = and i16 %9, 4
  %11 = icmp eq i16 %10, 0
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %7, %4, %1
  %14 = phi i32 [ 0, %1 ], [ 0, %4 ], [ %12, %7 ]
  ret i32 %14
}

declare i32 @ED_operator_nla_active(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @nlaop_poll_tweakmode_on(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ED_operator_nla_active(ptr noundef %0) #3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 15
  %9 = load i16, ptr %8, align 4, !tbaa !34
  %10 = lshr i16 %9, 2
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  br label %13

13:                                               ; preds = %7, %4, %1
  %14 = phi i32 [ 0, %1 ], [ 0, %4 ], [ %12, %7 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @nlaedit_is_tweakmode_on(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 15
  %9 = load i16, ptr %8, align 4, !tbaa !34
  %10 = trunc i16 %9 to i8
  %11 = lshr i8 %10, 2
  %12 = and i8 %11, 1
  br label %13

13:                                               ; preds = %1, %3, %7
  %14 = phi i8 [ %12, %7 ], [ 0, %3 ], [ 0, %1 ]
  ret i8 %14
}

; Function Attrs: nounwind uwtable
define dso_local void @nla_operatortypes() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_properties) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_channels_click) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_action_pushdown) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_tracks_add) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_tracks_delete) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_selected_objects_add) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_click_select) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_select_border) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_select_all_toggle) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_select_leftright) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_view_all) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_view_selected) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_previewrange_set) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_tweakmode_enter) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_tweakmode_exit) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_actionclip_add) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_transition_add) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_soundclip_add) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_meta_add) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_meta_remove) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_duplicate) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_delete) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_split) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_mute_toggle) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_swap) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_move_up) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_move_down) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_action_sync_length) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_make_single_user) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_apply_scale) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_clear_scale) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_snap) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_fmodifier_add) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_fmodifier_copy) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @NLA_OT_fmodifier_paste) #3
  ret void
}

declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

declare void @NLA_OT_properties(ptr noundef) #1

declare void @NLA_OT_channels_click(ptr noundef) #1

declare void @NLA_OT_action_pushdown(ptr noundef) #1

declare void @NLA_OT_tracks_add(ptr noundef) #1

declare void @NLA_OT_tracks_delete(ptr noundef) #1

declare void @NLA_OT_selected_objects_add(ptr noundef) #1

declare void @NLA_OT_click_select(ptr noundef) #1

declare void @NLA_OT_select_border(ptr noundef) #1

declare void @NLA_OT_select_all_toggle(ptr noundef) #1

declare void @NLA_OT_select_leftright(ptr noundef) #1

declare void @NLA_OT_view_all(ptr noundef) #1

declare void @NLA_OT_view_selected(ptr noundef) #1

declare void @NLA_OT_previewrange_set(ptr noundef) #1

declare void @NLA_OT_tweakmode_enter(ptr noundef) #1

declare void @NLA_OT_tweakmode_exit(ptr noundef) #1

declare void @NLA_OT_actionclip_add(ptr noundef) #1

declare void @NLA_OT_transition_add(ptr noundef) #1

declare void @NLA_OT_soundclip_add(ptr noundef) #1

declare void @NLA_OT_meta_add(ptr noundef) #1

declare void @NLA_OT_meta_remove(ptr noundef) #1

declare void @NLA_OT_duplicate(ptr noundef) #1

declare void @NLA_OT_delete(ptr noundef) #1

declare void @NLA_OT_split(ptr noundef) #1

declare void @NLA_OT_mute_toggle(ptr noundef) #1

declare void @NLA_OT_swap(ptr noundef) #1

declare void @NLA_OT_move_up(ptr noundef) #1

declare void @NLA_OT_move_down(ptr noundef) #1

declare void @NLA_OT_action_sync_length(ptr noundef) #1

declare void @NLA_OT_make_single_user(ptr noundef) #1

declare void @NLA_OT_apply_scale(ptr noundef) #1

declare void @NLA_OT_clear_scale(ptr noundef) #1

declare void @NLA_OT_snap(ptr noundef) #1

declare void @NLA_OT_fmodifier_add(ptr noundef) #1

declare void @NLA_OT_fmodifier_copy(ptr noundef) #1

declare void @NLA_OT_fmodifier_paste(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @nla_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 13, i32 noundef 0) #3
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 219, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 219, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 102, i32 noundef 1, i32 noundef 2, i32 noundef 0) #3
  %7 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 13, i32 noundef 0) #3
  %8 = tail call ptr @WM_keymap_add_item(ptr noundef %7, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %9 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  tail call void @RNA_boolean_set(ptr noundef %10, ptr noundef nonnull @.str.8, i32 noundef 0) #3
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %7, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %12 = getelementptr inbounds %struct.wmKeyMapItem, ptr %11, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  tail call void @RNA_boolean_set(ptr noundef %13, ptr noundef nonnull @.str.8, i32 noundef 1) #3
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %7, ptr noundef nonnull @.str.9, i32 noundef 97, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %15 = getelementptr inbounds %struct.wmKeyMapItem, ptr %14, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.10, i32 noundef 0) #3
  %17 = tail call ptr @WM_keymap_add_item(ptr noundef %7, ptr noundef nonnull @.str.9, i32 noundef 97, i32 noundef 1, i32 noundef 3, i32 noundef 0) #3
  %18 = getelementptr inbounds %struct.wmKeyMapItem, ptr %17, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  tail call void @RNA_boolean_set(ptr noundef %19, ptr noundef nonnull @.str.10, i32 noundef 1) #3
  %20 = tail call ptr @WM_keymap_add_item(ptr noundef %7, ptr noundef nonnull @.str.11, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %7, ptr noundef nonnull @.str.11, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %22 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 13, i32 noundef 0) #3
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.12, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %24 = getelementptr inbounds %struct.wmKeyMapItem, ptr %23, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !64
  tail call void @RNA_boolean_set(ptr noundef %25, ptr noundef nonnull @.str.8, i32 noundef 0) #3
  %26 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.12, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %27 = getelementptr inbounds %struct.wmKeyMapItem, ptr %26, i64 0, i32 17
  %28 = load ptr, ptr %27, align 8, !tbaa !64
  tail call void @RNA_boolean_set(ptr noundef %28, ptr noundef nonnull @.str.8, i32 noundef 1) #3
  %29 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.13, i32 noundef 6, i32 noundef 1, i32 noundef 2, i32 noundef 0) #3
  %30 = getelementptr inbounds %struct.wmKeyMapItem, ptr %29, i64 0, i32 17
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  tail call void @RNA_boolean_set(ptr noundef %31, ptr noundef nonnull @.str.8, i32 noundef 0) #3
  %32 = load ptr, ptr %30, align 8, !tbaa !64
  tail call void @RNA_enum_set(ptr noundef %32, ptr noundef nonnull @.str.14, i32 noundef -1) #3
  %33 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.13, i32 noundef 6, i32 noundef 1, i32 noundef 3, i32 noundef 0) #3
  %34 = getelementptr inbounds %struct.wmKeyMapItem, ptr %33, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !64
  tail call void @RNA_boolean_set(ptr noundef %35, ptr noundef nonnull @.str.8, i32 noundef 1) #3
  %36 = load ptr, ptr %34, align 8, !tbaa !64
  tail call void @RNA_enum_set(ptr noundef %36, ptr noundef nonnull @.str.14, i32 noundef -1) #3
  %37 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.13, i32 noundef 235, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %38 = getelementptr inbounds %struct.wmKeyMapItem, ptr %37, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !64
  tail call void @RNA_boolean_set(ptr noundef %39, ptr noundef nonnull @.str.8, i32 noundef 0) #3
  %40 = load ptr, ptr %38, align 8, !tbaa !64
  tail call void @RNA_enum_set(ptr noundef %40, ptr noundef nonnull @.str.14, i32 noundef 1) #3
  %41 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.13, i32 noundef 236, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %42 = getelementptr inbounds %struct.wmKeyMapItem, ptr %41, i64 0, i32 17
  %43 = load ptr, ptr %42, align 8, !tbaa !64
  tail call void @RNA_boolean_set(ptr noundef %43, ptr noundef nonnull @.str.8, i32 noundef 0) #3
  %44 = load ptr, ptr %42, align 8, !tbaa !64
  tail call void @RNA_enum_set(ptr noundef %44, ptr noundef nonnull @.str.14, i32 noundef 2) #3
  %45 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.15, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %46 = getelementptr inbounds %struct.wmKeyMapItem, ptr %45, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !64
  tail call void @RNA_boolean_set(ptr noundef %47, ptr noundef nonnull @.str.16, i32 noundef 0) #3
  %48 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.15, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #3
  %49 = getelementptr inbounds %struct.wmKeyMapItem, ptr %48, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !64
  tail call void @RNA_boolean_set(ptr noundef %50, ptr noundef nonnull @.str.16, i32 noundef 1) #3
  %51 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.17, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %52 = getelementptr inbounds %struct.wmKeyMapItem, ptr %51, i64 0, i32 17
  %53 = load ptr, ptr %52, align 8, !tbaa !64
  tail call void @RNA_boolean_set(ptr noundef %53, ptr noundef nonnull @.str.18, i32 noundef 0) #3
  %54 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.17, i32 noundef 98, i32 noundef 1, i32 noundef 4, i32 noundef 0) #3
  %55 = getelementptr inbounds %struct.wmKeyMapItem, ptr %54, i64 0, i32 17
  %56 = load ptr, ptr %55, align 8, !tbaa !64
  tail call void @RNA_boolean_set(ptr noundef %56, ptr noundef nonnull @.str.18, i32 noundef 1) #3
  %57 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.19, i32 noundef 112, i32 noundef 1, i32 noundef 6, i32 noundef 0) #3
  %58 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.20, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %59 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.20, i32 noundef 402, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %60 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.21, i32 noundef 199, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %61 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.22, i32 noundef 97, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %62 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.23, i32 noundef 116, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %63 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef 107, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.25, i32 noundef 103, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %65 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.26, i32 noundef 103, i32 noundef 1, i32 noundef 4, i32 noundef 0) #3
  %66 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.27, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %67 = getelementptr inbounds %struct.wmKeyMapItem, ptr %66, i64 0, i32 17
  %68 = load ptr, ptr %67, align 8, !tbaa !64
  tail call void @RNA_boolean_set(ptr noundef %68, ptr noundef nonnull @.str.28, i32 noundef 0) #3
  %69 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.27, i32 noundef 100, i32 noundef 1, i32 noundef 4, i32 noundef 0) #3
  %70 = getelementptr inbounds %struct.wmKeyMapItem, ptr %69, i64 0, i32 17
  %71 = load ptr, ptr %70, align 8, !tbaa !64
  tail call void @RNA_boolean_set(ptr noundef %71, ptr noundef nonnull @.str.28, i32 noundef 1) #3
  %72 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.29, i32 noundef 117, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %73 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.30, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %74 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.30, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %75 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.31, i32 noundef 121, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %76 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.32, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %77 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.33, i32 noundef 102, i32 noundef 1, i32 noundef 4, i32 noundef 0) #3
  %78 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.34, i32 noundef 168, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %79 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.35, i32 noundef 169, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %80 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.36, i32 noundef 97, i32 noundef 1, i32 noundef 2, i32 noundef 0) #3
  %81 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.37, i32 noundef 115, i32 noundef 1, i32 noundef 4, i32 noundef 0) #3
  %82 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.38, i32 noundef 115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %83 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.39, i32 noundef 109, i32 noundef 1, i32 noundef 3, i32 noundef 0) #3
  tail call void @transform_keymap_for_space(ptr noundef %0, ptr noundef %22, i32 noundef 13) #3
  tail call void @ED_marker_keymap_animedit_conflictfree(ptr noundef %22) #3
  ret void
}

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @transform_keymap_for_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ED_marker_keymap_animedit_conflictfree(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !40, i64 244}
!35 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !43, i64 280, !53, i64 4264, !42, i64 4296, !42, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !42, i64 4384, !54, i64 4400, !55, i64 4416, !58, i64 4600, !37, i64 4608, !59, i64 4616, !37, i64 4640, !60, i64 4648, !60, i64 4656, !46, i64 4664, !47, i64 4824, !61, i64 4888, !37, i64 4952}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"RenderData", !44, i64 0, !37, i64 248, !37, i64 256, !48, i64 264, !49, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !45, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !50, i64 544, !50, i64 560, !51, i64 576, !42, i64 592, !40, i64 608, !40, i64 610, !45, i64 612, !45, i64 616, !45, i64 620, !45, i64 624, !41, i64 628, !45, i64 632, !45, i64 636, !45, i64 640, !45, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !45, i64 660, !45, i64 664, !40, i64 668, !40, i64 670, !45, i64 672, !45, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !45, i64 2528, !45, i64 2532, !40, i64 2536, !40, i64 2538, !45, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !45, i64 2560, !45, i64 2564, !37, i64 2568, !41, i64 2576, !45, i64 2580, !38, i64 2584, !52, i64 2616, !41, i64 3976, !41, i64 3980}
!44 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !45, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !46, i64 24, !47, i64 184}
!45 = !{!"float", !38, i64 0}
!46 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !45, i64 136, !45, i64 140, !37, i64 144, !37, i64 152}
!47 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!48 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!49 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !45, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!50 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!51 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!52 = !{!"BakeData", !44, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !45, i64 1280, !45, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!53 = !{!"AudioData", !41, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !45, i64 24, !45, i64 28}
!54 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!55 = !{!"GameData", !54, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !56, i64 40, !40, i64 64, !40, i64 66, !45, i64 68, !57, i64 72, !45, i64 128, !45, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180}
!56 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !45, i64 8, !45, i64 12, !37, i64 16}
!57 = !{!"RecastData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !41, i64 40, !45, i64 44, !45, i64 48, !40, i64 52, !40, i64 54}
!58 = !{!"UnitSettings", !45, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!59 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!60 = !{!"long", !38, i64 0}
!61 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!62 = !{!63, !37, i64 48}
!63 = !{!"bAnimContext", !37, i64 0, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72}
!64 = !{!65, !37, i64 176}
!65 = !{!"wmKeyMapItem", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !38, i64 88, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !37, i64 176}
