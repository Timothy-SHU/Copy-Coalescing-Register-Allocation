; ModuleID = 'blender/source/blender/editors/mesh/editmesh_rip.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_rip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.UnorderedLoopPair = type { [2 x ptr], i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.EdgeLoopPair = type { ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"Rip\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"MESH_OT_rip\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Disconnect vertex or edges from connected geometry\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"use_fill\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Fill\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Fill the ripped region\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Cannot rip selected faces\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Cannot rip multiple disconnected vertices\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [32 x i8] c"Error ripping vertex from faces\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Selected vertex has no edge/face pairs attached\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"No vertices could be ripped\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.edbm_tagged_loop_pairs_to_fill = private unnamed_addr constant [31 x i8] c"edbm_tagged_loop_pairs_to_fill\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [25 x i8] c"No edges could be ripped\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"BLI_array.eloop_pairs\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_rip(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_rip_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @EDBM_view3d_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 515) #12
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_rip_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !48 {
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #12
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !53
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !56
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !57
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %15, %11, %3
  %20 = phi i1 [ true, %11 ], [ true, %3 ], [ %18, %15 ]
  %21 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !57
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  tail call void @BKE_report(ptr noundef %26, i32 noundef 32, ptr noundef nonnull @.str.6) #12
  br label %57

27:                                               ; preds = %19
  %28 = icmp sgt i32 %9, 1
  br i1 %28, label %29, label %36

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !56
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !58
  tail call void @BKE_report(ptr noundef %35, i32 noundef 32, ptr noundef nonnull @.str.7) #12
  br label %57

36:                                               ; preds = %29, %27
  %37 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %7, i8 noundef zeroext 2, ptr noundef null) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %36, %39
  %40 = phi ptr [ %43, %39 ], [ %37, %36 ]
  %41 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %40, i8 noundef zeroext 1) #14, !range !60
  %42 = zext nneg i8 %41 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %40, i32 noundef %42) #14
  %43 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %39, !llvm.loop !61

45:                                               ; preds = %39, %36
  br i1 %20, label %48, label %46

46:                                               ; preds = %45
  %47 = call fastcc i32 @edbm_rip_invoke__vert(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14, !range !63
  br label %50

48:                                               ; preds = %45
  %49 = call fastcc i32 @edbm_rip_invoke__edge(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14, !range !63
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %8, align 8, !tbaa !53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  call void @EDBM_update_generic(ptr noundef nonnull %6, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  br label %57

57:                                               ; preds = %53, %50, %56, %33, %24
  %58 = phi i32 [ 2, %24 ], [ 2, %33 ], [ 4, %56 ], [ 2, %50 ], [ 2, %53 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i32 %58
}

; Function Attrs: optsize
declare i32 @EDBM_view3d_poll(ptr noundef) #1

; Function Attrs: optsize
declare void @Transform_Properties(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !64 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #14
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #14
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_set(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !65 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %0) #14
  br label %6

5:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %0) #14
  br label %6

6:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #4 !PGOFuncName !66 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !67
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !69 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = tail call ptr %3(ptr noundef %0) #12
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @edbm_rip_invoke__vert(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !72 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x float], align 8
  %8 = alloca %struct.BMEditSelection, align 8
  %9 = alloca [3 x ptr], align 16
  %10 = alloca [3 x ptr], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  %19 = tail call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.3) #12
  %20 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %21 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %22 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #12
  %23 = tail call ptr @BKE_editmesh_from_object(ptr noundef %20) #12
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  %25 = load i32, ptr %24, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %27 = load <2 x i32>, ptr %26, align 4, !tbaa !75
  %28 = sitofp <2 x i32> %27 to <2 x float>
  store <2 x float> %28, ptr %7, align 8, !tbaa !76
  %29 = getelementptr inbounds i8, ptr %7, i64 8
  store float 0.000000e+00, ptr %29, align 8, !tbaa !76
  %30 = trunc i32 %19 to i8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #13
  call void @ED_view3d_ob_project_mat_get(ptr noundef %22, ptr noundef %20, ptr noundef nonnull %6) #12
  %31 = call zeroext i8 @BM_select_history_active_get(ptr noundef nonnull %24, ptr noundef nonnull %8) #12
  %32 = icmp ne i8 %31, 0
  %33 = getelementptr inbounds %struct.BMEditSelection, ptr %8, i64 0, i32 3
  %34 = load i8, ptr %33, align 8
  %35 = icmp eq i8 %34, 1
  %36 = select i1 %32, i1 %35, i1 false
  %37 = getelementptr inbounds %struct.BMEditSelection, ptr %8, i64 0, i32 2
  br i1 %36, label %48, label %38

38:                                               ; preds = %3
  store ptr null, ptr %37, align 8, !tbaa !78
  %39 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %24, i8 noundef zeroext 1, ptr noundef null) #14
  %40 = icmp eq ptr %39, null
  br i1 %40, label %389, label %41

41:                                               ; preds = %38, %45
  %42 = phi ptr [ %46, %45 ], [ %39, %38 ]
  %43 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %42, i8 noundef zeroext 1) #14, !range !60
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %47 = icmp eq ptr %46, null
  br i1 %47, label %389, label %41, !llvm.loop !80

48:                                               ; preds = %3
  %49 = load ptr, ptr %37, align 8, !tbaa !78
  %50 = icmp eq ptr %49, null
  br i1 %50, label %389, label %51

51:                                               ; preds = %41, %48
  %52 = phi ptr [ %49, %48 ], [ %42, %41 ]
  %53 = call zeroext i8 @BM_vert_is_wire(ptr noundef nonnull %52) #12
  %54 = getelementptr inbounds %struct.BMVert, ptr %52, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !81
  %56 = icmp eq ptr %55, null
  br i1 %56, label %274, label %57

57:                                               ; preds = %51
  %58 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %52) #14
  %59 = icmp eq ptr %58, null
  br i1 %59, label %97, label %60

60:                                               ; preds = %57, %92
  %61 = phi i32 [ %73, %92 ], [ 0, %57 ]
  %62 = phi ptr [ %95, %92 ], [ %58, %57 ]
  %63 = phi float [ %94, %92 ], [ 0x47EFFFFFE0000000, %57 ]
  %64 = phi ptr [ %93, %92 ], [ null, %57 ]
  %65 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %62) #14, !range !83
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef nonnull %62) #14, !range !83
  %69 = icmp ne i8 %68, 0
  br label %70

70:                                               ; preds = %67, %60
  %71 = phi i1 [ true, %60 ], [ %69, %67 ]
  %72 = zext i1 %71 to i32
  %73 = add nuw nsw i32 %61, %72
  %74 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %62, i8 noundef zeroext 2) #14, !range !60
  %75 = or i8 %74, %65
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %70
  %78 = call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef nonnull %62) #14, !range !83
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.BMEdge, ptr %62, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !84
  %83 = getelementptr inbounds %struct.BMVert, ptr %82, i64 0, i32 2
  %84 = getelementptr inbounds %struct.BMEdge, ptr %62, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !87
  %86 = getelementptr inbounds %struct.BMVert, ptr %85, i64 0, i32 2
  %87 = call fastcc float @edbm_rip_edgedist_squared(ptr noundef %21, ptr noundef nonnull %6, ptr noundef nonnull %83, ptr noundef nonnull %86, ptr noundef nonnull %7) #14
  %88 = icmp eq ptr %64, null
  %89 = fcmp olt float %87, %63
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %80, %77, %91, %70
  %93 = phi ptr [ %62, %91 ], [ %64, %77 ], [ %64, %70 ], [ %64, %80 ]
  %94 = phi float [ %87, %91 ], [ %63, %77 ], [ %63, %70 ], [ %63, %80 ]
  %95 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %60, !llvm.loop !88

97:                                               ; preds = %92, %57
  %98 = phi ptr [ null, %57 ], [ %93, %92 ]
  %99 = phi float [ 0x47EFFFFFE0000000, %57 ], [ %94, %92 ]
  %100 = phi i32 [ 0, %57 ], [ %73, %92 ]
  %101 = call i32 @BM_vert_face_count(ptr noundef nonnull %52) #12
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %103, label %137

103:                                              ; preds = %97
  %104 = call i32 @BM_vert_edge_count(ptr noundef nonnull %52) #12
  %105 = icmp eq i32 %104, 3
  br i1 %105, label %106, label %137

106:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  %107 = call i32 @BM_iter_as_array(ptr noundef nonnull %24, i8 noundef zeroext 4, ptr noundef nonnull %52, ptr noundef nonnull %9, i32 noundef 3) #12
  %108 = call i32 @BM_iter_as_array(ptr noundef nonnull %24, i8 noundef zeroext 6, ptr noundef nonnull %52, ptr noundef nonnull %10, i32 noundef 3) #12
  br label %109

