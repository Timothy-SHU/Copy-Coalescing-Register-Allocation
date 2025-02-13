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
define dso_local zeroext i8 @thread_through_all_blocks(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !158 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.loop_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %6 = load ptr, ptr @cfun, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !163
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !166

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1042, ptr noundef nonnull @.str.1) #16
  br label %11

11:                                               ; preds = %1, %10
  %12 = load ptr, ptr @threaded_edges, align 8, !tbaa !159
  %13 = icmp eq ptr %12, null
  br i1 %13, label %70, label %14, !prof !167

14:                                               ; preds = %11
  %15 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  store i64 0, ptr @thread_stats, align 8
  tail call fastcc void @mark_threaded_blocks(ptr noundef %15) #17
  tail call void @initialize_original_copy_tables() #16
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %15, ptr noundef nonnull %2) #17
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #17, !range !168
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %41, label %18, !prof !169

18:                                               ; preds = %14
  %19 = load ptr, ptr @cfun, align 8, !tbaa !159
  br label %20

20:                                               ; preds = %18, %36
  %21 = phi ptr [ %37, %36 ], [ %19, %18 ]
  %22 = phi i8 [ %38, %36 ], [ 0, %18 ]
  %23 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !170
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !171
  %27 = load i32, ptr %2, align 4, !tbaa !173
  %28 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %26, i32 noundef %27) #17
  %29 = load ptr, ptr %28, align 8, !tbaa !174
  %30 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %29) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32, !prof !177

32:                                               ; preds = %20
  %33 = tail call fastcc zeroext i8 @thread_block(ptr noundef nonnull %28, i8 noundef zeroext 1) #17
  %34 = or i8 %33, %22
  %35 = load ptr, ptr @cfun, align 8, !tbaa !159
  br label %36

36:                                               ; preds = %32, %20
  %37 = phi ptr [ %35, %32 ], [ %21, %20 ]
  %38 = phi i8 [ %34, %32 ], [ %22, %20 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %39 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #17, !range !168
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %20, !prof !178, !llvm.loop !179

41:                                               ; preds = %36, %14
  %42 = phi i8 [ 0, %14 ], [ %38, %36 ]
  call fastcc void @fel_init(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %43 = load ptr, ptr %4, align 8, !tbaa !159
  %44 = icmp eq ptr %43, null
  br i1 %44, label %63, label %45, !prof !181

45:                                               ; preds = %41, %59
  %46 = phi ptr [ %61, %59 ], [ %43, %41 ]
  %47 = phi i8 [ %60, %59 ], [ %42, %41 ]
  %48 = getelementptr inbounds %struct.loop, ptr %46, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !182
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !186
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
  %61 = load ptr, ptr %4, align 8, !tbaa !159
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %45, !prof !187, !llvm.loop !188

63:                                               ; preds = %59, %41
  %64 = phi i8 [ %42, %41 ], [ %60, %59 ]
  %65 = load ptr, ptr @cfun, align 8, !tbaa !159
  %66 = load i64, ptr @thread_stats, align 8, !tbaa !189
  %67 = trunc i64 %66 to i32
  tail call void @statistics_counter_event(ptr noundef %65, ptr noundef nonnull @.str.2, i32 noundef %67) #16
  tail call void @free_original_copy_tables() #16
  tail call void @bitmap_obstack_free(ptr noundef %15) #16
  tail call fastcc void @VEC_edge_heap_free() #17
  store ptr null, ptr @threaded_edges, align 8, !tbaa !159
  %68 = icmp eq i8 %64, 0
  br i1 %68, label %70, label %69, !prof !191

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
define internal fastcc void @mark_threaded_blocks(ptr noundef %0) unnamed_addr #0 !prof !192 !PGOFuncName !193 {
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
  br i1 %9, label %26, label %10, !prof !169

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %23, %10 ], [ %7, %1 ]
  %12 = phi i32 [ %22, %10 ], [ 0, %1 ]
  %13 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef %12) #17
  %14 = or disjoint i32 %12, 1
  %15 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef %14) #17
  %16 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !194
  %17 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !196
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !186
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %20) #16
  %22 = add i32 %12, 2
  %23 = load ptr, ptr @threaded_edges, align 8
  %24 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %23) #17
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %10, label %26, !prof !197, !llvm.loop !198

26:                                               ; preds = %10, %1
  %27 = phi i32 [ 0, %1 ], [ %22, %10 ]
  store i32 %27, ptr %2, align 4, !tbaa !173
  %28 = load ptr, ptr @cfun, align 8, !tbaa !159
  %29 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %28) #16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %66, label %31, !prof !199

31:                                               ; preds = %26
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %6, ptr noundef nonnull %2) #17
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #17, !range !168
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %67, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %5, i64 8
  br label %36

36:                                               ; preds = %34, %63
  %37 = load ptr, ptr @cfun, align 8, !tbaa !159
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !170
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !171
  %42 = load i32, ptr %2, align 4, !tbaa !173
  %43 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %41, i32 noundef %42) #17
  %44 = load ptr, ptr %43, align 8, !tbaa !174
  %45 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %44) #17
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %47, label %61

47:                                               ; preds = %36
  %48 = tail call fastcc zeroext i8 @redirection_block_p(ptr noundef nonnull %43) #17, !range !168
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %43) #17
  store i32 0, ptr %5, align 8, !tbaa.struct !200
  store ptr %51, ptr %35, align 8, !tbaa.struct !201
  %52 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %51, ptr noundef nonnull %4) #17, !range !168
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %50, %54
  %55 = load ptr, ptr %4, align 8, !tbaa !159
  %56 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 3
  store ptr null, ptr %56, align 8, !tbaa !194
  call fastcc void @ei_next(ptr noundef nonnull %5) #17
  %57 = load i32, ptr %5, align 8
  %58 = load ptr, ptr %35, align 8
  %59 = call fastcc zeroext i8 @ei_cond(i32 %57, ptr %58, ptr noundef nonnull %4) #17, !range !168
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %63, label %54, !llvm.loop !202

61:                                               ; preds = %47, %36
  %62 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %42) #16
  br label %63

63:                                               ; preds = %54, %50, %61
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %64 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #17, !range !168
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %67, label %36, !llvm.loop !203

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
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !prof !192 !PGOFuncName !204 {
  %4 = load ptr, ptr %1, align 8, !tbaa !205
  store ptr %4, ptr %0, align 8, !tbaa !207
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !209
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !191

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !207
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !210
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !212
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !213
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !214
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !173
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #5 !prof !215 !PGOFuncName !216 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !214
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !217

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !218

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !173
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !219, !llvm.loop !220

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !173
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !173
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !212
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !207
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !212
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !221

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !213
  store i64 %35, ptr %3, align 8, !tbaa !214
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !222

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !173
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !173
  %40 = load i32, ptr %23, align 8, !tbaa !212
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !212
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !223, !llvm.loop !224

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !225
  store ptr %44, ptr %0, align 8, !tbaa !207
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !226

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !210
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !173
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !214
  store i32 %16, ptr %1, align 4, !tbaa !173
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !227 !PGOFuncName !228 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !159
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !229 !PGOFuncName !230 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !231

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !232
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @thread_block(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !227 !PGOFuncName !234 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca %struct.local_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !235
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !236
  %10 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %9) #17
  %11 = zext i32 %10 to i64
  %12 = tail call ptr @htab_create(i64 noundef %11, ptr noundef nonnull @redirection_data_hash, ptr noundef nonnull @redirection_data_eq, ptr noundef nonnull @free) #16
  store ptr %12, ptr @redirection_data, align 8, !tbaa !159
  %13 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %25, !prof !177

16:                                               ; preds = %2
  %17 = tail call ptr @loop_latch_edge(ptr noundef nonnull %7) #16
  store ptr %17, ptr %3, align 8, !tbaa !159
  %18 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !194
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
  store i32 0, ptr %4, align 8, !tbaa.struct !200
  %27 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %26, ptr %27, align 8, !tbaa.struct !201
  %28 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %26, ptr noundef nonnull %3) #17, !range !168
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %72, label %30, !prof !237

30:                                               ; preds = %25
  %31 = icmp eq i8 %1, 0
  br label %32

32:                                               ; preds = %30, %64
  %33 = phi i8 [ 1, %30 ], [ %65, %64 ]
  %34 = load ptr, ptr %3, align 8, !tbaa !159
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !194
  %37 = icmp eq ptr %36, null
  br i1 %37, label %64, label %38, !prof !238

38:                                               ; preds = %32
  br i1 %31, label %49, label %39, !prof !239

39:                                               ; preds = %38
  %40 = load ptr, ptr %6, align 8, !tbaa !235
  %41 = getelementptr inbounds %struct.loop, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !182
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %44, label %49, !prof !239

44:                                               ; preds = %39
  %45 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef nonnull %40, ptr noundef nonnull %36) #16
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %35, align 8, !tbaa !194
  br label %49

