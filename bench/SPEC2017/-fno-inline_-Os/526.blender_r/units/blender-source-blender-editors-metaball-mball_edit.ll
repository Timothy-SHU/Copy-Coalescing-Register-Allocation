; ModuleID = 'blender/source/blender/editors/metaball/mball_edit.c'
source_filename = "blender/source/blender/editors/metaball/mball_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.MetaElem = type { ptr, ptr, ptr, i16, i16, i16, i16, float, float, float, [4 x float], float, float, float, float, float, float, float, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.rcti = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"(De)select All\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Change selection of all meta elements\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"MBALL_OT_select_all\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Select Similar\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"MBALL_OT_select_similar\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Select similar metaballs by property types\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@prop_similar_types = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.33, i32 0, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 2, ptr @.str.34, i32 0, ptr @.str.35, ptr @.str.8 }, %struct.EnumPropertyItem { i32 3, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.8 }, %struct.EnumPropertyItem { i32 4, ptr @.str.38, i32 0, ptr @.str.39, ptr @.str.8 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Select Random\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Randomly select metaelements\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"MBALL_OT_select_random_metaelems\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Percent\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Percentage of elements to select randomly\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Duplicate Metaelements\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Duplicate selected metaelement(s)\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"MBALL_OT_duplicate_metaelems\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"Delete selected metaelement(s)\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"MBALL_OT_delete_metaelems\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"Hide\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"Hide (un)selected metaelement(s)\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"MBALL_OT_hide_metaelems\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Unselected\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"Hide unselected rather than selected\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Reveal\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Reveal all hidden metaelements\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"MBALL_OT_reveal_metaelems\00", align 1
@mouse_mball.startelem = internal unnamed_addr global ptr null, align 8
@.str.32 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"RADIUS\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"STIFFNESS\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"Stiffness\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"ROTATION\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"Rotation\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [14 x i8] c"listbase undo\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @free_editMball(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 4
  store ptr null, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 18
  store ptr null, ptr %5, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @make_editMball(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 18
  br label %9

9:                                                ; preds = %7, %16
  %10 = phi ptr [ %5, %7 ], [ %17, %16 ]
  %11 = getelementptr inbounds %struct.MetaElem, ptr %10, i64 0, i32 4
  %12 = load i16, ptr %11, align 2, !tbaa !50
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store ptr %10, ptr %8, align 8, !tbaa !48
  br label %16

16:                                               ; preds = %15, %9
  %17 = load ptr, ptr %10, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !52

19:                                               ; preds = %16, %1
  %20 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 4
  store ptr %4, ptr %20, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @load_editMball(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @add_metaball_primitive(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %17, %12 ], [ %10, %5 ]
  %14 = getelementptr inbounds %struct.MetaElem, ptr %13, i64 0, i32 4
  %15 = load i16, ptr %14, align 2, !tbaa !50
  %16 = and i16 %15, -2
  store i16 %16, ptr %14, align 2, !tbaa !50
  %17 = load ptr, ptr %13, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %12, !llvm.loop !54

19:                                               ; preds = %12, %5
  %20 = tail call ptr @BKE_mball_element_add(ptr noundef %7, i32 noundef %4) #11
  %21 = getelementptr inbounds %struct.MetaElem, ptr %20, i64 0, i32 14
  %22 = load float, ptr %21, align 8, !tbaa !55
  %23 = fmul float %22, %3
  store float %23, ptr %21, align 8, !tbaa !55
  %24 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 15
  %25 = load <2 x float>, ptr %24, align 4, !tbaa !56
  %26 = insertelement <2 x float> poison, float %3, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = fmul <2 x float> %25, %27
  store <2 x float> %28, ptr %24, align 4, !tbaa !56
  %29 = getelementptr inbounds %struct.MetaElem, ptr %20, i64 0, i32 7
  %30 = getelementptr inbounds [4 x float], ptr %2, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %29, ptr noundef nonnull %30) #12
  %31 = getelementptr inbounds %struct.MetaElem, ptr %20, i64 0, i32 4
  %32 = load i16, ptr %31, align 2, !tbaa !50
  %33 = or i16 %32, 1
  store i16 %33, ptr %31, align 2, !tbaa !50
  %34 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 18
  store ptr %20, ptr %34, align 8, !tbaa !48
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @BKE_mball_element_add(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !57 {
  %3 = load float, ptr %1, align 4, !tbaa !56
  store float %3, ptr %0, align 4, !tbaa !56
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !56
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MBALL_OT_select_all(ptr noundef %0) local_unnamed_addr #4 {
  store ptr @.str, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mball_select_all_exec, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmball, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !65
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mball_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !66 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.32) #11
  %9 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef %10) #12, !range !69
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  switch i32 %8, label %26 [
    i32 0, label %14
    i32 1, label %23
    i32 2, label %24
    i32 3, label %25
  ]

14:                                               ; preds = %13, %18
  %15 = phi ptr [ %16, %18 ], [ %10, %13 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.MetaElem, ptr %16, i64 0, i32 4
  %20 = load i16, ptr %19, align 2, !tbaa !50
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %14, label %24, !llvm.loop !70

23:                                               ; preds = %14, %13
  tail call void @BKE_mball_select_all(ptr noundef %5) #11
  br label %26

24:                                               ; preds = %18, %13
  tail call void @BKE_mball_deselect_all(ptr noundef %5) #11
  br label %26

25:                                               ; preds = %13
  tail call void @BKE_mball_select_swap(ptr noundef nonnull %5) #11
  br label %26

26:                                               ; preds = %13, %25, %24, %23
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %5) #11
  br label %27

27:                                               ; preds = %2, %26
  %28 = phi i32 [ 4, %26 ], [ 2, %2 ]
  ret i32 %28
}

; Function Attrs: optsize
declare i32 @ED_operator_editmball(ptr noundef) #5

; Function Attrs: optsize
declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MBALL_OT_select_similar(ptr nocapture noundef %0) local_unnamed_addr #4 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %3, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mball_select_similar_exec, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmball, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %6, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @prop_similar_types, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #11
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !73
  %12 = load ptr, ptr %8, align 8, !tbaa !72
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.9, float noundef 0x3FB99999A0000000, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, float noundef 0x3F847AE140000000, float noundef 1.000000e+00) #11
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mball_select_similar_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !74 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.6) #11
  %9 = load ptr, ptr %6, align 8, !tbaa !67
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.9) #11
  switch i32 %8, label %23 [
    i32 1, label %11
    i32 2, label %13
    i32 3, label %15
    i32 4, label %17
  ]

