; ModuleID = 'blender/source/blender/editors/mesh/editmesh_knife_project.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_knife_project.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [14 x i8] c"Knife Project\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"MESH_OT_knife_project\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Use other objects outlines & boundaries to project knife cuts\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"cut_through\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Cut through\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Cut through all faces, not just visible ones\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"No other selected objects found to use for projection\00", align 1
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.knifeproject_poly_from_object = private unnamed_addr constant [30 x i8] c"knifeproject_poly_from_object\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_knife_project(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @knifeproject_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh_view3d, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @knifeproject_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #5
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.3) #5
  %11 = trunc i32 %10 to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %12 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #5
  %13 = load ptr, ptr %3, align 8, !tbaa !21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %35

16:                                               ; preds = %2, %24
  %17 = phi ptr [ %26, %24 ], [ %13, %2 ]
  %18 = phi ptr [ %25, %24 ], [ null, %2 ]
  %19 = getelementptr inbounds %struct.CollectionPointerLink, ptr %17, i64 0, i32 2, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %20, %6
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = call fastcc ptr @knifeproject_poly_from_object(ptr noundef %4, ptr noundef %5, ptr noundef %20, ptr noundef %18) #7
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %23, %22 ], [ %18, %16 ]
  %26 = load ptr, ptr %17, align 8, !tbaa !21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %16, !llvm.loop !26

