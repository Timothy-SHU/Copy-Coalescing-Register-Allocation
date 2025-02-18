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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.output_block = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr }
%struct.string_slot = type { ptr, i32, i32 }
%struct.bitpack_d = type { i64, i64, ptr }
%struct.VEC_bitpack_word_t_base = type { i32, i32, [1 x i64] }
%struct.real_value = type { i32, [3 x i64] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.lto_output_stream = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x ptr] }
%struct.tree_binfo = type { %struct.tree_common, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.VEC_tree_none }
%struct.VEC_tree_none = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
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
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.lto_function_header = type { %struct.lto_header, i32, i32, i32, i32, i32, i32, i32 }
%struct.lto_header = type { i16, i16, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.cgraph_node_set_def = type { ptr, ptr, ptr }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x ptr] }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.eh_region_d = type { ptr, ptr, ptr, i32, i32, %union.eh_region_u, ptr, ptr, ptr, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { ptr, ptr, i32 }
%struct.eh_status = type { ptr, ptr, ptr, ptr, ptr, %union.eh_status_u }
%union.eh_status_u = type { ptr }
%struct.VEC_eh_region_base = type { i32, i32, [1 x ptr] }
%struct.eh_catch_d = type { ptr, ptr, ptr, ptr, ptr }
%struct.eh_landing_pad_d = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_eh_landing_pad_base = type { i32, i32, [1 x ptr] }
%struct.VEC_uchar_base = type { i32, i32, [1 x i8] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_eh_ctrl = type { %struct.gimple_statement_base, i32 }
%struct.gimple_statement_eh_mnt = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.lto_tree_ref_table = type { ptr, i32 }
%struct.lto_tree_ref_encoder = type { ptr, i32, ptr }
%struct.lto_decl_header = type { %struct.lto_header, i32, i32, i32, i32 }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.VEC_alias_pair_base = type { i32, i32, [1 x %struct.alias_pair] }
%struct.alias_pair = type { ptr, ptr }
%struct.VEC_lto_out_decl_state_ptr_base = type { i32, i32, [1 x ptr] }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], ptr, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #16
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @create_output_block(i32 noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 88) #16
  store i32 %0, ptr %2, align 8, !tbaa !54
  %3 = tail call ptr @lto_get_out_decl_state() #16
  %4 = getelementptr inbounds %struct.output_block, ptr %2, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !56
  %5 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #16
  %6 = getelementptr inbounds %struct.output_block, ptr %2, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !57
  %7 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #16
  %8 = getelementptr inbounds %struct.output_block, ptr %2, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !58
  %9 = tail call ptr @lto_streamer_cache_create() #16
  %10 = getelementptr inbounds %struct.output_block, ptr %2, i64 0, i32 11
  store ptr %9, ptr %10, align 8, !tbaa !59
  %11 = icmp eq i32 %0, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #16
  %14 = getelementptr inbounds %struct.output_block, ptr %2, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !60
  br label %15

15:                                               ; preds = %12, %1
  %16 = getelementptr inbounds %struct.output_block, ptr %2, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %17 = tail call ptr @htab_create(i64 noundef 37, ptr noundef nonnull @hash_string_slot_node, ptr noundef nonnull @eq_string_slot_node, ptr noundef nonnull @string_slot_free) #16
  %18 = getelementptr inbounds %struct.output_block, ptr %2, i64 0, i32 5
  store ptr %17, ptr %18, align 8, !tbaa !61
  ret ptr %2
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @lto_get_out_decl_state() local_unnamed_addr #3

declare ptr @lto_streamer_cache_create() local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @hash_string_slot_node(ptr nocapture noundef readonly %0) #9 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !62
  %3 = tail call i32 @htab_hash_string(ptr noundef %2) #16
  ret i32 %3
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @eq_string_slot_node(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !34 {
  %3 = getelementptr inbounds %struct.string_slot, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.string_slot, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = icmp sgt i32 %4, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !62
  %12 = load ptr, ptr %1, align 8, !tbaa !62
  %13 = zext nneg i32 %4 to i64
  br label %17

14:                                               ; preds = %17
  %15 = add nuw nsw i64 %18, 1
  %16 = icmp eq i64 %15, %13
  br i1 %16, label %24, label %17, !llvm.loop !65

17:                                               ; preds = %10, %14
  %18 = phi i64 [ 0, %10 ], [ %15, %14 ]
  %19 = getelementptr inbounds i8, ptr %11, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !46
  %21 = getelementptr inbounds i8, ptr %12, i64 %18
  %22 = load i8, ptr %21, align 1, !tbaa !46
  %23 = icmp eq i8 %20, %22
  br i1 %23, label %14, label %24

24:                                               ; preds = %17, %14, %8, %2
  %25 = phi i32 [ 0, %2 ], [ 1, %8 ], [ 1, %14 ], [ 0, %17 ]
  ret i32 %25
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define internal void @string_slot_free(ptr nocapture noundef %0) #11 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @free(ptr noundef %2)
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @destroy_output_block(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !54
  %3 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  tail call void @htab_delete(ptr noundef %4) #16
  %5 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  tail call void @free(ptr noundef %6)
  %7 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  tail call void @free(ptr noundef %8)
  %9 = icmp eq i32 %2, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  tail call void @free(ptr noundef %12)
  br label %13

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  tail call void @lto_streamer_cache_delete(ptr noundef %15) #16
  tail call void @free(ptr noundef %0)
  ret void
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

declare void @lto_streamer_cache_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_output_bitpack(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.bitpack_d, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8, !tbaa !68
  %8 = zext i32 %7 to i64
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i64 [ %8, %6 ], [ 0, %2 ]
  tail call void @lto_output_uleb128_stream(ptr noundef %0, i64 noundef %10) #16
  br label %11

11:                                               ; preds = %25, %9
  %12 = phi i32 [ 0, %9 ], [ %26, %25 ]
  %13 = load ptr, ptr %3, align 8, !tbaa !66
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %13, align 8, !tbaa !68
  %17 = icmp ugt i32 %16, %12
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = zext i32 %12 to i64
  %20 = getelementptr inbounds %struct.VEC_bitpack_word_t_base, ptr %13, i64 0, i32 2, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !70
  br label %22

22:                                               ; preds = %11, %15, %18
  %23 = phi i64 [ %21, %18 ], [ 0, %15 ], [ 0, %11 ]
  %24 = phi i1 [ false, %18 ], [ true, %15 ], [ true, %11 ]
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  tail call void @lto_output_uleb128_stream(ptr noundef %0, i64 noundef %23) #16
  %26 = add i32 %12, 1
  br label %11, !llvm.loop !71

27:                                               ; preds = %22
  ret void
}

declare void @lto_output_uleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_output_tree(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  tail call void @lto_output_1_stream(ptr noundef %10, i8 noundef signext 0) #16
  br label %1306

11:                                               ; preds = %3
  %12 = load i64, ptr %1, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 23
  %15 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  br i1 %14, label %17, label %40

17:                                               ; preds = %11
  tail call void @lto_output_uleb128_stream(ptr noundef %16, i64 noundef 24) #16
  %18 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq i8 %2, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %19)
  br label %23

22:                                               ; preds = %17
  tail call void @lto_output_tree(ptr noundef %0, ptr noundef %19, i8 noundef zeroext 0)
  br label %23

23:                                               ; preds = %21, %22
  %24 = load ptr, ptr %15, align 8, !tbaa !57
  %25 = load i64, ptr %1, align 8
  %26 = and i64 %25, 65535
  %27 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !50
  %29 = icmp eq i32 %28, 1
  %30 = lshr i64 %25, 27
  %31 = trunc i64 %30 to i8
  %32 = and i8 %31, 1
  %33 = select i1 %29, i8 %32, i8 0
  tail call void @lto_output_1_stream(ptr noundef %24, i8 noundef signext %33) #16
  %34 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !46
  %36 = load ptr, ptr %15, align 8, !tbaa !57
  tail call void @lto_output_uleb128_stream(ptr noundef %36, i64 noundef %35) #16
  %37 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !46
  %39 = load ptr, ptr %15, align 8, !tbaa !57
  tail call void @lto_output_uleb128_stream(ptr noundef %39, i64 noundef %38) #16
  br label %1306

40:                                               ; preds = %11
  %41 = getelementptr inbounds %struct.lto_output_stream, ptr %16, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !72
  store i32 %42, ptr %6, align 4, !tbaa !50
  %43 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 11
  %44 = load ptr, ptr %43, align 8, !tbaa !59
  %45 = call zeroext i8 @lto_streamer_cache_insert(ptr noundef %44, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %48, i64 noundef 236) #16
  %49 = load i32, ptr %5, align 4, !tbaa !50
  %50 = sext i32 %49 to i64
  %51 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %51, i64 noundef %50) #16
  %52 = load i64, ptr %1, align 8
  %53 = and i64 %52, 65535
  %54 = add nuw nsw i64 %53, 1
  %55 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %55, i64 noundef %54) #16
  %56 = load i32, ptr %6, align 4, !tbaa !50
  %57 = zext i32 %56 to i64
  %58 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %58, i64 noundef %57) #16
  br label %1306

59:                                               ; preds = %40
  %60 = load i64, ptr %1, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 29
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !46
  %66 = icmp ult i32 %65, 2
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 11
  %71 = and i32 %70, 3
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = icmp eq i32 %71, 2
  %75 = zext i1 %74 to i8
  br label %76

76:                                               ; preds = %59, %63, %67, %73
  %77 = phi i8 [ 0, %63 ], [ 0, %59 ], [ 1, %67 ], [ %75, %73 ]
  %78 = icmp eq i8 %77, 0
  %79 = load i32, ptr %5, align 4, !tbaa !50
  br i1 %78, label %142, label %80

80:                                               ; preds = %76
  br i1 %62, label %81, label %91

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !46
  %84 = icmp ult i32 %83, 2
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %87 = load i32, ptr %86, align 8
  %88 = lshr i32 %87, 11
  %89 = or i32 %88, -4
  %90 = icmp ult i32 %89, -2
  br i1 %90, label %91, label %92

91:                                               ; preds = %81, %80, %85
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1241, ptr noundef nonnull @.str.3) #16
  br label %92

92:                                               ; preds = %91, %85
  %93 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 6144
  %96 = icmp ne i32 %95, 4096
  %97 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 24), align 8
  %98 = icmp ne ptr %97, null
  %99 = select i1 %96, i1 true, i1 %98
  br i1 %99, label %101, label %100

100:                                              ; preds = %92
  call void (ptr, ...) @sorry(ptr noundef nonnull @.str.4) #16
  br label %101

101:                                              ; preds = %100, %92
  %102 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %102, i64 noundef 227) #16
  %103 = load i32, ptr %93, align 8
  %104 = lshr i32 %103, 11
  %105 = and i32 %104, 3
  %106 = zext nneg i32 %105 to i64
  %107 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %107, i64 noundef %106) #16
  %108 = load i32, ptr %93, align 8
  %109 = and i32 %108, 2047
  %110 = zext nneg i32 %109 to i64
  %111 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %111, i64 noundef %110) #16
  %112 = sext i32 %79 to i64
  %113 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %113, i64 noundef %112) #16
  %114 = load i64, ptr %1, align 8
  %115 = and i64 %114, 65535
  %116 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %115, i64 13
  %117 = load i8, ptr %116, align 1, !tbaa !46
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %140, label %119

119:                                              ; preds = %101
  %120 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !46
  %122 = icmp eq ptr %121, null
  br i1 %122, label %140, label %123

123:                                              ; preds = %119
  %124 = call ptr @decl_assembler_name(ptr noundef nonnull %1) #16
  %125 = getelementptr inbounds %struct.tree_identifier, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !46
  %127 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %126)
  %128 = icmp ugt i64 %127, 1
  br i1 %128, label %129, label %138

129:                                              ; preds = %123
  %130 = load i8, ptr %126, align 1, !tbaa !46
  %131 = icmp eq i8 %130, 42
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load ptr, ptr %15, align 8, !tbaa !57
  %134 = getelementptr inbounds i8, ptr %126, i64 1
  call void @lto_output_uleb128_stream(ptr noundef %133, i64 noundef 0) #16
  %135 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %134)
  %136 = trunc i64 %135 to i32
  %137 = add i32 %136, 1
  call fastcc void @output_string_with_length(ptr noundef %0, ptr noundef %133, ptr noundef nonnull %134, i32 noundef %137)
  br label %1306

138:                                              ; preds = %129, %123
  %139 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %139, i64 noundef 1) #16
  br label %1306

140:                                              ; preds = %119, %101
  %141 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %141, i64 noundef 1) #16
  br label %1306

142:                                              ; preds = %76
  %143 = trunc i64 %60 to i32
  %144 = and i32 %143, 65535
  %145 = icmp ne i32 %144, 22
  %146 = icmp ult i32 %144, 188
  %147 = and i1 %145, %146
  %148 = freeze i1 %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = trunc i64 %60 to i16
  switch i16 %150, label %151 [
    i16 147, label %155
    i16 141, label %155
    i16 60, label %155
    i16 59, label %155
    i16 58, label %155
    i16 55, label %155
    i16 54, label %155
    i16 53, label %155
    i16 22, label %155
    i16 139, label %158
    i16 132, label %158
  ]

151:                                              ; preds = %149
  %152 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %61
  %153 = load i32, ptr %152, align 4, !tbaa !50
  %154 = icmp eq i32 %153, 8
  br i1 %154, label %155, label %158

155:                                              ; preds = %149, %149, %149, %149, %149, %149, %149, %149, %149, %142, %151
  %156 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %61
  %157 = load ptr, ptr %156, align 8, !tbaa !35
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.5, ptr noundef %157) #16
  br label %158

158:                                              ; preds = %151, %149, %149, %155
  %159 = add nuw nsw i32 %144, 1
  %160 = zext nneg i32 %159 to i64
  %161 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %161, i64 noundef %160) #16
  %162 = sext i32 %79 to i64
  %163 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %163, i64 noundef %162) #16
  %164 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %61, i64 6
  %165 = load i8, ptr %164, align 2, !tbaa !46
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %158
  %168 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %168, i64 noundef 0) #16
  %169 = getelementptr inbounds %struct.tree_string, ptr %1, i64 0, i32 2
  %170 = getelementptr inbounds %struct.tree_string, ptr %1, i64 0, i32 1
  %171 = load i32, ptr %170, align 8, !tbaa !46
  call fastcc void @output_string_with_length(ptr noundef %0, ptr noundef %168, ptr noundef nonnull %169, i32 noundef %171)
  br label %200

172:                                              ; preds = %158
  %173 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %61, i64 8
  %174 = load i8, ptr %173, align 8, !tbaa !46
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %177, i64 noundef 0) #16
  %178 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !46
  %180 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1, i32 1
  %181 = load i32, ptr %180, align 8, !tbaa !46
  call fastcc void @output_string_with_length(ptr noundef %0, ptr noundef %177, ptr noundef %179, i32 noundef %181)
  br label %200

182:                                              ; preds = %172
  %183 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %61, i64 24
  %184 = load i8, ptr %183, align 8, !tbaa !46
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.tree_vec, ptr %1, i64 0, i32 1
  %188 = load i32, ptr %187, align 8, !tbaa !46
  %189 = sext i32 %188 to i64
  %190 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %190, i64 noundef %189) #16
  br label %200

191:                                              ; preds = %182
  %192 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %61, i64 28
  %193 = load i8, ptr %192, align 4, !tbaa !46
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 9
  %197 = load i32, ptr %196, align 8, !tbaa !74
  %198 = zext i32 %197 to i64
  %199 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %199, i64 noundef %198) #16
  br label %200

200:                                              ; preds = %167, %176, %186, %191, %195
  %201 = load i64, ptr %1, align 8
  %202 = and i64 %201, 65535
  %203 = call ptr @bitpack_create() #16
  %204 = load i64, ptr %1, align 8
  %205 = and i64 %204, 65535
  call void @bp_pack_value(ptr noundef %203, i64 noundef %205, i32 noundef 16) #16
  %206 = load i64, ptr %1, align 8
  %207 = and i64 %206, 65535
  %208 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !50
  %210 = icmp eq i32 %209, 2
  br i1 %210, label %223, label %211

211:                                              ; preds = %200
  %212 = lshr i64 %206, 16
  %213 = and i64 %212, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %213, i32 noundef 1) #16
  %214 = load i64, ptr %1, align 8
  %215 = lshr i64 %214, 17
  %216 = and i64 %215, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %216, i32 noundef 1) #16
  %217 = load i64, ptr %1, align 8
  %218 = lshr i64 %217, 20
  %219 = and i64 %218, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %219, i32 noundef 1) #16
  %220 = load i64, ptr %1, align 8
  %221 = lshr i64 %220, 27
  %222 = and i64 %221, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %222, i32 noundef 1) #16
  br label %223

223:                                              ; preds = %211, %200
  %224 = load i64, ptr %1, align 8
  %225 = lshr i64 %224, 18
  %226 = and i64 %225, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %226, i32 noundef 1) #16
  %227 = load i64, ptr %1, align 8
  %228 = lshr i64 %227, 19
  %229 = and i64 %228, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %229, i32 noundef 1) #16
  %230 = load i64, ptr %1, align 8
  %231 = and i64 %230, 65535
  %232 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %231
  %233 = load i32, ptr %232, align 4, !tbaa !50
  %234 = and i32 %233, -2
  %235 = icmp eq i32 %234, 2
  br i1 %235, label %236, label %239

236:                                              ; preds = %223
  %237 = lshr i64 %230, 21
  %238 = and i64 %237, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %238, i32 noundef 1) #16
  br label %239

239:                                              ; preds = %223, %236
  %240 = load i64, ptr %1, align 8
  %241 = and i64 %240, 65535
  %242 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !50
  %244 = icmp eq i32 %243, 2
  %245 = lshr i64 %240, 22
  %246 = and i64 %245, 1
  %247 = select i1 %244, i64 0, i64 %246
  call void @bp_pack_value(ptr noundef %203, i64 noundef %247, i32 noundef 1) #16
  %248 = load i64, ptr %1, align 8
  %249 = lshr i64 %248, 23
  %250 = and i64 %249, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %250, i32 noundef 1) #16
  %251 = load i64, ptr %1, align 8
  %252 = lshr i64 %251, 24
  %253 = and i64 %252, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %253, i32 noundef 1) #16
  %254 = load i64, ptr %1, align 8
  %255 = lshr i64 %254, 25
  %256 = and i64 %255, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %256, i32 noundef 1) #16
  %257 = load i64, ptr %1, align 8
  %258 = lshr i64 %257, 26
  %259 = and i64 %258, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %259, i32 noundef 1) #16
  %260 = load i64, ptr %1, align 8
  %261 = lshr i64 %260, 28
  %262 = and i64 %261, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %262, i32 noundef 1) #16
  %263 = load i64, ptr %1, align 8
  %264 = lshr i64 %263, 29
  %265 = and i64 %264, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %265, i32 noundef 1) #16
  %266 = load i64, ptr %1, align 8
  %267 = lshr i64 %266, 30
  %268 = and i64 %267, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %268, i32 noundef 1) #16
  %269 = load i64, ptr %1, align 8
  %270 = and i64 %269, 65535
  %271 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !50
  %273 = icmp eq i32 %272, 2
  br i1 %273, label %274, label %277

274:                                              ; preds = %239
  %275 = lshr i64 %269, 31
  %276 = and i64 %275, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %276, i32 noundef 1) #16
  br label %277

277:                                              ; preds = %274, %239
  %278 = load i64, ptr %1, align 8
  %279 = and i64 %278, 65535
  %280 = icmp eq i64 %279, 141
  br i1 %280, label %281, label %284

281:                                              ; preds = %277
  %282 = lshr i64 %278, 32
  %283 = and i64 %282, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %283, i32 noundef 1) #16
  br label %284

284:                                              ; preds = %281, %277
  %285 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %202, i64 3
  %286 = load i8, ptr %285, align 1, !tbaa !46
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %315, label %288

288:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  %289 = getelementptr inbounds %struct.tree_real_cst, ptr %1, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %290, i64 32, i1 false), !tbaa.struct !76
  %291 = load i32, ptr %4, align 8
  %292 = and i32 %291, 3
  %293 = zext nneg i32 %292 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %293, i32 noundef 2) #16
  %294 = lshr i32 %291, 2
  %295 = and i32 %294, 1
  %296 = zext nneg i32 %295 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %296, i32 noundef 1) #16
  %297 = lshr i32 %291, 3
  %298 = and i32 %297, 1
  %299 = zext nneg i32 %298 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %299, i32 noundef 1) #16
  %300 = lshr i32 %291, 4
  %301 = and i32 %300, 1
  %302 = zext nneg i32 %301 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %302, i32 noundef 1) #16
  %303 = lshr i32 %291, 5
  %304 = and i32 %303, 1
  %305 = zext nneg i32 %304 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %305, i32 noundef 1) #16
  %306 = lshr i32 %291, 6
  %307 = zext nneg i32 %306 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %307, i32 noundef 26) #16
  br label %308

308:                                              ; preds = %288, %308
  %309 = phi i64 [ 0, %288 ], [ %312, %308 ]
  %310 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 %309
  %311 = load i64, ptr %310, align 8, !tbaa !70
  call void @bp_pack_value(ptr noundef %203, i64 noundef %311, i32 noundef 64) #16
  %312 = add nuw nsw i64 %309, 1
  %313 = icmp eq i64 %312, 3
  br i1 %313, label %314, label %308, !llvm.loop !77

314:                                              ; preds = %308
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  br label %315

315:                                              ; preds = %314, %284
  %316 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %202, i64 4
  %317 = load i8, ptr %316, align 4, !tbaa !46
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %325, label %319

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.tree_fixed_cst, ptr %1, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !46
  %322 = load i64, ptr %321, align 8, !tbaa.struct !78
  %323 = getelementptr inbounds i8, ptr %321, i64 8
  %324 = load i64, ptr %323, align 8, !tbaa.struct !79
  call void @bp_pack_value(ptr noundef %203, i64 noundef %322, i32 noundef 64) #16
  call void @bp_pack_value(ptr noundef %203, i64 noundef %324, i32 noundef 64) #16
  br label %325

325:                                              ; preds = %319, %315
  %326 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %202, i64 10
  %327 = load i8, ptr %326, align 2, !tbaa !46
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %407, label %329

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %331 = load i64, ptr %330, align 8
  %332 = and i64 %331, 255
  call void @bp_pack_value(ptr noundef %203, i64 noundef %332, i32 noundef 8) #16
  %333 = load i64, ptr %330, align 8
  %334 = lshr i64 %333, 8
  %335 = and i64 %334, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %335, i32 noundef 1) #16
  %336 = load i64, ptr %330, align 8
  %337 = lshr i64 %336, 9
  %338 = and i64 %337, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %338, i32 noundef 1) #16
  %339 = load i64, ptr %330, align 8
  %340 = lshr i64 %339, 10
  %341 = and i64 %340, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %341, i32 noundef 1) #16
  %342 = load i64, ptr %330, align 8
  %343 = lshr i64 %342, 11
  %344 = and i64 %343, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %344, i32 noundef 1) #16
  %345 = load i64, ptr %330, align 8
  %346 = lshr i64 %345, 12
  %347 = and i64 %346, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %347, i32 noundef 1) #16
  %348 = load i64, ptr %1, align 8
  %349 = lshr i64 %348, 42
  %350 = and i64 %349, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %350, i32 noundef 1) #16
  %351 = load i64, ptr %330, align 8
  %352 = lshr i64 %351, 13
  %353 = and i64 %352, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %353, i32 noundef 1) #16
  %354 = load i64, ptr %330, align 8
  %355 = lshr i64 %354, 14
  %356 = and i64 %355, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %356, i32 noundef 1) #16
  %357 = load i64, ptr %330, align 8
  %358 = lshr i64 %357, 25
  %359 = and i64 %358, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %359, i32 noundef 1) #16
  %360 = load i64, ptr %330, align 8
  %361 = lshr i64 %360, 27
  %362 = and i64 %361, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %362, i32 noundef 1) #16
  %363 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 3
  %364 = load i32, ptr %363, align 8, !tbaa !46
  %365 = zext i32 %364 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %365, i32 noundef 32) #16
  %366 = load i64, ptr %1, align 8
  %367 = and i64 %366, 65535
  %368 = icmp eq i64 %367, 30
  br i1 %368, label %369, label %376

369:                                              ; preds = %329
  %370 = load i64, ptr %330, align 8
  %371 = lshr i64 %370, 24
  %372 = and i64 %371, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %372, i32 noundef 1) #16
  %373 = getelementptr inbounds %struct.tree_label_decl, ptr %1, i64 0, i32 2
  %374 = load i32, ptr %373, align 4, !tbaa !46
  %375 = sext i32 %374 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %375, i32 noundef 32) #16
  br label %376

376:                                              ; preds = %369, %329
  %377 = load i64, ptr %1, align 8
  %378 = and i64 %377, 65535
  %379 = icmp eq i64 %378, 31
  br i1 %379, label %380, label %390

