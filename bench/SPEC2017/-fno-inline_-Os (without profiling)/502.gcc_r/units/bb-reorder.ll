; ModuleID = 'bb-reorder.c'
source_filename = "bb-reorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.bbro_basic_block_data_def = type { i32, i32, i32, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.trace = type { ptr, ptr, i32, i32 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.fibnode = type { ptr, ptr, ptr, ptr, i64, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [13 x i8] c"bb-reorder.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@uncond_jump_length = internal unnamed_addr global i32 0, align 4
@array_size = internal unnamed_addr global i32 0, align 4
@bbd = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"compgotos\00", align 1
@pass_duplicate_computed_gotos = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.2, ptr @gate_duplicate_computed_gotos, ptr @duplicate_computed_gotos, ptr null, ptr null, i32 0, i32 162, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"bbro\00", align 1
@pass_reorder_blocks = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.3, ptr @gate_handle_reorder_blocks, ptr @rest_of_handle_reorder_blocks, ptr null, ptr null, i32 0, i32 162, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"bbpart\00", align 1
@pass_partition_blocks = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.4, ptr @gate_handle_partition_blocks, ptr @rest_of_handle_partition_blocks, ptr null, ptr null, i32 0, i32 162, i32 512, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@max_entry_frequency = internal unnamed_addr global i32 0, align 4
@max_entry_count = internal unnamed_addr global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"STC - round %d\0A\00", align 1
@exec_threshold = internal unnamed_addr constant [5 x i32] [i32 500, i32 200, i32 50, i32 0, i32 0], align 16
@branch_threshold = internal unnamed_addr constant [5 x i32] [i32 400, i32 200, i32 100, i32 0, i32 0], align 16
@.str.6 = private unnamed_addr constant [23 x i8] c"Trace %d (round %d):  \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%d [%d] \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%d [%d]\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Getting bb %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"  Possible start point of next round: %d (key: %d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Basic block %d was visited in trace %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Changing key for bb %d from %ld to %ld.\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"  Possible start of %s round: %d (key: %ld)\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Rotating loop %d - %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Selecting BB %d\0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [49 x i8] c"Block %d can't be copied because its size = %d.\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"Duplicated bb %d (created bb %d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Growing the dynamic array to %d elements.\0A\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"Connection: %d %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Connection: %d %d \00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"Final order:\0A\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"multiple hot/cold transitions found (bb %i)\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@flag_reorder_blocks = external local_unnamed_addr global i32, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@user_defined_section_attribute = external local_unnamed_addr global i8, align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reorder_basic_blocks() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #11
  %2 = tail call i32 @current_ir_type() #12
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1900, ptr noundef nonnull @.str.1) #12
  br label %5

5:                                                ; preds = %0, %4
  %6 = load ptr, ptr @cfun, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !12
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %69, label %12

12:                                               ; preds = %5
  tail call void @set_edge_can_fallthru_flag() #12
  %13 = tail call zeroext i8 @mark_dfs_back_edges() #12
  %14 = load i32, ptr @uncond_jump_length, align 4, !tbaa !14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call fastcc i32 @get_uncond_jump_length() #13
  store i32 %17, ptr @uncond_jump_length, align 4, !tbaa !14
  br label %18

18:                                               ; preds = %16, %12
  %19 = load ptr, ptr @cfun, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !15
  %24 = sdiv i32 %23, 4
  %25 = mul i32 %24, 5
  %26 = add i32 %25, 5
  store i32 %26, ptr @array_size, align 4, !tbaa !14
  %27 = sext i32 %26 to i64
  %28 = shl nsw i64 %27, 5
  %29 = tail call ptr @xmalloc(i64 noundef %28) #12
  store ptr %29, ptr @bbd, align 8, !tbaa !5
  %30 = load i32, ptr @array_size, align 4, !tbaa !14
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %18
  %33 = zext nneg i32 %30 to i64
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi i64 [ 0, %32 ], [ %40, %34 ]
  %36 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %29, i64 %35
  store i32 -1, ptr %36, align 8, !tbaa !16
  %37 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %29, i64 %35, i32 2
  store i32 -1, ptr %37, align 8, !tbaa !18
  %38 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %29, i64 %35, i32 1
  store i32 -1, ptr %38, align 4, !tbaa !19
  %39 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %29, i64 %35, i32 3
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  br i1 %41, label %42, label %34, !llvm.loop !20

42:                                               ; preds = %34, %18
  %43 = load ptr, ptr @cfun, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !9
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !12
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, 24
  %50 = tail call ptr @xmalloc(i64 noundef %49) #12
  store i32 0, ptr %1, align 4, !tbaa !14
  call fastcc void @find_traces(ptr noundef nonnull %1, ptr noundef %50) #13
  %51 = load i32, ptr %1, align 4, !tbaa !14
  tail call fastcc void @connect_traces(i32 noundef %51, ptr noundef %50) #13
  %52 = icmp eq ptr %50, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1929, ptr noundef nonnull @.str.1) #12
  br label %54

54:                                               ; preds = %42, %53
  tail call void @free(ptr noundef %50) #13
  %55 = load ptr, ptr @bbd, align 8, !tbaa !5
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1930, ptr noundef nonnull @.str.1) #12
  %58 = load ptr, ptr @bbd, align 8, !tbaa !5
  br label %59

59:                                               ; preds = %54, %57
  %60 = phi ptr [ %55, %54 ], [ %58, %57 ]
  tail call void @free(ptr noundef %60) #13
  store ptr null, ptr @bbd, align 8, !tbaa !5
  tail call void @relink_block_chain(i8 noundef zeroext 1) #12
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr @dump_flags, align 4, !tbaa !14
  tail call void @dump_flow_info(ptr noundef nonnull %61, i32 noundef %64) #12
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !14
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call fastcc void @verify_hot_cold_block_grouping() #13
  br label %69

69:                                               ; preds = %65, %68, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @current_ir_type() local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_edge_can_fallthru_flag() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_uncond_jump_length() unnamed_addr #0 {
  %1 = tail call ptr @gen_label_rtx() #12
  %2 = tail call ptr @get_insns() #12
  %3 = tail call ptr @emit_label_before(ptr noundef %1, ptr noundef %2) #12
  %4 = tail call ptr @gen_jump(ptr noundef %3) #12
  %5 = tail call ptr @emit_jump_insn(ptr noundef %4) #12
  %6 = tail call i32 @get_attr_min_length(ptr noundef %5) #12
  %7 = tail call ptr @delete_insn(ptr noundef %5) #12
  %8 = tail call ptr @delete_insn(ptr noundef %3) #12
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_traces(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %6 = tail call ptr @fibheap_new() #12
  store ptr %6, ptr %5, align 8, !tbaa !5
  store i32 0, ptr @max_entry_frequency, align 4, !tbaa !14
  store i64 0, ptr @max_entry_count, align 8, !tbaa !22
  %7 = load ptr, ptr @cfun, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 1
  %12 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %11) #13
  store i32 0, ptr %4, align 8, !tbaa.struct !25
  %13 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %12, ptr %13, align 8, !tbaa.struct !26
  %14 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %12, ptr noundef nonnull %3) #13, !range !27
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %2, %45
  %17 = load ptr, ptr @bbd, align 8, !tbaa !5
  %18 = load ptr, ptr %3, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !28
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !30
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %17, i64 %23, i32 3
  store ptr %6, ptr %24, align 8, !tbaa !32
  %25 = tail call fastcc i64 @bb_to_key(ptr noundef %20) #13, !range !33
  %26 = load ptr, ptr %19, align 8, !tbaa !28
  %27 = tail call ptr @fibheap_insert(ptr noundef %6, i64 noundef %25, ptr noundef %26) #12
  %28 = load ptr, ptr @bbd, align 8, !tbaa !5
  %29 = load ptr, ptr %19, align 8, !tbaa !28
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %28, i64 %32, i32 4
  store ptr %27, ptr %33, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 11
  %35 = load i32, ptr %34, align 8, !tbaa !35
  %36 = load i32, ptr @max_entry_frequency, align 4, !tbaa !14
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %16
  store i32 %35, ptr @max_entry_frequency, align 4, !tbaa !14
  br label %39

39:                                               ; preds = %38, %16
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !36
  %42 = load i64, ptr @max_entry_count, align 8, !tbaa !22
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i64 %41, ptr @max_entry_count, align 8, !tbaa !22
  br label %45

45:                                               ; preds = %39, %44
  call fastcc void @ei_next(ptr noundef nonnull %4) #13
  %46 = load i32, ptr %4, align 8
  %47 = load ptr, ptr %13, align 8
  %48 = call fastcc zeroext i8 @ei_cond(i32 %46, ptr %47, ptr noundef nonnull %3) #13, !range !27
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %16, !llvm.loop !37

50:                                               ; preds = %45, %2
  br label %51

51:                                               ; preds = %50, %74
  %52 = phi i64 [ %84, %74 ], [ 0, %50 ]
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = trunc i64 %52 to i32
  %57 = add i32 %56, 1
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %53, ptr noundef nonnull @.str.5, i32 noundef %57) #13
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i64, ptr @max_entry_count, align 8, !tbaa !22
  %61 = icmp slt i64 %60, 2147483
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = getelementptr inbounds [5 x i32], ptr @exec_threshold, i64 0, i64 %52
  %64 = load i32, ptr %63, align 4, !tbaa !14
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %60, %65
  %67 = sdiv i64 %66, 1000
  br label %74

68:                                               ; preds = %59
  %69 = udiv i64 %60, 1000
  %70 = getelementptr inbounds [5 x i32], ptr @exec_threshold, i64 0, i64 %52
  %71 = load i32, ptr %70, align 4, !tbaa !14
  %72 = sext i32 %71 to i64
  %73 = mul nsw i64 %69, %72
  br label %74

74:                                               ; preds = %68, %62
  %75 = phi i32 [ %64, %62 ], [ %71, %68 ]
  %76 = phi i64 [ %67, %62 ], [ %73, %68 ]
  %77 = getelementptr inbounds [5 x i32], ptr @branch_threshold, i64 0, i64 %52
  %78 = load i32, ptr %77, align 4, !tbaa !14
  %79 = mul nsw i32 %78, 10
  %80 = load i32, ptr @max_entry_frequency, align 4, !tbaa !14
  %81 = mul nsw i32 %75, %80
  %82 = sdiv i32 %81, 1000
  %83 = trunc i64 %52 to i32
  call fastcc void @find_traces_1_round(i32 noundef %79, i32 noundef %82, i64 noundef %76, ptr noundef %1, ptr noundef %0, i32 noundef %83, ptr noundef nonnull %5) #13
  %84 = add nuw nsw i64 %52, 1
  %85 = icmp eq i64 %84, 4
  br i1 %85, label %86, label %51, !llvm.loop !38

86:                                               ; preds = %74
  %87 = load ptr, ptr %5, align 8, !tbaa !5
  tail call void @fibheap_delete(ptr noundef %87) #12
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %89 = icmp eq ptr %88, null
  br i1 %89, label %135, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr %0, align 4, !tbaa !14
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %132

93:                                               ; preds = %90, %119
  %94 = phi i64 [ %96, %119 ], [ 0, %90 ]
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %96 = add nuw nsw i64 %94, 1
  %97 = getelementptr inbounds %struct.trace, ptr %1, i64 %94
  %98 = getelementptr inbounds %struct.trace, ptr %1, i64 %94, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !39
  %100 = add nsw i32 %99, 1
  %101 = trunc i64 %96 to i32
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.6, i32 noundef %101, i32 noundef %100) #13
  %103 = getelementptr inbounds %struct.trace, ptr %1, i64 %94, i32 1
  %104 = load ptr, ptr %97, align 8, !tbaa !5
  %105 = load ptr, ptr %103, align 8, !tbaa !41
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %119, label %107

107:                                              ; preds = %93, %107
  %108 = phi ptr [ %116, %107 ], [ %104, %93 ]
  %109 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 9
  %111 = load i32, ptr %110, align 8, !tbaa !30
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 11
  %113 = load i32, ptr %112, align 8, !tbaa !35
  %114 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef nonnull @.str.7, i32 noundef %111, i32 noundef %113) #13
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !5
  %117 = load ptr, ptr %103, align 8, !tbaa !41
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %119, label %107, !llvm.loop !42

119:                                              ; preds = %107, %93
  %120 = phi ptr [ %104, %93 ], [ %116, %107 ]
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 9
  %123 = load i32, ptr %122, align 8, !tbaa !30
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 11
  %125 = load i32, ptr %124, align 8, !tbaa !35
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.8, i32 noundef %123, i32 noundef %125) #13
  %127 = load i32, ptr %0, align 4, !tbaa !14
  %128 = sext i32 %127 to i64
  %129 = icmp slt i64 %96, %128
  br i1 %129, label %93, label %130, !llvm.loop !43

130:                                              ; preds = %119
  %131 = load ptr, ptr @dump_file, align 8, !tbaa !5
  br label %132

132:                                              ; preds = %130, %90
  %133 = phi ptr [ %131, %130 ], [ %88, %90 ]
  %134 = tail call i32 @fflush(ptr noundef %133) #13
  br label %135

