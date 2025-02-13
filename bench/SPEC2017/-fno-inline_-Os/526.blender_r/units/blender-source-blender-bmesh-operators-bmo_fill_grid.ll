; ModuleID = 'blender/source/blender/bmesh/operators/bmo_fill_grid.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_fill_grid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }

@.str = private unnamed_addr constant [7 x i8] c"mat_nr\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"use_smooth\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"use_interp_simple\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Select two edge loops\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Edge loop vertex count mismatch\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Closed loops unsupported\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Loops are not connected by wire/boundary edges\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Connecting edges vertex mismatch\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Connecting edge loops overlap\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.bm_grid_fill = private unnamed_addr constant [13 x i8] c"bm_grid_fill\00", align 1
@__const.bm_grid_fill.lb_iter_dir = private unnamed_addr constant [4 x i32] [i32 -1, i32 1, i32 1, i32 -1], align 16
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.bm_grid_fill_array = private unnamed_addr constant [19 x i8] c"bm_grid_fill_array\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_grid_fill_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #13
  %6 = trunc i32 %5 to i16
  %7 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.1) #13
  %8 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.2) #13
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.3, i8 noundef zeroext 2, i16 noundef signext 4) #13
  %9 = call i32 @BM_mesh_edgeloops_find(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @bm_edge_test_cb, ptr noundef %0) #13
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %70

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.ListBase, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = call ptr @BM_edgeloop_verts_get(ptr noundef %12) #13
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.LinkData, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = call ptr @BM_edgeloop_verts_get(ptr noundef %12) #13
  %20 = getelementptr inbounds %struct.ListBase, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  %22 = getelementptr inbounds %struct.LinkData, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !40
  %24 = call ptr @BM_edgeloop_verts_get(ptr noundef %14) #13
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.LinkData, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = call ptr @BM_edgeloop_verts_get(ptr noundef %14) #13
  %29 = getelementptr inbounds %struct.ListBase, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !39
  %31 = getelementptr inbounds %struct.LinkData, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !40
  %33 = call i32 @BM_edgeloop_length_get(ptr noundef %12) #13
  %34 = call i32 @BM_edgeloop_length_get(ptr noundef %14) #13
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %11
  %37 = call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %12) #13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %36
  %40 = call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %14) #13
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %39
  %43 = call zeroext i8 @BM_mesh_edgeloops_find_path(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @bm_edge_test_rail_cb, ptr noundef %0, ptr noundef %18, ptr noundef %27) #13
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %70, label %45

45:                                               ; preds = %42
  %46 = call zeroext i8 @BM_mesh_edgeloops_find_path(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @bm_edge_test_rail_cb, ptr noundef %0, ptr noundef %18, ptr noundef %32) #13
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %70, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %4, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !39
  %52 = call i32 @BM_edgeloop_length_get(ptr noundef %49) #13
  %53 = call i32 @BM_edgeloop_length_get(ptr noundef %51) #13
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %51) #13
  call void @BM_edgeloop_free(ptr noundef %51) #13
  br label %57

56:                                               ; preds = %48
  call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %49) #13
  call void @BM_edgeloop_free(ptr noundef %49) #13
  call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %14) #13
  br label %57

57:                                               ; preds = %56, %55
  %58 = phi ptr [ %27, %56 ], [ %32, %55 ]
  %59 = phi ptr [ %51, %56 ], [ %49, %55 ]
  %60 = call zeroext i8 @BM_mesh_edgeloops_find_path(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @bm_edge_test_rail_cb, ptr noundef %0, ptr noundef %23, ptr noundef %58) #13
  %61 = load ptr, ptr %50, align 8, !tbaa !39
  %62 = call i32 @BM_edgeloop_length_get(ptr noundef %59) #13
  %63 = call i32 @BM_edgeloop_length_get(ptr noundef %61) #13
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = call zeroext i8 @BM_edgeloop_overlap_check(ptr noundef %59, ptr noundef %61) #13
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  call fastcc void @bm_grid_fill(ptr noundef %0, ptr noundef %12, ptr noundef %14, ptr noundef %59, ptr noundef %61, i16 noundef signext %6, i8 noundef zeroext %7, i8 noundef zeroext %8) #14
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %3) #13
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %4) #13
  %69 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %69, ptr noundef nonnull @.str.10, i8 noundef zeroext 8, i16 noundef signext 16) #13
  br label %72

70:                                               ; preds = %65, %57, %45, %42, %36, %39, %11, %2
  %71 = phi ptr [ @.str.4, %2 ], [ @.str.5, %11 ], [ @.str.6, %39 ], [ @.str.6, %36 ], [ @.str.7, %42 ], [ @.str.7, %45 ], [ @.str.8, %57 ], [ @.str.9, %65 ]
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull %71) #13
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %3) #13
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %4) #13
  br label %72

72:                                               ; preds = %70, %68
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BM_mesh_edgeloops_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @bm_edge_test_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !42 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = tail call fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr noundef %1, ptr noundef %4) #14
  ret i8 %5
}

; Function Attrs: optsize
declare void @BMO_error_raise(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BM_edgeloop_verts_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BM_edgeloop_length_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BM_edgeloop_is_closed(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BM_mesh_edgeloops_find_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @bm_edge_test_rail_cb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 !PGOFuncName !48 {
  %3 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0) #14
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef %0) #14, !range !49
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %0) #14, !range !49
  br label %10

10:                                               ; preds = %5, %8, %2
  %11 = phi i8 [ 0, %2 ], [ 1, %5 ], [ %9, %8 ]
  ret i8 %11
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_edgeloop_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_edgeloop_flip(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @BM_edgeloop_overlap_check(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_grid_fill(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i16 noundef signext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 !PGOFuncName !50 {
  %9 = alloca [4 x ptr], align 16
  %10 = tail call i32 @BM_edgeloop_length_get(ptr noundef %1) #13
  %11 = tail call i32 @BM_edgeloop_length_get(ptr noundef %3) #13
  %12 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %1) #13
  %13 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %2) #13
  %14 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %3) #13
  %15 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %4) #13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %17 = mul i32 %11, %10
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 3
  %20 = tail call ptr %16(i64 noundef %19, ptr noundef nonnull @__func__.bm_grid_fill) #13
  %21 = load ptr, ptr %12, align 8, !tbaa !51
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %28, %8
  %24 = load ptr, ptr %13, align 8, !tbaa !51
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %23
  %27 = sub i32 %17, %10
  br label %41

28:                                               ; preds = %8, %28
  %29 = phi ptr [ %36, %28 ], [ %21, %8 ]
  %30 = phi i32 [ %35, %28 ], [ 0, %8 ]
  %31 = getelementptr inbounds %struct.LinkData, ptr %29, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !40
  %33 = zext i32 %30 to i64
  %34 = getelementptr inbounds ptr, ptr %20, i64 %33
  store ptr %32, ptr %34, align 8, !tbaa !51
  %35 = add i32 %30, 1
  %36 = load ptr, ptr %29, align 8, !tbaa !51
  %37 = icmp eq ptr %36, null
  br i1 %37, label %23, label %28, !llvm.loop !52

