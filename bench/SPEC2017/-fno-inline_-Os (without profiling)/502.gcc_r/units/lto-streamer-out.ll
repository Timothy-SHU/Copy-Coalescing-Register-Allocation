; ModuleID = 'lto-streamer-out.c'
source_filename = "lto-streamer-out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ipa_opt_pass_d = type { %struct.opt_pass, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.output_block = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr }
%struct.string_slot = type { ptr, i32, i32 }
%struct.bitpack_d = type { i64, i64, ptr }
%struct.VEC_bitpack_word_t_base = type { i32, i32, [1 x i64] }
%struct.lto_output_stream = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.lto_function_header = type { %struct.lto_header, i32, i32, i32, i32, i32, i32, i32 }
%struct.lto_header = type { i16, i16, i32 }
%struct.cgraph_node_set_iterator = type { ptr, i32 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.lto_decl_header = type { %struct.lto_header, i32, i32, i32, i32 }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], ptr, ptr }
%struct.lto_tree_ref_encoder = type { ptr, i32, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x ptr] }
%struct.tree_binfo = type { %struct.tree_common, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.VEC_tree_none }
%struct.VEC_tree_none = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.real_value = type { i32, [3 x i64] }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.tree_fixed_cst = type { %struct.tree_common, ptr }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_vector = type { %struct.tree_common, ptr }
%struct.tree_complex = type { %struct.tree_common, ptr, ptr }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.cgraph_node_set_def = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.lto_tree_ref_table = type { ptr, i32 }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x ptr] }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.eh_region_d = type { ptr, ptr, ptr, i32, i32, %union.eh_region_u, ptr, ptr, ptr, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { ptr, ptr, i32 }
%struct.eh_status = type { ptr, ptr, ptr, ptr, ptr, %union.eh_status_u }
%union.eh_status_u = type { ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_eh_region_base = type { i32, i32, [1 x ptr] }
%struct.eh_landing_pad_d = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_eh_landing_pad_base = type { i32, i32, [1 x ptr] }
%struct.VEC_uchar_base = type { i32, i32, [1 x i8] }
%struct.eh_catch_d = type { ptr, ptr, ptr, ptr, ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_statement_eh_ctrl = type { %struct.gimple_statement_base, i32 }
%struct.gimple_statement_eh_mnt = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.alias_pair = type { ptr, ptr }
%struct.VEC_lto_out_decl_state_ptr_base = type { i32, i32, [1 x ptr] }
%struct.VEC_alias_pair_base = type { i32, i32, [1 x %struct.alias_pair] }

@flag_wpa = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [15 x i8] c"lto_gimple_out\00", align 1
@pass_ipa_lto_gimple_out = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str, ptr @gate_lto_out, ptr null, ptr null, ptr null, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 1 }, ptr null, ptr @lto_output, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null }, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"lto_decls_out\00", align 1
@pass_ipa_lto_finish_out = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str.1, ptr @gate_lto_out, ptr null, ptr null, ptr null, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @produce_asm_for_decls, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null }, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"lto-streamer-out.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.4 = private unnamed_addr constant [89 x i8] c"gimple bytecode streams do not support machine specific builtin functions on this target\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.5 = private unnamed_addr constant [49 x i8] c"tree code %qs is not supported in gimple streams\00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.6 = private unnamed_addr constant [66 x i8] c"gimple bytecode streams do not support the optimization attribute\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"gimple bytecode streams do not support the target attribute\00", align 1
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@lto_function_decl_states = external local_unnamed_addr global ptr, align 8
@varpool_nodes_queue = external local_unnamed_addr global ptr, align 8
@alias_pairs = external local_unnamed_addr global ptr, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_output_block(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 88) #15
  store i32 %0, ptr %2, align 8, !tbaa !5
  %3 = tail call ptr @lto_get_out_decl_state() #15
  %4 = getelementptr inbounds %struct.output_block, ptr %2, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !11
  %5 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #15
  %6 = getelementptr inbounds %struct.output_block, ptr %2, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !12
  %7 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #15
  %8 = getelementptr inbounds %struct.output_block, ptr %2, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !13
  %9 = tail call ptr @lto_streamer_cache_create() #15
  %10 = getelementptr inbounds %struct.output_block, ptr %2, i64 0, i32 11
  store ptr %9, ptr %10, align 8, !tbaa !14
  %11 = icmp eq i32 %0, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #15
  %14 = getelementptr inbounds %struct.output_block, ptr %2, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !15
  br label %15

15:                                               ; preds = %12, %1
  tail call fastcc void @clear_line_info(ptr noundef nonnull %2) #16
  %16 = tail call ptr @htab_create(i64 noundef 37, ptr noundef nonnull @hash_string_slot_node, ptr noundef nonnull @eq_string_slot_node, ptr noundef nonnull @string_slot_free) #15
  %17 = getelementptr inbounds %struct.output_block, ptr %2, i64 0, i32 5
  store ptr %16, ptr %17, align 8, !tbaa !16
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lto_get_out_decl_state() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lto_streamer_cache_create() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_line_info(ptr nocapture noundef writeonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @hash_string_slot_node(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  %3 = tail call i32 @htab_hash_string(ptr noundef %2) #15
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @eq_string_slot_node(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.string_slot, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.string_slot, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !19
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = icmp sgt i32 %4, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !17
  %12 = load ptr, ptr %1, align 8, !tbaa !17
  %13 = zext nneg i32 %4 to i64
  br label %17

14:                                               ; preds = %17
  %15 = add nuw nsw i64 %18, 1
  %16 = icmp eq i64 %15, %13
  br i1 %16, label %24, label %17, !llvm.loop !20

17:                                               ; preds = %10, %14
  %18 = phi i64 [ 0, %10 ], [ %15, %14 ]
  %19 = getelementptr inbounds i8, ptr %11, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !22
  %21 = getelementptr inbounds i8, ptr %12, i64 %18
  %22 = load i8, ptr %21, align 1, !tbaa !22
  %23 = icmp eq i8 %20, %22
  br i1 %23, label %14, label %24

24:                                               ; preds = %14, %17, %8, %2
  %25 = phi i32 [ 0, %2 ], [ 1, %8 ], [ 1, %14 ], [ 0, %17 ]
  ret i32 %25
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal void @string_slot_free(ptr nocapture noundef %0) #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %2) #16
  tail call void @free(ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @destroy_output_block(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  tail call void @htab_delete(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  tail call void @free(ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  tail call void @free(ptr noundef %8) #16
  %9 = icmp eq i32 %2, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  tail call void @free(ptr noundef %12) #16
  br label %13

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  tail call void @lto_streamer_cache_delete(ptr noundef %15) #15
  tail call void @free(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @lto_streamer_cache_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_bitpack(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = getelementptr inbounds %struct.bitpack_d, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = tail call fastcc i32 @VEC_bitpack_word_t_base_length(ptr noundef %5) #16
  %7 = zext i32 %6 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %0, i64 noundef %7) #15
  %8 = load ptr, ptr %4, align 8, !tbaa !23
  %9 = call fastcc i32 @VEC_bitpack_word_t_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %3) #16, !range !26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2, %11
  %12 = phi i32 [ %14, %11 ], [ 0, %2 ]
  %13 = load i64, ptr %3, align 8, !tbaa !27
  tail call void @lto_output_uleb128_stream(ptr noundef %0, i64 noundef %13) #15
  %14 = add i32 %12, 1
  %15 = load ptr, ptr %4, align 8, !tbaa !23
  %16 = call fastcc i32 @VEC_bitpack_word_t_base_iterate(ptr noundef %15, i32 noundef %14, ptr noundef nonnull %3) #16, !range !26
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %11, !llvm.loop !28

18:                                               ; preds = %11, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare void @lto_output_uleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_bitpack_word_t_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !29
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_bitpack_word_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !29
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_bitpack_word_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !27
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i64 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i64 %13, ptr %2, align 8, !tbaa !27
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_output_tree(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call fastcc void @output_zero(ptr noundef %0) #16
  br label %38

8:                                                ; preds = %3
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 23
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call fastcc void @lto_output_integer_cst(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #16
  br label %38

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.lto_output_stream, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !31
  store i32 %17, ptr %5, align 4, !tbaa !33
  %18 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  %20 = call zeroext i8 @lto_streamer_cache_insert(ptr noundef %19, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %13
  call fastcc void @output_record_start(ptr noundef nonnull %0, i32 noundef 236) #16
  %23 = load i32, ptr %4, align 4, !tbaa !33
  %24 = sext i32 %23 to i64
  call fastcc void @output_sleb128(ptr noundef nonnull %0, i64 noundef %24) #16
  %25 = load i64, ptr %1, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65535
  %28 = call fastcc i32 @lto_tree_code_to_tag(i32 noundef %27) #16, !range !34
  %29 = zext nneg i32 %28 to i64
  call fastcc void @output_uleb128(ptr noundef nonnull %0, i64 noundef %29) #16
  %30 = load i32, ptr %5, align 4, !tbaa !33
  %31 = zext i32 %30 to i64
  call fastcc void @output_uleb128(ptr noundef nonnull %0, i64 noundef %31) #16
  br label %38

32:                                               ; preds = %13
  %33 = call fastcc zeroext i8 @lto_stream_as_builtin_p(ptr noundef nonnull %1) #16, !range !35
  %34 = icmp eq i8 %33, 0
  %35 = load i32, ptr %4, align 4, !tbaa !33
  br i1 %34, label %37, label %36

36:                                               ; preds = %32
  call fastcc void @lto_output_builtin_tree(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %35) #16
  br label %38

37:                                               ; preds = %32
  call fastcc void @lto_write_tree(ptr noundef nonnull %0, ptr noundef nonnull %1, i8 noundef zeroext %2, i32 noundef %35) #16
  br label %38

38:                                               ; preds = %22, %37, %36, %12, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_zero(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  tail call void @lto_output_1_stream(ptr noundef %3, i8 noundef signext 0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_integer_cst(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @lto_tree_code_to_tag(i32 noundef 23) #16, !range !34
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef %4) #16
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %6, i8 noundef zeroext %2) #16
  %7 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !33
  %13 = icmp eq i32 %12, 1
  %14 = lshr i64 %9, 27
  %15 = trunc i64 %14 to i8
  %16 = and i8 %15, 1
  %17 = select i1 %13, i8 %16, i8 0
  tail call void @lto_output_1_stream(ptr noundef %8, i8 noundef signext %17) #15
  %18 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !22
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %19) #16
  %20 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !22
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %21) #16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @lto_streamer_cache_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_record_start(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_sleb128(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  tail call void @lto_output_sleb128_stream(ptr noundef %4, i64 noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_uleb128(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  tail call void @lto_output_uleb128_stream(ptr noundef %4, i64 noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @lto_tree_code_to_tag(i32 noundef %0) unnamed_addr #9 {
  %2 = add nuw nsw i32 %0, 1
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @lto_stream_as_builtin_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 29
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !22
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 11
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = icmp eq i32 %13, 2
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %9, %15, %5, %1
  %19 = phi i8 [ 0, %5 ], [ 0, %1 ], [ 1, %9 ], [ %17, %15 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_builtin_tree(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @lto_stream_as_builtin_p(ptr noundef %1) #16, !range !35
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1241, ptr noundef nonnull @.str.3) #15
  br label %7

7:                                                ; preds = %3, %6
  %8 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 6144
  %11 = icmp ne i32 %10, 4096
  %12 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 24), align 8
  %13 = icmp ne ptr %12, null
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void (ptr, ...) @sorry(ptr noundef nonnull @.str.4) #15
  br label %16

16:                                               ; preds = %15, %7
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef 227) #16
  %17 = load i32, ptr %8, align 8
  %18 = lshr i32 %17, 11
  %19 = and i32 %18, 3
  %20 = zext nneg i32 %19 to i64
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %20) #16
  %21 = load i32, ptr %8, align 8
  %22 = and i32 %21, 2047
  %23 = zext nneg i32 %22 to i64
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %23) #16
  %24 = sext i32 %2 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %24) #16
  %25 = load i64, ptr %1, align 8
  %26 = and i64 %25, 65535
  %27 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %26, i64 13
  %28 = load i8, ptr %27, align 1, !tbaa !22
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !22
  %33 = icmp eq ptr %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @decl_assembler_name(ptr noundef nonnull %1) #15
  %36 = getelementptr inbounds %struct.tree_identifier, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !22
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #16
  %39 = icmp ugt i64 %38, 1
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i8, ptr %37, align 1, !tbaa !22
  %42 = icmp eq i8 %41, 42
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !12
  %46 = getelementptr inbounds i8, ptr %37, i64 1
  tail call fastcc void @output_string(ptr noundef %0, ptr noundef %45, ptr noundef nonnull %46) #16
  br label %53

47:                                               ; preds = %40, %34
  %48 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !12
  tail call fastcc void @output_string(ptr noundef %0, ptr noundef %49, ptr noundef null) #16
  br label %53

50:                                               ; preds = %30, %16
  %51 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !12
  tail call fastcc void @output_string(ptr noundef %0, ptr noundef %52, ptr noundef null) #16
  br label %53

53:                                               ; preds = %43, %47, %50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_write_tree(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 {
  tail call fastcc void @lto_output_tree_header(ptr noundef %0, ptr noundef %1, i32 noundef %3) #16
  %5 = tail call fastcc ptr @pack_value_fields(ptr noundef %1) #16
  %6 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  tail call void @lto_output_bitpack(ptr noundef %7, ptr noundef %5) #16
  tail call void @bitpack_delete(ptr noundef %5) #15
  tail call fastcc void @lto_output_tree_pointers(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #16
  tail call fastcc void @output_zero(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @produce_asm(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.lto_function_header, align 4
  %4 = load i32, ptr %0, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #17
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = tail call ptr @decl_assembler_name(ptr noundef %1) #15
  %8 = getelementptr inbounds %struct.tree_identifier, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = tail call ptr @lto_get_section_name(i32 noundef 1, ptr noundef %9) #15
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @lto_get_section_name(i32 noundef %4, ptr noundef null) #15
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi ptr [ %10, %6 ], [ %12, %11 ]
  %15 = load i32, ptr @flag_wpa, align 4, !tbaa !33
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i8
  tail call void @lto_begin_section(ptr noundef %14, i8 noundef zeroext %17) #15
  tail call void @free(ptr noundef %14) #16
  %18 = getelementptr inbounds i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %18, i8 0, i64 20, i1 false)
  store i16 1, ptr %3, align 4, !tbaa !36
  %19 = getelementptr inbounds %struct.lto_header, ptr %3, i64 0, i32 1
  store i16 0, ptr %19, align 2, !tbaa !40
  %20 = getelementptr inbounds %struct.lto_header, ptr %3, i64 0, i32 2
  store i32 %4, ptr %20, align 4, !tbaa !41
  br i1 %5, label %21, label %27

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  %24 = getelementptr inbounds %struct.lto_output_stream, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !31
  %26 = getelementptr inbounds %struct.lto_function_header, ptr %3, i64 0, i32 5
  store i32 %25, ptr %26, align 4, !tbaa !42
  br label %27

27:                                               ; preds = %21, %13
  %28 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !12
  %30 = getelementptr inbounds %struct.lto_output_stream, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !31
  %32 = getelementptr inbounds %struct.lto_function_header, ptr %3, i64 0, i32 6
  store i32 %31, ptr %32, align 4, !tbaa !43
  %33 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !13
  %35 = getelementptr inbounds %struct.lto_output_stream, ptr %34, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !31
  %37 = getelementptr inbounds %struct.lto_function_header, ptr %3, i64 0, i32 7
  store i32 %36, ptr %37, align 4, !tbaa !44
  %38 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #15
  call void @lto_output_data_stream(ptr noundef %38, ptr noundef nonnull %3, i64 noundef 36) #15
  call void @lto_write_stream(ptr noundef %38) #15
  call void @free(ptr noundef %38) #16
  br i1 %5, label %39, label %42

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !15
  call void @lto_write_stream(ptr noundef %41) #15
  br label %42

42:                                               ; preds = %39, %27
  %43 = load ptr, ptr %28, align 8, !tbaa !12
  call void @lto_write_stream(ptr noundef %43) #15
  %44 = load ptr, ptr %33, align 8, !tbaa !13
  call void @lto_write_stream(ptr noundef %44) #15
  call void @lto_end_section() #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lto_get_section_name(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_begin_section(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: optsize
declare void @lto_output_data_stream(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_write_stream(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_end_section() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gate_lto_out() #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @lto_output(ptr noundef %0) #0 {
  %2 = alloca %struct.cgraph_node_set_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  %3 = tail call ptr @lto_bitmap_alloc() #15
  tail call fastcc void @lto_writer_init() #16
  %4 = tail call fastcc ptr @csi_start(ptr noundef %0) #16
  store ptr %4, ptr %2, align 8, !tbaa.struct !45
  %5 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 0, ptr %5, align 8, !tbaa.struct !47
  %6 = tail call fastcc zeroext i8 @csi_end_p(ptr %4, i32 0) #16, !range !35
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %1, %39
  %9 = phi i32 [ %41, %39 ], [ 0, %1 ]
  %10 = phi ptr [ %40, %39 ], [ %4, %1 ]
  %11 = tail call fastcc ptr @csi_node(ptr %10, i32 %9) #16
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 27
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 32
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr %11, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !22
  %20 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %19) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = load ptr, ptr %11, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !22
  %26 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %25) #15
  %27 = tail call ptr @lto_new_out_decl_state() #15
  tail call void @lto_push_out_decl_state(ptr noundef %27) #15
  %28 = load i32, ptr @flag_wpa, align 4, !tbaa !33
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  tail call fastcc void @output_function(ptr noundef nonnull %11) #16
  br label %32

31:                                               ; preds = %22
  tail call fastcc void @copy_function(ptr noundef nonnull %11) #16
  br label %32

32:                                               ; preds = %31, %30
  %33 = tail call ptr @lto_get_out_decl_state() #15
  %34 = icmp eq ptr %33, %27
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2115, ptr noundef nonnull @.str.3) #15
  br label %36

36:                                               ; preds = %32, %35
  %37 = tail call ptr @lto_pop_out_decl_state() #15
  %38 = load ptr, ptr %11, align 8, !tbaa !48
  tail call void @lto_record_function_out_decl_state(ptr noundef %38, ptr noundef %27) #15
  br label %39

39:                                               ; preds = %8, %16, %36
  call fastcc void @csi_next(ptr noundef nonnull %2) #16
  %40 = load ptr, ptr %2, align 8
  %41 = load i32, ptr %5, align 8
  %42 = tail call fastcc zeroext i8 @csi_end_p(ptr %40, i32 %41) #16, !range !35
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %8, label %44, !llvm.loop !56

44:                                               ; preds = %39, %1
  tail call void @output_cgraph(ptr noundef %0) #15
  tail call void @lto_bitmap_free(ptr noundef %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @produce_asm_for_decls(ptr noundef %0) #0 {
  %2 = alloca %struct.lto_decl_header, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %4 = tail call ptr @create_output_block(i32 noundef 0) #16
  %5 = getelementptr inbounds %struct.output_block, ptr %4, i64 0, i32 10
  store i8 1, ptr %5, align 8, !tbaa !57
  tail call fastcc void @output_unreferenced_globals(ptr noundef %0) #16
  %6 = tail call ptr @lto_get_section_name(i32 noundef 0, ptr noundef null) #15
  %7 = load i32, ptr @flag_wpa, align 4, !tbaa !33
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i8
  tail call void @lto_begin_section(ptr noundef %6, i8 noundef zeroext %9) #15
  tail call void @free(ptr noundef %6) #16
  %10 = getelementptr inbounds %struct.output_block, ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  tail call void @lto_output_1_stream(ptr noundef %11, i8 noundef signext 0) #15
  %12 = tail call ptr @lto_get_out_decl_state() #15
  %13 = load ptr, ptr @lto_function_decl_states, align 8
  %14 = tail call fastcc i32 @VEC_lto_out_decl_state_ptr_base_length(ptr noundef %13) #16
  tail call fastcc void @lto_output_decl_state_streams(ptr noundef %4, ptr noundef %12) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1, %16
  %17 = phi i32 [ %20, %16 ], [ 0, %1 ]
  %18 = load ptr, ptr @lto_function_decl_states, align 8
  %19 = tail call fastcc ptr @VEC_lto_out_decl_state_ptr_base_index(ptr noundef %18, i32 noundef %17) #16
  tail call fastcc void @lto_output_decl_state_streams(ptr noundef %4, ptr noundef %19) #16
  %20 = add nuw i32 %17, 1
  %21 = icmp eq i32 %20, %14
  br i1 %21, label %22, label %16, !llvm.loop !58

22:                                               ; preds = %16, %1
  store i16 1, ptr %2, align 4, !tbaa !59
  %23 = getelementptr inbounds %struct.lto_header, ptr %2, i64 0, i32 1
  store i16 0, ptr %23, align 2, !tbaa !61
  %24 = getelementptr inbounds %struct.lto_header, ptr %2, i64 0, i32 2
  store i32 0, ptr %24, align 4, !tbaa !62
  %25 = getelementptr inbounds %struct.lto_decl_header, ptr %2, i64 0, i32 2
  store i32 -1, ptr %25, align 4, !tbaa !63
  %26 = tail call fastcc i64 @lto_out_decl_state_written_size(ptr noundef %12) #16
  %27 = add i64 %26, 4
  br i1 %15, label %38, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr @lto_function_decl_states, align 8
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ %27, %28 ], [ %35, %30 ]
  %32 = phi i32 [ 0, %28 ], [ %36, %30 ]
  %33 = tail call fastcc ptr @VEC_lto_out_decl_state_ptr_base_index(ptr noundef %29, i32 noundef %32) #16
  %34 = tail call fastcc i64 @lto_out_decl_state_written_size(ptr noundef %33) #16
  %35 = add i64 %34, %31
  %36 = add nuw i32 %32, 1
  %37 = icmp eq i32 %36, %14
  br i1 %37, label %38, label %30, !llvm.loop !64

38:                                               ; preds = %30, %22
  %39 = phi i64 [ %27, %22 ], [ %35, %30 ]
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct.lto_decl_header, ptr %2, i64 0, i32 1
  store i32 %40, ptr %41, align 4, !tbaa !65
  %42 = getelementptr inbounds %struct.output_block, ptr %4, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !12
  %44 = getelementptr inbounds %struct.lto_output_stream, ptr %43, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !31
  %46 = getelementptr inbounds %struct.lto_decl_header, ptr %2, i64 0, i32 3
  store i32 %45, ptr %46, align 4, !tbaa !66
  %47 = load ptr, ptr %10, align 8, !tbaa !13
  %48 = getelementptr inbounds %struct.lto_output_stream, ptr %47, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !31
  %50 = getelementptr inbounds %struct.lto_decl_header, ptr %2, i64 0, i32 4
  store i32 %49, ptr %50, align 4, !tbaa !67
  %51 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #15
  call void @lto_output_data_stream(ptr noundef %51, ptr noundef nonnull %2, i64 noundef 24) #15
  call void @lto_write_stream(ptr noundef %51) #15
  call void @free(ptr noundef %51) #16
  %52 = call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #15
  %53 = add i32 %14, 1
  store i32 %53, ptr %3, align 4, !tbaa !33
  call void @lto_output_data_stream(ptr noundef %52, ptr noundef nonnull %3, i64 noundef 4) #15
  call fastcc void @lto_output_decl_state_refs(ptr noundef %4, ptr noundef %52, ptr noundef %12) #16
  br i1 %15, label %60, label %54

54:                                               ; preds = %38, %54
  %55 = phi i32 [ %58, %54 ], [ 0, %38 ]
  %56 = load ptr, ptr @lto_function_decl_states, align 8
  %57 = call fastcc ptr @VEC_lto_out_decl_state_ptr_base_index(ptr noundef %56, i32 noundef %55) #16
  call fastcc void @lto_output_decl_state_refs(ptr noundef %4, ptr noundef %52, ptr noundef %57) #16
  %58 = add nuw i32 %55, 1
  %59 = icmp eq i32 %58, %14
  br i1 %59, label %60, label %54, !llvm.loop !68

60:                                               ; preds = %54, %38
  call void @lto_write_stream(ptr noundef %52) #15
  call void @free(ptr noundef %52) #16
  %61 = load ptr, ptr %42, align 8, !tbaa !12
  call void @lto_write_stream(ptr noundef %61) #15
  %62 = load ptr, ptr %10, align 8, !tbaa !13
  call void @lto_write_stream(ptr noundef %62) #15
  call void @lto_end_section() #15
  %63 = getelementptr inbounds %struct.output_block, ptr %4, i64 0, i32 11
  %64 = load ptr, ptr %63, align 8, !tbaa !14
  call fastcc void @produce_symtab(ptr noundef %64) #16
  call void @lto_write_options() #15
  %65 = getelementptr inbounds %struct.output_block, ptr %4, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !11
  %67 = getelementptr inbounds %struct.lto_out_decl_state, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !69
  call void @lto_cgraph_encoder_delete(ptr noundef %68) #15
  call fastcc void @VEC_lto_out_decl_state_ptr_heap_free() #16
  store ptr null, ptr @lto_function_decl_states, align 8, !tbaa !46
  call void @destroy_output_block(ptr noundef %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare i32 @htab_hash_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_output_1_stream(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_tree_or_ref(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1) #16
  br label %7

6:                                                ; preds = %3
  tail call void @lto_output_tree(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #16
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_tree_ref(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call fastcc void @output_zero(ptr noundef %0) #16
  br label %80

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @tree_is_indexable(ptr noundef nonnull %1) #16, !range !35
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @lto_output_tree(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 1) #16
  br label %80

9:                                                ; preds = %5
  %10 = load i64, ptr %1, align 8
  %11 = and i64 %10, 65535
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !33
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call fastcc void @output_type_ref(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %80

16:                                               ; preds = %9
  %17 = trunc i64 %10 to i16
  switch i16 %17, label %79 [
    i16 141, label %18
    i16 31, label %22
    i16 29, label %27
    i16 32, label %32
    i16 37, label %32
    i16 33, label %45
    i16 39, label %50
    i16 35, label %59
    i16 38, label %64
    i16 30, label %69
    i16 36, label %74
  ]

18:                                               ; preds = %16
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef 243) #16
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !22
  %21 = zext i32 %20 to i64
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %21) #16
  br label %80

22:                                               ; preds = %16
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef 238) #16
  %23 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  tail call void @lto_output_field_decl_index(ptr noundef %24, ptr noundef %26, ptr noundef nonnull %1) #15
  br label %80

27:                                               ; preds = %16
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef 239) #16
  %28 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !11
  %30 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !12
  tail call void @lto_output_fn_decl_index(ptr noundef %29, ptr noundef %31, ptr noundef nonnull %1) #15
  br label %80

32:                                               ; preds = %16, %16
  %33 = tail call ptr @decl_function_context(ptr noundef nonnull %1) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load i64, ptr %1, align 8
  %37 = and i64 %36, 67108864
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 699, ptr noundef nonnull @.str.3) #15
  br label %40

40:                                               ; preds = %32, %35, %39
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef 248) #16
  %41 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !11
  %43 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !12
  tail call void @lto_output_var_decl_index(ptr noundef %42, ptr noundef %44, ptr noundef nonnull %1) #15
  br label %80

45:                                               ; preds = %16
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef 246) #16
  %46 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !11
  %48 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !12
  tail call void @lto_output_var_decl_index(ptr noundef %47, ptr noundef %49, ptr noundef nonnull %1) #15
  br label %80

50:                                               ; preds = %16
  %51 = tail call ptr @decl_function_context(ptr noundef nonnull %1) #15
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 710, ptr noundef nonnull @.str.3) #15
  br label %54

54:                                               ; preds = %50, %53
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef 247) #16
  %55 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !11
  %57 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !12
  tail call void @lto_output_var_decl_index(ptr noundef %56, ptr noundef %58, ptr noundef nonnull %1) #15
  br label %80

59:                                               ; preds = %16
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef 244) #16
  %60 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !11
  %62 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !12
  tail call void @lto_output_type_decl_index(ptr noundef %61, ptr noundef %63, ptr noundef nonnull %1) #15
  br label %80

64:                                               ; preds = %16
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef 241) #16
  %65 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !11
  %67 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !12
  tail call void @lto_output_namespace_decl_index(ptr noundef %66, ptr noundef %68, ptr noundef nonnull %1) #15
  br label %80

69:                                               ; preds = %16
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef 240) #16
  %70 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !11
  %72 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !12
  tail call void @lto_output_var_decl_index(ptr noundef %71, ptr noundef %73, ptr noundef nonnull %1) #15
  br label %80

74:                                               ; preds = %16
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef 242) #16
  %75 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !11
  %77 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !12
  tail call void @lto_output_var_decl_index(ptr noundef %76, ptr noundef %78, ptr noundef nonnull %1) #15
  br label %80

79:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.3) #15
  br label %80

80:                                               ; preds = %18, %22, %27, %40, %45, %54, %59, %64, %69, %74, %79, %15, %8, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @tree_is_indexable(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %11 [
    i16 34, label %21
    i16 32, label %4
  ]

4:                                                ; preds = %1
  %5 = tail call ptr @decl_function_context(ptr noundef nonnull %0) #15
  %6 = icmp ne ptr %5, null
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 67108864
  %9 = icmp eq i64 %8, 0
  %10 = select i1 %6, i1 %9, i1 false
  br i1 %10, label %21, label %11

11:                                               ; preds = %1, %4
  %12 = phi i64 [ %2, %1 ], [ %7, %4 ]
  %13 = and i64 %12, 65535
  %14 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !33
  %16 = and i32 %15, -2
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = icmp eq i64 %13, 141
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %4, %11, %18, %1
  %22 = phi i8 [ 0, %1 ], [ %20, %18 ], [ 1, %11 ], [ 0, %4 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_type_ref(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef 245) #16
  %3 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  tail call void @lto_output_type_ref_index(ptr noundef %4, ptr noundef %6, ptr noundef %1) #15
  ret void
}

; Function Attrs: optsize
declare void @lto_output_field_decl_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_output_fn_decl_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_output_var_decl_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_output_type_decl_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_output_namespace_decl_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_output_type_ref_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_output_sleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sorry(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_string(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  tail call void @lto_output_uleb128_stream(ptr noundef %1, i64 noundef 0) #15
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %7 = trunc i64 %6 to i32
  %8 = add i32 %7, 1
  tail call fastcc void @output_string_with_length(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %8) #16
  br label %10

9:                                                ; preds = %3
  tail call void @lto_output_uleb128_stream(ptr noundef %1, i64 noundef 1) #15
  br label %10

10:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_string_with_length(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.string_slot, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %6 = add i32 %3, 1
  %7 = zext i32 %6 to i64
  %8 = tail call ptr @xmalloc(i64 noundef %7) #15
  %9 = zext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %2, i64 %9, i1 false)
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  store i8 0, ptr %10, align 1, !tbaa !22
  store ptr %8, ptr %5, align 8, !tbaa !17
  %11 = getelementptr inbounds %struct.string_slot, ptr %5, i64 0, i32 1
  store i32 %3, ptr %11, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.string_slot, ptr %5, i64 0, i32 2
  store i32 0, ptr %12, align 4, !tbaa !71
  %13 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = call ptr @htab_find_slot(ptr noundef %14, ptr noundef nonnull %5, i32 noundef 1) #15
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  %21 = getelementptr inbounds %struct.lto_output_stream, ptr %20, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !31
  %23 = call ptr @xmalloc(i64 noundef 16) #15
  store ptr %8, ptr %23, align 8, !tbaa !17
  %24 = getelementptr inbounds %struct.string_slot, ptr %23, i64 0, i32 1
  store i32 %3, ptr %24, align 8, !tbaa !19
  %25 = getelementptr inbounds %struct.string_slot, ptr %23, i64 0, i32 2
  store i32 %22, ptr %25, align 4, !tbaa !71
  store ptr %23, ptr %15, align 8, !tbaa !46
  %26 = zext i32 %22 to i64
  call void @lto_output_uleb128_stream(ptr noundef %1, i64 noundef %26) #15
  call void @lto_output_uleb128_stream(ptr noundef %20, i64 noundef %9) #15
  %27 = icmp eq i32 %3, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %18, %28
  %29 = phi i64 [ %32, %28 ], [ 0, %18 ]
  %30 = getelementptr inbounds i8, ptr %8, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !22
  call void @lto_output_1_stream(ptr noundef %20, i8 noundef signext %31) #15
  %32 = add nuw nsw i64 %29, 1
  %33 = icmp eq i64 %32, %9
  br i1 %33, label %38, label %28, !llvm.loop !72

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.string_slot, ptr %16, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !71
  %37 = zext i32 %36 to i64
  call void @lto_output_uleb128_stream(ptr noundef %1, i64 noundef %37) #15
  call void @free(ptr noundef nonnull %8) #16
  br label %38

38:                                               ; preds = %28, %18, %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_tree_header(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %1, align 8
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 65535
  %7 = tail call fastcc zeroext i8 @lto_is_streamable(ptr noundef nonnull %1) #16, !range !35
  %8 = icmp eq i8 %7, 0
  %9 = and i64 %4, 65535
  br i1 %8, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.5, ptr noundef %12) #15
  br label %13

13:                                               ; preds = %3, %10
  %14 = tail call fastcc i32 @lto_tree_code_to_tag(i32 noundef %6) #16, !range !34
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef %14) #16
  %15 = sext i32 %2 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %15) #16
  %16 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %9, i64 6
  %17 = load i8, ptr %16, align 2, !tbaa !22
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !12
  tail call fastcc void @output_string_cst(ptr noundef %0, ptr noundef %21, ptr noundef nonnull %1) #16
  br label %45

22:                                               ; preds = %13
  %23 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %9, i64 8
  %24 = load i8, ptr %23, align 8, !tbaa !22
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !12
  tail call fastcc void @output_identifier(ptr noundef %0, ptr noundef %28, ptr noundef nonnull %1) #16
  br label %45

29:                                               ; preds = %22
  %30 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %9, i64 24
  %31 = load i8, ptr %30, align 8, !tbaa !22
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.tree_vec, ptr %1, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !22
  %36 = sext i32 %35 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %36) #16
  br label %45

37:                                               ; preds = %29
  %38 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %9, i64 28
  %39 = load i8, ptr %38, align 4, !tbaa !22
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 9
  %43 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef nonnull %42) #16
  %44 = zext i32 %43 to i64
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %44) #16
  br label %45

45:                                               ; preds = %26, %37, %41, %33, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @pack_value_fields(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = tail call ptr @bitpack_create() #15
  tail call fastcc void @pack_ts_base_value_fields(ptr noundef %4, ptr noundef nonnull %0) #16
  %5 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %3, i64 3
  %6 = load i8, ptr %5, align 1, !tbaa !22
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call fastcc void @pack_ts_real_cst_value_fields(ptr noundef %4, ptr noundef nonnull %0) #16
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %3, i64 4
  %11 = load i8, ptr %10, align 4, !tbaa !22
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call fastcc void @pack_ts_fixed_cst_value_fields(ptr noundef %4, ptr noundef nonnull %0) #16
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %3, i64 10
  %16 = load i8, ptr %15, align 2, !tbaa !22
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call fastcc void @pack_ts_decl_common_value_fields(ptr noundef %4, ptr noundef nonnull %0) #16
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %3, i64 11
  %21 = load i8, ptr %20, align 1, !tbaa !22
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call fastcc void @pack_ts_decl_wrtl_value_fields(ptr noundef %4, ptr noundef nonnull %0) #16
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %3, i64 13
  %26 = load i8, ptr %25, align 1, !tbaa !22
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call fastcc void @pack_ts_decl_with_vis_value_fields(ptr noundef %4, ptr noundef nonnull %0) #16
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %3, i64 21
  %31 = load i8, ptr %30, align 1, !tbaa !22
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call fastcc void @pack_ts_function_decl_value_fields(ptr noundef %4, ptr noundef nonnull %0) #16
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %3, i64 22
  %36 = load i8, ptr %35, align 2, !tbaa !22
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call fastcc void @pack_ts_type_value_fields(ptr noundef %4, ptr noundef nonnull %0) #16
  br label %39

39:                                               ; preds = %38, %34
  %40 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %3, i64 27
  %41 = load i8, ptr %40, align 1, !tbaa !22
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call fastcc void @pack_ts_block_value_fields(ptr noundef %4, ptr noundef nonnull %0) #16
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %3, i64 26
  %46 = load i8, ptr %45, align 2, !tbaa !22
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 586, ptr noundef nonnull @.str.3) #15
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %3, i64 29
  %51 = load i8, ptr %50, align 1, !tbaa !22
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 592, ptr noundef nonnull @.str.3) #15
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %3, i64 31
  %56 = load i8, ptr %55, align 1, !tbaa !22
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 598, ptr noundef nonnull @.str.3) #15
  br label %59

