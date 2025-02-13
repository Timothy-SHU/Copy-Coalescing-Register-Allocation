; ModuleID = 'lto-cgraph.c'
source_filename = "lto-cgraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gcov_ctr_summary = type { i32, i32, i64, i64, i64 }
%struct.lto_cgraph_encoder_d = type { ptr, ptr }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x ptr] }
%struct.cgraph_node_set_iterator = type { ptr, i32 }
%struct.lto_simple_output_block = type { i32, ptr, ptr }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], ptr, ptr }
%struct.lto_tree_ref_encoder = type { ptr, i32, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.cgraph_asm_node = type { ptr, ptr, i32 }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.cgraph_node_set_def = type { ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.lto_file_decl_data = type { ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.lto_tree_ref_table = type { ptr, i32 }

@.str = private unnamed_addr constant [13 x i8] c"lto-cgraph.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cgraph_asm_nodes = external local_unnamed_addr global ptr, align 8
@profile_info = external local_unnamed_addr global ptr, align 8
@flag_wpa = external local_unnamed_addr global i32, align 4
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@lto_gcov_summary = internal global %struct.gcov_ctr_summary zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"Combining units with different profiles is not supported.\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"bytecode stream: found empty cgraph node\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"bytecode stream: no caller found while reading edge\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"bytecode stream: no callee found while reading edge\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"bytecode stream: found multiple instances of cgraph node %d\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"./lto-streamer.h\00", align 1
@switch.table.lto_output_node = private unnamed_addr constant [4 x i32] [i32 3, i32 2, i32 1, i32 1], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lto_cgraph_encoder_new() local_unnamed_addr #0 {
  %1 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #9
  %2 = tail call ptr @pointer_map_create() #9
  store ptr %2, ptr %1, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.lto_cgraph_encoder_d, ptr %1, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !11
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_cgraph_encoder_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lto_cgraph_encoder_d, ptr %0, i64 0, i32 1
  tail call fastcc void @VEC_cgraph_node_ptr_heap_free(ptr noundef nonnull %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @pointer_map_destroy(ptr noundef %3) #9
  tail call void @free(ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_cgraph_node_ptr_heap_free(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #10
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lto_cgraph_encoder_encode(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = tail call ptr @pointer_map_contains(ptr noundef %3, ptr noundef %1) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lto_cgraph_encoder_d, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef %8) #10
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  %11 = tail call ptr @pointer_map_insert(ptr noundef %10, ptr noundef %1) #9
  %12 = sext i32 %9 to i64
  %13 = inttoptr i64 %12 to ptr
  store ptr %13, ptr %11, align 8, !tbaa !12
  tail call fastcc void @VEC_cgraph_node_ptr_heap_safe_push(ptr noundef nonnull %7, ptr noundef %1) #10
  br label %18

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8, !tbaa !12
  %16 = ptrtoint ptr %15 to i64
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %14, %6
  %19 = phi i32 [ %17, %14 ], [ %9, %6 ]
  ret i32 %19
}

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_cgraph_node_ptr_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_cgraph_node_ptr_heap_reserve(ptr noundef %0) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !12
  tail call fastcc void @VEC_cgraph_node_ptr_base_quick_push(ptr noundef %3, ptr noundef %1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_cgraph_node_ptr_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !12
  %3 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_space(ptr noundef %2) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #9
  store ptr %6, ptr %0, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_cgraph_node_ptr_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = load i32, ptr %0, align 8, !tbaa !13
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !13
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_space(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !16
  %6 = load i32, ptr %0, align 8, !tbaa !13
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lto_cgraph_encoder_lookup(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = tail call ptr @pointer_map_contains(ptr noundef %3, ptr noundef %1) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !12
  %8 = ptrtoint ptr %7 to i64
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -1, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @lto_cgraph_encoder_deref(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.lto_cgraph_encoder_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = tail call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %6, i32 noundef %1) #10
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @output_cgraph(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.cgraph_node_set_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %3 = tail call ptr @lto_create_simple_output_block(i32 noundef 3) #9
  tail call fastcc void @output_profile_summary(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.lto_simple_output_block, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.lto_out_decl_state, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 395, ptr noundef nonnull @.str.1) #9
  %10 = load ptr, ptr %4, align 8, !tbaa !17
  %11 = getelementptr inbounds %struct.lto_out_decl_state, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  br label %13

13:                                               ; preds = %1, %9
  %14 = phi ptr [ %7, %1 ], [ %12, %9 ]
  %15 = tail call ptr @lto_bitmap_alloc() #9
  %16 = tail call fastcc ptr @csi_start(ptr noundef %0) #10
  store ptr %16, ptr %2, align 8, !tbaa.struct !21
  %17 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 0, ptr %17, align 8, !tbaa.struct !23
  %18 = tail call fastcc zeroext i8 @csi_end_p(ptr %16, i32 0) #10, !range !24
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %13, %20
  %21 = phi i32 [ %26, %20 ], [ 0, %13 ]
  %22 = phi ptr [ %25, %20 ], [ %16, %13 ]
  %23 = tail call fastcc ptr @csi_node(ptr %22, i32 %21) #10
  %24 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %14, ptr noundef %23) #10
  call fastcc void @csi_next(ptr noundef nonnull %2) #10
  %25 = load ptr, ptr %2, align 8
  %26 = load i32, ptr %17, align 8
  %27 = tail call fastcc zeroext i8 @csi_end_p(ptr %25, i32 %26) #10, !range !24
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %20, label %29, !llvm.loop !25

29:                                               ; preds = %20, %13
  store ptr %16, ptr %2, align 8, !tbaa.struct !21
  store i32 0, ptr %17, align 8, !tbaa.struct !23
  %30 = tail call fastcc zeroext i8 @csi_end_p(ptr %16, i32 0) #10, !range !24
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %92

32:                                               ; preds = %29, %87
  %33 = phi i32 [ %89, %87 ], [ 0, %29 ]
  %34 = phi ptr [ %88, %87 ], [ %16, %29 ]
  %35 = tail call fastcc ptr @csi_node(ptr %34, i32 %33) #10
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %71, label %39

39:                                               ; preds = %32, %67
  %40 = phi ptr [ %69, %67 ], [ %37, %32 ]
  %41 = getelementptr inbounds %struct.cgraph_edge, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !27
  %43 = tail call fastcc zeroext i8 @cgraph_node_in_set_p(ptr noundef %42, ptr noundef %0) #10, !range !24
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 19, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !31
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 421, ptr noundef nonnull @.str.1) #9
  br label %50

50:                                               ; preds = %45, %49
  %51 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %14, ptr noundef nonnull %42) #10
  %52 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 14
  %53 = load ptr, ptr %52, align 8, !tbaa !39
  %54 = icmp eq ptr %53, null
  %55 = icmp eq ptr %53, %42
  %56 = or i1 %54, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %50, %63
  %58 = phi ptr [ %65, %63 ], [ %53, %50 ]
  %59 = tail call fastcc zeroext i8 @cgraph_node_in_set_p(ptr noundef %58, ptr noundef %0) #10, !range !24
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %14, ptr noundef %58) #10
  br label %63

63:                                               ; preds = %57, %61
  %64 = getelementptr inbounds %struct.cgraph_node, ptr %58, i64 0, i32 14
  %65 = load ptr, ptr %64, align 8, !tbaa !39
  %66 = icmp eq ptr %65, %42
  br i1 %66, label %67, label %57, !llvm.loop !40

67:                                               ; preds = %63, %50, %39
  %68 = getelementptr inbounds %struct.cgraph_edge, ptr %40, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !12
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %39, !llvm.loop !41

71:                                               ; preds = %67, %32
  %72 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 14
  %73 = load ptr, ptr %72, align 8, !tbaa !39
  %74 = icmp eq ptr %73, null
  %75 = icmp eq ptr %73, %35
  %76 = or i1 %74, %75
  br i1 %76, label %87, label %77

77:                                               ; preds = %71, %83
  %78 = phi ptr [ %85, %83 ], [ %73, %71 ]
  %79 = tail call fastcc zeroext i8 @cgraph_node_in_set_p(ptr noundef %78, ptr noundef %0) #10, !range !24
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %14, ptr noundef %78) #10
  br label %83

83:                                               ; preds = %77, %81
  %84 = getelementptr inbounds %struct.cgraph_node, ptr %78, i64 0, i32 14
  %85 = load ptr, ptr %84, align 8, !tbaa !39
  %86 = icmp eq ptr %85, %35
  br i1 %86, label %87, label %77, !llvm.loop !42

87:                                               ; preds = %83, %71
  call fastcc void @csi_next(ptr noundef nonnull %2) #10
  %88 = load ptr, ptr %2, align 8
  %89 = load i32, ptr %17, align 8
  %90 = tail call fastcc zeroext i8 @csi_end_p(ptr %88, i32 %89) #10, !range !24
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %32, label %92, !llvm.loop !43

92:                                               ; preds = %87, %29
  %93 = tail call fastcc i32 @lto_cgraph_encoder_size(ptr noundef %14) #10
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92, %95
  %96 = phi i32 [ %98, %95 ], [ 0, %92 ]
  %97 = tail call ptr @lto_cgraph_encoder_deref(ptr noundef %14, i32 noundef %96) #10
  tail call fastcc void @lto_output_node(ptr noundef %3, ptr noundef %97, ptr noundef %14, ptr noundef %0, ptr noundef %15) #10
  %98 = add nuw nsw i32 %96, 1
  %99 = icmp eq i32 %98, %93
  br i1 %99, label %100, label %95, !llvm.loop !44

100:                                              ; preds = %95, %92
  tail call void @lto_bitmap_free(ptr noundef %15) #9
  store ptr %16, ptr %2, align 8, !tbaa.struct !21
  store i32 0, ptr %17, align 8, !tbaa.struct !23
  %101 = tail call fastcc zeroext i8 @csi_end_p(ptr %16, i32 0) #10, !range !24
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %100, %120
  %104 = phi i32 [ %122, %120 ], [ 0, %100 ]
  %105 = phi ptr [ %121, %120 ], [ %16, %100 ]
  %106 = tail call fastcc ptr @csi_node(ptr %105, i32 %104) #10
  %107 = getelementptr inbounds %struct.cgraph_node, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !45
  %109 = icmp eq ptr %108, null
  br i1 %109, label %120, label %110

110:                                              ; preds = %103, %110
  %111 = phi ptr [ %113, %110 ], [ %108, %103 ]
  %112 = getelementptr inbounds %struct.cgraph_edge, ptr %111, i64 0, i32 6
  %113 = load ptr, ptr %112, align 8, !tbaa !46
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %110, !llvm.loop !47

115:                                              ; preds = %110, %115
  %116 = phi ptr [ %118, %115 ], [ %111, %110 ]
  tail call fastcc void @lto_output_edge(ptr noundef %3, ptr noundef nonnull %116, ptr noundef %14) #10
  %117 = getelementptr inbounds %struct.cgraph_edge, ptr %116, i64 0, i32 5
  %118 = load ptr, ptr %117, align 8, !tbaa !48
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %115, !llvm.loop !49

120:                                              ; preds = %115, %103
  call fastcc void @csi_next(ptr noundef nonnull %2) #10
  %121 = load ptr, ptr %2, align 8
  %122 = load i32, ptr %17, align 8
  %123 = tail call fastcc zeroext i8 @csi_end_p(ptr %121, i32 %122) #10, !range !24
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %103, label %125, !llvm.loop !50

125:                                              ; preds = %120, %100
  %126 = getelementptr inbounds %struct.lto_simple_output_block, ptr %3, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !51
  tail call void @lto_output_uleb128_stream(ptr noundef %127, i64 noundef 0) #9
  %128 = load ptr, ptr @cgraph_asm_nodes, align 8, !tbaa !12
  %129 = icmp eq ptr %128, null
  br i1 %129, label %153, label %133

130:                                              ; preds = %144, %133
  %131 = load ptr, ptr %134, align 8, !tbaa !12
  %132 = icmp eq ptr %131, null
  br i1 %132, label %153, label %133, !llvm.loop !52

133:                                              ; preds = %125, %130
  %134 = phi ptr [ %131, %130 ], [ %128, %125 ]
  %135 = getelementptr inbounds %struct.cgraph_asm_node, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !53
  %137 = getelementptr inbounds %struct.tree_string, ptr %136, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !55
  %139 = load ptr, ptr %126, align 8, !tbaa !51
  %140 = sext i32 %138 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %139, i64 noundef %140) #9
  %141 = icmp sgt i32 %138, 0
  br i1 %141, label %142, label %130

142:                                              ; preds = %133
  %143 = zext nneg i32 %138 to i64
  br label %144

144:                                              ; preds = %142, %144
  %145 = phi i64 [ 0, %142 ], [ %151, %144 ]
  %146 = load ptr, ptr %126, align 8, !tbaa !51
  %147 = load ptr, ptr %135, align 8, !tbaa !53
  %148 = getelementptr inbounds %struct.tree_string, ptr %147, i64 0, i32 2
  %149 = getelementptr inbounds i8, ptr %148, i64 %145
  %150 = load i8, ptr %149, align 1, !tbaa !55
  tail call void @lto_output_1_stream(ptr noundef %146, i8 noundef signext %150) #9
  %151 = add nuw nsw i64 %145, 1
  %152 = icmp eq i64 %151, %143
  br i1 %152, label %130, label %144, !llvm.loop !56

153:                                              ; preds = %130, %125
  %154 = load ptr, ptr %126, align 8, !tbaa !51
  tail call void @lto_output_uleb128_stream(ptr noundef %154, i64 noundef 0) #9
  tail call void @lto_destroy_simple_output_block(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void
}

; Function Attrs: optsize
declare ptr @lto_create_simple_output_block(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_profile_summary(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @profile_info, align 8, !tbaa !12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !57
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 364, ptr noundef nonnull @.str.1) #9
  %9 = load ptr, ptr @profile_info, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !57
  br label %12

12:                                               ; preds = %4, %8
  %13 = phi i32 [ %6, %4 ], [ %11, %8 ]
  %14 = getelementptr inbounds %struct.lto_simple_output_block, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = zext i32 %13 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %15, i64 noundef %16) #9
  %17 = load ptr, ptr %14, align 8, !tbaa !51
  %18 = load ptr, ptr @profile_info, align 8, !tbaa !12
  %19 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %18, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !59
  tail call void @lto_output_sleb128_stream(ptr noundef %17, i64 noundef %20) #9
  %21 = load ptr, ptr %14, align 8, !tbaa !51
  %22 = load ptr, ptr @profile_info, align 8, !tbaa !12
  %23 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %22, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !60
  tail call void @lto_output_sleb128_stream(ptr noundef %21, i64 noundef %24) #9
  %25 = load ptr, ptr %14, align 8, !tbaa !51
  %26 = load ptr, ptr @profile_info, align 8, !tbaa !12
  %27 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %26, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !61
  tail call void @lto_output_sleb128_stream(ptr noundef %25, i64 noundef %28) #9
  br label %32

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.lto_simple_output_block, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !51
  tail call void @lto_output_uleb128_stream(ptr noundef %31, i64 noundef 0) #9
  br label %32

32:                                               ; preds = %29, %12
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lto_bitmap_alloc() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @csi_start(ptr noundef %0) unnamed_addr #8 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @csi_end_p(ptr nocapture readonly %0, i32 %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef %4) #10
  %6 = icmp ule i32 %5, %1
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @csi_node(ptr nocapture readonly %0, i32 %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = tail call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %4, i32 noundef %1) #10
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @csi_next(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.cgraph_node_set_iterator, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !64
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cgraph_node_in_set_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call { ptr, i32 } @cgraph_node_set_find(ptr noundef %1, ptr noundef %0) #9
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  %6 = tail call fastcc zeroext i8 @csi_end_p(ptr %4, i32 %5) #10, !range !24
  %7 = xor i8 %6, 1
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @lto_cgraph_encoder_size(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.lto_cgraph_encoder_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  %4 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef %3) #10
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_node(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = tail call fastcc zeroext i8 @cgraph_node_in_set_p(ptr noundef %1, ptr noundef %3) #10, !range !24
  %7 = load ptr, ptr %1, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !55
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %9) #9
  %11 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %1) #9
  %12 = add i32 %11, -1
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 206, ptr noundef nonnull @.str.1) #9
  br label %19

15:                                               ; preds = %5
  %16 = zext nneg i32 %12 to i64
  %17 = getelementptr inbounds [4 x i32], ptr @switch.table.lto_output_node, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %15, %14
  %20 = phi i32 [ undef, %14 ], [ %18, %15 ]
  %21 = icmp eq i8 %6, 0
  %22 = select i1 %21, i32 3, i32 %20
  %23 = getelementptr inbounds %struct.lto_simple_output_block, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  %25 = zext i32 %22 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %24, i64 noundef %25) #9
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 2
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 27
  %28 = load i16, ptr %27, align 4
  %29 = lshr i16 %28, 5
  %30 = and i16 %29, 1
  br i1 %21, label %31, label %36

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !31
  %34 = icmp eq ptr %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 232, ptr noundef nonnull @.str.1) #9
  br label %50

