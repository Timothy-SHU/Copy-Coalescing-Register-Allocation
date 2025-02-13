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
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.fibnode = type { ptr, ptr, ptr, ptr, i64, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
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

@.str = private unnamed_addr constant [13 x i8] c"bb-reorder.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@uncond_jump_length = internal unnamed_addr global i32 0, align 4
@array_size = internal unnamed_addr global i32 0, align 4
@bbd = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@max_entry_frequency = internal unnamed_addr global i32 0, align 4
@max_entry_count = internal unnamed_addr global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"STC - round %d\0A\00", align 1
@exec_threshold = internal unnamed_addr constant [5 x i32] [i32 500, i32 200, i32 50, i32 0, i32 0], align 16
@branch_threshold = internal unnamed_addr constant [5 x i32] [i32 400, i32 200, i32 100, i32 0, i32 0], align 16
@.str.3 = private unnamed_addr constant [23 x i8] c"Trace %d (round %d):  \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%d [%d] \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%d [%d]\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Getting bb %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"  Possible start point of next round: %d (key: %d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Basic block %d was visited in trace %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Changing key for bb %d from %ld to %ld.\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"  Possible start of %s round: %d (key: %ld)\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Rotating loop %d - %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Selecting BB %d\0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [49 x i8] c"Block %d can't be copied because its size = %d.\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Duplicated bb %d (created bb %d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"Growing the dynamic array to %d elements.\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Connection: %d %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Connection: %d %d \00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"Final order:\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"multiple hot/cold transitions found (bb %i)\00", align 1
@pass_duplicate_computed_gotos = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.27, ptr @gate_duplicate_computed_gotos, ptr @duplicate_computed_gotos, ptr null, ptr null, i32 0, i32 162, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@.str.27 = private unnamed_addr constant [10 x i8] c"compgotos\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@pass_reorder_blocks = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.28, ptr @gate_handle_reorder_blocks, ptr @rest_of_handle_reorder_blocks, ptr null, ptr null, i32 0, i32 162, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@.str.28 = private unnamed_addr constant [5 x i8] c"bbro\00", align 1
@flag_reorder_blocks = external local_unnamed_addr global i32, align 4
@pass_partition_blocks = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.29, ptr @gate_handle_partition_blocks, ptr @rest_of_handle_partition_blocks, ptr null, ptr null, i32 0, i32 162, i32 512, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@.str.29 = private unnamed_addr constant [7 x i8] c"bbpart\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@user_defined_section_attribute = external local_unnamed_addr global i8, align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reorder_basic_blocks() local_unnamed_addr #0 !prof !164 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #11
  %2 = tail call i32 @current_ir_type() #12
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %5, label %4, !prof !165

4:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1900, ptr noundef nonnull @.str.1) #12
  br label %5

5:                                                ; preds = %0, %4
  %6 = load ptr, ptr @cfun, align 8, !tbaa !166
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !170
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !173
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %69, label %12, !prof !175

12:                                               ; preds = %5
  tail call void @set_edge_can_fallthru_flag() #12
  %13 = tail call zeroext i8 @mark_dfs_back_edges() #12
  %14 = load i32, ptr @uncond_jump_length, align 4, !tbaa !176
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !177

16:                                               ; preds = %12
  %17 = tail call fastcc i32 @get_uncond_jump_length() #13
  store i32 %17, ptr @uncond_jump_length, align 4, !tbaa !176
  br label %18

18:                                               ; preds = %16, %12
  %19 = load ptr, ptr @cfun, align 8, !tbaa !166
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !170
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !178
  %24 = sdiv i32 %23, 4
  %25 = mul i32 %24, 5
  %26 = add i32 %25, 5
  store i32 %26, ptr @array_size, align 4, !tbaa !176
  %27 = sext i32 %26 to i64
  %28 = shl nsw i64 %27, 5
  %29 = tail call ptr @xmalloc(i64 noundef %28) #12
  store ptr %29, ptr @bbd, align 8, !tbaa !166
  %30 = load i32, ptr @array_size, align 4, !tbaa !176
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %42, !prof !179

32:                                               ; preds = %18
  %33 = zext nneg i32 %30 to i64
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi i64 [ 0, %32 ], [ %40, %34 ]
  %36 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %29, i64 %35
  store i32 -1, ptr %36, align 8, !tbaa !180
  %37 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %29, i64 %35, i32 2
  store i32 -1, ptr %37, align 8, !tbaa !182
  %38 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %29, i64 %35, i32 1
  store i32 -1, ptr %38, align 4, !tbaa !183
  %39 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %29, i64 %35, i32 3
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  br i1 %41, label %42, label %34, !prof !184, !llvm.loop !185

42:                                               ; preds = %34, %18
  %43 = load ptr, ptr @cfun, align 8, !tbaa !166
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !170
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !173
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, 24
  %50 = tail call ptr @xmalloc(i64 noundef %49) #12
  store i32 0, ptr %1, align 4, !tbaa !176
  call fastcc void @find_traces(ptr noundef nonnull %1, ptr noundef %50) #13
  %51 = load i32, ptr %1, align 4, !tbaa !176
  tail call fastcc void @connect_traces(i32 noundef %51, ptr noundef %50) #13
  %52 = icmp eq ptr %50, null
  br i1 %52, label %53, label %54, !prof !187

53:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1929, ptr noundef nonnull @.str.1) #12
  br label %54

54:                                               ; preds = %42, %53
  tail call void @free(ptr noundef %50) #13
  %55 = load ptr, ptr @bbd, align 8, !tbaa !166
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59, !prof !187

57:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1930, ptr noundef nonnull @.str.1) #12
  %58 = load ptr, ptr @bbd, align 8, !tbaa !166
  br label %59

59:                                               ; preds = %54, %57
  %60 = phi ptr [ %55, %54 ], [ %58, %57 ]
  tail call void @free(ptr noundef %60) #13
  store ptr null, ptr @bbd, align 8, !tbaa !166
  tail call void @relink_block_chain(i8 noundef zeroext 1) #12
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63, !prof !188

63:                                               ; preds = %59
  %64 = load i32, ptr @dump_flags, align 4, !tbaa !176
  tail call void @dump_flow_info(ptr noundef nonnull %61, i32 noundef %64) #12
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !176
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68, !prof !188

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
define internal fastcc i32 @get_uncond_jump_length() unnamed_addr #0 !prof !189 !PGOFuncName !190 {
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
define internal fastcc void @find_traces(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !191 !PGOFuncName !192 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %6 = tail call ptr @fibheap_new() #12
  store ptr %6, ptr %5, align 8, !tbaa !166
  store i32 0, ptr @max_entry_frequency, align 4, !tbaa !176
  store i64 0, ptr @max_entry_count, align 8, !tbaa !193
  %7 = load ptr, ptr @cfun, align 8, !tbaa !166
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !170
  %10 = load ptr, ptr %9, align 8, !tbaa !195
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 1
  %12 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %11) #13
  store i32 0, ptr %4, align 8, !tbaa.struct !196
  %13 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %12, ptr %13, align 8, !tbaa.struct !197
  %14 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %12, ptr noundef nonnull %3) #13, !range !198
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %50, label %16, !prof !199

16:                                               ; preds = %2, %45
  %17 = load ptr, ptr @bbd, align 8, !tbaa !166
  %18 = load ptr, ptr %3, align 8, !tbaa !166
  %19 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !200
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !202
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %17, i64 %23, i32 3
  store ptr %6, ptr %24, align 8, !tbaa !204
  %25 = tail call fastcc i64 @bb_to_key(ptr noundef %20) #13, !range !205
  %26 = load ptr, ptr %19, align 8, !tbaa !200
  %27 = tail call ptr @fibheap_insert(ptr noundef %6, i64 noundef %25, ptr noundef %26) #12
  %28 = load ptr, ptr @bbd, align 8, !tbaa !166
  %29 = load ptr, ptr %19, align 8, !tbaa !200
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !202
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %28, i64 %32, i32 4
  store ptr %27, ptr %33, align 8, !tbaa !206
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 11
  %35 = load i32, ptr %34, align 8, !tbaa !207
  %36 = load i32, ptr @max_entry_frequency, align 4, !tbaa !176
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %39, !prof !208

38:                                               ; preds = %16
  store i32 %35, ptr @max_entry_frequency, align 4, !tbaa !176
  br label %39

39:                                               ; preds = %38, %16
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !209
  %42 = load i64, ptr @max_entry_count, align 8, !tbaa !193
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %45, !prof !187

44:                                               ; preds = %39
  store i64 %41, ptr @max_entry_count, align 8, !tbaa !193
  br label %45

45:                                               ; preds = %39, %44
  call fastcc void @ei_next(ptr noundef nonnull %4) #13
  %46 = load i32, ptr %4, align 8
  %47 = load ptr, ptr %13, align 8
  %48 = call fastcc zeroext i8 @ei_cond(i32 %46, ptr %47, ptr noundef nonnull %3) #13, !range !198
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %16, !prof !179, !llvm.loop !210

50:                                               ; preds = %45, %2
  br label %51

51:                                               ; preds = %50, %74
  %52 = phi i64 [ %84, %74 ], [ 0, %50 ]
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55, !prof !211

55:                                               ; preds = %51
  %56 = trunc i64 %52 to i32
  %57 = add i32 %56, 1
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %53, ptr noundef nonnull @.str.2, i32 noundef %57) #13
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i64, ptr @max_entry_count, align 8, !tbaa !193
  %61 = icmp slt i64 %60, 2147483
  br i1 %61, label %62, label %68, !prof !211

62:                                               ; preds = %59
  %63 = getelementptr inbounds [5 x i32], ptr @exec_threshold, i64 0, i64 %52
  %64 = load i32, ptr %63, align 4, !tbaa !176
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %60, %65
  %67 = sdiv i64 %66, 1000
  br label %74

68:                                               ; preds = %59
  %69 = udiv i64 %60, 1000
  %70 = getelementptr inbounds [5 x i32], ptr @exec_threshold, i64 0, i64 %52
  %71 = load i32, ptr %70, align 4, !tbaa !176
  %72 = sext i32 %71 to i64
  %73 = mul nsw i64 %69, %72
  br label %74

74:                                               ; preds = %68, %62
  %75 = phi i32 [ %64, %62 ], [ %71, %68 ]
  %76 = phi i64 [ %67, %62 ], [ %73, %68 ]
  %77 = getelementptr inbounds [5 x i32], ptr @branch_threshold, i64 0, i64 %52
  %78 = load i32, ptr %77, align 4, !tbaa !176
  %79 = mul nsw i32 %78, 10
  %80 = load i32, ptr @max_entry_frequency, align 4, !tbaa !176
  %81 = mul nsw i32 %75, %80
  %82 = sdiv i32 %81, 1000
  %83 = trunc i64 %52 to i32
  call fastcc void @find_traces_1_round(i32 noundef %79, i32 noundef %82, i64 noundef %76, ptr noundef %1, ptr noundef %0, i32 noundef %83, ptr noundef nonnull %5) #13
  %84 = add nuw nsw i64 %52, 1
  %85 = icmp eq i64 %84, 4
  br i1 %85, label %86, label %51, !prof !212, !llvm.loop !213

86:                                               ; preds = %74
  %87 = load ptr, ptr %5, align 8, !tbaa !166
  tail call void @fibheap_delete(ptr noundef %87) #12
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %89 = icmp eq ptr %88, null
  br i1 %89, label %135, label %90, !prof !188

90:                                               ; preds = %86
  %91 = load i32, ptr %0, align 4, !tbaa !176
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %132

93:                                               ; preds = %90, %119
  %94 = phi i64 [ %96, %119 ], [ 0, %90 ]
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %96 = add nuw nsw i64 %94, 1
  %97 = getelementptr inbounds %struct.trace, ptr %1, i64 %94
  %98 = getelementptr inbounds %struct.trace, ptr %1, i64 %94, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !214
  %100 = add nsw i32 %99, 1
  %101 = trunc i64 %96 to i32
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.3, i32 noundef %101, i32 noundef %100) #13
  %103 = getelementptr inbounds %struct.trace, ptr %1, i64 %94, i32 1
  %104 = load ptr, ptr %97, align 8, !tbaa !166
  %105 = load ptr, ptr %103, align 8, !tbaa !216
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %119, label %107

107:                                              ; preds = %93, %107
  %108 = phi ptr [ %116, %107 ], [ %104, %93 ]
  %109 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 9
  %111 = load i32, ptr %110, align 8, !tbaa !202
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 11
  %113 = load i32, ptr %112, align 8, !tbaa !207
  %114 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef nonnull @.str.4, i32 noundef %111, i32 noundef %113) #13
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !166
  %117 = load ptr, ptr %103, align 8, !tbaa !216
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %119, label %107, !llvm.loop !217

119:                                              ; preds = %107, %93
  %120 = phi ptr [ %104, %93 ], [ %116, %107 ]
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 9
  %123 = load i32, ptr %122, align 8, !tbaa !202
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 11
  %125 = load i32, ptr %124, align 8, !tbaa !207
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.5, i32 noundef %123, i32 noundef %125) #13
  %127 = load i32, ptr %0, align 4, !tbaa !176
  %128 = sext i32 %127 to i64
  %129 = icmp slt i64 %96, %128
  br i1 %129, label %93, label %130, !llvm.loop !218

130:                                              ; preds = %119
  %131 = load ptr, ptr @dump_file, align 8, !tbaa !166
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
define internal fastcc void @connect_traces(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !191 !PGOFuncName !219 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  %8 = load i32, ptr @max_entry_frequency, align 4, !tbaa !176
  %9 = sdiv i32 %8, 10
  %10 = load i64, ptr @max_entry_count, align 8, !tbaa !193
  %11 = icmp slt i64 %10, 2147483
  br i1 %11, label %12, label %14, !prof !188

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
  %21 = load ptr, ptr %1, align 8, !tbaa !220
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !221
  %24 = and i32 %23, 96
  %25 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !176
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %44, label %27, !prof !188

27:                                               ; preds = %17
  %28 = icmp sgt i32 %0, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %27, %29
  %30 = phi i64 [ %38, %29 ], [ 0, %27 ]
  %31 = getelementptr inbounds %struct.trace, ptr %1, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !220
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 13
  %34 = load i32, ptr %33, align 8, !tbaa !221
  %35 = xor i32 %34, %23
  %36 = and i32 %35, 96
  %37 = icmp eq i32 %36, 0
  %38 = add nuw nsw i64 %30, 1
  %39 = icmp slt i64 %38, %19
  %40 = select i1 %39, i1 %37, i1 false
  br i1 %40, label %29, label %41, !llvm.loop !222

41:                                               ; preds = %29
  %42 = xor i1 %37, true
  %43 = zext i1 %42 to i8
  br label %44

44:                                               ; preds = %41, %27, %17
  %45 = phi i8 [ 0, %17 ], [ 0, %27 ], [ %43, %41 ]
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
  br i1 %56, label %57, label %58, !prof !223

57:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  br label %64

58:                                               ; preds = %51
  %59 = icmp eq i32 %53, 1
  %60 = select i1 %46, i1 %59, i1 false
  br i1 %60, label %61, label %524, !prof !224

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
  %70 = load i8, ptr %69, align 1, !tbaa !225
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %521, !prof !226

72:                                               ; preds = %64
  br i1 %47, label %80, label %73, !prof !227

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.trace, ptr %1, i64 %68
  %75 = load ptr, ptr %74, align 8, !tbaa !220
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 13
  %77 = load i32, ptr %76, align 8, !tbaa !221
  %78 = and i32 %77, 96
  %79 = icmp eq i32 %78, %65
  br i1 %79, label %80, label %521

80:                                               ; preds = %73, %72
  store i8 1, ptr %69, align 1, !tbaa !225
  %81 = icmp sgt i32 %67, 0
  br i1 %81, label %82, label %175, !prof !179

82:                                               ; preds = %80, %173
  %83 = phi i32 [ %160, %173 ], [ %67, %80 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds %struct.trace, ptr %1, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !220
  %87 = tail call fastcc ptr @ei_start_1(ptr noundef %86) #13
  store i32 0, ptr %4, align 8, !tbaa.struct !196
  store ptr %87, ptr %48, align 8, !tbaa.struct !197
  %88 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %87, ptr noundef nonnull %3) #13, !range !198
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %149, label %90, !prof !228

90:                                               ; preds = %82, %140
  %91 = phi ptr [ %142, %140 ], [ null, %82 ]
  %92 = phi i32 [ %141, %140 ], [ 0, %82 ]
  %93 = load ptr, ptr %3, align 8, !tbaa !166
  %94 = load ptr, ptr %93, align 8, !tbaa !229
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 9
  %96 = load i32, ptr %95, align 8, !tbaa !202
  %97 = load ptr, ptr @cfun, align 8, !tbaa !166
  %98 = getelementptr inbounds %struct.function, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !170
  %100 = load ptr, ptr %99, align 8, !tbaa !195
  %101 = icmp eq ptr %94, %100
  br i1 %101, label %140, label %102, !prof !230

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.edge_def, ptr %93, i64 0, i32 7
  %104 = load i32, ptr %103, align 8, !tbaa !231
  %105 = and i32 %104, 78
  %106 = icmp eq i32 %105, 64
  br i1 %106, label %107, label %140, !prof !232

107:                                              ; preds = %102
  %108 = load ptr, ptr @bbd, align 8, !tbaa !166
  %109 = sext i32 %96 to i64
  %110 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %108, i64 %109, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !183
  %112 = icmp sgt i32 %111, -1
  br i1 %112, label %113, label %140, !prof !233

113:                                              ; preds = %107
  %114 = zext nneg i32 %111 to i64
  %115 = getelementptr inbounds i8, ptr %20, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !225
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %140, !prof !234

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 13
  %120 = load i32, ptr %119, align 8, !tbaa !221
  %121 = and i32 %120, 96
  %122 = icmp eq i32 %121, %65
  br i1 %122, label %123, label %140, !prof !235

123:                                              ; preds = %118
  %124 = icmp eq ptr %91, null
  br i1 %124, label %137, label %125, !prof !236

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.edge_def, ptr %93, i64 0, i32 8
  %127 = load i32, ptr %126, align 4, !tbaa !237
  %128 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 8
  %129 = load i32, ptr %128, align 4, !tbaa !237
  %130 = icmp sgt i32 %127, %129
  br i1 %130, label %137, label %131, !prof !238

131:                                              ; preds = %125
  %132 = icmp eq i32 %127, %129
  br i1 %132, label %133, label %140, !prof !239

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.trace, ptr %1, i64 %114, i32 3
  %135 = load i32, ptr %134, align 4, !tbaa !240
  %136 = icmp sgt i32 %135, %92
  br i1 %136, label %137, label %140, !prof !241

137:                                              ; preds = %133, %125, %123
  %138 = getelementptr inbounds %struct.trace, ptr %1, i64 %114, i32 3
  %139 = load i32, ptr %138, align 4, !tbaa !240
  br label %140

140:                                              ; preds = %137, %133, %131, %118, %113, %107, %102, %90
  %141 = phi i32 [ %92, %113 ], [ %139, %137 ], [ %92, %133 ], [ %92, %131 ], [ %92, %118 ], [ %92, %107 ], [ %92, %102 ], [ %92, %90 ]
  %142 = phi ptr [ %91, %113 ], [ %93, %137 ], [ %91, %133 ], [ %91, %131 ], [ %91, %118 ], [ %91, %107 ], [ %91, %102 ], [ %91, %90 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #13
  %143 = load i32, ptr %4, align 8
  %144 = load ptr, ptr %48, align 8
  %145 = call fastcc zeroext i8 @ei_cond(i32 %143, ptr %144, ptr noundef nonnull %3) #13, !range !198
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %90, !prof !242, !llvm.loop !243

147:                                              ; preds = %140
  %148 = icmp eq ptr %142, null
  br i1 %148, label %149, label %150, !prof !244

149:                                              ; preds = %82, %147
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %175

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.edge_def, ptr %142, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !200
  %153 = load ptr, ptr %142, align 8, !tbaa !229
  %154 = getelementptr inbounds %struct.basic_block_def, ptr %153, i64 0, i32 2
  store ptr %152, ptr %154, align 8, !tbaa !245
  %155 = load ptr, ptr @bbd, align 8, !tbaa !166
  %156 = getelementptr inbounds %struct.basic_block_def, ptr %153, i64 0, i32 9
  %157 = load i32, ptr %156, align 8, !tbaa !202
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %155, i64 %158, i32 1
  %160 = load i32, ptr %159, align 4, !tbaa !183
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, ptr %20, i64 %161
  store i8 1, ptr %162, align 1, !tbaa !225
  %163 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %164 = icmp eq ptr %163, null
  br i1 %164, label %173, label %165, !prof !246

165:                                              ; preds = %150
  %166 = load ptr, ptr %142, align 8, !tbaa !229
  %167 = getelementptr inbounds %struct.basic_block_def, ptr %166, i64 0, i32 9
  %168 = load i32, ptr %167, align 8, !tbaa !202
  %169 = load ptr, ptr %151, align 8, !tbaa !200
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %169, i64 0, i32 9
  %171 = load i32, ptr %170, align 8, !tbaa !202
  %172 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %163, ptr noundef nonnull @.str.19, i32 noundef %168, i32 noundef %171) #13
  br label %173

173:                                              ; preds = %165, %150
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %174 = icmp sgt i32 %160, 0
  br i1 %174, label %82, label %175, !prof !247

175:                                              ; preds = %173, %80, %149
  %176 = phi i32 [ %83, %149 ], [ %67, %80 ], [ %160, %173 ]
  %177 = icmp sgt i32 %54, -1
  br i1 %177, label %178, label %186, !prof !248

178:                                              ; preds = %175
  %179 = sext i32 %176 to i64
  %180 = getelementptr inbounds %struct.trace, ptr %1, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !220
  %182 = zext nneg i32 %54 to i64
  %183 = getelementptr inbounds %struct.trace, ptr %1, i64 %182, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !216
  %185 = getelementptr inbounds %struct.basic_block_def, ptr %184, i64 0, i32 2
  store ptr %181, ptr %185, align 8, !tbaa !245
  br label %186

186:                                              ; preds = %178, %175
  br label %187

187:                                              ; preds = %186, %516
  %188 = phi i32 [ %518, %516 ], [ %67, %186 ]
  %189 = phi i32 [ %519, %516 ], [ %67, %186 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds %struct.trace, ptr %1, i64 %190, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !216
  %193 = getelementptr inbounds %struct.basic_block_def, ptr %192, i64 0, i32 1
  %194 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %193) #13
  store i32 0, ptr %5, align 8, !tbaa.struct !196
  store ptr %194, ptr %49, align 8, !tbaa.struct !197
  %195 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %194, ptr noundef nonnull %3) #13, !range !198
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %287, label %197, !prof !249