49:                                               ; preds = %47, %39, %38
  %50 = phi ptr [ %48, %47 ], [ %36, %39 ], [ %36, %38 ]
  %51 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !196
  %53 = load ptr, ptr %34, align 8, !tbaa !240
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 11
  %55 = load i32, ptr %54, align 8, !tbaa !241
  %56 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 8
  %57 = load i32, ptr %56, align 4, !tbaa !242
  %58 = mul nsw i32 %57, %55
  %59 = add nsw i32 %58, 5000
  %60 = sdiv i32 %59, 10000
  %61 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 9
  %62 = load i64, ptr %61, align 8, !tbaa !243
  tail call void @update_bb_profile_for_threading(ptr noundef %52, i32 noundef %60, i64 noundef %62, ptr noundef %50) #16
  %63 = tail call fastcc ptr @lookup_redirection_data(ptr noundef nonnull %36, ptr noundef nonnull %34, i32 noundef 1) #17
  br label %64

64:                                               ; preds = %32, %44, %49
  %65 = phi i8 [ %33, %49 ], [ 0, %44 ], [ 0, %32 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %66 = load i32, ptr %4, align 8
  %67 = load ptr, ptr %27, align 8
  %68 = call fastcc zeroext i8 @ei_cond(i32 %66, ptr %67, ptr noundef nonnull %3) #17, !range !168
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %32, !prof !244, !llvm.loop !245

70:                                               ; preds = %64
  %71 = icmp eq i8 %65, 0
  br i1 %71, label %79, label %72, !prof !246

72:                                               ; preds = %25, %70
  %73 = load ptr, ptr %0, align 8, !tbaa !174
  %74 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %73, i32 noundef 0) #17
  %75 = getelementptr inbounds %struct.edge_def, ptr %74, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !194
  %77 = tail call fastcc ptr @lookup_redirection_data(ptr noundef %76, ptr noundef null, i32 noundef 0) #17
  %78 = getelementptr inbounds %struct.redirection_data, ptr %77, i64 0, i32 3
  store i8 1, ptr %78, align 8, !tbaa !247
  br label %79

79:                                               ; preds = %72, %70
  tail call void @free_dominance_info(i32 noundef 1) #16
  %80 = getelementptr inbounds %struct.local_info, ptr %5, i64 0, i32 1
  store ptr null, ptr %80, align 8, !tbaa !249
  store ptr %0, ptr %5, align 8, !tbaa !251
  %81 = getelementptr inbounds %struct.local_info, ptr %5, i64 0, i32 2
  store i8 0, ptr %81, align 8, !tbaa !252
  %82 = load ptr, ptr @redirection_data, align 8, !tbaa !159
  call void @htab_traverse(ptr noundef %82, ptr noundef nonnull @create_duplicates, ptr noundef nonnull %5) #16
  %83 = load ptr, ptr @redirection_data, align 8, !tbaa !159
  call void @htab_traverse(ptr noundef %83, ptr noundef nonnull @fixup_template_block, ptr noundef nonnull %5) #16
  %84 = load ptr, ptr @redirection_data, align 8, !tbaa !159
  call void @htab_traverse(ptr noundef %84, ptr noundef nonnull @redirect_edges, ptr noundef nonnull %5) #16
  %85 = load ptr, ptr @redirection_data, align 8, !tbaa !159
  call void @htab_delete(ptr noundef %85) #16
  store ptr null, ptr @redirection_data, align 8, !tbaa !159
  %86 = load i8, ptr %81, align 8, !tbaa !252
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i8 %86
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !227 !PGOFuncName !253 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !214
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !214
  %6 = load i32, ptr %1, align 4, !tbaa !173
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !192 !PGOFuncName !254 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !255
  %4 = load ptr, ptr @cfun, align 8, !tbaa !159
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !191

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !257
  store ptr null, ptr %1, align 8, !tbaa !159
  br label %43

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #17
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #17
  store ptr %11, ptr %0, align 8, !tbaa !257
  %12 = load ptr, ptr @cfun, align 8, !tbaa !159
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !163
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !258
  br label %17

17:                                               ; preds = %17, %9
  %18 = phi ptr [ %16, %9 ], [ %20, %17 ]
  %19 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !260
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !prof !199, !llvm.loop !261

22:                                               ; preds = %17, %40
  %23 = phi ptr [ %41, %40 ], [ %18, %17 ]
  %24 = load i32, ptr %23, align 8, !tbaa !262
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %28, !prof !191

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 8, !tbaa !257
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %27, i32 noundef %24) #17
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !263
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32, !prof !199

32:                                               ; preds = %28, %32
  %33 = phi ptr [ %35, %32 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.loop, ptr %33, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !260
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %32, !llvm.loop !264

37:                                               ; preds = %28
  %38 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %23) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !199

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
define internal fastcc zeroext i8 @thread_through_loop_header(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !265 !PGOFuncName !266 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %7 = tail call ptr @loop_latch_edge(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %8 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %6) #17, !range !168
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %121

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.edge_def, ptr %7, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !194
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !196
  br label %59

17:                                               ; preds = %10
  %18 = icmp eq i8 %1, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = load ptr, ptr %5, align 8, !tbaa !182
  %21 = tail call fastcc zeroext i8 @redirection_block_p(ptr noundef %20) #17, !range !168
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %121, label %23

23:                                               ; preds = %19, %17
  %24 = tail call fastcc ptr @ei_start_1(ptr noundef %6) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !200
  %25 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %24, ptr %25, align 8, !tbaa.struct !201
  %26 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %24, ptr noundef nonnull %3) #17, !range !168
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %133, label %28

28:                                               ; preds = %23, %43
  %29 = phi ptr [ %45, %43 ], [ null, %23 ]
  %30 = phi ptr [ %44, %43 ], [ null, %23 ]
  %31 = load ptr, ptr %3, align 8, !tbaa !159
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !194
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = icmp eq ptr %31, %7
  br i1 %36, label %43, label %121

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.edge_def, ptr %33, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !196
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
  %48 = call fastcc zeroext i8 @ei_cond(i32 %46, ptr %47, ptr noundef nonnull %3) #17, !range !168
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %28, !llvm.loop !267

50:                                               ; preds = %43
  %51 = icmp eq ptr %44, null
  br i1 %51, label %133, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !268
  %55 = icmp eq ptr %44, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = tail call zeroext i8 @empty_block_p(ptr noundef nonnull %44) #16
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %121

59:                                               ; preds = %56, %52, %14
  %60 = phi ptr [ %16, %14 ], [ %44, %56 ], [ %44, %52 ]
  %61 = phi ptr [ %12, %14 ], [ %45, %56 ], [ %45, %52 ]
  %62 = tail call fastcc i32 @determine_bb_domination_status(ptr noundef nonnull %0, ptr noundef %60) #17, !range !269
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
  %67 = load ptr, ptr %66, align 8, !tbaa !235
  %68 = getelementptr inbounds %struct.loop, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !182
  %70 = icmp eq ptr %69, %60
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load ptr, ptr %60, align 8, !tbaa !174
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
  %83 = load ptr, ptr %11, align 8, !tbaa !194
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  %86 = tail call fastcc ptr @thread_single_edge(ptr noundef nonnull %7) #17
  %87 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  store ptr %86, ptr %87, align 8, !tbaa !268
  %88 = tail call fastcc ptr @single_succ(ptr noundef %86) #17
  %89 = icmp eq ptr %88, %82
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 915, ptr noundef nonnull @.str.1) #16
  br label %91

91:                                               ; preds = %85, %90
  store ptr %82, ptr %5, align 8, !tbaa !182
  %92 = tail call fastcc zeroext i8 @thread_block(ptr noundef %6, i8 noundef zeroext 0) #17
  br label %133

93:                                               ; preds = %81
  %94 = tail call fastcc ptr @ei_start_1(ptr noundef %6) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !200
  %95 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %94, ptr %95, align 8, !tbaa.struct !201
  %96 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %94, ptr noundef nonnull %3) #17, !range !168
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %93, %103
  %99 = load ptr, ptr %3, align 8, !tbaa !159
  %100 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !194
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %104 = load i32, ptr %4, align 8
  %105 = load ptr, ptr %95, align 8
  %106 = call fastcc zeroext i8 @ei_cond(i32 %104, ptr %105, ptr noundef nonnull %3) #17, !range !168
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %98, !llvm.loop !270

108:                                              ; preds = %103, %98, %93
  %109 = tail call fastcc ptr @loop_outer(ptr noundef %0) #17
  tail call void @set_loop_copy(ptr noundef %0, ptr noundef %109) #16
  %110 = tail call fastcc zeroext i8 @thread_block(ptr noundef %6, i8 noundef zeroext 0) #17
  tail call void @set_loop_copy(ptr noundef %0, ptr noundef null) #16
  %111 = load ptr, ptr %3, align 8, !tbaa !159
  %112 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !196
  %114 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  store ptr null, ptr %114, align 8, !tbaa !268
  %115 = tail call fastcc ptr @single_succ_edge(ptr noundef %113) #17
  store ptr %115, ptr @mfb_kj_edge, align 8, !tbaa !159
  %116 = getelementptr inbounds %struct.edge_def, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !196
  store ptr %117, ptr %5, align 8, !tbaa !182
  %118 = tail call ptr @make_forwarder_block(ptr noundef %82, ptr noundef nonnull @mfb_keep_just, ptr noundef null) #16
  %119 = load <2 x ptr>, ptr %118, align 8, !tbaa !159
  %120 = shufflevector <2 x ptr> %119, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %120, ptr %5, align 8, !tbaa !159
  br label %133

