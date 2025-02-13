; ModuleID = 'blender/source/blender/bmesh/operators/bmo_normals.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_normals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFlagLayer = type { i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.bmo_recalc_face_normals_exec = private unnamed_addr constant [29 x i8] c"bmo_recalc_face_normals_exec\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.bmo_recalc_face_normals_array = private unnamed_addr constant [30 x i8] c"bmo_recalc_face_normals_array\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_recalc_face_normals_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !38
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 2
  %9 = tail call ptr %4(i64 noundef %8, ptr noundef nonnull @__func__.bmo_recalc_face_normals_exec) #8
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %11 = load i32, ptr %5, align 4, !tbaa !38
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr %10(i64 noundef %13, ptr noundef nonnull @__func__.bmo_recalc_face_normals_exec) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %15 = call i32 @BM_mesh_calc_face_groups(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %3, ptr noundef nonnull @bmo_recalc_normal_edge_filter_cb, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 2) #8
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str, i8 noundef zeroext 8, i16 noundef signext 1) #8
  call void @BM_mesh_elem_table_ensure(ptr noundef %0, i8 noundef zeroext 8) #8
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %2
  %18 = zext nneg i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %50
  %20 = phi i64 [ 0, %17 ], [ %51, %50 ]
  %21 = load ptr, ptr %3, align 8, !tbaa !34
  %22 = getelementptr inbounds [2 x i32], ptr %21, i64 %20, i64 1
  %23 = load i32, ptr %22, align 4, !tbaa !44
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %19
  %26 = getelementptr inbounds [2 x i32], ptr %21, i64 %20
  %27 = load i32, ptr %26, align 4, !tbaa !44
  %28 = sext i32 %27 to i64
  %29 = zext nneg i32 %23 to i64
  %30 = getelementptr i32, ptr %9, i64 %28
  br label %31

31:                                               ; preds = %25, %43
  %32 = phi i64 [ 0, %25 ], [ %45, %43 ]
  %33 = phi i8 [ 0, %25 ], [ %44, %43 ]
  %34 = getelementptr i32, ptr %30, i64 %32
  %35 = load i32, ptr %34, align 4, !tbaa !44
  %36 = call ptr @BM_face_at_index(ptr noundef %0, i32 noundef %35) #8
  %37 = getelementptr inbounds ptr, ptr %14, i64 %32
  store ptr %36, ptr %37, align 8, !tbaa !34
  %38 = icmp eq i8 %33, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.BMFace, ptr %36, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !45
  %42 = call fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr noundef %0, ptr noundef %41, i16 noundef signext 1) #10, !range !48
  br label %43

43:                                               ; preds = %31, %39
  %44 = phi i8 [ %42, %39 ], [ %33, %31 ]
  %45 = add nuw nsw i64 %32, 1
  %46 = icmp eq i64 %45, %29
  br i1 %46, label %47, label %31, !llvm.loop !49

47:                                               ; preds = %43
  %48 = icmp eq i8 %44, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  call fastcc void @bmo_recalc_face_normals_array(ptr noundef %0, ptr noundef nonnull %14, i32 noundef %23) #10
  br label %50

50:                                               ; preds = %19, %49, %47
  %51 = add nuw nsw i64 %20, 1
  %52 = icmp eq i64 %51, %18
  br i1 %52, label %53, label %19, !llvm.loop !51

53:                                               ; preds = %50, %2
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %54(ptr noundef %14) #8
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %55(ptr noundef %9) #8
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %57 = load ptr, ptr %3, align 8, !tbaa !34
  call void %56(ptr noundef %57) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @BM_mesh_calc_face_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @bmo_recalc_normal_edge_filter_cb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 !PGOFuncName !52 {
  %3 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %0) #10, !range !48
  ret i8 %3
}

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #4 !PGOFuncName !53 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !54
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !55
  %10 = and i16 %9, %2
  %11 = icmp ne i16 %10, 0
  %12 = zext i1 %11 to i8
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_recalc_face_normals_array(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !57 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %7 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %8 = sext i32 %2 to i64
  %9 = mul nsw i64 %8, 12
  %10 = tail call ptr %7(i64 noundef %9, ptr noundef nonnull @__func__.bmo_recalc_face_normals_array) #8
  %11 = sitofp i32 %2 to float
  %12 = fdiv float 1.000000e+00, %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call fastcc void @zero_v3(ptr noundef nonnull %4) #10
  %13 = icmp sgt i32 %2, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %3
  %15 = zext nneg i32 %2 to i64
  br label %19

16:                                               ; preds = %19
  br i1 %13, label %17, label %40

17:                                               ; preds = %16
  %18 = zext nneg i32 %2 to i64
  br label %26

19:                                               ; preds = %14, %19
  %20 = phi i64 [ 0, %14 ], [ %24, %19 ]
  %21 = getelementptr inbounds [3 x float], ptr %10, i64 %20
  %22 = getelementptr inbounds ptr, ptr %1, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  tail call void @BM_face_calc_center_mean_weighted(ptr noundef %23, ptr noundef %21) #8
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %4, ptr noundef %21, float noundef %12) #10
  %24 = add nuw nsw i64 %20, 1
  %25 = icmp eq i64 %24, %15
  br i1 %25, label %16, label %19, !llvm.loop !58

