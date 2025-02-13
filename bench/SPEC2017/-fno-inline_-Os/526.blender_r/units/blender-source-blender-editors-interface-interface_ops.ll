; ModuleID = 'blender/source/blender/editors/interface/interface_ops.c'
source_filename = "blender/source/blender/editors/interface/interface_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmDrag = type { ptr, ptr, i32, i32, ptr, [1024 x i8], double, ptr, float, i32, i32, [200 x i8], i32 }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmDropBox = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16 }
%struct.uiDragColorHandle = type { [3 x float], i8 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.uiBut = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, [128 x i8], [400 x i8], %struct.rctf, ptr, float, float, float, float, float, float, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i16], ptr, ptr, i32, i8, i8, i8, i8, i8, i16, i16, ptr, ptr, %struct.PointerRNA, ptr, i32, %struct.PointerRNA, ptr, ptr, ptr, i16, i8, i8, ptr, ptr, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Reset to Default Theme\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"UI_OT_reset_default_theme\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Reset to the default theme colors\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Copy Data Path\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"UI_OT_copy_data_path_button\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"Copy the RNA data path for this property to the clipboard\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"Reset to Default Value\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"UI_OT_reset_default_button\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Reset this property's value to its default value\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Reset to default values all elements of the array\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Unset property\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"UI_OT_unset_property_button\00", align 1
@.str.16 = private unnamed_addr constant [67 x i8] c"Clear the property and use default or generated value in operators\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Copy To Selected\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"UI_OT_copy_to_selected_button\00", align 1
@.str.19 = private unnamed_addr constant [60 x i8] c"Copy property from this object to selected objects or bones\00", align 1
@RNA_EditBone = external global %struct.StructRNA, align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"selected_editable_bones\00", align 1
@RNA_PoseBone = external global %struct.StructRNA, align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"selected_pose_bones\00", align 1
@RNA_Sequence = external global %struct.StructRNA, align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"selected_editable_sequences\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"selected_editable_objects\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Reports to Text Block\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"UI_OT_reports_to_textblock\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Write the reports \00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"Recent Reports\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.28 = private unnamed_addr constant [11 x i8] c"Drop Color\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"UI_OT_drop_color\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"Drop colors to buttons\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"Source color\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"Gamma Corrected\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"The source color is gamma corrected \00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"Reload Translation\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"UI_OT_reloadtranslation\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"Force a full reload of UI translation\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @UI_drop_color_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 5
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #5
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  %10 = tail call zeroext i8 @UI_but_active_drop_color(ptr noundef %0) #5
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %7
  %13 = icmp eq ptr %8, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 17
  %16 = load i8, ptr %15, align 4, !tbaa !42
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = icmp ne ptr %20, null
  %22 = icmp ne ptr %9, null
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 8
  %26 = load i16, ptr %25, align 2, !tbaa !51
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %7, %24
  br label %29