59:                                               ; preds = %58, %54
  ret ptr %4
}

; Function Attrs: optsize
declare void @bitpack_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_tree_pointers(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !22
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call fastcc void @lto_output_ts_common_tree_pointers(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #16
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 5
  %12 = load i8, ptr %11, align 1, !tbaa !22
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call fastcc void @lto_output_ts_vector_tree_pointers(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #16
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 7
  %17 = load i8, ptr %16, align 1, !tbaa !22
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call fastcc void @lto_output_ts_complex_tree_pointers(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 9
  %22 = load i8, ptr %21, align 1, !tbaa !22
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @lto_output_ts_decl_minimal_tree_pointers(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #16
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 10
  %27 = load i8, ptr %26, align 2, !tbaa !22
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call fastcc void @lto_output_ts_decl_common_tree_pointers(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #16
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 12
  %32 = load i8, ptr %31, align 4, !tbaa !22
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call fastcc void @lto_output_ts_decl_non_common_tree_pointers(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #16
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 13
  %37 = load i8, ptr %36, align 1, !tbaa !22
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call fastcc void @lto_output_ts_decl_with_vis_tree_pointers(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #16
  br label %40

40:                                               ; preds = %39, %35
  %41 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 14
  %42 = load i8, ptr %41, align 2, !tbaa !22
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call fastcc void @lto_output_ts_field_decl_tree_pointers(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #16
  br label %45

45:                                               ; preds = %44, %40
  %46 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 21
  %47 = load i8, ptr %46, align 1, !tbaa !22
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call fastcc void @lto_output_ts_function_decl_tree_pointers(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #16
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 22
  %52 = load i8, ptr %51, align 2, !tbaa !22
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call fastcc void @lto_output_ts_type_tree_pointers(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #16
  br label %55

55:                                               ; preds = %54, %50
  %56 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 23
  %57 = load i8, ptr %56, align 1, !tbaa !22
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call fastcc void @lto_output_ts_list_tree_pointers(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #16
  br label %60

60:                                               ; preds = %59, %55
  %61 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 24
  %62 = load i8, ptr %61, align 8, !tbaa !22
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call fastcc void @lto_output_ts_vec_tree_pointers(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #16
  br label %65

65:                                               ; preds = %64, %60
  %66 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 25
  %67 = load i8, ptr %66, align 1, !tbaa !22
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call fastcc void @lto_output_ts_exp_tree_pointers(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #16
  br label %70

70:                                               ; preds = %69, %65
  %71 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 26
  %72 = load i8, ptr %71, align 2, !tbaa !22
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1155, ptr noundef nonnull @.str.3) #15
  br label %75

75:                                               ; preds = %74, %70
  %76 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 27
  %77 = load i8, ptr %76, align 1, !tbaa !22
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call fastcc void @lto_output_ts_block_tree_pointers(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #16
  br label %80

80:                                               ; preds = %79, %75
  %81 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 28
  %82 = load i8, ptr %81, align 4, !tbaa !22
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  tail call fastcc void @lto_output_ts_binfo_tree_pointers(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #16
  br label %85

85:                                               ; preds = %84, %80
  %86 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 30
  %87 = load i8, ptr %86, align 2, !tbaa !22
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  tail call fastcc void @lto_output_ts_constructor_tree_pointers(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #16
  br label %90

90:                                               ; preds = %89, %85
  %91 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 29
  %92 = load i8, ptr %91, align 1, !tbaa !22
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1170, ptr noundef nonnull @.str.3) #15
  br label %95

95:                                               ; preds = %94, %90
  %96 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 31
  %97 = load i8, ptr %96, align 1, !tbaa !22
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1176, ptr noundef nonnull @.str.3) #15
  br label %100

100:                                              ; preds = %99, %95
  %101 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 32
  %102 = load i8, ptr %101, align 16, !tbaa !22
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  tail call void (ptr, ...) @sorry(ptr noundef nonnull @.str.6) #15
  br label %105

105:                                              ; preds = %104, %100
  %106 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 33
  %107 = load i8, ptr %106, align 1, !tbaa !22
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  tail call void (ptr, ...) @sorry(ptr noundef nonnull @.str.7) #15
  br label %110

110:                                              ; preds = %109, %105
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @lto_is_streamable(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i64, ptr %0, align 8
  %3 = tail call fastcc zeroext i8 @is_lang_specific(ptr noundef nonnull %0) #16, !range !35
  %4 = freeze i8 %3
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = trunc i64 %2 to i16
  switch i16 %7, label %8 [
    i16 147, label %15
    i16 141, label %15
    i16 60, label %15
    i16 59, label %15
    i16 58, label %15
    i16 55, label %15
    i16 54, label %15
    i16 53, label %15
    i16 22, label %15
    i16 139, label %14
    i16 132, label %14
  ]

8:                                                ; preds = %6
  %9 = and i64 %2, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !33
  %12 = icmp ne i32 %11, 8
  %13 = zext i1 %12 to i8
  br label %15

14:                                               ; preds = %6, %6
  br label %15

15:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %14, %1, %8
  %16 = phi i8 [ 0, %6 ], [ %13, %8 ], [ 0, %1 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 1, %14 ]
  ret i8 %16
}

; Function Attrs: optsize
declare void @internal_error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_string_cst(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  tail call void @lto_output_uleb128_stream(ptr noundef %1, i64 noundef 0) #15
  %4 = getelementptr inbounds %struct.tree_string, ptr %2, i64 0, i32 2
  %5 = getelementptr inbounds %struct.tree_string, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !22
  tail call fastcc void @output_string_with_length(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_identifier(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  tail call void @lto_output_uleb128_stream(ptr noundef %1, i64 noundef 0) #15
  %4 = getelementptr inbounds %struct.tree_identifier, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.tree_identifier, ptr %2, i64 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !22
  tail call fastcc void @output_string_with_length(ptr noundef %0, ptr noundef %1, ptr noundef %5, i32 noundef %7) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !73
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_lang_specific(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 22
  %6 = icmp ugt i32 %4, 187
  %7 = or i1 %5, %6
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: optsize
declare ptr @bitpack_create() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pack_ts_base_value_fields(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %4, i32 noundef 16) #15
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !33
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = lshr i64 %5, 16
  %12 = and i64 %11, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %12, i32 noundef 1) #15
  %13 = load i64, ptr %1, align 8
  %14 = lshr i64 %13, 17
  %15 = and i64 %14, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %15, i32 noundef 1) #15
  %16 = load i64, ptr %1, align 8
  %17 = lshr i64 %16, 20
  %18 = and i64 %17, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %18, i32 noundef 1) #15
  %19 = load i64, ptr %1, align 8
  %20 = lshr i64 %19, 27
  %21 = and i64 %20, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %21, i32 noundef 1) #15
  %22 = load i64, ptr %1, align 8
  br label %23

23:                                               ; preds = %10, %2
  %24 = phi i64 [ %22, %10 ], [ %5, %2 ]
  %25 = lshr i64 %24, 18
  %26 = and i64 %25, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %26, i32 noundef 1) #15
  %27 = load i64, ptr %1, align 8
  %28 = lshr i64 %27, 19
  %29 = and i64 %28, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %29, i32 noundef 1) #15
  %30 = load i64, ptr %1, align 8
  %31 = and i64 %30, 65535
  %32 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !33
  %34 = and i32 %33, -2
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = lshr i64 %30, 21
  %38 = and i64 %37, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %38, i32 noundef 1) #15
  br label %39

39:                                               ; preds = %23, %36
  %40 = load i64, ptr %1, align 8
  %41 = and i64 %40, 65535
  %42 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !33
  %44 = icmp eq i32 %43, 2
  %45 = lshr i64 %40, 22
  %46 = and i64 %45, 1
  %47 = select i1 %44, i64 0, i64 %46
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %47, i32 noundef 1) #15
  %48 = load i64, ptr %1, align 8
  %49 = lshr i64 %48, 23
  %50 = and i64 %49, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %50, i32 noundef 1) #15
  %51 = load i64, ptr %1, align 8
  %52 = lshr i64 %51, 24
  %53 = and i64 %52, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %53, i32 noundef 1) #15
  %54 = load i64, ptr %1, align 8
  %55 = lshr i64 %54, 25
  %56 = and i64 %55, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %56, i32 noundef 1) #15
  %57 = load i64, ptr %1, align 8
  %58 = lshr i64 %57, 26
  %59 = and i64 %58, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %59, i32 noundef 1) #15
  %60 = load i64, ptr %1, align 8
  %61 = lshr i64 %60, 28
  %62 = and i64 %61, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %62, i32 noundef 1) #15
  %63 = load i64, ptr %1, align 8
  %64 = lshr i64 %63, 29
  %65 = and i64 %64, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %65, i32 noundef 1) #15
  %66 = load i64, ptr %1, align 8
  %67 = lshr i64 %66, 30
  %68 = and i64 %67, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %68, i32 noundef 1) #15
  %69 = load i64, ptr %1, align 8
  %70 = and i64 %69, 65535
  %71 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !33
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %78

74:                                               ; preds = %39
  %75 = lshr i64 %69, 31
  %76 = and i64 %75, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %76, i32 noundef 1) #15
  %77 = load i64, ptr %1, align 8
  br label %78

78:                                               ; preds = %74, %39
  %79 = phi i64 [ %77, %74 ], [ %69, %39 ]
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 141
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = lshr i64 %79, 32
  %84 = and i64 %83, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %84, i32 noundef 1) #15
  br label %85

85:                                               ; preds = %82, %78
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pack_ts_real_cst_value_fields(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = getelementptr inbounds %struct.tree_real_cst, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !75
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 3
  %8 = zext nneg i32 %7 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %8, i32 noundef 2) #15
  %9 = lshr i32 %6, 2
  %10 = and i32 %9, 1
  %11 = zext nneg i32 %10 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %11, i32 noundef 1) #15
  %12 = lshr i32 %6, 3
  %13 = and i32 %12, 1
  %14 = zext nneg i32 %13 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %14, i32 noundef 1) #15
  %15 = lshr i32 %6, 4
  %16 = and i32 %15, 1
  %17 = zext nneg i32 %16 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %17, i32 noundef 1) #15
  %18 = lshr i32 %6, 5
  %19 = and i32 %18, 1
  %20 = zext nneg i32 %19 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %20, i32 noundef 1) #15
  %21 = lshr i32 %6, 6
  %22 = zext nneg i32 %21 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %22, i32 noundef 26) #15
  br label %23

23:                                               ; preds = %2, %23
  %24 = phi i64 [ 0, %2 ], [ %27, %23 ]
  %25 = getelementptr inbounds %struct.real_value, ptr %3, i64 0, i32 1, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !27
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %26, i32 noundef 64) #15
  %27 = add nuw nsw i64 %24, 1
  %28 = icmp eq i64 %27, 3
  br i1 %28, label %29, label %23, !llvm.loop !76

29:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pack_ts_fixed_cst_value_fields(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_fixed_cst, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = load i64, ptr %4, align 8, !tbaa.struct !77
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa.struct !78
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %5, i32 noundef 64) #15
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %7, i32 noundef 64) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pack_ts_decl_common_value_fields(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 255
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %5, i32 noundef 8) #15
  %6 = load i64, ptr %3, align 8
  %7 = lshr i64 %6, 8
  %8 = and i64 %7, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %8, i32 noundef 1) #15
  %9 = load i64, ptr %3, align 8
  %10 = lshr i64 %9, 9
  %11 = and i64 %10, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %11, i32 noundef 1) #15
  %12 = load i64, ptr %3, align 8
  %13 = lshr i64 %12, 10
  %14 = and i64 %13, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %14, i32 noundef 1) #15
  %15 = load i64, ptr %3, align 8
  %16 = lshr i64 %15, 11
  %17 = and i64 %16, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %17, i32 noundef 1) #15
  %18 = load i64, ptr %3, align 8
  %19 = lshr i64 %18, 12
  %20 = and i64 %19, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %20, i32 noundef 1) #15
  %21 = load i64, ptr %1, align 8
  %22 = lshr i64 %21, 42
  %23 = and i64 %22, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %23, i32 noundef 1) #15
  %24 = load i64, ptr %3, align 8
  %25 = lshr i64 %24, 13
  %26 = and i64 %25, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %26, i32 noundef 1) #15
  %27 = load i64, ptr %3, align 8
  %28 = lshr i64 %27, 14
  %29 = and i64 %28, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %29, i32 noundef 1) #15
  %30 = load i64, ptr %3, align 8
  %31 = lshr i64 %30, 25
  %32 = and i64 %31, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %32, i32 noundef 1) #15
  %33 = load i64, ptr %3, align 8
  %34 = lshr i64 %33, 27
  %35 = and i64 %34, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %35, i32 noundef 1) #15
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !22
  %38 = zext i32 %37 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %38, i32 noundef 32) #15
  %39 = load i64, ptr %1, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 30
  br i1 %41, label %42, label %50

42:                                               ; preds = %2
  %43 = load i64, ptr %3, align 8
  %44 = lshr i64 %43, 24
  %45 = and i64 %44, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %45, i32 noundef 1) #15
  %46 = getelementptr inbounds %struct.tree_label_decl, ptr %1, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !22
  %48 = sext i32 %47 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %48, i32 noundef 32) #15
  %49 = load i64, ptr %1, align 8
  br label %50

50:                                               ; preds = %42, %2
  %51 = phi i64 [ %49, %42 ], [ %39, %2 ]
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 31
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = lshr i64 %51, 41
  %56 = and i64 %55, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %56, i32 noundef 1) #15
  %57 = load i64, ptr %3, align 8
  %58 = lshr i64 %57, 26
  %59 = and i64 %58, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %59, i32 noundef 1) #15
  %60 = load i64, ptr %3, align 8
  %61 = lshr i64 %60, 32
  %62 = and i64 %61, 255
  %63 = shl nuw i64 1, %62
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %63, i32 noundef 8) #15
  %64 = load i64, ptr %1, align 8
  br label %65

65:                                               ; preds = %54, %50
  %66 = phi i64 [ %64, %54 ], [ %51, %50 ]
  %67 = trunc i64 %66 to i16
  switch i16 %67, label %82 [
    i16 36, label %68
    i16 34, label %68
    i16 32, label %68
  ]

68:                                               ; preds = %65, %65, %65
  %69 = load i64, ptr %3, align 8
  %70 = lshr i64 %69, 28
  %71 = and i64 %70, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %71, i32 noundef 1) #15
  %72 = load i64, ptr %1, align 8
  %73 = trunc i64 %72 to i16
  switch i16 %73, label %78 [
    i16 32, label %74
    i16 34, label %74
  ]

74:                                               ; preds = %68, %68
  %75 = load i64, ptr %3, align 8
  %76 = lshr i64 %75, 26
  %77 = and i64 %76, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %77, i32 noundef 1) #15
  br label %78

78:                                               ; preds = %68, %74
  %79 = load i64, ptr %3, align 8
  %80 = lshr i64 %79, 29
  %81 = and i64 %80, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %81, i32 noundef 1) #15
  br label %82

82:                                               ; preds = %65, %78
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pack_ts_decl_wrtl_value_fields(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = lshr i64 %4, 24
  %6 = and i64 %5, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %6, i32 noundef 1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pack_ts_decl_with_vis_value_fields(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 1
  %6 = zext nneg i32 %5 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %6, i32 noundef 1) #15
  %7 = load i32, ptr %3, align 8
  %8 = lshr i32 %7, 3
  %9 = and i32 %8, 1
  %10 = zext nneg i32 %9 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %10, i32 noundef 1) #15
  %11 = load i32, ptr %3, align 8
  %12 = lshr i32 %11, 5
  %13 = and i32 %12, 1
  %14 = zext nneg i32 %13 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %14, i32 noundef 1) #15
  %15 = load i32, ptr %3, align 8
  %16 = lshr i32 %15, 7
  %17 = and i32 %16, 1
  %18 = zext nneg i32 %17 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %18, i32 noundef 1) #15
  %19 = load i32, ptr %3, align 8
  %20 = lshr i32 %19, 8
  %21 = and i32 %20, 1
  %22 = zext nneg i32 %21 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %22, i32 noundef 1) #15
  %23 = load i32, ptr %3, align 8
  %24 = lshr i32 %23, 9
  %25 = and i32 %24, 1
  %26 = zext nneg i32 %25 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %26, i32 noundef 1) #15
  %27 = load i32, ptr %3, align 8
  %28 = lshr i32 %27, 10
  %29 = and i32 %28, 3
  %30 = zext nneg i32 %29 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %30, i32 noundef 2) #15
  %31 = load i32, ptr %3, align 8
  %32 = lshr i32 %31, 12
  %33 = and i32 %32, 1
  %34 = zext nneg i32 %33 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %34, i32 noundef 1) #15
  %35 = load i64, ptr %1, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 32
  br i1 %37, label %38, label %52

