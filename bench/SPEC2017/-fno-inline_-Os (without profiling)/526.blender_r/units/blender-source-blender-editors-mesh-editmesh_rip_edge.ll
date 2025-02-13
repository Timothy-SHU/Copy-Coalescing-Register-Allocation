; ModuleID = 'blender/source/blender/editors/mesh/editmesh_rip_edge.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_rip_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }

@.str = private unnamed_addr constant [16 x i8] c"Extend Vertices\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"MESH_OT_rip_edge\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Extend vertices along the edge closest to the cursor\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_rip_edge(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_rip_edge_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @EDBM_view3d_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 515) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_rip_edge_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [2 x float], align 4
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca [2 x [2 x float]], align 16
  %12 = alloca [2 x float], align 4
  %13 = alloca %struct.BMIter, align 8
  %14 = alloca [2 x float], align 4
  %15 = alloca [2 x float], align 4
  %16 = alloca [2 x float], align 4
  %17 = alloca ptr, align 8
  %18 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %19 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #9
  %20 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %21 = tail call ptr @BKE_editmesh_from_object(ptr noundef %20) #9
  %22 = load ptr, ptr %21, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %23 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %24 = load <2 x i32>, ptr %23, align 4, !tbaa !22
  %25 = sitofp <2 x i32> %24 to <2 x float>
  store <2 x float> %25, ptr %5, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #10
  %26 = getelementptr inbounds %struct.BMesh, ptr %22, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !25
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %163, label %29

29:                                               ; preds = %3
  call void @ED_view3d_ob_project_mat_get(ptr noundef %19, ptr noundef %20, ptr noundef nonnull %8) #9
  call fastcc void @zero_v2(ptr noundef nonnull %6) #11
  %30 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %22, i8 noundef zeroext 1, ptr noundef null) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %29, %40
  %33 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %34 = phi i32 [ %41, %40 ], [ 0, %29 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %33) #11
  %35 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %33, i8 noundef zeroext 1) #11, !range !28
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  %38 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2
  call void @ED_view3d_project_float_v2_m4(ptr noundef %18, ptr noundef nonnull %38, ptr noundef nonnull %9, ptr noundef nonnull %8) #9
  call fastcc void @add_v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %9) #11
  %39 = add nsw i32 %34, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  br label %40

40:                                               ; preds = %32, %37
  %41 = phi i32 [ %39, %37 ], [ %34, %32 ]
  %42 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #11
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %32, !llvm.loop !29

44:                                               ; preds = %40
  %45 = sitofp i32 %41 to float
  br label %46

46:                                               ; preds = %44, %29
  %47 = phi float [ 0.000000e+00, %29 ], [ %45, %44 ]
  %48 = fdiv float 1.000000e+00, %47
  call fastcc void @mul_v2_fl(ptr noundef nonnull %6, float noundef %48) #11
  %49 = getelementptr inbounds %struct.BMesh, ptr %22, i64 0, i32 5
  %50 = load i32, ptr %49, align 4, !tbaa !31
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %80, label %52

52:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #10
  %53 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %5) #11
  %54 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %10, ptr noundef nonnull %22, i8 noundef zeroext 2, ptr noundef null) #11
  %55 = icmp eq ptr %54, null
  br i1 %55, label %79, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds [2 x [2 x float]], ptr %11, i64 0, i64 1
  br label %58

58:                                               ; preds = %56, %75
  %59 = phi float [ %53, %56 ], [ %76, %75 ]
  %60 = phi ptr [ %54, %56 ], [ %77, %75 ]
  %61 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %60, i8 noundef zeroext 1) #11, !range !28
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #10
  %64 = getelementptr inbounds %struct.BMEdge, ptr %60, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !32
  %66 = getelementptr inbounds %struct.BMVert, ptr %65, i64 0, i32 2
  call void @ED_view3d_project_float_v2_m4(ptr noundef %18, ptr noundef nonnull %66, ptr noundef nonnull %11, ptr noundef nonnull %8) #9
  %67 = getelementptr inbounds %struct.BMEdge, ptr %60, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !36
  %69 = getelementptr inbounds %struct.BMVert, ptr %68, i64 0, i32 2
  call void @ED_view3d_project_float_v2_m4(ptr noundef %18, ptr noundef nonnull %69, ptr noundef nonnull %57, ptr noundef nonnull %8) #9
  call void @closest_to_line_segment_v2(ptr noundef nonnull %12, ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef nonnull %57) #9
  %70 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %12, ptr noundef nonnull %5) #11
  %71 = fcmp olt float %70, %59
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  call fastcc void @copy_v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %12) #11
  br label %73

73:                                               ; preds = %72, %63
  %74 = phi float [ %70, %72 ], [ %59, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #10
  br label %75

75:                                               ; preds = %58, %73
  %76 = phi float [ %74, %73 ], [ %59, %58 ]
  %77 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %10) #11
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %58, !llvm.loop !37

79:                                               ; preds = %75, %52
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #10
  br label %80