135:                                              ; preds = %132, %86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @connect_traces(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  %8 = load i32, ptr @max_entry_frequency, align 4, !tbaa !14
  %9 = sdiv i32 %8, 10
  %10 = load i64, ptr @max_entry_count, align 8, !tbaa !22
  %11 = icmp slt i64 %10, 2147483
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = udiv i64 %10, 10
  br label %17

14:                                               ; preds = %2
  %15 = udiv i64 %10, 1000
  %16 = mul nuw nsw i64 %15, 100
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i64 [ %13, %12 ], [ %16, %14 ]
  %19 = sext i32 %0 to i64
  %20 = tail call ptr @xcalloc(i64 noundef %19, i64 noundef 1) #12
  %21 = load ptr, ptr %1, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !45
  %24 = and i32 %23, 96
  %25 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !14
  %26 = icmp ne i32 %25, 0
  %27 = icmp sgt i32 %0, 0
  %28 = and i1 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %17, %29
  %30 = phi i64 [ %38, %29 ], [ 0, %17 ]
  %31 = getelementptr inbounds %struct.trace, ptr %1, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 13
  %34 = load i32, ptr %33, align 8, !tbaa !45
  %35 = xor i32 %34, %23
  %36 = and i32 %35, 96
  %37 = icmp eq i32 %36, 0
  %38 = add nuw nsw i64 %30, 1
  %39 = icmp slt i64 %38, %19
  %40 = select i1 %39, i1 %37, i1 false
  br i1 %40, label %29, label %41, !llvm.loop !46

41:                                               ; preds = %29
  %42 = xor i1 %37, true
  %43 = zext i1 %42 to i8
  br label %44

44:                                               ; preds = %41, %17
  %45 = phi i8 [ 0, %17 ], [ %43, %41 ]
  %46 = icmp ne i8 %45, 0
  %47 = icmp eq i8 %45, 0
  %48 = getelementptr inbounds i8, ptr %4, i64 8
  %49 = getelementptr inbounds i8, ptr %5, i64 8
  %50 = getelementptr inbounds i8, ptr %7, i64 8
  br label %51

51:                                               ; preds = %521, %44
  %52 = phi i32 [ %24, %44 ], [ %65, %521 ]
  %53 = phi i32 [ 1, %44 ], [ %66, %521 ]
  %54 = phi i32 [ -1, %44 ], [ %522, %521 ]
  %55 = phi i32 [ 0, %44 ], [ %523, %521 ]
  %56 = icmp slt i32 %55, %0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  br label %64

58:                                               ; preds = %51
  %59 = icmp eq i32 %53, 1
  %60 = select i1 %46, i1 %59, i1 false
  br i1 %60, label %61, label %524

61:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %62 = icmp eq i32 %52, 32
  %63 = select i1 %62, i32 64, i32 32
  br label %64

64:                                               ; preds = %57, %61
  %65 = phi i32 [ %63, %61 ], [ %52, %57 ]
  %66 = phi i32 [ 2, %61 ], [ %53, %57 ]
  %67 = phi i32 [ 0, %61 ], [ %55, %57 ]
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %20, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !47
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %521

72:                                               ; preds = %64
  br i1 %47, label %80, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.trace, ptr %1, i64 %68
  %75 = load ptr, ptr %74, align 8, !tbaa !44
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 13
  %77 = load i32, ptr %76, align 8, !tbaa !45
  %78 = and i32 %77, 96
  %79 = icmp eq i32 %78, %65
  br i1 %79, label %80, label %521

80:                                               ; preds = %73, %72
  store i8 1, ptr %69, align 1, !tbaa !47
  %81 = icmp sgt i32 %67, 0
  br i1 %81, label %82, label %175

82:                                               ; preds = %80, %173
  %83 = phi i32 [ %160, %173 ], [ %67, %80 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds %struct.trace, ptr %1, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !44
  %87 = tail call fastcc ptr @ei_start_1(ptr noundef %86) #13
  store i32 0, ptr %4, align 8, !tbaa.struct !25
  store ptr %87, ptr %48, align 8, !tbaa.struct !26
  %88 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %87, ptr noundef nonnull %3) #13, !range !27
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %149, label %90

90:                                               ; preds = %82, %140
  %91 = phi ptr [ %142, %140 ], [ null, %82 ]
  %92 = phi i32 [ %141, %140 ], [ 0, %82 ]
  %93 = load ptr, ptr %3, align 8, !tbaa !5
  %94 = load ptr, ptr %93, align 8, !tbaa !48
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 9
  %96 = load i32, ptr %95, align 8, !tbaa !30
  %97 = load ptr, ptr @cfun, align 8, !tbaa !5
  %98 = getelementptr inbounds %struct.function, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !9
  %100 = load ptr, ptr %99, align 8, !tbaa !24
  %101 = icmp eq ptr %94, %100
  br i1 %101, label %140, label %102

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.edge_def, ptr %93, i64 0, i32 7
  %104 = load i32, ptr %103, align 8, !tbaa !49
  %105 = and i32 %104, 78
  %106 = icmp eq i32 %105, 64
  br i1 %106, label %107, label %140

107:                                              ; preds = %102
  %108 = load ptr, ptr @bbd, align 8, !tbaa !5
  %109 = sext i32 %96 to i64
  %110 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %108, i64 %109, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !19
  %112 = icmp sgt i32 %111, -1
  br i1 %112, label %113, label %140

113:                                              ; preds = %107
  %114 = zext nneg i32 %111 to i64
  %115 = getelementptr inbounds i8, ptr %20, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !47
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %140

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 13
  %120 = load i32, ptr %119, align 8, !tbaa !45
  %121 = and i32 %120, 96
  %122 = icmp eq i32 %121, %65
  br i1 %122, label %123, label %140

123:                                              ; preds = %118
  %124 = icmp eq ptr %91, null
  br i1 %124, label %137, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.edge_def, ptr %93, i64 0, i32 8
  %127 = load i32, ptr %126, align 4, !tbaa !50
  %128 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 8
  %129 = load i32, ptr %128, align 4, !tbaa !50
  %130 = icmp sgt i32 %127, %129
  br i1 %130, label %137, label %131

131:                                              ; preds = %125
  %132 = icmp eq i32 %127, %129
  br i1 %132, label %133, label %140

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.trace, ptr %1, i64 %114, i32 3
  %135 = load i32, ptr %134, align 4, !tbaa !51
  %136 = icmp sgt i32 %135, %92
  br i1 %136, label %137, label %140

137:                                              ; preds = %133, %125, %123
  %138 = getelementptr inbounds %struct.trace, ptr %1, i64 %114, i32 3
  %139 = load i32, ptr %138, align 4, !tbaa !51
  br label %140

140:                                              ; preds = %137, %133, %131, %118, %113, %107, %102, %90
  %141 = phi i32 [ %92, %113 ], [ %139, %137 ], [ %92, %133 ], [ %92, %131 ], [ %92, %118 ], [ %92, %107 ], [ %92, %102 ], [ %92, %90 ]
  %142 = phi ptr [ %91, %113 ], [ %93, %137 ], [ %91, %133 ], [ %91, %131 ], [ %91, %118 ], [ %91, %107 ], [ %91, %102 ], [ %91, %90 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #13
  %143 = load i32, ptr %4, align 8
  %144 = load ptr, ptr %48, align 8
  %145 = call fastcc zeroext i8 @ei_cond(i32 %143, ptr %144, ptr noundef nonnull %3) #13, !range !27
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %90, !llvm.loop !52

147:                                              ; preds = %140
  %148 = icmp eq ptr %142, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %82, %147
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %175

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.edge_def, ptr %142, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !28
  %153 = load ptr, ptr %142, align 8, !tbaa !48
  %154 = getelementptr inbounds %struct.basic_block_def, ptr %153, i64 0, i32 2
  store ptr %152, ptr %154, align 8, !tbaa !53
  %155 = load ptr, ptr @bbd, align 8, !tbaa !5
  %156 = getelementptr inbounds %struct.basic_block_def, ptr %153, i64 0, i32 9
  %157 = load i32, ptr %156, align 8, !tbaa !30
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %155, i64 %158, i32 1
  %160 = load i32, ptr %159, align 4, !tbaa !19
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, ptr %20, i64 %161
  store i8 1, ptr %162, align 1, !tbaa !47
  %163 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %164 = icmp eq ptr %163, null
  br i1 %164, label %173, label %165

165:                                              ; preds = %150
  %166 = load ptr, ptr %142, align 8, !tbaa !48
  %167 = getelementptr inbounds %struct.basic_block_def, ptr %166, i64 0, i32 9
  %168 = load i32, ptr %167, align 8, !tbaa !30
  %169 = load ptr, ptr %151, align 8, !tbaa !28
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %169, i64 0, i32 9
  %171 = load i32, ptr %170, align 8, !tbaa !30
  %172 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %163, ptr noundef nonnull @.str.22, i32 noundef %168, i32 noundef %171) #13
  br label %173

173:                                              ; preds = %165, %150
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %174 = icmp sgt i32 %160, 0
  br i1 %174, label %82, label %175

175:                                              ; preds = %173, %80, %149
  %176 = phi i32 [ %83, %149 ], [ %67, %80 ], [ %160, %173 ]
  %177 = icmp sgt i32 %54, -1
  br i1 %177, label %178, label %186

178:                                              ; preds = %175
  %179 = sext i32 %176 to i64
  %180 = getelementptr inbounds %struct.trace, ptr %1, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !44
  %182 = zext nneg i32 %54 to i64
  %183 = getelementptr inbounds %struct.trace, ptr %1, i64 %182, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !41
  %185 = getelementptr inbounds %struct.basic_block_def, ptr %184, i64 0, i32 2
  store ptr %181, ptr %185, align 8, !tbaa !53
  br label %186

186:                                              ; preds = %178, %175
  br label %187

187:                                              ; preds = %186, %516
  %188 = phi i32 [ %518, %516 ], [ %67, %186 ]
  %189 = phi i32 [ %519, %516 ], [ %67, %186 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds %struct.trace, ptr %1, i64 %190, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !41
  %193 = getelementptr inbounds %struct.basic_block_def, ptr %192, i64 0, i32 1
  %194 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %193) #13
  store i32 0, ptr %5, align 8, !tbaa.struct !25
  store ptr %194, ptr %49, align 8, !tbaa.struct !26
  %195 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %194, ptr noundef nonnull %3) #13, !range !27
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %287, label %197

197:                                              ; preds = %187, %249
  %198 = phi ptr [ %251, %249 ], [ null, %187 ]
  %199 = phi i32 [ %250, %249 ], [ 0, %187 ]
  %200 = load ptr, ptr %3, align 8, !tbaa !5
  %201 = getelementptr inbounds %struct.edge_def, ptr %200, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !28
  %203 = getelementptr inbounds %struct.basic_block_def, ptr %202, i64 0, i32 9
  %204 = load i32, ptr %203, align 8, !tbaa !30
  %205 = load ptr, ptr @cfun, align 8, !tbaa !5
  %206 = getelementptr inbounds %struct.function, ptr %205, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !9
  %208 = getelementptr inbounds %struct.control_flow_graph, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !54
  %210 = icmp eq ptr %202, %209
  br i1 %210, label %249, label %211

211:                                              ; preds = %197
  %212 = getelementptr inbounds %struct.edge_def, ptr %200, i64 0, i32 7
  %213 = load i32, ptr %212, align 8, !tbaa !49
  %214 = and i32 %213, 78
  %215 = icmp eq i32 %214, 64
  br i1 %215, label %216, label %249

216:                                              ; preds = %211
  %217 = load ptr, ptr @bbd, align 8, !tbaa !5
  %218 = sext i32 %204 to i64
  %219 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %217, i64 %218
  %220 = load i32, ptr %219, align 8, !tbaa !16
  %221 = icmp sgt i32 %220, -1
  br i1 %221, label %222, label %249

222:                                              ; preds = %216
  %223 = zext nneg i32 %220 to i64
  %224 = getelementptr inbounds i8, ptr %20, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !47
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %249

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.basic_block_def, ptr %202, i64 0, i32 13
  %229 = load i32, ptr %228, align 8, !tbaa !45
  %230 = and i32 %229, 96
  %231 = icmp eq i32 %230, %65
  br i1 %231, label %232, label %249

232:                                              ; preds = %227
  %233 = icmp eq ptr %198, null
  br i1 %233, label %246, label %234

234:                                              ; preds = %232
  %235 = getelementptr inbounds %struct.edge_def, ptr %200, i64 0, i32 8
  %236 = load i32, ptr %235, align 4, !tbaa !50
  %237 = getelementptr inbounds %struct.edge_def, ptr %198, i64 0, i32 8
  %238 = load i32, ptr %237, align 4, !tbaa !50
  %239 = icmp sgt i32 %236, %238
  br i1 %239, label %246, label %240

240:                                              ; preds = %234
  %241 = icmp eq i32 %236, %238
  br i1 %241, label %242, label %249

242:                                              ; preds = %240
  %243 = getelementptr inbounds %struct.trace, ptr %1, i64 %223, i32 3
  %244 = load i32, ptr %243, align 4, !tbaa !51
  %245 = icmp sgt i32 %244, %199
  br i1 %245, label %246, label %249

246:                                              ; preds = %242, %234, %232
  %247 = getelementptr inbounds %struct.trace, ptr %1, i64 %223, i32 3
  %248 = load i32, ptr %247, align 4, !tbaa !51
  br label %249

249:                                              ; preds = %246, %242, %240, %227, %222, %216, %211, %197
  %250 = phi i32 [ %199, %222 ], [ %248, %246 ], [ %199, %242 ], [ %199, %240 ], [ %199, %227 ], [ %199, %216 ], [ %199, %211 ], [ %199, %197 ]
  %251 = phi ptr [ %198, %222 ], [ %200, %246 ], [ %198, %242 ], [ %198, %240 ], [ %198, %227 ], [ %198, %216 ], [ %198, %211 ], [ %198, %197 ]
  call fastcc void @ei_next(ptr noundef nonnull %5) #13
  %252 = load i32, ptr %5, align 8
  %253 = load ptr, ptr %49, align 8
  %254 = call fastcc zeroext i8 @ei_cond(i32 %252, ptr %253, ptr noundef nonnull %3) #13, !range !27
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %197, !llvm.loop !55

256:                                              ; preds = %249
  %257 = icmp eq ptr %251, null
  br i1 %257, label %287, label %258

258:                                              ; preds = %256
  %259 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %260 = icmp eq ptr %259, null
  br i1 %260, label %270, label %261

261:                                              ; preds = %258
  %262 = load ptr, ptr %251, align 8, !tbaa !48
  %263 = getelementptr inbounds %struct.basic_block_def, ptr %262, i64 0, i32 9
  %264 = load i32, ptr %263, align 8, !tbaa !30
  %265 = getelementptr inbounds %struct.edge_def, ptr %251, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !28
  %267 = getelementptr inbounds %struct.basic_block_def, ptr %266, i64 0, i32 9
  %268 = load i32, ptr %267, align 8, !tbaa !30
  %269 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %259, ptr noundef nonnull @.str.22, i32 noundef %264, i32 noundef %268) #13
  br label %270

270:                                              ; preds = %261, %258
  %271 = load ptr, ptr @bbd, align 8, !tbaa !5
  %272 = getelementptr inbounds %struct.edge_def, ptr %251, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !28
  %274 = getelementptr inbounds %struct.basic_block_def, ptr %273, i64 0, i32 9
  %275 = load i32, ptr %274, align 8, !tbaa !30
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %271, i64 %276
  %278 = load i32, ptr %277, align 8, !tbaa !16
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.trace, ptr %1, i64 %279
  %281 = load ptr, ptr %280, align 8, !tbaa !44
  %282 = sext i32 %189 to i64
  %283 = getelementptr inbounds %struct.trace, ptr %1, i64 %282, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !41
  %285 = getelementptr inbounds %struct.basic_block_def, ptr %284, i64 0, i32 2
  store ptr %281, ptr %285, align 8, !tbaa !53
  %286 = getelementptr inbounds i8, ptr %20, i64 %279
  store i8 1, ptr %286, align 1, !tbaa !47
  br label %516

287:                                              ; preds = %187, %256
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %288 = load ptr, ptr %191, align 8, !tbaa !41
  %289 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 1
  %290 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %289) #13
  store i32 0, ptr %5, align 8, !tbaa.struct !25
  store ptr %290, ptr %49, align 8, !tbaa.struct !26
  %291 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %290, ptr noundef nonnull %3) #13, !range !27
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %512, label %293

293:                                              ; preds = %287, %419
  %294 = phi i8 [ %422, %419 ], [ 0, %287 ]
  %295 = phi ptr [ %421, %419 ], [ null, %287 ]
  %296 = phi ptr [ %420, %419 ], [ null, %287 ]
  %297 = load ptr, ptr %3, align 8, !tbaa !5
  %298 = getelementptr inbounds %struct.edge_def, ptr %297, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !28
  %300 = load ptr, ptr @cfun, align 8, !tbaa !5
  %301 = getelementptr inbounds %struct.function, ptr %300, i64 0, i32 1
  %302 = load ptr, ptr %301, align 8, !tbaa !9
  %303 = getelementptr inbounds %struct.control_flow_graph, ptr %302, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !54
  %305 = icmp eq ptr %299, %304
  br i1 %305, label %419, label %306

306:                                              ; preds = %293
  %307 = getelementptr inbounds %struct.edge_def, ptr %297, i64 0, i32 7
  %308 = load i32, ptr %307, align 8, !tbaa !49
  %309 = and i32 %308, 78
  %310 = icmp eq i32 %309, 64
  br i1 %310, label %311, label %419

311:                                              ; preds = %306
  %312 = icmp eq ptr %296, null
  br i1 %312, label %319, label %313

313:                                              ; preds = %311
  %314 = getelementptr inbounds %struct.edge_def, ptr %297, i64 0, i32 8
  %315 = load i32, ptr %314, align 4, !tbaa !50
  %316 = getelementptr inbounds %struct.edge_def, ptr %296, i64 0, i32 8
  %317 = load i32, ptr %316, align 4, !tbaa !50
  %318 = icmp sgt i32 %315, %317
  br i1 %318, label %319, label %419

319:                                              ; preds = %313, %311
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  %320 = load ptr, ptr @bbd, align 8, !tbaa !5
  %321 = getelementptr inbounds %struct.basic_block_def, ptr %299, i64 0, i32 9
  %322 = load i32, ptr %321, align 8, !tbaa !30
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %320, i64 %323
  %325 = load i32, ptr %324, align 8, !tbaa !16
  %326 = icmp sgt i32 %325, -1
  br i1 %326, label %327, label %332

327:                                              ; preds = %319
  %328 = zext nneg i32 %325 to i64
  %329 = getelementptr inbounds %struct.trace, ptr %1, i64 %328, i32 3
  %330 = load i32, ptr %329, align 4, !tbaa !51
  %331 = icmp eq i32 %330, 1
  br i1 %331, label %415, label %332

332:                                              ; preds = %327, %319
  %333 = getelementptr inbounds %struct.basic_block_def, ptr %299, i64 0, i32 1
  %334 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %333) #13
  store i32 0, ptr %7, align 8, !tbaa.struct !25
  store ptr %334, ptr %50, align 8, !tbaa.struct !26
  %335 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %334, ptr noundef nonnull %6) #13, !range !27
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %415, label %337

337:                                              ; preds = %332, %405
  %338 = phi i32 [ %410, %405 ], [ 0, %332 ]
  %339 = phi ptr [ %409, %405 ], [ null, %332 ]
  %340 = phi i8 [ %408, %405 ], [ %294, %332 ]
  %341 = phi ptr [ %407, %405 ], [ %295, %332 ]
  %342 = phi ptr [ %406, %405 ], [ %296, %332 ]
  %343 = load ptr, ptr %6, align 8, !tbaa !5
  %344 = getelementptr inbounds %struct.edge_def, ptr %343, i64 0, i32 1
  %345 = load ptr, ptr %344, align 8, !tbaa !28
  %346 = getelementptr inbounds %struct.basic_block_def, ptr %345, i64 0, i32 9
  %347 = load i32, ptr %346, align 8, !tbaa !30
  %348 = load ptr, ptr @cfun, align 8, !tbaa !5
  %349 = getelementptr inbounds %struct.function, ptr %348, i64 0, i32 1
  %350 = load ptr, ptr %349, align 8, !tbaa !9
  %351 = getelementptr inbounds %struct.control_flow_graph, ptr %350, i64 0, i32 1
  %352 = load ptr, ptr %351, align 8, !tbaa !54
  %353 = icmp eq ptr %345, %352
  br i1 %353, label %405, label %354

354:                                              ; preds = %337
  %355 = getelementptr inbounds %struct.edge_def, ptr %343, i64 0, i32 7
  %356 = load i32, ptr %355, align 8, !tbaa !49
  %357 = and i32 %356, 78
  %358 = icmp eq i32 %357, 64
  br i1 %358, label %359, label %405

359:                                              ; preds = %354
  %360 = load ptr, ptr @bbd, align 8, !tbaa !5
  %361 = sext i32 %347 to i64
  %362 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %360, i64 %361
  %363 = load i32, ptr %362, align 8, !tbaa !16
  %364 = icmp sgt i32 %363, -1
  br i1 %364, label %365, label %405

365:                                              ; preds = %359
  %366 = zext nneg i32 %363 to i64
  %367 = getelementptr inbounds i8, ptr %20, i64 %366
  %368 = load i8, ptr %367, align 1, !tbaa !47
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %370, label %405

370:                                              ; preds = %365
  %371 = getelementptr inbounds %struct.basic_block_def, ptr %345, i64 0, i32 13
  %372 = load i32, ptr %371, align 8, !tbaa !45
  %373 = and i32 %372, 96
  %374 = icmp eq i32 %373, %65
  br i1 %374, label %375, label %405

375:                                              ; preds = %370
  %376 = load ptr, ptr %343, align 8, !tbaa !48
  %377 = getelementptr inbounds %struct.basic_block_def, ptr %376, i64 0, i32 11
  %378 = load i32, ptr %377, align 8, !tbaa !35
  %379 = getelementptr inbounds %struct.edge_def, ptr %343, i64 0, i32 8
  %380 = load i32, ptr %379, align 4, !tbaa !50
  %381 = mul nsw i32 %380, %378
  %382 = add nsw i32 %381, 5000
  %383 = sdiv i32 %382, 10000
  %384 = icmp slt i32 %383, %9
  br i1 %384, label %405, label %385

385:                                              ; preds = %375
  %386 = getelementptr inbounds %struct.edge_def, ptr %343, i64 0, i32 9
  %387 = load i64, ptr %386, align 8, !tbaa !56
  %388 = icmp slt i64 %387, %18
  br i1 %388, label %405, label %389