109:                                              ; preds = %106, %131
  %110 = phi i64 [ 0, %106 ], [ %134, %131 ]
  %111 = phi float [ %99, %106 ], [ %133, %131 ]
  %112 = phi ptr [ %98, %106 ], [ %132, %131 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #13
  %113 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 %110
  %114 = load ptr, ptr %113, align 8, !tbaa !89
  call fastcc void @edbm_calc_loop_co(ptr noundef %114, ptr noundef nonnull %11) #14
  %115 = getelementptr inbounds %struct.BMLoop, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !90
  %117 = getelementptr inbounds %struct.BMVert, ptr %116, i64 0, i32 2
  %118 = call fastcc float @edbm_rip_edgedist_squared(ptr noundef %21, ptr noundef nonnull %6, ptr noundef nonnull %117, ptr noundef nonnull %11, ptr noundef nonnull %7) #14
  %119 = icmp eq ptr %112, null
  %120 = fcmp olt float %118, %111
  %121 = select i1 %119, i1 true, i1 %120
  br i1 %121, label %125, label %131

122:                                              ; preds = %125
  %123 = add nuw nsw i64 %126, 1
  %124 = icmp eq i64 %123, 3
  br i1 %124, label %131, label %125, !llvm.loop !92

125:                                              ; preds = %109, %122
  %126 = phi i64 [ %123, %122 ], [ 0, %109 ]
  %127 = getelementptr inbounds [3 x ptr], ptr %9, i64 0, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !89
  %129 = call fastcc zeroext i8 @BM_edge_in_loop(ptr noundef %128, ptr noundef %114) #14, !range !83
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %122

131:                                              ; preds = %125, %122, %109
  %132 = phi ptr [ %112, %109 ], [ %128, %125 ], [ null, %122 ]
  %133 = phi float [ %111, %109 ], [ %118, %122 ], [ %118, %125 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #13
  %134 = add nuw nsw i64 %110, 1
  %135 = icmp eq i64 %134, 3
  br i1 %135, label %136, label %109, !llvm.loop !93

136:                                              ; preds = %131
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  br label %137

137:                                              ; preds = %97, %103, %136
  %138 = phi ptr [ %132, %136 ], [ %98, %103 ], [ %98, %97 ]
  %139 = icmp eq i8 %53, 0
  %140 = icmp ugt i32 %100, 2
  %141 = select i1 %139, i1 %140, i1 false
  br i1 %141, label %146, label %142

142:                                              ; preds = %137
  %143 = icmp eq i8 %53, 1
  %144 = icmp ugt i32 %100, 1
  %145 = select i1 %143, i1 %144, i1 false
  br i1 %145, label %146, label %272

146:                                              ; preds = %142, %137
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  call void @BM_vert_select_set(ptr noundef nonnull %24, ptr noundef nonnull %52, i8 noundef zeroext 0) #12
  call void @bmesh_vert_separate(ptr noundef nonnull %24, ptr noundef nonnull %52, ptr noundef nonnull %12, ptr noundef nonnull %13, i8 noundef zeroext 1) #12
  %147 = load i32, ptr %13, align 4, !tbaa !75
  %148 = icmp slt i32 %147, 2
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load ptr, ptr @MEM_freeN, align 8, !tbaa !89
  %151 = load ptr, ptr %12, align 8, !tbaa !89
  call void %150(ptr noundef %151) #12
  call void @BM_vert_select_set(ptr noundef nonnull %24, ptr noundef nonnull %52, i8 noundef zeroext 1) #12
  %152 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %153 = load ptr, ptr %152, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %153, i32 noundef 32, ptr noundef nonnull @.str.8) #12
  br label %270

154:                                              ; preds = %146
  %155 = getelementptr inbounds %struct.BMEditSelection, ptr %8, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !78
  %157 = icmp eq ptr %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = call zeroext i8 @_bm_select_history_remove(ptr noundef nonnull %24, ptr noundef nonnull %156) #12
  %160 = load i32, ptr %13, align 4, !tbaa !75
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %233

162:                                              ; preds = %154, %158
  %163 = getelementptr inbounds %struct.BMVert, ptr %52, i64 0, i32 2
  br label %164

164:                                              ; preds = %162, %226
  %165 = phi i64 [ 0, %162 ], [ %229, %226 ]
  %166 = phi i32 [ 0, %162 ], [ %228, %226 ]
  %167 = phi float [ 0x47EFFFFFE0000000, %162 ], [ %227, %226 ]
  %168 = load ptr, ptr %12, align 8, !tbaa !89
  %169 = getelementptr inbounds ptr, ptr %168, i64 %165
  %170 = load ptr, ptr %169, align 8, !tbaa !89
  %171 = call zeroext i8 @BM_vert_is_wire(ptr noundef %170) #12
  %172 = icmp eq i8 %171, 0
  %173 = load ptr, ptr %12, align 8, !tbaa !89
  %174 = getelementptr inbounds ptr, ptr %173, i64 %165
  %175 = load ptr, ptr %174, align 8, !tbaa !89
  br i1 %172, label %176, label %199

176:                                              ; preds = %164
  %177 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 6, ptr noundef %175) #14
  %178 = icmp eq ptr %177, null
  br i1 %178, label %226, label %179

179:                                              ; preds = %176
  %180 = trunc i64 %165 to i32
  br label %181

181:                                              ; preds = %179, %194
  %182 = phi i32 [ %196, %194 ], [ %166, %179 ]
  %183 = phi ptr [ %197, %194 ], [ %177, %179 ]
  %184 = phi float [ %195, %194 ], [ %167, %179 ]
  %185 = getelementptr inbounds %struct.BMLoop, ptr %183, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !94
  %187 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %186, i8 noundef zeroext 2) #14, !range !60
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #13
  call fastcc void @edbm_calc_loop_co(ptr noundef nonnull %183, ptr noundef nonnull %14) #14
  %190 = call fastcc float @edbm_rip_edgedist_squared(ptr noundef %21, ptr noundef nonnull %6, ptr noundef nonnull %163, ptr noundef nonnull %14, ptr noundef nonnull %7) #14
  %191 = fcmp olt float %190, %184
  %192 = select i1 %191, float %190, float %184
  %193 = select i1 %191, i32 %180, i32 %182
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #13
  br label %194

194:                                              ; preds = %181, %189
  %195 = phi float [ %184, %181 ], [ %192, %189 ]
  %196 = phi i32 [ %182, %181 ], [ %193, %189 ]
  %197 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %198 = icmp eq ptr %197, null
  br i1 %198, label %226, label %181, !llvm.loop !95

199:                                              ; preds = %164
  %200 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 4, ptr noundef %175) #14
  %201 = icmp eq ptr %200, null
  br i1 %201, label %226, label %202

202:                                              ; preds = %199
  %203 = trunc i64 %165 to i32
  br label %204

204:                                              ; preds = %202, %221
  %205 = phi i32 [ %223, %221 ], [ %166, %202 ]
  %206 = phi ptr [ %224, %221 ], [ %200, %202 ]
  %207 = phi float [ %222, %221 ], [ %167, %202 ]
  %208 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %206, i8 noundef zeroext 2) #14, !range !60
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %210, label %221

210:                                              ; preds = %204
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #13
  %211 = getelementptr inbounds %struct.BMEdge, ptr %206, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !84
  %213 = getelementptr inbounds %struct.BMVert, ptr %212, i64 0, i32 2
  %214 = getelementptr inbounds %struct.BMEdge, ptr %206, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !87
  %216 = getelementptr inbounds %struct.BMVert, ptr %215, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %213, ptr noundef nonnull %216) #12
  %217 = call fastcc float @edbm_rip_edgedist_squared(ptr noundef %21, ptr noundef nonnull %6, ptr noundef nonnull %163, ptr noundef nonnull %15, ptr noundef nonnull %7) #14
  %218 = fcmp olt float %217, %207
  %219 = select i1 %218, float %217, float %207
  %220 = select i1 %218, i32 %203, i32 %205
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #13
  br label %221

221:                                              ; preds = %204, %210
  %222 = phi float [ %207, %204 ], [ %219, %210 ]
  %223 = phi i32 [ %205, %204 ], [ %220, %210 ]
  %224 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %204, !llvm.loop !96

226:                                              ; preds = %221, %194, %199, %176
  %227 = phi float [ %167, %176 ], [ %167, %199 ], [ %195, %194 ], [ %222, %221 ]
  %228 = phi i32 [ %166, %176 ], [ %166, %199 ], [ %196, %194 ], [ %223, %221 ]
  %229 = add nuw nsw i64 %165, 1
  %230 = load i32, ptr %13, align 4, !tbaa !75
  %231 = sext i32 %230 to i64
  %232 = icmp slt i64 %229, %231
  br i1 %232, label %164, label %233, !llvm.loop !97