38:                                               ; preds = %41, %23
  %39 = load ptr, ptr %14, align 8, !tbaa !51
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %57

41:                                               ; preds = %26, %41
  %42 = phi ptr [ %24, %26 ], [ %50, %41 ]
  %43 = phi i32 [ 0, %26 ], [ %49, %41 ]
  %44 = getelementptr inbounds %struct.LinkData, ptr %42, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !40
  %46 = add i32 %27, %43
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %20, i64 %47
  store ptr %45, ptr %48, align 8, !tbaa !51
  %49 = add i32 %43, 1
  %50 = load ptr, ptr %42, align 8, !tbaa !51
  %51 = icmp eq ptr %50, null
  br i1 %51, label %38, label %41, !llvm.loop !54

52:                                               ; preds = %57, %38
  %53 = load ptr, ptr %15, align 8, !tbaa !51
  %54 = icmp eq ptr %53, null
  br i1 %54, label %80, label %55

55:                                               ; preds = %52
  %56 = add i32 %10, -1
  br label %68

57:                                               ; preds = %38, %57
  %58 = phi ptr [ %66, %57 ], [ %39, %38 ]
  %59 = phi i32 [ %65, %57 ], [ 0, %38 ]
  %60 = getelementptr inbounds %struct.LinkData, ptr %58, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !40
  %62 = mul i32 %59, %10
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %20, i64 %63
  store ptr %61, ptr %64, align 8, !tbaa !51
  %65 = add i32 %59, 1
  %66 = load ptr, ptr %58, align 8, !tbaa !51
  %67 = icmp eq ptr %66, null
  br i1 %67, label %52, label %57, !llvm.loop !55

68:                                               ; preds = %55, %68
  %69 = phi ptr [ %53, %55 ], [ %78, %68 ]
  %70 = phi i32 [ 0, %55 ], [ %77, %68 ]
  %71 = getelementptr inbounds %struct.LinkData, ptr %69, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !40
  %73 = mul i32 %70, %10
  %74 = add i32 %56, %73
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %20, i64 %75
  store ptr %72, ptr %76, align 8, !tbaa !51
  %77 = add i32 %70, 1
  %78 = load ptr, ptr %69, align 8, !tbaa !51
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %68, !llvm.loop !56

80:                                               ; preds = %68, %52
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #12
  store ptr %12, ptr %9, align 16, !tbaa !51
  %81 = getelementptr inbounds ptr, ptr %9, i64 1
  store ptr %13, ptr %81, align 8, !tbaa !51
  %82 = getelementptr inbounds ptr, ptr %9, i64 2
  store ptr %14, ptr %82, align 16, !tbaa !51
  %83 = getelementptr inbounds ptr, ptr %9, i64 3
  store ptr %15, ptr %83, align 8, !tbaa !51
  br label %84

84:                                               ; preds = %80, %121
  %85 = phi i64 [ 0, %80 ], [ %123, %121 ]
  %86 = phi i32 [ 0, %80 ], [ %122, %121 ]
  %87 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 %85
  %88 = load ptr, ptr %87, align 8, !tbaa !51
  %89 = load ptr, ptr %88, align 8, !tbaa !51
  %90 = icmp eq ptr %89, null
  br i1 %90, label %121, label %91

91:                                               ; preds = %84
  %92 = getelementptr inbounds [4 x i32], ptr @__const.bm_grid_fill.lb_iter_dir, i64 0, i64 %85
  br label %93

93:                                               ; preds = %91, %117
  %94 = phi ptr [ %89, %91 ], [ %119, %117 ]
  %95 = phi i32 [ %86, %91 ], [ %118, %117 ]
  %96 = load ptr, ptr %94, align 8, !tbaa !57
  %97 = icmp eq ptr %96, null
  br i1 %97, label %121, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.LinkData, ptr %94, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !40
  %101 = getelementptr inbounds %struct.LinkData, ptr %96, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !40
  %103 = tail call ptr @BM_edge_exists(ptr noundef %100, ptr noundef %102) #13
  %104 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %103) #14, !range !49
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.BMEdge, ptr %103, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !58
  %109 = getelementptr inbounds %struct.BMLoop, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !59
  %111 = load ptr, ptr %99, align 8, !tbaa !40
  %112 = icmp eq ptr %110, %111
  %113 = load i32, ptr %92, align 4, !tbaa !61
  %114 = sub nsw i32 0, %113
  %115 = select i1 %112, i32 %113, i32 %114
  %116 = add nsw i32 %115, %95
  br label %117

117:                                              ; preds = %106, %98
  %118 = phi i32 [ %116, %106 ], [ %95, %98 ]
  %119 = load ptr, ptr %94, align 8, !tbaa !51
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %93, !llvm.loop !62

121:                                              ; preds = %93, %117, %84
  %122 = phi i32 [ %86, %84 ], [ %118, %117 ], [ %95, %93 ]
  %123 = add nuw nsw i64 %85, 1
  %124 = icmp eq i64 %123, 4
  br i1 %124, label %125, label %84, !llvm.loop !63