197:                                              ; preds = %187, %249
  %198 = phi ptr [ %251, %249 ], [ null, %187 ]
  %199 = phi i32 [ %250, %249 ], [ 0, %187 ]
  %200 = load ptr, ptr %3, align 8, !tbaa !166
  %201 = getelementptr inbounds %struct.edge_def, ptr %200, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !200
  %203 = getelementptr inbounds %struct.basic_block_def, ptr %202, i64 0, i32 9
  %204 = load i32, ptr %203, align 8, !tbaa !202
  %205 = load ptr, ptr @cfun, align 8, !tbaa !166
  %206 = getelementptr inbounds %struct.function, ptr %205, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !170
  %208 = getelementptr inbounds %struct.control_flow_graph, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !250
  %210 = icmp eq ptr %202, %209
  br i1 %210, label %249, label %211, !prof !251

211:                                              ; preds = %197
  %212 = getelementptr inbounds %struct.edge_def, ptr %200, i64 0, i32 7
  %213 = load i32, ptr %212, align 8, !tbaa !231
  %214 = and i32 %213, 78
  %215 = icmp eq i32 %214, 64
  br i1 %215, label %216, label %249, !prof !252

216:                                              ; preds = %211
  %217 = load ptr, ptr @bbd, align 8, !tbaa !166
  %218 = sext i32 %204 to i64
  %219 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %217, i64 %218
  %220 = load i32, ptr %219, align 8, !tbaa !180
  %221 = icmp sgt i32 %220, -1
  br i1 %221, label %222, label %249, !prof !253

222:                                              ; preds = %216
  %223 = zext nneg i32 %220 to i64
  %224 = getelementptr inbounds i8, ptr %20, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !225
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %249, !prof !254

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.basic_block_def, ptr %202, i64 0, i32 13
  %229 = load i32, ptr %228, align 8, !tbaa !221
  %230 = and i32 %229, 96
  %231 = icmp eq i32 %230, %65
  br i1 %231, label %232, label %249, !prof !255

232:                                              ; preds = %227
  %233 = icmp eq ptr %198, null
  br i1 %233, label %246, label %234, !prof !256

234:                                              ; preds = %232
  %235 = getelementptr inbounds %struct.edge_def, ptr %200, i64 0, i32 8
  %236 = load i32, ptr %235, align 4, !tbaa !237
  %237 = getelementptr inbounds %struct.edge_def, ptr %198, i64 0, i32 8
  %238 = load i32, ptr %237, align 4, !tbaa !237
  %239 = icmp sgt i32 %236, %238
  br i1 %239, label %246, label %240, !prof !257

240:                                              ; preds = %234
  %241 = icmp eq i32 %236, %238
  br i1 %241, label %242, label %249, !prof !258

242:                                              ; preds = %240
  %243 = getelementptr inbounds %struct.trace, ptr %1, i64 %223, i32 3
  %244 = load i32, ptr %243, align 4, !tbaa !240
  %245 = icmp sgt i32 %244, %199
  br i1 %245, label %246, label %249, !prof !259

246:                                              ; preds = %242, %234, %232
  %247 = getelementptr inbounds %struct.trace, ptr %1, i64 %223, i32 3
  %248 = load i32, ptr %247, align 4, !tbaa !240
  br label %249

249:                                              ; preds = %246, %242, %240, %227, %222, %216, %211, %197
  %250 = phi i32 [ %199, %222 ], [ %248, %246 ], [ %199, %242 ], [ %199, %240 ], [ %199, %227 ], [ %199, %216 ], [ %199, %211 ], [ %199, %197 ]
  %251 = phi ptr [ %198, %222 ], [ %200, %246 ], [ %198, %242 ], [ %198, %240 ], [ %198, %227 ], [ %198, %216 ], [ %198, %211 ], [ %198, %197 ]
  call fastcc void @ei_next(ptr noundef nonnull %5) #13
  %252 = load i32, ptr %5, align 8
  %253 = load ptr, ptr %49, align 8
  %254 = call fastcc zeroext i8 @ei_cond(i32 %252, ptr %253, ptr noundef nonnull %3) #13, !range !198
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %197, !prof !260, !llvm.loop !261

256:                                              ; preds = %249
  %257 = icmp eq ptr %251, null
  br i1 %257, label %287, label %258, !prof !262

258:                                              ; preds = %256
  %259 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %260 = icmp eq ptr %259, null
  br i1 %260, label %270, label %261, !prof !263

261:                                              ; preds = %258
  %262 = load ptr, ptr %251, align 8, !tbaa !229
  %263 = getelementptr inbounds %struct.basic_block_def, ptr %262, i64 0, i32 9
  %264 = load i32, ptr %263, align 8, !tbaa !202
  %265 = getelementptr inbounds %struct.edge_def, ptr %251, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !200
  %267 = getelementptr inbounds %struct.basic_block_def, ptr %266, i64 0, i32 9
  %268 = load i32, ptr %267, align 8, !tbaa !202
  %269 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %259, ptr noundef nonnull @.str.19, i32 noundef %264, i32 noundef %268) #13
  br label %270

270:                                              ; preds = %261, %258
  %271 = load ptr, ptr @bbd, align 8, !tbaa !166
  %272 = getelementptr inbounds %struct.edge_def, ptr %251, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !200
  %274 = getelementptr inbounds %struct.basic_block_def, ptr %273, i64 0, i32 9
  %275 = load i32, ptr %274, align 8, !tbaa !202
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %271, i64 %276
  %278 = load i32, ptr %277, align 8, !tbaa !180
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.trace, ptr %1, i64 %279
  %281 = load ptr, ptr %280, align 8, !tbaa !220
  %282 = sext i32 %189 to i64
  %283 = getelementptr inbounds %struct.trace, ptr %1, i64 %282, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !216
  %285 = getelementptr inbounds %struct.basic_block_def, ptr %284, i64 0, i32 2
  store ptr %281, ptr %285, align 8, !tbaa !245
  %286 = getelementptr inbounds i8, ptr %20, i64 %279
  store i8 1, ptr %286, align 1, !tbaa !225
  br label %516

287:                                              ; preds = %187, %256
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %288 = load ptr, ptr %191, align 8, !tbaa !216
  %289 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 1
  %290 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %289) #13
  store i32 0, ptr %5, align 8, !tbaa.struct !196
  store ptr %290, ptr %49, align 8, !tbaa.struct !197
  %291 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %290, ptr noundef nonnull %3) #13, !range !198
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %512, label %293, !prof !264

293:                                              ; preds = %287, %419
  %294 = phi i8 [ %422, %419 ], [ 0, %287 ]
  %295 = phi ptr [ %421, %419 ], [ null, %287 ]
  %296 = phi ptr [ %420, %419 ], [ null, %287 ]
  %297 = load ptr, ptr %3, align 8, !tbaa !166
  %298 = getelementptr inbounds %struct.edge_def, ptr %297, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !200
  %300 = load ptr, ptr @cfun, align 8, !tbaa !166
  %301 = getelementptr inbounds %struct.function, ptr %300, i64 0, i32 1
  %302 = load ptr, ptr %301, align 8, !tbaa !170
  %303 = getelementptr inbounds %struct.control_flow_graph, ptr %302, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !250
  %305 = icmp eq ptr %299, %304
  br i1 %305, label %419, label %306, !prof !265

306:                                              ; preds = %293
  %307 = getelementptr inbounds %struct.edge_def, ptr %297, i64 0, i32 7
  %308 = load i32, ptr %307, align 8, !tbaa !231
  %309 = and i32 %308, 78
  %310 = icmp eq i32 %309, 64
  br i1 %310, label %311, label %419, !prof !266

311:                                              ; preds = %306
  %312 = icmp eq ptr %296, null
  br i1 %312, label %319, label %313, !prof !267

313:                                              ; preds = %311
  %314 = getelementptr inbounds %struct.edge_def, ptr %297, i64 0, i32 8
  %315 = load i32, ptr %314, align 4, !tbaa !237
  %316 = getelementptr inbounds %struct.edge_def, ptr %296, i64 0, i32 8
  %317 = load i32, ptr %316, align 4, !tbaa !237
  %318 = icmp sgt i32 %315, %317
  br i1 %318, label %319, label %419, !prof !268

319:                                              ; preds = %313, %311
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  %320 = load ptr, ptr @bbd, align 8, !tbaa !166
  %321 = getelementptr inbounds %struct.basic_block_def, ptr %299, i64 0, i32 9
  %322 = load i32, ptr %321, align 8, !tbaa !202
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %320, i64 %323
  %325 = load i32, ptr %324, align 8, !tbaa !180
  %326 = icmp sgt i32 %325, -1
  br i1 %326, label %327, label %332, !prof !269

327:                                              ; preds = %319
  %328 = zext nneg i32 %325 to i64
  %329 = getelementptr inbounds %struct.trace, ptr %1, i64 %328, i32 3
  %330 = load i32, ptr %329, align 4, !tbaa !240
  %331 = icmp eq i32 %330, 1
  br i1 %331, label %415, label %332, !prof !270

332:                                              ; preds = %327, %319
  %333 = getelementptr inbounds %struct.basic_block_def, ptr %299, i64 0, i32 1
  %334 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %333) #13
  store i32 0, ptr %7, align 8, !tbaa.struct !196
  store ptr %334, ptr %50, align 8, !tbaa.struct !197
  %335 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %334, ptr noundef nonnull %6) #13, !range !198
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %415, label %337, !prof !271

337:                                              ; preds = %332, %405
  %338 = phi i32 [ %410, %405 ], [ 0, %332 ]
  %339 = phi ptr [ %409, %405 ], [ null, %332 ]
  %340 = phi i8 [ %408, %405 ], [ %294, %332 ]
  %341 = phi ptr [ %407, %405 ], [ %295, %332 ]
  %342 = phi ptr [ %406, %405 ], [ %296, %332 ]
  %343 = load ptr, ptr %6, align 8, !tbaa !166
  %344 = getelementptr inbounds %struct.edge_def, ptr %343, i64 0, i32 1
  %345 = load ptr, ptr %344, align 8, !tbaa !200
  %346 = getelementptr inbounds %struct.basic_block_def, ptr %345, i64 0, i32 9
  %347 = load i32, ptr %346, align 8, !tbaa !202
  %348 = load ptr, ptr @cfun, align 8, !tbaa !166
  %349 = getelementptr inbounds %struct.function, ptr %348, i64 0, i32 1
  %350 = load ptr, ptr %349, align 8, !tbaa !170
  %351 = getelementptr inbounds %struct.control_flow_graph, ptr %350, i64 0, i32 1
  %352 = load ptr, ptr %351, align 8, !tbaa !250
  %353 = icmp eq ptr %345, %352
  br i1 %353, label %405, label %354, !prof !272

354:                                              ; preds = %337
  %355 = getelementptr inbounds %struct.edge_def, ptr %343, i64 0, i32 7
  %356 = load i32, ptr %355, align 8, !tbaa !231
  %357 = and i32 %356, 78
  %358 = icmp eq i32 %357, 64
  br i1 %358, label %359, label %405, !prof !273

359:                                              ; preds = %354
  %360 = load ptr, ptr @bbd, align 8, !tbaa !166
  %361 = sext i32 %347 to i64
  %362 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %360, i64 %361
  %363 = load i32, ptr %362, align 8, !tbaa !180
  %364 = icmp sgt i32 %363, -1
  br i1 %364, label %365, label %405, !prof !274

365:                                              ; preds = %359
  %366 = zext nneg i32 %363 to i64
  %367 = getelementptr inbounds i8, ptr %20, i64 %366
  %368 = load i8, ptr %367, align 1, !tbaa !225
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %370, label %405, !prof !275

370:                                              ; preds = %365
  %371 = getelementptr inbounds %struct.basic_block_def, ptr %345, i64 0, i32 13
  %372 = load i32, ptr %371, align 8, !tbaa !221
  %373 = and i32 %372, 96
  %374 = icmp eq i32 %373, %65
  br i1 %374, label %375, label %405, !prof !276

375:                                              ; preds = %370
  %376 = load ptr, ptr %343, align 8, !tbaa !229
  %377 = getelementptr inbounds %struct.basic_block_def, ptr %376, i64 0, i32 11
  %378 = load i32, ptr %377, align 8, !tbaa !207
  %379 = getelementptr inbounds %struct.edge_def, ptr %343, i64 0, i32 8
  %380 = load i32, ptr %379, align 4, !tbaa !237
  %381 = mul nsw i32 %380, %378
  %382 = add nsw i32 %381, 5000
  %383 = sdiv i32 %382, 10000
  %384 = icmp slt i32 %383, %9
  br i1 %384, label %405, label %385, !prof !277

385:                                              ; preds = %375
  %386 = getelementptr inbounds %struct.edge_def, ptr %343, i64 0, i32 9
  %387 = load i64, ptr %386, align 8, !tbaa !278
  %388 = icmp slt i64 %387, %18
  br i1 %388, label %405, label %389, !prof !279

389:                                              ; preds = %385
  %390 = icmp eq ptr %339, null
  br i1 %390, label %401, label %391, !prof !280

391:                                              ; preds = %389
  %392 = getelementptr inbounds %struct.edge_def, ptr %339, i64 0, i32 8
  %393 = load i32, ptr %392, align 4, !tbaa !237
  %394 = icmp sgt i32 %380, %393
  br i1 %394, label %401, label %395, !prof !281

395:                                              ; preds = %391
  %396 = icmp eq i32 %380, %393
  br i1 %396, label %397, label %405, !prof !282

397:                                              ; preds = %395
  %398 = getelementptr inbounds %struct.trace, ptr %1, i64 %366, i32 3
  %399 = load i32, ptr %398, align 4, !tbaa !240
  %400 = icmp sgt i32 %399, %338
  br i1 %400, label %401, label %405, !prof !283

401:                                              ; preds = %397, %391, %389
  %402 = zext nneg i32 %363 to i64
  %403 = getelementptr inbounds %struct.trace, ptr %1, i64 %402, i32 3
  %404 = load i32, ptr %403, align 4, !tbaa !240
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
  %413 = call fastcc zeroext i8 @ei_cond(i32 %411, ptr %412, ptr noundef nonnull %6) #13, !range !198
  %414 = icmp eq i8 %413, 0
  br i1 %414, label %415, label %337, !prof !284, !llvm.loop !285

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
  %425 = call fastcc zeroext i8 @ei_cond(i32 %423, ptr %424, ptr noundef nonnull %3) #13, !range !198
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %427, label %293, !prof !286, !llvm.loop !287

427:                                              ; preds = %419
  %428 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !176
  %429 = icmp ne i32 %428, 0
  %430 = icmp eq i8 %422, 0
  %431 = select i1 %429, i1 true, i1 %430
  br i1 %431, label %512, label %432, !prof !288

432:                                              ; preds = %427
  %433 = getelementptr inbounds %struct.edge_def, ptr %420, i64 0, i32 1
  %434 = load ptr, ptr %433, align 8, !tbaa !200
  %435 = tail call zeroext i8 @optimize_edge_for_speed_p(ptr noundef %420) #12
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %451, label %437, !prof !289

437:                                              ; preds = %432
  %438 = load ptr, ptr %420, align 8, !tbaa !229
  %439 = getelementptr inbounds %struct.basic_block_def, ptr %438, i64 0, i32 11
  %440 = load i32, ptr %439, align 8, !tbaa !207
  %441 = getelementptr inbounds %struct.edge_def, ptr %420, i64 0, i32 8
  %442 = load i32, ptr %441, align 4, !tbaa !237
  %443 = mul nsw i32 %442, %440
  %444 = add nsw i32 %443, 5000
  %445 = sdiv i32 %444, 10000
  %446 = icmp slt i32 %445, %9
  br i1 %446, label %451, label %447, !prof !290

447:                                              ; preds = %437
  %448 = getelementptr inbounds %struct.edge_def, ptr %420, i64 0, i32 9
  %449 = load i64, ptr %448, align 8, !tbaa !278
  %450 = icmp sge i64 %449, %18
  br label %451

451:                                              ; preds = %447, %437, %432
  %452 = phi i1 [ false, %437 ], [ false, %432 ], [ %450, %447 ]
  %453 = zext i1 %452 to i32
  %454 = tail call fastcc zeroext i8 @copy_bb_p(ptr noundef %434, i32 noundef %453) #13, !range !198
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %512, label %456, !prof !291

456:                                              ; preds = %451
  %457 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %458 = icmp eq ptr %457, null
  br i1 %458, label %485, label %459, !prof !292

459:                                              ; preds = %456
  %460 = load ptr, ptr %191, align 8, !tbaa !216
  %461 = getelementptr inbounds %struct.basic_block_def, ptr %460, i64 0, i32 9
  %462 = load i32, ptr %461, align 8, !tbaa !202
  %463 = load ptr, ptr %433, align 8, !tbaa !200
  %464 = getelementptr inbounds %struct.basic_block_def, ptr %463, i64 0, i32 9
  %465 = load i32, ptr %464, align 8, !tbaa !202
  %466 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %457, ptr noundef nonnull @.str.20, i32 noundef %462, i32 noundef %465) #13
  %467 = icmp eq ptr %421, null
  br i1 %467, label %468, label %471

468:                                              ; preds = %459
  %469 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %470 = tail call i32 @fputc(i32 noundef 10, ptr noundef %469) #13
  br label %485

471:                                              ; preds = %459
  %472 = load ptr, ptr @cfun, align 8, !tbaa !166
  %473 = getelementptr inbounds %struct.function, ptr %472, i64 0, i32 1
  %474 = load ptr, ptr %473, align 8, !tbaa !170
  %475 = getelementptr inbounds %struct.control_flow_graph, ptr %474, i64 0, i32 1
  %476 = load ptr, ptr %475, align 8, !tbaa !250
  %477 = icmp eq ptr %421, %476
  %478 = load ptr, ptr @dump_file, align 8, !tbaa !166
  br i1 %477, label %479, label %481

479:                                              ; preds = %471
  %480 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 5, i64 1, ptr %478)
  br label %485

481:                                              ; preds = %471
  %482 = getelementptr inbounds %struct.basic_block_def, ptr %421, i64 0, i32 9
  %483 = load i32, ptr %482, align 8, !tbaa !202
  %484 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %478, ptr noundef nonnull @.str.22, i32 noundef %483) #13
  br label %485

485:                                              ; preds = %468, %481, %479, %456
  %486 = load ptr, ptr %433, align 8, !tbaa !200
  %487 = load ptr, ptr %191, align 8, !tbaa !216
  %488 = tail call fastcc ptr @copy_bb(ptr noundef %486, ptr noundef nonnull %420, ptr noundef %487, i32 noundef %188) #13
  store ptr %488, ptr %191, align 8, !tbaa !216
  %489 = icmp eq ptr %421, null
  br i1 %489, label %512, label %490, !prof !293

490:                                              ; preds = %485
  %491 = load ptr, ptr @cfun, align 8, !tbaa !166
  %492 = getelementptr inbounds %struct.function, ptr %491, i64 0, i32 1
  %493 = load ptr, ptr %492, align 8, !tbaa !170
  %494 = getelementptr inbounds %struct.control_flow_graph, ptr %493, i64 0, i32 1
  %495 = load ptr, ptr %494, align 8, !tbaa !250
  %496 = icmp eq ptr %421, %495
  br i1 %496, label %512, label %497, !prof !294

497:                                              ; preds = %490
  %498 = load ptr, ptr @bbd, align 8, !tbaa !166
  %499 = getelementptr inbounds %struct.basic_block_def, ptr %421, i64 0, i32 9
  %500 = load i32, ptr %499, align 8, !tbaa !202
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %498, i64 %501
  %503 = load i32, ptr %502, align 8, !tbaa !180
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.trace, ptr %1, i64 %504
  %506 = load ptr, ptr %505, align 8, !tbaa !220
  %507 = sext i32 %189 to i64
  %508 = getelementptr inbounds %struct.trace, ptr %1, i64 %507, i32 1
  %509 = load ptr, ptr %508, align 8, !tbaa !216
  %510 = getelementptr inbounds %struct.basic_block_def, ptr %509, i64 0, i32 2
  store ptr %506, ptr %510, align 8, !tbaa !245
  %511 = getelementptr inbounds i8, ptr %20, i64 %504
  store i8 1, ptr %511, align 1, !tbaa !225
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
  br label %51, !llvm.loop !295