380:                                              ; preds = %376
  %381 = lshr i64 %377, 41
  %382 = and i64 %381, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %382, i32 noundef 1) #16
  %383 = load i64, ptr %330, align 8
  %384 = lshr i64 %383, 26
  %385 = and i64 %384, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %385, i32 noundef 1) #16
  %386 = load i64, ptr %330, align 8
  %387 = lshr i64 %386, 32
  %388 = and i64 %387, 255
  %389 = shl nuw i64 1, %388
  call void @bp_pack_value(ptr noundef %203, i64 noundef %389, i32 noundef 8) #16
  br label %390

390:                                              ; preds = %380, %376
  %391 = load i64, ptr %1, align 8
  %392 = trunc i64 %391 to i16
  switch i16 %392, label %407 [
    i16 36, label %393
    i16 34, label %393
    i16 32, label %393
  ]

393:                                              ; preds = %390, %390, %390
  %394 = load i64, ptr %330, align 8
  %395 = lshr i64 %394, 28
  %396 = and i64 %395, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %396, i32 noundef 1) #16
  %397 = load i64, ptr %1, align 8
  %398 = trunc i64 %397 to i16
  switch i16 %398, label %403 [
    i16 32, label %399
    i16 34, label %399
  ]

399:                                              ; preds = %393, %393
  %400 = load i64, ptr %330, align 8
  %401 = lshr i64 %400, 26
  %402 = and i64 %401, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %402, i32 noundef 1) #16
  br label %403

403:                                              ; preds = %399, %393
  %404 = load i64, ptr %330, align 8
  %405 = lshr i64 %404, 29
  %406 = and i64 %405, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %406, i32 noundef 1) #16
  br label %407

407:                                              ; preds = %403, %390, %325
  %408 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %202, i64 11
  %409 = load i8, ptr %408, align 1, !tbaa !46
  %410 = icmp eq i8 %409, 0
  br i1 %410, label %416, label %411

411:                                              ; preds = %407
  %412 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %413 = load i64, ptr %412, align 8
  %414 = lshr i64 %413, 24
  %415 = and i64 %414, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %415, i32 noundef 1) #16
  br label %416

416:                                              ; preds = %411, %407
  %417 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %202, i64 13
  %418 = load i8, ptr %417, align 1, !tbaa !46
  %419 = icmp eq i8 %418, 0
  br i1 %419, label %475, label %420

420:                                              ; preds = %416
  %421 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %422 = load i32, ptr %421, align 8
  %423 = and i32 %422, 1
  %424 = zext nneg i32 %423 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %424, i32 noundef 1) #16
  %425 = load i32, ptr %421, align 8
  %426 = lshr i32 %425, 3
  %427 = and i32 %426, 1
  %428 = zext nneg i32 %427 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %428, i32 noundef 1) #16
  %429 = load i32, ptr %421, align 8
  %430 = lshr i32 %429, 5
  %431 = and i32 %430, 1
  %432 = zext nneg i32 %431 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %432, i32 noundef 1) #16
  %433 = load i32, ptr %421, align 8
  %434 = lshr i32 %433, 7
  %435 = and i32 %434, 1
  %436 = zext nneg i32 %435 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %436, i32 noundef 1) #16
  %437 = load i32, ptr %421, align 8
  %438 = lshr i32 %437, 8
  %439 = and i32 %438, 1
  %440 = zext nneg i32 %439 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %440, i32 noundef 1) #16
  %441 = load i32, ptr %421, align 8
  %442 = lshr i32 %441, 9
  %443 = and i32 %442, 1
  %444 = zext nneg i32 %443 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %444, i32 noundef 1) #16
  %445 = load i32, ptr %421, align 8
  %446 = lshr i32 %445, 10
  %447 = and i32 %446, 3
  %448 = zext nneg i32 %447 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %448, i32 noundef 2) #16
  %449 = load i32, ptr %421, align 8
  %450 = lshr i32 %449, 12
  %451 = and i32 %450, 1
  %452 = zext nneg i32 %451 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %452, i32 noundef 1) #16
  %453 = load i64, ptr %1, align 8
  %454 = and i64 %453, 65535
  %455 = icmp eq i64 %454, 32
  br i1 %455, label %456, label %469

456:                                              ; preds = %420
  %457 = load i32, ptr %421, align 8
  %458 = lshr i32 %457, 1
  %459 = and i32 %458, 1
  %460 = zext nneg i32 %459 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %460, i32 noundef 1) #16
  %461 = load i32, ptr %421, align 8
  %462 = lshr i32 %461, 4
  %463 = and i32 %462, 1
  %464 = zext nneg i32 %463 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %464, i32 noundef 1) #16
  %465 = load i32, ptr %421, align 8
  %466 = lshr i32 %465, 13
  %467 = and i32 %466, 7
  %468 = zext nneg i32 %467 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %468, i32 noundef 3) #16
  br label %469

469:                                              ; preds = %456, %420
  %470 = load i64, ptr %1, align 8
  %471 = trunc i64 %470 to i16
  switch i16 %471, label %475 [
    i16 32, label %472
    i16 29, label %472
  ]

472:                                              ; preds = %469, %469
  %473 = call zeroext i16 @decl_init_priority_lookup(ptr noundef nonnull %1) #16
  %474 = zext i16 %473 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %474, i32 noundef 16) #16
  br label %475

475:                                              ; preds = %472, %469, %416
  %476 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %202, i64 21
  %477 = load i8, ptr %476, align 1, !tbaa !46
  %478 = icmp eq i8 %477, 0
  br i1 %478, label %567, label %479

479:                                              ; preds = %475
  %480 = load i64, ptr %1, align 8
  %481 = and i64 %480, 65535
  %482 = icmp eq i64 %481, 29
  br i1 %482, label %483, label %494

483:                                              ; preds = %479
  %484 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %485 = load i32, ptr %484, align 8, !tbaa !46
  %486 = icmp ult i32 %485, 2
  br i1 %486, label %487, label %494

487:                                              ; preds = %483
  %488 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %489 = load i32, ptr %488, align 8
  %490 = lshr i32 %489, 11
  %491 = or i32 %490, -4
  %492 = icmp ult i32 %491, -2
  br i1 %492, label %494, label %493

493:                                              ; preds = %487
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 487, ptr noundef nonnull @.str.3) #16
  br label %494

494:                                              ; preds = %493, %487, %483, %479
  %495 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %496 = load i32, ptr %495, align 8
  %497 = and i32 %496, 2047
  %498 = zext nneg i32 %497 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %498, i32 noundef 11) #16
  %499 = load i32, ptr %495, align 8
  %500 = lshr i32 %499, 11
  %501 = and i32 %500, 3
  %502 = zext nneg i32 %501 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %502, i32 noundef 2) #16
  %503 = load i32, ptr %495, align 8
  %504 = lshr i32 %503, 13
  %505 = and i32 %504, 1
  %506 = zext nneg i32 %505 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %506, i32 noundef 1) #16
  %507 = load i32, ptr %495, align 8
  %508 = lshr i32 %507, 14
  %509 = and i32 %508, 1
  %510 = zext nneg i32 %509 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %510, i32 noundef 1) #16
  %511 = load i32, ptr %495, align 8
  %512 = lshr i32 %511, 15
  %513 = and i32 %512, 1
  %514 = zext nneg i32 %513 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %514, i32 noundef 1) #16
  %515 = load i32, ptr %495, align 8
  %516 = lshr i32 %515, 16
  %517 = and i32 %516, 1
  %518 = zext nneg i32 %517 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %518, i32 noundef 1) #16
  %519 = load i32, ptr %495, align 8
  %520 = lshr i32 %519, 17
  %521 = and i32 %520, 1
  %522 = zext nneg i32 %521 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %522, i32 noundef 1) #16
  %523 = load i32, ptr %495, align 8
  %524 = lshr i32 %523, 18
  %525 = and i32 %524, 1
  %526 = zext nneg i32 %525 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %526, i32 noundef 1) #16
  %527 = load i32, ptr %495, align 8
  %528 = lshr i32 %527, 19
  %529 = and i32 %528, 1
  %530 = zext nneg i32 %529 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %530, i32 noundef 1) #16
  %531 = load i32, ptr %495, align 8
  %532 = lshr i32 %531, 20
  %533 = and i32 %532, 1
  %534 = zext nneg i32 %533 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %534, i32 noundef 1) #16
  %535 = load i32, ptr %495, align 8
  %536 = lshr i32 %535, 21
  %537 = and i32 %536, 1
  %538 = zext nneg i32 %537 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %538, i32 noundef 1) #16
  %539 = load i32, ptr %495, align 8
  %540 = lshr i32 %539, 22
  %541 = and i32 %540, 1
  %542 = zext nneg i32 %541 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %542, i32 noundef 1) #16
  %543 = load i32, ptr %495, align 8
  %544 = lshr i32 %543, 23
  %545 = and i32 %544, 1
  %546 = zext nneg i32 %545 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %546, i32 noundef 1) #16
  %547 = load i32, ptr %495, align 8
  %548 = lshr i32 %547, 24
  %549 = and i32 %548, 1
  %550 = zext nneg i32 %549 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %550, i32 noundef 1) #16
  %551 = load i32, ptr %495, align 8
  %552 = lshr i32 %551, 25
  %553 = and i32 %552, 1
  %554 = zext nneg i32 %553 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %554, i32 noundef 1) #16
  %555 = load i32, ptr %495, align 8
  %556 = lshr i32 %555, 26
  %557 = and i32 %556, 1
  %558 = zext nneg i32 %557 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %558, i32 noundef 1) #16
  %559 = load i32, ptr %495, align 8
  %560 = lshr i32 %559, 27
  %561 = and i32 %560, 1
  %562 = zext nneg i32 %561 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %562, i32 noundef 1) #16
  %563 = load i32, ptr %495, align 8
  %564 = lshr i32 %563, 28
  %565 = and i32 %564, 1
  %566 = zext nneg i32 %565 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %566, i32 noundef 1) #16
  br label %567

567:                                              ; preds = %494, %475
  %568 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %202, i64 22
  %569 = load i8, ptr %568, align 2, !tbaa !46
  %570 = icmp eq i8 %569, 0
  br i1 %570, label %633, label %571

571:                                              ; preds = %567
  %572 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %573 = load i32, ptr %572, align 4
  %574 = and i32 %573, 1023
  %575 = zext nneg i32 %574 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %575, i32 noundef 9) #16
  %576 = load i64, ptr %1, align 8
  %577 = and i64 %576, 65535
  %578 = icmp eq i64 %577, 14
  br i1 %578, label %579, label %581

579:                                              ; preds = %571
  %580 = call i32 @vector_type_mode(ptr noundef nonnull %1) #16
  br label %585

581:                                              ; preds = %571
  %582 = load i32, ptr %572, align 4
  %583 = lshr i32 %582, 16
  %584 = and i32 %583, 255
  br label %585

585:                                              ; preds = %581, %579
  %586 = phi i32 [ %580, %579 ], [ %584, %581 ]
  %587 = zext i32 %586 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %587, i32 noundef 7) #16
  %588 = load i32, ptr %572, align 4
  %589 = lshr i32 %588, 24
  %590 = and i32 %589, 1
  %591 = zext nneg i32 %590 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %591, i32 noundef 1) #16
  %592 = load i32, ptr %572, align 4
  %593 = lshr i32 %592, 10
  %594 = and i32 %593, 1
  %595 = zext nneg i32 %594 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %595, i32 noundef 1) #16
  %596 = load i32, ptr %572, align 4
  %597 = lshr i32 %596, 11
  %598 = and i32 %597, 1
  %599 = zext nneg i32 %598 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %599, i32 noundef 1) #16
  %600 = load i64, ptr %1, align 8
  %601 = and i64 %600, 65534
  %602 = icmp eq i64 %601, 16
  br i1 %602, label %603, label %608

603:                                              ; preds = %585
  %604 = load i32, ptr %572, align 4
  %605 = lshr i32 %604, 12
  %606 = and i32 %605, 1
  %607 = zext nneg i32 %606 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %607, i32 noundef 1) #16
  br label %608

608:                                              ; preds = %603, %585
  %609 = load i64, ptr %1, align 8
  %610 = lshr i64 %609, 41
  %611 = and i64 %610, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %611, i32 noundef 1) #16
  %612 = load i32, ptr %572, align 4
  %613 = lshr i32 %612, 13
  %614 = and i32 %613, 1
  %615 = zext nneg i32 %614 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %615, i32 noundef 1) #16
  %616 = load i32, ptr %572, align 4
  %617 = lshr i32 %616, 14
  %618 = and i32 %617, 3
  %619 = zext nneg i32 %618 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %619, i32 noundef 2) #16
  %620 = load i64, ptr %1, align 8
  %621 = lshr i64 %620, 42
  %622 = and i64 %621, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %622, i32 noundef 1) #16
  %623 = load i64, ptr %1, align 8
  %624 = lshr i64 %623, 20
  %625 = and i64 %624, 1
  call void @bp_pack_value(ptr noundef %203, i64 noundef %625, i32 noundef 1) #16
  %626 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 7
  %627 = load i32, ptr %626, align 8, !tbaa !46
  %628 = zext i32 %627 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %628, i32 noundef 32) #16
  %629 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 8
  %630 = load i32, ptr %629, align 4, !tbaa !46
  %631 = icmp ne i32 %630, 0
  %632 = sext i1 %631 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %632, i32 noundef 32) #16
  br label %633

633:                                              ; preds = %608, %567
  %634 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %202, i64 27
  %635 = load i8, ptr %634, align 1, !tbaa !46
  %636 = icmp eq i8 %635, 0
  br i1 %636, label %645, label %637

637:                                              ; preds = %633
  %638 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 1
  %639 = load i32, ptr %638, align 8
  %640 = and i32 %639, 1
  %641 = zext nneg i32 %640 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %641, i32 noundef 1) #16
  %642 = load i32, ptr %638, align 8
  %643 = lshr i32 %642, 1
  %644 = zext nneg i32 %643 to i64
  call void @bp_pack_value(ptr noundef %203, i64 noundef %644, i32 noundef 31) #16
  br label %645

645:                                              ; preds = %637, %633
  %646 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %202, i64 26
  %647 = load i8, ptr %646, align 2, !tbaa !46
  %648 = icmp eq i8 %647, 0
  br i1 %648, label %650, label %649

649:                                              ; preds = %645
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 586, ptr noundef nonnull @.str.3) #16
  br label %650

650:                                              ; preds = %649, %645
  %651 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %202, i64 29
  %652 = load i8, ptr %651, align 1, !tbaa !46
  %653 = icmp eq i8 %652, 0
  br i1 %653, label %655, label %654

654:                                              ; preds = %650
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 592, ptr noundef nonnull @.str.3) #16
  br label %655

655:                                              ; preds = %654, %650
  %656 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %202, i64 31
  %657 = load i8, ptr %656, align 1, !tbaa !46
  %658 = icmp eq i8 %657, 0
  br i1 %658, label %660, label %659

659:                                              ; preds = %655
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 598, ptr noundef nonnull @.str.3) #16
  br label %660

660:                                              ; preds = %655, %659
  %661 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_bitpack(ptr noundef %661, ptr noundef %203)
  call void @bitpack_delete(ptr noundef %203) #16
  %662 = load i64, ptr %1, align 8
  %663 = and i64 %662, 65535
  %664 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 1
  %665 = load i8, ptr %664, align 1, !tbaa !46
  %666 = icmp eq i8 %665, 0
  br i1 %666, label %673, label %667

667:                                              ; preds = %660
  %668 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %669 = load ptr, ptr %668, align 8, !tbaa !46
  %670 = icmp eq i8 %2, 0
  br i1 %670, label %672, label %671

671:                                              ; preds = %667
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %669)
  br label %673

672:                                              ; preds = %667
  call void @lto_output_tree(ptr noundef %0, ptr noundef %669, i8 noundef zeroext 0)
  br label %673

673:                                              ; preds = %672, %671, %660
  %674 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 5
  %675 = load i8, ptr %674, align 1, !tbaa !46
  %676 = icmp eq i8 %675, 0
  br i1 %676, label %680, label %677

677:                                              ; preds = %673
  %678 = getelementptr inbounds %struct.tree_vector, ptr %1, i64 0, i32 1
  %679 = load ptr, ptr %678, align 8, !tbaa !46
  call fastcc void @lto_output_chain(ptr noundef %0, ptr noundef %679, i8 noundef zeroext %2)
  br label %680

680:                                              ; preds = %677, %673
  %681 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 7
  %682 = load i8, ptr %681, align 1, !tbaa !46
  %683 = icmp eq i8 %682, 0
  br i1 %683, label %695, label %684

684:                                              ; preds = %680
  %685 = getelementptr inbounds %struct.tree_complex, ptr %1, i64 0, i32 1
  %686 = load ptr, ptr %685, align 8, !tbaa !46
  %687 = icmp eq i8 %2, 0
  br i1 %687, label %689, label %688

688:                                              ; preds = %684
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %686)
  br label %690

689:                                              ; preds = %684
  call void @lto_output_tree(ptr noundef %0, ptr noundef %686, i8 noundef zeroext 0)
  br label %690

690:                                              ; preds = %688, %689
  %691 = getelementptr inbounds %struct.tree_complex, ptr %1, i64 0, i32 2
  %692 = load ptr, ptr %691, align 8, !tbaa !46
  br i1 %687, label %694, label %693

693:                                              ; preds = %690
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %692)
  br label %695

694:                                              ; preds = %690
  call void @lto_output_tree(ptr noundef %0, ptr noundef %692, i8 noundef zeroext 0)
  br label %695

695:                                              ; preds = %694, %693, %680
  %696 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 9
  %697 = load i8, ptr %696, align 1, !tbaa !46
  %698 = icmp eq i8 %697, 0
  br i1 %698, label %713, label %699

699:                                              ; preds = %695
  %700 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %701 = load ptr, ptr %700, align 8, !tbaa !46
  %702 = icmp eq i8 %2, 0
  br i1 %702, label %704, label %703

703:                                              ; preds = %699
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %701)
  br label %705

704:                                              ; preds = %699
  call void @lto_output_tree(ptr noundef %0, ptr noundef %701, i8 noundef zeroext 0)
  br label %705

705:                                              ; preds = %703, %704
  %706 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 4
  %707 = load ptr, ptr %706, align 8, !tbaa !46
  br i1 %702, label %709, label %708

708:                                              ; preds = %705
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %707)
  br label %710

709:                                              ; preds = %705
  call void @lto_output_tree(ptr noundef %0, ptr noundef %707, i8 noundef zeroext 0)
  br label %710

710:                                              ; preds = %708, %709
  %711 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %712 = load i32, ptr %711, align 8, !tbaa !46
  call fastcc void @lto_output_location(ptr noundef %0, i32 noundef %712)
  br label %713

713:                                              ; preds = %710, %695
  %714 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 10
  %715 = load i8, ptr %714, align 2, !tbaa !46
  %716 = icmp eq i8 %715, 0
  br i1 %716, label %766, label %717

717:                                              ; preds = %713
  %718 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %719 = load ptr, ptr %718, align 8, !tbaa !46
  %720 = icmp eq i8 %2, 0
  br i1 %720, label %722, label %721

721:                                              ; preds = %717
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %719)
  br label %723

722:                                              ; preds = %717
  call void @lto_output_tree(ptr noundef %0, ptr noundef %719, i8 noundef zeroext 0)
  br label %723

723:                                              ; preds = %721, %722
  %724 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 4
  %725 = load ptr, ptr %724, align 8, !tbaa !46
  br i1 %720, label %727, label %726

726:                                              ; preds = %723
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %725)
  br label %728

727:                                              ; preds = %723
  call void @lto_output_tree(ptr noundef %0, ptr noundef %725, i8 noundef zeroext 0)
  br label %728

728:                                              ; preds = %726, %727
  %729 = load i64, ptr %1, align 8
  %730 = and i64 %729, 65535
  %731 = icmp eq i64 %730, 29
  br i1 %731, label %737, label %732

732:                                              ; preds = %728
  %733 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 5
  %734 = load ptr, ptr %733, align 8, !tbaa !46
  br i1 %720, label %736, label %735

735:                                              ; preds = %732
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %734)
  br label %737

736:                                              ; preds = %732
  call void @lto_output_tree(ptr noundef %0, ptr noundef %734, i8 noundef zeroext 0)
  br label %737

737:                                              ; preds = %736, %735, %728
  %738 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 6
  %739 = load ptr, ptr %738, align 8, !tbaa !46
  br i1 %720, label %741, label %740

740:                                              ; preds = %737
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %739)
  br label %742

741:                                              ; preds = %737
  call void @lto_output_tree(ptr noundef %0, ptr noundef %739, i8 noundef zeroext 0)
  br label %742

742:                                              ; preds = %740, %741
  %743 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 7
  %744 = load ptr, ptr %743, align 8, !tbaa !46
  br i1 %720, label %746, label %745

745:                                              ; preds = %742
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %744)
  br label %747

746:                                              ; preds = %742
  call void @lto_output_tree(ptr noundef %0, ptr noundef %744, i8 noundef zeroext 0)
  br label %747

747:                                              ; preds = %745, %746
  %748 = load i64, ptr %1, align 8
  %749 = and i64 %748, 65535
  %750 = icmp eq i64 %749, 34
  br i1 %750, label %751, label %754

751:                                              ; preds = %747
  %752 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %753 = load ptr, ptr %752, align 8, !tbaa !46
  call fastcc void @lto_output_chain(ptr noundef %0, ptr noundef %753, i8 noundef zeroext %2)
  br label %754

754:                                              ; preds = %751, %747
  %755 = load i64, ptr %1, align 8
  %756 = trunc i64 %755 to i16
  switch i16 %756, label %766 [
    i16 32, label %757
    i16 34, label %757
  ]

757:                                              ; preds = %754, %754
  %758 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %759 = load i64, ptr %758, align 8
  %760 = and i64 %759, 67108864
  %761 = icmp eq i64 %760, 0
  br i1 %761, label %766, label %762

762:                                              ; preds = %757
  %763 = call ptr @decl_value_expr_lookup(ptr noundef nonnull %1) #16
  br i1 %720, label %765, label %764

764:                                              ; preds = %762
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %763)
  br label %766

765:                                              ; preds = %762
  call void @lto_output_tree(ptr noundef %0, ptr noundef %763, i8 noundef zeroext 0)
  br label %766

766:                                              ; preds = %757, %754, %764, %765, %713
  %767 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 12
  %768 = load i8, ptr %767, align 4, !tbaa !46
  %769 = icmp eq i8 %768, 0
  br i1 %769, label %796, label %770

770:                                              ; preds = %766
  %771 = load i64, ptr %1, align 8
  %772 = and i64 %771, 65535
  %773 = icmp eq i64 %772, 29
  br i1 %773, label %774, label %790

774:                                              ; preds = %770
  %775 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 1
  %776 = load ptr, ptr %775, align 8, !tbaa !46
  %777 = icmp eq ptr %776, null
  br i1 %777, label %779, label %778

778:                                              ; preds = %774
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 876, ptr noundef nonnull @.str.3) #16
  br label %779

779:                                              ; preds = %778, %774
  %780 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 2
  %781 = load ptr, ptr %780, align 8, !tbaa !46
  %782 = icmp eq i8 %2, 0
  br i1 %782, label %784, label %783

783:                                              ; preds = %779
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %781)
  br label %785

784:                                              ; preds = %779
  call void @lto_output_tree(ptr noundef %0, ptr noundef %781, i8 noundef zeroext 0)
  br label %785

785:                                              ; preds = %783, %784
  %786 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 3
  %787 = load ptr, ptr %786, align 8, !tbaa !46
  br i1 %782, label %789, label %788

788:                                              ; preds = %785
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %787)
  br label %790

789:                                              ; preds = %785
  call void @lto_output_tree(ptr noundef %0, ptr noundef %787, i8 noundef zeroext 0)
  br label %790

790:                                              ; preds = %789, %788, %770
  %791 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 4
  %792 = load ptr, ptr %791, align 8, !tbaa !46
  %793 = icmp eq i8 %2, 0
  br i1 %793, label %795, label %794

794:                                              ; preds = %790
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %792)
  br label %796

795:                                              ; preds = %790
  call void @lto_output_tree(ptr noundef %0, ptr noundef %792, i8 noundef zeroext 0)
  br label %796

796:                                              ; preds = %795, %794, %766
  %797 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 13
  %798 = load i8, ptr %797, align 1, !tbaa !46
  %799 = icmp eq i8 %798, 0
  br i1 %799, label %828, label %800

800:                                              ; preds = %796
  %801 = load i64, ptr %1, align 8
  %802 = and i64 %801, 65535
  %803 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %802, i64 13
  %804 = load i8, ptr %803, align 1, !tbaa !46
  %805 = icmp eq i8 %804, 0
  br i1 %805, label %815, label %806

806:                                              ; preds = %800
  %807 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 1
  %808 = load ptr, ptr %807, align 8, !tbaa !46
  %809 = icmp eq ptr %808, null
  br i1 %809, label %815, label %810

810:                                              ; preds = %806
  %811 = call ptr @decl_assembler_name(ptr noundef nonnull %1) #16
  %812 = icmp eq i8 %2, 0
  br i1 %812, label %814, label %813

813:                                              ; preds = %810
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %811)
  br label %817