125:                                              ; preds = %121
  %126 = lshr i32 %122, 31
  %127 = trunc i32 %126 to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #12
  tail call fastcc void @bm_grid_fill_array(ptr noundef %0, ptr noundef %20, i32 noundef %10, i32 noundef %11, i16 noundef signext %5, i8 noundef zeroext %6, i8 noundef zeroext %127, i8 noundef zeroext %7) #14
  %128 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %128(ptr noundef %20) #13
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_edgeloops_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !64 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !65
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !69
  %9 = trunc i16 %8 to i8
  %10 = lshr i8 %9, 2
  %11 = and i8 %10, 1
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !71 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !72
  %4 = and i8 %3, 2
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !73 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !74 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_grid_fill_array(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef signext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 !PGOFuncName !76 {
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [4 x ptr], align 16
  %16 = alloca [4 x ptr], align 16
  %17 = alloca [4 x ptr], align 16
  %18 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %19 = tail call zeroext i8 @CustomData_has_interp(ptr noundef nonnull %18) #13
  %20 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %21 = tail call zeroext i8 @CustomData_has_interp(ptr noundef nonnull %20) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #12
  %22 = load ptr, ptr %1, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2
  %24 = add i32 %2, -1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %1, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 2
  %29 = zext i32 %2 to i64
  %30 = getelementptr inbounds ptr, ptr %1, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !51
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  %33 = add i32 %24, %2
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !51
  %37 = getelementptr inbounds %struct.BMVert, ptr %36, i64 0, i32 2
  call fastcc void @quad_verts_to_barycentric_tri(ptr noundef nonnull %9, ptr noundef nonnull %23, ptr noundef nonnull %28, ptr noundef nonnull %32, ptr noundef nonnull %37, ptr noundef null, ptr noundef null, i8 noundef zeroext 0) #14
  %38 = add i32 %3, -1
  %39 = mul i32 %38, %2
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %1, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !51
  %43 = getelementptr inbounds %struct.BMVert, ptr %42, i64 0, i32 2
  %44 = add i32 %39, %24
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds ptr, ptr %1, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !51
  %48 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2
  %49 = add i32 %3, -2
  %50 = mul i32 %49, %2
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %1, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !51
  %54 = getelementptr inbounds %struct.BMVert, ptr %53, i64 0, i32 2
  %55 = add i32 %50, %24
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %1, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !51
  %59 = getelementptr inbounds %struct.BMVert, ptr %58, i64 0, i32 2
  call fastcc void @quad_verts_to_barycentric_tri(ptr noundef nonnull %10, ptr noundef nonnull %43, ptr noundef nonnull %48, ptr noundef nonnull %54, ptr noundef nonnull %59, ptr noundef null, ptr noundef null, i8 noundef zeroext 1) #14
  %60 = icmp ne i8 %7, 0
  %61 = icmp ne i8 %19, 0
  %62 = select i1 %60, i1 true, i1 %61
  %63 = icmp ne i8 %21, 0
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %65, label %131

65:                                               ; preds = %8
  %66 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %67 = mul i32 %3, %2
  %68 = zext i32 %67 to i64
  %69 = shl nuw nsw i64 %68, 4
  %70 = call ptr %66(i64 noundef %69, ptr noundef nonnull @__func__.bm_grid_fill_array) #13
  call fastcc void @barycentric_weights_v2_grid_cache(i32 noundef %2, i32 noundef %3, ptr noundef %70) #14
  %71 = icmp eq i8 %21, 0
  br i1 %71, label %131, label %72

72:                                               ; preds = %65
  %73 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %74 = shl nuw nsw i64 %25, 4
  %75 = call ptr %73(i64 noundef %74, ptr noundef nonnull @__func__.bm_grid_fill_array) #13
  %76 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %77 = call ptr %76(i64 noundef %74, ptr noundef nonnull @__func__.bm_grid_fill_array) #13
  %78 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %79 = zext i32 %38 to i64
  %80 = shl nuw nsw i64 %79, 4
  %81 = call ptr %78(i64 noundef %80, ptr noundef nonnull @__func__.bm_grid_fill_array) #13
  %82 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %83 = call ptr %82(i64 noundef %80, ptr noundef nonnull @__func__.bm_grid_fill_array) #13
  %84 = icmp eq i32 %24, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %87, %72
  %86 = icmp eq i32 %38, 0
  br i1 %86, label %157, label %107

87:                                               ; preds = %72, %87
  %88 = phi i64 [ %91, %87 ], [ 0, %72 ]
  %89 = getelementptr inbounds ptr, ptr %1, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !51
  %91 = add nuw nsw i64 %88, 1
  %92 = getelementptr inbounds ptr, ptr %1, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !51
  %94 = getelementptr inbounds [2 x ptr], ptr %75, i64 %88
  call fastcc void @bm_loop_pair_from_verts(ptr noundef %90, ptr noundef %93, ptr noundef %94) #14
  %95 = trunc i64 %88 to i32
  %96 = add i32 %39, %95
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %1, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !51
  %100 = trunc i64 %91 to i32
  %101 = add i32 %39, %100
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds ptr, ptr %1, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !51
  %105 = getelementptr inbounds [2 x ptr], ptr %77, i64 %88
  call fastcc void @bm_loop_pair_from_verts(ptr noundef %99, ptr noundef %104, ptr noundef %105) #14
  call fastcc void @bm_loop_pair_test_copy(ptr noundef %94, ptr noundef %105) #14
  %106 = icmp eq i64 %91, %25
  br i1 %106, label %85, label %87, !llvm.loop !77

107:                                              ; preds = %85, %107
  %108 = phi i64 [ %114, %107 ], [ 0, %85 ]
  %109 = trunc i64 %108 to i32
  %110 = mul i32 %109, %2
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds ptr, ptr %1, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !51
  %114 = add nuw nsw i64 %108, 1
  %115 = trunc i64 %114 to i32
  %116 = mul i32 %115, %2
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds ptr, ptr %1, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !51
  %120 = getelementptr inbounds [2 x ptr], ptr %81, i64 %108
  call fastcc void @bm_loop_pair_from_verts(ptr noundef %113, ptr noundef %119, ptr noundef %120) #14
  %121 = add i32 %110, %24
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds ptr, ptr %1, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !51
  %125 = add i32 %116, %24
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds ptr, ptr %1, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !51
  %129 = getelementptr inbounds [2 x ptr], ptr %83, i64 %108
  call fastcc void @bm_loop_pair_from_verts(ptr noundef %124, ptr noundef %128, ptr noundef %129) #14
  call fastcc void @bm_loop_pair_test_copy(ptr noundef %120, ptr noundef %129) #14
  %130 = icmp eq i64 %114, %79
  br i1 %130, label %131, label %107, !llvm.loop !78

131:                                              ; preds = %107, %8, %65
  %132 = phi i1 [ true, %65 ], [ true, %8 ], [ false, %107 ]
  %133 = phi ptr [ %70, %65 ], [ null, %8 ], [ %70, %107 ]
  %134 = phi ptr [ undef, %65 ], [ undef, %8 ], [ %83, %107 ]
  %135 = phi ptr [ undef, %65 ], [ undef, %8 ], [ %81, %107 ]
  %136 = phi ptr [ undef, %65 ], [ undef, %8 ], [ %77, %107 ]
  %137 = phi ptr [ undef, %65 ], [ undef, %8 ], [ %75, %107 ]
  %138 = icmp ugt i32 %38, 1
  br i1 %138, label %139, label %157

139:                                              ; preds = %131
  %140 = icmp ugt i32 %24, 1
  %141 = icmp eq i8 %7, 0
  %142 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1
  %143 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 2
  %144 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1
  %145 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2
  %146 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1
  %147 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2
  %148 = uitofp i32 %3 to float
  %149 = fadd float %148, -1.000000e+00
  %150 = icmp eq i8 %19, 0
  %151 = getelementptr inbounds ptr, ptr %15, i64 1
  %152 = getelementptr inbounds ptr, ptr %15, i64 2
  %153 = getelementptr inbounds ptr, ptr %15, i64 3
  %154 = zext i32 %38 to i64
  br label %178

155:                                              ; preds = %276, %178
  %156 = icmp eq i64 %191, %154
  br i1 %156, label %157, label %178, !llvm.loop !79

157:                                              ; preds = %155, %85, %131
  %158 = phi ptr [ %137, %131 ], [ %75, %85 ], [ %137, %155 ]
  %159 = phi ptr [ %136, %131 ], [ %77, %85 ], [ %136, %155 ]
  %160 = phi ptr [ %135, %131 ], [ %81, %85 ], [ %135, %155 ]
  %161 = phi ptr [ %134, %131 ], [ %83, %85 ], [ %134, %155 ]
  %162 = phi ptr [ %133, %131 ], [ %70, %85 ], [ %133, %155 ]
  %163 = phi i1 [ %132, %131 ], [ false, %85 ], [ %132, %155 ]
  %164 = icmp eq i32 %24, 0
  br i1 %164, label %418, label %165

165:                                              ; preds = %157
  %166 = icmp eq i32 %38, 0
  %167 = icmp eq i8 %6, 0
  %168 = getelementptr inbounds [4 x ptr], ptr %16, i64 0, i64 1
  %169 = getelementptr inbounds [4 x ptr], ptr %16, i64 0, i64 3
  %170 = getelementptr inbounds [4 x ptr], ptr %16, i64 0, i64 2
  %171 = uitofp i32 %24 to float
  %172 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 1
  %173 = uitofp i32 %38 to float
  %174 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 2
  %175 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 3
  %176 = icmp eq i8 %5, 0
  %177 = zext i32 %38 to i64
  br label %279

178:                                              ; preds = %139, %155
  %179 = phi i64 [ 1, %139 ], [ %191, %155 ]
  %180 = trunc i64 %179 to i32
  %181 = mul i32 %180, %2
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds ptr, ptr %1, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !51
  %185 = getelementptr inbounds %struct.BMVert, ptr %184, i64 0, i32 2
  %186 = add i32 %181, %24
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds ptr, ptr %1, i64 %187
  %189 = load ptr, ptr %188, align 8, !tbaa !51
  %190 = getelementptr inbounds %struct.BMVert, ptr %189, i64 0, i32 2
  %191 = add nuw nsw i64 %179, 1
  %192 = trunc i64 %191 to i32
  %193 = mul i32 %192, %2
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds ptr, ptr %1, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !51
  %197 = getelementptr inbounds %struct.BMVert, ptr %196, i64 0, i32 2
  %198 = add i32 %193, %24
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds ptr, ptr %1, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !51
  %202 = getelementptr inbounds %struct.BMVert, ptr %201, i64 0, i32 2
  %203 = trunc i64 %179 to i32
  %204 = add i32 %203, -1
  %205 = mul i32 %204, %2
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds ptr, ptr %1, i64 %206
  %208 = load ptr, ptr %207, align 8, !tbaa !51
  %209 = getelementptr inbounds %struct.BMVert, ptr %208, i64 0, i32 2
  %210 = add i32 %205, %24
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds ptr, ptr %1, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !51
  %214 = getelementptr inbounds %struct.BMVert, ptr %213, i64 0, i32 2
  call fastcc void @quad_verts_to_barycentric_tri(ptr noundef nonnull %11, ptr noundef nonnull %185, ptr noundef nonnull %190, ptr noundef nonnull %197, ptr noundef nonnull %202, ptr noundef nonnull %209, ptr noundef nonnull %214, i8 noundef zeroext 0) #14
  br i1 %140, label %215, label %155

215:                                              ; preds = %178
  %216 = uitofp i32 %180 to float
  %217 = fdiv float %216, %149
  br label %218

218:                                              ; preds = %215, %276
  %219 = phi i64 [ 1, %215 ], [ %277, %276 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #12
  br i1 %141, label %220, label %232

220:                                              ; preds = %218
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #12
  %221 = getelementptr inbounds ptr, ptr %1, i64 %219
  %222 = load ptr, ptr %221, align 8, !tbaa !51
  %223 = getelementptr inbounds %struct.BMVert, ptr %222, i64 0, i32 2
  call void @transform_point_by_tri_v3(ptr noundef nonnull %13, ptr noundef nonnull %223, ptr noundef nonnull %11, ptr noundef nonnull %142, ptr noundef nonnull %143, ptr noundef nonnull %9, ptr noundef nonnull %144, ptr noundef nonnull %145) #13
  %224 = trunc i64 %219 to i32
  %225 = add i32 %39, %224
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds ptr, ptr %1, i64 %226
  %228 = load ptr, ptr %227, align 8, !tbaa !51
  %229 = getelementptr inbounds %struct.BMVert, ptr %228, i64 0, i32 2
  call void @transform_point_by_tri_v3(ptr noundef nonnull %14, ptr noundef nonnull %229, ptr noundef nonnull %11, ptr noundef nonnull %142, ptr noundef nonnull %143, ptr noundef nonnull %10, ptr noundef nonnull %146, ptr noundef nonnull %147) #13
  call void @interp_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, float noundef %217) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  %230 = add i32 %181, %224
  %231 = zext i32 %230 to i64
  br label %256

232:                                              ; preds = %218
  %233 = trunc i64 %219 to i32
  %234 = add i32 %181, %233
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds [4 x float], ptr %133, i64 %235
  call fastcc void @zero_v3(ptr noundef nonnull %12) #14
  %237 = getelementptr inbounds ptr, ptr %1, i64 %219
  %238 = load ptr, ptr %237, align 8, !tbaa !51
  %239 = getelementptr inbounds %struct.BMVert, ptr %238, i64 0, i32 2
  %240 = load float, ptr %236, align 4, !tbaa !80
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %12, ptr noundef nonnull %239, float noundef %240) #14
  %241 = load ptr, ptr %183, align 8, !tbaa !51
  %242 = getelementptr inbounds %struct.BMVert, ptr %241, i64 0, i32 2
  %243 = getelementptr inbounds float, ptr %236, i64 1
  %244 = load float, ptr %243, align 4, !tbaa !80
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %12, ptr noundef nonnull %242, float noundef %244) #14
  %245 = add i32 %39, %233
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds ptr, ptr %1, i64 %246
  %248 = load ptr, ptr %247, align 8, !tbaa !51
  %249 = getelementptr inbounds %struct.BMVert, ptr %248, i64 0, i32 2
  %250 = getelementptr inbounds float, ptr %236, i64 2
  %251 = load float, ptr %250, align 4, !tbaa !80
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %12, ptr noundef nonnull %249, float noundef %251) #14
  %252 = load ptr, ptr %188, align 8, !tbaa !51
  %253 = getelementptr inbounds %struct.BMVert, ptr %252, i64 0, i32 2
  %254 = getelementptr inbounds float, ptr %236, i64 3
  %255 = load float, ptr %254, align 4, !tbaa !80
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %12, ptr noundef nonnull %253, float noundef %255) #14
  br label %256

