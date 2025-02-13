; ModuleID = 'tree-ssa-threadupdate.c'
source_filename = "tree-ssa-threadupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.thread_stats_d = type { i64 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.loop_iterator = type { ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.local_info = type { ptr, ptr, i8 }
%struct.redirection_data = type { ptr, ptr, ptr, i8 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.el = type { ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }

@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [24 x i8] c"tree-ssa-threadupdate.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@threaded_edges = internal unnamed_addr global ptr null, align 8
@thread_stats = dso_local local_unnamed_addr global %struct.thread_stats_d zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"Jumps threaded\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@redirection_data = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"  Threaded jump %d --> %d to %d\0A\00", align 1
@mfb_kj_edge = external local_unnamed_addr global ptr, align 8
@dbds_ce_stop = internal unnamed_addr global ptr null, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @thread_through_all_blocks(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.loop_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %6 = load ptr, ptr @cfun, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1042, ptr noundef nonnull @.str.1) #16
  br label %11

11:                                               ; preds = %1, %10
  %12 = load ptr, ptr @threaded_edges, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %70, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  store i64 0, ptr @thread_stats, align 8
  tail call fastcc void @mark_threaded_blocks(ptr noundef %15) #17
  tail call void @initialize_original_copy_tables() #16
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %15, ptr noundef nonnull %2) #17
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #17, !range !12
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %18, %36
  %21 = phi ptr [ %37, %36 ], [ %19, %18 ]
  %22 = phi i8 [ %38, %36 ], [ 0, %18 ]
  %23 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !13
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !14
  %27 = load i32, ptr %2, align 4, !tbaa !16
  %28 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %26, i32 noundef %27) #17
  %29 = load ptr, ptr %28, align 8, !tbaa !17
  %30 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %29) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %20
  %33 = tail call fastcc zeroext i8 @thread_block(ptr noundef nonnull %28, i8 noundef zeroext 1) #17
  %34 = or i8 %33, %22
  %35 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %36

36:                                               ; preds = %32, %20
  %37 = phi ptr [ %35, %32 ], [ %21, %20 ]
  %38 = phi i8 [ %34, %32 ], [ %22, %20 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %39 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #17, !range !12
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %20, !llvm.loop !20

41:                                               ; preds = %36, %14
  %42 = phi i8 [ 0, %14 ], [ %38, %36 ]
  call fastcc void @fel_init(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %43 = load ptr, ptr %4, align 8, !tbaa !5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %63, label %45

45:                                               ; preds = %41, %59
  %46 = phi ptr [ %61, %59 ], [ %43, %41 ]
  %47 = phi i8 [ %60, %59 ], [ %42, %41 ]
  %48 = getelementptr inbounds %struct.loop, ptr %46, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !22
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !26
  %54 = tail call i32 @bitmap_bit_p(ptr noundef %15, i32 noundef %53) #16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = tail call fastcc zeroext i8 @thread_through_loop_header(ptr noundef nonnull %46, i8 noundef zeroext %0) #17
  %58 = or i8 %57, %47
  br label %59

59:                                               ; preds = %45, %51, %56
  %60 = phi i8 [ %58, %56 ], [ %47, %51 ], [ %47, %45 ]
  call fastcc void @fel_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %61 = load ptr, ptr %4, align 8, !tbaa !5
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %45, !llvm.loop !27

63:                                               ; preds = %59, %41
  %64 = phi i8 [ %42, %41 ], [ %60, %59 ]
  %65 = load ptr, ptr @cfun, align 8, !tbaa !5
  %66 = load i64, ptr @thread_stats, align 8, !tbaa !28
  %67 = trunc i64 %66 to i32
  tail call void @statistics_counter_event(ptr noundef %65, ptr noundef nonnull @.str.2, i32 noundef %67) #16
  tail call void @free_original_copy_tables() #16
  tail call void @bitmap_obstack_free(ptr noundef %15) #16
  tail call fastcc void @VEC_edge_heap_free() #17
  store ptr null, ptr @threaded_edges, align 8, !tbaa !5
  %68 = icmp eq i8 %64, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  tail call fastcc void @loops_state_set() #17
  br label %70

70:                                               ; preds = %63, %69, %11
  %71 = phi i8 [ 0, %11 ], [ %64, %69 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret i8 %71
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_threaded_blocks(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %7 = load ptr, ptr @threaded_edges, align 8
  %8 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %7) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %23, %10 ], [ %7, %1 ]
  %12 = phi i32 [ %22, %10 ], [ 0, %1 ]
  %13 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef %12) #17
  %14 = or disjoint i32 %12, 1
  %15 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef %14) #17
  %16 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !30
  %17 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !32
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !26
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %20) #16
  %22 = add i32 %12, 2
  %23 = load ptr, ptr @threaded_edges, align 8
  %24 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %23) #17
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %10, label %26, !llvm.loop !33

26:                                               ; preds = %10, %1
  %27 = phi i32 [ 0, %1 ], [ %22, %10 ]
  store i32 %27, ptr %2, align 4, !tbaa !16
  %28 = load ptr, ptr @cfun, align 8, !tbaa !5
  %29 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %28) #16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %66, label %31

31:                                               ; preds = %26
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %6, ptr noundef nonnull %2) #17
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #17, !range !12
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %67, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %5, i64 8
  br label %36

36:                                               ; preds = %34, %63
  %37 = load ptr, ptr @cfun, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !14
  %42 = load i32, ptr %2, align 4, !tbaa !16
  %43 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %41, i32 noundef %42) #17
  %44 = load ptr, ptr %43, align 8, !tbaa !17
  %45 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %44) #17
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %47, label %61