233:                                              ; preds = %226, %158
  %234 = phi i32 [ 0, %158 ], [ %228, %226 ]
  %235 = load ptr, ptr %12, align 8, !tbaa !89
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds ptr, ptr %235, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !89
  call void @BM_vert_select_set(ptr noundef nonnull %24, ptr noundef %238, i8 noundef zeroext 1) #12
  %239 = load ptr, ptr %155, align 8, !tbaa !78
  %240 = icmp eq ptr %239, null
  br i1 %240, label %242, label %241

241:                                              ; preds = %233
  call void @_bm_select_history_store(ptr noundef nonnull %24, ptr noundef %238) #12
  br label %242

242:                                              ; preds = %241, %233
  %243 = load i32, ptr %13, align 4, !tbaa !75
  %244 = icmp sgt i32 %243, 2
  br i1 %244, label %245, label %267

245:                                              ; preds = %242
  %246 = icmp eq i32 %234, 0
  br i1 %246, label %254, label %247

247:                                              ; preds = %245
  %248 = load ptr, ptr %12, align 8, !tbaa !89
  %249 = load ptr, ptr %248, align 8, !tbaa !89
  %250 = getelementptr inbounds ptr, ptr %248, i64 %236
  %251 = load ptr, ptr %250, align 8, !tbaa !89
  store ptr %251, ptr %248, align 8, !tbaa !89
  %252 = load ptr, ptr %12, align 8, !tbaa !89
  %253 = getelementptr inbounds ptr, ptr %252, i64 %236
  store ptr %249, ptr %253, align 8, !tbaa !89
  br label %254

254:                                              ; preds = %245, %247
  br label %255

255:                                              ; preds = %254, %255
  %256 = phi i64 [ %263, %255 ], [ 2, %254 ]
  %257 = load ptr, ptr %12, align 8, !tbaa !89
  %258 = getelementptr inbounds ptr, ptr %257, i64 %256
  %259 = load ptr, ptr %258, align 8, !tbaa !89
  %260 = getelementptr inbounds ptr, ptr %257, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !89
  %262 = call zeroext i8 @BM_vert_splice(ptr noundef nonnull %24, ptr noundef %259, ptr noundef %261) #12
  %263 = add nuw nsw i64 %256, 1
  %264 = load i32, ptr %13, align 4, !tbaa !75
  %265 = sext i32 %264 to i64
  %266 = icmp slt i64 %263, %265
  br i1 %266, label %255, label %267, !llvm.loop !98

267:                                              ; preds = %255, %242
  %268 = load ptr, ptr @MEM_freeN, align 8, !tbaa !89
  %269 = load ptr, ptr %12, align 8, !tbaa !89
  call void %268(ptr noundef %269) #12
  br label %270

270:                                              ; preds = %267, %149
  %271 = phi i32 [ 2, %149 ], [ 4, %267 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  br label %389

272:                                              ; preds = %142
  %273 = icmp eq ptr %138, null
  br i1 %273, label %274, label %277

274:                                              ; preds = %51, %272
  %275 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %276 = load ptr, ptr %275, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %276, i32 noundef 32, ptr noundef nonnull @.str.9) #12
  br label %389

277:                                              ; preds = %272
  %278 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %138) #14, !range !83
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = call i32 @BM_vert_face_count(ptr noundef nonnull %52) #12
  %282 = icmp eq i32 %281, 2
  br i1 %282, label %283, label %313

283:                                              ; preds = %280, %277
  %284 = getelementptr inbounds %struct.BMEdge, ptr %138, i64 0, i32 4
  %285 = load ptr, ptr %284, align 8, !tbaa !99
  %286 = call ptr @BM_edge_vert_share_loop(ptr noundef %285, ptr noundef nonnull %52) #12
  %287 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %138) #14, !range !83
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %283
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %138) #14
  br label %297

290:                                              ; preds = %283
  %291 = getelementptr inbounds %struct.BMLoop, ptr %286, i64 0, i32 2
  %292 = load ptr, ptr %291, align 8, !tbaa !100
  call fastcc void @_bm_elem_flag_enable(ptr noundef %292) #14
  %293 = getelementptr inbounds %struct.BMLoop, ptr %286, i64 0, i32 7
  %294 = load ptr, ptr %293, align 8, !tbaa !101
  %295 = getelementptr inbounds %struct.BMLoop, ptr %294, i64 0, i32 2
  %296 = load ptr, ptr %295, align 8, !tbaa !100
  call fastcc void @_bm_elem_flag_enable(ptr noundef %296) #14
  br label %297

297:                                              ; preds = %290, %289
  %298 = icmp eq i8 %30, 0
  br i1 %298, label %303, label %299

299:                                              ; preds = %297
  %300 = call fastcc ptr @edbm_tagged_loop_pairs_to_fill(ptr noundef nonnull %24) #14
  %301 = call ptr @BM_face_loop_separate(ptr noundef nonnull %24, ptr noundef %286) #12
  %302 = icmp eq ptr %301, null
  br i1 %302, label %306, label %310

303:                                              ; preds = %297
  %304 = call ptr @BM_face_loop_separate(ptr noundef nonnull %24, ptr noundef %286) #12
  %305 = icmp eq ptr %304, null
  br i1 %305, label %389, label %310

306:                                              ; preds = %299
  %307 = icmp eq ptr %300, null
  br i1 %307, label %389, label %308

308:                                              ; preds = %306
  %309 = load ptr, ptr @MEM_freeN, align 8, !tbaa !89
  call void %309(ptr noundef nonnull %300) #12
  br label %389

310:                                              ; preds = %299, %303
  %311 = phi ptr [ %304, %303 ], [ %301, %299 ]
  %312 = phi ptr [ null, %303 ], [ %300, %299 ]
  call void @BM_vert_select_set(ptr noundef nonnull %24, ptr noundef nonnull %311, i8 noundef zeroext 1) #12
  br label %335

313:                                              ; preds = %280
  %314 = call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef nonnull %138) #14, !range !83
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %328, label %316

316:                                              ; preds = %313
  %317 = getelementptr inbounds %struct.BMEdge, ptr %138, i64 0, i32 4
  %318 = load ptr, ptr %317, align 8, !tbaa !99
  %319 = call ptr @BM_loop_other_edge_loop(ptr noundef %318, ptr noundef nonnull %52) #12
  %320 = getelementptr inbounds %struct.BMLoop, ptr %319, i64 0, i32 2
  %321 = load ptr, ptr %320, align 8, !tbaa !100
  call fastcc void @_bm_elem_flag_enable(ptr noundef %321) #14
  %322 = load ptr, ptr %317, align 8, !tbaa !99
  %323 = getelementptr inbounds %struct.BMLoop, ptr %322, i64 0, i32 4
  %324 = load ptr, ptr %323, align 8, !tbaa !102
  %325 = call ptr @BM_loop_other_edge_loop(ptr noundef %324, ptr noundef nonnull %52) #12
  %326 = getelementptr inbounds %struct.BMLoop, ptr %325, i64 0, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !100
  call fastcc void @_bm_elem_flag_enable(ptr noundef %327) #14
  br label %328

328:                                              ; preds = %313, %316
  %329 = icmp eq i8 %30, 0
  br i1 %329, label %332, label %330

330:                                              ; preds = %328
  %331 = call fastcc ptr @edbm_tagged_loop_pairs_to_fill(ptr noundef nonnull %24) #14
  br label %332

332:                                              ; preds = %330, %328
  %333 = phi ptr [ %331, %330 ], [ null, %328 ]
  %334 = load ptr, ptr %23, align 8, !tbaa !49
  call void @BM_mesh_edgesplit(ptr noundef %334, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  br label %335

335:                                              ; preds = %310, %332
  %336 = phi ptr [ %312, %310 ], [ %333, %332 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #13
  %337 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %24, i8 noundef zeroext 1, ptr noundef null) #14
  %338 = icmp eq ptr %337, null
  br i1 %338, label %376, label %339

339:                                              ; preds = %335, %364
  %340 = phi ptr [ %366, %364 ], [ null, %335 ]
  %341 = phi float [ %365, %364 ], [ 0x47EFFFFFE0000000, %335 ]
  %342 = phi ptr [ %367, %364 ], [ %337, %335 ]
  %343 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %342, i8 noundef zeroext 1) #14, !range !60
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %364, label %345

345:                                              ; preds = %339
  call void @BM_vert_select_set(ptr noundef nonnull %24, ptr noundef nonnull %342, i8 noundef zeroext 0) #12
  %346 = call zeroext i8 @_bm_select_history_remove(ptr noundef nonnull %24, ptr noundef nonnull %342) #12
  %347 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 6, ptr noundef nonnull %342) #14
  %348 = icmp eq ptr %347, null
  br i1 %348, label %364, label %349