38:                                               ; preds = %2
  %39 = load i32, ptr %3, align 8
  %40 = lshr i32 %39, 1
  %41 = and i32 %40, 1
  %42 = zext nneg i32 %41 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %42, i32 noundef 1) #15
  %43 = load i32, ptr %3, align 8
  %44 = lshr i32 %43, 4
  %45 = and i32 %44, 1
  %46 = zext nneg i32 %45 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %46, i32 noundef 1) #15
  %47 = load i32, ptr %3, align 8
  %48 = lshr i32 %47, 13
  %49 = and i32 %48, 7
  %50 = zext nneg i32 %49 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %50, i32 noundef 3) #15
  %51 = load i64, ptr %1, align 8
  br label %52

52:                                               ; preds = %38, %2
  %53 = phi i64 [ %51, %38 ], [ %35, %2 ]
  %54 = trunc i64 %53 to i16
  switch i16 %54, label %58 [
    i16 32, label %55
    i16 29, label %55
  ]

55:                                               ; preds = %52, %52
  %56 = tail call zeroext i16 @decl_init_priority_lookup(ptr noundef nonnull %1) #15
  %57 = zext i16 %56 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %57, i32 noundef 16) #15
  br label %58

58:                                               ; preds = %52, %55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pack_ts_function_decl_value_fields(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @lto_stream_as_builtin_p(ptr noundef %1) #16, !range !35
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 487, ptr noundef nonnull @.str.3) #15
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 2047
  %10 = zext nneg i32 %9 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %10, i32 noundef 11) #15
  %11 = load i32, ptr %7, align 8
  %12 = lshr i32 %11, 11
  %13 = and i32 %12, 3
  %14 = zext nneg i32 %13 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %14, i32 noundef 2) #15
  %15 = load i32, ptr %7, align 8
  %16 = lshr i32 %15, 13
  %17 = and i32 %16, 1
  %18 = zext nneg i32 %17 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %18, i32 noundef 1) #15
  %19 = load i32, ptr %7, align 8
  %20 = lshr i32 %19, 14
  %21 = and i32 %20, 1
  %22 = zext nneg i32 %21 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %22, i32 noundef 1) #15
  %23 = load i32, ptr %7, align 8
  %24 = lshr i32 %23, 15
  %25 = and i32 %24, 1
  %26 = zext nneg i32 %25 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %26, i32 noundef 1) #15
  %27 = load i32, ptr %7, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 1
  %30 = zext nneg i32 %29 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %30, i32 noundef 1) #15
  %31 = load i32, ptr %7, align 8
  %32 = lshr i32 %31, 17
  %33 = and i32 %32, 1
  %34 = zext nneg i32 %33 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %34, i32 noundef 1) #15
  %35 = load i32, ptr %7, align 8
  %36 = lshr i32 %35, 18
  %37 = and i32 %36, 1
  %38 = zext nneg i32 %37 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %38, i32 noundef 1) #15
  %39 = load i32, ptr %7, align 8
  %40 = lshr i32 %39, 19
  %41 = and i32 %40, 1
  %42 = zext nneg i32 %41 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %42, i32 noundef 1) #15
  %43 = load i32, ptr %7, align 8
  %44 = lshr i32 %43, 20
  %45 = and i32 %44, 1
  %46 = zext nneg i32 %45 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %46, i32 noundef 1) #15
  %47 = load i32, ptr %7, align 8
  %48 = lshr i32 %47, 21
  %49 = and i32 %48, 1
  %50 = zext nneg i32 %49 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %50, i32 noundef 1) #15
  %51 = load i32, ptr %7, align 8
  %52 = lshr i32 %51, 22
  %53 = and i32 %52, 1
  %54 = zext nneg i32 %53 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %54, i32 noundef 1) #15
  %55 = load i32, ptr %7, align 8
  %56 = lshr i32 %55, 23
  %57 = and i32 %56, 1
  %58 = zext nneg i32 %57 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %58, i32 noundef 1) #15
  %59 = load i32, ptr %7, align 8
  %60 = lshr i32 %59, 24
  %61 = and i32 %60, 1
  %62 = zext nneg i32 %61 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %62, i32 noundef 1) #15
  %63 = load i32, ptr %7, align 8
  %64 = lshr i32 %63, 25
  %65 = and i32 %64, 1
  %66 = zext nneg i32 %65 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %66, i32 noundef 1) #15
  %67 = load i32, ptr %7, align 8
  %68 = lshr i32 %67, 26
  %69 = and i32 %68, 1
  %70 = zext nneg i32 %69 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %70, i32 noundef 1) #15
  %71 = load i32, ptr %7, align 8
  %72 = lshr i32 %71, 27
  %73 = and i32 %72, 1
  %74 = zext nneg i32 %73 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %74, i32 noundef 1) #15
  %75 = load i32, ptr %7, align 8
  %76 = lshr i32 %75, 28
  %77 = and i32 %76, 1
  %78 = zext nneg i32 %77 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %78, i32 noundef 1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pack_ts_type_value_fields(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1023
  %6 = zext nneg i32 %5 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %6, i32 noundef 9) #15
  %7 = load i64, ptr %1, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 14
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #15
  br label %16

12:                                               ; preds = %2
  %13 = load i32, ptr %3, align 4
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi i32 [ %11, %10 ], [ %15, %12 ]
  %18 = zext i32 %17 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %18, i32 noundef 7) #15
  %19 = load i32, ptr %3, align 4
  %20 = lshr i32 %19, 24
  %21 = and i32 %20, 1
  %22 = zext nneg i32 %21 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %22, i32 noundef 1) #15
  %23 = load i32, ptr %3, align 4
  %24 = lshr i32 %23, 10
  %25 = and i32 %24, 1
  %26 = zext nneg i32 %25 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %26, i32 noundef 1) #15
  %27 = load i32, ptr %3, align 4
  %28 = lshr i32 %27, 11
  %29 = and i32 %28, 1
  %30 = zext nneg i32 %29 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %30, i32 noundef 1) #15
  %31 = load i64, ptr %1, align 8
  %32 = and i64 %31, 65534
  %33 = icmp eq i64 %32, 16
  br i1 %33, label %34, label %40

34:                                               ; preds = %16
  %35 = load i32, ptr %3, align 4
  %36 = lshr i32 %35, 12
  %37 = and i32 %36, 1
  %38 = zext nneg i32 %37 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %38, i32 noundef 1) #15
  %39 = load i64, ptr %1, align 8
  br label %40

40:                                               ; preds = %16, %34
  %41 = phi i64 [ %31, %16 ], [ %39, %34 ]
  %42 = lshr i64 %41, 41
  %43 = and i64 %42, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %43, i32 noundef 1) #15
  %44 = load i32, ptr %3, align 4
  %45 = lshr i32 %44, 13
  %46 = and i32 %45, 1
  %47 = zext nneg i32 %46 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %47, i32 noundef 1) #15
  %48 = load i32, ptr %3, align 4
  %49 = lshr i32 %48, 14
  %50 = and i32 %49, 3
  %51 = zext nneg i32 %50 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %51, i32 noundef 2) #15
  %52 = load i64, ptr %1, align 8
  %53 = lshr i64 %52, 42
  %54 = and i64 %53, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %54, i32 noundef 1) #15
  %55 = load i64, ptr %1, align 8
  %56 = lshr i64 %55, 20
  %57 = and i64 %56, 1
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %57, i32 noundef 1) #15
  %58 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 7
  %59 = load i32, ptr %58, align 8, !tbaa !22
  %60 = zext i32 %59 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %60, i32 noundef 32) #15
  %61 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 8
  %62 = load i32, ptr %61, align 4, !tbaa !22
  %63 = icmp ne i32 %62, 0
  %64 = sext i1 %63 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %64, i32 noundef 32) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pack_ts_block_value_fields(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 1
  %6 = zext nneg i32 %5 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %6, i32 noundef 1) #15
  %7 = load i32, ptr %3, align 8
  %8 = lshr i32 %7, 1
  %9 = zext nneg i32 %8 to i64
  tail call void @bp_pack_value(ptr noundef %0, i64 noundef %9, i32 noundef 31) #15
  ret void
}

; Function Attrs: optsize
declare void @bp_pack_value(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i16 @decl_init_priority_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_ts_common_tree_pointers(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %5, i8 noundef zeroext %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_ts_vector_tree_pointers(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_vector, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  tail call fastcc void @lto_output_chain(ptr noundef %0, ptr noundef %5, i8 noundef zeroext %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_ts_complex_tree_pointers(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_complex, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %5, i8 noundef zeroext %2) #16
  %6 = getelementptr inbounds %struct.tree_complex, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %7, i8 noundef zeroext %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_ts_decl_minimal_tree_pointers(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %5, i8 noundef zeroext %2) #16
  %6 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %7, i8 noundef zeroext %2) #16
  %8 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !22
  tail call fastcc void @lto_output_location(ptr noundef %0, i32 noundef %9) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_ts_decl_common_tree_pointers(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %5, i8 noundef zeroext %2) #16
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %7, i8 noundef zeroext %2) #16
  %8 = load i64, ptr %1, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 29
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %13, i8 noundef zeroext %2) #16
  br label %14

14:                                               ; preds = %11, %3
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %16, i8 noundef zeroext %2) #16
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %18, i8 noundef zeroext %2) #16
  %19 = load i64, ptr %1, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 34
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  tail call fastcc void @lto_output_chain(ptr noundef %0, ptr noundef %24, i8 noundef zeroext %2) #16
  %25 = load i64, ptr %1, align 8
  br label %26

26:                                               ; preds = %22, %14
  %27 = phi i64 [ %25, %22 ], [ %19, %14 ]
  %28 = trunc i64 %27 to i16
  switch i16 %28, label %36 [
    i16 32, label %29
    i16 34, label %29
  ]

29:                                               ; preds = %26, %26
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 67108864
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %1) #15
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %35, i8 noundef zeroext %2) #16
  br label %36

36:                                               ; preds = %26, %34, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_ts_decl_non_common_tree_pointers(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 29
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 876, ptr noundef nonnull @.str.3) #15
  br label %12

12:                                               ; preds = %7, %11
  %13 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %14, i8 noundef zeroext %2) #16
  %15 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %16, i8 noundef zeroext %2) #16
  br label %17

17:                                               ; preds = %12, %3
  %18 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %19, i8 noundef zeroext %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_ts_decl_with_vis_tree_pointers(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 13
  %7 = load i8, ptr %6, align 1, !tbaa !22
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @decl_assembler_name(ptr noundef nonnull %1) #15
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %14, i8 noundef zeroext %2) #16
  br label %16

15:                                               ; preds = %9, %3
  tail call fastcc void @output_zero(ptr noundef %0) #16
  br label %16

16:                                               ; preds = %15, %13
  %17 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %18, i8 noundef zeroext %2) #16
  %19 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %20, i8 noundef zeroext %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_ts_field_decl_tree_pointers(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %5, i8 noundef zeroext %2) #16
  %6 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %7, i8 noundef zeroext %2) #16
  %8 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %9, i8 noundef zeroext %2) #16
  %10 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %11, i8 noundef zeroext %2) #16
  %12 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %13, i8 noundef zeroext %2) #16
  %14 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  tail call fastcc void @lto_output_chain(ptr noundef %0, ptr noundef %15, i8 noundef zeroext %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_ts_function_decl_tree_pointers(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %5, i8 noundef zeroext %2) #16
  %6 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %7, i8 noundef zeroext %2) #16
  %8 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %9, i8 noundef zeroext %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_ts_type_tree_pointers(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load i64, ptr %1, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %9 [
    i16 6, label %6
    i16 15, label %6
    i16 16, label %6
    i16 17, label %6
    i16 20, label %6
    i16 21, label %6
    i16 14, label %6
  ]

6:                                                ; preds = %3, %3, %3, %3, %3, %3, %3
  %7 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %8, i8 noundef zeroext %2) #16
  br label %9

9:                                                ; preds = %6, %3
  %10 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %11, i8 noundef zeroext %2) #16
  %12 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %13, i8 noundef zeroext %2) #16
  %14 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %15, i8 noundef zeroext %2) #16
  %16 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %17, i8 noundef zeroext %2) #16
  %18 = load i64, ptr %1, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %20 [
    i16 10, label %23
    i16 12, label %23
  ]

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %22, i8 noundef zeroext %2) #16
  br label %23

23:                                               ; preds = %9, %9, %20
  %24 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %25, i8 noundef zeroext %2) #16
  %26 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %27, i8 noundef zeroext %2) #16
  %28 = load i64, ptr %1, align 8
  %29 = and i64 %28, 65534
  %30 = icmp eq i64 %29, 16
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 17
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %33, i8 noundef zeroext %2) #16
  br label %34

34:                                               ; preds = %23, %31
  %35 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 18
  %36 = load ptr, ptr %35, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %36, i8 noundef zeroext %2) #16
  %37 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %38, i8 noundef zeroext %2) #16
  %39 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %40, i8 noundef zeroext %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_ts_list_tree_pointers(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_list, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %5, i8 noundef zeroext %2) #16
  %6 = getelementptr inbounds %struct.tree_list, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %7, i8 noundef zeroext %2) #16
  %8 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  tail call fastcc void @lto_output_chain(ptr noundef %0, ptr noundef %9, i8 noundef zeroext %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_ts_vec_tree_pointers(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_vec, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !22
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %11, %7 ], [ 0, %3 ]
  %9 = getelementptr inbounds %struct.tree_vec, ptr %1, i64 0, i32 2, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %10, i8 noundef zeroext %2) #16
  %11 = add nuw nsw i64 %8, 1
  %12 = load i32, ptr %4, align 8, !tbaa !22
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %7, label %15, !llvm.loop !79

15:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_ts_exp_tree_pointers(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @tree_operand_length(ptr noundef %1) #16
  %5 = sext i32 %4 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %5) #16
  %6 = tail call fastcc i32 @tree_operand_length(ptr noundef %1) #16
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %12, %8 ], [ 0, %3 ]
  %10 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %11, i8 noundef zeroext %2) #16
  %12 = add nuw nsw i64 %9, 1
  %13 = tail call fastcc i32 @tree_operand_length(ptr noundef %1) #16
  %14 = sext i32 %13 to i64
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %8, label %16, !llvm.loop !80

16:                                               ; preds = %8, %3
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, 65535
  %19 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !33
  %21 = add i32 %20, -4
  %22 = icmp ult i32 %21, 7
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !22
  br label %26

26:                                               ; preds = %16, %23
  %27 = phi i32 [ %25, %23 ], [ 0, %16 ]
  tail call fastcc void @lto_output_location(ptr noundef %0, i32 noundef %27) #16
  %28 = tail call ptr @tree_block(ptr noundef nonnull %1) #15
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %29, i8 noundef zeroext %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_ts_block_tree_pointers(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !22
  tail call fastcc void @lto_output_location(ptr noundef %0, i32 noundef %6) #16
  %7 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  tail call fastcc void @lto_output_chain(ptr noundef %0, ptr noundef %8, i8 noundef zeroext %2) #16
  %9 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %10) #16
  %12 = zext i32 %11 to i64
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %12) #16
  %13 = load ptr, ptr %9, align 8, !tbaa !22
  %14 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %4) #16, !range !26
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %3, %16
  %17 = phi i32 [ %19, %16 ], [ 0, %3 ]
  %18 = load ptr, ptr %4, align 8, !tbaa !46
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %18, i8 noundef zeroext %2) #16
  %19 = add i32 %17, 1
  %20 = load ptr, ptr %9, align 8, !tbaa !22
  %21 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %20, i32 noundef %19, ptr noundef nonnull %4) #16, !range !26
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %16, !llvm.loop !81

23:                                               ; preds = %16, %3
  %24 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %25, i8 noundef zeroext %2) #16
  %26 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %27, i8 noundef zeroext %2) #16
  %28 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %29, i8 noundef zeroext %2) #16
  %30 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %31, i8 noundef zeroext %2) #16
  %32 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  tail call fastcc void @lto_output_chain(ptr noundef %0, ptr noundef %33, i8 noundef zeroext %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_ts_binfo_tree_pointers(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 9
  %6 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %4) #16, !range !26
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3, %8
  %9 = phi i32 [ %11, %8 ], [ 0, %3 ]
  %10 = load ptr, ptr %4, align 8, !tbaa !46
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %10, i8 noundef zeroext %2) #16
  %11 = add i32 %9, 1
  %12 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %5, i32 noundef %11, ptr noundef nonnull %4) #16, !range !26
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %8, !llvm.loop !82

14:                                               ; preds = %8, %3
  tail call fastcc void @output_zero(ptr noundef %0) #16
  %15 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %16, i8 noundef zeroext %2) #16
  %17 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %18, i8 noundef zeroext %2) #16
  %19 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %20, i8 noundef zeroext %2) #16
  %21 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %22, i8 noundef zeroext %2) #16
  %23 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  %25 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %24) #16
  %26 = zext i32 %25 to i64
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %26) #16
  %27 = load ptr, ptr %23, align 8, !tbaa !22
  %28 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %27, i32 noundef 0, ptr noundef nonnull %4) #16, !range !26
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %14, %30
  %31 = phi i32 [ %33, %30 ], [ 0, %14 ]
  %32 = load ptr, ptr %4, align 8, !tbaa !46
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %32, i8 noundef zeroext %2) #16
  %33 = add i32 %31, 1
  %34 = load ptr, ptr %23, align 8, !tbaa !22
  %35 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %34, i32 noundef %33, ptr noundef nonnull %4) #16, !range !26
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %30, !llvm.loop !83