36:                                               ; preds = %19
  %37 = load i8, ptr %26, align 8
  %38 = lshr i8 %37, 3
  %39 = and i8 %38, 1
  %40 = zext nneg i8 %39 to i64
  %41 = lshr i8 %37, 1
  %42 = and i8 %41, 1
  %43 = zext nneg i8 %42 to i64
  %44 = and i8 %37, 1
  %45 = zext nneg i8 %44 to i64
  %46 = load ptr, ptr %1, align 8, !tbaa !66
  %47 = tail call zeroext i8 @lto_forced_extern_inline_p(ptr noundef %46) #9
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %35, %31, %36, %49
  %51 = phi i64 [ 0, %49 ], [ %43, %36 ], [ 1, %31 ], [ 1, %35 ]
  %52 = phi i64 [ 1, %49 ], [ %40, %36 ], [ 0, %31 ], [ 0, %35 ]
  %53 = phi i16 [ %30, %49 ], [ %30, %36 ], [ 0, %31 ], [ 0, %35 ]
  %54 = phi i64 [ 1, %49 ], [ %45, %36 ], [ 0, %31 ], [ 0, %35 ]
  %55 = load ptr, ptr %23, align 8, !tbaa !51
  %56 = and i32 %10, 255
  %57 = zext nneg i32 %56 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %55, i64 noundef %57) #9
  %58 = icmp eq i32 %56, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load ptr, ptr %1, align 8, !tbaa !66
  %61 = getelementptr inbounds %struct.tree_decl_minimal, ptr %60, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !55
  %63 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %62) #9
  br label %64

