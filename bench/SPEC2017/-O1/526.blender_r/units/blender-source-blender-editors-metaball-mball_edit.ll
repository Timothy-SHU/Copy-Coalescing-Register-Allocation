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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
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

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @load_editMball(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind uwtable
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
  br i1 %18, label %19, label %12, !llvm.loop !55

19:                                               ; preds = %12, %5
  %20 = tail call ptr @BKE_mball_element_add(ptr noundef %7, i32 noundef %4) #8
  %21 = getelementptr inbounds %struct.MetaElem, ptr %20, i64 0, i32 14
  %22 = load float, ptr %21, align 8, !tbaa !56
  %23 = fmul float %22, %3
  store float %23, ptr %21, align 8, !tbaa !56
  %24 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 15
  %25 = load float, ptr %24, align 4, !tbaa !57
  %26 = fmul float %25, %3
  store float %26, ptr %24, align 4, !tbaa !57
  %27 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 16
  %28 = load float, ptr %27, align 8, !tbaa !58
  %29 = fmul float %28, %3
  store float %29, ptr %27, align 8, !tbaa !58
  %30 = getelementptr inbounds %struct.MetaElem, ptr %20, i64 0, i32 7
  %31 = getelementptr inbounds [4 x float], ptr %2, i64 3
  %32 = load float, ptr %31, align 4, !tbaa !59
  store float %32, ptr %30, align 4, !tbaa !59
  %33 = getelementptr inbounds [4 x float], ptr %2, i64 3, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !59
  %35 = getelementptr inbounds %struct.MetaElem, ptr %20, i64 0, i32 8
  store float %34, ptr %35, align 4, !tbaa !59
  %36 = getelementptr inbounds [4 x float], ptr %2, i64 3, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !59
  %38 = getelementptr inbounds %struct.MetaElem, ptr %20, i64 0, i32 9
  store float %37, ptr %38, align 4, !tbaa !59
  %39 = getelementptr inbounds %struct.MetaElem, ptr %20, i64 0, i32 4
  %40 = load i16, ptr %39, align 2, !tbaa !50
  %41 = or i16 %40, 1
  store i16 %41, ptr %39, align 2, !tbaa !50
  %42 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 18
  store ptr %20, ptr %42, align 8, !tbaa !48
  ret ptr %20
}

declare ptr @BKE_mball_element_add(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @MBALL_OT_select_all(ptr noundef %0) local_unnamed_addr #4 {
  store ptr @.str, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !63
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mball_select_all_exec, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmball, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !67
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mball_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.32) #8
  %9 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %2
  %14 = icmp eq i32 %8, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %13, %19
  %16 = phi ptr [ %17, %19 ], [ %10, %13 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.MetaElem, ptr %17, i64 0, i32 4
  %21 = load i16, ptr %20, align 2, !tbaa !50
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %15, label %24, !llvm.loop !71

24:                                               ; preds = %19, %15, %13
  %25 = phi i32 [ %8, %13 ], [ 1, %15 ], [ 2, %19 ]
  switch i32 %25, label %29 [
    i32 1, label %26
    i32 2, label %27
    i32 3, label %28
  ]

26:                                               ; preds = %24
  tail call void @BKE_mball_select_all(ptr noundef %5) #8
  br label %29

27:                                               ; preds = %24
  tail call void @BKE_mball_deselect_all(ptr noundef %5) #8
  br label %29

28:                                               ; preds = %24
  tail call void @BKE_mball_select_swap(ptr noundef %5) #8
  br label %29

29:                                               ; preds = %24, %28, %27, %26
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %5) #8
  br label %30

30:                                               ; preds = %2, %29
  %31 = phi i32 [ 4, %29 ], [ 2, %2 ]
  ret i32 %31
}

declare i32 @ED_operator_editmball(ptr noundef) #5

declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @MBALL_OT_select_similar(ptr nocapture noundef %0) local_unnamed_addr #4 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %3, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mball_select_similar_exec, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmball, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %6, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @prop_similar_types, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !74
  %12 = load ptr, ptr %8, align 8, !tbaa !73
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.9, float noundef 0x3FB99999A0000000, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, float noundef 0x3F847AE140000000, float noundef 1.000000e+00) #8
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @mball_select_similar_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.6) #8
  %11 = load ptr, ptr %8, align 8, !tbaa !68
  %12 = tail call float @RNA_float_get(ptr noundef %11, ptr noundef nonnull @.str.9) #8
  switch i32 %10, label %188 [
    i32 1, label %13
    i32 2, label %52
    i32 3, label %94
    i32 4, label %135
  ]

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = icmp eq ptr %16, null
  br i1 %17, label %188, label %18

18:                                               ; preds = %13, %48
  %19 = phi ptr [ %50, %48 ], [ %16, %13 ]
  %20 = phi i8 [ %49, %48 ], [ 0, %13 ]
  %21 = getelementptr inbounds %struct.MetaElem, ptr %19, i64 0, i32 4
  %22 = load i16, ptr %21, align 2, !tbaa !50
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %15, align 8, !tbaa !49
  %27 = icmp eq ptr %26, null
  br i1 %27, label %48, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.MetaElem, ptr %19, i64 0, i32 3
  br label %30

30:                                               ; preds = %28, %44
  %31 = phi ptr [ %26, %28 ], [ %46, %44 ]
  %32 = phi i8 [ %20, %28 ], [ %45, %44 ]
  %33 = getelementptr inbounds %struct.MetaElem, ptr %31, i64 0, i32 4
  %34 = load i16, ptr %33, align 2, !tbaa !50
  %35 = and i16 %34, 1
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i16, ptr %29, align 8, !tbaa !75
  %39 = getelementptr inbounds %struct.MetaElem, ptr %31, i64 0, i32 3
  %40 = load i16, ptr %39, align 8, !tbaa !75
  %41 = icmp eq i16 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = or disjoint i16 %34, 1
  store i16 %43, ptr %33, align 2, !tbaa !50
  br label %44

44:                                               ; preds = %42, %37, %30
  %45 = phi i8 [ 1, %42 ], [ %32, %37 ], [ %32, %30 ]
  %46 = load ptr, ptr %31, align 8, !tbaa !49
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %30, !llvm.loop !76

48:                                               ; preds = %44, %25, %18
  %49 = phi i8 [ %20, %18 ], [ %20, %25 ], [ %45, %44 ]
  %50 = load ptr, ptr %19, align 8, !tbaa !49
  %51 = icmp eq ptr %50, null
  br i1 %51, label %188, label %18, !llvm.loop !77

52:                                               ; preds = %2
  %53 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  %55 = load ptr, ptr %54, align 8, !tbaa !49
  %56 = icmp eq ptr %55, null
  br i1 %56, label %188, label %57

57:                                               ; preds = %52, %90
  %58 = phi ptr [ %92, %90 ], [ %55, %52 ]
  %59 = phi i8 [ %91, %90 ], [ 0, %52 ]
  %60 = getelementptr inbounds %struct.MetaElem, ptr %58, i64 0, i32 4
  %61 = load i16, ptr %60, align 2, !tbaa !50
  %62 = and i16 %61, 1
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %90, label %64

64:                                               ; preds = %57
  %65 = load ptr, ptr %54, align 8, !tbaa !49
  %66 = icmp eq ptr %65, null
  br i1 %66, label %90, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.MetaElem, ptr %58, i64 0, i32 14
  br label %69

69:                                               ; preds = %67, %86
  %70 = phi ptr [ %65, %67 ], [ %88, %86 ]
  %71 = phi i8 [ %59, %67 ], [ %87, %86 ]
  %72 = getelementptr inbounds %struct.MetaElem, ptr %70, i64 0, i32 4
  %73 = load i16, ptr %72, align 2, !tbaa !50
  %74 = and i16 %73, 1
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.MetaElem, ptr %70, i64 0, i32 14
  %78 = load float, ptr %77, align 8, !tbaa !56
  %79 = load float, ptr %68, align 8, !tbaa !56
  %80 = fsub float %78, %79
  %81 = tail call float @llvm.fabs.f32(float %80)
  %82 = fmul float %12, %79
  %83 = fcmp ugt float %81, %82
  br i1 %83, label %86, label %84