389:                                              ; preds = %385
  %390 = icmp eq ptr %339, null
  br i1 %390, label %401, label %391

391:                                              ; preds = %389
  %392 = getelementptr inbounds %struct.edge_def, ptr %339, i64 0, i32 8
  %393 = load i32, ptr %392, align 4, !tbaa !50
  %394 = icmp sgt i32 %380, %393
  br i1 %394, label %401, label %395

395:                                              ; preds = %391
  %396 = icmp eq i32 %380, %393
  br i1 %396, label %397, label %405

397:                                              ; preds = %395
  %398 = getelementptr inbounds %struct.trace, ptr %1, i64 %366, i32 3
  %399 = load i32, ptr %398, align 4, !tbaa !51
  %400 = icmp sgt i32 %399, %338
  br i1 %400, label %401, label %405

401:                                              ; preds = %397, %391, %389
  %402 = zext nneg i32 %363 to i64
  %403 = getelementptr inbounds %struct.trace, ptr %1, i64 %402, i32 3
  %404 = load i32, ptr %403, align 4, !tbaa !51
  br label %405

405:                                              ; preds = %401, %337, %397, %395, %385, %375, %370, %365, %359, %354
  %406 = phi ptr [ %342, %365 ], [ %342, %397 ], [ %342, %395 ], [ %342, %385 ], [ %342, %375 ], [ %342, %370 ], [ %342, %359 ], [ %342, %354 ], [ %297, %337 ], [ %297, %401 ]
  %407 = phi ptr [ %341, %365 ], [ %341, %397 ], [ %341, %395 ], [ %341, %385 ], [ %341, %375 ], [ %341, %370 ], [ %341, %359 ], [ %341, %354 ], [ %345, %337 ], [ %345, %401 ]
  %408 = phi i8 [ %340, %365 ], [ %340, %397 ], [ %340, %395 ], [ %340, %385 ], [ %340, %375 ], [ %340, %370 ], [ %340, %359 ], [ %340, %354 ], [ 1, %337 ], [ 1, %401 ]
  %409 = phi ptr [ %339, %365 ], [ %339, %397 ], [ %339, %395 ], [ %339, %385 ], [ %339, %375 ], [ %339, %370 ], [ %339, %359 ], [ %339, %354 ], [ %343, %337 ], [ %343, %401 ]
  %410 = phi i32 [ %338, %365 ], [ %338, %397 ], [ %338, %395 ], [ %338, %385 ], [ %338, %375 ], [ %338, %370 ], [ %338, %359 ], [ %338, %354 ], [ 2147483647, %337 ], [ %404, %401 ]
  call fastcc void @ei_next(ptr noundef nonnull %7) #13
  %411 = load i32, ptr %7, align 8
  %412 = load ptr, ptr %50, align 8
  %413 = call fastcc zeroext i8 @ei_cond(i32 %411, ptr %412, ptr noundef nonnull %6) #13, !range !27
  %414 = icmp eq i8 %413, 0
  br i1 %414, label %415, label %337, !llvm.loop !57

415:                                              ; preds = %405, %332, %327
  %416 = phi ptr [ %297, %327 ], [ %296, %332 ], [ %406, %405 ]
  %417 = phi ptr [ %295, %327 ], [ %295, %332 ], [ %407, %405 ]
  %418 = phi i8 [ 1, %327 ], [ %294, %332 ], [ %408, %405 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %419

419:                                              ; preds = %415, %293, %306, %313
  %420 = phi ptr [ %416, %415 ], [ %296, %313 ], [ %296, %306 ], [ %296, %293 ]
  %421 = phi ptr [ %417, %415 ], [ %295, %313 ], [ %295, %306 ], [ %295, %293 ]
  %422 = phi i8 [ %418, %415 ], [ %294, %313 ], [ %294, %306 ], [ %294, %293 ]
  call fastcc void @ei_next(ptr noundef nonnull %5) #13
  %423 = load i32, ptr %5, align 8
  %424 = load ptr, ptr %49, align 8
  %425 = call fastcc zeroext i8 @ei_cond(i32 %423, ptr %424, ptr noundef nonnull %3) #13, !range !27
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %427, label %293, !llvm.loop !58

427:                                              ; preds = %419
  %428 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !14
  %429 = icmp ne i32 %428, 0
  %430 = icmp eq i8 %422, 0
  %431 = select i1 %429, i1 true, i1 %430
  br i1 %431, label %512, label %432

432:                                              ; preds = %427
  %433 = getelementptr inbounds %struct.edge_def, ptr %420, i64 0, i32 1
  %434 = load ptr, ptr %433, align 8, !tbaa !28
  %435 = tail call zeroext i8 @optimize_edge_for_speed_p(ptr noundef %420) #12
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %451, label %437

437:                                              ; preds = %432
  %438 = load ptr, ptr %420, align 8, !tbaa !48
  %439 = getelementptr inbounds %struct.basic_block_def, ptr %438, i64 0, i32 11
  %440 = load i32, ptr %439, align 8, !tbaa !35
  %441 = getelementptr inbounds %struct.edge_def, ptr %420, i64 0, i32 8
  %442 = load i32, ptr %441, align 4, !tbaa !50
  %443 = mul nsw i32 %442, %440
  %444 = add nsw i32 %443, 5000
  %445 = sdiv i32 %444, 10000
  %446 = icmp slt i32 %445, %9
  br i1 %446, label %451, label %447

447:                                              ; preds = %437
  %448 = getelementptr inbounds %struct.edge_def, ptr %420, i64 0, i32 9
  %449 = load i64, ptr %448, align 8, !tbaa !56
  %450 = icmp sge i64 %449, %18
  br label %451

451:                                              ; preds = %447, %437, %432
  %452 = phi i1 [ false, %437 ], [ false, %432 ], [ %450, %447 ]
  %453 = zext i1 %452 to i32
  %454 = tail call fastcc zeroext i8 @copy_bb_p(ptr noundef %434, i32 noundef %453) #13, !range !27
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %512, label %456

456:                                              ; preds = %451
  %457 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %458 = icmp eq ptr %457, null
  br i1 %458, label %485, label %459

459:                                              ; preds = %456
  %460 = load ptr, ptr %191, align 8, !tbaa !41
  %461 = getelementptr inbounds %struct.basic_block_def, ptr %460, i64 0, i32 9
  %462 = load i32, ptr %461, align 8, !tbaa !30
  %463 = load ptr, ptr %433, align 8, !tbaa !28
  %464 = getelementptr inbounds %struct.basic_block_def, ptr %463, i64 0, i32 9
  %465 = load i32, ptr %464, align 8, !tbaa !30
  %466 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %457, ptr noundef nonnull @.str.23, i32 noundef %462, i32 noundef %465) #13
  %467 = icmp eq ptr %421, null
  br i1 %467, label %468, label %471

468:                                              ; preds = %459
  %469 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %470 = tail call i32 @fputc(i32 noundef 10, ptr noundef %469) #13
  br label %485

471:                                              ; preds = %459
  %472 = load ptr, ptr @cfun, align 8, !tbaa !5
  %473 = getelementptr inbounds %struct.function, ptr %472, i64 0, i32 1
  %474 = load ptr, ptr %473, align 8, !tbaa !9
  %475 = getelementptr inbounds %struct.control_flow_graph, ptr %474, i64 0, i32 1
  %476 = load ptr, ptr %475, align 8, !tbaa !54
  %477 = icmp eq ptr %421, %476
  %478 = load ptr, ptr @dump_file, align 8, !tbaa !5
  br i1 %477, label %479, label %481

479:                                              ; preds = %471
  %480 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 5, i64 1, ptr %478)
  br label %485

481:                                              ; preds = %471
  %482 = getelementptr inbounds %struct.basic_block_def, ptr %421, i64 0, i32 9
  %483 = load i32, ptr %482, align 8, !tbaa !30
  %484 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %478, ptr noundef nonnull @.str.25, i32 noundef %483) #13
  br label %485

485:                                              ; preds = %468, %481, %479, %456
  %486 = load ptr, ptr %433, align 8, !tbaa !28
  %487 = load ptr, ptr %191, align 8, !tbaa !41
  %488 = tail call fastcc ptr @copy_bb(ptr noundef %486, ptr noundef nonnull %420, ptr noundef %487, i32 noundef %188) #13
  store ptr %488, ptr %191, align 8, !tbaa !41
  %489 = icmp eq ptr %421, null
  br i1 %489, label %512, label %490

490:                                              ; preds = %485
  %491 = load ptr, ptr @cfun, align 8, !tbaa !5
  %492 = getelementptr inbounds %struct.function, ptr %491, i64 0, i32 1
  %493 = load ptr, ptr %492, align 8, !tbaa !9
  %494 = getelementptr inbounds %struct.control_flow_graph, ptr %493, i64 0, i32 1
  %495 = load ptr, ptr %494, align 8, !tbaa !54
  %496 = icmp eq ptr %421, %495
  br i1 %496, label %512, label %497

497:                                              ; preds = %490
  %498 = load ptr, ptr @bbd, align 8, !tbaa !5
  %499 = getelementptr inbounds %struct.basic_block_def, ptr %421, i64 0, i32 9
  %500 = load i32, ptr %499, align 8, !tbaa !30
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %498, i64 %501
  %503 = load i32, ptr %502, align 8, !tbaa !16
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.trace, ptr %1, i64 %504
  %506 = load ptr, ptr %505, align 8, !tbaa !44
  %507 = sext i32 %189 to i64
  %508 = getelementptr inbounds %struct.trace, ptr %1, i64 %507, i32 1
  %509 = load ptr, ptr %508, align 8, !tbaa !41
  %510 = getelementptr inbounds %struct.basic_block_def, ptr %509, i64 0, i32 2
  store ptr %506, ptr %510, align 8, !tbaa !53
  %511 = getelementptr inbounds i8, ptr %20, i64 %504
  store i8 1, ptr %511, align 1, !tbaa !47
  br label %512

512:                                              ; preds = %287, %427, %451, %497, %490, %485
  %513 = phi i32 [ 0, %497 ], [ 14, %490 ], [ 14, %485 ], [ 14, %451 ], [ 14, %427 ], [ 14, %287 ]
  %514 = phi i32 [ %503, %497 ], [ %188, %490 ], [ %188, %485 ], [ %188, %451 ], [ %188, %427 ], [ %188, %287 ]
  %515 = phi i32 [ %503, %497 ], [ %189, %490 ], [ %189, %485 ], [ %189, %451 ], [ %189, %427 ], [ %189, %287 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %516

516:                                              ; preds = %512, %270
  %517 = phi i32 [ 0, %270 ], [ %513, %512 ]
  %518 = phi i32 [ %278, %270 ], [ %514, %512 ]
  %519 = phi i32 [ %278, %270 ], [ %515, %512 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  %520 = icmp eq i32 %517, 0
  br i1 %520, label %187, label %521

521:                                              ; preds = %516, %73, %64
  %522 = phi i32 [ %54, %64 ], [ %54, %73 ], [ %519, %516 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  %523 = add nsw i32 %67, 1
  br label %51, !llvm.loop !59

524:                                              ; preds = %58
  %525 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %526 = icmp eq ptr %525, null
  br i1 %526, label %545, label %527

527:                                              ; preds = %524
  %528 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 13, i64 1, ptr nonnull %525)
  %529 = load ptr, ptr %1, align 8, !tbaa !5
  %530 = icmp eq ptr %529, null
  br i1 %530, label %540, label %531

531:                                              ; preds = %527, %531
  %532 = phi ptr [ %538, %531 ], [ %529, %527 ]
  %533 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %534 = getelementptr inbounds %struct.basic_block_def, ptr %532, i64 0, i32 9
  %535 = load i32, ptr %534, align 8, !tbaa !30
  %536 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %533, ptr noundef nonnull @.str.27, i32 noundef %535) #13
  %537 = getelementptr inbounds %struct.basic_block_def, ptr %532, i64 0, i32 2
  %538 = load ptr, ptr %537, align 8, !tbaa !5
  %539 = icmp eq ptr %538, null
  br i1 %539, label %540, label %531, !llvm.loop !60

540:                                              ; preds = %531, %527
  %541 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %542 = tail call i32 @fputc(i32 10, ptr %541)
  %543 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %544 = tail call i32 @fflush(ptr noundef %543) #13
  br label %545

545:                                              ; preds = %540, %524
  %546 = icmp eq ptr %20, null
  br i1 %546, label %547, label %548

547:                                              ; preds = %545
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1149, ptr noundef nonnull @.str.1) #12
  br label %548

548:                                              ; preds = %545, %547
  tail call void @free(ptr noundef %20) #13
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @relink_block_chain(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @verify_hot_cold_block_grouping() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %51, label %10

10:                                               ; preds = %0, %38
  %11 = phi ptr [ %41, %38 ], [ %1, %0 ]
  %12 = phi ptr [ %43, %38 ], [ %6, %0 ]
  %13 = phi i32 [ %19, %38 ], [ 0, %0 ]
  %14 = phi i8 [ 1, %38 ], [ 0, %0 ]
  %15 = phi i1 [ false, %38 ], [ true, %0 ]
  %16 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  br label %17

17:                                               ; preds = %10, %29
  %18 = phi ptr [ %33, %29 ], [ %12, %10 ]
  %19 = phi i32 [ %31, %29 ], [ %13, %10 ]
  %20 = phi i8 [ %30, %29 ], [ %14, %10 ]
  %21 = icmp eq i32 %19, 0
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !45
  %24 = and i32 %23, 96
  br i1 %21, label %29, label %25

25:                                               ; preds = %17
  %26 = icmp eq i32 %24, %19
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = icmp eq i8 %20, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %17, %27, %25
  %30 = phi i8 [ %20, %25 ], [ 1, %27 ], [ %20, %17 ]
  %31 = phi i32 [ %19, %25 ], [ %24, %27 ], [ %24, %17 ]
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !61
  %34 = load ptr, ptr %16, align 8, !tbaa !9
  %35 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !54
  %37 = icmp eq ptr %33, %36
  br i1 %37, label %49, label %17, !llvm.loop !62

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !30
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.29, i32 noundef %40) #12
  %41 = load ptr, ptr @cfun, align 8, !tbaa !5
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !61
  %44 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !9
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !54
  %48 = icmp eq ptr %43, %47
  br i1 %48, label %50, label %10, !llvm.loop !62

49:                                               ; preds = %29
  br i1 %15, label %51, label %50

50:                                               ; preds = %38, %49
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1887, ptr noundef nonnull @.str.1) #12
  br label %51

51:                                               ; preds = %0, %49, %50
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_duplicate_computed_gotos() #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 32), align 8, !tbaa !63
  %2 = tail call zeroext i8 %1() #12
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %0
  %5 = load i32, ptr @optimize, align 4, !tbaa !14
  %6 = icmp sgt i32 %5, 0
  %7 = load i32, ptr @flag_expensive_optimizations, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = load ptr, ptr @cfun, align 8, !tbaa !5
  %12 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %11) #12
  %13 = icmp eq i8 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %4, %10, %0
  %16 = phi i8 [ 0, %0 ], [ 0, %4 ], [ %14, %10 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @duplicate_computed_gotos() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !12
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %178, label %9

9:                                                ; preds = %0
  tail call void @cfg_layout_initialize(i32 noundef 0) #12
  %10 = load i32, ptr @uncond_jump_length, align 4, !tbaa !14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @get_uncond_jump_length() #13
  store i32 %13, ptr @uncond_jump_length, align 4, !tbaa !14
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %13, %12 ], [ %10, %9 ]
  %16 = load ptr, ptr @compiler_params, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.param_info, ptr %16, i64 56, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !75
  %19 = mul nsw i32 %18, %15
  %20 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #12
  %21 = load ptr, ptr @cfun, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = load ptr, ptr %23, align 8, !tbaa !24
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !61
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !54
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %115, label %30

30:                                               ; preds = %14
  %31 = getelementptr inbounds i8, ptr %2, i64 8
  br label %32

32:                                               ; preds = %30, %107
  %33 = phi ptr [ %28, %30 ], [ %113, %107 ]
  %34 = phi ptr [ %26, %30 ], [ %108, %107 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !61
  %37 = icmp eq ptr %36, %33
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 2
  store ptr %36, ptr %39, align 8, !tbaa !53
  br label %40

40:                                               ; preds = %38, %32
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !47
  %43 = getelementptr inbounds %struct.rtl_bb_info, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !77
  %45 = tail call i32 @computed_jump_p(ptr noundef %44) #12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %107, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr %41, align 8, !tbaa !47
  %49 = getelementptr inbounds %struct.rtl_bb_info, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !77
  %51 = tail call ptr @find_reg_note(ptr noundef %50, i32 noundef 29, ptr noundef null) #12
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %107

53:                                               ; preds = %47
  %54 = tail call zeroext i8 @can_duplicate_block_p(ptr noundef nonnull %34) #12
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %107, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %41, align 8, !tbaa !47
  %58 = load ptr, ptr %57, align 8, !tbaa !47
  %59 = icmp eq ptr %58, null
  br i1 %59, label %83, label %60

60:                                               ; preds = %56, %78
  %61 = phi ptr [ %81, %78 ], [ %58, %56 ]
  %62 = phi i32 [ %79, %78 ], [ 0, %56 ]
  %63 = load ptr, ptr %41, align 8, !tbaa !47
  %64 = getelementptr inbounds %struct.rtl_bb_info, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !77
  %66 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 2
  %67 = load ptr, ptr %66, align 8, !tbaa !47
  %68 = icmp eq ptr %61, %67
  br i1 %68, label %83, label %69

69:                                               ; preds = %60
  %70 = load i32, ptr %61, align 8
  %71 = and i32 %70, 65535
  %72 = add nsw i32 %71, -7
  %73 = icmp ult i32 %72, 4
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = tail call i32 @get_attr_min_length(ptr noundef nonnull %61) #12
  %76 = add nsw i32 %75, %62
  %77 = icmp sgt i32 %76, %19
  br i1 %77, label %83, label %78

78:                                               ; preds = %69, %74
  %79 = phi i32 [ %76, %74 ], [ %62, %69 ]
  %80 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !47
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %60, !llvm.loop !79

83:                                               ; preds = %60, %74, %78, %56
  %84 = phi i32 [ 0, %56 ], [ %79, %78 ], [ %76, %74 ], [ %62, %60 ]
  %85 = icmp sgt i32 %84, %19
  br i1 %85, label %107, label %86

86:                                               ; preds = %83
  %87 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %34) #13
  store i32 0, ptr %2, align 8, !tbaa.struct !25
  store ptr %87, ptr %31, align 8, !tbaa.struct !26
  %88 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %87, ptr noundef nonnull %1) #13, !range !27
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %86, %90
  %91 = phi i32 [ %95, %90 ], [ 0, %86 ]
  %92 = load ptr, ptr %1, align 8, !tbaa !5
  %93 = getelementptr inbounds %struct.edge_def, ptr %92, i64 0, i32 7
  %94 = load i32, ptr %93, align 8, !tbaa !49
  %95 = or i32 %94, %91
  call fastcc void @ei_next(ptr noundef nonnull %2) #13
  %96 = load i32, ptr %2, align 8
  %97 = load ptr, ptr %31, align 8
  %98 = call fastcc zeroext i8 @ei_cond(i32 %96, ptr %97, ptr noundef nonnull %1) #13, !range !27
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %90, !llvm.loop !80