256:                                              ; preds = %232, %220
  %257 = phi i64 [ %235, %232 ], [ %231, %220 ]
  %258 = phi i32 [ %233, %232 ], [ %224, %220 ]
  %259 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %12, ptr noundef null, i32 noundef 0) #13
  %260 = getelementptr inbounds ptr, ptr %1, i64 %257
  store ptr %259, ptr %260, align 8, !tbaa !51
  br i1 %150, label %276, label %261

261:                                              ; preds = %256
  %262 = getelementptr inbounds [4 x float], ptr %133, i64 %257
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #12
  %263 = getelementptr inbounds ptr, ptr %1, i64 %219
  %264 = load ptr, ptr %263, align 8, !tbaa !51
  %265 = load ptr, ptr %264, align 8, !tbaa !82
  store ptr %265, ptr %15, align 16, !tbaa !51
  %266 = load ptr, ptr %183, align 8, !tbaa !51
  %267 = load ptr, ptr %266, align 8, !tbaa !82
  store ptr %267, ptr %151, align 8, !tbaa !51
  %268 = add i32 %258, %39
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds ptr, ptr %1, i64 %269
  %271 = load ptr, ptr %270, align 8, !tbaa !51
  %272 = load ptr, ptr %271, align 8, !tbaa !82
  store ptr %272, ptr %152, align 16, !tbaa !51
  %273 = load ptr, ptr %188, align 8, !tbaa !51
  %274 = load ptr, ptr %273, align 8, !tbaa !82
  store ptr %274, ptr %153, align 8, !tbaa !51
  %275 = load ptr, ptr %259, align 8, !tbaa !82
  call void @CustomData_bmesh_interp(ptr noundef nonnull %18, ptr noundef nonnull %15, ptr noundef %262, ptr noundef null, i32 noundef 4, ptr noundef %275) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #12
  br label %276