80:                                               ; preds = %79, %46
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  call fastcc void @normalize_v2(ptr noundef nonnull %7) #11
  %81 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %22, i8 noundef zeroext 1, ptr noundef null) #11
  %82 = icmp eq ptr %81, null
  br i1 %82, label %163, label %83

83:                                               ; preds = %80, %158
  %84 = phi ptr [ %159, %158 ], [ %81, %80 ]
  %85 = phi i1 [ false, %158 ], [ true, %80 ]
  br label %86

86:                                               ; preds = %83, %155
  %87 = phi ptr [ %156, %155 ], [ %84, %83 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #10
  %88 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %87, i8 noundef zeroext 1) #11, !range !28
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %155, label %90

90:                                               ; preds = %86
  %91 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %87, i8 noundef zeroext 16) #11, !range !28
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %155

93:                                               ; preds = %90
  %94 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %13, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %87) #11
  %95 = icmp eq ptr %94, null
  br i1 %95, label %118, label %96

96:                                               ; preds = %93, %108
  %97 = phi i32 [ %111, %108 ], [ 0, %93 ]
  %98 = phi ptr [ %109, %108 ], [ null, %93 ]
  %99 = phi ptr [ %112, %108 ], [ %94, %93 ]
  %100 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %99, i8 noundef zeroext 2) #11, !range !28
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %99, i8 noundef zeroext 1) #11, !range !28
  %104 = icmp ne i8 %103, 0
  %105 = select i1 %104, ptr %99, ptr %98
  %106 = zext i1 %104 to i32
  %107 = add nsw i32 %97, %106
  br label %108

108:                                              ; preds = %96, %102
  %109 = phi ptr [ %98, %96 ], [ %105, %102 ]
  %110 = phi i32 [ %97, %96 ], [ %107, %102 ]
  %111 = freeze i32 %110
  %112 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %13) #11
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %96, !llvm.loop !38

114:                                              ; preds = %108
  %115 = icmp eq i32 %111, 1
  %116 = select i1 %115, ptr %109, ptr null
  %117 = icmp eq i32 %111, 0
  br i1 %117, label %118, label %146

118:                                              ; preds = %93, %114
  %119 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 2
  call void @ED_view3d_project_float_v2_m4(ptr noundef %18, ptr noundef nonnull %119, ptr noundef nonnull %14, ptr noundef nonnull %8) #9
  %120 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %13, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %87) #11
  %121 = icmp eq ptr %120, null
  br i1 %121, label %155, label %122

122:                                              ; preds = %118, %141
  %123 = phi ptr [ %143, %141 ], [ null, %118 ]
  %124 = phi float [ %142, %141 ], [ 0x47EFFFFFE0000000, %118 ]
  %125 = phi ptr [ %144, %141 ], [ %120, %118 ]
  %126 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %125, i8 noundef zeroext 2) #11, !range !28
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %122
  %129 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %125, ptr noundef nonnull %87) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #10
  %130 = getelementptr inbounds %struct.BMVert, ptr %129, i64 0, i32 2
  call void @ED_view3d_project_float_v2_m4(ptr noundef %18, ptr noundef nonnull %130, ptr noundef nonnull %15, ptr noundef nonnull %8) #9
  %131 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %14, ptr noundef nonnull %15) #11
  %132 = fcmp ogt float %131, 1.000000e+00
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #10
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef nonnull %14) #11
  call fastcc void @normalize_v2(ptr noundef nonnull %16) #11
  %134 = call float @angle_normalized_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %16) #9
  %135 = fcmp olt float %134, %124
  %136 = select i1 %135, float %134, float %124
  %137 = select i1 %135, ptr %125, ptr %123
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #10
  br label %138

138:                                              ; preds = %133, %128
  %139 = phi float [ %136, %133 ], [ %124, %128 ]
  %140 = phi ptr [ %137, %133 ], [ %123, %128 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #10
  br label %141

141:                                              ; preds = %122, %138
  %142 = phi float [ %124, %122 ], [ %139, %138 ]
  %143 = phi ptr [ %123, %122 ], [ %140, %138 ]
  %144 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %13) #11
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %122, !llvm.loop !39

146:                                              ; preds = %141, %114
  %147 = phi ptr [ %116, %114 ], [ %143, %141 ]
  %148 = icmp eq ptr %147, null
  br i1 %148, label %155, label %149

149:                                              ; preds = %146
  %150 = call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef nonnull %147) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #10
  %151 = call ptr @BM_edge_split(ptr noundef %22, ptr noundef nonnull %147, ptr noundef nonnull %87, ptr noundef nonnull %17, float noundef 0.000000e+00) #9
  call void @BM_vert_select_set(ptr noundef %22, ptr noundef nonnull %87, i8 noundef zeroext 0) #9
  %152 = load ptr, ptr %17, align 8, !tbaa !40
  call void @BM_edge_select_set(ptr noundef %22, ptr noundef %152, i8 noundef zeroext 0) #9
  call void @BM_vert_select_set(ptr noundef %22, ptr noundef %151, i8 noundef zeroext 1) #9
  %153 = icmp eq i8 %150, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %149
  call void @BM_edge_select_set(ptr noundef %22, ptr noundef nonnull %147, i8 noundef zeroext 1) #9
  br label %158