64:                                               ; preds = %59, %50
  %65 = getelementptr inbounds %struct.lto_simple_output_block, ptr %0, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !17
  %67 = load ptr, ptr %23, align 8, !tbaa !51
  %68 = load ptr, ptr %1, align 8, !tbaa !66
  tail call void @lto_output_fn_decl_index(ptr noundef %66, ptr noundef %67, ptr noundef %68) #9
  %69 = load ptr, ptr %23, align 8, !tbaa !51
  %70 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 23
  %71 = load i64, ptr %70, align 8, !tbaa !67
  tail call void @lto_output_sleb128_stream(ptr noundef %69, i64 noundef %71) #9
  %72 = tail call ptr @bitpack_create() #9
  tail call void @bp_pack_value(ptr noundef %72, i64 noundef %54, i32 noundef 1) #9
  tail call void @bp_pack_value(ptr noundef %72, i64 noundef %51, i32 noundef 1) #9
  %73 = load i8, ptr %26, align 8
  %74 = lshr i8 %73, 2
  %75 = and i8 %74, 1
  %76 = zext nneg i8 %75 to i64
  tail call void @bp_pack_value(ptr noundef %72, i64 noundef %76, i32 noundef 1) #9
  tail call void @bp_pack_value(ptr noundef %72, i64 noundef %52, i32 noundef 1) #9
  %77 = load i8, ptr %26, align 8
  %78 = lshr i8 %77, 4
  %79 = and i8 %78, 1
  %80 = zext nneg i8 %79 to i64
  tail call void @bp_pack_value(ptr noundef %72, i64 noundef %80, i32 noundef 1) #9
  %81 = load i8, ptr %26, align 8
  %82 = lshr i8 %81, 5
  %83 = and i8 %82, 1
  %84 = zext nneg i8 %83 to i64
  tail call void @bp_pack_value(ptr noundef %72, i64 noundef %84, i32 noundef 1) #9
  %85 = load i8, ptr %26, align 8
  %86 = lshr i8 %85, 6
  %87 = and i8 %86, 1
  %88 = zext nneg i8 %87 to i64
  tail call void @bp_pack_value(ptr noundef %72, i64 noundef %88, i32 noundef 1) #9
  %89 = load i8, ptr %26, align 8
  %90 = lshr i8 %89, 7
  %91 = zext nneg i8 %90 to i64
  tail call void @bp_pack_value(ptr noundef %72, i64 noundef %91, i32 noundef 1) #9
  %92 = load i16, ptr %27, align 4
  %93 = and i16 %92, 1
  %94 = zext nneg i16 %93 to i64
  tail call void @bp_pack_value(ptr noundef %72, i64 noundef %94, i32 noundef 1) #9
  %95 = load i16, ptr %27, align 4
  %96 = lshr i16 %95, 1
  %97 = and i16 %96, 1
  %98 = zext nneg i16 %97 to i64
  tail call void @bp_pack_value(ptr noundef %72, i64 noundef %98, i32 noundef 1) #9
  %99 = load i16, ptr %27, align 4
  %100 = lshr i16 %99, 2
  %101 = and i16 %100, 1
  %102 = zext nneg i16 %101 to i64
  tail call void @bp_pack_value(ptr noundef %72, i64 noundef %102, i32 noundef 1) #9
  %103 = load i16, ptr %27, align 4
  %104 = lshr i16 %103, 3
  %105 = and i16 %104, 1
  %106 = zext nneg i16 %105 to i64
  tail call void @bp_pack_value(ptr noundef %72, i64 noundef %106, i32 noundef 1) #9
  %107 = load i16, ptr %27, align 4
  %108 = lshr i16 %107, 4
  %109 = and i16 %108, 1
  %110 = zext nneg i16 %109 to i64
  tail call void @bp_pack_value(ptr noundef %72, i64 noundef %110, i32 noundef 1) #9
  %111 = zext nneg i16 %53 to i64
  tail call void @bp_pack_value(ptr noundef %72, i64 noundef %111, i32 noundef 1) #9
  %112 = load i16, ptr %27, align 4
  %113 = lshr i16 %112, 6
  %114 = and i16 %113, 1
  %115 = zext nneg i16 %114 to i64
  tail call void @bp_pack_value(ptr noundef %72, i64 noundef %115, i32 noundef 1) #9
  %116 = load i16, ptr %27, align 4
  %117 = lshr i16 %116, 7
  %118 = and i16 %117, 1
  %119 = zext nneg i16 %118 to i64
  tail call void @bp_pack_value(ptr noundef %72, i64 noundef %119, i32 noundef 1) #9
  %120 = load i16, ptr %27, align 4
  %121 = lshr i16 %120, 8
  %122 = and i16 %121, 1
  %123 = zext nneg i16 %122 to i64
  tail call void @bp_pack_value(ptr noundef %72, i64 noundef %123, i32 noundef 1) #9
  %124 = load ptr, ptr %23, align 8, !tbaa !51
  tail call void @lto_output_bitpack(ptr noundef %124, ptr noundef %72) #9
  tail call void @bitpack_delete(ptr noundef %72) #9
  %125 = icmp eq i32 %22, 3
  br i1 %125, label %146, label %126

126:                                              ; preds = %64
  %127 = load ptr, ptr %23, align 8, !tbaa !51
  %128 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !68
  tail call void @lto_output_sleb128_stream(ptr noundef %127, i64 noundef %129) #9
  %130 = load ptr, ptr %23, align 8, !tbaa !51
  %131 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !69
  %133 = sext i32 %132 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %130, i64 noundef %133) #9
  %134 = load ptr, ptr %23, align 8, !tbaa !51
  %135 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1, i32 2
  %136 = load i32, ptr %135, align 4, !tbaa !70
  %137 = sext i32 %136 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %134, i64 noundef %137) #9
  %138 = load ptr, ptr %23, align 8, !tbaa !51
  %139 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1, i32 3
  %140 = load i32, ptr %139, align 8, !tbaa !71
  %141 = sext i32 %140 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %138, i64 noundef %141) #9
  %142 = load ptr, ptr %23, align 8, !tbaa !51
  %143 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1, i32 4
  %144 = load i32, ptr %143, align 4, !tbaa !72
  %145 = sext i32 %144 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %142, i64 noundef %145) #9
  br label %146

146:                                              ; preds = %126, %64
  %147 = load ptr, ptr %23, align 8, !tbaa !51
  %148 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19
  %149 = load i64, ptr %148, align 8, !tbaa !73
  tail call void @lto_output_sleb128_stream(ptr noundef %147, i64 noundef %149) #9
  %150 = load ptr, ptr %23, align 8, !tbaa !51
  %151 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 1
  %152 = load i64, ptr %151, align 8, !tbaa !74
  tail call void @lto_output_sleb128_stream(ptr noundef %150, i64 noundef %152) #9
  %153 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !31
  %155 = icmp eq ptr %154, null
  %156 = or i1 %21, %155
  br i1 %156, label %162, label %157

157:                                              ; preds = %146
  %158 = tail call i32 @lto_cgraph_encoder_lookup(ptr noundef %2, ptr noundef nonnull %154) #10
  %159 = sext i32 %158 to i64
  %160 = icmp eq i32 %158, -1
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 298, ptr noundef nonnull @.str.1) #9
  br label %162