276:                                              ; preds = %261, %256
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #12
  %277 = add nuw nsw i64 %219, 1
  %278 = icmp eq i64 %277, %25
  br i1 %278, label %155, label %218, !llvm.loop !84

279:                                              ; preds = %165, %416
  %280 = phi i64 [ 0, %165 ], [ %281, %416 ]
  %281 = add nuw nsw i64 %280, 1
  br i1 %166, label %416, label %282

282:                                              ; preds = %279
  %283 = getelementptr inbounds [2 x ptr], ptr %158, i64 %280
  %284 = select i1 %167, i64 %281, i64 %280
  %285 = trunc i64 %284 to i32
  %286 = select i1 %167, i64 %280, i64 %281
  %287 = trunc i64 %286 to i32
  br label %288

288:                                              ; preds = %282, %413
  %289 = phi i64 [ 0, %282 ], [ %414, %413 ]
  %290 = trunc i64 %289 to i32
  %291 = mul i32 %290, %2
  %292 = trunc i64 %289 to i32
  %293 = add i32 %292, 1
  %294 = mul i32 %293, %2
  %295 = add i32 %291, %285
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds ptr, ptr %1, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !51
  %299 = add i32 %294, %285
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds ptr, ptr %1, i64 %300
  %302 = load ptr, ptr %301, align 8, !tbaa !51
  %303 = add i32 %294, %287
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds ptr, ptr %1, i64 %304
  %306 = load ptr, ptr %305, align 8, !tbaa !51
  %307 = add i32 %291, %287
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds ptr, ptr %1, i64 %308
  %310 = load ptr, ptr %309, align 8, !tbaa !51
  %311 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %298, ptr noundef %302, ptr noundef %306, ptr noundef %310, ptr noundef null, i32 noundef 0) #13
  br i1 %63, label %312, label %408

312:                                              ; preds = %288
  %313 = load ptr, ptr %283, align 8, !tbaa !51
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %319

315:                                              ; preds = %312
  %316 = getelementptr inbounds [2 x ptr], ptr %160, i64 %289
  %317 = load ptr, ptr %316, align 8, !tbaa !51
  %318 = icmp eq ptr %317, null
  br i1 %318, label %408, label %324

319:                                              ; preds = %312
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #12
  %320 = getelementptr inbounds [2 x ptr], ptr %160, i64 %289
  %321 = load ptr, ptr %320, align 8, !tbaa !51
  %322 = icmp eq ptr %321, null
  %323 = xor i1 %322, true
  br label %327

324:                                              ; preds = %315
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #12
  %325 = getelementptr inbounds [2 x ptr], ptr %160, i64 %289
  %326 = load ptr, ptr %325, align 8, !tbaa !51
  br label %327

327:                                              ; preds = %319, %324
  %328 = phi ptr [ %326, %324 ], [ %313, %319 ]
  %329 = phi i1 [ false, %324 ], [ %323, %319 ]
  %330 = phi i1 [ false, %324 ], [ %322, %319 ]
  %331 = getelementptr inbounds %struct.BMLoop, ptr %328, i64 0, i32 3
  %332 = load ptr, ptr %331, align 8, !tbaa !85
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %332, ptr noundef %311) #13
  call void @BM_face_as_array_loop_quad(ptr noundef %311, ptr noundef nonnull %16) #13
  %333 = getelementptr inbounds %struct.BMFace, ptr %311, i64 0, i32 2
  %334 = load ptr, ptr %333, align 8, !tbaa !86
  br i1 %167, label %342, label %335

335:                                              ; preds = %327
  %336 = getelementptr inbounds %struct.BMLoop, ptr %334, i64 0, i32 6
  %337 = load ptr, ptr %336, align 8, !tbaa !88
  store ptr %337, ptr %168, align 8, !tbaa !51
  %338 = getelementptr inbounds %struct.BMLoop, ptr %337, i64 0, i32 6
  %339 = load ptr, ptr %338, align 8, !tbaa !88
  store ptr %339, ptr %169, align 8, !tbaa !51
  %340 = getelementptr inbounds %struct.BMLoop, ptr %339, i64 0, i32 6
  %341 = load ptr, ptr %340, align 8, !tbaa !88
  store ptr %341, ptr %170, align 16, !tbaa !51
  br label %349

342:                                              ; preds = %327
  store ptr %334, ptr %170, align 16, !tbaa !51
  %343 = getelementptr inbounds %struct.BMLoop, ptr %334, i64 0, i32 6
  %344 = load ptr, ptr %343, align 8, !tbaa !88
  store ptr %344, ptr %169, align 8, !tbaa !51
  %345 = getelementptr inbounds %struct.BMLoop, ptr %344, i64 0, i32 6
  %346 = load ptr, ptr %345, align 8, !tbaa !88
  store ptr %346, ptr %168, align 8, !tbaa !51
  %347 = getelementptr inbounds %struct.BMLoop, ptr %346, i64 0, i32 6
  %348 = load ptr, ptr %347, align 8, !tbaa !88
  br label %349

349:                                              ; preds = %342, %335
  %350 = phi ptr [ %348, %342 ], [ %334, %335 ]
  store ptr %350, ptr %16, align 16
  br label %351

351:                                              ; preds = %349, %406
  %352 = phi i1 [ true, %349 ], [ false, %406 ]
  %353 = phi i64 [ 0, %349 ], [ 1, %406 ]
  %354 = phi i32 [ 0, %349 ], [ %405, %406 ]
  %355 = add nuw nsw i64 %353, %280
  %356 = trunc i64 %355 to i32
  %357 = uitofp i32 %356 to float
  %358 = fdiv float %357, %171
  %359 = getelementptr inbounds [2 x ptr], ptr %158, i64 %280, i64 %353
  %360 = getelementptr inbounds [2 x ptr], ptr %159, i64 %280, i64 %353
  br label %361

361:                                              ; preds = %351, %404
  %362 = phi i1 [ true, %351 ], [ false, %404 ]
  %363 = phi i64 [ 0, %351 ], [ 1, %404 ]
  %364 = phi i32 [ %354, %351 ], [ %405, %404 ]
  br i1 %329, label %365, label %382

