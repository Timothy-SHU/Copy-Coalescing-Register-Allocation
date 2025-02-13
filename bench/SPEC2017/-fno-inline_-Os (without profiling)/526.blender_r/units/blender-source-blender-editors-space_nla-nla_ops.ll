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

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = load i16, ptr %8, align 4, !tbaa !5
  %10 = and i16 %9, 4
  %11 = icmp eq i16 %10, 0
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %7, %4, %1
  %14 = phi i32 [ 0, %1 ], [ 0, %4 ], [ %12, %7 ]
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @ED_operator_nla_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = load i16, ptr %8, align 4, !tbaa !5
  %10 = lshr i16 %9, 2
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  br label %13

13:                                               ; preds = %7, %4, %1
  %14 = phi i32 [ 0, %1 ], [ 0, %4 ], [ %12, %7 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @nlaedit_is_tweakmode_on(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !33
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 15
  %9 = load i16, ptr %8, align 4, !tbaa !5
  %10 = trunc i16 %9 to i8
  %11 = lshr i8 %10, 2
  %12 = and i8 %11, 1
  br label %13

13:                                               ; preds = %1, %3, %7
  %14 = phi i8 [ %12, %7 ], [ 0, %3 ], [ 0, %1 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
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

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @NLA_OT_properties(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_channels_click(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_action_pushdown(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_tracks_add(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_tracks_delete(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_selected_objects_add(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_click_select(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_select_border(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_select_all_toggle(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_select_leftright(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_view_all(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_view_selected(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_previewrange_set(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_tweakmode_enter(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_tweakmode_exit(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_actionclip_add(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_transition_add(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_soundclip_add(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_meta_add(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_meta_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_duplicate(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_delete(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_split(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_mute_toggle(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_swap(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_move_up(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_move_down(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_action_sync_length(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_make_single_user(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_apply_scale(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_clear_scale(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_snap(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_fmodifier_add(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_fmodifier_copy(ptr noundef) #1

; Function Attrs: optsize
declare void @NLA_OT_fmodifier_paste(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nla_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 13, i32 noundef 0) #3
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 219, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 219, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 102, i32 noundef 1, i32 noundef 2, i32 noundef 0) #3
  %7 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 13, i32 noundef 0) #3
  tail call fastcc void @nla_keymap_channels(ptr noundef %7) #4
  %8 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 13, i32 noundef 0) #3
  tail call fastcc void @nla_keymap_main(ptr noundef %0, ptr noundef %8) #4
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nla_keymap_channels(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %3 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  tail call void @RNA_boolean_set(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef 0) #3
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %5, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  tail call void @RNA_boolean_set(ptr noundef %7, ptr noundef nonnull @.str.8, i32 noundef 1) #3
  %8 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 97, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %9 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  tail call void @RNA_boolean_set(ptr noundef %10, ptr noundef nonnull @.str.10, i32 noundef 0) #3
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 97, i32 noundef 1, i32 noundef 3, i32 noundef 0) #3
  %12 = getelementptr inbounds %struct.wmKeyMapItem, ptr %11, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  tail call void @RNA_boolean_set(ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef 1) #3
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %15 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nla_keymap_main(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  tail call void @RNA_boolean_set(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef 0) #3
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %6, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  tail call void @RNA_boolean_set(ptr noundef %8, ptr noundef nonnull @.str.8, i32 noundef 1) #3
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef 6, i32 noundef 1, i32 noundef 2, i32 noundef 0) #3
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  tail call void @RNA_boolean_set(ptr noundef %11, ptr noundef nonnull @.str.8, i32 noundef 0) #3
  %12 = load ptr, ptr %10, align 8, !tbaa !35
  tail call void @RNA_enum_set(ptr noundef %12, ptr noundef nonnull @.str.14, i32 noundef -1) #3
  %13 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef 6, i32 noundef 1, i32 noundef 3, i32 noundef 0) #3
  %14 = getelementptr inbounds %struct.wmKeyMapItem, ptr %13, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  tail call void @RNA_boolean_set(ptr noundef %15, ptr noundef nonnull @.str.8, i32 noundef 1) #3
  %16 = load ptr, ptr %14, align 8, !tbaa !35
  tail call void @RNA_enum_set(ptr noundef %16, ptr noundef nonnull @.str.14, i32 noundef -1) #3
  %17 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef 235, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %18 = getelementptr inbounds %struct.wmKeyMapItem, ptr %17, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  tail call void @RNA_boolean_set(ptr noundef %19, ptr noundef nonnull @.str.8, i32 noundef 0) #3
  %20 = load ptr, ptr %18, align 8, !tbaa !35
  tail call void @RNA_enum_set(ptr noundef %20, ptr noundef nonnull @.str.14, i32 noundef 1) #3
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef 236, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %22 = getelementptr inbounds %struct.wmKeyMapItem, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  tail call void @RNA_boolean_set(ptr noundef %23, ptr noundef nonnull @.str.8, i32 noundef 0) #3
  %24 = load ptr, ptr %22, align 8, !tbaa !35
  tail call void @RNA_enum_set(ptr noundef %24, ptr noundef nonnull @.str.14, i32 noundef 2) #3
  %25 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %26 = getelementptr inbounds %struct.wmKeyMapItem, ptr %25, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  tail call void @RNA_boolean_set(ptr noundef %27, ptr noundef nonnull @.str.16, i32 noundef 0) #3
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #3
  %29 = getelementptr inbounds %struct.wmKeyMapItem, ptr %28, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  tail call void @RNA_boolean_set(ptr noundef %30, ptr noundef nonnull @.str.16, i32 noundef 1) #3
  %31 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %32 = getelementptr inbounds %struct.wmKeyMapItem, ptr %31, i64 0, i32 17
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  tail call void @RNA_boolean_set(ptr noundef %33, ptr noundef nonnull @.str.18, i32 noundef 0) #3
  %34 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef 98, i32 noundef 1, i32 noundef 4, i32 noundef 0) #3
  %35 = getelementptr inbounds %struct.wmKeyMapItem, ptr %34, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  tail call void @RNA_boolean_set(ptr noundef %36, ptr noundef nonnull @.str.18, i32 noundef 1) #3
  %37 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef 112, i32 noundef 1, i32 noundef 6, i32 noundef 0) #3
  %38 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %39 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef 402, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %40 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef 199, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %41 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 97, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %42 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef 116, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %43 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef 107, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %44 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef 103, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %45 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef 103, i32 noundef 1, i32 noundef 4, i32 noundef 0) #3
  %46 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %47 = getelementptr inbounds %struct.wmKeyMapItem, ptr %46, i64 0, i32 17
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  tail call void @RNA_boolean_set(ptr noundef %48, ptr noundef nonnull @.str.28, i32 noundef 0) #3
  %49 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef 100, i32 noundef 1, i32 noundef 4, i32 noundef 0) #3
  %50 = getelementptr inbounds %struct.wmKeyMapItem, ptr %49, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !35
  tail call void @RNA_boolean_set(ptr noundef %51, ptr noundef nonnull @.str.28, i32 noundef 1) #3
  %52 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef 117, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %53 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %54 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %55 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef 121, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %56 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %57 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef 102, i32 noundef 1, i32 noundef 4, i32 noundef 0) #3
  %58 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef 168, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %59 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.35, i32 noundef 169, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %60 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef 97, i32 noundef 1, i32 noundef 2, i32 noundef 0) #3
  %61 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef 115, i32 noundef 1, i32 noundef 4, i32 noundef 0) #3
  %62 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef 115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %63 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef 109, i32 noundef 1, i32 noundef 3, i32 noundef 0) #3
  tail call void @transform_keymap_for_space(ptr noundef %0, ptr noundef %1, i32 noundef 13) #3
  tail call void @ED_marker_keymap_animedit_conflictfree(ptr noundef %1) #3
  ret void
}

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @transform_keymap_for_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_marker_keymap_animedit_conflictfree(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !11, i64 244}
!6 = !{!"Scene", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !13, i64 152, !8, i64 168, !8, i64 176, !9, i64 184, !9, i64 196, !9, i64 208, !9, i64 220, !12, i64 232, !12, i64 236, !12, i64 240, !11, i64 244, !9, i64 246, !9, i64 247, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !14, i64 280, !24, i64 4264, !13, i64 4296, !13, i64 4312, !8, i64 4328, !8, i64 4336, !8, i64 4344, !8, i64 4352, !8, i64 4360, !8, i64 4368, !11, i64 4376, !11, i64 4378, !12, i64 4380, !13, i64 4384, !25, i64 4400, !26, i64 4416, !29, i64 4600, !8, i64 4608, !30, i64 4616, !8, i64 4640, !31, i64 4648, !31, i64 4656, !17, i64 4664, !18, i64 4824, !32, i64 4888, !8, i64 4952}
!7 = !{!"ID", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !8, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"ListBase", !8, i64 0, !8, i64 8}
!14 = !{!"RenderData", !15, i64 0, !8, i64 248, !8, i64 256, !19, i64 264, !20, i64 328, !12, i64 400, !12, i64 404, !12, i64 408, !16, i64 412, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !11, i64 432, !11, i64 434, !16, i64 436, !16, i64 440, !16, i64 444, !16, i64 448, !16, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !12, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !12, i64 484, !12, i64 488, !11, i64 492, !11, i64 494, !12, i64 496, !12, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !9, i64 514, !9, i64 515, !12, i64 516, !12, i64 520, !12, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !21, i64 544, !21, i64 560, !22, i64 576, !13, i64 592, !11, i64 608, !11, i64 610, !16, i64 612, !16, i64 616, !16, i64 620, !16, i64 624, !12, i64 628, !16, i64 632, !16, i64 636, !16, i64 640, !16, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !16, i64 660, !16, i64 664, !11, i64 668, !11, i64 670, !16, i64 672, !16, i64 676, !9, i64 680, !12, i64 1704, !11, i64 1708, !11, i64 1710, !9, i64 1712, !9, i64 2480, !9, i64 2496, !9, i64 2512, !9, i64 2513, !9, i64 2514, !9, i64 2515, !12, i64 2520, !11, i64 2524, !11, i64 2526, !16, i64 2528, !16, i64 2532, !11, i64 2536, !11, i64 2538, !16, i64 2540, !11, i64 2544, !11, i64 2546, !12, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !16, i64 2560, !16, i64 2564, !8, i64 2568, !12, i64 2576, !16, i64 2580, !9, i64 2584, !23, i64 2616, !12, i64 3976, !12, i64 3980}
!15 = !{!"ImageFormatData", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !11, i64 8, !11, i64 10, !16, i64 12, !9, i64 16, !9, i64 17, !9, i64 18, !17, i64 24, !18, i64 184}
!16 = !{!"float", !9, i64 0}
!17 = !{!"ColorManagedViewSettings", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 72, !16, i64 136, !16, i64 140, !8, i64 144, !8, i64 152}
!18 = !{!"ColorManagedDisplaySettings", !9, i64 0}
!19 = !{!"QuicktimeCodecSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !11, i64 48, !11, i64 50, !12, i64 52, !12, i64 56, !12, i64 60}
!20 = !{!"FFMpegCodecData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !16, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !8, i64 64}
!21 = !{!"rctf", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12}
!22 = !{!"rcti", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!23 = !{!"BakeData", !15, i64 0, !9, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !16, i64 1280, !16, i64 1284, !9, i64 1288, !9, i64 1291, !9, i64 1292, !9, i64 1293, !9, i64 1296}
!24 = !{!"AudioData", !12, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !12, i64 16, !11, i64 20, !11, i64 22, !16, i64 24, !16, i64 28}
!25 = !{!"GameFraming", !9, i64 0, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15}
!26 = !{!"GameData", !25, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !9, i64 34, !27, i64 40, !11, i64 64, !11, i64 66, !16, i64 68, !28, i64 72, !16, i64 128, !16, i64 132, !12, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !16, i64 164, !16, i64 168, !16, i64 172, !16, i64 176, !16, i64 180}
!27 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !16, i64 8, !16, i64 12, !8, i64 16}
!28 = !{!"RecastData", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !12, i64 40, !16, i64 44, !16, i64 48, !11, i64 52, !11, i64 54}
!29 = !{!"UnitSettings", !16, i64 0, !9, i64 4, !9, i64 5, !11, i64 6}
!30 = !{!"PhysicsSettings", !9, i64 0, !12, i64 12, !12, i64 16, !12, i64 20}
!31 = !{!"long", !9, i64 0}
!32 = !{!"ColorManagedColorspaceSettings", !9, i64 0}
!33 = !{!34, !8, i64 48}
!34 = !{!"bAnimContext", !8, i64 0, !11, i64 8, !11, i64 10, !11, i64 12, !11, i64 14, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72}
!35 = !{!36, !8, i64 176}
!36 = !{!"wmKeyMapItem", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 80, !9, i64 88, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !11, i64 164, !11, i64 166, !11, i64 168, !11, i64 170, !11, i64 172, !11, i64 174, !8, i64 176}