814:                                              ; preds = %810
  call void @lto_output_tree(ptr noundef %0, ptr noundef %811, i8 noundef zeroext 0)
  br label %817

815:                                              ; preds = %806, %800
  %816 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_1_stream(ptr noundef %816, i8 noundef signext 0) #16
  br label %817

817:                                              ; preds = %814, %813, %815
  %818 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 2
  %819 = load ptr, ptr %818, align 8, !tbaa !46
  %820 = icmp eq i8 %2, 0
  br i1 %820, label %822, label %821

821:                                              ; preds = %817
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %819)
  br label %823

822:                                              ; preds = %817
  call void @lto_output_tree(ptr noundef %0, ptr noundef %819, i8 noundef zeroext 0)
  br label %823

823:                                              ; preds = %821, %822
  %824 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 3
  %825 = load ptr, ptr %824, align 8, !tbaa !46
  br i1 %820, label %827, label %826

826:                                              ; preds = %823
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %825)
  br label %828

827:                                              ; preds = %823
  call void @lto_output_tree(ptr noundef %0, ptr noundef %825, i8 noundef zeroext 0)
  br label %828

828:                                              ; preds = %827, %826, %796
  %829 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 14
  %830 = load i8, ptr %829, align 2, !tbaa !46
  %831 = icmp eq i8 %830, 0
  br i1 %831, label %861, label %832

832:                                              ; preds = %828
  %833 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 1
  %834 = load ptr, ptr %833, align 8, !tbaa !46
  %835 = icmp eq i8 %2, 0
  br i1 %835, label %837, label %836

836:                                              ; preds = %832
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %834)
  br label %838

837:                                              ; preds = %832
  call void @lto_output_tree(ptr noundef %0, ptr noundef %834, i8 noundef zeroext 0)
  br label %838

838:                                              ; preds = %836, %837
  %839 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 2
  %840 = load ptr, ptr %839, align 8, !tbaa !46
  br i1 %835, label %842, label %841

841:                                              ; preds = %838
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %840)
  br label %843

842:                                              ; preds = %838
  call void @lto_output_tree(ptr noundef %0, ptr noundef %840, i8 noundef zeroext 0)
  br label %843

843:                                              ; preds = %841, %842
  %844 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 3
  %845 = load ptr, ptr %844, align 8, !tbaa !46
  br i1 %835, label %847, label %846

846:                                              ; preds = %843
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %845)
  br label %848

847:                                              ; preds = %843
  call void @lto_output_tree(ptr noundef %0, ptr noundef %845, i8 noundef zeroext 0)
  br label %848

848:                                              ; preds = %846, %847
  %849 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 4
  %850 = load ptr, ptr %849, align 8, !tbaa !46
  br i1 %835, label %852, label %851

851:                                              ; preds = %848
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %850)
  br label %853

852:                                              ; preds = %848
  call void @lto_output_tree(ptr noundef %0, ptr noundef %850, i8 noundef zeroext 0)
  br label %853

853:                                              ; preds = %851, %852
  %854 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 5
  %855 = load ptr, ptr %854, align 8, !tbaa !46
  br i1 %835, label %857, label %856

856:                                              ; preds = %853
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %855)
  br label %858

857:                                              ; preds = %853
  call void @lto_output_tree(ptr noundef %0, ptr noundef %855, i8 noundef zeroext 0)
  br label %858

858:                                              ; preds = %856, %857
  %859 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %860 = load ptr, ptr %859, align 8, !tbaa !46
  call fastcc void @lto_output_chain(ptr noundef %0, ptr noundef %860, i8 noundef zeroext %2)
  br label %861

861:                                              ; preds = %858, %828
  %862 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 21
  %863 = load i8, ptr %862, align 1, !tbaa !46
  %864 = icmp eq i8 %863, 0
  br i1 %864, label %881, label %865

865:                                              ; preds = %861
  %866 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 2
  %867 = load ptr, ptr %866, align 8, !tbaa !46
  %868 = icmp eq i8 %2, 0
  br i1 %868, label %870, label %869

869:                                              ; preds = %865
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %867)
  br label %871

870:                                              ; preds = %865
  call void @lto_output_tree(ptr noundef %0, ptr noundef %867, i8 noundef zeroext 0)
  br label %871

871:                                              ; preds = %869, %870
  %872 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 3
  %873 = load ptr, ptr %872, align 8, !tbaa !46
  br i1 %868, label %875, label %874

874:                                              ; preds = %871
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %873)
  br label %876

875:                                              ; preds = %871
  call void @lto_output_tree(ptr noundef %0, ptr noundef %873, i8 noundef zeroext 0)
  br label %876

876:                                              ; preds = %874, %875
  %877 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 4
  %878 = load ptr, ptr %877, align 8, !tbaa !46
  br i1 %868, label %880, label %879

879:                                              ; preds = %876
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %878)
  br label %881

880:                                              ; preds = %876
  call void @lto_output_tree(ptr noundef %0, ptr noundef %878, i8 noundef zeroext 0)
  br label %881

881:                                              ; preds = %880, %879, %861
  %882 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 22
  %883 = load i8, ptr %882, align 2, !tbaa !46
  %884 = icmp eq i8 %883, 0
  br i1 %884, label %981, label %885

885:                                              ; preds = %881
  %886 = load i64, ptr %1, align 8
  %887 = trunc i64 %886 to i16
  switch i16 %887, label %918 [
    i16 6, label %888
    i16 15, label %894
    i16 16, label %900
    i16 17, label %900
    i16 20, label %906
    i16 21, label %906
    i16 14, label %912
  ]

888:                                              ; preds = %885
  %889 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %890 = load ptr, ptr %889, align 8, !tbaa !46
  %891 = icmp eq i8 %2, 0
  br i1 %891, label %893, label %892

892:                                              ; preds = %888
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %890)
  br label %918

893:                                              ; preds = %888
  call void @lto_output_tree(ptr noundef %0, ptr noundef %890, i8 noundef zeroext 0)
  br label %918

894:                                              ; preds = %885
  %895 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %896 = load ptr, ptr %895, align 8, !tbaa !46
  %897 = icmp eq i8 %2, 0
  br i1 %897, label %899, label %898

898:                                              ; preds = %894
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %896)
  br label %918

899:                                              ; preds = %894
  call void @lto_output_tree(ptr noundef %0, ptr noundef %896, i8 noundef zeroext 0)
  br label %918

900:                                              ; preds = %885, %885
  %901 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %902 = load ptr, ptr %901, align 8, !tbaa !46
  %903 = icmp eq i8 %2, 0
  br i1 %903, label %905, label %904

904:                                              ; preds = %900
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %902)
  br label %918

905:                                              ; preds = %900
  call void @lto_output_tree(ptr noundef %0, ptr noundef %902, i8 noundef zeroext 0)
  br label %918

906:                                              ; preds = %885, %885
  %907 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %908 = load ptr, ptr %907, align 8, !tbaa !46
  %909 = icmp eq i8 %2, 0
  br i1 %909, label %911, label %910

910:                                              ; preds = %906
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %908)
  br label %918

911:                                              ; preds = %906
  call void @lto_output_tree(ptr noundef %0, ptr noundef %908, i8 noundef zeroext 0)
  br label %918

912:                                              ; preds = %885
  %913 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %914 = load ptr, ptr %913, align 8, !tbaa !46
  %915 = icmp eq i8 %2, 0
  br i1 %915, label %917, label %916

916:                                              ; preds = %912
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %914)
  br label %918

917:                                              ; preds = %912
  call void @lto_output_tree(ptr noundef %0, ptr noundef %914, i8 noundef zeroext 0)
  br label %918

918:                                              ; preds = %917, %916, %911, %910, %905, %904, %899, %898, %893, %892, %885
  %919 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 2
  %920 = load ptr, ptr %919, align 8, !tbaa !46
  %921 = icmp eq i8 %2, 0
  br i1 %921, label %923, label %922

922:                                              ; preds = %918
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %920)
  br label %924

923:                                              ; preds = %918
  call void @lto_output_tree(ptr noundef %0, ptr noundef %920, i8 noundef zeroext 0)
  br label %924

924:                                              ; preds = %922, %923
  %925 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 3
  %926 = load ptr, ptr %925, align 8, !tbaa !46
  br i1 %921, label %928, label %927

927:                                              ; preds = %924
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %926)
  br label %929

928:                                              ; preds = %924
  call void @lto_output_tree(ptr noundef %0, ptr noundef %926, i8 noundef zeroext 0)
  br label %929

929:                                              ; preds = %927, %928
  %930 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 4
  %931 = load ptr, ptr %930, align 8, !tbaa !46
  br i1 %921, label %933, label %932

932:                                              ; preds = %929
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %931)
  br label %934

933:                                              ; preds = %929
  call void @lto_output_tree(ptr noundef %0, ptr noundef %931, i8 noundef zeroext 0)
  br label %934

934:                                              ; preds = %932, %933
  %935 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 12
  %936 = load ptr, ptr %935, align 8, !tbaa !46
  br i1 %921, label %938, label %937

937:                                              ; preds = %934
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %936)
  br label %939

938:                                              ; preds = %934
  call void @lto_output_tree(ptr noundef %0, ptr noundef %936, i8 noundef zeroext 0)
  br label %939

939:                                              ; preds = %937, %938
  %940 = load i64, ptr %1, align 8
  %941 = trunc i64 %940 to i16
  switch i16 %941, label %942 [
    i16 10, label %947
    i16 12, label %947
  ]

942:                                              ; preds = %939
  %943 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 13
  %944 = load ptr, ptr %943, align 8, !tbaa !46
  br i1 %921, label %946, label %945

945:                                              ; preds = %942
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %944)
  br label %947

946:                                              ; preds = %942
  call void @lto_output_tree(ptr noundef %0, ptr noundef %944, i8 noundef zeroext 0)
  br label %947

947:                                              ; preds = %939, %946, %945, %939
  %948 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 14
  %949 = load ptr, ptr %948, align 8, !tbaa !46
  br i1 %921, label %951, label %950

950:                                              ; preds = %947
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %949)
  br label %952

951:                                              ; preds = %947
  call void @lto_output_tree(ptr noundef %0, ptr noundef %949, i8 noundef zeroext 0)
  br label %952

952:                                              ; preds = %950, %951
  %953 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %954 = load ptr, ptr %953, align 8, !tbaa !46
  br i1 %921, label %956, label %955

955:                                              ; preds = %952
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %954)
  br label %957

956:                                              ; preds = %952
  call void @lto_output_tree(ptr noundef %0, ptr noundef %954, i8 noundef zeroext 0)
  br label %957

957:                                              ; preds = %955, %956
  %958 = load i64, ptr %1, align 8
  %959 = and i64 %958, 65534
  %960 = icmp eq i64 %959, 16
  br i1 %960, label %961, label %966

961:                                              ; preds = %957
  %962 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 17
  %963 = load ptr, ptr %962, align 8, !tbaa !46
  br i1 %921, label %965, label %964

964:                                              ; preds = %961
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %963)
  br label %966

965:                                              ; preds = %961
  call void @lto_output_tree(ptr noundef %0, ptr noundef %963, i8 noundef zeroext 0)
  br label %966

966:                                              ; preds = %965, %964, %957
  %967 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 18
  %968 = load ptr, ptr %967, align 8, !tbaa !46
  br i1 %921, label %970, label %969

969:                                              ; preds = %966
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %968)
  br label %971

970:                                              ; preds = %966
  call void @lto_output_tree(ptr noundef %0, ptr noundef %968, i8 noundef zeroext 0)
  br label %971

971:                                              ; preds = %969, %970
  %972 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 19
  %973 = load ptr, ptr %972, align 8, !tbaa !46
  br i1 %921, label %975, label %974

974:                                              ; preds = %971
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %973)
  br label %976

975:                                              ; preds = %971
  call void @lto_output_tree(ptr noundef %0, ptr noundef %973, i8 noundef zeroext 0)
  br label %976

976:                                              ; preds = %974, %975
  %977 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %978 = load ptr, ptr %977, align 8, !tbaa !46
  br i1 %921, label %980, label %979

979:                                              ; preds = %976
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %978)
  br label %981

980:                                              ; preds = %976
  call void @lto_output_tree(ptr noundef %0, ptr noundef %978, i8 noundef zeroext 0)
  br label %981

981:                                              ; preds = %980, %979, %881
  %982 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 23
  %983 = load i8, ptr %982, align 1, !tbaa !46
  %984 = icmp eq i8 %983, 0
  br i1 %984, label %999, label %985

985:                                              ; preds = %981
  %986 = getelementptr inbounds %struct.tree_list, ptr %1, i64 0, i32 1
  %987 = load ptr, ptr %986, align 8, !tbaa !46
  %988 = icmp eq i8 %2, 0
  br i1 %988, label %990, label %989

989:                                              ; preds = %985
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %987)
  br label %991

990:                                              ; preds = %985
  call void @lto_output_tree(ptr noundef %0, ptr noundef %987, i8 noundef zeroext 0)
  br label %991

991:                                              ; preds = %989, %990
  %992 = getelementptr inbounds %struct.tree_list, ptr %1, i64 0, i32 2
  %993 = load ptr, ptr %992, align 8, !tbaa !46
  br i1 %988, label %995, label %994

994:                                              ; preds = %991
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %993)
  br label %996

995:                                              ; preds = %991
  call void @lto_output_tree(ptr noundef %0, ptr noundef %993, i8 noundef zeroext 0)
  br label %996

996:                                              ; preds = %994, %995
  %997 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %998 = load ptr, ptr %997, align 8, !tbaa !46
  call fastcc void @lto_output_chain(ptr noundef %0, ptr noundef %998, i8 noundef zeroext %2)
  br label %999

999:                                              ; preds = %996, %981
  %1000 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 24
  %1001 = load i8, ptr %1000, align 8, !tbaa !46
  %1002 = icmp eq i8 %1001, 0
  br i1 %1002, label %1020, label %1003

1003:                                             ; preds = %999
  %1004 = getelementptr inbounds %struct.tree_vec, ptr %1, i64 0, i32 1
  %1005 = load i32, ptr %1004, align 8, !tbaa !46
  %1006 = icmp sgt i32 %1005, 0
  br i1 %1006, label %1007, label %1020

1007:                                             ; preds = %1003
  %1008 = icmp eq i8 %2, 0
  br label %1009

1009:                                             ; preds = %1007, %1015
  %1010 = phi i64 [ 0, %1007 ], [ %1016, %1015 ]
  %1011 = getelementptr inbounds %struct.tree_vec, ptr %1, i64 0, i32 2, i64 %1010
  %1012 = load ptr, ptr %1011, align 8, !tbaa !46
  br i1 %1008, label %1014, label %1013

1013:                                             ; preds = %1009
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1012)
  br label %1015

1014:                                             ; preds = %1009
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1012, i8 noundef zeroext 0)
  br label %1015

1015:                                             ; preds = %1013, %1014
  %1016 = add nuw nsw i64 %1010, 1
  %1017 = load i32, ptr %1004, align 8, !tbaa !46
  %1018 = sext i32 %1017 to i64
  %1019 = icmp slt i64 %1016, %1018
  br i1 %1019, label %1009, label %1020, !llvm.loop !80

1020:                                             ; preds = %1015, %1003, %999
  %1021 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 25
  %1022 = load i8, ptr %1021, align 1, !tbaa !46
  %1023 = icmp eq i8 %1022, 0
  br i1 %1023, label %1086, label %1024

1024:                                             ; preds = %1020
  %1025 = load i64, ptr %1, align 8
  %1026 = and i64 %1025, 65535
  %1027 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1026
  %1028 = load i32, ptr %1027, align 4, !tbaa !50
  %1029 = icmp eq i32 %1028, 9
  br i1 %1029, label %1030, label %1035

1030:                                             ; preds = %1024
  %1031 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1032 = load ptr, ptr %1031, align 8, !tbaa !46
  %1033 = getelementptr inbounds %struct.tree_int_cst, ptr %1032, i64 0, i32 1
  %1034 = load i64, ptr %1033, align 8, !tbaa !46
  br label %1039

1035:                                             ; preds = %1024
  %1036 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %1026
  %1037 = load i8, ptr %1036, align 1, !tbaa !46
  %1038 = zext i8 %1037 to i64
  br label %1039

1039:                                             ; preds = %1030, %1035
  %1040 = phi i64 [ %1034, %1030 ], [ %1038, %1035 ]
  %1041 = shl i64 %1040, 32
  %1042 = ashr exact i64 %1041, 32
  %1043 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %1043, i64 noundef %1042) #16
  %1044 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1045 = icmp eq i8 %2, 0
  br label %1046

1046:                                             ; preds = %1071, %1039
  %1047 = phi i64 [ %1072, %1071 ], [ 0, %1039 ]
  %1048 = load i64, ptr %1, align 8
  %1049 = and i64 %1048, 65535
  %1050 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1049
  %1051 = load i32, ptr %1050, align 4, !tbaa !50
  %1052 = icmp eq i32 %1051, 9
  br i1 %1052, label %1053, label %1057

1053:                                             ; preds = %1046
  %1054 = load ptr, ptr %1044, align 8, !tbaa !46
  %1055 = getelementptr inbounds %struct.tree_int_cst, ptr %1054, i64 0, i32 1
  %1056 = load i64, ptr %1055, align 8, !tbaa !46
  br label %1061

1057:                                             ; preds = %1046
  %1058 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %1049
  %1059 = load i8, ptr %1058, align 1, !tbaa !46
  %1060 = zext i8 %1059 to i64
  br label %1061

1061:                                             ; preds = %1053, %1057
  %1062 = phi i64 [ %1056, %1053 ], [ %1060, %1057 ]
  %1063 = shl i64 %1062, 32
  %1064 = ashr exact i64 %1063, 32
  %1065 = icmp slt i64 %1047, %1064
  br i1 %1065, label %1066, label %1073

1066:                                             ; preds = %1061
  %1067 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3, i64 %1047
  %1068 = load ptr, ptr %1067, align 8, !tbaa !46
  br i1 %1045, label %1070, label %1069

1069:                                             ; preds = %1066
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1068)
  br label %1071

1070:                                             ; preds = %1066
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1068, i8 noundef zeroext 0)
  br label %1071

1071:                                             ; preds = %1069, %1070
  %1072 = add nuw nsw i64 %1047, 1
  br label %1046, !llvm.loop !81

1073:                                             ; preds = %1061
  %1074 = add i32 %1051, -4
  %1075 = icmp ult i32 %1074, 7
  br i1 %1075, label %1076, label %1079

1076:                                             ; preds = %1073
  %1077 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 1
  %1078 = load i32, ptr %1077, align 8, !tbaa !46
  br label %1079

1079:                                             ; preds = %1076, %1073
  %1080 = phi i32 [ %1078, %1076 ], [ 0, %1073 ]
  call fastcc void @lto_output_location(ptr noundef %0, i32 noundef %1080)
  %1081 = call ptr @tree_block(ptr noundef nonnull %1) #16
  %1082 = load ptr, ptr %1081, align 8, !tbaa !35
  %1083 = icmp eq i8 %2, 0
  br i1 %1083, label %1085, label %1084

1084:                                             ; preds = %1079
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1082)
  br label %1086

1085:                                             ; preds = %1079
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1082, i8 noundef zeroext 0)
  br label %1086

1086:                                             ; preds = %1085, %1084, %1020
  %1087 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 26
  %1088 = load i8, ptr %1087, align 2, !tbaa !46
  %1089 = icmp eq i8 %1088, 0
  br i1 %1089, label %1091, label %1090

1090:                                             ; preds = %1086
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1155, ptr noundef nonnull @.str.3) #16
  br label %1091

1091:                                             ; preds = %1090, %1086
  %1092 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 27
  %1093 = load i8, ptr %1092, align 1, !tbaa !46
  %1094 = icmp eq i8 %1093, 0
  br i1 %1094, label %1153, label %1095

1095:                                             ; preds = %1091
  %1096 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 2
  %1097 = load i32, ptr %1096, align 4, !tbaa !46
  call fastcc void @lto_output_location(ptr noundef %0, i32 noundef %1097)
  %1098 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 3
  %1099 = load ptr, ptr %1098, align 8, !tbaa !46
  call fastcc void @lto_output_chain(ptr noundef %0, ptr noundef %1099, i8 noundef zeroext %2)
  %1100 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 4
  %1101 = load ptr, ptr %1100, align 8, !tbaa !46
  %1102 = icmp eq ptr %1101, null
  br i1 %1102, label %1105, label %1103

1103:                                             ; preds = %1095
  %1104 = load i32, ptr %1101, align 8, !tbaa !74
  br label %1105

1105:                                             ; preds = %1095, %1103
  %1106 = phi i32 [ %1104, %1103 ], [ 0, %1095 ]
  %1107 = zext i32 %1106 to i64
  %1108 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %1108, i64 noundef %1107) #16
  %1109 = icmp eq i8 %2, 0
  br label %1110

1110:                                             ; preds = %1127, %1105
  %1111 = phi i32 [ 0, %1105 ], [ %1128, %1127 ]
  %1112 = load ptr, ptr %1100, align 8, !tbaa !46
  %1113 = icmp eq ptr %1112, null
  br i1 %1113, label %1121, label %1114

1114:                                             ; preds = %1110
  %1115 = load i32, ptr %1112, align 8, !tbaa !74
  %1116 = icmp ugt i32 %1115, %1111
  br i1 %1116, label %1117, label %1121

1117:                                             ; preds = %1114
  %1118 = zext i32 %1111 to i64
  %1119 = getelementptr inbounds %struct.VEC_tree_base, ptr %1112, i64 0, i32 2, i64 %1118
  %1120 = load ptr, ptr %1119, align 8, !tbaa !35
  br label %1121

1121:                                             ; preds = %1110, %1114, %1117
  %1122 = phi ptr [ %1120, %1117 ], [ null, %1114 ], [ null, %1110 ]
  %1123 = phi i1 [ false, %1117 ], [ true, %1114 ], [ true, %1110 ]
  br i1 %1123, label %1129, label %1124

1124:                                             ; preds = %1121
  br i1 %1109, label %1126, label %1125

1125:                                             ; preds = %1124
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1122)
  br label %1127

1126:                                             ; preds = %1124
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1122, i8 noundef zeroext 0)
  br label %1127

1127:                                             ; preds = %1125, %1126
  %1128 = add i32 %1111, 1
  br label %1110, !llvm.loop !82

1129:                                             ; preds = %1121
  %1130 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 6
  %1131 = load ptr, ptr %1130, align 8, !tbaa !46
  %1132 = icmp eq i8 %2, 0
  br i1 %1132, label %1134, label %1133

1133:                                             ; preds = %1129
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1131)
  br label %1135

1134:                                             ; preds = %1129
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1131, i8 noundef zeroext 0)
  br label %1135

1135:                                             ; preds = %1133, %1134
  %1136 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 7
  %1137 = load ptr, ptr %1136, align 8, !tbaa !46
  br i1 %1132, label %1139, label %1138

1138:                                             ; preds = %1135
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1137)
  br label %1140

1139:                                             ; preds = %1135
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1137, i8 noundef zeroext 0)
  br label %1140

1140:                                             ; preds = %1138, %1139
  %1141 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 8
  %1142 = load ptr, ptr %1141, align 8, !tbaa !46
  br i1 %1132, label %1144, label %1143

1143:                                             ; preds = %1140
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1142)
  br label %1145

1144:                                             ; preds = %1140
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1142, i8 noundef zeroext 0)
  br label %1145

1145:                                             ; preds = %1143, %1144
  %1146 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 9
  %1147 = load ptr, ptr %1146, align 8, !tbaa !46
  br i1 %1132, label %1149, label %1148

1148:                                             ; preds = %1145
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1147)
  br label %1150

1149:                                             ; preds = %1145
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1147, i8 noundef zeroext 0)
  br label %1150

1150:                                             ; preds = %1148, %1149
  %1151 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 5
  %1152 = load ptr, ptr %1151, align 8, !tbaa !46
  call fastcc void @lto_output_chain(ptr noundef %0, ptr noundef %1152, i8 noundef zeroext %2)
  br label %1153

1153:                                             ; preds = %1150, %1091
  %1154 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 28
  %1155 = load i8, ptr %1154, align 4, !tbaa !46
  %1156 = icmp eq i8 %1155, 0
  br i1 %1156, label %1241, label %1157

1157:                                             ; preds = %1153
  %1158 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 9
  %1159 = icmp eq i8 %2, 0
  br label %1160

1160:                                             ; preds = %1157, %1173
  %1161 = phi i32 [ %1174, %1173 ], [ 0, %1157 ]
  %1162 = load i32, ptr %1158, align 8, !tbaa !74
  %1163 = icmp ugt i32 %1162, %1161
  br i1 %1163, label %1164, label %1168

1164:                                             ; preds = %1160
  %1165 = zext i32 %1161 to i64
  %1166 = getelementptr inbounds %struct.VEC_tree_base, ptr %1158, i64 0, i32 2, i64 %1165
  %1167 = load ptr, ptr %1166, align 8, !tbaa !35
  br label %1168

