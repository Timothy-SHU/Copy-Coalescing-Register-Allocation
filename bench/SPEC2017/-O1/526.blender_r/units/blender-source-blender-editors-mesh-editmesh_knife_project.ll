; ModuleID = 'blender/source/blender/editors/mesh/editmesh_knife_project.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_knife_project.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
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

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @knifeproject_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca %struct.ListBase, align 8
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #4
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #4
  %10 = tail call ptr @BKE_editmesh_from_object(ptr noundef %9) #4
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.3) #4
  %14 = trunc i32 %13 to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #4
  %15 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %6) #4
  %16 = load ptr, ptr %6, align 8, !tbaa !50
  %17 = icmp eq ptr %16, null
  br i1 %17, label %110, label %18

18:                                               ; preds = %2
  %19 = load i64, ptr @CD_MASK_BAREMESH, align 8
  %20 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 30
  br label %21

21:                                               ; preds = %18, %106
  %22 = phi ptr [ %16, %18 ], [ %108, %106 ]
  %23 = phi ptr [ null, %18 ], [ %107, %106 ]
  %24 = getelementptr inbounds %struct.CollectionPointerLink, ptr %22, i64 0, i32 2, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  %26 = icmp eq ptr %25, %9
  br i1 %26, label %106, label %27

27:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr %23, ptr %3, align 8, !tbaa !50
  %28 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 3
  %29 = load i16, ptr %28, align 8, !tbaa !55
  %30 = icmp eq i16 %29, 1
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 120
  %33 = load ptr, ptr %32, align 8, !tbaa !62
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 120
  %37 = load ptr, ptr %36, align 8, !tbaa !62
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = call ptr @mesh_get_derived_final(ptr noundef %8, ptr noundef %25, i64 noundef %19) #4
  br label %46

41:                                               ; preds = %31
  %42 = add i16 %29, -2
  %43 = icmp ult i16 %42, 3
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call ptr @CDDM_from_curve(ptr noundef %25) #4
  br label %46