162:                                              ; preds = %146, %161, %157
  %163 = phi i64 [ %159, %157 ], [ -1, %161 ], [ -1, %146 ]
  %164 = load ptr, ptr %23, align 8, !tbaa !51
  tail call void @lto_output_sleb128_stream(ptr noundef %164, i64 noundef %163) #9
  %165 = load ptr, ptr %23, align 8, !tbaa !51
  %166 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 3
  %167 = load i32, ptr %166, align 8, !tbaa !75
  %168 = sext i32 %167 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %165, i64 noundef %168) #9
  %169 = load ptr, ptr %23, align 8, !tbaa !51
  %170 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 4
  %171 = load i32, ptr %170, align 4, !tbaa !76
  %172 = sext i32 %171 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %169, i64 noundef %172) #9
  %173 = load ptr, ptr %23, align 8, !tbaa !51
  %174 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 5
  %175 = load i32, ptr %174, align 8, !tbaa !77
  %176 = sext i32 %175 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %173, i64 noundef %176) #9
  %177 = load ptr, ptr %23, align 8, !tbaa !51
  %178 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 6
  %179 = load i8, ptr %178, align 4, !tbaa !78
  %180 = zext i8 %179 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %177, i64 noundef %180) #9
  %181 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 14
  %182 = load ptr, ptr %181, align 8, !tbaa !39
  %183 = icmp eq ptr %182, null
  br i1 %183, label %189, label %184

184:                                              ; preds = %162
  %185 = tail call i32 @lto_cgraph_encoder_lookup(ptr noundef %2, ptr noundef nonnull %182) #10
  %186 = sext i32 %185 to i64
  %187 = icmp eq i32 %185, -1
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 312, ptr noundef nonnull @.str.1) #9
  br label %189

189:                                              ; preds = %162, %188, %184
  %190 = phi i64 [ %186, %184 ], [ -1, %188 ], [ -1, %162 ]
  %191 = load ptr, ptr %23, align 8, !tbaa !51
  tail call void @lto_output_sleb128_stream(ptr noundef %191, i64 noundef %190) #9
  %192 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 13
  %193 = load ptr, ptr %192, align 8, !tbaa !79
  %194 = icmp eq ptr %193, null
  br i1 %194, label %239, label %195

195:                                              ; preds = %189, %195
  %196 = phi ptr [ %199, %195 ], [ %193, %189 ]
  %197 = phi i64 [ %201, %195 ], [ 1, %189 ]
  %198 = getelementptr inbounds %struct.cgraph_node, ptr %196, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !80
  %200 = icmp eq ptr %199, null
  %201 = add i64 %197, 1
  br i1 %200, label %202, label %195, !llvm.loop !81

202:                                              ; preds = %195
  %203 = load ptr, ptr %23, align 8, !tbaa !51
  tail call void @lto_output_uleb128_stream(ptr noundef %203, i64 noundef %197) #9
  br label %204

204:                                              ; preds = %231, %202
  %205 = phi ptr [ %196, %202 ], [ %237, %231 ]
  %206 = load ptr, ptr %65, align 8, !tbaa !17
  %207 = load ptr, ptr %23, align 8, !tbaa !51
  %208 = load ptr, ptr %205, align 8, !tbaa !66
  tail call void @lto_output_fn_decl_index(ptr noundef %206, ptr noundef %207, ptr noundef %208) #9
  %209 = getelementptr inbounds %struct.cgraph_node, ptr %205, i64 0, i32 22, i32 5
  %210 = load i8, ptr %209, align 2, !tbaa !82
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %229, label %212

212:                                              ; preds = %204
  %213 = getelementptr inbounds %struct.cgraph_node, ptr %205, i64 0, i32 22
  %214 = load ptr, ptr %23, align 8, !tbaa !51
  %215 = getelementptr inbounds %struct.cgraph_node, ptr %205, i64 0, i32 22, i32 3
  %216 = load i8, ptr %215, align 8, !tbaa !83
  %217 = icmp eq i8 %216, 0
  %218 = select i1 %217, i64 1, i64 3
  %219 = getelementptr inbounds %struct.cgraph_node, ptr %205, i64 0, i32 22, i32 4
  %220 = load i8, ptr %219, align 1, !tbaa !84
  %221 = icmp eq i8 %220, 0
  %222 = select i1 %221, i64 0, i64 4
  %223 = or disjoint i64 %222, %218
  tail call void @lto_output_uleb128_stream(ptr noundef %214, i64 noundef %223) #9
  %224 = load ptr, ptr %23, align 8, !tbaa !51
  %225 = load i64, ptr %213, align 8, !tbaa !85
  tail call void @lto_output_uleb128_stream(ptr noundef %224, i64 noundef %225) #9
  %226 = load ptr, ptr %23, align 8, !tbaa !51
  %227 = getelementptr inbounds %struct.cgraph_node, ptr %205, i64 0, i32 22, i32 1
  %228 = load i64, ptr %227, align 8, !tbaa !86
  tail call void @lto_output_uleb128_stream(ptr noundef %226, i64 noundef %228) #9
  br label %231

229:                                              ; preds = %204
  %230 = load ptr, ptr %23, align 8, !tbaa !51
  tail call void @lto_output_uleb128_stream(ptr noundef %230, i64 noundef 0) #9
  br label %231

231:                                              ; preds = %229, %212
  %232 = load ptr, ptr %65, align 8, !tbaa !17
  %233 = load ptr, ptr %23, align 8, !tbaa !51
  %234 = getelementptr inbounds %struct.cgraph_node, ptr %205, i64 0, i32 22, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !87
  tail call void @lto_output_fn_decl_index(ptr noundef %232, ptr noundef %233, ptr noundef %235) #9
  %236 = getelementptr inbounds %struct.cgraph_node, ptr %205, i64 0, i32 4
  %237 = load ptr, ptr %236, align 8, !tbaa !88
  %238 = icmp eq ptr %237, null
  br i1 %238, label %241, label %204, !llvm.loop !89

239:                                              ; preds = %189
  %240 = load ptr, ptr %23, align 8, !tbaa !51
  tail call void @lto_output_uleb128_stream(ptr noundef %240, i64 noundef 0) #9
  br label %241

241:                                              ; preds = %231, %239
  ret void
}

; Function Attrs: optsize
declare void @lto_bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_edge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lto_simple_output_block, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  tail call void @lto_output_uleb128_stream(ptr noundef %5, i64 noundef 4) #9
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = tail call i32 @lto_cgraph_encoder_lookup(ptr noundef %2, ptr noundef %7) #10
  %9 = sext i32 %8 to i64
  %10 = icmp eq i32 %8, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 145, ptr noundef nonnull @.str.1) #9
  br label %12

12:                                               ; preds = %3, %11
  %13 = load ptr, ptr %4, align 8, !tbaa !51
  tail call void @lto_output_sleb128_stream(ptr noundef %13, i64 noundef %9) #9
  %14 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !27
  %16 = tail call i32 @lto_cgraph_encoder_lookup(ptr noundef %2, ptr noundef %15) #10
  %17 = sext i32 %16 to i64
  %18 = icmp eq i32 %16, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 149, ptr noundef nonnull @.str.1) #9
  br label %20

20:                                               ; preds = %12, %19
  %21 = load ptr, ptr %4, align 8, !tbaa !51
  tail call void @lto_output_sleb128_stream(ptr noundef %21, i64 noundef %17) #9
  %22 = load ptr, ptr %4, align 8, !tbaa !51
  %23 = load i64, ptr %1, align 8, !tbaa !91
  tail call void @lto_output_sleb128_stream(ptr noundef %22, i64 noundef %23) #9
  %24 = tail call ptr @bitpack_create() #9
  %25 = load i32, ptr @flag_wpa, align 4, !tbaa !22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 10
  %29 = load i32, ptr %28, align 4, !tbaa !92
  br label %34

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !93
  %33 = tail call fastcc i32 @gimple_uid(ptr noundef %32) #10
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i32 [ %29, %27 ], [ %33, %30 ]
  %36 = zext i32 %35 to i64
  tail call void @bp_pack_value(ptr noundef %24, i64 noundef %36, i32 noundef 32) #9
  %37 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !94
  %39 = zext i32 %38 to i64
  tail call void @bp_pack_value(ptr noundef %24, i64 noundef %39, i32 noundef 32) #9
  %40 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 11
  %41 = load i32, ptr %40, align 8, !tbaa !95
  %42 = sext i32 %41 to i64
  tail call void @bp_pack_value(ptr noundef %24, i64 noundef %42, i32 noundef 32) #9
  %43 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 13
  %44 = load i16, ptr %43, align 8, !tbaa !96
  %45 = zext i16 %44 to i64
  tail call void @bp_pack_value(ptr noundef %24, i64 noundef %45, i32 noundef 30) #9
  %46 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 14
  %47 = load i8, ptr %46, align 2
  %48 = and i8 %47, 1
  %49 = zext nneg i8 %48 to i64
  tail call void @bp_pack_value(ptr noundef %24, i64 noundef %49, i32 noundef 1) #9
  %50 = load i8, ptr %46, align 2
  %51 = lshr i8 %50, 1
  %52 = and i8 %51, 1
  %53 = zext nneg i8 %52 to i64
  tail call void @bp_pack_value(ptr noundef %24, i64 noundef %53, i32 noundef 1) #9
  %54 = load i8, ptr %46, align 2
  %55 = lshr i8 %54, 2
  %56 = and i8 %55, 1
  %57 = zext nneg i8 %56 to i64
  tail call void @bp_pack_value(ptr noundef %24, i64 noundef %57, i32 noundef 1) #9
  %58 = load ptr, ptr %4, align 8, !tbaa !51
  tail call void @lto_output_bitpack(ptr noundef %58, ptr noundef %24) #9
  tail call void @bitpack_delete(ptr noundef %24) #9
  ret void
}