349:                                              ; preds = %345, %349
  %350 = phi ptr [ %361, %349 ], [ %340, %345 ]
  %351 = phi ptr [ %362, %349 ], [ %347, %345 ]
  %352 = phi float [ %360, %349 ], [ %341, %345 ]
  call fastcc void @edbm_calc_loop_co(ptr noundef nonnull %351, ptr noundef nonnull %16) #14
  %353 = getelementptr inbounds %struct.BMLoop, ptr %351, i64 0, i32 1
  %354 = load ptr, ptr %353, align 8, !tbaa !90
  %355 = getelementptr inbounds %struct.BMVert, ptr %354, i64 0, i32 2
  %356 = call fastcc float @edbm_rip_edgedist_squared(ptr noundef %21, ptr noundef nonnull %6, ptr noundef nonnull %355, ptr noundef nonnull %16, ptr noundef nonnull %7) #14
  %357 = icmp eq ptr %350, null
  %358 = fcmp olt float %356, %352
  %359 = select i1 %357, i1 true, i1 %358
  %360 = select i1 %359, float %356, float %352
  %361 = select i1 %359, ptr %342, ptr %350
  %362 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %363 = icmp eq ptr %362, null
  br i1 %363, label %364, label %349, !llvm.loop !103

364:                                              ; preds = %349, %345, %339
  %365 = phi float [ %341, %339 ], [ %341, %345 ], [ %360, %349 ]
  %366 = phi ptr [ %340, %339 ], [ %340, %345 ], [ %361, %349 ]
  %367 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %368 = icmp eq ptr %367, null
  br i1 %368, label %369, label %339, !llvm.loop !104

369:                                              ; preds = %364
  %370 = icmp eq ptr %366, null
  br i1 %370, label %376, label %371

371:                                              ; preds = %369
  call void @BM_vert_select_set(ptr noundef nonnull %24, ptr noundef nonnull %366, i8 noundef zeroext 1) #12
  %372 = getelementptr inbounds %struct.BMEditSelection, ptr %8, i64 0, i32 2
  %373 = load ptr, ptr %372, align 8, !tbaa !78
  %374 = icmp eq ptr %373, null
  br i1 %374, label %376, label %375

375:                                              ; preds = %371
  call void @_bm_select_history_store(ptr noundef nonnull %24, ptr noundef nonnull %366) #12
  br label %376

376:                                              ; preds = %335, %371, %375, %369
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #13
  %377 = and i32 %19, 255
  %378 = icmp ne i32 %377, 0
  %379 = icmp ne ptr %336, null
  %380 = select i1 %378, i1 %379, i1 false
  br i1 %380, label %381, label %383

381:                                              ; preds = %376
  call fastcc void @edbm_tagged_loop_pairs_do_fill_faces(ptr noundef nonnull %24, ptr noundef nonnull %336) #14
  %382 = load ptr, ptr @MEM_freeN, align 8, !tbaa !89
  call void %382(ptr noundef nonnull %336) #12
  br label %383

383:                                              ; preds = %381, %376
  %384 = load i32, ptr %24, align 8, !tbaa !74
  %385 = icmp eq i32 %25, %384
  br i1 %385, label %386, label %389

386:                                              ; preds = %383
  %387 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %388 = load ptr, ptr %387, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %388, i32 noundef 32, ptr noundef nonnull @.str.10) #12
  br label %389

389:                                              ; preds = %45, %38, %303, %308, %306, %383, %48, %386, %274, %270
  %390 = phi i32 [ %271, %270 ], [ 2, %386 ], [ 2, %274 ], [ 2, %48 ], [ 4, %383 ], [ 2, %306 ], [ 2, %308 ], [ 2, %303 ], [ 2, %38 ], [ 2, %45 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i32 %390
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @edbm_rip_invoke__edge(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !105 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x float], align 8
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.3) #12
  %11 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %13 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #12
  %14 = tail call ptr @BKE_editmesh_from_object(ptr noundef %11) #12
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  %16 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %19 = load <2 x i32>, ptr %18, align 4, !tbaa !75
  %20 = sitofp <2 x i32> %19 to <2 x float>
  store <2 x float> %20, ptr %7, align 8, !tbaa !76
  %21 = getelementptr inbounds i8, ptr %7, i64 8
  store float 0.000000e+00, ptr %21, align 8, !tbaa !76
  call void @ED_view3d_ob_project_mat_get(ptr noundef %13, ptr noundef %11, ptr noundef nonnull %6) #12
  %22 = call fastcc ptr @edbm_ripsel_looptag_helper(ptr noundef %15) #14
  %23 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %15, i8 noundef zeroext 1, ptr noundef null) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %100, label %25

25:                                               ; preds = %3, %97
  %26 = phi ptr [ %98, %97 ], [ %23, %3 ]
  %27 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %26) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %97, label %29

29:                                               ; preds = %25, %54
  %30 = phi i32 [ %50, %54 ], [ 0, %25 ]
  %31 = phi i32 [ %49, %54 ], [ 0, %25 ]
  %32 = phi i8 [ %55, %54 ], [ 1, %25 ]
  %33 = phi ptr [ %56, %54 ], [ %27, %25 ]
  %34 = phi ptr [ %48, %54 ], [ null, %25 ]
  %35 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef nonnull %33) #14, !range !83
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %29
  %38 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %33, i8 noundef zeroext 2) #14, !range !60
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %33, i8 noundef zeroext 1) #14, !range !60
  %42 = icmp ne i8 %41, 0
  %43 = select i1 %42, ptr %33, ptr %34
  %44 = zext i1 %42 to i32
  %45 = add nsw i32 %30, %44
  %46 = add nsw i32 %31, 1
  br label %47

47:                                               ; preds = %40, %37, %29
  %48 = phi ptr [ %34, %29 ], [ %34, %37 ], [ %43, %40 ]
  %49 = phi i32 [ %31, %29 ], [ %31, %37 ], [ %46, %40 ]
  %50 = phi i32 [ %30, %29 ], [ %30, %37 ], [ %45, %40 ]
  %51 = icmp eq i8 %32, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef nonnull %33) #14, !range !83
  br label %54

54:                                               ; preds = %52, %47
  %55 = phi i8 [ %32, %47 ], [ %53, %52 ]
  %56 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %29, !llvm.loop !107

58:                                               ; preds = %54
  %59 = icmp eq i32 %50, 1
  br i1 %59, label %60, label %97

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.BMEdge, ptr %48, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !99
  %63 = icmp eq ptr %62, null
  br i1 %63, label %97, label %64

64:                                               ; preds = %60
  %65 = add i32 %49, -3
  %66 = icmp ult i32 %65, 2
  %67 = icmp eq i8 %55, 0
  %68 = select i1 %66, i1 true, i1 %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !102
  %72 = call fastcc float @edbm_rip_edge_side_measure(ptr noundef nonnull %48, ptr noundef nonnull %62, ptr noundef %12, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %73 = call fastcc float @edbm_rip_edge_side_measure(ptr noundef nonnull %48, ptr noundef %71, ptr noundef %12, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %74 = fcmp olt float %72, %73
  %75 = select i1 %74, ptr %62, ptr %71
  %76 = call ptr @BM_loop_other_edge_loop(ptr noundef %75, ptr noundef nonnull %26) #12
  %77 = getelementptr inbounds %struct.BMLoop, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !100
  %79 = call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %78) #14, !range !83
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %69
  %82 = getelementptr inbounds %struct.BMLoop, ptr %76, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !102
  %84 = icmp eq i32 %49, 3
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = call ptr @BM_loop_other_edge_loop(ptr noundef %83, ptr noundef nonnull %26) #12
  br label %87

87:                                               ; preds = %85, %81
  %88 = phi ptr [ %86, %85 ], [ %83, %81 ]
  %89 = icmp eq ptr %88, null
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.BMLoop, ptr %88, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !100
  call fastcc void @_bm_elem_flag_enable(ptr noundef %92) #14
  br label %97

93:                                               ; preds = %64
  %94 = call ptr @BM_vert_other_disk_edge(ptr noundef nonnull %26, ptr noundef nonnull %48) #12
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %94) #14
  br label %97

97:                                               ; preds = %25, %69, %90, %87, %96, %93, %60, %58
  %98 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %25, !llvm.loop !108

100:                                              ; preds = %97, %3
  %101 = and i32 %10, 255
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = call fastcc ptr @edbm_tagged_loop_pairs_to_fill(ptr noundef %15) #14
  br label %105