100:                                              ; preds = %90
  %101 = and i32 %95, 14
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %86, %100
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 9
  %105 = load i32, ptr %104, align 8, !tbaa !30
  %106 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %20, i32 noundef %105) #12
  br label %107

107:                                              ; preds = %100, %83, %47, %53, %40, %103
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #11
  %108 = load ptr, ptr %35, align 8, !tbaa !61
  %109 = load ptr, ptr @cfun, align 8, !tbaa !5
  %110 = getelementptr inbounds %struct.function, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !9
  %112 = getelementptr inbounds %struct.control_flow_graph, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !54
  %114 = icmp eq ptr %108, %113
  br i1 %114, label %115, label %32, !llvm.loop !81

115:                                              ; preds = %107, %14
  %116 = phi ptr [ %26, %14 ], [ %108, %107 ]
  %117 = phi ptr [ %23, %14 ], [ %111, %107 ]
  %118 = load ptr, ptr %20, align 8, !tbaa !82
  %119 = icmp eq ptr %118, null
  br i1 %119, label %177, label %120

120:                                              ; preds = %115
  %121 = load ptr, ptr %117, align 8, !tbaa !24
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 6
  %123 = load ptr, ptr %122, align 8, !tbaa !61
  %124 = icmp eq ptr %123, %116
  br i1 %124, label %177, label %125

125:                                              ; preds = %120, %168
  %126 = phi ptr [ %170, %168 ], [ %123, %120 ]
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %126, i64 0, i32 7
  %128 = load ptr, ptr %127, align 8, !tbaa !47
  %129 = getelementptr inbounds %struct.rtl_bb_info, ptr %128, i64 0, i32 4
  %130 = load i32, ptr %129, align 8, !tbaa !84
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %168

132:                                              ; preds = %125
  store i32 1, ptr %129, align 8, !tbaa !84
  %133 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %126) #13, !range !27
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %168, label %135

135:                                              ; preds = %132
  %136 = tail call fastcc ptr @single_succ(ptr noundef nonnull %126) #13
  %137 = load ptr, ptr @cfun, align 8, !tbaa !5
  %138 = getelementptr inbounds %struct.function, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !9
  %140 = getelementptr inbounds %struct.control_flow_graph, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !54
  %142 = icmp eq ptr %136, %141
  br i1 %142, label %168, label %143

143:                                              ; preds = %135
  %144 = tail call fastcc ptr @single_succ(ptr noundef nonnull %126) #13
  %145 = getelementptr inbounds %struct.basic_block_def, ptr %126, i64 0, i32 6
  %146 = load ptr, ptr %145, align 8, !tbaa !61
  %147 = icmp eq ptr %144, %146
  br i1 %147, label %168, label %148

148:                                              ; preds = %143
  %149 = tail call fastcc ptr @single_succ(ptr noundef nonnull %126) #13
  %150 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %149) #13, !range !27
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %148
  %153 = tail call fastcc ptr @single_succ(ptr noundef nonnull %126) #13
  %154 = getelementptr inbounds %struct.basic_block_def, ptr %153, i64 0, i32 9
  %155 = load i32, ptr %154, align 8, !tbaa !30
  %156 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %20, i32 noundef %155) #12
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %168, label %158

158:                                              ; preds = %152
  %159 = tail call fastcc ptr @single_succ(ptr noundef nonnull %126) #13
  %160 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %126) #13
  %161 = tail call ptr @duplicate_block(ptr noundef %159, ptr noundef %160, ptr noundef nonnull %126) #12
  %162 = getelementptr inbounds %struct.basic_block_def, ptr %126, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !53
  %164 = getelementptr inbounds %struct.basic_block_def, ptr %161, i64 0, i32 2
  store ptr %163, ptr %164, align 8, !tbaa !53
  store ptr %161, ptr %162, align 8, !tbaa !53
  %165 = getelementptr inbounds %struct.basic_block_def, ptr %161, i64 0, i32 7
  %166 = load ptr, ptr %165, align 8, !tbaa !47
  %167 = getelementptr inbounds %struct.rtl_bb_info, ptr %166, i64 0, i32 4
  store i32 1, ptr %167, align 8, !tbaa !84
  br label %168

168:                                              ; preds = %152, %132, %135, %143, %148, %125, %158
  %169 = getelementptr inbounds %struct.basic_block_def, ptr %126, i64 0, i32 6
  %170 = load ptr, ptr %169, align 8, !tbaa !61
  %171 = load ptr, ptr @cfun, align 8, !tbaa !5
  %172 = getelementptr inbounds %struct.function, ptr %171, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !9
  %174 = getelementptr inbounds %struct.control_flow_graph, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !54
  %176 = icmp eq ptr %170, %175
  br i1 %176, label %177, label %125, !llvm.loop !85

177:                                              ; preds = %168, %120, %115
  tail call void @cfg_layout_finalize() #12
  tail call void @bitmap_obstack_free(ptr noundef nonnull %20) #12
  br label %178

178:                                              ; preds = %0, %177
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_handle_reorder_blocks() #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 32), align 8, !tbaa !63
  %2 = tail call zeroext i8 %1() #12
  %3 = icmp eq i8 %2, 0
  %4 = load i32, ptr @optimize, align 4
  %5 = icmp sgt i32 %4, 0
  %6 = select i1 %3, i1 %5, i1 false
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_reorder_blocks() #0 {
  tail call void @cfg_layout_initialize(i32 noundef 1) #12
  %1 = load i32, ptr @flag_reorder_blocks, align 4, !tbaa !14
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_reorder_blocks_and_partition, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !5
  %8 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %7) #12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @reorder_basic_blocks() #13
  %11 = tail call zeroext i8 @cleanup_cfg(i32 noundef 1) #12
  br label %12

12:                                               ; preds = %0, %10, %6
  %13 = load ptr, ptr @cfun, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = load ptr, ptr %17, align 8, !tbaa !61
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %33, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !61
  %25 = icmp eq ptr %24, %19
  br i1 %25, label %33, label %26

26:                                               ; preds = %22, %26
  %27 = phi ptr [ %31, %26 ], [ %24, %22 ]
  %28 = phi ptr [ %27, %26 ], [ %20, %22 ]
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 2
  store ptr %27, ptr %29, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !61
  %32 = icmp eq ptr %31, %19
  br i1 %32, label %33, label %26

33:                                               ; preds = %26, %22, %12
  tail call void @cfg_layout_finalize() #12
  tail call fastcc void @insert_section_boundary_note() #13
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_partition_blocks() #4 {
  %1 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !14
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load i8, ptr @user_defined_section_attribute, align 1, !tbaa !47
  %10 = icmp eq i8 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %8, %3, %0
  %13 = phi i8 [ 0, %3 ], [ 0, %0 ], [ %11, %8 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_partition_blocks() #0 {
  tail call fastcc void @partition_hot_cold_basic_blocks() #13
  ret i32 0
}

; Function Attrs: optsize
declare ptr @emit_label_before(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_label_rtx() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_jump_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_jump(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_attr_min_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fibheap_new() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #5 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #13, !range !27
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #13
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !5
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @fibheap_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @bb_to_key(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !45
  %6 = and i32 %5, 96
  %7 = icmp eq i32 %6, 64
  br i1 %7, label %64, label %8

8:                                                ; preds = %1
  %9 = tail call zeroext i8 @probably_never_executed_bb_p(ptr noundef nonnull %0) #12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %64

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #13
  store i32 0, ptr %3, align 8, !tbaa.struct !25
  %13 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %12, ptr %13, align 8, !tbaa.struct !26
  %14 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %12, ptr noundef nonnull %2) #13, !range !27
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %58, label %16

16:                                               ; preds = %11, %47
  %17 = phi i32 [ %48, %47 ], [ 0, %11 ]
  %18 = load ptr, ptr %2, align 8, !tbaa !5
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = load ptr, ptr @cfun, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = load ptr, ptr %22, align 8, !tbaa !24
  %24 = icmp eq ptr %19, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %16
  %26 = load ptr, ptr @bbd, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !30
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %26, i64 %29, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !19
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %38, label %33

33:                                               ; preds = %25, %16
  %34 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !49
  %36 = and i32 %35, 32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %33, %25
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 11
  %40 = load i32, ptr %39, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !50
  %43 = mul nsw i32 %42, %40
  %44 = add nsw i32 %43, 5000
  %45 = sdiv i32 %44, 10000
  %46 = tail call i32 @llvm.smax.i32(i32 %45, i32 %17)
  br label %47

47:                                               ; preds = %33, %38
  %48 = phi i32 [ %46, %38 ], [ %17, %33 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #13
  %49 = load i32, ptr %3, align 8
  %50 = load ptr, ptr %13, align 8
  %51 = call fastcc zeroext i8 @ei_cond(i32 %49, ptr %50, ptr noundef nonnull %2) #13, !range !27
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %16, !llvm.loop !86

53:                                               ; preds = %47
  %54 = icmp eq i32 %48, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %53
  %56 = mul nsw i32 %48, -100
  %57 = add nsw i32 %56, -1000000
  br label %58

58:                                               ; preds = %53, %11, %55
  %59 = phi i32 [ %57, %55 ], [ 0, %11 ], [ 0, %53 ]
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %61 = load i32, ptr %60, align 8, !tbaa !35
  %62 = sub i32 %59, %61
  %63 = sext i32 %62 to i64
  br label %64

64:                                               ; preds = %58, %1, %8
  %65 = phi i64 [ 10000, %8 ], [ 10000, %1 ], [ %63, %58 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i64 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #13
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #13
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #12
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !87
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !87
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_traces_1_round(i32 noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, i32 noundef %5, ptr nocapture noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca %struct.edge_iterator, align 8
  %10 = tail call ptr @fibheap_new() #12
  %11 = load ptr, ptr %6, align 8, !tbaa !5
  %12 = tail call i32 @fibheap_empty(ptr noundef %11) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %520

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %9, i64 8
  br label %16

16:                                               ; preds = %14, %516
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  %17 = load ptr, ptr %6, align 8, !tbaa !5
  %18 = tail call ptr @fibheap_extract_min(ptr noundef %17) #12
  %19 = load ptr, ptr @bbd, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !30
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %19, i64 %22, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %16
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %24, ptr noundef nonnull @.str.10, i32 noundef %21) #13
  br label %28

28:                                               ; preds = %26, %16
  %29 = tail call fastcc zeroext i8 @push_to_next_round_p(ptr noundef nonnull %18, i32 noundef %5, i32 noundef %1, i64 noundef %2) #13
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %28
  %32 = tail call fastcc i64 @bb_to_key(ptr noundef nonnull %18) #13, !range !33
  %33 = load ptr, ptr @bbd, align 8, !tbaa !5
  %34 = load i32, ptr %20, align 8, !tbaa !30
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %33, i64 %35, i32 3
  store ptr %10, ptr %36, align 8, !tbaa !32
  %37 = tail call ptr @fibheap_insert(ptr noundef %10, i64 noundef %32, ptr noundef nonnull %18) #12
  %38 = load ptr, ptr @bbd, align 8, !tbaa !5
  %39 = load i32, ptr %20, align 8, !tbaa !30
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %38, i64 %40, i32 4
  store ptr %37, ptr %41, align 8, !tbaa !34
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %516, label %44

44:                                               ; preds = %31
  %45 = trunc i64 %32 to i32
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %42, ptr noundef nonnull @.str.11, i32 noundef %39, i32 noundef %45) #13
  br label %516

47:                                               ; preds = %28
  %48 = load i32, ptr %4, align 4, !tbaa !14
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.trace, ptr %3, i64 %49
  store ptr %18, ptr %50, align 8, !tbaa !44
  %51 = getelementptr inbounds %struct.trace, ptr %3, i64 %49, i32 2
  store i32 %5, ptr %51, align 8, !tbaa !39
  %52 = getelementptr inbounds %struct.trace, ptr %3, i64 %49, i32 3
  store i32 0, ptr %52, align 4, !tbaa !51
  %53 = load i32, ptr %4, align 4, !tbaa !14
  %54 = load ptr, ptr @bbd, align 8, !tbaa !5
  %55 = load i32, ptr %20, align 8, !tbaa !30
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %54, i64 %56, i32 2
  store i32 %53, ptr %57, align 8, !tbaa !18
  %58 = add nsw i32 %53, 1
  store i32 %58, ptr %4, align 4, !tbaa !14
  br label %59

59:                                               ; preds = %423, %47
  %60 = phi ptr [ %18, %47 ], [ %426, %423 ]
  %61 = load i32, ptr %4, align 4, !tbaa !14
  tail call fastcc void @mark_bb_visited(ptr noundef nonnull %60, i32 noundef %61) #13
  %62 = load i32, ptr %52, align 4, !tbaa !51
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %52, align 4, !tbaa !51
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 9
  %68 = load i32, ptr %67, align 8, !tbaa !30
  %69 = load i32, ptr %4, align 4, !tbaa !14
  %70 = add nsw i32 %69, -1
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %64, ptr noundef nonnull @.str.12, i32 noundef %68, i32 noundef %70) #13
  br label %72

72:                                               ; preds = %66, %59
  %73 = tail call zeroext i8 @block_ends_with_call_p(ptr noundef nonnull %60) #12
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 1
  %75 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %74) #13
  store i32 0, ptr %9, align 8, !tbaa.struct !25
  store ptr %75, ptr %15, align 8, !tbaa.struct !26
  %76 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %75, ptr noundef nonnull %8) #13, !range !27
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %167, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 13
  %80 = icmp eq i8 %73, 0
  br label %81

81:                                               ; preds = %78, %147
  %82 = phi ptr [ null, %78 ], [ %150, %147 ]
  %83 = phi i32 [ -1073741824, %78 ], [ %149, %147 ]
  %84 = phi i32 [ -1073741824, %78 ], [ %148, %147 ]
  %85 = load ptr, ptr %8, align 8, !tbaa !5
  %86 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 7
  %87 = load i32, ptr %86, align 8, !tbaa !49
  %88 = and i32 %87, 16
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 496, ptr noundef nonnull @.str.1) #12
  br label %91

91:                                               ; preds = %81, %90
  %92 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !28
  %94 = load ptr, ptr @cfun, align 8, !tbaa !5
  %95 = getelementptr inbounds %struct.function, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !9
  %97 = getelementptr inbounds %struct.control_flow_graph, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !54
  %99 = icmp eq ptr %93, %98
  br i1 %99, label %147, label %100

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %93, i64 0, i32 7
  %102 = load ptr, ptr %101, align 8, !tbaa !47
  %103 = getelementptr inbounds %struct.rtl_bb_info, ptr %102, i64 0, i32 4
  %104 = load i32, ptr %103, align 8, !tbaa !84
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %100
  %107 = load i32, ptr %4, align 4, !tbaa !14
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %147

109:                                              ; preds = %106, %100
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %93, i64 0, i32 13
  %111 = load i32, ptr %110, align 8, !tbaa !45
  %112 = load i32, ptr %79, align 8, !tbaa !45
  %113 = xor i32 %112, %111
  %114 = and i32 %113, 96
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %147

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 8
  %118 = load i32, ptr %117, align 4, !tbaa !50
  %119 = getelementptr inbounds %struct.basic_block_def, ptr %93, i64 0, i32 11
  %120 = load i32, ptr %119, align 8, !tbaa !35
  %121 = load i32, ptr %86, align 8, !tbaa !49
  br i1 %80, label %126, label %122

122:                                              ; preds = %116
  %123 = and i32 %121, 64
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %147, label %125

125:                                              ; preds = %122
  br label %147

126:                                              ; preds = %116
  %127 = and i32 %121, 78
  %128 = icmp ne i32 %127, 64
  %129 = icmp slt i32 %118, %0
  %130 = select i1 %128, i1 true, i1 %129
  br i1 %130, label %147, label %131

131:                                              ; preds = %126
  %132 = load ptr, ptr %85, align 8, !tbaa !48
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 11
  %134 = load i32, ptr %133, align 8, !tbaa !35
  %135 = mul nsw i32 %134, %118
  %136 = add nsw i32 %135, 5000
  %137 = sdiv i32 %136, 10000
  %138 = icmp slt i32 %137, %1
  br i1 %138, label %147, label %139

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 9
  %141 = load i64, ptr %140, align 8, !tbaa !56
  %142 = icmp slt i64 %141, %2
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = tail call fastcc zeroext i8 @better_edge_p(ptr noundef nonnull %60, ptr noundef nonnull %85, i32 noundef %118, i32 noundef %120, i32 noundef %83, i32 noundef %84, ptr noundef %82) #13, !range !27
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  br label %147