84:                                               ; preds = %76
  %85 = or disjoint i16 %73, 1
  store i16 %85, ptr %72, align 2, !tbaa !50
  br label %86

86:                                               ; preds = %84, %76, %69
  %87 = phi i8 [ 1, %84 ], [ %71, %76 ], [ %71, %69 ]
  %88 = load ptr, ptr %70, align 8, !tbaa !49
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %69, !llvm.loop !78

90:                                               ; preds = %86, %64, %57
  %91 = phi i8 [ %59, %57 ], [ %59, %64 ], [ %87, %86 ]
  %92 = load ptr, ptr %58, align 8, !tbaa !49
  %93 = icmp eq ptr %92, null
  br i1 %93, label %188, label %57, !llvm.loop !79

94:                                               ; preds = %2
  %95 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !46
  %97 = load ptr, ptr %96, align 8, !tbaa !49
  %98 = icmp eq ptr %97, null
  br i1 %98, label %188, label %99

99:                                               ; preds = %94, %131
  %100 = phi ptr [ %133, %131 ], [ %97, %94 ]
  %101 = phi i8 [ %132, %131 ], [ 0, %94 ]
  %102 = getelementptr inbounds %struct.MetaElem, ptr %100, i64 0, i32 4
  %103 = load i16, ptr %102, align 2, !tbaa !50
  %104 = and i16 %103, 1
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %131, label %106

106:                                              ; preds = %99
  %107 = load ptr, ptr %96, align 8, !tbaa !49
  %108 = icmp eq ptr %107, null
  br i1 %108, label %131, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.MetaElem, ptr %100, i64 0, i32 16
  br label %111

111:                                              ; preds = %109, %127
  %112 = phi ptr [ %107, %109 ], [ %129, %127 ]
  %113 = phi i8 [ %101, %109 ], [ %128, %127 ]
  %114 = getelementptr inbounds %struct.MetaElem, ptr %112, i64 0, i32 4
  %115 = load i16, ptr %114, align 2, !tbaa !50
  %116 = and i16 %115, 1
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.MetaElem, ptr %112, i64 0, i32 16
  %120 = load float, ptr %119, align 8, !tbaa !80
  %121 = load float, ptr %110, align 8, !tbaa !80
  %122 = fsub float %120, %121
  %123 = tail call float @llvm.fabs.f32(float %122)
  %124 = fcmp ugt float %123, %12
  br i1 %124, label %127, label %125

125:                                              ; preds = %118
  %126 = or disjoint i16 %115, 1
  store i16 %126, ptr %114, align 2, !tbaa !50
  br label %127

127:                                              ; preds = %125, %118, %111
  %128 = phi i8 [ 1, %125 ], [ %113, %118 ], [ %113, %111 ]
  %129 = load ptr, ptr %112, align 8, !tbaa !49
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %111, !llvm.loop !81

131:                                              ; preds = %127, %106, %99
  %132 = phi i8 [ %101, %99 ], [ %101, %106 ], [ %128, %127 ]
  %133 = load ptr, ptr %100, align 8, !tbaa !49
  %134 = icmp eq ptr %133, null
  br i1 %134, label %188, label %99, !llvm.loop !82

135:                                              ; preds = %2
  %136 = fmul float %12, 0x3FF921FB60000000
  %137 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !46
  %139 = load ptr, ptr %138, align 8, !tbaa !49
  %140 = icmp eq ptr %139, null
  br i1 %140, label %188, label %141

141:                                              ; preds = %135
  %142 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1
  %143 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2
  %144 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %145 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  br label %146

146:                                              ; preds = %141, %184
  %147 = phi ptr [ %139, %141 ], [ %186, %184 ]
  %148 = phi i8 [ 0, %141 ], [ %185, %184 ]
  %149 = getelementptr inbounds %struct.MetaElem, ptr %147, i64 0, i32 4
  %150 = load i16, ptr %149, align 2, !tbaa !50
  %151 = and i16 %150, 1
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %184, label %153

153:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #8
  call void @unit_m3(ptr noundef nonnull %3) #8
  %154 = getelementptr inbounds %struct.MetaElem, ptr %147, i64 0, i32 10
  call void @mul_qt_v3(ptr noundef nonnull %154, ptr noundef nonnull %3) #8
  call void @mul_qt_v3(ptr noundef nonnull %154, ptr noundef nonnull %142) #8
  call void @mul_qt_v3(ptr noundef nonnull %154, ptr noundef nonnull %143) #8
  call void @normalize_m3(ptr noundef nonnull %3) #8
  %155 = load ptr, ptr %137, align 8, !tbaa !46
  %156 = load ptr, ptr %155, align 8, !tbaa !49
  %157 = icmp eq ptr %156, null
  br i1 %157, label %182, label %158

158:                                              ; preds = %153, %178
  %159 = phi ptr [ %180, %178 ], [ %156, %153 ]
  %160 = phi i8 [ %179, %178 ], [ %148, %153 ]
  %161 = getelementptr inbounds %struct.MetaElem, ptr %159, i64 0, i32 4
  %162 = load i16, ptr %161, align 2, !tbaa !50
  %163 = and i16 %162, 1
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %158
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #8
  call void @unit_m3(ptr noundef nonnull %4) #8
  %166 = getelementptr inbounds %struct.MetaElem, ptr %159, i64 0, i32 10
  call void @mul_qt_v3(ptr noundef nonnull %166, ptr noundef nonnull %4) #8
  call void @mul_qt_v3(ptr noundef nonnull %166, ptr noundef nonnull %144) #8
  call void @mul_qt_v3(ptr noundef nonnull %166, ptr noundef nonnull %145) #8
  call void @normalize_m3(ptr noundef nonnull %4) #8
  %167 = call float @angle_normalized_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %168 = call float @angle_normalized_v3v3(ptr noundef nonnull %142, ptr noundef nonnull %144) #8
  %169 = fadd float %167, %168
  %170 = call float @angle_normalized_v3v3(ptr noundef nonnull %143, ptr noundef nonnull %145) #8
  %171 = fadd float %169, %170
  %172 = fcmp olt float %171, %136
  br i1 %172, label %173, label %176

173:                                              ; preds = %165
  %174 = load i16, ptr %161, align 2, !tbaa !50
  %175 = or i16 %174, 1
  store i16 %175, ptr %161, align 2, !tbaa !50
  br label %176

176:                                              ; preds = %173, %165
  %177 = phi i8 [ 1, %173 ], [ %160, %165 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #8
  br label %178

178:                                              ; preds = %176, %158
  %179 = phi i8 [ %177, %176 ], [ %160, %158 ]
  %180 = load ptr, ptr %159, align 8, !tbaa !49
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %158, !llvm.loop !83

182:                                              ; preds = %178, %153
  %183 = phi i8 [ %148, %153 ], [ %179, %178 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #8
  br label %184

184:                                              ; preds = %182, %146
  %185 = phi i8 [ %183, %182 ], [ %148, %146 ]
  %186 = load ptr, ptr %147, align 8, !tbaa !49
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %146, !llvm.loop !84

188:                                              ; preds = %184, %131, %90, %48, %135, %94, %52, %13, %2
  %189 = phi i8 [ 0, %2 ], [ 0, %13 ], [ 0, %52 ], [ 0, %94 ], [ 0, %135 ], [ %49, %48 ], [ %91, %90 ], [ %132, %131 ], [ %185, %184 ]
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %7) #8
  br label %192

192:                                              ; preds = %191, %188
  ret i32 4
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @MBALL_OT_select_random_metaelems(ptr noundef %0) local_unnamed_addr #4 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %2, align 8, !tbaa !63
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %3, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_random_metaelems_exec, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmball, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = tail call ptr @RNA_def_float_percentage(ptr noundef %8, ptr noundef nonnull @.str.14, float noundef 5.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, float noundef 0.000000e+00, float noundef 1.000000e+02) #8
  tail call void @WM_operator_properties_select_action_simple(ptr noundef nonnull %0, i32 noundef 1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_random_metaelems_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.32) #8
  %9 = icmp eq i32 %8, 1
  %10 = load ptr, ptr %6, align 8, !tbaa !68
  %11 = tail call float @RNA_float_get(ptr noundef %10, ptr noundef nonnull @.str.14) #8
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
  %21 = tail call float @BLI_frand() #8
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
  br i1 %30, label %31, label %19, !llvm.loop !85

31:                                               ; preds = %28, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %5) #8
  ret i32 4
}