; Function Attrs: optsize
declare void @lto_output_uleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_output_1_stream(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_destroy_simple_output_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_output_sleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare { ptr, i32 } @cgraph_node_set_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @cgraph_function_body_availability(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @lto_forced_extern_inline_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_output_fn_decl_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitpack_create() local_unnamed_addr #2

; Function Attrs: optsize
declare void @bp_pack_value(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_output_bitpack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitpack_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !55
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @input_cgraph() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %3 = tail call ptr @lto_get_file_decl_data() #9
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %20, %0
  %7 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %26

9:                                                ; preds = %0, %20
  %10 = phi ptr [ %24, %20 ], [ %4, %0 ]
  %11 = phi i32 [ %21, %20 ], [ 1, %0 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %12 = call ptr @lto_create_simple_input_block(ptr noundef nonnull %10, i32 noundef 3, ptr noundef nonnull %1, ptr noundef nonnull %2) #9
  call fastcc void @input_profile_summary(ptr noundef %12) #10
  %13 = call ptr @lto_cgraph_encoder_new() #10
  %14 = getelementptr inbounds %struct.lto_file_decl_data, ptr %10, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !97
  call fastcc void @input_cgraph_1(ptr noundef nonnull %10, ptr noundef %12) #10
  %15 = load ptr, ptr %1, align 8, !tbaa !12
  %16 = load i64, ptr %2, align 8, !tbaa !99
  call void @lto_destroy_simple_input_block(ptr noundef nonnull %10, i32 noundef 3, ptr noundef %12, ptr noundef %15, i64 noundef %16) #9
  %17 = load i32, ptr @flag_wpa, align 4, !tbaa !22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %9
  call fastcc void @lto_mark_file_for_ltrans(ptr noundef nonnull %10) #10
  br label %20

20:                                               ; preds = %19, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #11
  %21 = add i32 %11, 1
  %22 = zext i32 %11 to i64
  %23 = getelementptr inbounds ptr, ptr %3, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %6, label %9, !llvm.loop !100

26:                                               ; preds = %6, %33
  %27 = phi ptr [ %35, %33 ], [ %7, %6 ]
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 18
  %29 = load ptr, ptr %28, align 8, !tbaa !101
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 16
  store ptr null, ptr %32, align 8, !tbaa !102
  br label %33

33:                                               ; preds = %26, %31
  %34 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %26, !llvm.loop !103

37:                                               ; preds = %33, %6
  ret void
}

; Function Attrs: optsize
declare ptr @lto_get_file_decl_data() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lto_create_simple_input_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @input_profile_summary(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @lto_input_uleb128(ptr noundef %0) #9
  %3 = trunc i64 %2 to i32
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @profile_info, align 8, !tbaa !12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  store ptr @lto_gcov_summary, ptr @profile_info, align 8, !tbaa !12
  store i32 %3, ptr getelementptr inbounds (%struct.gcov_ctr_summary, ptr @lto_gcov_summary, i64 0, i32 1), align 4, !tbaa !57
  %9 = tail call i64 @lto_input_sleb128(ptr noundef %0) #9
  store i64 %9, ptr getelementptr inbounds (%struct.gcov_ctr_summary, ptr @lto_gcov_summary, i64 0, i32 2), align 8, !tbaa !59
  %10 = tail call i64 @lto_input_sleb128(ptr noundef %0) #9
  store i64 %10, ptr getelementptr inbounds (%struct.gcov_ctr_summary, ptr @lto_gcov_summary, i64 0, i32 3), align 8, !tbaa !60
  %11 = tail call i64 @lto_input_sleb128(ptr noundef %0) #9
  store i64 %11, ptr getelementptr inbounds (%struct.gcov_ctr_summary, ptr @lto_gcov_summary, i64 0, i32 4), align 8, !tbaa !61
  br label %34

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %6, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !57
  %15 = icmp eq i32 %14, %3
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %6, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !59
  %19 = tail call i64 @lto_input_sleb128(ptr noundef %0) #9
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load ptr, ptr @profile_info, align 8, !tbaa !12
  %23 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %22, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !60
  %25 = tail call i64 @lto_input_sleb128(ptr noundef %0) #9
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load ptr, ptr @profile_info, align 8, !tbaa !12
  %29 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %28, i64 0, i32 4
  %30 = load i64, ptr %29, align 8, !tbaa !61
  %31 = tail call i64 @lto_input_sleb128(ptr noundef %0) #9
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %27, %21, %16, %12
  tail call void (ptr, ...) @sorry(ptr noundef nonnull @.str.2) #9
  br label %34

34:                                               ; preds = %8, %33, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @input_cgraph_1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store ptr null, ptr %3, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %5 = tail call i64 @lto_input_uleb128(ptr noundef %1) #9
  %6 = getelementptr inbounds %struct.lto_file_decl_data, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %23, %2
  %8 = phi ptr [ undef, %2 ], [ %24, %23 ]
  %9 = phi i64 [ %5, %2 ], [ %25, %23 ]
  %10 = trunc i64 %9 to i32
  switch i32 %10, label %13 [
    i32 0, label %26
    i32 4, label %11
  ]

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8, !tbaa !12
  tail call fastcc void @input_edge(ptr noundef %1, ptr noundef %12) #10
  br label %23

13:                                               ; preds = %7
  %14 = tail call fastcc ptr @input_node(ptr noundef %0, ptr noundef %1, i32 noundef %10) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !66
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.3) #9
  br label %20

20:                                               ; preds = %19, %16
  call fastcc void @VEC_cgraph_node_ptr_heap_safe_push(ptr noundef nonnull %3, ptr noundef %14) #10
  %21 = load ptr, ptr %6, align 8, !tbaa !97
  %22 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %21, ptr noundef %14) #10
  br label %23

23:                                               ; preds = %20, %11
  %24 = phi ptr [ %14, %20 ], [ %8, %11 ]
  %25 = tail call i64 @lto_input_uleb128(ptr noundef %1) #9
  br label %7, !llvm.loop !104

26:                                               ; preds = %7
  store ptr %8, ptr %4, align 8, !tbaa !12
  %27 = tail call i64 @lto_input_uleb128(ptr noundef %1) #9
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %45, %26
  %30 = load ptr, ptr %3, align 8
  %31 = call fastcc i32 @VEC_cgraph_node_ptr_base_iterate(ptr noundef %30, i32 noundef 0, ptr noundef nonnull %4) #10, !range !105
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %75, label %51

33:                                               ; preds = %26, %45
  %34 = phi i64 [ %49, %45 ], [ %27, %26 ]
  %35 = add i64 %34, 1
  %36 = tail call ptr @xmalloc(i64 noundef %35) #9
  br label %37

37:                                               ; preds = %33, %37
  %38 = phi i64 [ 0, %33 ], [ %43, %37 ]
  %39 = phi i32 [ 0, %33 ], [ %42, %37 ]
  %40 = tail call zeroext i8 @lto_input_1_unsigned(ptr noundef %1) #9
  %41 = getelementptr inbounds i8, ptr %36, i64 %38
  store i8 %40, ptr %41, align 1, !tbaa !55
  %42 = add i32 %39, 1
  %43 = zext i32 %42 to i64
  %44 = icmp ugt i64 %34, %43
  br i1 %44, label %37, label %45, !llvm.loop !106

45:                                               ; preds = %37
  %46 = trunc i64 %34 to i32
  %47 = tail call ptr @build_string(i32 noundef %46, ptr noundef nonnull %36) #9
  %48 = tail call ptr @cgraph_add_asm_node(ptr noundef %47) #9
  tail call void @free(ptr noundef nonnull %36) #10
  %49 = tail call i64 @lto_input_uleb128(ptr noundef %1) #9
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %29, label %33, !llvm.loop !107

51:                                               ; preds = %29, %70
  %52 = phi i32 [ %72, %70 ], [ 0, %29 ]
  %53 = load ptr, ptr %4, align 8, !tbaa !12
  %54 = getelementptr inbounds %struct.cgraph_node, ptr %53, i64 0, i32 19, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !31
  %56 = ptrtoint ptr %55 to i64
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %61, label %59

59:                                               ; preds = %51
  %60 = tail call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %30, i32 noundef %57) #10
  br label %61

61:                                               ; preds = %51, %59
  %62 = phi ptr [ %60, %59 ], [ null, %51 ]
  store ptr %62, ptr %54, align 8, !tbaa !31
  %63 = getelementptr inbounds %struct.cgraph_node, ptr %53, i64 0, i32 14
  %64 = load ptr, ptr %63, align 8, !tbaa !39
  %65 = ptrtoint ptr %64 to i64
  %66 = trunc i64 %65 to i32
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %70, label %68

68:                                               ; preds = %61
  %69 = tail call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %30, i32 noundef %66) #10
  br label %70