147:                                              ; preds = %143, %146, %126, %131, %139, %122, %125, %109, %106, %91
  %148 = phi i32 [ %84, %91 ], [ %84, %106 ], [ %84, %109 ], [ %120, %125 ], [ %84, %122 ], [ %84, %131 ], [ %84, %139 ], [ %120, %146 ], [ %84, %143 ], [ %84, %126 ]
  %149 = phi i32 [ %83, %91 ], [ %83, %106 ], [ %83, %109 ], [ %118, %125 ], [ %83, %122 ], [ %83, %131 ], [ %83, %139 ], [ %118, %146 ], [ %83, %143 ], [ %83, %126 ]
  %150 = phi ptr [ %82, %91 ], [ %82, %106 ], [ %82, %109 ], [ %85, %125 ], [ %82, %122 ], [ %82, %131 ], [ %82, %139 ], [ %85, %146 ], [ %82, %143 ], [ %82, %126 ]
  call fastcc void @ei_next(ptr noundef nonnull %9) #13
  %151 = load i32, ptr %9, align 8
  %152 = load ptr, ptr %15, align 8
  %153 = call fastcc zeroext i8 @ei_cond(i32 %151, ptr %152, ptr noundef nonnull %8) #13, !range !27
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %81, !llvm.loop !89

155:                                              ; preds = %147
  %156 = icmp eq ptr %150, null
  br i1 %156, label %167, label %157

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.edge_def, ptr %150, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !28
  %160 = load ptr, ptr %159, align 8, !tbaa !90
  %161 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %160) #13
  %162 = icmp ugt i32 %161, 1
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = tail call fastcc zeroext i8 @copy_bb_p(ptr noundef nonnull %159, i32 noundef 0) #13, !range !27
  %165 = icmp eq i8 %164, 0
  %166 = select i1 %165, ptr %150, ptr null
  br label %167

167:                                              ; preds = %72, %163, %157, %155
  %168 = phi ptr [ %150, %157 ], [ null, %155 ], [ %166, %163 ], [ null, %72 ]
  store i32 0, ptr %9, align 8, !tbaa.struct !25
  store ptr %75, ptr %15, align 8, !tbaa.struct !26
  %169 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %75, ptr noundef nonnull %8) #13, !range !27
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %278, label %171

171:                                              ; preds = %167, %273
  %172 = load ptr, ptr %8, align 8, !tbaa !5
  %173 = icmp eq ptr %172, %168
  br i1 %173, label %273, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.edge_def, ptr %172, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !28
  %177 = load ptr, ptr @cfun, align 8, !tbaa !5
  %178 = getelementptr inbounds %struct.function, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !9
  %180 = getelementptr inbounds %struct.control_flow_graph, ptr %179, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !54
  %182 = icmp eq ptr %176, %181
  br i1 %182, label %273, label %183

183:                                              ; preds = %174
  %184 = getelementptr inbounds %struct.basic_block_def, ptr %176, i64 0, i32 7
  %185 = load ptr, ptr %184, align 8, !tbaa !47
  %186 = getelementptr inbounds %struct.rtl_bb_info, ptr %185, i64 0, i32 4
  %187 = load i32, ptr %186, align 8, !tbaa !84
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %273

189:                                              ; preds = %183
  %190 = tail call fastcc i64 @bb_to_key(ptr noundef nonnull %176) #13, !range !33
  %191 = load ptr, ptr @bbd, align 8, !tbaa !5
  %192 = load ptr, ptr %175, align 8, !tbaa !28
  %193 = getelementptr inbounds %struct.basic_block_def, ptr %192, i64 0, i32 9
  %194 = load i32, ptr %193, align 8, !tbaa !30
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %191, i64 %195, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !32
  %198 = icmp eq ptr %197, null
  br i1 %198, label %223, label %199

199:                                              ; preds = %189
  %200 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %191, i64 %195, i32 4
  %201 = load ptr, ptr %200, align 8, !tbaa !34
  %202 = getelementptr inbounds %struct.fibnode, ptr %201, i64 0, i32 4
  %203 = load i64, ptr %202, align 8, !tbaa !91
  %204 = icmp eq i64 %190, %203
  br i1 %204, label %273, label %205

205:                                              ; preds = %199
  %206 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %207 = icmp eq ptr %206, null
  br i1 %207, label %219, label %208

208:                                              ; preds = %205
  %209 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %206, ptr noundef nonnull @.str.13, i32 noundef %194, i64 noundef %203, i64 noundef %190) #13
  %210 = load ptr, ptr @bbd, align 8, !tbaa !5
  %211 = load ptr, ptr %175, align 8, !tbaa !28
  %212 = getelementptr inbounds %struct.basic_block_def, ptr %211, i64 0, i32 9
  %213 = load i32, ptr %212, align 8, !tbaa !30
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %210, i64 %214, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !32
  %217 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %210, i64 %214, i32 4
  %218 = load ptr, ptr %217, align 8, !tbaa !34
  br label %219

219:                                              ; preds = %208, %205
  %220 = phi ptr [ %218, %208 ], [ %201, %205 ]
  %221 = phi ptr [ %216, %208 ], [ %197, %205 ]
  %222 = tail call i64 @fibheap_replace_key(ptr noundef %221, ptr noundef %220, i64 noundef %190) #12
  br label %273

223:                                              ; preds = %189
  %224 = load ptr, ptr %6, align 8, !tbaa !5
  %225 = getelementptr inbounds %struct.edge_def, ptr %172, i64 0, i32 8
  %226 = load i32, ptr %225, align 4, !tbaa !50
  %227 = load ptr, ptr %172, align 8, !tbaa !48
  %228 = getelementptr inbounds %struct.basic_block_def, ptr %227, i64 0, i32 11
  %229 = load i32, ptr %228, align 8, !tbaa !35
  %230 = mul nsw i32 %229, %226
  %231 = add nsw i32 %230, 5000
  %232 = sdiv i32 %231, 10000
  %233 = getelementptr inbounds %struct.edge_def, ptr %172, i64 0, i32 7
  %234 = load i32, ptr %233, align 8, !tbaa !49
  %235 = and i32 %234, 78
  %236 = icmp ne i32 %235, 64
  %237 = icmp slt i32 %226, %0
  %238 = select i1 %236, i1 true, i1 %237
  %239 = icmp slt i32 %232, %1
  %240 = select i1 %238, i1 true, i1 %239
  br i1 %240, label %245, label %241

241:                                              ; preds = %223
  %242 = getelementptr inbounds %struct.edge_def, ptr %172, i64 0, i32 9
  %243 = load i64, ptr %242, align 8, !tbaa !56
  %244 = icmp slt i64 %243, %2
  br i1 %244, label %245, label %254

245:                                              ; preds = %241, %223
  %246 = tail call fastcc zeroext i8 @push_to_next_round_p(ptr noundef nonnull %192, i32 noundef %5, i32 noundef %1, i64 noundef %2) #13
  %247 = icmp eq i8 %246, 0
  %248 = select i1 %247, ptr %224, ptr %10
  %249 = load ptr, ptr @bbd, align 8, !tbaa !5
  %250 = load ptr, ptr %175, align 8, !tbaa !28
  %251 = getelementptr inbounds %struct.basic_block_def, ptr %250, i64 0, i32 9
  %252 = load i32, ptr %251, align 8, !tbaa !30
  %253 = sext i32 %252 to i64
  br label %254

254:                                              ; preds = %245, %241
  %255 = phi i64 [ %253, %245 ], [ %195, %241 ]
  %256 = phi ptr [ %250, %245 ], [ %192, %241 ]
  %257 = phi ptr [ %249, %245 ], [ %191, %241 ]
  %258 = phi ptr [ %248, %245 ], [ %224, %241 ]
  %259 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %257, i64 %255, i32 3
  store ptr %258, ptr %259, align 8, !tbaa !32
  %260 = tail call ptr @fibheap_insert(ptr noundef %258, i64 noundef %190, ptr noundef nonnull %256) #12
  %261 = load ptr, ptr @bbd, align 8, !tbaa !5
  %262 = load ptr, ptr %175, align 8, !tbaa !28
  %263 = getelementptr inbounds %struct.basic_block_def, ptr %262, i64 0, i32 9
  %264 = load i32, ptr %263, align 8, !tbaa !30
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %261, i64 %265, i32 4
  store ptr %260, ptr %266, align 8, !tbaa !34
  %267 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %268 = icmp eq ptr %267, null
  br i1 %268, label %273, label %269

269:                                              ; preds = %254
  %270 = icmp eq ptr %258, %10
  %271 = select i1 %270, ptr @.str.15, ptr @.str.16
  %272 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %267, ptr noundef nonnull @.str.14, ptr noundef nonnull %271, i32 noundef %264, i64 noundef %190) #13
  br label %273

273:                                              ; preds = %254, %269, %219, %199, %171, %174, %183
  call fastcc void @ei_next(ptr noundef nonnull %9) #13
  %274 = load i32, ptr %9, align 8
  %275 = load ptr, ptr %15, align 8
  %276 = call fastcc zeroext i8 @ei_cond(i32 %274, ptr %275, ptr noundef nonnull %8) #13, !range !27
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %278, label %171, !llvm.loop !93

278:                                              ; preds = %273, %167
  %279 = icmp eq ptr %168, null
  br i1 %279, label %435, label %280

280:                                              ; preds = %278
  %281 = getelementptr inbounds %struct.edge_def, ptr %168, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !28
  %283 = getelementptr inbounds %struct.basic_block_def, ptr %282, i64 0, i32 7
  %284 = load ptr, ptr %283, align 8, !tbaa !47
  %285 = getelementptr inbounds %struct.rtl_bb_info, ptr %284, i64 0, i32 4
  %286 = load i32, ptr %285, align 8, !tbaa !84
  %287 = load i32, ptr %4, align 4, !tbaa !14
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %350

289:                                              ; preds = %280
  %290 = icmp eq ptr %282, %60
  br i1 %290, label %435, label %291

291:                                              ; preds = %289
  %292 = load ptr, ptr %168, align 8, !tbaa !48
  %293 = getelementptr inbounds %struct.basic_block_def, ptr %292, i64 0, i32 11
  %294 = load i32, ptr %293, align 8, !tbaa !35
  %295 = getelementptr inbounds %struct.edge_def, ptr %168, i64 0, i32 8
  %296 = load i32, ptr %295, align 4, !tbaa !50
  %297 = mul nsw i32 %296, %294
  %298 = add nsw i32 %297, 5000
  %299 = sdiv i32 %298, 10000
  %300 = getelementptr inbounds %struct.basic_block_def, ptr %282, i64 0, i32 11
  %301 = load i32, ptr %300, align 8, !tbaa !35
  %302 = shl nsw i32 %301, 2
  %303 = sdiv i32 %302, 5
  %304 = icmp sgt i32 %299, %303
  br i1 %304, label %305, label %336

305:                                              ; preds = %291
  %306 = load ptr, ptr @cfun, align 8, !tbaa !5
  %307 = getelementptr inbounds %struct.function, ptr %306, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !9
  %309 = load ptr, ptr %308, align 8, !tbaa !24
  %310 = getelementptr inbounds %struct.basic_block_def, ptr %309, i64 0, i32 6
  %311 = load ptr, ptr %310, align 8, !tbaa !61
  %312 = icmp eq ptr %282, %311
  br i1 %312, label %435, label %313

313:                                              ; preds = %305
  %314 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %315 = icmp eq ptr %314, null
  br i1 %315, label %324, label %316

316:                                              ; preds = %313
  %317 = getelementptr inbounds %struct.basic_block_def, ptr %282, i64 0, i32 9
  %318 = load i32, ptr %317, align 8, !tbaa !30
  %319 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 9
  %320 = load i32, ptr %319, align 8, !tbaa !30
  %321 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %314, ptr noundef nonnull @.str.17, i32 noundef %318, i32 noundef %320) #13
  %322 = load ptr, ptr %281, align 8, !tbaa !28
  %323 = load i32, ptr %4, align 4, !tbaa !14
  br label %324

324:                                              ; preds = %316, %313
  %325 = phi i32 [ %323, %316 ], [ %286, %313 ]
  %326 = phi ptr [ %322, %316 ], [ %282, %313 ]
  %327 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 2
  store ptr %326, ptr %327, align 8, !tbaa !53
  %328 = add nsw i32 %325, -1
  %329 = load ptr, ptr @bbd, align 8, !tbaa !5
  %330 = getelementptr inbounds %struct.basic_block_def, ptr %326, i64 0, i32 9
  %331 = load i32, ptr %330, align 8, !tbaa !30
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %329, i64 %332, i32 2
  store i32 %328, ptr %333, align 8, !tbaa !18
  %334 = load i32, ptr %4, align 4, !tbaa !14
  %335 = tail call fastcc ptr @rotate_loop(ptr noundef nonnull %168, ptr noundef nonnull %50, i32 noundef %334) #13
  br label %435

336:                                              ; preds = %291
  %337 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %60) #13, !range !27
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %435, label %339

339:                                              ; preds = %336
  %340 = tail call zeroext i8 @optimize_edge_for_speed_p(ptr noundef nonnull %168) #12
  %341 = zext i8 %340 to i32
  %342 = tail call fastcc zeroext i8 @copy_bb_p(ptr noundef nonnull %282, i32 noundef %341) #13, !range !27
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %435, label %344

344:                                              ; preds = %339
  %345 = load ptr, ptr %281, align 8, !tbaa !28
  %346 = load i32, ptr %4, align 4, !tbaa !14
  %347 = tail call fastcc ptr @copy_bb(ptr noundef %345, ptr noundef nonnull %168, ptr noundef %60, i32 noundef %346) #13
  %348 = load i32, ptr %52, align 4, !tbaa !51
  %349 = add nsw i32 %348, 1
  store i32 %349, ptr %52, align 4, !tbaa !51
  br label %435

350:                                              ; preds = %280
  store i32 0, ptr %9, align 8, !tbaa.struct !25
  store ptr %75, ptr %15, align 8, !tbaa.struct !26
  %351 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %75, ptr noundef nonnull %8) #13, !range !27
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %423, label %353

353:                                              ; preds = %350
  %354 = getelementptr inbounds %struct.edge_def, ptr %168, i64 0, i32 8
  br label %355

355:                                              ; preds = %353, %418
  %356 = load ptr, ptr %8, align 8, !tbaa !5
  %357 = icmp eq ptr %356, %168
  br i1 %357, label %418, label %358

358:                                              ; preds = %355
  %359 = getelementptr inbounds %struct.edge_def, ptr %356, i64 0, i32 7
  %360 = load i32, ptr %359, align 8, !tbaa !49
  %361 = and i32 %360, 78
  %362 = icmp eq i32 %361, 64
  br i1 %362, label %363, label %418

363:                                              ; preds = %358
  %364 = getelementptr inbounds %struct.edge_def, ptr %356, i64 0, i32 1
  %365 = load ptr, ptr %364, align 8, !tbaa !28
  %366 = getelementptr inbounds %struct.basic_block_def, ptr %365, i64 0, i32 7
  %367 = load ptr, ptr %366, align 8, !tbaa !47
  %368 = getelementptr inbounds %struct.rtl_bb_info, ptr %367, i64 0, i32 4
  %369 = load i32, ptr %368, align 8, !tbaa !84
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %418

371:                                              ; preds = %363
  %372 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %365) #13, !range !27
  %373 = icmp ne i8 %372, 0
  %374 = and i32 %360, 8192
  %375 = icmp eq i32 %374, 0
  %376 = and i1 %375, %373
  br i1 %376, label %377, label %418

377:                                              ; preds = %371
  %378 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %365) #13, !range !27
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %418, label %380

380:                                              ; preds = %377
  %381 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %365) #13
  %382 = getelementptr inbounds %struct.edge_def, ptr %381, i64 0, i32 7
  %383 = load i32, ptr %382, align 8, !tbaa !49
  %384 = and i32 %383, 64
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %418, label %386

386:                                              ; preds = %380
  %387 = load ptr, ptr %364, align 8, !tbaa !28
  %388 = tail call fastcc ptr @single_succ_edge(ptr noundef %387) #13
  %389 = getelementptr inbounds %struct.edge_def, ptr %388, i64 0, i32 7
  %390 = load i32, ptr %389, align 8, !tbaa !49
  %391 = and i32 %390, 14
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %418

393:                                              ; preds = %386
  %394 = load ptr, ptr %364, align 8, !tbaa !28
  %395 = tail call fastcc ptr @single_succ(ptr noundef %394) #13
  %396 = load ptr, ptr %281, align 8, !tbaa !28
  %397 = icmp eq ptr %395, %396
  br i1 %397, label %398, label %418

398:                                              ; preds = %393
  %399 = load ptr, ptr %364, align 8, !tbaa !28
  %400 = getelementptr inbounds %struct.basic_block_def, ptr %399, i64 0, i32 11
  %401 = load i32, ptr %400, align 8, !tbaa !35
  %402 = shl nsw i32 %401, 1
  %403 = load ptr, ptr %168, align 8, !tbaa !48
  %404 = getelementptr inbounds %struct.basic_block_def, ptr %403, i64 0, i32 11
  %405 = load i32, ptr %404, align 8, !tbaa !35
  %406 = load i32, ptr %354, align 4, !tbaa !50
  %407 = mul nsw i32 %406, %405
  %408 = add nsw i32 %407, 5000
  %409 = sdiv i32 %408, 10000
  %410 = icmp slt i32 %402, %409
  br i1 %410, label %418, label %411

411:                                              ; preds = %398
  %412 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %413 = icmp eq ptr %412, null
  br i1 %413, label %423, label %414

414:                                              ; preds = %411
  %415 = getelementptr inbounds %struct.basic_block_def, ptr %399, i64 0, i32 9
  %416 = load i32, ptr %415, align 8, !tbaa !30
  %417 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %412, ptr noundef nonnull @.str.18, i32 noundef %416) #13
  br label %423