declare ptr @RNA_def_float_percentage(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @WM_operator_properties_select_action_simple(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MBALL_OT_duplicate_metaelems(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %2, align 8, !tbaa !63
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %3, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @duplicate_metaelems_exec, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmball, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !67
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @duplicate_metaelems_exec(ptr noundef %0, ptr nocapture readnone %1) #4 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.ListBase, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !86
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
  %21 = tail call ptr %20(ptr noundef nonnull %14) #8
  %22 = load ptr, ptr %6, align 8, !tbaa !46
  tail call void @BLI_addtail(ptr noundef %22, ptr noundef %21) #8
  store ptr %21, ptr %12, align 8, !tbaa !48
  %23 = load i16, ptr %15, align 2, !tbaa !50
  %24 = and i16 %23, -2
  store i16 %24, ptr %15, align 2, !tbaa !50
  br label %25

25:                                               ; preds = %19, %13
  %26 = getelementptr inbounds %struct.MetaElem, ptr %14, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !87
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %13, !llvm.loop !88

29:                                               ; preds = %25
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %5) #8
  %30 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @DAG_id_tag_update(ptr noundef %30, i16 noundef signext 0) #8
  br label %31

31:                                               ; preds = %29, %2
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MBALL_OT_delete_metaelems(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.20, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %2, align 8, !tbaa !63
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %3, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_metaelems_exec, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmball, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !67
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @delete_metaelems_exec(ptr noundef %0, ptr nocapture readnone %1) #4 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 18
  br label %12

12:                                               ; preds = %10, %26
  %13 = phi ptr [ %8, %10 ], [ %14, %26 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !89
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
  tail call void @BLI_remlink(ptr noundef %24, ptr noundef nonnull %13) #8
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %25(ptr noundef nonnull %13) #8
  br label %26

26:                                               ; preds = %23, %12
  %27 = icmp eq ptr %14, null
  br i1 %27, label %28, label %12, !llvm.loop !90

28:                                               ; preds = %26
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %5) #8
  %29 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @DAG_id_tag_update(ptr noundef %29, i16 noundef signext 0) #8
  br label %30

30:                                               ; preds = %28, %2
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @MBALL_OT_hide_metaelems(ptr nocapture noundef %0) local_unnamed_addr #4 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %2, align 8, !tbaa !63
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %3, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @hide_metaelems_exec, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmball, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @hide_metaelems_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.26) #8
  %9 = icmp ne i32 %8, 0
  %10 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = load ptr, ptr %11, align 8, !tbaa !70
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
  %24 = load ptr, ptr %15, align 8, !tbaa !89
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %14, !llvm.loop !91

26:                                               ; preds = %23
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %5) #8
  %27 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @DAG_id_tag_update(ptr noundef %27, i16 noundef signext 0) #8
  br label %28

28:                                               ; preds = %26, %2
  ret i32 4
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MBALL_OT_reveal_metaelems(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %2, align 8, !tbaa !63
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %3, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @reveal_metaelems_exec, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmball, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !67
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @reveal_metaelems_exec(ptr noundef %0, ptr nocapture readnone %1) #4 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %15, %10 ], [ %8, %2 ]
  %12 = getelementptr inbounds %struct.MetaElem, ptr %11, i64 0, i32 4
  %13 = load i16, ptr %12, align 2, !tbaa !50
  %14 = and i16 %13, -9
  store i16 %14, ptr %12, align 2, !tbaa !50
  %15 = load ptr, ptr %11, align 8, !tbaa !89
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10, !llvm.loop !92

17:                                               ; preds = %10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %5) #8
  %18 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @DAG_id_tag_update(ptr noundef %18, i16 noundef signext 0) #8
  br label %19

19:                                               ; preds = %17, %2
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @mouse_mball(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #4 {
  %6 = alloca %struct.ViewContext, align 8
  %7 = alloca [40000 x i32], align 16
  %8 = alloca %struct.rcti, align 4
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #8
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %6) #8
  %12 = load i32, ptr %1, align 4, !tbaa !93
  %13 = add nsw i32 %12, -12
  store i32 %13, ptr %8, align 4, !tbaa !94
  %14 = add nsw i32 %12, 12
  %15 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 1
  store i32 %14, ptr %15, align 4, !tbaa !96
  %16 = getelementptr inbounds i32, ptr %1, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !93
  %18 = add nsw i32 %17, -12
  %19 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 2
  store i32 %18, ptr %19, align 4, !tbaa !97
  %20 = add nsw i32 %17, 12
  %21 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 3
  store i32 %20, ptr %21, align 4, !tbaa !98
  %22 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 10000, ptr noundef nonnull %8, i8 noundef zeroext 1) #8
  %23 = getelementptr inbounds %struct.MetaBall, ptr %11, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = load ptr, ptr @mouse_mball.startelem, align 8
  br label %26