11:                                               ; preds = %2
  %12 = tail call fastcc zeroext i8 @mball_select_similar_type(ptr noundef %5) #12, !range !69
  br label %19

13:                                               ; preds = %2
  %14 = tail call fastcc zeroext i8 @mball_select_similar_radius(ptr noundef %5, float noundef %10) #12, !range !69
  br label %19

15:                                               ; preds = %2
  %16 = tail call fastcc zeroext i8 @mball_select_similar_stiffness(ptr noundef %5, float noundef %10) #12, !range !69
  br label %19

17:                                               ; preds = %2
  %18 = tail call fastcc zeroext i8 @mball_select_similar_rotation(ptr noundef %5, float noundef %10) #12, !range !69
  br label %19

19:                                               ; preds = %17, %15, %13, %11
  %20 = phi i8 [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ]
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %5) #11
  br label %23

23:                                               ; preds = %2, %22, %19
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MBALL_OT_select_random_metaelems(ptr noundef %0) local_unnamed_addr #4 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_random_metaelems_exec, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmball, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = tail call ptr @RNA_def_float_percentage(ptr noundef %8, ptr noundef nonnull @.str.14, float noundef 5.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, float noundef 0.000000e+00, float noundef 1.000000e+02) #11
  tail call void @WM_operator_properties_select_action_simple(ptr noundef nonnull %0, i32 noundef 1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_random_metaelems_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !75 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.32) #11
  %9 = icmp eq i32 %8, 1
  %10 = load ptr, ptr %6, align 8, !tbaa !67
  %11 = tail call float @RNA_float_get(ptr noundef %10, ptr noundef nonnull @.str.14) #11
  %12 = fdiv float %11, 1.000000e+02
  %13 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = zext i1 %9 to i16
  br label %19

19:                                               ; preds = %17, %28
  %20 = phi ptr [ %29, %28 ], [ %15, %17 ]
  %21 = tail call float @BLI_frand() #11
  %22 = fcmp olt float %21, %12
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.MetaElem, ptr %20, i64 0, i32 4
  %25 = load i16, ptr %24, align 2, !tbaa !50
  %26 = and i16 %25, -2
  %27 = or disjoint i16 %26, %18
  store i16 %27, ptr %24, align 2, !tbaa !50
  br label %28