418:                                              ; preds = %355, %358, %363, %371, %377, %380, %386, %393, %398
  call fastcc void @ei_next(ptr noundef nonnull %9) #13
  %419 = load i32, ptr %9, align 8
  %420 = load ptr, ptr %15, align 8
  %421 = call fastcc zeroext i8 @ei_cond(i32 %419, ptr %420, ptr noundef nonnull %8) #13, !range !27
  %422 = icmp eq i8 %421, 0
  br i1 %422, label %423, label %355, !llvm.loop !94

423:                                              ; preds = %418, %350, %414, %411
  %424 = phi ptr [ %356, %414 ], [ %356, %411 ], [ %168, %350 ], [ %168, %418 ]
  %425 = getelementptr inbounds %struct.edge_def, ptr %424, i64 0, i32 1
  %426 = load ptr, ptr %425, align 8, !tbaa !28
  %427 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 2
  store ptr %426, ptr %427, align 8, !tbaa !53
  %428 = load i32, ptr %4, align 4, !tbaa !14
  %429 = add nsw i32 %428, -1
  %430 = load ptr, ptr @bbd, align 8, !tbaa !5
  %431 = getelementptr inbounds %struct.basic_block_def, ptr %426, i64 0, i32 9
  %432 = load i32, ptr %431, align 8, !tbaa !30
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %430, i64 %433, i32 2
  store i32 %429, ptr %434, align 8, !tbaa !18
  br label %59, !llvm.loop !95

435:                                              ; preds = %278, %289, %336, %339, %344, %305, %324
  %436 = phi ptr [ %60, %289 ], [ %60, %336 ], [ %60, %339 ], [ %347, %344 ], [ %60, %305 ], [ %335, %324 ], [ %60, %278 ]
  %437 = getelementptr inbounds %struct.trace, ptr %3, i64 %49, i32 1
  store ptr %436, ptr %437, align 8, !tbaa !41
  %438 = load i32, ptr %4, align 4, !tbaa !14
  %439 = add nsw i32 %438, -1
  %440 = load ptr, ptr @bbd, align 8, !tbaa !5
  %441 = load ptr, ptr %50, align 8, !tbaa !44
  %442 = getelementptr inbounds %struct.basic_block_def, ptr %441, i64 0, i32 9
  %443 = load i32, ptr %442, align 8, !tbaa !30
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %440, i64 %444
  store i32 %439, ptr %445, align 8, !tbaa !16
  %446 = load i32, ptr %4, align 4, !tbaa !14
  %447 = add nsw i32 %446, -1
  %448 = getelementptr inbounds %struct.basic_block_def, ptr %436, i64 0, i32 9
  %449 = load i32, ptr %448, align 8, !tbaa !30
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %440, i64 %450, i32 1
  store i32 %447, ptr %451, align 4, !tbaa !19
  %452 = getelementptr inbounds %struct.basic_block_def, ptr %436, i64 0, i32 1
  %453 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %452) #13
  store i32 0, ptr %9, align 8, !tbaa.struct !25
  store ptr %453, ptr %15, align 8, !tbaa.struct !26
  %454 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %453, ptr noundef nonnull %8) #13, !range !27
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %516, label %456

456:                                              ; preds = %435, %511
  %457 = load ptr, ptr %8, align 8, !tbaa !5
  %458 = getelementptr inbounds %struct.edge_def, ptr %457, i64 0, i32 1
  %459 = load ptr, ptr %458, align 8, !tbaa !28
  %460 = load ptr, ptr @cfun, align 8, !tbaa !5
  %461 = getelementptr inbounds %struct.function, ptr %460, i64 0, i32 1
  %462 = load ptr, ptr %461, align 8, !tbaa !9
  %463 = getelementptr inbounds %struct.control_flow_graph, ptr %462, i64 0, i32 1
  %464 = load ptr, ptr %463, align 8, !tbaa !54
  %465 = icmp eq ptr %459, %464
  br i1 %465, label %511, label %466

466:                                              ; preds = %456
  %467 = getelementptr inbounds %struct.basic_block_def, ptr %459, i64 0, i32 7
  %468 = load ptr, ptr %467, align 8, !tbaa !47
  %469 = getelementptr inbounds %struct.rtl_bb_info, ptr %468, i64 0, i32 4
  %470 = load i32, ptr %469, align 8, !tbaa !84
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %511

472:                                              ; preds = %466
  %473 = load ptr, ptr @bbd, align 8, !tbaa !5
  %474 = getelementptr inbounds %struct.basic_block_def, ptr %459, i64 0, i32 9
  %475 = load i32, ptr %474, align 8, !tbaa !30
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %473, i64 %476, i32 3
  %478 = load ptr, ptr %477, align 8, !tbaa !32
  %479 = icmp eq ptr %478, null
  br i1 %479, label %511, label %480

480:                                              ; preds = %472
  %481 = tail call fastcc i64 @bb_to_key(ptr noundef nonnull %459) #13, !range !33
  %482 = load ptr, ptr @bbd, align 8, !tbaa !5
  %483 = load ptr, ptr %458, align 8, !tbaa !28
  %484 = getelementptr inbounds %struct.basic_block_def, ptr %483, i64 0, i32 9
  %485 = load i32, ptr %484, align 8, !tbaa !30
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %482, i64 %486, i32 4
  %488 = load ptr, ptr %487, align 8, !tbaa !34
  %489 = getelementptr inbounds %struct.fibnode, ptr %488, i64 0, i32 4
  %490 = load i64, ptr %489, align 8, !tbaa !91
  %491 = icmp eq i64 %481, %490
  br i1 %491, label %511, label %492

492:                                              ; preds = %480
  %493 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %494 = icmp eq ptr %493, null
  br i1 %494, label %504, label %495

495:                                              ; preds = %492
  %496 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %493, ptr noundef nonnull @.str.13, i32 noundef %485, i64 noundef %490, i64 noundef %481) #13
  %497 = load ptr, ptr @bbd, align 8, !tbaa !5
  %498 = load ptr, ptr %458, align 8, !tbaa !28
  %499 = getelementptr inbounds %struct.basic_block_def, ptr %498, i64 0, i32 9
  %500 = load i32, ptr %499, align 8, !tbaa !30
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %497, i64 %501, i32 4
  %503 = load ptr, ptr %502, align 8, !tbaa !34
  br label %504

504:                                              ; preds = %495, %492
  %505 = phi i64 [ %501, %495 ], [ %486, %492 ]
  %506 = phi ptr [ %503, %495 ], [ %488, %492 ]
  %507 = phi ptr [ %497, %495 ], [ %482, %492 ]
  %508 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %507, i64 %505, i32 3
  %509 = load ptr, ptr %508, align 8, !tbaa !32
  %510 = tail call i64 @fibheap_replace_key(ptr noundef %509, ptr noundef %506, i64 noundef %481) #12
  br label %511

511:                                              ; preds = %472, %504, %480, %456, %466
  call fastcc void @ei_next(ptr noundef nonnull %9) #13
  %512 = load i32, ptr %9, align 8
  %513 = load ptr, ptr %15, align 8
  %514 = call fastcc zeroext i8 @ei_cond(i32 %512, ptr %513, ptr noundef nonnull %8) #13, !range !27
  %515 = icmp eq i8 %514, 0
  br i1 %515, label %516, label %456, !llvm.loop !96

516:                                              ; preds = %511, %435, %31, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  %517 = load ptr, ptr %6, align 8, !tbaa !5
  %518 = tail call i32 @fibheap_empty(ptr noundef %517) #12
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %16, label %520

520:                                              ; preds = %516, %7
  %521 = load ptr, ptr %6, align 8, !tbaa !5
  tail call void @fibheap_delete(ptr noundef %521) #12
  store ptr %10, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @fibheap_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #13
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #13
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #13
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #13
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !97
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 687, ptr noundef nonnull @.str.1) #12
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @probably_never_executed_bb_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @fibheap_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fibheap_extract_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @push_to_next_round_p(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %6 = load i32, ptr %5, align 8, !tbaa !35
  %7 = icmp slt i32 %6, %2
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !36
  %11 = icmp slt i64 %10, %3
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call zeroext i8 @probably_never_executed_bb_p(ptr noundef nonnull %0) #12
  %14 = icmp ne i8 %13, 0
  br label %15

15:                                               ; preds = %12, %8, %4
  %16 = phi i1 [ true, %8 ], [ true, %4 ], [ %14, %12 ]
  %17 = icmp slt i32 %1, 3
  %18 = select i1 %17, i1 %16, i1 false
  %19 = zext i1 %18 to i8
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_bb_visited(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 4
  store i32 %1, ptr %5, align 8, !tbaa !84
  %6 = load ptr, ptr @bbd, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !30
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %6, i64 %9, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !32
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %6, i64 %9, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = tail call ptr @fibheap_delete_node(ptr noundef nonnull %11, ptr noundef %15) #12
  %17 = load ptr, ptr @bbd, align 8, !tbaa !5
  %18 = load i32, ptr %7, align 8, !tbaa !30
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %17, i64 %19, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  br label %21

21:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @block_ends_with_call_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @better_edge_p(ptr noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly %6) unnamed_addr #4 {
  %8 = sdiv i32 %4, 10
  %9 = sdiv i32 %5, 10
  %10 = add nsw i32 %8, %4
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %48, label %12

12:                                               ; preds = %7
  %13 = sub nsw i32 %4, %8
  %14 = icmp sgt i32 %13, %2
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = sub nsw i32 %5, %9
  %17 = icmp sgt i32 %16, %3
  br i1 %17, label %48, label %18

18:                                               ; preds = %15
  %19 = add nsw i32 %9, %5
  %20 = icmp slt i32 %19, %3
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !28
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  %26 = icmp ne ptr %25, %0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i8
  br label %29

29:                                               ; preds = %21, %18, %12
  %30 = phi i1 [ true, %12 ], [ true, %18 ], [ %26, %21 ]
  %31 = phi i8 [ 0, %12 ], [ 0, %18 ], [ %28, %21 ]
  %32 = load i32, ptr @flag_reorder_blocks_and_partition, align 4
  %33 = icmp ne i32 %32, 0
  %34 = select i1 %30, i1 %33, i1 false
  %35 = icmp ne ptr %6, null
  %36 = and i1 %35, %34
  br i1 %36, label %37, label %48

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !49
  %40 = and i32 %39, 8192
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !49
  %45 = and i32 %44, 8192
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i8
  br label %48

48:                                               ; preds = %15, %7, %42, %37, %29
  %49 = phi i8 [ 0, %37 ], [ %31, %29 ], [ %47, %42 ], [ 1, %7 ], [ 1, %15 ]
  ret i8 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @copy_bb_p(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr @uncond_jump_length, align 4, !tbaa !14
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %5 = load i32, ptr %4, align 8, !tbaa !35
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %67, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !90
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #13
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %67, label %11

11:                                               ; preds = %7
  %12 = tail call zeroext i8 @can_duplicate_block_p(ptr noundef nonnull %0) #12
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %67, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %16) #13
  %18 = icmp ugt i32 %17, 8
  br i1 %18, label %67, label %19

19:                                               ; preds = %14
  %20 = icmp eq i32 %1, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %19
  %22 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef nonnull %0) #12
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @compiler_params, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.param_info, ptr %25, i64 55, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !75
  %28 = mul nsw i32 %27, %3
  br label %29

29:                                               ; preds = %24, %21, %19
  %30 = phi i32 [ %28, %24 ], [ %3, %21 ], [ %3, %19 ]
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  %34 = icmp eq ptr %33, null
  br i1 %34, label %57, label %35

35:                                               ; preds = %29, %52
  %36 = phi ptr [ %55, %52 ], [ %33, %29 ]
  %37 = phi i32 [ %53, %52 ], [ 0, %29 ]
  %38 = load ptr, ptr %31, align 8, !tbaa !47
  %39 = getelementptr inbounds %struct.rtl_bb_info, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !77
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !47
  %43 = icmp eq ptr %36, %42
  br i1 %43, label %57, label %44

44:                                               ; preds = %35
  %45 = load i32, ptr %36, align 8
  %46 = and i32 %45, 65535
  %47 = add nsw i32 %46, -7
  %48 = icmp ult i32 %47, 4
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = tail call i32 @get_attr_min_length(ptr noundef nonnull %36) #12
  %51 = add nsw i32 %50, %37
  br label %52

52:                                               ; preds = %44, %49
  %53 = phi i32 [ %51, %49 ], [ %37, %44 ]
  %54 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 2
  %55 = load ptr, ptr %54, align 8, !tbaa !47
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %35, !llvm.loop !101

57:                                               ; preds = %35, %52, %29
  %58 = phi i32 [ 0, %29 ], [ %53, %52 ], [ %37, %35 ]
  %59 = icmp sgt i32 %58, %30
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !30
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %61, ptr noundef nonnull @.str.19, i32 noundef %65, i32 noundef %58) #13
  br label %67

67:                                               ; preds = %60, %63, %57, %14, %11, %7, %2
  %68 = phi i8 [ 0, %2 ], [ 0, %7 ], [ 0, %11 ], [ 0, %14 ], [ 1, %57 ], [ 0, %63 ], [ 0, %60 ]
  ret i8 %68
}

; Function Attrs: optsize
declare i64 @fibheap_replace_key(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rotate_loop(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !28
  %8 = getelementptr inbounds i8, ptr %5, i64 8
  br label %9

9:                                                ; preds = %120, %3
  %10 = phi i8 [ 0, %3 ], [ %121, %120 ]
  %11 = phi i64 [ -1, %3 ], [ %122, %120 ]
  %12 = phi i32 [ -1, %3 ], [ %123, %120 ]
  %13 = phi ptr [ null, %3 ], [ %124, %120 ]
  %14 = phi ptr [ null, %3 ], [ %125, %120 ]
  %15 = phi ptr [ %7, %3 ], [ %127, %120 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 1
  %17 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %16) #13
  store i32 0, ptr %5, align 8, !tbaa.struct !25
  store ptr %17, ptr %8, align 8, !tbaa.struct !26
  %18 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %4) #13, !range !27
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %120, label %20

20:                                               ; preds = %9, %110
  %21 = phi ptr [ %115, %110 ], [ %14, %9 ]
  %22 = phi ptr [ %114, %110 ], [ %13, %9 ]
  %23 = phi i32 [ %113, %110 ], [ %12, %9 ]
  %24 = phi i64 [ %112, %110 ], [ %11, %9 ]
  %25 = phi i8 [ %111, %110 ], [ %10, %9 ]
  %26 = load ptr, ptr %4, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !28
  %29 = load ptr, ptr @cfun, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  %34 = icmp eq ptr %28, %33
  br i1 %34, label %110, label %35

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !47
  %38 = getelementptr inbounds %struct.rtl_bb_info, ptr %37, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !84
  %40 = icmp eq i32 %39, %2
  br i1 %40, label %110, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !49
  %44 = and i32 %43, 78
  %45 = icmp eq i32 %44, 64
  br i1 %45, label %46, label %110

46:                                               ; preds = %41
  %47 = icmp eq i8 %25, 0
  %48 = icmp eq i32 %39, 0
  br i1 %47, label %73, label %49

49:                                               ; preds = %46
  br i1 %48, label %58, label %50

50:                                               ; preds = %49
  %51 = load ptr, ptr @bbd, align 8, !tbaa !5
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !30
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %51, i64 %54
  %56 = load i32, ptr %55, align 8, !tbaa !16
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %110

58:                                               ; preds = %50, %49
  %59 = load ptr, ptr %26, align 8, !tbaa !48
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 11
  %61 = load i32, ptr %60, align 8, !tbaa !35
  %62 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 8
  %63 = load i32, ptr %62, align 4, !tbaa !50
  %64 = mul nsw i32 %63, %61
  %65 = add nsw i32 %64, 5000
  %66 = sdiv i32 %65, 10000
  %67 = icmp sgt i32 %66, %23
  %68 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 9
  %69 = load i64, ptr %68, align 8, !tbaa !56
  br i1 %67, label %110, label %70

70:                                               ; preds = %58
  %71 = icmp sgt i64 %69, %24
  br i1 %71, label %72, label %110

72:                                               ; preds = %70
  br label %110

73:                                               ; preds = %46
  br i1 %48, label %82, label %74

74:                                               ; preds = %73
  %75 = load ptr, ptr @bbd, align 8, !tbaa !5
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !30
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %75, i64 %78
  %80 = load i32, ptr %79, align 8, !tbaa !16
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %82, label %93

82:                                               ; preds = %74, %73
  %83 = load ptr, ptr %26, align 8, !tbaa !48
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 11
  %85 = load i32, ptr %84, align 8, !tbaa !35
  %86 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 8
  %87 = load i32, ptr %86, align 4, !tbaa !50
  %88 = mul nsw i32 %87, %85
  %89 = add nsw i32 %88, 5000
  %90 = sdiv i32 %89, 10000
  %91 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 9
  %92 = load i64, ptr %91, align 8, !tbaa !56
  br label %110

93:                                               ; preds = %74
  %94 = load ptr, ptr %26, align 8, !tbaa !48
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 11
  %96 = load i32, ptr %95, align 8, !tbaa !35
  %97 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 8
  %98 = load i32, ptr %97, align 4, !tbaa !50
  %99 = mul nsw i32 %98, %96
  %100 = add nsw i32 %99, 5000
  %101 = sdiv i32 %100, 10000
  %102 = icmp eq ptr %22, null
  %103 = icmp sgt i32 %101, %23
  %104 = select i1 %102, i1 true, i1 %103
  %105 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 9
  %106 = load i64, ptr %105, align 8, !tbaa !56
  br i1 %104, label %110, label %107

107:                                              ; preds = %93
  %108 = icmp sgt i64 %106, %24
  br i1 %108, label %109, label %110

109:                                              ; preds = %107
  br label %110

110:                                              ; preds = %93, %58, %107, %109, %70, %72, %20, %35, %41, %82, %50
  %111 = phi i8 [ 1, %50 ], [ 1, %82 ], [ %25, %41 ], [ %25, %35 ], [ %25, %20 ], [ 1, %70 ], [ 0, %107 ], [ 1, %72 ], [ 0, %109 ], [ 1, %58 ], [ 0, %93 ]
  %112 = phi i64 [ %24, %50 ], [ %92, %82 ], [ %24, %41 ], [ %24, %35 ], [ %24, %20 ], [ %24, %70 ], [ %24, %107 ], [ %69, %72 ], [ %106, %109 ], [ %69, %58 ], [ %106, %93 ]
  %113 = phi i32 [ %23, %50 ], [ %90, %82 ], [ %23, %41 ], [ %23, %35 ], [ %23, %20 ], [ %23, %70 ], [ %23, %107 ], [ %66, %72 ], [ %101, %109 ], [ %66, %58 ], [ %101, %93 ]
  %114 = phi ptr [ %22, %50 ], [ %26, %82 ], [ %22, %41 ], [ %22, %35 ], [ %22, %20 ], [ %22, %70 ], [ %22, %107 ], [ %26, %72 ], [ %26, %109 ], [ %26, %58 ], [ %26, %93 ]
  %115 = phi ptr [ %21, %50 ], [ %15, %82 ], [ %21, %41 ], [ %21, %35 ], [ %21, %20 ], [ %21, %70 ], [ %21, %107 ], [ %15, %72 ], [ %15, %109 ], [ %15, %58 ], [ %15, %93 ]
  call fastcc void @ei_next(ptr noundef nonnull %5) #13
  %116 = load i32, ptr %5, align 8
  %117 = load ptr, ptr %8, align 8
  %118 = call fastcc zeroext i8 @ei_cond(i32 %116, ptr %117, ptr noundef nonnull %4) #13, !range !27
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %20, !llvm.loop !102

120:                                              ; preds = %110, %9
  %121 = phi i8 [ %10, %9 ], [ %111, %110 ]
  %122 = phi i64 [ %11, %9 ], [ %112, %110 ]
  %123 = phi i32 [ %12, %9 ], [ %113, %110 ]
  %124 = phi ptr [ %13, %9 ], [ %114, %110 ]
  %125 = phi ptr [ %14, %9 ], [ %115, %110 ]
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %128 = load ptr, ptr %6, align 8, !tbaa !28
  %129 = icmp eq ptr %127, %128
  br i1 %129, label %130, label %9, !llvm.loop !103

130:                                              ; preds = %120
  %131 = icmp eq ptr %125, null
  br i1 %131, label %169, label %132

132:                                              ; preds = %130
  %133 = load ptr, ptr %1, align 8, !tbaa !44
  %134 = icmp eq ptr %127, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !53
  store ptr %137, ptr %1, align 8, !tbaa !44
  br label %171

138:                                              ; preds = %132, %138
  %139 = phi ptr [ %141, %138 ], [ %133, %132 ]
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %139, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !53
  %142 = icmp eq ptr %141, %127
  br i1 %142, label %143, label %138, !llvm.loop !104

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %139, i64 0, i32 2
  %145 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !53
  store ptr %146, ptr %144, align 8, !tbaa !53
  %147 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %139) #13, !range !27
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %171, label %149