47:                                               ; preds = %36
  %48 = tail call fastcc zeroext i8 @redirection_block_p(ptr noundef nonnull %43) #17, !range !12
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %43) #17
  store i32 0, ptr %5, align 8, !tbaa.struct !34
  store ptr %51, ptr %35, align 8, !tbaa.struct !35
  %52 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %51, ptr noundef nonnull %4) #17, !range !12
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %50, %54
  %55 = load ptr, ptr %4, align 8, !tbaa !5
  %56 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 3
  store ptr null, ptr %56, align 8, !tbaa !30
  call fastcc void @ei_next(ptr noundef nonnull %5) #17
  %57 = load i32, ptr %5, align 8
  %58 = load ptr, ptr %35, align 8
  %59 = call fastcc zeroext i8 @ei_cond(i32 %57, ptr %58, ptr noundef nonnull %4) #17, !range !12
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %63, label %54, !llvm.loop !36

61:                                               ; preds = %47, %36
  %62 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %42) #16
  br label %63

63:                                               ; preds = %54, %50, %61
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %64 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #17, !range !12
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %67, label %36, !llvm.loop !37

66:                                               ; preds = %26
  tail call void @bitmap_copy(ptr noundef %0, ptr noundef %6) #16
  br label %67

67:                                               ; preds = %63, %31, %66
  tail call void @bitmap_obstack_free(ptr noundef %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare void @initialize_original_copy_tables() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = load ptr, ptr %1, align 8, !tbaa !38
  store ptr %4, ptr %0, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !42
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !40
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !43
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !47
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !16
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !48

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !16
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !16
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !45
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !40
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !45
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !46
  store i64 %35, ptr %3, align 8, !tbaa !47
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !16
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !16
  %40 = load i32, ptr %23, align 8, !tbaa !45
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !45
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !49

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !50
  store ptr %44, ptr %0, align 8, !tbaa !40
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !43
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !16
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !47
  store i32 %16, ptr %1, align 4, !tbaa !16
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !51
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @thread_block(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca %struct.local_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %9) #17
  %11 = zext i32 %10 to i64
  %12 = tail call ptr @htab_create(i64 noundef %11, ptr noundef nonnull @redirection_data_hash, ptr noundef nonnull @redirection_data_eq, ptr noundef nonnull @free) #16
  store ptr %12, ptr @redirection_data, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = tail call ptr @loop_latch_edge(ptr noundef nonnull %7) #16
  store ptr %17, ptr %3, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !30
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef nonnull %7, ptr noundef nonnull %19) #16
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  br label %25

25:                                               ; preds = %16, %21, %24, %2
  %26 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !34
  %27 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %26, ptr %27, align 8, !tbaa.struct !35
  %28 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %26, ptr noundef nonnull %3) #17, !range !12
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %72, label %30

30:                                               ; preds = %25
  %31 = icmp eq i8 %1, 0
  br label %32

32:                                               ; preds = %30, %64
  %33 = phi i8 [ 1, %30 ], [ %65, %64 ]
  %34 = load ptr, ptr %3, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !30
  %37 = icmp eq ptr %36, null
  br i1 %37, label %64, label %38

38:                                               ; preds = %32
  br i1 %31, label %49, label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr %6, align 8, !tbaa !53
  %41 = getelementptr inbounds %struct.loop, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !22
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef nonnull %40, ptr noundef nonnull %36) #16
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %35, align 8, !tbaa !30
  br label %49

49:                                               ; preds = %47, %39, %38
  %50 = phi ptr [ %48, %47 ], [ %36, %39 ], [ %36, %38 ]
  %51 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !32
  %53 = load ptr, ptr %34, align 8, !tbaa !55
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 11
  %55 = load i32, ptr %54, align 8, !tbaa !56
  %56 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 8
  %57 = load i32, ptr %56, align 4, !tbaa !57
  %58 = mul nsw i32 %57, %55
  %59 = add nsw i32 %58, 5000
  %60 = sdiv i32 %59, 10000
  %61 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 9
  %62 = load i64, ptr %61, align 8, !tbaa !58
  tail call void @update_bb_profile_for_threading(ptr noundef %52, i32 noundef %60, i64 noundef %62, ptr noundef %50) #16
  %63 = tail call fastcc ptr @lookup_redirection_data(ptr noundef nonnull %36, ptr noundef nonnull %34, i32 noundef 1) #17
  br label %64

64:                                               ; preds = %32, %44, %49
  %65 = phi i8 [ %33, %49 ], [ 0, %44 ], [ 0, %32 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %66 = load i32, ptr %4, align 8
  %67 = load ptr, ptr %27, align 8
  %68 = call fastcc zeroext i8 @ei_cond(i32 %66, ptr %67, ptr noundef nonnull %3) #17, !range !12
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %32, !llvm.loop !59

70:                                               ; preds = %64
  %71 = icmp eq i8 %65, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %25, %70
  %73 = load ptr, ptr %0, align 8, !tbaa !17
  %74 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %73, i32 noundef 0) #17
  %75 = getelementptr inbounds %struct.edge_def, ptr %74, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !30
  %77 = tail call fastcc ptr @lookup_redirection_data(ptr noundef %76, ptr noundef null, i32 noundef 0) #17
  %78 = getelementptr inbounds %struct.redirection_data, ptr %77, i64 0, i32 3
  store i8 1, ptr %78, align 8, !tbaa !60
  br label %79

79:                                               ; preds = %72, %70
  tail call void @free_dominance_info(i32 noundef 1) #16
  %80 = getelementptr inbounds %struct.local_info, ptr %5, i64 0, i32 1
  store ptr null, ptr %80, align 8, !tbaa !62
  store ptr %0, ptr %5, align 8, !tbaa !64
  %81 = getelementptr inbounds %struct.local_info, ptr %5, i64 0, i32 2
  store i8 0, ptr %81, align 8, !tbaa !65
  %82 = load ptr, ptr @redirection_data, align 8, !tbaa !5
  call void @htab_traverse(ptr noundef %82, ptr noundef nonnull @create_duplicates, ptr noundef nonnull %5) #16
  %83 = load ptr, ptr @redirection_data, align 8, !tbaa !5
  call void @htab_traverse(ptr noundef %83, ptr noundef nonnull @fixup_template_block, ptr noundef nonnull %5) #16
  %84 = load ptr, ptr @redirection_data, align 8, !tbaa !5
  call void @htab_traverse(ptr noundef %84, ptr noundef nonnull @redirect_edges, ptr noundef nonnull %5) #16
  %85 = load ptr, ptr @redirection_data, align 8, !tbaa !5
  call void @htab_delete(ptr noundef %85) #16
  store ptr null, ptr @redirection_data, align 8, !tbaa !5
  %86 = load i8, ptr %81, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i8 %86
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !47
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !47
  %6 = load i32, ptr %1, align 4, !tbaa !16
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !66
  %4 = load ptr, ptr @cfun, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !68
  store ptr null, ptr %1, align 8, !tbaa !5
  br label %43

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #17
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #17
  store ptr %11, ptr %0, align 8, !tbaa !68
  %12 = load ptr, ptr @cfun, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  br label %17