1168:                                             ; preds = %1160, %1164
  %1169 = phi ptr [ %1167, %1164 ], [ null, %1160 ]
  br i1 %1163, label %1170, label %1175

1170:                                             ; preds = %1168
  br i1 %1159, label %1172, label %1171

1171:                                             ; preds = %1170
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1169)
  br label %1173

1172:                                             ; preds = %1170
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1169, i8 noundef zeroext 0)
  br label %1173

1173:                                             ; preds = %1171, %1172
  %1174 = add i32 %1161, 1
  br label %1160, !llvm.loop !83

1175:                                             ; preds = %1168
  %1176 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_1_stream(ptr noundef %1176, i8 noundef signext 0) #16
  %1177 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 1
  %1178 = load ptr, ptr %1177, align 8, !tbaa !46
  %1179 = icmp eq i8 %2, 0
  br i1 %1179, label %1181, label %1180

1180:                                             ; preds = %1175
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1178)
  br label %1182

1181:                                             ; preds = %1175
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1178, i8 noundef zeroext 0)
  br label %1182

1182:                                             ; preds = %1180, %1181
  %1183 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 2
  %1184 = load ptr, ptr %1183, align 8, !tbaa !46
  br i1 %1179, label %1186, label %1185

1185:                                             ; preds = %1182
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1184)
  br label %1187

1186:                                             ; preds = %1182
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1184, i8 noundef zeroext 0)
  br label %1187

1187:                                             ; preds = %1185, %1186
  %1188 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 3
  %1189 = load ptr, ptr %1188, align 8, !tbaa !46
  br i1 %1179, label %1191, label %1190

1190:                                             ; preds = %1187
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1189)
  br label %1192

1191:                                             ; preds = %1187
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1189, i8 noundef zeroext 0)
  br label %1192

1192:                                             ; preds = %1190, %1191
  %1193 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 4
  %1194 = load ptr, ptr %1193, align 8, !tbaa !46
  br i1 %1179, label %1196, label %1195

1195:                                             ; preds = %1192
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1194)
  br label %1197

1196:                                             ; preds = %1192
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1194, i8 noundef zeroext 0)
  br label %1197

1197:                                             ; preds = %1195, %1196
  %1198 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 5
  %1199 = load ptr, ptr %1198, align 8, !tbaa !46
  %1200 = icmp eq ptr %1199, null
  br i1 %1200, label %1204, label %1201

1201:                                             ; preds = %1197
  %1202 = load i32, ptr %1199, align 8, !tbaa !74
  %1203 = zext i32 %1202 to i64
  br label %1204

1204:                                             ; preds = %1197, %1201
  %1205 = phi i64 [ %1203, %1201 ], [ 0, %1197 ]
  %1206 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %1206, i64 noundef %1205) #16
  br label %1207

1207:                                             ; preds = %1224, %1204
  %1208 = phi i32 [ 0, %1204 ], [ %1225, %1224 ]
  %1209 = load ptr, ptr %1198, align 8, !tbaa !46
  %1210 = icmp eq ptr %1209, null
  br i1 %1210, label %1218, label %1211

1211:                                             ; preds = %1207
  %1212 = load i32, ptr %1209, align 8, !tbaa !74
  %1213 = icmp ugt i32 %1212, %1208
  br i1 %1213, label %1214, label %1218

1214:                                             ; preds = %1211
  %1215 = zext i32 %1208 to i64
  %1216 = getelementptr inbounds %struct.VEC_tree_base, ptr %1209, i64 0, i32 2, i64 %1215
  %1217 = load ptr, ptr %1216, align 8, !tbaa !35
  br label %1218

1218:                                             ; preds = %1207, %1211, %1214
  %1219 = phi ptr [ %1217, %1214 ], [ null, %1211 ], [ null, %1207 ]
  %1220 = phi i1 [ false, %1214 ], [ true, %1211 ], [ true, %1207 ]
  br i1 %1220, label %1226, label %1221

1221:                                             ; preds = %1218
  br i1 %1179, label %1223, label %1222

1222:                                             ; preds = %1221
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1219)
  br label %1224

1223:                                             ; preds = %1221
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1219, i8 noundef zeroext 0)
  br label %1224

1224:                                             ; preds = %1222, %1223
  %1225 = add i32 %1208, 1
  br label %1207, !llvm.loop !84

1226:                                             ; preds = %1218
  %1227 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 6
  %1228 = load ptr, ptr %1227, align 8, !tbaa !46
  br i1 %1179, label %1230, label %1229

1229:                                             ; preds = %1226
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1228)
  br label %1231

1230:                                             ; preds = %1226
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1228, i8 noundef zeroext 0)
  br label %1231

1231:                                             ; preds = %1229, %1230
  %1232 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 7
  %1233 = load ptr, ptr %1232, align 8, !tbaa !46
  br i1 %1179, label %1235, label %1234

1234:                                             ; preds = %1231
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1233)
  br label %1236

1235:                                             ; preds = %1231
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1233, i8 noundef zeroext 0)
  br label %1236

1236:                                             ; preds = %1234, %1235
  %1237 = getelementptr inbounds %struct.tree_binfo, ptr %1, i64 0, i32 8
  %1238 = load ptr, ptr %1237, align 8, !tbaa !46
  br i1 %1179, label %1240, label %1239

1239:                                             ; preds = %1236
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1238)
  br label %1241

1240:                                             ; preds = %1236
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1238, i8 noundef zeroext 0)
  br label %1241

1241:                                             ; preds = %1240, %1239, %1153
  %1242 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 30
  %1243 = load i8, ptr %1242, align 2, !tbaa !46
  %1244 = icmp eq i8 %1243, 0
  br i1 %1244, label %1284, label %1245

1245:                                             ; preds = %1241
  %1246 = getelementptr inbounds %struct.tree_constructor, ptr %1, i64 0, i32 1
  %1247 = load ptr, ptr %1246, align 8, !tbaa !46
  %1248 = icmp eq ptr %1247, null
  br i1 %1248, label %1252, label %1249

1249:                                             ; preds = %1245
  %1250 = load i32, ptr %1247, align 8, !tbaa !85
  %1251 = zext i32 %1250 to i64
  br label %1252

1252:                                             ; preds = %1245, %1249
  %1253 = phi i64 [ %1251, %1249 ], [ 0, %1245 ]
  %1254 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %1254, i64 noundef %1253) #16
  %1255 = icmp eq i8 %2, 0
  br label %1256

1256:                                             ; preds = %1282, %1252
  %1257 = phi i64 [ %1283, %1282 ], [ 0, %1252 ]
  %1258 = phi ptr [ %1274, %1282 ], [ undef, %1252 ]
  %1259 = phi ptr [ %1275, %1282 ], [ undef, %1252 ]
  %1260 = load ptr, ptr %1246, align 8, !tbaa !46
  %1261 = icmp eq ptr %1260, null
  br i1 %1261, label %1264, label %1262

1262:                                             ; preds = %1256
  %1263 = load i32, ptr %1260, align 8, !tbaa !85
  br label %1264

1264:                                             ; preds = %1256, %1262
  %1265 = phi i32 [ %1263, %1262 ], [ 0, %1256 ]
  %1266 = zext i32 %1265 to i64
  %1267 = icmp ult i64 %1257, %1266
  br i1 %1267, label %1268, label %1273

1268:                                             ; preds = %1264
  %1269 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %1260, i64 0, i32 2, i64 %1257
  %1270 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %1260, i64 0, i32 2, i64 %1257, i32 1
  %1271 = load ptr, ptr %1270, align 8, !tbaa !87
  %1272 = load ptr, ptr %1269, align 8, !tbaa !89
  br label %1273

1273:                                             ; preds = %1268, %1264
  %1274 = phi ptr [ %1258, %1264 ], [ %1272, %1268 ]
  %1275 = phi ptr [ %1259, %1264 ], [ %1271, %1268 ]
  br i1 %1267, label %1276, label %1284

1276:                                             ; preds = %1273
  br i1 %1255, label %1278, label %1277

1277:                                             ; preds = %1276
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1274)
  br label %1279

1278:                                             ; preds = %1276
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1274, i8 noundef zeroext 0)
  br label %1279

1279:                                             ; preds = %1277, %1278
  br i1 %1255, label %1281, label %1280

1280:                                             ; preds = %1279
  call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1275)
  br label %1282

1281:                                             ; preds = %1279
  call void @lto_output_tree(ptr noundef %0, ptr noundef %1275, i8 noundef zeroext 0)
  br label %1282

1282:                                             ; preds = %1280, %1281
  %1283 = add nuw nsw i64 %1257, 1
  br label %1256, !llvm.loop !90

1284:                                             ; preds = %1273, %1241
  %1285 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 29
  %1286 = load i8, ptr %1285, align 1, !tbaa !46
  %1287 = icmp eq i8 %1286, 0
  br i1 %1287, label %1289, label %1288

1288:                                             ; preds = %1284
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1170, ptr noundef nonnull @.str.3) #16
  br label %1289

1289:                                             ; preds = %1288, %1284
  %1290 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 31
  %1291 = load i8, ptr %1290, align 1, !tbaa !46
  %1292 = icmp eq i8 %1291, 0
  br i1 %1292, label %1294, label %1293

1293:                                             ; preds = %1289
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1176, ptr noundef nonnull @.str.3) #16
  br label %1294

1294:                                             ; preds = %1293, %1289
  %1295 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 32
  %1296 = load i8, ptr %1295, align 16, !tbaa !46
  %1297 = icmp eq i8 %1296, 0
  br i1 %1297, label %1299, label %1298

1298:                                             ; preds = %1294
  call void (ptr, ...) @sorry(ptr noundef nonnull @.str.6) #16
  br label %1299

1299:                                             ; preds = %1298, %1294
  %1300 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %663, i64 33
  %1301 = load i8, ptr %1300, align 1, !tbaa !46
  %1302 = icmp eq i8 %1301, 0
  br i1 %1302, label %1304, label %1303

1303:                                             ; preds = %1299
  call void (ptr, ...) @sorry(ptr noundef nonnull @.str.7) #16
  br label %1304

1304:                                             ; preds = %1299, %1303
  %1305 = load ptr, ptr %15, align 8, !tbaa !57
  call void @lto_output_1_stream(ptr noundef %1305, i8 noundef signext 0) #16
  br label %1306

1306:                                             ; preds = %140, %138, %132, %47, %1304, %23, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

declare zeroext i8 @lto_streamer_cache_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @produce_asm(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.lto_function_header, align 4
  %4 = load i32, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #16
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = tail call ptr @decl_assembler_name(ptr noundef %1) #16
  %8 = getelementptr inbounds %struct.tree_identifier, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = tail call ptr @lto_get_section_name(i32 noundef 1, ptr noundef %9) #16
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @lto_get_section_name(i32 noundef %4, ptr noundef null) #16
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi ptr [ %10, %6 ], [ %12, %11 ]
  %15 = load i32, ptr @flag_wpa, align 4, !tbaa !50
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i8
  tail call void @lto_begin_section(ptr noundef %14, i8 noundef zeroext %17) #16
  tail call void @free(ptr noundef %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i64 36, i1 false)
  store i16 1, ptr %3, align 4, !tbaa !91
  %18 = getelementptr inbounds %struct.lto_header, ptr %3, i64 0, i32 1
  store i16 0, ptr %18, align 2, !tbaa !94
  %19 = getelementptr inbounds %struct.lto_header, ptr %3, i64 0, i32 2
  store i32 %4, ptr %19, align 4, !tbaa !95
  %20 = getelementptr inbounds %struct.lto_function_header, ptr %3, i64 0, i32 3
  store i32 0, ptr %20, align 4, !tbaa !96
  br i1 %5, label %21, label %27

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  %24 = getelementptr inbounds %struct.lto_output_stream, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !72
  %26 = getelementptr inbounds %struct.lto_function_header, ptr %3, i64 0, i32 5
  store i32 %25, ptr %26, align 4, !tbaa !97
  br label %27

27:                                               ; preds = %21, %13
  %28 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  %30 = getelementptr inbounds %struct.lto_output_stream, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !72
  %32 = getelementptr inbounds %struct.lto_function_header, ptr %3, i64 0, i32 6
  store i32 %31, ptr %32, align 4, !tbaa !98
  %33 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !58
  %35 = getelementptr inbounds %struct.lto_output_stream, ptr %34, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !72
  %37 = getelementptr inbounds %struct.lto_function_header, ptr %3, i64 0, i32 7
  store i32 %36, ptr %37, align 4, !tbaa !99
  %38 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #16
  call void @lto_output_data_stream(ptr noundef %38, ptr noundef nonnull %3, i64 noundef 36) #16
  call void @lto_write_stream(ptr noundef %38) #16
  call void @free(ptr noundef %38)
  br i1 %5, label %39, label %42

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  call void @lto_write_stream(ptr noundef %41) #16
  br label %42

42:                                               ; preds = %39, %27
  %43 = load ptr, ptr %28, align 8, !tbaa !57
  call void @lto_write_stream(ptr noundef %43) #16
  %44 = load ptr, ptr %33, align 8, !tbaa !58
  call void @lto_write_stream(ptr noundef %44) #16
  call void @lto_end_section() #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #16
  ret void
}

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare ptr @lto_get_section_name(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @lto_begin_section(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

declare void @lto_output_data_stream(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @lto_write_stream(ptr noundef) local_unnamed_addr #3

declare void @lto_end_section() local_unnamed_addr #3

declare zeroext i8 @gate_lto_out() #3

; Function Attrs: cold nounwind uwtable
define internal void @lto_output(ptr noundef %0) #9 !prof !34 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = tail call ptr @lto_bitmap_alloc() #16
  tail call void @lto_streamer_init() #16
  %5 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %896, %1
  %7 = phi i32 [ 0, %1 ], [ %897, %896 ]
  %8 = load ptr, ptr %5, align 8, !tbaa !100
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa !102
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi i32 [ %11, %10 ], [ 0, %6 ]
  %14 = icmp ugt i32 %13, %7
  br i1 %14, label %15, label %898

15:                                               ; preds = %12
  %16 = zext i32 %7 to i64
  %17 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %8, i64 0, i32 2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 27
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 32
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %896, label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %18, align 8, !tbaa !104
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !46
  %27 = call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %26) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %896

29:                                               ; preds = %23
  %30 = load ptr, ptr %18, align 8, !tbaa !104
  %31 = getelementptr inbounds %struct.tree_decl_minimal, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !46
  %33 = call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %32) #16
  %34 = call ptr @lto_new_out_decl_state() #16
  call void @lto_push_out_decl_state(ptr noundef %34) #16
  %35 = load i32, ptr @flag_wpa, align 4, !tbaa !50
  %36 = icmp eq i32 %35, 0
  %37 = load ptr, ptr %18, align 8, !tbaa !104
  br i1 %36, label %38, label %821

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.tree_function_decl, ptr %37, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = call ptr @create_output_block(i32 noundef 1)
  %42 = getelementptr inbounds %struct.output_block, ptr %41, i64 0, i32 7
  %43 = getelementptr inbounds %struct.output_block, ptr %41, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  store ptr %18, ptr %43, align 8, !tbaa !112
  %44 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %45 = icmp eq ptr %44, null
  %46 = load ptr, ptr @cfun, align 8
  %47 = icmp eq ptr %46, null
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1844, ptr noundef nonnull @.str.3) #16
  br label %50

50:                                               ; preds = %49, %38
  store ptr %37, ptr @current_function_decl, align 8, !tbaa !35
  call void @push_cfun(ptr noundef %40) #16
  %51 = getelementptr inbounds %struct.output_block, ptr %41, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !58
  call void @lto_output_1_stream(ptr noundef %52, i8 noundef signext 0) #16
  %53 = getelementptr inbounds %struct.output_block, ptr %41, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %54, i64 noundef 228) #16
  %55 = call ptr @bitpack_create() #16
  %56 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 20
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 30
  %59 = and i32 %58, 1
  %60 = zext nneg i32 %59 to i64
  call void @bp_pack_value(ptr noundef %55, i64 noundef %60, i32 noundef 1) #16
  %61 = load i32, ptr %56, align 8
  %62 = lshr i32 %61, 29
  %63 = and i32 %62, 1
  %64 = zext nneg i32 %63 to i64
  call void @bp_pack_value(ptr noundef %55, i64 noundef %64, i32 noundef 1) #16
  %65 = load i32, ptr %56, align 8
  %66 = lshr i32 %65, 28
  %67 = and i32 %66, 1
  %68 = zext nneg i32 %67 to i64
  call void @bp_pack_value(ptr noundef %55, i64 noundef %68, i32 noundef 1) #16
  %69 = load i32, ptr %56, align 8
  %70 = lshr i32 %69, 27
  %71 = and i32 %70, 1
  %72 = zext nneg i32 %71 to i64
  call void @bp_pack_value(ptr noundef %55, i64 noundef %72, i32 noundef 1) #16
  %73 = load i32, ptr %56, align 8
  %74 = lshr i32 %73, 26
  %75 = and i32 %74, 1
  %76 = zext nneg i32 %75 to i64
  call void @bp_pack_value(ptr noundef %55, i64 noundef %76, i32 noundef 1) #16
  %77 = load i32, ptr %56, align 8
  %78 = lshr i32 %77, 25
  %79 = and i32 %78, 1
  %80 = zext nneg i32 %79 to i64
  call void @bp_pack_value(ptr noundef %55, i64 noundef %80, i32 noundef 1) #16
  %81 = load i32, ptr %56, align 8
  %82 = lshr i32 %81, 24
  %83 = and i32 %82, 1
  %84 = zext nneg i32 %83 to i64
  call void @bp_pack_value(ptr noundef %55, i64 noundef %84, i32 noundef 1) #16
  %85 = load i32, ptr %56, align 8
  %86 = lshr i32 %85, 23
  %87 = and i32 %86, 1
  %88 = zext nneg i32 %87 to i64
  call void @bp_pack_value(ptr noundef %55, i64 noundef %88, i32 noundef 1) #16
  %89 = load i32, ptr %56, align 8
  %90 = lshr i32 %89, 22
  %91 = and i32 %90, 1
  %92 = zext nneg i32 %91 to i64
  call void @bp_pack_value(ptr noundef %55, i64 noundef %92, i32 noundef 1) #16
  %93 = load i32, ptr %56, align 8
  %94 = lshr i32 %93, 20
  %95 = and i32 %94, 1
  %96 = zext nneg i32 %95 to i64
  call void @bp_pack_value(ptr noundef %55, i64 noundef %96, i32 noundef 1) #16
  %97 = load i32, ptr %56, align 8
  %98 = lshr i32 %97, 19
  %99 = and i32 %98, 1
  %100 = zext nneg i32 %99 to i64
  call void @bp_pack_value(ptr noundef %55, i64 noundef %100, i32 noundef 1) #16
  %101 = load i32, ptr %56, align 8
  %102 = lshr i32 %101, 18
  %103 = and i32 %102, 1
  %104 = zext nneg i32 %103 to i64
  call void @bp_pack_value(ptr noundef %55, i64 noundef %104, i32 noundef 1) #16
  %105 = load i32, ptr %56, align 8
  %106 = lshr i32 %105, 16
  %107 = and i32 %106, 3
  %108 = zext nneg i32 %107 to i64
  call void @bp_pack_value(ptr noundef %55, i64 noundef %108, i32 noundef 2) #16
  %109 = load i32, ptr %56, align 8
  %110 = lshr i32 %109, 8
  %111 = and i32 %110, 255
  %112 = zext nneg i32 %111 to i64
  call void @bp_pack_value(ptr noundef %55, i64 noundef %112, i32 noundef 8) #16
  %113 = load i32, ptr %56, align 8
  %114 = and i32 %113, 255
  %115 = zext nneg i32 %114 to i64
  call void @bp_pack_value(ptr noundef %55, i64 noundef %115, i32 noundef 8) #16
  %116 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_bitpack(ptr noundef %116, ptr noundef %55)
  call void @bitpack_delete(ptr noundef %55) #16
  %117 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 17
  %118 = load i32, ptr %117, align 8, !tbaa !113
  %119 = zext i32 %118 to i64
  %120 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %120, i64 noundef %119) #16
  %121 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 7
  %122 = load ptr, ptr %121, align 8, !tbaa !115
  call fastcc void @lto_output_tree_ref(ptr noundef %41, ptr noundef %122)
  %123 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 8
  %124 = load ptr, ptr %123, align 8, !tbaa !116
  call fastcc void @lto_output_tree_ref(ptr noundef %41, ptr noundef %124)
  %125 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 9
  %126 = load ptr, ptr %125, align 8, !tbaa !117
  call fastcc void @lto_output_tree_ref(ptr noundef %41, ptr noundef %126)
  %127 = getelementptr inbounds %struct.tree_decl_non_common, ptr %37, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !46
  call fastcc void @lto_output_tree_ref(ptr noundef %41, ptr noundef %128)
  %129 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !118
  %131 = getelementptr inbounds %struct.gimple_df, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !119
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %50
  %135 = load i32, ptr %132, align 8, !tbaa !74
  br label %136

136:                                              ; preds = %134, %50
  %137 = phi i32 [ %135, %134 ], [ 0, %50 ]
  %138 = zext i32 %137 to i64
  %139 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %139, i64 noundef %138) #16
  %140 = icmp ugt i32 %137, 1
  br i1 %140, label %141, label %170

141:                                              ; preds = %136
  %142 = zext i32 %137 to i64
  br label %143

143:                                              ; preds = %141, %167
  %144 = phi i64 [ 1, %141 ], [ %168, %167 ]
  %145 = load ptr, ptr %129, align 8, !tbaa !118
  %146 = getelementptr inbounds %struct.gimple_df, ptr %145, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !119
  %148 = getelementptr inbounds %struct.VEC_tree_base, ptr %147, i64 0, i32 2, i64 %144
  %149 = load ptr, ptr %148, align 8, !tbaa !35
  %150 = icmp eq ptr %149, null
  br i1 %150, label %167, label %151

151:                                              ; preds = %143
  %152 = load i64, ptr %149, align 8
  %153 = and i64 %152, 33554432
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %151
  %156 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %149) #16
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %167, label %158

158:                                              ; preds = %155
  %159 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %159, i64 noundef %144) #16
  %160 = load ptr, ptr %53, align 8, !tbaa !57
  %161 = load i64, ptr %149, align 8
  %162 = lshr i64 %161, 32
  %163 = trunc i64 %162 to i8
  %164 = and i8 %163, 1
  call void @lto_output_1_stream(ptr noundef %160, i8 noundef signext %164) #16
  %165 = getelementptr inbounds %struct.tree_ssa_name, ptr %149, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !46
  call fastcc void @lto_output_tree_ref(ptr noundef %41, ptr noundef %166)
  br label %167

167:                                              ; preds = %158, %155, %151, %143
  %168 = add nuw nsw i64 %144, 1
  %169 = icmp eq i64 %168, %142
  br i1 %169, label %170, label %143, !llvm.loop !123

170:                                              ; preds = %167, %136
  %171 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_1_stream(ptr noundef %171, i8 noundef signext 0) #16
  %172 = load ptr, ptr %40, align 8, !tbaa !124
  %173 = icmp eq ptr %172, null
  br i1 %173, label %450, label %174

174:                                              ; preds = %170
  %175 = load ptr, ptr %172, align 8, !tbaa !125
  %176 = icmp eq ptr %175, null
  br i1 %176, label %450, label %177

177:                                              ; preds = %174
  %178 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %178, i64 noundef 229) #16
  %179 = load ptr, ptr %40, align 8, !tbaa !124
  %180 = load ptr, ptr %179, align 8, !tbaa !125
  %181 = getelementptr inbounds %struct.eh_region_d, ptr %180, i64 0, i32 3
  %182 = load i32, ptr %181, align 8, !tbaa !127
  %183 = sext i32 %182 to i64
  %184 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %184, i64 noundef %183) #16
  %185 = load ptr, ptr %40, align 8, !tbaa !124
  %186 = getelementptr inbounds %struct.eh_status, ptr %185, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !129
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %177
  %190 = load i32, ptr %187, align 8, !tbaa !130
  br label %191

191:                                              ; preds = %189, %177
  %192 = phi i32 [ %190, %189 ], [ 0, %177 ]
  %193 = zext i32 %192 to i64
  %194 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %194, i64 noundef %193) #16
  br label %195

195:                                              ; preds = %303, %191
  %196 = phi i32 [ 0, %191 ], [ %304, %303 ]
  %197 = load ptr, ptr %40, align 8, !tbaa !124
  %198 = getelementptr inbounds %struct.eh_status, ptr %197, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !129
  %200 = icmp eq ptr %199, null
  br i1 %200, label %208, label %201

201:                                              ; preds = %195
  %202 = load i32, ptr %199, align 8, !tbaa !130
  %203 = icmp ugt i32 %202, %196
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = zext i32 %196 to i64
  %206 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %199, i64 0, i32 2, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !35
  br label %208

208:                                              ; preds = %204, %201, %195
  %209 = phi ptr [ %207, %204 ], [ null, %201 ], [ null, %195 ]
  %210 = phi i1 [ false, %204 ], [ true, %201 ], [ true, %195 ]
  br i1 %210, label %305, label %211

211:                                              ; preds = %208
  %212 = icmp eq ptr %209, null
  br i1 %212, label %213, label %215