105:                                              ; preds = %103, %100
  %106 = phi ptr [ %104, %103 ], [ null, %100 ]
  %107 = load ptr, ptr %14, align 8, !tbaa !49
  call void @BM_mesh_edgesplit(ptr noundef %107, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  call fastcc void @edbm_ripsel_deselect_helper(ptr noundef %15, ptr noundef %22, ptr noundef %12, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %108 = load ptr, ptr @MEM_freeN, align 8, !tbaa !89
  call void %108(ptr noundef %22) #12
  call void @BM_mesh_select_mode_clean_ex(ptr noundef %15, i16 noundef signext 2) #12
  %109 = icmp ne i32 %101, 0
  %110 = icmp ne ptr %106, null
  %111 = select i1 %109, i1 %110, i1 false
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  call fastcc void @edbm_tagged_loop_pairs_do_fill_faces(ptr noundef %15, ptr noundef nonnull %106) #14
  %113 = load ptr, ptr @MEM_freeN, align 8, !tbaa !89
  call void %113(ptr noundef nonnull %106) #12
  br label %114

114:                                              ; preds = %112, %105
  %115 = load i32, ptr %16, align 4, !tbaa !106
  %116 = icmp eq i32 %17, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %119 = load ptr, ptr %118, align 8, !tbaa !58
  call void @BKE_report(ptr noundef %119, i32 noundef 32, ptr noundef nonnull @.str.11) #12
  br label %121

120:                                              ; preds = %114
  call void @BM_select_history_validate(ptr noundef nonnull %15) #12
  br label %121

121:                                              ; preds = %120, %117
  %122 = phi i32 [ 2, %117 ], [ 4, %120 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i32 %122
}

; Function Attrs: optsize
declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !109 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !110
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %25 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
    i8 7, label %20
    i8 8, label %21
    i8 9, label %22
    i8 10, label %23
    i8 11, label %24
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !111
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !112
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !111
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !70
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !113
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !111
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !70
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !111
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !70
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !111
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !70
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !111
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !70
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !111
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !70
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !111
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !70
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !111
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !70
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !111
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !70
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !111
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !70
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !115
  tail call void %28(ptr noundef nonnull %0) #12
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

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !116 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !67
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !117 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !67
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !67
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_view3d_ob_project_mat_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BM_select_history_active_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BM_vert_is_wire(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !118 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !119 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_manifold(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !120 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  %12 = icmp eq ptr %11, %3
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %13, %9 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @edbm_rip_edgedist_squared(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !121 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @ED_view3d_project_float_v2_m4(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %1) #12
  call void @ED_view3d_project_float_v2_m4(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %7, ptr noundef %1) #12
  %8 = call fastcc float @len_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %9 = fcmp ogt float %8, 0x3E80000000000000
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = fdiv float 0x3EE4F8B580000000, %8
  call void @interp_v2_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %7, float noundef %11) #12
  call void @interp_v2_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %6, float noundef %11) #12
  br label %12

12:                                               ; preds = %5, %10
  %13 = call float @dist_squared_to_line_segment_v2(ptr noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret float %13
}

; Function Attrs: optsize
declare i32 @BM_vert_face_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BM_vert_edge_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BM_iter_as_array(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_calc_loop_co(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !122 {
  tail call void @BM_loop_calc_face_tangent(ptr noundef %0, ptr noundef %1) #12
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = tail call float @BM_edge_calc_length(ptr noundef %4) #12
  %6 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !101
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = tail call float @BM_edge_calc_length(ptr noundef %9) #12
  %11 = fadd float %5, %10
  %12 = fmul float %11, 5.000000e-01
  tail call fastcc void @mul_v3_fl(ptr noundef %1, float noundef %12) #14
  %13 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !90
  %15 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  tail call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %15) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_in_loop(ptr noundef readnone %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !123 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !100
  %11 = icmp eq ptr %10, %0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i8 [ 1, %2 ], [ %12, %6 ]
  ret i8 %14
}

; Function Attrs: optsize
declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bmesh_vert_separate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @_bm_select_history_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_bm_select_history_store(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BM_vert_splice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BM_edge_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @edbm_tagged_loop_pairs_to_fill(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !124 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  %5 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %59, label %7

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %14, %7 ], [ %5, %1 ]
  %9 = phi i32 [ %13, %7 ], [ 0, %1 ]
  %10 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %8, i8 noundef zeroext 16) #14, !range !60
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i32
  %13 = add i32 %9, %12
  %14 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !125

16:                                               ; preds = %7
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %59, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !89
  %20 = zext i32 %13 to i64
  %21 = mul nuw nsw i64 %20, 24
  %22 = call ptr %19(i64 noundef %21, ptr noundef nonnull @__func__.edbm_tagged_loop_pairs_to_fill) #12
  %23 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %59, label %25

25:                                               ; preds = %18, %55
  %26 = phi ptr [ %56, %55 ], [ %22, %18 ]
  %27 = phi ptr [ %57, %55 ], [ %23, %18 ]
  %28 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %27, i8 noundef zeroext 16) #14, !range !60
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %55, label %30

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %31 = call zeroext i8 @BM_edge_loop_pair(ptr noundef nonnull %27, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %32 = icmp eq i8 %31, 0
  %33 = load ptr, ptr %3, align 8, !tbaa !89
  br i1 %32, label %49, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !100
  %37 = getelementptr inbounds %struct.BMEdge, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !84
  %39 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !90
  %41 = icmp ne ptr %40, %38
  %42 = zext i1 %41 to i8
  %43 = load ptr, ptr %4, align 8, !tbaa !89
  %44 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !90
  %46 = icmp eq ptr %45, %38
  %47 = select i1 %46, i8 2, i8 0
  %48 = or disjoint i8 %47, %42
  br label %49

49:                                               ; preds = %30, %34
  %50 = phi i8 [ %48, %34 ], [ 0, %30 ]
  %51 = getelementptr inbounds %struct.UnorderedLoopPair, ptr %26, i64 0, i32 1
  store i8 %50, ptr %51, align 8
  store ptr %33, ptr %26, align 8, !tbaa !89
  %52 = load ptr, ptr %4, align 8, !tbaa !89
  %53 = getelementptr inbounds [2 x ptr], ptr %26, i64 0, i64 1
  store ptr %52, ptr %53, align 8, !tbaa !89
  %54 = getelementptr inbounds %struct.UnorderedLoopPair, ptr %26, i64 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %55

55:                                               ; preds = %25, %49
  %56 = phi ptr [ %54, %49 ], [ %26, %25 ]
  %57 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %25, !llvm.loop !126

59:                                               ; preds = %55, %1, %18, %16
  %60 = phi ptr [ null, %16 ], [ %22, %18 ], [ null, %1 ], [ %22, %55 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret ptr %60
}

; Function Attrs: optsize
declare ptr @BM_face_loop_separate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BM_loop_other_edge_loop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_mesh_edgesplit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_tagged_loop_pairs_do_fill_faces(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !127 {
  %3 = alloca [4 x ptr], align 16
  %4 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !89
  %5 = tail call i64 %4(ptr noundef %1) #12
  %6 = udiv i64 %5, 24
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %114, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 1
  %11 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 2
  %12 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 3
  br label %13

13:                                               ; preds = %9, %110
  %14 = phi ptr [ %1, %9 ], [ %112, %110 ]
  %15 = phi i32 [ 0, %9 ], [ %111, %110 ]
  %16 = load ptr, ptr %14, align 8, !tbaa !89
  %17 = icmp eq ptr %16, null
  br i1 %17, label %110, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds [2 x ptr], ptr %14, i64 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !89
  %21 = icmp eq ptr %20, null
  br i1 %21, label %110, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !100
  %25 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !100
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %110, label %28

28:                                               ; preds = %22
  %29 = call ptr @BM_edge_share_vert(ptr noundef %24, ptr noundef %26) #12
  %30 = load ptr, ptr %14, align 8, !tbaa !89
  %31 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %33 = icmp eq ptr %29, null
  br i1 %33, label %34, label %58

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !100
  %37 = getelementptr inbounds %struct.BMEdge, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !84
  store ptr %38, ptr %3, align 16, !tbaa !89
  %39 = load ptr, ptr %19, align 8, !tbaa !89
  %40 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !100
  %42 = getelementptr inbounds %struct.BMEdge, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !84
  store ptr %43, ptr %10, align 8, !tbaa !89
  %44 = getelementptr inbounds %struct.BMEdge, ptr %41, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !87
  store ptr %45, ptr %11, align 16, !tbaa !89
  %46 = getelementptr inbounds %struct.BMEdge, ptr %36, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !87
  store ptr %47, ptr %12, align 8, !tbaa !89
  %48 = getelementptr inbounds %struct.UnorderedLoopPair, ptr %14, i64 0, i32 1
  %49 = load i8, ptr %48, align 8, !tbaa !128
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %34
  store ptr %47, ptr %3, align 16, !tbaa !89
  store ptr %38, ptr %12, align 8, !tbaa !89
  br label %53

53:                                               ; preds = %52, %34
  %54 = phi ptr [ %38, %52 ], [ %47, %34 ]
  %55 = and i8 %49, 2
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %53
  store ptr %45, ptr %10, align 8, !tbaa !89
  store ptr %43, ptr %11, align 16, !tbaa !89
  br label %70

58:                                               ; preds = %28
  store ptr %29, ptr %3, align 16, !tbaa !89
  %59 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !100
  %61 = call fastcc ptr @BM_edge_other_vert(ptr noundef %60, ptr noundef nonnull %29) #14
  store ptr %61, ptr %10, align 8, !tbaa !89
  %62 = load ptr, ptr %19, align 8, !tbaa !89
  %63 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !100
  %65 = call fastcc ptr @BM_edge_other_vert(ptr noundef %64, ptr noundef nonnull %29) #14
  store ptr %65, ptr %11, align 16, !tbaa !89
  store ptr null, ptr %12, align 8, !tbaa !89
  %66 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !90
  %68 = icmp eq ptr %29, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  store ptr %61, ptr %3, align 16, !tbaa !89
  store ptr %29, ptr %10, align 8, !tbaa !89
  br label %70

70:                                               ; preds = %58, %69, %53, %57
  %71 = phi ptr [ null, %58 ], [ null, %69 ], [ %54, %53 ], [ %54, %57 ]
  %72 = icmp eq ptr %71, null
  %73 = select i1 %72, i32 3, i32 4
  %74 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %73, ptr noundef %32, i32 noundef 0, i8 noundef zeroext 1) #12
  %75 = getelementptr inbounds %struct.BMFace, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !130
  %77 = load ptr, ptr %12, align 8, !tbaa !89
  %78 = icmp eq ptr %77, null
  %79 = load ptr, ptr %14, align 8, !tbaa !89
  %80 = getelementptr inbounds %struct.BMLoop, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !100
  %82 = call ptr @BM_edge_other_loop(ptr noundef %81, ptr noundef %76) #12
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %82, ptr noundef %76) #12
  %83 = getelementptr inbounds %struct.BMLoop, ptr %76, i64 0, i32 6
  %84 = load ptr, ptr %83, align 8, !tbaa !132
  %85 = getelementptr inbounds %struct.BMLoop, ptr %84, i64 0, i32 6
  br i1 %78, label %97, label %86

86:                                               ; preds = %70
  %87 = load ptr, ptr %19, align 8, !tbaa !89
  %88 = getelementptr inbounds %struct.BMLoop, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !100
  %90 = call ptr @BM_edge_other_loop(ptr noundef %89, ptr noundef %84) #12
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %90, ptr noundef %84) #12
  %91 = load ptr, ptr %85, align 8, !tbaa !132
  %92 = load ptr, ptr %19, align 8, !tbaa !89
  %93 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !100
  %95 = call ptr @BM_edge_other_loop(ptr noundef %94, ptr noundef %91) #12
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %95, ptr noundef %91) #12
  %96 = getelementptr inbounds %struct.BMLoop, ptr %91, i64 0, i32 6
  br label %102

97:                                               ; preds = %70
  %98 = load ptr, ptr %14, align 8, !tbaa !89
  %99 = getelementptr inbounds %struct.BMLoop, ptr %98, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !100
  %101 = call ptr @BM_edge_other_loop(ptr noundef %100, ptr noundef %84) #12
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %101, ptr noundef %84) #12
  br label %102

102:                                              ; preds = %97, %86
  %103 = phi ptr [ %85, %97 ], [ %96, %86 ]
  %104 = phi ptr [ %19, %97 ], [ %14, %86 ]
  %105 = load ptr, ptr %103, align 8, !tbaa !132
  %106 = load ptr, ptr %104, align 8, !tbaa !89
  %107 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !100
  %109 = call ptr @BM_edge_other_loop(ptr noundef %108, ptr noundef %105) #12
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %109, ptr noundef %105) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %110

110:                                              ; preds = %13, %18, %22, %102
  %111 = add nuw i32 %15, 1
  %112 = getelementptr inbounds %struct.UnorderedLoopPair, ptr %14, i64 1
  %113 = icmp eq i32 %111, %7
  br i1 %113, label %114, label %13, !llvm.loop !133

114:                                              ; preds = %110, %2
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_project_float_v2_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !134 {
  %3 = load float, ptr %0, align 4, !tbaa !76
  %4 = load float, ptr %1, align 4, !tbaa !76
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !76
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !76
  %10 = fsub float %7, %9
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %11)
  %13 = tail call float @llvm.sqrt.f32(float %12)
  ret float %13
}