46:                                               ; preds = %44, %41, %39, %35
  %47 = phi i1 [ false, %44 ], [ true, %35 ], [ true, %39 ], [ undef, %41 ]
  %48 = phi ptr [ %45, %44 ], [ %37, %35 ], [ %40, %39 ], [ null, %41 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %104, label %50

50:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  call void @BKE_mesh_to_curve_nurblist(ptr noundef nonnull %48, ptr noundef nonnull %4, i32 noundef 0) #4
  call void @BKE_mesh_to_curve_nurblist(ptr noundef nonnull %48, ptr noundef nonnull %4, i32 noundef 1) #4
  %51 = load ptr, ptr %20, align 8, !tbaa !63
  call void @ED_view3d_ob_project_mat_get(ptr noundef %51, ptr noundef %25, ptr noundef nonnull %5) #4
  %52 = load ptr, ptr %4, align 8, !tbaa !68
  %53 = icmp eq ptr %52, null
  br i1 %53, label %99, label %54

54:                                               ; preds = %50, %96
  %55 = phi ptr [ %97, %96 ], [ %52, %50 ]
  %56 = getelementptr inbounds %struct.Nurb, ptr %55, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !69
  %58 = icmp eq ptr %57, null
  br i1 %58, label %96, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.Nurb, ptr %55, i64 0, i32 13
  %61 = load i16, ptr %60, align 4, !tbaa !71
  %62 = trunc i16 %61 to i8
  %63 = and i8 %62, 1
  %64 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %65 = getelementptr inbounds %struct.Nurb, ptr %55, i64 0, i32 6
  %66 = load i32, ptr %65, align 8, !tbaa !72
  %67 = zext nneg i8 %63 to i32
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = shl nsw i64 %69, 3
  %71 = call ptr %64(i64 noundef %70, ptr noundef nonnull @__func__.knifeproject_poly_from_object) #4
  %72 = load i32, ptr %65, align 8, !tbaa !72
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %59
  %75 = load ptr, ptr %56, align 8, !tbaa !69
  br label %76

76:                                               ; preds = %74, %76
  %77 = phi i64 [ 0, %74 ], [ %80, %76 ]
  %78 = phi ptr [ %75, %74 ], [ %81, %76 ]
  %79 = getelementptr inbounds [2 x float], ptr %71, i64 %77
  call void @ED_view3d_project_float_v2_m4(ptr noundef %7, ptr noundef %78, ptr noundef %79, ptr noundef nonnull %5) #4
  %80 = add nuw nsw i64 %77, 1
  %81 = getelementptr inbounds %struct.BPoint, ptr %78, i64 1
  %82 = load i32, ptr %65, align 8, !tbaa !72
  %83 = sext i32 %82 to i64
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %76, label %85, !llvm.loop !73

85:                                               ; preds = %76, %59
  %86 = phi i64 [ 0, %59 ], [ %80, %76 ]
  %87 = icmp eq i8 %63, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %85
  %89 = and i64 %86, 4294967295
  %90 = getelementptr inbounds [2 x float], ptr %71, i64 %89
  %91 = load float, ptr %71, align 4, !tbaa !76
  store float %91, ptr %90, align 4, !tbaa !76
  %92 = getelementptr inbounds float, ptr %71, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !76
  %94 = getelementptr inbounds float, ptr %90, i64 1
  store float %93, ptr %94, align 4, !tbaa !76
  br label %95

95:                                               ; preds = %88, %85
  call void @BLI_linklist_prepend(ptr noundef nonnull %3, ptr noundef %71) #4
  br label %96

96:                                               ; preds = %95, %54
  %97 = load ptr, ptr %55, align 8, !tbaa !77
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %54, !llvm.loop !78

99:                                               ; preds = %96, %50
  call void @BKE_nurbList_free(ptr noundef nonnull %4) #4
  br i1 %47, label %103, label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.DerivedMesh, ptr %48, i64 0, i32 95
  %102 = load ptr, ptr %101, align 8, !tbaa !79
  call void %102(ptr noundef nonnull %48) #4
  br label %103

103:                                              ; preds = %100, %99
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #4
  br label %104

104:                                              ; preds = %46, %103
  %105 = load ptr, ptr %3, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  br label %106

106:                                              ; preds = %104, %21
  %107 = phi ptr [ %105, %104 ], [ %23, %21 ]
  %108 = load ptr, ptr %22, align 8, !tbaa !50
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %21, !llvm.loop !82

110:                                              ; preds = %106, %2
  %111 = phi ptr [ null, %2 ], [ %107, %106 ]
  call void @BLI_freelistN(ptr noundef nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %110
  call void @EDBM_mesh_knife(ptr noundef %0, ptr noundef nonnull %111, i8 noundef zeroext 1, i8 noundef zeroext %14) #4
  %114 = load ptr, ptr %10, align 8, !tbaa !83
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %114, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %115 = call zeroext i8 @EDBM_selectmode_disable(ptr noundef %8, ptr noundef nonnull %10, i16 noundef signext 1, i16 noundef signext 2) #4
  %116 = load ptr, ptr %10, align 8, !tbaa !83
  call void @BM_mesh_elem_hflag_enable_test(ptr noundef %116, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #4
  %117 = load ptr, ptr %10, align 8, !tbaa !83
  call void @BM_mesh_select_mode_flush(ptr noundef %117) #4
  call void @BLI_linklist_freeN(ptr noundef nonnull %111) #4
  br label %121

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %120 = load ptr, ptr %119, align 8, !tbaa !85
  call void @BKE_report(ptr noundef %120, i32 noundef 32, ptr noundef nonnull @.str.6) #4
  br label %121

121:                                              ; preds = %118, %113
  %122 = phi i32 [ 4, %113 ], [ 2, %118 ]
  ret i32 %122
}

declare i32 @ED_operator_editmesh_view3d(ptr noundef) #1

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

declare void @EDBM_mesh_knife(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare zeroext i8 @EDBM_selectmode_disable(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @BM_mesh_elem_hflag_enable_test(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @BM_mesh_select_mode_flush(ptr noundef) local_unnamed_addr #1

declare void @BLI_linklist_freeN(ptr noundef) local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @CDDM_from_curve(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @BKE_mesh_to_curve_nurblist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ED_view3d_ob_project_mat_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_view3d_project_float_v2_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_nurbList_free(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

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
!48 = !{!49, !36, i64 112}
!49 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!50 = !{!36, !36, i64 0}
!51 = !{!52, !36, i64 32}
!52 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !53, i64 16}
!53 = !{!"PointerRNA", !54, i64 0, !36, i64 8, !36, i64 16}
!54 = !{!"", !36, i64 0}
!55 = !{!56, !41, i64 136}
!56 = !{!"Object", !57, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !58, i64 140, !58, i64 144, !58, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !59, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !58, i64 432, !58, i64 436, !36, i64 440, !36, i64 448, !58, i64 456, !58, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !60, i64 616, !60, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !58, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !58, i64 968, !58, i64 972, !58, i64 976, !58, i64 980, !58, i64 984, !60, i64 988, !60, i64 992, !60, i64 996, !60, i64 1000, !60, i64 1004, !60, i64 1008, !60, i64 1012, !60, i64 1016, !60, i64 1020, !60, i64 1024, !60, i64 1028, !60, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !60, i64 1048, !60, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !60, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !58, i64 1144, !58, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !60, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !61, i64 1304, !61, i64 1312, !58, i64 1320, !58, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!57 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !58, i64 100, !58, i64 104, !58, i64 108, !36, i64 112}
!58 = !{!"int", !37, i64 0}
!59 = !{!"bAnimVizSettings", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !58, i64 32, !58, i64 36, !58, i64 40, !58, i64 44}
!60 = !{!"float", !37, i64 0}
!61 = !{!"long", !37, i64 0}
!62 = !{!56, !36, i64 1296}
!63 = !{!64, !36, i64 376}
!64 = !{!"ARegion", !36, i64 0, !36, i64 8, !65, i64 16, !67, i64 176, !67, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !60, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!65 = !{!"View2D", !66, i64 0, !66, i64 16, !67, i64 32, !67, i64 48, !67, i64 64, !37, i64 80, !37, i64 88, !60, i64 96, !60, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !58, i64 136, !58, i64 140, !36, i64 144, !36, i64 152}
!66 = !{!"rctf", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12}
!67 = !{!"rcti", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12}
!68 = !{!39, !36, i64 0}
!69 = !{!70, !36, i64 64}
!70 = !{!"Nurb", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !58, i64 24, !58, i64 28, !37, i64 32, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !41, i64 82, !58, i64 84}
!71 = !{!70, !41, i64 44}
!72 = !{!70, !58, i64 24}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!60, !60, i64 0}
!77 = !{!70, !36, i64 0}
!78 = distinct !{!78, !74, !75}
!79 = !{!80, !36, i64 1680}
!80 = !{!"DerivedMesh", !81, i64 0, !81, i64 200, !81, i64 400, !81, i64 600, !81, i64 800, !58, i64 1000, !58, i64 1004, !58, i64 1008, !58, i64 1012, !58, i64 1016, !58, i64 1020, !58, i64 1024, !36, i64 1032, !36, i64 1040, !58, i64 1048, !60, i64 1052, !58, i64 1056, !58, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!81 = !{!"CustomData", !36, i64 0, !37, i64 8, !58, i64 172, !58, i64 176, !58, i64 180, !36, i64 184, !36, i64 192}
!82 = distinct !{!82, !74, !75}
!83 = !{!84, !36, i64 0}
!84 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !58, i64 16, !36, i64 24, !58, i64 32, !36, i64 40, !36, i64 48, !61, i64 56, !36, i64 64, !58, i64 72, !36, i64 80, !58, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !58, i64 104}
!85 = !{!49, !36, i64 120}