213:                                              ; preds = %211
  %214 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_1_stream(ptr noundef %214, i8 noundef signext 0) #16
  br label %303

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.eh_region_d, ptr %209, i64 0, i32 4
  %217 = load i32, ptr %216, align 4, !tbaa !132
  %218 = icmp ult i32 %217, 4
  br i1 %218, label %220, label %219

219:                                              ; preds = %215
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1415, ptr noundef nonnull @.str.3) #16
  unreachable

220:                                              ; preds = %215
  %221 = add nuw nsw i32 %217, 230
  %222 = zext nneg i32 %221 to i64
  %223 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %223, i64 noundef %222) #16
  %224 = getelementptr inbounds %struct.eh_region_d, ptr %209, i64 0, i32 3
  %225 = load i32, ptr %224, align 8, !tbaa !127
  %226 = sext i32 %225 to i64
  %227 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %227, i64 noundef %226) #16
  %228 = load ptr, ptr %209, align 8, !tbaa !133
  %229 = icmp eq ptr %228, null
  br i1 %229, label %235, label %230

230:                                              ; preds = %220
  %231 = getelementptr inbounds %struct.eh_region_d, ptr %228, i64 0, i32 3
  %232 = load i32, ptr %231, align 8, !tbaa !127
  %233 = sext i32 %232 to i64
  %234 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %234, i64 noundef %233) #16
  br label %237

235:                                              ; preds = %220
  %236 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_1_stream(ptr noundef %236, i8 noundef signext 0) #16
  br label %237

237:                                              ; preds = %235, %230
  %238 = getelementptr inbounds %struct.eh_region_d, ptr %209, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !134
  %240 = icmp eq ptr %239, null
  br i1 %240, label %246, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.eh_region_d, ptr %239, i64 0, i32 3
  %243 = load i32, ptr %242, align 8, !tbaa !127
  %244 = sext i32 %243 to i64
  %245 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %245, i64 noundef %244) #16
  br label %248

246:                                              ; preds = %237
  %247 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_1_stream(ptr noundef %247, i8 noundef signext 0) #16
  br label %248

248:                                              ; preds = %246, %241
  %249 = getelementptr inbounds %struct.eh_region_d, ptr %209, i64 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !135
  %251 = icmp eq ptr %250, null
  br i1 %251, label %257, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.eh_region_d, ptr %250, i64 0, i32 3
  %254 = load i32, ptr %253, align 8, !tbaa !127
  %255 = sext i32 %254 to i64
  %256 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %256, i64 noundef %255) #16
  br label %259

257:                                              ; preds = %248
  %258 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_1_stream(ptr noundef %258, i8 noundef signext 0) #16
  br label %259

259:                                              ; preds = %257, %252
  %260 = load i32, ptr %216, align 4, !tbaa !132
  switch i32 %260, label %292 [
    i32 1, label %261
    i32 2, label %278
    i32 3, label %287
  ]

261:                                              ; preds = %259
  %262 = getelementptr inbounds %struct.eh_region_d, ptr %209, i64 0, i32 5
  %263 = load ptr, ptr %262, align 8, !tbaa !46
  %264 = icmp eq ptr %263, null
  br i1 %264, label %276, label %265

265:                                              ; preds = %261, %265
  %266 = phi ptr [ %274, %265 ], [ %263, %261 ]
  %267 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %267, i64 noundef 235) #16
  %268 = getelementptr inbounds %struct.eh_catch_d, ptr %266, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !136
  call fastcc void @lto_output_tree_ref(ptr noundef %41, ptr noundef %269)
  %270 = getelementptr inbounds %struct.eh_catch_d, ptr %266, i64 0, i32 3
  %271 = load ptr, ptr %270, align 8, !tbaa !138
  call fastcc void @lto_output_tree_ref(ptr noundef %41, ptr noundef %271)
  %272 = getelementptr inbounds %struct.eh_catch_d, ptr %266, i64 0, i32 4
  %273 = load ptr, ptr %272, align 8, !tbaa !139
  call fastcc void @lto_output_tree_ref(ptr noundef %41, ptr noundef %273)
  %274 = load ptr, ptr %266, align 8, !tbaa !46
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %265, !llvm.loop !140

276:                                              ; preds = %265, %261
  %277 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_1_stream(ptr noundef %277, i8 noundef signext 0) #16
  br label %292

278:                                              ; preds = %259
  %279 = getelementptr inbounds %struct.eh_region_d, ptr %209, i64 0, i32 5
  %280 = load ptr, ptr %279, align 8, !tbaa !46
  call fastcc void @lto_output_tree_ref(ptr noundef %41, ptr noundef %280)
  %281 = getelementptr inbounds %struct.eh_region_d, ptr %209, i64 0, i32 5, i32 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !46
  call fastcc void @lto_output_tree_ref(ptr noundef %41, ptr noundef %282)
  %283 = getelementptr inbounds %struct.eh_region_d, ptr %209, i64 0, i32 5, i32 0, i32 2
  %284 = load i32, ptr %283, align 8, !tbaa !46
  %285 = sext i32 %284 to i64
  %286 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %286, i64 noundef %285) #16
  br label %292

287:                                              ; preds = %259
  %288 = getelementptr inbounds %struct.eh_region_d, ptr %209, i64 0, i32 5
  %289 = load ptr, ptr %288, align 8, !tbaa !46
  call fastcc void @lto_output_tree_ref(ptr noundef %41, ptr noundef %289)
  %290 = getelementptr inbounds %struct.eh_region_d, ptr %209, i64 0, i32 5, i32 0, i32 1
  %291 = load i32, ptr %290, align 8, !tbaa !46
  call fastcc void @lto_output_location(ptr noundef %41, i32 noundef %291)
  br label %292

292:                                              ; preds = %287, %278, %276, %259
  %293 = getelementptr inbounds %struct.eh_region_d, ptr %209, i64 0, i32 6
  %294 = load ptr, ptr %293, align 8, !tbaa !141
  %295 = icmp eq ptr %294, null
  br i1 %295, label %301, label %296

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %294, i64 0, i32 4
  %298 = load i32, ptr %297, align 8, !tbaa !142
  %299 = sext i32 %298 to i64
  %300 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %300, i64 noundef %299) #16
  br label %303

301:                                              ; preds = %292
  %302 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_1_stream(ptr noundef %302, i8 noundef signext 0) #16
  br label %303

303:                                              ; preds = %301, %296, %213
  %304 = add i32 %196, 1
  br label %195, !llvm.loop !144

305:                                              ; preds = %208
  %306 = getelementptr inbounds %struct.eh_status, ptr %197, i64 0, i32 2
  %307 = load ptr, ptr %306, align 8, !tbaa !145
  %308 = icmp eq ptr %307, null
  br i1 %308, label %311, label %309

309:                                              ; preds = %305
  %310 = load i32, ptr %307, align 8, !tbaa !146
  br label %311

311:                                              ; preds = %309, %305
  %312 = phi i32 [ %310, %309 ], [ 0, %305 ]
  %313 = zext i32 %312 to i64
  %314 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %314, i64 noundef %313) #16
  br label %315

315:                                              ; preds = %363, %311
  %316 = phi i32 [ 0, %311 ], [ %364, %363 ]
  %317 = load ptr, ptr %40, align 8, !tbaa !124
  %318 = getelementptr inbounds %struct.eh_status, ptr %317, i64 0, i32 2
  %319 = load ptr, ptr %318, align 8, !tbaa !145
  %320 = icmp eq ptr %319, null
  br i1 %320, label %328, label %321

321:                                              ; preds = %315
  %322 = load i32, ptr %319, align 8, !tbaa !146
  %323 = icmp ugt i32 %322, %316
  br i1 %323, label %324, label %328

324:                                              ; preds = %321
  %325 = zext i32 %316 to i64
  %326 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %319, i64 0, i32 2, i64 %325
  %327 = load ptr, ptr %326, align 8, !tbaa !35
  br label %328

328:                                              ; preds = %324, %321, %315
  %329 = phi ptr [ %327, %324 ], [ null, %321 ], [ null, %315 ]
  %330 = phi i1 [ false, %324 ], [ true, %321 ], [ true, %315 ]
  br i1 %330, label %365, label %331

331:                                              ; preds = %328
  %332 = icmp eq ptr %329, null
  %333 = load ptr, ptr %53, align 8, !tbaa !57
  br i1 %332, label %334, label %335

334:                                              ; preds = %331
  call void @lto_output_1_stream(ptr noundef %333, i8 noundef signext 0) #16
  br label %363

335:                                              ; preds = %331
  call void @lto_output_uleb128_stream(ptr noundef %333, i64 noundef 234) #16
  %336 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %329, i64 0, i32 4
  %337 = load i32, ptr %336, align 8, !tbaa !142
  %338 = sext i32 %337 to i64
  %339 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %339, i64 noundef %338) #16
  %340 = load ptr, ptr %329, align 8, !tbaa !148
  %341 = icmp eq ptr %340, null
  br i1 %341, label %347, label %342

342:                                              ; preds = %335
  %343 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %340, i64 0, i32 4
  %344 = load i32, ptr %343, align 8, !tbaa !142
  %345 = sext i32 %344 to i64
  %346 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %346, i64 noundef %345) #16
  br label %349

347:                                              ; preds = %335
  %348 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_1_stream(ptr noundef %348, i8 noundef signext 0) #16
  br label %349

349:                                              ; preds = %347, %342
  %350 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %329, i64 0, i32 1
  %351 = load ptr, ptr %350, align 8, !tbaa !149
  %352 = icmp eq ptr %351, null
  br i1 %352, label %358, label %353

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.eh_region_d, ptr %351, i64 0, i32 3
  %355 = load i32, ptr %354, align 8, !tbaa !127
  %356 = sext i32 %355 to i64
  %357 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %357, i64 noundef %356) #16
  br label %360

358:                                              ; preds = %349
  %359 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_1_stream(ptr noundef %359, i8 noundef signext 0) #16
  br label %360

360:                                              ; preds = %358, %353
  %361 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %329, i64 0, i32 2
  %362 = load ptr, ptr %361, align 8, !tbaa !150
  call fastcc void @lto_output_tree_ref(ptr noundef %41, ptr noundef %362)
  br label %363

363:                                              ; preds = %360, %334
  %364 = add i32 %316, 1
  br label %315, !llvm.loop !151

365:                                              ; preds = %328
  %366 = getelementptr inbounds %struct.eh_status, ptr %317, i64 0, i32 4
  %367 = load ptr, ptr %366, align 8, !tbaa !152
  %368 = icmp eq ptr %367, null
  br i1 %368, label %372, label %369

369:                                              ; preds = %365
  %370 = load i32, ptr %367, align 8, !tbaa !74
  %371 = zext i32 %370 to i64
  br label %372

372:                                              ; preds = %369, %365
  %373 = phi i64 [ %371, %369 ], [ 0, %365 ]
  %374 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %374, i64 noundef %373) #16
  br label %375

375:                                              ; preds = %391, %372
  %376 = phi i32 [ 0, %372 ], [ %392, %391 ]
  %377 = load ptr, ptr %40, align 8, !tbaa !124
  %378 = getelementptr inbounds %struct.eh_status, ptr %377, i64 0, i32 4
  %379 = load ptr, ptr %378, align 8, !tbaa !152
  %380 = icmp eq ptr %379, null
  br i1 %380, label %388, label %381

381:                                              ; preds = %375
  %382 = load i32, ptr %379, align 8, !tbaa !74
  %383 = icmp ugt i32 %382, %376
  br i1 %383, label %384, label %388

384:                                              ; preds = %381
  %385 = zext i32 %376 to i64
  %386 = getelementptr inbounds %struct.VEC_tree_base, ptr %379, i64 0, i32 2, i64 %385
  %387 = load ptr, ptr %386, align 8, !tbaa !35
  br label %388

388:                                              ; preds = %384, %381, %375
  %389 = phi ptr [ %387, %384 ], [ null, %381 ], [ null, %375 ]
  %390 = phi i1 [ false, %384 ], [ true, %381 ], [ true, %375 ]
  br i1 %390, label %393, label %391

391:                                              ; preds = %388
  call fastcc void @lto_output_tree_ref(ptr noundef %41, ptr noundef %389)
  %392 = add i32 %376, 1
  br label %375, !llvm.loop !153

393:                                              ; preds = %388
  %394 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !154
  %395 = icmp eq i8 %394, 0
  %396 = getelementptr inbounds %struct.eh_status, ptr %377, i64 0, i32 5
  %397 = load ptr, ptr %396, align 8, !tbaa !46
  %398 = icmp eq ptr %397, null
  br i1 %395, label %424, label %399

399:                                              ; preds = %393
  br i1 %398, label %403, label %400

400:                                              ; preds = %399
  %401 = load i32, ptr %397, align 8, !tbaa !74
  %402 = zext i32 %401 to i64
  br label %403

403:                                              ; preds = %400, %399
  %404 = phi i64 [ %402, %400 ], [ 0, %399 ]
  %405 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %405, i64 noundef %404) #16
  br label %406

406:                                              ; preds = %422, %403
  %407 = phi i32 [ 0, %403 ], [ %423, %422 ]
  %408 = load ptr, ptr %40, align 8, !tbaa !124
  %409 = getelementptr inbounds %struct.eh_status, ptr %408, i64 0, i32 5
  %410 = load ptr, ptr %409, align 8, !tbaa !46
  %411 = icmp eq ptr %410, null
  br i1 %411, label %419, label %412

412:                                              ; preds = %406
  %413 = load i32, ptr %410, align 8, !tbaa !74
  %414 = icmp ugt i32 %413, %407
  br i1 %414, label %415, label %419

415:                                              ; preds = %412
  %416 = zext i32 %407 to i64
  %417 = getelementptr inbounds %struct.VEC_tree_base, ptr %410, i64 0, i32 2, i64 %416
  %418 = load ptr, ptr %417, align 8, !tbaa !35
  br label %419

419:                                              ; preds = %415, %412, %406
  %420 = phi ptr [ %418, %415 ], [ null, %412 ], [ null, %406 ]
  %421 = phi i1 [ false, %415 ], [ true, %412 ], [ true, %406 ]
  br i1 %421, label %450, label %422

422:                                              ; preds = %419
  call fastcc void @lto_output_tree_ref(ptr noundef %41, ptr noundef %420)
  %423 = add i32 %407, 1
  br label %406, !llvm.loop !166

424:                                              ; preds = %393
  br i1 %398, label %428, label %425

425:                                              ; preds = %424
  %426 = load i32, ptr %397, align 4, !tbaa !167
  %427 = zext i32 %426 to i64
  br label %428

428:                                              ; preds = %425, %424
  %429 = phi i64 [ %427, %425 ], [ 0, %424 ]
  %430 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %430, i64 noundef %429) #16
  br label %431

431:                                              ; preds = %447, %428
  %432 = phi i32 [ 0, %428 ], [ %449, %447 ]
  %433 = load ptr, ptr %40, align 8, !tbaa !124
  %434 = getelementptr inbounds %struct.eh_status, ptr %433, i64 0, i32 5
  %435 = load ptr, ptr %434, align 8, !tbaa !46
  %436 = icmp eq ptr %435, null
  br i1 %436, label %444, label %437

437:                                              ; preds = %431
  %438 = load i32, ptr %435, align 4, !tbaa !167
  %439 = icmp ugt i32 %438, %432
  br i1 %439, label %440, label %444

440:                                              ; preds = %437
  %441 = zext i32 %432 to i64
  %442 = getelementptr inbounds %struct.VEC_uchar_base, ptr %435, i64 0, i32 2, i64 %441
  %443 = load i8, ptr %442, align 1, !tbaa !46
  br label %444

444:                                              ; preds = %440, %437, %431
  %445 = phi i8 [ %443, %440 ], [ 0, %437 ], [ 0, %431 ]
  %446 = phi i1 [ false, %440 ], [ true, %437 ], [ true, %431 ]
  br i1 %446, label %450, label %447

447:                                              ; preds = %444
  %448 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_1_stream(ptr noundef %448, i8 noundef signext %445) #16
  %449 = add i32 %432, 1
  br label %431, !llvm.loop !169

450:                                              ; preds = %419, %444, %174, %170
  %451 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_1_stream(ptr noundef %451, i8 noundef signext 0) #16
  %452 = getelementptr inbounds %struct.tree_decl_common, ptr %37, i64 0, i32 5
  %453 = load ptr, ptr %452, align 8, !tbaa !46
  call void @lto_output_tree(ptr noundef %41, ptr noundef %453, i8 noundef zeroext 1)
  call void @renumber_gimple_stmt_uids() #16
  %454 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %455 = load ptr, ptr %454, align 8, !tbaa !170
  %456 = load ptr, ptr %455, align 8, !tbaa !35
  %457 = icmp eq ptr %456, null
  br i1 %457, label %720, label %458

458:                                              ; preds = %450, %716
  %459 = phi ptr [ %718, %716 ], [ %456, %450 ]
  %460 = getelementptr inbounds %struct.basic_block_def, ptr %459, i64 0, i32 13
  %461 = load i32, ptr %460, align 8, !tbaa !171
  %462 = and i32 %461, 512
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %470

464:                                              ; preds = %458
  %465 = getelementptr inbounds %struct.basic_block_def, ptr %459, i64 0, i32 7
  %466 = load ptr, ptr %465, align 8, !tbaa !46, !noalias !173
  %467 = icmp eq ptr %466, null
  br i1 %467, label %470, label %468

468:                                              ; preds = %464
  %469 = load ptr, ptr %466, align 8, !tbaa !176, !noalias !173
  br label %470

470:                                              ; preds = %468, %464, %458
  %471 = phi ptr [ %469, %468 ], [ null, %464 ], [ null, %458 ]
  %472 = icmp eq ptr %471, null
  br i1 %472, label %475, label %473

473:                                              ; preds = %470
  %474 = load ptr, ptr %471, align 8, !tbaa !178, !noalias !173
  br label %475

475:                                              ; preds = %473, %470
  %476 = phi ptr [ %474, %473 ], [ null, %470 ]
  %477 = icmp eq ptr %476, null
  br i1 %477, label %478, label %491

478:                                              ; preds = %475
  br i1 %463, label %480, label %479

479:                                              ; preds = %478
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 510, ptr noundef nonnull @.str.3) #16
  br label %480

480:                                              ; preds = %479, %478
  %481 = getelementptr inbounds %struct.basic_block_def, ptr %459, i64 0, i32 7
  %482 = load ptr, ptr %481, align 8, !tbaa !46
  %483 = icmp eq ptr %482, null
  br i1 %483, label %487, label %484

484:                                              ; preds = %480
  %485 = getelementptr inbounds %struct.gimple_bb_info, ptr %482, i64 0, i32 1
  %486 = load ptr, ptr %485, align 8, !tbaa !180
  br label %487

487:                                              ; preds = %484, %480
  %488 = phi ptr [ %486, %484 ], [ null, %480 ]
  %489 = icmp eq ptr %488, null
  %490 = select i1 %489, i64 224, i64 225
  br label %491

491:                                              ; preds = %487, %475
  %492 = phi i64 [ 225, %475 ], [ %490, %487 ]
  %493 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %493, i64 noundef %492) #16
  %494 = getelementptr inbounds %struct.basic_block_def, ptr %459, i64 0, i32 9
  %495 = load i32, ptr %494, align 8, !tbaa !181
  %496 = sext i32 %495 to i64
  %497 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %497, i64 noundef %496) #16
  %498 = getelementptr inbounds %struct.basic_block_def, ptr %459, i64 0, i32 8
  %499 = load i64, ptr %498, align 8, !tbaa !182
  %500 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %500, i64 noundef %499) #16
  %501 = getelementptr inbounds %struct.basic_block_def, ptr %459, i64 0, i32 10
  %502 = load i32, ptr %501, align 4, !tbaa !183
  %503 = sext i32 %502 to i64
  %504 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %504, i64 noundef %503) #16
  %505 = getelementptr inbounds %struct.basic_block_def, ptr %459, i64 0, i32 11
  %506 = load i32, ptr %505, align 8, !tbaa !184
  %507 = sext i32 %506 to i64
  %508 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %508, i64 noundef %507) #16
  %509 = load i32, ptr %460, align 8, !tbaa !171
  %510 = sext i32 %509 to i64
  %511 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %511, i64 noundef %510) #16
  br i1 %477, label %512, label %527

512:                                              ; preds = %491
  %513 = load i32, ptr %460, align 8, !tbaa !171
  %514 = and i32 %513, 512
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %517, label %516

516:                                              ; preds = %512
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 510, ptr noundef nonnull @.str.3) #16
  br label %517

517:                                              ; preds = %516, %512
  %518 = getelementptr inbounds %struct.basic_block_def, ptr %459, i64 0, i32 7
  %519 = load ptr, ptr %518, align 8, !tbaa !46
  %520 = icmp eq ptr %519, null
  br i1 %520, label %524, label %521

521:                                              ; preds = %517
  %522 = getelementptr inbounds %struct.gimple_bb_info, ptr %519, i64 0, i32 1
  %523 = load ptr, ptr %522, align 8, !tbaa !180
  br label %524

524:                                              ; preds = %521, %517
  %525 = phi ptr [ %523, %521 ], [ null, %517 ]
  %526 = icmp eq ptr %525, null
  br i1 %526, label %716, label %527

527:                                              ; preds = %524, %491
  %528 = load i32, ptr %460, align 8, !tbaa !171, !noalias !185
  %529 = and i32 %528, 512
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %531, label %537

531:                                              ; preds = %527
  %532 = getelementptr inbounds %struct.basic_block_def, ptr %459, i64 0, i32 7
  %533 = load ptr, ptr %532, align 8, !tbaa !46, !noalias !185
  %534 = icmp eq ptr %533, null
  br i1 %534, label %537, label %535

535:                                              ; preds = %531
  %536 = load ptr, ptr %533, align 8, !tbaa !176, !noalias !185
  br label %537

537:                                              ; preds = %535, %531, %527
  %538 = phi ptr [ %536, %535 ], [ null, %531 ], [ null, %527 ]
  %539 = icmp eq ptr %538, null
  br i1 %539, label %542, label %540

540:                                              ; preds = %537
  %541 = load ptr, ptr %538, align 8, !tbaa !178, !noalias !185
  br label %542

542:                                              ; preds = %540, %537
  %543 = phi ptr [ %541, %540 ], [ null, %537 ]
  %544 = icmp eq ptr %543, null
  br i1 %544, label %657, label %545

545:                                              ; preds = %542, %653
  %546 = phi ptr [ %655, %653 ], [ %543, %542 ]
  %547 = load ptr, ptr %546, align 8, !tbaa !188
  %548 = load i32, ptr %547, align 8
  %549 = and i32 %548, 255
  %550 = add nuw nsw i32 %549, 189
  %551 = zext nneg i32 %550 to i64
  %552 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %552, i64 noundef %551) #16
  %553 = call ptr @bitpack_create() #16
  %554 = getelementptr inbounds %struct.gimple_statement_base, ptr %547, i64 0, i32 3
  %555 = load i32, ptr %554, align 4, !tbaa !46
  %556 = zext i32 %555 to i64
  call void @bp_pack_value(ptr noundef %553, i64 noundef %556, i32 noundef 32) #16
  %557 = load i32, ptr %547, align 8
  %558 = lshr i32 %557, 8
  %559 = and i32 %558, 1
  %560 = zext nneg i32 %559 to i64
  call void @bp_pack_value(ptr noundef %553, i64 noundef %560, i32 noundef 1) #16
  %561 = load i32, ptr %547, align 8
  %562 = and i32 %561, 255
  %563 = icmp eq i32 %562, 6
  br i1 %563, label %564, label %568

564:                                              ; preds = %545
  %565 = lshr i32 %561, 10
  %566 = and i32 %565, 1
  %567 = zext nneg i32 %566 to i64
  call void @bp_pack_value(ptr noundef %553, i64 noundef %567, i32 noundef 1) #16
  br label %568

568:                                              ; preds = %564, %545
  %569 = load i32, ptr %547, align 8
  %570 = and i32 %569, 254
  %571 = add nsw i32 %570, -10
  %572 = icmp ult i32 %571, -4
  %573 = lshr i32 %569, 14
  %574 = and i32 %573, 1
  %575 = select i1 %572, i32 0, i32 %574
  %576 = zext nneg i32 %575 to i64
  call void @bp_pack_value(ptr noundef %553, i64 noundef %576, i32 noundef 1) #16
  %577 = load i32, ptr %547, align 8
  %578 = lshr i32 %577, 16
  %579 = zext nneg i32 %578 to i64
  call void @bp_pack_value(ptr noundef %553, i64 noundef %579, i32 noundef 16) #16
  %580 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_bitpack(ptr noundef %580, ptr noundef %553)
  call void @bitpack_delete(ptr noundef %553) #16
  %581 = getelementptr inbounds %struct.gimple_statement_base, ptr %547, i64 0, i32 2
  %582 = load i32, ptr %581, align 8, !tbaa !46
  call fastcc void @lto_output_location(ptr noundef %41, i32 noundef %582)
  %583 = getelementptr inbounds %struct.gimple_statement_base, ptr %547, i64 0, i32 5
  %584 = load ptr, ptr %583, align 8, !tbaa !46
  call void @lto_output_tree(ptr noundef %41, ptr noundef %584, i8 noundef zeroext 1)
  %585 = load i32, ptr %547, align 8
  %586 = trunc i32 %585 to i8
  switch i8 %586, label %644 [
    i8 14, label %587
    i8 13, label %592
    i8 15, label %595
    i8 7, label %600
    i8 6, label %616
    i8 8, label %616
    i8 9, label %616
    i8 5, label %616
    i8 4, label %616
    i8 1, label %616
    i8 3, label %616
    i8 2, label %616
    i8 18, label %645
    i8 33, label %645
  ]