17:                                               ; preds = %17, %9
  %18 = phi ptr [ %16, %9 ], [ %20, %17 ]
  %19 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !llvm.loop !72

22:                                               ; preds = %17, %40
  %23 = phi ptr [ %41, %40 ], [ %18, %17 ]
  %24 = load i32, ptr %23, align 8, !tbaa !73
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 8, !tbaa !68
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %27, i32 noundef %24) #17
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !74
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28, %32
  %33 = phi ptr [ %35, %32 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.loop, ptr %33, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !71
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %32, !llvm.loop !75

37:                                               ; preds = %28
  %38 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %23) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %32, %37
  %41 = phi ptr [ %38, %37 ], [ %33, %32 ]
  br label %22

42:                                               ; preds = %37
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #17
  br label %43

43:                                               ; preds = %42, %8
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @thread_through_loop_header(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %7 = tail call ptr @loop_latch_edge(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %8 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %6) #17, !range !12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %121

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.edge_def, ptr %7, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !32
  br label %59

17:                                               ; preds = %10
  %18 = icmp eq i8 %1, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = load ptr, ptr %5, align 8, !tbaa !22
  %21 = tail call fastcc zeroext i8 @redirection_block_p(ptr noundef %20) #17, !range !12
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %121, label %23

23:                                               ; preds = %19, %17
  %24 = tail call fastcc ptr @ei_start_1(ptr noundef %6) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !34
  %25 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %24, ptr %25, align 8, !tbaa.struct !35
  %26 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %24, ptr noundef nonnull %3) #17, !range !12
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %133, label %28

28:                                               ; preds = %23, %43
  %29 = phi ptr [ %45, %43 ], [ null, %23 ]
  %30 = phi ptr [ %44, %43 ], [ null, %23 ]
  %31 = load ptr, ptr %3, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !30
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = icmp eq ptr %31, %7
  br i1 %36, label %43, label %121

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.edge_def, ptr %33, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !32
  %40 = icmp eq ptr %30, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = icmp eq ptr %30, %39
  br i1 %42, label %43, label %121

43:                                               ; preds = %37, %41, %35
  %44 = phi ptr [ %30, %41 ], [ %30, %35 ], [ %39, %37 ]
  %45 = phi ptr [ %33, %41 ], [ %29, %35 ], [ %33, %37 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %46 = load i32, ptr %4, align 8
  %47 = load ptr, ptr %25, align 8
  %48 = call fastcc zeroext i8 @ei_cond(i32 %46, ptr %47, ptr noundef nonnull %3) #17, !range !12
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %28, !llvm.loop !76

50:                                               ; preds = %43
  %51 = icmp eq ptr %44, null
  br i1 %51, label %133, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !77
  %55 = icmp eq ptr %44, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = tail call zeroext i8 @empty_block_p(ptr noundef nonnull %44) #16
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %121

59:                                               ; preds = %56, %52, %14
  %60 = phi ptr [ %16, %14 ], [ %44, %56 ], [ %44, %52 ]
  %61 = phi ptr [ %12, %14 ], [ %45, %56 ], [ %45, %52 ]
  %62 = tail call fastcc i32 @determine_bb_domination_status(ptr noundef nonnull %0, ptr noundef %60) #17, !range !78
  switch i32 %62, label %65 [
    i32 0, label %121
    i32 1, label %63
  ]

63:                                               ; preds = %59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %64 = tail call fastcc zeroext i8 @thread_block(ptr noundef %6, i8 noundef zeroext 0) #17
  br label %133

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !53
  %68 = getelementptr inbounds %struct.loop, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !22
  %70 = icmp eq ptr %69, %60
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load ptr, ptr %60, align 8, !tbaa !17
  %73 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %72) #17
  %74 = icmp ugt i32 %73, 2
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = tail call ptr @create_preheader(ptr noundef nonnull %67, i32 noundef 0) #16
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 905, ptr noundef nonnull @.str.1) #16
  br label %81

79:                                               ; preds = %71
  %80 = tail call ptr @split_edge(ptr noundef %61) #16
  br label %81

81:                                               ; preds = %78, %75, %79, %65
  %82 = phi ptr [ %76, %75 ], [ null, %78 ], [ %80, %79 ], [ %60, %65 ]
  %83 = load ptr, ptr %11, align 8, !tbaa !30
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  %86 = tail call fastcc ptr @thread_single_edge(ptr noundef nonnull %7) #17
  %87 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  store ptr %86, ptr %87, align 8, !tbaa !77
  %88 = tail call fastcc ptr @single_succ(ptr noundef %86) #17
  %89 = icmp eq ptr %88, %82
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 915, ptr noundef nonnull @.str.1) #16
  br label %91

91:                                               ; preds = %85, %90
  store ptr %82, ptr %5, align 8, !tbaa !22
  %92 = tail call fastcc zeroext i8 @thread_block(ptr noundef %6, i8 noundef zeroext 0) #17
  br label %133

93:                                               ; preds = %81
  %94 = tail call fastcc ptr @ei_start_1(ptr noundef %6) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !34
  %95 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %94, ptr %95, align 8, !tbaa.struct !35
  %96 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %94, ptr noundef nonnull %3) #17, !range !12
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %93, %103
  %99 = load ptr, ptr %3, align 8, !tbaa !5
  %100 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !30
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %104 = load i32, ptr %4, align 8
  %105 = load ptr, ptr %95, align 8
  %106 = call fastcc zeroext i8 @ei_cond(i32 %104, ptr %105, ptr noundef nonnull %3) #17, !range !12
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %98, !llvm.loop !79