155:                                              ; preds = %118, %146, %90, %86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #10
  %156 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #11
  %157 = icmp eq ptr %156, null
  br i1 %157, label %161, label %86, !llvm.loop !41

158:                                              ; preds = %149, %154
  call fastcc void @_bm_elem_flag_enable(ptr noundef %151) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #10
  %159 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #11
  %160 = icmp eq ptr %159, null
  br i1 %160, label %162, label %83, !llvm.loop !41

161:                                              ; preds = %155
  br i1 %85, label %163, label %162

162:                                              ; preds = %158, %161
  call void @BM_select_history_clear(ptr noundef %22) #9
  call void @BM_mesh_select_mode_flush(ptr noundef %22) #9
  call void @EDBM_update_generic(ptr noundef nonnull %21, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  br label %163

163:                                              ; preds = %80, %161, %3, %162
  %164 = phi i32 [ 4, %162 ], [ 2, %3 ], [ 2, %161 ], [ 2, %80 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  ret i32 %164
}

; Function Attrs: optsize
declare i32 @EDBM_view3d_poll(ptr noundef) #1

; Function Attrs: optsize
declare void @Transform_Properties(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_view3d_ob_project_mat_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #3 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #11
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #11
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !42
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !42
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: optsize
declare void @ED_view3d_project_float_v2_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !23
  %4 = load float, ptr %0, align 4, !tbaa !23
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !23
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !23
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !23
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = tail call ptr %3(ptr noundef %0) #9
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #4 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !23
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #11
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret float %4
}

; Function Attrs: optsize
declare void @closest_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !23
  store float %3, ptr %0, align 4, !tbaa !23
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !23
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !23
  %5 = load float, ptr %2, align 4, !tbaa !23
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !23
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !23
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !23
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2(ptr nocapture noundef %0) unnamed_addr #6 {
  tail call fastcc void @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: optsize
declare float @angle_normalized_v2v2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !42
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @BM_edge_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !42
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !42
  ret void
}

; Function Attrs: optsize
declare void @BM_select_history_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_mesh_select_mode_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !45
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %18 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !46
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  br label %19

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !46
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  br label %19

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !46
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  br label %19

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !46
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !43
  br label %19

18:                                               ; preds = %4
  unreachable

19:                                               ; preds = %17, %14, %11, %8
  %20 = phi ptr [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %21 = phi ptr [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %20, ptr %0, align 8, !tbaa !50
  tail call void %21(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %0, align 4, !tbaa !23
  %4 = load float, ptr %1, align 4, !tbaa !23
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !23
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !23
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #11
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #9
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #11
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #11
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !23
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !23
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !23
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !23
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }

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
!15 = !{!6, !7, i64 48}
!16 = !{!6, !7, i64 72}
!17 = !{!6, !12, i64 184}
!18 = !{!19, !7, i64 0}
!19 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !20, i64 16, !7, i64 24, !20, i64 32, !7, i64 40, !7, i64 48, !21, i64 56, !7, i64 64, !20, i64 72, !7, i64 80, !20, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !20, i64 104}
!20 = !{!"int", !8, i64 0}
!21 = !{!"long", !8, i64 0}
!22 = !{!20, !20, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"float", !8, i64 0}
!25 = !{!26, !20, i64 16}
!26 = !{!"BMesh", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !20, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !20, i64 88, !20, i64 92, !20, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !20, i64 128, !7, i64 136, !27, i64 144, !27, i64 344, !27, i64 544, !27, i64 744, !12, i64 944, !20, i64 948, !20, i64 952, !20, i64 956, !10, i64 960, !7, i64 976, !10, i64 984, !7, i64 1000}
!27 = !{!"CustomData", !7, i64 0, !8, i64 8, !20, i64 172, !20, i64 176, !20, i64 180, !7, i64 184, !7, i64 192}
!28 = !{i8 0, i8 17}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!26, !20, i64 20}
!32 = !{!33, !7, i64 24}
!33 = !{!"BMEdge", !34, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !35, i64 48, !35, i64 64}
!34 = !{!"BMHeader", !7, i64 0, !20, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
!35 = !{!"BMDiskLink", !7, i64 0, !7, i64 8}
!36 = !{!33, !7, i64 32}
!37 = distinct !{!37, !30}
!38 = distinct !{!38, !30}
!39 = distinct !{!39, !30}
!40 = !{!7, !7, i64 0}
!41 = distinct !{!41, !30}
!42 = !{!34, !8, i64 13}
!43 = !{!44, !7, i64 48}
!44 = !{!"BMIter", !8, i64 0, !7, i64 40, !7, i64 48, !20, i64 56, !8, i64 60}
!45 = !{!44, !8, i64 60}
!46 = !{!44, !7, i64 40}
!47 = !{!26, !7, i64 32}
!48 = !{!26, !7, i64 40}
!49 = !{!26, !7, i64 56}
!50 = !{!8, !8, i64 0}