587:                                              ; preds = %568
  %588 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %547, i64 0, i32 1
  %589 = load i32, ptr %588, align 8, !tbaa !46
  %590 = sext i32 %589 to i64
  %591 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %591, i64 noundef %590) #16
  br label %645

592:                                              ; preds = %568
  %593 = getelementptr inbounds %struct.gimple_statement_eh_mnt, ptr %547, i64 0, i32 1
  %594 = load ptr, ptr %593, align 8, !tbaa !46
  call fastcc void @lto_output_tree_ref(ptr noundef %41, ptr noundef %594)
  br label %645

595:                                              ; preds = %568
  %596 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %547, i64 0, i32 1
  %597 = load i32, ptr %596, align 8, !tbaa !46
  %598 = sext i32 %597 to i64
  %599 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %599, i64 noundef %598) #16
  br label %645

600:                                              ; preds = %568
  %601 = load ptr, ptr %53, align 8, !tbaa !57
  %602 = getelementptr inbounds %struct.gimple_statement_asm, ptr %547, i64 0, i32 2
  %603 = load i8, ptr %602, align 8, !tbaa !46
  %604 = zext i8 %603 to i64
  call void @lto_output_uleb128_stream(ptr noundef %601, i64 noundef %604) #16
  %605 = load ptr, ptr %53, align 8, !tbaa !57
  %606 = getelementptr inbounds %struct.gimple_statement_asm, ptr %547, i64 0, i32 3
  %607 = load i8, ptr %606, align 1, !tbaa !46
  %608 = zext i8 %607 to i64
  call void @lto_output_uleb128_stream(ptr noundef %605, i64 noundef %608) #16
  %609 = load ptr, ptr %53, align 8, !tbaa !57
  %610 = getelementptr inbounds %struct.gimple_statement_asm, ptr %547, i64 0, i32 4
  %611 = load i8, ptr %610, align 2, !tbaa !46
  %612 = zext i8 %611 to i64
  call void @lto_output_uleb128_stream(ptr noundef %609, i64 noundef %612) #16
  %613 = load ptr, ptr %53, align 8, !tbaa !57
  %614 = getelementptr inbounds %struct.gimple_statement_asm, ptr %547, i64 0, i32 1
  %615 = load ptr, ptr %614, align 8, !tbaa !46
  call fastcc void @output_string(ptr noundef %41, ptr noundef %613, ptr noundef %615)
  br label %616

616:                                              ; preds = %568, %568, %568, %568, %568, %568, %568, %600, %568
  %617 = load i32, ptr %554, align 4, !tbaa !46
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %645, label %619

619:                                              ; preds = %616, %638
  %620 = phi i64 [ %640, %638 ], [ 0, %616 ]
  %621 = load i32, ptr %547, align 8
  %622 = and i32 %621, 255
  %623 = add nsw i32 %622, -10
  %624 = icmp ult i32 %623, -9
  br i1 %624, label %638, label %625

625:                                              ; preds = %619
  %626 = zext nneg i32 %622 to i64
  %627 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %626
  %628 = load i32, ptr %627, align 4, !tbaa !50
  %629 = zext i32 %628 to i64
  %630 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %629
  %631 = load i64, ptr %630, align 8, !tbaa !70
  %632 = icmp eq i64 %631, 0
  br i1 %632, label %633, label %634

633:                                              ; preds = %625
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.3) #16
  br label %634

634:                                              ; preds = %633, %625
  %635 = getelementptr inbounds i8, ptr %547, i64 %631
  %636 = getelementptr inbounds ptr, ptr %635, i64 %620
  %637 = load ptr, ptr %636, align 8, !tbaa !35
  br label %638

638:                                              ; preds = %634, %619
  %639 = phi ptr [ %637, %634 ], [ null, %619 ]
  call fastcc void @lto_output_tree_ref(ptr noundef %41, ptr noundef %639)
  %640 = add nuw nsw i64 %620, 1
  %641 = load i32, ptr %554, align 4, !tbaa !46
  %642 = zext i32 %641 to i64
  %643 = icmp ult i64 %640, %642
  br i1 %643, label %619, label %645, !llvm.loop !190

644:                                              ; preds = %568
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1711, ptr noundef nonnull @.str.3) #16
  br label %645

645:                                              ; preds = %638, %616, %568, %644, %595, %592, %587, %568
  %646 = call i32 @lookup_stmt_eh_lp_fn(ptr noundef nonnull %40, ptr noundef nonnull %547) #16
  %647 = icmp eq i32 %646, 0
  %648 = load ptr, ptr %53, align 8, !tbaa !57
  br i1 %647, label %652, label %649

649:                                              ; preds = %645
  call void @lto_output_uleb128_stream(ptr noundef %648, i64 noundef 226) #16
  %650 = sext i32 %646 to i64
  %651 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %651, i64 noundef %650) #16
  br label %653

652:                                              ; preds = %645
  call void @lto_output_1_stream(ptr noundef %648, i8 noundef signext 0) #16
  br label %653

653:                                              ; preds = %652, %649
  %654 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %546, i64 0, i32 2
  %655 = load ptr, ptr %654, align 8, !tbaa !191
  %656 = icmp eq ptr %655, null
  br i1 %656, label %657, label %545, !llvm.loop !192

657:                                              ; preds = %653, %542
  %658 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_1_stream(ptr noundef %658, i8 noundef signext 0) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %459) #16
  %659 = load ptr, ptr %3, align 8, !tbaa.struct !193
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  %660 = icmp eq ptr %659, null
  br i1 %660, label %714, label %661

661:                                              ; preds = %657, %710
  %662 = phi ptr [ %712, %710 ], [ %659, %657 ]
  %663 = load ptr, ptr %662, align 8, !tbaa !188
  %664 = getelementptr inbounds %struct.gimple_statement_phi, ptr %663, i64 0, i32 3
  %665 = load ptr, ptr %664, align 8, !tbaa !46
  %666 = call zeroext i8 @is_gimple_reg(ptr noundef %665) #16
  %667 = icmp eq i8 %666, 0
  br i1 %667, label %710, label %668

668:                                              ; preds = %661
  %669 = getelementptr inbounds %struct.gimple_statement_phi, ptr %663, i64 0, i32 2
  %670 = load i32, ptr %669, align 4, !tbaa !46
  %671 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %671, i64 noundef 205) #16
  %672 = load ptr, ptr %664, align 8, !tbaa !35
  %673 = getelementptr inbounds %struct.tree_ssa_name, ptr %672, i64 0, i32 3
  %674 = load i32, ptr %673, align 8, !tbaa !46
  %675 = zext i32 %674 to i64
  %676 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %676, i64 noundef %675) #16
  %677 = icmp eq i32 %670, 0
  br i1 %677, label %710, label %678

678:                                              ; preds = %668
  %679 = getelementptr inbounds %struct.gimple_statement_phi, ptr %663, i64 0, i32 1
  %680 = getelementptr inbounds %struct.gimple_statement_base, ptr %663, i64 0, i32 4
  %681 = zext i32 %670 to i64
  br label %682

682:                                              ; preds = %678, %705
  %683 = phi i64 [ 0, %678 ], [ %708, %705 ]
  %684 = load i32, ptr %679, align 8, !tbaa !46
  %685 = zext i32 %684 to i64
  %686 = icmp ugt i64 %683, %685
  br i1 %686, label %687, label %688

687:                                              ; preds = %682
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3103, ptr noundef nonnull @.str.3) #16
  br label %688

688:                                              ; preds = %687, %682
  %689 = getelementptr inbounds %struct.gimple_statement_phi, ptr %663, i64 0, i32 4, i64 %683, i32 0, i32 3
  %690 = load ptr, ptr %689, align 8, !tbaa !194
  %691 = load ptr, ptr %690, align 8, !tbaa !35
  call fastcc void @lto_output_tree_ref(ptr noundef %41, ptr noundef %691)
  %692 = load ptr, ptr %680, align 8, !tbaa !46
  %693 = load ptr, ptr %692, align 8, !tbaa !196, !nonnull !197, !noundef !197
  %694 = getelementptr inbounds %struct.VEC_edge_base, ptr %693, i64 0, i32 2, i64 %683
  %695 = load ptr, ptr %694, align 8, !tbaa !35
  %696 = load ptr, ptr %695, align 8, !tbaa !198
  %697 = getelementptr inbounds %struct.basic_block_def, ptr %696, i64 0, i32 9
  %698 = load i32, ptr %697, align 8, !tbaa !181
  %699 = sext i32 %698 to i64
  %700 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %700, i64 noundef %699) #16
  %701 = load i32, ptr %679, align 8, !tbaa !46
  %702 = zext i32 %701 to i64
  %703 = icmp ugt i64 %683, %702
  br i1 %703, label %704, label %705

704:                                              ; preds = %688
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3103, ptr noundef nonnull @.str.3) #16
  br label %705

705:                                              ; preds = %704, %688
  %706 = getelementptr inbounds %struct.gimple_statement_phi, ptr %663, i64 0, i32 4, i64 %683, i32 2
  %707 = load i32, ptr %706, align 8, !tbaa !200
  call fastcc void @lto_output_location(ptr noundef %41, i32 noundef %707)
  %708 = add nuw nsw i64 %683, 1
  %709 = icmp eq i64 %708, %681
  br i1 %709, label %710, label %682, !llvm.loop !202

710:                                              ; preds = %705, %668, %661
  %711 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %662, i64 0, i32 2
  %712 = load ptr, ptr %711, align 8, !tbaa !191
  %713 = icmp eq ptr %712, null
  br i1 %713, label %714, label %661, !llvm.loop !203

714:                                              ; preds = %710, %657
  %715 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_1_stream(ptr noundef %715, i8 noundef signext 0) #16
  br label %716

716:                                              ; preds = %714, %524
  %717 = getelementptr inbounds %struct.basic_block_def, ptr %459, i64 0, i32 6
  %718 = load ptr, ptr %717, align 8, !tbaa !35
  %719 = icmp eq ptr %718, null
  br i1 %719, label %720, label %458, !llvm.loop !204

720:                                              ; preds = %716, %450
  %721 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_1_stream(ptr noundef %721, i8 noundef signext 0) #16
  %722 = load ptr, ptr %53, align 8, !tbaa !57
  %723 = getelementptr inbounds %struct.output_block, ptr %41, i64 0, i32 4
  %724 = load ptr, ptr %723, align 8, !tbaa !60
  store ptr %724, ptr %53, align 8, !tbaa !57
  %725 = load ptr, ptr %454, align 8, !tbaa !170
  %726 = getelementptr inbounds %struct.control_flow_graph, ptr %725, i64 0, i32 7
  %727 = load i32, ptr %726, align 8, !tbaa !205
  %728 = zext i32 %727 to i64
  call void @lto_output_uleb128_stream(ptr noundef %724, i64 noundef %728) #16
  %729 = load ptr, ptr %454, align 8, !tbaa !170
  %730 = getelementptr inbounds %struct.control_flow_graph, ptr %729, i64 0, i32 5
  %731 = load i32, ptr %730, align 8, !tbaa !207
  %732 = sext i32 %731 to i64
  %733 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %733, i64 noundef %732) #16
  %734 = load ptr, ptr %454, align 8, !tbaa !170
  %735 = load ptr, ptr %734, align 8, !tbaa !35
  %736 = icmp eq ptr %735, null
  br i1 %736, label %799, label %737

737:                                              ; preds = %720, %795
  %738 = phi ptr [ %797, %795 ], [ %735, %720 ]
  %739 = getelementptr inbounds %struct.basic_block_def, ptr %738, i64 0, i32 9
  %740 = load i32, ptr %739, align 8, !tbaa !181
  %741 = sext i32 %740 to i64
  %742 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %742, i64 noundef %741) #16
  %743 = getelementptr inbounds %struct.basic_block_def, ptr %738, i64 0, i32 1
  %744 = load ptr, ptr %743, align 8, !tbaa !208
  %745 = icmp eq ptr %744, null
  br i1 %745, label %748, label %746

746:                                              ; preds = %737
  %747 = load i32, ptr %744, align 8, !tbaa !209
  br label %748

748:                                              ; preds = %746, %737
  %749 = phi i32 [ %747, %746 ], [ 0, %737 ]
  %750 = zext i32 %749 to i64
  %751 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %751, i64 noundef %750) #16
  br label %752

752:                                              ; preds = %793, %748
  %753 = phi i32 [ 0, %748 ], [ %794, %793 ]
  %754 = load ptr, ptr %743, align 8, !tbaa !35
  %755 = icmp eq ptr %754, null
  br i1 %755, label %758, label %756

756:                                              ; preds = %752
  %757 = load i32, ptr %754, align 8, !tbaa !209
  br label %758

758:                                              ; preds = %756, %752
  %759 = phi i32 [ %757, %756 ], [ 0, %752 ]
  %760 = icmp eq i32 %759, %753
  br i1 %760, label %765, label %761

761:                                              ; preds = %758
  %762 = zext i32 %753 to i64
  %763 = getelementptr inbounds %struct.VEC_edge_base, ptr %754, i64 0, i32 2, i64 %762
  %764 = load ptr, ptr %763, align 8, !tbaa !35
  br label %765

765:                                              ; preds = %761, %758
  %766 = phi ptr [ %764, %761 ], [ null, %758 ]
  br i1 %760, label %795, label %767

767:                                              ; preds = %765
  %768 = getelementptr inbounds %struct.edge_def, ptr %766, i64 0, i32 1
  %769 = load ptr, ptr %768, align 8, !tbaa !211
  %770 = getelementptr inbounds %struct.basic_block_def, ptr %769, i64 0, i32 9
  %771 = load i32, ptr %770, align 8, !tbaa !181
  %772 = sext i32 %771 to i64
  %773 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %773, i64 noundef %772) #16
  %774 = getelementptr inbounds %struct.edge_def, ptr %766, i64 0, i32 8
  %775 = load i32, ptr %774, align 4, !tbaa !212
  %776 = sext i32 %775 to i64
  %777 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %777, i64 noundef %776) #16
  %778 = getelementptr inbounds %struct.edge_def, ptr %766, i64 0, i32 9
  %779 = load i64, ptr %778, align 8, !tbaa !213
  %780 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %780, i64 noundef %779) #16
  %781 = getelementptr inbounds %struct.edge_def, ptr %766, i64 0, i32 7
  %782 = load i32, ptr %781, align 8, !tbaa !214
  %783 = sext i32 %782 to i64
  %784 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_uleb128_stream(ptr noundef %784, i64 noundef %783) #16
  %785 = load ptr, ptr %743, align 8, !tbaa !35
  %786 = icmp eq ptr %785, null
  br i1 %786, label %789, label %787

787:                                              ; preds = %767
  %788 = load i32, ptr %785, align 8, !tbaa !209
  br label %789

789:                                              ; preds = %787, %767
  %790 = phi i32 [ %788, %787 ], [ 0, %767 ]
  %791 = icmp ult i32 %753, %790
  br i1 %791, label %793, label %792

792:                                              ; preds = %789
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.3) #16
  br label %793

793:                                              ; preds = %792, %789
  %794 = add i32 %753, 1
  br label %752, !llvm.loop !215

795:                                              ; preds = %765
  %796 = getelementptr inbounds %struct.basic_block_def, ptr %738, i64 0, i32 6
  %797 = load ptr, ptr %796, align 8, !tbaa !35
  %798 = icmp eq ptr %797, null
  br i1 %798, label %799, label %737, !llvm.loop !216

799:                                              ; preds = %795, %720
  %800 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %800, i64 noundef -1) #16
  %801 = load ptr, ptr @cfun, align 8, !tbaa !35
  %802 = getelementptr inbounds %struct.function, ptr %801, i64 0, i32 1
  %803 = load ptr, ptr %802, align 8, !tbaa !170
  %804 = load ptr, ptr %803, align 8, !tbaa !35
  %805 = getelementptr inbounds %struct.basic_block_def, ptr %804, i64 0, i32 6
  %806 = load ptr, ptr %805, align 8, !tbaa !217
  %807 = icmp eq ptr %806, null
  br i1 %807, label %819, label %808

808:                                              ; preds = %799, %808
  %809 = phi ptr [ %817, %808 ], [ %806, %799 ]
  %810 = phi ptr [ %816, %808 ], [ %805, %799 ]
  %811 = getelementptr inbounds %struct.basic_block_def, ptr %809, i64 0, i32 9
  %812 = load i32, ptr %811, align 8, !tbaa !181
  %813 = sext i32 %812 to i64
  %814 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %814, i64 noundef %813) #16
  %815 = load ptr, ptr %810, align 8, !tbaa !35
  %816 = getelementptr inbounds %struct.basic_block_def, ptr %815, i64 0, i32 6
  %817 = load ptr, ptr %816, align 8, !tbaa !217
  %818 = icmp eq ptr %817, null
  br i1 %818, label %819, label %808, !llvm.loop !218

819:                                              ; preds = %808, %799
  %820 = load ptr, ptr %53, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %820, i64 noundef -1) #16
  store ptr %722, ptr %53, align 8, !tbaa !57
  call void @produce_asm(ptr noundef %41, ptr noundef %37)
  call void @destroy_output_block(ptr noundef %41)
  store ptr null, ptr @current_function_decl, align 8, !tbaa !35
  call void @pop_cfun() #16
  br label %889

821:                                              ; preds = %29
  %822 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 18
  %823 = load ptr, ptr %822, align 8, !tbaa !219
  %824 = call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %825 = call ptr @decl_assembler_name(ptr noundef %37) #16
  %826 = getelementptr inbounds %struct.tree_identifier, ptr %825, i64 0, i32 1
  %827 = load ptr, ptr %826, align 8, !tbaa !46
  %828 = call ptr @lto_get_section_name(i32 noundef 1, ptr noundef %827) #16
  %829 = call ptr @lto_get_out_decl_state() #16
  %830 = load i32, ptr @flag_wpa, align 4, !tbaa !50
  %831 = icmp eq i32 %830, 0
  %832 = zext i1 %831 to i8
  call void @lto_begin_section(ptr noundef %828, i8 noundef zeroext %832) #16
  call void @free(ptr noundef %828)
  %833 = call ptr @lto_get_decl_name_mapping(ptr noundef %823, ptr noundef %827) #16
  %834 = call ptr @lto_get_section_data(ptr noundef %823, i32 noundef 1, ptr noundef %833, ptr noundef nonnull %2) #16
  %835 = icmp eq ptr %834, null
  br i1 %835, label %836, label %837

836:                                              ; preds = %821
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2048, ptr noundef nonnull @.str.3) #16
  br label %837

837:                                              ; preds = %836, %821
  %838 = load i64, ptr %2, align 8, !tbaa !70
  call void @lto_output_data_stream(ptr noundef %824, ptr noundef %834, i64 noundef %838) #16
  call void @lto_write_stream(ptr noundef %824) #16
  %839 = load ptr, ptr %822, align 8, !tbaa !219
  %840 = call ptr @lto_get_function_in_decl_state(ptr noundef %839, ptr noundef %37) #16
  %841 = icmp eq ptr %840, null
  br i1 %841, label %842, label %843

842:                                              ; preds = %837
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2057, ptr noundef nonnull @.str.3) #16
  br label %843

843:                                              ; preds = %842, %837
  br label %844

844:                                              ; preds = %843, %883
  %845 = phi i64 [ %885, %883 ], [ 0, %843 ]
  %846 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %840, i64 0, i64 %845
  %847 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %840, i64 0, i64 %845, i32 1
  %848 = load i32, ptr %847, align 8, !tbaa !220
  %849 = zext i32 %848 to i64
  %850 = load ptr, ptr %846, align 8, !tbaa !222
  %851 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %829, i64 0, i64 %845, i32 2
  %852 = load ptr, ptr %851, align 8, !tbaa !223
  %853 = icmp eq ptr %852, null
  br i1 %853, label %856, label %854

854:                                              ; preds = %844
  %855 = load i32, ptr %852, align 8, !tbaa !74
  br label %856

856:                                              ; preds = %854, %844
  %857 = phi i32 [ %855, %854 ], [ 0, %844 ]
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %860, label %859

859:                                              ; preds = %856
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2068, ptr noundef nonnull @.str.3) #16
  br label %860

860:                                              ; preds = %859, %856
  %861 = icmp eq i32 %848, 0
  br i1 %861, label %883, label %862

862:                                              ; preds = %860, %875
  %863 = phi i64 [ %881, %875 ], [ 0, %860 ]
  %864 = getelementptr inbounds ptr, ptr %850, i64 %863
  %865 = load ptr, ptr %864, align 8, !tbaa !35
  %866 = load ptr, ptr %851, align 8, !tbaa !35
  %867 = icmp eq ptr %866, null
  br i1 %867, label %873, label %868

868:                                              ; preds = %862
  %869 = getelementptr inbounds %struct.VEC_tree_base, ptr %866, i64 0, i32 1
  %870 = load i32, ptr %869, align 4, !tbaa !225
  %871 = load i32, ptr %866, align 8, !tbaa !74
  %872 = icmp eq i32 %870, %871
  br i1 %872, label %873, label %875

873:                                              ; preds = %868, %862
  %874 = call ptr @vec_heap_p_reserve(ptr noundef %866, i32 noundef 1) #16
  store ptr %874, ptr %851, align 8, !tbaa !35
  br label %875

875:                                              ; preds = %873, %868
  %876 = load ptr, ptr %851, align 8, !tbaa !35
  %877 = load i32, ptr %876, align 8, !tbaa !74
  %878 = add i32 %877, 1
  store i32 %878, ptr %876, align 8, !tbaa !74
  %879 = zext i32 %877 to i64
  %880 = getelementptr inbounds %struct.VEC_tree_base, ptr %876, i64 0, i32 2, i64 %879
  store ptr %865, ptr %880, align 8, !tbaa !35
  %881 = add nuw nsw i64 %863, 1
  %882 = icmp eq i64 %881, %849
  br i1 %882, label %883, label %862, !llvm.loop !226

883:                                              ; preds = %875, %860
  %884 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %829, i64 0, i64 %845, i32 1
  store i32 %848, ptr %884, align 8, !tbaa !227
  %885 = add nuw nsw i64 %845, 1
  %886 = icmp eq i64 %885, 7
  br i1 %886, label %887, label %844, !llvm.loop !228

887:                                              ; preds = %883
  %888 = load i64, ptr %2, align 8, !tbaa !70
  call void @lto_free_section_data(ptr noundef %823, i32 noundef 1, ptr noundef %833, ptr noundef %834, i64 noundef %888) #16
  call void @free(ptr noundef %824)
  call void @lto_end_section() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %889

889:                                              ; preds = %887, %819
  %890 = call ptr @lto_get_out_decl_state() #16
  %891 = icmp eq ptr %890, %34
  br i1 %891, label %893, label %892

892:                                              ; preds = %889
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2115, ptr noundef nonnull @.str.3) #16
  br label %893

893:                                              ; preds = %889, %892
  %894 = call ptr @lto_pop_out_decl_state() #16
  %895 = load ptr, ptr %18, align 8, !tbaa !104
  call void @lto_record_function_out_decl_state(ptr noundef %895, ptr noundef %34) #16
  br label %896

896:                                              ; preds = %15, %23, %893
  %897 = add i32 %7, 1
  br label %6, !llvm.loop !229

898:                                              ; preds = %12
  call void @output_cgraph(ptr noundef %0) #16
  call void @lto_bitmap_free(ptr noundef %4) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @produce_asm_for_decls(ptr noundef %0) #9 !prof !34 {
  %2 = alloca %struct.lto_decl_header, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = tail call ptr @create_output_block(i32 noundef 0)
  %5 = getelementptr inbounds %struct.output_block, ptr %4, i64 0, i32 10
  store i8 1, ptr %5, align 8, !tbaa !230
  %6 = tail call ptr @create_output_block(i32 noundef 2)
  %7 = getelementptr inbounds %struct.output_block, ptr %6, i64 0, i32 6
  %8 = getelementptr inbounds %struct.output_block, ptr %6, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  tail call void @lto_output_1_stream(ptr noundef %9, i8 noundef signext 0) #16
  %10 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %46, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.output_block, ptr %6, i64 0, i32 2
  %14 = getelementptr inbounds %struct.output_block, ptr %6, i64 0, i32 1
  br label %15