70:                                               ; preds = %61, %68
  %71 = phi ptr [ %69, %68 ], [ null, %61 ]
  store ptr %71, ptr %63, align 8, !tbaa !39
  %72 = add i32 %52, 1
  %73 = call fastcc i32 @VEC_cgraph_node_ptr_base_iterate(ptr noundef %30, i32 noundef %72, ptr noundef nonnull %4) #10, !range !105
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %51, !llvm.loop !108

75:                                               ; preds = %70, %29
  call fastcc void @VEC_cgraph_node_ptr_heap_free(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare void @lto_destroy_simple_input_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @lto_mark_file_for_ltrans(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.lto_file_decl_data, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8
  %4 = or i8 %3, 1
  store i8 %4, ptr %2, align 8
  ret void
}

; Function Attrs: optsize
declare i64 @lto_input_uleb128(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @lto_input_sleb128(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sorry(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @input_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call i64 @lto_input_sleb128(ptr noundef %0) #9
  %4 = trunc i64 %3 to i32
  %5 = tail call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %1, i32 noundef %4) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !66
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.4) #9
  br label %11

11:                                               ; preds = %10, %7
  %12 = tail call i64 @lto_input_sleb128(ptr noundef %0) #9
  %13 = trunc i64 %12 to i32
  %14 = tail call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %1, i32 noundef %13) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %14, align 8, !tbaa !66
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %11
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.5) #9
  br label %20

20:                                               ; preds = %19, %16
  %21 = tail call i64 @lto_input_sleb128(ptr noundef %0) #9
  %22 = tail call ptr @lto_input_bitpack(ptr noundef %0) #9
  %23 = tail call i64 @bp_unpack_value(ptr noundef %22, i32 noundef 32) #9
  %24 = tail call i64 @bp_unpack_value(ptr noundef %22, i32 noundef 32) #9
  %25 = tail call i64 @bp_unpack_value(ptr noundef %22, i32 noundef 32) #9
  %26 = tail call i64 @bp_unpack_value(ptr noundef %22, i32 noundef 30) #9
  %27 = load ptr, ptr %5, align 8, !tbaa !66
  %28 = tail call i32 @lto_symtab_get_resolution(ptr noundef %27) #9
  %29 = and i32 %28, -2
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %60, label %31

31:                                               ; preds = %20
  %32 = trunc i64 %26 to i32
  %33 = trunc i64 %25 to i32
  %34 = trunc i64 %24 to i32
  %35 = trunc i64 %23 to i32
  %36 = tail call ptr @cgraph_create_edge(ptr noundef nonnull %5, ptr noundef %14, ptr noundef null, i64 noundef %21, i32 noundef %33, i32 noundef %32) #9
  %37 = getelementptr inbounds %struct.cgraph_edge, ptr %36, i64 0, i32 10
  store i32 %35, ptr %37, align 4, !tbaa !92
  %38 = getelementptr inbounds %struct.cgraph_edge, ptr %36, i64 0, i32 9
  store i32 %34, ptr %38, align 8, !tbaa !94
  %39 = tail call i64 @bp_unpack_value(ptr noundef %22, i32 noundef 1) #9
  %40 = getelementptr inbounds %struct.cgraph_edge, ptr %36, i64 0, i32 14
  %41 = trunc i64 %39 to i8
  %42 = load i8, ptr %40, align 2
  %43 = and i8 %41, 1
  %44 = and i8 %42, -2
  %45 = or disjoint i8 %44, %43
  store i8 %45, ptr %40, align 2
  %46 = tail call i64 @bp_unpack_value(ptr noundef %22, i32 noundef 1) #9
  %47 = trunc i64 %46 to i8
  %48 = load i8, ptr %40, align 2
  %49 = shl i8 %47, 1
  %50 = and i8 %49, 2
  %51 = and i8 %48, -3
  %52 = or disjoint i8 %50, %51
  store i8 %52, ptr %40, align 2
  %53 = tail call i64 @bp_unpack_value(ptr noundef %22, i32 noundef 1) #9
  %54 = trunc i64 %53 to i8
  %55 = load i8, ptr %40, align 2
  %56 = shl i8 %54, 2
  %57 = and i8 %56, 4
  %58 = and i8 %55, -5
  %59 = or disjoint i8 %57, %58
  store i8 %59, ptr %40, align 2
  tail call void @bitpack_delete(ptr noundef %22) #9
  br label %60

60:                                               ; preds = %20, %31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @input_node(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call i64 @lto_input_uleb128(ptr noundef %1) #9
  %5 = icmp eq i64 %4, 0
  %6 = tail call i64 @lto_input_uleb128(ptr noundef %1) #9
  %7 = trunc i64 %6 to i32
  %8 = tail call fastcc ptr @lto_file_decl_data_get_fn_decl(ptr noundef %0, i32 noundef %7) #10
  %9 = tail call ptr @cgraph_node(ptr noundef %8) #9
  br i1 %5, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call ptr @cgraph_clone_node(ptr noundef %9, i64 noundef 0, i32 noundef 1000, i32 noundef 0, i8 noundef zeroext 0, ptr noundef null) #9
  br label %12

12:                                               ; preds = %3, %10
  %13 = phi ptr [ %11, %10 ], [ %9, %3 ]
  %14 = tail call i64 @lto_input_sleb128(ptr noundef %1) #9
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 23
  store i64 %14, ptr %15, align 8, !tbaa !67
  %16 = tail call ptr @lto_input_bitpack(ptr noundef %1) #9
  %17 = icmp eq i32 %2, 3
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  %19 = tail call i64 @lto_input_sleb128(ptr noundef %1) #9
  %20 = trunc i64 %19 to i32
  %21 = tail call i64 @lto_input_sleb128(ptr noundef %1) #9
  %22 = trunc i64 %21 to i32
  %23 = tail call i64 @lto_input_sleb128(ptr noundef %1) #9
  %24 = trunc i64 %23 to i32
  %25 = tail call i64 @lto_input_sleb128(ptr noundef %1) #9
  %26 = trunc i64 %25 to i32
  %27 = tail call i64 @lto_input_sleb128(ptr noundef %1) #9
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %18, %12
  %30 = phi i32 [ %26, %18 ], [ 0, %12 ]
  %31 = phi i32 [ %22, %18 ], [ 0, %12 ]
  %32 = phi i32 [ %28, %18 ], [ 0, %12 ]
  %33 = phi i32 [ %24, %18 ], [ 0, %12 ]
  %34 = phi i32 [ %20, %18 ], [ 0, %12 ]
  %35 = tail call i64 @lto_input_sleb128(ptr noundef %1) #9
  %36 = tail call i64 @lto_input_sleb128(ptr noundef %1) #9
  %37 = tail call i64 @lto_input_sleb128(ptr noundef %1) #9
  %38 = tail call i64 @lto_input_sleb128(ptr noundef %1) #9
  %39 = trunc i64 %38 to i32
  %40 = tail call i64 @lto_input_sleb128(ptr noundef %1) #9
  %41 = trunc i64 %40 to i32
  %42 = tail call i64 @lto_input_sleb128(ptr noundef %1) #9
  %43 = trunc i64 %42 to i32
  %44 = tail call i64 @lto_input_uleb128(ptr noundef %1) #9
  %45 = trunc i64 %44 to i8
  %46 = tail call i64 @lto_input_sleb128(ptr noundef %1) #9
  %47 = tail call i64 @lto_input_uleb128(ptr noundef %1) #9
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 16
  %49 = load ptr, ptr %48, align 8, !tbaa !102
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %29
  %52 = load ptr, ptr %13, align 8, !tbaa !66
  %53 = getelementptr inbounds %struct.tree_decl_minimal, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !55
  %55 = icmp ult i32 %54, 2
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 24
  %58 = load i32, ptr %57, align 8, !tbaa !109
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.6, i32 noundef %58) #9
  br label %59