; Function Attrs: optsize
declare void @interp_v2_v2v2(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare void @BM_loop_calc_face_tangent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !135 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !76
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !76
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !76
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !76
  ret void
}

; Function Attrs: optsize
declare float @BM_edge_calc_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !136 {
  %3 = load float, ptr %1, align 4, !tbaa !76
  %4 = load float, ptr %0, align 4, !tbaa !76
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !76
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !76
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !76
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !76
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !76
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !76
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !76
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_edge_loop_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BM_edge_share_vert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !137 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BM_edge_other_loop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @edbm_ripsel_looptag_helper(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !138 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr null, ptr %4, align 8, !tbaa !89
  %8 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %1, %18
  %11 = phi ptr [ %19, %18 ], [ %8, %1 ]
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %11) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %16, %14 ], [ %12, %10 ]
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %15, i32 noundef -2147483648) #14
  %16 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %14, !llvm.loop !139

18:                                               ; preds = %14, %10
  %19 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !140

21:                                               ; preds = %18, %1
  %22 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %23 = load i8, ptr %22, align 4, !tbaa !141
  %24 = or i8 %23, 4
  store i8 %24, ptr %22, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  %25 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef null) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %102, label %27

27:                                               ; preds = %21, %93
  %28 = phi ptr [ %100, %93 ], [ %25, %21 ]
  %29 = phi i32 [ %94, %93 ], [ 0, %21 ]
  %30 = phi i32 [ %79, %93 ], [ %7, %21 ]
  br label %31

31:                                               ; preds = %27, %45
  %32 = phi ptr [ %28, %27 ], [ %46, %45 ]
  %33 = call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef nonnull %32) #14, !range !83
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %32, i8 noundef zeroext 16) #14, !range !60
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !99
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %40) #14
  %44 = icmp eq i32 %43, -2147483648
  br i1 %44, label %48, label %45

45:                                               ; preds = %31, %35, %42
  %46 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %47 = icmp eq ptr %46, null
  br i1 %47, label %102, label %31, !llvm.loop !142

48:                                               ; preds = %42, %38
  %49 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !84
  %51 = call fastcc ptr @edbm_ripsel_edge_mark_step(ptr noundef %50, i32 noundef %30) #14
  %52 = icmp eq ptr %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %48, %53
  %54 = phi ptr [ %59, %53 ], [ %51, %48 ]
  %55 = phi ptr [ %57, %53 ], [ %50, %48 ]
  %56 = phi i32 [ %58, %53 ], [ %30, %48 ]
  %57 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %54, ptr noundef %55) #14
  %58 = add nsw i32 %56, 1
  %59 = call fastcc ptr @edbm_ripsel_edge_mark_step(ptr noundef %57, i32 noundef %58) #14
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %53, !llvm.loop !143

61:                                               ; preds = %53, %48
  %62 = phi i32 [ %30, %48 ], [ %58, %53 ]
  %63 = phi ptr [ null, %48 ], [ %54, %53 ]
  %64 = add nsw i32 %62, -1
  %65 = load ptr, ptr %49, align 8, !tbaa !84
  %66 = add nsw i32 %30, -1
  %67 = call fastcc ptr @edbm_ripsel_edge_mark_step(ptr noundef %65, i32 noundef %66) #14
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %61, %69
  %70 = phi ptr [ %75, %69 ], [ %67, %61 ]
  %71 = phi i32 [ %74, %69 ], [ %66, %61 ]
  %72 = phi ptr [ %73, %69 ], [ %65, %61 ]
  %73 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %70, ptr noundef %72) #14
  %74 = add nsw i32 %71, -1
  %75 = call fastcc ptr @edbm_ripsel_edge_mark_step(ptr noundef %73, i32 noundef %74) #14
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %69, !llvm.loop !144

77:                                               ; preds = %69, %61
  %78 = load i32, ptr %6, align 4, !tbaa !106
  %79 = add nsw i32 %64, %78
  %80 = load ptr, ptr %4, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = add nsw i32 %29, 1
  br label %91

84:                                               ; preds = %77
  %85 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !89
  %86 = call i64 %85(ptr noundef nonnull %80) #12
  %87 = lshr i64 %86, 4
  %88 = add nsw i32 %29, 1
  %89 = sext i32 %88 to i64
  %90 = icmp ult i64 %87, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %82, %84
  %92 = phi i32 [ %83, %82 ], [ %88, %84 ]
  call void @_bli_array_grow_func(ptr noundef nonnull %4, ptr noundef null, i32 noundef 16, i32 noundef %29, i32 noundef 1, ptr noundef nonnull @.str.12) #12
  br label %93