365:                                              ; preds = %361
  %366 = add nuw nsw i64 %363, %289
  %367 = trunc i64 %366 to i32
  %368 = mul i32 %367, %2
  %369 = add i32 %368, %356
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds [4 x float], ptr %162, i64 %370
  %372 = load ptr, ptr %359, align 8, !tbaa !51
  store ptr %372, ptr %17, align 16, !tbaa !51
  %373 = getelementptr inbounds [2 x ptr], ptr %160, i64 %289, i64 %363
  %374 = load ptr, ptr %373, align 8, !tbaa !51
  store ptr %374, ptr %172, align 8, !tbaa !51
  %375 = load ptr, ptr %360, align 8, !tbaa !51
  store ptr %375, ptr %174, align 16, !tbaa !51
  %376 = getelementptr inbounds [2 x ptr], ptr %161, i64 %289, i64 %363
  %377 = load ptr, ptr %376, align 8, !tbaa !51
  store ptr %377, ptr %175, align 8, !tbaa !51
  %378 = add i32 %364, 1
  %379 = zext i32 %364 to i64
  %380 = getelementptr inbounds [4 x ptr], ptr %16, i64 0, i64 %379
  %381 = load ptr, ptr %380, align 8, !tbaa !51
  call fastcc void @bm_loop_interp_from_grid_boundary_4(ptr noundef %0, ptr noundef %381, ptr noundef nonnull %17, ptr noundef %371) #14
  br label %404

382:                                              ; preds = %361
  br i1 %330, label %383, label %394

383:                                              ; preds = %382
  %384 = add nuw nsw i64 %363, %289
  %385 = trunc i64 %384 to i32
  %386 = uitofp i32 %385 to float
  %387 = fdiv float %386, %173
  %388 = load ptr, ptr %359, align 8, !tbaa !51
  store ptr %388, ptr %17, align 16, !tbaa !51
  %389 = load ptr, ptr %360, align 8, !tbaa !51
  store ptr %389, ptr %172, align 8, !tbaa !51
  %390 = add i32 %364, 1
  %391 = zext i32 %364 to i64
  %392 = getelementptr inbounds [4 x ptr], ptr %16, i64 0, i64 %391
  %393 = load ptr, ptr %392, align 8, !tbaa !51
  call fastcc void @bm_loop_interp_from_grid_boundary_2(ptr noundef %0, ptr noundef %393, ptr noundef nonnull %17, float noundef %387) #14
  br label %404

394:                                              ; preds = %382
  br i1 %314, label %395, label %404

395:                                              ; preds = %394
  %396 = getelementptr inbounds [2 x ptr], ptr %160, i64 %289, i64 %363
  %397 = load ptr, ptr %396, align 8, !tbaa !51
  store ptr %397, ptr %17, align 16, !tbaa !51
  %398 = getelementptr inbounds [2 x ptr], ptr %161, i64 %289, i64 %363
  %399 = load ptr, ptr %398, align 8, !tbaa !51
  store ptr %399, ptr %172, align 8, !tbaa !51
  %400 = add i32 %364, 1
  %401 = zext i32 %364 to i64
  %402 = getelementptr inbounds [4 x ptr], ptr %16, i64 0, i64 %401
  %403 = load ptr, ptr %402, align 8, !tbaa !51
  call fastcc void @bm_loop_interp_from_grid_boundary_2(ptr noundef %0, ptr noundef %403, ptr noundef nonnull %17, float noundef %358) #14
  br label %404

404:                                              ; preds = %365, %395, %394, %383
  %405 = phi i32 [ %378, %365 ], [ %390, %383 ], [ %400, %395 ], [ %364, %394 ]
  br i1 %362, label %361, label %406, !llvm.loop !89

406:                                              ; preds = %404
  br i1 %352, label %351, label %407, !llvm.loop !90

407:                                              ; preds = %406
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #12
  br label %408

408:                                              ; preds = %407, %315, %288
  %409 = getelementptr inbounds %struct.BMFace, ptr %311, i64 0, i32 1
  %410 = load ptr, ptr %409, align 8, !tbaa !91
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %410) #14
  %411 = getelementptr inbounds %struct.BMFace, ptr %311, i64 0, i32 5
  store i16 %4, ptr %411, align 8, !tbaa !92
  br i1 %176, label %413, label %412

412:                                              ; preds = %408
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %311) #14
  br label %413

413:                                              ; preds = %412, %408
  %414 = add nuw nsw i64 %289, 1
  %415 = icmp eq i64 %414, %177
  br i1 %415, label %416, label %288, !llvm.loop !93

416:                                              ; preds = %413, %279
  %417 = icmp eq i64 %281, %25
  br i1 %417, label %418, label %279, !llvm.loop !94

418:                                              ; preds = %416, %157
  br i1 %163, label %424, label %419

419:                                              ; preds = %418
  %420 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %420(ptr noundef %158) #13
  %421 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %421(ptr noundef %160) #13
  %422 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %422(ptr noundef %159) #13
  %423 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %423(ptr noundef %161) #13
  br label %424

424:                                              ; preds = %419, %418
  %425 = icmp eq ptr %162, null
  br i1 %425, label %428, label %426

426:                                              ; preds = %424
  %427 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %427(ptr noundef nonnull %162) #13
  br label %428