149:                                              ; preds = %143
  %150 = tail call fastcc ptr @single_succ(ptr noundef nonnull %139) #13
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %150, i64 0, i32 7
  %152 = load ptr, ptr %151, align 8, !tbaa !47
  %153 = getelementptr inbounds %struct.rtl_bb_info, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !77
  %155 = tail call i32 @any_condjump_p(ptr noundef %154) #12
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %171, label %157

157:                                              ; preds = %149
  %158 = tail call fastcc zeroext i8 @copy_bb_p(ptr noundef nonnull %150, i32 noundef 0) #13, !range !27
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %171, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr %151, align 8, !tbaa !47
  %162 = getelementptr inbounds %struct.rtl_bb_info, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !77
  %164 = tail call ptr @find_reg_note(ptr noundef %163, i32 noundef 29, ptr noundef null) #12
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %139) #13
  %168 = tail call fastcc ptr @copy_bb(ptr noundef nonnull %150, ptr noundef %167, ptr noundef nonnull %139, i32 noundef %2) #13
  br label %171

169:                                              ; preds = %130
  %170 = load ptr, ptr %0, align 8, !tbaa !48
  br label %171

171:                                              ; preds = %143, %166, %160, %157, %149, %135, %169
  %172 = phi ptr [ %125, %135 ], [ %170, %169 ], [ %125, %149 ], [ %125, %157 ], [ %125, %160 ], [ %125, %166 ], [ %125, %143 ]
  %173 = getelementptr inbounds %struct.basic_block_def, ptr %172, i64 0, i32 2
  store ptr null, ptr %173, align 8, !tbaa !53
  ret ptr %172
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #13
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @optimize_edge_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @copy_bb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @duplicate_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !45
  %8 = and i32 %7, -97
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !45
  %11 = and i32 %10, 96
  %12 = or disjoint i32 %11, %8
  store i32 %12, ptr %6, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !28
  %15 = icmp eq ptr %14, %5
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 762, ptr noundef nonnull @.str.1) #12
  %17 = load ptr, ptr %13, align 8, !tbaa !28
  br label %18

18:                                               ; preds = %4, %16
  %19 = phi ptr [ %5, %4 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.rtl_bb_info, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !84
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 763, ptr noundef nonnull @.str.1) #12
  br label %26

26:                                               ; preds = %18, %25
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !30
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !30
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %27, ptr noundef nonnull @.str.20, i32 noundef %31, i32 noundef %33) #13
  br label %35

35:                                               ; preds = %29, %26
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !47
  %38 = getelementptr inbounds %struct.rtl_bb_info, ptr %37, i64 0, i32 4
  store i32 %3, ptr %38, align 8, !tbaa !84
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !53
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 2
  store ptr %40, ptr %41, align 8, !tbaa !53
  store ptr %5, ptr %39, align 8, !tbaa !53
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %43 = load i32, ptr %42, align 8, !tbaa !30
  %44 = load i32, ptr @array_size, align 4, !tbaa !14
  %45 = icmp sge i32 %43, %44
  %46 = load ptr, ptr @cfun, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !9
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !15
  %51 = icmp sgt i32 %50, %44
  %52 = select i1 %45, i1 true, i1 %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %35
  %54 = add nsw i32 %43, 1
  %55 = tail call i32 @llvm.smax.i32(i32 %50, i32 %54)
  %56 = sdiv i32 %55, 4
  %57 = mul i32 %56, 5
  %58 = add i32 %57, 5
  %59 = load ptr, ptr @bbd, align 8, !tbaa !5
  %60 = sext i32 %58 to i64
  %61 = shl nsw i64 %60, 5
  %62 = tail call ptr @xrealloc(ptr noundef %59, i64 noundef %61) #12
  store ptr %62, ptr @bbd, align 8, !tbaa !5
  %63 = load i32, ptr @array_size, align 4, !tbaa !14
  %64 = icmp slt i32 %63, %58
  br i1 %64, label %65, label %75

65:                                               ; preds = %53
  %66 = sext i32 %63 to i64
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi i64 [ %66, %65 ], [ %73, %67 ]
  %69 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %62, i64 %68
  store i32 -1, ptr %69, align 8, !tbaa !16
  %70 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %62, i64 %68, i32 2
  store i32 -1, ptr %70, align 8, !tbaa !18
  %71 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %62, i64 %68, i32 1
  store i32 -1, ptr %71, align 4, !tbaa !19
  %72 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %62, i64 %68, i32 3
  %73 = add nsw i64 %68, 1
  %74 = icmp eq i64 %73, %60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %72, i8 0, i64 16, i1 false)
  br i1 %74, label %75, label %67, !llvm.loop !105

75:                                               ; preds = %67, %53
  store i32 %58, ptr @array_size, align 4, !tbaa !14
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %76, ptr noundef nonnull @.str.21, i32 noundef %58) #13
  br label %80

80:                                               ; preds = %35, %75, %78
  %81 = load ptr, ptr @bbd, align 8, !tbaa !5
  %82 = load i32, ptr %42, align 8, !tbaa !30
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %81, i64 %83, i32 2
  store i32 %3, ptr %84, align 8, !tbaa !18
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !90
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #13
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #13, !range !27
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #12
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #13
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !28
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @fibheap_delete_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @can_duplicate_block_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @duplicate_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cfg_layout_initialize(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @computed_jump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cfg_layout_finalize() local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_section_boundary_note() unnamed_addr #0 {
  %1 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !14
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %29, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  br label %10

10:                                               ; preds = %16, %3
  %11 = phi ptr [ %7, %3 ], [ %14, %16 ]
  %12 = phi i32 [ 0, %3 ], [ %21, %16 ]
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = icmp eq ptr %14, %9
  br i1 %15, label %29, label %16

16:                                               ; preds = %10
  %17 = icmp eq i32 %12, 0
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !45
  %20 = and i32 %19, 96
  %21 = select i1 %17, i32 %20, i32 %12
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %10, label %23, !llvm.loop !106

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = load ptr, ptr %25, align 8, !tbaa !107
  %27 = tail call ptr @emit_note_before(i32 noundef 11, ptr noundef %26) #12
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %28, align 8, !tbaa !47
  br label %29

29:                                               ; preds = %10, %23, %0
  ret void
}

; Function Attrs: optsize
declare ptr @emit_note_before(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @partition_hot_cold_basic_blocks() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = load ptr, ptr @cfun, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !15
  %9 = shl nsw i32 %8, 1
  store i32 %9, ptr %3, align 4, !tbaa !14
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !12
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %21, label %13

13:                                               ; preds = %0
  %14 = sext i32 %9 to i64
  %15 = tail call ptr @xcalloc(i64 noundef %14, i64 noundef 8) #12
  store ptr %15, ptr %1, align 8, !tbaa !5
  call fastcc void @find_rarely_executed_basic_blocks_and_crossing_edges(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  %16 = load i32, ptr %2, align 4, !tbaa !14
  %17 = icmp sgt i32 %16, 0
  %18 = load ptr, ptr %1, align 8, !tbaa !5
  br i1 %17, label %19, label %20

19:                                               ; preds = %13
  tail call fastcc void @fix_edges_for_rarely_executed_code(ptr noundef %18, i32 noundef %16) #13
  br label %20

20:                                               ; preds = %19, %13
  tail call void @free(ptr noundef %18) #13
  br label %21

21:                                               ; preds = %0, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_rarely_executed_basic_blocks_and_crossing_edges(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %6 = load ptr, ptr @cfun, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %106, label %15

15:                                               ; preds = %3, %15
  %16 = phi ptr [ %25, %15 ], [ %11, %3 ]
  %17 = tail call zeroext i8 @probably_never_executed_bb_p(ptr noundef %16) #12
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !45
  %21 = and i32 %20, -97
  %22 = select i1 %18, i32 32, i32 64
  %23 = or disjoint i32 %21, %22
  store i32 %23, ptr %19, align 8, !tbaa !45
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !61
  %26 = load ptr, ptr @cfun, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = icmp eq ptr %25, %30
  br i1 %31, label %32, label %15, !llvm.loop !108

32:                                               ; preds = %15
  %33 = load ptr, ptr %28, align 8, !tbaa !24
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !61
  %36 = icmp eq ptr %35, %25
  br i1 %36, label %106, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, ptr %5, i64 8
  br label %49

39:                                               ; preds = %100, %49
  %40 = phi i32 [ %51, %49 ], [ %101, %100 ]
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !61
  %43 = load ptr, ptr @cfun, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !9
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !54
  %48 = icmp eq ptr %42, %47
  br i1 %48, label %106, label %49, !llvm.loop !109

49:                                               ; preds = %37, %39
  %50 = phi ptr [ %35, %37 ], [ %42, %39 ]
  %51 = phi i32 [ 0, %37 ], [ %40, %39 ]
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 1
  %53 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %52) #13
  store i32 0, ptr %5, align 8, !tbaa.struct !25
  store ptr %53, ptr %38, align 8, !tbaa.struct !26
  %54 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %53, ptr noundef nonnull %4) #13, !range !27
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %39, label %56

56:                                               ; preds = %49, %100
  %57 = phi i32 [ %101, %100 ], [ %51, %49 ]
  %58 = load ptr, ptr %4, align 8, !tbaa !5
  %59 = load ptr, ptr %58, align 8, !tbaa !48
  %60 = load ptr, ptr @cfun, align 8, !tbaa !5
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !9
  %63 = load ptr, ptr %62, align 8, !tbaa !24
  %64 = icmp eq ptr %59, %63
  br i1 %64, label %96, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !28
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !54
  %70 = icmp eq ptr %67, %69
  br i1 %70, label %96, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 13
  %73 = load i32, ptr %72, align 8, !tbaa !45
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 13
  %75 = load i32, ptr %74, align 8, !tbaa !45
  %76 = xor i32 %75, %73
  %77 = and i32 %76, 96
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 7
  %81 = load i32, ptr %80, align 8, !tbaa !49
  %82 = or i32 %81, 8192
  store i32 %82, ptr %80, align 8, !tbaa !49
  %83 = load i32, ptr %2, align 4, !tbaa !14
  %84 = icmp eq i32 %57, %83
  %85 = load ptr, ptr %0, align 8, !tbaa !5
  br i1 %84, label %86, label %91

86:                                               ; preds = %79
  %87 = shl nsw i32 %57, 1
  store i32 %87, ptr %2, align 4, !tbaa !14
  %88 = sext i32 %87 to i64
  %89 = shl nsw i64 %88, 3
  %90 = tail call ptr @xrealloc(ptr noundef %85, i64 noundef %89) #12
  store ptr %90, ptr %0, align 8, !tbaa !5
  br label %91

91:                                               ; preds = %86, %79
  %92 = phi ptr [ %90, %86 ], [ %85, %79 ]
  %93 = add nsw i32 %57, 1
  %94 = sext i32 %57 to i64
  %95 = getelementptr inbounds ptr, ptr %92, i64 %94
  store ptr %58, ptr %95, align 8, !tbaa !5
  br label %100

96:                                               ; preds = %71, %65, %56
  %97 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 7
  %98 = load i32, ptr %97, align 8, !tbaa !49
  %99 = and i32 %98, -8193
  store i32 %99, ptr %97, align 8, !tbaa !49
  br label %100

100:                                              ; preds = %91, %96
  %101 = phi i32 [ %93, %91 ], [ %57, %96 ]
  call fastcc void @ei_next(ptr noundef nonnull %5) #13
  %102 = load i32, ptr %5, align 8
  %103 = load ptr, ptr %38, align 8
  %104 = call fastcc zeroext i8 @ei_cond(i32 %102, ptr %103, ptr noundef nonnull %4) #13, !range !27
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %39, label %56, !llvm.loop !110

106:                                              ; preds = %39, %3, %32
  %107 = phi i32 [ 0, %32 ], [ 0, %3 ], [ %40, %39 ]
  store i32 %107, ptr %1, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fix_edges_for_rarely_executed_code(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  tail call fastcc void @add_labels_and_missing_jumps(ptr noundef %0, i32 noundef %1) #13
  tail call fastcc void @fix_up_fall_thru_edges() #13
  tail call fastcc void @add_reg_crossing_jump_notes() #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_labels_and_missing_jumps(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %69

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %66
  %7 = phi i64 [ 0, %4 ], [ %67, %66 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %66, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %9, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !28
  %15 = icmp eq ptr %14, null
  br i1 %15, label %66, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @cfun, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = icmp eq ptr %14, %21
  br i1 %22, label %66, label %23

23:                                               ; preds = %16
  %24 = tail call ptr @block_label(ptr noundef nonnull %14) #12
  %25 = icmp eq ptr %12, null
  br i1 %25, label %66, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr @cfun, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = load ptr, ptr %29, align 8, !tbaa !24
  %31 = icmp eq ptr %12, %30
  br i1 %31, label %66, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = getelementptr inbounds %struct.rtl_bb_info, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !77
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 9
  br i1 %39, label %66, label %40

40:                                               ; preds = %32
  %41 = tail call zeroext i8 @block_ends_with_call_p(ptr noundef nonnull %12) #12
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %40
  %44 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %12) #13, !range !27
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1299, ptr noundef nonnull @.str.1) #12
  br label %47

47:                                               ; preds = %43, %46
  %48 = tail call ptr @block_label(ptr noundef nonnull %14) #12
  %49 = tail call ptr @gen_jump(ptr noundef %48) #12
  %50 = load ptr, ptr %33, align 8, !tbaa !47
  %51 = getelementptr inbounds %struct.rtl_bb_info, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !77
  %53 = tail call ptr @emit_jump_insn_after(ptr noundef %49, ptr noundef %52) #12
  %54 = tail call ptr @emit_barrier_after(ptr noundef %53) #12
  %55 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %48, ptr %55, align 8, !tbaa !47
  %56 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !47
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !47
  %59 = tail call ptr @unlink_insn_chain(ptr noundef %54, ptr noundef %54) #12
  %60 = load ptr, ptr %33, align 8, !tbaa !47
  %61 = getelementptr inbounds %struct.rtl_bb_info, ptr %60, i64 0, i32 3
  store ptr %59, ptr %61, align 8, !tbaa !111
  %62 = load ptr, ptr %8, align 8, !tbaa !5
  %63 = getelementptr inbounds %struct.edge_def, ptr %62, i64 0, i32 7
  %64 = load i32, ptr %63, align 8, !tbaa !49
  %65 = and i32 %64, -2
  store i32 %65, ptr %63, align 8, !tbaa !49
  br label %66

66:                                               ; preds = %6, %23, %26, %47, %40, %32, %16, %11
  %67 = add nuw nsw i64 %7, 1
  %68 = icmp eq i64 %67, %5
  br i1 %68, label %69, label %6, !llvm.loop !112

69:                                               ; preds = %66, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fix_up_fall_thru_edges() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %186, label %12

12:                                               ; preds = %0
  %13 = getelementptr inbounds i8, ptr %2, i64 8
  br label %14

14:                                               ; preds = %12, %176
  %15 = phi ptr [ %3, %12 ], [ %180, %176 ]
  %16 = phi ptr [ %8, %12 ], [ %179, %176 ]
  %17 = phi ptr [ null, %12 ], [ %177, %176 ]
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !100
  %20 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %19) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %176, label %22