28:                                               ; preds = %23, %19
  %29 = load ptr, ptr %20, align 8, !tbaa !49
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %19, !llvm.loop !76

31:                                               ; preds = %28, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %5) #11
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_float_percentage(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @WM_operator_properties_select_action_simple(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MBALL_OT_duplicate_metaelems(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @duplicate_metaelems_exec, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmball, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @duplicate_metaelems_exec(ptr noundef %0, ptr nocapture readnone %1) #4 !PGOFuncName !77 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.ListBase, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 18
  br label %13

13:                                               ; preds = %11, %25
  %14 = phi ptr [ %9, %11 ], [ %27, %25 ]
  %15 = getelementptr inbounds %struct.MetaElem, ptr %14, i64 0, i32 4
  %16 = load i16, ptr %15, align 2, !tbaa !50
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %21 = tail call ptr %20(ptr noundef nonnull %14) #11
  %22 = load ptr, ptr %6, align 8, !tbaa !46
  tail call void @BLI_addtail(ptr noundef %22, ptr noundef %21) #11
  store ptr %21, ptr %12, align 8, !tbaa !48
  %23 = load i16, ptr %15, align 2, !tbaa !50
  %24 = and i16 %23, -2
  store i16 %24, ptr %15, align 2, !tbaa !50
  br label %25

25:                                               ; preds = %19, %13
  %26 = getelementptr inbounds %struct.MetaElem, ptr %14, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !79
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %13, !llvm.loop !80

29:                                               ; preds = %25
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %5) #11
  %30 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @DAG_id_tag_update(ptr noundef %30, i16 noundef signext 0) #11
  br label %31

31:                                               ; preds = %29, %2
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MBALL_OT_delete_metaelems(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.20, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_metaelems_exec, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmball, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @delete_metaelems_exec(ptr noundef %0, ptr nocapture readnone %1) #4 !PGOFuncName !81 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 18
  br label %12

12:                                               ; preds = %10, %26
  %13 = phi ptr [ %8, %10 ], [ %14, %26 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !83
  %15 = getelementptr inbounds %struct.MetaElem, ptr %13, i64 0, i32 4
  %16 = load i16, ptr %15, align 2, !tbaa !50
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %11, align 8, !tbaa !48
  %21 = icmp eq ptr %20, %13
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store ptr null, ptr %11, align 8, !tbaa !48
  br label %23

23:                                               ; preds = %22, %19
  %24 = load ptr, ptr %6, align 8, !tbaa !46
  tail call void @BLI_remlink(ptr noundef %24, ptr noundef nonnull %13) #11
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %25(ptr noundef nonnull %13) #11
  br label %26

26:                                               ; preds = %23, %12
  %27 = icmp eq ptr %14, null
  br i1 %27, label %28, label %12, !llvm.loop !84

28:                                               ; preds = %26
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %5) #11
  %29 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @DAG_id_tag_update(ptr noundef %29, i16 noundef signext 0) #11
  br label %30

30:                                               ; preds = %28, %2
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MBALL_OT_hide_metaelems(ptr nocapture noundef %0) local_unnamed_addr #4 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @hide_metaelems_exec, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmball, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @hide_metaelems_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !85 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.26) #11
  %9 = icmp ne i32 %8, 0
  %10 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %2, %23
  %15 = phi ptr [ %24, %23 ], [ %12, %2 ]
  %16 = getelementptr inbounds %struct.MetaElem, ptr %15, i64 0, i32 4
  %17 = load i16, ptr %16, align 2, !tbaa !50
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  %20 = xor i1 %9, %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = or i16 %17, 8
  store i16 %22, ptr %16, align 2, !tbaa !50
  br label %23

23:                                               ; preds = %21, %14
  %24 = load ptr, ptr %15, align 8, !tbaa !83
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %14, !llvm.loop !86

26:                                               ; preds = %23
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %5) #11
  %27 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @DAG_id_tag_update(ptr noundef %27, i16 noundef signext 0) #11
  br label %28

28:                                               ; preds = %26, %2
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MBALL_OT_reveal_metaelems(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @reveal_metaelems_exec, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmball, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @reveal_metaelems_exec(ptr noundef %0, ptr nocapture readnone %1) #4 !PGOFuncName !87 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %15, %10 ], [ %8, %2 ]
  %12 = getelementptr inbounds %struct.MetaElem, ptr %11, i64 0, i32 4
  %13 = load i16, ptr %12, align 2, !tbaa !50
  %14 = and i16 %13, -9
  store i16 %14, ptr %12, align 2, !tbaa !50
  %15 = load ptr, ptr %11, align 8, !tbaa !83
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10, !llvm.loop !88

17:                                               ; preds = %10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %5) #11
  %18 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @DAG_id_tag_update(ptr noundef %18, i16 noundef signext 0) #11
  br label %19

19:                                               ; preds = %17, %2
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @mouse_mball(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #4 {
  %6 = alloca %struct.ViewContext, align 8
  %7 = alloca [40000 x i32], align 16
  %8 = alloca %struct.rcti, align 16
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %6) #11
  %12 = load <2 x i32>, ptr %1, align 4, !tbaa !89
  %13 = shufflevector <2 x i32> %12, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %14 = add nsw <4 x i32> %13, <i32 -12, i32 12, i32 -12, i32 12>
  store <4 x i32> %14, ptr %8, align 16, !tbaa !89
  %15 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 10000, ptr noundef nonnull %8, i8 noundef zeroext 1) #11
  %16 = getelementptr inbounds %struct.MetaBall, ptr %11, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = load ptr, ptr @mouse_mball.startelem, align 8
  br label %19

19:                                               ; preds = %19, %5
  %20 = phi ptr [ %17, %5 ], [ %21, %19 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = icmp eq ptr %21, null
  %23 = icmp eq ptr %21, %18
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %25, label %19, !llvm.loop !90

25:                                               ; preds = %19
  %26 = sext i16 %15 to i64
  br i1 %22, label %27, label %29

27:                                               ; preds = %25
  %28 = load ptr, ptr %17, align 8, !tbaa !82
  store ptr %28, ptr @mouse_mball.startelem, align 8, !tbaa !49
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi ptr [ %28, %27 ], [ %18, %25 ]
  %31 = icmp slt i16 %15, 1
  %32 = icmp eq ptr %30, null
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %105, label %34

34:                                               ; preds = %29, %71
  %35 = phi ptr [ %72, %71 ], [ %30, %29 ]
  %36 = getelementptr inbounds %struct.MetaElem, ptr %35, i64 0, i32 5
  %37 = load i16, ptr %36, align 4, !tbaa !91
  %38 = sext i16 %37 to i32
  %39 = getelementptr inbounds %struct.MetaElem, ptr %35, i64 0, i32 4
  %40 = getelementptr inbounds %struct.MetaElem, ptr %35, i64 0, i32 6
  %41 = load i16, ptr %40, align 2, !tbaa !92
  %42 = sext i16 %41 to i32
  br label %43

43:                                               ; preds = %34, %60
  %44 = phi i64 [ 0, %34 ], [ %62, %60 ]
  %45 = phi ptr [ null, %34 ], [ %61, %60 ]
  %46 = shl nsw i64 %44, 2
  %47 = or disjoint i64 %46, 3
  %48 = getelementptr inbounds [40000 x i32], ptr %7, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !89
  %50 = icmp eq i32 %49, %38
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i16, ptr %39, align 2, !tbaa !50
  %53 = or i16 %52, 16
  store i16 %53, ptr %39, align 2, !tbaa !50
  br label %54

54:                                               ; preds = %51, %43
  %55 = phi ptr [ %35, %51 ], [ %45, %43 ]
  %56 = icmp eq i32 %49, %42
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i16, ptr %39, align 2, !tbaa !50
  %59 = and i16 %58, -17
  store i16 %59, ptr %39, align 2, !tbaa !50
  br label %60

60:                                               ; preds = %54, %57
  %61 = phi ptr [ %35, %57 ], [ %55, %54 ]
  %62 = add nuw nsw i64 %44, 1
  %63 = icmp eq i64 %62, %26
  br i1 %63, label %64, label %43, !llvm.loop !93

64:                                               ; preds = %60
  %65 = icmp eq ptr %61, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %64
  %67 = load ptr, ptr %35, align 8, !tbaa !83
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load ptr, ptr %17, align 8, !tbaa !82
  br label %71

71:                                               ; preds = %69, %66
  %72 = phi ptr [ %70, %69 ], [ %67, %66 ]
  %73 = icmp ne ptr %72, %30
  %74 = icmp ne ptr %72, null
  %75 = and i1 %73, %74
  br i1 %75, label %34, label %105, !llvm.loop !94

76:                                               ; preds = %64
  %77 = icmp eq i8 %2, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.MetaElem, ptr %61, i64 0, i32 4
  %80 = load i16, ptr %79, align 2, !tbaa !50
  %81 = or i16 %80, 1
  store i16 %81, ptr %79, align 2, !tbaa !50
  br label %103

82:                                               ; preds = %76
  %83 = icmp eq i8 %3, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.MetaElem, ptr %61, i64 0, i32 4
  %86 = load i16, ptr %85, align 2, !tbaa !50
  %87 = and i16 %86, -2
  store i16 %87, ptr %85, align 2, !tbaa !50
  br label %103

88:                                               ; preds = %82
  %89 = icmp eq i8 %4, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.MetaElem, ptr %61, i64 0, i32 4
  %92 = load i16, ptr %91, align 2, !tbaa !50
  %93 = and i16 %92, 1
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = and i16 %92, -2
  store i16 %96, ptr %91, align 2, !tbaa !50
  br label %103

97:                                               ; preds = %90
  %98 = or disjoint i16 %92, 1
  store i16 %98, ptr %91, align 2, !tbaa !50
  br label %103

99:                                               ; preds = %88
  call void @BKE_mball_deselect_all(ptr noundef %11) #11
  %100 = getelementptr inbounds %struct.MetaElem, ptr %61, i64 0, i32 4
  %101 = load i16, ptr %100, align 2, !tbaa !50
  %102 = or i16 %101, 1
  store i16 %102, ptr %100, align 2, !tbaa !50
  br label %103

103:                                              ; preds = %84, %95, %97, %99, %78
  %104 = getelementptr inbounds %struct.MetaBall, ptr %11, i64 0, i32 18
  store ptr %61, ptr %104, align 8, !tbaa !48
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %11) #11
  br label %105

105:                                              ; preds = %71, %29, %103
  %106 = phi i8 [ 1, %103 ], [ 0, %29 ], [ 0, %71 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  ret i8 %106
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare signext i16 @view3d_opengl_select(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_mball_deselect_all(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @undo_push_mball(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  tail call void @undo_editmode_push(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @get_data, ptr noundef nonnull @free_undoMball, ptr noundef nonnull @undoMball_to_editMball, ptr noundef nonnull @editMball_to_undoMball, ptr noundef null) #11
  ret void
}

; Function Attrs: optsize
declare void @undo_editmode_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @get_data(ptr noundef %0) #4 !PGOFuncName !95 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %3 = tail call fastcc ptr @metaball_get_editelems(ptr noundef %2) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @free_undoMball(ptr noundef %0) #4 !PGOFuncName !96 {
  tail call fastcc void @freeMetaElemlist(ptr noundef %0) #12
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %2(ptr noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @undoMball_to_editMball(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #4 !PGOFuncName !97 {
  tail call fastcc void @freeMetaElemlist(ptr noundef %1) #12
  %4 = load ptr, ptr %0, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %3 ]
  %8 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %9 = tail call ptr %8(ptr noundef nonnull %7) #11
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %9) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !49
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !llvm.loop !98

12:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @editMball_to_undoMball(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 !PGOFuncName !99 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %4 = tail call ptr %3(i64 noundef 16, ptr noundef nonnull @.str.40) #11
  %5 = load ptr, ptr %0, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %11, %7 ], [ %5, %2 ]
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %10 = tail call ptr %9(ptr noundef nonnull %8) #11
  tail call void @BLI_addtail(ptr noundef %4, ptr noundef %10) #11
  %11 = load ptr, ptr %8, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7, !llvm.loop !100

13:                                               ; preds = %7, %2
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !101 {
  %2 = load ptr, ptr %0, align 8, !tbaa !82
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BKE_mball_select_all(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_mball_select_swap(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @mball_select_similar_type(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !102 {
  %2 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %1, %33
  %7 = phi ptr [ %35, %33 ], [ %4, %1 ]
  %8 = phi i8 [ %34, %33 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.MetaElem, ptr %7, i64 0, i32 4
  %10 = load i16, ptr %9, align 2, !tbaa !50
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.MetaElem, ptr %7, i64 0, i32 3
  br label %15

15:                                               ; preds = %13, %29
  %16 = phi ptr [ %4, %13 ], [ %31, %29 ]
  %17 = phi i8 [ %8, %13 ], [ %30, %29 ]
  %18 = getelementptr inbounds %struct.MetaElem, ptr %16, i64 0, i32 4
  %19 = load i16, ptr %18, align 2, !tbaa !50
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load i16, ptr %14, align 8, !tbaa !103
  %24 = getelementptr inbounds %struct.MetaElem, ptr %16, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !103
  %26 = icmp eq i16 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = or disjoint i16 %19, 1
  store i16 %28, ptr %18, align 2, !tbaa !50
  br label %29

29:                                               ; preds = %15, %27, %22
  %30 = phi i8 [ 1, %27 ], [ %17, %22 ], [ %17, %15 ]
  %31 = load ptr, ptr %16, align 8, !tbaa !49
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %15, !llvm.loop !104

33:                                               ; preds = %29, %6
  %34 = phi i8 [ %8, %6 ], [ %30, %29 ]
  %35 = load ptr, ptr %7, align 8, !tbaa !49
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %6, !llvm.loop !105

37:                                               ; preds = %33, %1
  %38 = phi i8 [ 0, %1 ], [ %34, %33 ]
  ret i8 %38
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @mball_select_similar_radius(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #2 !PGOFuncName !106 {
  %3 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %2, %37
  %8 = phi ptr [ %39, %37 ], [ %5, %2 ]
  %9 = phi i8 [ %38, %37 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.MetaElem, ptr %8, i64 0, i32 4
  %11 = load i16, ptr %10, align 2, !tbaa !50
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.MetaElem, ptr %8, i64 0, i32 14
  br label %16

16:                                               ; preds = %14, %33
  %17 = phi ptr [ %5, %14 ], [ %35, %33 ]
  %18 = phi i8 [ %9, %14 ], [ %34, %33 ]
  %19 = getelementptr inbounds %struct.MetaElem, ptr %17, i64 0, i32 4
  %20 = load i16, ptr %19, align 2, !tbaa !50
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.MetaElem, ptr %17, i64 0, i32 14
  %25 = load float, ptr %24, align 8, !tbaa !55
  %26 = load float, ptr %15, align 8, !tbaa !55
  %27 = fsub float %25, %26
  %28 = tail call float @llvm.fabs.f32(float %27)
  %29 = fmul float %26, %1
  %30 = fcmp ugt float %28, %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = or disjoint i16 %20, 1
  store i16 %32, ptr %19, align 2, !tbaa !50
  br label %33

33:                                               ; preds = %16, %31, %23
  %34 = phi i8 [ 1, %31 ], [ %18, %23 ], [ %18, %16 ]
  %35 = load ptr, ptr %17, align 8, !tbaa !49
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %16, !llvm.loop !107

37:                                               ; preds = %33, %7
  %38 = phi i8 [ %9, %7 ], [ %34, %33 ]
  %39 = load ptr, ptr %8, align 8, !tbaa !49
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %7, !llvm.loop !108

41:                                               ; preds = %37, %2
  %42 = phi i8 [ 0, %2 ], [ %38, %37 ]
  ret i8 %42
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @mball_select_similar_stiffness(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #2 !PGOFuncName !109 {
  %3 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %40, label %7

7:                                                ; preds = %2, %36
  %8 = phi ptr [ %38, %36 ], [ %5, %2 ]
  %9 = phi i8 [ %37, %36 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.MetaElem, ptr %8, i64 0, i32 4
  %11 = load i16, ptr %10, align 2, !tbaa !50
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.MetaElem, ptr %8, i64 0, i32 16
  br label %16

16:                                               ; preds = %14, %32
  %17 = phi ptr [ %5, %14 ], [ %34, %32 ]
  %18 = phi i8 [ %9, %14 ], [ %33, %32 ]
  %19 = getelementptr inbounds %struct.MetaElem, ptr %17, i64 0, i32 4
  %20 = load i16, ptr %19, align 2, !tbaa !50
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.MetaElem, ptr %17, i64 0, i32 16
  %25 = load float, ptr %24, align 8, !tbaa !110
  %26 = load float, ptr %15, align 8, !tbaa !110
  %27 = fsub float %25, %26
  %28 = tail call float @llvm.fabs.f32(float %27)
  %29 = fcmp ugt float %28, %1
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = or disjoint i16 %20, 1
  store i16 %31, ptr %19, align 2, !tbaa !50
  br label %32

32:                                               ; preds = %16, %30, %23
  %33 = phi i8 [ 1, %30 ], [ %18, %23 ], [ %18, %16 ]
  %34 = load ptr, ptr %17, align 8, !tbaa !49
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %16, !llvm.loop !111

36:                                               ; preds = %32, %7
  %37 = phi i8 [ %9, %7 ], [ %33, %32 ]
  %38 = load ptr, ptr %8, align 8, !tbaa !49
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %7, !llvm.loop !112

40:                                               ; preds = %36, %2
  %41 = phi i8 [ 0, %2 ], [ %37, %36 ]
  ret i8 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @mball_select_similar_rotation(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #4 !PGOFuncName !113 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = fmul float %1, 0x3FF921FB60000000
  %6 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = icmp eq ptr %8, null
  br i1 %9, label %57, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %14 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  br label %15

15:                                               ; preds = %10, %53
  %16 = phi ptr [ %8, %10 ], [ %55, %53 ]
  %17 = phi i8 [ 0, %10 ], [ %54, %53 ]
  %18 = getelementptr inbounds %struct.MetaElem, ptr %16, i64 0, i32 4
  %19 = load i16, ptr %18, align 2, !tbaa !50
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #13
  call void @unit_m3(ptr noundef nonnull %3) #11
  %23 = getelementptr inbounds %struct.MetaElem, ptr %16, i64 0, i32 10
  call void @mul_qt_v3(ptr noundef nonnull %23, ptr noundef nonnull %3) #11
  call void @mul_qt_v3(ptr noundef nonnull %23, ptr noundef nonnull %11) #11
  call void @mul_qt_v3(ptr noundef nonnull %23, ptr noundef nonnull %12) #11
  call void @normalize_m3(ptr noundef nonnull %3) #11
  %24 = load ptr, ptr %6, align 8, !tbaa !46
  %25 = load ptr, ptr %24, align 8, !tbaa !49
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %22, %47
  %28 = phi ptr [ %49, %47 ], [ %25, %22 ]
  %29 = phi i8 [ %48, %47 ], [ %17, %22 ]
  %30 = getelementptr inbounds %struct.MetaElem, ptr %28, i64 0, i32 4
  %31 = load i16, ptr %30, align 2, !tbaa !50
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #13
  call void @unit_m3(ptr noundef nonnull %4) #11
  %35 = getelementptr inbounds %struct.MetaElem, ptr %28, i64 0, i32 10
  call void @mul_qt_v3(ptr noundef nonnull %35, ptr noundef nonnull %4) #11
  call void @mul_qt_v3(ptr noundef nonnull %35, ptr noundef nonnull %13) #11
  call void @mul_qt_v3(ptr noundef nonnull %35, ptr noundef nonnull %14) #11
  call void @normalize_m3(ptr noundef nonnull %4) #11
  %36 = call float @angle_normalized_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %37 = call float @angle_normalized_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %13) #11
  %38 = fadd float %36, %37
  %39 = call float @angle_normalized_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %14) #11
  %40 = fadd float %38, %39
  %41 = fcmp olt float %40, %5
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i16, ptr %30, align 2, !tbaa !50
  %44 = or i16 %43, 1
  store i16 %44, ptr %30, align 2, !tbaa !50
  br label %45

45:                                               ; preds = %42, %34
  %46 = phi i8 [ 1, %42 ], [ %29, %34 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #13
  br label %47

47:                                               ; preds = %27, %45
  %48 = phi i8 [ %46, %45 ], [ %29, %27 ]
  %49 = load ptr, ptr %28, align 8, !tbaa !49
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %27, !llvm.loop !114

51:                                               ; preds = %47, %22
  %52 = phi i8 [ %17, %22 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #13
  br label %53

53:                                               ; preds = %15, %51
  %54 = phi i8 [ %52, %51 ], [ %17, %15 ]
  %55 = load ptr, ptr %16, align 8, !tbaa !49
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %15, !llvm.loop !115

57:                                               ; preds = %53, %2
  %58 = phi i8 [ 0, %2 ], [ %54, %53 ]
  ret i8 %58
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @normalize_m3(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare float @BLI_frand() local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @metaball_get_editelems(ptr noundef readonly %0) unnamed_addr #10 !PGOFuncName !116 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !117
  %6 = icmp eq i16 %5, 5
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.MetaBall, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi ptr [ %11, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @freeMetaElemlist(ptr noundef %0) unnamed_addr #4 !PGOFuncName !118 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @BLI_pophead(ptr noundef nonnull %0) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %3 ]
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %8(ptr noundef nonnull %7) #11
  %9 = tail call ptr @BLI_pophead(ptr noundef nonnull %0) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !119

11:                                               ; preds = %6, %3, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }

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
!34 = !{!35, !37, i64 296}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!47, !37, i64 160}
!47 = !{!"MetaBall", !36, i64 0, !37, i64 120, !43, i64 128, !43, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 185, !40, i64 186, !40, i64 188, !40, i64 190, !38, i64 192, !38, i64 204, !38, i64 216, !44, i64 228, !44, i64 232, !44, i64 236, !37, i64 240}
!48 = !{!47, !37, i64 240}
!49 = !{!37, !37, i64 0}
!50 = !{!51, !40, i64 26}
!51 = !{!"MetaElem", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !38, i64 44, !44, i64 60, !44, i64 64, !44, i64 68, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84, !37, i64 88, !37, i64 96}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = distinct !{!54, !53}
!55 = !{!51, !44, i64 72}
!56 = !{!44, !44, i64 0}
!57 = !{!"mball_edit.c:copy_v3_v3"}
!58 = !{!59, !37, i64 0}
!59 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !60, i64 152, !40, i64 184}
!60 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!61 = !{!59, !37, i64 24}
!62 = !{!59, !37, i64 8}
!63 = !{!59, !37, i64 32}
!64 = !{!59, !37, i64 72}
!65 = !{!59, !40, i64 184}
!66 = !{!"mball_edit.c:mball_select_all_exec"}
!67 = !{!68, !37, i64 112}
!68 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!69 = !{i8 0, i8 2}
!70 = distinct !{!70, !53}
!71 = !{!59, !37, i64 48}
!72 = !{!59, !37, i64 88}
!73 = !{!59, !37, i64 104}
!74 = !{!"mball_edit.c:mball_select_similar_exec"}
!75 = !{!"mball_edit.c:select_random_metaelems_exec"}
!76 = distinct !{!76, !53}
!77 = !{!"mball_edit.c:duplicate_metaelems_exec"}
!78 = !{!43, !37, i64 8}
!79 = !{!51, !37, i64 8}
!80 = distinct !{!80, !53}
!81 = !{!"mball_edit.c:delete_metaelems_exec"}
!82 = !{!43, !37, i64 0}
!83 = !{!51, !37, i64 0}
!84 = distinct !{!84, !53}
!85 = !{!"mball_edit.c:hide_metaelems_exec"}
!86 = distinct !{!86, !53}
!87 = !{!"mball_edit.c:reveal_metaelems_exec"}
!88 = distinct !{!88, !53}
!89 = !{!41, !41, i64 0}
!90 = distinct !{!90, !53}
!91 = !{!51, !40, i64 28}
!92 = !{!51, !40, i64 30}
!93 = distinct !{!93, !53}
!94 = distinct !{!94, !53}
!95 = !{!"mball_edit.c:get_data"}
!96 = !{!"mball_edit.c:free_undoMball"}
!97 = !{!"mball_edit.c:undoMball_to_editMball"}
!98 = distinct !{!98, !53}
!99 = !{!"mball_edit.c:editMball_to_undoMball"}
!100 = distinct !{!100, !53}
!101 = !{!"mball_edit.c:BLI_listbase_is_empty"}
!102 = !{!"mball_edit.c:mball_select_similar_type"}
!103 = !{!51, !40, i64 24}
!104 = distinct !{!104, !53}
!105 = distinct !{!105, !53}
!106 = !{!"mball_edit.c:mball_select_similar_radius"}
!107 = distinct !{!107, !53}
!108 = distinct !{!108, !53}
!109 = !{!"mball_edit.c:mball_select_similar_stiffness"}
!110 = !{!51, !44, i64 80}
!111 = distinct !{!111, !53}
!112 = distinct !{!112, !53}
!113 = !{!"mball_edit.c:mball_select_similar_rotation"}
!114 = distinct !{!114, !53}
!115 = distinct !{!115, !53}
!116 = !{!"mball_edit.c:metaball_get_editelems"}
!117 = !{!35, !40, i64 136}
!118 = !{!"mball_edit.c:freeMetaElemlist"}
!119 = distinct !{!119, !53}