121:                                              ; preds = %41, %35, %59, %56, %19, %2
  %122 = tail call fastcc ptr @ei_start_1(ptr noundef %6) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !200
  %123 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %122, ptr %123, align 8, !tbaa.struct !201
  %124 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %122, ptr noundef nonnull %3) #17, !range !168
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %121, %126
  %127 = load ptr, ptr %3, align 8, !tbaa !159
  %128 = getelementptr inbounds %struct.edge_def, ptr %127, i64 0, i32 3
  store ptr null, ptr %128, align 8, !tbaa !194
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %129 = load i32, ptr %4, align 8
  %130 = load ptr, ptr %123, align 8
  %131 = call fastcc zeroext i8 @ei_cond(i32 %129, ptr %130, ptr noundef nonnull %3) #17, !range !168
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %126, !llvm.loop !271

133:                                              ; preds = %126, %23, %121, %91, %108, %50, %63
  %134 = phi i8 [ %64, %63 ], [ 0, %50 ], [ 1, %108 ], [ 1, %91 ], [ 0, %121 ], [ 0, %23 ], [ 0, %126 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i8 %134
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !192 !PGOFuncName !272 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !255
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !257
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #17, !range !273
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !199

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !255
  %13 = load i32, ptr %3, align 4, !tbaa !173
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #17
  store ptr %14, ptr %1, align 8, !tbaa !159
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !274

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #17
  store ptr null, ptr %1, align 8, !tbaa !159
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
define internal fastcc void @VEC_edge_heap_free() unnamed_addr #8 !prof !192 !PGOFuncName !275 {
  %1 = load ptr, ptr @threaded_edges, align 8, !tbaa !159
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !191

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #17
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @threaded_edges, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_set() unnamed_addr #9 !prof !192 !PGOFuncName !276 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !159
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  %4 = load i32, ptr %3, align 8, !tbaa !277
  %5 = or i32 %4, 64
  store i32 %5, ptr %3, align 8, !tbaa !277
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_jump_thread(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !278 {
  %3 = load ptr, ptr @threaded_edges, align 8, !tbaa !159
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !279

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @VEC_edge_heap_alloc() #17
  store ptr %6, ptr @threaded_edges, align 8, !tbaa !159
  br label %7

7:                                                ; preds = %5, %2
  tail call fastcc void @VEC_edge_heap_safe_push(ptr noundef %0) #17
  tail call fastcc void @VEC_edge_heap_safe_push(ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_edge_heap_alloc() unnamed_addr #0 !prof !192 !PGOFuncName !280 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #16
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !281 !PGOFuncName !282 {
  tail call fastcc void @VEC_edge_heap_reserve() #17
  %2 = load ptr, ptr @threaded_edges, align 8, !tbaa !159
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %2, ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !283 !PGOFuncName !284 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !159
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @redirection_block_p(ptr noundef %0) unnamed_addr #5 !prof !265 !PGOFuncName !285 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #17
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !168
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %1, %15
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #17, !range !286
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %6) #17, !range !168
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %6) #17, !range !168
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9, %5, %12
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %16 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !168
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %5, label %26, !llvm.loop !287

18:                                               ; preds = %12
  %19 = icmp eq ptr %6, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %6) #17, !range !286
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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 !prof !288 !PGOFuncName !289 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !290 !PGOFuncName !291 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !168
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !292

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !159
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !293 !PGOFuncName !294 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !295

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #17
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #17
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !296

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !297
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !297
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 !prof !265 !PGOFuncName !299 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !300
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !302
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !303
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !304 !PGOFuncName !305 {
  %2 = load ptr, ptr %0, align 8, !tbaa !300
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !306 !PGOFuncName !307 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #11 !prof !308 !PGOFuncName !309 {
  %2 = load ptr, ptr %0, align 8, !tbaa !300
  %3 = load ptr, ptr %2, align 8, !tbaa !310
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !265 !PGOFuncName !312 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !286
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !265 !PGOFuncName !313 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !286
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #4 !prof !314 !PGOFuncName !315 {
  %2 = load ptr, ptr %0, align 8, !tbaa !300
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !316
  store ptr %4, ptr %0, align 8, !tbaa !300
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !317 !PGOFuncName !318 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !319
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !320

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !321
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !322

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !323
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 !prof !265 !PGOFuncName !325 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !326
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !328 !PGOFuncName !329 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !330

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !331 !PGOFuncName !332 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !333

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #17
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !334 !PGOFuncName !335 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !336

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.1) #16
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !159
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @redirection_data_hash(ptr nocapture noundef readonly %0) #11 !prof !337 !PGOFuncName !338 {
  %2 = getelementptr inbounds %struct.redirection_data, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !339
  %4 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !196
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !186
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @redirection_data_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !prof !340 !PGOFuncName !341 {
  %3 = getelementptr inbounds %struct.redirection_data, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !339
  %5 = getelementptr inbounds %struct.redirection_data, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !339
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
define internal fastcc ptr @lookup_redirection_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !337 !PGOFuncName !342 {
  %4 = tail call ptr @xmalloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.redirection_data, ptr %4, i64 0, i32 1
  store ptr %0, ptr %5, align 8, !tbaa !339
  store ptr null, ptr %4, align 8, !tbaa !343
  %6 = getelementptr inbounds %struct.redirection_data, ptr %4, i64 0, i32 3
  store i8 0, ptr %6, align 8, !tbaa !247
  %7 = getelementptr inbounds %struct.redirection_data, ptr %4, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !344
  %8 = load ptr, ptr @redirection_data, align 8, !tbaa !159
  %9 = tail call ptr @htab_find_slot(ptr noundef %8, ptr noundef nonnull %4, i32 noundef %2) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !345

11:                                               ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #17
  br label %26

12:                                               ; preds = %3
  %13 = load ptr, ptr %9, align 8, !tbaa !159
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18, !prof !346

15:                                               ; preds = %12
  store ptr %4, ptr %9, align 8, !tbaa !159
  %16 = tail call ptr @xmalloc(i64 noundef 16) #16
  store ptr %16, ptr %7, align 8, !tbaa !344
  store ptr %1, ptr %16, align 8, !tbaa !347
  %17 = getelementptr inbounds %struct.el, ptr %16, i64 0, i32 1
  store ptr null, ptr %17, align 8, !tbaa !349
  br label %26

18:                                               ; preds = %12
  tail call void @free(ptr noundef nonnull %4) #17
  %19 = load ptr, ptr %9, align 8, !tbaa !159
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %26, label %21, !prof !350

21:                                               ; preds = %18
  %22 = tail call ptr @xmalloc(i64 noundef 16) #16
  %23 = getelementptr inbounds %struct.redirection_data, ptr %19, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !344
  %25 = getelementptr inbounds %struct.el, ptr %22, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !349
  store ptr %1, ptr %22, align 8, !tbaa !347
  store ptr %22, ptr %23, align 8, !tbaa !344
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
define internal noundef i32 @create_duplicates(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 !prof !351 !PGOFuncName !352 {
  %3 = load ptr, ptr %0, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.redirection_data, ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 8, !tbaa !247
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %15, !prof !353

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.local_info, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !249
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14, !prof !354

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 8, !tbaa !251
  tail call fastcc void @create_block_for_threading(ptr noundef %12, ptr noundef nonnull %3) #17
  %13 = load ptr, ptr %3, align 8, !tbaa !343
  store ptr %13, ptr %8, align 8, !tbaa !249
  br label %15

14:                                               ; preds = %7
  tail call fastcc void @create_block_for_threading(ptr noundef nonnull %9, ptr noundef nonnull %3) #17
  tail call fastcc void @create_edge_and_update_destination_phis(ptr noundef nonnull %3) #17
  br label %15

15:                                               ; preds = %11, %14, %2
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @fixup_template_block(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !355 !PGOFuncName !356 {
  %3 = load ptr, ptr %0, align 8, !tbaa !159
  %4 = load ptr, ptr %3, align 8, !tbaa !343
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6, !prof !357

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.local_info, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !249
  %9 = icmp eq ptr %4, %8
  br i1 %9, label %10, label %11, !prof !358

10:                                               ; preds = %6
  tail call fastcc void @create_edge_and_update_destination_phis(ptr noundef nonnull %3) #17
  br label %11

11:                                               ; preds = %2, %6, %10
  %12 = phi i32 [ 0, %10 ], [ 1, %6 ], [ 1, %2 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @redirect_edges(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 !prof !351 !PGOFuncName !359 {
  %3 = load ptr, ptr %0, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.redirection_data, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !344
  %6 = icmp eq ptr %5, null
  br i1 %6, label %117, label %7, !prof !360

7:                                                ; preds = %2, %110
  %8 = phi ptr [ %11, %110 ], [ %5, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !347
  %10 = getelementptr inbounds %struct.el, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !349
  tail call void @free(ptr noundef nonnull %8) #17
  %12 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 3
  store ptr null, ptr %12, align 8, !tbaa !194
  %13 = load i64, ptr @thread_stats, align 8, !tbaa !189
  %14 = add i64 %13, 1
  store i64 %14, ptr @thread_stats, align 8, !tbaa !189
  %15 = load ptr, ptr %3, align 8, !tbaa !343
  %16 = icmp eq ptr %15, null
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !159
  %18 = icmp eq ptr %17, null
  br i1 %16, label %64, label %19, !prof !361

19:                                               ; preds = %7
  br i1 %18, label %36, label %20, !prof !362

20:                                               ; preds = %19
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !173
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %9, align 8, !tbaa !240
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !186
  %28 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !196
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !186
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !186
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %17, ptr noundef nonnull @.str.5, i32 noundef %27, i32 noundef %31, i32 noundef %33) #17
  %35 = load ptr, ptr %3, align 8, !tbaa !343
  br label %36

36:                                               ; preds = %24, %20, %19
  %37 = phi ptr [ %35, %24 ], [ %15, %20 ], [ %15, %19 ]
  %38 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 9
  %39 = load i64, ptr %38, align 8, !tbaa !243
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !363
  %42 = add nsw i64 %41, %39
  store i64 %42, ptr %40, align 8, !tbaa !363
  %43 = load ptr, ptr %9, align 8, !tbaa !240
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 11
  %45 = load i32, ptr %44, align 8, !tbaa !241
  %46 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 8
  %47 = load i32, ptr %46, align 4, !tbaa !242
  %48 = mul nsw i32 %47, %45
  %49 = add nsw i32 %48, 5000
  %50 = sdiv i32 %49, 10000
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 11
  %52 = load i32, ptr %51, align 8, !tbaa !241
  %53 = add nsw i32 %50, %52
  store i32 %53, ptr %51, align 8, !tbaa !241
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !236
  %56 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %55, i32 noundef 0) #17
  %57 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 9
  %58 = load i64, ptr %57, align 8, !tbaa !243
  %59 = add nsw i64 %58, %39
  store i64 %59, ptr %57, align 8, !tbaa !243
  %60 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %9, ptr noundef %37) #16
  %61 = icmp eq ptr %9, %60
  br i1 %61, label %63, label %62, !prof !362

62:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 436, ptr noundef nonnull @.str.1) #16
  br label %63

63:                                               ; preds = %36, %62
  tail call void @flush_pending_stmts(ptr noundef %60) #16
  br label %110

64:                                               ; preds = %7
  br i1 %18, label %81, label %65, !prof !364

65:                                               ; preds = %64
  %66 = load i32, ptr @dump_flags, align 4, !tbaa !173
  %67 = and i32 %66, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %9, align 8, !tbaa !240
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 9
  %72 = load i32, ptr %71, align 8, !tbaa !186
  %73 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !196
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !186
  %77 = load ptr, ptr %1, align 8, !tbaa !251
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 9
  %79 = load i32, ptr %78, align 8, !tbaa !186
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %17, ptr noundef nonnull @.str.5, i32 noundef %72, i32 noundef %76, i32 noundef %79) #17
  br label %81

81:                                               ; preds = %69, %65, %64
  %82 = getelementptr inbounds %struct.redirection_data, ptr %3, i64 0, i32 1
  %83 = load ptr, ptr %1, align 8, !tbaa !251
  %84 = load ptr, ptr %82, align 8, !tbaa !339
  %85 = getelementptr inbounds %struct.edge_def, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !196
  tail call fastcc void @remove_ctrl_stmt_and_useless_edges(ptr noundef %83, ptr noundef %86) #17
  %87 = load ptr, ptr %1, align 8, !tbaa !251
  %88 = tail call fastcc ptr @single_succ_edge(ptr noundef %87) #17
  %89 = getelementptr inbounds %struct.edge_def, ptr %88, i64 0, i32 7
  %90 = load i32, ptr %89, align 8, !tbaa !365
  %91 = and i32 %90, -3075
  store i32 %91, ptr %89, align 8, !tbaa !365
  %92 = load ptr, ptr %1, align 8, !tbaa !251
  %93 = tail call fastcc ptr @single_succ_edge(ptr noundef %92) #17
  %94 = getelementptr inbounds %struct.edge_def, ptr %93, i64 0, i32 7
  %95 = load i32, ptr %94, align 8, !tbaa !365
  %96 = or i32 %95, 1
  store i32 %96, ptr %94, align 8, !tbaa !365
  %97 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 9
  %98 = load i64, ptr %97, align 8, !tbaa !243
  %99 = load ptr, ptr %1, align 8, !tbaa !251
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 8
  store i64 %98, ptr %100, align 8, !tbaa !363
  %101 = load ptr, ptr %9, align 8, !tbaa !240
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %101, i64 0, i32 11
  %103 = load i32, ptr %102, align 8, !tbaa !241
  %104 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 8
  %105 = load i32, ptr %104, align 4, !tbaa !242
  %106 = mul nsw i32 %105, %103
  %107 = add nsw i32 %106, 5000
  %108 = sdiv i32 %107, 10000
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 11
  store i32 %108, ptr %109, align 8, !tbaa !241
  br label %110

110:                                              ; preds = %81, %63
  %111 = icmp eq ptr %11, null
  br i1 %111, label %112, label %7, !prof !366, !llvm.loop !367

112:                                              ; preds = %110
  %113 = load ptr, ptr %4, align 8, !tbaa !344
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115, !prof !368

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.local_info, ptr %1, i64 0, i32 2
  store i8 1, ptr %116, align 8, !tbaa !252
  br label %117

117:                                              ; preds = %2, %115, %112
  ret i32 1
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_block_for_threading(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !369 !PGOFuncName !370 {
  %3 = tail call ptr @duplicate_block(ptr noundef %0, ptr noundef null, ptr noundef null) #16
  store ptr %3, ptr %1, align 8, !tbaa !343
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 11
  store i32 0, ptr %4, align 8, !tbaa !241
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 8
  store i64 0, ptr %5, align 8, !tbaa !363
  tail call fastcc void @remove_ctrl_stmt_and_useless_edges(ptr noundef %3, ptr noundef null) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_edge_and_update_destination_phis(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !369 !PGOFuncName !371 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !343
  %4 = getelementptr inbounds %struct.redirection_data, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !339
  %6 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !196
  %8 = tail call ptr @make_edge(ptr noundef %3, ptr noundef %7, i32 noundef 1) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  tail call void @rescan_loop_exit(ptr noundef %8, i8 noundef zeroext 1, i8 noundef zeroext 0) #16
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 8
  store i32 10000, ptr %9, align 4, !tbaa !242
  %10 = load ptr, ptr %0, align 8, !tbaa !343
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !363
  %13 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 9
  store i64 %12, ptr %13, align 8, !tbaa !243
  %14 = load ptr, ptr %4, align 8, !tbaa !339
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !194
  %17 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !194
  %18 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !196
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %19) #16
  %20 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !168
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %32, !prof !372

22:                                               ; preds = %1, %22
  %23 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %24 = load ptr, ptr %4, align 8, !tbaa !339
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !373
  %27 = sext i32 %26 to i64
  %28 = call fastcc i32 @gimple_phi_arg_location(ptr noundef %23, i64 noundef %27) #17
  %29 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %23, i64 noundef %27) #17
  call void @add_phi_arg(ptr noundef %23, ptr noundef %29, ptr noundef %8, i32 noundef %28) #16
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %30 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !168
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %22, label %32, !prof !374, !llvm.loop !375

32:                                               ; preds = %22, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare ptr @duplicate_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_ctrl_stmt_and_useless_edges(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 !prof !317 !PGOFuncName !376 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #17
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17, !range !168
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14, !prof !377

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !378

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %8) #17, !range !286
  %12 = trunc i32 %11 to i8
  switch i8 %12, label %14 [
    i8 1, label %13
    i8 3, label %13
    i8 5, label %13
  ], !prof !379

13:                                               ; preds = %10, %10, %10
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #16
  br label %14

14:                                               ; preds = %10, %13, %7, %2
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %16 = call fastcc ptr @ei_start_1(ptr noundef nonnull %15) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !200
  %17 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %16, ptr %17, align 8, !tbaa.struct !201
  %18 = call fastcc ptr @ei_safe_edge(i32 0, ptr %16) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20, !prof !380

20:                                               ; preds = %14, %27
  %21 = phi ptr [ %30, %27 ], [ %18, %14 ]
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !196
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %26, label %25, !prof !381

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
  br i1 %31, label %32, label %20, !prof !382, !llvm.loop !383

32:                                               ; preds = %27, %14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 !prof !317 !PGOFuncName !384 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !300
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !302
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !303
  ret void
}

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !385 !PGOFuncName !386 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !168
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !387

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
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #6 !prof !317 !PGOFuncName !388 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !322

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !389
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
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !314 !PGOFuncName !390 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #17
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !391
  ret i32 %6
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !314 !PGOFuncName !394 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #17
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #17
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !395 !PGOFuncName !396 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !321
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !397

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !314 !PGOFuncName !398 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !399
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  ret ptr %4
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @flush_pending_stmts(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !400 !PGOFuncName !401 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #17, !range !168
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !402

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !236
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #17
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !400 !PGOFuncName !403 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !236
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !192 !PGOFuncName !404 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #11 !prof !192 !PGOFuncName !405 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !159
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !191

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !406
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #17
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #7 !prof !265 !PGOFuncName !407 {
  %3 = load i32, ptr %0, align 4, !tbaa !408
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !408
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !173
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !192 !PGOFuncName !410 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !411
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !199

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
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !412 !PGOFuncName !413 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !414

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !415
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !265 !PGOFuncName !417 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !159
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @empty_block_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @determine_bb_domination_status(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !265 !PGOFuncName !418 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !268
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %52, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !419
  %11 = zext i32 %10 to i64
  %12 = tail call ptr @xcalloc(i64 noundef %11, i64 noundef 8) #16
  %13 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  store ptr %14, ptr @dbds_ce_stop, align 8, !tbaa !159
  %15 = load ptr, ptr %5, align 8, !tbaa !268
  %16 = load i32, ptr %9, align 4, !tbaa !419
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
  %26 = load ptr, ptr %25, align 8, !tbaa !159
  %27 = tail call fastcc ptr @ei_start_1(ptr noundef %26) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !200
  store ptr %27, ptr %20, align 8, !tbaa.struct !201
  %28 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %27, ptr noundef nonnull %4) #17, !range !168
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %22, %36
  %31 = phi i8 [ %38, %36 ], [ %24, %22 ]
  %32 = load ptr, ptr %4, align 8, !tbaa !159
  %33 = load ptr, ptr %32, align 8, !tbaa !240
  %34 = load ptr, ptr %13, align 8, !tbaa !182
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %50, label %36

36:                                               ; preds = %30
  %37 = icmp eq ptr %33, %1
  %38 = select i1 %37, i8 1, i8 %31
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %39 = load i32, ptr %3, align 8
  %40 = load ptr, ptr %20, align 8
  %41 = call fastcc zeroext i8 @ei_cond(i32 %39, ptr %40, ptr noundef nonnull %4) #17, !range !168
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %30, !llvm.loop !420

43:                                               ; preds = %36, %22
  %44 = phi i8 [ %24, %22 ], [ %38, %36 ]
  %45 = add nuw nsw i64 %23, 1
  %46 = icmp eq i64 %45, %21
  br i1 %46, label %47, label %22, !llvm.loop !421

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
define internal fastcc noundef ptr @thread_single_edge(ptr noundef %0) unnamed_addr #0 !prof !265 !PGOFuncName !422 {
  %2 = alloca %struct.redirection_data, align 8
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !196
  %5 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #15
  store ptr null, ptr %5, align 8, !tbaa !194
  %7 = load i64, ptr @thread_stats, align 8, !tbaa !189
  %8 = add i64 %7, 1
  store i64 %8, ptr @thread_stats, align 8, !tbaa !189
  %9 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %4) #17, !range !168
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !196
  tail call fastcc void @remove_ctrl_stmt_and_useless_edges(ptr noundef %4, ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !365
  %16 = and i32 %15, -3076
  %17 = or disjoint i32 %16, 1
  store i32 %17, ptr %14, align 8, !tbaa !365
  br label %64

18:                                               ; preds = %1
  %19 = load ptr, ptr %0, align 8, !tbaa !240
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 11
  %21 = load i32, ptr %20, align 8, !tbaa !241
  %22 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %23 = load i32, ptr %22, align 4, !tbaa !242
  %24 = mul nsw i32 %23, %21
  %25 = add nsw i32 %24, 5000
  %26 = sdiv i32 %25, 10000
  %27 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %28 = load i64, ptr %27, align 8, !tbaa !243
  tail call void @update_bb_profile_for_threading(ptr noundef %4, i32 noundef %26, i64 noundef %28, ptr noundef %6) #16
  %29 = getelementptr inbounds %struct.redirection_data, ptr %2, i64 0, i32 1
  store ptr %6, ptr %29, align 8, !tbaa !339
  call fastcc void @create_block_for_threading(ptr noundef %4, ptr noundef nonnull %2) #17
  call fastcc void @create_edge_and_update_destination_phis(ptr noundef nonnull %2) #17
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !159
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load ptr, ptr %2, align 8, !tbaa !343
  br label %49

34:                                               ; preds = %18
  %35 = load i32, ptr @dump_flags, align 4, !tbaa !173
  %36 = and i32 %35, 8
  %37 = icmp eq i32 %36, 0
  %38 = load ptr, ptr %2, align 8, !tbaa !343
  br i1 %37, label %49, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %0, align 8, !tbaa !240
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !186
  %43 = load ptr, ptr %3, align 8, !tbaa !196
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !186
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !186
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %30, ptr noundef nonnull @.str.5, i32 noundef %42, i32 noundef %45, i32 noundef %47) #17
  br label %49

49:                                               ; preds = %32, %39, %34
  %50 = phi ptr [ %33, %32 ], [ %38, %39 ], [ %38, %34 ]
  %51 = load i64, ptr %27, align 8, !tbaa !243
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 8
  store i64 %51, ptr %52, align 8, !tbaa !363
  %53 = load ptr, ptr %0, align 8, !tbaa !240
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 11
  %55 = load i32, ptr %54, align 8, !tbaa !241
  %56 = load i32, ptr %22, align 4, !tbaa !242
  %57 = mul nsw i32 %56, %55
  %58 = add nsw i32 %57, 5000
  %59 = sdiv i32 %58, 10000
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 11
  store i32 %59, ptr %60, align 8, !tbaa !241
  %61 = tail call fastcc ptr @single_succ_edge(ptr noundef %50) #17
  %62 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 9
  store i64 %51, ptr %62, align 8, !tbaa !243
  %63 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %0, ptr noundef %50) #16
  tail call void @flush_pending_stmts(ptr noundef nonnull %0) #16
  br label %64

64:                                               ; preds = %49, %11
  %65 = phi ptr [ %4, %11 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #15
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !265 !PGOFuncName !423 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !196
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
define internal zeroext i8 @dbds_continue_enumeration_p(ptr noundef readnone %0, ptr noundef readnone %1) #14 !prof !265 !PGOFuncName !424 {
  %3 = icmp ne ptr %0, %1
  %4 = load ptr, ptr @dbds_ce_stop, align 8
  %5 = icmp ne ptr %4, %0
  %6 = select i1 %3, i1 %5, i1 false
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !265 !PGOFuncName !425 {
  %2 = load ptr, ptr %0, align 8, !tbaa !174
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !192 !PGOFuncName !426 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !191

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !408
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !191

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !173
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !173
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #11 !prof !265 !PGOFuncName !427 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !159
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !406
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #17
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #8 !prof !192 !PGOFuncName !428 {
  %2 = load ptr, ptr %0, align 8, !tbaa !159
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !191

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !159
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_reserve() unnamed_addr #0 !prof !281 !PGOFuncName !429 {
  %1 = load ptr, ptr @threaded_edges, align 8, !tbaa !159
  %2 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %1) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !430

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #16
  store ptr %5, ptr @threaded_edges, align 8, !tbaa !159
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 !prof !281 !PGOFuncName !431 {
  %3 = load i32, ptr %0, align 8, !tbaa !232
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !232
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #6 !prof !281 !PGOFuncName !432 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !433

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !434
  %6 = load i32, ptr %0, align 8, !tbaa !232
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!157}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156}
!35 = !{ptr @thread_through_all_blocks, ptr @fancy_abort, i64 1}
!36 = !{ptr @thread_through_all_blocks, ptr @bitmap_obstack_alloc_stat, i64 59}
!37 = !{ptr @thread_through_all_blocks, ptr @mark_threaded_blocks, i64 59}
!38 = !{ptr @thread_through_all_blocks, ptr @initialize_original_copy_tables, i64 59}
!39 = !{ptr @thread_through_all_blocks, ptr @bmp_iter_set_init, i64 59}
!40 = !{ptr @thread_through_all_blocks, ptr @bmp_iter_set, i64 34951}
!41 = !{ptr @thread_through_all_blocks, ptr @VEC_basic_block_base_index, i64 34892}
!42 = !{ptr @thread_through_all_blocks, ptr @VEC_edge_base_length, i64 34892}
!43 = !{ptr @thread_through_all_blocks, ptr @thread_block, i64 34891}
!44 = !{ptr @thread_through_all_blocks, ptr @bmp_iter_next, i64 34892}
!45 = !{ptr @thread_through_all_blocks, ptr @fel_init, i64 59}
!46 = !{ptr @thread_through_all_blocks, ptr @bitmap_bit_p, i64 1}
!47 = !{ptr @thread_through_all_blocks, ptr @fel_next, i64 1}
!48 = !{ptr @thread_through_all_blocks, ptr @statistics_counter_event, i64 59}
!49 = !{ptr @thread_through_all_blocks, ptr @free_original_copy_tables, i64 59}
!50 = !{ptr @thread_through_all_blocks, ptr @bitmap_obstack_free, i64 59}
!51 = !{ptr @thread_through_all_blocks, ptr @VEC_edge_heap_free, i64 59}
!52 = !{ptr @thread_through_all_blocks, ptr @loops_state_set, i64 58}
!53 = !{ptr @mark_threaded_blocks, ptr @bitmap_obstack_alloc_stat, i64 59}
!54 = !{ptr @mark_threaded_blocks, ptr @VEC_edge_base_length, i64 41177}
!55 = !{ptr @mark_threaded_blocks, ptr @VEC_edge_base_index, i64 82198}
!56 = !{ptr @mark_threaded_blocks, ptr @bitmap_set_bit, i64 41115}
!57 = !{ptr @mark_threaded_blocks, ptr @optimize_function_for_size_p, i64 59}
!58 = !{ptr @mark_threaded_blocks, ptr @bmp_iter_set_init, i64 1}
!59 = !{ptr @mark_threaded_blocks, ptr @bmp_iter_set, i64 20}
!60 = !{ptr @mark_threaded_blocks, ptr @VEC_basic_block_base_index, i64 19}
!61 = !{ptr @mark_threaded_blocks, ptr @redirection_block_p, i64 10}
!62 = !{ptr @mark_threaded_blocks, ptr @ei_start_1, i64 4}
!63 = !{ptr @mark_threaded_blocks, ptr @ei_cond, i64 77}
!64 = !{ptr @mark_threaded_blocks, ptr @ei_next, i64 73}
!65 = !{ptr @mark_threaded_blocks, ptr @bmp_iter_next, i64 19}
!66 = !{ptr @mark_threaded_blocks, ptr @bitmap_copy, i64 58}
!67 = !{ptr @mark_threaded_blocks, ptr @bitmap_obstack_free, i64 59}
!68 = !{ptr @thread_block, ptr @VEC_edge_base_length, i64 35350}
!69 = !{ptr @thread_block, ptr @htab_create, i64 35350}
!70 = !{ptr @thread_block, ptr @loop_latch_edge, i64 1}
!71 = !{ptr @thread_block, ptr @loop_exit_edge_p, i64 2}
!72 = !{ptr @thread_block, ptr @ei_start_1, i64 35350}
!73 = !{ptr @thread_block, ptr @ei_cond, i64 149949}
!74 = !{ptr @thread_block, ptr @update_bb_profile_for_threading, i64 53653}
!75 = !{ptr @thread_block, ptr @lookup_redirection_data, i64 54818}
!76 = !{ptr @thread_block, ptr @ei_next, i64 114599}
!77 = !{ptr @thread_block, ptr @VEC_edge_base_index, i64 1165}
!78 = !{ptr @thread_block, ptr @free_dominance_info, i64 35350}
!79 = !{ptr @thread_block, ptr @htab_traverse, i64 106050}
!80 = !{ptr @thread_block, ptr @htab_delete, i64 35350}
!81 = !{ptr @fel_init, ptr @number_of_loops, i64 58}
!82 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 58}
!83 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 1}
!84 = !{ptr @fel_init, ptr @loop_outer, i64 59}
!85 = !{ptr @fel_init, ptr @fel_next, i64 58}
!86 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 60}
!87 = !{ptr @fel_next, ptr @get_loop, i64 1}
!88 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 59}
!89 = !{ptr @VEC_edge_heap_free, ptr @free, i64 58}
!90 = !{ptr @register_jump_thread, ptr @VEC_edge_heap_alloc, i64 60}
!91 = !{ptr @register_jump_thread, ptr @VEC_edge_heap_safe_push, i64 83590}
!92 = !{ptr @VEC_edge_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 59}
!93 = !{ptr @VEC_edge_heap_safe_push, ptr @VEC_edge_heap_reserve, i64 83590}
!94 = !{ptr @VEC_edge_heap_safe_push, ptr @VEC_edge_base_quick_push, i64 83590}
!95 = !{ptr @ei_cond, ptr @ei_end_p, i64 149951}
!96 = !{ptr @ei_cond, ptr @ei_edge, i64 114600}
!97 = !{ptr @ei_next, ptr @ei_container, i64 231901}
!98 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 115951}
!99 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!100 = !{ptr @ei_end_p, ptr @ei_container, i64 523840}
!101 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 263976}
!102 = !{ptr @ei_edge, ptr @ei_container, i64 375629}
!103 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 187815}
!104 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!105 = !{ptr @lookup_redirection_data, ptr @xmalloc, i64 108470}
!106 = !{ptr @lookup_redirection_data, ptr @htab_find_slot, i64 54818}
!107 = !{ptr @lookup_redirection_data, ptr @free, i64 14194}
!108 = !{ptr @create_duplicates, ptr @create_block_for_threading, i64 39460}
!109 = !{ptr @create_duplicates, ptr @create_edge_and_update_destination_phis, i64 4112}
!110 = !{ptr @fixup_template_block, ptr @create_edge_and_update_destination_phis, i64 35348}
!111 = !{ptr @redirect_edges, ptr @free, i64 53654}
!112 = !{ptr @redirect_edges, ptr @VEC_edge_base_index, i64 52303}
!113 = !{ptr @redirect_edges, ptr @redirect_edge_and_branch, i64 52303}
!114 = !{ptr @redirect_edges, ptr @fancy_abort, i64 1}
!115 = !{ptr @redirect_edges, ptr @flush_pending_stmts, i64 52303}
!116 = !{ptr @redirect_edges, ptr @remove_ctrl_stmt_and_useless_edges, i64 1351}
!117 = !{ptr @redirect_edges, ptr @single_succ_edge, i64 2702}
!118 = !{ptr @create_block_for_threading, ptr @duplicate_block, i64 39461}
!119 = !{ptr @create_block_for_threading, ptr @remove_ctrl_stmt_and_useless_edges, i64 39461}
!120 = !{ptr @create_edge_and_update_destination_phis, ptr @make_edge, i64 39461}
!121 = !{ptr @create_edge_and_update_destination_phis, ptr @rescan_loop_exit, i64 39461}
!122 = !{ptr @create_edge_and_update_destination_phis, ptr @gsi_start_phis, i64 39461}
!123 = !{ptr @create_edge_and_update_destination_phis, ptr @gsi_end_p, i64 66424}
!124 = !{ptr @create_edge_and_update_destination_phis, ptr @gsi_stmt, i64 26963}
!125 = !{ptr @create_edge_and_update_destination_phis, ptr @gimple_phi_arg_location, i64 26963}
!126 = !{ptr @create_edge_and_update_destination_phis, ptr @gimple_phi_arg_def, i64 26963}
!127 = !{ptr @create_edge_and_update_destination_phis, ptr @add_phi_arg, i64 26963}
!128 = !{ptr @create_edge_and_update_destination_phis, ptr @gsi_next, i64 26963}
!129 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @gsi_last_bb, i64 40811}
!130 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @gsi_end_p, i64 40811}
!131 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @gsi_stmt, i64 40704}
!132 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @gimple_code, i64 40703}
!133 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @gsi_remove, i64 36513}
!134 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @ei_start_1, i64 40811}
!135 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @ei_safe_edge, i64 114024}
!136 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @remove_edge, i64 71862}
!137 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @ei_next, i64 1351}
!138 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 40811}
!139 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 40811}
!140 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 114025}
!141 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 73214}
!142 = !{ptr @gimple_phi_arg_location, ptr @gimple_phi_arg, i64 26963}
!143 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 26963}
!144 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 26963}
!145 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!146 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 2700}
!147 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!148 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 2700}
!149 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 2700}
!150 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 59}
!151 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 58}
!152 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 59}
!153 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 1}
!154 = !{ptr @VEC_int_heap_free, ptr @free, i64 58}
!155 = !{ptr @VEC_edge_heap_reserve, ptr @VEC_edge_base_space, i64 83590}
!156 = !{ptr @VEC_edge_heap_reserve, ptr @vec_heap_p_reserve, i64 367}
!157 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!158 = !{!"function_entry_count", i64 152}
!159 = !{!160, !160, i64 0}
!160 = !{!"any pointer", !161, i64 0}
!161 = !{!"omnipotent char", !162, i64 0}
!162 = !{!"Simple C/C++ TBAA"}
!163 = !{!164, !160, i64 32}
!164 = !{!"function", !160, i64 0, !160, i64 8, !160, i64 16, !160, i64 24, !160, i64 32, !160, i64 40, !160, i64 48, !160, i64 56, !160, i64 64, !160, i64 72, !160, i64 80, !160, i64 88, !160, i64 96, !165, i64 104, !165, i64 108, !165, i64 112, !165, i64 116, !165, i64 120, !165, i64 124, !160, i64 128, !165, i64 136, !165, i64 137, !165, i64 138, !165, i64 138, !165, i64 138, !165, i64 138, !165, i64 138, !165, i64 138, !165, i64 138, !165, i64 139, !165, i64 139, !165, i64 139, !165, i64 139, !165, i64 139, !165, i64 139, !165, i64 139}
!165 = !{!"int", !161, i64 0}
!166 = !{!"branch_weights", i32 1, i32 153}
!167 = !{!"branch_weights", i32 94, i32 60}
!168 = !{i8 0, i8 2}
!169 = !{!"branch_weights", i32 1, i32 239}
!170 = !{!164, !160, i64 8}
!171 = !{!172, !160, i64 16}
!172 = !{!"control_flow_graph", !160, i64 0, !160, i64 8, !160, i64 16, !165, i64 24, !165, i64 28, !165, i64 32, !160, i64 40, !165, i64 48, !161, i64 52, !161, i64 60, !165, i64 68, !165, i64 72}
!173 = !{!165, !165, i64 0}
!174 = !{!175, !160, i64 0}
!175 = !{!"basic_block_def", !160, i64 0, !160, i64 8, !160, i64 16, !160, i64 24, !161, i64 32, !160, i64 48, !160, i64 56, !161, i64 64, !176, i64 72, !165, i64 80, !165, i64 84, !165, i64 88, !165, i64 92, !165, i64 96}
!176 = !{!"long", !161, i64 0}
!177 = !{!"branch_weights", i32 1, i32 35351}
!178 = !{!"branch_weights", i32 239, i32 141165}
!179 = distinct !{!179, !180}
!180 = !{!"llvm.loop.mustprogress"}
!181 = !{!"branch_weights", i32 59, i32 1}
!182 = !{!183, !160, i64 8}
!183 = !{!"loop", !165, i64 0, !165, i64 4, !160, i64 8, !160, i64 16, !184, i64 24, !165, i64 32, !165, i64 36, !160, i64 40, !160, i64 48, !160, i64 56, !160, i64 64, !160, i64 72, !185, i64 80, !185, i64 96, !161, i64 112, !161, i64 113, !165, i64 116, !160, i64 120, !160, i64 128, !161, i64 136, !160, i64 144}
!184 = !{!"lpt_decision", !165, i64 0, !165, i64 4}
!185 = !{!"", !176, i64 0, !176, i64 8}
!186 = !{!175, !165, i64 80}
!187 = !{!"branch_weights", i32 1, i32 0}
!188 = distinct !{!188, !180}
!189 = !{!190, !176, i64 0}
!190 = !{!"thread_stats_d", !176, i64 0}
!191 = !{!"branch_weights", i32 1, i32 60}
!192 = !{!"function_entry_count", i64 59}
!193 = !{!"tree-ssa-threadupdate.c:mark_threaded_blocks"}
!194 = !{!195, !160, i64 24}
!195 = !{!"edge_def", !160, i64 0, !160, i64 8, !161, i64 16, !160, i64 24, !160, i64 32, !165, i64 40, !165, i64 44, !165, i64 48, !165, i64 52, !176, i64 56}
!196 = !{!195, !160, i64 8}
!197 = !{!"branch_weights", i32 166945, i32 239}
!198 = distinct !{!198, !180}
!199 = !{!"branch_weights", i32 60, i32 1}
!200 = !{i64 0, i64 4, !173, i64 8, i64 8, !159}
!201 = !{i64 0, i64 8, !159}
!202 = distinct !{!202, !180}
!203 = distinct !{!203, !180}
!204 = !{!"tree-ssa-threadupdate.c:bmp_iter_set_init"}
!205 = !{!206, !160, i64 0}
!206 = !{!"bitmap_head_def", !160, i64 0, !160, i64 8, !165, i64 16, !160, i64 24}
!207 = !{!208, !160, i64 0}
!208 = !{!"", !160, i64 0, !160, i64 8, !165, i64 16, !176, i64 24}
!209 = !{!208, !160, i64 8}
!210 = !{!211, !165, i64 16}
!211 = !{!"bitmap_element_def", !160, i64 0, !160, i64 8, !165, i64 16, !161, i64 24}
!212 = !{!208, !165, i64 16}
!213 = !{!176, !176, i64 0}
!214 = !{!208, !176, i64 24}
!215 = !{!"function_entry_count", i64 35409}
!216 = !{!"tree-ssa-threadupdate.c:bmp_iter_set"}
!217 = !{!"branch_weights", i32 5404, i32 30007}
!218 = !{!"branch_weights", i32 35350, i32 1}
!219 = !{!"branch_weights", i32 197790, i32 35350}
!220 = distinct !{!220, !180}
!221 = !{!"branch_weights", i32 1, i32 3133}
!222 = !{!"branch_weights", i32 864, i32 5345}
!223 = !{!"branch_weights", i32 3133, i32 3075}
!224 = distinct !{!224, !180}
!225 = !{!211, !160, i64 0}
!226 = !{!"branch_weights", i32 60, i32 3075}
!227 = !{!"function_entry_count", i64 35350}
!228 = !{!"tree-ssa-threadupdate.c:VEC_basic_block_base_index"}
!229 = !{!"function_entry_count", i64 495181}
!230 = !{!"tree-ssa-threadupdate.c:VEC_edge_base_length"}
!231 = !{!"branch_weights", i32 4112, i32 491071}
!232 = !{!233, !165, i64 0}
!233 = !{!"VEC_edge_base", !165, i64 0, !165, i64 4, !161, i64 8}
!234 = !{!"tree-ssa-threadupdate.c:thread_block"}
!235 = !{!175, !160, i64 24}
!236 = !{!175, !160, i64 8}
!237 = !{!"branch_weights", i32 1, i32 35350}
!238 = !{!"branch_weights", i32 60948, i32 53655}
!239 = !{!"branch_weights", i32 1, i32 53655}
!240 = !{!195, !160, i64 0}
!241 = !{!175, !165, i64 88}
!242 = !{!195, !165, i64 52}
!243 = !{!195, !176, i64 56}
!244 = !{!"branch_weights", i32 35350, i32 79252}
!245 = distinct !{!245, !180}
!246 = !{!"branch_weights", i32 2076773601, i32 70710047}
!247 = !{!248, !161, i64 24}
!248 = !{!"redirection_data", !160, i64 0, !160, i64 8, !160, i64 16, !161, i64 24}
!249 = !{!250, !160, i64 8}
!250 = !{!"local_info", !160, i64 0, !160, i64 8, !161, i64 16}
!251 = !{!250, !160, i64 0}
!252 = !{!250, !161, i64 16}
!253 = !{!"tree-ssa-threadupdate.c:bmp_iter_next"}
!254 = !{!"tree-ssa-threadupdate.c:fel_init"}
!255 = !{!256, !165, i64 8}
!256 = !{!"", !160, i64 0, !165, i64 8}
!257 = !{!256, !160, i64 0}
!258 = !{!259, !160, i64 24}
!259 = !{!"loops", !165, i64 0, !160, i64 8, !160, i64 16, !160, i64 24}
!260 = !{!183, !160, i64 48}
!261 = distinct !{!261, !180}
!262 = !{!183, !165, i64 0}
!263 = !{!183, !160, i64 56}
!264 = distinct !{!264, !180}
!265 = !{!"function_entry_count", i64 0}
!266 = !{!"tree-ssa-threadupdate.c:thread_through_loop_header"}
!267 = distinct !{!267, !180}
!268 = !{!183, !160, i64 16}
!269 = !{i32 0, i32 3}
!270 = distinct !{!270, !180}
!271 = distinct !{!271, !180}
!272 = !{!"tree-ssa-threadupdate.c:fel_next"}
!273 = !{i32 0, i32 2}
!274 = distinct !{!274, !180}
!275 = !{!"tree-ssa-threadupdate.c:VEC_edge_heap_free"}
!276 = !{!"tree-ssa-threadupdate.c:loops_state_set"}
!277 = !{!259, !165, i64 0}
!278 = !{!"function_entry_count", i64 41795}
!279 = !{!"branch_weights", i32 60, i32 41737}
!280 = !{!"tree-ssa-threadupdate.c:VEC_edge_heap_alloc"}
!281 = !{!"function_entry_count", i64 83590}
!282 = !{!"tree-ssa-threadupdate.c:VEC_edge_heap_safe_push"}
!283 = !{!"function_entry_count", i64 327573}
!284 = !{!"tree-ssa-threadupdate.c:VEC_edge_base_index"}
!285 = !{!"tree-ssa-threadupdate.c:redirection_block_p"}
!286 = !{i32 0, i32 256}
!287 = distinct !{!287, !180}
!288 = !{!"function_entry_count", i64 76161}
!289 = !{!"tree-ssa-threadupdate.c:ei_start_1"}
!290 = !{!"function_entry_count", i64 149951}
!291 = !{!"tree-ssa-threadupdate.c:ei_cond"}
!292 = !{!"branch_weights", i32 114602, i32 35351}
!293 = !{!"function_entry_count", i64 115951}
!294 = !{!"tree-ssa-threadupdate.c:ei_next"}
!295 = !{!"branch_weights", i32 1, i32 115952}
!296 = !{!"branch_weights", i32 115952, i32 1}
!297 = !{!298, !165, i64 0}
!298 = !{!"", !165, i64 0, !160, i64 8}
!299 = !{!"tree-ssa-threadupdate.c:gsi_start_bb"}
!300 = !{!301, !160, i64 0}
!301 = !{!"", !160, i64 0, !160, i64 8, !160, i64 16}
!302 = !{!301, !160, i64 8}
!303 = !{!301, !160, i64 16}
!304 = !{!"function_entry_count", i64 107235}
!305 = !{!"tree-ssa-threadupdate.c:gsi_end_p"}
!306 = !{!"function_entry_count", i64 49087}
!307 = !{!"tree-ssa-threadupdate.c:gimple_code"}
!308 = !{!"function_entry_count", i64 116755}
!309 = !{!"tree-ssa-threadupdate.c:gsi_stmt"}
!310 = !{!311, !160, i64 0}
!311 = !{!"gimple_seq_node_d", !160, i64 0, !160, i64 8, !160, i64 16}
!312 = !{!"tree-ssa-threadupdate.c:is_gimple_debug"}
!313 = !{!"tree-ssa-threadupdate.c:gimple_nop_p"}
!314 = !{!"function_entry_count", i64 26963}
!315 = !{!"tree-ssa-threadupdate.c:gsi_next"}
!316 = !{!311, !160, i64 16}
!317 = !{!"function_entry_count", i64 40811}
!318 = !{!"tree-ssa-threadupdate.c:bb_seq"}
!319 = !{!175, !165, i64 96}
!320 = !{!"branch_weights", i32 40812, i32 1}
!321 = !{!161, !161, i64 0}
!322 = !{!"branch_weights", i32 1, i32 40812}
!323 = !{!324, !160, i64 0}
!324 = !{!"gimple_bb_info", !160, i64 0, !160, i64 8}
!325 = !{!"tree-ssa-threadupdate.c:gimple_seq_first"}
!326 = !{!327, !160, i64 0}
!327 = !{!"gimple_seq_d", !160, i64 0, !160, i64 8, !160, i64 16}
!328 = !{!"function_entry_count", i64 263976}
!329 = !{!"tree-ssa-threadupdate.c:ei_end_p"}
!330 = !{!"branch_weights", i32 4112, i32 259866}
!331 = !{!"function_entry_count", i64 187815}
!332 = !{!"tree-ssa-threadupdate.c:ei_edge"}
!333 = !{!"branch_weights", i32 1, i32 187816}
!334 = !{!"function_entry_count", i64 1131373}
!335 = !{!"tree-ssa-threadupdate.c:ei_container"}
!336 = !{!"branch_weights", i32 1, i32 1131374}
!337 = !{!"function_entry_count", i64 54818}
!338 = !{!"tree-ssa-threadupdate.c:redirection_data_hash"}
!339 = !{!248, !160, i64 8}
!340 = !{!"function_entry_count", i64 14285}
!341 = !{!"tree-ssa-threadupdate.c:redirection_data_eq"}
!342 = !{!"tree-ssa-threadupdate.c:lookup_redirection_data"}
!343 = !{!248, !160, i64 0}
!344 = !{!248, !160, i64 16}
!345 = !{!"branch_weights", i32 1, i32 54819}
!346 = !{!"branch_weights", i32 40626, i32 14194}
!347 = !{!348, !160, i64 0}
!348 = !{!"el", !160, i64 0, !160, i64 8}
!349 = !{!348, !160, i64 8}
!350 = !{!"branch_weights", i32 1165, i32 13030}
!351 = !{!"function_entry_count", i64 40625}
!352 = !{!"tree-ssa-threadupdate.c:create_duplicates"}
!353 = !{!"branch_weights", i32 39462, i32 1165}
!354 = !{!"branch_weights", i32 35351, i32 4112}
!355 = !{!"function_entry_count", i64 36012}
!356 = !{!"tree-ssa-threadupdate.c:fixup_template_block"}
!357 = !{!"branch_weights", i32 663, i32 35351}
!358 = !{!"branch_weights", i32 35351, i32 1}
!359 = !{!"tree-ssa-threadupdate.c:redirect_edges"}
!360 = !{!"branch_weights", i32 1, i32 40625}
!361 = !{!"branch_weights", i32 1351, i32 52305}
!362 = !{!"branch_weights", i32 52305, i32 1}
!363 = !{!175, !176, i64 72}
!364 = !{!"branch_weights", i32 1351, i32 1}
!365 = !{!195, !165, i64 48}
!366 = !{!"branch_weights", i32 40625, i32 13030}
!367 = distinct !{!367, !180}
!368 = !{!"branch_weights", i32 0, i32 -2147483648}
!369 = !{!"function_entry_count", i64 39461}
!370 = !{!"tree-ssa-threadupdate.c:create_block_for_threading"}
!371 = !{!"tree-ssa-threadupdate.c:create_edge_and_update_destination_phis"}
!372 = !{!"branch_weights", i32 26964, i32 12498}
!373 = !{!195, !165, i64 44}
!374 = !{!"branch_weights", i32 0, i32 26964}
!375 = distinct !{!375, !180}
!376 = !{!"tree-ssa-threadupdate.c:remove_ctrl_stmt_and_useless_edges"}
!377 = !{!"branch_weights", i32 40706, i32 107}
!378 = !{!"branch_weights", i32 1, i32 40706}
!379 = !{!"branch_weights", i32 287755648, i32 -1787235628, i32 68660, i32 68644}
!380 = !{!"branch_weights", i32 1, i32 40811}
!381 = !{!"branch_weights", i32 1351, i32 71865}
!382 = !{!"branch_weights", i32 40811, i32 32404}
!383 = distinct !{!383, !180}
!384 = !{!"tree-ssa-threadupdate.c:gsi_last_bb"}
!385 = !{!"function_entry_count", i64 114025}
!386 = !{!"tree-ssa-threadupdate.c:ei_safe_edge"}
!387 = !{!"branch_weights", i32 73215, i32 40812}
!388 = !{!"tree-ssa-threadupdate.c:gimple_seq_last"}
!389 = !{!327, !160, i64 8}
!390 = !{!"tree-ssa-threadupdate.c:gimple_phi_arg_location"}
!391 = !{!392, !165, i64 40}
!392 = !{!"phi_arg_d", !393, i64 0, !160, i64 32, !165, i64 40}
!393 = !{!"ssa_use_operand_d", !160, i64 0, !160, i64 8, !161, i64 16, !160, i64 24}
!394 = !{!"tree-ssa-threadupdate.c:gimple_phi_arg_def"}
!395 = !{!"function_entry_count", i64 53926}
!396 = !{!"tree-ssa-threadupdate.c:gimple_phi_arg"}
!397 = !{!"branch_weights", i32 1, i32 53927}
!398 = !{!"tree-ssa-threadupdate.c:get_use_from_ptr"}
!399 = !{!393, !160, i64 24}
!400 = !{!"function_entry_count", i64 2700}
!401 = !{!"tree-ssa-threadupdate.c:single_succ_edge"}
!402 = !{!"branch_weights", i32 1, i32 2701}
!403 = !{!"tree-ssa-threadupdate.c:single_succ_p"}
!404 = !{!"tree-ssa-threadupdate.c:VEC_int_heap_alloc"}
!405 = !{!"tree-ssa-threadupdate.c:number_of_loops"}
!406 = !{!259, !160, i64 8}
!407 = !{!"tree-ssa-threadupdate.c:VEC_int_base_quick_push"}
!408 = !{!409, !165, i64 0}
!409 = !{!"VEC_int_base", !165, i64 0, !165, i64 4, !161, i64 8}
!410 = !{!"tree-ssa-threadupdate.c:loop_outer"}
!411 = !{!183, !160, i64 40}
!412 = !{!"function_entry_count", i64 118}
!413 = !{!"tree-ssa-threadupdate.c:VEC_loop_p_base_length"}
!414 = !{!"branch_weights", i32 60, i32 60}
!415 = !{!416, !165, i64 0}
!416 = !{!"VEC_loop_p_base", !165, i64 0, !165, i64 4, !161, i64 8}
!417 = !{!"tree-ssa-threadupdate.c:VEC_loop_p_base_index"}
!418 = !{!"tree-ssa-threadupdate.c:determine_bb_domination_status"}
!419 = !{!183, !165, i64 36}
!420 = distinct !{!420, !180}
!421 = distinct !{!421, !180}
!422 = !{!"tree-ssa-threadupdate.c:thread_single_edge"}
!423 = !{!"tree-ssa-threadupdate.c:single_succ"}
!424 = !{!"tree-ssa-threadupdate.c:dbds_continue_enumeration_p"}
!425 = !{!"tree-ssa-threadupdate.c:single_pred_p"}
!426 = !{!"tree-ssa-threadupdate.c:VEC_int_base_iterate"}
!427 = !{!"tree-ssa-threadupdate.c:get_loop"}
!428 = !{!"tree-ssa-threadupdate.c:VEC_int_heap_free"}
!429 = !{!"tree-ssa-threadupdate.c:VEC_edge_heap_reserve"}
!430 = !{!"branch_weights", i32 367, i32 83225}
!431 = !{!"tree-ssa-threadupdate.c:VEC_edge_base_quick_push"}
!432 = !{!"tree-ssa-threadupdate.c:VEC_edge_base_space"}
!433 = !{!"branch_weights", i32 1, i32 83591}
!434 = !{!233, !165, i64 4}