26:                                               ; preds = %17, %26
  %27 = phi i64 [ 0, %17 ], [ %36, %26 ]
  %28 = phi i32 [ 0, %17 ], [ %35, %26 ]
  %29 = phi float [ 0xC7EFFFFFE0000000, %17 ], [ %33, %26 ]
  %30 = getelementptr inbounds [3 x float], ptr %10, i64 %27
  %31 = call fastcc float @len_squared_v3v3(ptr noundef %30, ptr noundef nonnull %4) #10
  %32 = fcmp ogt float %31, %29
  %33 = select i1 %32, float %31, float %29
  %34 = trunc i64 %27 to i32
  %35 = select i1 %32, i32 %34, i32 %28
  %36 = add nuw nsw i64 %27, 1
  %37 = icmp eq i64 %36, %18
  br i1 %37, label %38, label %26, !llvm.loop !59

38:                                               ; preds = %26
  %39 = sext i32 %35 to i64
  br label %40

40:                                               ; preds = %3, %38, %16
  %41 = phi i64 [ 0, %16 ], [ %39, %38 ], [ 0, %3 ]
  %42 = getelementptr inbounds [3 x float], ptr %10, i64 %41
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %42, ptr noundef nonnull %4) #10
  %43 = getelementptr inbounds ptr, ptr %1, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct.BMFace, ptr %44, i64 0, i32 4
  %46 = call fastcc float @dot_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %45) #10
  %47 = fcmp olt float %46, 0.000000e+00
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.BMFace, ptr %44, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !45
  tail call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %50, i16 noundef signext 2) #10
  br label %51

51:                                               ; preds = %48, %40
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %52(ptr noundef %10) #8
  store ptr null, ptr %6, align 8, !tbaa !34
  %53 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #8
  %54 = load ptr, ptr %43, align 8, !tbaa !34
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %6, ptr noundef %54, ptr noundef %53) #8
  %55 = load ptr, ptr %43, align 8, !tbaa !34
  %56 = getelementptr inbounds %struct.BMFace, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !45
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %57, i16 noundef signext 4) #10
  %58 = load ptr, ptr %6, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %106, label %60

60:                                               ; preds = %51, %103
  %61 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %6, ptr noundef %53) #8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %106, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.BMFace, ptr %61, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !45
  %66 = call fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr noundef %0, ptr noundef %65, i16 noundef signext 2) #10, !range !48
  %67 = getelementptr inbounds %struct.BMFace, ptr %61, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !60
  br label %69

69:                                               ; preds = %99, %63
  %70 = phi ptr [ %68, %63 ], [ %101, %99 ]
  %71 = getelementptr inbounds %struct.BMLoop, ptr %70, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !61
  %73 = icmp eq ptr %72, %70
  br i1 %73, label %99, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.BMLoop, ptr %70, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !63
  %77 = call zeroext i8 @bmo_recalc_normal_edge_filter_cb(ptr noundef %76, ptr poison) #10, !range !48
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %99, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !64
  %82 = getelementptr inbounds %struct.BMFace, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !45
  %84 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %83, i16 noundef signext 4) #10, !range !65
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %79
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %83, i16 noundef signext 4) #10
  %87 = load ptr, ptr %80, align 8, !tbaa !64
  %88 = getelementptr inbounds %struct.BMFace, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !45
  %90 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !66
  %92 = getelementptr inbounds %struct.BMLoop, ptr %70, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !66
  %94 = icmp eq ptr %91, %93
  %95 = zext i1 %94 to i8
  %96 = icmp ne i8 %66, %95
  %97 = zext i1 %96 to i32
  call fastcc void @_bmo_elem_flag_set(ptr noundef %0, ptr noundef %89, i32 noundef %97) #10
  %98 = load ptr, ptr %80, align 8, !tbaa !64
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %6, ptr noundef %98, ptr noundef %53) #8
  br label %99

99:                                               ; preds = %79, %86, %74, %69
  %100 = getelementptr inbounds %struct.BMLoop, ptr %70, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !67
  %102 = icmp eq ptr %101, %68
  br i1 %102, label %103, label %69, !llvm.loop !68

103:                                              ; preds = %99
  %104 = load ptr, ptr %6, align 8, !tbaa !34
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %60, !llvm.loop !69

106:                                              ; preds = %60, %103, %51
  call void @BLI_mempool_destroy(ptr noundef %53) #8
  store ptr null, ptr %6, align 8, !tbaa !34
  br i1 %13, label %107, label %125

107:                                              ; preds = %106
  %108 = zext nneg i32 %2 to i64
  br label %109

109:                                              ; preds = %107, %121
  %110 = phi i64 [ 0, %107 ], [ %123, %121 ]
  %111 = getelementptr inbounds ptr, ptr %1, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !34
  %113 = getelementptr inbounds %struct.BMFace, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !45
  %115 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %114, i16 noundef signext 3) #10, !range !65
  %116 = icmp eq i16 %115, 3
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  call void @BM_face_normal_flip(ptr noundef %0, ptr noundef nonnull %112) #8
  %118 = load ptr, ptr %111, align 8, !tbaa !34
  %119 = getelementptr inbounds %struct.BMFace, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !45
  br label %121