524:                                              ; preds = %58
  %525 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %526 = icmp eq ptr %525, null
  br i1 %526, label %545, label %527, !prof !188

527:                                              ; preds = %524
  %528 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 13, i64 1, ptr nonnull %525)
  %529 = load ptr, ptr %1, align 8, !tbaa !166
  %530 = icmp eq ptr %529, null
  br i1 %530, label %540, label %531

531:                                              ; preds = %527, %531
  %532 = phi ptr [ %538, %531 ], [ %529, %527 ]
  %533 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %534 = getelementptr inbounds %struct.basic_block_def, ptr %532, i64 0, i32 9
  %535 = load i32, ptr %534, align 8, !tbaa !202
  %536 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %533, ptr noundef nonnull @.str.24, i32 noundef %535) #13
  %537 = getelementptr inbounds %struct.basic_block_def, ptr %532, i64 0, i32 2
  %538 = load ptr, ptr %537, align 8, !tbaa !166
  %539 = icmp eq ptr %538, null
  br i1 %539, label %540, label %531, !llvm.loop !296

540:                                              ; preds = %531, %527
  %541 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %542 = tail call i32 @fputc(i32 10, ptr %541)
  %543 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %544 = tail call i32 @fflush(ptr noundef %543) #13
  br label %545

545:                                              ; preds = %540, %524
  %546 = icmp eq ptr %20, null
  br i1 %546, label %547, label %548, !prof !187

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
define internal fastcc void @verify_hot_cold_block_grouping() unnamed_addr #0 !prof !297 !PGOFuncName !298 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !170
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !299
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !250
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
  %23 = load i32, ptr %22, align 8, !tbaa !221
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
  %33 = load ptr, ptr %32, align 8, !tbaa !299
  %34 = load ptr, ptr %16, align 8, !tbaa !170
  %35 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !250
  %37 = icmp eq ptr %33, %36
  br i1 %37, label %49, label %17, !llvm.loop !300

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !202
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.26, i32 noundef %40) #12
  %41 = load ptr, ptr @cfun, align 8, !tbaa !166
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !299
  %44 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !170
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !250
  %48 = icmp eq ptr %43, %47
  br i1 %48, label %50, label %10, !llvm.loop !300

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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #4 !prof !301 !PGOFuncName !302 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !303 !PGOFuncName !304 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #13, !range !198
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !305

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #13
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !166
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @fibheap_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @bb_to_key(ptr noundef %0) unnamed_addr #0 !prof !306 !PGOFuncName !307 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !221
  %6 = and i32 %5, 96
  %7 = icmp eq i32 %6, 64
  br i1 %7, label %64, label %8, !prof !308

8:                                                ; preds = %1
  %9 = tail call zeroext i8 @probably_never_executed_bb_p(ptr noundef nonnull %0) #12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %64, !prof !309

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #13
  store i32 0, ptr %3, align 8, !tbaa.struct !196
  %13 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %12, ptr %13, align 8, !tbaa.struct !197
  %14 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %12, ptr noundef nonnull %2) #13, !range !198
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %58, label %16, !prof !310

16:                                               ; preds = %11, %47
  %17 = phi i32 [ %48, %47 ], [ 0, %11 ]
  %18 = load ptr, ptr %2, align 8, !tbaa !166
  %19 = load ptr, ptr %18, align 8, !tbaa !229
  %20 = load ptr, ptr @cfun, align 8, !tbaa !166
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !170
  %23 = load ptr, ptr %22, align 8, !tbaa !195
  %24 = icmp eq ptr %19, %23
  br i1 %24, label %33, label %25, !prof !311

25:                                               ; preds = %16
  %26 = load ptr, ptr @bbd, align 8, !tbaa !166
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !202
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %26, i64 %29, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !183
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %38, label %33, !prof !312

33:                                               ; preds = %25, %16
  %34 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !231
  %36 = and i32 %35, 32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38, !prof !313

38:                                               ; preds = %33, %25
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 11
  %40 = load i32, ptr %39, align 8, !tbaa !207
  %41 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !237
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
  %51 = call fastcc zeroext i8 @ei_cond(i32 %49, ptr %50, ptr noundef nonnull %2) #13, !range !198
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %16, !prof !314, !llvm.loop !315

53:                                               ; preds = %47
  %54 = icmp eq i32 %48, 0
  br i1 %54, label %58, label %55, !prof !316

55:                                               ; preds = %53
  %56 = mul nsw i32 %48, -100
  %57 = add nsw i32 %56, -1000000
  br label %58

58:                                               ; preds = %53, %11, %55
  %59 = phi i32 [ %57, %55 ], [ 0, %11 ], [ 0, %53 ]
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %61 = load i32, ptr %60, align 8, !tbaa !207
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
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !317 !PGOFuncName !318 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !319

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #13
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #13
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !320

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 738, ptr noundef nonnull @.str.1) #12
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !321
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !321
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_traces_1_round(i32 noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, i32 noundef %5, ptr nocapture noundef %6) unnamed_addr #0 !prof !323 !PGOFuncName !324 {
  %8 = alloca ptr, align 8
  %9 = alloca %struct.edge_iterator, align 8
  %10 = tail call ptr @fibheap_new() #12
  %11 = load ptr, ptr %6, align 8, !tbaa !166
  %12 = tail call i32 @fibheap_empty(ptr noundef %11) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %519, !prof !325

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %9, i64 8
  br label %16

16:                                               ; preds = %14, %515
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  %17 = load ptr, ptr %6, align 8, !tbaa !166
  %18 = tail call ptr @fibheap_extract_min(ptr noundef %17) #12
  %19 = load ptr, ptr @bbd, align 8, !tbaa !166
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !202
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %19, i64 %22, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !326

26:                                               ; preds = %16
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %24, ptr noundef nonnull @.str.7, i32 noundef %21) #13
  br label %28

28:                                               ; preds = %26, %16
  %29 = tail call fastcc zeroext i8 @push_to_next_round_p(ptr noundef nonnull %18, i32 noundef %5, i32 noundef %1, i64 noundef %2) #13
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %47, label %31, !prof !327

31:                                               ; preds = %28
  %32 = tail call fastcc i64 @bb_to_key(ptr noundef nonnull %18) #13, !range !205
  %33 = load ptr, ptr @bbd, align 8, !tbaa !166
  %34 = load i32, ptr %20, align 8, !tbaa !202
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %33, i64 %35, i32 3
  store ptr %10, ptr %36, align 8, !tbaa !204
  %37 = tail call ptr @fibheap_insert(ptr noundef %10, i64 noundef %32, ptr noundef nonnull %18) #12
  %38 = load ptr, ptr @bbd, align 8, !tbaa !166
  %39 = load i32, ptr %20, align 8, !tbaa !202
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %38, i64 %40, i32 4
  store ptr %37, ptr %41, align 8, !tbaa !206
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %43 = icmp eq ptr %42, null
  br i1 %43, label %515, label %44, !prof !328

44:                                               ; preds = %31
  %45 = trunc i64 %32 to i32
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %42, ptr noundef nonnull @.str.8, i32 noundef %39, i32 noundef %45) #13
  br label %515

47:                                               ; preds = %28
  %48 = load i32, ptr %4, align 4, !tbaa !176
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.trace, ptr %3, i64 %49
  store ptr %18, ptr %50, align 8, !tbaa !220
  %51 = getelementptr inbounds %struct.trace, ptr %3, i64 %49, i32 2
  store i32 %5, ptr %51, align 8, !tbaa !214
  %52 = getelementptr inbounds %struct.trace, ptr %3, i64 %49, i32 3
  store i32 0, ptr %52, align 4, !tbaa !240
  %53 = load i32, ptr %4, align 4, !tbaa !176
  %54 = load ptr, ptr @bbd, align 8, !tbaa !166
  %55 = load i32, ptr %20, align 8, !tbaa !202
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %54, i64 %56, i32 2
  store i32 %53, ptr %57, align 8, !tbaa !182
  %58 = add nsw i32 %53, 1
  store i32 %58, ptr %4, align 4, !tbaa !176
  br label %59

59:                                               ; preds = %422, %47
  %60 = phi ptr [ %18, %47 ], [ %425, %422 ]
  %61 = load i32, ptr %4, align 4, !tbaa !176
  tail call fastcc void @mark_bb_visited(ptr noundef nonnull %60, i32 noundef %61) #13
  %62 = load i32, ptr %52, align 4, !tbaa !240
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %52, align 4, !tbaa !240
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66, !prof !329

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 9
  %68 = load i32, ptr %67, align 8, !tbaa !202
  %69 = load i32, ptr %4, align 4, !tbaa !176
  %70 = add nsw i32 %69, -1
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %64, ptr noundef nonnull @.str.9, i32 noundef %68, i32 noundef %70) #13
  br label %72

72:                                               ; preds = %66, %59
  %73 = tail call zeroext i8 @block_ends_with_call_p(ptr noundef nonnull %60) #12
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 1
  %75 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %74) #13
  store i32 0, ptr %9, align 8, !tbaa.struct !196
  store ptr %75, ptr %15, align 8, !tbaa.struct !197
  %76 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %75, ptr noundef nonnull %8) #13, !range !198
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %167, label %78, !prof !330

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 13
  %80 = icmp eq i8 %73, 0
  br label %81

81:                                               ; preds = %78, %147
  %82 = phi ptr [ null, %78 ], [ %150, %147 ]
  %83 = phi i32 [ -1073741824, %78 ], [ %149, %147 ]
  %84 = phi i32 [ -1073741824, %78 ], [ %148, %147 ]
  %85 = load ptr, ptr %8, align 8, !tbaa !166
  %86 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 7
  %87 = load i32, ptr %86, align 8, !tbaa !231
  %88 = and i32 %87, 16
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90, !prof !331

90:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 496, ptr noundef nonnull @.str.1) #12
  br label %91

91:                                               ; preds = %81, %90
  %92 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !200
  %94 = load ptr, ptr @cfun, align 8, !tbaa !166
  %95 = getelementptr inbounds %struct.function, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !170
  %97 = getelementptr inbounds %struct.control_flow_graph, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !250
  %99 = icmp eq ptr %93, %98
  br i1 %99, label %147, label %100, !prof !332

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %93, i64 0, i32 7
  %102 = load ptr, ptr %101, align 8, !tbaa !225
  %103 = getelementptr inbounds %struct.rtl_bb_info, ptr %102, i64 0, i32 4
  %104 = load i32, ptr %103, align 8, !tbaa !333
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106, !prof !335

106:                                              ; preds = %100
  %107 = load i32, ptr %4, align 4, !tbaa !176
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %147, !prof !336

109:                                              ; preds = %106, %100
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %93, i64 0, i32 13
  %111 = load i32, ptr %110, align 8, !tbaa !221
  %112 = load i32, ptr %79, align 8, !tbaa !221
  %113 = xor i32 %112, %111
  %114 = and i32 %113, 96
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %147, !prof !337

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 8
  %118 = load i32, ptr %117, align 4, !tbaa !237
  %119 = getelementptr inbounds %struct.basic_block_def, ptr %93, i64 0, i32 11
  %120 = load i32, ptr %119, align 8, !tbaa !207
  %121 = load i32, ptr %86, align 8, !tbaa !231
  br i1 %80, label %126, label %122, !prof !338

122:                                              ; preds = %116
  %123 = and i32 %121, 64
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %147, label %125, !prof !339

125:                                              ; preds = %122
  br label %147

126:                                              ; preds = %116
  %127 = and i32 %121, 78
  %128 = icmp ne i32 %127, 64
  %129 = icmp slt i32 %118, %0
  %130 = select i1 %128, i1 true, i1 %129
  br i1 %130, label %147, label %131, !prof !340

131:                                              ; preds = %126
  %132 = load ptr, ptr %85, align 8, !tbaa !229
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 11
  %134 = load i32, ptr %133, align 8, !tbaa !207
  %135 = mul nsw i32 %134, %118
  %136 = add nsw i32 %135, 5000
  %137 = sdiv i32 %136, 10000
  %138 = icmp slt i32 %137, %1
  br i1 %138, label %147, label %139, !prof !341

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 9
  %141 = load i64, ptr %140, align 8, !tbaa !278
  %142 = icmp slt i64 %141, %2
  br i1 %142, label %147, label %143, !prof !342

143:                                              ; preds = %139
  %144 = tail call fastcc zeroext i8 @better_edge_p(ptr noundef nonnull %60, ptr noundef nonnull %85, i32 noundef %118, i32 noundef %120, i32 noundef %83, i32 noundef %84, ptr noundef %82) #13, !range !198
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %147, label %146, !prof !343

146:                                              ; preds = %143
  br label %147

147:                                              ; preds = %143, %146, %126, %131, %139, %122, %125, %109, %106, %91
  %148 = phi i32 [ %84, %91 ], [ %84, %106 ], [ %84, %109 ], [ %120, %125 ], [ %84, %122 ], [ %84, %131 ], [ %84, %139 ], [ %120, %146 ], [ %84, %143 ], [ %84, %126 ]
  %149 = phi i32 [ %83, %91 ], [ %83, %106 ], [ %83, %109 ], [ %118, %125 ], [ %83, %122 ], [ %83, %131 ], [ %83, %139 ], [ %118, %146 ], [ %83, %143 ], [ %83, %126 ]
  %150 = phi ptr [ %82, %91 ], [ %82, %106 ], [ %82, %109 ], [ %85, %125 ], [ %82, %122 ], [ %82, %131 ], [ %82, %139 ], [ %85, %146 ], [ %82, %143 ], [ %82, %126 ]
  call fastcc void @ei_next(ptr noundef nonnull %9) #13
  %151 = load i32, ptr %9, align 8
  %152 = load ptr, ptr %15, align 8
  %153 = call fastcc zeroext i8 @ei_cond(i32 %151, ptr %152, ptr noundef nonnull %8) #13, !range !198
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %81, !prof !344, !llvm.loop !345

155:                                              ; preds = %147
  %156 = icmp eq ptr %150, null
  br i1 %156, label %167, label %157, !prof !346

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.edge_def, ptr %150, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !200
  %160 = load ptr, ptr %159, align 8, !tbaa !347
  %161 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %160) #13
  %162 = icmp ugt i32 %161, 1
  br i1 %162, label %163, label %167, !prof !348

163:                                              ; preds = %157
  %164 = tail call fastcc zeroext i8 @copy_bb_p(ptr noundef nonnull %159, i32 noundef 0) #13, !range !198
  %165 = icmp eq i8 %164, 0
  %166 = select i1 %165, ptr %150, ptr null, !prof !349
  br label %167

167:                                              ; preds = %72, %163, %157, %155
  %168 = phi ptr [ %150, %157 ], [ null, %155 ], [ %166, %163 ], [ null, %72 ]
  store i32 0, ptr %9, align 8, !tbaa.struct !196
  store ptr %75, ptr %15, align 8, !tbaa.struct !197
  %169 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %75, ptr noundef nonnull %8) #13, !range !198
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %278, label %171, !prof !330

171:                                              ; preds = %167, %273
  %172 = load ptr, ptr %8, align 8, !tbaa !166
  %173 = icmp eq ptr %172, %168
  br i1 %173, label %273, label %174, !prof !350

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.edge_def, ptr %172, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !200
  %177 = load ptr, ptr @cfun, align 8, !tbaa !166
  %178 = getelementptr inbounds %struct.function, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !170
  %180 = getelementptr inbounds %struct.control_flow_graph, ptr %179, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !250
  %182 = icmp eq ptr %176, %181
  br i1 %182, label %273, label %183, !prof !351

183:                                              ; preds = %174
  %184 = getelementptr inbounds %struct.basic_block_def, ptr %176, i64 0, i32 7
  %185 = load ptr, ptr %184, align 8, !tbaa !225
  %186 = getelementptr inbounds %struct.rtl_bb_info, ptr %185, i64 0, i32 4
  %187 = load i32, ptr %186, align 8, !tbaa !333
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %273, !prof !352

189:                                              ; preds = %183
  %190 = tail call fastcc i64 @bb_to_key(ptr noundef nonnull %176) #13, !range !205
  %191 = load ptr, ptr @bbd, align 8, !tbaa !166
  %192 = load ptr, ptr %175, align 8, !tbaa !200
  %193 = getelementptr inbounds %struct.basic_block_def, ptr %192, i64 0, i32 9
  %194 = load i32, ptr %193, align 8, !tbaa !202
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %191, i64 %195, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !204
  %198 = icmp eq ptr %197, null
  br i1 %198, label %223, label %199, !prof !353

199:                                              ; preds = %189
  %200 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %191, i64 %195, i32 4
  %201 = load ptr, ptr %200, align 8, !tbaa !206
  %202 = getelementptr inbounds %struct.fibnode, ptr %201, i64 0, i32 4
  %203 = load i64, ptr %202, align 8, !tbaa !354
  %204 = icmp eq i64 %190, %203
  br i1 %204, label %273, label %205, !prof !356

205:                                              ; preds = %199
  %206 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %207 = icmp eq ptr %206, null
  br i1 %207, label %219, label %208

208:                                              ; preds = %205
  %209 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %206, ptr noundef nonnull @.str.10, i32 noundef %194, i64 noundef %203, i64 noundef %190) #13
  %210 = load ptr, ptr @bbd, align 8, !tbaa !166
  %211 = load ptr, ptr %175, align 8, !tbaa !200
  %212 = getelementptr inbounds %struct.basic_block_def, ptr %211, i64 0, i32 9
  %213 = load i32, ptr %212, align 8, !tbaa !202
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %210, i64 %214, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !204
  %217 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %210, i64 %214, i32 4
  %218 = load ptr, ptr %217, align 8, !tbaa !206
  br label %219

219:                                              ; preds = %208, %205
  %220 = phi ptr [ %218, %208 ], [ %201, %205 ]
  %221 = phi ptr [ %216, %208 ], [ %197, %205 ]
  %222 = tail call i64 @fibheap_replace_key(ptr noundef %221, ptr noundef %220, i64 noundef %190) #12
  br label %273

223:                                              ; preds = %189
  %224 = load ptr, ptr %6, align 8, !tbaa !166
  %225 = getelementptr inbounds %struct.edge_def, ptr %172, i64 0, i32 8
  %226 = load i32, ptr %225, align 4, !tbaa !237
  %227 = load ptr, ptr %172, align 8, !tbaa !229
  %228 = getelementptr inbounds %struct.basic_block_def, ptr %227, i64 0, i32 11
  %229 = load i32, ptr %228, align 8, !tbaa !207
  %230 = mul nsw i32 %229, %226
  %231 = add nsw i32 %230, 5000
  %232 = sdiv i32 %231, 10000
  %233 = getelementptr inbounds %struct.edge_def, ptr %172, i64 0, i32 7
  %234 = load i32, ptr %233, align 8, !tbaa !231
  %235 = and i32 %234, 78
  %236 = icmp ne i32 %235, 64
  %237 = icmp slt i32 %226, %0
  %238 = select i1 %236, i1 true, i1 %237
  %239 = icmp slt i32 %232, %1
  %240 = select i1 %238, i1 true, i1 %239
  br i1 %240, label %245, label %241, !prof !357

241:                                              ; preds = %223
  %242 = getelementptr inbounds %struct.edge_def, ptr %172, i64 0, i32 9
  %243 = load i64, ptr %242, align 8, !tbaa !278
  %244 = icmp slt i64 %243, %2
  br i1 %244, label %245, label %254, !prof !358

245:                                              ; preds = %241, %223
  %246 = tail call fastcc zeroext i8 @push_to_next_round_p(ptr noundef nonnull %192, i32 noundef %5, i32 noundef %1, i64 noundef %2) #13
  %247 = icmp eq i8 %246, 0
  %248 = select i1 %247, ptr %224, ptr %10, !prof !359
  %249 = load ptr, ptr @bbd, align 8, !tbaa !166
  %250 = load ptr, ptr %175, align 8, !tbaa !200
  %251 = getelementptr inbounds %struct.basic_block_def, ptr %250, i64 0, i32 9
  %252 = load i32, ptr %251, align 8, !tbaa !202
  %253 = sext i32 %252 to i64
  br label %254

254:                                              ; preds = %245, %241
  %255 = phi i64 [ %253, %245 ], [ %195, %241 ]
  %256 = phi ptr [ %250, %245 ], [ %192, %241 ]
  %257 = phi ptr [ %249, %245 ], [ %191, %241 ]
  %258 = phi ptr [ %248, %245 ], [ %224, %241 ]
  %259 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %257, i64 %255, i32 3
  store ptr %258, ptr %259, align 8, !tbaa !204
  %260 = tail call ptr @fibheap_insert(ptr noundef %258, i64 noundef %190, ptr noundef nonnull %256) #12
  %261 = load ptr, ptr @bbd, align 8, !tbaa !166
  %262 = load ptr, ptr %175, align 8, !tbaa !200
  %263 = getelementptr inbounds %struct.basic_block_def, ptr %262, i64 0, i32 9
  %264 = load i32, ptr %263, align 8, !tbaa !202
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %261, i64 %265, i32 4
  store ptr %260, ptr %266, align 8, !tbaa !206
  %267 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %268 = icmp eq ptr %267, null
  br i1 %268, label %273, label %269, !prof !360

