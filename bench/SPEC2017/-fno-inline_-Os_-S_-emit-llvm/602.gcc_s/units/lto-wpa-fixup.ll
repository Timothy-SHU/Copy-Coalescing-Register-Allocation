; ModuleID = 'lto-wpa-fixup.c'
source_filename = "lto-wpa-fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ipa_opt_pass_d = type { %struct.opt_pass, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.cgraph_node_set_iterator = type { ptr, i32 }
%struct.lto_simple_output_block = type { i32, ptr, ptr }
%struct.cgraph_node_set_def = type { ptr, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x ptr] }
%struct.lto_tree_ref_table = type { ptr, i32 }

@flag_wpa = external local_unnamed_addr global i32, align 4
@lto_nothrow_fndecls = internal unnamed_addr global ptr null, align 8
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"lto-wpa-fixup.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@pass_ipa_lto_wpa_fixup = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str.2, ptr @gate_wpa_fixup, ptr null, ptr null, ptr null, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 1 }, ptr null, ptr @lto_output_wpa_fixup, ptr @lto_input_wpa_fixup, ptr null, ptr null, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"lto_wpa_fixup\00", align 1
@flag_ltrans = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"./lto-streamer.h\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_fixup_nothrow_decls() local_unnamed_addr #0 {
  %1 = load i32, ptr @flag_wpa, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = load ptr, ptr @lto_nothrow_fndecls, align 8
  %4 = icmp eq ptr %3, null
  %5 = select i1 %2, i1 true, i1 %4
  %6 = load ptr, ptr @cgraph_nodes, align 8
  %7 = icmp eq ptr %6, null
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %51, label %9

9:                                                ; preds = %0, %47
  %10 = phi ptr [ %49, %47 ], [ %6, %0 ]
  %11 = load ptr, ptr @lto_nothrow_fndecls, align 8, !tbaa !10
  %12 = load ptr, ptr %10, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !21
  %15 = tail call i32 @bitmap_bit_p(ptr noundef %11, i32 noundef %14) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr %10, align 8, !tbaa !12
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 33554432
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 106, ptr noundef nonnull @.str.1) #9
  br label %23

23:                                               ; preds = %17, %22
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %23, %43
  %28 = phi ptr [ %45, %43 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.cgraph_edge, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = load ptr, ptr %30, align 8, !tbaa !12
  %32 = getelementptr inbounds %struct.tree_function_decl, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !21
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %28, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !25
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 111, ptr noundef nonnull @.str.1) #9
  br label %38

38:                                               ; preds = %27, %37
  %39 = tail call i32 @lookup_stmt_eh_lp_fn(ptr noundef %33, ptr noundef %35) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call zeroext i8 @remove_stmt_from_eh_lp_fn(ptr noundef %33, ptr noundef %35) #9
  br label %43

43:                                               ; preds = %38, %41
  %44 = getelementptr inbounds %struct.cgraph_edge, ptr %28, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !10
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %27, !llvm.loop !26

47:                                               ; preds = %43, %23, %9
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !10
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %9, !llvm.loop !28

51:                                               ; preds = %47, %0
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lookup_stmt_eh_lp_fn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @remove_stmt_from_eh_lp_fn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_mark_nothrow_fndecl(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 29
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 123, ptr noundef nonnull @.str.1) #9
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @lto_nothrow_fndecls, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call ptr @lto_bitmap_alloc() #9
  store ptr %10, ptr @lto_nothrow_fndecls, align 8, !tbaa !10
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %10, %9 ], [ %7, %6 ]
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !21
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %12, i32 noundef %14) #9
  ret void
}

; Function Attrs: optsize
declare ptr @lto_bitmap_alloc() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_wpa_fixup() #0 {
  %1 = load i32, ptr @flag_wpa, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_ltrans, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @gate_lto_out() #9
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %0, %6
  %11 = phi i8 [ %9, %6 ], [ 0, %0 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @lto_output_wpa_fixup(ptr noundef %0) #0 {
  %2 = alloca %struct.cgraph_node_set_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr null, ptr %3, align 8, !tbaa !10
  %4 = tail call ptr @lto_create_simple_output_block(i32 noundef 8) #9
  %5 = tail call ptr @lto_bitmap_alloc() #9
  %6 = load ptr, ptr @lto_nothrow_fndecls, align 8, !tbaa !10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %62, label %8

8:                                                ; preds = %1
  %9 = tail call fastcc ptr @csi_start(ptr noundef %0) #11
  store ptr %9, ptr %2, align 8, !tbaa.struct !29
  %10 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 0, ptr %10, align 8, !tbaa.struct !30
  %11 = tail call fastcc zeroext i8 @csi_end_p(ptr %9, i32 0) #11, !range !31
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %62

13:                                               ; preds = %8, %55
  %14 = phi i32 [ %57, %55 ], [ 0, %8 ]
  %15 = phi ptr [ %56, %55 ], [ %9, %8 ]
  %16 = tail call fastcc ptr @csi_node(ptr %15, i32 %14) #11
  %17 = load ptr, ptr %16, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !21
  %20 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %19) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %13
  %23 = load i32, ptr %18, align 4, !tbaa !21
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %23) #9
  %25 = load ptr, ptr @lto_nothrow_fndecls, align 8, !tbaa !10
  %26 = load i32, ptr %18, align 4, !tbaa !21
  %27 = tail call i32 @bitmap_bit_p(ptr noundef %25, i32 noundef %26) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %3, ptr noundef nonnull %17) #11
  br label %30