37:                                               ; preds = %30, %14
  %38 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %39, i8 noundef zeroext %2) #16
  %40 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %41, i8 noundef zeroext %2) #16
  %42 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %43, i8 noundef zeroext %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_ts_constructor_tree_pointers(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_constructor, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %5) #16
  %7 = zext i32 %6 to i64
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %7) #16
  %8 = load ptr, ptr %4, align 8, !tbaa !22
  %9 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %8) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %3, %11
  %12 = phi ptr [ %19, %11 ], [ %8, %3 ]
  %13 = phi i32 [ %18, %11 ], [ 0, %3 ]
  %14 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %12, i32 noundef %13) #16
  %15 = getelementptr inbounds %struct.constructor_elt_d, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !84
  %17 = load ptr, ptr %14, align 8, !tbaa !86
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %17, i8 noundef zeroext %2) #16
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %16, i8 noundef zeroext %2) #16
  %18 = add nuw i32 %13, 1
  %19 = load ptr, ptr %4, align 8, !tbaa !22
  %20 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %19) #16
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %11, label %22, !llvm.loop !87

22:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_chain(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call i32 @list_length(ptr noundef %1) #15
  %5 = sext i32 %4 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %5) #16
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %11, %7 ], [ %1, %3 ]
  %9 = phi i32 [ %12, %7 ], [ 0, %3 ]
  %10 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  store ptr null, ptr %10, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_or_ref(ptr noundef %0, ptr noundef %8, i8 noundef zeroext %2) #16
  store ptr %11, ptr %10, align 8, !tbaa !22
  %12 = add nuw nsw i32 %9, 1
  %13 = icmp eq i32 %12, %4
  br i1 %13, label %14, label %7, !llvm.loop !88

14:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: optsize
declare i32 @list_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_location(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.expanded_location, align 8
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  tail call fastcc void @output_string(ptr noundef %0, ptr noundef %7, ptr noundef null) #16
  br label %24

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %1) #15
  %9 = load ptr, ptr %3, align 8, !tbaa.struct !89
  %10 = getelementptr inbounds i8, ptr %3, i64 8
  %11 = load i32, ptr %10, align 8, !tbaa.struct !90
  %12 = getelementptr inbounds i8, ptr %3, i64 12
  %13 = load i32, ptr %12, align 4, !tbaa.struct !91
  %14 = getelementptr inbounds i8, ptr %3, i64 16
  %15 = load i8, ptr %14, align 8, !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  %16 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !12
  call fastcc void @output_string(ptr noundef %0, ptr noundef %17, ptr noundef %9) #16
  %18 = sext i32 %11 to i64
  call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %18) #16
  %19 = sext i32 %13 to i64
  call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %19) #16
  %20 = zext i8 %15 to i64
  call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %20) #16
  %21 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 7
  store ptr %9, ptr %21, align 8, !tbaa !93
  %22 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 8
  store i32 %11, ptr %22, align 8, !tbaa !94
  %23 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 9
  store i32 %13, ptr %23, align 4, !tbaa !95
  br label %24

24:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !33
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !22
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !22
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: optsize
declare ptr @tree_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !73
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !46
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !96
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #9 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @lto_bitmap_alloc() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_writer_init() unnamed_addr #0 {
  tail call void @lto_streamer_init() #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @csi_start(ptr noundef %0) unnamed_addr #9 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @csi_end_p(ptr nocapture readonly %0, i32 %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef %4) #16
  %6 = icmp ule i32 %5, %1
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @csi_node(ptr nocapture readonly %0, i32 %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = tail call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %4, i32 noundef %1) #16
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lto_new_out_decl_state() local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_push_out_decl_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_function(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = tail call ptr @create_output_block(i32 noundef 1) #16
  tail call fastcc void @clear_line_info(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.output_block, ptr %5, i64 0, i32 6
  store ptr %0, ptr %6, align 8, !tbaa !100
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  %9 = load ptr, ptr @cfun, align 8
  %10 = icmp eq ptr %9, null
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1844, ptr noundef nonnull @.str.3) #15
  br label %13

13:                                               ; preds = %1, %12
  store ptr %2, ptr @current_function_decl, align 8, !tbaa !46
  tail call void @push_cfun(ptr noundef %4) #15
  %14 = getelementptr inbounds %struct.output_block, ptr %5, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  tail call void @lto_output_1_stream(ptr noundef %15, i8 noundef signext 0) #15
  tail call fastcc void @output_record_start(ptr noundef nonnull %5, i32 noundef 228) #16
  %16 = tail call ptr @bitpack_create() #15
  %17 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 20
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 30
  %20 = and i32 %19, 1
  %21 = zext nneg i32 %20 to i64
  tail call void @bp_pack_value(ptr noundef %16, i64 noundef %21, i32 noundef 1) #15
  %22 = load i32, ptr %17, align 8
  %23 = lshr i32 %22, 29
  %24 = and i32 %23, 1
  %25 = zext nneg i32 %24 to i64
  tail call void @bp_pack_value(ptr noundef %16, i64 noundef %25, i32 noundef 1) #15
  %26 = load i32, ptr %17, align 8
  %27 = lshr i32 %26, 28
  %28 = and i32 %27, 1
  %29 = zext nneg i32 %28 to i64
  tail call void @bp_pack_value(ptr noundef %16, i64 noundef %29, i32 noundef 1) #15
  %30 = load i32, ptr %17, align 8
  %31 = lshr i32 %30, 27
  %32 = and i32 %31, 1
  %33 = zext nneg i32 %32 to i64
  tail call void @bp_pack_value(ptr noundef %16, i64 noundef %33, i32 noundef 1) #15
  %34 = load i32, ptr %17, align 8
  %35 = lshr i32 %34, 26
  %36 = and i32 %35, 1
  %37 = zext nneg i32 %36 to i64
  tail call void @bp_pack_value(ptr noundef %16, i64 noundef %37, i32 noundef 1) #15
  %38 = load i32, ptr %17, align 8
  %39 = lshr i32 %38, 25
  %40 = and i32 %39, 1
  %41 = zext nneg i32 %40 to i64
  tail call void @bp_pack_value(ptr noundef %16, i64 noundef %41, i32 noundef 1) #15
  %42 = load i32, ptr %17, align 8
  %43 = lshr i32 %42, 24
  %44 = and i32 %43, 1
  %45 = zext nneg i32 %44 to i64
  tail call void @bp_pack_value(ptr noundef %16, i64 noundef %45, i32 noundef 1) #15
  %46 = load i32, ptr %17, align 8
  %47 = lshr i32 %46, 23
  %48 = and i32 %47, 1
  %49 = zext nneg i32 %48 to i64
  tail call void @bp_pack_value(ptr noundef %16, i64 noundef %49, i32 noundef 1) #15
  %50 = load i32, ptr %17, align 8
  %51 = lshr i32 %50, 22
  %52 = and i32 %51, 1
  %53 = zext nneg i32 %52 to i64
  tail call void @bp_pack_value(ptr noundef %16, i64 noundef %53, i32 noundef 1) #15
  %54 = load i32, ptr %17, align 8
  %55 = lshr i32 %54, 20
  %56 = and i32 %55, 1
  %57 = zext nneg i32 %56 to i64
  tail call void @bp_pack_value(ptr noundef %16, i64 noundef %57, i32 noundef 1) #15
  %58 = load i32, ptr %17, align 8
  %59 = lshr i32 %58, 19
  %60 = and i32 %59, 1
  %61 = zext nneg i32 %60 to i64
  tail call void @bp_pack_value(ptr noundef %16, i64 noundef %61, i32 noundef 1) #15
  %62 = load i32, ptr %17, align 8
  %63 = lshr i32 %62, 18
  %64 = and i32 %63, 1
  %65 = zext nneg i32 %64 to i64
  tail call void @bp_pack_value(ptr noundef %16, i64 noundef %65, i32 noundef 1) #15
  %66 = load i32, ptr %17, align 8
  %67 = lshr i32 %66, 16
  %68 = and i32 %67, 3
  %69 = zext nneg i32 %68 to i64
  tail call void @bp_pack_value(ptr noundef %16, i64 noundef %69, i32 noundef 2) #15
  %70 = load i32, ptr %17, align 8
  %71 = lshr i32 %70, 8
  %72 = and i32 %71, 255
  %73 = zext nneg i32 %72 to i64
  tail call void @bp_pack_value(ptr noundef %16, i64 noundef %73, i32 noundef 8) #15
  %74 = load i32, ptr %17, align 8
  %75 = and i32 %74, 255
  %76 = zext nneg i32 %75 to i64
  tail call void @bp_pack_value(ptr noundef %16, i64 noundef %76, i32 noundef 8) #15
  %77 = getelementptr inbounds %struct.output_block, ptr %5, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !12
  tail call void @lto_output_bitpack(ptr noundef %78, ptr noundef %16) #16
  tail call void @bitpack_delete(ptr noundef %16) #15
  %79 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 17
  %80 = load i32, ptr %79, align 8, !tbaa !101
  %81 = zext i32 %80 to i64
  tail call fastcc void @output_uleb128(ptr noundef nonnull %5, i64 noundef %81) #16
  %82 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !103
  tail call fastcc void @lto_output_tree_ref(ptr noundef nonnull %5, ptr noundef %83) #16
  %84 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 8
  %85 = load ptr, ptr %84, align 8, !tbaa !104
  tail call fastcc void @lto_output_tree_ref(ptr noundef nonnull %5, ptr noundef %85) #16
  %86 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 9
  %87 = load ptr, ptr %86, align 8, !tbaa !105
  tail call fastcc void @lto_output_tree_ref(ptr noundef nonnull %5, ptr noundef %87) #16
  %88 = getelementptr inbounds %struct.tree_decl_non_common, ptr %2, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_ref(ptr noundef nonnull %5, ptr noundef %89) #16
  tail call fastcc void @output_ssa_names(ptr noundef nonnull %5, ptr noundef %4) #16
  tail call fastcc void @output_eh_regions(ptr noundef nonnull %5, ptr noundef %4) #16
  %90 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !22
  tail call void @lto_output_tree(ptr noundef nonnull %5, ptr noundef %91, i8 noundef zeroext 1) #16
  tail call void @renumber_gimple_stmt_uids() #15
  %92 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !106
  %94 = load ptr, ptr %93, align 8, !tbaa !46
  %95 = icmp eq ptr %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %13, %96
  %97 = phi ptr [ %99, %96 ], [ %94, %13 ]
  tail call fastcc void @output_bb(ptr noundef %5, ptr noundef nonnull %97, ptr noundef %4) #16
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %97, i64 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !46
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %96, !llvm.loop !107

101:                                              ; preds = %96, %13
  tail call fastcc void @output_zero(ptr noundef %5) #16
  tail call fastcc void @output_cfg(ptr noundef %5, ptr noundef %4) #16
  tail call void @produce_asm(ptr noundef %5, ptr noundef %2) #16
  tail call void @destroy_output_block(ptr noundef %5) #16
  store ptr null, ptr @current_function_decl, align 8, !tbaa !46
  tail call void @pop_cfun() #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_function(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %7 = tail call ptr @decl_assembler_name(ptr noundef %3) #15
  %8 = getelementptr inbounds %struct.tree_identifier, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = tail call ptr @lto_get_section_name(i32 noundef 1, ptr noundef %9) #15
  %11 = tail call ptr @lto_get_out_decl_state() #15
  %12 = load i32, ptr @flag_wpa, align 4, !tbaa !33
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i8
  tail call void @lto_begin_section(ptr noundef %10, i8 noundef zeroext %14) #15
  tail call void @free(ptr noundef %10) #16
  %15 = tail call ptr @lto_get_decl_name_mapping(ptr noundef %5, ptr noundef %9) #15
  %16 = call ptr @lto_get_section_data(ptr noundef %5, i32 noundef 1, ptr noundef %15, ptr noundef nonnull %2) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2048, ptr noundef nonnull @.str.3) #15
  br label %19

19:                                               ; preds = %1, %18
  %20 = load i64, ptr %2, align 8, !tbaa !27
  call void @lto_output_data_stream(ptr noundef %6, ptr noundef %16, i64 noundef %20) #15
  call void @lto_write_stream(ptr noundef %6) #15
  %21 = load ptr, ptr %4, align 8, !tbaa !108
  %22 = call ptr @lto_get_function_in_decl_state(ptr noundef %21, ptr noundef %3) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2057, ptr noundef nonnull @.str.3) #15
  br label %25

25:                                               ; preds = %19, %24
  br label %26

26:                                               ; preds = %25, %47
  %27 = phi i64 [ %49, %47 ], [ 0, %25 ]
  %28 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %22, i64 0, i64 %27
  %29 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %22, i64 0, i64 %27, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !109
  %31 = zext i32 %30 to i64
  %32 = load ptr, ptr %28, align 8, !tbaa !111
  %33 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %11, i64 0, i64 %27
  %34 = call fastcc i32 @lto_tree_ref_encoder_size(ptr noundef %33) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2068, ptr noundef nonnull @.str.3) #15
  br label %37

37:                                               ; preds = %26, %36
  %38 = icmp eq i32 %30, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %11, i64 0, i64 %27, i32 2
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ 0, %39 ], [ %45, %41 ]
  %43 = getelementptr inbounds ptr, ptr %32, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %40, ptr noundef %44) #16
  %45 = add nuw nsw i64 %42, 1
  %46 = icmp eq i64 %45, %31
  br i1 %46, label %47, label %41, !llvm.loop !112

47:                                               ; preds = %41, %37
  %48 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %11, i64 0, i64 %27, i32 1
  store i32 %30, ptr %48, align 8, !tbaa !113
  %49 = add nuw nsw i64 %27, 1
  %50 = icmp eq i64 %49, 7
  br i1 %50, label %51, label %26, !llvm.loop !115

51:                                               ; preds = %47
  %52 = load i64, ptr %2, align 8, !tbaa !27
  call void @lto_free_section_data(ptr noundef %5, i32 noundef 1, ptr noundef %15, ptr noundef %16, i64 noundef %52) #15
  call void @free(ptr noundef %6) #16
  call void @lto_end_section() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare ptr @lto_pop_out_decl_state() local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_record_function_out_decl_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @csi_next(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.cgraph_node_set_iterator, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !116
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !116
  ret void
}

; Function Attrs: optsize
declare void @output_cgraph(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_streamer_init() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !118
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  ret ptr %5
}

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_ssa_names(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #16
  %8 = zext i32 %7 to i64
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %8) #16
  %9 = icmp ugt i32 %7, 1
  br i1 %9, label %10, label %38

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  br label %12

12:                                               ; preds = %10, %35
  %13 = phi i64 [ 1, %10 ], [ %36, %35 ]
  %14 = load ptr, ptr %3, align 8, !tbaa !120
  %15 = getelementptr inbounds %struct.gimple_df, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !121
  %17 = trunc i64 %13 to i32
  %18 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %16, i32 noundef %17) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %12
  %21 = load i64, ptr %18, align 8
  %22 = and i64 %21, 33554432
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %18) #15
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %24
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %13) #16
  %28 = load ptr, ptr %11, align 8, !tbaa !12
  %29 = load i64, ptr %18, align 8
  %30 = lshr i64 %29, 32
  %31 = trunc i64 %30 to i8
  %32 = and i8 %31, 1
  tail call void @lto_output_1_stream(ptr noundef %28, i8 noundef signext %32) #15
  %33 = getelementptr inbounds %struct.tree_ssa_name, ptr %18, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %34) #16
  br label %35

35:                                               ; preds = %12, %20, %24, %27
  %36 = add nuw nsw i64 %13, 1
  %37 = icmp eq i64 %36, %8
  br i1 %37, label %38, label %12, !llvm.loop !125

38:                                               ; preds = %35, %2
  tail call fastcc void @output_zero(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_eh_regions(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = load ptr, ptr %1, align 8, !tbaa !126
  %9 = icmp eq ptr %8, null
  br i1 %9, label %125, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %8, align 8, !tbaa !127
  %12 = icmp eq ptr %11, null
  br i1 %12, label %125, label %13

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef 229) #16
  %14 = load ptr, ptr %1, align 8, !tbaa !126
  %15 = load ptr, ptr %14, align 8, !tbaa !127
  %16 = getelementptr inbounds %struct.eh_region_d, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !129
  %18 = sext i32 %17 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %18) #16
  %19 = load ptr, ptr %1, align 8, !tbaa !126
  %20 = getelementptr inbounds %struct.eh_status, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !131
  %22 = tail call fastcc i32 @VEC_eh_region_base_length(ptr noundef %21) #16
  %23 = zext i32 %22 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %23) #16
  %24 = load ptr, ptr %1, align 8, !tbaa !126
  %25 = getelementptr inbounds %struct.eh_status, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !131
  %27 = call fastcc i32 @VEC_eh_region_base_iterate(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %3) #16, !range !26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %13, %29
  %30 = phi i32 [ %32, %29 ], [ 0, %13 ]
  %31 = load ptr, ptr %3, align 8, !tbaa !46
  tail call fastcc void @output_eh_region(ptr noundef %0, ptr noundef %31) #16
  %32 = add i32 %30, 1
  %33 = load ptr, ptr %1, align 8, !tbaa !126
  %34 = getelementptr inbounds %struct.eh_status, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !131
  %36 = call fastcc i32 @VEC_eh_region_base_iterate(ptr noundef %35, i32 noundef %32, ptr noundef nonnull %3) #16, !range !26
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %29, !llvm.loop !132

38:                                               ; preds = %29, %13
  %39 = phi ptr [ %24, %13 ], [ %33, %29 ]
  %40 = getelementptr inbounds %struct.eh_status, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !133
  %42 = tail call fastcc i32 @VEC_eh_landing_pad_base_length(ptr noundef %41) #16
  %43 = zext i32 %42 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %43) #16
  %44 = load ptr, ptr %1, align 8, !tbaa !126
  %45 = getelementptr inbounds %struct.eh_status, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !133
  %47 = call fastcc i32 @VEC_eh_landing_pad_base_iterate(ptr noundef %46, i32 noundef 0, ptr noundef nonnull %4) #16, !range !26
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %38, %49
  %50 = phi i32 [ %52, %49 ], [ 0, %38 ]
  %51 = load ptr, ptr %4, align 8, !tbaa !46
  tail call fastcc void @output_eh_lp(ptr noundef %0, ptr noundef %51) #16
  %52 = add i32 %50, 1
  %53 = load ptr, ptr %1, align 8, !tbaa !126
  %54 = getelementptr inbounds %struct.eh_status, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !133
  %56 = call fastcc i32 @VEC_eh_landing_pad_base_iterate(ptr noundef %55, i32 noundef %52, ptr noundef nonnull %4) #16, !range !26
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %49, !llvm.loop !134