269:                                              ; preds = %254
  %270 = icmp eq ptr %258, %10
  %271 = select i1 %270, ptr @.str.12, ptr @.str.13
  %272 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %267, ptr noundef nonnull @.str.11, ptr noundef nonnull %271, i32 noundef %264, i64 noundef %190) #13
  br label %273

273:                                              ; preds = %254, %269, %219, %199, %171, %174, %183
  call fastcc void @ei_next(ptr noundef nonnull %9) #13
  %274 = load i32, ptr %9, align 8
  %275 = load ptr, ptr %15, align 8
  %276 = call fastcc zeroext i8 @ei_cond(i32 %274, ptr %275, ptr noundef nonnull %8) #13, !range !198
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %278, label %171, !prof !344, !llvm.loop !361

278:                                              ; preds = %273, %167
  %279 = icmp eq ptr %168, null
  br i1 %279, label %434, label %280, !prof !362

280:                                              ; preds = %278
  %281 = getelementptr inbounds %struct.edge_def, ptr %168, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !200
  %283 = getelementptr inbounds %struct.basic_block_def, ptr %282, i64 0, i32 7
  %284 = load ptr, ptr %283, align 8, !tbaa !225
  %285 = getelementptr inbounds %struct.rtl_bb_info, ptr %284, i64 0, i32 4
  %286 = load i32, ptr %285, align 8, !tbaa !333
  %287 = load i32, ptr %4, align 4, !tbaa !176
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %350, !prof !363

289:                                              ; preds = %280
  %290 = icmp eq ptr %282, %60
  br i1 %290, label %434, label %291, !prof !364

291:                                              ; preds = %289
  %292 = load ptr, ptr %168, align 8, !tbaa !229
  %293 = getelementptr inbounds %struct.basic_block_def, ptr %292, i64 0, i32 11
  %294 = load i32, ptr %293, align 8, !tbaa !207
  %295 = getelementptr inbounds %struct.edge_def, ptr %168, i64 0, i32 8
  %296 = load i32, ptr %295, align 4, !tbaa !237
  %297 = mul nsw i32 %296, %294
  %298 = add nsw i32 %297, 5000
  %299 = sdiv i32 %298, 10000
  %300 = getelementptr inbounds %struct.basic_block_def, ptr %282, i64 0, i32 11
  %301 = load i32, ptr %300, align 8, !tbaa !207
  %302 = shl nsw i32 %301, 2
  %303 = sdiv i32 %302, 5
  %304 = icmp sgt i32 %299, %303
  br i1 %304, label %305, label %336, !prof !365

305:                                              ; preds = %291
  %306 = load ptr, ptr @cfun, align 8, !tbaa !166
  %307 = getelementptr inbounds %struct.function, ptr %306, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !170
  %309 = load ptr, ptr %308, align 8, !tbaa !195
  %310 = getelementptr inbounds %struct.basic_block_def, ptr %309, i64 0, i32 6
  %311 = load ptr, ptr %310, align 8, !tbaa !299
  %312 = icmp eq ptr %282, %311
  br i1 %312, label %434, label %313, !prof !366

313:                                              ; preds = %305
  %314 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %315 = icmp eq ptr %314, null
  br i1 %315, label %324, label %316, !prof !367

316:                                              ; preds = %313
  %317 = getelementptr inbounds %struct.basic_block_def, ptr %282, i64 0, i32 9
  %318 = load i32, ptr %317, align 8, !tbaa !202
  %319 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 9
  %320 = load i32, ptr %319, align 8, !tbaa !202
  %321 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %314, ptr noundef nonnull @.str.14, i32 noundef %318, i32 noundef %320) #13
  %322 = load ptr, ptr %281, align 8, !tbaa !200
  %323 = load i32, ptr %4, align 4, !tbaa !176
  br label %324

324:                                              ; preds = %316, %313
  %325 = phi i32 [ %323, %316 ], [ %286, %313 ]
  %326 = phi ptr [ %322, %316 ], [ %282, %313 ]
  %327 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 2
  store ptr %326, ptr %327, align 8, !tbaa !245
  %328 = add nsw i32 %325, -1
  %329 = load ptr, ptr @bbd, align 8, !tbaa !166
  %330 = getelementptr inbounds %struct.basic_block_def, ptr %326, i64 0, i32 9
  %331 = load i32, ptr %330, align 8, !tbaa !202
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %329, i64 %332, i32 2
  store i32 %328, ptr %333, align 8, !tbaa !182
  %334 = load i32, ptr %4, align 4, !tbaa !176
  %335 = tail call fastcc ptr @rotate_loop(ptr noundef nonnull %168, ptr noundef nonnull %50, i32 noundef %334) #13
  br label %434

336:                                              ; preds = %291
  %337 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %60) #13, !range !198
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %434, label %339, !prof !368

339:                                              ; preds = %336
  %340 = tail call zeroext i8 @optimize_edge_for_speed_p(ptr noundef nonnull %168) #12
  %341 = zext i8 %340 to i32
  %342 = tail call fastcc zeroext i8 @copy_bb_p(ptr noundef nonnull %282, i32 noundef %341) #13, !range !198
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %434, label %344, !prof !369

344:                                              ; preds = %339
  %345 = load ptr, ptr %281, align 8, !tbaa !200
  %346 = load i32, ptr %4, align 4, !tbaa !176
  %347 = tail call fastcc ptr @copy_bb(ptr noundef %345, ptr noundef nonnull %168, ptr noundef %60, i32 noundef %346) #13
  %348 = load i32, ptr %52, align 4, !tbaa !240
  %349 = add nsw i32 %348, 1
  store i32 %349, ptr %52, align 4, !tbaa !240
  br label %434

350:                                              ; preds = %280
  store i32 0, ptr %9, align 8, !tbaa.struct !196
  store ptr %75, ptr %15, align 8, !tbaa.struct !197
  %351 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %75, ptr noundef nonnull %8) #13, !range !198
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %422, label %353, !prof !370

353:                                              ; preds = %350, %417
  %354 = load ptr, ptr %8, align 8, !tbaa !166
  %355 = icmp eq ptr %354, %168
  br i1 %355, label %417, label %356, !prof !371

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.edge_def, ptr %354, i64 0, i32 7
  %358 = load i32, ptr %357, align 8, !tbaa !231
  %359 = and i32 %358, 78
  %360 = icmp eq i32 %359, 64
  br i1 %360, label %361, label %417, !prof !372

361:                                              ; preds = %356
  %362 = getelementptr inbounds %struct.edge_def, ptr %354, i64 0, i32 1
  %363 = load ptr, ptr %362, align 8, !tbaa !200
  %364 = getelementptr inbounds %struct.basic_block_def, ptr %363, i64 0, i32 7
  %365 = load ptr, ptr %364, align 8, !tbaa !225
  %366 = getelementptr inbounds %struct.rtl_bb_info, ptr %365, i64 0, i32 4
  %367 = load i32, ptr %366, align 8, !tbaa !333
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %417, !prof !373

369:                                              ; preds = %361
  %370 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %363) #13, !range !198
  %371 = icmp ne i8 %370, 0
  %372 = and i32 %358, 8192
  %373 = icmp eq i32 %372, 0
  %374 = and i1 %373, %371
  br i1 %374, label %375, label %417, !prof !374

375:                                              ; preds = %369
  %376 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %363) #13, !range !198
  %377 = icmp eq i8 %376, 0
  br i1 %377, label %417, label %378, !prof !375

378:                                              ; preds = %375
  %379 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %363) #13
  %380 = getelementptr inbounds %struct.edge_def, ptr %379, i64 0, i32 7
  %381 = load i32, ptr %380, align 8, !tbaa !231
  %382 = and i32 %381, 64
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %417, label %384, !prof !376

384:                                              ; preds = %378
  %385 = load ptr, ptr %362, align 8, !tbaa !200
  %386 = tail call fastcc ptr @single_succ_edge(ptr noundef %385) #13
  %387 = getelementptr inbounds %struct.edge_def, ptr %386, i64 0, i32 7
  %388 = load i32, ptr %387, align 8, !tbaa !231
  %389 = and i32 %388, 14
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %417, !prof !377

391:                                              ; preds = %384
  %392 = load ptr, ptr %362, align 8, !tbaa !200
  %393 = tail call fastcc ptr @single_succ(ptr noundef %392) #13
  %394 = load ptr, ptr %281, align 8, !tbaa !200
  %395 = icmp eq ptr %393, %394
  br i1 %395, label %396, label %417, !prof !378

396:                                              ; preds = %391
  %397 = getelementptr inbounds %struct.edge_def, ptr %168, i64 0, i32 8
  %398 = load ptr, ptr %362, align 8, !tbaa !200
  %399 = getelementptr inbounds %struct.basic_block_def, ptr %398, i64 0, i32 11
  %400 = load i32, ptr %399, align 8, !tbaa !207
  %401 = shl nsw i32 %400, 1
  %402 = load ptr, ptr %168, align 8, !tbaa !229
  %403 = getelementptr inbounds %struct.basic_block_def, ptr %402, i64 0, i32 11
  %404 = load i32, ptr %403, align 8, !tbaa !207
  %405 = load i32, ptr %397, align 4, !tbaa !237
  %406 = mul nsw i32 %405, %404
  %407 = add nsw i32 %406, 5000
  %408 = sdiv i32 %407, 10000
  %409 = icmp slt i32 %401, %408
  br i1 %409, label %417, label %410, !prof !379

410:                                              ; preds = %396
  %411 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %412 = icmp eq ptr %411, null
  br i1 %412, label %422, label %413, !prof !380

413:                                              ; preds = %410
  %414 = getelementptr inbounds %struct.basic_block_def, ptr %398, i64 0, i32 9
  %415 = load i32, ptr %414, align 8, !tbaa !202
  %416 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %411, ptr noundef nonnull @.str.15, i32 noundef %415) #13
  br label %422

417:                                              ; preds = %353, %356, %361, %369, %375, %378, %384, %391, %396
  call fastcc void @ei_next(ptr noundef nonnull %9) #13
  %418 = load i32, ptr %9, align 8
  %419 = load ptr, ptr %15, align 8
  %420 = call fastcc zeroext i8 @ei_cond(i32 %418, ptr %419, ptr noundef nonnull %8) #13, !range !198
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %422, label %353, !prof !381, !llvm.loop !382

422:                                              ; preds = %417, %350, %413, %410
  %423 = phi ptr [ %354, %413 ], [ %354, %410 ], [ %168, %350 ], [ %168, %417 ]
  %424 = getelementptr inbounds %struct.edge_def, ptr %423, i64 0, i32 1
  %425 = load ptr, ptr %424, align 8, !tbaa !200
  %426 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 2
  store ptr %425, ptr %426, align 8, !tbaa !245
  %427 = load i32, ptr %4, align 4, !tbaa !176
  %428 = add nsw i32 %427, -1
  %429 = load ptr, ptr @bbd, align 8, !tbaa !166
  %430 = getelementptr inbounds %struct.basic_block_def, ptr %425, i64 0, i32 9
  %431 = load i32, ptr %430, align 8, !tbaa !202
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %429, i64 %432, i32 2
  store i32 %428, ptr %433, align 8, !tbaa !182
  br label %59, !llvm.loop !383

434:                                              ; preds = %278, %289, %336, %339, %344, %305, %324
  %435 = phi ptr [ %60, %289 ], [ %60, %336 ], [ %60, %339 ], [ %347, %344 ], [ %60, %305 ], [ %335, %324 ], [ %60, %278 ]
  %436 = getelementptr inbounds %struct.trace, ptr %3, i64 %49, i32 1
  store ptr %435, ptr %436, align 8, !tbaa !216
  %437 = load i32, ptr %4, align 4, !tbaa !176
  %438 = add nsw i32 %437, -1
  %439 = load ptr, ptr @bbd, align 8, !tbaa !166
  %440 = load ptr, ptr %50, align 8, !tbaa !220
  %441 = getelementptr inbounds %struct.basic_block_def, ptr %440, i64 0, i32 9
  %442 = load i32, ptr %441, align 8, !tbaa !202
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %439, i64 %443
  store i32 %438, ptr %444, align 8, !tbaa !180
  %445 = load i32, ptr %4, align 4, !tbaa !176
  %446 = add nsw i32 %445, -1
  %447 = getelementptr inbounds %struct.basic_block_def, ptr %435, i64 0, i32 9
  %448 = load i32, ptr %447, align 8, !tbaa !202
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %439, i64 %449, i32 1
  store i32 %446, ptr %450, align 4, !tbaa !183
  %451 = getelementptr inbounds %struct.basic_block_def, ptr %435, i64 0, i32 1
  %452 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %451) #13
  store i32 0, ptr %9, align 8, !tbaa.struct !196
  store ptr %452, ptr %15, align 8, !tbaa.struct !197
  %453 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %452, ptr noundef nonnull %8) #13, !range !198
  %454 = icmp eq i8 %453, 0
  br i1 %454, label %515, label %455, !prof !384

455:                                              ; preds = %434, %510
  %456 = load ptr, ptr %8, align 8, !tbaa !166
  %457 = getelementptr inbounds %struct.edge_def, ptr %456, i64 0, i32 1
  %458 = load ptr, ptr %457, align 8, !tbaa !200
  %459 = load ptr, ptr @cfun, align 8, !tbaa !166
  %460 = getelementptr inbounds %struct.function, ptr %459, i64 0, i32 1
  %461 = load ptr, ptr %460, align 8, !tbaa !170
  %462 = getelementptr inbounds %struct.control_flow_graph, ptr %461, i64 0, i32 1
  %463 = load ptr, ptr %462, align 8, !tbaa !250
  %464 = icmp eq ptr %458, %463
  br i1 %464, label %510, label %465, !prof !385

465:                                              ; preds = %455
  %466 = getelementptr inbounds %struct.basic_block_def, ptr %458, i64 0, i32 7
  %467 = load ptr, ptr %466, align 8, !tbaa !225
  %468 = getelementptr inbounds %struct.rtl_bb_info, ptr %467, i64 0, i32 4
  %469 = load i32, ptr %468, align 8, !tbaa !333
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %510, !prof !386

471:                                              ; preds = %465
  %472 = load ptr, ptr @bbd, align 8, !tbaa !166
  %473 = getelementptr inbounds %struct.basic_block_def, ptr %458, i64 0, i32 9
  %474 = load i32, ptr %473, align 8, !tbaa !202
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %472, i64 %475, i32 3
  %477 = load ptr, ptr %476, align 8, !tbaa !204
  %478 = icmp eq ptr %477, null
  br i1 %478, label %510, label %479, !prof !387

479:                                              ; preds = %471
  %480 = tail call fastcc i64 @bb_to_key(ptr noundef nonnull %458) #13, !range !205
  %481 = load ptr, ptr @bbd, align 8, !tbaa !166
  %482 = load ptr, ptr %457, align 8, !tbaa !200
  %483 = getelementptr inbounds %struct.basic_block_def, ptr %482, i64 0, i32 9
  %484 = load i32, ptr %483, align 8, !tbaa !202
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %481, i64 %485, i32 4
  %487 = load ptr, ptr %486, align 8, !tbaa !206
  %488 = getelementptr inbounds %struct.fibnode, ptr %487, i64 0, i32 4
  %489 = load i64, ptr %488, align 8, !tbaa !354
  %490 = icmp eq i64 %480, %489
  br i1 %490, label %510, label %491, !prof !388

491:                                              ; preds = %479
  %492 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %493 = icmp eq ptr %492, null
  br i1 %493, label %503, label %494, !prof !389

494:                                              ; preds = %491
  %495 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %492, ptr noundef nonnull @.str.10, i32 noundef %484, i64 noundef %489, i64 noundef %480) #13
  %496 = load ptr, ptr @bbd, align 8, !tbaa !166
  %497 = load ptr, ptr %457, align 8, !tbaa !200
  %498 = getelementptr inbounds %struct.basic_block_def, ptr %497, i64 0, i32 9
  %499 = load i32, ptr %498, align 8, !tbaa !202
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %496, i64 %500, i32 4
  %502 = load ptr, ptr %501, align 8, !tbaa !206
  br label %503

503:                                              ; preds = %494, %491
  %504 = phi i64 [ %500, %494 ], [ %485, %491 ]
  %505 = phi ptr [ %502, %494 ], [ %487, %491 ]
  %506 = phi ptr [ %496, %494 ], [ %481, %491 ]
  %507 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %506, i64 %504, i32 3
  %508 = load ptr, ptr %507, align 8, !tbaa !204
  %509 = tail call i64 @fibheap_replace_key(ptr noundef %508, ptr noundef %505, i64 noundef %480) #12
  br label %510

510:                                              ; preds = %471, %503, %479, %455, %465
  call fastcc void @ei_next(ptr noundef nonnull %9) #13
  %511 = load i32, ptr %9, align 8
  %512 = load ptr, ptr %15, align 8
  %513 = call fastcc zeroext i8 @ei_cond(i32 %511, ptr %512, ptr noundef nonnull %8) #13, !range !198
  %514 = icmp eq i8 %513, 0
  br i1 %514, label %515, label %455, !prof !390, !llvm.loop !391

515:                                              ; preds = %510, %434, %31, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  %516 = load ptr, ptr %6, align 8, !tbaa !166
  %517 = tail call i32 @fibheap_empty(ptr noundef %516) #12
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %16, label %519, !prof !392

519:                                              ; preds = %515, %7
  %520 = load ptr, ptr %6, align 8, !tbaa !166
  tail call void @fibheap_delete(ptr noundef %520) #12
  store ptr %10, ptr %6, align 8, !tbaa !166
  ret void
}