59:                                               ; preds = %56, %51, %29
  tail call fastcc void @input_overwrite_node(ptr noundef %0, ptr noundef nonnull %13, i32 noundef %2, ptr noundef %16, i32 noundef %34, i32 noundef %30, i32 noundef %32, i32 noundef %31, i32 noundef %33) #10
  tail call void @bitpack_delete(ptr noundef %16) #9
  %60 = shl i64 %35, 32
  %61 = ashr exact i64 %60, 32
  %62 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 19
  store i64 %61, ptr %62, align 8, !tbaa !73
  %63 = shl i64 %36, 32
  %64 = ashr exact i64 %63, 32
  %65 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 19, i32 1
  store i64 %64, ptr %65, align 8, !tbaa !74
  %66 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 19, i32 3
  store i32 %39, ptr %66, align 8, !tbaa !75
  %67 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 19, i32 4
  store i32 %41, ptr %67, align 4, !tbaa !76
  %68 = shl i64 %37, 32
  %69 = ashr exact i64 %68, 32
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 19, i32 2
  store ptr %70, ptr %71, align 8, !tbaa !31
  %72 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 19, i32 5
  store i32 %43, ptr %72, align 8, !tbaa !77
  %73 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 19, i32 6
  store i8 %45, ptr %73, align 4, !tbaa !78
  %74 = shl i64 %46, 32
  %75 = ashr exact i64 %74, 32
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 14
  store ptr %76, ptr %77, align 8, !tbaa !39
  %78 = icmp eq i64 %47, 0
  br i1 %78, label %108, label %79

79:                                               ; preds = %59, %106
  %80 = phi i64 [ %81, %106 ], [ %47, %59 ]
  %81 = add i64 %80, -1
  %82 = tail call i64 @lto_input_uleb128(ptr noundef %1) #9
  %83 = trunc i64 %82 to i32
  %84 = tail call fastcc ptr @lto_file_decl_data_get_fn_decl(ptr noundef %0, i32 noundef %83) #10
  %85 = tail call i64 @lto_input_uleb128(ptr noundef %1) #9
  %86 = trunc i64 %85 to i32
  %87 = icmp eq i32 %86, 0
  %88 = tail call i64 @lto_input_uleb128(ptr noundef %1) #9
  br i1 %87, label %89, label %93

89:                                               ; preds = %79
  %90 = trunc i64 %88 to i32
  %91 = tail call fastcc ptr @lto_file_decl_data_get_fn_decl(ptr noundef %0, i32 noundef %90) #10
  %92 = tail call zeroext i8 @cgraph_same_body_alias(ptr noundef %84, ptr noundef %91) #9
  br label %106

93:                                               ; preds = %79
  %94 = tail call i64 @lto_input_uleb128(ptr noundef %1) #9
  %95 = tail call i64 @lto_input_uleb128(ptr noundef %1) #9
  %96 = trunc i64 %95 to i32
  %97 = tail call fastcc ptr @lto_file_decl_data_get_fn_decl(ptr noundef %0, i32 noundef %96) #10
  %98 = trunc i64 %85 to i8
  %99 = and i8 %98, 2
  %100 = and i32 %86, 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %93
  %103 = tail call ptr @size_int_kind(i64 noundef %94, i32 noundef 0) #9
  br label %104

104:                                              ; preds = %93, %102
  %105 = phi ptr [ %103, %102 ], [ null, %93 ]
  tail call void @cgraph_add_thunk(ptr noundef %84, ptr noundef %8, i8 noundef zeroext %99, i64 noundef %88, i64 noundef %94, ptr noundef %105, ptr noundef %97) #9
  br label %106

106:                                              ; preds = %104, %89
  %107 = icmp eq i64 %81, 0
  br i1 %107, label %108, label %79, !llvm.loop !110

108:                                              ; preds = %106, %59
  ret ptr %13
}