22:                                               ; preds = %14
  %23 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %19, i32 noundef 0) #13
  %24 = icmp eq i32 %20, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %19, i32 noundef 1) #13
  %27 = icmp eq ptr %23, null
  br i1 %27, label %40, label %30

28:                                               ; preds = %22
  %29 = icmp eq ptr %23, null
  br i1 %29, label %176, label %35

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !49
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %84

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !49
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %56, label %84

40:                                               ; preds = %25
  %41 = icmp eq ptr %26, null
  br i1 %41, label %176, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !49
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %176, label %80

47:                                               ; preds = %30
  %48 = icmp eq ptr %26, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !49
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, ptr %17, ptr %23
  %55 = select i1 %53, ptr null, ptr %26
  br i1 %53, label %56, label %76

56:                                               ; preds = %35, %47, %49
  %57 = tail call zeroext i8 @block_ends_with_call_p(ptr noundef nonnull %16) #12
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %176, label %59

59:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %60 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %18) #13
  store i32 0, ptr %2, align 8, !tbaa.struct !25
  store ptr %60, ptr %13, align 8, !tbaa.struct !26
  %61 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %60, ptr noundef nonnull %1) #13, !range !27
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %59, %69
  %64 = load ptr, ptr %1, align 8, !tbaa !5
  %65 = getelementptr inbounds %struct.edge_def, ptr %64, i64 0, i32 7
  %66 = load i32, ptr %65, align 8, !tbaa !49
  %67 = and i32 %66, 64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  call fastcc void @ei_next(ptr noundef nonnull %2) #13
  %70 = load i32, ptr %2, align 8
  %71 = load ptr, ptr %13, align 8
  %72 = call fastcc zeroext i8 @ei_cond(i32 %70, ptr %71, ptr noundef nonnull %1) #13, !range !27
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %63, !llvm.loop !113

74:                                               ; preds = %69, %63, %59
  %75 = phi ptr [ null, %59 ], [ %64, %63 ], [ null, %69 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #11
  br label %76

76:                                               ; preds = %49, %74
  %77 = phi ptr [ %17, %74 ], [ %54, %49 ]
  %78 = phi ptr [ %75, %74 ], [ %55, %49 ]
  %79 = icmp eq ptr %78, null
  br i1 %79, label %176, label %80

80:                                               ; preds = %42, %76
  %81 = phi ptr [ %78, %76 ], [ %26, %42 ]
  %82 = phi ptr [ %77, %76 ], [ null, %42 ]
  %83 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %84

84:                                               ; preds = %35, %80, %30
  %85 = phi ptr [ %83, %80 ], [ %15, %30 ], [ %15, %35 ]
  %86 = phi ptr [ %81, %80 ], [ %23, %30 ], [ %23, %35 ]
  %87 = phi ptr [ %82, %80 ], [ %26, %30 ], [ null, %35 ]
  %88 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !28
  %90 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !9
  %92 = getelementptr inbounds %struct.control_flow_graph, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !54
  %94 = icmp eq ptr %89, %93
  br i1 %94, label %176, label %95

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 7
  %97 = load i32, ptr %96, align 8, !tbaa !49
  %98 = and i32 %97, 8192
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %176, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 7
  %102 = load ptr, ptr %101, align 8, !tbaa !47
  %103 = getelementptr inbounds %struct.rtl_bb_info, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !77
  %105 = icmp eq ptr %87, null
  br i1 %105, label %138, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 7
  %108 = load i32, ptr %107, align 8, !tbaa !49
  %109 = and i32 %108, 8192
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %138

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !53
  %114 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !28
  %116 = icmp eq ptr %113, %115
  br i1 %116, label %117, label %138

117:                                              ; preds = %111
  %118 = tail call ptr @block_label(ptr noundef %89) #12
  %119 = icmp eq ptr %104, null
  br i1 %119, label %138, label %120

120:                                              ; preds = %117
  %121 = load i32, ptr %104, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 9
  %124 = icmp ne ptr %118, null
  %125 = select i1 %123, i1 %124, i1 false
  br i1 %125, label %126, label %138

126:                                              ; preds = %120
  %127 = tail call i32 @invert_jump(ptr noundef nonnull %104, ptr noundef nonnull %118, i32 noundef 0) #12
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %126
  %130 = load i32, ptr %96, align 8, !tbaa !49
  %131 = and i32 %130, -2
  store i32 %131, ptr %96, align 8, !tbaa !49
  %132 = load i32, ptr %107, align 8, !tbaa !49
  %133 = or i32 %132, 1
  store i32 %133, ptr %107, align 8, !tbaa !49
  tail call void @update_br_prob_note(ptr noundef nonnull %16) #12
  %134 = load i32, ptr %96, align 8, !tbaa !49
  %135 = or i32 %134, 8192
  store i32 %135, ptr %96, align 8, !tbaa !49
  %136 = load i32, ptr %107, align 8, !tbaa !49
  %137 = and i32 %136, -8193
  store i32 %137, ptr %107, align 8, !tbaa !49
  br label %176

138:                                              ; preds = %117, %120, %106, %100, %126, %111
  %139 = load i32, ptr %96, align 8, !tbaa !49
  %140 = and i32 %139, -8193
  store i32 %140, ptr %96, align 8, !tbaa !49
  %141 = tail call ptr @force_nonfallthru(ptr noundef nonnull %86) #12
  %142 = icmp eq ptr %141, null
  br i1 %142, label %166, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !53
  %146 = getelementptr inbounds %struct.basic_block_def, ptr %141, i64 0, i32 2
  store ptr %145, ptr %146, align 8, !tbaa !53
  store ptr %141, ptr %144, align 8, !tbaa !53
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %141, i64 0, i32 13
  %148 = load i32, ptr %147, align 8, !tbaa !45
  %149 = and i32 %148, -97
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 13
  %151 = load i32, ptr %150, align 8, !tbaa !45
  %152 = and i32 %151, 96
  %153 = or disjoint i32 %152, %149
  store i32 %153, ptr %147, align 8, !tbaa !45
  %154 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %141) #13
  %155 = getelementptr inbounds %struct.edge_def, ptr %154, i64 0, i32 7
  %156 = load i32, ptr %155, align 8, !tbaa !49
  %157 = or i32 %156, 8192
  store i32 %157, ptr %155, align 8, !tbaa !49
  %158 = getelementptr inbounds %struct.basic_block_def, ptr %141, i64 0, i32 7
  %159 = load ptr, ptr %158, align 8, !tbaa !47
  %160 = getelementptr inbounds %struct.rtl_bb_info, ptr %159, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !77
  %162 = tail call ptr @emit_barrier_after(ptr noundef %161) #12
  %163 = tail call ptr @unlink_insn_chain(ptr noundef %162, ptr noundef %162) #12
  %164 = load ptr, ptr %158, align 8, !tbaa !47
  %165 = getelementptr inbounds %struct.rtl_bb_info, ptr %164, i64 0, i32 3
  store ptr %163, ptr %165, align 8, !tbaa !111
  br label %176

166:                                              ; preds = %138
  %167 = load i32, ptr %96, align 8, !tbaa !49
  %168 = or i32 %167, 8192
  store i32 %168, ptr %96, align 8, !tbaa !49
  %169 = load ptr, ptr %101, align 8, !tbaa !47
  %170 = getelementptr inbounds %struct.rtl_bb_info, ptr %169, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !77
  %172 = tail call ptr @emit_barrier_after(ptr noundef %171) #12
  %173 = tail call ptr @unlink_insn_chain(ptr noundef %172, ptr noundef %172) #12
  %174 = load ptr, ptr %101, align 8, !tbaa !47
  %175 = getelementptr inbounds %struct.rtl_bb_info, ptr %174, i64 0, i32 3
  store ptr %173, ptr %175, align 8, !tbaa !111
  br label %176

176:                                              ; preds = %42, %28, %40, %14, %56, %129, %76, %84, %166, %143, %95
  %177 = phi ptr [ %86, %129 ], [ %87, %143 ], [ %87, %166 ], [ %87, %95 ], [ %87, %84 ], [ %77, %76 ], [ %17, %56 ], [ %17, %14 ], [ %17, %40 ], [ %17, %28 ], [ %17, %42 ]
  %178 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %179 = load ptr, ptr %178, align 8, !tbaa !61
  %180 = load ptr, ptr @cfun, align 8, !tbaa !5
  %181 = getelementptr inbounds %struct.function, ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !9
  %183 = getelementptr inbounds %struct.control_flow_graph, ptr %182, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !54
  %185 = icmp eq ptr %179, %184
  br i1 %185, label %186, label %14, !llvm.loop !114

186:                                              ; preds = %176, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_reg_crossing_jump_notes() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %3 = load ptr, ptr @cfun, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %50, label %12

12:                                               ; preds = %0
  %13 = getelementptr inbounds i8, ptr %2, i64 8
  br label %23

14:                                               ; preds = %45, %23
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = load ptr, ptr @cfun, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = icmp eq ptr %16, %21
  br i1 %22, label %50, label %23, !llvm.loop !115

23:                                               ; preds = %12, %14
  %24 = phi ptr [ %8, %12 ], [ %16, %14 ]
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 1
  %26 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %25) #13
  store i32 0, ptr %2, align 8, !tbaa.struct !25
  store ptr %26, ptr %13, align 8, !tbaa.struct !26
  %27 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %26, ptr noundef nonnull %1) #13, !range !27
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %14, label %29

29:                                               ; preds = %23, %45
  %30 = load ptr, ptr %1, align 8, !tbaa !5
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !49
  %33 = and i32 %32, 8192
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %30, align 8, !tbaa !48
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = getelementptr inbounds %struct.rtl_bb_info, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !77
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 9
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  tail call void @add_reg_note(ptr noundef nonnull %40, i32 noundef 29, ptr noundef null) #12
  br label %45

45:                                               ; preds = %29, %35, %44
  call fastcc void @ei_next(ptr noundef nonnull %2) #13
  %46 = load i32, ptr %2, align 8
  %47 = load ptr, ptr %13, align 8
  %48 = call fastcc zeroext i8 @ei_cond(i32 %46, ptr %47, ptr noundef nonnull %1) #13, !range !27
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %14, label %29, !llvm.loop !116

50:                                               ; preds = %14, %0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #11
  ret void
}

; Function Attrs: optsize
declare ptr @block_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_jump_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_barrier_after(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @unlink_insn_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @invert_jump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_br_prob_note(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_nonfallthru(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }

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
!9 = !{!10, !6, i64 8}
!10 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !6, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!11 = !{!"int", !7, i64 0}
!12 = !{!13, !11, i64 24}
!13 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !6, i64 40, !11, i64 48, !7, i64 52, !7, i64 60, !11, i64 68, !11, i64 72}
!14 = !{!11, !11, i64 0}
!15 = !{!13, !11, i64 32}
!16 = !{!17, !11, i64 0}
!17 = !{!"bbro_basic_block_data_def", !11, i64 0, !11, i64 4, !11, i64 8, !6, i64 16, !6, i64 24}
!18 = !{!17, !11, i64 8}
!19 = !{!17, !11, i64 4}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!13, !6, i64 0}
!25 = !{i64 0, i64 4, !14, i64 8, i64 8, !5}
!26 = !{i64 0, i64 8, !5}
!27 = !{i8 0, i8 2}
!28 = !{!29, !6, i64 8}
!29 = !{!"edge_def", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !23, i64 56}
!30 = !{!31, !11, i64 80}
!31 = !{!"basic_block_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 48, !6, i64 56, !7, i64 64, !23, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!32 = !{!17, !6, i64 16}
!33 = !{i64 -2147483648, i64 2147483648}
!34 = !{!17, !6, i64 24}
!35 = !{!31, !11, i64 88}
!36 = !{!31, !23, i64 72}
!37 = distinct !{!37, !21}
!38 = distinct !{!38, !21}
!39 = !{!40, !11, i64 16}
!40 = !{!"trace", !6, i64 0, !6, i64 8, !11, i64 16, !11, i64 20}
!41 = !{!40, !6, i64 8}
!42 = distinct !{!42, !21}
!43 = distinct !{!43, !21}
!44 = !{!40, !6, i64 0}
!45 = !{!31, !11, i64 96}
!46 = distinct !{!46, !21}
!47 = !{!7, !7, i64 0}
!48 = !{!29, !6, i64 0}
!49 = !{!29, !11, i64 48}
!50 = !{!29, !11, i64 52}
!51 = !{!40, !11, i64 20}
!52 = distinct !{!52, !21}
!53 = !{!31, !6, i64 16}
!54 = !{!13, !6, i64 8}
!55 = distinct !{!55, !21}
!56 = !{!29, !23, i64 56}
!57 = distinct !{!57, !21}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !21}
!60 = distinct !{!60, !21}
!61 = !{!31, !6, i64 56}
!62 = distinct !{!62, !21}
!63 = !{!64, !6, i64 976}
!64 = !{!"gcc_target", !65, i64 0, !67, i64 368, !68, i64 664, !11, i64 744, !6, i64 752, !6, i64 760, !6, i64 768, !6, i64 776, !6, i64 784, !6, i64 792, !6, i64 800, !6, i64 808, !6, i64 816, !6, i64 824, !6, i64 832, !6, i64 840, !6, i64 848, !6, i64 856, !6, i64 864, !6, i64 872, !6, i64 880, !6, i64 888, !6, i64 896, !6, i64 904, !6, i64 912, !6, i64 920, !6, i64 928, !6, i64 936, !6, i64 944, !6, i64 952, !6, i64 960, !6, i64 968, !6, i64 976, !6, i64 984, !6, i64 992, !6, i64 1000, !6, i64 1008, !6, i64 1016, !6, i64 1024, !6, i64 1032, !6, i64 1040, !6, i64 1048, !6, i64 1056, !23, i64 1064, !23, i64 1072, !6, i64 1080, !6, i64 1088, !6, i64 1096, !6, i64 1104, !6, i64 1112, !6, i64 1120, !6, i64 1128, !6, i64 1136, !6, i64 1144, !6, i64 1152, !6, i64 1160, !6, i64 1168, !69, i64 1176, !6, i64 1232, !6, i64 1240, !6, i64 1248, !6, i64 1256, !6, i64 1264, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !6, i64 1304, !6, i64 1312, !6, i64 1320, !6, i64 1328, !6, i64 1336, !6, i64 1344, !6, i64 1352, !6, i64 1360, !6, i64 1368, !6, i64 1376, !6, i64 1384, !6, i64 1392, !6, i64 1400, !6, i64 1408, !6, i64 1416, !6, i64 1424, !6, i64 1432, !6, i64 1440, !6, i64 1448, !6, i64 1456, !23, i64 1464, !70, i64 1472, !6, i64 1664, !6, i64 1672, !6, i64 1680, !6, i64 1688, !6, i64 1696, !6, i64 1704, !6, i64 1712, !6, i64 1720, !6, i64 1728, !6, i64 1736, !6, i64 1744, !6, i64 1752, !6, i64 1760, !6, i64 1768, !6, i64 1776, !71, i64 1784, !72, i64 1792, !73, i64 1896, !74, i64 1968, !6, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!65 = !{!"asm_out", !6, i64 0, !6, i64 8, !6, i64 16, !66, i64 24, !66, i64 56, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360}
!66 = !{!"asm_int_op", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!67 = !{!"sched", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288}
!68 = !{!"vectorize", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!69 = !{!"addr_space", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!70 = !{!"calls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184}
!71 = !{!"c", !6, i64 0}
!72 = !{!"cxx", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96}
!73 = !{!"emutls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !7, i64 64, !7, i64 65}
!74 = !{!"target_option_hooks", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!75 = !{!76, !11, i64 8}
!76 = !{!"param_info", !6, i64 0, !11, i64 8, !7, i64 12, !11, i64 16, !11, i64 20, !6, i64 24}
!77 = !{!78, !6, i64 8}
!78 = !{!"rtl_bb_info", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32}
!79 = distinct !{!79, !21}
!80 = distinct !{!80, !21}
!81 = distinct !{!81, !21}
!82 = !{!83, !6, i64 0}
!83 = !{!"bitmap_head_def", !6, i64 0, !6, i64 8, !11, i64 16, !6, i64 24}
!84 = !{!78, !11, i64 32}
!85 = distinct !{!85, !21}
!86 = distinct !{!86, !21}
!87 = !{!88, !11, i64 0}
!88 = !{!"", !11, i64 0, !6, i64 8}
!89 = distinct !{!89, !21}
!90 = !{!31, !6, i64 0}
!91 = !{!92, !23, i64 32}
!92 = !{!"fibnode", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !23, i64 32, !6, i64 40, !11, i64 48, !11, i64 51}
!93 = distinct !{!93, !21}
!94 = distinct !{!94, !21}
!95 = distinct !{!95, !21}
!96 = distinct !{!96, !21}
!97 = !{!98, !11, i64 0}
!98 = !{!"VEC_edge_base", !11, i64 0, !11, i64 4, !7, i64 8}
!99 = !{!31, !6, i64 48}
!100 = !{!31, !6, i64 8}
!101 = distinct !{!101, !21}
!102 = distinct !{!102, !21}
!103 = distinct !{!103, !21}
!104 = distinct !{!104, !21}
!105 = distinct !{!105, !21}
!106 = distinct !{!106, !21}
!107 = !{!78, !6, i64 0}
!108 = distinct !{!108, !21}
!109 = distinct !{!109, !21}
!110 = distinct !{!110, !21}
!111 = !{!78, !6, i64 24}
!112 = distinct !{!112, !21}
!113 = distinct !{!113, !21}
!114 = distinct !{!114, !21}
!115 = distinct !{!115, !21}
!116 = distinct !{!116, !21}