28:                                               ; preds = %24
  call void @BLI_freelistN(ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  %29 = icmp eq ptr %25, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %28
  call void @EDBM_mesh_knife(ptr noundef %0, ptr noundef nonnull %25, i8 noundef zeroext 1, i8 noundef zeroext %11) #5
  %31 = load ptr, ptr %7, align 8, !tbaa !28
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %31, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  %32 = call zeroext i8 @EDBM_selectmode_disable(ptr noundef %5, ptr noundef nonnull %7, i16 noundef signext 1, i16 noundef signext 2) #5
  %33 = load ptr, ptr %7, align 8, !tbaa !28
  call void @BM_mesh_elem_hflag_enable_test(ptr noundef %33, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #5
  %34 = load ptr, ptr %7, align 8, !tbaa !28
  call void @BM_mesh_select_mode_flush(ptr noundef %34) #5
  call void @BLI_linklist_freeN(ptr noundef nonnull %25) #5
  br label %38

35:                                               ; preds = %15, %28
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !32
  call void @BKE_report(ptr noundef %37, i32 noundef 32, ptr noundef nonnull @.str.6) #5
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi i32 [ 4, %30 ], [ 2, %35 ]
  ret i32 %39
}

; Function Attrs: optsize
declare i32 @ED_operator_editmesh_view3d(ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @knifeproject_poly_from_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca [4 x [4 x float]], align 16
  store ptr %3, ptr %5, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !33
  %10 = icmp eq i16 %9, 1
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 120
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = icmp eq ptr %12, null
  br i1 %10, label %15, label %14

14:                                               ; preds = %4
  br i1 %13, label %19, label %27

15:                                               ; preds = %4
  br i1 %13, label %16, label %27

16:                                               ; preds = %15
  %17 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !39
  %18 = tail call ptr @mesh_get_derived_final(ptr noundef %1, ptr noundef nonnull %2, i64 noundef %17) #5
  br label %24

19:                                               ; preds = %14
  %20 = add i16 %9, -2
  %21 = icmp ult i16 %20, 3
  br i1 %21, label %22, label %81

22:                                               ; preds = %19
  %23 = tail call ptr @CDDM_from_curve(ptr noundef nonnull %2) #5
  br label %24

24:                                               ; preds = %16, %22
  %25 = phi ptr [ %23, %22 ], [ %18, %16 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %81, label %27

27:                                               ; preds = %14, %15, %24
  %28 = phi ptr [ %25, %24 ], [ %12, %15 ], [ %12, %14 ]
  %29 = phi i1 [ %10, %24 ], [ true, %15 ], [ true, %14 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #6
  call void @BKE_mesh_to_curve_nurblist(ptr noundef nonnull %28, ptr noundef nonnull %6, i32 noundef 0) #5
  call void @BKE_mesh_to_curve_nurblist(ptr noundef nonnull %28, ptr noundef nonnull %6, i32 noundef 1) #5
  %30 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %31 = load ptr, ptr %30, align 8, !tbaa !40
  call void @ED_view3d_ob_project_mat_get(ptr noundef %31, ptr noundef nonnull %2, ptr noundef nonnull %7) #5
  %32 = load ptr, ptr %6, align 8, !tbaa !45
  %33 = icmp eq ptr %32, null
  br i1 %33, label %75, label %34

34:                                               ; preds = %27, %72
  %35 = phi ptr [ %73, %72 ], [ %32, %27 ]
  %36 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 17
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = icmp eq ptr %37, null
  br i1 %38, label %72, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 13
  %41 = load i16, ptr %40, align 4, !tbaa !48
  %42 = trunc i16 %41 to i8
  %43 = and i8 %42, 1
  %44 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !21
  %45 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !49
  %47 = zext nneg i8 %43 to i32
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = shl nsw i64 %49, 3
  %51 = call ptr %44(i64 noundef %50, ptr noundef nonnull @__func__.knifeproject_poly_from_object) #5
  %52 = load i32, ptr %45, align 8, !tbaa !49
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %39
  %55 = load ptr, ptr %36, align 8, !tbaa !46
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi i64 [ 0, %54 ], [ %60, %56 ]
  %58 = phi ptr [ %55, %54 ], [ %61, %56 ]
  %59 = getelementptr inbounds [2 x float], ptr %51, i64 %57
  call void @ED_view3d_project_float_v2_m4(ptr noundef %0, ptr noundef %58, ptr noundef %59, ptr noundef nonnull %7) #5
  %60 = add nuw nsw i64 %57, 1
  %61 = getelementptr inbounds %struct.BPoint, ptr %58, i64 1
  %62 = load i32, ptr %45, align 8, !tbaa !49
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %56, label %65, !llvm.loop !50

65:                                               ; preds = %56, %39
  %66 = phi i64 [ 0, %39 ], [ %60, %56 ]
  %67 = icmp eq i8 %43, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = and i64 %66, 4294967295
  %70 = getelementptr inbounds [2 x float], ptr %51, i64 %69
  call fastcc void @copy_v2_v2(ptr noundef %70, ptr noundef %51) #7
  br label %71

71:                                               ; preds = %68, %65
  call void @BLI_linklist_prepend(ptr noundef nonnull %5, ptr noundef %51) #5
  br label %72

72:                                               ; preds = %34, %71
  %73 = load ptr, ptr %35, align 8, !tbaa !51
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %34, !llvm.loop !52

75:                                               ; preds = %72, %27
  call void @BKE_nurbList_free(ptr noundef nonnull %6) #5
  br i1 %29, label %79, label %76

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 95
  %78 = load ptr, ptr %77, align 8, !tbaa !53
  call void %78(ptr noundef nonnull %28) #5
  br label %79

79:                                               ; preds = %76, %75
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  %80 = load ptr, ptr %5, align 8, !tbaa !21
  br label %81

81:                                               ; preds = %19, %79, %24
  %82 = phi ptr [ %3, %19 ], [ %80, %79 ], [ %3, %24 ]
  ret ptr %82
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_mesh_knife(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @EDBM_selectmode_disable(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_enable_test(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_mesh_select_mode_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_linklist_freeN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CDDM_from_curve(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @BKE_mesh_to_curve_nurblist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_view3d_ob_project_mat_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_view3d_project_float_v2_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !56
  store float %3, ptr %0, align 4, !tbaa !56
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !56
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_nurbList_free(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 72}
!17 = !{!6, !12, i64 184}
!18 = !{!6, !7, i64 88}
!19 = !{!20, !7, i64 112}
!20 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!21 = !{!7, !7, i64 0}
!22 = !{!23, !7, i64 32}
!23 = !{!"CollectionPointerLink", !7, i64 0, !7, i64 8, !24, i64 16}
!24 = !{!"PointerRNA", !25, i64 0, !7, i64 8, !7, i64 16}
!25 = !{!"", !7, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!29, !7, i64 0}
!29 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !30, i64 16, !7, i64 24, !30, i64 32, !7, i64 40, !7, i64 48, !31, i64 56, !7, i64 64, !30, i64 72, !7, i64 80, !30, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !30, i64 104}
!30 = !{!"int", !8, i64 0}
!31 = !{!"long", !8, i64 0}
!32 = !{!20, !7, i64 120}
!33 = !{!34, !12, i64 136}
!34 = !{!"Object", !35, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !30, i64 140, !30, i64 144, !30, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !36, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !30, i64 432, !30, i64 436, !7, i64 440, !7, i64 448, !30, i64 456, !30, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !37, i64 616, !37, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !30, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !30, i64 968, !30, i64 972, !30, i64 976, !30, i64 980, !30, i64 984, !37, i64 988, !37, i64 992, !37, i64 996, !37, i64 1000, !37, i64 1004, !37, i64 1008, !37, i64 1012, !37, i64 1016, !37, i64 1020, !37, i64 1024, !37, i64 1028, !37, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !37, i64 1048, !37, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !37, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !30, i64 1144, !30, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !37, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !31, i64 1304, !31, i64 1312, !30, i64 1320, !30, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!35 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !30, i64 100, !30, i64 104, !30, i64 108, !7, i64 112}
!36 = !{!"bAnimVizSettings", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !30, i64 32, !30, i64 36, !30, i64 40, !30, i64 44}
!37 = !{!"float", !8, i64 0}
!38 = !{!34, !7, i64 1296}
!39 = !{!31, !31, i64 0}
!40 = !{!41, !7, i64 376}
!41 = !{!"ARegion", !7, i64 0, !7, i64 8, !42, i64 16, !44, i64 176, !44, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !37, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!42 = !{!"View2D", !43, i64 0, !43, i64 16, !44, i64 32, !44, i64 48, !44, i64 64, !8, i64 80, !8, i64 88, !37, i64 96, !37, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !30, i64 136, !30, i64 140, !7, i64 144, !7, i64 152}
!43 = !{!"rctf", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12}
!44 = !{!"rcti", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12}
!45 = !{!10, !7, i64 0}
!46 = !{!47, !7, i64 64}
!47 = !{!"Nurb", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !30, i64 24, !30, i64 28, !8, i64 32, !12, i64 36, !12, i64 38, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !12, i64 80, !12, i64 82, !30, i64 84}
!48 = !{!47, !12, i64 44}
!49 = !{!47, !30, i64 24}
!50 = distinct !{!50, !27}
!51 = !{!47, !7, i64 0}
!52 = distinct !{!52, !27}
!53 = !{!54, !7, i64 1680}
!54 = !{!"DerivedMesh", !55, i64 0, !55, i64 200, !55, i64 400, !55, i64 600, !55, i64 800, !30, i64 1000, !30, i64 1004, !30, i64 1008, !30, i64 1012, !30, i64 1016, !30, i64 1020, !30, i64 1024, !7, i64 1032, !7, i64 1040, !30, i64 1048, !37, i64 1052, !30, i64 1056, !30, i64 1060, !7, i64 1064, !8, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !7, i64 1176, !7, i64 1184, !7, i64 1192, !7, i64 1200, !7, i64 1208, !7, i64 1216, !7, i64 1224, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !7, i64 1336, !7, i64 1344, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !7, i64 1392, !7, i64 1400, !7, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !7, i64 1440, !7, i64 1448, !7, i64 1456, !7, i64 1464, !7, i64 1472, !7, i64 1480, !7, i64 1488, !7, i64 1496, !7, i64 1504, !7, i64 1512, !7, i64 1520, !7, i64 1528, !7, i64 1536, !7, i64 1544, !7, i64 1552, !7, i64 1560, !7, i64 1568, !7, i64 1576, !7, i64 1584, !7, i64 1592, !7, i64 1600, !7, i64 1608, !7, i64 1616, !7, i64 1624, !7, i64 1632, !7, i64 1640, !7, i64 1648, !7, i64 1656, !7, i64 1664, !7, i64 1672, !7, i64 1680}
!55 = !{!"CustomData", !7, i64 0, !8, i64 8, !30, i64 172, !30, i64 176, !30, i64 180, !7, i64 184, !7, i64 192}
!56 = !{!37, !37, i64 0}