; Function Attrs: optsize
declare void @internal_error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @lto_input_1_unsigned(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cgraph_add_asm_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_cgraph_node_ptr_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !13
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !12
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @lto_input_bitpack(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @bp_unpack_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lto_symtab_get_resolution(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cgraph_create_edge(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lto_file_decl_data_get_fn_decl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !111
  %4 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 2, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !112
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1043, ptr noundef nonnull @.str.1) #9
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @cgraph_clone_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @input_overwrite_node(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = zext i32 %2 to i64
  %11 = inttoptr i64 %10 to ptr
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 16
  store ptr %11, ptr %12, align 8, !tbaa !102
  %13 = zext i32 %4 to i64
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1
  store i64 %13, ptr %15, align 8, !tbaa !68
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1, i32 3
  store i32 %5, ptr %16, align 8, !tbaa !71
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1, i32 4
  store i32 %6, ptr %17, align 4, !tbaa !72
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1, i32 1
  store i32 %7, ptr %18, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1, i32 2
  store i32 %8, ptr %19, align 4, !tbaa !70
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 3
  store i32 %5, ptr %20, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 4
  store i32 %7, ptr %21, align 4, !tbaa !76
  store ptr %0, ptr %14, align 8, !tbaa !101
  %22 = tail call i64 @bp_unpack_value(ptr noundef %3, i32 noundef 1) #9
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 2
  %24 = trunc i64 %22 to i8
  %25 = load i8, ptr %23, align 8
  %26 = and i8 %24, 1
  %27 = and i8 %25, -2
  %28 = or disjoint i8 %27, %26
  store i8 %28, ptr %23, align 8
  %29 = tail call i64 @bp_unpack_value(ptr noundef %3, i32 noundef 1) #9
  %30 = trunc i64 %29 to i8
  %31 = load i8, ptr %23, align 8
  %32 = shl i8 %30, 1
  %33 = and i8 %32, 2
  %34 = and i8 %31, -3
  %35 = or disjoint i8 %33, %34
  store i8 %35, ptr %23, align 8
  %36 = tail call i64 @bp_unpack_value(ptr noundef %3, i32 noundef 1) #9
  %37 = trunc i64 %36 to i8
  %38 = load i8, ptr %23, align 8
  %39 = shl i8 %37, 2
  %40 = and i8 %39, 4
  %41 = and i8 %38, -5
  %42 = or disjoint i8 %40, %41
  store i8 %42, ptr %23, align 8
  %43 = tail call i64 @bp_unpack_value(ptr noundef %3, i32 noundef 1) #9
  %44 = trunc i64 %43 to i8
  %45 = load i8, ptr %23, align 8
  %46 = shl i8 %44, 3
  %47 = and i8 %46, 8
  %48 = and i8 %45, -9
  %49 = or disjoint i8 %47, %48
  store i8 %49, ptr %23, align 8
  %50 = tail call i64 @bp_unpack_value(ptr noundef %3, i32 noundef 1) #9
  %51 = trunc i64 %50 to i8
  %52 = load i8, ptr %23, align 8
  %53 = shl i8 %51, 4
  %54 = and i8 %53, 16
  %55 = and i8 %52, -17
  %56 = or disjoint i8 %54, %55
  store i8 %56, ptr %23, align 8
  %57 = tail call i64 @bp_unpack_value(ptr noundef %3, i32 noundef 1) #9
  %58 = trunc i64 %57 to i8
  %59 = load i8, ptr %23, align 8
  %60 = shl i8 %58, 5
  %61 = and i8 %60, 32
  %62 = and i8 %59, -33
  %63 = or disjoint i8 %61, %62
  store i8 %63, ptr %23, align 8
  %64 = tail call i64 @bp_unpack_value(ptr noundef %3, i32 noundef 1) #9
  %65 = trunc i64 %64 to i8
  %66 = load i8, ptr %23, align 8
  %67 = shl i8 %65, 6
  %68 = and i8 %67, 64
  %69 = and i8 %66, -65
  %70 = or disjoint i8 %68, %69
  store i8 %70, ptr %23, align 8
  %71 = tail call i64 @bp_unpack_value(ptr noundef %3, i32 noundef 1) #9
  %72 = trunc i64 %71 to i8
  %73 = load i8, ptr %23, align 8
  %74 = shl i8 %72, 7
  %75 = and i8 %73, 127
  %76 = or disjoint i8 %75, %74
  store i8 %76, ptr %23, align 8
  %77 = tail call i64 @bp_unpack_value(ptr noundef %3, i32 noundef 1) #9
  %78 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 27
  %79 = trunc i64 %77 to i16
  %80 = load i16, ptr %78, align 4
  %81 = and i16 %79, 1
  %82 = and i16 %80, -2
  %83 = or disjoint i16 %82, %81
  store i16 %83, ptr %78, align 4
  %84 = tail call i64 @bp_unpack_value(ptr noundef %3, i32 noundef 1) #9
  %85 = trunc i64 %84 to i16
  %86 = load i16, ptr %78, align 4
  %87 = shl i16 %85, 1
  %88 = and i16 %87, 2
  %89 = and i16 %86, -3
  %90 = or disjoint i16 %88, %89
  store i16 %90, ptr %78, align 4
  %91 = tail call i64 @bp_unpack_value(ptr noundef %3, i32 noundef 1) #9
  %92 = trunc i64 %91 to i16
  %93 = load i16, ptr %78, align 4
  %94 = shl i16 %92, 2
  %95 = and i16 %94, 4
  %96 = and i16 %93, -5
  %97 = or disjoint i16 %95, %96
  store i16 %97, ptr %78, align 4
  %98 = tail call i64 @bp_unpack_value(ptr noundef %3, i32 noundef 1) #9
  %99 = trunc i64 %98 to i16
  %100 = load i16, ptr %78, align 4
  %101 = shl i16 %99, 3
  %102 = and i16 %101, 8
  %103 = and i16 %100, -9
  %104 = or disjoint i16 %102, %103
  store i16 %104, ptr %78, align 4
  %105 = tail call i64 @bp_unpack_value(ptr noundef %3, i32 noundef 1) #9
  %106 = trunc i64 %105 to i16
  %107 = load i16, ptr %78, align 4
  %108 = shl i16 %106, 4
  %109 = and i16 %108, 16
  %110 = and i16 %107, -17
  %111 = or disjoint i16 %109, %110
  store i16 %111, ptr %78, align 4
  %112 = tail call i64 @bp_unpack_value(ptr noundef %3, i32 noundef 1) #9
  %113 = trunc i64 %112 to i16
  %114 = load i16, ptr %78, align 4
  %115 = shl i16 %113, 5
  %116 = and i16 %115, 32
  %117 = and i16 %114, -33
  %118 = or disjoint i16 %116, %117
  store i16 %118, ptr %78, align 4
  %119 = tail call i64 @bp_unpack_value(ptr noundef %3, i32 noundef 1) #9
  %120 = trunc i64 %119 to i16
  %121 = load i16, ptr %78, align 4
  %122 = shl i16 %120, 6
  %123 = and i16 %122, 64
  %124 = and i16 %121, -65
  %125 = or disjoint i16 %123, %124
  store i16 %125, ptr %78, align 4
  %126 = tail call i64 @bp_unpack_value(ptr noundef %3, i32 noundef 1) #9
  %127 = trunc i64 %126 to i16
  %128 = load i16, ptr %78, align 4
  %129 = shl i16 %127, 7
  %130 = and i16 %129, 128
  %131 = and i16 %128, -129
  %132 = or disjoint i16 %130, %131
  store i16 %132, ptr %78, align 4
  %133 = tail call i64 @bp_unpack_value(ptr noundef %3, i32 noundef 1) #9
  %134 = trunc i64 %133 to i16
  %135 = load i16, ptr %78, align 4
  %136 = shl i16 %134, 8
  %137 = and i16 %136, 256
  %138 = and i16 %135, -257
  %139 = or disjoint i16 %137, %138
  store i16 %139, ptr %78, align 4
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @cgraph_same_body_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cgraph_add_thunk(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"lto_cgraph_encoder_d", !8, i64 0, !8, i64 8}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!7, !8, i64 8}
!12 = !{!8, !8, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"VEC_cgraph_node_ptr_base", !15, i64 0, !15, i64 4, !9, i64 8}
!15 = !{!"int", !9, i64 0}
!16 = !{!14, !15, i64 4}
!17 = !{!18, !8, i64 8}
!18 = !{!"lto_simple_output_block", !15, i64 0, !8, i64 8, !8, i64 16}
!19 = !{!20, !8, i64 168}
!20 = !{!"lto_out_decl_state", !9, i64 0, !8, i64 168, !8, i64 176}
!21 = !{i64 0, i64 8, !12, i64 8, i64 4, !22}
!22 = !{!15, !15, i64 0}
!23 = !{i64 0, i64 4, !22}
!24 = !{i8 0, i8 2}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!28, !8, i64 16}
!28 = !{!"cgraph_edge", !29, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !15, i64 72, !15, i64 76, !15, i64 80, !15, i64 84, !30, i64 88, !15, i64 90, !15, i64 90, !15, i64 90}
!29 = !{!"long", !9, i64 0}
!30 = !{!"short", !9, i64 0}
!31 = !{!32, !8, i64 200}
!32 = !{!"cgraph_node", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !33, i64 144, !35, i64 184, !36, i64 224, !37, i64 232, !38, i64 256, !29, i64 288, !15, i64 296, !15, i64 300, !15, i64 304, !15, i64 308, !15, i64 308, !15, i64 308, !15, i64 308, !15, i64 308, !15, i64 308, !15, i64 308, !15, i64 308, !15, i64 309, !15, i64 309}
!33 = !{!"cgraph_local_info", !8, i64 0, !34, i64 8, !15, i64 32, !15, i64 32, !15, i64 32, !15, i64 32, !15, i64 32, !15, i64 32, !15, i64 32, !15, i64 32}
!34 = !{!"inline_summary", !29, i64 0, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!35 = !{!"cgraph_global_info", !29, i64 0, !29, i64 8, !8, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !9, i64 36}
!36 = !{!"cgraph_rtl_info", !15, i64 0}
!37 = !{!"cgraph_clone_info", !8, i64 0, !8, i64 8, !8, i64 16}
!38 = !{!"cgraph_thunk_info", !29, i64 0, !29, i64 8, !8, i64 16, !9, i64 24, !9, i64 25, !9, i64 26}
!39 = !{!32, !8, i64 112}
!40 = distinct !{!40, !26}
!41 = distinct !{!41, !26}
!42 = distinct !{!42, !26}
!43 = distinct !{!43, !26}
!44 = distinct !{!44, !26}
!45 = !{!32, !8, i64 8}
!46 = !{!28, !8, i64 48}
!47 = distinct !{!47, !26}
!48 = !{!28, !8, i64 40}
!49 = distinct !{!49, !26}
!50 = distinct !{!50, !26}
!51 = !{!18, !8, i64 16}
!52 = distinct !{!52, !26}
!53 = !{!54, !8, i64 8}
!54 = !{!"cgraph_asm_node", !8, i64 0, !8, i64 8, !15, i64 16}
!55 = !{!9, !9, i64 0}
!56 = distinct !{!56, !26}
!57 = !{!58, !15, i64 4}
!58 = !{!"gcov_ctr_summary", !15, i64 0, !15, i64 4, !29, i64 8, !29, i64 16, !29, i64 24}
!59 = !{!58, !29, i64 8}
!60 = !{!58, !29, i64 16}
!61 = !{!58, !29, i64 24}
!62 = !{!63, !8, i64 8}
!63 = !{!"cgraph_node_set_def", !8, i64 0, !8, i64 8, !8, i64 16}
!64 = !{!65, !15, i64 8}
!65 = !{!"", !8, i64 0, !15, i64 8}
!66 = !{!32, !8, i64 0}
!67 = !{!32, !29, i64 288}
!68 = !{!32, !29, i64 152}
!69 = !{!32, !15, i64 160}
!70 = !{!32, !15, i64 164}
!71 = !{!32, !15, i64 168}
!72 = !{!32, !15, i64 172}
!73 = !{!32, !29, i64 184}
!74 = !{!32, !29, i64 192}
!75 = !{!32, !15, i64 208}
!76 = !{!32, !15, i64 212}
!77 = !{!32, !15, i64 216}
!78 = !{!32, !9, i64 220}
!79 = !{!32, !8, i64 104}
!80 = !{!32, !8, i64 24}
!81 = distinct !{!81, !26}
!82 = !{!32, !9, i64 282}
!83 = !{!32, !9, i64 280}
!84 = !{!32, !9, i64 281}
!85 = !{!32, !29, i64 256}
!86 = !{!32, !29, i64 264}
!87 = !{!32, !8, i64 272}
!88 = !{!32, !8, i64 32}
!89 = distinct !{!89, !26}
!90 = !{!28, !8, i64 8}
!91 = !{!28, !29, i64 0}
!92 = !{!28, !15, i64 76}
!93 = !{!28, !8, i64 56}
!94 = !{!28, !15, i64 72}
!95 = !{!28, !15, i64 80}
!96 = !{!28, !30, i64 88}
!97 = !{!98, !8, i64 16}
!98 = !{!"lto_file_decl_data", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !15, i64 40, !8, i64 48, !8, i64 56}
!99 = !{!29, !29, i64 0}
!100 = distinct !{!100, !26}
!101 = !{!32, !8, i64 144}
!102 = !{!32, !8, i64 128}
!103 = distinct !{!103, !26}
!104 = distinct !{!104, !26}
!105 = !{i32 0, i32 2}
!106 = distinct !{!106, !26}
!107 = distinct !{!107, !26}
!108 = distinct !{!108, !26}
!109 = !{!32, !15, i64 296}
!110 = distinct !{!110, !26}
!111 = !{!98, !8, i64 0}
!112 = !{!113, !15, i64 8}
!113 = !{!"lto_tree_ref_table", !8, i64 0, !15, i64 8}
!114 = !{!113, !8, i64 0}