121:                                              ; preds = %117, %109
  %122 = phi ptr [ %120, %117 ], [ %114, %109 ]
  call fastcc void @_bmo_elem_flag_disable(ptr noundef %0, ptr noundef %122) #10
  %123 = add nuw nsw i64 %110, 1
  %124 = icmp eq i64 %123, %108
  br i1 %124, label %125, label %109, !llvm.loop !70

125:                                              ; preds = %121, %106
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_manifold(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !71 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = icmp eq ptr %11, %3
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %13, %9 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !75 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !76
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !76
  ret void
}

; Function Attrs: optsize
declare void @BM_face_calc_center_mean_weighted(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 !PGOFuncName !78 {
  %4 = load float, ptr %1, align 4, !tbaa !76
  %5 = load float, ptr %0, align 4, !tbaa !76
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !76
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !76
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !76
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !76
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !76
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !76
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !79 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #10
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !80 {
  %4 = load float, ptr %1, align 4, !tbaa !76
  %5 = load float, ptr %2, align 4, !tbaa !76
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !76
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !76
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !76
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !76
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !76
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !76
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !81 {
  %3 = load float, ptr %0, align 4, !tbaa !76
  %4 = load float, ptr %1, align 4, !tbaa !76
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !76
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !76
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !76
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !76
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #6 !PGOFuncName !82 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !54
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !55
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !55
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_linklist_prepend_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_linklist_pop_pool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #4 !PGOFuncName !83 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !54
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !55
  %10 = and i16 %9, %2
  ret i16 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_set(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #6 !PGOFuncName !84 {
  %4 = icmp eq i32 %2, 0
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %6 = load i32, ptr %5, align 8, !tbaa !54
  %7 = sext i32 %6 to i64
  %8 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %7
  %9 = getelementptr %struct.BMFlagLayer, ptr %8, i64 -1
  %10 = load i16, ptr %9, align 2, !tbaa !55
  %11 = and i16 %10, -3
  %12 = select i1 %4, i16 0, i16 2
  %13 = or disjoint i16 %11, %12
  store i16 %13, ptr %9, align 2, !tbaa !55
  ret void
}

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_normal_flip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #6 !PGOFuncName !85 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !54
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !55
  %9 = and i16 %8, -5
  store i16 %9, ptr %7, align 2, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 12}
!39 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !41, i64 144, !41, i64 344, !41, i64 544, !41, i64 744, !42, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !43, i64 960, !35, i64 976, !43, i64 984, !35, i64 1000}
!40 = !{!"int", !36, i64 0}
!41 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!42 = !{!"short", !36, i64 0}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!40, !40, i64 0}
!45 = !{!46, !35, i64 16}
!46 = !{!"BMFace", !47, i64 0, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !42, i64 48}
!47 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!48 = !{i8 0, i8 2}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
!52 = !{!"bmo_normals.c:bmo_recalc_normal_edge_filter_cb"}
!53 = !{!"bmo_normals.c:_bmo_elem_flag_test_bool"}
!54 = !{!39, !40, i64 128}
!55 = !{!56, !42, i64 0}
!56 = !{!"BMFlagLayer", !42, i64 0}
!57 = !{!"bmo_normals.c:bmo_recalc_face_normals_array"}
!58 = distinct !{!58, !50}
!59 = distinct !{!59, !50}
!60 = !{!46, !35, i64 24}
!61 = !{!62, !35, i64 40}
!62 = !{!"BMLoop", !47, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!63 = !{!62, !35, i64 24}
!64 = !{!62, !35, i64 32}
!65 = !{i16 0, i16 5}
!66 = !{!62, !35, i64 16}
!67 = !{!62, !35, i64 56}
!68 = distinct !{!68, !50}
!69 = distinct !{!69, !50}
!70 = distinct !{!70, !50}
!71 = !{!"bmo_normals.c:BM_edge_is_manifold"}
!72 = !{!73, !35, i64 40}
!73 = !{!"BMEdge", !47, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !74, i64 48, !74, i64 64}
!74 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!75 = !{!"bmo_normals.c:zero_v3"}
!76 = !{!77, !77, i64 0}
!77 = !{!"float", !36, i64 0}
!78 = !{!"bmo_normals.c:madd_v3_v3fl"}
!79 = !{!"bmo_normals.c:len_squared_v3v3"}
!80 = !{!"bmo_normals.c:sub_v3_v3v3"}
!81 = !{!"bmo_normals.c:dot_v3v3"}
!82 = !{!"bmo_normals.c:_bmo_elem_flag_enable"}
!83 = !{!"bmo_normals.c:_bmo_elem_flag_test"}
!84 = !{!"bmo_normals.c:_bmo_elem_flag_set"}
!85 = !{!"bmo_normals.c:_bmo_elem_flag_disable"}