; Function Attrs: optsize
declare void @fibheap_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !303 !PGOFuncName !393 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !394

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !395 !PGOFuncName !396 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !397

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #13
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #13
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !398 !PGOFuncName !399 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !400

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !401
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !403 !PGOFuncName !404 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !405

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 687, ptr noundef nonnull @.str.1) #12
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !166
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !406 !PGOFuncName !407 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !166
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @probably_never_executed_bb_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @fibheap_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fibheap_extract_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @push_to_next_round_p(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 !prof !408 !PGOFuncName !409 {
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %6 = load i32, ptr %5, align 8, !tbaa !207
  %7 = icmp slt i32 %6, %2
  br i1 %7, label %15, label %8, !prof !410

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !209
  %11 = icmp slt i64 %10, %3
  br i1 %11, label %15, label %12, !prof !411

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
define internal fastcc void @mark_bb_visited(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !412 !PGOFuncName !413 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !225
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 4
  store i32 %1, ptr %5, align 8, !tbaa !333
  %6 = load ptr, ptr @bbd, align 8, !tbaa !166
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !202
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %6, i64 %9, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !204
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13, !prof !414

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %6, i64 %9, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !206
  %16 = tail call ptr @fibheap_delete_node(ptr noundef nonnull %11, ptr noundef %15) #12
  %17 = load ptr, ptr @bbd, align 8, !tbaa !166
  %18 = load i32, ptr %7, align 8, !tbaa !202
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
define internal fastcc zeroext i8 @better_edge_p(ptr noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly %6) unnamed_addr #7 !prof !415 !PGOFuncName !416 {
  %8 = sdiv i32 %4, 10
  %9 = sdiv i32 %5, 10
  %10 = add nsw i32 %8, %4
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %48, label %12, !prof !417

12:                                               ; preds = %7
  %13 = sub nsw i32 %4, %8
  %14 = icmp sgt i32 %13, %2
  br i1 %14, label %29, label %15, !prof !418

15:                                               ; preds = %12
  %16 = sub nsw i32 %5, %9
  %17 = icmp sgt i32 %16, %3
  br i1 %17, label %48, label %18, !prof !419

18:                                               ; preds = %15
  %19 = add nsw i32 %9, %5
  %20 = icmp slt i32 %19, %3
  br i1 %20, label %29, label %21, !prof !420

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !200
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !421
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
  br i1 %34, label %35, label %48, !prof !422

35:                                               ; preds = %29
  %36 = icmp eq ptr %6, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !231
  %40 = and i32 %39, 8192
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !231
  %45 = and i32 %44, 8192
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i8
  br label %48

48:                                               ; preds = %15, %7, %42, %37, %35, %29
  %49 = phi i8 [ 0, %37 ], [ 0, %35 ], [ %31, %29 ], [ %47, %42 ], [ 1, %7 ], [ 1, %15 ]
  ret i8 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @copy_bb_p(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !423 !PGOFuncName !424 {
  %3 = load i32, ptr @uncond_jump_length, align 4, !tbaa !176
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %5 = load i32, ptr %4, align 8, !tbaa !207
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %67, label %7, !prof !425

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !347
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #13
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %67, label %11, !prof !426

11:                                               ; preds = %7
  %12 = tail call zeroext i8 @can_duplicate_block_p(ptr noundef nonnull %0) #12
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %67, label %14, !prof !427

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !428
  %17 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %16) #13
  %18 = icmp ugt i32 %17, 8
  br i1 %18, label %67, label %19, !prof !429

19:                                               ; preds = %14
  %20 = icmp eq i32 %1, 0
  br i1 %20, label %29, label %21, !prof !430

21:                                               ; preds = %19
  %22 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef nonnull %0) #12
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24, !prof !431

24:                                               ; preds = %21
  %25 = load ptr, ptr @compiler_params, align 8, !tbaa !166
  %26 = getelementptr inbounds %struct.param_info, ptr %25, i64 55, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !432
  %28 = mul nsw i32 %27, %3
  br label %29

29:                                               ; preds = %24, %21, %19
  %30 = phi i32 [ %28, %24 ], [ %3, %21 ], [ %3, %19 ]
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !225
  %33 = load ptr, ptr %32, align 8, !tbaa !225
  %34 = icmp eq ptr %33, null
  br i1 %34, label %57, label %35, !prof !434

35:                                               ; preds = %29, %52
  %36 = phi ptr [ %55, %52 ], [ %33, %29 ]
  %37 = phi i32 [ %53, %52 ], [ 0, %29 ]
  %38 = load ptr, ptr %31, align 8, !tbaa !225
  %39 = getelementptr inbounds %struct.rtl_bb_info, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !435
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !225
  %43 = icmp eq ptr %36, %42
  br i1 %43, label %57, label %44, !prof !436

44:                                               ; preds = %35
  %45 = load i32, ptr %36, align 8
  %46 = and i32 %45, 65535
  %47 = add nsw i32 %46, -7
  %48 = icmp ult i32 %47, 4
  br i1 %48, label %49, label %52, !prof !437

49:                                               ; preds = %44
  %50 = tail call i32 @get_attr_min_length(ptr noundef nonnull %36) #12
  %51 = add nsw i32 %50, %37
  br label %52

52:                                               ; preds = %44, %49
  %53 = phi i32 [ %51, %49 ], [ %37, %44 ]
  %54 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 2
  %55 = load ptr, ptr %54, align 8, !tbaa !225
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %35, !prof !438, !llvm.loop !439

57:                                               ; preds = %35, %52, %29
  %58 = phi i32 [ 0, %29 ], [ %53, %52 ], [ %37, %35 ]
  %59 = icmp sgt i32 %58, %30
  br i1 %59, label %60, label %67, !prof !440

60:                                               ; preds = %57
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63, !prof !441

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !202
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %61, ptr noundef nonnull @.str.16, i32 noundef %65, i32 noundef %58) #13
  br label %67

67:                                               ; preds = %60, %63, %57, %14, %11, %7, %2
  %68 = phi i8 [ 0, %2 ], [ 0, %7 ], [ 0, %11 ], [ 0, %14 ], [ 1, %57 ], [ 0, %63 ], [ 0, %60 ]
  ret i8 %68
}

; Function Attrs: optsize
declare i64 @fibheap_replace_key(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rotate_loop(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !prof !442 !PGOFuncName !443 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !200
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
  store i32 0, ptr %5, align 8, !tbaa.struct !196
  store ptr %17, ptr %8, align 8, !tbaa.struct !197
  %18 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %4) #13, !range !198
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %120, label %20, !prof !444

20:                                               ; preds = %9, %110
  %21 = phi ptr [ %115, %110 ], [ %14, %9 ]
  %22 = phi ptr [ %114, %110 ], [ %13, %9 ]
  %23 = phi i32 [ %113, %110 ], [ %12, %9 ]
  %24 = phi i64 [ %112, %110 ], [ %11, %9 ]
  %25 = phi i8 [ %111, %110 ], [ %10, %9 ]
  %26 = load ptr, ptr %4, align 8, !tbaa !166
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !200
  %29 = load ptr, ptr @cfun, align 8, !tbaa !166
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !170
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !250
  %34 = icmp eq ptr %28, %33
  br i1 %34, label %110, label %35, !prof !445

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !225
  %38 = getelementptr inbounds %struct.rtl_bb_info, ptr %37, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !333
  %40 = icmp eq i32 %39, %2
  br i1 %40, label %110, label %41, !prof !446

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !231
  %44 = and i32 %43, 78
  %45 = icmp eq i32 %44, 64
  br i1 %45, label %46, label %110, !prof !447

46:                                               ; preds = %41
  %47 = icmp eq i8 %25, 0
  %48 = icmp eq i32 %39, 0
  br i1 %47, label %73, label %49, !prof !448

49:                                               ; preds = %46
  br i1 %48, label %58, label %50, !prof !449

50:                                               ; preds = %49
  %51 = load ptr, ptr @bbd, align 8, !tbaa !166
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !202
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %51, i64 %54
  %56 = load i32, ptr %55, align 8, !tbaa !180
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %110, !prof !450

58:                                               ; preds = %50, %49
  %59 = load ptr, ptr %26, align 8, !tbaa !229
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 11
  %61 = load i32, ptr %60, align 8, !tbaa !207
  %62 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 8
  %63 = load i32, ptr %62, align 4, !tbaa !237
  %64 = mul nsw i32 %63, %61
  %65 = add nsw i32 %64, 5000
  %66 = sdiv i32 %65, 10000
  %67 = icmp sgt i32 %66, %23
  %68 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 9
  %69 = load i64, ptr %68, align 8, !tbaa !278
  br i1 %67, label %110, label %70, !prof !451

70:                                               ; preds = %58
  %71 = icmp sgt i64 %69, %24
  br i1 %71, label %72, label %110, !prof !452

72:                                               ; preds = %70
  br label %110

73:                                               ; preds = %46
  br i1 %48, label %82, label %74, !prof !453

74:                                               ; preds = %73
  %75 = load ptr, ptr @bbd, align 8, !tbaa !166
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !202
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %75, i64 %78
  %80 = load i32, ptr %79, align 8, !tbaa !180
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %82, label %93, !prof !454

82:                                               ; preds = %74, %73
  %83 = load ptr, ptr %26, align 8, !tbaa !229
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 11
  %85 = load i32, ptr %84, align 8, !tbaa !207
  %86 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 8
  %87 = load i32, ptr %86, align 4, !tbaa !237
  %88 = mul nsw i32 %87, %85
  %89 = add nsw i32 %88, 5000
  %90 = sdiv i32 %89, 10000
  %91 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 9
  %92 = load i64, ptr %91, align 8, !tbaa !278
  br label %110

93:                                               ; preds = %74
  %94 = load ptr, ptr %26, align 8, !tbaa !229
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 11
  %96 = load i32, ptr %95, align 8, !tbaa !207
  %97 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 8
  %98 = load i32, ptr %97, align 4, !tbaa !237
  %99 = mul nsw i32 %98, %96
  %100 = add nsw i32 %99, 5000
  %101 = sdiv i32 %100, 10000
  %102 = icmp eq ptr %22, null
  %103 = icmp sgt i32 %101, %23
  %104 = select i1 %102, i1 true, i1 %103
  %105 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 9
  %106 = load i64, ptr %105, align 8, !tbaa !278
  br i1 %104, label %110, label %107, !prof !455

107:                                              ; preds = %93
  %108 = icmp sgt i64 %106, %24
  br i1 %108, label %109, label %110, !prof !456

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
  %118 = call fastcc zeroext i8 @ei_cond(i32 %116, ptr %117, ptr noundef nonnull %4) #13, !range !198
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %20, !prof !457, !llvm.loop !458

120:                                              ; preds = %110, %9
  %121 = phi i8 [ %10, %9 ], [ %111, %110 ]
  %122 = phi i64 [ %11, %9 ], [ %112, %110 ]
  %123 = phi i32 [ %12, %9 ], [ %113, %110 ]
  %124 = phi ptr [ %13, %9 ], [ %114, %110 ]
  %125 = phi ptr [ %14, %9 ], [ %115, %110 ]
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !245
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %128 = load ptr, ptr %6, align 8, !tbaa !200
  %129 = icmp eq ptr %127, %128
  br i1 %129, label %130, label %9, !prof !459, !llvm.loop !460

130:                                              ; preds = %120
  %131 = icmp eq ptr %125, null
  br i1 %131, label %169, label %132, !prof !461

132:                                              ; preds = %130
  %133 = load ptr, ptr %1, align 8, !tbaa !220
  %134 = icmp eq ptr %127, %133
  br i1 %134, label %135, label %138, !prof !462

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !245
  store ptr %137, ptr %1, align 8, !tbaa !220
  br label %171

138:                                              ; preds = %132, %138
  %139 = phi ptr [ %141, %138 ], [ %133, %132 ]
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %139, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !245
  %142 = icmp eq ptr %141, %127
  br i1 %142, label %143, label %138, !prof !463, !llvm.loop !464

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %139, i64 0, i32 2
  %145 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !245
  store ptr %146, ptr %144, align 8, !tbaa !245
  %147 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %139) #13, !range !198
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %171, label %149, !prof !465

149:                                              ; preds = %143
  %150 = tail call fastcc ptr @single_succ(ptr noundef nonnull %139) #13
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %150, i64 0, i32 7
  %152 = load ptr, ptr %151, align 8, !tbaa !225
  %153 = getelementptr inbounds %struct.rtl_bb_info, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !435
  %155 = tail call i32 @any_condjump_p(ptr noundef %154) #12
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %171, label %157, !prof !466

157:                                              ; preds = %149
  %158 = tail call fastcc zeroext i8 @copy_bb_p(ptr noundef nonnull %150, i32 noundef 0) #13, !range !198
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %171, label %160, !prof !467

160:                                              ; preds = %157
  %161 = load ptr, ptr %151, align 8, !tbaa !225
  %162 = getelementptr inbounds %struct.rtl_bb_info, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !435
  %164 = tail call ptr @find_reg_note(ptr noundef %163, i32 noundef 29, ptr noundef null) #12
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %139) #13
  %168 = tail call fastcc ptr @copy_bb(ptr noundef nonnull %150, ptr noundef %167, ptr noundef nonnull %139, i32 noundef %2) #13
  br label %171

169:                                              ; preds = %130
  %170 = load ptr, ptr %0, align 8, !tbaa !229
  br label %171

171:                                              ; preds = %143, %166, %160, %157, %149, %135, %169
  %172 = phi ptr [ %125, %135 ], [ %170, %169 ], [ %125, %149 ], [ %125, %157 ], [ %125, %160 ], [ %125, %166 ], [ %125, %143 ]
  %173 = getelementptr inbounds %struct.basic_block_def, ptr %172, i64 0, i32 2
  store ptr null, ptr %173, align 8, !tbaa !245
  ret ptr %172
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !468 !PGOFuncName !469 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !428
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #13
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @optimize_edge_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @copy_bb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !470 !PGOFuncName !471 {
  %5 = tail call ptr @duplicate_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !221
  %8 = and i32 %7, -97
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !221
  %11 = and i32 %10, 96
  %12 = or disjoint i32 %11, %8
  store i32 %12, ptr %6, align 8, !tbaa !221
  %13 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !200
  %15 = icmp eq ptr %14, %5
  br i1 %15, label %18, label %16, !prof !472

16:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 762, ptr noundef nonnull @.str.1) #12
  %17 = load ptr, ptr %13, align 8, !tbaa !200
  br label %18

18:                                               ; preds = %4, %16
  %19 = phi ptr [ %5, %4 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !225
  %22 = getelementptr inbounds %struct.rtl_bb_info, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !333
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25, !prof !472

25:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 763, ptr noundef nonnull @.str.1) #12
  br label %26

26:                                               ; preds = %18, %25
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29, !prof !472

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !202
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !202
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %27, ptr noundef nonnull @.str.17, i32 noundef %31, i32 noundef %33) #13
  br label %35

35:                                               ; preds = %29, %26
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !225
  %38 = getelementptr inbounds %struct.rtl_bb_info, ptr %37, i64 0, i32 4
  store i32 %3, ptr %38, align 8, !tbaa !333
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !245
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 2
  store ptr %40, ptr %41, align 8, !tbaa !245
  store ptr %5, ptr %39, align 8, !tbaa !245
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %43 = load i32, ptr %42, align 8, !tbaa !202
  %44 = load i32, ptr @array_size, align 4, !tbaa !176
  %45 = icmp sge i32 %43, %44
  %46 = load ptr, ptr @cfun, align 8, !tbaa !166
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !170
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !178
  %51 = icmp sgt i32 %50, %44
  %52 = select i1 %45, i1 true, i1 %51
  br i1 %52, label %53, label %80, !prof !473

53:                                               ; preds = %35
  %54 = add nsw i32 %43, 1
  %55 = tail call i32 @llvm.smax.i32(i32 %50, i32 %54)
  %56 = sdiv i32 %55, 4
  %57 = mul i32 %56, 5
  %58 = add i32 %57, 5
  %59 = load ptr, ptr @bbd, align 8, !tbaa !166
  %60 = sext i32 %58 to i64
  %61 = shl nsw i64 %60, 5
  %62 = tail call ptr @xrealloc(ptr noundef %59, i64 noundef %61) #12
  store ptr %62, ptr @bbd, align 8, !tbaa !166
  %63 = load i32, ptr @array_size, align 4, !tbaa !176
  %64 = icmp slt i32 %63, %58
  br i1 %64, label %65, label %75, !prof !474

65:                                               ; preds = %53
  %66 = sext i32 %63 to i64
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi i64 [ %66, %65 ], [ %73, %67 ]
  %69 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %62, i64 %68
  store i32 -1, ptr %69, align 8, !tbaa !180
  %70 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %62, i64 %68, i32 2
  store i32 -1, ptr %70, align 8, !tbaa !182
  %71 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %62, i64 %68, i32 1
  store i32 -1, ptr %71, align 4, !tbaa !183
  %72 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %62, i64 %68, i32 3
  %73 = add nsw i64 %68, 1
  %74 = icmp eq i64 %73, %60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %72, i8 0, i64 16, i1 false)
  br i1 %74, label %75, label %67, !prof !475, !llvm.loop !476

75:                                               ; preds = %67, %53
  store i32 %58, ptr @array_size, align 4, !tbaa !176
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !166
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78, !prof !477

78:                                               ; preds = %75
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %76, ptr noundef nonnull @.str.18, i32 noundef %58) #13
  br label %80

80:                                               ; preds = %35, %75, %78
  %81 = load ptr, ptr @bbd, align 8, !tbaa !166
  %82 = load i32, ptr %42, align 8, !tbaa !202
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %81, i64 %83, i32 2
  store i32 %3, ptr %84, align 8, !tbaa !182
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !478 !PGOFuncName !479 {
  %2 = load ptr, ptr %0, align 8, !tbaa !347
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #13
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !480 !PGOFuncName !481 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #13, !range !198
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !482

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 645, ptr noundef nonnull @.str.1) #12
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !428
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #13
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !483 !PGOFuncName !484 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !200
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
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_duplicate_computed_gotos() #0 !prof !164 !PGOFuncName !485 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 32), align 8, !tbaa !486
  %2 = tail call zeroext i8 %1() #12
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15, !prof !165

4:                                                ; preds = %0
  %5 = load i32, ptr @optimize, align 4, !tbaa !176
  %6 = icmp sgt i32 %5, 0
  %7 = load i32, ptr @flag_expensive_optimizations, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %15, !prof !498

10:                                               ; preds = %4
  %11 = load ptr, ptr @cfun, align 8, !tbaa !166
  %12 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %11) #12
  %13 = icmp eq i8 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %4, %10, %0
  %16 = phi i8 [ 0, %0 ], [ 0, %4 ], [ %14, %10 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @duplicate_computed_gotos() #0 !prof !164 !PGOFuncName !499 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !170
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !173
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %177, label %9, !prof !175

9:                                                ; preds = %0
  tail call void @cfg_layout_initialize(i32 noundef 0) #12
  %10 = load i32, ptr @uncond_jump_length, align 4, !tbaa !176
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !187

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @get_uncond_jump_length() #13
  store i32 %13, ptr @uncond_jump_length, align 4, !tbaa !176
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %13, %12 ], [ %10, %9 ]
  %16 = load ptr, ptr @compiler_params, align 8, !tbaa !166
  %17 = getelementptr inbounds %struct.param_info, ptr %16, i64 56, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !432
  %19 = mul nsw i32 %18, %15
  %20 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #12
  %21 = load ptr, ptr @cfun, align 8, !tbaa !166
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !170
  %24 = load ptr, ptr %23, align 8, !tbaa !195
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !299
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !250
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %114, label %30, !prof !199

30:                                               ; preds = %14, %106
  %31 = phi ptr [ %112, %106 ], [ %28, %14 ]
  %32 = phi ptr [ %107, %106 ], [ %26, %14 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !299
  %35 = icmp eq ptr %34, %31
  br i1 %35, label %38, label %36, !prof !500

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 2
  store ptr %34, ptr %37, align 8, !tbaa !245
  br label %38

38:                                               ; preds = %36, %30
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !225
  %41 = getelementptr inbounds %struct.rtl_bb_info, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !435
  %43 = tail call i32 @computed_jump_p(ptr noundef %42) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %106, label %45, !prof !501

45:                                               ; preds = %38
  %46 = load ptr, ptr %39, align 8, !tbaa !225
  %47 = getelementptr inbounds %struct.rtl_bb_info, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !435
  %49 = tail call ptr @find_reg_note(ptr noundef %48, i32 noundef 29, ptr noundef null) #12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %106

51:                                               ; preds = %45
  %52 = tail call zeroext i8 @can_duplicate_block_p(ptr noundef nonnull %32) #12
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %106, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %39, align 8, !tbaa !225
  %56 = load ptr, ptr %55, align 8, !tbaa !225
  %57 = icmp eq ptr %56, null
  br i1 %57, label %81, label %58

58:                                               ; preds = %54, %76
  %59 = phi ptr [ %79, %76 ], [ %56, %54 ]
  %60 = phi i32 [ %77, %76 ], [ 0, %54 ]
  %61 = load ptr, ptr %39, align 8, !tbaa !225
  %62 = getelementptr inbounds %struct.rtl_bb_info, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !435
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 0, i64 2
  %65 = load ptr, ptr %64, align 8, !tbaa !225
  %66 = icmp eq ptr %59, %65
  br i1 %66, label %81, label %67

67:                                               ; preds = %58
  %68 = load i32, ptr %59, align 8
  %69 = and i32 %68, 65535
  %70 = add nsw i32 %69, -7
  %71 = icmp ult i32 %70, 4
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = tail call i32 @get_attr_min_length(ptr noundef nonnull %59) #12
  %74 = add nsw i32 %73, %60
  %75 = icmp sgt i32 %74, %19
  br i1 %75, label %81, label %76

76:                                               ; preds = %67, %72
  %77 = phi i32 [ %74, %72 ], [ %60, %67 ]
  %78 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 2
  %79 = load ptr, ptr %78, align 8, !tbaa !225
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %58, !llvm.loop !502

81:                                               ; preds = %58, %72, %76, %54
  %82 = phi i32 [ 0, %54 ], [ %77, %76 ], [ %74, %72 ], [ %60, %58 ]
  %83 = icmp sgt i32 %82, %19
  br i1 %83, label %106, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds i8, ptr %2, i64 8
  %86 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %32) #13
  store i32 0, ptr %2, align 8, !tbaa.struct !196
  store ptr %86, ptr %85, align 8, !tbaa.struct !197
  %87 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %86, ptr noundef nonnull %1) #13, !range !198
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %84, %89
  %90 = phi i32 [ %94, %89 ], [ 0, %84 ]
  %91 = load ptr, ptr %1, align 8, !tbaa !166
  %92 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 7
  %93 = load i32, ptr %92, align 8, !tbaa !231
  %94 = or i32 %93, %90
  call fastcc void @ei_next(ptr noundef nonnull %2) #13
  %95 = load i32, ptr %2, align 8
  %96 = load ptr, ptr %85, align 8
  %97 = call fastcc zeroext i8 @ei_cond(i32 %95, ptr %96, ptr noundef nonnull %1) #13, !range !198
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %89, !llvm.loop !503

99:                                               ; preds = %89
  %100 = and i32 %94, 14
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %84, %99
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %104 = load i32, ptr %103, align 8, !tbaa !202
  %105 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %20, i32 noundef %104) #12
  br label %106

106:                                              ; preds = %99, %81, %45, %51, %38, %102
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #11
  %107 = load ptr, ptr %33, align 8, !tbaa !299
  %108 = load ptr, ptr @cfun, align 8, !tbaa !166
  %109 = getelementptr inbounds %struct.function, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !170
  %111 = getelementptr inbounds %struct.control_flow_graph, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !250
  %113 = icmp eq ptr %107, %112
  br i1 %113, label %114, label %30, !prof !504, !llvm.loop !505

114:                                              ; preds = %106, %14
  %115 = phi ptr [ %26, %14 ], [ %107, %106 ]
  %116 = phi ptr [ %23, %14 ], [ %110, %106 ]
  %117 = load ptr, ptr %20, align 8, !tbaa !506
  %118 = icmp eq ptr %117, null
  br i1 %118, label %176, label %119, !prof !188

119:                                              ; preds = %114
  %120 = load ptr, ptr %116, align 8, !tbaa !195
  %121 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 6
  %122 = load ptr, ptr %121, align 8, !tbaa !299
  %123 = icmp eq ptr %122, %115
  br i1 %123, label %176, label %124

124:                                              ; preds = %119, %167
  %125 = phi ptr [ %169, %167 ], [ %122, %119 ]
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 7
  %127 = load ptr, ptr %126, align 8, !tbaa !225
  %128 = getelementptr inbounds %struct.rtl_bb_info, ptr %127, i64 0, i32 4
  %129 = load i32, ptr %128, align 8, !tbaa !333
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %167