30:                                               ; preds = %22, %29, %13
  %31 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %55, label %34

34:                                               ; preds = %30, %51
  %35 = phi ptr [ %53, %51 ], [ %32, %30 ]
  %36 = getelementptr inbounds %struct.cgraph_edge, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !32
  %38 = load ptr, ptr %37, align 8, !tbaa !12
  %39 = getelementptr inbounds %struct.tree_decl_minimal, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !21
  %41 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %40) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = load i32, ptr %39, align 4, !tbaa !21
  %45 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %44) #9
  %46 = load ptr, ptr @lto_nothrow_fndecls, align 8, !tbaa !10
  %47 = load i32, ptr %39, align 4, !tbaa !21
  %48 = tail call i32 @bitmap_bit_p(ptr noundef %46, i32 noundef %47) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %3, ptr noundef nonnull %38) #11
  br label %51

51:                                               ; preds = %34, %50, %43
  %52 = getelementptr inbounds %struct.cgraph_edge, ptr %35, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !10
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %34, !llvm.loop !33

55:                                               ; preds = %51, %30
  call fastcc void @csi_next(ptr noundef nonnull %2) #11
  %56 = load ptr, ptr %2, align 8
  %57 = load i32, ptr %10, align 8
  %58 = tail call fastcc zeroext i8 @csi_end_p(ptr %56, i32 %57) #11, !range !31
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %13, label %60, !llvm.loop !34

60:                                               ; preds = %55
  %61 = load ptr, ptr %3, align 8
  br label %62

62:                                               ; preds = %60, %8, %1
  %63 = phi ptr [ %61, %60 ], [ null, %8 ], [ null, %1 ]
  %64 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %63) #11
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.lto_simple_output_block, ptr %4, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !35
  tail call void @lto_output_uleb128_stream(ptr noundef %67, i64 noundef %65) #9
  %68 = icmp eq i32 %64, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.lto_simple_output_block, ptr %4, i64 0, i32 1
  br label %71

71:                                               ; preds = %69, %71
  %72 = phi i64 [ 0, %69 ], [ %77, %71 ]
  %73 = trunc i64 %72 to i32
  %74 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %63, i32 noundef %73) #11
  %75 = load ptr, ptr %70, align 8, !tbaa !37
  %76 = load ptr, ptr %66, align 8, !tbaa !35
  tail call void @lto_output_fn_decl_index(ptr noundef %75, ptr noundef %76, ptr noundef %74) #9
  %77 = add nuw nsw i64 %72, 1
  %78 = icmp eq i64 %77, %65
  br i1 %78, label %79, label %71, !llvm.loop !38