108:                                              ; preds = %103, %98, %93
  %109 = tail call fastcc ptr @loop_outer(ptr noundef %0) #17
  tail call void @set_loop_copy(ptr noundef %0, ptr noundef %109) #16
  %110 = tail call fastcc zeroext i8 @thread_block(ptr noundef %6, i8 noundef zeroext 0) #17
  tail call void @set_loop_copy(ptr noundef %0, ptr noundef null) #16
  %111 = load ptr, ptr %3, align 8, !tbaa !5
  %112 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !32
  %114 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  store ptr null, ptr %114, align 8, !tbaa !77
  %115 = tail call fastcc ptr @single_succ_edge(ptr noundef %113) #17
  store ptr %115, ptr @mfb_kj_edge, align 8, !tbaa !5
  %116 = getelementptr inbounds %struct.edge_def, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !32
  store ptr %117, ptr %5, align 8, !tbaa !22
  %118 = tail call ptr @make_forwarder_block(ptr noundef %82, ptr noundef nonnull @mfb_keep_just, ptr noundef null) #16
  %119 = load <2 x ptr>, ptr %118, align 8, !tbaa !5
  %120 = shufflevector <2 x ptr> %119, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %120, ptr %5, align 8, !tbaa !5
  br label %133

121:                                              ; preds = %41, %35, %59, %56, %19, %2
  %122 = tail call fastcc ptr @ei_start_1(ptr noundef %6) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !34
  %123 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %122, ptr %123, align 8, !tbaa.struct !35
  %124 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %122, ptr noundef nonnull %3) #17, !range !12
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %121, %126
  %127 = load ptr, ptr %3, align 8, !tbaa !5
  %128 = getelementptr inbounds %struct.edge_def, ptr %127, i64 0, i32 3
  store ptr null, ptr %128, align 8, !tbaa !30
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %129 = load i32, ptr %4, align 8
  %130 = load ptr, ptr %123, align 8
  %131 = call fastcc zeroext i8 @ei_cond(i32 %129, ptr %130, ptr noundef nonnull %3) #17, !range !12
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %126, !llvm.loop !80