131:                                              ; preds = %124
  store i32 1, ptr %128, align 8, !tbaa !333
  %132 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %125) #13, !range !198
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %167, label %134

134:                                              ; preds = %131
  %135 = tail call fastcc ptr @single_succ(ptr noundef nonnull %125) #13
  %136 = load ptr, ptr @cfun, align 8, !tbaa !166
  %137 = getelementptr inbounds %struct.function, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !170
  %139 = getelementptr inbounds %struct.control_flow_graph, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !250
  %141 = icmp eq ptr %135, %140
  br i1 %141, label %167, label %142

142:                                              ; preds = %134
  %143 = tail call fastcc ptr @single_succ(ptr noundef nonnull %125) #13
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 6
  %145 = load ptr, ptr %144, align 8, !tbaa !299
  %146 = icmp eq ptr %143, %145
  br i1 %146, label %167, label %147

147:                                              ; preds = %142
  %148 = tail call fastcc ptr @single_succ(ptr noundef nonnull %125) #13
  %149 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %148) #13, !range !198
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %147
  %152 = tail call fastcc ptr @single_succ(ptr noundef nonnull %125) #13
  %153 = getelementptr inbounds %struct.basic_block_def, ptr %152, i64 0, i32 9
  %154 = load i32, ptr %153, align 8, !tbaa !202
  %155 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %20, i32 noundef %154) #12
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %167, label %157

157:                                              ; preds = %151
  %158 = tail call fastcc ptr @single_succ(ptr noundef nonnull %125) #13
  %159 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %125) #13
  %160 = tail call ptr @duplicate_block(ptr noundef %158, ptr noundef %159, ptr noundef nonnull %125) #12
  %161 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !245
  %163 = getelementptr inbounds %struct.basic_block_def, ptr %160, i64 0, i32 2
  store ptr %162, ptr %163, align 8, !tbaa !245
  store ptr %160, ptr %161, align 8, !tbaa !245
  %164 = getelementptr inbounds %struct.basic_block_def, ptr %160, i64 0, i32 7
  %165 = load ptr, ptr %164, align 8, !tbaa !225
  %166 = getelementptr inbounds %struct.rtl_bb_info, ptr %165, i64 0, i32 4
  store i32 1, ptr %166, align 8, !tbaa !333
  br label %167

167:                                              ; preds = %151, %131, %134, %142, %147, %124, %157
  %168 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 6
  %169 = load ptr, ptr %168, align 8, !tbaa !299
  %170 = load ptr, ptr @cfun, align 8, !tbaa !166
  %171 = getelementptr inbounds %struct.function, ptr %170, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !170
  %173 = getelementptr inbounds %struct.control_flow_graph, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !250
  %175 = icmp eq ptr %169, %174
  br i1 %175, label %176, label %124, !llvm.loop !508

176:                                              ; preds = %167, %119, %114
  tail call void @cfg_layout_finalize() #12
  tail call void @bitmap_obstack_free(ptr noundef nonnull %20) #12
  br label %177

177:                                              ; preds = %0, %176
  ret i32 0
}

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

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_handle_reorder_blocks() #0 !prof !164 !PGOFuncName !509 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 32), align 8, !tbaa !486
  %2 = tail call zeroext i8 %1() #12
  %3 = icmp eq i8 %2, 0
  %4 = load i32, ptr @optimize, align 4
  %5 = icmp sgt i32 %4, 0
  %6 = select i1 %3, i1 %5, i1 false, !prof !165
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_reorder_blocks() #0 !prof !164 !PGOFuncName !510 {
  tail call void @cfg_layout_initialize(i32 noundef 1) #12
  %1 = load i32, ptr @flag_reorder_blocks, align 4, !tbaa !176
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6, !prof !511

3:                                                ; preds = %0
  %4 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !176
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3, %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !166
  %8 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %7) #12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10, !prof !511

10:                                               ; preds = %6
  tail call void @reorder_basic_blocks() #13
  %11 = tail call zeroext i8 @cleanup_cfg(i32 noundef 1) #12
  br label %12

12:                                               ; preds = %10, %6, %3
  %13 = load ptr, ptr @cfun, align 8, !tbaa !166
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !170
  %16 = load ptr, ptr %15, align 8, !tbaa !195
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !250
  %20 = load ptr, ptr %17, align 8, !tbaa !299
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %33, label %22, !prof !512

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !299
  %25 = icmp eq ptr %24, %19
  br i1 %25, label %33, label %26, !prof !512

26:                                               ; preds = %22, %26
  %27 = phi ptr [ %31, %26 ], [ %24, %22 ]
  %28 = phi ptr [ %27, %26 ], [ %20, %22 ]
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 2
  store ptr %27, ptr %29, align 8, !tbaa !245
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !299
  %32 = icmp eq ptr %31, %19
  br i1 %32, label %33, label %26, !prof !513

33:                                               ; preds = %26, %22, %12
  tail call void @cfg_layout_finalize() #12
  tail call fastcc void @insert_section_boundary_note() #13
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_section_boundary_note() unnamed_addr #0 !prof !164 !PGOFuncName !514 {
  %1 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !176
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %29, label %3, !prof !165

3:                                                ; preds = %0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !166
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !170
  %7 = load ptr, ptr %6, align 8, !tbaa !195
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !250
  br label %10

10:                                               ; preds = %16, %3
  %11 = phi ptr [ %7, %3 ], [ %14, %16 ]
  %12 = phi i32 [ 0, %3 ], [ %21, %16 ]
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !299
  %15 = icmp eq ptr %14, %9
  br i1 %15, label %29, label %16

16:                                               ; preds = %10
  %17 = icmp eq i32 %12, 0
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !221
  %20 = and i32 %19, 96
  %21 = select i1 %17, i32 %20, i32 %12
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %10, label %23, !llvm.loop !515

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !225
  %26 = load ptr, ptr %25, align 8, !tbaa !516
  %27 = tail call ptr @emit_note_before(i32 noundef 11, ptr noundef %26) #12
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %28, align 8, !tbaa !225
  br label %29

29:                                               ; preds = %10, %23, %0
  ret void
}

; Function Attrs: optsize
declare ptr @emit_note_before(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_partition_blocks() #7 !prof !164 !PGOFuncName !517 {
  %1 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !176
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %12, label %3, !prof !165

3:                                                ; preds = %0
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !166
  %5 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load i8, ptr @user_defined_section_attribute, align 1, !tbaa !225
  %10 = icmp eq i8 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %8, %3, %0
  %13 = phi i8 [ 0, %3 ], [ 0, %0 ], [ %11, %8 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_partition_blocks() #0 !prof !297 !PGOFuncName !518 {
  tail call fastcc void @partition_hot_cold_basic_blocks() #13
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @partition_hot_cold_basic_blocks() unnamed_addr #0 !prof !297 !PGOFuncName !519 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = load ptr, ptr @cfun, align 8, !tbaa !166
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !170
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !178
  %9 = shl nsw i32 %8, 1
  store i32 %9, ptr %3, align 4, !tbaa !176
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !173
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %21, label %13

13:                                               ; preds = %0
  %14 = sext i32 %9 to i64
  %15 = tail call ptr @xcalloc(i64 noundef %14, i64 noundef 8) #12
  store ptr %15, ptr %1, align 8, !tbaa !166
  call fastcc void @find_rarely_executed_basic_blocks_and_crossing_edges(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  %16 = load i32, ptr %2, align 4, !tbaa !176
  %17 = icmp sgt i32 %16, 0
  %18 = load ptr, ptr %1, align 8, !tbaa !166
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
define internal fastcc void @find_rarely_executed_basic_blocks_and_crossing_edges(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !297 !PGOFuncName !520 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %6 = load ptr, ptr @cfun, align 8, !tbaa !166
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !170
  %9 = load ptr, ptr %8, align 8, !tbaa !195
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !299
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !250
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %106, label %15

15:                                               ; preds = %3, %15
  %16 = phi ptr [ %25, %15 ], [ %11, %3 ]
  %17 = tail call zeroext i8 @probably_never_executed_bb_p(ptr noundef %16) #12
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !221
  %21 = and i32 %20, -97
  %22 = select i1 %18, i32 32, i32 64
  %23 = or disjoint i32 %21, %22
  store i32 %23, ptr %19, align 8, !tbaa !221
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !299
  %26 = load ptr, ptr @cfun, align 8, !tbaa !166
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !170
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !250
  %31 = icmp eq ptr %25, %30
  br i1 %31, label %32, label %15, !llvm.loop !521

32:                                               ; preds = %15
  %33 = load ptr, ptr %28, align 8, !tbaa !195
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !299
  %36 = icmp eq ptr %35, %25
  br i1 %36, label %106, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, ptr %5, i64 8
  br label %49

39:                                               ; preds = %100, %49
  %40 = phi i32 [ %51, %49 ], [ %101, %100 ]
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !299
  %43 = load ptr, ptr @cfun, align 8, !tbaa !166
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !170
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !250
  %48 = icmp eq ptr %42, %47
  br i1 %48, label %106, label %49, !llvm.loop !522

49:                                               ; preds = %37, %39
  %50 = phi ptr [ %35, %37 ], [ %42, %39 ]
  %51 = phi i32 [ 0, %37 ], [ %40, %39 ]
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 1
  %53 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %52) #13
  store i32 0, ptr %5, align 8, !tbaa.struct !196
  store ptr %53, ptr %38, align 8, !tbaa.struct !197
  %54 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %53, ptr noundef nonnull %4) #13, !range !198
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %39, label %56

56:                                               ; preds = %49, %100
  %57 = phi i32 [ %101, %100 ], [ %51, %49 ]
  %58 = load ptr, ptr %4, align 8, !tbaa !166
  %59 = load ptr, ptr %58, align 8, !tbaa !229
  %60 = load ptr, ptr @cfun, align 8, !tbaa !166
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !170
  %63 = load ptr, ptr %62, align 8, !tbaa !195
  %64 = icmp eq ptr %59, %63
  br i1 %64, label %96, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !200
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !250
  %70 = icmp eq ptr %67, %69
  br i1 %70, label %96, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 13
  %73 = load i32, ptr %72, align 8, !tbaa !221
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 13
  %75 = load i32, ptr %74, align 8, !tbaa !221
  %76 = xor i32 %75, %73
  %77 = and i32 %76, 96
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 7
  %81 = load i32, ptr %80, align 8, !tbaa !231
  %82 = or i32 %81, 8192
  store i32 %82, ptr %80, align 8, !tbaa !231
  %83 = load i32, ptr %2, align 4, !tbaa !176
  %84 = icmp eq i32 %57, %83
  %85 = load ptr, ptr %0, align 8, !tbaa !166
  br i1 %84, label %86, label %91

86:                                               ; preds = %79
  %87 = shl nsw i32 %57, 1
  store i32 %87, ptr %2, align 4, !tbaa !176
  %88 = sext i32 %87 to i64
  %89 = shl nsw i64 %88, 3
  %90 = tail call ptr @xrealloc(ptr noundef %85, i64 noundef %89) #12
  store ptr %90, ptr %0, align 8, !tbaa !166
  br label %91

91:                                               ; preds = %86, %79
  %92 = phi ptr [ %90, %86 ], [ %85, %79 ]
  %93 = add nsw i32 %57, 1
  %94 = sext i32 %57 to i64
  %95 = getelementptr inbounds ptr, ptr %92, i64 %94
  store ptr %58, ptr %95, align 8, !tbaa !166
  br label %100

96:                                               ; preds = %71, %65, %56
  %97 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 7
  %98 = load i32, ptr %97, align 8, !tbaa !231
  %99 = and i32 %98, -8193
  store i32 %99, ptr %97, align 8, !tbaa !231
  br label %100

100:                                              ; preds = %91, %96
  %101 = phi i32 [ %93, %91 ], [ %57, %96 ]
  call fastcc void @ei_next(ptr noundef nonnull %5) #13
  %102 = load i32, ptr %5, align 8
  %103 = load ptr, ptr %38, align 8
  %104 = call fastcc zeroext i8 @ei_cond(i32 %102, ptr %103, ptr noundef nonnull %4) #13, !range !198
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %39, label %56, !llvm.loop !523

106:                                              ; preds = %39, %3, %32
  %107 = phi i32 [ 0, %32 ], [ 0, %3 ], [ %40, %39 ]
  store i32 %107, ptr %1, align 4, !tbaa !176
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fix_edges_for_rarely_executed_code(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !297 !PGOFuncName !524 {
  tail call fastcc void @add_labels_and_missing_jumps(ptr noundef %0, i32 noundef %1) #13
  tail call fastcc void @fix_up_fall_thru_edges() #13
  tail call fastcc void @add_reg_crossing_jump_notes() #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_labels_and_missing_jumps(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !297 !PGOFuncName !525 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %69

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %66
  %7 = phi i64 [ 0, %4 ], [ %67, %66 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !166
  %10 = icmp eq ptr %9, null
  br i1 %10, label %66, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %9, align 8, !tbaa !229
  %13 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !200
  %15 = icmp eq ptr %14, null
  br i1 %15, label %66, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @cfun, align 8, !tbaa !166
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !170
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !250
  %22 = icmp eq ptr %14, %21
  br i1 %22, label %66, label %23

23:                                               ; preds = %16
  %24 = tail call ptr @block_label(ptr noundef nonnull %14) #12
  %25 = icmp eq ptr %12, null
  br i1 %25, label %66, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr @cfun, align 8, !tbaa !166
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !170
  %30 = load ptr, ptr %29, align 8, !tbaa !195
  %31 = icmp eq ptr %12, %30
  br i1 %31, label %66, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !225
  %35 = getelementptr inbounds %struct.rtl_bb_info, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !435
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 9
  br i1 %39, label %66, label %40

40:                                               ; preds = %32
  %41 = tail call zeroext i8 @block_ends_with_call_p(ptr noundef nonnull %12) #12
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %40
  %44 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %12) #13, !range !198
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1299, ptr noundef nonnull @.str.1) #12
  br label %47

47:                                               ; preds = %43, %46
  %48 = tail call ptr @block_label(ptr noundef nonnull %14) #12
  %49 = tail call ptr @gen_jump(ptr noundef %48) #12
  %50 = load ptr, ptr %33, align 8, !tbaa !225
  %51 = getelementptr inbounds %struct.rtl_bb_info, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !435
  %53 = tail call ptr @emit_jump_insn_after(ptr noundef %49, ptr noundef %52) #12
  %54 = tail call ptr @emit_barrier_after(ptr noundef %53) #12
  %55 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %48, ptr %55, align 8, !tbaa !225
  %56 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !225
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !225
  %59 = tail call ptr @unlink_insn_chain(ptr noundef %54, ptr noundef %54) #12
  %60 = load ptr, ptr %33, align 8, !tbaa !225
  %61 = getelementptr inbounds %struct.rtl_bb_info, ptr %60, i64 0, i32 3
  store ptr %59, ptr %61, align 8, !tbaa !526
  %62 = load ptr, ptr %8, align 8, !tbaa !166
  %63 = getelementptr inbounds %struct.edge_def, ptr %62, i64 0, i32 7
  %64 = load i32, ptr %63, align 8, !tbaa !231
  %65 = and i32 %64, -2
  store i32 %65, ptr %63, align 8, !tbaa !231
  br label %66

66:                                               ; preds = %6, %23, %26, %47, %40, %32, %16, %11
  %67 = add nuw nsw i64 %7, 1
  %68 = icmp eq i64 %67, %5
  br i1 %68, label %69, label %6, !llvm.loop !527

69:                                               ; preds = %66, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fix_up_fall_thru_edges() unnamed_addr #0 !prof !297 !PGOFuncName !528 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !170
  %6 = load ptr, ptr %5, align 8, !tbaa !195
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !299
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !250
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
  %19 = load ptr, ptr %18, align 8, !tbaa !428
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
  %32 = load i32, ptr %31, align 8, !tbaa !231
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %84

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !231
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %56, label %84

40:                                               ; preds = %25
  %41 = icmp eq ptr %26, null
  br i1 %41, label %176, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !231
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %176, label %80

47:                                               ; preds = %30
  %48 = icmp eq ptr %26, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !231
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
  store i32 0, ptr %2, align 8, !tbaa.struct !196
  store ptr %60, ptr %13, align 8, !tbaa.struct !197
  %61 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %60, ptr noundef nonnull %1) #13, !range !198
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %59, %69
  %64 = load ptr, ptr %1, align 8, !tbaa !166
  %65 = getelementptr inbounds %struct.edge_def, ptr %64, i64 0, i32 7
  %66 = load i32, ptr %65, align 8, !tbaa !231
  %67 = and i32 %66, 64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  call fastcc void @ei_next(ptr noundef nonnull %2) #13
  %70 = load i32, ptr %2, align 8
  %71 = load ptr, ptr %13, align 8
  %72 = call fastcc zeroext i8 @ei_cond(i32 %70, ptr %71, ptr noundef nonnull %1) #13, !range !198
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %63, !llvm.loop !529

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
  %83 = load ptr, ptr @cfun, align 8, !tbaa !166
  br label %84

84:                                               ; preds = %35, %80, %30
  %85 = phi ptr [ %83, %80 ], [ %15, %30 ], [ %15, %35 ]
  %86 = phi ptr [ %81, %80 ], [ %23, %30 ], [ %23, %35 ]
  %87 = phi ptr [ %82, %80 ], [ %26, %30 ], [ null, %35 ]
  %88 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !200
  %90 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !170
  %92 = getelementptr inbounds %struct.control_flow_graph, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !250
  %94 = icmp eq ptr %89, %93
  br i1 %94, label %176, label %95

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 7
  %97 = load i32, ptr %96, align 8, !tbaa !231
  %98 = and i32 %97, 8192
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %176, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 7
  %102 = load ptr, ptr %101, align 8, !tbaa !225
  %103 = getelementptr inbounds %struct.rtl_bb_info, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !435
  %105 = icmp eq ptr %87, null
  br i1 %105, label %138, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 7
  %108 = load i32, ptr %107, align 8, !tbaa !231
  %109 = and i32 %108, 8192
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %138

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !245
  %114 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !200
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
  %130 = load i32, ptr %96, align 8, !tbaa !231
  %131 = and i32 %130, -2
  store i32 %131, ptr %96, align 8, !tbaa !231
  %132 = load i32, ptr %107, align 8, !tbaa !231
  %133 = or i32 %132, 1
  store i32 %133, ptr %107, align 8, !tbaa !231
  tail call void @update_br_prob_note(ptr noundef nonnull %16) #12
  %134 = load i32, ptr %96, align 8, !tbaa !231
  %135 = or i32 %134, 8192
  store i32 %135, ptr %96, align 8, !tbaa !231
  %136 = load i32, ptr %107, align 8, !tbaa !231
  %137 = and i32 %136, -8193
  store i32 %137, ptr %107, align 8, !tbaa !231
  br label %176

138:                                              ; preds = %117, %120, %106, %100, %126, %111
  %139 = load i32, ptr %96, align 8, !tbaa !231
  %140 = and i32 %139, -8193
  store i32 %140, ptr %96, align 8, !tbaa !231
  %141 = tail call ptr @force_nonfallthru(ptr noundef nonnull %86) #12
  %142 = icmp eq ptr %141, null
  br i1 %142, label %166, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !245
  %146 = getelementptr inbounds %struct.basic_block_def, ptr %141, i64 0, i32 2
  store ptr %145, ptr %146, align 8, !tbaa !245
  store ptr %141, ptr %144, align 8, !tbaa !245
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %141, i64 0, i32 13
  %148 = load i32, ptr %147, align 8, !tbaa !221
  %149 = and i32 %148, -97
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 13
  %151 = load i32, ptr %150, align 8, !tbaa !221
  %152 = and i32 %151, 96
  %153 = or disjoint i32 %152, %149
  store i32 %153, ptr %147, align 8, !tbaa !221
  %154 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %141) #13
  %155 = getelementptr inbounds %struct.edge_def, ptr %154, i64 0, i32 7
  %156 = load i32, ptr %155, align 8, !tbaa !231
  %157 = or i32 %156, 8192
  store i32 %157, ptr %155, align 8, !tbaa !231
  %158 = getelementptr inbounds %struct.basic_block_def, ptr %141, i64 0, i32 7
  %159 = load ptr, ptr %158, align 8, !tbaa !225
  %160 = getelementptr inbounds %struct.rtl_bb_info, ptr %159, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !435
  %162 = tail call ptr @emit_barrier_after(ptr noundef %161) #12
  %163 = tail call ptr @unlink_insn_chain(ptr noundef %162, ptr noundef %162) #12
  %164 = load ptr, ptr %158, align 8, !tbaa !225
  %165 = getelementptr inbounds %struct.rtl_bb_info, ptr %164, i64 0, i32 3
  store ptr %163, ptr %165, align 8, !tbaa !526
  br label %176

166:                                              ; preds = %138
  %167 = load i32, ptr %96, align 8, !tbaa !231
  %168 = or i32 %167, 8192
  store i32 %168, ptr %96, align 8, !tbaa !231
  %169 = load ptr, ptr %101, align 8, !tbaa !225
  %170 = getelementptr inbounds %struct.rtl_bb_info, ptr %169, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !435
  %172 = tail call ptr @emit_barrier_after(ptr noundef %171) #12
  %173 = tail call ptr @unlink_insn_chain(ptr noundef %172, ptr noundef %172) #12
  %174 = load ptr, ptr %101, align 8, !tbaa !225
  %175 = getelementptr inbounds %struct.rtl_bb_info, ptr %174, i64 0, i32 3
  store ptr %173, ptr %175, align 8, !tbaa !526
  br label %176

176:                                              ; preds = %42, %28, %40, %14, %56, %129, %76, %84, %166, %143, %95
  %177 = phi ptr [ %86, %129 ], [ %87, %143 ], [ %87, %166 ], [ %87, %95 ], [ %87, %84 ], [ %77, %76 ], [ %17, %56 ], [ %17, %14 ], [ %17, %40 ], [ %17, %28 ], [ %17, %42 ]
  %178 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %179 = load ptr, ptr %178, align 8, !tbaa !299
  %180 = load ptr, ptr @cfun, align 8, !tbaa !166
  %181 = getelementptr inbounds %struct.function, ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !170
  %183 = getelementptr inbounds %struct.control_flow_graph, ptr %182, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !250
  %185 = icmp eq ptr %179, %184
  br i1 %185, label %186, label %14, !llvm.loop !530

186:                                              ; preds = %176, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_reg_crossing_jump_notes() unnamed_addr #0 !prof !297 !PGOFuncName !531 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %3 = load ptr, ptr @cfun, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !170
  %6 = load ptr, ptr %5, align 8, !tbaa !195
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !299
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !250
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %50, label %12

12:                                               ; preds = %0
  %13 = getelementptr inbounds i8, ptr %2, i64 8
  br label %23

14:                                               ; preds = %45, %23
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !299
  %17 = load ptr, ptr @cfun, align 8, !tbaa !166
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !170
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !250
  %22 = icmp eq ptr %16, %21
  br i1 %22, label %50, label %23, !llvm.loop !532

23:                                               ; preds = %12, %14
  %24 = phi ptr [ %8, %12 ], [ %16, %14 ]
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 1
  %26 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %25) #13
  store i32 0, ptr %2, align 8, !tbaa.struct !196
  store ptr %26, ptr %13, align 8, !tbaa.struct !197
  %27 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %26, ptr noundef nonnull %1) #13, !range !198
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %14, label %29