79:                                               ; preds = %71, %62
  tail call void @lto_destroy_simple_output_block(ptr noundef nonnull %4) #9
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %3) #11
  tail call void @lto_bitmap_free(ptr noundef %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @lto_input_wpa_fixup() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %3 = tail call ptr @lto_get_file_decl_data() #9
  %4 = load i32, ptr @flag_ltrans, align 4, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr %3, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %6, %9
  %10 = phi i64 [ %12, %9 ], [ 0, %6 ]
  %11 = phi ptr [ %17, %9 ], [ %7, %6 ]
  %12 = add nuw i64 %10, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %13 = call ptr @lto_create_simple_input_block(ptr noundef nonnull %11, i32 noundef 8, ptr noundef nonnull %1, ptr noundef nonnull %2) #9
  call fastcc void @lto_input_wpa_fixup_1(ptr noundef nonnull %11, ptr noundef %13) #11
  %14 = load ptr, ptr %1, align 8, !tbaa !10
  %15 = load i64, ptr %2, align 8, !tbaa !39
  call void @lto_destroy_simple_input_block(ptr noundef nonnull %11, i32 noundef 8, ptr noundef %13, ptr noundef %14, i64 noundef %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #10
  %16 = getelementptr inbounds ptr, ptr %3, i64 %12
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !40

19:                                               ; preds = %9, %6, %0
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gate_lto_out() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lto_create_simple_output_block(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @csi_start(ptr noundef %0) unnamed_addr #3 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @csi_end_p(ptr nocapture readonly %0, i32 %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef %4) #11
  %6 = icmp ule i32 %5, %1
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @csi_node(ptr nocapture readonly %0, i32 %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = tail call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %4, i32 noundef %1) #11
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #11
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @csi_next(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.cgraph_node_set_iterator, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !45
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @lto_output_uleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: optsize
declare void @lto_output_fn_decl_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_destroy_simple_output_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #11
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: optsize
declare void @lto_bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !47
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #9
  store ptr %6, ptr %0, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 8, !tbaa !45
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !45
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !49
  %6 = load i32, ptr %0, align 8, !tbaa !45
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @lto_get_file_decl_data() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lto_create_simple_input_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_input_wpa_fixup_1(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @lto_input_uleb128(ptr noundef %1) #9
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %10, %5 ], [ 0, %2 ]
  %7 = tail call i64 @lto_input_uleb128(ptr noundef %1) #9
  %8 = trunc i64 %7 to i32
  %9 = tail call fastcc ptr @lto_file_decl_data_get_fn_decl(ptr noundef %0, i32 noundef %8) #11
  tail call void @lto_mark_nothrow_fndecl(ptr noundef %9) #11
  %10 = add nuw i64 %6, 1
  %11 = icmp eq i64 %10, %3
  br i1 %11, label %12, label %5, !llvm.loop !50

12:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare void @lto_destroy_simple_input_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @lto_input_uleb128(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lto_file_decl_data_get_fn_decl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !51
  %4 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 2, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1043, ptr noundef nonnull @.str.1) #9
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !10
  ret ptr %13
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"cgraph_node", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !14, i64 144, !17, i64 184, !18, i64 224, !19, i64 232, !20, i64 256, !16, i64 288, !7, i64 296, !7, i64 300, !7, i64 304, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 309, !7, i64 309}
!14 = !{!"cgraph_local_info", !11, i64 0, !15, i64 8, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32}
!15 = !{!"inline_summary", !16, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!16 = !{!"long", !8, i64 0}
!17 = !{!"cgraph_global_info", !16, i64 0, !16, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !8, i64 36}
!18 = !{!"cgraph_rtl_info", !7, i64 0}
!19 = !{!"cgraph_clone_info", !11, i64 0, !11, i64 8, !11, i64 16}
!20 = !{!"cgraph_thunk_info", !16, i64 0, !16, i64 8, !11, i64 16, !8, i64 24, !8, i64 25, !8, i64 26}
!21 = !{!8, !8, i64 0}
!22 = !{!23, !11, i64 8}
!23 = !{!"cgraph_edge", !16, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !24, i64 88, !7, i64 90, !7, i64 90, !7, i64 90}
!24 = !{!"short", !8, i64 0}
!25 = !{!23, !11, i64 56}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = !{i64 0, i64 8, !10, i64 8, i64 4, !6}
!30 = !{i64 0, i64 4, !6}
!31 = !{i8 0, i8 2}
!32 = !{!23, !11, i64 16}
!33 = distinct !{!33, !27}
!34 = distinct !{!34, !27}
!35 = !{!36, !11, i64 16}
!36 = !{!"lto_simple_output_block", !7, i64 0, !11, i64 8, !11, i64 16}
!37 = !{!36, !11, i64 8}
!38 = distinct !{!38, !27}
!39 = !{!16, !16, i64 0}
!40 = distinct !{!40, !27}
!41 = !{!42, !11, i64 8}
!42 = !{!"cgraph_node_set_def", !11, i64 0, !11, i64 8, !11, i64 16}
!43 = !{!44, !7, i64 8}
!44 = !{!"", !11, i64 0, !7, i64 8}
!45 = !{!46, !7, i64 0}
!46 = !{!"VEC_tree_base", !7, i64 0, !7, i64 4, !8, i64 8}
!47 = !{!48, !7, i64 0}
!48 = !{!"VEC_cgraph_node_ptr_base", !7, i64 0, !7, i64 4, !8, i64 8}
!49 = !{!46, !7, i64 4}
!50 = distinct !{!50, !27}
!51 = !{!52, !11, i64 0}
!52 = !{!"lto_file_decl_data", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !7, i64 40, !11, i64 48, !11, i64 56}
!53 = !{!54, !7, i64 8}
!54 = !{!"lto_tree_ref_table", !11, i64 0, !7, i64 8}
!55 = !{!54, !11, i64 0}