428:                                              ; preds = %426, %424
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #12
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_interp(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @quad_verts_to_barycentric_tri(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef readonly %5, ptr nocapture noundef readonly %6, i8 noundef zeroext %7) unnamed_addr #0 !PGOFuncName !95 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %1) #14
  %11 = getelementptr inbounds [3 x float], ptr %0, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef %2) #14
  call fastcc void @quad_edges_to_normal(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %4) #14
  %12 = icmp eq ptr %5, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  call fastcc void @quad_edges_to_normal(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %1, ptr noundef %6, ptr noundef %2) #14
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #14
  call fastcc void @normalize_v3(ptr noundef nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  br label %14

14:                                               ; preds = %13, %8
  %15 = icmp eq i8 %7, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  call fastcc void @negate_v3(ptr noundef nonnull %9) #14
  br label %17

17:                                               ; preds = %16, %14
  %18 = tail call fastcc float @len_v3v3(ptr noundef %0, ptr noundef nonnull %11) #14
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %18) #14
  %19 = getelementptr inbounds [3 x float], ptr %0, i64 2
  tail call void @mid_v3_v3v3(ptr noundef nonnull %19, ptr noundef %0, ptr noundef nonnull %11) #13
  call fastcc void @add_v3_v3(ptr noundef nonnull %19, ptr noundef nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @barycentric_weights_v2_grid_cache(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !96 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [4 x [2 x float]], align 16
  %6 = add i32 %0, -1
  %7 = uitofp i32 %6 to float
  %8 = fdiv float 1.000000e+00, %7
  %9 = add i32 %1, -1
  %10 = uitofp i32 %9 to float
  %11 = fdiv float 1.000000e+00, %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %15 = icmp eq i32 %0, 0
  %16 = getelementptr inbounds float, ptr %5, i64 1
  %17 = getelementptr inbounds [2 x float], ptr %5, i64 1
  %18 = getelementptr inbounds [2 x float], ptr %5, i64 1, i64 1
  %19 = getelementptr inbounds [2 x float], ptr %5, i64 2
  %20 = getelementptr inbounds [2 x float], ptr %5, i64 2, i64 1
  %21 = getelementptr inbounds [2 x float], ptr %5, i64 3
  %22 = getelementptr inbounds [2 x float], ptr %5, i64 3, i64 1
  br label %23

23:                                               ; preds = %13, %39
  %24 = phi i32 [ 0, %13 ], [ %41, %39 ]
  %25 = phi i32 [ 0, %13 ], [ %40, %39 ]
  %26 = uitofp i32 %24 to float
  %27 = fmul float %11, %26
  store float %27, ptr %14, align 4, !tbaa !80
  br i1 %15, label %39, label %28

28:                                               ; preds = %23, %28
  %29 = phi i32 [ %37, %28 ], [ 0, %23 ]
  %30 = phi i32 [ %34, %28 ], [ %25, %23 ]
  %31 = uitofp i32 %29 to float
  %32 = fmul float %8, %31
  store float %32, ptr %4, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  store float %32, ptr %5, align 16, !tbaa !80
  store <2 x float> zeroinitializer, ptr %16, align 4, !tbaa !80
  %33 = load float, ptr %14, align 4, !tbaa !80
  store float %33, ptr %18, align 4, !tbaa !80
  store float %32, ptr %19, align 16, !tbaa !80
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %20, align 4, !tbaa !80
  store float %33, ptr %22, align 4, !tbaa !80
  %34 = add i32 %30, 1
  %35 = zext i32 %30 to i64
  %36 = getelementptr inbounds [4 x float], ptr %2, i64 %35
  call void @barycentric_weights_v2_quad(ptr noundef nonnull %5, ptr noundef nonnull %17, ptr noundef nonnull %19, ptr noundef nonnull %21, ptr noundef nonnull %4, ptr noundef %36) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  %37 = add nuw i32 %29, 1
  %38 = icmp eq i32 %37, %0
  br i1 %38, label %39, label %28, !llvm.loop !97

39:                                               ; preds = %28, %23
  %40 = phi i32 [ %25, %23 ], [ %34, %28 ]
  %41 = add nuw i32 %24, 1
  %42 = icmp eq i32 %41, %1
  br i1 %42, label %43, label %23, !llvm.loop !98

43:                                               ; preds = %39, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_loop_pair_from_verts(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !99 {
  %4 = tail call ptr @BM_edge_exists(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.BMEdge, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = icmp eq ptr %10, %0
  %12 = getelementptr inbounds ptr, ptr %2, i64 1
  br i1 %11, label %13, label %17

13:                                               ; preds = %8
  store ptr %6, ptr %2, align 8, !tbaa !51
  %14 = load ptr, ptr %5, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !88
  store ptr %16, ptr %12, align 8, !tbaa !51
  br label %22

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !88
  store ptr %19, ptr %2, align 8, !tbaa !51
  %20 = load ptr, ptr %5, align 8, !tbaa !58
  store ptr %20, ptr %12, align 8, !tbaa !51
  br label %22

21:                                               ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %22

22:                                               ; preds = %13, %17, %21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bm_loop_pair_test_copy(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !PGOFuncName !100 {
  %3 = load ptr, ptr %0, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  %5 = load ptr, ptr %1, align 8, !tbaa !51
  %6 = icmp eq ptr %5, null
  br i1 %4, label %8, label %7

7:                                                ; preds = %2
  br i1 %6, label %9, label %16

8:                                                ; preds = %2
  br i1 %6, label %16, label %9

9:                                                ; preds = %8, %7
  %10 = phi ptr [ %0, %7 ], [ %1, %8 ]
  %11 = phi ptr [ %1, %7 ], [ %0, %8 ]
  %12 = getelementptr inbounds ptr, ptr %10, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  store ptr %13, ptr %11, align 8, !tbaa !51
  %14 = load ptr, ptr %10, align 8, !tbaa !51
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %14, ptr %15, align 8, !tbaa !51
  br label %16

16:                                               ; preds = %9, %7, %8
  ret void
}

; Function Attrs: optsize
declare void @transform_point_by_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #7 !PGOFuncName !101 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !80
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #8 !PGOFuncName !102 {
  %4 = load float, ptr %1, align 4, !tbaa !80
  %5 = load float, ptr %0, align 4, !tbaa !80
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !80
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !80
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !80
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !80
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !80
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !80
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !80
  ret void
}

; Function Attrs: optsize
declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CustomData_bmesh_interp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BM_face_create_quad_tri(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_face_as_array_loop_quad(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_loop_interp_from_grid_boundary_4(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !103 {
  %5 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  %6 = load ptr, ptr %2, align 8, !tbaa !51
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  store ptr %7, ptr %5, align 16, !tbaa !51
  %8 = getelementptr inbounds ptr, ptr %5, i64 1
  %9 = getelementptr inbounds ptr, ptr %2, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  store ptr %11, ptr %8, align 8, !tbaa !51
  %12 = getelementptr inbounds ptr, ptr %5, i64 2
  %13 = getelementptr inbounds ptr, ptr %2, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  store ptr %15, ptr %12, align 16, !tbaa !51
  %16 = getelementptr inbounds ptr, ptr %5, i64 3
  %17 = getelementptr inbounds ptr, ptr %2, i64 3
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = load ptr, ptr %18, align 8, !tbaa !104
  store ptr %19, ptr %16, align 8, !tbaa !51
  %20 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %21 = load ptr, ptr %1, align 8, !tbaa !104
  call void @CustomData_bmesh_interp(ptr noundef nonnull %20, ptr noundef nonnull %5, ptr noundef %3, ptr noundef null, i32 noundef 4, ptr noundef %21) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_loop_interp_from_grid_boundary_2(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #0 !PGOFuncName !105 {
  %5 = alloca [2 x ptr], align 16
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %7 = load ptr, ptr %2, align 8, !tbaa !51
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  store ptr %8, ptr %5, align 16, !tbaa !51
  %9 = getelementptr inbounds ptr, ptr %5, i64 1
  %10 = getelementptr inbounds ptr, ptr %2, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  store ptr %12, ptr %9, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  %13 = fsub float 1.000000e+00, %3
  store float %13, ptr %6, align 4, !tbaa !80
  %14 = getelementptr inbounds float, ptr %6, i64 1
  store float %3, ptr %14, align 4, !tbaa !80
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %16 = load ptr, ptr %1, align 8, !tbaa !104
  call void @CustomData_bmesh_interp(ptr noundef nonnull %15, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, i32 noundef 2, ptr noundef %16) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #8 !PGOFuncName !106 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !65
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !69
  %9 = or i16 %8, 16
  store i16 %9, ptr %7, align 2, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !107 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !72
  %4 = or i8 %3, 8
  store i8 %4, ptr %2, align 1, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !108 {
  %3 = load float, ptr %1, align 4, !tbaa !80
  store float %3, ptr %0, align 4, !tbaa !80
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !80
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !80
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !80
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @quad_edges_to_normal(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #9 !PGOFuncName !109 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %1) #14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %4, ptr noundef %3) #14
  call fastcc void @normalize_v3(ptr noundef nonnull %6) #14
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #14
  call fastcc void @add_v3_v3v3(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  tail call fastcc void @normalize_v3(ptr noundef %0) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !110 {
  %3 = load float, ptr %1, align 4, !tbaa !80
  %4 = load float, ptr %0, align 4, !tbaa !80
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !80
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !80
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !80
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !80
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !80
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !80
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !111 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !112 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !80
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !80
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !80
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #8 !PGOFuncName !113 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !80
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !80
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !80
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !114 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #14
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  ret float %4
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #8 !PGOFuncName !115 {
  %4 = load float, ptr %1, align 4, !tbaa !80
  %5 = load float, ptr %2, align 4, !tbaa !80
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !80
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !80
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !80
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !80
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !80
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !80
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #8 !PGOFuncName !116 {
  %4 = load float, ptr %1, align 4, !tbaa !80
  %5 = load float, ptr %2, align 4, !tbaa !80
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !80
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !80
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !80
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !80
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !80
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !80
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !117 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #14
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #13
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #14
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #14
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !118 {
  %3 = load float, ptr %0, align 4, !tbaa !80
  %4 = load float, ptr %1, align 4, !tbaa !80
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !80
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !80
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !80
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !80
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #8 !PGOFuncName !119 {
  %4 = load float, ptr %1, align 4, !tbaa !80
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !80
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !80
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !80
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !80
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !120 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #14
  %3 = tail call float @sqrtf(float noundef %2) #13
  ret float %3
}

; Function Attrs: optsize
declare void @barycentric_weights_v2_quad(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
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
!35 = !{!"ListBase", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 8}
!40 = !{!41, !36, i64 16}
!41 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!42 = !{!"bmo_fill_grid.c:bm_edge_test_cb"}
!43 = !{!44, !36, i64 16}
!44 = !{!"BMEdge", !45, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !47, i64 48, !47, i64 64}
!45 = !{!"BMHeader", !36, i64 0, !46, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!46 = !{!"int", !37, i64 0}
!47 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!48 = !{!"bmo_fill_grid.c:bm_edge_test_rail_cb"}
!49 = !{i8 0, i8 2}
!50 = !{!"bmo_fill_grid.c:bm_grid_fill"}
!51 = !{!36, !36, i64 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = distinct !{!54, !53}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !53}
!57 = !{!41, !36, i64 0}
!58 = !{!44, !36, i64 40}
!59 = !{!60, !36, i64 16}
!60 = !{!"BMLoop", !45, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!61 = !{!46, !46, i64 0}
!62 = distinct !{!62, !53}
!63 = distinct !{!63, !53}
!64 = !{!"bmo_fill_grid.c:_bmo_elem_flag_test_bool"}
!65 = !{!66, !46, i64 128}
!66 = !{!"BMesh", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !46, i64 88, !46, i64 92, !46, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !46, i64 128, !36, i64 136, !67, i64 144, !67, i64 344, !67, i64 544, !67, i64 744, !68, i64 944, !46, i64 948, !46, i64 952, !46, i64 956, !35, i64 960, !36, i64 976, !35, i64 984, !36, i64 1000}
!67 = !{!"CustomData", !36, i64 0, !37, i64 8, !46, i64 172, !46, i64 176, !46, i64 180, !36, i64 184, !36, i64 192}
!68 = !{!"short", !37, i64 0}
!69 = !{!70, !68, i64 0}
!70 = !{!"BMFlagLayer", !68, i64 0}
!71 = !{!"bmo_fill_grid.c:_bm_elem_flag_test"}
!72 = !{!45, !37, i64 13}
!73 = !{!"bmo_fill_grid.c:BM_edge_is_wire"}
!74 = !{!"bmo_fill_grid.c:BM_edge_is_boundary"}
!75 = !{!60, !36, i64 40}
!76 = !{!"bmo_fill_grid.c:bm_grid_fill_array"}
!77 = distinct !{!77, !53}
!78 = distinct !{!78, !53}
!79 = distinct !{!79, !53}
!80 = !{!81, !81, i64 0}
!81 = !{!"float", !37, i64 0}
!82 = !{!83, !36, i64 0}
!83 = !{!"BMVert", !45, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!84 = distinct !{!84, !53}
!85 = !{!60, !36, i64 32}
!86 = !{!87, !36, i64 24}
!87 = !{!"BMFace", !45, i64 0, !36, i64 16, !36, i64 24, !46, i64 32, !37, i64 36, !68, i64 48}
!88 = !{!60, !36, i64 56}
!89 = distinct !{!89, !53}
!90 = distinct !{!90, !53}
!91 = !{!87, !36, i64 16}
!92 = !{!87, !68, i64 48}
!93 = distinct !{!93, !53}
!94 = distinct !{!94, !53}
!95 = !{!"bmo_fill_grid.c:quad_verts_to_barycentric_tri"}
!96 = !{!"bmo_fill_grid.c:barycentric_weights_v2_grid_cache"}
!97 = distinct !{!97, !53}
!98 = distinct !{!98, !53}
!99 = !{!"bmo_fill_grid.c:bm_loop_pair_from_verts"}
!100 = !{!"bmo_fill_grid.c:bm_loop_pair_test_copy"}
!101 = !{!"bmo_fill_grid.c:zero_v3"}
!102 = !{!"bmo_fill_grid.c:madd_v3_v3fl"}
!103 = !{!"bmo_fill_grid.c:bm_loop_interp_from_grid_boundary_4"}
!104 = !{!60, !36, i64 0}
!105 = !{!"bmo_fill_grid.c:bm_loop_interp_from_grid_boundary_2"}
!106 = !{!"bmo_fill_grid.c:_bmo_elem_flag_enable"}
!107 = !{!"bmo_fill_grid.c:_bm_elem_flag_enable"}
!108 = !{!"bmo_fill_grid.c:copy_v3_v3"}
!109 = !{!"bmo_fill_grid.c:quad_edges_to_normal"}
!110 = !{!"bmo_fill_grid.c:add_v3_v3"}
!111 = !{!"bmo_fill_grid.c:normalize_v3"}
!112 = !{!"bmo_fill_grid.c:negate_v3"}
!113 = !{!"bmo_fill_grid.c:mul_v3_fl"}
!114 = !{!"bmo_fill_grid.c:len_v3v3"}
!115 = !{!"bmo_fill_grid.c:sub_v3_v3v3"}
!116 = !{!"bmo_fill_grid.c:add_v3_v3v3"}
!117 = !{!"bmo_fill_grid.c:normalize_v3_v3"}
!118 = !{!"bmo_fill_grid.c:dot_v3v3"}
!119 = !{!"bmo_fill_grid.c:mul_v3_v3fl"}
!120 = !{!"bmo_fill_grid.c:len_v3"}