93:                                               ; preds = %84, %91
  %94 = phi i32 [ %88, %84 ], [ %92, %91 ]
  %95 = load ptr, ptr %4, align 8, !tbaa !89
  %96 = sext i32 %29 to i64
  %97 = getelementptr inbounds %struct.EdgeLoopPair, ptr %95, i64 %96
  %98 = getelementptr inbounds %struct.EdgeLoopPair, ptr %95, i64 %96, i32 1
  %99 = call zeroext i8 @BM_edge_loop_pair(ptr noundef %63, ptr noundef %97, ptr noundef nonnull %98) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  %100 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef null) #14
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %27

102:                                              ; preds = %93, %45, %21
  %103 = phi i32 [ 0, %21 ], [ %29, %45 ], [ %94, %93 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  %104 = load ptr, ptr %4, align 8
  %105 = icmp eq ptr %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !89
  %108 = call i64 %107(ptr noundef nonnull %104) #12
  %109 = lshr i64 %108, 4
  %110 = add nsw i32 %103, 1
  %111 = sext i32 %110 to i64
  %112 = icmp ult i64 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %102, %106
  call void @_bli_array_grow_func(ptr noundef nonnull %4, ptr noundef null, i32 noundef 16, i32 noundef %103, i32 noundef 1, ptr noundef nonnull @.str.12) #12
  br label %114

114:                                              ; preds = %113, %106
  %115 = load ptr, ptr %4, align 8, !tbaa !89
  %116 = sext i32 %103 to i64
  %117 = getelementptr inbounds %struct.EdgeLoopPair, ptr %115, i64 %116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %117, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret ptr %115
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @edbm_rip_edge_side_measure(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !145 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  %12 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !94
  %14 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !84
  %18 = tail call ptr @BM_face_other_vert_loop(ptr noundef %13, ptr noundef %15, ptr noundef %17) #12
  %19 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !90
  %21 = load ptr, ptr %12, align 8, !tbaa !94
  %22 = load ptr, ptr %16, align 8, !tbaa !84
  %23 = load ptr, ptr %14, align 8, !tbaa !87
  %24 = tail call ptr @BM_face_other_vert_loop(ptr noundef %21, ptr noundef %22, ptr noundef %23) #12
  %25 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !90
  %27 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2
  %28 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %27, ptr noundef nonnull %28) #12
  %29 = load ptr, ptr %16, align 8, !tbaa !84
  %30 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %14, align 8, !tbaa !87
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %30, ptr noundef nonnull %32) #12
  call void @ED_view3d_project_float_v2_m4(ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %3) #12
  call void @ED_view3d_project_float_v2_m4(ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %3) #12
  %33 = load ptr, ptr %16, align 8, !tbaa !84
  %34 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2
  call void @ED_view3d_project_float_v2_m4(ptr noundef %2, ptr noundef nonnull %34, ptr noundef nonnull %10, ptr noundef %3) #12
  %35 = load ptr, ptr %14, align 8, !tbaa !87
  %36 = getelementptr inbounds %struct.BMVert, ptr %35, i64 0, i32 2
  call void @ED_view3d_project_float_v2_m4(ptr noundef %2, ptr noundef nonnull %36, ptr noundef nonnull %11, ptr noundef %3) #12
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  call fastcc void @normalize_v2(ptr noundef nonnull %8) #14
  call fastcc void @mul_v2_fl(ptr noundef nonnull %8) #14
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %9, ptr noundef %4, ptr noundef nonnull %8) #14
  %37 = call fastcc float @len_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %11) #14
  %38 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #12
  %39 = call float @dist_squared_to_line_segment_v2(ptr noundef %4, ptr noundef nonnull %10, ptr noundef nonnull %11) #12
  %40 = fcmp ogt float %38, %39
  %41 = fneg float %37
  %42 = select i1 %40, float %37, float %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  ret float %42
}

; Function Attrs: optsize
declare ptr @BM_vert_other_disk_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_ripsel_deselect_helper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !146 {
  %6 = alloca ptr, align 8
  %7 = load ptr, ptr %1, align 8, !tbaa !147
  %8 = icmp eq ptr %7, null
  br i1 %8, label %59, label %9

9:                                                ; preds = %5, %55
  %10 = phi ptr [ %57, %55 ], [ %7, %5 ]
  %11 = phi ptr [ %56, %55 ], [ %1, %5 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %12 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = tail call fastcc ptr @edbm_ripsel_edloop_pair_start_vert(ptr noundef %13) #14
  store ptr %14, ptr %6, align 8, !tbaa !89
  %15 = icmp eq ptr %13, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %9, %16
  %17 = phi float [ %22, %16 ], [ 0.000000e+00, %9 ]
  %18 = phi ptr [ %23, %16 ], [ %13, %9 ]
  %19 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !99
  %21 = tail call fastcc float @edbm_rip_edge_side_measure(ptr noundef nonnull %18, ptr noundef %20, ptr noundef %2, ptr noundef %3, ptr noundef %4) #14
  %22 = fadd float %17, %21
  %23 = call fastcc ptr @edbm_ripsel_edge_uid_step(ptr noundef nonnull %18, ptr noundef nonnull %6) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %16, !llvm.loop !149

25:                                               ; preds = %16, %9
  %26 = phi float [ 0.000000e+00, %9 ], [ %22, %16 ]
  %27 = getelementptr inbounds %struct.EdgeLoopPair, ptr %11, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !150
  %29 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !100
  %31 = tail call fastcc ptr @edbm_ripsel_edloop_pair_start_vert(ptr noundef %30) #14
  store ptr %31, ptr %6, align 8, !tbaa !89
  %32 = icmp eq ptr %30, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %25, %33
  %34 = phi float [ %39, %33 ], [ 0.000000e+00, %25 ]
  %35 = phi ptr [ %40, %33 ], [ %30, %25 ]
  %36 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !99
  %38 = tail call fastcc float @edbm_rip_edge_side_measure(ptr noundef nonnull %35, ptr noundef %37, ptr noundef %2, ptr noundef %3, ptr noundef %4) #14
  %39 = fadd float %34, %38
  %40 = call fastcc ptr @edbm_ripsel_edge_uid_step(ptr noundef nonnull %35, ptr noundef nonnull %6) #14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %33, !llvm.loop !151

42:                                               ; preds = %33, %25
  %43 = phi float [ 0.000000e+00, %25 ], [ %39, %33 ]
  %44 = fcmp ogt float %26, %43
  %45 = select i1 %44, ptr %11, ptr %27
  %46 = load ptr, ptr %45, align 8, !tbaa !89
  %47 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !100
  %49 = tail call fastcc ptr @edbm_ripsel_edloop_pair_start_vert(ptr noundef %48) #14
  store ptr %49, ptr %6, align 8, !tbaa !89
  %50 = icmp eq ptr %48, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %42, %51
  %52 = phi ptr [ %53, %51 ], [ %48, %42 ]
  tail call void @BM_edge_select_set(ptr noundef %0, ptr noundef nonnull %52, i8 noundef zeroext 0) #12
  %53 = call fastcc ptr @edbm_ripsel_edge_uid_step(ptr noundef nonnull %52, ptr noundef nonnull %6) #14
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %51, !llvm.loop !152

55:                                               ; preds = %51, %42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  %56 = getelementptr inbounds %struct.EdgeLoopPair, ptr %11, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !147
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %9, !llvm.loop !153

59:                                               ; preds = %55, %5
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_select_mode_clean_ex(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_select_history_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !154 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !156 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !155
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @edbm_ripsel_edge_mark_step(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !157 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 4, ptr noundef %0) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %2, %26
  %9 = phi ptr [ %27, %26 ], [ %6, %2 ]
  %10 = call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef nonnull %9) #14, !range !83
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %9, i8 noundef zeroext 16) #14, !range !60
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %17) #14
  %21 = icmp eq i32 %20, -2147483648
  br i1 %21, label %22, label %26