133:                                              ; preds = %126, %23, %121, %91, %108, %50, %63
  %134 = phi i8 [ %64, %63 ], [ 0, %50 ], [ 1, %108 ], [ 1, %91 ], [ 0, %121 ], [ 0, %23 ], [ 0, %126 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i8 %134
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !66
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !68
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #17, !range !81
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !66
  %13 = load i32, ptr %3, align 4, !tbaa !16
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #17
  store ptr %14, ptr %1, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !82

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #17
  store ptr null, ptr %1, align 8, !tbaa !5
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_original_copy_tables() local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free() unnamed_addr #8 {
  %1 = load ptr, ptr @threaded_edges, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #17
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @threaded_edges, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_set() unnamed_addr #9 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = or i32 %4, 64
  store i32 %5, ptr %3, align 8, !tbaa !83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_jump_thread(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @threaded_edges, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @VEC_edge_heap_alloc() #17
  store ptr %6, ptr @threaded_edges, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %2
  tail call fastcc void @VEC_edge_heap_safe_push(ptr noundef %0) #17
  tail call fastcc void @VEC_edge_heap_safe_push(ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_edge_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #16
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_edge_heap_reserve() #17
  %2 = load ptr, ptr @threaded_edges, align 8, !tbaa !5
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %2, ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @redirection_block_p(ptr noundef %0) unnamed_addr #5 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #17
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %1, %15
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #17, !range !84
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %6) #17, !range !12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %6) #17, !range !12
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9, %5, %12
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %16 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !12
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %5, label %26, !llvm.loop !85

18:                                               ; preds = %12
  %19 = icmp eq ptr %6, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %6) #17, !range !84
  %22 = trunc i32 %21 to i8
  switch i8 %22, label %23 [
    i8 1, label %26
    i8 3, label %26
  ]

23:                                               ; preds = %20
  %24 = icmp eq i32 %21, 5
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %15, %1, %20, %20, %18, %23
  %27 = phi i8 [ 0, %18 ], [ 1, %20 ], [ %25, %23 ], [ 1, %20 ], [ 1, %1 ], [ 1, %15 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret i8 %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !5
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #17
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #17
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !86
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !86
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !84
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !84
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  store ptr %4, ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !95
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !97
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !99
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #17
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #17
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.1) #16
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @redirection_data_hash(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.redirection_data, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  %4 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !32
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !26
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @redirection_data_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.redirection_data, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = getelementptr inbounds %struct.redirection_data, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = icmp eq ptr %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #12

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @loop_exit_edge_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_bb_profile_for_threading(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_redirection_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @xmalloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.redirection_data, ptr %4, i64 0, i32 1
  store ptr %0, ptr %5, align 8, !tbaa !101
  store ptr null, ptr %4, align 8, !tbaa !102
  %6 = getelementptr inbounds %struct.redirection_data, ptr %4, i64 0, i32 3
  store i8 0, ptr %6, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.redirection_data, ptr %4, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !103
  %8 = load ptr, ptr @redirection_data, align 8, !tbaa !5
  %9 = tail call ptr @htab_find_slot(ptr noundef %8, ptr noundef nonnull %4, i32 noundef %2) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #17
  br label %26

12:                                               ; preds = %3
  %13 = load ptr, ptr %9, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  store ptr %4, ptr %9, align 8, !tbaa !5
  %16 = tail call ptr @xmalloc(i64 noundef 16) #16
  store ptr %16, ptr %7, align 8, !tbaa !103
  store ptr %1, ptr %16, align 8, !tbaa !104
  %17 = getelementptr inbounds %struct.el, ptr %16, i64 0, i32 1
  store ptr null, ptr %17, align 8, !tbaa !106
  br label %26

18:                                               ; preds = %12
  tail call void @free(ptr noundef nonnull %4) #17
  %19 = load ptr, ptr %9, align 8, !tbaa !5
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @xmalloc(i64 noundef 16) #16
  %23 = getelementptr inbounds %struct.redirection_data, ptr %19, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !103
  %25 = getelementptr inbounds %struct.el, ptr %22, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !106
  store ptr %1, ptr %22, align 8, !tbaa !104
  store ptr %22, ptr %23, align 8, !tbaa !103
  br label %26

26:                                               ; preds = %18, %21, %15, %11
  %27 = phi ptr [ null, %11 ], [ %4, %15 ], [ %19, %21 ], [ %19, %18 ]
  ret ptr %27
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @create_duplicates(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.redirection_data, ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 8, !tbaa !60
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.local_info, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 8, !tbaa !64
  tail call fastcc void @create_block_for_threading(ptr noundef %12, ptr noundef nonnull %3) #17
  %13 = load ptr, ptr %3, align 8, !tbaa !102
  store ptr %13, ptr %8, align 8, !tbaa !62
  br label %15

14:                                               ; preds = %7
  tail call fastcc void @create_block_for_threading(ptr noundef nonnull %9, ptr noundef nonnull %3) #17
  tail call fastcc void @create_edge_and_update_destination_phis(ptr noundef nonnull %3) #17
  br label %15

15:                                               ; preds = %11, %14, %2
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @fixup_template_block(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.local_info, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = icmp eq ptr %4, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call fastcc void @create_edge_and_update_destination_phis(ptr noundef nonnull %3) #17
  br label %11

11:                                               ; preds = %2, %6, %10
  %12 = phi i32 [ 0, %10 ], [ 1, %6 ], [ 1, %2 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @redirect_edges(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.redirection_data, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !103
  %6 = icmp eq ptr %5, null
  br i1 %6, label %118, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.redirection_data, ptr %3, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %111
  %10 = phi ptr [ %5, %7 ], [ %13, %111 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  %12 = getelementptr inbounds %struct.el, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  tail call void @free(ptr noundef nonnull %10) #17
  %14 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 3
  store ptr null, ptr %14, align 8, !tbaa !30
  %15 = load i64, ptr @thread_stats, align 8, !tbaa !28
  %16 = add i64 %15, 1
  store i64 %16, ptr @thread_stats, align 8, !tbaa !28
  %17 = load ptr, ptr %3, align 8, !tbaa !102
  %18 = icmp eq ptr %17, null
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %18, label %66, label %21

21:                                               ; preds = %9
  br i1 %20, label %38, label %22

22:                                               ; preds = %21
  %23 = load i32, ptr @dump_flags, align 4, !tbaa !16
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %11, align 8, !tbaa !55
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !26
  %30 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !32
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !26
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !26
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %19, ptr noundef nonnull @.str.5, i32 noundef %29, i32 noundef %33, i32 noundef %35) #17
  %37 = load ptr, ptr %3, align 8, !tbaa !102
  br label %38

38:                                               ; preds = %26, %22, %21
  %39 = phi ptr [ %37, %26 ], [ %17, %22 ], [ %17, %21 ]
  %40 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 9
  %41 = load i64, ptr %40, align 8, !tbaa !58
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 8
  %43 = load i64, ptr %42, align 8, !tbaa !107
  %44 = add nsw i64 %43, %41
  store i64 %44, ptr %42, align 8, !tbaa !107
  %45 = load ptr, ptr %11, align 8, !tbaa !55
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 11
  %47 = load i32, ptr %46, align 8, !tbaa !56
  %48 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 8
  %49 = load i32, ptr %48, align 4, !tbaa !57
  %50 = mul nsw i32 %49, %47
  %51 = add nsw i32 %50, 5000
  %52 = sdiv i32 %51, 10000
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 11
  %54 = load i32, ptr %53, align 8, !tbaa !56
  %55 = add nsw i32 %52, %54
  store i32 %55, ptr %53, align 8, !tbaa !56
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !54
  %58 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %57, i32 noundef 0) #17
  %59 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 9
  %60 = load i64, ptr %59, align 8, !tbaa !58
  %61 = add nsw i64 %60, %41
  store i64 %61, ptr %59, align 8, !tbaa !58
  %62 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %11, ptr noundef %39) #16
  %63 = icmp eq ptr %11, %62
  br i1 %63, label %65, label %64

64:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 436, ptr noundef nonnull @.str.1) #16
  br label %65

65:                                               ; preds = %38, %64
  tail call void @flush_pending_stmts(ptr noundef %62) #16
  br label %111

66:                                               ; preds = %9
  br i1 %20, label %83, label %67

67:                                               ; preds = %66
  %68 = load i32, ptr @dump_flags, align 4, !tbaa !16
  %69 = and i32 %68, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %11, align 8, !tbaa !55
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !26
  %75 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !32
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 9
  %78 = load i32, ptr %77, align 8, !tbaa !26
  %79 = load ptr, ptr %1, align 8, !tbaa !64
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !26
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %19, ptr noundef nonnull @.str.5, i32 noundef %74, i32 noundef %78, i32 noundef %81) #17
  br label %83

83:                                               ; preds = %71, %67, %66
  %84 = load ptr, ptr %1, align 8, !tbaa !64
  %85 = load ptr, ptr %8, align 8, !tbaa !101
  %86 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !32
  tail call fastcc void @remove_ctrl_stmt_and_useless_edges(ptr noundef %84, ptr noundef %87) #17
  %88 = load ptr, ptr %1, align 8, !tbaa !64
  %89 = tail call fastcc ptr @single_succ_edge(ptr noundef %88) #17
  %90 = getelementptr inbounds %struct.edge_def, ptr %89, i64 0, i32 7
  %91 = load i32, ptr %90, align 8, !tbaa !108
  %92 = and i32 %91, -3075
  store i32 %92, ptr %90, align 8, !tbaa !108
  %93 = load ptr, ptr %1, align 8, !tbaa !64
  %94 = tail call fastcc ptr @single_succ_edge(ptr noundef %93) #17
  %95 = getelementptr inbounds %struct.edge_def, ptr %94, i64 0, i32 7
  %96 = load i32, ptr %95, align 8, !tbaa !108
  %97 = or i32 %96, 1
  store i32 %97, ptr %95, align 8, !tbaa !108
  %98 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 9
  %99 = load i64, ptr %98, align 8, !tbaa !58
  %100 = load ptr, ptr %1, align 8, !tbaa !64
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %100, i64 0, i32 8
  store i64 %99, ptr %101, align 8, !tbaa !107
  %102 = load ptr, ptr %11, align 8, !tbaa !55
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %102, i64 0, i32 11
  %104 = load i32, ptr %103, align 8, !tbaa !56
  %105 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 8
  %106 = load i32, ptr %105, align 4, !tbaa !57
  %107 = mul nsw i32 %106, %104
  %108 = add nsw i32 %107, 5000
  %109 = sdiv i32 %108, 10000
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %100, i64 0, i32 11
  store i32 %109, ptr %110, align 8, !tbaa !56
  br label %111

111:                                              ; preds = %83, %65
  %112 = icmp eq ptr %13, null
  br i1 %112, label %113, label %9, !llvm.loop !109

113:                                              ; preds = %111
  %114 = load ptr, ptr %4, align 8, !tbaa !103
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.local_info, ptr %1, i64 0, i32 2
  store i8 1, ptr %117, align 8, !tbaa !65
  br label %118

118:                                              ; preds = %2, %116, %113
  ret i32 1
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_block_for_threading(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call ptr @duplicate_block(ptr noundef %0, ptr noundef null, ptr noundef null) #16
  store ptr %3, ptr %1, align 8, !tbaa !102
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 11
  store i32 0, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 8
  store i64 0, ptr %5, align 8, !tbaa !107
  tail call fastcc void @remove_ctrl_stmt_and_useless_edges(ptr noundef %3, ptr noundef null) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_edge_and_update_destination_phis(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !102
  %4 = getelementptr inbounds %struct.redirection_data, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  %6 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !32
  %8 = tail call ptr @make_edge(ptr noundef %3, ptr noundef %7, i32 noundef 1) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  tail call void @rescan_loop_exit(ptr noundef %8, i8 noundef zeroext 1, i8 noundef zeroext 0) #16
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 8
  store i32 10000, ptr %9, align 4, !tbaa !57
  %10 = load ptr, ptr %0, align 8, !tbaa !102
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 9
  store i64 %12, ptr %13, align 8, !tbaa !58
  %14 = load ptr, ptr %4, align 8, !tbaa !101
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !30
  %17 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !30
  %18 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !32
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %19) #16
  %20 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !12
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1, %22
  %23 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %24 = load ptr, ptr %4, align 8, !tbaa !101
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !110
  %27 = sext i32 %26 to i64
  %28 = call fastcc i32 @gimple_phi_arg_location(ptr noundef %23, i64 noundef %27) #17
  %29 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %23, i64 noundef %27) #17
  call void @add_phi_arg(ptr noundef %23, ptr noundef %29, ptr noundef %8, i32 noundef %28) #16
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %30 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !12
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %22, label %32, !llvm.loop !111

32:                                               ; preds = %22, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare ptr @duplicate_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_ctrl_stmt_and_useless_edges(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #17
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17, !range !12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %8) #17, !range !84
  %12 = trunc i32 %11 to i8
  switch i8 %12, label %14 [
    i8 1, label %13
    i8 3, label %13
    i8 5, label %13
  ]

13:                                               ; preds = %10, %10, %10
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #16
  br label %14

14:                                               ; preds = %10, %13, %7, %2
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %16 = call fastcc ptr @ei_start_1(ptr noundef nonnull %15) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !34
  %17 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %16, ptr %17, align 8, !tbaa.struct !35
  %18 = call fastcc ptr @ei_safe_edge(i32 0, ptr %16) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %14, %27
  %21 = phi ptr [ %30, %27 ], [ %18, %14 ]
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !32
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  call void @remove_edge(ptr noundef nonnull %21) #16
  br label %27

26:                                               ; preds = %20
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, ptr %4, align 8
  %29 = load ptr, ptr %17, align 8
  %30 = call fastcc ptr @ei_safe_edge(i32 %28, ptr %29) #17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %20, !llvm.loop !112

32:                                               ; preds = %27, %14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !91
  ret void
}

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rescan_loop_exit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #17
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !114
  ret i32 %6
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #17
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #17
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  ret ptr %4
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @flush_pending_stmts(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #17, !range !12
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #17
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #11 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #17
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 4, !tbaa !119
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !119
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #17
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !122
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @empty_block_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @determine_bb_domination_status(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %52, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !124
  %11 = zext i32 %10 to i64
  %12 = tail call ptr @xcalloc(i64 noundef %11, i64 noundef 8) #16
  %13 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  store ptr %14, ptr @dbds_ce_stop, align 8, !tbaa !5
  %15 = load ptr, ptr %5, align 8, !tbaa !77
  %16 = load i32, ptr %9, align 4, !tbaa !124
  %17 = tail call i32 @dfs_enumerate_from(ptr noundef %15, i32 noundef 1, ptr noundef nonnull @dbds_continue_enumeration_p, ptr noundef %12, i32 noundef %16, ptr noundef %1) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %50, label %19

19:                                               ; preds = %8
  %20 = getelementptr inbounds i8, ptr %3, i64 8
  %21 = zext i32 %17 to i64
  br label %22

22:                                               ; preds = %19, %43
  %23 = phi i64 [ 0, %19 ], [ %45, %43 ]
  %24 = phi i8 [ 0, %19 ], [ %44, %43 ]
  %25 = getelementptr inbounds ptr, ptr %12, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = tail call fastcc ptr @ei_start_1(ptr noundef %26) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !34
  store ptr %27, ptr %20, align 8, !tbaa.struct !35
  %28 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %27, ptr noundef nonnull %4) #17, !range !12
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %22, %36
  %31 = phi i8 [ %38, %36 ], [ %24, %22 ]
  %32 = load ptr, ptr %4, align 8, !tbaa !5
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = load ptr, ptr %13, align 8, !tbaa !22
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %50, label %36

36:                                               ; preds = %30
  %37 = icmp eq ptr %33, %1
  %38 = select i1 %37, i8 1, i8 %31
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %39 = load i32, ptr %3, align 8
  %40 = load ptr, ptr %20, align 8
  %41 = call fastcc zeroext i8 @ei_cond(i32 %39, ptr %40, ptr noundef nonnull %4) #17, !range !12
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %30, !llvm.loop !125

43:                                               ; preds = %36, %22
  %44 = phi i8 [ %24, %22 ], [ %38, %36 ]
  %45 = add nuw nsw i64 %23, 1
  %46 = icmp eq i64 %45, %21
  br i1 %46, label %47, label %22, !llvm.loop !126

47:                                               ; preds = %43
  %48 = icmp eq i8 %44, 0
  %49 = select i1 %48, i32 1, i32 2
  br label %50

50:                                               ; preds = %30, %8, %47
  %51 = phi i32 [ 1, %8 ], [ %49, %47 ], [ 0, %30 ]
  tail call void @free(ptr noundef %12) #17
  br label %52

52:                                               ; preds = %50, %2
  %53 = phi i32 [ 2, %2 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret i32 %53
}

; Function Attrs: optsize
declare ptr @create_preheader(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @thread_single_edge(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.redirection_data, align 8
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #15
  store ptr null, ptr %5, align 8, !tbaa !30
  %7 = load i64, ptr @thread_stats, align 8, !tbaa !28
  %8 = add i64 %7, 1
  store i64 %8, ptr @thread_stats, align 8, !tbaa !28
  %9 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %4) #17, !range !12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !32
  tail call fastcc void @remove_ctrl_stmt_and_useless_edges(ptr noundef %4, ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !108
  %16 = and i32 %15, -3076
  %17 = or disjoint i32 %16, 1
  store i32 %17, ptr %14, align 8, !tbaa !108
  br label %64

18:                                               ; preds = %1
  %19 = load ptr, ptr %0, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 11
  %21 = load i32, ptr %20, align 8, !tbaa !56
  %22 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %23 = load i32, ptr %22, align 4, !tbaa !57
  %24 = mul nsw i32 %23, %21
  %25 = add nsw i32 %24, 5000
  %26 = sdiv i32 %25, 10000
  %27 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %28 = load i64, ptr %27, align 8, !tbaa !58
  tail call void @update_bb_profile_for_threading(ptr noundef %4, i32 noundef %26, i64 noundef %28, ptr noundef %6) #16
  %29 = getelementptr inbounds %struct.redirection_data, ptr %2, i64 0, i32 1
  store ptr %6, ptr %29, align 8, !tbaa !101
  call fastcc void @create_block_for_threading(ptr noundef %4, ptr noundef nonnull %2) #17
  call fastcc void @create_edge_and_update_destination_phis(ptr noundef nonnull %2) #17
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load ptr, ptr %2, align 8, !tbaa !102
  br label %49

34:                                               ; preds = %18
  %35 = load i32, ptr @dump_flags, align 4, !tbaa !16
  %36 = and i32 %35, 8
  %37 = icmp eq i32 %36, 0
  %38 = load ptr, ptr %2, align 8, !tbaa !102
  br i1 %37, label %49, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %0, align 8, !tbaa !55
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !26
  %43 = load ptr, ptr %3, align 8, !tbaa !32
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !26
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !26
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %30, ptr noundef nonnull @.str.5, i32 noundef %42, i32 noundef %45, i32 noundef %47) #17
  br label %49

49:                                               ; preds = %32, %39, %34
  %50 = phi ptr [ %33, %32 ], [ %38, %39 ], [ %38, %34 ]
  %51 = load i64, ptr %27, align 8, !tbaa !58
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 8
  store i64 %51, ptr %52, align 8, !tbaa !107
  %53 = load ptr, ptr %0, align 8, !tbaa !55
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 11
  %55 = load i32, ptr %54, align 8, !tbaa !56
  %56 = load i32, ptr %22, align 4, !tbaa !57
  %57 = mul nsw i32 %56, %55
  %58 = add nsw i32 %57, 5000
  %59 = sdiv i32 %58, 10000
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 11
  store i32 %59, ptr %60, align 8, !tbaa !56
  %61 = tail call fastcc ptr @single_succ_edge(ptr noundef %50) #17
  %62 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 9
  store i64 %51, ptr %62, align 8, !tbaa !58
  %63 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %0, ptr noundef %50) #16
  tail call void @flush_pending_stmts(ptr noundef nonnull %0) #16
  br label %64

64:                                               ; preds = %49, %11
  %65 = phi ptr [ %4, %11 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #15
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  ret ptr %4
}

; Function Attrs: optsize
declare void @set_loop_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_forwarder_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @mfb_keep_just(ptr noundef) #2

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @dfs_enumerate_from(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @dbds_continue_enumeration_p(ptr noundef readnone %0, ptr noundef readnone %1) #14 {
  %3 = icmp ne ptr %0, %1
  %4 = load ptr, ptr @dbds_ce_stop, align 8
  %5 = icmp ne ptr %4, %0
  %6 = select i1 %3, i1 %5, i1 false
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !119
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !16
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !16
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !118
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #17
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @threaded_edges, align 8, !tbaa !5
  %2 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %1) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #16
  store ptr %5, ptr @threaded_edges, align 8, !tbaa !5
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !51
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !51
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !127
  %6 = load i32, ptr %0, align 8, !tbaa !51
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 32}
!10 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !6, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!11 = !{!"int", !7, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{!10, !6, i64 8}
!14 = !{!15, !6, i64 16}
!15 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !6, i64 40, !11, i64 48, !7, i64 52, !7, i64 60, !11, i64 68, !11, i64 72}
!16 = !{!11, !11, i64 0}
!17 = !{!18, !6, i64 0}
!18 = !{!"basic_block_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 48, !6, i64 56, !7, i64 64, !19, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!19 = !{!"long", !7, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !6, i64 8}
!23 = !{!"loop", !11, i64 0, !11, i64 4, !6, i64 8, !6, i64 16, !24, i64 24, !11, i64 32, !11, i64 36, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !25, i64 80, !25, i64 96, !7, i64 112, !7, i64 113, !11, i64 116, !6, i64 120, !6, i64 128, !7, i64 136, !6, i64 144}
!24 = !{!"lpt_decision", !11, i64 0, !11, i64 4}
!25 = !{!"", !19, i64 0, !19, i64 8}
!26 = !{!18, !11, i64 80}
!27 = distinct !{!27, !21}
!28 = !{!29, !19, i64 0}
!29 = !{!"thread_stats_d", !19, i64 0}
!30 = !{!31, !6, i64 24}
!31 = !{!"edge_def", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !19, i64 56}
!32 = !{!31, !6, i64 8}
!33 = distinct !{!33, !21}
!34 = !{i64 0, i64 4, !16, i64 8, i64 8, !5}
!35 = !{i64 0, i64 8, !5}
!36 = distinct !{!36, !21}
!37 = distinct !{!37, !21}
!38 = !{!39, !6, i64 0}
!39 = !{!"bitmap_head_def", !6, i64 0, !6, i64 8, !11, i64 16, !6, i64 24}
!40 = !{!41, !6, i64 0}
!41 = !{!"", !6, i64 0, !6, i64 8, !11, i64 16, !19, i64 24}
!42 = !{!41, !6, i64 8}
!43 = !{!44, !11, i64 16}
!44 = !{!"bitmap_element_def", !6, i64 0, !6, i64 8, !11, i64 16, !7, i64 24}
!45 = !{!41, !11, i64 16}
!46 = !{!19, !19, i64 0}
!47 = !{!41, !19, i64 24}
!48 = distinct !{!48, !21}
!49 = distinct !{!49, !21}
!50 = !{!44, !6, i64 0}
!51 = !{!52, !11, i64 0}
!52 = !{!"VEC_edge_base", !11, i64 0, !11, i64 4, !7, i64 8}
!53 = !{!18, !6, i64 24}
!54 = !{!18, !6, i64 8}
!55 = !{!31, !6, i64 0}
!56 = !{!18, !11, i64 88}
!57 = !{!31, !11, i64 52}
!58 = !{!31, !19, i64 56}
!59 = distinct !{!59, !21}
!60 = !{!61, !7, i64 24}
!61 = !{!"redirection_data", !6, i64 0, !6, i64 8, !6, i64 16, !7, i64 24}
!62 = !{!63, !6, i64 8}
!63 = !{!"local_info", !6, i64 0, !6, i64 8, !7, i64 16}
!64 = !{!63, !6, i64 0}
!65 = !{!63, !7, i64 16}
!66 = !{!67, !11, i64 8}
!67 = !{!"", !6, i64 0, !11, i64 8}
!68 = !{!67, !6, i64 0}
!69 = !{!70, !6, i64 24}
!70 = !{!"loops", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!71 = !{!23, !6, i64 48}
!72 = distinct !{!72, !21}
!73 = !{!23, !11, i64 0}
!74 = !{!23, !6, i64 56}
!75 = distinct !{!75, !21}
!76 = distinct !{!76, !21}
!77 = !{!23, !6, i64 16}
!78 = !{i32 0, i32 3}
!79 = distinct !{!79, !21}
!80 = distinct !{!80, !21}
!81 = !{i32 0, i32 2}
!82 = distinct !{!82, !21}
!83 = !{!70, !11, i64 0}
!84 = !{i32 0, i32 256}
!85 = distinct !{!85, !21}
!86 = !{!87, !11, i64 0}
!87 = !{!"", !11, i64 0, !6, i64 8}
!88 = !{!89, !6, i64 0}
!89 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!90 = !{!89, !6, i64 8}
!91 = !{!89, !6, i64 16}
!92 = !{!93, !6, i64 0}
!93 = !{!"gimple_seq_node_d", !6, i64 0, !6, i64 8, !6, i64 16}
!94 = !{!93, !6, i64 16}
!95 = !{!18, !11, i64 96}
!96 = !{!7, !7, i64 0}
!97 = !{!98, !6, i64 0}
!98 = !{!"gimple_bb_info", !6, i64 0, !6, i64 8}
!99 = !{!100, !6, i64 0}
!100 = !{!"gimple_seq_d", !6, i64 0, !6, i64 8, !6, i64 16}
!101 = !{!61, !6, i64 8}
!102 = !{!61, !6, i64 0}
!103 = !{!61, !6, i64 16}
!104 = !{!105, !6, i64 0}
!105 = !{!"el", !6, i64 0, !6, i64 8}
!106 = !{!105, !6, i64 8}
!107 = !{!18, !19, i64 72}
!108 = !{!31, !11, i64 48}
!109 = distinct !{!109, !21}
!110 = !{!31, !11, i64 44}
!111 = distinct !{!111, !21}
!112 = distinct !{!112, !21}
!113 = !{!100, !6, i64 8}
!114 = !{!115, !11, i64 40}
!115 = !{!"phi_arg_d", !116, i64 0, !6, i64 32, !11, i64 40}
!116 = !{!"ssa_use_operand_d", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24}
!117 = !{!116, !6, i64 24}
!118 = !{!70, !6, i64 8}
!119 = !{!120, !11, i64 0}
!120 = !{!"VEC_int_base", !11, i64 0, !11, i64 4, !7, i64 8}
!121 = !{!23, !6, i64 40}
!122 = !{!123, !11, i64 0}
!123 = !{!"VEC_loop_p_base", !11, i64 0, !11, i64 4, !7, i64 8}
!124 = !{!23, !11, i64 36}
!125 = distinct !{!125, !21}
!126 = distinct !{!126, !21}
!127 = !{!52, !11, i64 4}