29:                                               ; preds = %3, %12, %14, %18, %24, %28
  %30 = phi i32 [ 1, %28 ], [ 0, %24 ], [ 0, %18 ], [ 0, %14 ], [ 0, %12 ], [ 0, %3 ]
  ret i32 %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @UI_but_active_drop_color(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_drop_color_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  tail call void @RNA_float_set_array(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef %4) #5
  %7 = load ptr, ptr %5, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.uiDragColorHandle, ptr %4, i64 0, i32 1
  %9 = load i8, ptr %8, align 4, !tbaa !59
  %10 = zext i8 %9 to i32
  tail call void @RNA_boolean_set(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef %10) #5
  ret void
}

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_buttons_operatortypes() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @UI_OT_reset_default_theme) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @UI_OT_copy_data_path_button) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @UI_OT_reset_default_button) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @UI_OT_unset_property_button) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @UI_OT_copy_to_selected_button) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @UI_OT_reports_to_textblock) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @UI_OT_drop_color) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @UI_OT_reloadtranslation) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @UI_OT_eyedropper_color) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @UI_OT_eyedropper_id) #5
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @UI_OT_reset_default_theme(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !61 {
  store ptr @.str.2, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @reset_default_theme_exec, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %5, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @UI_OT_copy_data_path_button(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !69 {
  store ptr @.str.5, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @copy_data_path_button_exec, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @copy_data_path_button_poll, ptr %5, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UI_OT_reset_default_button(ptr nocapture noundef %0) #0 !PGOFuncName !71 {
  store ptr @.str.8, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.9, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @reset_default_button_poll, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @reset_default_button_exec, ptr %5, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @UI_OT_unset_property_button(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !73 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_regionactive, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @unset_property_button_exec, ptr %5, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UI_OT_copy_to_selected_button(ptr nocapture noundef %0) #0 !PGOFuncName !74 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.18, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @copy_to_selected_button_poll, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @copy_to_selected_button_exec, ptr %5, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @UI_OT_reports_to_textblock(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !75 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @reports_to_text_poll, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @reports_to_text_exec, ptr %5, align 8, !tbaa !67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UI_OT_drop_color(ptr nocapture noundef %0) #0 !PGOFuncName !76 {
  store ptr @.str.28, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @drop_color_invoke, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = tail call ptr @RNA_def_float_color(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef 3, ptr noundef null, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, float noundef 0.000000e+00, float noundef 1.000000e+00) #5
  %8 = load ptr, ptr %5, align 8, !tbaa !72
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @UI_OT_reloadtranslation(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !78 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.36, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @reloadtranslation_exec, ptr %4, align 8, !tbaa !67
  ret void
}

; Function Attrs: optsize
declare void @UI_OT_eyedropper_color(ptr noundef) #2

; Function Attrs: optsize
declare void @UI_OT_eyedropper_id(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @reset_default_theme_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !79 {
  tail call void @ui_theme_init_default() #5
  tail call void @ui_style_init_default() #5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #5
  ret i32 4
}

; Function Attrs: optsize
declare void @ui_theme_init_default() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ui_style_init_default() local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @copy_data_path_button_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !80 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #5
  %6 = load ptr, ptr %3, align 8, !tbaa !81
  %7 = icmp ne ptr %6, null
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ne ptr %9, null
  %11 = select i1 %7, i1 %10, i1 false
  %12 = load ptr, ptr %4, align 8
  %13 = icmp ne ptr %12, null
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %3, ptr noundef nonnull %12) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  call void @WM_clipboard_text_set(ptr noundef nonnull %16, i8 noundef zeroext 0) #5
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !84
  call void %19(ptr noundef nonnull %16) #5
  br label %20

20:                                               ; preds = %2, %15, %18
  %21 = phi i32 [ 4, %18 ], [ 2, %15 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @copy_data_path_button_poll(ptr noundef %0) #0 !PGOFuncName !85 {
  %2 = alloca %struct.PointerRNA, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  %5 = load ptr, ptr %2, align 8, !tbaa !81
  %6 = icmp ne ptr %5, null
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp ne ptr %8, null
  %10 = select i1 %6, i1 %9, i1 false
  %11 = load ptr, ptr %3, align 8
  %12 = icmp ne ptr %11, null
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %2, ptr noundef nonnull %11) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !84
  call void %18(ptr noundef nonnull %15) #5
  br label %19

19:                                               ; preds = %1, %14, %17
  %20 = phi i32 [ 1, %17 ], [ 0, %14 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %20
}

; Function Attrs: optsize
declare void @uiContextActiveProperty(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_path_from_ID_to_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_clipboard_text_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @reset_default_button_poll(ptr noundef %0) #0 !PGOFuncName !86 {
  %2 = alloca %struct.PointerRNA, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  %7 = icmp ne ptr %6, null
  %8 = load ptr, ptr %3, align 8
  %9 = icmp ne ptr %8, null
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = call zeroext i8 @RNA_property_editable(ptr noundef nonnull %2, ptr noundef nonnull %8) #5
  %13 = icmp ne i8 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %11, %1
  %16 = phi i32 [ 0, %1 ], [ %14, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @reset_default_button_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !88 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.11) #5
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #5
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = icmp ne ptr %10, null
  %12 = load ptr, ptr %4, align 8
  %13 = icmp ne ptr %12, null
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = call zeroext i8 @RNA_property_editable(ptr noundef nonnull %3, ptr noundef nonnull %12) #5
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %4, align 8, !tbaa !84
  %20 = and i32 %8, 255
  %21 = icmp eq i32 %20, 0
  %22 = load i32, ptr %5, align 4
  %23 = select i1 %21, i32 %22, i32 -1
  %24 = call zeroext i8 @RNA_property_reset(ptr noundef nonnull %3, ptr noundef %19, i32 noundef %23) #5
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load ptr, ptr %4, align 8, !tbaa !84
  %28 = call fastcc i32 @operator_button_property_finish(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %27) #7, !range !91
  br label %29

29:                                               ; preds = %2, %15, %18, %26
  %30 = phi i32 [ %28, %26 ], [ 2, %18 ], [ 2, %15 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %30
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_editable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @operator_button_property_finish(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !92 {
  %4 = load ptr, ptr %1, align 8, !tbaa !81
  tail call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #5
  tail call void @uiContextActivePropertyHandle(ptr noundef %0) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !93
  %9 = icmp eq i16 %8, 21075
  %10 = icmp eq i16 %8, 19799
  %11 = or i1 %9, %10
  %12 = select i1 %11, i32 2, i32 4
  br label %13

13:                                               ; preds = %3, %6
  %14 = phi i32 [ %12, %6 ], [ 2, %3 ]
  ret i32 %14
}

; Function Attrs: optsize
declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiContextActivePropertyHandle(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_operator_regionactive(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @unset_property_button_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !94 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #5
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = icmp ne ptr %7, null
  %9 = load ptr, ptr %4, align 8
  %10 = icmp ne ptr %9, null
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = call zeroext i8 @RNA_property_editable(ptr noundef nonnull %3, ptr noundef nonnull %9) #5
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %4, align 8, !tbaa !84
  %17 = call zeroext i8 @RNA_property_is_set(ptr noundef nonnull %3, ptr noundef %16) #5
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %4, align 8, !tbaa !84
  call void @RNA_property_unset(ptr noundef nonnull %3, ptr noundef %20) #5
  %21 = load ptr, ptr %4, align 8, !tbaa !84
  %22 = call fastcc i32 @operator_button_property_finish(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %21) #7, !range !91
  br label %23

23:                                               ; preds = %2, %12, %15, %19
  %24 = phi i32 [ %22, %19 ], [ 2, %15 ], [ 2, %12 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %24
}

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_unset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @copy_to_selected_button_poll(ptr noundef %0) #0 !PGOFuncName !95 {
  %2 = tail call fastcc zeroext i8 @copy_to_selected_button(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 1) #7, !range !96
  %3 = zext nneg i8 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @copy_to_selected_button_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !97 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %4, ptr noundef nonnull @.str.11) #5
  %6 = trunc i32 %5 to i8
  %7 = tail call fastcc zeroext i8 @copy_to_selected_button(ptr noundef %0, i8 noundef zeroext %6, i8 noundef zeroext 0) #7, !range !96
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i32 2, i32 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @copy_to_selected_button(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !98 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %9) #5
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  %15 = icmp ne ptr %14, null
  %16 = load ptr, ptr %7, align 8
  %17 = icmp ne ptr %16, null
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %86

19:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  store ptr null, ptr %10, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #6
  %20 = call fastcc zeroext i8 @copy_to_selected_list(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %16, ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %10) #7, !range !96
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %84, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %12, align 8, !tbaa !84
  %24 = icmp eq ptr %23, null
  %25 = load ptr, ptr %10, align 8
  br i1 %24, label %77, label %26

26:                                               ; preds = %22
  %27 = load i8, ptr %11, align 1
  %28 = icmp eq i8 %27, 0
  %29 = icmp eq ptr %25, null
  %30 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %31 = icmp eq i8 %2, 0
  %32 = icmp eq i8 %1, 0
  br label %33

33:                                               ; preds = %26, %70
  %34 = phi ptr [ %23, %26 ], [ %72, %70 ]
  %35 = phi i8 [ 0, %26 ], [ %71, %70 ]
  %36 = getelementptr inbounds %struct.CollectionPointerLink, ptr %34, i64 0, i32 2
  %37 = getelementptr inbounds %struct.CollectionPointerLink, ptr %34, i64 0, i32 2, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !99
  %39 = load ptr, ptr %13, align 8, !tbaa !87
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %70, label %41

41:                                               ; preds = %33
  br i1 %28, label %45, label %42

42:                                               ; preds = %41
  store ptr null, ptr %8, align 8, !tbaa !84
  %43 = load ptr, ptr %36, align 8, !tbaa !101
  call void @RNA_id_pointer_create(ptr noundef %43, ptr noundef nonnull %6) #5
  %44 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %6, ptr noundef %25, ptr noundef nonnull %5, ptr noundef nonnull %8) #5
  br label %50

45:                                               ; preds = %41
  br i1 %29, label %48, label %46

46:                                               ; preds = %45
  store ptr null, ptr %8, align 8, !tbaa !84
  %47 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %36, ptr noundef nonnull %25, ptr noundef nonnull %5, ptr noundef nonnull %8) #5
  br label %50

48:                                               ; preds = %45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %36, i64 24, i1 false), !tbaa.struct !102
  %49 = load ptr, ptr %7, align 8, !tbaa !84
  store ptr %49, ptr %8, align 8, !tbaa !84
  br label %50

50:                                               ; preds = %46, %48, %42
  %51 = load ptr, ptr %30, align 8, !tbaa !87
  %52 = load ptr, ptr %13, align 8, !tbaa !87
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %70, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %8, align 8, !tbaa !84
  %56 = load ptr, ptr %7, align 8, !tbaa !84
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = call zeroext i8 @RNA_property_editable(ptr noundef nonnull %5, ptr noundef %55) #5
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  br i1 %31, label %62, label %74

62:                                               ; preds = %61
  %63 = load ptr, ptr %7, align 8, !tbaa !84
  %64 = load i32, ptr %9, align 4
  %65 = select i1 %32, i32 %64, i32 -1
  %66 = call zeroext i8 @RNA_property_copy(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %63, i32 noundef %65) #5
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = load ptr, ptr %7, align 8, !tbaa !84
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %69) #5
  br label %70

70:                                               ; preds = %33, %58, %62, %68, %54, %50
  %71 = phi i8 [ %35, %50 ], [ 1, %68 ], [ %35, %62 ], [ %35, %58 ], [ %35, %54 ], [ %35, %33 ]
  %72 = load ptr, ptr %34, align 8, !tbaa !84
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %33, !llvm.loop !103

74:                                               ; preds = %61, %70
  %75 = phi i8 [ %71, %70 ], [ 1, %61 ]
  %76 = load ptr, ptr %10, align 8, !tbaa !84
  br label %77

77:                                               ; preds = %74, %22
  %78 = phi ptr [ %25, %22 ], [ %76, %74 ]
  %79 = phi i8 [ 0, %22 ], [ %75, %74 ]
  %80 = icmp eq ptr %78, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !84
  call void %82(ptr noundef nonnull %78) #5
  br label %83

83:                                               ; preds = %81, %77
  call void @BLI_freelistN(ptr noundef nonnull %12) #5
  br label %84

84:                                               ; preds = %19, %83
  %85 = phi i8 [ %79, %83 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  br label %86

86:                                               ; preds = %84, %3
  %87 = phi i8 [ 0, %3 ], [ %85, %84 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret i8 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @copy_to_selected_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5) unnamed_addr #0 !PGOFuncName !105 {
  store i8 0, ptr %4, align 1, !tbaa !106
  store ptr null, ptr %5, align 8, !tbaa !84
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !107
  %9 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %8, ptr noundef nonnull @RNA_EditBone) #5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = tail call { ptr, ptr } @CTX_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.20) #5
  %13 = extractvalue { ptr, ptr } %12, 0
  %14 = extractvalue { ptr, ptr } %12, 1
  store ptr %13, ptr %3, align 8, !tbaa.struct !108
  %15 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %14, ptr %15, align 8, !tbaa.struct !109
  br label %58

16:                                               ; preds = %6
  %17 = load ptr, ptr %7, align 8, !tbaa !107
  %18 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %17, ptr noundef nonnull @RNA_PoseBone) #5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = tail call { ptr, ptr } @CTX_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.21) #5
  %22 = extractvalue { ptr, ptr } %21, 0
  %23 = extractvalue { ptr, ptr } %21, 1
  store ptr %22, ptr %3, align 8, !tbaa.struct !108
  %24 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %23, ptr %24, align 8, !tbaa.struct !109
  br label %58

25:                                               ; preds = %16
  %26 = load ptr, ptr %7, align 8, !tbaa !107
  %27 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %26, ptr noundef nonnull @RNA_Sequence) #5
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = tail call { ptr, ptr } @CTX_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.22) #5
  %31 = extractvalue { ptr, ptr } %30, 0
  %32 = extractvalue { ptr, ptr } %30, 1
  store ptr %31, ptr %3, align 8, !tbaa.struct !108
  %33 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %32, ptr %33, align 8, !tbaa.struct !109
  br label %58

34:                                               ; preds = %25
  %35 = load ptr, ptr %1, align 8, !tbaa !81
  %36 = icmp eq ptr %35, null
  br i1 %36, label %58, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 4
  %39 = load i16, ptr %38, align 8, !tbaa !93
  switch i16 %39, label %54 [
    i16 16975, label %40
    i16 17235, label %46
  ]

40:                                               ; preds = %37
  %41 = tail call { ptr, ptr } @CTX_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.23) #5
  %42 = extractvalue { ptr, ptr } %41, 0
  %43 = extractvalue { ptr, ptr } %41, 1
  store ptr %42, ptr %3, align 8, !tbaa.struct !108
  %44 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %43, ptr %44, align 8, !tbaa.struct !109
  store i8 1, ptr %4, align 1, !tbaa !106
  %45 = tail call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %1, ptr noundef %2) #5
  store ptr %45, ptr %5, align 8, !tbaa !84
  br label %54