22:                                               ; preds = %19, %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %23 = call zeroext i8 @BM_edge_loop_pair(ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %24 = load ptr, ptr %4, align 8, !tbaa !89
  call fastcc void @_bm_elem_index_set(ptr noundef %24, i32 noundef %1) #14
  %25 = load ptr, ptr %5, align 8, !tbaa !89
  call fastcc void @_bm_elem_index_set(ptr noundef %25, i32 noundef %1) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %29

26:                                               ; preds = %8, %12, %19
  %27 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %8, !llvm.loop !158

29:                                               ; preds = %26, %2, %22
  %30 = phi ptr [ %9, %22 ], [ null, %2 ], [ null, %26 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret ptr %30
}

; Function Attrs: optsize
declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare ptr @BM_face_other_vert_loop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !159 {
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
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !160 {
  tail call fastcc void @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !161 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !76
  %3 = fmul <2 x float> %2, <float 0x3F847AE140000000, float 0x3F847AE140000000>
  store <2 x float> %3, ptr %0, align 4, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !162 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #14
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #12
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #14
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #14
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !163 {
  %3 = load float, ptr %0, align 4, !tbaa !76
  %4 = load float, ptr %1, align 4, !tbaa !76
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !76
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !76
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !164 {
  %4 = load float, ptr %1, align 4, !tbaa !76
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !76
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !76
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !165 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !76
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @edbm_ripsel_edloop_pair_start_vert(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !166 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  store ptr %4, ptr %2, align 8, !tbaa !89
  %5 = call fastcc ptr @edbm_ripsel_edge_uid_step(ptr noundef %0, ptr noundef nonnull %2) #14
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %8 = select i1 %6, ptr %7, ptr %3
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @edbm_ripsel_edge_uid_step(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !167 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %4 = load ptr, ptr %1, align 8, !tbaa !89
  %5 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %0, ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  %8 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %7) #14
  %9 = add nsw i32 %8, -1
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 4, ptr noundef %5) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %2, %19
  %13 = phi ptr [ %20, %19 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = call fastcc i32 @_bm_elem_index_get(ptr noundef %15) #14
  %17 = icmp eq i32 %16, %9
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store ptr %5, ptr %1, align 8, !tbaa !89
  br label %22

19:                                               ; preds = %12
  %20 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12, !llvm.loop !168

22:                                               ; preds = %19, %2, %18
  %23 = phi ptr [ %13, %18 ], [ null, %2 ], [ null, %19 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret ptr %23
}

; Function Attrs: optsize
declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }
attributes #14 = { optsize }

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
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!35, !36, i64 88}
!48 = !{!"editmesh_rip.c:edbm_rip_invoke"}
!49 = !{!50, !36, i64 0}
!50 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !51, i64 16, !36, i64 24, !51, i64 32, !36, i64 40, !36, i64 48, !52, i64 56, !36, i64 64, !51, i64 72, !36, i64 80, !51, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !51, i64 104}
!51 = !{!"int", !37, i64 0}
!52 = !{!"long", !37, i64 0}
!53 = !{!54, !51, i64 16}
!54 = !{!"BMesh", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !51, i64 88, !51, i64 92, !51, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !51, i64 128, !36, i64 136, !55, i64 144, !55, i64 344, !55, i64 544, !55, i64 744, !41, i64 944, !51, i64 948, !51, i64 952, !51, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!55 = !{!"CustomData", !36, i64 0, !37, i64 8, !51, i64 172, !51, i64 176, !51, i64 180, !36, i64 184, !36, i64 192}
!56 = !{!54, !51, i64 20}
!57 = !{!54, !51, i64 24}
!58 = !{!59, !36, i64 120}
!59 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!60 = !{i8 0, i8 17}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{i32 2, i32 5}
!64 = !{!"editmesh_rip.c:BM_iter_new"}
!65 = !{!"editmesh_rip.c:_bm_elem_flag_set"}
!66 = !{!"editmesh_rip.c:_bm_elem_flag_test"}
!67 = !{!68, !37, i64 13}
!68 = !{!"BMHeader", !36, i64 0, !51, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!69 = !{!"editmesh_rip.c:BM_iter_step"}
!70 = !{!71, !36, i64 48}
!71 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !51, i64 56, !37, i64 60}
!72 = !{!"editmesh_rip.c:edbm_rip_invoke__vert"}
!73 = !{!59, !36, i64 112}
!74 = !{!54, !51, i64 0}
!75 = !{!51, !51, i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"float", !37, i64 0}
!78 = !{!79, !36, i64 16}
!79 = !{!"BMEditSelection", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!80 = distinct !{!80, !62}
!81 = !{!82, !36, i64 48}
!82 = !{!"BMVert", !68, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!83 = !{i8 0, i8 2}
!84 = !{!85, !36, i64 24}
!85 = !{!"BMEdge", !68, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !86, i64 48, !86, i64 64}
!86 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!87 = !{!85, !36, i64 32}
!88 = distinct !{!88, !62}
!89 = !{!36, !36, i64 0}
!90 = !{!91, !36, i64 16}
!91 = !{!"BMLoop", !68, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!92 = distinct !{!92, !62}
!93 = distinct !{!93, !62}
!94 = !{!91, !36, i64 32}
!95 = distinct !{!95, !62}
!96 = distinct !{!96, !62}
!97 = distinct !{!97, !62}
!98 = distinct !{!98, !62}
!99 = !{!85, !36, i64 40}
!100 = !{!91, !36, i64 24}
!101 = !{!91, !36, i64 64}
!102 = !{!91, !36, i64 40}
!103 = distinct !{!103, !62}
!104 = distinct !{!104, !62}
!105 = !{!"editmesh_rip.c:edbm_rip_invoke__edge"}
!106 = !{!54, !51, i64 4}
!107 = distinct !{!107, !62}
!108 = distinct !{!108, !62}
!109 = !{!"editmesh_rip.c:BM_iter_init"}
!110 = !{!71, !37, i64 60}
!111 = !{!71, !36, i64 40}
!112 = !{!54, !36, i64 32}
!113 = !{!54, !36, i64 40}
!114 = !{!54, !36, i64 56}
!115 = !{!37, !37, i64 0}
!116 = !{!"editmesh_rip.c:_bm_elem_flag_enable"}
!117 = !{!"editmesh_rip.c:_bm_elem_flag_disable"}
!118 = !{!"editmesh_rip.c:BM_edge_is_boundary"}
!119 = !{!"editmesh_rip.c:BM_edge_is_wire"}
!120 = !{!"editmesh_rip.c:BM_edge_is_manifold"}
!121 = !{!"editmesh_rip.c:edbm_rip_edgedist_squared"}
!122 = !{!"editmesh_rip.c:edbm_calc_loop_co"}
!123 = !{!"editmesh_rip.c:BM_edge_in_loop"}
!124 = !{!"editmesh_rip.c:edbm_tagged_loop_pairs_to_fill"}
!125 = distinct !{!125, !62}
!126 = distinct !{!126, !62}
!127 = !{!"editmesh_rip.c:edbm_tagged_loop_pairs_do_fill_faces"}
!128 = !{!129, !37, i64 16}
!129 = !{!"UnorderedLoopPair", !37, i64 0, !37, i64 16}
!130 = !{!131, !36, i64 24}
!131 = !{!"BMFace", !68, i64 0, !36, i64 16, !36, i64 24, !51, i64 32, !37, i64 36, !41, i64 48}
!132 = !{!91, !36, i64 56}
!133 = distinct !{!133, !62}
!134 = !{!"editmesh_rip.c:len_v2v2"}
!135 = !{!"editmesh_rip.c:mul_v3_fl"}
!136 = !{!"editmesh_rip.c:add_v3_v3"}
!137 = !{!"editmesh_rip.c:BM_edge_other_vert"}
!138 = !{!"editmesh_rip.c:edbm_ripsel_looptag_helper"}
!139 = distinct !{!139, !62}
!140 = distinct !{!140, !62}
!141 = !{!54, !37, i64 28}
!142 = distinct !{!142, !62}
!143 = distinct !{!143, !62}
!144 = distinct !{!144, !62}
!145 = !{!"editmesh_rip.c:edbm_rip_edge_side_measure"}
!146 = !{!"editmesh_rip.c:edbm_ripsel_deselect_helper"}
!147 = !{!148, !36, i64 0}
!148 = !{!"EdgeLoopPair", !36, i64 0, !36, i64 8}
!149 = distinct !{!149, !62}
!150 = !{!148, !36, i64 8}
!151 = distinct !{!151, !62}
!152 = distinct !{!152, !62}
!153 = distinct !{!153, !62}
!154 = !{!"editmesh_rip.c:_bm_elem_index_set"}
!155 = !{!68, !51, i64 8}
!156 = !{!"editmesh_rip.c:_bm_elem_index_get"}
!157 = !{!"editmesh_rip.c:edbm_ripsel_edge_mark_step"}
!158 = distinct !{!158, !62}
!159 = !{!"editmesh_rip.c:sub_v2_v2v2"}
!160 = !{!"editmesh_rip.c:normalize_v2"}
!161 = !{!"editmesh_rip.c:mul_v2_fl"}
!162 = !{!"editmesh_rip.c:normalize_v2_v2"}
!163 = !{!"editmesh_rip.c:dot_v2v2"}
!164 = !{!"editmesh_rip.c:mul_v2_v2fl"}
!165 = !{!"editmesh_rip.c:zero_v2"}
!166 = !{!"editmesh_rip.c:edbm_ripsel_edloop_pair_start_vert"}
!167 = !{!"editmesh_rip.c:edbm_ripsel_edge_uid_step"}
!168 = distinct !{!168, !62}