58:                                               ; preds = %49, %38
  %59 = phi ptr [ %44, %38 ], [ %53, %49 ]
  %60 = getelementptr inbounds %struct.eh_status, ptr %59, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !135
  %62 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %61) #16
  %63 = zext i32 %62 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %63) #16
  %64 = load ptr, ptr %1, align 8, !tbaa !126
  %65 = getelementptr inbounds %struct.eh_status, ptr %64, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !135
  %67 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %66, i32 noundef 0, ptr noundef nonnull %5) #16, !range !26
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %58, %69
  %70 = phi i32 [ %72, %69 ], [ 0, %58 ]
  %71 = load ptr, ptr %5, align 8, !tbaa !46
  tail call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %71) #16
  %72 = add i32 %70, 1
  %73 = load ptr, ptr %1, align 8, !tbaa !126
  %74 = getelementptr inbounds %struct.eh_status, ptr %73, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !135
  %76 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %75, i32 noundef %72, ptr noundef nonnull %5) #16, !range !26
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %69, !llvm.loop !136

78:                                               ; preds = %69, %58
  %79 = phi ptr [ %64, %58 ], [ %73, %69 ]
  %80 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !137
  %81 = icmp eq i8 %80, 0
  %82 = getelementptr inbounds %struct.eh_status, ptr %79, i64 0, i32 5
  br i1 %81, label %102, label %83

83:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %84 = load ptr, ptr %82, align 8, !tbaa !22
  %85 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %84) #16
  %86 = zext i32 %85 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %86) #16
  %87 = load ptr, ptr %1, align 8, !tbaa !126
  %88 = getelementptr inbounds %struct.eh_status, ptr %87, i64 0, i32 5
  %89 = load ptr, ptr %88, align 8, !tbaa !22
  %90 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %89, i32 noundef 0, ptr noundef nonnull %6) #16, !range !26
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %83, %92
  %93 = phi i32 [ %95, %92 ], [ 0, %83 ]
  %94 = load ptr, ptr %6, align 8, !tbaa !46
  tail call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %94) #16
  %95 = add i32 %93, 1
  %96 = load ptr, ptr %1, align 8, !tbaa !126
  %97 = getelementptr inbounds %struct.eh_status, ptr %96, i64 0, i32 5
  %98 = load ptr, ptr %97, align 8, !tbaa !22
  %99 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %98, i32 noundef %95, ptr noundef nonnull %6) #16, !range !26
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %92, !llvm.loop !149

101:                                              ; preds = %92, %83
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  br label %124

102:                                              ; preds = %78
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #17
  %103 = load ptr, ptr %82, align 8, !tbaa !22
  %104 = tail call fastcc i32 @VEC_uchar_base_length(ptr noundef %103) #16
  %105 = zext i32 %104 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %105) #16
  %106 = load ptr, ptr %1, align 8, !tbaa !126
  %107 = getelementptr inbounds %struct.eh_status, ptr %106, i64 0, i32 5
  %108 = load ptr, ptr %107, align 8, !tbaa !22
  %109 = call fastcc i32 @VEC_uchar_base_iterate(ptr noundef %108, i32 noundef 0, ptr noundef nonnull %7) #16, !range !26
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %123, label %111

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  br label %113

113:                                              ; preds = %111, %113
  %114 = phi i32 [ 0, %111 ], [ %117, %113 ]
  %115 = load ptr, ptr %112, align 8, !tbaa !12
  %116 = load i8, ptr %7, align 1, !tbaa !22
  tail call void @lto_output_1_stream(ptr noundef %115, i8 noundef signext %116) #15
  %117 = add i32 %114, 1
  %118 = load ptr, ptr %1, align 8, !tbaa !126
  %119 = getelementptr inbounds %struct.eh_status, ptr %118, i64 0, i32 5
  %120 = load ptr, ptr %119, align 8, !tbaa !22
  %121 = call fastcc i32 @VEC_uchar_base_iterate(ptr noundef %120, i32 noundef %117, ptr noundef nonnull %7) #16, !range !26
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %113, !llvm.loop !150

123:                                              ; preds = %113, %102
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #17
  br label %124

124:                                              ; preds = %123, %101
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  br label %125

125:                                              ; preds = %124, %10, %2
  tail call fastcc void @output_zero(ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare void @renumber_gimple_stmt_uids() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_bb(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %1) #16
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !35
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @phi_nodes(ptr noundef %1) #16
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, i32 224, i32 225
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 225, %3 ], [ %10, %7 ]
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef %12) #16
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !151
  %15 = sext i32 %14 to i64
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %15) #16
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !153
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %17) #16
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 10
  %19 = load i32, ptr %18, align 4, !tbaa !154
  %20 = sext i32 %19 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %20) #16
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 11
  %22 = load i32, ptr %21, align 8, !tbaa !155
  %23 = sext i32 %22 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %23) #16
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !156
  %26 = sext i32 %25 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %26) #16
  br i1 %6, label %30, label %27

27:                                               ; preds = %11
  %28 = tail call fastcc ptr @phi_nodes(ptr noundef nonnull %1) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %56, label %30

30:                                               ; preds = %27, %11
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %1) #16
  %31 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !35
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30, %40
  %34 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16
  tail call fastcc void @output_gimple_stmt(ptr noundef %0, ptr noundef %34) #16
  %35 = tail call i32 @lookup_stmt_eh_lp_fn(ptr noundef %2, ptr noundef %34) #15
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef 226) #16
  %38 = sext i32 %35 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %38) #16
  br label %40

39:                                               ; preds = %33
  tail call fastcc void @output_zero(ptr noundef %0) #16
  br label %40

40:                                               ; preds = %39, %37
  call fastcc void @gsi_next(ptr noundef nonnull %4) #16
  %41 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !35
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %33, label %43, !llvm.loop !157

43:                                               ; preds = %40, %30
  tail call fastcc void @output_zero(ptr noundef %0) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %1) #15
  %44 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !35
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43, %52
  %47 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16
  %48 = call fastcc ptr @gimple_phi_result(ptr noundef %47) #16
  %49 = call zeroext i8 @is_gimple_reg(ptr noundef %48) #15
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  call fastcc void @output_phi(ptr noundef %0, ptr noundef %47) #16
  br label %52

52:                                               ; preds = %51, %46
  call fastcc void @gsi_next(ptr noundef nonnull %4) #16
  %53 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !35
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %46, label %55, !llvm.loop !158

55:                                               ; preds = %52, %43
  call fastcc void @output_zero(ptr noundef %0) #16
  br label %56

56:                                               ; preds = %55, %27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_cfg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  store ptr %8, ptr %5, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !159
  %13 = zext i32 %12 to i64
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %13) #16
  %14 = load ptr, ptr %9, align 8, !tbaa !106
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !161
  %17 = sext i32 %16 to i64
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %17) #16
  %18 = load ptr, ptr %9, align 8, !tbaa !106
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %58, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds i8, ptr %3, i64 8
  br label %23

23:                                               ; preds = %21, %54
  %24 = phi ptr [ %19, %21 ], [ %56, %54 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !151
  %27 = sext i32 %26 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %27) #16
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !162
  %30 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %29) #16
  %31 = zext i32 %30 to i64
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %31) #16
  %32 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %28) #16
  store i32 0, ptr %3, align 8, !tbaa.struct !163
  store ptr %32, ptr %22, align 8, !tbaa.struct !164
  %33 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %32, ptr noundef nonnull %4) #16, !range !35
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %23, %35
  %36 = load ptr, ptr %4, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !165
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !151
  %41 = sext i32 %40 to i64
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %41) #16
  %42 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 8
  %43 = load i32, ptr %42, align 4, !tbaa !167
  %44 = sext i32 %43 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %44) #16
  %45 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 9
  %46 = load i64, ptr %45, align 8, !tbaa !168
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %46) #16
  %47 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 7
  %48 = load i32, ptr %47, align 8, !tbaa !169
  %49 = sext i32 %48 to i64
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %49) #16
  call fastcc void @ei_next(ptr noundef nonnull %3) #16
  %50 = load i32, ptr %3, align 8
  %51 = load ptr, ptr %22, align 8
  %52 = call fastcc zeroext i8 @ei_cond(i32 %50, ptr %51, ptr noundef nonnull %4) #16, !range !35
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %35, !llvm.loop !170

54:                                               ; preds = %35, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %23, !llvm.loop !171

58:                                               ; preds = %54, %2
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef -1) #16
  %59 = load ptr, ptr @cfun, align 8, !tbaa !46
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !106
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !172
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %58, %66
  %67 = phi ptr [ %74, %66 ], [ %64, %58 ]
  %68 = phi ptr [ %73, %66 ], [ %63, %58 ]
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !151
  %71 = sext i32 %70 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %71) #16
  %72 = load ptr, ptr %68, align 8, !tbaa !46
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !172
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %66, !llvm.loop !173

76:                                               ; preds = %66, %58
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef -1) #16
  store ptr %6, ptr %5, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_eh_region_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !174
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_eh_region_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !174
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !46
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_eh_region(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call fastcc void @output_zero(ptr noundef %0) #16
  br label %67

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !176
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1415, ptr noundef nonnull @.str.3) #15
  unreachable

10:                                               ; preds = %5
  %11 = add nuw nsw i32 %7, 230
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef %11) #16
  %12 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !129
  %14 = sext i32 %13 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %14) #16
  %15 = load ptr, ptr %1, align 8, !tbaa !177
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.eh_region_d, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !129
  %20 = sext i32 %19 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %20) #16
  br label %22

21:                                               ; preds = %10
  tail call fastcc void @output_zero(ptr noundef %0) #16
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !178
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.eh_region_d, ptr %24, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !129
  %29 = sext i32 %28 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %29) #16
  br label %31

30:                                               ; preds = %22
  tail call fastcc void @output_zero(ptr noundef %0) #16
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !179
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.eh_region_d, ptr %33, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !129
  %38 = sext i32 %37 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %38) #16
  br label %40

39:                                               ; preds = %31
  tail call fastcc void @output_zero(ptr noundef %0) #16
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, ptr %6, align 4, !tbaa !176
  switch i32 %41, label %58 [
    i32 1, label %42
    i32 2, label %45
    i32 3, label %53
  ]

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  tail call fastcc void @output_eh_try_list(ptr noundef %0, ptr noundef %44) #16
  br label %58

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %47) #16
  %48 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %49) #16
  %50 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5, i32 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !22
  %52 = sext i32 %51 to i64
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %52) #16
  br label %58

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !22
  tail call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %55) #16
  %56 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5, i32 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !22
  tail call fastcc void @lto_output_location(ptr noundef %0, i32 noundef %57) #16
  br label %58

58:                                               ; preds = %40, %45, %53, %42
  %59 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !180
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %60, i64 0, i32 4
  %64 = load i32, ptr %63, align 8, !tbaa !181
  %65 = sext i32 %64 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %65) #16
  br label %67

66:                                               ; preds = %58
  tail call fastcc void @output_zero(ptr noundef %0) #16
  br label %67

67:                                               ; preds = %62, %66, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_eh_landing_pad_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !183
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_eh_landing_pad_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !183
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !46
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_eh_lp(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call fastcc void @output_zero(ptr noundef %0) #16
  br label %28

5:                                                ; preds = %2
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef 234) #16
  %6 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %1, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !181
  %8 = sext i32 %7 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %8) #16
  %9 = load ptr, ptr %1, align 8, !tbaa !185
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %9, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !181
  %14 = sext i32 %13 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %14) #16
  br label %16

15:                                               ; preds = %5
  tail call fastcc void @output_zero(ptr noundef %0) #16
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !186
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.eh_region_d, ptr %18, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !129
  %23 = sext i32 %22 to i64
  tail call fastcc void @output_sleb128(ptr noundef %0, i64 noundef %23) #16
  br label %25

24:                                               ; preds = %16
  tail call fastcc void @output_zero(ptr noundef %0) #16
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %1, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !187
  tail call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %27) #16
  br label %28

28:                                               ; preds = %25, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_uchar_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !188
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_uchar_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !188
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_uchar_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !22
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i8 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i8 %13, ptr %2, align 1, !tbaa !22
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_eh_try_list(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %12, %4 ], [ %1, %2 ]
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef 235) #16
  %6 = getelementptr inbounds %struct.eh_catch_d, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !190
  tail call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %7) #16
  %8 = getelementptr inbounds %struct.eh_catch_d, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !192
  tail call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %9) #16
  %10 = getelementptr inbounds %struct.eh_catch_d, ptr %5, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !193
  tail call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %11) #16
  %12 = load ptr, ptr %5, align 8, !tbaa !194
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !195

14:                                               ; preds = %4, %2
  tail call fastcc void @output_zero(ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #14 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #16
  store ptr %4, ptr %0, align 8, !tbaa !196
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !198
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !199
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !156
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 510, ptr noundef nonnull @.str.3) #15
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !200
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #13 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = load ptr, ptr %2, align 8, !tbaa !202
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_gimple_stmt(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %1) #16, !range !204
  %4 = tail call fastcc i32 @lto_gimple_code_to_tag(i32 noundef %3) #16, !range !205
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef %4) #16
  %5 = tail call ptr @bitpack_create() #15
  %6 = tail call fastcc i32 @gimple_num_ops(ptr noundef %1) #16
  %7 = zext i32 %6 to i64
  tail call void @bp_pack_value(ptr noundef %5, i64 noundef %7, i32 noundef 32) #15
  %8 = tail call fastcc zeroext i8 @gimple_no_warning_p(ptr noundef %1) #16, !range !35
  %9 = zext nneg i8 %8 to i64
  tail call void @bp_pack_value(ptr noundef %5, i64 noundef %9, i32 noundef 1) #15
  %10 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %1) #16, !range !35
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = tail call fastcc zeroext i8 @gimple_assign_nontemporal_move_p(ptr noundef %1) #16, !range !35
  %14 = zext nneg i8 %13 to i64
  tail call void @bp_pack_value(ptr noundef %5, i64 noundef %14, i32 noundef 1) #15
  br label %15

15:                                               ; preds = %12, %2
  %16 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %1) #16, !range !35
  %17 = zext nneg i8 %16 to i64
  tail call void @bp_pack_value(ptr noundef %5, i64 noundef %17, i32 noundef 1) #15
  %18 = load i32, ptr %1, align 8
  %19 = lshr i32 %18, 16
  %20 = zext nneg i32 %19 to i64
  tail call void @bp_pack_value(ptr noundef %5, i64 noundef %20, i32 noundef 16) #15
  %21 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !12
  tail call void @lto_output_bitpack(ptr noundef %22, ptr noundef %5) #16
  tail call void @bitpack_delete(ptr noundef %5) #15
  %23 = tail call fastcc i32 @gimple_location(ptr noundef nonnull %1) #16
  tail call fastcc void @lto_output_location(ptr noundef %0, i32 noundef %23) #16
  %24 = tail call fastcc ptr @gimple_block(ptr noundef nonnull %1) #16
  tail call void @lto_output_tree(ptr noundef %0, ptr noundef %24, i8 noundef zeroext 1) #16
  %25 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %1) #16, !range !204
  %26 = trunc i32 %25 to i8
  switch i8 %26, label %56 [
    i8 14, label %27
    i8 13, label %30
    i8 15, label %32
    i8 7, label %35
    i8 6, label %47
    i8 8, label %47
    i8 9, label %47
    i8 5, label %47
    i8 4, label %47
    i8 1, label %47
    i8 3, label %47
    i8 2, label %47
    i8 18, label %57
    i8 33, label %57
  ]

27:                                               ; preds = %15
  %28 = tail call fastcc i32 @gimple_resx_region(ptr noundef nonnull %1) #16
  %29 = sext i32 %28 to i64
  tail call fastcc void @output_sleb128(ptr noundef nonnull %0, i64 noundef %29) #16
  br label %57

30:                                               ; preds = %15
  %31 = tail call fastcc ptr @gimple_eh_must_not_throw_fndecl(ptr noundef nonnull %1) #16
  tail call fastcc void @lto_output_tree_ref(ptr noundef nonnull %0, ptr noundef %31) #16
  br label %57

32:                                               ; preds = %15
  %33 = tail call fastcc i32 @gimple_eh_dispatch_region(ptr noundef nonnull %1) #16
  %34 = sext i32 %33 to i64
  tail call fastcc void @output_sleb128(ptr noundef nonnull %0, i64 noundef %34) #16
  br label %57

35:                                               ; preds = %15
  %36 = load ptr, ptr %21, align 8, !tbaa !12
  %37 = tail call fastcc i32 @gimple_asm_ninputs(ptr noundef nonnull %1) #16, !range !204
  %38 = zext nneg i32 %37 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %36, i64 noundef %38) #15
  %39 = load ptr, ptr %21, align 8, !tbaa !12
  %40 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef nonnull %1) #16, !range !204
  %41 = zext nneg i32 %40 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %39, i64 noundef %41) #15
  %42 = load ptr, ptr %21, align 8, !tbaa !12
  %43 = tail call fastcc i32 @gimple_asm_nclobbers(ptr noundef nonnull %1) #16, !range !204
  %44 = zext nneg i32 %43 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %42, i64 noundef %44) #15
  %45 = load ptr, ptr %21, align 8, !tbaa !12
  %46 = tail call fastcc ptr @gimple_asm_string(ptr noundef nonnull %1) #16
  tail call fastcc void @output_string(ptr noundef nonnull %0, ptr noundef %45, ptr noundef %46) #16
  br label %47

47:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %35
  %48 = tail call fastcc i32 @gimple_num_ops(ptr noundef nonnull %1) #16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47, %50
  %51 = phi i32 [ %53, %50 ], [ 0, %47 ]
  %52 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %1, i32 noundef %51) #16
  tail call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %52) #16
  %53 = add nuw i32 %51, 1
  %54 = tail call fastcc i32 @gimple_num_ops(ptr noundef nonnull %1) #16
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %50, label %57, !llvm.loop !206

56:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1711, ptr noundef nonnull @.str.3) #15
  br label %57

57:                                               ; preds = %50, %47, %15, %15, %56, %32, %30, %27
  ret void
}

; Function Attrs: optsize
declare i32 @lookup_stmt_eh_lp_fn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #14 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !207
  store ptr %4, ptr %0, align 8, !tbaa !196
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_phi(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #16
  %4 = tail call fastcc i32 @lto_gimple_code_to_tag(i32 noundef 16) #16, !range !205
  tail call fastcc void @output_record_start(ptr noundef %0, i32 noundef %4) #16
  %5 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %1) #16
  %6 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %5) #16
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !22
  %9 = zext i32 %8 to i64
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %9) #16
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = zext i32 %3 to i64
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %22, %13 ]
  %15 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %1, i64 noundef %14) #16
  tail call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %15) #16
  %16 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %1, i64 noundef %14) #16
  %17 = load ptr, ptr %16, align 8, !tbaa !208
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !151
  %20 = sext i32 %19 to i64
  tail call fastcc void @output_uleb128(ptr noundef %0, i64 noundef %20) #16
  %21 = tail call fastcc i32 @gimple_phi_arg_location(ptr noundef %1, i64 noundef %14) #16
  tail call fastcc void @lto_output_location(ptr noundef %0, i32 noundef %21) #16
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, %12
  br i1 %23, label %24, label %13, !llvm.loop !209

24:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !156
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !210
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !211
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @lto_gimple_code_to_tag(i32 noundef %0) unnamed_addr #9 {
  %2 = add nuw nsw i32 %0, 189
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !22
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_no_warning_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 8
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !204
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_assign_nontemporal_move_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 10
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !35
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 14
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i8 [ %8, %4 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !22
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_block(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_resx_region(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !22
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_eh_must_not_throw_fndecl(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_mnt, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_eh_dispatch_region(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !22
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !22
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_noutputs(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !22
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_nclobbers(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !22
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_asm_string(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !35
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !204
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !204
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #16
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !27
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.3) #15
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !204
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #16
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #9 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !33
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !22
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #16
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #16
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #13 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !213
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #16
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #16
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !214
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !22
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3103, ptr noundef nonnull @.str.3) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !217
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !218
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #9 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #16, !range !35
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #16
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !46
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #16
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #16
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.3) #15
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !220
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !220
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #16
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #16
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 687, ptr noundef nonnull @.str.3) #15
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @lto_get_decl_name_mapping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lto_get_section_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lto_get_function_in_decl_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @lto_tree_ref_encoder_size(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.lto_tree_ref_encoder, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !222
  %4 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %3) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #16
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @lto_free_section_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #15
  store ptr %6, ptr %0, align 8, !tbaa !46
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 {
  %3 = load i32, ptr %0, align 8, !tbaa !73
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !73
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !223
  %6 = load i32, ptr %0, align 8, !tbaa !73
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
define internal fastcc void @output_unreferenced_globals(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = tail call ptr @create_output_block(i32 noundef 2) #16
  %4 = getelementptr inbounds %struct.output_block, ptr %3, i64 0, i32 6
  store ptr null, ptr %4, align 8, !tbaa !100
  tail call fastcc void @clear_line_info(ptr noundef %3) #16
  %5 = getelementptr inbounds %struct.output_block, ptr %3, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  tail call void @lto_output_1_stream(ptr noundef %6, i8 noundef signext 0) #15
  %7 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %42, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.output_block, ptr %3, i64 0, i32 1
  %11 = getelementptr inbounds %struct.output_block, ptr %3, i64 0, i32 2
  br label %12

12:                                               ; preds = %9, %38
  %13 = phi ptr [ %7, %9 ], [ %40, %38 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !224
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 32
  br i1 %17, label %18, label %38

18:                                               ; preds = %12
  tail call void @lto_output_tree(ptr noundef %3, ptr noundef nonnull %14, i8 noundef zeroext 1) #16
  %19 = load i64, ptr %14, align 8
  %20 = and i64 %19, 134217728
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call fastcc void @lto_output_tree_ref(ptr noundef %3, ptr noundef nonnull %14) #16
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.varpool_node, ptr %13, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %23, %27
  %28 = phi ptr [ %36, %27 ], [ %25, %23 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !224
  tail call void @lto_output_tree(ptr noundef %3, ptr noundef %29, i8 noundef zeroext 1) #16
  tail call fastcc void @output_record_start(ptr noundef %3, i32 noundef 237) #16
  %30 = load ptr, ptr %10, align 8, !tbaa !11
  %31 = load ptr, ptr %11, align 8, !tbaa !12
  %32 = load ptr, ptr %28, align 8, !tbaa !224
  tail call void @lto_output_var_decl_index(ptr noundef %30, ptr noundef %31, ptr noundef %32) #15
  %33 = load ptr, ptr %10, align 8, !tbaa !11
  %34 = load ptr, ptr %11, align 8, !tbaa !12
  tail call void @lto_output_var_decl_index(ptr noundef %33, ptr noundef %34, ptr noundef nonnull %14) #15
  %35 = getelementptr inbounds %struct.varpool_node, ptr %28, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %27, !llvm.loop !226

38:                                               ; preds = %27, %23, %12
  %39 = getelementptr inbounds %struct.varpool_node, ptr %13, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %12, !llvm.loop !227

42:                                               ; preds = %38, %1
  tail call fastcc void @output_zero(ptr noundef %3) #16
  %43 = load ptr, ptr @alias_pairs, align 8
  %44 = call fastcc i32 @VEC_alias_pair_base_iterate(ptr noundef %43, i32 noundef 0, ptr noundef nonnull %2) #16, !range !26
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %42, %55
  %47 = phi i32 [ %56, %55 ], [ 0, %42 ]
  %48 = load ptr, ptr %2, align 8, !tbaa !46
  %49 = tail call fastcc zeroext i8 @output_alias_pair_p(ptr noundef %48, ptr noundef %0) #16, !range !35
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %48, align 8, !tbaa !228
  tail call fastcc void @lto_output_tree_ref(ptr noundef %3, ptr noundef %52) #16
  %53 = getelementptr inbounds %struct.alias_pair, ptr %48, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !230
  tail call fastcc void @lto_output_tree_ref(ptr noundef %3, ptr noundef %54) #16
  br label %55

55:                                               ; preds = %46, %51
  %56 = add i32 %47, 1
  %57 = load ptr, ptr @alias_pairs, align 8
  %58 = call fastcc i32 @VEC_alias_pair_base_iterate(ptr noundef %57, i32 noundef %56, ptr noundef nonnull %2) #16, !range !26
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %46, !llvm.loop !231

60:                                               ; preds = %55, %42
  tail call fastcc void @output_zero(ptr noundef %3) #16
  tail call void @produce_asm(ptr noundef %3, ptr noundef null) #16
  tail call void @destroy_output_block(ptr noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_lto_out_decl_state_ptr_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !232
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_decl_state_streams(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %6, %3 ]
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %1, i64 0, i64 %4
  tail call fastcc void @write_global_stream(ptr noundef %0, ptr noundef %5) #16
  %6 = add nuw nsw i64 %4, 1
  %7 = icmp eq i64 %6, 7
  br i1 %7, label %8, label %3, !llvm.loop !234

8:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_lto_out_decl_state_ptr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i64 @lto_out_decl_state_written_size(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %11, %2 ]
  %4 = phi i64 [ 4, %1 ], [ %10, %2 ]
  %5 = add i64 %4, 4
  %6 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 %3
  %7 = tail call fastcc i32 @lto_tree_ref_encoder_size(ptr noundef %6) #16
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  %10 = add i64 %5, %9
  %11 = add nuw nsw i64 %3, 1
  %12 = icmp eq i64 %11, 7
  br i1 %12, label %13, label %2, !llvm.loop !235

13:                                               ; preds = %2
  ret i64 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_output_decl_state_refs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.lto_out_decl_state, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !236
  %7 = icmp eq ptr %6, null
  %8 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16
  %9 = select i1 %7, ptr %8, ptr %6
  %10 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = call zeroext i8 @lto_streamer_cache_lookup(ptr noundef %11, ptr noundef %9, ptr noundef nonnull %4) #15
  %13 = load i32, ptr %4, align 4, !tbaa !33
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2256, ptr noundef nonnull @.str.3) #15
  br label %16

16:                                               ; preds = %3, %15
  call void @lto_output_data_stream(ptr noundef %1, ptr noundef nonnull %4, i64 noundef 4) #15
  br label %17

17:                                               ; preds = %16, %17
  %18 = phi i64 [ 0, %16 ], [ %20, %17 ]
  %19 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %2, i64 0, i64 %18
  call fastcc void @write_global_references(ptr noundef %0, ptr noundef %1, ptr noundef %19) #16
  %20 = add nuw nsw i64 %18, 1
  %21 = icmp eq i64 %20, 7
  br i1 %21, label %22, label %17, !llvm.loop !237

22:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @produce_symtab(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @lto_get_section_name(i32 noundef 7, ptr noundef null) #15
  tail call void @lto_begin_section(ptr noundef %2, i8 noundef zeroext 0) #15
  tail call void @free(ptr noundef %2) #16
  %3 = tail call ptr @lto_bitmap_alloc() #15
  tail call fastcc void @write_symbols_of_kind(i32 noundef 2, ptr noundef %0, ptr noundef %3) #16
  tail call fastcc void @write_symbols_of_kind(i32 noundef 3, ptr noundef %0, ptr noundef %3) #16
  tail call void @lto_bitmap_free(ptr noundef %3) #15
  tail call void @lto_end_section() #15
  ret void
}

; Function Attrs: optsize
declare void @lto_write_options() local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_cgraph_encoder_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_lto_out_decl_state_ptr_heap_free() unnamed_addr #5 {
  %1 = load ptr, ptr @lto_function_decl_states, align 8, !tbaa !46
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #16
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @lto_function_decl_states, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_alias_pair_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !238
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !46
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @output_alias_pair_p(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !228
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %6 [
    i16 32, label %16
    i16 29, label %7
  ]

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1944, ptr noundef nonnull @.str.3) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.alias_pair, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !230
  %10 = tail call ptr @cgraph_node_for_asm(ptr noundef %9) #15
  %11 = tail call { ptr, i32 } @cgraph_node_set_find(ptr noundef %1, ptr noundef %10) #15
  %12 = extractvalue { ptr, i32 } %11, 0
  %13 = extractvalue { ptr, i32 } %11, 1
  %14 = tail call fastcc zeroext i8 @csi_end_p(ptr %12, i32 %13) #16, !range !35
  %15 = xor i8 %14, 1
  br label %16

16:                                               ; preds = %2, %7
  %17 = phi i8 [ %15, %7 ], [ 1, %2 ]
  ret i8 %17
}

; Function Attrs: optsize
declare ptr @cgraph_node_for_asm(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare { ptr, i32 } @cgraph_node_set_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_global_stream(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @lto_tree_ref_encoder_size(ptr noundef %1) #16
  %4 = zext i32 %3 to i64
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 11
  br label %8

8:                                                ; preds = %6, %30
  %9 = phi i64 [ 0, %6 ], [ %31, %30 ]
  %10 = trunc i64 %9 to i32
  %11 = tail call fastcc ptr @lto_tree_ref_encoder_get_tree(ptr noundef %1, i32 noundef %10) #16
  %12 = load ptr, ptr %7, align 8, !tbaa !14
  %13 = tail call zeroext i8 @lto_streamer_cache_lookup(ptr noundef %12, ptr noundef %11, ptr noundef null) #15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  tail call void @lto_output_tree(ptr noundef nonnull %0, ptr noundef %11, i8 noundef zeroext 0) #16
  br label %16

16:                                               ; preds = %15, %8
  %17 = load i32, ptr @flag_wpa, align 4, !tbaa !33
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  %20 = load i64, ptr %11, align 8
  %21 = and i64 %20, 134283263
  %22 = icmp eq i64 %21, 134217760
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 33554432
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = or i64 %20, 4194304
  store i64 %29, ptr %11, align 8
  br label %30

30:                                               ; preds = %16, %28, %23, %19
  %31 = add nuw nsw i64 %9, 1
  %32 = icmp eq i64 %31, %4
  br i1 %32, label %33, label %8, !llvm.loop !240

33:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @lto_tree_ref_encoder_get_tree(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.lto_tree_ref_encoder, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !222
  %5 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %4, i32 noundef %1) #16
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @lto_streamer_cache_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_global_references(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %6 = tail call fastcc i32 @lto_tree_ref_encoder_size(ptr noundef %2) #16
  store i32 %6, ptr %4, align 4, !tbaa !33
  call void @lto_output_data_stream(ptr noundef %1, ptr noundef nonnull %4, i64 noundef 4) #15
  %7 = load i32, ptr %4, align 4, !tbaa !33
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 11
  br label %11

11:                                               ; preds = %9, %19
  %12 = phi i32 [ 0, %9 ], [ %20, %19 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  %13 = call fastcc ptr @lto_tree_ref_encoder_get_tree(ptr noundef %2, i32 noundef %12) #16
  %14 = load ptr, ptr %10, align 8, !tbaa !14
  %15 = call zeroext i8 @lto_streamer_cache_lookup(ptr noundef %14, ptr noundef %13, ptr noundef nonnull %5) #15
  %16 = load i32, ptr %5, align 4, !tbaa !33
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2220, ptr noundef nonnull @.str.3) #15
  br label %19

19:                                               ; preds = %11, %18
  call void @lto_output_data_stream(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  %20 = add nuw nsw i32 %12, 1
  %21 = load i32, ptr %4, align 4, !tbaa !33
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %11, label %23, !llvm.loop !241

23:                                               ; preds = %19, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_symbols_of_kind(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.lto_output_stream, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  %5 = load ptr, ptr @lto_function_decl_states, align 8
  %6 = tail call fastcc i32 @VEC_lto_out_decl_state_ptr_base_length(ptr noundef %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %7 = tail call ptr @lto_get_out_decl_state() #15
  %8 = zext nneg i32 %0 to i64
  %9 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %7, i64 0, i64 %8, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !222
  call fastcc void @write_symbol_vec(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %10, ptr noundef %2) #16
  %11 = icmp eq i32 %6, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %3, %12
  %13 = phi i32 [ %18, %12 ], [ 0, %3 ]
  %14 = load ptr, ptr @lto_function_decl_states, align 8
  %15 = call fastcc ptr @VEC_lto_out_decl_state_ptr_base_index(ptr noundef %14, i32 noundef %13) #16
  %16 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %15, i64 0, i64 %8, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !222
  call fastcc void @write_symbol_vec(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %17, ptr noundef %2) #16
  %18 = add nuw i32 %13, 1
  %19 = icmp eq i32 %18, %6
  br i1 %19, label %20, label %12, !llvm.loop !242

20:                                               ; preds = %12, %3
  call void @lto_write_stream(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_symbol_vec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %10 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #16, !range !26
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %110, label %12

12:                                               ; preds = %4, %106
  %13 = phi i32 [ %107, %106 ], [ 0, %4 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  %14 = load ptr, ptr %5, align 8, !tbaa !46
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 134217728
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %106, label %18

18:                                               ; preds = %12
  %19 = call zeroext i8 @is_builtin_fn(ptr noundef nonnull %14) #15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %106

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 2048
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %106

26:                                               ; preds = %21
  %27 = load i64, ptr %14, align 8
  %28 = trunc i64 %27 to i16
  switch i16 %28, label %29 [
    i16 36, label %106
    i16 32, label %30
    i16 29, label %30
  ]

29:                                               ; preds = %26
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2314, ptr noundef nonnull @.str.3) #15
  br label %30

30:                                               ; preds = %26, %26, %29
  %31 = call ptr @decl_assembler_name(ptr noundef nonnull %14) #15
  %32 = getelementptr inbounds %struct.tree_identifier, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = load i8, ptr %33, align 1, !tbaa !22
  %35 = icmp eq i8 %34, 42
  %36 = zext i1 %35 to i64
  %37 = getelementptr inbounds i8, ptr %33, i64 %36
  %38 = call zeroext i8 @lto_streamer_cache_lookup(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %8) #15
  %39 = load i32, ptr %8, align 4, !tbaa !33
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2325, ptr noundef nonnull @.str.3) #15
  %42 = load i32, ptr %8, align 4, !tbaa !33
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi i32 [ %39, %30 ], [ %42, %41 ]
  %45 = call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %44) #15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %106

47:                                               ; preds = %43
  %48 = load i32, ptr %8, align 4, !tbaa !33
  %49 = call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %48) #15
  %50 = load i64, ptr %22, align 8
  %51 = and i64 %50, 33554432
  %52 = icmp eq i64 %51, 0
  %53 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %14, i64 0, i32 4
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 128
  %56 = icmp eq i32 %55, 0
  br i1 %52, label %60, label %57

57:                                               ; preds = %47
  br i1 %56, label %59, label %58

58:                                               ; preds = %57
  store i32 3, ptr %6, align 4, !tbaa !33
  br label %67

59:                                               ; preds = %57
  store i32 2, ptr %6, align 4, !tbaa !33
  br label %67

60:                                               ; preds = %47
  br i1 %56, label %62, label %61

61:                                               ; preds = %60
  store i32 1, ptr %6, align 4, !tbaa !33
  br label %67

62:                                               ; preds = %60
  %63 = and i32 %54, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  store i32 4, ptr %6, align 4, !tbaa !33
  br label %67

66:                                               ; preds = %62
  store i32 0, ptr %6, align 4, !tbaa !33
  br label %67

67:                                               ; preds = %61, %66, %65, %58, %59
  %68 = phi i1 [ false, %61 ], [ false, %66 ], [ true, %65 ], [ false, %58 ], [ false, %59 ]
  %69 = lshr i32 %54, 10
  %70 = and i32 %69, 3
  switch i32 %70, label %75 [
    i32 0, label %71
    i32 1, label %72
    i32 2, label %73
    i32 3, label %74
  ]

71:                                               ; preds = %67
  store i32 0, ptr %7, align 4, !tbaa !33
  br label %76

72:                                               ; preds = %67
  store i32 1, ptr %7, align 4, !tbaa !33
  br label %76

73:                                               ; preds = %67
  store i32 3, ptr %7, align 4, !tbaa !33
  br label %76

74:                                               ; preds = %67
  store i32 2, ptr %7, align 4, !tbaa !33
  br label %76

75:                                               ; preds = %67
  unreachable

76:                                               ; preds = %74, %73, %72, %71
  br i1 %68, label %77, label %92

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !22
  %80 = icmp eq ptr %79, null
  br i1 %80, label %92, label %81

81:                                               ; preds = %77
  %82 = load i64, ptr %79, align 8
  %83 = and i64 %82, 65535
  %84 = icmp eq i64 %83, 23
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.tree_int_cst, ptr %79, i64 0, i32 1
  %87 = getelementptr inbounds %struct.tree_int_cst, ptr %79, i64 0, i32 1, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !22
  %89 = shl i64 %88, 32
  %90 = load i64, ptr %86, align 8, !tbaa !22
  %91 = or i64 %89, %90
  br label %92

92:                                               ; preds = %76, %77, %81, %85
  %93 = phi i64 [ %91, %85 ], [ 0, %81 ], [ 0, %77 ], [ 0, %76 ]
  store i64 %93, ptr %9, align 8, !tbaa !27
  %94 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %14, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !22
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.tree_identifier, ptr %95, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !22
  br label %100

100:                                              ; preds = %92, %97
  %101 = phi ptr [ %99, %97 ], [ @.str.11, %92 ]
  %102 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #16
  %103 = add i64 %102, 1
  call void @lto_output_data_stream(ptr noundef %1, ptr noundef nonnull %37, i64 noundef %103) #15
  %104 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %101) #16
  %105 = add i64 %104, 1
  call void @lto_output_data_stream(ptr noundef %1, ptr noundef %101, i64 noundef %105) #15
  call void @lto_output_data_stream(ptr noundef %1, ptr noundef nonnull %6, i64 noundef 1) #15
  call void @lto_output_data_stream(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 1) #15
  call void @lto_output_data_stream(ptr noundef %1, ptr noundef nonnull %9, i64 noundef 8) #15
  call void @lto_output_data_stream(ptr noundef %1, ptr noundef nonnull %8, i64 noundef 4) #15
  br label %106

106:                                              ; preds = %43, %26, %12, %18, %21, %100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  %107 = add nuw nsw i32 %13, 1
  %108 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %2, i32 noundef %107, ptr noundef nonnull %5) #16, !range !26
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %12, !llvm.loop !243

110:                                              ; preds = %106, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_builtin_fn(ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"output_block", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !7, i64 64, !7, i64 68, !8, i64 72, !10, i64 80}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!6, !10, i64 16}
!13 = !{!6, !10, i64 24}
!14 = !{!6, !10, i64 80}
!15 = !{!6, !10, i64 32}
!16 = !{!6, !10, i64 40}
!17 = !{!18, !10, i64 0}
!18 = !{!"string_slot", !10, i64 0, !7, i64 8, !7, i64 12}
!19 = !{!18, !7, i64 8}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!8, !8, i64 0}
!23 = !{!24, !10, i64 16}
!24 = !{!"bitpack_d", !25, i64 0, !25, i64 8, !10, i64 16}
!25 = !{!"long", !8, i64 0}
!26 = !{i32 0, i32 2}
!27 = !{!25, !25, i64 0}
!28 = distinct !{!28, !21}
!29 = !{!30, !7, i64 0}
!30 = !{!"VEC_bitpack_word_t_base", !7, i64 0, !7, i64 4, !8, i64 8}
!31 = !{!32, !7, i64 32}
!32 = !{!"lto_output_stream", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32}
!33 = !{!7, !7, i64 0}
!34 = !{i32 1, i32 65537}
!35 = !{i8 0, i8 2}
!36 = !{!37, !39, i64 0}
!37 = !{!"lto_function_header", !38, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!38 = !{!"lto_header", !39, i64 0, !39, i64 2, !7, i64 4}
!39 = !{!"short", !8, i64 0}
!40 = !{!37, !39, i64 2}
!41 = !{!37, !7, i64 4}
!42 = !{!37, !7, i64 24}
!43 = !{!37, !7, i64 28}
!44 = !{!37, !7, i64 32}
!45 = !{i64 0, i64 8, !46, i64 8, i64 4, !33}
!46 = !{!10, !10, i64 0}
!47 = !{i64 0, i64 4, !33}
!48 = !{!49, !10, i64 0}
!49 = !{!"cgraph_node", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !50, i64 144, !52, i64 184, !53, i64 224, !54, i64 232, !55, i64 256, !25, i64 288, !7, i64 296, !7, i64 300, !7, i64 304, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 309, !7, i64 309}
!50 = !{!"cgraph_local_info", !10, i64 0, !51, i64 8, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32}
!51 = !{!"inline_summary", !25, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!52 = !{!"cgraph_global_info", !25, i64 0, !25, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !8, i64 36}
!53 = !{!"cgraph_rtl_info", !7, i64 0}
!54 = !{!"cgraph_clone_info", !10, i64 0, !10, i64 8, !10, i64 16}
!55 = !{!"cgraph_thunk_info", !25, i64 0, !25, i64 8, !10, i64 16, !8, i64 24, !8, i64 25, !8, i64 26}
!56 = distinct !{!56, !21}
!57 = !{!6, !8, i64 72}
!58 = distinct !{!58, !21}
!59 = !{!60, !39, i64 0}
!60 = !{!"lto_decl_header", !38, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!61 = !{!60, !39, i64 2}
!62 = !{!60, !7, i64 4}
!63 = !{!60, !7, i64 12}
!64 = distinct !{!64, !21}
!65 = !{!60, !7, i64 8}
!66 = !{!60, !7, i64 16}
!67 = !{!60, !7, i64 20}
!68 = distinct !{!68, !21}
!69 = !{!70, !10, i64 168}
!70 = !{!"lto_out_decl_state", !8, i64 0, !10, i64 168, !10, i64 176}
!71 = !{!18, !7, i64 12}
!72 = distinct !{!72, !21}
!73 = !{!74, !7, i64 0}
!74 = !{!"VEC_tree_base", !7, i64 0, !7, i64 4, !8, i64 8}
!75 = !{i64 0, i64 4, !33, i64 0, i64 4, !33, i64 0, i64 4, !33, i64 0, i64 4, !33, i64 0, i64 4, !33, i64 0, i64 4, !33, i64 8, i64 24, !22}
!76 = distinct !{!76, !21}
!77 = !{i64 0, i64 8, !27, i64 8, i64 8, !27, i64 16, i64 4, !33}
!78 = !{i64 0, i64 8, !27, i64 8, i64 4, !33}
!79 = distinct !{!79, !21}
!80 = distinct !{!80, !21}
!81 = distinct !{!81, !21}
!82 = distinct !{!82, !21}
!83 = distinct !{!83, !21}
!84 = !{!85, !10, i64 8}
!85 = !{!"constructor_elt_d", !10, i64 0, !10, i64 8}
!86 = !{!85, !10, i64 0}
!87 = distinct !{!87, !21}
!88 = distinct !{!88, !21}
!89 = !{i64 0, i64 8, !46, i64 8, i64 4, !33, i64 12, i64 4, !33, i64 16, i64 1, !22}
!90 = !{i64 0, i64 4, !33, i64 4, i64 4, !33, i64 8, i64 1, !22}
!91 = !{i64 0, i64 4, !33, i64 4, i64 1, !22}
!92 = !{i64 0, i64 1, !22}
!93 = !{!6, !10, i64 56}
!94 = !{!6, !7, i64 64}
!95 = !{!6, !7, i64 68}
!96 = !{!97, !7, i64 0}
!97 = !{!"VEC_constructor_elt_base", !7, i64 0, !7, i64 4, !8, i64 8}
!98 = !{!99, !10, i64 8}
!99 = !{!"cgraph_node_set_def", !10, i64 0, !10, i64 8, !10, i64 16}
!100 = !{!6, !10, i64 48}
!101 = !{!102, !7, i64 120}
!102 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !10, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!103 = !{!102, !10, i64 56}
!104 = !{!102, !10, i64 64}
!105 = !{!102, !10, i64 72}
!106 = !{!102, !10, i64 8}
!107 = distinct !{!107, !21}
!108 = !{!49, !10, i64 144}
!109 = !{!110, !7, i64 8}
!110 = !{!"lto_tree_ref_table", !10, i64 0, !7, i64 8}
!111 = !{!110, !10, i64 0}
!112 = distinct !{!112, !21}
!113 = !{!114, !7, i64 8}
!114 = !{!"lto_tree_ref_encoder", !10, i64 0, !7, i64 8, !10, i64 16}
!115 = distinct !{!115, !21}
!116 = !{!117, !7, i64 8}
!117 = !{!"", !10, i64 0, !7, i64 8}
!118 = !{!119, !7, i64 0}
!119 = !{!"VEC_cgraph_node_ptr_base", !7, i64 0, !7, i64 4, !8, i64 8}
!120 = !{!102, !10, i64 24}
!121 = !{!122, !10, i64 16}
!122 = !{!"gimple_df", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !123, i64 32, !123, i64 48, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !7, i64 96, !124, i64 104}
!123 = !{!"pt_solution", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !10, i64 8}
!124 = !{!"ssa_operands", !10, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !10, i64 24, !10, i64 32}
!125 = distinct !{!125, !21}
!126 = !{!102, !10, i64 0}
!127 = !{!128, !10, i64 0}
!128 = !{!"eh_status", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !8, i64 40}
!129 = !{!130, !7, i64 24}
!130 = !{!"eh_region_d", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !8, i64 32, !10, i64 56, !10, i64 64, !10, i64 72, !8, i64 80}
!131 = !{!128, !10, i64 8}
!132 = distinct !{!132, !21}
!133 = !{!128, !10, i64 16}
!134 = distinct !{!134, !21}
!135 = !{!128, !10, i64 32}
!136 = distinct !{!136, !21}
!137 = !{!138, !8, i64 2035}
!138 = !{!"gcc_target", !139, i64 0, !141, i64 368, !142, i64 664, !7, i64 744, !10, i64 752, !10, i64 760, !10, i64 768, !10, i64 776, !10, i64 784, !10, i64 792, !10, i64 800, !10, i64 808, !10, i64 816, !10, i64 824, !10, i64 832, !10, i64 840, !10, i64 848, !10, i64 856, !10, i64 864, !10, i64 872, !10, i64 880, !10, i64 888, !10, i64 896, !10, i64 904, !10, i64 912, !10, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !10, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !25, i64 1064, !25, i64 1072, !10, i64 1080, !10, i64 1088, !10, i64 1096, !10, i64 1104, !10, i64 1112, !10, i64 1120, !10, i64 1128, !10, i64 1136, !10, i64 1144, !10, i64 1152, !10, i64 1160, !10, i64 1168, !143, i64 1176, !10, i64 1232, !10, i64 1240, !10, i64 1248, !10, i64 1256, !10, i64 1264, !10, i64 1272, !10, i64 1280, !10, i64 1288, !10, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !10, i64 1336, !10, i64 1344, !10, i64 1352, !10, i64 1360, !10, i64 1368, !10, i64 1376, !10, i64 1384, !10, i64 1392, !10, i64 1400, !10, i64 1408, !10, i64 1416, !10, i64 1424, !10, i64 1432, !10, i64 1440, !10, i64 1448, !10, i64 1456, !25, i64 1464, !144, i64 1472, !10, i64 1664, !10, i64 1672, !10, i64 1680, !10, i64 1688, !10, i64 1696, !10, i64 1704, !10, i64 1712, !10, i64 1720, !10, i64 1728, !10, i64 1736, !10, i64 1744, !10, i64 1752, !10, i64 1760, !10, i64 1768, !10, i64 1776, !145, i64 1784, !146, i64 1792, !147, i64 1896, !148, i64 1968, !10, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!139 = !{!"asm_out", !10, i64 0, !10, i64 8, !10, i64 16, !140, i64 24, !140, i64 56, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360}
!140 = !{!"asm_int_op", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!141 = !{!"sched", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!142 = !{!"vectorize", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72}
!143 = !{!"addr_space", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!144 = !{!"calls", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184}
!145 = !{!"c", !10, i64 0}
!146 = !{!"cxx", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96}
!147 = !{!"emutls", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !8, i64 64, !8, i64 65}
!148 = !{!"target_option_hooks", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!149 = distinct !{!149, !21}
!150 = distinct !{!150, !21}
!151 = !{!152, !7, i64 80}
!152 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !8, i64 32, !10, i64 48, !10, i64 56, !8, i64 64, !25, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!153 = !{!152, !25, i64 72}
!154 = !{!152, !7, i64 84}
!155 = !{!152, !7, i64 88}
!156 = !{!152, !7, i64 96}
!157 = distinct !{!157, !21}
!158 = distinct !{!158, !21}
!159 = !{!160, !7, i64 48}
!160 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!161 = !{!160, !7, i64 32}
!162 = !{!152, !10, i64 8}
!163 = !{i64 0, i64 4, !33, i64 8, i64 8, !46}
!164 = !{i64 0, i64 8, !46}
!165 = !{!166, !10, i64 8}
!166 = !{!"edge_def", !10, i64 0, !10, i64 8, !8, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !25, i64 56}
!167 = !{!166, !7, i64 52}
!168 = !{!166, !25, i64 56}
!169 = !{!166, !7, i64 48}
!170 = distinct !{!170, !21}
!171 = distinct !{!171, !21}
!172 = !{!152, !10, i64 56}
!173 = distinct !{!173, !21}
!174 = !{!175, !7, i64 0}
!175 = !{!"VEC_eh_region_base", !7, i64 0, !7, i64 4, !8, i64 8}
!176 = !{!130, !7, i64 28}
!177 = !{!130, !10, i64 0}
!178 = !{!130, !10, i64 8}
!179 = !{!130, !10, i64 16}
!180 = !{!130, !10, i64 56}
!181 = !{!182, !7, i64 32}
!182 = !{!"eh_landing_pad_d", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32}
!183 = !{!184, !7, i64 0}
!184 = !{!"VEC_eh_landing_pad_base", !7, i64 0, !7, i64 4, !8, i64 8}
!185 = !{!182, !10, i64 0}
!186 = !{!182, !10, i64 8}
!187 = !{!182, !10, i64 16}
!188 = !{!189, !7, i64 0}
!189 = !{!"VEC_uchar_base", !7, i64 0, !7, i64 4, !8, i64 8}
!190 = !{!191, !10, i64 16}
!191 = !{!"eh_catch_d", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!192 = !{!191, !10, i64 24}
!193 = !{!191, !10, i64 32}
!194 = !{!191, !10, i64 0}
!195 = distinct !{!195, !21}
!196 = !{!197, !10, i64 0}
!197 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!198 = !{!197, !10, i64 8}
!199 = !{!197, !10, i64 16}
!200 = !{!201, !10, i64 8}
!201 = !{!"gimple_bb_info", !10, i64 0, !10, i64 8}
!202 = !{!203, !10, i64 0}
!203 = !{!"gimple_seq_node_d", !10, i64 0, !10, i64 8, !10, i64 16}
!204 = !{i32 0, i32 256}
!205 = !{i32 189, i32 445}
!206 = distinct !{!206, !21}
!207 = !{!203, !10, i64 16}
!208 = !{!166, !10, i64 0}
!209 = distinct !{!209, !21}
!210 = !{!201, !10, i64 0}
!211 = !{!212, !10, i64 0}
!212 = !{!"gimple_seq_d", !10, i64 0, !10, i64 8, !10, i64 16}
!213 = !{!152, !10, i64 0}
!214 = !{!215, !7, i64 40}
!215 = !{!"phi_arg_d", !216, i64 0, !10, i64 32, !7, i64 40}
!216 = !{!"ssa_use_operand_d", !10, i64 0, !10, i64 8, !8, i64 16, !10, i64 24}
!217 = !{!216, !10, i64 24}
!218 = !{!219, !7, i64 0}
!219 = !{!"VEC_edge_base", !7, i64 0, !7, i64 4, !8, i64 8}
!220 = !{!221, !7, i64 0}
!221 = !{!"", !7, i64 0, !10, i64 8}
!222 = !{!114, !10, i64 16}
!223 = !{!74, !7, i64 4}
!224 = !{!225, !10, i64 0}
!225 = !{!"varpool_node", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !7, i64 36, !7, i64 36, !7, i64 36, !7, i64 36, !7, i64 36, !7, i64 36, !7, i64 36}
!226 = distinct !{!226, !21}
!227 = distinct !{!227, !21}
!228 = !{!229, !10, i64 0}
!229 = !{!"alias_pair", !10, i64 0, !10, i64 8}
!230 = !{!229, !10, i64 8}
!231 = distinct !{!231, !21}
!232 = !{!233, !7, i64 0}
!233 = !{!"VEC_lto_out_decl_state_ptr_base", !7, i64 0, !7, i64 4, !8, i64 8}
!234 = distinct !{!234, !21}
!235 = distinct !{!235, !21}
!236 = !{!70, !10, i64 176}
!237 = distinct !{!237, !21}
!238 = !{!239, !7, i64 0}
!239 = !{!"VEC_alias_pair_base", !7, i64 0, !7, i64 4, !8, i64 8}
!240 = distinct !{!240, !21}
!241 = distinct !{!241, !21}
!242 = distinct !{!242, !21}
!243 = distinct !{!243, !21}