46:                                               ; preds = %37
  %47 = tail call ptr @RNA_path_resolve_from_type_to_property(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @RNA_Sequence) #5
  store ptr %47, ptr %5, align 8, !tbaa !84
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = tail call { ptr, ptr } @CTX_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.22) #5
  %51 = extractvalue { ptr, ptr } %50, 0
  %52 = extractvalue { ptr, ptr } %50, 1
  store ptr %51, ptr %3, align 8, !tbaa.struct !108
  %53 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %52, ptr %53, align 8, !tbaa.struct !109
  br label %54

54:                                               ; preds = %37, %49, %46, %40
  %55 = load ptr, ptr %5, align 8, !tbaa !84
  %56 = icmp ne ptr %55, null
  %57 = zext i1 %56 to i8
  br label %58

58:                                               ; preds = %11, %29, %20, %34, %54
  %59 = phi i8 [ %57, %54 ], [ 0, %34 ], [ 1, %20 ], [ 1, %29 ], [ 1, %11 ]
  ret i8 %59
}

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare zeroext i8 @RNA_property_copy(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare { ptr, ptr } @CTX_data_collection_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_path_resolve_from_type_to_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @reports_to_text_poll(ptr noundef %0) #0 !PGOFuncName !110 {
  %2 = tail call ptr @CTX_wm_reports(ptr noundef %0) #5
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @reports_to_text_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !111 {
  %3 = tail call ptr @CTX_wm_reports(ptr noundef %0) #5
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #5
  %5 = tail call ptr @BKE_text_add(ptr noundef %4, ptr noundef nonnull @.str.27) #5
  %6 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !112
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 2, i32 1
  %10 = tail call ptr @BKE_reports_string(ptr noundef %3, i32 noundef %9) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  tail call void @BKE_text_write(ptr noundef %5, ptr noundef nonnull %10) #5
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !84
  tail call void %13(ptr noundef nonnull %10) #5
  br label %14

14:                                               ; preds = %2, %12
  %15 = phi i32 [ 4, %12 ], [ 2, %2 ]
  ret i32 %15
}

; Function Attrs: optsize
declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_text_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_reports_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_text_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @drop_color_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !114 {
  %4 = alloca [4 x float], align 16
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  call void @RNA_float_get_array(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull %4) #5
  %8 = load ptr, ptr %6, align 8, !tbaa !89
  %9 = call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.1) #5
  %10 = trunc i32 %9 to i8
  %11 = call ptr @ui_but_find_activated(ptr noundef %5) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %53, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !115
  %16 = icmp eq i32 %15, 7680
  br i1 %16, label %17, label %53

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 55
  %19 = load ptr, ptr %18, align 8, !tbaa !117
  %20 = icmp eq ptr %19, null
  br i1 %20, label %53, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 54
  %23 = call i32 @RNA_property_array_length(ptr noundef nonnull %22, ptr noundef nonnull %19) #5
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load ptr, ptr %18, align 8, !tbaa !117
  %27 = call float @RNA_property_float_get_index(ptr noundef nonnull %22, ptr noundef %26, i32 noundef 3) #5
  %28 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float %27, ptr %28, align 4, !tbaa !118
  br label %29

29:                                               ; preds = %25, %21
  %30 = load ptr, ptr %18, align 8, !tbaa !117
  %31 = call i32 @RNA_property_subtype(ptr noundef %30) #5
  %32 = icmp eq i32 %31, 30
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = icmp eq i8 %10, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 74
  %37 = load ptr, ptr %36, align 8, !tbaa !119
  call void @ui_block_to_display_space_v3(ptr noundef %37, ptr noundef nonnull %4) #5
  br label %38

38:                                               ; preds = %35, %33
  %39 = load ptr, ptr %18, align 8, !tbaa !117
  call void @RNA_property_float_set_array(ptr noundef nonnull %22, ptr noundef %39, ptr noundef nonnull %4) #5
  %40 = load ptr, ptr %18, align 8, !tbaa !117
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %22, ptr noundef %40) #5
  br label %57