15:                                               ; preds = %12, %42
  %16 = phi ptr [ %10, %12 ], [ %44, %42 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !231
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 32
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  tail call void @lto_output_tree(ptr noundef %6, ptr noundef nonnull %17, i8 noundef zeroext 1)
  %22 = load i64, ptr %17, align 8
  %23 = and i64 %22, 134217728
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call fastcc void @lto_output_tree_ref(ptr noundef %6, ptr noundef nonnull %17)
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.varpool_node, ptr %16, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %40, %30 ], [ %28, %26 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !231
  tail call void @lto_output_tree(ptr noundef %6, ptr noundef %32, i8 noundef zeroext 1)
  %33 = load ptr, ptr %13, align 8, !tbaa !57
  tail call void @lto_output_uleb128_stream(ptr noundef %33, i64 noundef 237) #16
  %34 = load ptr, ptr %14, align 8, !tbaa !56
  %35 = load ptr, ptr %13, align 8, !tbaa !57
  %36 = load ptr, ptr %31, align 8, !tbaa !231
  tail call void @lto_output_var_decl_index(ptr noundef %34, ptr noundef %35, ptr noundef %36) #16
  %37 = load ptr, ptr %14, align 8, !tbaa !56
  %38 = load ptr, ptr %13, align 8, !tbaa !57
  tail call void @lto_output_var_decl_index(ptr noundef %37, ptr noundef %38, ptr noundef nonnull %17) #16
  %39 = getelementptr inbounds %struct.varpool_node, ptr %31, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %30, !llvm.loop !233

42:                                               ; preds = %30, %26, %15
  %43 = getelementptr inbounds %struct.varpool_node, ptr %16, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %15, !llvm.loop !234

46:                                               ; preds = %42, %1
  %47 = getelementptr inbounds %struct.output_block, ptr %6, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !57
  tail call void @lto_output_1_stream(ptr noundef %48, i8 noundef signext 0) #16
  br label %49

49:                                               ; preds = %90, %46
  %50 = phi i32 [ 0, %46 ], [ %91, %90 ]
  %51 = load ptr, ptr @alias_pairs, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = load i32, ptr %51, align 8, !tbaa !235
  %55 = icmp ugt i32 %54, %50
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = zext i32 %50 to i64
  %58 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %51, i64 0, i32 2, i64 %57
  br label %59

59:                                               ; preds = %56, %53, %49
  %60 = phi ptr [ %58, %56 ], [ null, %53 ], [ null, %49 ]
  %61 = phi i1 [ false, %56 ], [ true, %53 ], [ true, %49 ]
  br i1 %61, label %92, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %60, align 8, !tbaa !237
  %64 = load i64, ptr %63, align 8
  %65 = trunc i64 %64 to i16
  switch i16 %65, label %66 [
    i16 32, label %83
    i16 29, label %67
  ]

66:                                               ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1944, ptr noundef nonnull @.str.3) #16
  br label %67

67:                                               ; preds = %66, %62
  %68 = getelementptr inbounds %struct.alias_pair, ptr %60, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !239
  %70 = tail call ptr @cgraph_node_for_asm(ptr noundef %69) #16
  %71 = tail call { ptr, i32 } @cgraph_node_set_find(ptr noundef %0, ptr noundef %70) #16
  %72 = extractvalue { ptr, i32 } %71, 0
  %73 = extractvalue { ptr, i32 } %71, 1
  %74 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %72, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !100
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %67
  %78 = load i32, ptr %75, align 8, !tbaa !102
  br label %79

79:                                               ; preds = %77, %67
  %80 = phi i32 [ %78, %77 ], [ 0, %67 ]
  %81 = icmp ugt i32 %80, %73
  %82 = zext i1 %81 to i8
  br label %83

83:                                               ; preds = %79, %62
  %84 = phi i8 [ %82, %79 ], [ 1, %62 ]
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %60, align 8, !tbaa !237
  tail call fastcc void @lto_output_tree_ref(ptr noundef %6, ptr noundef %87)
  %88 = getelementptr inbounds %struct.alias_pair, ptr %60, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !239
  tail call fastcc void @lto_output_tree_ref(ptr noundef %6, ptr noundef %89)
  br label %90

90:                                               ; preds = %86, %83
  %91 = add i32 %50, 1
  br label %49, !llvm.loop !240

92:                                               ; preds = %59
  %93 = load ptr, ptr %47, align 8, !tbaa !57
  tail call void @lto_output_1_stream(ptr noundef %93, i8 noundef signext 0) #16
  tail call void @produce_asm(ptr noundef %6, ptr noundef null)
  tail call void @destroy_output_block(ptr noundef %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %94 = tail call ptr @lto_get_section_name(i32 noundef 0, ptr noundef null) #16
  %95 = load i32, ptr @flag_wpa, align 4, !tbaa !50
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i8
  tail call void @lto_begin_section(ptr noundef %94, i8 noundef zeroext %97) #16
  tail call void @free(ptr noundef %94)
  %98 = getelementptr inbounds %struct.output_block, ptr %4, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !58
  tail call void @lto_output_1_stream(ptr noundef %99, i8 noundef signext 0) #16
  %100 = tail call ptr @lto_get_out_decl_state() #16
  %101 = load ptr, ptr @lto_function_decl_states, align 8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %92
  %104 = load i32, ptr %101, align 8, !tbaa !241
  br label %105

105:                                              ; preds = %92, %103
  %106 = phi i32 [ %104, %103 ], [ 0, %92 ]
  tail call fastcc void @lto_output_decl_state_streams(ptr noundef %4, ptr noundef %100)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %105
  %109 = zext i32 %106 to i64
  br label %110

110:                                              ; preds = %108, %110
  %111 = phi i64 [ 0, %108 ], [ %115, %110 ]
  %112 = load ptr, ptr @lto_function_decl_states, align 8
  %113 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %112, i64 0, i32 2, i64 %111
  %114 = load ptr, ptr %113, align 8, !tbaa !35
  tail call fastcc void @lto_output_decl_state_streams(ptr noundef %4, ptr noundef %114)
  %115 = add nuw nsw i64 %111, 1
  %116 = icmp eq i64 %115, %109
  br i1 %116, label %117, label %110, !llvm.loop !243

117:                                              ; preds = %110, %105
  store i16 1, ptr %2, align 4, !tbaa !244
  %118 = getelementptr inbounds %struct.lto_header, ptr %2, i64 0, i32 1
  store i16 0, ptr %118, align 2, !tbaa !246
  %119 = getelementptr inbounds %struct.lto_header, ptr %2, i64 0, i32 2
  store i32 0, ptr %119, align 4, !tbaa !247
  %120 = getelementptr inbounds %struct.lto_decl_header, ptr %2, i64 0, i32 2
  store i32 -1, ptr %120, align 4, !tbaa !248
  br label %121

121:                                              ; preds = %117, %130
  %122 = phi i64 [ 0, %117 ], [ %135, %130 ]
  %123 = phi i64 [ 4, %117 ], [ %134, %130 ]
  %124 = add i64 %123, 4
  %125 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %100, i64 0, i64 %122, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !223
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %121
  %129 = load i32, ptr %126, align 8, !tbaa !74
  br label %130

130:                                              ; preds = %128, %121
  %131 = phi i32 [ %129, %128 ], [ 0, %121 ]
  %132 = zext i32 %131 to i64
  %133 = shl nuw nsw i64 %132, 2
  %134 = add i64 %124, %133
  %135 = add nuw nsw i64 %122, 1
  %136 = icmp eq i64 %135, 7
  br i1 %136, label %137, label %121, !llvm.loop !249

137:                                              ; preds = %130
  %138 = add i64 %134, 4
  %139 = icmp eq i32 %106, 0
  br i1 %139, label %168, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr @lto_function_decl_states, align 8
  %142 = zext i32 %106 to i64
  br label %143

143:                                              ; preds = %140, %164
  %144 = phi i64 [ 0, %140 ], [ %166, %164 ]
  %145 = phi i64 [ %138, %140 ], [ %165, %164 ]
  %146 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %141, i64 0, i32 2, i64 %144
  %147 = load ptr, ptr %146, align 8, !tbaa !35
  br label %148

148:                                              ; preds = %143, %157
  %149 = phi i64 [ 0, %143 ], [ %162, %157 ]
  %150 = phi i64 [ 4, %143 ], [ %161, %157 ]
  %151 = add i64 %150, 4
  %152 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %147, i64 0, i64 %149, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !223
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %148
  %156 = load i32, ptr %153, align 8, !tbaa !74
  br label %157

157:                                              ; preds = %155, %148
  %158 = phi i32 [ %156, %155 ], [ 0, %148 ]
  %159 = zext i32 %158 to i64
  %160 = shl nuw nsw i64 %159, 2
  %161 = add i64 %151, %160
  %162 = add nuw nsw i64 %149, 1
  %163 = icmp eq i64 %162, 7
  br i1 %163, label %164, label %148, !llvm.loop !249

164:                                              ; preds = %157
  %165 = add i64 %161, %145
  %166 = add nuw nsw i64 %144, 1
  %167 = icmp eq i64 %166, %142
  br i1 %167, label %168, label %143, !llvm.loop !250

168:                                              ; preds = %164, %137
  %169 = phi i64 [ %138, %137 ], [ %165, %164 ]
  %170 = trunc i64 %169 to i32
  %171 = getelementptr inbounds %struct.lto_decl_header, ptr %2, i64 0, i32 1
  store i32 %170, ptr %171, align 4, !tbaa !251
  %172 = getelementptr inbounds %struct.output_block, ptr %4, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !57
  %174 = getelementptr inbounds %struct.lto_output_stream, ptr %173, i64 0, i32 5
  %175 = load i32, ptr %174, align 8, !tbaa !72
  %176 = getelementptr inbounds %struct.lto_decl_header, ptr %2, i64 0, i32 3
  store i32 %175, ptr %176, align 4, !tbaa !252
  %177 = load ptr, ptr %98, align 8, !tbaa !58
  %178 = getelementptr inbounds %struct.lto_output_stream, ptr %177, i64 0, i32 5
  %179 = load i32, ptr %178, align 8, !tbaa !72
  %180 = getelementptr inbounds %struct.lto_decl_header, ptr %2, i64 0, i32 4
  store i32 %179, ptr %180, align 4, !tbaa !253
  %181 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #16
  call void @lto_output_data_stream(ptr noundef %181, ptr noundef nonnull %2, i64 noundef 24) #16
  call void @lto_write_stream(ptr noundef %181) #16
  call void @free(ptr noundef %181)
  %182 = call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #16
  %183 = add i32 %106, 1
  store i32 %183, ptr %3, align 4, !tbaa !50
  call void @lto_output_data_stream(ptr noundef %182, ptr noundef nonnull %3, i64 noundef 4) #16
  call fastcc void @lto_output_decl_state_refs(ptr noundef %4, ptr noundef %182, ptr noundef %100)
  %184 = icmp eq i32 %106, 0
  br i1 %184, label %194, label %185

185:                                              ; preds = %168
  %186 = zext i32 %106 to i64
  br label %187

187:                                              ; preds = %185, %187
  %188 = phi i64 [ 0, %185 ], [ %192, %187 ]
  %189 = load ptr, ptr @lto_function_decl_states, align 8
  %190 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %189, i64 0, i32 2, i64 %188
  %191 = load ptr, ptr %190, align 8, !tbaa !35
  call fastcc void @lto_output_decl_state_refs(ptr noundef %4, ptr noundef %182, ptr noundef %191)
  %192 = add nuw nsw i64 %188, 1
  %193 = icmp eq i64 %192, %186
  br i1 %193, label %194, label %187, !llvm.loop !254

194:                                              ; preds = %187, %168
  call void @lto_write_stream(ptr noundef %182) #16
  call void @free(ptr noundef %182)
  %195 = load ptr, ptr %172, align 8, !tbaa !57
  call void @lto_write_stream(ptr noundef %195) #16
  %196 = load ptr, ptr %98, align 8, !tbaa !58
  call void @lto_write_stream(ptr noundef %196) #16
  call void @lto_end_section() #16
  %197 = getelementptr inbounds %struct.output_block, ptr %4, i64 0, i32 11
  %198 = load ptr, ptr %197, align 8, !tbaa !59
  %199 = call ptr @lto_get_section_name(i32 noundef 7, ptr noundef null) #16
  call void @lto_begin_section(ptr noundef %199, i8 noundef zeroext 0) #16
  call void @free(ptr noundef %199)
  %200 = call ptr @lto_bitmap_alloc() #16
  call fastcc void @write_symbols_of_kind(i32 noundef 2, ptr noundef %198, ptr noundef %200)
  call fastcc void @write_symbols_of_kind(i32 noundef 3, ptr noundef %198, ptr noundef %200)
  call void @lto_bitmap_free(ptr noundef %200) #16
  call void @lto_end_section() #16
  call void @lto_write_options() #16
  %201 = getelementptr inbounds %struct.output_block, ptr %4, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !56
  %203 = getelementptr inbounds %struct.lto_out_decl_state, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !255
  call void @lto_cgraph_encoder_delete(ptr noundef %204) #16
  %205 = load ptr, ptr @lto_function_decl_states, align 8, !tbaa !35
  %206 = icmp eq ptr %205, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %194
  call void @free(ptr noundef %205)
  br label %208

208:                                              ; preds = %194, %207
  store ptr null, ptr @lto_function_decl_states, align 8, !tbaa !35
  call void @destroy_output_block(ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret void
}

declare i32 @htab_hash_string(ptr noundef) local_unnamed_addr #3

declare void @lto_output_1_stream(ptr noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  tail call void @lto_output_1_stream(ptr noundef %6, i8 noundef signext 0) #16
  br label %111

7:                                                ; preds = %2
  %8 = load i64, ptr %1, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %17 [
    i16 34, label %26
    i16 32, label %10
  ]

10:                                               ; preds = %7
  %11 = tail call ptr @decl_function_context(ptr noundef nonnull %1) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i64, ptr %1, align 8
  %15 = and i64 %14, 67108864
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13, %10, %7
  %18 = load i64, ptr %1, align 8
  %19 = and i64 %18, 65535
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = and i32 %21, -2
  %23 = icmp ne i32 %22, 2
  %24 = icmp ne i64 %19, 141
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %27

26:                                               ; preds = %17, %7, %13
  tail call void @lto_output_tree(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 1)
  br label %111

27:                                               ; preds = %17
  %28 = icmp eq i32 %21, 2
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  tail call void @lto_output_uleb128_stream(ptr noundef %31, i64 noundef 245) #16
  %32 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  %34 = load ptr, ptr %30, align 8, !tbaa !57
  tail call void @lto_output_type_ref_index(ptr noundef %33, ptr noundef %34, ptr noundef nonnull %1) #16
  br label %111

35:                                               ; preds = %27
  %36 = trunc i64 %18 to i16
  switch i16 %36, label %110 [
    i16 141, label %37
    i16 31, label %44
    i16 29, label %50
    i16 32, label %56
    i16 37, label %56
    i16 33, label %70
    i16 39, label %76
    i16 35, label %86
    i16 38, label %92
    i16 30, label %98
    i16 36, label %104
  ]

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !57
  tail call void @lto_output_uleb128_stream(ptr noundef %39, i64 noundef 243) #16
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !46
  %42 = zext i32 %41 to i64
  %43 = load ptr, ptr %38, align 8, !tbaa !57
  tail call void @lto_output_uleb128_stream(ptr noundef %43, i64 noundef %42) #16
  br label %111

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !57
  tail call void @lto_output_uleb128_stream(ptr noundef %46, i64 noundef 238) #16
  %47 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !56
  %49 = load ptr, ptr %45, align 8, !tbaa !57
  tail call void @lto_output_field_decl_index(ptr noundef %48, ptr noundef %49, ptr noundef nonnull %1) #16
  br label %111

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !57
  tail call void @lto_output_uleb128_stream(ptr noundef %52, i64 noundef 239) #16
  %53 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !56
  %55 = load ptr, ptr %51, align 8, !tbaa !57
  tail call void @lto_output_fn_decl_index(ptr noundef %54, ptr noundef %55, ptr noundef nonnull %1) #16
  br label %111

56:                                               ; preds = %35, %35
  %57 = tail call ptr @decl_function_context(ptr noundef nonnull %1) #16
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load i64, ptr %1, align 8
  %61 = and i64 %60, 67108864
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 699, ptr noundef nonnull @.str.3) #16
  br label %64

64:                                               ; preds = %56, %59, %63
  %65 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !57
  tail call void @lto_output_uleb128_stream(ptr noundef %66, i64 noundef 248) #16
  %67 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !56
  %69 = load ptr, ptr %65, align 8, !tbaa !57
  tail call void @lto_output_var_decl_index(ptr noundef %68, ptr noundef %69, ptr noundef nonnull %1) #16
  br label %111

70:                                               ; preds = %35
  %71 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !57
  tail call void @lto_output_uleb128_stream(ptr noundef %72, i64 noundef 246) #16
  %73 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !56
  %75 = load ptr, ptr %71, align 8, !tbaa !57
  tail call void @lto_output_var_decl_index(ptr noundef %74, ptr noundef %75, ptr noundef nonnull %1) #16
  br label %111

76:                                               ; preds = %35
  %77 = tail call ptr @decl_function_context(ptr noundef nonnull %1) #16
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 710, ptr noundef nonnull @.str.3) #16
  br label %80

80:                                               ; preds = %76, %79
  %81 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !57
  tail call void @lto_output_uleb128_stream(ptr noundef %82, i64 noundef 247) #16
  %83 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !56
  %85 = load ptr, ptr %81, align 8, !tbaa !57
  tail call void @lto_output_var_decl_index(ptr noundef %84, ptr noundef %85, ptr noundef nonnull %1) #16
  br label %111

86:                                               ; preds = %35
  %87 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !57
  tail call void @lto_output_uleb128_stream(ptr noundef %88, i64 noundef 244) #16
  %89 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !56
  %91 = load ptr, ptr %87, align 8, !tbaa !57
  tail call void @lto_output_type_decl_index(ptr noundef %90, ptr noundef %91, ptr noundef nonnull %1) #16
  br label %111

92:                                               ; preds = %35
  %93 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !57
  tail call void @lto_output_uleb128_stream(ptr noundef %94, i64 noundef 241) #16
  %95 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !56
  %97 = load ptr, ptr %93, align 8, !tbaa !57
  tail call void @lto_output_namespace_decl_index(ptr noundef %96, ptr noundef %97, ptr noundef nonnull %1) #16
  br label %111

98:                                               ; preds = %35
  %99 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !57
  tail call void @lto_output_uleb128_stream(ptr noundef %100, i64 noundef 240) #16
  %101 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !56
  %103 = load ptr, ptr %99, align 8, !tbaa !57
  tail call void @lto_output_var_decl_index(ptr noundef %102, ptr noundef %103, ptr noundef nonnull %1) #16
  br label %111

104:                                              ; preds = %35
  %105 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !57
  tail call void @lto_output_uleb128_stream(ptr noundef %106, i64 noundef 242) #16
  %107 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !56
  %109 = load ptr, ptr %105, align 8, !tbaa !57
  tail call void @lto_output_var_decl_index(ptr noundef %108, ptr noundef %109, ptr noundef nonnull %1) #16
  br label %111

110:                                              ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.3) #16
  br label %111

111:                                              ; preds = %37, %44, %50, %64, %70, %80, %86, %92, %98, %104, %110, %29, %26, %4
  ret void
}

declare void @lto_output_field_decl_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lto_output_fn_decl_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @lto_output_var_decl_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lto_output_type_decl_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lto_output_namespace_decl_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lto_output_type_ref_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lto_output_sleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @sorry(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind uwtable
define internal fastcc void @output_string(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #9 !prof !34 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  tail call void @lto_output_uleb128_stream(ptr noundef %1, i64 noundef 0) #16
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2)
  %7 = trunc i64 %6 to i32
  %8 = add i32 %7, 1
  tail call fastcc void @output_string_with_length(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %8)
  br label %10

9:                                                ; preds = %3
  tail call void @lto_output_uleb128_stream(ptr noundef %1, i64 noundef 1) #16
  br label %10

10:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @output_string_with_length(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = alloca %struct.string_slot, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %6 = add i32 %3, 1
  %7 = zext i32 %6 to i64
  %8 = tail call ptr @xmalloc(i64 noundef %7) #16
  %9 = zext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %2, i64 %9, i1 false)
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  store i8 0, ptr %10, align 1, !tbaa !46
  store ptr %8, ptr %5, align 8, !tbaa !62
  %11 = getelementptr inbounds %struct.string_slot, ptr %5, i64 0, i32 1
  store i32 %3, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.string_slot, ptr %5, i64 0, i32 2
  store i32 0, ptr %12, align 4, !tbaa !257
  %13 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = call ptr @htab_find_slot(ptr noundef %14, ptr noundef nonnull %5, i32 noundef 1) #16
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  %21 = getelementptr inbounds %struct.lto_output_stream, ptr %20, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !72
  %23 = call ptr @xmalloc(i64 noundef 16) #16
  store ptr %8, ptr %23, align 8, !tbaa !62
  %24 = getelementptr inbounds %struct.string_slot, ptr %23, i64 0, i32 1
  store i32 %3, ptr %24, align 8, !tbaa !64
  %25 = getelementptr inbounds %struct.string_slot, ptr %23, i64 0, i32 2
  store i32 %22, ptr %25, align 4, !tbaa !257
  store ptr %23, ptr %15, align 8, !tbaa !35
  %26 = zext i32 %22 to i64
  call void @lto_output_uleb128_stream(ptr noundef %1, i64 noundef %26) #16
  call void @lto_output_uleb128_stream(ptr noundef %20, i64 noundef %9) #16
  %27 = icmp eq i32 %3, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %18
  %29 = zext i32 %3 to i64
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ 0, %28 ], [ %34, %30 ]
  %32 = getelementptr inbounds i8, ptr %8, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !46
  call void @lto_output_1_stream(ptr noundef %20, i8 noundef signext %33) #16
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %29
  br i1 %35, label %40, label %30, !llvm.loop !258

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.string_slot, ptr %16, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !257
  %39 = zext i32 %38 to i64
  call void @lto_output_uleb128_stream(ptr noundef %1, i64 noundef %39) #16
  call void @free(ptr noundef %8)
  br label %40

40:                                               ; preds = %30, %18, %36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bitpack_delete(ptr noundef) local_unnamed_addr #3

declare void @internal_error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @bitpack_create() local_unnamed_addr #3

declare void @bp_pack_value(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i16 @decl_init_priority_lookup(ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lto_output_chain(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #9 !prof !34 {
  %4 = tail call i32 @list_length(ptr noundef %1) #16
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  tail call void @lto_output_sleb128_stream(ptr noundef %7, i64 noundef %5) #16
  %8 = icmp sgt i32 %4, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = icmp eq i8 %2, 0
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi ptr [ %1, %9 ], [ %15, %18 ]
  %13 = phi i32 [ 0, %9 ], [ %19, %18 ]
  %14 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  store ptr null, ptr %14, align 8, !tbaa !46
  br i1 %10, label %17, label %16

16:                                               ; preds = %11
  tail call fastcc void @lto_output_tree_ref(ptr noundef %0, ptr noundef %12)
  br label %18

17:                                               ; preds = %11
  tail call void @lto_output_tree(ptr noundef %0, ptr noundef %12, i8 noundef zeroext 0)
  br label %18

18:                                               ; preds = %16, %17
  store ptr %15, ptr %14, align 8, !tbaa !46
  %19 = add nuw nsw i32 %13, 1
  %20 = icmp eq i32 %19, %4
  br i1 %20, label %21, label %11, !llvm.loop !259

21:                                               ; preds = %18, %3
  ret void
}

declare i32 @list_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lto_output_location(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.expanded_location, align 8
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  tail call void @lto_output_uleb128_stream(ptr noundef %7, i64 noundef 1) #16
  br label %27

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %1) #16
  %9 = load ptr, ptr %3, align 8, !tbaa.struct !260
  %10 = getelementptr inbounds i8, ptr %3, i64 8
  %11 = load i32, ptr %10, align 8, !tbaa.struct !261
  %12 = getelementptr inbounds i8, ptr %3, i64 12
  %13 = load i32, ptr %12, align 4, !tbaa.struct !262
  %14 = getelementptr inbounds i8, ptr %3, i64 16
  %15 = load i8, ptr %14, align 8, !tbaa.struct !263
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  %16 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  call fastcc void @output_string(ptr noundef %0, ptr noundef %17, ptr noundef %9)
  %18 = sext i32 %11 to i64
  %19 = load ptr, ptr %16, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %19, i64 noundef %18) #16
  %20 = sext i32 %13 to i64
  %21 = load ptr, ptr %16, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %21, i64 noundef %20) #16
  %22 = zext i8 %15 to i64
  %23 = load ptr, ptr %16, align 8, !tbaa !57
  call void @lto_output_sleb128_stream(ptr noundef %23, i64 noundef %22) #16
  %24 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 7
  store ptr %9, ptr %24, align 8, !tbaa !264
  %25 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 8
  store i32 %11, ptr %25, align 8, !tbaa !265
  %26 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 9
  store i32 %13, ptr %26, align 4, !tbaa !266
  br label %27

27:                                               ; preds = %8, %5
  ret void
}

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #3

declare ptr @tree_block(ptr noundef) local_unnamed_addr #3

