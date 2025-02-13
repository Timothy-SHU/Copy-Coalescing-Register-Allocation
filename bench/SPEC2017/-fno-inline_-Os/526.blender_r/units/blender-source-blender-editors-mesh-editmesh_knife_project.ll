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
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @knifeproject_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh_view3d, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @knifeproject_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !48 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #5
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.3) #5
  %11 = trunc i32 %10 to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %12 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #5
  %13 = load ptr, ptr %3, align 8, !tbaa !51
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
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = icmp eq ptr %20, %6
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = call fastcc ptr @knifeproject_poly_from_object(ptr noundef %4, ptr noundef %5, ptr noundef %20, ptr noundef %18) #7
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %23, %22 ], [ %18, %16 ]
  %26 = load ptr, ptr %17, align 8, !tbaa !51
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %16, !llvm.loop !56

28:                                               ; preds = %24
  call void @BLI_freelistN(ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  %29 = icmp eq ptr %25, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %28
  call void @EDBM_mesh_knife(ptr noundef %0, ptr noundef nonnull %25, i8 noundef zeroext 1, i8 noundef zeroext %11) #5
  %31 = load ptr, ptr %7, align 8, !tbaa !58
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %31, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  %32 = call zeroext i8 @EDBM_selectmode_disable(ptr noundef %5, ptr noundef nonnull %7, i16 noundef signext 1, i16 noundef signext 2) #5
  %33 = load ptr, ptr %7, align 8, !tbaa !58
  call void @BM_mesh_elem_hflag_enable_test(ptr noundef %33, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #5
  %34 = load ptr, ptr %7, align 8, !tbaa !58
  call void @BM_mesh_select_mode_flush(ptr noundef %34) #5
  call void @BLI_linklist_freeN(ptr noundef nonnull %25) #5
  br label %38

35:                                               ; preds = %15, %28
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !62
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
define internal fastcc ptr @knifeproject_poly_from_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !63 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca [4 x [4 x float]], align 16
  store ptr %3, ptr %5, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !64
  %10 = icmp eq i16 %9, 1
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 120
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = icmp eq ptr %12, null
  br i1 %10, label %15, label %14

14:                                               ; preds = %4
  br i1 %13, label %19, label %27

15:                                               ; preds = %4
  br i1 %13, label %16, label %27

16:                                               ; preds = %15
  %17 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !70
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
  %31 = load ptr, ptr %30, align 8, !tbaa !71
  call void @ED_view3d_ob_project_mat_get(ptr noundef %31, ptr noundef nonnull %2, ptr noundef nonnull %7) #5
  %32 = load ptr, ptr %6, align 8, !tbaa !76
  %33 = icmp eq ptr %32, null
  br i1 %33, label %75, label %34

34:                                               ; preds = %27, %72
  %35 = phi ptr [ %73, %72 ], [ %32, %27 ]
  %36 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 17
  %37 = load ptr, ptr %36, align 8, !tbaa !77
  %38 = icmp eq ptr %37, null
  br i1 %38, label %72, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 13
  %41 = load i16, ptr %40, align 4, !tbaa !79
  %42 = trunc i16 %41 to i8
  %43 = and i8 %42, 1
  %44 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %45 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !80
  %47 = zext nneg i8 %43 to i32
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = shl nsw i64 %49, 3
  %51 = call ptr %44(i64 noundef %50, ptr noundef nonnull @__func__.knifeproject_poly_from_object) #5
  %52 = load i32, ptr %45, align 8, !tbaa !80
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %39
  %55 = load ptr, ptr %36, align 8, !tbaa !77
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi i64 [ 0, %54 ], [ %60, %56 ]
  %58 = phi ptr [ %55, %54 ], [ %61, %56 ]
  %59 = getelementptr inbounds [2 x float], ptr %51, i64 %57
  call void @ED_view3d_project_float_v2_m4(ptr noundef %0, ptr noundef %58, ptr noundef %59, ptr noundef nonnull %7) #5
  %60 = add nuw nsw i64 %57, 1
  %61 = getelementptr inbounds %struct.BPoint, ptr %58, i64 1
  %62 = load i32, ptr %45, align 8, !tbaa !80
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %56, label %65, !llvm.loop !81

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
  %73 = load ptr, ptr %35, align 8, !tbaa !82
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %34, !llvm.loop !83

75:                                               ; preds = %72, %27
  call void @BKE_nurbList_free(ptr noundef nonnull %6) #5
  br i1 %29, label %79, label %76

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 95
  %78 = load ptr, ptr %77, align 8, !tbaa !84
  call void %78(ptr noundef nonnull %28) #5
  br label %79

79:                                               ; preds = %76, %75
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  %80 = load ptr, ptr %5, align 8, !tbaa !51
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
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !87 {
  %3 = load float, ptr %1, align 4, !tbaa !88
  store float %3, ptr %0, align 4, !tbaa !88
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !88
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !88
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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!35, !36, i64 88}
!48 = !{!"editmesh_knife_project.c:knifeproject_exec"}
!49 = !{!50, !36, i64 112}
!50 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!51 = !{!36, !36, i64 0}
!52 = !{!53, !36, i64 32}
!53 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !54, i64 16}
!54 = !{!"PointerRNA", !55, i64 0, !36, i64 8, !36, i64 16}
!55 = !{!"", !36, i64 0}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!59, !36, i64 0}
!59 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !60, i64 16, !36, i64 24, !60, i64 32, !36, i64 40, !36, i64 48, !61, i64 56, !36, i64 64, !60, i64 72, !36, i64 80, !60, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !60, i64 104}
!60 = !{!"int", !37, i64 0}
!61 = !{!"long", !37, i64 0}
!62 = !{!50, !36, i64 120}
!63 = !{!"editmesh_knife_project.c:knifeproject_poly_from_object"}
!64 = !{!65, !41, i64 136}
!65 = !{!"Object", !66, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !60, i64 140, !60, i64 144, !60, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !67, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !60, i64 432, !60, i64 436, !36, i64 440, !36, i64 448, !60, i64 456, !60, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !68, i64 616, !68, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !60, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !60, i64 968, !60, i64 972, !60, i64 976, !60, i64 980, !60, i64 984, !68, i64 988, !68, i64 992, !68, i64 996, !68, i64 1000, !68, i64 1004, !68, i64 1008, !68, i64 1012, !68, i64 1016, !68, i64 1020, !68, i64 1024, !68, i64 1028, !68, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !68, i64 1048, !68, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !68, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !60, i64 1144, !60, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !68, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !61, i64 1304, !61, i64 1312, !60, i64 1320, !60, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!66 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !60, i64 100, !60, i64 104, !60, i64 108, !36, i64 112}
!67 = !{!"bAnimVizSettings", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !60, i64 32, !60, i64 36, !60, i64 40, !60, i64 44}
!68 = !{!"float", !37, i64 0}
!69 = !{!65, !36, i64 1296}
!70 = !{!61, !61, i64 0}
!71 = !{!72, !36, i64 376}
!72 = !{!"ARegion", !36, i64 0, !36, i64 8, !73, i64 16, !75, i64 176, !75, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !68, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!73 = !{!"View2D", !74, i64 0, !74, i64 16, !75, i64 32, !75, i64 48, !75, i64 64, !37, i64 80, !37, i64 88, !68, i64 96, !68, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !60, i64 136, !60, i64 140, !36, i64 144, !36, i64 152}
!74 = !{!"rctf", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12}
!75 = !{!"rcti", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12}
!76 = !{!39, !36, i64 0}
!77 = !{!78, !36, i64 64}
!78 = !{!"Nurb", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !60, i64 24, !60, i64 28, !37, i64 32, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !41, i64 82, !60, i64 84}
!79 = !{!78, !41, i64 44}
!80 = !{!78, !60, i64 24}
!81 = distinct !{!81, !57}
!82 = !{!78, !36, i64 0}
!83 = distinct !{!83, !57}
!84 = !{!85, !36, i64 1680}
!85 = !{!"DerivedMesh", !86, i64 0, !86, i64 200, !86, i64 400, !86, i64 600, !86, i64 800, !60, i64 1000, !60, i64 1004, !60, i64 1008, !60, i64 1012, !60, i64 1016, !60, i64 1020, !60, i64 1024, !36, i64 1032, !36, i64 1040, !60, i64 1048, !68, i64 1052, !60, i64 1056, !60, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!86 = !{!"CustomData", !36, i64 0, !37, i64 8, !60, i64 172, !60, i64 176, !60, i64 180, !36, i64 184, !36, i64 192}
!87 = !{!"editmesh_knife_project.c:copy_v2_v2"}
!88 = !{!68, !68, i64 0}