29:                                               ; preds = %23, %45
  %30 = load ptr, ptr %1, align 8, !tbaa !166
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !231
  %33 = and i32 %32, 8192
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %30, align 8, !tbaa !229
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !225
  %39 = getelementptr inbounds %struct.rtl_bb_info, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !435
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
  %48 = call fastcc zeroext i8 @ei_cond(i32 %46, ptr %47, ptr noundef nonnull %1) #13, !range !198
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %14, label %29, !llvm.loop !533

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
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!163}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!36 = !{ptr @reorder_basic_blocks, ptr @current_ir_type, i64 6652}
!37 = !{ptr @reorder_basic_blocks, ptr @fancy_abort, i64 3}
!38 = !{ptr @reorder_basic_blocks, ptr @set_edge_can_fallthru_flag, i64 4948}
!39 = !{ptr @reorder_basic_blocks, ptr @mark_dfs_back_edges, i64 4948}
!40 = !{ptr @reorder_basic_blocks, ptr @get_uncond_jump_length, i64 2}
!41 = !{ptr @reorder_basic_blocks, ptr @xmalloc, i64 9896}
!42 = !{ptr @reorder_basic_blocks, ptr @find_traces, i64 4948}
!43 = !{ptr @reorder_basic_blocks, ptr @connect_traces, i64 4948}
!44 = !{ptr @reorder_basic_blocks, ptr @free, i64 9896}
!45 = !{ptr @reorder_basic_blocks, ptr @relink_block_chain, i64 4948}
!46 = !{ptr @reorder_basic_blocks, ptr @dump_flow_info, i64 1}
!47 = !{ptr @reorder_basic_blocks, ptr @verify_hot_cold_block_grouping, i64 1}
!48 = !{ptr @get_uncond_jump_length, ptr @gen_label_rtx, i64 1}
!49 = !{ptr @get_uncond_jump_length, ptr @get_insns, i64 1}
!50 = !{ptr @get_uncond_jump_length, ptr @emit_label_before, i64 1}
!51 = !{ptr @get_uncond_jump_length, ptr @gen_jump, i64 1}
!52 = !{ptr @get_uncond_jump_length, ptr @emit_jump_insn, i64 1}
!53 = !{ptr @get_uncond_jump_length, ptr @get_attr_min_length, i64 1}
!54 = !{ptr @get_uncond_jump_length, ptr @delete_insn, i64 2}
!55 = !{ptr @find_traces, ptr @fibheap_new, i64 4948}
!56 = !{ptr @find_traces, ptr @ei_start_1, i64 4948}
!57 = !{ptr @find_traces, ptr @ei_cond, i64 9896}
!58 = !{ptr @find_traces, ptr @bb_to_key, i64 4948}
!59 = !{ptr @find_traces, ptr @fibheap_insert, i64 4948}
!60 = !{ptr @find_traces, ptr @ei_next, i64 4948}
!61 = !{ptr @find_traces, ptr @fprintf, i64 441}
!62 = !{ptr @find_traces, ptr @find_traces_1_round, i64 19789}
!63 = !{ptr @find_traces, ptr @fibheap_delete, i64 4948}
!64 = !{ptr @find_traces, ptr @fflush, i64 1}
!65 = !{ptr @connect_traces, ptr @xcalloc, i64 4948}
!66 = !{ptr @connect_traces, ptr @ei_start_1, i64 4090551}
!67 = !{ptr @connect_traces, ptr @ei_cond, i64 10049018}
!68 = !{ptr @connect_traces, ptr @ei_next, i64 5958467}
!69 = !{ptr @connect_traces, ptr @fprintf, i64 141}
!70 = !{ptr @connect_traces, ptr @optimize_edge_for_speed_p, i64 445581}
!71 = !{ptr @connect_traces, ptr @copy_bb_p, i64 445581}
!72 = !{ptr @connect_traces, ptr @fputc, i64 28}
!73 = !{ptr @connect_traces, ptr @fwrite, i64 18}
!74 = !{ptr @connect_traces, ptr @copy_bb, i64 392692}
!75 = !{ptr @connect_traces, ptr @fflush, i64 1}
!76 = !{ptr @connect_traces, ptr @fancy_abort, i64 1}
!77 = !{ptr @connect_traces, ptr @free, i64 4948}
!78 = !{ptr @ei_cond, ptr @ei_end_p, i64 3097359}
!79 = !{ptr @ei_cond, ptr @ei_edge, i64 1944751}
!80 = !{ptr @bb_to_key, ptr @probably_never_executed_bb_p, i64 177029}
!81 = !{ptr @bb_to_key, ptr @ei_start_1, i64 177028}
!82 = !{ptr @bb_to_key, ptr @ei_cond, i64 550389}
!83 = !{ptr @bb_to_key, ptr @ei_next, i64 373361}
!84 = !{ptr @ei_next, ptr @ei_container, i64 3886905}
!85 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 1943453}
!86 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!87 = !{ptr @find_traces_1_round, ptr @fibheap_new, i64 19792}
!88 = !{ptr @find_traces_1_round, ptr @fibheap_empty, i64 119650}
!89 = !{ptr @find_traces_1_round, ptr @fibheap_extract_min, i64 99858}
!90 = !{ptr @find_traces_1_round, ptr @fprintf, i64 8}
!91 = !{ptr @find_traces_1_round, ptr @push_to_next_round_p, i64 165325}
!92 = !{ptr @find_traces_1_round, ptr @bb_to_key, i64 172071}
!93 = !{ptr @find_traces_1_round, ptr @fibheap_insert, i64 113041}
!94 = !{ptr @find_traces_1_round, ptr @mark_bb_visited, i64 235272}
!95 = !{ptr @find_traces_1_round, ptr @block_ends_with_call_p, i64 235272}
!96 = !{ptr @find_traces_1_round, ptr @ei_start_1, i64 322112}
!97 = !{ptr @find_traces_1_round, ptr @ei_cond, i64 1885340}
!98 = !{ptr @find_traces_1_round, ptr @fancy_abort, i64 1}
!99 = !{ptr @find_traces_1_round, ptr @better_edge_p, i64 194630}
!100 = !{ptr @find_traces_1_round, ptr @ei_next, i64 1179524}
!101 = !{ptr @find_traces_1_round, ptr @VEC_edge_base_length, i64 159620}
!102 = !{ptr @find_traces_1_round, ptr @copy_bb_p, i64 70487}
!103 = !{ptr @find_traces_1_round, ptr @fibheap_replace_key, i64 36665}
!104 = !{ptr @find_traces_1_round, ptr @rotate_loop, i64 6824}
!105 = !{ptr @find_traces_1_round, ptr @single_succ_p, i64 41665}
!106 = !{ptr @find_traces_1_round, ptr @optimize_edge_for_speed_p, i64 894}
!107 = !{ptr @find_traces_1_round, ptr @copy_bb, i64 120}
!108 = !{ptr @find_traces_1_round, ptr @single_pred_p, i64 81712}
!109 = !{ptr @find_traces_1_round, ptr @single_succ_edge, i64 35642}
!110 = !{ptr @find_traces_1_round, ptr @single_succ, i64 17613}
!111 = !{ptr @find_traces_1_round, ptr @fibheap_delete, i64 19792}
!112 = !{ptr @ei_end_p, ptr @ei_container, i64 6194717}
!113 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 3097359}
!114 = !{ptr @ei_edge, ptr @ei_container, i64 3889501}
!115 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 1944751}
!116 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!117 = !{ptr @push_to_next_round_p, ptr @probably_never_executed_bb_p, i64 121617}
!118 = !{ptr @mark_bb_visited, ptr @fibheap_delete_node, i64 18136}
!119 = !{ptr @copy_bb_p, ptr @VEC_edge_base_length, i64 171987}
!120 = !{ptr @copy_bb_p, ptr @can_duplicate_block_p, i64 85929}
!121 = !{ptr @copy_bb_p, ptr @optimize_bb_for_speed_p, i64 6286}
!122 = !{ptr @copy_bb_p, ptr @get_attr_min_length, i64 442626}
!123 = !{ptr @copy_bb_p, ptr @fprintf, i64 1}
!124 = !{ptr @rotate_loop, ptr @ei_start_1, i64 22994}
!125 = !{ptr @rotate_loop, ptr @ei_cond, i64 64260}
!126 = !{ptr @rotate_loop, ptr @ei_next, i64 41266}
!127 = !{ptr @rotate_loop, ptr @single_succ_p, i64 6454}
!128 = !{ptr @rotate_loop, ptr @single_succ, i64 4382}
!129 = !{ptr @rotate_loop, ptr @any_condjump_p, i64 4382}
!130 = !{ptr @rotate_loop, ptr @copy_bb_p, i64 4375}
!131 = !{ptr @rotate_loop, ptr @find_reg_note, i64 1}
!132 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 105321}
!133 = !{ptr @copy_bb, ptr @duplicate_block, i64 5642}
!134 = !{ptr @copy_bb, ptr @fancy_abort, i64 2}
!135 = !{ptr @copy_bb, ptr @fprintf, i64 2}
!136 = !{ptr @copy_bb, ptr @xrealloc, i64 15}
!137 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 81325}
!138 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 57391}
!139 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!140 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 57391}
!141 = !{ptr @single_succ, ptr @single_succ_edge, i64 21916}
!142 = !{ptr @gate_duplicate_computed_gotos, ptr @optimize_function_for_size_p, i64 6649}
!143 = !{ptr @duplicate_computed_gotos, ptr @cfg_layout_initialize, i64 4948}
!144 = !{ptr @duplicate_computed_gotos, ptr @get_uncond_jump_length, i64 1}
!145 = !{ptr @duplicate_computed_gotos, ptr @bitmap_obstack_alloc_stat, i64 4948}
!146 = !{ptr @duplicate_computed_gotos, ptr @computed_jump_p, i64 235600}
!147 = !{ptr @duplicate_computed_gotos, ptr @find_reg_note, i64 1}
!148 = !{ptr @duplicate_computed_gotos, ptr @get_attr_min_length, i64 1}
!149 = !{ptr @duplicate_computed_gotos, ptr @ei_next, i64 2}
!150 = !{ptr @duplicate_computed_gotos, ptr @ei_cond, i64 2}
!151 = !{ptr @duplicate_computed_gotos, ptr @single_succ_p, i64 7}
!152 = !{ptr @duplicate_computed_gotos, ptr @single_succ, i64 11}
!153 = !{ptr @duplicate_computed_gotos, ptr @single_pred_p, i64 2}
!154 = !{ptr @duplicate_computed_gotos, ptr @bitmap_bit_p, i64 1}
!155 = !{ptr @duplicate_computed_gotos, ptr @cfg_layout_finalize, i64 4948}
!156 = !{ptr @duplicate_computed_gotos, ptr @bitmap_obstack_free, i64 4948}
!157 = !{ptr @rest_of_handle_reorder_blocks, ptr @cfg_layout_initialize, i64 6652}
!158 = !{ptr @rest_of_handle_reorder_blocks, ptr @optimize_function_for_speed_p, i64 6652}
!159 = !{ptr @rest_of_handle_reorder_blocks, ptr @reorder_basic_blocks, i64 6651}
!160 = !{ptr @rest_of_handle_reorder_blocks, ptr @cleanup_cfg, i64 6651}
!161 = !{ptr @rest_of_handle_reorder_blocks, ptr @cfg_layout_finalize, i64 6652}
!162 = !{ptr @rest_of_handle_reorder_blocks, ptr @insert_section_boundary_note, i64 6652}
!163 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!164 = !{!"function_entry_count", i64 6652}
!165 = !{!"branch_weights", i32 6653, i32 1}
!166 = !{!167, !167, i64 0}
!167 = !{!"any pointer", !168, i64 0}
!168 = !{!"omnipotent char", !169, i64 0}
!169 = !{!"Simple C/C++ TBAA"}
!170 = !{!171, !167, i64 8}
!171 = !{!"function", !167, i64 0, !167, i64 8, !167, i64 16, !167, i64 24, !167, i64 32, !167, i64 40, !167, i64 48, !167, i64 56, !167, i64 64, !167, i64 72, !167, i64 80, !167, i64 88, !167, i64 96, !172, i64 104, !172, i64 108, !172, i64 112, !172, i64 116, !172, i64 120, !172, i64 124, !167, i64 128, !172, i64 136, !172, i64 137, !172, i64 138, !172, i64 138, !172, i64 138, !172, i64 138, !172, i64 138, !172, i64 138, !172, i64 138, !172, i64 139, !172, i64 139, !172, i64 139, !172, i64 139, !172, i64 139, !172, i64 139, !172, i64 139}
!172 = !{!"int", !168, i64 0}
!173 = !{!174, !172, i64 24}
!174 = !{!"control_flow_graph", !167, i64 0, !167, i64 8, !167, i64 16, !172, i64 24, !172, i64 28, !172, i64 32, !167, i64 40, !172, i64 48, !168, i64 52, !168, i64 60, !172, i64 68, !172, i64 72}
!175 = !{!"branch_weights", i32 1705, i32 4949}
!176 = !{!172, !172, i64 0}
!177 = !{!"branch_weights", i32 2, i32 4948}
!178 = !{!174, !172, i64 32}
!179 = !{!"branch_weights", i32 4948, i32 1}
!180 = !{!181, !172, i64 0}
!181 = !{!"bbro_basic_block_data_def", !172, i64 0, !172, i64 4, !172, i64 8, !167, i64 16, !167, i64 24}
!182 = !{!181, !172, i64 8}
!183 = !{!181, !172, i64 4}
!184 = !{!"branch_weights", i32 4948, i32 335463}
!185 = distinct !{!185, !186}
!186 = !{!"llvm.loop.mustprogress"}
!187 = !{!"branch_weights", i32 1, i32 4949}
!188 = !{!"branch_weights", i32 4949, i32 1}
!189 = !{!"function_entry_count", i64 1}
!190 = !{!"bb-reorder.c:get_uncond_jump_length"}
!191 = !{!"function_entry_count", i64 4948}
!192 = !{!"bb-reorder.c:find_traces"}
!193 = !{!194, !194, i64 0}
!194 = !{!"long", !168, i64 0}
!195 = !{!174, !167, i64 0}
!196 = !{i64 0, i64 4, !176, i64 8, i64 8, !166}
!197 = !{i64 0, i64 8, !166}
!198 = !{i8 0, i8 2}
!199 = !{!"branch_weights", i32 1, i32 4948}
!200 = !{!201, !167, i64 8}
!201 = !{!"edge_def", !167, i64 0, !167, i64 8, !168, i64 16, !167, i64 24, !167, i64 32, !172, i64 40, !172, i64 44, !172, i64 48, !172, i64 52, !194, i64 56}
!202 = !{!203, !172, i64 80}
!203 = !{!"basic_block_def", !167, i64 0, !167, i64 8, !167, i64 16, !167, i64 24, !168, i64 32, !167, i64 48, !167, i64 56, !168, i64 64, !194, i64 72, !172, i64 80, !172, i64 84, !172, i64 88, !172, i64 92, !172, i64 96}
!204 = !{!181, !167, i64 16}
!205 = !{i64 -2147483648, i64 2147483648}
!206 = !{!181, !167, i64 24}
!207 = !{!203, !172, i64 88}
!208 = !{!"branch_weights", i32 4817, i32 133}
!209 = !{!203, !194, i64 72}
!210 = distinct !{!210, !186}
!211 = !{!"branch_weights", i32 19793, i32 1}
!212 = !{!"branch_weights", i32 4949, i32 14844}
!213 = distinct !{!213, !186}
!214 = !{!215, !172, i64 16}
!215 = !{!"trace", !167, i64 0, !167, i64 8, !172, i64 16, !172, i64 20}
!216 = !{!215, !167, i64 8}
!217 = distinct !{!217, !186}
!218 = distinct !{!218, !186}
!219 = !{!"bb-reorder.c:connect_traces"}
!220 = !{!215, !167, i64 0}
!221 = !{!203, !172, i64 96}
!222 = distinct !{!222, !186}
!223 = !{!"branch_weights", i32 86845, i32 4949}
!224 = !{!"branch_weights", i32 86845, i32 454293455}
!225 = !{!168, !168, i64 0}
!226 = !{!"branch_weights", i32 55970, i32 30876}
!227 = !{!"branch_weights", i32 55970, i32 1}
!228 = !{!"branch_weights", i32 1, i32 53781}
!229 = !{!201, !167, i64 0}
!230 = !{!"branch_weights", i32 1, i32 69365}
!231 = !{!201, !172, i64 48}
!232 = !{!"branch_weights", i32 -525375687, i32 489342059}
!233 = !{!"branch_weights", i32 12088, i32 49310}
!234 = !{!"branch_weights", i32 5792, i32 6297}
!235 = !{!"branch_weights", i32 5792, i32 1}
!236 = !{!"branch_weights", i32 2761, i32 3032}
!237 = !{!201, !172, i64 52}
!238 = !{!"branch_weights", i32 237, i32 2796}
!239 = !{!"branch_weights", i32 2173, i32 624}
!240 = !{!215, !172, i64 20}
!241 = !{!"branch_weights", i32 146, i32 2028}
!242 = !{!"branch_weights", i32 53781, i32 15584}
!243 = distinct !{!243, !186}
!244 = !{!"branch_weights", i32 2037238542, i32 110245106}
!245 = !{!203, !167, i64 16}
!246 = !{!"branch_weights", i32 2761, i32 1}
!247 = !{!"branch_weights", i32 48834, i32 4948}
!248 = !{!"branch_weights", i32 51022, i32 4949}
!249 = !{!"branch_weights", i32 1, i32 84084}
!250 = !{!174, !167, i64 8}
!251 = !{!"branch_weights", i32 6088, i32 117187}
!252 = !{!"branch_weights", i32 -1354399767, i32 236838606}
!253 = !{!"branch_weights", i32 51568, i32 56887}
!254 = !{!"branch_weights", i32 33348, i32 18221}
!255 = !{!"branch_weights", i32 33348, i32 1}
!256 = !{!"branch_weights", i32 25946, i32 7403}
!257 = !{!"branch_weights", i32 2947, i32 4457}
!258 = !{!"branch_weights", i32 2381, i32 2077}
!259 = !{!"branch_weights", i32 953, i32 1429}
!260 = !{!"branch_weights", i32 84084, i32 39190}
!261 = distinct !{!261, !186}
!262 = !{!"branch_weights", i32 1484837389, i32 662646259}
!263 = !{!"branch_weights", i32 25946, i32 1}
!264 = !{!"branch_weights", i32 1, i32 58139}
!265 = !{!"branch_weights", i32 6088, i32 67982}
!266 = !{!"branch_weights", i32 -784523295, i32 517548749}
!267 = !{!"branch_weights", i32 53476, i32 5774}
!268 = !{!"branch_weights", i32 4633, i32 1142}
!269 = !{!"branch_weights", i32 15831, i32 42278}
!270 = !{!"branch_weights", i32 11040, i32 4792}
!271 = !{!"branch_weights", i32 1, i32 47068}
!272 = !{!"branch_weights", i32 5207, i32 73645}
!273 = !{!"branch_weights", i32 -1584573358, i32 773083}
!274 = !{!"branch_weights", i32 25162, i32 48465}
!275 = !{!"branch_weights", i32 8637, i32 16526}
!276 = !{!"branch_weights", i32 8637, i32 1}
!277 = !{!"branch_weights", i32 3617, i32 5021}
!278 = !{!201, !194, i64 56}
!279 = !{!"branch_weights", i32 1, i32 5021}
!280 = !{!"branch_weights", i32 4959, i32 63}
!281 = !{!"branch_weights", i32 17, i32 47}
!282 = !{!"branch_weights", i32 4, i32 44}
!283 = !{!"branch_weights", i32 2, i32 3}
!284 = !{!"branch_weights", i32 47068, i32 31783}
!285 = distinct !{!285, !186}
!286 = !{!"branch_weights", i32 58139, i32 15930}
!287 = distinct !{!287, !186}
!288 = !{!"branch_weights", i32 1374773674, i32 772709974}
!289 = !{!"branch_weights", i32 8790, i32 12131}
!290 = !{!"branch_weights", i32 5865, i32 6267}
!291 = !{!"branch_weights", i32 744, i32 5524}
!292 = !{!"branch_weights", i32 5524, i32 1}
!293 = !{!"branch_weights", i32 2177, i32 3348}
!294 = !{!"branch_weights", i32 1178, i32 2171}
!295 = distinct !{!295, !186}
!296 = distinct !{!296, !186}
!297 = !{!"function_entry_count", i64 0}
!298 = !{!"bb-reorder.c:verify_hot_cold_block_grouping"}
!299 = !{!203, !167, i64 56}
!300 = distinct !{!300, !186}
!301 = !{!"function_entry_count", i64 1153906}
!302 = !{!"bb-reorder.c:ei_start_1"}
!303 = !{!"function_entry_count", i64 3097359}
!304 = !{!"bb-reorder.c:ei_cond"}
!305 = !{!"branch_weights", i32 1944752, i32 1152609}
!306 = !{!"function_entry_count", i64 177030}
!307 = !{!"bb-reorder.c:bb_to_key"}
!308 = !{!"branch_weights", i32 1, i32 177031}
!309 = !{!"branch_weights", i32 177031, i32 1}
!310 = !{!"branch_weights", i32 1, i32 177030}
!311 = !{!"branch_weights", i32 4949, i32 368419}
!312 = !{!"branch_weights", i32 50941, i32 317479}
!313 = !{!"branch_weights", i32 321128, i32 1300}
!314 = !{!"branch_weights", i32 177030, i32 196337}
!315 = distinct !{!315, !186}
!316 = !{!"branch_weights", i32 1581350813, i32 566132835}
!317 = !{!"function_entry_count", i64 1943453}
!318 = !{!"bb-reorder.c:ei_next"}
!319 = !{!"branch_weights", i32 1, i32 1943454}
!320 = !{!"branch_weights", i32 1943454, i32 1}
!321 = !{!322, !172, i64 0}
!322 = !{!"", !172, i64 0, !167, i64 8}
!323 = !{!"function_entry_count", i64 19792}
!324 = !{!"bb-reorder.c:find_traces_1_round"}
!325 = !{!"branch_weights", i32 19792, i32 1}
!326 = !{!"branch_weights", i32 99863, i32 1}
!327 = !{!"branch_weights", i32 86845, i32 13019}
!328 = !{!"branch_weights", i32 13019, i32 1}
!329 = !{!"branch_weights", i32 235288, i32 1}
!330 = !{!"branch_weights", i32 1, i32 235287}
!331 = !{!"branch_weights", i32 392773, i32 1}
!332 = !{!"branch_weights", i32 6088, i32 386686}
!333 = !{!334, !172, i64 32}
!334 = !{!"rtl_bb_info", !167, i64 0, !167, i64 8, !167, i64 16, !167, i64 24, !172, i64 32}
!335 = !{!"branch_weights", i32 267273, i32 119414}
!336 = !{!"branch_weights", i32 10354, i32 109061}
!337 = !{!"branch_weights", i32 277626, i32 1}
!338 = !{!"branch_weights", i32 273055, i32 4572}
!339 = !{!"branch_weights", i32 1, i32 4572}
!340 = !{!"branch_weights", i32 962968009, i32 -684724518}
!341 = !{!"branch_weights", i32 20913, i32 194649}
!342 = !{!"branch_weights", i32 1, i32 194649}
!343 = !{!"branch_weights", i32 17738, i32 176912}
!344 = !{!"branch_weights", i32 235287, i32 157486}
!345 = distinct !{!345, !186}
!346 = !{!"branch_weights", i32 690524678, i32 1456958970}
!347 = !{!203, !167, i64 0}
!348 = !{!"branch_weights", i32 69598, i32 90034}
!349 = !{!"branch_weights", i32 68585, i32 1014}
!350 = !{!"branch_weights", i32 158618, i32 234156}
!351 = !{!"branch_weights", i32 6088, i32 228069}
!352 = !{!"branch_weights", i32 118830, i32 109240}
!353 = !{!"branch_weights", i32 100032, i32 18799}
!354 = !{!355, !194, i64 32}
!355 = !{!"fibnode", !167, i64 0, !167, i64 8, !167, i64 16, !167, i64 24, !194, i64 32, !167, i64 40, !172, i64 48, !172, i64 51}
!356 = !{!"branch_weights", i32 18799, i32 1}
!357 = !{!"branch_weights", i32 -822586686, i32 1832949189}
!358 = !{!"branch_weights", i32 1, i32 34562}
!359 = !{!"branch_weights", i32 34775, i32 30697}
!360 = !{!"branch_weights", i32 100032, i32 1}
!361 = distinct !{!361, !186}
!362 = !{!"branch_weights", i32 76671, i32 158618}
!363 = !{!"branch_weights", i32 10175, i32 148444}
!364 = !{!"branch_weights", i32 2111, i32 8065}
!365 = !{!"branch_weights", i32 6827, i32 1239}
!366 = !{!"branch_weights", i32 1, i32 6827}
!367 = !{!"branch_weights", i32 6827, i32 1}
!368 = !{!"branch_weights", i32 345, i32 895}
!369 = !{!"branch_weights", i32 776, i32 120}
!370 = !{!"branch_weights", i32 1, i32 147145}
!371 = !{!"branch_weights", i32 147260, i32 119342}
!372 = !{!"branch_weights", i32 -734339055, i32 59671}
!373 = !{!"branch_weights", i32 81326, i32 38017}
!374 = !{!"branch_weights", i32 1619016169, i32 1653419657}
!375 = !{!"branch_weights", i32 22294, i32 17944}
!376 = !{!"branch_weights", i32 412, i32 17533}
!377 = !{!"branch_weights", i32 17533, i32 1}
!378 = !{!"branch_weights", i32 5309, i32 12225}
!379 = !{!"branch_weights", i32 4011, i32 1299}
!380 = !{!"branch_weights", i32 1299, i32 1}
!381 = !{!"branch_weights", i32 147145, i32 119456}
!382 = distinct !{!382, !186}
!383 = distinct !{!383, !186}
!384 = !{!"branch_weights", i32 1, i32 86844}
!385 = !{!"branch_weights", i32 6088, i32 121383}
!386 = !{!"branch_weights", i32 40236, i32 81148}
!387 = !{!"branch_weights", i32 1, i32 40236}
!388 = !{!"branch_weights", i32 3568, i32 36669}
!389 = !{!"branch_weights", i32 36669, i32 1}
!390 = !{!"branch_weights", i32 86844, i32 40626}
!391 = distinct !{!391, !186}
!392 = !{!"branch_weights", i32 80071, i32 19792}
!393 = !{!"bb-reorder.c:ei_end_p"}
!394 = !{!"branch_weights", i32 1, i32 3097360}
!395 = !{!"function_entry_count", i64 1944751}
!396 = !{!"bb-reorder.c:ei_edge"}
!397 = !{!"branch_weights", i32 1, i32 1944752}
!398 = !{!"function_entry_count", i64 5559079}
!399 = !{!"bb-reorder.c:VEC_edge_base_length"}
!400 = !{!"branch_weights", i32 1, i32 5559080}
!401 = !{!402, !172, i64 0}
!402 = !{!"VEC_edge_base", !172, i64 0, !172, i64 4, !168, i64 8}
!403 = !{!"function_entry_count", i64 13971126}
!404 = !{!"bb-reorder.c:ei_container"}
!405 = !{!"branch_weights", i32 1, i32 13971127}
!406 = !{!"function_entry_count", i64 2002142}
!407 = !{!"bb-reorder.c:VEC_edge_base_index"}
!408 = !{!"function_entry_count", i64 165332}
!409 = !{!"bb-reorder.c:push_to_next_round_p"}
!410 = !{!"branch_weights", i32 43715, i32 121619}
!411 = !{!"branch_weights", i32 1, i32 121619}
!412 = !{!"function_entry_count", i64 235287}
!413 = !{!"bb-reorder.c:mark_bb_visited"}
!414 = !{!"branch_weights", i32 217153, i32 18136}
!415 = !{!"function_entry_count", i64 194648}
!416 = !{!"bb-reorder.c:better_edge_p"}
!417 = !{!"branch_weights", i32 171249, i32 23401}
!418 = !{!"branch_weights", i32 9271, i32 14131}
!419 = !{!"branch_weights", i32 2730, i32 11402}
!420 = !{!"branch_weights", i32 5436, i32 5967}
!421 = !{!203, !167, i64 48}
!422 = !{!"branch_weights", i32 103882, i32 2147379766}
!423 = !{!"function_entry_count", i64 95788}
!424 = !{!"bb-reorder.c:copy_bb_p"}
!425 = !{!"branch_weights", i32 9725, i32 86065}
!426 = !{!"branch_weights", i32 134, i32 85932}
!427 = !{!"branch_weights", i32 5, i32 85928}
!428 = !{!203, !167, i64 8}
!429 = !{!"branch_weights", i32 1, i32 85928}
!430 = !{!"branch_weights", i32 79643, i32 6286}
!431 = !{!"branch_weights", i32 10, i32 6277}
!432 = !{!433, !172, i64 8}
!433 = !{!"param_info", !167, i64 0, !172, i64 8, !168, i64 12, !172, i64 16, !172, i64 20, !167, i64 24}
!434 = !{!"branch_weights", i32 1, i32 6115}
!435 = !{!334, !167, i64 8}
!436 = !{!"branch_weights", i32 85928, i32 677496}
!437 = !{!"branch_weights", i32 -1975850328, i32 1017395984}
!438 = !{!"branch_weights", i32 6115, i32 751193}
!439 = distinct !{!439, !186}
!440 = !{!"branch_weights", i32 79273, i32 6656}
!441 = !{!"branch_weights", i32 79273, i32 1}
!442 = !{!"function_entry_count", i64 6826}
!443 = !{!"bb-reorder.c:rotate_loop"}
!444 = !{!"branch_weights", i32 1, i32 22995}
!445 = !{!"branch_weights", i32 1, i32 41270}
!446 = !{!"branch_weights", i32 26243, i32 15028}
!447 = !{!"branch_weights", i32 225840784, i32 30057}
!448 = !{!"branch_weights", i32 7085, i32 7944}
!449 = !{!"branch_weights", i32 6974, i32 971}
!450 = !{!"branch_weights", i32 488, i32 484}
!451 = !{!"branch_weights", i32 1345, i32 6117}
!452 = !{!"branch_weights", i32 1, i32 6117}
!453 = !{!"branch_weights", i32 6206, i32 880}
!454 = !{!"branch_weights", i32 424, i32 457}
!455 = !{!"branch_weights", i32 18182, i32 1512}
!456 = !{!"branch_weights", i32 1, i32 36}
!457 = !{!"branch_weights", i32 22995, i32 18275}
!458 = distinct !{!458, !186}
!459 = !{!"branch_weights", i32 6827, i32 16170}
!460 = distinct !{!460, !186}
!461 = !{!"branch_weights", i32 3, i32 6825}
!462 = !{!"branch_weights", i32 369, i32 6457}
!463 = !{!"branch_weights", i32 6457, i32 15213}
!464 = distinct !{!464, !186}
!465 = !{!"branch_weights", i32 2073, i32 4385}
!466 = !{!"branch_weights", i32 7, i32 4379}
!467 = !{!"branch_weights", i32 4379, i32 1}
!468 = !{!"function_entry_count", i64 105321}
!469 = !{!"bb-reorder.c:single_succ_p"}
!470 = !{!"function_entry_count", i64 5642}
!471 = !{!"bb-reorder.c:copy_bb"}
!472 = !{!"branch_weights", i32 5643, i32 1}
!473 = !{!"branch_weights", i32 84464, i32 31696900}
!474 = !{!"branch_weights", i32 223, i32 1}
!475 = !{!"branch_weights", i32 223, i32 2513}
!476 = distinct !{!476, !186}
!477 = !{!"branch_weights", i32 14, i32 1}
!478 = !{!"function_entry_count", i64 81325}
!479 = !{!"bb-reorder.c:single_pred_p"}
!480 = !{!"function_entry_count", i64 57391}
!481 = !{!"bb-reorder.c:single_succ_edge"}
!482 = !{!"branch_weights", i32 1, i32 57392}
!483 = !{!"function_entry_count", i64 21916}
!484 = !{!"bb-reorder.c:single_succ"}
!485 = !{!"bb-reorder.c:gate_duplicate_computed_gotos"}
!486 = !{!487, !167, i64 976}
!487 = !{!"gcc_target", !488, i64 0, !490, i64 368, !491, i64 664, !172, i64 744, !167, i64 752, !167, i64 760, !167, i64 768, !167, i64 776, !167, i64 784, !167, i64 792, !167, i64 800, !167, i64 808, !167, i64 816, !167, i64 824, !167, i64 832, !167, i64 840, !167, i64 848, !167, i64 856, !167, i64 864, !167, i64 872, !167, i64 880, !167, i64 888, !167, i64 896, !167, i64 904, !167, i64 912, !167, i64 920, !167, i64 928, !167, i64 936, !167, i64 944, !167, i64 952, !167, i64 960, !167, i64 968, !167, i64 976, !167, i64 984, !167, i64 992, !167, i64 1000, !167, i64 1008, !167, i64 1016, !167, i64 1024, !167, i64 1032, !167, i64 1040, !167, i64 1048, !167, i64 1056, !194, i64 1064, !194, i64 1072, !167, i64 1080, !167, i64 1088, !167, i64 1096, !167, i64 1104, !167, i64 1112, !167, i64 1120, !167, i64 1128, !167, i64 1136, !167, i64 1144, !167, i64 1152, !167, i64 1160, !167, i64 1168, !492, i64 1176, !167, i64 1232, !167, i64 1240, !167, i64 1248, !167, i64 1256, !167, i64 1264, !167, i64 1272, !167, i64 1280, !167, i64 1288, !167, i64 1296, !167, i64 1304, !167, i64 1312, !167, i64 1320, !167, i64 1328, !167, i64 1336, !167, i64 1344, !167, i64 1352, !167, i64 1360, !167, i64 1368, !167, i64 1376, !167, i64 1384, !167, i64 1392, !167, i64 1400, !167, i64 1408, !167, i64 1416, !167, i64 1424, !167, i64 1432, !167, i64 1440, !167, i64 1448, !167, i64 1456, !194, i64 1464, !493, i64 1472, !167, i64 1664, !167, i64 1672, !167, i64 1680, !167, i64 1688, !167, i64 1696, !167, i64 1704, !167, i64 1712, !167, i64 1720, !167, i64 1728, !167, i64 1736, !167, i64 1744, !167, i64 1752, !167, i64 1760, !167, i64 1768, !167, i64 1776, !494, i64 1784, !495, i64 1792, !496, i64 1896, !497, i64 1968, !167, i64 2016, !168, i64 2024, !168, i64 2025, !168, i64 2026, !168, i64 2027, !168, i64 2028, !168, i64 2029, !168, i64 2030, !168, i64 2031, !168, i64 2032, !168, i64 2033, !168, i64 2034, !168, i64 2035}
!488 = !{!"asm_out", !167, i64 0, !167, i64 8, !167, i64 16, !489, i64 24, !489, i64 56, !167, i64 88, !167, i64 96, !167, i64 104, !167, i64 112, !167, i64 120, !167, i64 128, !167, i64 136, !167, i64 144, !167, i64 152, !167, i64 160, !167, i64 168, !167, i64 176, !167, i64 184, !167, i64 192, !167, i64 200, !167, i64 208, !167, i64 216, !167, i64 224, !167, i64 232, !167, i64 240, !167, i64 248, !167, i64 256, !167, i64 264, !167, i64 272, !167, i64 280, !167, i64 288, !167, i64 296, !167, i64 304, !167, i64 312, !167, i64 320, !167, i64 328, !167, i64 336, !167, i64 344, !167, i64 352, !167, i64 360}
!489 = !{!"asm_int_op", !167, i64 0, !167, i64 8, !167, i64 16, !167, i64 24}
!490 = !{!"sched", !167, i64 0, !167, i64 8, !167, i64 16, !167, i64 24, !167, i64 32, !167, i64 40, !167, i64 48, !167, i64 56, !167, i64 64, !167, i64 72, !167, i64 80, !167, i64 88, !167, i64 96, !167, i64 104, !167, i64 112, !167, i64 120, !167, i64 128, !167, i64 136, !167, i64 144, !167, i64 152, !167, i64 160, !167, i64 168, !167, i64 176, !167, i64 184, !167, i64 192, !167, i64 200, !167, i64 208, !167, i64 216, !167, i64 224, !167, i64 232, !167, i64 240, !167, i64 248, !167, i64 256, !167, i64 264, !167, i64 272, !167, i64 280, !167, i64 288}
!491 = !{!"vectorize", !167, i64 0, !167, i64 8, !167, i64 16, !167, i64 24, !167, i64 32, !167, i64 40, !167, i64 48, !167, i64 56, !167, i64 64, !167, i64 72}
!492 = !{!"addr_space", !167, i64 0, !167, i64 8, !167, i64 16, !167, i64 24, !167, i64 32, !167, i64 40, !167, i64 48}
!493 = !{!"calls", !167, i64 0, !167, i64 8, !167, i64 16, !167, i64 24, !167, i64 32, !167, i64 40, !167, i64 48, !167, i64 56, !167, i64 64, !167, i64 72, !167, i64 80, !167, i64 88, !167, i64 96, !167, i64 104, !167, i64 112, !167, i64 120, !167, i64 128, !167, i64 136, !167, i64 144, !167, i64 152, !167, i64 160, !167, i64 168, !167, i64 176, !167, i64 184}
!494 = !{!"c", !167, i64 0}
!495 = !{!"cxx", !167, i64 0, !167, i64 8, !167, i64 16, !167, i64 24, !167, i64 32, !167, i64 40, !167, i64 48, !167, i64 56, !167, i64 64, !167, i64 72, !167, i64 80, !167, i64 88, !167, i64 96}
!496 = !{!"emutls", !167, i64 0, !167, i64 8, !167, i64 16, !167, i64 24, !167, i64 32, !167, i64 40, !167, i64 48, !167, i64 56, !168, i64 64, !168, i64 65}
!497 = !{!"target_option_hooks", !167, i64 0, !167, i64 8, !167, i64 16, !167, i64 24, !167, i64 32, !167, i64 40}
!498 = !{!"branch_weights", i32 44262409, i32 13307}
!499 = !{!"bb-reorder.c:duplicate_computed_gotos"}
!500 = !{!"branch_weights", i32 4949, i32 230723}
!501 = !{!"branch_weights", i32 235671, i32 1}
!502 = distinct !{!502, !186}
!503 = distinct !{!503, !186}
!504 = !{!"branch_weights", i32 4948, i32 230723}
!505 = distinct !{!505, !186}
!506 = !{!507, !167, i64 0}
!507 = !{!"bitmap_head_def", !167, i64 0, !167, i64 8, !172, i64 16, !167, i64 24}
!508 = distinct !{!508, !186}
!509 = !{!"bb-reorder.c:gate_handle_reorder_blocks"}
!510 = !{!"bb-reorder.c:rest_of_handle_reorder_blocks"}
!511 = !{!"branch_weights", i32 1, i32 6653}
!512 = !{!"branch_weights", i32 1, i32 6652}
!513 = !{!"branch_weights", i32 6652, i32 224021}
!514 = !{!"bb-reorder.c:insert_section_boundary_note"}
!515 = distinct !{!515, !186}
!516 = !{!334, !167, i64 0}
!517 = !{!"bb-reorder.c:gate_handle_partition_blocks"}
!518 = !{!"bb-reorder.c:rest_of_handle_partition_blocks"}
!519 = !{!"bb-reorder.c:partition_hot_cold_basic_blocks"}
!520 = !{!"bb-reorder.c:find_rarely_executed_basic_blocks_and_crossing_edges"}
!521 = distinct !{!521, !186}
!522 = distinct !{!522, !186}
!523 = distinct !{!523, !186}
!524 = !{!"bb-reorder.c:fix_edges_for_rarely_executed_code"}
!525 = !{!"bb-reorder.c:add_labels_and_missing_jumps"}
!526 = !{!334, !167, i64 24}
!527 = distinct !{!527, !186}
!528 = !{!"bb-reorder.c:fix_up_fall_thru_edges"}
!529 = distinct !{!529, !186}
!530 = distinct !{!530, !186}
!531 = !{!"bb-reorder.c:add_reg_crossing_jump_notes"}
!532 = distinct !{!532, !186}
!533 = distinct !{!533, !186}