41:                                               ; preds = %29
  %42 = load ptr, ptr %18, align 8, !tbaa !117
  %43 = call i32 @RNA_property_subtype(ptr noundef %42) #5
  %44 = icmp eq i32 %43, 20
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = icmp eq i8 %10, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 74
  %49 = load ptr, ptr %48, align 8, !tbaa !119
  call void @ui_block_to_scene_linear_v3(ptr noundef %49, ptr noundef nonnull %4) #5
  br label %50

50:                                               ; preds = %47, %45
  %51 = load ptr, ptr %18, align 8, !tbaa !117
  call void @RNA_property_float_set_array(ptr noundef nonnull %22, ptr noundef %51, ptr noundef nonnull %4) #5
  %52 = load ptr, ptr %18, align 8, !tbaa !117
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %22, ptr noundef %52) #5
  br label %57

53:                                               ; preds = %17, %13, %3
  %54 = icmp eq i8 %10, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %53
  call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %4) #7
  br label %56

56:                                               ; preds = %55, %53
  call void @ED_imapaint_bucket_fill(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %1) #5
  br label %57

57:                                               ; preds = %38, %50, %41, %56
  call void @ED_region_tag_redraw(ptr noundef %5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_float_color(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ui_but_find_activated(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_property_float_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ui_block_to_display_space_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ui_block_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @srgb_to_linearrgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !120 {
  %3 = load float, ptr %1, align 4, !tbaa !118
  %4 = tail call float @srgb_to_linearrgb(float noundef %3) #5
  store float %4, ptr %0, align 4, !tbaa !118
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !118
  %7 = tail call float @srgb_to_linearrgb(float noundef %6) #5
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !118
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !118
  %11 = tail call float @srgb_to_linearrgb(float noundef %10) #5
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !118
  ret void
}

; Function Attrs: optsize
declare void @ED_imapaint_bucket_fill(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @reloadtranslation_exec(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 !PGOFuncName !121 {
  tail call void @BLF_lang_init() #5
  tail call void @BLF_cache_clear() #5
  tail call void @BLF_lang_set(ptr noundef null) #5
  tail call void @UI_reinit_font() #5
  ret i32 4
}

; Function Attrs: optsize
declare void @BLF_lang_init() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_cache_clear() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_lang_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_reinit_font() local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }
attributes #7 = { optsize }

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
!34 = !{!35, !39, i64 20}
!35 = !{!"wmDrag", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !36, i64 24, !37, i64 32, !40, i64 1056, !36, i64 1064, !41, i64 1072, !39, i64 1076, !39, i64 1080, !37, i64 1084, !39, i64 1284}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"double", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!43, !37, i64 10556}
!43 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !44, i64 16, !39, i64 32, !39, i64 36, !36, i64 40, !45, i64 48, !36, i64 88, !47, i64 96, !48, i64 5360, !36, i64 10520, !37, i64 10528, !41, i64 10536, !41, i64 10540, !41, i64 10544, !41, i64 10548, !41, i64 10552, !37, i64 10556, !37, i64 10557, !46, i64 10558, !46, i64 10560, !46, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !49, i64 10568}
!44 = !{!"ListBase", !36, i64 0, !36, i64 8}
!45 = !{!"ImageUser", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !46, i64 28, !46, i64 30, !46, i64 32, !46, i64 34, !39, i64 36}
!46 = !{!"short", !37, i64 0}
!47 = !{!"Scopes", !39, i64 0, !39, i64 4, !39, i64 8, !41, i64 12, !39, i64 16, !41, i64 20, !41, i64 24, !39, i64 28, !41, i64 32, !39, i64 36, !37, i64 40, !48, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !39, i64 5256, !39, i64 5260}
!48 = !{!"Histogram", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !41, i64 5128, !41, i64 5132, !46, i64 5136, !46, i64 5138, !39, i64 5140, !37, i64 5144}
!49 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!50 = !{!43, !36, i64 40}
!51 = !{!52, !46, i64 214}
!52 = !{!"ARegion", !36, i64 0, !36, i64 8, !53, i64 16, !55, i64 176, !55, i64 192, !46, i64 208, !46, i64 210, !46, i64 212, !46, i64 214, !46, i64 216, !46, i64 218, !41, i64 220, !46, i64 224, !46, i64 226, !46, i64 228, !46, i64 230, !46, i64 232, !46, i64 234, !46, i64 236, !46, i64 238, !36, i64 240, !44, i64 248, !44, i64 264, !44, i64 280, !44, i64 296, !44, i64 312, !44, i64 328, !44, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!53 = !{!"View2D", !54, i64 0, !54, i64 16, !55, i64 32, !55, i64 48, !55, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !46, i64 104, !46, i64 106, !46, i64 108, !46, i64 110, !46, i64 112, !46, i64 114, !46, i64 116, !46, i64 118, !46, i64 120, !46, i64 122, !46, i64 124, !46, i64 126, !36, i64 128, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!54 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!55 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!56 = !{!35, !36, i64 24}
!57 = !{!58, !36, i64 48}
!58 = !{!"wmDropBox", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !46, i64 56}
!59 = !{!60, !37, i64 12}
!60 = !{!"uiDragColorHandle", !37, i64 0, !37, i64 12}
!61 = !{!"interface_ops.c:UI_OT_reset_default_theme"}
!62 = !{!63, !36, i64 0}
!63 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !44, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !64, i64 152, !46, i64 184}
!64 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!65 = !{!63, !36, i64 8}
!66 = !{!63, !36, i64 24}
!67 = !{!63, !36, i64 32}
!68 = !{!63, !46, i64 184}
!69 = !{!"interface_ops.c:UI_OT_copy_data_path_button"}
!70 = !{!63, !36, i64 72}
!71 = !{!"interface_ops.c:UI_OT_reset_default_button"}
!72 = !{!63, !36, i64 88}
!73 = !{!"interface_ops.c:UI_OT_unset_property_button"}
!74 = !{!"interface_ops.c:UI_OT_copy_to_selected_button"}
!75 = !{!"interface_ops.c:UI_OT_reports_to_textblock"}
!76 = !{!"interface_ops.c:UI_OT_drop_color"}
!77 = !{!63, !36, i64 48}
!78 = !{!"interface_ops.c:UI_OT_reloadtranslation"}
!79 = !{!"interface_ops.c:reset_default_theme_exec"}
!80 = !{!"interface_ops.c:copy_data_path_button_exec"}
!81 = !{!82, !36, i64 0}
!82 = !{!"PointerRNA", !83, i64 0, !36, i64 8, !36, i64 16}
!83 = !{!"", !36, i64 0}
!84 = !{!36, !36, i64 0}
!85 = !{!"interface_ops.c:copy_data_path_button_poll"}
!86 = !{!"interface_ops.c:reset_default_button_poll"}
!87 = !{!82, !36, i64 16}
!88 = !{!"interface_ops.c:reset_default_button_exec"}
!89 = !{!90, !36, i64 112}
!90 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !44, i64 128, !36, i64 144, !36, i64 152, !46, i64 160, !37, i64 162}
!91 = !{i32 2, i32 5}
!92 = !{!"interface_ops.c:operator_button_property_finish"}
!93 = !{!46, !46, i64 0}
!94 = !{!"interface_ops.c:unset_property_button_exec"}
!95 = !{!"interface_ops.c:copy_to_selected_button_poll"}
!96 = !{i8 0, i8 2}
!97 = !{!"interface_ops.c:copy_to_selected_button_exec"}
!98 = !{!"interface_ops.c:copy_to_selected_button"}
!99 = !{!100, !36, i64 32}
!100 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !82, i64 16}
!101 = !{!100, !36, i64 16}
!102 = !{i64 0, i64 8, !84, i64 8, i64 8, !84, i64 16, i64 8, !84}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.mustprogress"}
!105 = !{!"interface_ops.c:copy_to_selected_list"}
!106 = !{!37, !37, i64 0}
!107 = !{!82, !36, i64 8}
!108 = !{i64 0, i64 8, !84, i64 8, i64 8, !84}
!109 = !{i64 0, i64 8, !84}
!110 = !{!"interface_ops.c:reports_to_text_poll"}
!111 = !{!"interface_ops.c:reports_to_text_exec"}
!112 = !{!113, !39, i64 2100}
!113 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !44, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !46, i64 2084, !46, i64 2086, !46, i64 2088, !37, i64 2090, !46, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!114 = !{!"interface_ops.c:drop_color_invoke"}
!115 = !{!116, !39, i64 24}
!116 = !{!"uiBut", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !46, i64 32, !46, i64 34, !46, i64 36, !46, i64 38, !46, i64 40, !46, i64 42, !46, i64 44, !46, i64 46, !46, i64 48, !36, i64 56, !37, i64 64, !37, i64 192, !54, i64 592, !36, i64 608, !41, i64 616, !41, i64 620, !41, i64 624, !41, i64 628, !41, i64 632, !41, i64 636, !37, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !36, i64 720, !36, i64 728, !36, i64 736, !36, i64 744, !36, i64 752, !37, i64 760, !36, i64 768, !36, i64 776, !39, i64 784, !37, i64 788, !37, i64 789, !37, i64 790, !37, i64 791, !37, i64 792, !46, i64 794, !46, i64 796, !36, i64 800, !36, i64 808, !82, i64 816, !36, i64 840, !39, i64 848, !82, i64 856, !36, i64 880, !36, i64 888, !36, i64 896, !46, i64 904, !37, i64 906, !37, i64 907, !36, i64 912, !36, i64 920, !41, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992}
!117 = !{!116, !36, i64 840}
!118 = !{!41, !41, i64 0}
!119 = !{!116, !36, i64 992}
!120 = !{!"interface_ops.c:srgb_to_linearrgb_v3_v3"}
!121 = !{!"interface_ops.c:reloadtranslation_exec"}