declare ptr @lto_bitmap_alloc() local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @lto_new_out_decl_state() local_unnamed_addr #3

declare void @lto_push_out_decl_state(ptr noundef) local_unnamed_addr #3

declare ptr @lto_pop_out_decl_state() local_unnamed_addr #3

declare void @lto_record_function_out_decl_state(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @output_cgraph(ptr noundef) local_unnamed_addr #3

declare void @lto_bitmap_free(ptr noundef) local_unnamed_addr #3

declare void @lto_streamer_init() local_unnamed_addr #3

declare void @push_cfun(ptr noundef) local_unnamed_addr #3

declare void @renumber_gimple_stmt_uids() local_unnamed_addr #3

declare void @pop_cfun() local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare i32 @lookup_stmt_eh_lp_fn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @lto_get_decl_name_mapping(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lto_get_section_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lto_get_function_in_decl_state(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lto_free_section_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lto_output_decl_state_streams(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 11
  br label %4

4:                                                ; preds = %2, %41
  %5 = phi i64 [ 0, %2 ], [ %42, %41 ]
  %6 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %1, i64 0, i64 %5, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !223
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %7, align 8, !tbaa !74
  %11 = zext i32 %10 to i64
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi i64 [ %11, %9 ], [ 0, %4 ]
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %12, %38
  %16 = phi i64 [ %39, %38 ], [ 0, %12 ]
  %17 = load ptr, ptr %6, align 8, !tbaa !223
  %18 = getelementptr inbounds %struct.VEC_tree_base, ptr %17, i64 0, i32 2, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = load ptr, ptr %3, align 8, !tbaa !59
  %21 = tail call zeroext i8 @lto_streamer_cache_lookup(ptr noundef %20, ptr noundef %19, ptr noundef null) #16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  tail call void @lto_output_tree(ptr noundef %0, ptr noundef %19, i8 noundef zeroext 0)
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i32, ptr @flag_wpa, align 4, !tbaa !50
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %24
  %28 = load i64, ptr %19, align 8
  %29 = and i64 %28, 134283263
  %30 = icmp eq i64 %29, 134217760
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %19, i64 0, i32 2
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 33554432
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = or i64 %28, 4194304
  store i64 %37, ptr %19, align 8
  br label %38

38:                                               ; preds = %36, %31, %27, %24
  %39 = add nuw nsw i64 %16, 1
  %40 = icmp eq i64 %39, %13
  br i1 %40, label %41, label %15, !llvm.loop !267

41:                                               ; preds = %38, %12
  %42 = add nuw nsw i64 %5, 1
  %43 = icmp eq i64 %42, 7
  br i1 %43, label %44, label %4, !llvm.loop !268

44:                                               ; preds = %41
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lto_output_decl_state_refs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !prof !34 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct.lto_out_decl_state, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !269
  %9 = icmp eq ptr %8, null
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16
  %11 = select i1 %9, ptr %10, ptr %8
  %12 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = call zeroext i8 @lto_streamer_cache_lookup(ptr noundef %13, ptr noundef %11, ptr noundef nonnull %6) #16
  %15 = load i32, ptr %6, align 4, !tbaa !50
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2256, ptr noundef nonnull @.str.3) #16
  br label %18

18:                                               ; preds = %3, %17
  call void @lto_output_data_stream(ptr noundef %1, ptr noundef nonnull %6, i64 noundef 4) #16
  br label %19

19:                                               ; preds = %18, %45
  %20 = phi i64 [ 0, %18 ], [ %46, %45 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %21 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %2, i64 0, i64 %20, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !223
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, ptr %22, align 8, !tbaa !74
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i32 [ %25, %24 ], [ 0, %19 ]
  store i32 %27, ptr %4, align 4, !tbaa !50
  call void @lto_output_data_stream(ptr noundef %1, ptr noundef nonnull %4, i64 noundef 4) #16
  %28 = load i32, ptr %4, align 4, !tbaa !50
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %26, %40
  %31 = phi i64 [ %41, %40 ], [ 0, %26 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %32 = load ptr, ptr %21, align 8, !tbaa !223
  %33 = getelementptr inbounds %struct.VEC_tree_base, ptr %32, i64 0, i32 2, i64 %31
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = load ptr, ptr %12, align 8, !tbaa !59
  %36 = call zeroext i8 @lto_streamer_cache_lookup(ptr noundef %35, ptr noundef %34, ptr noundef nonnull %5) #16
  %37 = load i32, ptr %5, align 4, !tbaa !50
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2220, ptr noundef nonnull @.str.3) #16
  br label %40

40:                                               ; preds = %39, %30
  call void @lto_output_data_stream(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  %41 = add nuw nsw i64 %31, 1
  %42 = load i32, ptr %4, align 4, !tbaa !50
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %30, label %45, !llvm.loop !270

45:                                               ; preds = %40, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  %46 = add nuw nsw i64 %20, 1
  %47 = icmp eq i64 %46, 7
  br i1 %47, label %48, label %19, !llvm.loop !271

48:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret void
}

declare void @lto_write_options() local_unnamed_addr #3

declare void @lto_cgraph_encoder_delete(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_node_for_asm(ptr noundef) local_unnamed_addr #3

declare { ptr, i32 } @cgraph_node_set_find(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @lto_streamer_cache_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @write_symbols_of_kind(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.lto_output_stream, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #16
  %5 = load ptr, ptr @lto_function_decl_states, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8, !tbaa !241
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %3 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %11 = tail call ptr @lto_get_out_decl_state() #16
  %12 = zext nneg i32 %0 to i64
  %13 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %11, i64 0, i64 %12, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !223
  call fastcc void @write_symbol_vec(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %14, ptr noundef %2)
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %9
  %17 = zext i32 %10 to i64
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %25, %18 ]
  %20 = load ptr, ptr @lto_function_decl_states, align 8
  %21 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %20, i64 0, i32 2, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %22, i64 0, i64 %12, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !223
  call fastcc void @write_symbol_vec(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %24, ptr noundef %2)
  %25 = add nuw nsw i64 %19, 1
  %26 = icmp eq i64 %25, %17
  br i1 %26, label %27, label %18, !llvm.loop !272

27:                                               ; preds = %18, %9
  call void @lto_write_stream(ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @write_symbol_vec(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #9 !prof !34 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = icmp eq ptr %2, null
  br label %10

10:                                               ; preds = %116, %4
  %11 = phi i64 [ %117, %116 ], [ 0, %4 ]
  br i1 %9, label %19, label %12

12:                                               ; preds = %10
  %13 = load i32, ptr %2, align 8, !tbaa !74
  %14 = zext i32 %13 to i64
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.VEC_tree_base, ptr %2, i64 0, i32 2, i64 %11
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  br label %19

19:                                               ; preds = %10, %12, %16
  %20 = phi ptr [ %18, %16 ], [ null, %12 ], [ null, %10 ]
  %21 = phi i1 [ false, %16 ], [ true, %12 ], [ true, %10 ]
  br i1 %21, label %118, label %22

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %23 = load i64, ptr %20, align 8
  %24 = and i64 %23, 134217728
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %116, label %26

26:                                               ; preds = %22
  %27 = call zeroext i8 @is_builtin_fn(ptr noundef nonnull %20) #16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %116

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %20, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 2048
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %116

34:                                               ; preds = %29
  %35 = load i64, ptr %20, align 8
  %36 = trunc i64 %35 to i16
  switch i16 %36, label %37 [
    i16 36, label %116
    i16 32, label %38
    i16 29, label %38
  ]

37:                                               ; preds = %34
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2314, ptr noundef nonnull @.str.3) #16
  br label %38

38:                                               ; preds = %34, %34, %37
  %39 = call ptr @decl_assembler_name(ptr noundef nonnull %20) #16
  %40 = getelementptr inbounds %struct.tree_identifier, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = load i8, ptr %41, align 1, !tbaa !46
  %43 = icmp eq i8 %42, 42
  %44 = zext i1 %43 to i64
  %45 = getelementptr inbounds i8, ptr %41, i64 %44
  %46 = call zeroext i8 @lto_streamer_cache_lookup(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull %7) #16
  %47 = load i32, ptr %7, align 4, !tbaa !50
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2325, ptr noundef nonnull @.str.3) #16
  br label %50

50:                                               ; preds = %38, %49
  %51 = load i32, ptr %7, align 4, !tbaa !50
  %52 = call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %51) #16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %116

54:                                               ; preds = %50
  %55 = load i32, ptr %7, align 4, !tbaa !50
  %56 = call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %55) #16
  %57 = load i64, ptr %30, align 8
  %58 = and i64 %57, 33554432
  %59 = icmp eq i64 %58, 0
  %60 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %20, i64 0, i32 4
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 128
  %63 = icmp eq i32 %62, 0
  br i1 %59, label %67, label %64

64:                                               ; preds = %54
  br i1 %63, label %66, label %65

65:                                               ; preds = %64
  store i32 3, ptr %5, align 4, !tbaa !50
  br label %74

66:                                               ; preds = %64
  store i32 2, ptr %5, align 4, !tbaa !50
  br label %74

67:                                               ; preds = %54
  br i1 %63, label %69, label %68

68:                                               ; preds = %67
  store i32 1, ptr %5, align 4, !tbaa !50
  br label %74

69:                                               ; preds = %67
  %70 = and i32 %61, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store i32 4, ptr %5, align 4, !tbaa !50
  br label %74

73:                                               ; preds = %69
  store i32 0, ptr %5, align 4, !tbaa !50
  br label %74

74:                                               ; preds = %68, %73, %72, %65, %66
  %75 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %20, i64 0, i32 4
  %76 = load i32, ptr %75, align 8
  %77 = lshr i32 %76, 10
  %78 = and i32 %77, 3
  switch i32 %78, label %83 [
    i32 0, label %79
    i32 1, label %80
    i32 2, label %81
    i32 3, label %82
  ]

79:                                               ; preds = %74
  store i32 0, ptr %6, align 4, !tbaa !50
  br label %84

80:                                               ; preds = %74
  store i32 1, ptr %6, align 4, !tbaa !50
  br label %84

81:                                               ; preds = %74
  store i32 3, ptr %6, align 4, !tbaa !50
  br label %84

82:                                               ; preds = %74
  store i32 2, ptr %6, align 4, !tbaa !50
  br label %84

83:                                               ; preds = %74
  unreachable

84:                                               ; preds = %82, %81, %80, %79
  %85 = load i32, ptr %5, align 4, !tbaa !50
  %86 = icmp eq i32 %85, 4
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.tree_decl_common, ptr %20, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !46
  %90 = icmp eq ptr %89, null
  br i1 %90, label %102, label %91

91:                                               ; preds = %87
  %92 = load i64, ptr %89, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 23
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.tree_int_cst, ptr %89, i64 0, i32 1
  %97 = getelementptr inbounds %struct.tree_int_cst, ptr %89, i64 0, i32 1, i32 1
  %98 = load i64, ptr %97, align 8, !tbaa !46
  %99 = shl i64 %98, 32
  %100 = load i64, ptr %96, align 8, !tbaa !46
  %101 = or i64 %99, %100
  br label %102

102:                                              ; preds = %84, %87, %91, %95
  %103 = phi i64 [ %101, %95 ], [ 0, %91 ], [ 0, %87 ], [ 0, %84 ]
  store i64 %103, ptr %8, align 8, !tbaa !70
  %104 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %20, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !46
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.tree_identifier, ptr %105, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !46
  br label %110

110:                                              ; preds = %102, %107
  %111 = phi ptr [ %109, %107 ], [ @.str.11, %102 ]
  %112 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45)
  %113 = add i64 %112, 1
  call void @lto_output_data_stream(ptr noundef %1, ptr noundef nonnull %45, i64 noundef %113) #16
  %114 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %111)
  %115 = add i64 %114, 1
  call void @lto_output_data_stream(ptr noundef %1, ptr noundef %111, i64 noundef %115) #16
  call void @lto_output_data_stream(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 1) #16
  call void @lto_output_data_stream(ptr noundef %1, ptr noundef nonnull %6, i64 noundef 1) #16
  call void @lto_output_data_stream(ptr noundef %1, ptr noundef nonnull %8, i64 noundef 8) #16
  call void @lto_output_data_stream(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 4) #16
  br label %116

116:                                              ; preds = %34, %50, %22, %26, %29, %110
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  %117 = add nuw i64 %11, 1
  br label %10, !llvm.loop !273

118:                                              ; preds = %19
  ret void
}

declare zeroext i8 @is_builtin_fn(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !41, i64 0}
!55 = !{!"output_block", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !41, i64 64, !41, i64 68, !37, i64 72, !36, i64 80}
!56 = !{!55, !36, i64 8}
!57 = !{!55, !36, i64 16}
!58 = !{!55, !36, i64 24}
!59 = !{!55, !36, i64 80}
!60 = !{!55, !36, i64 32}
!61 = !{!55, !36, i64 40}
!62 = !{!63, !36, i64 0}
!63 = !{!"string_slot", !36, i64 0, !41, i64 8, !41, i64 12}
!64 = !{!63, !41, i64 8}
!65 = distinct !{!65, !52, !53}
!66 = !{!67, !36, i64 16}
!67 = !{!"bitpack_d", !42, i64 0, !42, i64 8, !36, i64 16}
!68 = !{!69, !41, i64 0}
!69 = !{!"VEC_bitpack_word_t_base", !41, i64 0, !41, i64 4, !37, i64 8}
!70 = !{!42, !42, i64 0}
!71 = distinct !{!71, !52, !53}
!72 = !{!73, !41, i64 32}
!73 = !{!"lto_output_stream", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32}
!74 = !{!75, !41, i64 0}
!75 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!76 = !{i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 8, i64 24, !46}
!77 = distinct !{!77, !52, !53}
!78 = !{i64 0, i64 8, !70, i64 8, i64 8, !70, i64 16, i64 4, !50}
!79 = !{i64 0, i64 8, !70, i64 8, i64 4, !50}
!80 = distinct !{!80, !52, !53}
!81 = distinct !{!81, !52, !53}
!82 = distinct !{!82, !52, !53}
!83 = distinct !{!83, !52, !53}
!84 = distinct !{!84, !52, !53}
!85 = !{!86, !41, i64 0}
!86 = !{!"VEC_constructor_elt_base", !41, i64 0, !41, i64 4, !37, i64 8}
!87 = !{!88, !36, i64 8}
!88 = !{!"constructor_elt_d", !36, i64 0, !36, i64 8}
!89 = !{!88, !36, i64 0}
!90 = distinct !{!90, !52, !53}
!91 = !{!92, !43, i64 0}
!92 = !{!"lto_function_header", !93, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32}
!93 = !{!"lto_header", !43, i64 0, !43, i64 2, !41, i64 4}
!94 = !{!92, !43, i64 2}
!95 = !{!92, !41, i64 4}
!96 = !{!92, !41, i64 16}
!97 = !{!92, !41, i64 24}
!98 = !{!92, !41, i64 28}
!99 = !{!92, !41, i64 32}
!100 = !{!101, !36, i64 8}
!101 = !{!"cgraph_node_set_def", !36, i64 0, !36, i64 8, !36, i64 16}
!102 = !{!103, !41, i64 0}
!103 = !{!"VEC_cgraph_node_ptr_base", !41, i64 0, !41, i64 4, !37, i64 8}
!104 = !{!105, !36, i64 0}
!105 = !{!"cgraph_node", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !106, i64 144, !108, i64 184, !109, i64 224, !110, i64 232, !111, i64 256, !42, i64 288, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 309, !41, i64 309}
!106 = !{!"cgraph_local_info", !36, i64 0, !107, i64 8, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32}
!107 = !{!"inline_summary", !42, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!108 = !{!"cgraph_global_info", !42, i64 0, !42, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !37, i64 36}
!109 = !{!"cgraph_rtl_info", !41, i64 0}
!110 = !{!"cgraph_clone_info", !36, i64 0, !36, i64 8, !36, i64 16}
!111 = !{!"cgraph_thunk_info", !42, i64 0, !42, i64 8, !36, i64 16, !37, i64 24, !37, i64 25, !37, i64 26}
!112 = !{!55, !36, i64 48}
!113 = !{!114, !41, i64 120}
!114 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!115 = !{!114, !36, i64 56}
!116 = !{!114, !36, i64 64}
!117 = !{!114, !36, i64 72}
!118 = !{!114, !36, i64 24}
!119 = !{!120, !36, i64 16}
!120 = !{!"gimple_df", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !121, i64 32, !121, i64 48, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !41, i64 96, !122, i64 104}
!121 = !{!"pt_solution", !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !36, i64 8}
!122 = !{!"ssa_operands", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16, !36, i64 24, !36, i64 32}
!123 = distinct !{!123, !52, !53}
!124 = !{!114, !36, i64 0}
!125 = !{!126, !36, i64 0}
!126 = !{!"eh_status", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40}
!127 = !{!128, !41, i64 24}
!128 = !{!"eh_region_d", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !37, i64 32, !36, i64 56, !36, i64 64, !36, i64 72, !37, i64 80}
!129 = !{!126, !36, i64 8}
!130 = !{!131, !41, i64 0}
!131 = !{!"VEC_eh_region_base", !41, i64 0, !41, i64 4, !37, i64 8}
!132 = !{!128, !41, i64 28}
!133 = !{!128, !36, i64 0}
!134 = !{!128, !36, i64 8}
!135 = !{!128, !36, i64 16}
!136 = !{!137, !36, i64 16}
!137 = !{!"eh_catch_d", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!138 = !{!137, !36, i64 24}
!139 = !{!137, !36, i64 32}
!140 = distinct !{!140, !52, !53}
!141 = !{!128, !36, i64 56}
!142 = !{!143, !41, i64 32}
!143 = !{!"eh_landing_pad_d", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!144 = distinct !{!144, !52, !53}
!145 = !{!126, !36, i64 16}
!146 = !{!147, !41, i64 0}
!147 = !{!"VEC_eh_landing_pad_base", !41, i64 0, !41, i64 4, !37, i64 8}
!148 = !{!143, !36, i64 0}
!149 = !{!143, !36, i64 8}
!150 = !{!143, !36, i64 16}
!151 = distinct !{!151, !52, !53}
!152 = !{!126, !36, i64 32}
!153 = distinct !{!153, !52, !53}
!154 = !{!155, !37, i64 2035}
!155 = !{!"gcc_target", !156, i64 0, !158, i64 368, !159, i64 664, !41, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !36, i64 840, !36, i64 848, !36, i64 856, !36, i64 864, !36, i64 872, !36, i64 880, !36, i64 888, !36, i64 896, !36, i64 904, !36, i64 912, !36, i64 920, !36, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !36, i64 1024, !36, i64 1032, !36, i64 1040, !36, i64 1048, !36, i64 1056, !42, i64 1064, !42, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !160, i64 1176, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !42, i64 1464, !161, i64 1472, !36, i64 1664, !36, i64 1672, !36, i64 1680, !36, i64 1688, !36, i64 1696, !36, i64 1704, !36, i64 1712, !36, i64 1720, !36, i64 1728, !36, i64 1736, !36, i64 1744, !36, i64 1752, !36, i64 1760, !36, i64 1768, !36, i64 1776, !162, i64 1784, !163, i64 1792, !164, i64 1896, !165, i64 1968, !36, i64 2016, !37, i64 2024, !37, i64 2025, !37, i64 2026, !37, i64 2027, !37, i64 2028, !37, i64 2029, !37, i64 2030, !37, i64 2031, !37, i64 2032, !37, i64 2033, !37, i64 2034, !37, i64 2035}
!156 = !{!"asm_out", !36, i64 0, !36, i64 8, !36, i64 16, !157, i64 24, !157, i64 56, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360}
!157 = !{!"asm_int_op", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!158 = !{!"sched", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288}
!159 = !{!"vectorize", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!160 = !{!"addr_space", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!161 = !{!"calls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184}
!162 = !{!"c", !36, i64 0}
!163 = !{!"cxx", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96}
!164 = !{!"emutls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !37, i64 65}
!165 = !{!"target_option_hooks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!166 = distinct !{!166, !52, !53}
!167 = !{!168, !41, i64 0}
!168 = !{!"VEC_uchar_base", !41, i64 0, !41, i64 4, !37, i64 8}
!169 = distinct !{!169, !52, !53}
!170 = !{!114, !36, i64 8}
!171 = !{!172, !41, i64 96}
!172 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!173 = !{!174}
!174 = distinct !{!174, !175, !"gsi_start_bb: argument 0"}
!175 = distinct !{!175, !"gsi_start_bb"}
!176 = !{!177, !36, i64 0}
!177 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!178 = !{!179, !36, i64 0}
!179 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!180 = !{!177, !36, i64 8}
!181 = !{!172, !41, i64 80}
!182 = !{!172, !42, i64 72}
!183 = !{!172, !41, i64 84}
!184 = !{!172, !41, i64 88}
!185 = !{!186}
!186 = distinct !{!186, !187, !"gsi_start_bb: argument 0"}
!187 = distinct !{!187, !"gsi_start_bb"}
!188 = !{!189, !36, i64 0}
!189 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!190 = distinct !{!190, !52, !53}
!191 = !{!189, !36, i64 16}
!192 = distinct !{!192, !52, !53}
!193 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!194 = !{!195, !36, i64 24}
!195 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!196 = !{!172, !36, i64 0}
!197 = !{}
!198 = !{!199, !36, i64 0}
!199 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!200 = !{!201, !41, i64 40}
!201 = !{!"phi_arg_d", !195, i64 0, !36, i64 32, !41, i64 40}
!202 = distinct !{!202, !52, !53}
!203 = distinct !{!203, !52, !53}
!204 = distinct !{!204, !52, !53}
!205 = !{!206, !41, i64 48}
!206 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!207 = !{!206, !41, i64 32}
!208 = !{!172, !36, i64 8}
!209 = !{!210, !41, i64 0}
!210 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!211 = !{!199, !36, i64 8}
!212 = !{!199, !41, i64 52}
!213 = !{!199, !42, i64 56}
!214 = !{!199, !41, i64 48}
!215 = distinct !{!215, !52, !53}
!216 = distinct !{!216, !52, !53}
!217 = !{!172, !36, i64 56}
!218 = distinct !{!218, !52, !53}
!219 = !{!105, !36, i64 144}
!220 = !{!221, !41, i64 8}
!221 = !{!"lto_tree_ref_table", !36, i64 0, !41, i64 8}
!222 = !{!221, !36, i64 0}
!223 = !{!224, !36, i64 16}
!224 = !{!"lto_tree_ref_encoder", !36, i64 0, !41, i64 8, !36, i64 16}
!225 = !{!75, !41, i64 4}
!226 = distinct !{!226, !52, !53}
!227 = !{!224, !41, i64 8}
!228 = distinct !{!228, !52, !53}
!229 = distinct !{!229, !52, !53}
!230 = !{!55, !37, i64 72}
!231 = !{!232, !36, i64 0}
!232 = !{!"varpool_node", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36}
!233 = distinct !{!233, !52, !53}
!234 = distinct !{!234, !52, !53}
!235 = !{!236, !41, i64 0}
!236 = !{!"VEC_alias_pair_base", !41, i64 0, !41, i64 4, !37, i64 8}
!237 = !{!238, !36, i64 0}
!238 = !{!"alias_pair", !36, i64 0, !36, i64 8}
!239 = !{!238, !36, i64 8}
!240 = distinct !{!240, !52, !53}
!241 = !{!242, !41, i64 0}
!242 = !{!"VEC_lto_out_decl_state_ptr_base", !41, i64 0, !41, i64 4, !37, i64 8}
!243 = distinct !{!243, !52, !53}
!244 = !{!245, !43, i64 0}
!245 = !{!"lto_decl_header", !93, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!246 = !{!245, !43, i64 2}
!247 = !{!245, !41, i64 4}
!248 = !{!245, !41, i64 12}
!249 = distinct !{!249, !52, !53}
!250 = distinct !{!250, !52, !53}
!251 = !{!245, !41, i64 8}
!252 = !{!245, !41, i64 16}
!253 = !{!245, !41, i64 20}
!254 = distinct !{!254, !52, !53}
!255 = !{!256, !36, i64 168}
!256 = !{!"lto_out_decl_state", !37, i64 0, !36, i64 168, !36, i64 176}
!257 = !{!63, !41, i64 12}
!258 = distinct !{!258, !52, !53}
!259 = distinct !{!259, !52, !53}
!260 = !{i64 0, i64 8, !35, i64 8, i64 4, !50, i64 12, i64 4, !50, i64 16, i64 1, !46}
!261 = !{i64 0, i64 4, !50, i64 4, i64 4, !50, i64 8, i64 1, !46}
!262 = !{i64 0, i64 4, !50, i64 4, i64 1, !46}
!263 = !{i64 0, i64 1, !46}
!264 = !{!55, !36, i64 56}
!265 = !{!55, !41, i64 64}
!266 = !{!55, !41, i64 68}
!267 = distinct !{!267, !52, !53}
!268 = distinct !{!268, !52, !53}
!269 = !{!256, !36, i64 176}
!270 = distinct !{!270, !52, !53}
!271 = distinct !{!271, !52, !53}
!272 = distinct !{!272, !52, !53}
!273 = distinct !{!273, !52, !53}