26:                                               ; preds = %26, %5
  %27 = phi ptr [ %24, %5 ], [ %28, %26 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = icmp eq ptr %28, null
  %30 = icmp eq ptr %28, %25
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %32, label %26, !llvm.loop !99

32:                                               ; preds = %26
  %33 = sext i16 %22 to i64
  br i1 %29, label %34, label %36

34:                                               ; preds = %32
  %35 = load ptr, ptr %24, align 8, !tbaa !70
  store ptr %35, ptr @mouse_mball.startelem, align 8, !tbaa !49
  br label %36

36:                                               ; preds = %34, %32
  %37 = icmp sgt i16 %22, 0
  br i1 %37, label %38, label %116

38:                                               ; preds = %36
  %39 = load ptr, ptr @mouse_mball.startelem, align 8, !tbaa !49
  %40 = icmp eq ptr %39, null
  br i1 %40, label %84, label %41

41:                                               ; preds = %38, %79
  %42 = phi ptr [ %80, %79 ], [ %39, %38 ]
  %43 = getelementptr inbounds %struct.MetaElem, ptr %42, i64 0, i32 5
  %44 = load i16, ptr %43, align 4, !tbaa !100
  %45 = sext i16 %44 to i32
  %46 = getelementptr inbounds %struct.MetaElem, ptr %42, i64 0, i32 4
  %47 = getelementptr inbounds %struct.MetaElem, ptr %42, i64 0, i32 6
  %48 = load i16, ptr %47, align 2, !tbaa !101
  %49 = sext i16 %48 to i32
  %50 = getelementptr inbounds %struct.MetaElem, ptr %42, i64 0, i32 4
  br label %51

51:                                               ; preds = %41, %68
  %52 = phi i64 [ 0, %41 ], [ %70, %68 ]
  %53 = phi ptr [ null, %41 ], [ %69, %68 ]
  %54 = shl nsw i64 %52, 2
  %55 = or disjoint i64 %54, 3
  %56 = getelementptr inbounds [40000 x i32], ptr %7, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !93
  %58 = icmp eq i32 %57, %45
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i16, ptr %46, align 2, !tbaa !50
  %61 = or i16 %60, 16
  store i16 %61, ptr %46, align 2, !tbaa !50
  br label %62

62:                                               ; preds = %59, %51
  %63 = phi ptr [ %42, %59 ], [ %53, %51 ]
  %64 = icmp eq i32 %57, %49
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i16, ptr %50, align 2, !tbaa !50
  %67 = and i16 %66, -17
  store i16 %67, ptr %50, align 2, !tbaa !50
  br label %68

68:                                               ; preds = %62, %65
  %69 = phi ptr [ %42, %65 ], [ %63, %62 ]
  %70 = add nuw nsw i64 %52, 1
  %71 = icmp eq i64 %70, %33
  br i1 %71, label %72, label %51, !llvm.loop !102

72:                                               ; preds = %68
  %73 = icmp eq ptr %69, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %72
  %75 = load ptr, ptr %42, align 8, !tbaa !89
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load ptr, ptr %24, align 8, !tbaa !70
  br label %79

79:                                               ; preds = %77, %74
  %80 = phi ptr [ %78, %77 ], [ %75, %74 ]
  %81 = icmp ne ptr %80, %39
  %82 = icmp ne ptr %80, null
  %83 = and i1 %81, %82
  br i1 %83, label %41, label %84, !llvm.loop !103

84:                                               ; preds = %79, %72, %38
  %85 = phi ptr [ null, %38 ], [ %69, %72 ], [ null, %79 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %116, label %87

87:                                               ; preds = %84
  %88 = icmp eq i8 %2, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.MetaElem, ptr %85, i64 0, i32 4
  %91 = load i16, ptr %90, align 2, !tbaa !50
  %92 = or i16 %91, 1
  store i16 %92, ptr %90, align 2, !tbaa !50
  br label %114

93:                                               ; preds = %87
  %94 = icmp eq i8 %3, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.MetaElem, ptr %85, i64 0, i32 4
  %97 = load i16, ptr %96, align 2, !tbaa !50
  %98 = and i16 %97, -2
  store i16 %98, ptr %96, align 2, !tbaa !50
  br label %114

99:                                               ; preds = %93
  %100 = icmp eq i8 %4, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.MetaElem, ptr %85, i64 0, i32 4
  %103 = load i16, ptr %102, align 2, !tbaa !50
  %104 = and i16 %103, 1
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = and i16 %103, -2
  store i16 %107, ptr %102, align 2, !tbaa !50
  br label %114

108:                                              ; preds = %101
  %109 = or disjoint i16 %103, 1
  store i16 %109, ptr %102, align 2, !tbaa !50
  br label %114

110:                                              ; preds = %99
  call void @BKE_mball_deselect_all(ptr noundef %11) #8
  %111 = getelementptr inbounds %struct.MetaElem, ptr %85, i64 0, i32 4
  %112 = load i16, ptr %111, align 2, !tbaa !50
  %113 = or i16 %112, 1
  store i16 %113, ptr %111, align 2, !tbaa !50
  br label %114

114:                                              ; preds = %95, %106, %108, %110, %89
  %115 = getelementptr inbounds %struct.MetaBall, ptr %11, i64 0, i32 18
  store ptr %85, ptr %115, align 8, !tbaa !48
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %11) #8
  br label %116

116:                                              ; preds = %36, %84, %114
  %117 = phi i8 [ 1, %114 ], [ 0, %84 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #8
  ret i8 %117
}

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #5

declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #5

declare signext i16 @view3d_opengl_select(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @BKE_mball_deselect_all(ptr noundef) local_unnamed_addr #5

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @undo_push_mball(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  tail call void @undo_editmode_push(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @get_data, ptr noundef nonnull @free_undoMball, ptr noundef nonnull @undoMball_to_editMball, ptr noundef nonnull @editMball_to_undoMball, ptr noundef null) #8
  ret void
}

declare void @undo_editmode_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal ptr @get_data(ptr noundef %0) #4 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !104
  %7 = icmp eq i16 %6, 5
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.MetaBall, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  br label %13

13:                                               ; preds = %1, %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal void @free_undoMball(ptr noundef %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @BLI_pophead(ptr noundef nonnull %0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %3 ]
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %8(ptr noundef nonnull %7) #8
  %9 = tail call ptr @BLI_pophead(ptr noundef nonnull %0) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !105

11:                                               ; preds = %6, %3, %1
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %12(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @undoMball_to_editMball(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #4 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @BLI_pophead(ptr noundef nonnull %1) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %11, %8 ], [ %6, %5 ]
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %10(ptr noundef nonnull %9) #8
  %11 = tail call ptr @BLI_pophead(ptr noundef nonnull %1) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !105

13:                                               ; preds = %8, %5, %3
  %14 = load ptr, ptr %0, align 8, !tbaa !49
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13, %16
  %17 = phi ptr [ %20, %16 ], [ %14, %13 ]
  %18 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %19 = tail call ptr %18(ptr noundef nonnull %17) #8
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %19) #8
  %20 = load ptr, ptr %17, align 8, !tbaa !49
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16, !llvm.loop !106

22:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @editMball_to_undoMball(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %4 = tail call ptr %3(i64 noundef 16, ptr noundef nonnull @.str.40) #8
  %5 = load ptr, ptr %0, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %11, %7 ], [ %5, %2 ]
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %10 = tail call ptr %9(ptr noundef nonnull %8) #8
  tail call void @BLI_addtail(ptr noundef %4, ptr noundef %10) #8
  %11 = load ptr, ptr %8, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7, !llvm.loop !107

13:                                               ; preds = %7, %2
  ret ptr %4
}

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_mball_select_all(ptr noundef) local_unnamed_addr #5

declare void @BKE_mball_select_swap(ptr noundef) local_unnamed_addr #5

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

declare void @unit_m3(ptr noundef) local_unnamed_addr #5

declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @normalize_m3(ptr noundef) local_unnamed_addr #5

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #5

declare float @BLI_frand() local_unnamed_addr #5

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #5

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !53, !54}
!56 = !{!51, !44, i64 72}
!57 = !{!47, !44, i64 228}
!58 = !{!47, !44, i64 232}
!59 = !{!44, !44, i64 0}
!60 = !{!61, !37, i64 0}
!61 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !62, i64 152, !40, i64 184}
!62 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!63 = !{!61, !37, i64 24}
!64 = !{!61, !37, i64 8}
!65 = !{!61, !37, i64 32}
!66 = !{!61, !37, i64 72}
!67 = !{!61, !40, i64 184}
!68 = !{!69, !37, i64 112}
!69 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!70 = !{!43, !37, i64 0}
!71 = distinct !{!71, !53, !54}
!72 = !{!61, !37, i64 48}
!73 = !{!61, !37, i64 88}
!74 = !{!61, !37, i64 104}
!75 = !{!51, !40, i64 24}
!76 = distinct !{!76, !53, !54}
!77 = distinct !{!77, !53, !54}
!78 = distinct !{!78, !53, !54}
!79 = distinct !{!79, !53, !54}
!80 = !{!51, !44, i64 80}
!81 = distinct !{!81, !53, !54}
!82 = distinct !{!82, !53, !54}
!83 = distinct !{!83, !53, !54}
!84 = distinct !{!84, !53, !54}
!85 = distinct !{!85, !53, !54}
!86 = !{!43, !37, i64 8}
!87 = !{!51, !37, i64 8}
!88 = distinct !{!88, !53, !54}
!89 = !{!51, !37, i64 0}
!90 = distinct !{!90, !53, !54}
!91 = distinct !{!91, !53, !54}
!92 = distinct !{!92, !53, !54}
!93 = !{!41, !41, i64 0}
!94 = !{!95, !41, i64 0}
!95 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!96 = !{!95, !41, i64 4}
!97 = !{!95, !41, i64 8}
!98 = !{!95, !41, i64 12}
!99 = distinct !{!99, !53, !54}
!100 = !{!51, !40, i64 28}
!101 = !{!51, !40, i64 30}
!102 = distinct !{!102, !53, !54}
!103 = distinct !{!103, !53, !54}
!104 = !{!35, !40, i64 136}
!105 = distinct !{!105, !53, !54}
!106 = distinct !{!106, !53, !54}
!107 = distinct !{!107, !53, !54}
