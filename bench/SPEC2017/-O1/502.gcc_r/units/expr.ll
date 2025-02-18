; ModuleID = 'expr.c'
source_filename = "expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.insn_data = type { ptr, %union.anon, ptr, ptr, i8, i8, i8, i8 }
%union.anon = type { ptr }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.rtl_hooks = type { ptr, ptr, ptr, ptr, ptr }
%struct.convert_optab_d = type { i32, ptr, ptr, [87 x [87 x %struct.optab_handlers]] }
%struct.optab_handlers = type { i32 }
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
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.ssaexpand = type { ptr, ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.real_value = type { i32, [3 x i64] }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.processor_costs = type { i32, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, [3 x i32], [3 x i32], i32, [2 x i32], [2 x i32], i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.stringop_algs], [2 x %struct.stringop_algs], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stringop_algs = type { i32, [4 x %struct.stringop_strategy] }
%struct.stringop_strategy = type { i32, i32 }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.store_by_pieces_d = type { ptr, ptr, i32, i32, i64, i64, ptr, ptr, i32 }
%struct.tree_complex = type { %struct.tree_common, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.tree_vector = type { %struct.tree_common, ptr }
%struct.separate_ops = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.mem_address = type { ptr, ptr, ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon.0, ptr }
%union.anon.0 = type { ptr }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, ptr, i32 }
%struct._var_map = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.tree_fixed_cst = type { %struct.tree_common, ptr }
%struct.fixed_value = type { %struct.double_int, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@direct_store = internal unnamed_addr global [87 x i8] zeroinitializer, align 16
@direct_load = internal unnamed_addr global [87 x i8] zeroinitializer, align 16
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@float_extend_from_mem = internal unnamed_addr global [87 x [87 x i8]] zeroinitializer, align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str = private unnamed_addr constant [7 x i8] c"expr.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@rtl_hooks = external local_unnamed_addr global %struct.rtl_hooks, align 8
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@mode_precision = external local_unnamed_addr constant [87 x i16], align 16
@convert_optab_table = external global [17 x %struct.convert_optab_d], align 16
@optimize = external local_unnamed_addr global i32, align 4
@word_mode = external local_unnamed_addr global i32, align 4
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@ix86_cost = external local_unnamed_addr global ptr, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@optab_table = external global [159 x %struct.optab_d], align 16
@ptr_mode = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@block_move_fn = internal global ptr null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"memcpy\00", align 1
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@block_clear_fn = dso_local local_unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"memset\00", align 1
@setmem_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@mode_mask_array = external local_unnamed_addr constant [87 x i64], align 16
@reload_completed = external local_unnamed_addr global i32, align 4
@reload_in_progress = external local_unnamed_addr global i32, align 4
@target_flags = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@libfunc_table = external local_unnamed_addr global [14 x ptr], align 16
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@pic_offset_table_rtx = external local_unnamed_addr global ptr, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@input_location = external local_unnamed_addr global i32, align 4
@mode_2xwider = external local_unnamed_addr constant [87 x i8], align 16
@flag_trapv = external local_unnamed_addr global i32, align 4
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@currently_expanding_to_rtl = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"%Kinvalid use of %<__builtin_va_arg_pack ()%>\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"%Kcall to %qs declared with attribute error: %s\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"%Kcall to %qs declared with attribute warning: %s\00", align 1
@gt_ggc_r_gt_expr_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @block_move_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16
@cse_not_expected = dso_local local_unnamed_addr global i32 0, align 4
@movmem_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@cmpstr_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@cmpstrn_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@cmpmem_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_add_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_sub_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_ior_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_and_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_xor_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_nand_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_old_add_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_old_sub_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_old_ior_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_old_and_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_old_xor_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_old_nand_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_new_add_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_new_sub_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_new_ior_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_new_and_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_new_xor_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_new_nand_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_compare_and_swap = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_lock_test_and_set = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_lock_release = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@volatile_ok = external local_unnamed_addr global i32, align 4
@emit_block_move_libcall_fn.emitted_extern = internal unnamed_addr global i1 false, align 1
@clear_storage_libcall_fn.emitted_extern = internal unnamed_addr global i1 false, align 1
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@flag_optimize_sibling_calls = external local_unnamed_addr global i32, align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@flag_evaluation_order = external local_unnamed_addr global i32, align 4
@SA = external local_unnamed_addr global %struct.ssaexpand, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"./ssaexpand.h\00", align 1
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@flag_pic = external local_unnamed_addr global i32, align 4
@mode_nunits = external local_unnamed_addr constant [87 x i8], align 16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !185 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !186
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !185 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !186
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !185 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !196

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !190
  %11 = load i8, ptr %3, align 1, !tbaa !197
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !185 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !196

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !190
  %11 = load i8, ptr %3, align 1, !tbaa !197
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !185 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !186
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !196

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #22
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !190
  %11 = load i8, ptr %3, align 1, !tbaa !197
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !185 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !186
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !185 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !198
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !199
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !196

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !198
  store i8 %12, ptr %4, align 1, !tbaa !197
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !185 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !198
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !199
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !196

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !198
  store i8 %12, ptr %4, align 1, !tbaa !197
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !185 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !186
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !198
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !199
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !196

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !198
  store i8 %12, ptr %4, align 1, !tbaa !197
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !185 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #22
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !185 {
  %2 = load i32, ptr %0, align 8, !tbaa !200
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !185 {
  %2 = load i32, ptr %0, align 8, !tbaa !200
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !185 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !186
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !201
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !185 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !186
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !201
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !185 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !185 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !185 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !185 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #22
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
  br i1 %23, label %7, label %24, !llvm.loop !202

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !185 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @init_expr_target() local_unnamed_addr #9 !prof !205 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #22
  %2 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !186
  %3 = tail call ptr @gen_rtx_MEM(i32 noundef 0, ptr noundef %2) #22
  %4 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !186
  %5 = tail call ptr @gen_rtx_MEM(i32 noundef 0, ptr noundef %4) #22
  %6 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef -1) #22
  %7 = tail call ptr @rtx_alloc_stat(i32 noundef 8) #22
  %8 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef null, ptr noundef null) #22
  %9 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  store ptr %8, ptr %9, align 8, !tbaa !197
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %12 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %13

13:                                               ; preds = %0, %63
  %14 = phi i64 [ 0, %0 ], [ %64, %63 ]
  %15 = getelementptr inbounds [87 x i8], ptr @direct_store, i64 0, i64 %14
  store i8 0, ptr %15, align 1, !tbaa !197
  %16 = getelementptr inbounds [87 x i8], ptr @direct_load, i64 0, i64 %14
  store i8 0, ptr %16, align 1, !tbaa !197
  %17 = load i32, ptr %3, align 8
  %18 = shl nuw nsw i64 %14, 16
  %19 = and i32 %17, -16711681
  %20 = trunc i64 %18 to i32
  %21 = or disjoint i32 %19, %20
  store i32 %21, ptr %3, align 8
  %22 = load i32, ptr %5, align 8
  %23 = and i32 %22, -16711681
  %24 = trunc i64 %18 to i32
  %25 = or disjoint i32 %23, %24
  store i32 %25, ptr %5, align 8
  %26 = load i32, ptr %6, align 8
  %27 = and i32 %26, -16711681
  %28 = trunc i64 %18 to i32
  %29 = or disjoint i32 %27, %28
  store i32 %29, ptr %6, align 8
  %30 = icmp ugt i64 %14, 1
  br i1 %30, label %31, label %63, !prof !206

31:                                               ; preds = %13
  %32 = trunc i64 %14 to i32
  br label %33

33:                                               ; preds = %31, %60
  %34 = phi i32 [ %61, %60 ], [ 0, %31 ]
  %35 = load i8, ptr %16, align 1, !tbaa !197
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37, !prof !207

37:                                               ; preds = %33
  %38 = load i8, ptr %15, align 1, !tbaa !197
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %63, !prof !208

40:                                               ; preds = %33, %37
  %41 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %34, i32 noundef %32) #22
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %60, label %43, !prof !209

43:                                               ; preds = %40
  %44 = load i32, ptr %10, align 8, !tbaa !197
  call void @df_ref_change_reg_with_loc(i32 noundef %44, i32 noundef %34, ptr noundef nonnull %6) #22
  store i32 %34, ptr %10, align 8, !tbaa !197
  store ptr %3, ptr %12, align 8, !tbaa !197
  store ptr %6, ptr %11, align 8, !tbaa !197
  %45 = call i32 @recog(ptr noundef %8, ptr noundef %7, ptr noundef nonnull %1) #22
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %47, label %48, !prof !210

47:                                               ; preds = %43
  store i8 1, ptr %16, align 1, !tbaa !197
  br label %48

48:                                               ; preds = %47, %43
  store ptr %5, ptr %12, align 8, !tbaa !197
  store ptr %6, ptr %11, align 8, !tbaa !197
  %49 = call i32 @recog(ptr noundef %8, ptr noundef %7, ptr noundef nonnull %1) #22
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %51, label %52, !prof !210

51:                                               ; preds = %48
  store i8 1, ptr %16, align 1, !tbaa !197
  br label %52

52:                                               ; preds = %51, %48
  store ptr %6, ptr %12, align 8, !tbaa !197
  store ptr %3, ptr %11, align 8, !tbaa !197
  %53 = call i32 @recog(ptr noundef %8, ptr noundef %7, ptr noundef nonnull %1) #22
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %56, !prof !210

55:                                               ; preds = %52
  store i8 1, ptr %15, align 1, !tbaa !197
  br label %56

56:                                               ; preds = %55, %52
  store ptr %6, ptr %12, align 8, !tbaa !197
  store ptr %5, ptr %11, align 8, !tbaa !197
  %57 = call i32 @recog(ptr noundef %8, ptr noundef %7, ptr noundef nonnull %1) #22
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %60, !prof !210

59:                                               ; preds = %56
  store i8 1, ptr %15, align 1, !tbaa !197
  br label %60

60:                                               ; preds = %56, %59, %40
  %61 = add nuw nsw i32 %34, 1
  %62 = icmp eq i32 %61, 53
  br i1 %62, label %63, label %33, !prof !211, !llvm.loop !212

63:                                               ; preds = %60, %37, %13
  %64 = add nuw nsw i64 %14, 1
  %65 = icmp eq i64 %64, 87
  br i1 %65, label %66, label %13, !prof !213, !llvm.loop !214

66:                                               ; preds = %63
  %67 = call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef 16, i32 noundef 10000) #22
  %68 = call ptr @gen_rtx_MEM(i32 noundef 0, ptr noundef %67) #22
  %69 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 8), align 8, !tbaa !197
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %108, label %71, !prof !215

71:                                               ; preds = %66
  %72 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 8), align 8, !tbaa !197
  br label %73

73:                                               ; preds = %71, %103
  %74 = phi i8 [ %69, %71 ], [ %106, %103 ]
  %75 = zext i8 %74 to i32
  %76 = icmp eq i8 %72, %74
  br i1 %76, label %103, label %77, !prof !215

77:                                               ; preds = %73, %98
  %78 = phi i8 [ %101, %98 ], [ %72, %73 ]
  %79 = zext i8 %78 to i32
  %80 = call i32 @can_extend_p(i32 noundef %75, i32 noundef %79, i32 noundef 0) #22
  %81 = icmp eq i32 %80, 2956
  br i1 %81, label %98, label %82, !prof !216

82:                                               ; preds = %77
  %83 = load i32, ptr %68, align 8
  %84 = shl nuw nsw i32 %79, 16
  %85 = and i32 %83, -16711681
  %86 = or disjoint i32 %85, %84
  store i32 %86, ptr %68, align 8
  %87 = zext i32 %80 to i64
  %88 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %87, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !217
  %90 = getelementptr inbounds %struct.insn_operand_data, ptr %89, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !219
  %92 = call i32 %91(ptr noundef nonnull %68, i32 noundef %79) #22, !prof !221
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94, !prof !222

94:                                               ; preds = %82
  %95 = zext i8 %74 to i64
  %96 = zext i8 %78 to i64
  %97 = getelementptr inbounds [87 x [87 x i8]], ptr @float_extend_from_mem, i64 0, i64 %95, i64 %96
  store i8 1, ptr %97, align 1, !tbaa !197
  br label %98

98:                                               ; preds = %82, %94, %77
  %99 = zext i8 %78 to i64
  %100 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !197
  %102 = icmp eq i8 %101, %74
  br i1 %102, label %103, label %77, !prof !223, !llvm.loop !224

103:                                              ; preds = %98, %73
  %104 = zext i8 %74 to i64
  %105 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !197
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %73, !prof !225, !llvm.loop !226

108:                                              ; preds = %103, %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #22
  ret void
}

declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @rtx_alloc_stat(i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @df_ref_change_reg_with_loc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_i00_stat(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @can_extend_p(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_expr() local_unnamed_addr #10 !prof !227 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @x_rtl, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define dso_local void @convert_move(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !228 {
  br label %4

4:                                                ; preds = %421, %352, %124, %3
  %5 = phi ptr [ %0, %3 ], [ %130, %124 ], [ %5, %352 ], [ %5, %421 ]
  %6 = phi ptr [ %1, %3 ], [ %132, %124 ], [ %356, %352 ], [ %422, %421 ]
  %7 = phi i32 [ %2, %3 ], [ %7, %124 ], [ 0, %352 ], [ %7, %421 ]
  %8 = load i32, ptr %5, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = load i32, ptr %6, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %10 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !197
  %17 = and i8 %16, -2
  %18 = icmp eq i8 %17, 8
  %19 = zext nneg i32 %13 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !197
  %22 = and i8 %21, -2
  %23 = icmp eq i8 %22, 8
  %24 = icmp slt i32 %7, 0
  %25 = icmp eq i32 %7, 0
  %26 = select i1 %25, i32 98, i32 99, !prof !229
  %27 = select i1 %24, i32 0, i32 %26, !prof !230
  %28 = xor i1 %18, %23
  br i1 %28, label %29, label %30, !prof !230

29:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 371, ptr noundef nonnull @.str.1) #22
  br label %30

30:                                               ; preds = %4, %29
  %31 = icmp eq i32 %10, 1
  br i1 %31, label %32, label %33, !prof !230

32:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 372, ptr noundef nonnull @.str.1) #22
  br label %33

33:                                               ; preds = %30, %32
  %34 = icmp eq i32 %13, 1
  br i1 %34, label %35, label %36, !prof !230

35:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 373, ptr noundef nonnull @.str.1) #22
  br label %36

36:                                               ; preds = %33, %35
  %37 = icmp eq ptr %5, %6
  br i1 %37, label %282, label %38, !prof !230

38:                                               ; preds = %36
  %39 = load i32, ptr %6, align 8
  %40 = and i32 %39, 268500991
  %41 = icmp eq i32 %40, 268435495
  br i1 %41, label %42, label %64, !prof !230

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !197
  %45 = load i32, ptr %44, align 8
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !197
  %51 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %52 = load i8, ptr %51, align 1, !tbaa !197
  %53 = icmp ult i8 %50, %52
  br i1 %53, label %64, label %54

54:                                               ; preds = %42
  %55 = and i32 %39, 134217728
  %56 = icmp eq i32 %55, 0
  %57 = lshr i32 %39, 26
  %58 = and i32 %57, 1
  %59 = select i1 %56, i32 %58, i32 -1
  %60 = icmp eq i32 %59, %7
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load ptr, ptr @rtl_hooks, align 8, !tbaa !231
  %63 = tail call ptr %62(i32 noundef %10, ptr noundef nonnull %6) #22
  br label %64

64:                                               ; preds = %61, %54, %42, %38
  %65 = phi i32 [ %10, %61 ], [ %13, %54 ], [ %13, %42 ], [ %13, %38 ]
  %66 = phi ptr [ %63, %61 ], [ %6, %54 ], [ %6, %42 ], [ %6, %38 ]
  %67 = load i32, ptr %5, align 8
  %68 = and i32 %67, 268500991
  %69 = icmp eq i32 %68, 268435495
  br i1 %69, label %70, label %71, !prof !230

70:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 390, ptr noundef nonnull @.str.1) #22
  br label %71

71:                                               ; preds = %64, %70
  %72 = icmp eq i32 %10, %65
  br i1 %72, label %82, label %73, !prof !229

73:                                               ; preds = %71
  %74 = icmp eq i32 %65, 0
  br i1 %74, label %75, label %84, !prof !233

75:                                               ; preds = %73
  %76 = load i32, ptr %66, align 8
  %77 = and i32 %76, 65535
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !201
  %81 = icmp eq i32 %80, 9
  br i1 %81, label %82, label %84

82:                                               ; preds = %75, %71
  %83 = tail call ptr @emit_move_insn(ptr noundef nonnull %5, ptr noundef %66)
  br label %282

84:                                               ; preds = %75, %73
  %85 = add i8 %16, -12
  %86 = icmp ult i8 %85, 6
  br i1 %86, label %93, label %87, !prof !233

87:                                               ; preds = %84
  %88 = zext nneg i32 %65 to i64
  %89 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !197
  %91 = add i8 %90, -12
  %92 = icmp ult i8 %91, 6
  br i1 %92, label %93, label %116, !prof !233

93:                                               ; preds = %87, %84
  %94 = zext nneg i32 %65 to i64
  %95 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !197
  %97 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %98 = load i8, ptr %97, align 1, !tbaa !197
  %99 = icmp eq i8 %96, %98
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 401, ptr noundef nonnull @.str.1) #22
  br label %101

101:                                              ; preds = %93, %100
  br i1 %86, label %102, label %107

102:                                              ; preds = %101
  %103 = load i32, ptr %66, align 8
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  %106 = tail call ptr @simplify_gen_subreg(i32 noundef %10, ptr noundef nonnull %66, i32 noundef %105, i32 noundef 0) #22
  br label %112

107:                                              ; preds = %101
  %108 = load i32, ptr %5, align 8
  %109 = lshr i32 %108, 16
  %110 = and i32 %109, 255
  %111 = tail call ptr @simplify_gen_subreg(i32 noundef %65, ptr noundef nonnull %5, i32 noundef %110, i32 noundef 0) #22
  br label %112

112:                                              ; preds = %107, %102
  %113 = phi ptr [ %106, %102 ], [ %66, %107 ]
  %114 = phi ptr [ %5, %102 ], [ %111, %107 ]
  %115 = tail call ptr @emit_move_insn(ptr noundef %114, ptr noundef %113)
  br label %282

116:                                              ; preds = %87
  %117 = load i32, ptr %5, align 8
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 41
  br i1 %119, label %120, label %133, !prof !233

120:                                              ; preds = %116
  %121 = load i32, ptr %66, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 41
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !197
  %127 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !197
  tail call void @convert_move(ptr noundef %126, ptr noundef %128, i32 noundef %7)
  %129 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !197
  %131 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !197
  br label %4

133:                                              ; preds = %120, %116
  br i1 %18, label %134, label %170, !prof !233

134:                                              ; preds = %133
  %135 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %88
  %136 = load i16, ptr %135, align 2, !tbaa !234
  %137 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %14
  %138 = load i16, ptr %137, align 2, !tbaa !234
  %139 = icmp eq i16 %136, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %134
  %141 = icmp eq i8 %90, 9
  %142 = icmp ne i8 %16, 9
  %143 = xor i1 %142, %141
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 427, ptr noundef nonnull @.str.1) #22
  br label %145

145:                                              ; preds = %140, %144
  br i1 %139, label %146, label %149

146:                                              ; preds = %145
  %147 = icmp eq i8 %90, 9
  %148 = select i1 %147, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2), ptr @convert_optab_table
  br label %152

149:                                              ; preds = %134, %145
  %150 = icmp ult i16 %136, %138
  %151 = select i1 %150, ptr @convert_optab_table, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2)
  br label %152

152:                                              ; preds = %149, %146
  %153 = phi ptr [ %148, %146 ], [ %151, %149 ]
  %154 = getelementptr inbounds %struct.convert_optab_d, ptr %153, i64 0, i32 3, i64 %14, i64 %88
  %155 = load i32, ptr %154, align 4, !tbaa !235
  %156 = icmp eq i32 %155, 2956
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  %158 = icmp eq ptr %153, @convert_optab_table
  %159 = select i1 %158, i32 101, i32 102
  tail call void @emit_unop_insn(i32 noundef %155, ptr noundef nonnull %5, ptr noundef %66, i32 noundef %159) #22
  br label %282

160:                                              ; preds = %152
  %161 = tail call ptr @convert_optab_libfunc(ptr noundef %153, i32 noundef %10, i32 noundef %65) #22
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 451, ptr noundef nonnull @.str.1) #22
  br label %164

164:                                              ; preds = %160, %163
  tail call void @start_sequence() #22
  %165 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef %161, ptr noundef null, i32 noundef 1, i32 noundef %10, i32 noundef 1, ptr noundef %66, i32 noundef %65) #22
  %166 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %167 = icmp eq ptr %153, getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2)
  %168 = select i1 %167, i32 102, i32 101
  %169 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %168, i32 noundef %10, ptr noundef %66) #22
  tail call void @emit_libcall_block(ptr noundef %166, ptr noundef nonnull %5, ptr noundef %165, ptr noundef %169) #22
  br label %282

170:                                              ; preds = %133
  %171 = icmp eq i8 %16, 3
  br i1 %171, label %172, label %190, !prof !233

172:                                              ; preds = %170
  %173 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %174 = load i8, ptr %173, align 1, !tbaa !197
  %175 = zext i8 %174 to i32
  %176 = shl nuw nsw i32 %175, 3
  %177 = tail call i32 @smallest_mode_for_size(i32 noundef %176, i32 noundef 2) #22
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2, i32 3, i64 %14, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !235
  %181 = icmp eq i32 %180, 2956
  br i1 %181, label %182, label %183

182:                                              ; preds = %172
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 474, ptr noundef nonnull @.str.1) #22
  br label %183

183:                                              ; preds = %172, %182
  %184 = icmp eq i32 %177, %65
  br i1 %184, label %187, label %185

185:                                              ; preds = %183
  %186 = tail call ptr @convert_modes(i32 noundef %177, i32 noundef 0, ptr noundef %66, i32 noundef %7)
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi ptr [ %186, %185 ], [ %66, %183 ]
  %189 = load i32, ptr %179, align 4, !tbaa !235
  tail call void @emit_unop_insn(i32 noundef %189, ptr noundef nonnull %5, ptr noundef %188, i32 noundef 0) #22
  br label %282

190:                                              ; preds = %170
  %191 = icmp eq i8 %90, 3
  br i1 %191, label %192, label %213, !prof !233

192:                                              ; preds = %190
  %193 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %88
  %194 = load i8, ptr %193, align 1, !tbaa !197
  %195 = zext i8 %194 to i32
  %196 = shl nuw nsw i32 %195, 3
  %197 = tail call i32 @smallest_mode_for_size(i32 noundef %196, i32 noundef 2) #22
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 %198, i64 %88
  %200 = load i32, ptr %199, align 4, !tbaa !235
  %201 = icmp eq i32 %200, 2956
  br i1 %201, label %202, label %203

202:                                              ; preds = %192
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 489, ptr noundef nonnull @.str.1) #22
  br label %203

203:                                              ; preds = %192, %202
  %204 = icmp eq i32 %10, %197
  br i1 %204, label %205, label %207

205:                                              ; preds = %203
  %206 = load i32, ptr %199, align 4, !tbaa !235
  tail call void @emit_unop_insn(i32 noundef %206, ptr noundef nonnull %5, ptr noundef %66, i32 noundef 0) #22
  br label %210

207:                                              ; preds = %203
  %208 = tail call ptr @gen_reg_rtx(i32 noundef %197) #22
  %209 = load i32, ptr %199, align 4, !tbaa !235
  tail call void @emit_unop_insn(i32 noundef %209, ptr noundef %208, ptr noundef %66, i32 noundef 0) #22
  br label %210

210:                                              ; preds = %207, %205
  %211 = phi i32 [ %65, %205 ], [ %197, %207 ]
  %212 = phi ptr [ %66, %205 ], [ %208, %207 ]
  br i1 %204, label %282, label %213

213:                                              ; preds = %210, %190
  %214 = phi i32 [ %211, %210 ], [ %65, %190 ]
  %215 = phi ptr [ %212, %210 ], [ %66, %190 ]
  %216 = zext i32 %214 to i64
  %217 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !197
  %219 = and i8 %218, -4
  %220 = icmp eq i8 %219, 4
  %221 = and i8 %16, -4
  %222 = icmp eq i8 %221, 4
  %223 = xor i1 %222, %220
  br i1 %223, label %224, label %225, !prof !233

224:                                              ; preds = %213
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 509, ptr noundef nonnull @.str.1) #22
  br label %225

225:                                              ; preds = %213, %224
  br i1 %220, label %226, label %236, !prof !233

226:                                              ; preds = %225
  %227 = icmp eq i8 %218, %16
  br i1 %227, label %228, label %235

228:                                              ; preds = %226
  %229 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %216
  %230 = load i8, ptr %229, align 1, !tbaa !197
  %231 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %232 = load i8, ptr %231, align 1, !tbaa !197
  %233 = icmp ult i8 %230, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  tail call void @expand_fixed_convert(ptr noundef nonnull %5, ptr noundef %215, i32 noundef 0, i32 noundef 0) #22
  br label %282

235:                                              ; preds = %228, %226
  tail call void @expand_fixed_convert(ptr noundef nonnull %5, ptr noundef %215, i32 noundef 0, i32 noundef 1) #22
  br label %282

236:                                              ; preds = %225
  %237 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %216
  %238 = load i8, ptr %237, align 1, !tbaa !197
  %239 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %240 = load i8, ptr %239, align 1, !tbaa !197
  %241 = icmp ult i8 %238, %240
  %242 = icmp ugt i8 %240, 4
  %243 = and i1 %241, %242
  br i1 %243, label %244, label %330, !prof !233

244:                                              ; preds = %236
  %245 = zext i8 %240 to i32
  %246 = add nuw nsw i32 %245, 3
  %247 = lshr i32 %246, 2
  %248 = tail call i32 @can_extend_p(i32 noundef %10, i32 noundef %214, i32 noundef %7) #22
  %249 = icmp eq i32 %248, 2956
  br i1 %249, label %261, label %250

250:                                              ; preds = %244
  %251 = load i32, ptr @optimize, align 4, !tbaa !201
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %250
  %254 = load i32, ptr %215, align 8
  %255 = and i32 %254, 65535
  %256 = icmp eq i32 %255, 39
  br i1 %256, label %257, label %259

257:                                              ; preds = %253
  %258 = tail call ptr @force_reg(i32 noundef %214, ptr noundef %215) #22
  br label %259

259:                                              ; preds = %257, %253, %250
  %260 = phi ptr [ %258, %257 ], [ %215, %253 ], [ %215, %250 ]
  tail call void @emit_unop_insn(i32 noundef %248, ptr noundef nonnull %5, ptr noundef %260, i32 noundef %27) #22
  br label %282

261:                                              ; preds = %244
  %262 = load i8, ptr %237, align 1, !tbaa !197
  %263 = icmp ult i8 %262, 4
  br i1 %263, label %264, label %285

264:                                              ; preds = %261
  %265 = load i32, ptr @word_mode, align 4, !tbaa !201
  %266 = tail call i32 @can_extend_p(i32 noundef %10, i32 noundef %265, i32 noundef %7) #22
  %267 = icmp eq i32 %266, 2956
  br i1 %267, label %285, label %268

268:                                              ; preds = %264
  %269 = load i32, ptr @word_mode, align 4, !tbaa !201
  %270 = tail call ptr @gen_reg_rtx(i32 noundef %269) #22
  %271 = load i32, ptr %5, align 8
  %272 = and i32 %271, 65535
  %273 = icmp eq i32 %272, 37
  br i1 %273, label %274, label %283

274:                                              ; preds = %268
  %275 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %5, ptr noundef %215) #22
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %274
  %278 = tail call ptr @force_reg(i32 noundef %214, ptr noundef %215) #22
  br label %279

279:                                              ; preds = %277, %274
  %280 = phi ptr [ %278, %277 ], [ %215, %274 ]
  %281 = tail call ptr @emit_clobber(ptr noundef nonnull %5) #22
  br label %283

282:                                              ; preds = %82, %112, %187, %395, %407, %451, %452, %210, %36, %164, %157, %235, %234, %327, %259, %429, %444, %283
  ret void

283:                                              ; preds = %279, %268
  %284 = phi ptr [ %280, %279 ], [ %215, %268 ]
  tail call void @convert_move(ptr noundef %270, ptr noundef %284, i32 noundef %7)
  tail call void @emit_unop_insn(i32 noundef %266, ptr noundef nonnull %5, ptr noundef %270, i32 noundef %27) #22
  br label %282

285:                                              ; preds = %261, %264
  tail call void @start_sequence() #22
  %286 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %5, ptr noundef %215) #22
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %285
  %289 = tail call ptr @force_reg(i32 noundef %214, ptr noundef %215) #22
  br label %290

290:                                              ; preds = %288, %285
  %291 = phi ptr [ %289, %288 ], [ %215, %285 ]
  %292 = load i8, ptr %237, align 1, !tbaa !197
  %293 = icmp ult i8 %292, 4
  %294 = load i32, ptr @word_mode, align 4
  %295 = select i1 %293, i32 %294, i32 %214
  %296 = tail call ptr @convert_modes(i32 noundef %295, i32 noundef 0, ptr noundef %291, i32 noundef %7)
  %297 = load ptr, ptr @rtl_hooks, align 8, !tbaa !231
  %298 = tail call ptr %297(i32 noundef %295, ptr noundef nonnull %5) #22
  %299 = tail call ptr @emit_move_insn(ptr noundef %298, ptr noundef %296)
  br i1 %25, label %302, label %300

300:                                              ; preds = %290
  %301 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  br label %307

302:                                              ; preds = %290
  %303 = load i32, ptr @word_mode, align 4, !tbaa !201
  %304 = tail call ptr @gen_reg_rtx(i32 noundef %303) #22
  %305 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %306 = tail call ptr @emit_store_flag(ptr noundef %304, i32 noundef 85, ptr noundef %296, ptr noundef %305, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  br label %307

307:                                              ; preds = %302, %300
  %308 = phi ptr [ %301, %300 ], [ %306, %302 ]
  %309 = zext i32 %295 to i64
  %310 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %309
  %311 = load i8, ptr %310, align 1, !tbaa !197
  %312 = lshr i8 %311, 2
  %313 = zext nneg i8 %312 to i32
  %314 = icmp ugt i32 %247, %313
  br i1 %314, label %315, label %327

315:                                              ; preds = %307, %324
  %316 = phi i32 [ %325, %324 ], [ %313, %307 ]
  %317 = tail call ptr @operand_subword(ptr noundef nonnull %5, i32 noundef %316, i32 noundef 1, i32 noundef %10) #22
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %320

319:                                              ; preds = %315
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 601, ptr noundef nonnull @.str.1) #22
  br label %320

320:                                              ; preds = %315, %319
  %321 = icmp eq ptr %308, %317
  br i1 %321, label %324, label %322

322:                                              ; preds = %320
  %323 = tail call ptr @emit_move_insn(ptr noundef %317, ptr noundef %308)
  br label %324

324:                                              ; preds = %322, %320
  %325 = add nuw nsw i32 %316, 1
  %326 = icmp eq i32 %325, %247
  br i1 %326, label %327, label %315, !llvm.loop !237

327:                                              ; preds = %324, %307
  %328 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %329 = tail call ptr @emit_insn(ptr noundef %328) #22
  br label %282

330:                                              ; preds = %236
  %331 = icmp ugt i8 %238, 4
  %332 = icmp ult i8 %240, 5
  %333 = and i1 %331, %332
  br i1 %333, label %334, label %357, !prof !233

334:                                              ; preds = %330
  %335 = load i32, ptr %215, align 8
  %336 = and i32 %335, 134283263
  %337 = icmp eq i32 %336, 43
  br i1 %337, label %338, label %347

338:                                              ; preds = %334
  %339 = getelementptr inbounds [87 x i8], ptr @direct_load, i64 0, i64 %14
  %340 = load i8, ptr %339, align 1, !tbaa !197
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %347, label %342

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1
  %344 = load ptr, ptr %343, align 8, !tbaa !197
  %345 = tail call i32 @mode_dependent_address_p(ptr noundef %344) #22
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %352, label %347

347:                                              ; preds = %342, %338, %334
  %348 = load i32, ptr %215, align 8
  %349 = trunc i32 %348 to i16
  switch i16 %349, label %350 [
    i16 37, label %352
    i16 39, label %352
  ]

350:                                              ; preds = %347
  %351 = tail call ptr @force_reg(i32 noundef %214, ptr noundef nonnull %215) #22
  br label %352

352:                                              ; preds = %347, %342, %347, %350
  %353 = phi ptr [ %351, %350 ], [ %215, %347 ], [ %215, %342 ], [ %215, %347 ]
  %354 = load ptr, ptr @rtl_hooks, align 8, !tbaa !231
  %355 = load i32, ptr @word_mode, align 4, !tbaa !201
  %356 = tail call ptr %354(i32 noundef %355, ptr noundef %353) #22
  br label %4

357:                                              ; preds = %330
  %358 = zext i8 %240 to i32
  %359 = shl nuw nsw i32 %358, 3
  %360 = zext i8 %238 to i32
  %361 = shl nuw nsw i32 %360, 3
  %362 = icmp ult i32 %359, %361
  br i1 %362, label %363, label %400, !prof !233

363:                                              ; preds = %357
  %364 = load i32, ptr %215, align 8
  %365 = and i32 %364, 134283263
  %366 = icmp eq i32 %365, 43
  br i1 %366, label %367, label %376

367:                                              ; preds = %363
  %368 = getelementptr inbounds [87 x i8], ptr @direct_load, i64 0, i64 %14
  %369 = load i8, ptr %368, align 1, !tbaa !197
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %376, label %371

371:                                              ; preds = %367
  %372 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !197
  %374 = tail call i32 @mode_dependent_address_p(ptr noundef %373) #22
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %381, label %376

376:                                              ; preds = %371, %367, %363
  %377 = load i32, ptr %215, align 8
  %378 = trunc i32 %377 to i16
  switch i16 %378, label %379 [
    i16 37, label %381
    i16 39, label %381
  ]

379:                                              ; preds = %376
  %380 = tail call ptr @force_reg(i32 noundef %214, ptr noundef nonnull %215) #22
  br label %381

381:                                              ; preds = %376, %371, %376, %379
  %382 = phi ptr [ %380, %379 ], [ %215, %376 ], [ %215, %371 ], [ %215, %376 ]
  %383 = load i32, ptr %382, align 8
  %384 = and i32 %383, 65535
  %385 = icmp eq i32 %384, 37
  br i1 %385, label %386, label %395

386:                                              ; preds = %381
  %387 = getelementptr inbounds %struct.rtx_def, ptr %382, i64 0, i32 1
  %388 = load i32, ptr %387, align 8, !tbaa !197
  %389 = icmp ult i32 %388, 53
  br i1 %389, label %390, label %395

390:                                              ; preds = %386
  %391 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %388, i32 noundef %10) #22
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %390
  %394 = tail call ptr @copy_to_reg(ptr noundef nonnull %382) #22
  br label %395

395:                                              ; preds = %393, %390, %386, %381
  %396 = phi ptr [ %382, %390 ], [ %394, %393 ], [ %382, %386 ], [ %382, %381 ]
  %397 = load ptr, ptr @rtl_hooks, align 8, !tbaa !231
  %398 = tail call ptr %397(i32 noundef %10, ptr noundef %396) #22
  %399 = tail call ptr @emit_move_insn(ptr noundef nonnull %5, ptr noundef %398)
  br label %282

400:                                              ; preds = %357
  %401 = icmp ugt i32 %359, %361
  br i1 %401, label %402, label %446, !prof !238

402:                                              ; preds = %400
  %403 = tail call i32 @can_extend_p(i32 noundef %10, i32 noundef %214, i32 noundef %7) #22
  %404 = icmp eq i32 %403, 2956
  br i1 %404, label %405, label %407, !prof !233

405:                                              ; preds = %402
  %406 = icmp eq i32 %214, 0
  br i1 %406, label %429, label %408

407:                                              ; preds = %402
  tail call void @emit_unop_insn(i32 noundef %403, ptr noundef nonnull %5, ptr noundef %215, i32 noundef %27) #22
  br label %282

408:                                              ; preds = %405, %423
  %409 = phi i32 [ %427, %423 ], [ %214, %405 ]
  %410 = tail call i32 @can_extend_p(i32 noundef %10, i32 noundef %409, i32 noundef %7) #22
  %411 = icmp eq i32 %410, 2956
  br i1 %411, label %412, label %418

412:                                              ; preds = %408
  %413 = load i8, ptr %239, align 1, !tbaa !197
  %414 = zext i32 %409 to i64
  %415 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %414
  %416 = load i8, ptr %415, align 1, !tbaa !197
  %417 = icmp ult i8 %413, %416
  br i1 %417, label %418, label %423

418:                                              ; preds = %412, %408
  %419 = tail call i32 @can_extend_p(i32 noundef %409, i32 noundef %214, i32 noundef %7) #22
  %420 = icmp eq i32 %419, 2956
  br i1 %420, label %423, label %421

421:                                              ; preds = %418
  %422 = tail call ptr @convert_modes(i32 noundef %409, i32 noundef 0, ptr noundef %215, i32 noundef %7)
  br label %4

423:                                              ; preds = %412, %418
  %424 = zext i32 %409 to i64
  %425 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %424
  %426 = load i8, ptr %425, align 1, !tbaa !197
  %427 = zext i8 %426 to i32
  %428 = icmp eq i8 %426, 0
  br i1 %428, label %429, label %408, !llvm.loop !239

429:                                              ; preds = %423, %405
  %430 = load i8, ptr %239, align 1, !tbaa !197
  %431 = zext i8 %430 to i32
  %432 = load i8, ptr %237, align 1, !tbaa !197
  %433 = zext i8 %432 to i32
  %434 = sub nsw i32 %431, %433
  %435 = shl nsw i32 %434, 3
  %436 = sext i32 %435 to i64
  %437 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %436) #22
  %438 = load ptr, ptr @rtl_hooks, align 8, !tbaa !231
  %439 = tail call ptr @force_reg(i32 noundef %214, ptr noundef %215) #22
  %440 = tail call ptr %438(i32 noundef %10, ptr noundef %439) #22
  %441 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %10, ptr noundef %440, ptr noundef %437, ptr noundef nonnull %5, i32 noundef %7) #22
  %442 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %10, ptr noundef %441, ptr noundef %437, ptr noundef nonnull %5, i32 noundef %7) #22
  %443 = icmp eq ptr %442, %5
  br i1 %443, label %282, label %444

444:                                              ; preds = %429
  %445 = tail call ptr @emit_move_insn(ptr noundef nonnull %5, ptr noundef %442)
  br label %282

446:                                              ; preds = %400
  %447 = sext i32 %214 to i64
  %448 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2, i32 3, i64 %14, i64 %447
  %449 = load i32, ptr %448, align 4, !tbaa !235
  %450 = icmp eq i32 %449, 2956
  br i1 %450, label %452, label %451

451:                                              ; preds = %446
  tail call void @emit_unop_insn(i32 noundef %449, ptr noundef nonnull %5, ptr noundef %215, i32 noundef 0) #22
  br label %282

452:                                              ; preds = %446
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 722, ptr noundef nonnull @.str.1) #22
  br label %282
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @emit_move_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !240 {
  %3 = alloca %struct.real_value, align 8
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %15, label %8, !prof !241

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 8
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, %6
  %13 = icmp eq i32 %11, 0
  %14 = or i1 %12, %13
  br i1 %14, label %16, label %15, !prof !242

15:                                               ; preds = %8, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3432, ptr noundef nonnull @.str.1) #22
  br label %16

16:                                               ; preds = %8, %15
  %17 = load i32, ptr %1, align 8
  %18 = and i32 %17, 65535
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !201
  %22 = icmp eq i32 %21, 9
  br i1 %22, label %23, label %123, !prof !243

23:                                               ; preds = %16
  %24 = load i32, ptr @optimize, align 4, !tbaa !201
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %115, label %26, !prof !244

26:                                               ; preds = %23
  %27 = load i32, ptr %0, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !197
  %33 = and i8 %32, -2
  %34 = icmp eq i8 %33, 8
  br i1 %34, label %35, label %115, !prof !244

35:                                               ; preds = %26
  %36 = lshr i32 %17, 16
  %37 = and i32 %36, 255
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %38 = tail call zeroext i8 @optimize_insn_for_speed_p() #22
  %39 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %39, i64 32, i1 false), !tbaa.struct !245
  %40 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %1) #22
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = tail call i32 @rtx_cost(ptr noundef nonnull %1, i32 noundef 23, i8 noundef zeroext %38) #22
  br label %47

44:                                               ; preds = %35
  %45 = tail call ptr @force_const_mem(i32 noundef %29, ptr noundef nonnull %1) #22
  %46 = tail call i32 @rtx_cost(ptr noundef %45, i32 noundef 23, i8 noundef zeroext %38) #22
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi i32 [ %43, %42 ], [ %46, %44 ]
  %49 = zext nneg i32 %37 to i64
  %50 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !197
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds [18 x i8], ptr @class_narrowest_mode, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !197
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %37, %55
  br i1 %56, label %112, label %57

57:                                               ; preds = %47, %106
  %58 = phi i32 [ %110, %106 ], [ %55, %47 ]
  %59 = phi i8 [ %109, %106 ], [ %54, %47 ]
  %60 = phi ptr [ %104, %106 ], [ undef, %47 ]
  %61 = call i32 @can_extend_p(i32 noundef %29, i32 noundef %58, i32 noundef 0) #22
  %62 = icmp eq i32 %61, 2956
  br i1 %62, label %103, label %63

63:                                               ; preds = %57
  %64 = call zeroext i8 @exact_real_truncate(i32 noundef %58, ptr noundef nonnull %3) #22
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %103, label %66

66:                                               ; preds = %63
  %67 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %3, i32 noundef %58) #22
  %68 = call zeroext i8 @legitimate_constant_p(ptr noundef %67) #22
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %66
  %71 = zext i32 %61 to i64
  %72 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %71, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !217
  %74 = getelementptr inbounds %struct.insn_operand_data, ptr %73, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !219
  %76 = call i32 %75(ptr noundef %67, i32 noundef %58) #22
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %103, label %78

78:                                               ; preds = %70
  %79 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 101, i32 noundef %29, ptr noundef %67) #22
  %80 = call i32 @rtx_cost(ptr noundef %79, i32 noundef 23, i8 noundef zeroext %38) #22
  %81 = icmp slt i32 %48, %80
  br i1 %81, label %103, label %94

82:                                               ; preds = %66
  %83 = zext i8 %59 to i64
  %84 = getelementptr inbounds [87 x [87 x i8]], ptr @float_extend_from_mem, i64 0, i64 %30, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !197
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %82
  %88 = call ptr @force_const_mem(i32 noundef %58, ptr noundef %67) #22
  %89 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 101, i32 noundef %29, ptr noundef %88) #22
  %90 = call i32 @rtx_cost(ptr noundef %89, i32 noundef 23, i8 noundef zeroext %38) #22
  %91 = icmp slt i32 %48, %90
  br i1 %91, label %103, label %92

92:                                               ; preds = %87
  %93 = call ptr @validize_mem(ptr noundef %88) #22
  br label %94

94:                                               ; preds = %92, %78
  %95 = phi ptr [ %67, %78 ], [ %93, %92 ]
  %96 = call ptr @force_reg(i32 noundef %58, ptr noundef %95) #22
  call void @emit_unop_insn(i32 noundef %61, ptr noundef nonnull %0, ptr noundef %96, i32 noundef 0) #22
  %97 = call ptr @get_last_insn() #22
  %98 = load i32, ptr %0, align 8
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 37
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = call ptr @set_unique_reg_note(ptr noundef %97, i32 noundef 4, ptr noundef nonnull %1) #22
  br label %103

103:                                              ; preds = %94, %101, %87, %82, %78, %70, %63, %57
  %104 = phi ptr [ %60, %57 ], [ %60, %63 ], [ %60, %70 ], [ %60, %78 ], [ %60, %87 ], [ %60, %82 ], [ %97, %101 ], [ %97, %94 ]
  %105 = phi i1 [ true, %57 ], [ true, %63 ], [ true, %70 ], [ true, %78 ], [ true, %87 ], [ true, %82 ], [ false, %101 ], [ false, %94 ]
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = zext i8 %59 to i64
  %108 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !197
  %110 = zext i8 %109 to i32
  %111 = icmp eq i32 %37, %110
  br i1 %111, label %112, label %57, !llvm.loop !246

112:                                              ; preds = %103, %106, %47
  %113 = phi ptr [ null, %47 ], [ %104, %103 ], [ null, %106 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %339

115:                                              ; preds = %112, %26, %23
  %116 = call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %1) #22
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %123, !prof !244

118:                                              ; preds = %115
  %119 = call ptr @force_const_mem(i32 noundef %6, ptr noundef nonnull %1) #22
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = call ptr @use_anchored_address(ptr noundef nonnull %119) #22
  br label %123

123:                                              ; preds = %118, %115, %121, %16
  %124 = phi ptr [ %1, %115 ], [ %122, %121 ], [ %1, %16 ], [ %1, %118 ]
  %125 = phi ptr [ %1, %115 ], [ %1, %121 ], [ null, %16 ], [ %1, %118 ]
  %126 = load i32, ptr %0, align 8
  %127 = and i32 %126, 65535
  %128 = icmp eq i32 %127, 43
  br i1 %128, label %129, label %152, !prof !247

129:                                              ; preds = %123
  %130 = lshr i32 %126, 16
  %131 = and i32 %130, 255
  %132 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !197
  %134 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !197
  %136 = icmp eq ptr %135, null
  br i1 %136, label %140, label %137, !prof !248

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.mem_attrs, ptr %135, i64 0, i32 5
  %139 = load i8, ptr %138, align 8, !tbaa !249
  br label %140

140:                                              ; preds = %129, %137
  %141 = phi i8 [ %139, %137 ], [ 0, %129 ]
  %142 = call i32 @memory_address_addr_space_p(i32 noundef %131, ptr noundef %133, i8 noundef zeroext %141) #22
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %152, !prof !251

144:                                              ; preds = %140
  %145 = load i32, ptr %0, align 8
  %146 = lshr i32 %145, 16
  %147 = and i32 %146, 255
  %148 = call i32 @push_operand(ptr noundef nonnull %0, i32 noundef %147) #22
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = call ptr @validize_mem(ptr noundef nonnull %0) #22
  br label %152

152:                                              ; preds = %150, %144, %140, %123
  %153 = phi ptr [ %0, %140 ], [ %0, %144 ], [ %151, %150 ], [ %0, %123 ]
  %154 = load i32, ptr %124, align 8
  %155 = and i32 %154, 65535
  %156 = icmp eq i32 %155, 43
  br i1 %156, label %157, label %174, !prof !252

157:                                              ; preds = %152
  %158 = lshr i32 %154, 16
  %159 = and i32 %158, 255
  %160 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !197
  %162 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1, i32 0, i32 0, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !197
  %164 = icmp eq ptr %163, null
  br i1 %164, label %168, label %165, !prof !253

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.mem_attrs, ptr %163, i64 0, i32 5
  %167 = load i8, ptr %166, align 8, !tbaa !249
  br label %168

168:                                              ; preds = %157, %165
  %169 = phi i8 [ %167, %165 ], [ 0, %157 ]
  %170 = call i32 @memory_address_addr_space_p(i32 noundef %159, ptr noundef %161, i8 noundef zeroext %169) #22
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174, !prof !254

172:                                              ; preds = %168
  %173 = call ptr @validize_mem(ptr noundef nonnull %124) #22
  br label %174

174:                                              ; preds = %172, %168, %152
  %175 = phi ptr [ %124, %168 ], [ %173, %172 ], [ %124, %152 ]
  br i1 %7, label %176, label %177, !prof !241

176:                                              ; preds = %174
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3470, ptr noundef nonnull @.str.1) #22
  br label %177

177:                                              ; preds = %174, %176
  %178 = load i32, ptr %153, align 8
  %179 = lshr i32 %178, 16
  %180 = and i32 %179, 255
  %181 = icmp ult i32 %180, 87
  br i1 %181, label %183, label %182, !prof !255

182:                                              ; preds = %177
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3378, ptr noundef nonnull @.str.1) #22
  br label %183

183:                                              ; preds = %182, %177
  %184 = zext nneg i32 %180 to i64
  %185 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %184
  %186 = load i32, ptr %185, align 4, !tbaa !235
  %187 = icmp eq i32 %186, 2956
  br i1 %187, label %194, label %188, !prof !256

188:                                              ; preds = %183
  %189 = zext i32 %186 to i64
  %190 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %189, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !257
  %192 = call ptr (ptr, ...) %191(ptr noundef nonnull %153, ptr noundef %175) #22, !prof !258
  %193 = call ptr @emit_insn(ptr noundef %192) #22
  br label %305

194:                                              ; preds = %183
  %195 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %184
  %196 = load i8, ptr %195, align 1, !tbaa !197
  switch i8 %196, label %289 [
    i8 10, label %197
    i8 11, label %197
    i8 9, label %261
    i8 4, label %261
    i8 13, label %261
    i8 6, label %261
    i8 15, label %261
    i8 5, label %261
    i8 14, label %261
    i8 7, label %261
    i8 16, label %261
    i8 1, label %266
  ]

197:                                              ; preds = %194, %194
  %198 = call i32 @push_operand(ptr noundef nonnull %153, i32 noundef %180) #22
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = call ptr @emit_move_complex_push(i32 noundef %180, ptr noundef nonnull %153, ptr noundef %175)
  br label %305

202:                                              ; preds = %197
  %203 = icmp eq i8 %196, 11
  br i1 %203, label %204, label %211

204:                                              ; preds = %202
  %205 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %184
  %206 = load i8, ptr %205, align 1, !tbaa !197
  %207 = zext i8 %206 to i64
  %208 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !235
  %210 = icmp eq i32 %209, 2956
  br i1 %210, label %211, label %259

211:                                              ; preds = %204, %202
  %212 = load i32, ptr %153, align 8
  %213 = and i32 %212, 65535
  %214 = icmp eq i32 %213, 41
  br i1 %214, label %259, label %215

215:                                              ; preds = %211
  %216 = load i32, ptr %175, align 8
  %217 = and i32 %216, 65535
  %218 = icmp eq i32 %217, 41
  br i1 %218, label %259, label %219

219:                                              ; preds = %215
  %220 = call i32 @register_operand(ptr noundef nonnull %153, i32 noundef %180) #22
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %219
  %223 = call i32 @register_operand(ptr noundef nonnull %175, i32 noundef %180) #22
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %222, %219
  %226 = load i32, ptr %153, align 8
  %227 = and i32 %226, 65535
  %228 = icmp eq i32 %227, 43
  %229 = load i32, ptr %175, align 8
  %230 = and i32 %229, 65535
  br i1 %228, label %231, label %236

231:                                              ; preds = %225
  %232 = zext nneg i32 %230 to i64
  %233 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !201
  %235 = icmp eq i32 %234, 9
  br i1 %235, label %259, label %238

236:                                              ; preds = %225
  %237 = icmp eq i32 %230, 43
  br i1 %237, label %238, label %259

238:                                              ; preds = %236, %231, %222
  %239 = load i32, ptr %153, align 8
  %240 = and i32 %239, 65535
  %241 = icmp eq i32 %240, 43
  br i1 %241, label %242, label %253

242:                                              ; preds = %238
  %243 = load i32, ptr %175, align 8
  %244 = and i32 %243, 65535
  %245 = icmp eq i32 %244, 43
  br i1 %245, label %246, label %253

246:                                              ; preds = %242
  %247 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %184
  %248 = load i8, ptr %247, align 1, !tbaa !197
  %249 = zext i8 %248 to i64
  %250 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %249) #22
  %251 = call ptr @emit_block_move_hints(ptr noundef nonnull %153, ptr noundef nonnull %175, ptr noundef %250, i32 noundef 1, i32 noundef 0, i64 noundef -1)
  %252 = call ptr @get_last_insn() #22
  br label %256

253:                                              ; preds = %242, %238
  %254 = call fastcc ptr @emit_move_via_integer(i32 noundef %180, ptr noundef nonnull %153, ptr noundef nonnull %175, i8 noundef zeroext 1)
  %255 = icmp eq ptr %254, null
  br label %256

256:                                              ; preds = %253, %246
  %257 = phi i1 [ false, %246 ], [ %255, %253 ]
  %258 = phi ptr [ %252, %246 ], [ %254, %253 ]
  br i1 %257, label %259, label %305

259:                                              ; preds = %236, %204, %256, %231, %215, %211
  %260 = call ptr @emit_move_complex_parts(ptr noundef nonnull %153, ptr noundef %175)
  br label %305

261:                                              ; preds = %194, %194, %194, %194, %194, %194, %194, %194, %194
  %262 = call fastcc ptr @emit_move_via_integer(i32 noundef %180, ptr noundef nonnull %153, ptr noundef %175, i8 noundef zeroext 1)
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %305

264:                                              ; preds = %261
  %265 = call fastcc ptr @emit_move_multi_word(i32 noundef %180, ptr noundef nonnull %153, ptr noundef %175)
  br label %305

266:                                              ; preds = %194
  %267 = icmp eq i32 %180, 2
  br i1 %267, label %283, label %268

268:                                              ; preds = %266
  %269 = load i32, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 2), align 8, !tbaa !235
  %270 = icmp eq i32 %269, 2956
  br i1 %270, label %279, label %271

271:                                              ; preds = %268
  %272 = call fastcc ptr @emit_move_change_mode(i32 noundef 2, i32 noundef %180, ptr noundef nonnull %153, i8 noundef zeroext 1)
  %273 = call fastcc ptr @emit_move_change_mode(i32 noundef 2, i32 noundef %180, ptr noundef %175, i8 noundef zeroext 1)
  %274 = zext i32 %269 to i64
  %275 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %274, i32 2
  %276 = load ptr, ptr %275, align 8, !tbaa !257
  %277 = call ptr (ptr, ...) %276(ptr noundef %272, ptr noundef %273) #22
  %278 = call ptr @emit_insn(ptr noundef %277) #22
  br label %279

279:                                              ; preds = %271, %268
  %280 = phi ptr [ %273, %271 ], [ %175, %268 ]
  %281 = phi ptr [ %272, %271 ], [ %153, %268 ]
  %282 = phi ptr [ %278, %271 ], [ undef, %268 ]
  br i1 %270, label %283, label %305

283:                                              ; preds = %279, %266
  %284 = phi ptr [ %280, %279 ], [ %175, %266 ]
  %285 = phi ptr [ %281, %279 ], [ %153, %266 ]
  %286 = call fastcc ptr @emit_move_via_integer(i32 noundef %180, ptr noundef %285, ptr noundef %284, i8 noundef zeroext 0)
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %305

288:                                              ; preds = %283
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3251, ptr noundef nonnull @.str.1) #22
  br label %305

289:                                              ; preds = %194
  %290 = load i32, ptr %175, align 8
  %291 = and i32 %290, 65535
  %292 = zext nneg i32 %291 to i64
  %293 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %292
  %294 = load i32, ptr %293, align 4, !tbaa !201
  %295 = icmp eq i32 %294, 9
  br i1 %295, label %296, label %300

296:                                              ; preds = %289
  %297 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %184
  %298 = load i8, ptr %297, align 1, !tbaa !197
  %299 = icmp ult i8 %298, 9
  br i1 %299, label %300, label %303

300:                                              ; preds = %296, %289
  %301 = call fastcc ptr @emit_move_via_integer(i32 noundef %180, ptr noundef nonnull %153, ptr noundef nonnull %175, i8 noundef zeroext 0)
  %302 = icmp eq ptr %301, null
  br i1 %302, label %303, label %305

303:                                              ; preds = %296, %300
  %304 = call fastcc ptr @emit_move_multi_word(i32 noundef %180, ptr noundef nonnull %153, ptr noundef nonnull %175)
  br label %305

305:                                              ; preds = %279, %188, %200, %256, %259, %261, %264, %283, %288, %300, %303
  %306 = phi ptr [ %193, %188 ], [ %304, %303 ], [ %301, %300 ], [ %265, %264 ], [ %262, %261 ], [ %201, %200 ], [ %260, %259 ], [ %258, %256 ], [ %286, %283 ], [ %286, %288 ], [ %282, %279 ]
  %307 = icmp eq ptr %125, null
  br i1 %307, label %339, label %308, !prof !259

308:                                              ; preds = %305
  %309 = load i32, ptr %153, align 8
  %310 = and i32 %309, 65535
  %311 = icmp eq i32 %310, 37
  br i1 %311, label %312, label %339, !prof !260

312:                                              ; preds = %308
  %313 = load i32, ptr %306, align 8
  %314 = and i32 %313, 65535
  %315 = add nsw i32 %314, -7
  %316 = icmp ult i32 %315, 4
  br i1 %316, label %317, label %325, !prof !261

317:                                              ; preds = %312
  %318 = getelementptr inbounds %struct.rtx_def, ptr %306, i64 1
  %319 = load ptr, ptr %318, align 8, !tbaa !197
  %320 = load i32, ptr %319, align 8
  %321 = and i32 %320, 65535
  %322 = icmp eq i32 %321, 23
  br i1 %322, label %325, label %323, !prof !261

323:                                              ; preds = %317
  %324 = call ptr @single_set_2(ptr noundef nonnull %306, ptr noundef nonnull %319) #22
  br label %325

325:                                              ; preds = %312, %317, %323
  %326 = phi ptr [ %324, %323 ], [ null, %312 ], [ %319, %317 ]
  %327 = icmp eq ptr %326, null
  br i1 %327, label %339, label %328, !prof !262

328:                                              ; preds = %325
  %329 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !197
  %331 = icmp eq ptr %330, %153
  br i1 %331, label %332, label %339, !prof !261

332:                                              ; preds = %328
  %333 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1, i32 0, i32 0, i64 1
  %334 = load ptr, ptr %333, align 8, !tbaa !197
  %335 = call i32 @rtx_equal_p(ptr noundef nonnull %125, ptr noundef %334) #22
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %339, !prof !262

337:                                              ; preds = %332
  %338 = call ptr @set_unique_reg_note(ptr noundef nonnull %306, i32 noundef 4, ptr noundef nonnull %125) #22
  br label %339

339:                                              ; preds = %305, %308, %325, %328, %332, %337, %112
  %340 = phi ptr [ %113, %112 ], [ %306, %337 ], [ %306, %332 ], [ %306, %328 ], [ %306, %325 ], [ %306, %308 ], [ %306, %305 ]
  ret ptr %340
}

declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @emit_unop_insn(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @convert_optab_libfunc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @start_sequence() local_unnamed_addr #3

declare ptr @emit_library_call_value(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

declare void @emit_libcall_block(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @smallest_mode_for_size(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @convert_to_mode(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #13 !prof !185 {
  %4 = tail call ptr @convert_modes(i32 noundef %0, i32 noundef 0, ptr noundef %1, i32 noundef %2)
  ret ptr %4
}

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

declare void @expand_fixed_convert(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @force_reg(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_clobber(ptr noundef) local_unnamed_addr #3

declare ptr @emit_store_flag(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @operand_subword(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_insn(ptr noundef) local_unnamed_addr #3

declare i32 @mode_dependent_address_p(ptr noundef) local_unnamed_addr #3

declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @expand_shift(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @convert_modes(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !263 {
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 268500991
  %7 = icmp eq i32 %6, 268435495
  br i1 %7, label %8, label %31, !prof !264

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !197
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !197
  %17 = zext i32 %0 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !197
  %20 = icmp ult i8 %16, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %8
  %22 = and i32 %5, 134217728
  %23 = icmp eq i32 %22, 0
  %24 = lshr i32 %5, 26
  %25 = and i32 %24, 1
  %26 = select i1 %23, i32 %25, i32 -1
  %27 = icmp eq i32 %26, %3
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load ptr, ptr @rtl_hooks, align 8, !tbaa !231
  %30 = tail call ptr %29(i32 noundef %0, ptr noundef nonnull %2) #22
  br label %31

31:                                               ; preds = %28, %21, %8, %4
  %32 = phi ptr [ %30, %28 ], [ %2, %21 ], [ %2, %8 ], [ %2, %4 ]
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 %1, i32 %35, !prof !265
  %38 = icmp eq i32 %37, %0
  br i1 %38, label %172, label %39, !prof !266

39:                                               ; preds = %31
  %40 = icmp eq i32 %3, 0
  br i1 %40, label %73, label %41, !prof !267

41:                                               ; preds = %39
  %42 = zext i32 %0 to i64
  %43 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !197
  %45 = icmp eq i8 %44, 2
  br i1 %45, label %46, label %73, !prof !268

46:                                               ; preds = %41
  %47 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %42
  %48 = load i8, ptr %47, align 1, !tbaa !197
  %49 = icmp eq i8 %48, 16
  %50 = and i32 %33, 65535
  %51 = icmp eq i32 %50, 30
  %52 = and i1 %51, %49
  br i1 %52, label %53, label %73, !prof !269

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !197
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = icmp eq i32 %37, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %57
  %60 = zext i32 %37 to i64
  %61 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !197
  %63 = icmp ult i8 %62, 8
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = shl nuw nsw i8 %62, 3
  %66 = zext nneg i8 %65 to i64
  %67 = shl nsw i64 -1, %66
  %68 = xor i64 %67, -1
  %69 = and i64 %55, %68
  br label %70

70:                                               ; preds = %64, %59, %57
  %71 = phi i64 [ %69, %64 ], [ %55, %59 ], [ %55, %57 ]
  %72 = tail call ptr @immed_double_const(i64 noundef %71, i64 noundef 0, i32 noundef %0) #22
  br label %172

73:                                               ; preds = %53, %46, %41, %39
  %74 = and i32 %33, 65535
  %75 = icmp eq i32 %74, 30
  br i1 %75, label %76, label %81, !prof !270

76:                                               ; preds = %73
  %77 = zext i32 %0 to i64
  %78 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !197
  %80 = icmp ult i8 %79, 9
  br i1 %80, label %116, label %81, !prof !268

81:                                               ; preds = %76, %73
  %82 = zext i32 %0 to i64
  %83 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !197
  %85 = icmp eq i8 %84, 2
  br i1 %85, label %86, label %153, !prof !271

86:                                               ; preds = %81
  %87 = zext i32 %37 to i64
  %88 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !197
  %90 = icmp eq i8 %89, 2
  br i1 %90, label %91, label %153, !prof !271

91:                                               ; preds = %86
  %92 = icmp eq i32 %74, 32
  br i1 %92, label %116, label %93, !prof !272

93:                                               ; preds = %91
  %94 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %82
  %95 = load i8, ptr %94, align 1, !tbaa !197
  %96 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %87
  %97 = load i8, ptr %96, align 1, !tbaa !197
  %98 = icmp ugt i8 %95, %97
  br i1 %98, label %153, label %99, !prof !272

99:                                               ; preds = %93
  %100 = and i32 %33, 134283263
  %101 = icmp eq i32 %100, 43
  br i1 %101, label %102, label %107, !prof !273

102:                                              ; preds = %99
  %103 = sext i32 %0 to i64
  %104 = getelementptr inbounds [87 x i8], ptr @direct_load, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !197
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %116, !prof !274

107:                                              ; preds = %102, %99
  %108 = icmp eq i32 %74, 37
  br i1 %108, label %109, label %153, !prof !275

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !197
  %112 = icmp ult i32 %111, 53
  br i1 %112, label %113, label %116, !prof !276

113:                                              ; preds = %109
  %114 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %111, i32 noundef %0) #22
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %153, label %116

116:                                              ; preds = %113, %109, %102, %91, %76
  %117 = load i32, ptr %32, align 8
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 30
  %120 = icmp ne i32 %37, 0
  %121 = and i1 %120, %119
  br i1 %121, label %122, label %150, !prof !270

122:                                              ; preds = %116
  %123 = zext i32 %0 to i64
  %124 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !197
  %126 = zext i32 %37 to i64
  %127 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !197
  %129 = icmp ugt i8 %125, %128
  br i1 %129, label %130, label %150, !prof !269

130:                                              ; preds = %122
  %131 = zext i8 %128 to i32
  %132 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %133 = load i64, ptr %132, align 8, !tbaa !197
  %134 = shl nuw nsw i32 %131, 3
  %135 = zext nneg i32 %134 to i64
  %136 = shl nsw i64 -1, %135
  %137 = xor i64 %136, -1
  %138 = and i64 %133, %137
  br i1 %40, label %139, label %147

139:                                              ; preds = %130
  %140 = add nsw i32 %134, -1
  %141 = zext nneg i32 %140 to i64
  %142 = shl nuw i64 1, %141
  %143 = and i64 %138, %142
  %144 = icmp eq i64 %143, 0
  %145 = or i64 %133, %136
  %146 = select i1 %144, i64 %138, i64 %145
  br label %147

147:                                              ; preds = %139, %130
  %148 = phi i64 [ %138, %130 ], [ %146, %139 ]
  %149 = tail call ptr @gen_int_mode(i64 noundef %148, i32 noundef %0) #22
  br label %172

150:                                              ; preds = %122, %116
  %151 = load ptr, ptr @rtl_hooks, align 8, !tbaa !231
  %152 = tail call ptr %151(i32 noundef %0, ptr noundef nonnull %32) #22, !prof !277
  br label %172

153:                                              ; preds = %113, %107, %93, %86, %81
  %154 = add i8 %84, -12
  %155 = icmp ult i8 %154, 6
  br i1 %155, label %156, label %170

156:                                              ; preds = %153
  %157 = load i32, ptr %32, align 8
  %158 = and i32 %157, 16711680
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %156
  %161 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %82
  %162 = load i8, ptr %161, align 1, !tbaa !197
  %163 = zext i32 %37 to i64
  %164 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !197
  %166 = icmp eq i8 %162, %165
  br i1 %166, label %168, label %167

167:                                              ; preds = %160
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 836, ptr noundef nonnull @.str.1) #22
  br label %168

168:                                              ; preds = %160, %167
  %169 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %32, i32 noundef %37, i32 noundef 0) #22
  br label %172

170:                                              ; preds = %153, %156
  %171 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  tail call void @convert_move(ptr noundef %171, ptr noundef nonnull %32, i32 noundef %3)
  br label %172

172:                                              ; preds = %31, %170, %168, %150, %147, %70
  %173 = phi ptr [ %72, %70 ], [ %149, %147 ], [ %152, %150 ], [ %169, %168 ], [ %171, %170 ], [ %32, %31 ]
  ret ptr %173
}

declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @can_move_by_pieces(i64 noundef %0, i32 noundef %1) local_unnamed_addr #13 !prof !185 {
  %3 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %0, i32 noundef %1)
  %4 = tail call zeroext i8 @optimize_insn_for_speed_p() #22
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @ix86_cost, align 8, !tbaa !186
  %8 = getelementptr inbounds %struct.processor_costs, ptr %7, i64 0, i32 10
  %9 = load i32, ptr %8, align 4, !tbaa !278
  %10 = zext i32 %9 to i64
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi i64 [ %10, %6 ], [ 3, %2 ]
  %13 = icmp ult i64 %3, %12
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @move_by_pieces_ninsns(i64 noundef %0, i32 noundef %1) unnamed_addr #13 !prof !185 {
  %3 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef 2, i32 noundef 1) #22
  %4 = tail call i32 @get_mode_alignment(i32 noundef %3) #22
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !197
  %8 = zext i8 %7 to i32
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = zext i8 %7 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !197
  %14 = icmp ugt i8 %13, 4
  br i1 %14, label %27, label %21

15:                                               ; preds = %21
  %16 = zext i8 %25 to i32
  %17 = zext i8 %25 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !197
  %20 = icmp ugt i8 %19, 4
  br i1 %20, label %27, label %21, !llvm.loop !280

21:                                               ; preds = %10, %15
  %22 = phi i64 [ %17, %15 ], [ %11, %10 ]
  %23 = phi i32 [ %16, %15 ], [ %8, %10 ]
  %24 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %22
  %25 = load i8, ptr %24, align 1, !tbaa !197
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %15, !llvm.loop !280

27:                                               ; preds = %15, %21, %10, %6
  %28 = phi i32 [ %8, %6 ], [ %8, %10 ], [ %23, %21 ], [ %23, %15 ]
  %29 = tail call i32 @get_mode_alignment(i32 noundef %28) #22
  %30 = icmp ult i32 %29, %1
  br i1 %30, label %34, label %31

31:                                               ; preds = %27, %2
  %32 = phi i32 [ %3, %2 ], [ %28, %27 ]
  %33 = tail call i32 @get_mode_alignment(i32 noundef %32) #22
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %1, %27 ], [ %33, %31 ]
  %36 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2
  %37 = icmp eq i8 %36, 0
  br label %38

38:                                               ; preds = %81, %34
  %39 = phi i32 [ 5, %34 ], [ %82, %81 ]
  %40 = phi i64 [ 0, %34 ], [ %83, %81 ]
  %41 = phi i64 [ %0, %34 ], [ %84, %81 ]
  %42 = icmp ugt i32 %39, 1
  br i1 %42, label %43, label %85

43:                                               ; preds = %38
  br i1 %37, label %57, label %44

44:                                               ; preds = %43, %44
  %45 = phi i8 [ %55, %44 ], [ %36, %43 ]
  %46 = phi i32 [ %53, %44 ], [ 0, %43 ]
  %47 = zext i8 %45 to i32
  %48 = zext i8 %45 to i64
  %49 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !197
  %51 = zext i8 %50 to i32
  %52 = icmp ugt i32 %39, %51
  %53 = select i1 %52, i32 %47, i32 %46
  %54 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %48
  %55 = load i8, ptr %54, align 1, !tbaa !197
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %44, !llvm.loop !281

57:                                               ; preds = %44, %43
  %58 = phi i32 [ 0, %43 ], [ %53, %44 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %81, label %60

60:                                               ; preds = %57
  %61 = zext nneg i32 %58 to i64
  %62 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !235
  %64 = icmp eq i32 %63, 2956
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = tail call i32 @get_mode_alignment(i32 noundef %58) #22
  %67 = icmp ult i32 %35, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %61
  %70 = load i8, ptr %69, align 1, !tbaa !197
  %71 = zext i8 %70 to i64
  %72 = udiv i64 %41, %71
  %73 = add i64 %72, %40
  %74 = urem i64 %41, %71
  br label %75

75:                                               ; preds = %68, %65, %60
  %76 = phi i64 [ %73, %68 ], [ %40, %65 ], [ %40, %60 ]
  %77 = phi i64 [ %74, %68 ], [ %41, %65 ], [ %41, %60 ]
  %78 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %61
  %79 = load i8, ptr %78, align 1, !tbaa !197
  %80 = zext i8 %79 to i32
  br label %81

81:                                               ; preds = %57, %75
  %82 = phi i32 [ %80, %75 ], [ %39, %57 ]
  %83 = phi i64 [ %76, %75 ], [ %40, %57 ]
  %84 = phi i64 [ %77, %75 ], [ %41, %57 ]
  br i1 %59, label %85, label %38

85:                                               ; preds = %38, %81
  %86 = phi i64 [ %83, %81 ], [ %40, %38 ]
  %87 = phi i64 [ %84, %81 ], [ %41, %38 ]
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1088, ptr noundef nonnull @.str.1) #22
  br label %90

90:                                               ; preds = %85, %89
  ret i64 %86
}

declare zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @move_by_pieces(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 !prof !185 {
  %6 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !282
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !197
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 5
  %13 = load i8, ptr %12, align 8, !tbaa !249
  br label %14

14:                                               ; preds = %5, %11
  %15 = phi i8 [ %13, %11 ], [ 0, %5 ]
  %16 = tail call i32 %6(i8 noundef zeroext %15) #22
  %17 = load ptr, ptr %7, align 8, !tbaa !197
  %18 = icmp eq ptr %0, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !197
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.mem_attrs, ptr %21, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !294
  br label %26

26:                                               ; preds = %14, %23, %19
  %27 = phi i32 [ %25, %23 ], [ 8, %19 ], [ %3, %14 ]
  %28 = load ptr, ptr %8, align 8, !tbaa !197
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.mem_attrs, ptr %28, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !294
  br label %33

33:                                               ; preds = %26, %30
  %34 = phi i32 [ %32, %30 ], [ 8, %26 ]
  %35 = icmp ult i32 %27, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  br i1 %18, label %46, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !197
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %42

41:                                               ; preds = %33
  br i1 %29, label %46, label %42

42:                                               ; preds = %41, %37
  %43 = phi ptr [ %39, %37 ], [ %28, %41 ]
  %44 = getelementptr inbounds %struct.mem_attrs, ptr %43, i64 0, i32 4
  %45 = load i32, ptr %44, align 4, !tbaa !294
  br label %46

46:                                               ; preds = %42, %36, %41, %37
  %47 = phi i32 [ 8, %37 ], [ 8, %41 ], [ %3, %36 ], [ %45, %42 ]
  br i1 %18, label %69, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !282
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %51 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !197
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.mem_attrs, ptr %52, i64 0, i32 5
  %56 = load i8, ptr %55, align 8, !tbaa !249
  br label %57

57:                                               ; preds = %48, %54
  %58 = phi i8 [ %56, %54 ], [ 0, %48 ]
  %59 = tail call i32 %49(i8 noundef zeroext %58) #22
  %60 = load ptr, ptr %50, align 8, !tbaa !197
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = add nsw i32 %62, -74
  %64 = icmp ult i32 %63, 4
  %65 = zext i1 %64 to i32
  %66 = icmp ne i32 %62, 74
  %67 = icmp ne i32 %62, 76
  %68 = and i1 %66, %67
  br label %69

69:                                               ; preds = %46, %57
  %70 = phi i1 [ %68, %57 ], [ false, %46 ]
  %71 = phi i32 [ %65, %57 ], [ 1, %46 ]
  %72 = phi ptr [ %0, %57 ], [ null, %46 ]
  %73 = phi i32 [ %59, %57 ], [ 0, %46 ]
  %74 = phi ptr [ %60, %57 ], [ null, %46 ]
  %75 = load i32, ptr %17, align 8
  %76 = and i32 %75, 65534
  %77 = add nsw i32 %76, -74
  %78 = icmp ult i32 %77, 4
  %79 = select i1 %70, i64 0, i64 %2
  %80 = icmp ne i32 %71, 0
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %123, label %82

82:                                               ; preds = %69
  %83 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %2, i32 noundef %47)
  %84 = icmp ugt i64 %83, 2
  br i1 %84, label %85, label %123

85:                                               ; preds = %82
  %86 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !197
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %85, %88
  %89 = phi i8 [ %98, %88 ], [ %86, %85 ]
  %90 = phi i32 [ %96, %88 ], [ 0, %85 ]
  %91 = zext i8 %89 to i32
  %92 = zext i8 %89 to i64
  %93 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !197
  %95 = icmp ult i8 %94, 5
  %96 = select i1 %95, i32 %91, i32 %90
  %97 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %92
  %98 = load i8, ptr %97, align 1, !tbaa !197
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %88, !llvm.loop !295

100:                                              ; preds = %88, %85
  %101 = phi i32 [ 0, %85 ], [ %96, %88 ]
  br i1 %78, label %111, label %102

102:                                              ; preds = %100
  %103 = load i32, ptr %17, align 8
  %104 = and i32 %103, 65535
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !201
  %108 = icmp eq i32 %107, 9
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = tail call ptr @copy_to_mode_reg(i32 noundef %16, ptr noundef nonnull %17) #22
  br label %111

111:                                              ; preds = %109, %102, %100
  %112 = phi ptr [ %110, %109 ], [ %17, %102 ], [ %17, %100 ]
  %113 = icmp eq i32 %71, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i32, ptr %74, align 8
  %116 = and i32 %115, 65535
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !201
  %120 = icmp eq i32 %119, 9
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = tail call ptr @copy_to_mode_reg(i32 noundef %73, ptr noundef nonnull %74) #22
  br label %123

123:                                              ; preds = %111, %114, %121, %69, %82
  %124 = phi ptr [ %17, %69 ], [ %112, %121 ], [ %112, %114 ], [ %112, %111 ], [ %17, %82 ]
  %125 = phi ptr [ %74, %69 ], [ %122, %121 ], [ %74, %114 ], [ %74, %111 ], [ %74, %82 ]
  %126 = phi i32 [ 0, %69 ], [ %101, %121 ], [ %101, %114 ], [ %101, %111 ], [ 0, %82 ]
  %127 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef 2, i32 noundef 1) #22
  %128 = tail call i32 @get_mode_alignment(i32 noundef %127) #22
  %129 = icmp ult i32 %47, %128
  br i1 %129, label %130, label %155

130:                                              ; preds = %123
  %131 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !197
  %132 = zext i8 %131 to i32
  %133 = icmp eq i8 %131, 0
  br i1 %133, label %151, label %134

134:                                              ; preds = %130
  %135 = zext i8 %131 to i64
  %136 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !197
  %138 = icmp ugt i8 %137, 4
  br i1 %138, label %151, label %145

139:                                              ; preds = %145
  %140 = zext i8 %149 to i32
  %141 = zext i8 %149 to i64
  %142 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !197
  %144 = icmp ugt i8 %143, 4
  br i1 %144, label %151, label %145, !llvm.loop !296

145:                                              ; preds = %134, %139
  %146 = phi i64 [ %141, %139 ], [ %135, %134 ]
  %147 = phi i32 [ %140, %139 ], [ %132, %134 ]
  %148 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %146
  %149 = load i8, ptr %148, align 1, !tbaa !197
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %139, !llvm.loop !296

151:                                              ; preds = %139, %145, %134, %130
  %152 = phi i32 [ %132, %130 ], [ %132, %134 ], [ %147, %145 ], [ %147, %139 ]
  %153 = tail call i32 @get_mode_alignment(i32 noundef %152) #22
  %154 = icmp ugt i32 %47, %153
  br i1 %154, label %158, label %155

155:                                              ; preds = %151, %123
  %156 = phi i32 [ %127, %123 ], [ %152, %151 ]
  %157 = tail call i32 @get_mode_alignment(i32 noundef %156) #22
  br label %158

158:                                              ; preds = %155, %151
  %159 = phi i32 [ %47, %151 ], [ %157, %155 ]
  %160 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !197
  %161 = icmp eq i8 %160, 0
  %162 = icmp eq ptr %72, null
  %163 = icmp eq i32 %71, 0
  br label %164

164:                                              ; preds = %158, %231
  %165 = phi i32 [ %126, %158 ], [ %183, %231 ]
  %166 = phi i32 [ 5, %158 ], [ %237, %231 ]
  %167 = phi i64 [ %79, %158 ], [ %233, %231 ]
  %168 = phi i64 [ %2, %158 ], [ %232, %231 ]
  br i1 %161, label %182, label %169

169:                                              ; preds = %164, %169
  %170 = phi i8 [ %180, %169 ], [ %160, %164 ]
  %171 = phi i32 [ %178, %169 ], [ %165, %164 ]
  %172 = zext i8 %170 to i32
  %173 = zext i8 %170 to i64
  %174 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !197
  %176 = zext i8 %175 to i32
  %177 = icmp ugt i32 %166, %176
  %178 = select i1 %177, i32 %172, i32 %171
  %179 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %173
  %180 = load i8, ptr %179, align 1, !tbaa !197
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %169, !llvm.loop !297

182:                                              ; preds = %169, %164
  %183 = phi i32 [ %165, %164 ], [ %178, %169 ]
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %239, label %185

185:                                              ; preds = %182
  %186 = zext nneg i32 %183 to i64
  %187 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !235
  %189 = icmp eq i32 %188, 2956
  br i1 %189, label %231, label %190

190:                                              ; preds = %185
  %191 = tail call i32 @get_mode_alignment(i32 noundef %183) #22
  %192 = icmp ult i32 %159, %191
  br i1 %192, label %231, label %193

193:                                              ; preds = %190
  %194 = zext i32 %188 to i64
  %195 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %194, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !257
  %197 = zext nneg i32 %183 to i64
  %198 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !197
  %200 = zext i8 %199 to i64
  %201 = icmp ult i64 %168, %200
  br i1 %201, label %231, label %202

202:                                              ; preds = %193
  %203 = select i1 %70, i64 0, i64 %200
  %204 = select i1 %70, i64 %200, i64 0
  br label %205

205:                                              ; preds = %202, %227
  %206 = phi ptr [ null, %202 ], [ %216, %227 ]
  %207 = phi i64 [ %167, %202 ], [ %228, %227 ]
  %208 = phi i64 [ %168, %202 ], [ %229, %227 ]
  %209 = sub nsw i64 %207, %203
  br i1 %162, label %215, label %210

210:                                              ; preds = %205
  br i1 %163, label %213, label %211

211:                                              ; preds = %210
  %212 = tail call ptr @adjust_automodify_address_1(ptr noundef nonnull %72, i32 noundef %183, ptr noundef %125, i64 noundef %209, i32 noundef 1) #22
  br label %215

213:                                              ; preds = %210
  %214 = tail call ptr @adjust_address_1(ptr noundef nonnull %72, i32 noundef %183, i64 noundef %209, i32 noundef 1, i32 noundef 1) #22
  br label %215

215:                                              ; preds = %213, %211, %205
  %216 = phi ptr [ %212, %211 ], [ %214, %213 ], [ %206, %205 ]
  br i1 %78, label %217, label %219

217:                                              ; preds = %215
  %218 = tail call ptr @adjust_automodify_address_1(ptr noundef %1, i32 noundef %183, ptr noundef %124, i64 noundef %209, i32 noundef 1) #22
  br label %221

219:                                              ; preds = %215
  %220 = tail call ptr @adjust_address_1(ptr noundef %1, i32 noundef %183, i64 noundef %209, i32 noundef 1, i32 noundef 1) #22
  br label %221

221:                                              ; preds = %219, %217
  %222 = phi ptr [ %218, %217 ], [ %220, %219 ]
  br i1 %162, label %226, label %223

223:                                              ; preds = %221
  %224 = tail call ptr (ptr, ...) %196(ptr noundef %216, ptr noundef %222) #22
  %225 = tail call ptr @emit_insn(ptr noundef %224) #22
  br label %227

226:                                              ; preds = %221
  tail call fastcc void @emit_single_push_insn(i32 noundef %183, ptr noundef %222, ptr noundef null)
  br label %227

227:                                              ; preds = %226, %223
  %228 = add nsw i64 %209, %204
  %229 = sub i64 %208, %200
  %230 = icmp ult i64 %229, %200
  br i1 %230, label %231, label %205, !llvm.loop !298

231:                                              ; preds = %227, %193, %190, %185
  %232 = phi i64 [ %168, %185 ], [ %168, %190 ], [ %168, %193 ], [ %229, %227 ]
  %233 = phi i64 [ %167, %185 ], [ %167, %190 ], [ %167, %193 ], [ %228, %227 ]
  %234 = zext nneg i32 %183 to i64
  %235 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !197
  %237 = zext i8 %236 to i32
  %238 = icmp ugt i8 %236, 1
  br i1 %238, label %164, label %239, !llvm.loop !299

239:                                              ; preds = %182, %231
  %240 = phi i64 [ %168, %182 ], [ %232, %231 ]
  %241 = phi i64 [ %167, %182 ], [ %233, %231 ]
  %242 = icmp eq i64 %240, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %239
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1008, ptr noundef nonnull @.str.1) #22
  br label %244

244:                                              ; preds = %239, %243
  %245 = icmp eq i32 %4, 0
  br i1 %245, label %262, label %246

246:                                              ; preds = %244
  br i1 %70, label %248, label %247

247:                                              ; preds = %246
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1014, ptr noundef nonnull @.str.1) #22
  br label %248

248:                                              ; preds = %246, %247
  %249 = icmp eq i32 %71, 0
  %250 = icmp eq i32 %4, 2
  br i1 %249, label %258, label %251

251:                                              ; preds = %248
  br i1 %250, label %252, label %255

252:                                              ; preds = %251
  %253 = tail call ptr @plus_constant(ptr noundef %125, i64 noundef -1) #22
  %254 = tail call ptr @copy_to_mode_reg(i32 noundef %73, ptr noundef %253) #22
  br label %255

255:                                              ; preds = %252, %251
  %256 = phi ptr [ %254, %252 ], [ %125, %251 ]
  %257 = tail call ptr @adjust_automodify_address_1(ptr noundef %72, i32 noundef 14, ptr noundef %256, i64 noundef %241, i32 noundef 1) #22
  br label %262

258:                                              ; preds = %248
  %259 = sext i1 %250 to i64
  %260 = add nsw i64 %241, %259
  %261 = tail call ptr @adjust_address_1(ptr noundef %72, i32 noundef 14, i64 noundef %260, i32 noundef 1, i32 noundef 1) #22
  br label %262

262:                                              ; preds = %244, %255, %258
  %263 = phi ptr [ %257, %255 ], [ %261, %258 ], [ %72, %244 ]
  ret ptr %263
}

declare ptr @copy_to_mode_reg(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #3

declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @adjust_automodify_address_1(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_block_move_hints(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #13 !prof !185 {
  %7 = alloca %struct.ix86_args, align 4
  switch i32 %3, label %85 [
    i32 0, label %86
    i32 3, label %86
    i32 2, label %8
    i32 1, label %84
  ]

8:                                                ; preds = %6
  %9 = load i32, ptr @target_flags, align 4, !tbaa !201
  %10 = and i32 %9, 8196
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = tail call i32 @ix86_cfun_abi() #22
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %80

15:                                               ; preds = %12, %8
  %16 = load ptr, ptr @block_move_fn, align 8, !tbaa !186
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @init_block_move_fn(ptr noundef null)
  br label %19

19:                                               ; preds = %18, %15
  %20 = load ptr, ptr @block_move_fn, align 8, !tbaa !186
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !197
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi ptr [ %24, %22 ], [ null, %19 ]
  %27 = tail call i32 @ix86_function_type_abi(ptr noundef %26) #22
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef %20) #22
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %80

32:                                               ; preds = %29, %25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #22
  %33 = load ptr, ptr @block_move_fn, align 8, !tbaa !186
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @init_block_move_fn(ptr noundef null)
  br label %36

36:                                               ; preds = %35, %32
  %37 = load ptr, ptr @block_move_fn, align 8, !tbaa !186
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !197
  call void @init_cumulative_args(ptr noundef nonnull %7, ptr noundef %39, ptr noundef null, ptr noundef null) #22
  %40 = load ptr, ptr %38, align 8, !tbaa !197
  %41 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !197
  %43 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !186
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %77, label %45

45:                                               ; preds = %36, %72
  %46 = phi i1 [ %76, %72 ], [ %44, %36 ]
  %47 = phi ptr [ %74, %72 ], [ %42, %36 ]
  %48 = getelementptr inbounds %struct.tree_list, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !197
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 14
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = call i32 @vector_type_mode(ptr noundef nonnull %49) #22
  br label %60

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.tree_type, ptr %49, i64 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  br label %60

60:                                               ; preds = %55, %53
  %61 = phi i32 [ %54, %53 ], [ %59, %55 ]
  %62 = call ptr @function_arg(ptr noundef nonnull %7, i32 noundef %61, ptr noundef null, i32 noundef 1) #22
  %63 = icmp eq ptr %62, null
  br i1 %63, label %77, label %64

64:                                               ; preds = %60
  %65 = load i32, ptr %62, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 37
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 13), align 8, !tbaa !300
  %70 = call i32 %69(ptr noundef nonnull %7, i32 noundef %61, ptr noundef null, i8 noundef zeroext 1) #22
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  call void @function_arg_advance(ptr noundef nonnull %7, i32 noundef %61, ptr noundef null, i32 noundef 1) #22
  %73 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !197
  %75 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !186
  %76 = icmp eq ptr %74, %75
  br i1 %76, label %77, label %45, !llvm.loop !301

77:                                               ; preds = %72, %60, %64, %68, %36
  %78 = phi i1 [ %44, %36 ], [ %76, %72 ], [ %46, %60 ], [ %46, %64 ], [ %46, %68 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #22
  %79 = zext i1 %78 to i8
  br label %80

80:                                               ; preds = %12, %29, %77
  %81 = phi i8 [ 1, %12 ], [ 0, %29 ], [ %79, %77 ]
  %82 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !302
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !302
  br label %86

84:                                               ; preds = %6
  br label %86

85:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1193, ptr noundef nonnull @.str.1) #22
  br label %86

86:                                               ; preds = %6, %6, %85, %84, %80
  %87 = phi i8 [ undef, %85 ], [ 0, %84 ], [ %81, %80 ], [ 1, %6 ], [ 1, %6 ]
  %88 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !197
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.mem_attrs, ptr %89, i64 0, i32 4
  %93 = load i32, ptr %92, align 4, !tbaa !294
  br label %94

94:                                               ; preds = %86, %91
  %95 = phi i32 [ %93, %91 ], [ 8, %86 ]
  %96 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !197
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.mem_attrs, ptr %97, i64 0, i32 4
  %101 = load i32, ptr %100, align 4, !tbaa !294
  br label %102

102:                                              ; preds = %94, %99
  %103 = phi i32 [ %101, %99 ], [ 8, %94 ]
  %104 = icmp ult i32 %95, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br i1 %90, label %111, label %107

106:                                              ; preds = %102
  br i1 %98, label %111, label %107

107:                                              ; preds = %106, %105
  %108 = phi ptr [ %89, %105 ], [ %97, %106 ]
  %109 = getelementptr inbounds %struct.mem_attrs, ptr %108, i64 0, i32 4
  %110 = load i32, ptr %109, align 4, !tbaa !294
  br label %111

111:                                              ; preds = %107, %106, %105
  %112 = phi i32 [ 8, %105 ], [ 8, %106 ], [ %110, %107 ]
  %113 = icmp ugt i32 %112, 7
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1197, ptr noundef nonnull @.str.1) #22
  br label %115

115:                                              ; preds = %111, %114
  %116 = load i32, ptr %0, align 8
  %117 = and i32 %116, 65535
  %118 = icmp eq i32 %117, 43
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1199, ptr noundef nonnull @.str.1) #22
  br label %120

120:                                              ; preds = %115, %119
  %121 = load i32, ptr %1, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 43
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1200, ptr noundef nonnull @.str.1) #22
  br label %125

125:                                              ; preds = %120, %124
  %126 = icmp eq ptr %2, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %125
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1201, ptr noundef nonnull @.str.1) #22
  br label %128

128:                                              ; preds = %125, %127
  %129 = call ptr @adjust_address_1(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 0, i32 noundef 1, i32 noundef 1) #22
  %130 = call ptr @adjust_address_1(ptr noundef nonnull %1, i32 noundef 1, i64 noundef 0, i32 noundef 1, i32 noundef 1) #22
  %131 = load i32, ptr %2, align 8
  %132 = and i32 %131, 65535
  %133 = icmp eq i32 %132, 30
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %136 = load i64, ptr %135, align 8, !tbaa !197
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %345, label %138

138:                                              ; preds = %134
  %139 = call ptr @shallow_copy_rtx_stat(ptr noundef %129) #22
  %140 = call ptr @shallow_copy_rtx_stat(ptr noundef %130) #22
  call void @set_mem_size(ptr noundef %139, ptr noundef nonnull %2) #22
  call void @set_mem_size(ptr noundef %140, ptr noundef nonnull %2) #22
  br label %141

141:                                              ; preds = %138, %128
  %142 = phi ptr [ %140, %138 ], [ %130, %128 ]
  %143 = phi ptr [ %139, %138 ], [ %129, %128 ]
  %144 = load i32, ptr %2, align 8
  %145 = and i32 %144, 65535
  %146 = icmp eq i32 %145, 30
  br i1 %146, label %147, label %164

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %149 = load i64, ptr %148, align 8, !tbaa !197
  %150 = call fastcc i64 @move_by_pieces_ninsns(i64 noundef %149, i32 noundef %112)
  %151 = call zeroext i8 @optimize_insn_for_speed_p() #22
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %147
  %154 = load ptr, ptr @ix86_cost, align 8, !tbaa !186
  %155 = getelementptr inbounds %struct.processor_costs, ptr %154, i64 0, i32 10
  %156 = load i32, ptr %155, align 4, !tbaa !278
  %157 = zext i32 %156 to i64
  br label %158

158:                                              ; preds = %147, %153
  %159 = phi i64 [ %157, %153 ], [ 3, %147 ]
  %160 = icmp ult i64 %150, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i64, ptr %148, align 8, !tbaa !197
  %163 = call ptr @move_by_pieces(ptr noundef %143, ptr noundef %142, i64 noundef %162, i32 noundef %112, i32 noundef 0)
  br label %339

164:                                              ; preds = %158, %141
  %165 = lshr i32 %112, 3
  %166 = zext nneg i32 %165 to i64
  %167 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %166) #22
  %168 = load i32, ptr @volatile_ok, align 4, !tbaa !201
  store i32 1, ptr @volatile_ok, align 4, !tbaa !201
  %169 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !197
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %256, label %171

171:                                              ; preds = %164
  %172 = call i32 @llvm.umax.i32(i32 %112, i32 %4)
  %173 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %174 = lshr i32 %172, 3
  %175 = zext nneg i32 %174 to i64
  br label %176

176:                                              ; preds = %171, %252
  %177 = phi i1 [ %170, %171 ], [ %255, %252 ]
  %178 = phi i8 [ %169, %171 ], [ %254, %252 ]
  %179 = zext i8 %178 to i32
  %180 = zext i8 %178 to i64
  %181 = getelementptr inbounds [87 x i32], ptr @movmem_optab, i64 0, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !201
  %183 = icmp eq i32 %182, 2956
  br i1 %183, label %252, label %184

184:                                              ; preds = %176
  %185 = load i32, ptr %2, align 8
  %186 = and i32 %185, 65535
  %187 = icmp eq i32 %186, 30
  br i1 %187, label %188, label %194

188:                                              ; preds = %184
  %189 = load i64, ptr %173, align 8, !tbaa !197
  %190 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %180
  %191 = load i64, ptr %190, align 8, !tbaa !311
  %192 = lshr i64 %191, 1
  %193 = icmp ugt i64 %189, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %188, %184
  %195 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %180
  %196 = load i8, ptr %195, align 1, !tbaa !197
  %197 = icmp ugt i8 %196, 3
  br i1 %197, label %198, label %252

198:                                              ; preds = %188, %194
  %199 = sext i32 %182 to i64
  %200 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %199, i32 3
  %201 = load ptr, ptr %200, align 8, !tbaa !217
  %202 = load ptr, ptr %201, align 8, !tbaa !219
  %203 = icmp eq ptr %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %198
  %205 = call i32 %202(ptr noundef %143, i32 noundef 1) #22
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %252, label %207

207:                                              ; preds = %204, %198
  %208 = getelementptr inbounds %struct.insn_operand_data, ptr %201, i64 1
  %209 = load ptr, ptr %208, align 8, !tbaa !219
  %210 = icmp eq ptr %209, null
  br i1 %210, label %214, label %211

211:                                              ; preds = %207
  %212 = call i32 %209(ptr noundef %142, i32 noundef 1) #22
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %252, label %214

214:                                              ; preds = %211, %207
  %215 = getelementptr inbounds %struct.insn_operand_data, ptr %201, i64 3
  %216 = load ptr, ptr %215, align 8, !tbaa !219
  %217 = icmp eq ptr %216, null
  br i1 %217, label %221, label %218

218:                                              ; preds = %214
  %219 = call i32 %216(ptr noundef %167, i32 noundef 0) #22
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %252, label %221

221:                                              ; preds = %218, %214
  %222 = call ptr @get_last_insn() #22
  %223 = call ptr @convert_modes(i32 noundef %179, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 1)
  %224 = getelementptr inbounds %struct.insn_operand_data, ptr %201, i64 2
  %225 = load ptr, ptr %224, align 8, !tbaa !219
  %226 = icmp eq ptr %225, null
  br i1 %226, label %232, label %227

227:                                              ; preds = %221
  %228 = call i32 %225(ptr noundef %223, i32 noundef %179) #22
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = call ptr @copy_to_mode_reg(i32 noundef %179, ptr noundef %223) #22
  br label %232

232:                                              ; preds = %230, %227, %221
  %233 = phi ptr [ %223, %227 ], [ %231, %230 ], [ %223, %221 ]
  %234 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %199, i32 4
  %235 = load i8, ptr %234, align 8, !tbaa !312
  %236 = icmp eq i8 %235, 4
  %237 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %199, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !257
  br i1 %236, label %239, label %241

239:                                              ; preds = %232
  %240 = call ptr (ptr, ...) %238(ptr noundef %143, ptr noundef %142, ptr noundef %233, ptr noundef %167) #22
  br label %245

241:                                              ; preds = %232
  %242 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %175) #22
  %243 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %5) #22
  %244 = call ptr (ptr, ...) %238(ptr noundef %143, ptr noundef %142, ptr noundef %233, ptr noundef %167, ptr noundef %242, ptr noundef %243) #22
  br label %245

245:                                              ; preds = %241, %239
  %246 = phi ptr [ %240, %239 ], [ %244, %241 ]
  %247 = icmp eq ptr %246, null
  br i1 %247, label %250, label %248

248:                                              ; preds = %245
  %249 = call ptr @emit_insn(ptr noundef nonnull %246) #22
  store i32 %168, ptr @volatile_ok, align 4, !tbaa !201
  br label %251

250:                                              ; preds = %245
  call void @delete_insns_since(ptr noundef %222) #22
  br label %251

251:                                              ; preds = %250, %248
  br i1 %247, label %252, label %258

252:                                              ; preds = %218, %211, %204, %251, %194, %176
  %253 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %180
  %254 = load i8, ptr %253, align 1, !tbaa !197
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %176, !llvm.loop !313

256:                                              ; preds = %252, %164
  %257 = phi i1 [ %170, %164 ], [ %255, %252 ]
  store i32 %168, ptr @volatile_ok, align 4, !tbaa !201
  br label %258

258:                                              ; preds = %251, %256
  %259 = phi i1 [ %257, %256 ], [ %177, %251 ]
  br i1 %259, label %260, label %339

260:                                              ; preds = %258
  %261 = icmp eq i8 %87, 0
  br i1 %261, label %282, label %262

262:                                              ; preds = %260
  %263 = getelementptr inbounds %struct.rtx_def, ptr %143, i64 0, i32 1, i32 0, i32 0, i64 1
  %264 = load ptr, ptr %263, align 8, !tbaa !197
  %265 = icmp eq ptr %264, null
  br i1 %265, label %270, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.mem_attrs, ptr %264, i64 0, i32 5
  %268 = load i8, ptr %267, align 8, !tbaa !249
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %270, label %282

270:                                              ; preds = %262, %266
  %271 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1, i32 0, i32 0, i64 1
  %272 = load ptr, ptr %271, align 8, !tbaa !197
  %273 = icmp eq ptr %272, null
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.mem_attrs, ptr %272, i64 0, i32 5
  %276 = load i8, ptr %275, align 8, !tbaa !249
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %274, %270
  %279 = icmp eq i32 %3, 3
  %280 = zext i1 %279 to i8
  %281 = call ptr @emit_block_move_via_libcall(ptr noundef %143, ptr noundef %142, ptr noundef nonnull %2, i8 noundef zeroext %280)
  br label %339

282:                                              ; preds = %274, %266, %260
  %283 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !282
  %284 = getelementptr inbounds %struct.rtx_def, ptr %143, i64 0, i32 1
  %285 = getelementptr inbounds %struct.rtx_def, ptr %143, i64 0, i32 1, i32 0, i32 0, i64 1
  %286 = load ptr, ptr %285, align 8, !tbaa !197
  %287 = icmp eq ptr %286, null
  br i1 %287, label %291, label %288

288:                                              ; preds = %282
  %289 = getelementptr inbounds %struct.mem_attrs, ptr %286, i64 0, i32 5
  %290 = load i8, ptr %289, align 8, !tbaa !249
  br label %291

291:                                              ; preds = %288, %282
  %292 = phi i8 [ %290, %288 ], [ 0, %282 ]
  %293 = call i32 %283(i8 noundef zeroext %292) #22
  %294 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !282
  %295 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1
  %296 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1, i32 0, i32 0, i64 1
  %297 = load ptr, ptr %296, align 8, !tbaa !197
  %298 = icmp eq ptr %297, null
  br i1 %298, label %302, label %299

299:                                              ; preds = %291
  %300 = getelementptr inbounds %struct.mem_attrs, ptr %297, i64 0, i32 5
  %301 = load i8, ptr %300, align 8, !tbaa !249
  br label %302

302:                                              ; preds = %299, %291
  %303 = phi i8 [ %301, %299 ], [ 0, %291 ]
  %304 = call i32 %294(i8 noundef zeroext %303) #22
  %305 = load i32, ptr %2, align 8
  %306 = lshr i32 %305, 16
  %307 = and i32 %306, 255
  %308 = icmp eq i32 %307, 0
  %309 = load i32, ptr @word_mode, align 4
  %310 = select i1 %308, i32 %309, i32 %307
  %311 = call ptr @gen_label_rtx() #22
  %312 = call ptr @gen_label_rtx() #22
  %313 = call ptr @gen_reg_rtx(i32 noundef %310) #22
  %314 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %315 = call ptr @emit_move_insn(ptr noundef %313, ptr noundef %314)
  %316 = load ptr, ptr %284, align 8, !tbaa !197
  %317 = call ptr @force_operand(ptr noundef %316, ptr noundef null)
  %318 = load ptr, ptr %295, align 8, !tbaa !197
  %319 = call ptr @force_operand(ptr noundef %318, ptr noundef null)
  call void @do_pending_stack_adjust() #22
  call void @emit_jump(ptr noundef %312) #22
  %320 = call ptr @emit_label(ptr noundef %311) #22
  %321 = call ptr @convert_modes(i32 noundef %293, i32 noundef %310, ptr noundef %313, i32 noundef 1)
  %322 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %293, ptr noundef %317, ptr noundef %321) #22
  %323 = icmp eq i32 %293, %304
  br i1 %323, label %326, label %324

324:                                              ; preds = %302
  %325 = call ptr @convert_modes(i32 noundef %304, i32 noundef %310, ptr noundef %313, i32 noundef 1)
  br label %326

326:                                              ; preds = %324, %302
  %327 = phi ptr [ %325, %324 ], [ %321, %302 ]
  %328 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %304, ptr noundef %319, ptr noundef %327) #22
  %329 = call ptr @change_address(ptr noundef %143, i32 noundef 14, ptr noundef %322) #22
  %330 = call ptr @change_address(ptr noundef %142, i32 noundef 14, ptr noundef %328) #22
  %331 = call ptr @emit_move_insn(ptr noundef %329, ptr noundef %330)
  %332 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !186
  %333 = call ptr @expand_simple_binop(i32 noundef %310, i32 noundef 49, ptr noundef %313, ptr noundef %332, ptr noundef %313, i32 noundef 1, i32 noundef 3) #22
  %334 = icmp eq ptr %333, %313
  br i1 %334, label %337, label %335

335:                                              ; preds = %326
  %336 = call ptr @emit_move_insn(ptr noundef %313, ptr noundef %333)
  br label %337

337:                                              ; preds = %326, %335
  %338 = call ptr @emit_label(ptr noundef %312) #22
  call void @emit_cmp_and_jump_insns(ptr noundef %313, ptr noundef nonnull %2, i32 noundef 85, ptr noundef null, i32 noundef %310, i32 noundef 1, ptr noundef %311) #22
  br label %339

339:                                              ; preds = %258, %337, %278, %161
  %340 = phi ptr [ null, %161 ], [ null, %258 ], [ %281, %278 ], [ null, %337 ]
  %341 = icmp eq i32 %3, 2
  br i1 %341, label %342, label %345

342:                                              ; preds = %339
  %343 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !302
  %344 = add nsw i32 %343, -1
  store i32 %344, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !302
  br label %345

345:                                              ; preds = %339, %342, %134
  %346 = phi ptr [ null, %134 ], [ %340, %342 ], [ %340, %339 ]
  ret ptr %346
}

declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #3

declare void @set_mem_size(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_block_move_via_libcall(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #13 !prof !185 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !197
  %7 = tail call ptr @copy_to_mode_reg(i32 noundef 16, ptr noundef %6) #22
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !197
  %10 = tail call ptr @copy_to_mode_reg(i32 noundef 16, ptr noundef %9) #22
  %11 = load i32, ptr @ptr_mode, align 4, !tbaa !201
  %12 = tail call ptr @convert_memory_address_addr_space(i32 noundef %11, ptr noundef %7, i8 noundef zeroext 0) #22
  %13 = load i32, ptr @ptr_mode, align 4, !tbaa !201
  %14 = tail call ptr @convert_memory_address_addr_space(i32 noundef %13, ptr noundef %10, i8 noundef zeroext 0) #22
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !186
  %16 = tail call ptr @make_tree(ptr noundef %15, ptr noundef %12) #22
  %17 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !186
  %18 = tail call ptr @make_tree(ptr noundef %17, ptr noundef %14) #22
  %19 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 14
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = tail call i32 @vector_type_mode(ptr noundef nonnull %19) #22
  br label %30

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  br label %30

30:                                               ; preds = %25, %23
  %31 = phi i32 [ %24, %23 ], [ %29, %25 ]
  %32 = tail call ptr @convert_modes(i32 noundef %31, i32 noundef 0, ptr noundef %2, i32 noundef 1)
  %33 = tail call ptr @copy_to_mode_reg(i32 noundef %31, ptr noundef %32) #22
  %34 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %35 = tail call ptr @make_tree(ptr noundef %34, ptr noundef %33) #22
  %36 = load ptr, ptr @block_move_fn, align 8, !tbaa !186
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  tail call void @init_block_move_fn(ptr noundef null)
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i1, ptr @emit_block_move_libcall_fn.emitted_extern, align 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %39
  store i1 true, ptr @emit_block_move_libcall_fn.emitted_extern, align 1
  %42 = load ptr, ptr @block_move_fn, align 8, !tbaa !186
  tail call void @make_decl_rtl(ptr noundef %42) #22
  %43 = load ptr, ptr @block_move_fn, align 8, !tbaa !186
  tail call void @assemble_external(ptr noundef %43) #22
  br label %44

44:                                               ; preds = %39, %41
  %45 = load ptr, ptr @block_move_fn, align 8, !tbaa !186
  %46 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %45, i32 noundef 3, ptr noundef %16, ptr noundef %18, ptr noundef %35) #22
  %47 = load i64, ptr %46, align 8
  %48 = and i8 %3, 1
  %49 = zext nneg i8 %48 to i64
  %50 = shl nuw nsw i64 %49, 18
  %51 = and i64 %47, -262145
  %52 = or disjoint i64 %51, %50
  store i64 %52, ptr %46, align 8
  %53 = tail call ptr @expand_expr_real(ptr noundef nonnull %46, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  ret ptr %53
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_block_move(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #13 !prof !185 {
  %5 = tail call ptr @emit_block_move_hints(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0, i64 noundef -1)
  ret ptr %5
}

declare ptr @convert_memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @make_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @init_block_move_fn(ptr noundef %0) local_unnamed_addr #13 !prof !185 {
  %2 = load ptr, ptr @block_move_fn, align 8, !tbaa !186
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %22

4:                                                ; preds = %1
  %5 = tail call ptr @get_identifier(ptr noundef nonnull @.str.2) #22
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !186
  %7 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 40), align 16, !tbaa !186
  %8 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %9 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %6, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef null) #22
  %10 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 29, ptr noundef %5, ptr noundef %9) #22
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = or i64 %12, 33554432
  store i64 %13, ptr %11, align 8
  %14 = load i64, ptr %10, align 8
  %15 = or i64 %14, 134217728
  store i64 %15, ptr %10, align 8
  %16 = or i64 %12, 33558528
  store i64 %16, ptr %11, align 8
  %17 = or i64 %14, 167772160
  store i64 %17, ptr %10, align 8
  %18 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %10, i64 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, -7169
  %21 = or disjoint i32 %20, 4096
  store i32 %21, ptr %18, align 8
  store ptr %10, ptr @block_move_fn, align 8, !tbaa !186
  br label %22

22:                                               ; preds = %4, %1
  %23 = icmp eq ptr %0, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr @block_move_fn, align 8, !tbaa !186
  tail call void @set_user_assembler_name(ptr noundef %25, ptr noundef nonnull %0) #22
  br label %26

26:                                               ; preds = %24, %22
  ret void
}

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare ptr @build_function_type_list(ptr noundef, ...) local_unnamed_addr #3

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_user_assembler_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @move_block_to_reg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 !prof !185 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !201
  %12 = icmp eq i32 %11, 9
  br i1 %12, label %13, label %19

13:                                               ; preds = %6
  %14 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %1) #22
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = tail call ptr @force_const_mem(i32 noundef %3, ptr noundef nonnull %1) #22
  %18 = tail call ptr @validize_mem(ptr noundef %17) #22
  br label %19

19:                                               ; preds = %16, %13, %6
  %20 = phi ptr [ %1, %13 ], [ %18, %16 ], [ %1, %6 ]
  %21 = icmp sgt i32 %2, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19, %22
  %23 = phi i32 [ %29, %22 ], [ 0, %19 ]
  %24 = load i32, ptr @word_mode, align 4, !tbaa !201
  %25 = add nsw i32 %23, %0
  %26 = tail call ptr @gen_rtx_REG(i32 noundef %24, i32 noundef %25) #22
  %27 = tail call ptr @operand_subword_force(ptr noundef %20, i32 noundef %23, i32 noundef %3) #22
  %28 = tail call ptr @emit_move_insn(ptr noundef %26, ptr noundef %27)
  %29 = add nuw nsw i32 %23, 1
  %30 = icmp eq i32 %29, %2
  br i1 %30, label %31, label %22, !llvm.loop !314

31:                                               ; preds = %22, %19, %4
  ret void
}

declare zeroext i8 @legitimate_constant_p(ptr noundef) local_unnamed_addr #3

declare ptr @validize_mem(ptr noundef) local_unnamed_addr #3

declare ptr @force_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @operand_subword_force(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @move_block_from_reg(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #13 !prof !185 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %3, %10
  %6 = phi i32 [ %15, %10 ], [ 0, %3 ]
  %7 = tail call ptr @operand_subword(ptr noundef %1, i32 noundef %6, i32 noundef 1, i32 noundef 1) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1597, ptr noundef nonnull @.str.1) #22
  br label %10

10:                                               ; preds = %5, %9
  %11 = load i32, ptr @word_mode, align 4, !tbaa !201
  %12 = add nsw i32 %6, %0
  %13 = tail call ptr @gen_rtx_REG(i32 noundef %11, i32 noundef %12) #22
  %14 = tail call ptr @emit_move_insn(ptr noundef %7, ptr noundef %13)
  %15 = add nuw nsw i32 %6, 1
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %5, !llvm.loop !315

17:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gen_group_rtx(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !185 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 15
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1615, ptr noundef nonnull @.str.1) #22
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !197
  %9 = load i32, ptr %8, align 8, !tbaa !316
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = alloca i8, i64 %11, align 16
  %13 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !186
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !197
  %17 = icmp eq ptr %16, null
  %18 = zext i1 %17 to i32
  br i1 %17, label %19, label %20

19:                                               ; preds = %6
  store ptr null, ptr %12, align 16, !tbaa !186
  br label %20

20:                                               ; preds = %19, %6
  %21 = icmp sgt i32 %9, %18
  br i1 %21, label %22, label %42

22:                                               ; preds = %20
  %23 = zext i1 %17 to i64
  %24 = zext i32 %9 to i64
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi i64 [ %23, %22 ], [ %40, %25 ]
  %27 = load ptr, ptr %7, align 8, !tbaa !197
  %28 = getelementptr inbounds %struct.rtvec_def, ptr %27, i64 0, i32 1, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !186
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !197
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !197
  %37 = tail call ptr @gen_reg_rtx(i32 noundef %34) #22
  %38 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %37, ptr noundef %36) #22
  %39 = getelementptr inbounds ptr, ptr %12, i64 %26
  store ptr %38, ptr %39, align 8, !tbaa !186
  %40 = add nuw nsw i64 %26, 1
  %41 = icmp eq i64 %40, %24
  br i1 %41, label %42, label %25, !llvm.loop !318

42:                                               ; preds = %25, %20
  %43 = load i32, ptr %0, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = call ptr @gen_rtvec_v(i32 noundef %9, ptr noundef nonnull %12) #22
  %47 = call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef %45, ptr noundef %46) #22
  ret ptr %47
}

declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtvec_v(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @emit_group_load(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, i32 noundef %3) local_unnamed_addr #13 !prof !185 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !197
  %7 = load i32, ptr %6, align 8, !tbaa !316
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = alloca i8, i64 %9, align 16
  call fastcc void @emit_group_load_1(ptr noundef nonnull %10, ptr noundef %0, ptr noundef %1, i32 noundef %3)
  %11 = load ptr, ptr %5, align 8, !tbaa !197
  %12 = load i32, ptr %11, align 8, !tbaa !316
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %4, %26
  %15 = phi i64 [ %27, %26 ], [ 0, %4 ]
  %16 = phi ptr [ %28, %26 ], [ %11, %4 ]
  %17 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !186
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !197
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds ptr, ptr %10, i64 %15
  %24 = load ptr, ptr %23, align 8, !tbaa !186
  %25 = tail call ptr @emit_move_insn(ptr noundef nonnull %20, ptr noundef %24)
  br label %26

26:                                               ; preds = %14, %22
  %27 = add nuw nsw i64 %15, 1
  %28 = load ptr, ptr %5, align 8, !tbaa !197
  %29 = load i32, ptr %28, align 8, !tbaa !316
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %14, label %32, !llvm.loop !319

32:                                               ; preds = %26, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @emit_group_load_1(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #13 !prof !185 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  br label %7

7:                                                ; preds = %54, %4
  %8 = phi ptr [ %2, %4 ], [ %55, %54 ]
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  %12 = load i32, ptr %1, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 15
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1648, ptr noundef nonnull @.str.1) #22
  br label %16

16:                                               ; preds = %7, %15
  %17 = icmp eq i32 %11, 0
  br i1 %17, label %56, label %18

18:                                               ; preds = %16
  %19 = zext nneg i32 %11 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !197
  %22 = and i8 %21, -2
  %23 = icmp eq i8 %22, 2
  br i1 %23, label %56, label %24

24:                                               ; preds = %18
  %25 = load i32, ptr %8, align 8
  %26 = trunc i32 %25 to i16
  switch i16 %26, label %27 [
    i16 43, label %56
    i16 41, label %56
  ]

27:                                               ; preds = %24
  %28 = lshr i32 %25, 16
  %29 = and i32 %28, 255
  %30 = tail call i32 @int_mode_for_mode(i32 noundef %29) #22
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, ptr %8, align 8
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = sext i32 %3 to i64
  %37 = tail call ptr @assign_stack_temp(i32 noundef %35, i64 noundef %36, i32 noundef 0) #22
  br label %40

38:                                               ; preds = %27
  %39 = tail call ptr @gen_reg_rtx(i32 noundef %30) #22
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi ptr [ %37, %32 ], [ %39, %38 ]
  br i1 %31, label %48, label %42

42:                                               ; preds = %40
  %43 = load ptr, ptr @rtl_hooks, align 8, !tbaa !231
  %44 = load i32, ptr %8, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = tail call ptr %43(i32 noundef %46, ptr noundef %41) #22
  br label %48

48:                                               ; preds = %42, %40
  %49 = phi ptr [ %47, %42 ], [ %41, %40 ]
  %50 = tail call ptr @emit_move_insn(ptr noundef %49, ptr noundef nonnull %8)
  br i1 %31, label %54, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr @rtl_hooks, align 8, !tbaa !231
  %53 = tail call ptr %52(i32 noundef %30, ptr noundef %49) #22
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi ptr [ %53, %51 ], [ %49, %48 ]
  br label %7

56:                                               ; preds = %24, %18, %24, %16
  %57 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !197
  %59 = getelementptr inbounds %struct.rtvec_def, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !186
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !197
  %63 = icmp eq ptr %62, null
  %64 = zext i1 %63 to i32
  %65 = load ptr, ptr %57, align 8, !tbaa !197
  %66 = load i32, ptr %65, align 8, !tbaa !316
  %67 = icmp sgt i32 %66, %64
  br i1 %67, label %68, label %298

68:                                               ; preds = %56
  %69 = icmp sgt i32 %3, -1
  %70 = zext nneg i32 %3 to i64
  %71 = sext i32 %3 to i64
  %72 = zext i1 %63 to i64
  br label %73

73:                                               ; preds = %68, %292
  %74 = phi i64 [ %72, %68 ], [ %293, %292 ]
  %75 = phi ptr [ %65, %68 ], [ %294, %292 ]
  %76 = getelementptr inbounds %struct.rtvec_def, ptr %75, i64 0, i32 1, i64 %74
  %77 = load ptr, ptr %76, align 8, !tbaa !186
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !197
  %80 = load i32, ptr %79, align 8
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !197
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !197
  %87 = zext nneg i32 %82 to i64
  %88 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !197
  %90 = zext i8 %89 to i32
  %91 = zext i8 %89 to i64
  %92 = add nsw i64 %86, %91
  %93 = icmp sgt i64 %92, %70
  %94 = select i1 %69, i1 %93, i1 false
  br i1 %94, label %95, label %100

95:                                               ; preds = %73
  %96 = trunc i64 %86 to i32
  %97 = sub i32 %3, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1700, ptr noundef nonnull @.str.1) #22
  br label %100

100:                                              ; preds = %99, %95, %73
  %101 = phi i32 [ %97, %95 ], [ 0, %99 ], [ %90, %73 ]
  %102 = load i32, ptr %8, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 43
  br i1 %104, label %123, label %105

105:                                              ; preds = %100
  %106 = zext nneg i32 %103 to i64
  %107 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !201
  %109 = icmp eq i32 %108, 9
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = lshr i32 %102, 16
  %112 = and i32 %111, 255
  %113 = icmp eq i32 %112, %82
  %114 = icmp eq i32 %112, 0
  %115 = or i1 %113, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %110, %105
  %117 = lshr i32 %102, 16
  %118 = and i32 %117, 255
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, i32 %82, i32 %118
  %121 = call ptr @gen_reg_rtx(i32 noundef %120) #22
  %122 = call ptr @emit_move_insn(ptr noundef %121, ptr noundef nonnull %8)
  br label %123

123:                                              ; preds = %116, %110, %100
  %124 = phi ptr [ %8, %100 ], [ %121, %116 ], [ %8, %110 ]
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 65535
  %127 = icmp eq i32 %126, 43
  br i1 %127, label %128, label %143

128:                                              ; preds = %123
  %129 = shl nsw i64 %86, 3
  %130 = call i32 @get_mode_alignment(i32 noundef %82) #22
  %131 = zext i32 %130 to i64
  %132 = srem i64 %129, %131
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %128
  %135 = load i8, ptr %88, align 1, !tbaa !197
  %136 = zext i8 %135 to i32
  %137 = icmp eq i32 %101, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = call ptr @gen_reg_rtx(i32 noundef %82) #22
  %140 = getelementptr inbounds ptr, ptr %0, i64 %74
  store ptr %139, ptr %140, align 8, !tbaa !186
  %141 = call ptr @adjust_address_1(ptr noundef nonnull %124, i32 noundef %82, i64 noundef %86, i32 noundef 1, i32 noundef 1) #22
  %142 = call ptr @emit_move_insn(ptr noundef %139, ptr noundef %141)
  br label %292

143:                                              ; preds = %134, %128, %123
  %144 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %87
  %145 = load i8, ptr %144, align 1, !tbaa !197
  %146 = and i8 %145, -2
  %147 = icmp eq i8 %146, 10
  br i1 %147, label %148, label %159

148:                                              ; preds = %143
  %149 = load i32, ptr %124, align 8
  %150 = lshr i32 %149, 16
  %151 = and i32 %150, 255
  %152 = icmp eq i32 %151, %82
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load i8, ptr %88, align 1, !tbaa !197
  %155 = zext i8 %154 to i32
  %156 = icmp eq i32 %101, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = getelementptr inbounds ptr, ptr %0, i64 %74
  store ptr %124, ptr %158, align 8, !tbaa !186
  br label %292

159:                                              ; preds = %143, %153, %148
  %160 = load i32, ptr %124, align 8
  %161 = and i32 %160, 65535
  %162 = icmp eq i32 %161, 41
  br i1 %162, label %163, label %223

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !197
  %166 = load i32, ptr %165, align 8
  %167 = lshr i32 %166, 16
  %168 = and i32 %167, 255
  %169 = zext nneg i32 %168 to i64
  %170 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !197
  %172 = icmp eq i64 %86, 0
  %173 = zext i8 %171 to i32
  %174 = icmp eq i32 %101, %173
  %175 = select i1 %172, i1 %174, i1 false
  br i1 %175, label %187, label %176

176:                                              ; preds = %163
  %177 = lshr i32 %160, 16
  %178 = and i32 %177, 255
  %179 = zext nneg i32 %178 to i64
  %180 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %179
  %181 = load i8, ptr %180, align 1, !tbaa !197
  %182 = zext i32 %101 to i64
  %183 = add nsw i64 %86, %182
  %184 = zext i8 %181 to i64
  %185 = icmp sgt i64 %183, %184
  %186 = select i1 %172, i1 true, i1 %185
  br i1 %186, label %211, label %187

187:                                              ; preds = %176, %163
  %188 = zext i8 %171 to i64
  %189 = sdiv i64 %86, %188
  %190 = srem i64 %86, %188
  %191 = getelementptr inbounds [1 x %union.rtunion_def], ptr %164, i64 0, i64 %189
  %192 = load ptr, ptr %191, align 8, !tbaa !197
  %193 = getelementptr inbounds ptr, ptr %0, i64 %74
  store ptr %192, ptr %193, align 8, !tbaa !186
  %194 = load i32, ptr %192, align 8
  %195 = and i32 %194, 65535
  %196 = zext nneg i32 %195 to i64
  %197 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !201
  %199 = icmp eq i32 %198, 9
  br i1 %199, label %292, label %200

200:                                              ; preds = %187
  %201 = icmp eq i32 %195, 37
  br i1 %201, label %202, label %206

202:                                              ; preds = %200
  %203 = lshr i32 %194, 16
  %204 = and i32 %203, 255
  %205 = icmp eq i32 %204, %82
  br i1 %205, label %292, label %206

206:                                              ; preds = %202, %200
  %207 = shl i32 %101, 3
  %208 = zext i32 %207 to i64
  %209 = shl nsw i64 %190, 3
  %210 = call ptr @extract_bit_field(ptr noundef nonnull %192, i64 noundef %208, i64 noundef %209, i32 noundef 1, ptr noundef null, i32 noundef %82, i32 noundef %82) #22
  store ptr %210, ptr %193, align 8, !tbaa !186
  br label %292

211:                                              ; preds = %176
  br i1 %172, label %213, label %212

212:                                              ; preds = %211
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1758, ptr noundef nonnull @.str.1) #22
  br label %213

213:                                              ; preds = %211, %212
  %214 = load i32, ptr %124, align 8
  %215 = lshr i32 %214, 16
  %216 = and i32 %215, 255
  %217 = call ptr @assign_stack_temp(i32 noundef %216, i64 noundef %184, i32 noundef 0) #22
  %218 = call ptr @emit_move_insn(ptr noundef %217, ptr noundef nonnull %124)
  %219 = shl i32 %101, 3
  %220 = zext i32 %219 to i64
  %221 = call ptr @extract_bit_field(ptr noundef %217, i64 noundef %220, i64 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %82, i32 noundef %82) #22
  %222 = getelementptr inbounds ptr, ptr %0, i64 %74
  store ptr %221, ptr %222, align 8, !tbaa !186
  br label %292

223:                                              ; preds = %159
  %224 = load i32, ptr %1, align 8
  %225 = lshr i32 %224, 16
  %226 = and i32 %225, 255
  %227 = zext nneg i32 %226 to i64
  %228 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !197
  %230 = add i8 %229, -12
  %231 = icmp ult i8 %230, 6
  %232 = icmp eq i32 %161, 37
  %233 = and i1 %232, %231
  br i1 %233, label %234, label %247

234:                                              ; preds = %223
  %235 = lshr i32 %160, 16
  %236 = and i32 %235, 255
  %237 = zext nneg i32 %236 to i64
  %238 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !197
  %240 = zext i8 %239 to i64
  %241 = call ptr @assign_stack_temp(i32 noundef %236, i64 noundef %240, i32 noundef 0) #22
  %242 = call ptr @emit_move_insn(ptr noundef %241, ptr noundef nonnull %124)
  %243 = shl i64 %86, 32
  %244 = ashr exact i64 %243, 32
  %245 = call ptr @adjust_address_1(ptr noundef %241, i32 noundef %82, i64 noundef %244, i32 noundef 1, i32 noundef 1) #22
  %246 = getelementptr inbounds ptr, ptr %0, i64 %74
  store ptr %245, ptr %246, align 8, !tbaa !186
  br label %292

247:                                              ; preds = %223
  %248 = zext nneg i32 %161 to i64
  %249 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %248
  %250 = load i32, ptr %249, align 4, !tbaa !201
  %251 = icmp ne i32 %250, 9
  %252 = icmp eq i32 %226, 1
  %253 = or i1 %252, %251
  br i1 %253, label %262, label %254

254:                                              ; preds = %247
  %255 = load ptr, ptr %57, align 8, !tbaa !197
  %256 = load i32, ptr %255, align 8, !tbaa !316
  %257 = icmp sgt i32 %256, 1
  br i1 %257, label %258, label %262

258:                                              ; preds = %254
  %259 = trunc i64 %86 to i32
  %260 = call ptr @simplify_gen_subreg(i32 noundef %82, ptr noundef nonnull %124, i32 noundef %226, i32 noundef %259) #22
  %261 = getelementptr inbounds ptr, ptr %0, i64 %74
  store ptr %260, ptr %261, align 8, !tbaa !186
  br label %292

262:                                              ; preds = %254, %247
  %263 = icmp eq i32 %250, 9
  br i1 %263, label %264, label %279

264:                                              ; preds = %262
  %265 = zext i32 %101 to i64
  %266 = icmp eq i64 %265, %71
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = getelementptr inbounds ptr, ptr %0, i64 %74
  store ptr %124, ptr %268, align 8, !tbaa !186
  br label %292

269:                                              ; preds = %264
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %270 = shl nuw nsw i64 %265, 1
  %271 = icmp eq i64 %270, %71
  br i1 %271, label %273, label %272

272:                                              ; preds = %269
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1791, ptr noundef nonnull @.str.1) #22
  br label %273

273:                                              ; preds = %269, %272
  call void @split_double(ptr noundef nonnull %124, ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %274 = icmp eq i64 %74, 0
  %275 = getelementptr inbounds ptr, ptr %0, i64 %74
  %276 = load ptr, ptr %5, align 8
  %277 = load ptr, ptr %6, align 8
  %278 = select i1 %274, ptr %276, ptr %277
  store ptr %278, ptr %275, align 8, !tbaa !186
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  br label %292

279:                                              ; preds = %262
  br i1 %232, label %280, label %286

280:                                              ; preds = %279
  %281 = lshr i32 %160, 16
  %282 = and i32 %281, 255
  %283 = icmp eq i32 %282, %82
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = getelementptr inbounds ptr, ptr %0, i64 %74
  store ptr %124, ptr %285, align 8, !tbaa !186
  br label %292

286:                                              ; preds = %280, %279
  %287 = shl i32 %101, 3
  %288 = zext i32 %287 to i64
  %289 = shl nsw i64 %86, 3
  %290 = call ptr @extract_bit_field(ptr noundef nonnull %124, i64 noundef %288, i64 noundef %289, i32 noundef 1, ptr noundef null, i32 noundef %82, i32 noundef %82) #22
  %291 = getelementptr inbounds ptr, ptr %0, i64 %74
  store ptr %290, ptr %291, align 8, !tbaa !186
  br label %292

292:                                              ; preds = %138, %258, %284, %286, %234, %157, %187, %202, %206, %213, %273, %267
  %293 = add nuw nsw i64 %74, 1
  %294 = load ptr, ptr %57, align 8, !tbaa !197
  %295 = load i32, ptr %294, align 8, !tbaa !316
  %296 = trunc i64 %293 to i32
  %297 = icmp sgt i32 %295, %296
  br i1 %297, label %73, label %298, !llvm.loop !320

298:                                              ; preds = %292, %56
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_group_load_into_temps(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) local_unnamed_addr #13 !prof !185 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !197
  %7 = load i32, ptr %6, align 8, !tbaa !316
  %8 = tail call ptr @rtvec_alloc(i32 noundef %7) #22
  %9 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1
  tail call fastcc void @emit_group_load_1(ptr noundef nonnull %9, ptr noundef %0, ptr noundef %1, i32 noundef %3)
  %10 = load ptr, ptr %5, align 8, !tbaa !197
  %11 = load i32, ptr %10, align 8, !tbaa !316
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %4, %34
  %14 = phi i64 [ %37, %34 ], [ 0, %4 ]
  %15 = phi ptr [ %38, %34 ], [ %10, %4 ]
  %16 = getelementptr inbounds %struct.rtvec_def, ptr %15, i64 0, i32 1, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !186
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !197
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %13
  %22 = load i32, ptr %19, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1, i64 %14
  %26 = load ptr, ptr %25, align 8, !tbaa !186
  %27 = tail call ptr @force_reg(i32 noundef %24, ptr noundef %26) #22
  %28 = load i32, ptr %17, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !197
  %33 = tail call ptr @alloc_EXPR_LIST(i32 noundef %30, ptr noundef %27, ptr noundef %32) #22
  br label %34

34:                                               ; preds = %21, %13
  %35 = phi ptr [ %33, %21 ], [ %17, %13 ]
  %36 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1, i64 %14
  store ptr %35, ptr %36, align 8, !tbaa !186
  %37 = add nuw nsw i64 %14, 1
  %38 = load ptr, ptr %5, align 8, !tbaa !197
  %39 = load i32, ptr %38, align 8, !tbaa !316
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %13, label %42, !llvm.loop !321

42:                                               ; preds = %34, %4
  %43 = load i32, ptr %0, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef %45, ptr noundef %8) #22
  ret ptr %46
}

declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #3

declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @emit_group_move(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 !prof !185 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 15
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !197
  %13 = load i32, ptr %12, align 8, !tbaa !316
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !197
  %16 = load i32, ptr %15, align 8, !tbaa !316
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %10, %6, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1877, ptr noundef nonnull @.str.1) #22
  br label %19

19:                                               ; preds = %10, %18
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !197
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !186
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !197
  %26 = icmp eq ptr %25, null
  %27 = zext i1 %26 to i32
  %28 = load ptr, ptr %20, align 8, !tbaa !197
  %29 = load i32, ptr %28, align 8, !tbaa !316
  %30 = icmp sgt i32 %29, %27
  br i1 %30, label %31, label %52

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = zext i1 %26 to i64
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi i64 [ %33, %31 ], [ %47, %34 ]
  %36 = phi ptr [ %28, %31 ], [ %48, %34 ]
  %37 = load ptr, ptr %32, align 8, !tbaa !197
  %38 = getelementptr inbounds %struct.rtvec_def, ptr %37, i64 0, i32 1, i64 %35
  %39 = load ptr, ptr %38, align 8, !tbaa !186
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !197
  %42 = getelementptr inbounds %struct.rtvec_def, ptr %36, i64 0, i32 1, i64 %35
  %43 = load ptr, ptr %42, align 8, !tbaa !186
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !197
  %46 = tail call ptr @emit_move_insn(ptr noundef %41, ptr noundef %45)
  %47 = add nuw nsw i64 %35, 1
  %48 = load ptr, ptr %20, align 8, !tbaa !197
  %49 = load i32, ptr %48, align 8, !tbaa !316
  %50 = trunc i64 %47 to i32
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %34, label %52, !llvm.loop !322

52:                                               ; preds = %34, %19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_group_move_into_temps(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !185 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  %4 = load i32, ptr %3, align 8, !tbaa !316
  %5 = tail call ptr @rtvec_alloc(i32 noundef %4) #22
  %6 = load ptr, ptr %2, align 8, !tbaa !197
  %7 = load i32, ptr %6, align 8, !tbaa !316
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %1, %25
  %10 = phi i64 [ %28, %25 ], [ 0, %1 ]
  %11 = phi ptr [ %29, %25 ], [ %6, %1 ]
  %12 = getelementptr inbounds %struct.rtvec_def, ptr %11, i64 0, i32 1, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !186
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !197
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %9
  %18 = load i32, ptr %13, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = tail call ptr @copy_to_reg(ptr noundef nonnull %15) #22
  %22 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !197
  %24 = tail call ptr @alloc_EXPR_LIST(i32 noundef %20, ptr noundef %21, ptr noundef %23) #22
  br label %25

25:                                               ; preds = %17, %9
  %26 = phi ptr [ %24, %17 ], [ %13, %9 ]
  %27 = getelementptr inbounds %struct.rtvec_def, ptr %5, i64 0, i32 1, i64 %10
  store ptr %26, ptr %27, align 8, !tbaa !186
  %28 = add nuw nsw i64 %10, 1
  %29 = load ptr, ptr %2, align 8, !tbaa !197
  %30 = load i32, ptr %29, align 8, !tbaa !316
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %9, label %33, !llvm.loop !323

33:                                               ; preds = %25, %1
  %34 = load i32, ptr %0, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef %36, ptr noundef %5) #22
  ret ptr %37
}

; Function Attrs: cold nounwind uwtable
define dso_local void @emit_group_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #13 !prof !185 {
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = load i32, ptr %1, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 15
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1918, ptr noundef nonnull @.str.1) #22
  br label %12

12:                                               ; preds = %4, %11
  %13 = zext nneg i32 %7 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !197
  %16 = and i8 %15, -2
  %17 = icmp eq i8 %16, 2
  br i1 %17, label %45, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %0, align 8
  %20 = trunc i32 %19 to i16
  switch i16 %20, label %21 [
    i16 43, label %45
    i16 41, label %45
  ]

21:                                               ; preds = %18
  %22 = lshr i32 %19, 16
  %23 = and i32 %22, 255
  %24 = tail call i32 @int_mode_for_mode(i32 noundef %23) #22
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, ptr %0, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = sext i32 %3 to i64
  %31 = tail call ptr @assign_stack_temp(i32 noundef %29, i64 noundef %30, i32 noundef 0) #22
  br label %34

32:                                               ; preds = %21
  %33 = tail call ptr @gen_reg_rtx(i32 noundef %24) #22
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi ptr [ %31, %26 ], [ %33, %32 ]
  tail call void @emit_group_store(ptr noundef %35, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3)
  br i1 %25, label %42, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr @rtl_hooks, align 8, !tbaa !231
  %38 = load i32, ptr %0, align 8
  %39 = lshr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = tail call ptr %37(i32 noundef %40, ptr noundef %35) #22
  br label %42

42:                                               ; preds = %36, %34
  %43 = phi ptr [ %41, %36 ], [ %35, %34 ]
  %44 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef %43)
  br label %295

45:                                               ; preds = %18, %12, %18
  %46 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !197
  %48 = getelementptr inbounds %struct.rtvec_def, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !186
  %50 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !197
  %52 = icmp eq ptr %51, null
  %53 = zext i1 %52 to i32
  %54 = load i32, ptr %47, align 8, !tbaa !316
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 3
  %57 = alloca i8, i64 %56, align 16
  %58 = icmp sgt i32 %54, %53
  br i1 %58, label %59, label %87

59:                                               ; preds = %45
  %60 = zext i1 %52 to i64
  %61 = zext i32 %54 to i64
  br label %62

62:                                               ; preds = %59, %84
  %63 = phi i64 [ %60, %59 ], [ %85, %84 ]
  %64 = load ptr, ptr %46, align 8, !tbaa !197
  %65 = getelementptr inbounds %struct.rtvec_def, ptr %64, i64 0, i32 1, i64 %63
  %66 = load ptr, ptr %65, align 8, !tbaa !186
  %67 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !197
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 37
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !197
  %75 = icmp ult i32 %74, 53
  br i1 %75, label %76, label %82

76:                                               ; preds = %72, %62
  %77 = lshr i32 %69, 16
  %78 = and i32 %77, 255
  %79 = tail call ptr @gen_reg_rtx(i32 noundef %78) #22
  %80 = getelementptr inbounds ptr, ptr %57, i64 %63
  store ptr %79, ptr %80, align 8, !tbaa !186
  %81 = tail call ptr @emit_move_insn(ptr noundef %79, ptr noundef nonnull %68)
  br label %84

82:                                               ; preds = %72
  %83 = getelementptr inbounds ptr, ptr %57, i64 %63
  store ptr %68, ptr %83, align 8, !tbaa !186
  br label %84

84:                                               ; preds = %82, %76
  %85 = add nuw nsw i64 %63, 1
  %86 = icmp eq i64 %85, %61
  br i1 %86, label %87, label %62, !llvm.loop !324

87:                                               ; preds = %84, %45
  %88 = load i32, ptr %0, align 8
  %89 = trunc i32 %88 to i16
  switch i16 %89, label %99 [
    i16 15, label %90
    i16 43, label %172
    i16 41, label %172
  ]

90:                                               ; preds = %87
  %91 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #22
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %295

93:                                               ; preds = %90
  %94 = load i32, ptr %0, align 8
  %95 = lshr i32 %94, 16
  %96 = and i32 %95, 255
  %97 = sext i32 %3 to i64
  %98 = tail call ptr @assign_stack_temp(i32 noundef %96, i64 noundef %97, i32 noundef 0) #22
  tail call void @emit_group_store(ptr noundef %98, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3)
  tail call void @emit_group_load(ptr noundef nonnull %0, ptr noundef %98, ptr poison, i32 noundef %3)
  br label %295

99:                                               ; preds = %87
  %100 = and i32 %88, 65535
  %101 = lshr i32 %88, 16
  %102 = and i32 %101, 255
  %103 = icmp eq i32 %100, 37
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !197
  %107 = icmp ult i32 %106, 53
  br i1 %107, label %108, label %110

108:                                              ; preds = %104, %99
  %109 = tail call ptr @gen_reg_rtx(i32 noundef %102) #22
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi ptr [ %109, %108 ], [ %0, %104 ]
  %112 = icmp sgt i32 %54, %53
  br i1 %112, label %113, label %136

113:                                              ; preds = %110
  %114 = zext i1 %52 to i64
  %115 = getelementptr inbounds ptr, ptr %57, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !186
  %117 = load i32, ptr %116, align 8
  %118 = lshr i32 %117, 16
  %119 = and i32 %118, 255
  %120 = tail call i32 @subreg_lowpart_offset(i32 noundef %119, i32 noundef %102) #22
  %121 = zext i32 %120 to i64
  %122 = load ptr, ptr %46, align 8, !tbaa !197
  %123 = getelementptr inbounds %struct.rtvec_def, ptr %122, i64 0, i32 1, i64 %114
  %124 = load ptr, ptr %123, align 8, !tbaa !186
  %125 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1, i32 0, i32 0, i64 1
  %126 = load ptr, ptr %125, align 8, !tbaa !197
  %127 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %128 = load i64, ptr %127, align 8, !tbaa !197
  %129 = icmp eq i64 %128, %121
  br i1 %129, label %130, label %136

130:                                              ; preds = %113
  %131 = tail call ptr @simplify_gen_subreg(i32 noundef %102, ptr noundef nonnull %116, i32 noundef %119, i32 noundef 0) #22
  %132 = icmp eq ptr %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = tail call ptr @emit_move_insn(ptr noundef %111, ptr noundef nonnull %131)
  %135 = select i1 %52, i32 2, i32 1
  br label %136

136:                                              ; preds = %113, %133, %130, %110
  %137 = phi i1 [ false, %133 ], [ true, %130 ], [ true, %113 ], [ true, %110 ]
  %138 = phi i32 [ %135, %133 ], [ %53, %130 ], [ %53, %113 ], [ %53, %110 ]
  br i1 %137, label %139, label %164

139:                                              ; preds = %136
  %140 = add nsw i32 %54, -1
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %164

142:                                              ; preds = %139
  %143 = zext nneg i32 %140 to i64
  %144 = getelementptr inbounds ptr, ptr %57, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !186
  %146 = load i32, ptr %145, align 8
  %147 = lshr i32 %146, 16
  %148 = and i32 %147, 255
  %149 = tail call i32 @subreg_lowpart_offset(i32 noundef %148, i32 noundef %102) #22
  %150 = zext i32 %149 to i64
  %151 = load ptr, ptr %46, align 8, !tbaa !197
  %152 = getelementptr inbounds %struct.rtvec_def, ptr %151, i64 0, i32 1, i64 %143
  %153 = load ptr, ptr %152, align 8, !tbaa !186
  %154 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1, i32 0, i32 0, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !197
  %156 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1
  %157 = load i64, ptr %156, align 8, !tbaa !197
  %158 = icmp eq i64 %157, %150
  br i1 %158, label %159, label %164

159:                                              ; preds = %142
  %160 = tail call ptr @simplify_gen_subreg(i32 noundef %102, ptr noundef nonnull %145, i32 noundef %148, i32 noundef 0) #22
  %161 = icmp eq ptr %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = tail call ptr @emit_move_insn(ptr noundef %111, ptr noundef nonnull %160)
  br label %164

164:                                              ; preds = %142, %162, %159, %139, %136
  %165 = phi i1 [ false, %136 ], [ false, %162 ], [ true, %159 ], [ true, %142 ], [ true, %139 ]
  %166 = phi i32 [ %54, %136 ], [ %140, %162 ], [ %54, %159 ], [ %54, %142 ], [ %54, %139 ]
  br i1 %165, label %167, label %172

167:                                              ; preds = %164
  %168 = zext nneg i32 %102 to i64
  %169 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !186
  %171 = tail call ptr @emit_move_insn(ptr noundef %111, ptr noundef %170)
  br label %172

172:                                              ; preds = %87, %164, %167, %87
  %173 = phi i32 [ %54, %87 ], [ %166, %167 ], [ %166, %164 ], [ %54, %87 ]
  %174 = phi i32 [ %53, %87 ], [ %138, %167 ], [ %138, %164 ], [ %53, %87 ]
  %175 = phi ptr [ %0, %87 ], [ %111, %167 ], [ %111, %164 ], [ %0, %87 ]
  %176 = icmp slt i32 %174, %173
  br i1 %176, label %177, label %290

177:                                              ; preds = %172
  %178 = icmp sgt i32 %3, -1
  %179 = zext nneg i32 %3 to i64
  %180 = zext nneg i32 %174 to i64
  %181 = zext i32 %173 to i64
  br label %182

182:                                              ; preds = %284, %177
  %183 = phi i64 [ %180, %177 ], [ %287, %284 ]
  %184 = phi ptr [ %175, %177 ], [ %286, %284 ]
  %185 = load ptr, ptr %46, align 8, !tbaa !197
  %186 = getelementptr inbounds %struct.rtvec_def, ptr %185, i64 0, i32 1, i64 %183
  %187 = load ptr, ptr %186, align 8, !tbaa !186
  %188 = getelementptr inbounds %struct.rtx_def, ptr %187, i64 0, i32 1, i32 0, i32 0, i64 1
  %189 = load ptr, ptr %188, align 8, !tbaa !197
  %190 = getelementptr inbounds %struct.rtx_def, ptr %189, i64 0, i32 1
  %191 = load i64, ptr %190, align 8, !tbaa !197
  %192 = getelementptr inbounds ptr, ptr %57, i64 %183
  %193 = load ptr, ptr %192, align 8, !tbaa !186
  %194 = load i32, ptr %193, align 8
  %195 = lshr i32 %194, 16
  %196 = and i32 %195, 255
  %197 = zext nneg i32 %196 to i64
  %198 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !197
  %200 = zext i8 %199 to i32
  %201 = zext i8 %199 to i64
  %202 = add nsw i64 %191, %201
  %203 = icmp sgt i64 %202, %179
  %204 = select i1 %178, i1 %203, i1 false
  %205 = trunc i64 %191 to i32
  %206 = sub i32 %3, %205
  %207 = select i1 %204, i32 %206, i32 %200
  %208 = load i32, ptr %184, align 8
  %209 = and i32 %208, 65535
  %210 = icmp eq i32 %209, 41
  br i1 %210, label %211, label %256

211:                                              ; preds = %182
  %212 = zext i32 %207 to i64
  %213 = add nsw i64 %191, %212
  %214 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !197
  %216 = load i32, ptr %215, align 8
  %217 = lshr i32 %216, 16
  %218 = and i32 %217, 255
  %219 = zext nneg i32 %218 to i64
  %220 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !197
  %222 = zext i8 %221 to i64
  %223 = icmp sgt i64 %213, %222
  br i1 %223, label %224, label %256

224:                                              ; preds = %211
  %225 = icmp slt i64 %191, %222
  br i1 %225, label %230, label %226

226:                                              ; preds = %224
  %227 = sub nsw i64 %191, %222
  %228 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1, i32 0, i32 0, i64 1
  %229 = load ptr, ptr %228, align 8, !tbaa !197
  br label %256

230:                                              ; preds = %224
  %231 = lshr i32 %208, 16
  %232 = and i32 %231, 255
  %233 = icmp eq i64 %191, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %230
  %235 = load i32, ptr %185, align 8, !tbaa !316
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %234, %230
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2064, ptr noundef nonnull @.str.1) #22
  br label %238

238:                                              ; preds = %234, %237
  %239 = tail call i32 @get_mode_alignment(i32 noundef %232) #22
  %240 = tail call i32 @get_mode_alignment(i32 noundef %196) #22
  %241 = icmp ult i32 %239, %240
  br i1 %241, label %250, label %242

242:                                              ; preds = %238
  %243 = zext nneg i32 %232 to i64
  %244 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !197
  %246 = zext i8 %245 to i64
  %247 = tail call ptr @assign_stack_temp(i32 noundef %232, i64 noundef %246, i32 noundef 0) #22
  %248 = tail call ptr @adjust_address_1(ptr noundef %247, i32 noundef %196, i64 noundef %191, i32 noundef 1, i32 noundef 1) #22
  %249 = tail call ptr @emit_move_insn(ptr noundef %248, ptr noundef nonnull %193)
  br label %284

250:                                              ; preds = %238
  %251 = load i8, ptr %198, align 1, !tbaa !197
  %252 = zext i8 %251 to i64
  %253 = tail call ptr @assign_stack_temp(i32 noundef %196, i64 noundef %252, i32 noundef 0) #22
  %254 = tail call ptr @emit_move_insn(ptr noundef %253, ptr noundef nonnull %193)
  %255 = tail call ptr @adjust_address_1(ptr noundef %253, i32 noundef %232, i64 noundef %191, i32 noundef 1, i32 noundef 1) #22
  br label %284

256:                                              ; preds = %211, %226, %182
  %257 = phi i64 [ %227, %226 ], [ %191, %182 ], [ %191, %211 ]
  %258 = phi ptr [ %229, %226 ], [ %184, %182 ], [ %215, %211 ]
  %259 = add nsw i64 %257, %201
  %260 = icmp sgt i64 %259, %179
  %261 = select i1 %178, i1 %260, i1 false
  %262 = select i1 %261, i32 %207, i32 %200
  %263 = load i32, ptr %258, align 8
  %264 = and i32 %263, 65535
  %265 = icmp eq i32 %264, 43
  br i1 %265, label %266, label %280

266:                                              ; preds = %256
  %267 = shl nsw i64 %257, 3
  %268 = tail call i32 @get_mode_alignment(i32 noundef %196) #22
  %269 = zext i32 %268 to i64
  %270 = srem i64 %267, %269
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %266
  %273 = load i8, ptr %198, align 1, !tbaa !197
  %274 = zext i8 %273 to i32
  %275 = icmp eq i32 %262, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %272
  %277 = tail call ptr @adjust_address_1(ptr noundef nonnull %258, i32 noundef %196, i64 noundef %257, i32 noundef 1, i32 noundef 1) #22
  %278 = load ptr, ptr %192, align 8, !tbaa !186
  %279 = tail call ptr @emit_move_insn(ptr noundef %277, ptr noundef %278)
  br label %284

280:                                              ; preds = %272, %266, %256
  %281 = shl i32 %262, 3
  %282 = zext i32 %281 to i64
  %283 = shl nsw i64 %257, 3
  tail call void @store_bit_field(ptr noundef nonnull %258, i64 noundef %282, i64 noundef %283, i32 noundef %196, ptr noundef nonnull %193) #22
  br label %284

284:                                              ; preds = %276, %280, %242, %250
  %285 = phi i1 [ true, %250 ], [ true, %242 ], [ false, %280 ], [ false, %276 ]
  %286 = phi ptr [ %255, %250 ], [ %247, %242 ], [ %184, %280 ], [ %184, %276 ]
  %287 = add nuw nsw i64 %183, 1
  %288 = icmp eq i64 %287, %181
  %289 = select i1 %285, i1 true, i1 %288
  br i1 %289, label %290, label %182, !llvm.loop !325

290:                                              ; preds = %284, %172
  %291 = phi ptr [ %175, %172 ], [ %286, %284 ]
  %292 = icmp eq ptr %291, %0
  br i1 %292, label %295, label %293

293:                                              ; preds = %290
  %294 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef %291)
  br label %295

295:                                              ; preds = %290, %293, %93, %90, %42
  ret void
}

declare i32 @int_mode_for_mode(i32 noundef) local_unnamed_addr #3

declare ptr @assign_stack_temp(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @store_bit_field(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @copy_blkmode_from_reg(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 !prof !185 {
  %4 = tail call i64 @int_size_in_bytes(ptr noundef %2) #22
  %5 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !197
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 32)
  %8 = zext nneg i32 %7 to i64
  %9 = icmp eq ptr %0, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = load i64, ptr %2, align 8
  %12 = trunc i64 %11 to i32
  %13 = lshr i32 %12, 18
  %14 = and i32 %13, 2
  %15 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 11
  %18 = and i32 %17, 4
  %19 = lshr i64 %11, 48
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 65280
  %22 = or disjoint i32 %18, %14
  %23 = or disjoint i32 %22, %21
  %24 = or disjoint i32 %23, 1
  %25 = tail call ptr @build_qualified_type(ptr noundef nonnull %2, i32 noundef %24) #22
  %26 = tail call ptr @assign_temp(ptr noundef %25, i32 noundef 0, i32 noundef 1, i32 noundef 1) #22
  tail call void @preserve_temp_slots(ptr noundef %26) #22
  br label %27

27:                                               ; preds = %10, %3
  %28 = phi ptr [ %26, %10 ], [ %0, %3 ]
  %29 = load i32, ptr %1, align 8
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  %34 = zext nneg i32 %31 to i64
  %35 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !197
  %37 = icmp ult i8 %36, 4
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, ptr @word_mode, align 4, !tbaa !201
  %40 = load i64, ptr %2, align 8
  %41 = trunc i64 %40 to i32
  %42 = lshr i32 %41, 21
  %43 = and i32 %42, 1
  %44 = tail call ptr @convert_modes(i32 noundef %39, i32 noundef 0, ptr noundef nonnull %1, i32 noundef %43)
  br label %45

45:                                               ; preds = %38, %33, %27
  %46 = phi ptr [ %44, %38 ], [ %1, %33 ], [ %1, %27 ]
  %47 = and i64 %4, 3
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 4), align 8, !tbaa !326
  %51 = tail call zeroext i8 %50(ptr noundef %2) #22
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = shl nuw nsw i64 %47, 3
  %55 = sub nuw nsw i64 32, %54
  br label %56

56:                                               ; preds = %49, %53, %45
  %57 = phi i64 [ %55, %53 ], [ 0, %49 ], [ 0, %45 ]
  %58 = load i32, ptr @word_mode, align 4, !tbaa !201
  %59 = load i32, ptr %28, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 43
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = tail call i32 @mode_for_size(i32 noundef %7, i32 noundef 2, i32 noundef 1) #22
  %64 = icmp eq i32 %63, 1
  %65 = select i1 %64, i32 %58, i32 %63
  br label %66

66:                                               ; preds = %62, %56
  %67 = phi i32 [ %65, %62 ], [ %58, %56 ]
  %68 = shl i64 %4, 3
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %100, label %70

70:                                               ; preds = %66, %94
  %71 = phi i64 [ %98, %94 ], [ %57, %66 ]
  %72 = phi i64 [ %97, %94 ], [ 0, %66 ]
  %73 = phi ptr [ %95, %94 ], [ null, %66 ]
  %74 = phi ptr [ %87, %94 ], [ null, %66 ]
  %75 = and i64 %71, 31
  %76 = icmp eq i64 %75, 0
  %77 = icmp eq i64 %71, %57
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %70
  %80 = lshr i64 %71, 5
  %81 = trunc i64 %80 to i32
  %82 = load i32, ptr %46, align 8
  %83 = lshr i32 %82, 16
  %84 = and i32 %83, 255
  %85 = tail call ptr @operand_subword_force(ptr noundef nonnull %46, i32 noundef %81, i32 noundef %84) #22
  br label %86

86:                                               ; preds = %70, %79
  %87 = phi ptr [ %85, %79 ], [ %74, %70 ]
  %88 = and i64 %72, 31
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = lshr exact i64 %72, 5
  %92 = trunc i64 %91 to i32
  %93 = tail call ptr @operand_subword(ptr noundef nonnull %28, i32 noundef %92, i32 noundef 1, i32 noundef 1) #22
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi ptr [ %93, %90 ], [ %73, %86 ]
  %96 = tail call ptr @extract_bit_field(ptr noundef %87, i64 noundef %8, i64 noundef %75, i32 noundef 1, ptr noundef null, i32 noundef %67, i32 noundef %67) #22
  tail call void @store_bit_field(ptr noundef %95, i64 noundef %8, i64 noundef %88, i32 noundef %67, ptr noundef %96) #22
  %97 = add i64 %72, %8
  %98 = add i64 %71, %8
  %99 = icmp ult i64 %97, %68
  br i1 %99, label %70, label %100, !llvm.loop !327

100:                                              ; preds = %94, %66
  ret ptr %28
}

declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #3

declare ptr @assign_temp(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @preserve_temp_slots(ptr noundef) local_unnamed_addr #3

declare ptr @extract_bit_field(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @use_reg(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #13 !prof !185 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !197
  %9 = icmp ult i32 %8, 53
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2229, ptr noundef nonnull @.str.1) #22
  br label %11

11:                                               ; preds = %6, %10
  %12 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %1) #22
  %13 = load ptr, ptr %0, align 8, !tbaa !186
  %14 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %12, ptr noundef %13) #22
  store ptr %14, ptr %0, align 8, !tbaa !186
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @use_regs(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #13 !prof !185 {
  %4 = add nsw i32 %2, %1
  %5 = icmp slt i32 %4, 54
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2244, ptr noundef nonnull @.str.1) #22
  br label %7

7:                                                ; preds = %3, %6
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %7
  %10 = sext i32 %1 to i64
  %11 = zext nneg i32 %2 to i64
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %18, %12 ]
  %14 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !186
  %15 = getelementptr ptr, ptr %14, i64 %13
  %16 = getelementptr ptr, ptr %15, i64 %10
  %17 = load ptr, ptr %16, align 8, !tbaa !186
  tail call void @use_reg(ptr noundef %0, ptr noundef %17)
  %18 = add nuw nsw i64 %13, 1
  %19 = icmp eq i64 %18, %11
  br i1 %19, label %20, label %12, !llvm.loop !328

20:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @use_group_regs(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 !prof !185 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !197
  %5 = load i32, ptr %4, align 8, !tbaa !316
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %2, %20
  %8 = phi i64 [ %21, %20 ], [ 0, %2 ]
  %9 = phi ptr [ %22, %20 ], [ %4, %2 ]
  %10 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !186
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !197
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = load i32, ptr %13, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @use_reg(ptr noundef %0, ptr noundef nonnull %13)
  br label %20

20:                                               ; preds = %19, %15, %7
  %21 = add nuw nsw i64 %8, 1
  %22 = load ptr, ptr %3, align 8, !tbaa !197
  %23 = load i32, ptr %22, align 8, !tbaa !316
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %7, label %26, !llvm.loop !329

26:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @can_store_by_pieces(i64 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #13 !prof !185 {
  %6 = icmp eq i64 %0, 0
  br i1 %6, label %121, label %7

7:                                                ; preds = %5
  %8 = icmp eq i8 %4, 0
  %9 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %0, i32 noundef %3)
  %10 = tail call zeroext i8 @optimize_insn_for_speed_p() #22
  %11 = icmp eq i8 %10, 0
  br i1 %8, label %21, label %12

12:                                               ; preds = %7
  br i1 %11, label %18, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr @ix86_cost, align 8, !tbaa !186
  %15 = getelementptr inbounds %struct.processor_costs, ptr %14, i64 0, i32 10
  %16 = load i32, ptr %15, align 4, !tbaa !278
  %17 = zext i32 %16 to i64
  br label %18

18:                                               ; preds = %12, %13
  %19 = phi i64 [ %17, %13 ], [ 3, %12 ]
  %20 = icmp ult i64 %9, %19
  br i1 %20, label %30, label %121

21:                                               ; preds = %7
  br i1 %11, label %27, label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr @ix86_cost, align 8, !tbaa !186
  %24 = getelementptr inbounds %struct.processor_costs, ptr %23, i64 0, i32 10
  %25 = load i32, ptr %24, align 4, !tbaa !278
  %26 = zext i32 %25 to i64
  br label %27

27:                                               ; preds = %21, %22
  %28 = phi i64 [ %26, %22 ], [ 3, %21 ]
  %29 = icmp ult i64 %9, %28
  br i1 %29, label %30, label %121

30:                                               ; preds = %27, %18
  %31 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef 2, i32 noundef 1) #22
  %32 = tail call i32 @get_mode_alignment(i32 noundef %31) #22
  %33 = icmp ugt i32 %32, %3
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !197
  %36 = zext i8 %35 to i32
  %37 = icmp eq i8 %35, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %34
  %39 = zext i8 %35 to i64
  %40 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !197
  %42 = icmp ugt i8 %41, 4
  br i1 %42, label %55, label %49

43:                                               ; preds = %49
  %44 = zext i8 %53 to i32
  %45 = zext i8 %53 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !197
  %48 = icmp ugt i8 %47, 4
  br i1 %48, label %55, label %49, !llvm.loop !330

49:                                               ; preds = %38, %43
  %50 = phi i64 [ %45, %43 ], [ %39, %38 ]
  %51 = phi i32 [ %44, %43 ], [ %36, %38 ]
  %52 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %50
  %53 = load i8, ptr %52, align 1, !tbaa !197
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %43, !llvm.loop !330

55:                                               ; preds = %43, %49, %38, %34
  %56 = phi i32 [ %36, %34 ], [ %36, %38 ], [ %51, %49 ], [ %51, %43 ]
  %57 = tail call i32 @get_mode_alignment(i32 noundef %56) #22
  %58 = icmp ult i32 %57, %3
  br i1 %58, label %62, label %59

59:                                               ; preds = %55, %30
  %60 = phi i32 [ %31, %30 ], [ %56, %55 ]
  %61 = tail call i32 @get_mode_alignment(i32 noundef %60) #22
  br label %62

62:                                               ; preds = %59, %55
  %63 = phi i32 [ %3, %55 ], [ %61, %59 ]
  %64 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !197
  %65 = icmp eq i8 %64, 0
  br label %66

66:                                               ; preds = %62, %110
  %67 = phi i64 [ %0, %62 ], [ %112, %110 ]
  %68 = phi i32 [ 0, %62 ], [ %85, %110 ]
  %69 = phi i64 [ 0, %62 ], [ %111, %110 ]
  %70 = phi i32 [ 5, %62 ], [ %115, %110 ]
  br i1 %65, label %84, label %71

71:                                               ; preds = %66, %71
  %72 = phi i8 [ %82, %71 ], [ %64, %66 ]
  %73 = phi i32 [ %80, %71 ], [ %68, %66 ]
  %74 = zext i8 %72 to i32
  %75 = zext i8 %72 to i64
  %76 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !197
  %78 = zext i8 %77 to i32
  %79 = icmp ugt i32 %70, %78
  %80 = select i1 %79, i32 %74, i32 %73
  %81 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %75
  %82 = load i8, ptr %81, align 1, !tbaa !197
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %71, !llvm.loop !331

84:                                               ; preds = %71, %66
  %85 = phi i32 [ %68, %66 ], [ %80, %71 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %117, label %87

87:                                               ; preds = %84
  %88 = zext nneg i32 %85 to i64
  %89 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !235
  %91 = icmp eq i32 %90, 2956
  br i1 %91, label %110, label %92

92:                                               ; preds = %87
  %93 = tail call i32 @get_mode_alignment(i32 noundef %85) #22
  %94 = icmp ult i32 %63, %93
  br i1 %94, label %110, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %88
  %97 = load i8, ptr %96, align 1, !tbaa !197
  %98 = zext i8 %97 to i64
  %99 = icmp ult i64 %67, %98
  br i1 %99, label %110, label %100

100:                                              ; preds = %95, %106
  %101 = phi i64 [ %108, %106 ], [ %67, %95 ]
  %102 = phi i64 [ %107, %106 ], [ %69, %95 ]
  %103 = tail call ptr %1(ptr noundef %2, i64 noundef %102, i32 noundef %85) #22
  %104 = tail call zeroext i8 @legitimate_constant_p(ptr noundef %103) #22
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %121, label %106

106:                                              ; preds = %100
  %107 = add nsw i64 %102, %98
  %108 = sub i64 %101, %98
  %109 = icmp ult i64 %108, %98
  br i1 %109, label %110, label %100, !llvm.loop !332

110:                                              ; preds = %106, %95, %92, %87
  %111 = phi i64 [ %69, %92 ], [ %69, %87 ], [ %69, %95 ], [ %107, %106 ]
  %112 = phi i64 [ %67, %92 ], [ %67, %87 ], [ %67, %95 ], [ %108, %106 ]
  %113 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %88
  %114 = load i8, ptr %113, align 1, !tbaa !197
  %115 = zext i8 %114 to i32
  %116 = icmp ugt i8 %114, 1
  br i1 %116, label %66, label %117, !llvm.loop !333

117:                                              ; preds = %84, %110
  %118 = phi i64 [ %67, %84 ], [ %112, %110 ]
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2383, ptr noundef nonnull @.str.1) #22
  br label %121

121:                                              ; preds = %100, %117, %120, %27, %18, %5
  %122 = phi i32 [ 1, %5 ], [ 0, %18 ], [ 0, %27 ], [ 1, %120 ], [ 1, %117 ], [ 0, %100 ]
  ret i32 %122
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @store_by_pieces(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5, i32 noundef %6) local_unnamed_addr #13 !prof !185 {
  %8 = alloca %struct.store_by_pieces_d, align 8
  %9 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !282
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %11, i64 0, i32 5
  %15 = load i8, ptr %14, align 8, !tbaa !249
  br label %16

16:                                               ; preds = %7, %13
  %17 = phi i8 [ %15, %13 ], [ 0, %7 ]
  %18 = tail call i32 %9(i8 noundef zeroext %17) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #22
  %19 = icmp eq i64 %1, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = icmp eq i32 %6, 2
  br i1 %21, label %22, label %87

22:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2409, ptr noundef nonnull @.str.1) #22
  br label %87

23:                                               ; preds = %16
  %24 = icmp eq i8 %5, 0
  %25 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %1, i32 noundef %4)
  %26 = tail call zeroext i8 @optimize_insn_for_speed_p() #22
  %27 = icmp eq i8 %26, 0
  br i1 %24, label %37, label %28

28:                                               ; preds = %23
  br i1 %27, label %34, label %29

29:                                               ; preds = %28
  %30 = load ptr, ptr @ix86_cost, align 8, !tbaa !186
  %31 = getelementptr inbounds %struct.processor_costs, ptr %30, i64 0, i32 10
  %32 = load i32, ptr %31, align 4, !tbaa !278
  %33 = zext i32 %32 to i64
  br label %34

34:                                               ; preds = %28, %29
  %35 = phi i64 [ %33, %29 ], [ 3, %28 ]
  %36 = icmp ult i64 %25, %35
  br i1 %36, label %47, label %46

37:                                               ; preds = %23
  br i1 %27, label %43, label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr @ix86_cost, align 8, !tbaa !186
  %40 = getelementptr inbounds %struct.processor_costs, ptr %39, i64 0, i32 10
  %41 = load i32, ptr %40, align 4, !tbaa !278
  %42 = zext i32 %41 to i64
  br label %43

43:                                               ; preds = %37, %38
  %44 = phi i64 [ %42, %38 ], [ 3, %37 ]
  %45 = icmp ult i64 %25, %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2415, ptr noundef nonnull @.str.1) #22
  br label %47

47:                                               ; preds = %34, %43, %46
  %48 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 6
  store ptr %2, ptr %48, align 8, !tbaa !334
  %49 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 7
  store ptr %3, ptr %49, align 8, !tbaa !336
  %50 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 4
  store i64 %1, ptr %50, align 8, !tbaa !337
  store ptr %0, ptr %8, align 8, !tbaa !338
  call fastcc void @store_by_pieces_1(ptr noundef nonnull %8, i32 noundef %4)
  %51 = icmp eq i32 %6, 0
  br i1 %51, label %85, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 8
  %54 = load i32, ptr %53, align 8, !tbaa !339
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2425, ptr noundef nonnull @.str.1) #22
  br label %57

57:                                               ; preds = %52, %56
  %58 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !340
  %60 = icmp eq i32 %59, 0
  %61 = icmp eq i32 %6, 2
  br i1 %60, label %75, label %62

62:                                               ; preds = %57
  br i1 %61, label %63, label %68

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !341
  %66 = tail call ptr @plus_constant(ptr noundef %65, i64 noundef -1) #22
  %67 = tail call ptr @copy_to_mode_reg(i32 noundef %18, ptr noundef %66) #22
  store ptr %67, ptr %64, align 8, !tbaa !341
  br label %68

68:                                               ; preds = %63, %62
  %69 = load ptr, ptr %8, align 8, !tbaa !338
  %70 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !341
  %72 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 5
  %73 = load i64, ptr %72, align 8, !tbaa !342
  %74 = tail call ptr @adjust_automodify_address_1(ptr noundef %69, i32 noundef 14, ptr noundef %71, i64 noundef %73, i32 noundef 1) #22
  br label %87

75:                                               ; preds = %57
  br i1 %61, label %76, label %80

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 5
  %78 = load i64, ptr %77, align 8, !tbaa !342
  %79 = add nsw i64 %78, -1
  store i64 %79, ptr %77, align 8, !tbaa !342
  br label %80

80:                                               ; preds = %76, %75
  %81 = load ptr, ptr %8, align 8, !tbaa !338
  %82 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 5
  %83 = load i64, ptr %82, align 8, !tbaa !342
  %84 = tail call ptr @adjust_address_1(ptr noundef %81, i32 noundef 14, i64 noundef %83, i32 noundef 1, i32 noundef 1) #22
  br label %87

85:                                               ; preds = %47
  %86 = load ptr, ptr %8, align 8, !tbaa !338
  br label %87

87:                                               ; preds = %68, %80, %22, %20, %85
  %88 = phi ptr [ %86, %85 ], [ %0, %20 ], [ %0, %22 ], [ %74, %68 ], [ %84, %80 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #22
  ret ptr %88
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @store_by_pieces_1(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #13 !prof !185 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !282
  %4 = load ptr, ptr %0, align 8, !tbaa !338
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !197
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 5
  %10 = load i8, ptr %9, align 8, !tbaa !249
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i8 [ %10, %8 ], [ 0, %2 ]
  %13 = tail call i32 %3(i8 noundef zeroext %12) #22
  %14 = load ptr, ptr %0, align 8, !tbaa !338
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !197
  %17 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 5
  store i64 0, ptr %17, align 8, !tbaa !342
  %18 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !341
  %19 = load i32, ptr %16, align 8
  %20 = and i32 %19, 65534
  %21 = add nsw i32 %20, -74
  %22 = icmp ult i32 %21, 4
  %23 = zext i1 %22 to i32
  %24 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 2
  store i32 %23, ptr %24, align 8, !tbaa !340
  %25 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 3
  store i32 0, ptr %25, align 4, !tbaa !343
  %26 = load i32, ptr %16, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 74
  %29 = icmp eq i32 %27, 76
  %30 = or i1 %28, %29
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 8
  store i32 %31, ptr %32, align 8, !tbaa !339
  %33 = trunc i32 %26 to i16
  switch i16 %33, label %37 [
    i16 76, label %34
    i16 74, label %34
  ]

34:                                               ; preds = %11, %11
  %35 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 4
  %36 = load i64, ptr %35, align 8, !tbaa !337
  store i64 %36, ptr %17, align 8, !tbaa !342
  br label %37

37:                                               ; preds = %11, %34
  br i1 %22, label %71, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 4
  %40 = load i64, ptr %39, align 8, !tbaa !337
  %41 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %40, i32 noundef %1)
  %42 = icmp ugt i64 %41, 2
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !197
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %43, %46
  %47 = phi i8 [ %56, %46 ], [ %44, %43 ]
  %48 = phi i32 [ %54, %46 ], [ 0, %43 ]
  %49 = zext i8 %47 to i32
  %50 = zext i8 %47 to i64
  %51 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !197
  %53 = icmp ult i8 %52, 5
  %54 = select i1 %53, i32 %49, i32 %48
  %55 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %50
  %56 = load i8, ptr %55, align 1, !tbaa !197
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %46, !llvm.loop !344

58:                                               ; preds = %46, %43
  %59 = phi i32 [ 0, %43 ], [ %54, %46 ]
  %60 = load i32, ptr %24, align 8, !tbaa !340
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i32, ptr %16, align 8
  %64 = and i32 %63, 65535
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !201
  %68 = icmp eq i32 %67, 9
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = tail call ptr @copy_to_mode_reg(i32 noundef %13, ptr noundef nonnull %16) #22
  store ptr %70, ptr %18, align 8, !tbaa !341
  br label %71

71:                                               ; preds = %58, %62, %69, %38, %37
  %72 = phi i32 [ 0, %37 ], [ %59, %58 ], [ %59, %69 ], [ %59, %62 ], [ 0, %38 ]
  %73 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef 2, i32 noundef 1) #22
  %74 = tail call i32 @get_mode_alignment(i32 noundef %73) #22
  %75 = icmp ugt i32 %74, %1
  br i1 %75, label %76, label %101

76:                                               ; preds = %71
  %77 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !197
  %78 = zext i8 %77 to i32
  %79 = icmp eq i8 %77, 0
  br i1 %79, label %97, label %80

80:                                               ; preds = %76
  %81 = zext i8 %77 to i64
  %82 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !197
  %84 = icmp ugt i8 %83, 4
  br i1 %84, label %97, label %91

85:                                               ; preds = %91
  %86 = zext i8 %95 to i32
  %87 = zext i8 %95 to i64
  %88 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !197
  %90 = icmp ugt i8 %89, 4
  br i1 %90, label %97, label %91, !llvm.loop !345

91:                                               ; preds = %80, %85
  %92 = phi i64 [ %87, %85 ], [ %81, %80 ]
  %93 = phi i32 [ %86, %85 ], [ %78, %80 ]
  %94 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %92
  %95 = load i8, ptr %94, align 1, !tbaa !197
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %85, !llvm.loop !345

97:                                               ; preds = %85, %91, %80, %76
  %98 = phi i32 [ %78, %76 ], [ %78, %80 ], [ %93, %91 ], [ %93, %85 ]
  %99 = tail call i32 @get_mode_alignment(i32 noundef %98) #22
  %100 = icmp ult i32 %99, %1
  br i1 %100, label %104, label %101

101:                                              ; preds = %97, %71
  %102 = phi i32 [ %73, %71 ], [ %98, %97 ]
  %103 = tail call i32 @get_mode_alignment(i32 noundef %102) #22
  br label %104

104:                                              ; preds = %101, %97
  %105 = phi i32 [ %1, %97 ], [ %103, %101 ]
  %106 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !197
  %107 = icmp eq i8 %106, 0
  %108 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 4
  %109 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 6
  %110 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 7
  br label %111

111:                                              ; preds = %104, %181
  %112 = phi i32 [ %72, %104 ], [ %128, %181 ]
  %113 = phi i32 [ 5, %104 ], [ %184, %181 ]
  br i1 %107, label %127, label %114

114:                                              ; preds = %111, %114
  %115 = phi i8 [ %125, %114 ], [ %106, %111 ]
  %116 = phi i32 [ %123, %114 ], [ %112, %111 ]
  %117 = zext i8 %115 to i32
  %118 = zext i8 %115 to i64
  %119 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !197
  %121 = zext i8 %120 to i32
  %122 = icmp ugt i32 %113, %121
  %123 = select i1 %122, i32 %117, i32 %116
  %124 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %118
  %125 = load i8, ptr %124, align 1, !tbaa !197
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %114, !llvm.loop !346

127:                                              ; preds = %114, %111
  %128 = phi i32 [ %112, %111 ], [ %123, %114 ]
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %186, label %130

130:                                              ; preds = %127
  %131 = zext nneg i32 %128 to i64
  %132 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !235
  %134 = icmp eq i32 %133, 2956
  br i1 %134, label %181, label %135

135:                                              ; preds = %130
  %136 = tail call i32 @get_mode_alignment(i32 noundef %128) #22
  %137 = icmp ult i32 %105, %136
  br i1 %137, label %181, label %138

138:                                              ; preds = %135
  %139 = zext i32 %133 to i64
  %140 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %139, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !257
  %142 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %131
  %143 = load i8, ptr %142, align 1, !tbaa !197
  %144 = zext i8 %143 to i64
  %145 = load i64, ptr %108, align 8, !tbaa !337
  %146 = icmp ult i64 %145, %144
  br i1 %146, label %181, label %147

147:                                              ; preds = %138, %177
  %148 = load i32, ptr %32, align 8, !tbaa !339
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %147
  %151 = load i64, ptr %17, align 8, !tbaa !342
  %152 = sub nsw i64 %151, %144
  store i64 %152, ptr %17, align 8, !tbaa !342
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i32, ptr %24, align 8, !tbaa !340
  %155 = icmp eq i32 %154, 0
  %156 = load ptr, ptr %0, align 8, !tbaa !338
  br i1 %155, label %161, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %18, align 8, !tbaa !341
  %159 = load i64, ptr %17, align 8, !tbaa !342
  %160 = tail call ptr @adjust_automodify_address_1(ptr noundef %156, i32 noundef %128, ptr noundef %158, i64 noundef %159, i32 noundef 1) #22
  br label %164

161:                                              ; preds = %153
  %162 = load i64, ptr %17, align 8, !tbaa !342
  %163 = tail call ptr @adjust_address_1(ptr noundef %156, i32 noundef %128, i64 noundef %162, i32 noundef 1, i32 noundef 1) #22
  br label %164

164:                                              ; preds = %161, %157
  %165 = phi ptr [ %160, %157 ], [ %163, %161 ]
  %166 = load ptr, ptr %109, align 8, !tbaa !334
  %167 = load ptr, ptr %110, align 8, !tbaa !336
  %168 = load i64, ptr %17, align 8, !tbaa !342
  %169 = tail call ptr %166(ptr noundef %167, i64 noundef %168, i32 noundef %128) #22
  %170 = tail call ptr (ptr, ...) %141(ptr noundef %165, ptr noundef %169) #22
  %171 = tail call ptr @emit_insn(ptr noundef %170) #22
  %172 = load i32, ptr %32, align 8, !tbaa !339
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %164
  %175 = load i64, ptr %17, align 8, !tbaa !342
  %176 = add nsw i64 %175, %144
  store i64 %176, ptr %17, align 8, !tbaa !342
  br label %177

177:                                              ; preds = %174, %164
  %178 = load i64, ptr %108, align 8, !tbaa !337
  %179 = sub i64 %178, %144
  store i64 %179, ptr %108, align 8, !tbaa !337
  %180 = icmp ult i64 %179, %144
  br i1 %180, label %181, label %147, !llvm.loop !347

181:                                              ; preds = %177, %138, %135, %130
  %182 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %131
  %183 = load i8, ptr %182, align 1, !tbaa !197
  %184 = zext i8 %183 to i32
  %185 = icmp ugt i8 %183, 1
  br i1 %185, label %111, label %186, !llvm.loop !348

186:                                              ; preds = %127, %181
  %187 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 4
  %188 = load i64, ptr %187, align 8, !tbaa !337
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %186
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2578, ptr noundef nonnull @.str.1) #22
  br label %191

191:                                              ; preds = %186, %190
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @clear_storage_hints(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #13 !prof !185 {
  %6 = alloca %struct.store_by_pieces_d, align 8
  %7 = load i32, ptr %0, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %2, 3
  switch i32 %2, label %11 [
    i32 3, label %12
    i32 0, label %12
  ]

11:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2630, ptr noundef nonnull @.str.1) #22
  br label %12

12:                                               ; preds = %5, %5, %11
  %13 = icmp eq i32 %9, 1
  br i1 %13, label %45, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr %1, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 30
  br i1 %17, label %18, label %45

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !197
  %21 = zext nneg i32 %9 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !197
  %24 = zext i8 %23 to i64
  %25 = icmp eq i64 %20, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %18
  %27 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %21
  %28 = load ptr, ptr %27, align 8, !tbaa !186
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef nonnull %28)
  br label %99

32:                                               ; preds = %26
  %33 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %21
  %34 = load i8, ptr %33, align 1, !tbaa !197
  %35 = and i8 %34, -2
  %36 = icmp eq i8 %35, 10
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %21
  %39 = load i8, ptr %38, align 1, !tbaa !197
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !186
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  tail call fastcc void @write_complex_part(ptr noundef nonnull %0, ptr noundef nonnull %42, i8 noundef zeroext 0)
  tail call fastcc void @write_complex_part(ptr noundef nonnull %0, ptr noundef nonnull %42, i8 noundef zeroext 1)
  br label %99

45:                                               ; preds = %32, %37, %18, %14, %12
  %46 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %99, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !197
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.mem_attrs, ptr %50, i64 0, i32 4
  %54 = load i32, ptr %53, align 4, !tbaa !294
  br label %55

55:                                               ; preds = %48, %52
  %56 = phi i32 [ %54, %52 ], [ 8, %48 ]
  %57 = load i32, ptr %1, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 30
  br i1 %59, label %60, label %83

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !197
  %63 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %62, i32 noundef %56)
  %64 = tail call zeroext i8 @optimize_insn_for_speed_p() #22
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load ptr, ptr @ix86_cost, align 8, !tbaa !186
  %68 = getelementptr inbounds %struct.processor_costs, ptr %67, i64 0, i32 10
  %69 = load i32, ptr %68, align 4, !tbaa !278
  %70 = tail call i32 @llvm.smin.i32(i32 %69, i32 6)
  %71 = zext i32 %70 to i64
  br label %72

72:                                               ; preds = %66, %60
  %73 = phi i64 [ 2, %60 ], [ %71, %66 ]
  %74 = icmp ult i64 %63, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i64, ptr %61, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #22
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.store_by_pieces_d, ptr %6, i64 0, i32 6
  store ptr @clear_by_pieces_1, ptr %79, align 8, !tbaa !334
  %80 = getelementptr inbounds %struct.store_by_pieces_d, ptr %6, i64 0, i32 7
  store ptr null, ptr %80, align 8, !tbaa !336
  %81 = getelementptr inbounds %struct.store_by_pieces_d, ptr %6, i64 0, i32 4
  store i64 %76, ptr %81, align 8, !tbaa !337
  store ptr %0, ptr %6, align 8, !tbaa !338
  call fastcc void @store_by_pieces_1(ptr noundef nonnull %6, i32 noundef %56)
  br label %82

82:                                               ; preds = %75, %78
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #22
  br label %99

83:                                               ; preds = %72, %55
  %84 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %85 = tail call zeroext i8 @set_storage_via_setmem(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %84, i32 noundef %56, i32 noundef %3, i64 noundef %4)
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = load ptr, ptr %49, align 8, !tbaa !197
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.mem_attrs, ptr %88, i64 0, i32 5
  %92 = load i8, ptr %91, align 8, !tbaa !249
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87, %90
  %95 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %96 = zext i1 %10 to i8
  %97 = tail call ptr @set_storage_via_libcall(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %95, i8 noundef zeroext %96)
  br label %99

98:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2672, ptr noundef nonnull @.str.1) #22
  br label %99

99:                                               ; preds = %30, %44, %82, %83, %98, %45, %94
  %100 = phi ptr [ %97, %94 ], [ null, %45 ], [ null, %98 ], [ null, %83 ], [ null, %82 ], [ null, %44 ], [ null, %30 ]
  ret ptr %100
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @write_complex_part(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #13 !prof !185 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 41
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = zext nneg i8 %2 to i64
  %10 = getelementptr inbounds [1 x %union.rtunion_def], ptr %8, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  %12 = tail call ptr @emit_move_insn(ptr noundef %11, ptr noundef %1)
  br label %65

13:                                               ; preds = %3
  %14 = lshr i32 %4, 16
  %15 = and i32 %14, 255
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !197
  %19 = zext i8 %18 to i32
  %20 = zext i8 %18 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !197
  %23 = zext i8 %22 to i64
  %24 = shl nuw nsw i64 %23, 3
  %25 = icmp eq i32 %5, 43
  br i1 %25, label %26, label %32

26:                                               ; preds = %13
  %27 = icmp eq i8 %2, 0
  %28 = select i1 %27, i8 0, i8 %22
  %29 = zext i8 %28 to i64
  %30 = tail call ptr @adjust_address_1(ptr noundef nonnull %0, i32 noundef %19, i64 noundef %29, i32 noundef 0, i32 noundef 1) #22
  %31 = tail call ptr @emit_move_insn(ptr noundef %30, ptr noundef %1)
  br label %65

32:                                               ; preds = %13
  %33 = icmp ugt i8 %22, 3
  br i1 %33, label %46, label %34

34:                                               ; preds = %32
  %35 = icmp eq i32 %5, 37
  br i1 %35, label %36, label %62

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !197
  %39 = icmp ult i32 %38, 53
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = zext nneg i32 %38 to i64
  %42 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %41, i64 %16
  %43 = load i8, ptr %42, align 1, !tbaa !197
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %40, %32
  %47 = icmp eq i8 %2, 0
  %48 = select i1 %47, i8 0, i8 %22
  %49 = zext i8 %48 to i32
  %50 = tail call ptr @simplify_gen_subreg(i32 noundef %19, ptr noundef nonnull %0, i32 noundef %15, i32 noundef %49) #22
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = tail call ptr @emit_move_insn(ptr noundef nonnull %50, ptr noundef %1)
  br label %61

54:                                               ; preds = %46
  %55 = load i32, ptr %0, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 43
  %58 = icmp ult i8 %22, 4
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2907, ptr noundef nonnull @.str.1) #22
  br label %61

61:                                               ; preds = %60, %54, %52
  br i1 %51, label %62, label %65

62:                                               ; preds = %61, %40, %36, %34
  %63 = icmp eq i8 %2, 0
  %64 = select i1 %63, i64 0, i64 %24
  tail call void @store_bit_field(ptr noundef nonnull %0, i64 noundef %24, i64 noundef %64, i32 noundef %19, ptr noundef %1) #22
  br label %65

65:                                               ; preds = %61, %62, %26, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @set_storage_via_setmem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #13 !prof !185 {
  %7 = lshr i32 %3, 3
  %8 = zext nneg i32 %7 to i64
  %9 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %8) #22
  %10 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !197
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %105, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @llvm.umax.i32(i32 %4, i32 %3)
  %14 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %15 = lshr i32 %13, 3
  %16 = zext nneg i32 %15 to i64
  br label %17

17:                                               ; preds = %12, %101
  %18 = phi i8 [ %10, %12 ], [ %103, %101 ]
  %19 = zext i8 %18 to i32
  %20 = zext i8 %18 to i64
  %21 = getelementptr inbounds [87 x i32], ptr @setmem_optab, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !201
  %23 = icmp eq i32 %22, 2956
  br i1 %23, label %101, label %24

24:                                               ; preds = %17
  %25 = load i32, ptr %1, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 30
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i64, ptr %14, align 8, !tbaa !197
  %30 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %31 = load i64, ptr %30, align 8, !tbaa !311
  %32 = lshr i64 %31, 1
  %33 = icmp ugt i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28, %24
  %35 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %36 = load i8, ptr %35, align 1, !tbaa !197
  %37 = icmp ugt i8 %36, 3
  br i1 %37, label %38, label %101

38:                                               ; preds = %28, %34
  %39 = sext i32 %22 to i64
  %40 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %39, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !217
  %42 = load ptr, ptr %41, align 8, !tbaa !219
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = tail call i32 %42(ptr noundef %0, i32 noundef 1) #22
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %101, label %47

47:                                               ; preds = %44, %38
  %48 = getelementptr inbounds %struct.insn_operand_data, ptr %41, i64 3
  %49 = load ptr, ptr %48, align 8, !tbaa !219
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = tail call i32 %49(ptr noundef %9, i32 noundef 0) #22
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %101, label %54

54:                                               ; preds = %51, %47
  %55 = tail call ptr @get_last_insn() #22
  %56 = tail call ptr @convert_modes(i32 noundef %19, i32 noundef 0, ptr noundef nonnull %1, i32 noundef 1)
  %57 = getelementptr inbounds %struct.insn_operand_data, ptr %41, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !219
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %54
  %61 = tail call i32 %58(ptr noundef %56, i32 noundef %19) #22
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = tail call ptr @copy_to_mode_reg(i32 noundef %19, ptr noundef %56) #22
  br label %65

65:                                               ; preds = %63, %60, %54
  %66 = phi ptr [ %56, %60 ], [ %64, %63 ], [ %56, %54 ]
  %67 = getelementptr inbounds %struct.insn_operand_data, ptr %41, i64 2, i32 2
  %68 = load i16, ptr %67, align 8
  %69 = zext i16 %68 to i32
  %70 = icmp eq i16 %68, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %65
  %72 = tail call ptr @convert_modes(i32 noundef %69, i32 noundef 0, ptr noundef %2, i32 noundef 1)
  %73 = getelementptr inbounds %struct.insn_operand_data, ptr %41, i64 2
  %74 = load ptr, ptr %73, align 8, !tbaa !219
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = tail call i32 %74(ptr noundef %72, i32 noundef %69) #22
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = tail call ptr @copy_to_mode_reg(i32 noundef %69, ptr noundef %72) #22
  br label %81

81:                                               ; preds = %71, %76, %79, %65
  %82 = phi ptr [ %72, %76 ], [ %80, %79 ], [ %72, %71 ], [ %2, %65 ]
  %83 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %39, i32 4
  %84 = load i8, ptr %83, align 8, !tbaa !312
  %85 = icmp eq i8 %84, 4
  %86 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %39, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !257
  br i1 %85, label %88, label %90

88:                                               ; preds = %81
  %89 = tail call ptr (ptr, ...) %87(ptr noundef %0, ptr noundef %66, ptr noundef %82, ptr noundef %9) #22
  br label %94

90:                                               ; preds = %81
  %91 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %16) #22
  %92 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %5) #22
  %93 = tail call ptr (ptr, ...) %87(ptr noundef %0, ptr noundef %66, ptr noundef %82, ptr noundef %9, ptr noundef %91, ptr noundef %92) #22
  br label %94

94:                                               ; preds = %90, %88
  %95 = phi ptr [ %89, %88 ], [ %93, %90 ]
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = tail call ptr @emit_insn(ptr noundef nonnull %95) #22
  br label %100

99:                                               ; preds = %94
  tail call void @delete_insns_since(ptr noundef %55) #22
  br label %100

100:                                              ; preds = %99, %97
  br i1 %96, label %101, label %105

101:                                              ; preds = %51, %44, %100, %34, %17
  %102 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %20
  %103 = load i8, ptr %102, align 1, !tbaa !197
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %17, !llvm.loop !349

105:                                              ; preds = %100, %101, %6
  %106 = phi i8 [ 0, %6 ], [ 1, %100 ], [ 0, %101 ]
  ret i8 %106
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @set_storage_via_libcall(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #13 !prof !185 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !197
  %7 = tail call ptr @copy_to_mode_reg(i32 noundef 16, ptr noundef %6) #22
  %8 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 14
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #22
  br label %19

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  br label %19

19:                                               ; preds = %14, %12
  %20 = phi i32 [ %13, %12 ], [ %18, %14 ]
  %21 = tail call ptr @convert_modes(i32 noundef %20, i32 noundef 0, ptr noundef %1, i32 noundef 1)
  %22 = tail call ptr @copy_to_mode_reg(i32 noundef %20, ptr noundef %21) #22
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !186
  %24 = tail call ptr @make_tree(ptr noundef %23, ptr noundef %7) #22
  %25 = load i32, ptr %2, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 30
  br i1 %27, label %43, label %28

28:                                               ; preds = %19
  %29 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !186
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 14
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = tail call i32 @vector_type_mode(ptr noundef nonnull %29) #22
  br label %40

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi i32 [ %34, %33 ], [ %39, %35 ]
  %42 = tail call ptr @convert_modes(i32 noundef %41, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 1)
  br label %43

43:                                               ; preds = %40, %19
  %44 = phi ptr [ %2, %19 ], [ %42, %40 ]
  %45 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %46 = tail call ptr @make_tree(ptr noundef %45, ptr noundef %22) #22
  %47 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !186
  %48 = tail call ptr @make_tree(ptr noundef %47, ptr noundef %44) #22
  %49 = load ptr, ptr @block_clear_fn, align 8, !tbaa !186
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  tail call void @init_block_clear_fn(ptr noundef null)
  br label %52

52:                                               ; preds = %51, %43
  %53 = load i1, ptr @clear_storage_libcall_fn.emitted_extern, align 1
  br i1 %53, label %57, label %54

54:                                               ; preds = %52
  store i1 true, ptr @clear_storage_libcall_fn.emitted_extern, align 1
  %55 = load ptr, ptr @block_clear_fn, align 8, !tbaa !186
  tail call void @make_decl_rtl(ptr noundef %55) #22
  %56 = load ptr, ptr @block_clear_fn, align 8, !tbaa !186
  tail call void @assemble_external(ptr noundef %56) #22
  br label %57

57:                                               ; preds = %52, %54
  %58 = load ptr, ptr @block_clear_fn, align 8, !tbaa !186
  %59 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %58, i32 noundef 3, ptr noundef %24, ptr noundef %48, ptr noundef %46) #22
  %60 = load i64, ptr %59, align 8
  %61 = and i8 %3, 1
  %62 = zext nneg i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 18
  %64 = and i64 %60, -262145
  %65 = or disjoint i64 %64, %63
  store i64 %65, ptr %59, align 8
  %66 = tail call ptr @expand_expr_real(ptr noundef nonnull %59, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  ret ptr %66
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @clear_storage(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #13 !prof !185 {
  %4 = tail call ptr @clear_storage_hints(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, i64 noundef -1)
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local void @init_block_clear_fn(ptr noundef %0) local_unnamed_addr #13 !prof !185 {
  %2 = load ptr, ptr @block_clear_fn, align 8, !tbaa !186
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %22

4:                                                ; preds = %1
  %5 = tail call ptr @get_identifier(ptr noundef nonnull @.str.3) #22
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !186
  %7 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !186
  %8 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %9 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %6, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef null) #22
  %10 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 29, ptr noundef %5, ptr noundef %9) #22
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = or i64 %12, 33554432
  store i64 %13, ptr %11, align 8
  %14 = load i64, ptr %10, align 8
  %15 = or i64 %14, 134217728
  store i64 %15, ptr %10, align 8
  %16 = or i64 %12, 33558528
  store i64 %16, ptr %11, align 8
  %17 = or i64 %14, 167772160
  store i64 %17, ptr %10, align 8
  %18 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %10, i64 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, -7169
  %21 = or disjoint i32 %20, 4096
  store i32 %21, ptr %18, align 8
  store ptr %10, ptr @block_clear_fn, align 8, !tbaa !186
  br label %22

22:                                               ; preds = %4, %1
  %23 = icmp eq ptr %0, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr @block_clear_fn, align 8, !tbaa !186
  tail call void @set_user_assembler_name(ptr noundef %25, ptr noundef nonnull %0) #22
  br label %26

26:                                               ; preds = %24, %22
  ret void
}

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @get_last_insn() local_unnamed_addr #3

declare void @delete_insns_since(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_move_complex_push(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 !prof !185 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !197
  %7 = zext i8 %6 to i32
  %8 = zext i8 %6 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !197
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, 3
  %13 = and i32 %12, 508
  %14 = icmp eq i32 %13, %11
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = tail call fastcc ptr @emit_move_resolve_push(i32 noundef %0, ptr noundef %1)
  %17 = tail call ptr @emit_move_insn(ptr noundef %16, ptr noundef %2)
  br label %46

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !197
  %21 = load i32, ptr %20, align 8
  %22 = trunc i32 %21 to i16
  %23 = add i16 %22, -74
  %24 = icmp ult i16 %23, 4
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3144, ptr noundef nonnull @.str.1) #22
  br label %35

26:                                               ; preds = %18
  %27 = shl nuw nsw i16 %23, 3
  %28 = zext nneg i16 %27 to i32
  %29 = lshr i32 16777472, %28
  %30 = trunc i32 %29 to i8
  %31 = shl nuw nsw i16 %23, 3
  %32 = zext nneg i16 %31 to i32
  %33 = lshr i32 65537, %32
  %34 = trunc i32 %33 to i8
  br label %35

35:                                               ; preds = %26, %25
  %36 = phi i8 [ 0, %25 ], [ %30, %26 ]
  %37 = phi i8 [ undef, %25 ], [ %34, %26 ]
  %38 = load ptr, ptr %19, align 8, !tbaa !197
  %39 = tail call ptr @gen_rtx_MEM(i32 noundef %7, ptr noundef %38) #22
  %40 = tail call fastcc ptr @read_complex_part(ptr noundef %2, i8 noundef zeroext %37)
  %41 = tail call ptr @emit_move_insn(ptr noundef %39, ptr noundef %40)
  %42 = load ptr, ptr %19, align 8, !tbaa !197
  %43 = tail call ptr @gen_rtx_MEM(i32 noundef %7, ptr noundef %42) #22
  %44 = tail call fastcc ptr @read_complex_part(ptr noundef %2, i8 noundef zeroext %36)
  %45 = tail call ptr @emit_move_insn(ptr noundef %43, ptr noundef %44)
  br label %46

46:                                               ; preds = %35, %15
  %47 = phi ptr [ %17, %15 ], [ %45, %35 ]
  ret ptr %47
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @emit_move_resolve_push(i32 noundef %0, ptr noundef %1) unnamed_addr #13 !prof !185 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !197
  %5 = load i32, ptr %4, align 8
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !197
  %9 = zext i8 %8 to i64
  %10 = add nuw nsw i64 %9, 3
  %11 = and i64 %10, 508
  %12 = trunc i32 %5 to i16
  switch i16 %12, label %15 [
    i16 76, label %13
    i16 74, label %13
  ]

13:                                               ; preds = %2, %2
  %14 = sub nsw i64 0, %11
  br label %47

15:                                               ; preds = %2
  %16 = and i32 %5, 65534
  %17 = icmp eq i32 %16, 78
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !197
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = add nsw i32 %22, -49
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3073, ptr noundef nonnull @.str.1) #22
  br label %26

26:                                               ; preds = %18, %25
  %27 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !197
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 30
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3074, ptr noundef nonnull @.str.1) #22
  br label %33

33:                                               ; preds = %26, %32
  %34 = load ptr, ptr %27, align 8, !tbaa !197
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !197
  %37 = load i32, ptr %20, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 50
  %40 = sub nsw i64 0, %36
  %41 = select i1 %39, i64 %40, i64 %36
  %42 = icmp eq i64 %11, %41
  %43 = sub nsw i64 0, %41
  %44 = icmp eq i64 %11, %43
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3078, ptr noundef nonnull @.str.1) #22
  br label %47

47:                                               ; preds = %46, %33, %15, %13
  %48 = phi i64 [ %14, %13 ], [ %11, %15 ], [ %41, %33 ], [ %41, %46 ]
  %49 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !186
  %50 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %48) #22
  %51 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !186
  %52 = tail call ptr @expand_simple_binop(i32 noundef 16, i32 noundef 49, ptr noundef %49, ptr noundef %50, ptr noundef %51, i32 noundef 0, i32 noundef 3) #22
  %53 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !186
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %57, label %55

55:                                               ; preds = %47
  %56 = tail call ptr @emit_move_insn(ptr noundef %53, ptr noundef %52)
  br label %57

57:                                               ; preds = %55, %47
  switch i16 %12, label %64 [
    i16 75, label %58
    i16 74, label %58
    i16 78, label %58
    i16 77, label %60
    i16 76, label %60
    i16 79, label %60
  ]

58:                                               ; preds = %57, %57, %57
  %59 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !186
  br label %65

60:                                               ; preds = %57, %57, %57
  %61 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !186
  %62 = sub nsw i64 0, %48
  %63 = tail call ptr @plus_constant(ptr noundef %61, i64 noundef %62) #22
  br label %65

64:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3103, ptr noundef nonnull @.str.1) #22
  br label %65

65:                                               ; preds = %64, %60, %58
  %66 = phi ptr [ %52, %64 ], [ %63, %60 ], [ %59, %58 ]
  %67 = tail call ptr @replace_equiv_address(ptr noundef %1, ptr noundef %66) #22
  ret ptr %67
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @read_complex_part(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #13 !prof !185 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 41
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = zext i8 %1 to i64
  %9 = getelementptr inbounds [1 x %union.rtunion_def], ptr %7, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !197
  br label %108

11:                                               ; preds = %2
  %12 = lshr i32 %3, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !197
  %17 = zext i8 %16 to i32
  %18 = zext i8 %16 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !197
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 3
  %23 = icmp eq i32 %4, 43
  br i1 %23, label %24, label %59

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !197
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %30, label %59

30:                                               ; preds = %24
  %31 = and i32 %27, 67108864
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !197
  br label %36

36:                                               ; preds = %30, %33
  %37 = phi ptr [ %35, %33 ], [ null, %30 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %56, label %39

39:                                               ; preds = %36
  %40 = load i64, ptr %37, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 26
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = icmp eq i8 %1, 0
  %45 = getelementptr inbounds %struct.tree_complex, ptr %37, i64 0, i32 2
  %46 = getelementptr inbounds %struct.tree_complex, ptr %37, i64 0, i32 1
  %47 = select i1 %44, ptr %46, ptr %45
  %48 = load ptr, ptr %47, align 8, !tbaa !197
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !201
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %56, label %54

54:                                               ; preds = %43
  %55 = tail call ptr @expand_expr_real(ptr noundef nonnull %48, ptr noundef null, i32 noundef %17, i32 noundef 0, ptr noundef null)
  br label %56

56:                                               ; preds = %54, %43, %36, %39
  %57 = phi i1 [ true, %39 ], [ true, %36 ], [ %53, %43 ], [ false, %54 ]
  %58 = phi ptr [ undef, %39 ], [ undef, %36 ], [ undef, %43 ], [ %55, %54 ]
  br i1 %57, label %59, label %108

59:                                               ; preds = %56, %24, %11
  %60 = phi ptr [ %58, %56 ], [ undef, %24 ], [ undef, %11 ]
  %61 = load i32, ptr %0, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 43
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = icmp eq i8 %1, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %64
  %67 = load i8, ptr %19, align 1, !tbaa !197
  %68 = zext i8 %67 to i64
  br label %69

69:                                               ; preds = %64, %66
  %70 = phi i64 [ %68, %66 ], [ 0, %64 ]
  %71 = tail call ptr @adjust_address_1(ptr noundef nonnull %0, i32 noundef %17, i64 noundef %70, i32 noundef 0, i32 noundef 1) #22
  br label %108

72:                                               ; preds = %59
  %73 = icmp ugt i8 %20, 3
  br i1 %73, label %86, label %74

74:                                               ; preds = %72
  %75 = icmp eq i32 %62, 37
  br i1 %75, label %76, label %104

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !197
  %79 = icmp ult i32 %78, 53
  br i1 %79, label %80, label %104

80:                                               ; preds = %76
  %81 = zext nneg i32 %78 to i64
  %82 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %81, i64 %14
  %83 = load i8, ptr %82, align 1, !tbaa !197
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %80, %72
  %87 = icmp eq i8 %1, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %86
  %89 = load i8, ptr %19, align 1, !tbaa !197
  %90 = zext i8 %89 to i32
  br label %91

91:                                               ; preds = %86, %88
  %92 = phi i32 [ %90, %88 ], [ 0, %86 ]
  %93 = tail call ptr @simplify_gen_subreg(i32 noundef %17, ptr noundef nonnull %0, i32 noundef %13, i32 noundef %92) #22
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load i32, ptr %0, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 43
  %99 = icmp ult i8 %20, 4
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2969, ptr noundef nonnull @.str.1) #22
  br label %102

102:                                              ; preds = %101, %95, %91
  %103 = phi ptr [ %93, %91 ], [ %60, %95 ], [ %60, %101 ]
  br i1 %94, label %104, label %108

104:                                              ; preds = %80, %102, %76, %74
  %105 = icmp eq i8 %1, 0
  %106 = select i1 %105, i64 0, i64 %22
  %107 = tail call ptr @extract_bit_field(ptr noundef nonnull %0, i64 noundef %22, i64 noundef %106, i32 noundef 1, ptr noundef null, i32 noundef %17, i32 noundef %17) #22
  br label %108

108:                                              ; preds = %56, %102, %104, %69, %6
  %109 = phi ptr [ %10, %6 ], [ %71, %69 ], [ %107, %104 ], [ %103, %102 ], [ %58, %56 ]
  ret ptr %109
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_move_complex_parts(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 !prof !185 {
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !201
  %4 = icmp ne i32 %3, 0
  %5 = load i32, ptr @reload_in_progress, align 4
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %0, ptr noundef %1) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call ptr @emit_clobber(ptr noundef nonnull %0) #22
  br label %17

17:                                               ; preds = %15, %12, %8, %2
  %18 = tail call fastcc ptr @read_complex_part(ptr noundef %1, i8 noundef zeroext 0)
  tail call fastcc void @write_complex_part(ptr noundef %0, ptr noundef %18, i8 noundef zeroext 0)
  %19 = tail call fastcc ptr @read_complex_part(ptr noundef %1, i8 noundef zeroext 1)
  tail call fastcc void @write_complex_part(ptr noundef %0, ptr noundef %19, i8 noundef zeroext 1)
  %20 = tail call ptr @get_last_insn() #22
  ret ptr %20
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @emit_move_insn_1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !350 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = icmp ult i32 %5, 87
  br i1 %6, label %8, label %7, !prof !255

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3378, ptr noundef nonnull @.str.1) #22
  br label %8

8:                                                ; preds = %2, %7
  %9 = zext nneg i32 %5 to i64
  %10 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !235
  %12 = icmp eq i32 %11, 2956
  br i1 %12, label %19, label %13, !prof !256

13:                                               ; preds = %8
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %14, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !257
  %17 = tail call ptr (ptr, ...) %16(ptr noundef nonnull %0, ptr noundef %1) #22, !prof !351
  %18 = tail call ptr @emit_insn(ptr noundef %17) #22
  br label %130

19:                                               ; preds = %8
  %20 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %21 = load i8, ptr %20, align 1, !tbaa !197
  switch i8 %21, label %114 [
    i8 10, label %22
    i8 11, label %22
    i8 9, label %86
    i8 4, label %86
    i8 13, label %86
    i8 6, label %86
    i8 15, label %86
    i8 5, label %86
    i8 14, label %86
    i8 7, label %86
    i8 16, label %86
    i8 1, label %91
  ]

22:                                               ; preds = %19, %19
  %23 = tail call i32 @push_operand(ptr noundef nonnull %0, i32 noundef %5) #22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call ptr @emit_move_complex_push(i32 noundef %5, ptr noundef nonnull %0, ptr noundef %1)
  br label %130

27:                                               ; preds = %22
  %28 = icmp eq i8 %21, 11
  br i1 %28, label %29, label %36

29:                                               ; preds = %27
  %30 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %9
  %31 = load i8, ptr %30, align 1, !tbaa !197
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !235
  %35 = icmp eq i32 %34, 2956
  br i1 %35, label %36, label %84

36:                                               ; preds = %29, %27
  %37 = load i32, ptr %0, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 41
  br i1 %39, label %84, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %1, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 41
  br i1 %43, label %84, label %44

44:                                               ; preds = %40
  %45 = tail call i32 @register_operand(ptr noundef nonnull %0, i32 noundef %5) #22
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @register_operand(ptr noundef nonnull %1, i32 noundef %5) #22
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47, %44
  %51 = load i32, ptr %0, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 43
  %54 = load i32, ptr %1, align 8
  %55 = and i32 %54, 65535
  br i1 %53, label %56, label %61

56:                                               ; preds = %50
  %57 = zext nneg i32 %55 to i64
  %58 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !201
  %60 = icmp eq i32 %59, 9
  br i1 %60, label %84, label %63

61:                                               ; preds = %50
  %62 = icmp eq i32 %55, 43
  br i1 %62, label %63, label %84

63:                                               ; preds = %61, %56, %47
  %64 = load i32, ptr %0, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 43
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load i32, ptr %1, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 43
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %73 = load i8, ptr %72, align 1, !tbaa !197
  %74 = zext i8 %73 to i64
  %75 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %74) #22
  %76 = tail call ptr @emit_block_move_hints(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %75, i32 noundef 1, i32 noundef 0, i64 noundef -1)
  %77 = tail call ptr @get_last_insn() #22
  br label %81

78:                                               ; preds = %67, %63
  %79 = tail call fastcc ptr @emit_move_via_integer(i32 noundef %5, ptr noundef nonnull %0, ptr noundef nonnull %1, i8 noundef zeroext 1)
  %80 = icmp eq ptr %79, null
  br label %81

81:                                               ; preds = %78, %71
  %82 = phi i1 [ false, %71 ], [ %80, %78 ]
  %83 = phi ptr [ %77, %71 ], [ %79, %78 ]
  br i1 %82, label %84, label %130

84:                                               ; preds = %61, %29, %81, %56, %40, %36
  %85 = tail call ptr @emit_move_complex_parts(ptr noundef nonnull %0, ptr noundef %1)
  br label %130

86:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19
  %87 = tail call fastcc ptr @emit_move_via_integer(i32 noundef %5, ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext 1)
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %130

89:                                               ; preds = %86
  %90 = tail call fastcc ptr @emit_move_multi_word(i32 noundef %5, ptr noundef nonnull %0, ptr noundef %1)
  br label %130

91:                                               ; preds = %19
  %92 = icmp eq i32 %5, 2
  br i1 %92, label %108, label %93

93:                                               ; preds = %91
  %94 = load i32, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 2), align 8, !tbaa !235
  %95 = icmp eq i32 %94, 2956
  br i1 %95, label %104, label %96

96:                                               ; preds = %93
  %97 = tail call fastcc ptr @emit_move_change_mode(i32 noundef 2, i32 noundef %5, ptr noundef nonnull %0, i8 noundef zeroext 1)
  %98 = tail call fastcc ptr @emit_move_change_mode(i32 noundef 2, i32 noundef %5, ptr noundef %1, i8 noundef zeroext 1)
  %99 = zext i32 %94 to i64
  %100 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %99, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !257
  %102 = tail call ptr (ptr, ...) %101(ptr noundef %97, ptr noundef %98) #22
  %103 = tail call ptr @emit_insn(ptr noundef %102) #22
  br label %104

104:                                              ; preds = %96, %93
  %105 = phi ptr [ %98, %96 ], [ %1, %93 ]
  %106 = phi ptr [ %97, %96 ], [ %0, %93 ]
  %107 = phi ptr [ %103, %96 ], [ undef, %93 ]
  br i1 %95, label %108, label %130

108:                                              ; preds = %104, %91
  %109 = phi ptr [ %105, %104 ], [ %1, %91 ]
  %110 = phi ptr [ %106, %104 ], [ %0, %91 ]
  %111 = tail call fastcc ptr @emit_move_via_integer(i32 noundef %5, ptr noundef %110, ptr noundef %109, i8 noundef zeroext 0)
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %130

113:                                              ; preds = %108
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3251, ptr noundef nonnull @.str.1) #22
  br label %130

114:                                              ; preds = %19
  %115 = load i32, ptr %1, align 8
  %116 = and i32 %115, 65535
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !201
  %120 = icmp eq i32 %119, 9
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %123 = load i8, ptr %122, align 1, !tbaa !197
  %124 = icmp ult i8 %123, 9
  br i1 %124, label %125, label %128

125:                                              ; preds = %121, %114
  %126 = tail call fastcc ptr @emit_move_via_integer(i32 noundef %5, ptr noundef nonnull %0, ptr noundef nonnull %1, i8 noundef zeroext 0)
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %121, %125
  %129 = tail call fastcc ptr @emit_move_multi_word(i32 noundef %5, ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %130

130:                                              ; preds = %104, %113, %108, %84, %81, %25, %89, %86, %125, %128, %13
  %131 = phi ptr [ %18, %13 ], [ %129, %128 ], [ %126, %125 ], [ %90, %89 ], [ %87, %86 ], [ %26, %25 ], [ %85, %84 ], [ %83, %81 ], [ %111, %108 ], [ %111, %113 ], [ %107, %104 ]
  ret ptr %131
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @emit_move_via_integer(i32 noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #13 !prof !185 {
  %5 = tail call i32 @int_mode_for_mode(i32 noundef %0) #22
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !235
  %11 = icmp eq i32 %10, 2956
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = tail call fastcc ptr @emit_move_change_mode(i32 noundef %5, i32 noundef %0, ptr noundef %1, i8 noundef zeroext %3)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @emit_move_change_mode(i32 noundef %5, i32 noundef %0, ptr noundef %2, i8 noundef zeroext %3)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = zext i32 %10 to i64
  %20 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %19, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !257
  %22 = tail call ptr (ptr, ...) %21(ptr noundef nonnull %13, ptr noundef nonnull %16) #22
  %23 = tail call ptr @emit_insn(ptr noundef %22) #22
  br label %24

24:                                               ; preds = %15, %12, %7, %4, %18
  %25 = phi ptr [ %23, %18 ], [ null, %4 ], [ null, %7 ], [ null, %12 ], [ null, %15 ]
  ret ptr %25
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @emit_move_multi_word(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #13 !prof !185 {
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !197
  %7 = icmp ugt i8 %6, 3
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3300, ptr noundef nonnull @.str.1) #22
  br label %9

9:                                                ; preds = %3, %8
  %10 = tail call i32 @push_operand(ptr noundef %1, i32 noundef %0) #22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @emit_move_resolve_push(i32 noundef %0, ptr noundef %1)
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi ptr [ %13, %12 ], [ %1, %9 ]
  %16 = load i32, ptr @reload_in_progress, align 4, !tbaa !201
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %15, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 43
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %24 = tail call ptr @find_replacement(ptr noundef nonnull %23) #22
  %25 = load ptr, ptr %23, align 8, !tbaa !197
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %15, ptr noundef %24) #22
  br label %29

29:                                               ; preds = %27, %22, %18, %14
  %30 = phi ptr [ %28, %27 ], [ %15, %22 ], [ %15, %18 ], [ %15, %14 ]
  %31 = load i32, ptr @reload_in_progress, align 4, !tbaa !201
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %2, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 43
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %39 = tail call ptr @find_replacement(ptr noundef nonnull %38) #22
  %40 = load ptr, ptr %38, align 8, !tbaa !197
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %2, ptr noundef %39) #22
  br label %44

44:                                               ; preds = %42, %37, %33, %29
  %45 = phi ptr [ %43, %42 ], [ %2, %37 ], [ %2, %33 ], [ %2, %29 ]
  tail call void @start_sequence() #22
  %46 = load i8, ptr %5, align 1, !tbaa !197
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %126, label %48

48:                                               ; preds = %44, %114
  %49 = phi i32 [ %118, %114 ], [ 0, %44 ]
  %50 = phi i8 [ %117, %114 ], [ 0, %44 ]
  %51 = phi ptr [ %116, %114 ], [ %45, %44 ]
  %52 = phi ptr [ %115, %114 ], [ null, %44 ]
  %53 = tail call ptr @operand_subword(ptr noundef %30, i32 noundef %49, i32 noundef 1, i32 noundef %0) #22
  %54 = load i32, ptr %51, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 39
  br i1 %56, label %57, label %81

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !197
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = shl nsw i32 %49, 2
  %64 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load i32, ptr %64, align 8, !tbaa !197
  %66 = add i32 %65, %63
  %67 = zext nneg i32 %62 to i64
  %68 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !197
  %70 = zext i8 %69 to i32
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %57
  %73 = load i32, ptr @word_mode, align 4, !tbaa !201
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !197
  %77 = zext i8 %76 to i32
  %78 = sub nsw i32 0, %77
  %79 = icmp sle i32 %66, %78
  %80 = zext i1 %79 to i8
  br label %81

81:                                               ; preds = %48, %57, %72
  %82 = phi i8 [ 0, %48 ], [ 1, %57 ], [ %80, %72 ]
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %114

84:                                               ; preds = %81
  %85 = tail call ptr @operand_subword(ptr noundef nonnull %51, i32 noundef %49, i32 noundef 1, i32 noundef %0) #22
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load i32, ptr %51, align 8
  %89 = and i32 %88, 65535
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !201
  %93 = icmp eq i32 %92, 9
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = tail call ptr @force_const_mem(i32 noundef %0, ptr noundef nonnull %51) #22
  %96 = tail call ptr @use_anchored_address(ptr noundef %95) #22
  %97 = tail call ptr @operand_subword(ptr noundef %96, i32 noundef %49, i32 noundef 1, i32 noundef %0) #22
  br label %100

98:                                               ; preds = %87
  %99 = tail call ptr @operand_subword_force(ptr noundef nonnull %51, i32 noundef %49, i32 noundef %0) #22
  br label %100

100:                                              ; preds = %84, %98, %94
  %101 = phi ptr [ %96, %94 ], [ %51, %98 ], [ %51, %84 ]
  %102 = phi ptr [ %97, %94 ], [ %99, %98 ], [ %85, %84 ]
  %103 = icmp ne ptr %53, null
  %104 = icmp ne ptr %102, null
  %105 = select i1 %103, i1 %104, i1 false
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3344, ptr noundef nonnull @.str.1) #22
  br label %107

107:                                              ; preds = %100, %106
  %108 = load i32, ptr %53, align 8
  %109 = and i32 %108, 65535
  %110 = icmp eq i32 %109, 39
  %111 = zext i1 %110 to i8
  %112 = or i8 %50, %111
  %113 = tail call ptr @emit_move_insn(ptr noundef nonnull %53, ptr noundef %102)
  br label %114

114:                                              ; preds = %81, %107
  %115 = phi ptr [ %113, %107 ], [ %52, %81 ]
  %116 = phi ptr [ %101, %107 ], [ %51, %81 ]
  %117 = phi i8 [ %112, %107 ], [ %50, %81 ]
  %118 = add nuw nsw i32 %49, 1
  %119 = load i8, ptr %5, align 1, !tbaa !197
  %120 = zext i8 %119 to i32
  %121 = add nuw nsw i32 %120, 3
  %122 = lshr i32 %121, 2
  %123 = icmp ult i32 %118, %122
  br i1 %123, label %48, label %124, !llvm.loop !352

124:                                              ; preds = %114
  %125 = icmp ne i8 %117, 0
  br label %126

126:                                              ; preds = %124, %44
  %127 = phi ptr [ null, %44 ], [ %115, %124 ]
  %128 = phi ptr [ %45, %44 ], [ %116, %124 ]
  %129 = phi i1 [ false, %44 ], [ %125, %124 ]
  %130 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %131 = icmp ne ptr %30, %128
  %132 = load i32, ptr @reload_in_progress, align 4
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %131, i1 %133, i1 false
  %135 = load i32, ptr @reload_completed, align 4
  %136 = icmp eq i32 %135, 0
  %137 = select i1 %134, i1 %136, i1 false
  %138 = select i1 %137, i1 %129, i1 false
  br i1 %138, label %139, label %141

139:                                              ; preds = %126
  %140 = tail call ptr @emit_clobber(ptr noundef %30) #22
  br label %141

141:                                              ; preds = %139, %126
  %142 = tail call ptr @emit_insn(ptr noundef %130) #22
  ret ptr %127
}

declare ptr @use_anchored_address(ptr noundef) local_unnamed_addr #3

declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @push_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @push_block(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #13 !prof !185 {
  %4 = load i32, ptr @ptr_mode, align 4, !tbaa !201
  %5 = tail call ptr @convert_modes(i32 noundef 16, i32 noundef %4, ptr noundef %0, i32 noundef 1)
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !201
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = sext i32 %1 to i64
  %14 = tail call ptr @plus_constant(ptr noundef nonnull %5, i64 noundef %13) #22
  tail call void @anti_adjust_stack(ptr noundef %14) #22
  br label %28

15:                                               ; preds = %3
  %16 = icmp eq i32 %7, 37
  %17 = icmp eq i32 %1, 0
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @anti_adjust_stack(ptr noundef nonnull %5) #22
  br label %28

20:                                               ; preds = %15
  %21 = tail call ptr @copy_to_mode_reg(i32 noundef 16, ptr noundef nonnull %5) #22
  br i1 %17, label %26, label %22

22:                                               ; preds = %20
  %23 = sext i32 %1 to i64
  %24 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %23) #22
  %25 = tail call ptr @expand_binop(i32 noundef 16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %21, ptr noundef %24, ptr noundef %21, i32 noundef 0, i32 noundef 3) #22
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi ptr [ %25, %22 ], [ %21, %20 ]
  tail call void @anti_adjust_stack(ptr noundef %27) #22
  br label %28

28:                                               ; preds = %19, %26, %12
  %29 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !186
  %30 = icmp ne i32 %1, 0
  %31 = icmp ne i32 %2, 0
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = sext i32 %1 to i64
  %35 = tail call ptr @plus_constant(ptr noundef %29, i64 noundef %34) #22
  br label %36

36:                                               ; preds = %33, %28
  %37 = phi ptr [ %35, %33 ], [ %29, %28 ]
  %38 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !197
  %39 = zext i8 %38 to i32
  %40 = tail call ptr @memory_address_addr_space(i32 noundef %39, ptr noundef %37, i8 noundef zeroext 0) #22
  ret ptr %40
}

declare void @anti_adjust_stack(ptr noundef) local_unnamed_addr #3

declare ptr @expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @emit_push_insn(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11) local_unnamed_addr #9 !prof !353 {
  %13 = icmp eq i32 %1, 1
  br i1 %13, label %14, label %142, !prof !354

14:                                               ; preds = %12
  %15 = srem i32 %5, 4
  %16 = sub nsw i32 %5, %15
  %17 = icmp eq ptr %3, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3793, ptr noundef nonnull @.str.1) #22
  br label %19

19:                                               ; preds = %14, %18
  %20 = icmp eq i32 %5, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = sext i32 %16 to i64
  %23 = tail call ptr @adjust_address_1(ptr noundef %0, i32 noundef 1, i64 noundef %22, i32 noundef 1, i32 noundef 1) #22
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi ptr [ %23, %21 ], [ %0, %19 ]
  %26 = icmp eq i32 %10, 0
  %27 = select i1 %26, i32 0, i32 %16
  %28 = icmp eq ptr %8, null
  br i1 %28, label %29, label %84

29:                                               ; preds = %24
  %30 = load i32, ptr @target_flags, align 4, !tbaa !201
  %31 = and i32 %30, 8196
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %84

33:                                               ; preds = %29
  %34 = tail call i32 @ix86_cfun_abi() #22
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %84, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %3, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 30
  %40 = icmp eq i32 %27, 0
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %84

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !197
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.mem_attrs, ptr %44, i64 0, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !294
  br label %49

49:                                               ; preds = %42, %46
  %50 = phi i32 [ %48, %46 ], [ 8, %42 ]
  %51 = icmp ult i32 %50, %4
  br i1 %51, label %84, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !197
  %55 = trunc i64 %54 to i32
  %56 = sub i32 %55, %16
  %57 = zext i32 %56 to i64
  %58 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %57, i32 noundef %4)
  %59 = tail call zeroext i8 @optimize_insn_for_speed_p() #22
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %52
  %62 = load ptr, ptr @ix86_cost, align 8, !tbaa !186
  %63 = getelementptr inbounds %struct.processor_costs, ptr %62, i64 0, i32 10
  %64 = load i32, ptr %63, align 4, !tbaa !278
  %65 = zext i32 %64 to i64
  br label %66

66:                                               ; preds = %52, %61
  %67 = phi i64 [ %65, %61 ], [ 3, %52 ]
  %68 = icmp ult i64 %58, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %66
  %70 = load i64, ptr %53, align 8, !tbaa !197
  %71 = add nsw i64 %70, 3
  %72 = and i64 %71, -4
  %73 = icmp eq i64 %72, %70
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = icmp eq i32 %7, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %74
  %77 = sext i32 %7 to i64
  %78 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %77) #22
  tail call void @anti_adjust_stack(ptr noundef %78) #22
  br label %79

79:                                               ; preds = %76, %74
  %80 = load i64, ptr %53, align 8, !tbaa !197
  %81 = sext i32 %16 to i64
  %82 = sub nsw i64 %80, %81
  %83 = tail call ptr @move_by_pieces(ptr noundef null, ptr noundef %25, i64 noundef %82, i32 noundef %4, i32 noundef 0)
  br label %247

84:                                               ; preds = %69, %66, %49, %36, %33, %29, %24
  br i1 %20, label %100, label %85

85:                                               ; preds = %84
  %86 = load i32, ptr %3, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 30
  %89 = sext i32 %16 to i64
  br i1 %88, label %90, label %95

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !197
  %93 = sub nsw i64 %92, %89
  %94 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %93) #22
  br label %100

95:                                               ; preds = %85
  %96 = lshr i32 %86, 16
  %97 = and i32 %96, 255
  %98 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %89) #22
  %99 = tail call ptr @expand_binop(i32 noundef %97, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef nonnull %3, ptr noundef %98, ptr noundef null, i32 noundef 0, i32 noundef 3) #22
  br label %100

100:                                              ; preds = %90, %95, %84
  %101 = phi ptr [ %94, %90 ], [ %99, %95 ], [ %3, %84 ]
  br i1 %28, label %102, label %104

102:                                              ; preds = %100
  %103 = tail call ptr @push_block(ptr noundef %101, i32 noundef %7, i32 noundef 0)
  br label %120

104:                                              ; preds = %100
  %105 = load i32, ptr %9, align 8
  %106 = and i32 %105, 65535
  %107 = icmp eq i32 %106, 30
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = sext i32 %27 to i64
  %110 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %111 = load i64, ptr %110, align 8, !tbaa !197
  %112 = add nsw i64 %111, %109
  %113 = tail call ptr @plus_constant(ptr noundef nonnull %8, i64 noundef %112) #22
  %114 = tail call ptr @memory_address_addr_space(i32 noundef 1, ptr noundef %113, i8 noundef zeroext 0) #22
  br label %120

115:                                              ; preds = %104
  %116 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef nonnull %8, ptr noundef nonnull %9) #22
  %117 = sext i32 %27 to i64
  %118 = tail call ptr @plus_constant(ptr noundef %116, i64 noundef %117) #22
  %119 = tail call ptr @memory_address_addr_space(i32 noundef 1, ptr noundef %118, i8 noundef zeroext 0) #22
  br label %120

120:                                              ; preds = %108, %115, %102
  %121 = phi ptr [ %114, %108 ], [ %119, %115 ], [ %103, %102 ]
  %122 = load i32, ptr @target_flags, align 4, !tbaa !201
  %123 = and i32 %122, 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %120
  %126 = tail call i32 @ix86_cfun_abi() #22
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %138, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !186
  %130 = tail call i32 @reg_mentioned_p(ptr noundef %129, ptr noundef %121) #22
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !186
  %134 = tail call i32 @reg_mentioned_p(ptr noundef %133, ptr noundef %121) #22
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %132, %128
  %137 = tail call ptr @copy_to_reg(ptr noundef %121) #22
  br label %138

138:                                              ; preds = %132, %136, %125, %120
  %139 = phi ptr [ %121, %120 ], [ %121, %125 ], [ %137, %136 ], [ %121, %132 ]
  %140 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %139) #22
  tail call void @set_mem_align(ptr noundef %140, i32 noundef %4) #22
  %141 = tail call ptr @emit_block_move_hints(ptr noundef %140, ptr noundef %25, ptr noundef %101, i32 noundef 2, i32 noundef 0, i64 noundef -1)
  br label %247

142:                                              ; preds = %12
  %143 = icmp sgt i32 %5, 0
  br i1 %143, label %144, label %216, !prof !354

144:                                              ; preds = %142
  %145 = zext i32 %1 to i64
  %146 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !197
  %148 = lshr i8 %147, 2
  %149 = zext nneg i8 %148 to i32
  %150 = and i32 %5, 3
  %151 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %152 = load i64, ptr %151, align 8, !tbaa !197
  %153 = trunc i64 %152 to i32
  %154 = icmp ne i32 %7, 0
  %155 = icmp eq ptr %8, null
  %156 = and i1 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %144
  %158 = sext i32 %7 to i64
  %159 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %158) #22
  tail call void @anti_adjust_stack(ptr noundef %159) #22
  br label %160

160:                                              ; preds = %157, %144
  %161 = select i1 %155, i32 0, i32 %150
  %162 = sub nsw i32 %5, %161
  %163 = sdiv i32 %162, 4
  %164 = icmp eq i32 %10, 0
  %165 = load i32, ptr %0, align 8
  %166 = and i32 %165, 65535
  %167 = zext nneg i32 %166 to i64
  %168 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !201
  %170 = icmp eq i32 %169, 9
  br i1 %170, label %171, label %177

171:                                              ; preds = %160
  %172 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %0) #22
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = tail call ptr @force_const_mem(i32 noundef %1, ptr noundef nonnull %0) #22
  %176 = tail call ptr @validize_mem(ptr noundef %175) #22
  br label %177

177:                                              ; preds = %174, %171, %160
  %178 = phi ptr [ %0, %171 ], [ %176, %174 ], [ %0, %160 ]
  %179 = load i32, ptr %178, align 8
  %180 = and i32 %179, 65535
  %181 = icmp eq i32 %180, 37
  br i1 %181, label %182, label %195

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1
  %184 = load i32, ptr %183, align 8, !tbaa !197
  %185 = icmp ult i32 %184, 53
  br i1 %185, label %186, label %195

186:                                              ; preds = %182
  %187 = lshr i32 %179, 16
  %188 = and i32 %187, 255
  %189 = zext nneg i32 %188 to i64
  %190 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !197
  %192 = icmp eq i8 %191, 2
  br i1 %192, label %195, label %193

193:                                              ; preds = %186
  %194 = tail call ptr @copy_to_reg(ptr noundef nonnull %178) #22
  br label %195

195:                                              ; preds = %193, %186, %182, %177
  %196 = phi ptr [ %194, %193 ], [ %178, %186 ], [ %178, %182 ], [ %178, %177 ]
  %197 = icmp slt i32 %163, %149
  br i1 %197, label %198, label %247

198:                                              ; preds = %195
  %199 = select i1 %164, i32 %163, i32 0
  %200 = lshr i8 %147, 2
  %201 = zext nneg i8 %200 to i64
  %202 = sext i32 %163 to i64
  br label %203

203:                                              ; preds = %198, %203
  %204 = phi i64 [ %201, %198 ], [ %205, %203 ]
  %205 = add nsw i64 %204, -1
  %206 = trunc i64 %205 to i32
  %207 = tail call ptr @operand_subword_force(ptr noundef %196, i32 noundef %206, i32 noundef %1) #22
  %208 = load i32, ptr @word_mode, align 4, !tbaa !201
  %209 = trunc i64 %205 to i32
  %210 = sub i32 %209, %199
  %211 = shl nsw i32 %210, 2
  %212 = add nsw i32 %211, %153
  %213 = sext i32 %212 to i64
  %214 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %213) #22
  tail call void @emit_push_insn(ptr noundef %207, i32 noundef %208, ptr noundef null, ptr noundef null, i32 noundef %4, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %8, ptr noundef %214, i32 noundef %10, ptr noundef %11)
  %215 = icmp sgt i64 %205, %202
  br i1 %215, label %203, label %247, !llvm.loop !355

216:                                              ; preds = %142
  %217 = icmp ne i32 %7, 0
  %218 = icmp eq ptr %8, null
  %219 = and i1 %217, %218
  br i1 %219, label %220, label %223, !prof !354

220:                                              ; preds = %216
  %221 = sext i32 %7 to i64
  %222 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %221) #22
  tail call void @anti_adjust_stack(ptr noundef %222) #22
  br label %223

223:                                              ; preds = %220, %216
  br i1 %218, label %224, label %232, !prof !354

224:                                              ; preds = %223
  %225 = load i32, ptr @target_flags, align 4, !tbaa !201
  %226 = and i32 %225, 8196
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = tail call i32 @ix86_cfun_abi() #22
  %230 = icmp eq i32 %229, 1
  br i1 %230, label %232, label %231

231:                                              ; preds = %228
  tail call fastcc void @emit_single_push_insn(i32 noundef %1, ptr noundef %0, ptr noundef %2)
  br label %247

232:                                              ; preds = %228, %224, %223
  %233 = load i32, ptr %9, align 8
  %234 = and i32 %233, 65535
  %235 = icmp eq i32 %234, 30
  br i1 %235, label %236, label %240, !prof !356

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %238 = load i64, ptr %237, align 8, !tbaa !197
  %239 = tail call ptr @plus_constant(ptr noundef %8, i64 noundef %238) #22
  br label %242

240:                                              ; preds = %232
  %241 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %8, ptr noundef nonnull %9) #22
  br label %242

242:                                              ; preds = %240, %236
  %243 = phi ptr [ %241, %240 ], [ %239, %236 ]
  %244 = tail call ptr @memory_address_addr_space(i32 noundef %1, ptr noundef %243, i8 noundef zeroext 0) #22
  %245 = tail call ptr @gen_rtx_MEM(i32 noundef %1, ptr noundef %244) #22
  tail call void @set_mem_align(ptr noundef %245, i32 noundef %4) #22
  %246 = tail call ptr @emit_move_insn(ptr noundef %245, ptr noundef %0)
  br label %247

247:                                              ; preds = %203, %195, %231, %242, %79, %138
  %248 = phi ptr [ %0, %138 ], [ %0, %79 ], [ %0, %242 ], [ %0, %231 ], [ %196, %195 ], [ %196, %203 ]
  %249 = icmp sgt i32 %5, 0
  %250 = icmp ne ptr %6, null
  %251 = and i1 %249, %250
  br i1 %251, label %252, label %265, !prof !354

252:                                              ; preds = %247
  %253 = load i32, ptr %6, align 8
  %254 = and i32 %253, 65535
  %255 = icmp eq i32 %254, 15
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  tail call void @emit_group_load(ptr noundef nonnull %6, ptr noundef %248, ptr poison, i32 noundef -1)
  br label %265

257:                                              ; preds = %252
  %258 = and i32 %5, 3
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %257
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4012, ptr noundef nonnull @.str.1) #22
  br label %261

261:                                              ; preds = %257, %260
  %262 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %263 = load i32, ptr %262, align 8, !tbaa !197
  %264 = lshr i32 %5, 2
  tail call void @move_block_to_reg(i32 noundef %263, ptr noundef %248, i32 noundef %264, i32 noundef %1)
  br label %265

265:                                              ; preds = %256, %261, %247
  %266 = icmp eq ptr %8, null
  %267 = icmp ne ptr %11, null
  %268 = and i1 %266, %267
  br i1 %268, label %269, label %270, !prof !354

269:                                              ; preds = %265
  tail call void @anti_adjust_stack(ptr noundef nonnull %11) #22
  br label %270

270:                                              ; preds = %269, %265
  ret void
}

declare i32 @ix86_cfun_abi() local_unnamed_addr #3

declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_mem_align(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @emit_single_push_insn(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #13 !prof !185 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !197
  %7 = zext i8 %6 to i32
  %8 = add nuw nsw i32 %7, 3
  %9 = and i32 %8, 508
  %10 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !357
  %11 = add nsw i32 %9, %10
  store i32 %11, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !357
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !235
  %15 = icmp eq i32 %14, 2956
  br i1 %15, label %34, label %16

16:                                               ; preds = %3
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %17, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !217
  %20 = load ptr, ptr %19, align 8, !tbaa !219
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = tail call i32 %20(ptr noundef %1, i32 noundef %0) #22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call ptr @force_reg(i32 noundef %0, ptr noundef %1) #22
  br label %27

27:                                               ; preds = %25, %22, %16
  %28 = phi ptr [ %1, %22 ], [ %26, %25 ], [ %1, %16 ]
  %29 = zext i32 %14 to i64
  %30 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %29, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !257
  %32 = tail call ptr (ptr, ...) %31(ptr noundef %28) #22
  %33 = tail call ptr @emit_insn(ptr noundef %32) #22
  br label %56

34:                                               ; preds = %3
  %35 = icmp eq i32 %9, %7
  %36 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !186
  br i1 %35, label %37, label %39

37:                                               ; preds = %34
  %38 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 74, i32 noundef 16, ptr noundef %36) #22
  br label %46

39:                                               ; preds = %34
  %40 = zext nneg i32 %9 to i64
  %41 = sub nsw i64 0, %40
  %42 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %41) #22
  %43 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %36, ptr noundef %42) #22
  %44 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !186
  %45 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 78, i32 noundef 16, ptr noundef %44, ptr noundef %43) #22
  br label %46

46:                                               ; preds = %39, %37
  %47 = phi ptr [ %38, %37 ], [ %45, %39 ]
  %48 = tail call ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %47) #22
  %49 = icmp eq ptr %2, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  tail call void @set_mem_attributes(ptr noundef %48, ptr noundef nonnull %2, i32 noundef 1) #22
  %51 = load i32, ptr @flag_optimize_sibling_calls, align 4, !tbaa !201
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @set_mem_alias_set(ptr noundef %48, i32 noundef 0) #22
  br label %54

54:                                               ; preds = %50, %53, %46
  %55 = tail call ptr @emit_move_insn(ptr noundef %48, ptr noundef %1)
  br label %56

56:                                               ; preds = %54, %27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @expand_assignment(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !358 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15, !prof !359

13:                                               ; preds = %3
  %14 = tail call ptr @expand_expr_real(ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  br label %639

15:                                               ; preds = %3
  %16 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %639, !prof !360

18:                                               ; preds = %15
  %19 = load i64, ptr %0, align 8
  %20 = trunc i64 %19 to i16
  switch i16 %20, label %21 [
    i16 42, label %27
    i16 41, label %27
    i16 45, label %27
    i16 46, label %27
    i16 118, label %27
    i16 43, label %27
    i16 44, label %27
  ], !prof !361

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !197
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 15
  br i1 %26, label %27, label %419, !prof !362

27:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  store i32 0, ptr %9, align 4, !tbaa !201
  tail call void @push_temp_slots() #22
  %28 = call ptr @get_inner_reference(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 zeroext poison)
  %29 = tail call ptr @expand_expr_real(ptr noundef %28, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %30 = load ptr, ptr %7, align 8, !tbaa !186
  %31 = icmp eq ptr %30, null
  br i1 %31, label %107, label %32, !prof !363

32:                                               ; preds = %27
  %33 = load i32, ptr %29, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 43
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load i64, ptr %30, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 23
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4245, ptr noundef nonnull @.str.1) #22
  br label %41

41:                                               ; preds = %36, %40
  tail call void @expand_builtin_trap() #22
  %42 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %43 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %42) #22
  br label %44

44:                                               ; preds = %41, %32
  %45 = phi ptr [ %29, %32 ], [ %43, %41 ]
  %46 = tail call ptr @expand_expr_real(ptr noundef nonnull %30, ptr noundef null, i32 noundef 0, i32 noundef 2, ptr noundef null)
  %47 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !282
  %48 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %49 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !197
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.mem_attrs, ptr %50, i64 0, i32 5
  %54 = load i8, ptr %53, align 8, !tbaa !249
  br label %55

55:                                               ; preds = %44, %52
  %56 = phi i8 [ %54, %52 ], [ 0, %44 ]
  %57 = tail call i32 %47(i8 noundef zeroext %56) #22
  %58 = load i32, ptr %46, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = icmp eq i32 %60, %57
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = tail call ptr @convert_modes(i32 noundef %57, i32 noundef 0, ptr noundef nonnull %46, i32 noundef 0)
  br label %64

64:                                               ; preds = %62, %55
  %65 = phi ptr [ %63, %62 ], [ %46, %55 ]
  %66 = load i32, ptr %45, align 8
  %67 = and i32 %66, 16777215
  %68 = icmp eq i32 %67, 65579
  br i1 %68, label %69, label %100

69:                                               ; preds = %64
  %70 = load ptr, ptr %48, align 8, !tbaa !197
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 16711680
  %73 = icmp ne i32 %72, 0
  %74 = load i64, ptr %5, align 8
  %75 = icmp sgt i64 %74, 0
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %100

77:                                               ; preds = %69
  %78 = load i64, ptr %6, align 8, !tbaa !311
  %79 = srem i64 %78, %74
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %77
  %82 = load i32, ptr %4, align 4, !tbaa !201
  %83 = tail call i32 @get_mode_alignment(i32 noundef %82) #22
  %84 = zext i32 %83 to i64
  %85 = urem i64 %74, %84
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %81
  %88 = load ptr, ptr %49, align 8, !tbaa !197
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.mem_attrs, ptr %88, i64 0, i32 4
  %92 = load i32, ptr %91, align 4, !tbaa !294
  br label %93

93:                                               ; preds = %87, %90
  %94 = phi i32 [ %92, %90 ], [ 8, %87 ]
  %95 = tail call i32 @get_mode_alignment(i32 noundef %82) #22
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = sdiv i64 %78, 8
  %99 = tail call ptr @adjust_address_1(ptr noundef nonnull %45, i32 noundef %82, i64 noundef %98, i32 noundef 1, i32 noundef 1) #22
  store i64 0, ptr %6, align 8, !tbaa !311
  br label %100

100:                                              ; preds = %97, %93, %81, %77, %69, %64
  %101 = phi ptr [ %99, %97 ], [ %45, %93 ], [ %45, %81 ], [ %45, %77 ], [ %45, %69 ], [ %45, %64 ]
  %102 = tail call fastcc i64 @target_align(ptr noundef nonnull %0), !range !364
  %103 = lshr i64 %102, 3
  %104 = tail call i64 @highest_pow2_factor(ptr noundef nonnull %30)
  %105 = tail call i64 @llvm.umax.i64(i64 %104, i64 %103)
  %106 = tail call ptr @offset_address(ptr noundef %101, ptr noundef %65, i64 noundef %105) #22
  br label %107

107:                                              ; preds = %100, %27
  %108 = phi ptr [ %106, %100 ], [ %29, %27 ]
  %109 = load i32, ptr %108, align 8
  %110 = trunc i32 %109 to i16
  switch i16 %110, label %187 [
    i16 41, label %111
    i16 43, label %173
  ], !prof !365

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !197
  %114 = load i64, ptr %113, align 8
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 14
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = tail call i32 @vector_type_mode(ptr noundef nonnull %113) #22
  br label %124

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.tree_type, ptr %113, i64 0, i32 6
  %121 = load i32, ptr %120, align 4
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 255
  br label %124

124:                                              ; preds = %119, %117
  %125 = phi i32 [ %118, %117 ], [ %123, %119 ]
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !197
  %129 = icmp eq i8 %128, 10
  br i1 %129, label %148, label %130

130:                                              ; preds = %124
  %131 = load ptr, ptr %112, align 8, !tbaa !197
  %132 = load i64, ptr %131, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 14
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = tail call i32 @vector_type_mode(ptr noundef nonnull %131) #22
  br label %142

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.tree_type, ptr %131, i64 0, i32 6
  %139 = load i32, ptr %138, align 4
  %140 = lshr i32 %139, 16
  %141 = and i32 %140, 255
  br label %142

142:                                              ; preds = %137, %135
  %143 = phi i32 [ %136, %135 ], [ %141, %137 ]
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !197
  %147 = icmp eq i8 %146, 11
  br i1 %147, label %148, label %154

148:                                              ; preds = %142, %124
  %149 = load i64, ptr %6, align 8, !tbaa !311
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4280, ptr noundef nonnull @.str.1) #22
  br label %152

152:                                              ; preds = %148, %151
  %153 = tail call ptr @store_expr(ptr noundef %1, ptr noundef nonnull %108, i32 noundef 0, i8 noundef zeroext %2)
  br label %414

154:                                              ; preds = %142
  %155 = load i64, ptr %6, align 8, !tbaa !311
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %154
  %158 = load i32, ptr %4, align 4, !tbaa !201
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !197
  %162 = zext i8 %161 to i64
  %163 = shl nuw nsw i64 %162, 3
  %164 = icmp eq i64 %155, %163
  br i1 %164, label %166, label %165

165:                                              ; preds = %157
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4285, ptr noundef nonnull @.str.1) #22
  br label %166

166:                                              ; preds = %154, %157, %165
  %167 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %168 = icmp ne i64 %155, 0
  %169 = zext i1 %168 to i64
  %170 = getelementptr inbounds [1 x %union.rtunion_def], ptr %167, i64 0, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !197
  %172 = tail call ptr @store_expr(ptr noundef %1, ptr noundef %171, i32 noundef 0, i8 noundef zeroext %2)
  br label %414

173:                                              ; preds = %107
  %174 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %108) #22
  %175 = load i64, ptr %6, align 8, !tbaa !311
  tail call void @set_mem_attributes_minus_bitpos(ptr noundef %174, ptr noundef nonnull %0, i32 noundef 0, i64 noundef %175) #22
  %176 = load i32, ptr %9, align 4, !tbaa !201
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178, !prof !363

178:                                              ; preds = %173
  %179 = load i32, ptr %174, align 8
  %180 = or i32 %179, 134217728
  store i32 %180, ptr %174, align 8
  br label %181

181:                                              ; preds = %178, %173
  %182 = tail call zeroext i8 @component_uses_parent_alias_set(ptr noundef nonnull %0) #22
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %187, label %184, !prof !363

184:                                              ; preds = %181
  %185 = load i32, ptr %174, align 8
  %186 = or i32 %185, 16777216
  store i32 %186, ptr %174, align 8
  br label %187

187:                                              ; preds = %107, %181, %184
  %188 = phi ptr [ %174, %184 ], [ %174, %181 ], [ %108, %107 ]
  %189 = load i64, ptr %5, align 8, !tbaa !311
  %190 = load i64, ptr %6, align 8, !tbaa !311
  %191 = load i32, ptr %4, align 4, !tbaa !201
  %192 = load i32, ptr %188, align 8
  %193 = lshr i32 %192, 16
  %194 = and i32 %193, 255
  %195 = zext nneg i32 %194 to i64
  %196 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !197
  %198 = zext i8 %197 to i32
  %199 = shl nuw nsw i32 %198, 3
  %200 = icmp ne i32 %191, 0
  %201 = icmp ugt i64 %189, 31
  %202 = or i1 %201, %200
  %203 = icmp ugt i8 %197, 4
  %204 = select i1 %202, i1 true, i1 %203, !prof !363
  br i1 %204, label %406, label %205, !prof !363

205:                                              ; preds = %187
  %206 = load i64, ptr %0, align 8
  %207 = and i64 %206, 589824
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %406

209:                                              ; preds = %205
  %210 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #22
  %211 = load i64, ptr %210, align 8
  %212 = and i64 %211, 65535
  %213 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !201
  %215 = icmp eq i32 %214, 7
  br i1 %215, label %216, label %406

216:                                              ; preds = %209
  %217 = getelementptr inbounds %struct.tree_common, ptr %210, i64 0, i32 2
  %218 = load ptr, ptr %217, align 8, !tbaa !197
  %219 = load i64, ptr %218, align 8
  %220 = and i64 %219, 65535
  %221 = icmp eq i64 %220, 8
  br i1 %221, label %222, label %406

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.tree_exp, ptr %210, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !197
  %225 = getelementptr inbounds %struct.tree_exp, ptr %210, i64 1
  %226 = load ptr, ptr %225, align 8, !tbaa !197
  %227 = tail call ptr @tree_strip_nop_conversions(ptr noundef %224) #22
  %228 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef %227, i32 noundef 0) #22
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %406, label %230

230:                                              ; preds = %222
  %231 = load i32, ptr %188, align 8
  %232 = trunc i32 %231 to i16
  switch i16 %232, label %406 [
    i16 43, label %233
    i16 37, label %264
    i16 39, label %264
  ]

233:                                              ; preds = %230
  %234 = icmp eq i8 %197, 0
  %235 = load i32, ptr @word_mode, align 4
  %236 = select i1 %234, i32 %235, i32 %194
  %237 = trunc i64 %189 to i32
  %238 = trunc i64 %190 to i32
  %239 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 0, i32 1, i32 0, i32 0, i64 1
  %240 = load ptr, ptr %239, align 8, !tbaa !197
  %241 = icmp eq ptr %240, null
  br i1 %241, label %245, label %242

242:                                              ; preds = %233
  %243 = getelementptr inbounds %struct.mem_attrs, ptr %240, i64 0, i32 4
  %244 = load i32, ptr %243, align 4, !tbaa !294
  br label %245

245:                                              ; preds = %242, %233
  %246 = phi i32 [ %244, %242 ], [ 8, %233 ]
  %247 = tail call i32 @get_best_mode(i32 noundef %237, i32 noundef %238, i32 noundef %246, i32 noundef %236, i32 noundef 0) #22
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %260, label %249

249:                                              ; preds = %245
  %250 = zext i32 %247 to i64
  %251 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %250
  %252 = load i8, ptr %251, align 1, !tbaa !197
  %253 = zext i8 %252 to i32
  %254 = shl nuw nsw i32 %253, 3
  %255 = zext nneg i32 %254 to i64
  %256 = urem i64 %190, %255
  %257 = sub nuw i64 %190, %256
  %258 = lshr i64 %257, 3
  %259 = tail call ptr @adjust_address_1(ptr noundef nonnull %188, i32 noundef %247, i64 noundef %258, i32 noundef 1, i32 noundef 1) #22
  br label %260

260:                                              ; preds = %249, %245
  %261 = phi i32 [ %254, %249 ], [ %199, %245 ]
  %262 = phi ptr [ %259, %249 ], [ %188, %245 ]
  %263 = phi i64 [ %256, %249 ], [ %190, %245 ]
  br i1 %248, label %406, label %264

264:                                              ; preds = %230, %260, %230
  %265 = phi i32 [ %247, %260 ], [ %194, %230 ], [ %194, %230 ]
  %266 = phi i32 [ %261, %260 ], [ %199, %230 ], [ %199, %230 ]
  %267 = phi ptr [ %262, %260 ], [ %188, %230 ], [ %188, %230 ]
  %268 = phi i64 [ %263, %260 ], [ %190, %230 ], [ %190, %230 ]
  %269 = zext nneg i32 %266 to i64
  %270 = icmp ult i64 %189, %269
  br i1 %270, label %271, label %406

271:                                              ; preds = %264
  %272 = add i64 %268, %189
  %273 = icmp ugt i64 %272, %269
  br i1 %273, label %406, label %274

274:                                              ; preds = %271
  %275 = load i64, ptr %210, align 8
  %276 = trunc i64 %275 to i16
  switch i16 %276, label %406 [
    i16 63, label %277
    i16 64, label %277
    i16 87, label %332
    i16 88, label %332
  ]

277:                                              ; preds = %274, %274
  %278 = icmp eq i64 %272, %269
  br i1 %278, label %285, label %279

279:                                              ; preds = %277
  %280 = icmp eq i64 %189, 1
  br i1 %280, label %281, label %406

281:                                              ; preds = %279
  %282 = load i64, ptr %226, align 8
  %283 = and i64 %282, 65535
  %284 = icmp eq i64 %283, 23
  br i1 %284, label %285, label %406

285:                                              ; preds = %281, %277
  %286 = tail call ptr @expand_expr_real(ptr noundef %226, ptr noundef null, i32 noundef %265, i32 noundef 0, ptr noundef null)
  %287 = getelementptr inbounds %struct.tree_common, ptr %226, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !197
  %289 = load i64, ptr %288, align 8
  %290 = and i64 %289, 65535
  %291 = icmp eq i64 %290, 14
  br i1 %291, label %292, label %294

292:                                              ; preds = %285
  %293 = tail call i32 @vector_type_mode(ptr noundef nonnull %288) #22
  br label %299

294:                                              ; preds = %285
  %295 = getelementptr inbounds %struct.tree_type, ptr %288, i64 0, i32 6
  %296 = load i32, ptr %295, align 4
  %297 = lshr i32 %296, 16
  %298 = and i32 %297, 255
  br label %299

299:                                              ; preds = %294, %292
  %300 = phi i32 [ %293, %292 ], [ %298, %294 ]
  %301 = load ptr, ptr %287, align 8, !tbaa !197
  %302 = load i64, ptr %301, align 8
  %303 = trunc i64 %302 to i32
  %304 = lshr i32 %303, 21
  %305 = and i32 %304, 1
  %306 = tail call ptr @convert_modes(i32 noundef %265, i32 noundef %300, ptr noundef %286, i32 noundef %305)
  %307 = load i32, ptr %267, align 8
  %308 = and i32 %307, 65535
  %309 = icmp eq i32 %308, 43
  br i1 %309, label %310, label %312

310:                                              ; preds = %299
  %311 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %267) #22
  tail call void @set_mem_alias_set(ptr noundef %311, i32 noundef 0) #22
  tail call void @set_mem_expr(ptr noundef %311, ptr noundef null) #22
  br label %312

312:                                              ; preds = %310, %299
  %313 = phi ptr [ %311, %310 ], [ %267, %299 ]
  %314 = load i64, ptr %210, align 8
  %315 = and i64 %314, 65535
  %316 = icmp eq i64 %315, 63
  %317 = select i1 %316, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14)
  %318 = icmp ne i64 %189, 1
  %319 = or i1 %318, %278
  br i1 %319, label %323, label %320

320:                                              ; preds = %312
  %321 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !186
  %322 = tail call ptr @expand_and(i32 noundef %265, ptr noundef %306, ptr noundef %321, ptr noundef null) #22
  br label %323

323:                                              ; preds = %320, %312
  %324 = phi ptr [ %322, %320 ], [ %306, %312 ]
  %325 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), %320 ], [ %317, %312 ]
  %326 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %268) #22
  %327 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %265, ptr noundef %324, ptr noundef %326, ptr noundef null, i32 noundef 1) #22
  %328 = tail call ptr @expand_binop(i32 noundef %265, ptr noundef %325, ptr noundef %313, ptr noundef %327, ptr noundef %313, i32 noundef 1, i32 noundef 2) #22
  %329 = icmp eq ptr %328, %313
  br i1 %329, label %414, label %330

330:                                              ; preds = %323
  %331 = tail call ptr @emit_move_insn(ptr noundef %313, ptr noundef %328)
  br label %414

332:                                              ; preds = %274, %274
  %333 = load i64, ptr %226, align 8
  %334 = and i64 %333, 65535
  %335 = icmp eq i64 %334, 23
  br i1 %335, label %336, label %406

336:                                              ; preds = %332
  %337 = load i32, ptr %267, align 8
  %338 = lshr i32 %337, 16
  %339 = and i32 %338, 255
  %340 = tail call ptr @expand_expr_real(ptr noundef nonnull %226, ptr noundef null, i32 noundef %339, i32 noundef 0, ptr noundef null)
  %341 = load i32, ptr %267, align 8
  %342 = lshr i32 %341, 16
  %343 = and i32 %342, 255
  %344 = getelementptr inbounds %struct.tree_common, ptr %226, i64 0, i32 2
  %345 = load ptr, ptr %344, align 8, !tbaa !197
  %346 = load i64, ptr %345, align 8
  %347 = and i64 %346, 65535
  %348 = icmp eq i64 %347, 14
  br i1 %348, label %349, label %351

349:                                              ; preds = %336
  %350 = tail call i32 @vector_type_mode(ptr noundef nonnull %345) #22
  br label %356

351:                                              ; preds = %336
  %352 = getelementptr inbounds %struct.tree_type, ptr %345, i64 0, i32 6
  %353 = load i32, ptr %352, align 4
  %354 = lshr i32 %353, 16
  %355 = and i32 %354, 255
  br label %356

356:                                              ; preds = %351, %349
  %357 = phi i32 [ %350, %349 ], [ %355, %351 ]
  %358 = load ptr, ptr %344, align 8, !tbaa !197
  %359 = load i64, ptr %358, align 8
  %360 = trunc i64 %359 to i32
  %361 = lshr i32 %360, 21
  %362 = and i32 %361, 1
  %363 = tail call ptr @convert_modes(i32 noundef %343, i32 noundef %357, ptr noundef %340, i32 noundef %362)
  %364 = load i32, ptr %267, align 8
  %365 = and i32 %364, 65535
  %366 = icmp eq i32 %365, 43
  br i1 %366, label %367, label %369

367:                                              ; preds = %356
  %368 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %267) #22
  tail call void @set_mem_alias_set(ptr noundef %368, i32 noundef 0) #22
  tail call void @set_mem_expr(ptr noundef %368, ptr noundef null) #22
  br label %369

369:                                              ; preds = %367, %356
  %370 = phi ptr [ %368, %367 ], [ %267, %356 ]
  %371 = load i64, ptr %210, align 8
  %372 = and i64 %371, 65535
  %373 = icmp eq i64 %372, 87
  %374 = select i1 %373, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43)
  %375 = load i32, ptr %370, align 8
  %376 = lshr i32 %375, 16
  %377 = and i32 %376, 255
  %378 = zext nneg i32 %377 to i64
  %379 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !197
  %381 = zext i8 %380 to i64
  %382 = shl nuw nsw i64 %381, 3
  %383 = icmp eq i64 %272, %382
  br i1 %383, label %392, label %384

384:                                              ; preds = %369
  %385 = shl nsw i64 -1, %189
  %386 = xor i64 %385, -1
  %387 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %386) #22
  %388 = load i32, ptr %370, align 8
  %389 = lshr i32 %388, 16
  %390 = and i32 %389, 255
  %391 = tail call ptr @expand_and(i32 noundef %390, ptr noundef %363, ptr noundef %387, ptr noundef null) #22
  br label %392

392:                                              ; preds = %384, %369
  %393 = phi ptr [ %391, %384 ], [ %363, %369 ]
  %394 = load i32, ptr %370, align 8
  %395 = lshr i32 %394, 16
  %396 = and i32 %395, 255
  %397 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %268) #22
  %398 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %396, ptr noundef %393, ptr noundef %397, ptr noundef null, i32 noundef 1) #22
  %399 = load i32, ptr %370, align 8
  %400 = lshr i32 %399, 16
  %401 = and i32 %400, 255
  %402 = tail call ptr @expand_binop(i32 noundef %401, ptr noundef nonnull %374, ptr noundef nonnull %370, ptr noundef %398, ptr noundef nonnull %370, i32 noundef 1, i32 noundef 2) #22
  %403 = icmp eq ptr %402, %370
  br i1 %403, label %414, label %404

404:                                              ; preds = %392
  %405 = tail call ptr @emit_move_insn(ptr noundef nonnull %370, ptr noundef %402)
  br label %414

406:                                              ; preds = %332, %281, %260, %230, %279, %274, %271, %264, %222, %209, %216, %187, %205
  %407 = load i64, ptr %5, align 8, !tbaa !311
  %408 = load i64, ptr %6, align 8, !tbaa !311
  %409 = load i32, ptr %4, align 4, !tbaa !201
  %410 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %411 = load ptr, ptr %410, align 8, !tbaa !197
  %412 = tail call i32 @get_alias_set(ptr noundef nonnull %0) #22
  %413 = tail call fastcc ptr @store_field(ptr noundef nonnull %188, i64 noundef %407, i64 noundef %408, i32 noundef %409, ptr noundef %1, ptr noundef %411, i32 noundef %412, i8 noundef zeroext %2)
  br label %414

414:                                              ; preds = %404, %392, %330, %323, %406, %152, %166
  %415 = phi ptr [ null, %152 ], [ null, %166 ], [ %413, %406 ], [ null, %323 ], [ null, %330 ], [ null, %392 ], [ null, %404 ]
  %416 = icmp eq ptr %415, null
  br i1 %416, label %418, label %417, !prof !363

417:                                              ; preds = %414
  tail call void @preserve_temp_slots(ptr noundef nonnull %415) #22
  br label %418

418:                                              ; preds = %417, %414
  tail call void @free_temp_slots() #22
  tail call void @pop_temp_slots() #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  br label %639

419:                                              ; preds = %21
  %420 = and i64 %19, 65535
  %421 = icmp eq i64 %420, 49
  br i1 %421, label %422, label %482, !prof !362

422:                                              ; preds = %419
  %423 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %424 = load ptr, ptr %423, align 8, !tbaa !197
  %425 = getelementptr inbounds %struct.tree_common, ptr %424, i64 0, i32 2
  %426 = load ptr, ptr %425, align 8, !tbaa !197
  %427 = load i64, ptr %426, align 8
  %428 = trunc i64 %427 to i16
  switch i16 %428, label %435 [
    i16 10, label %429
    i16 12, label %429
  ]

429:                                              ; preds = %422, %422
  %430 = getelementptr inbounds %struct.tree_common, ptr %426, i64 0, i32 2
  %431 = load ptr, ptr %430, align 8, !tbaa !197
  %432 = load i64, ptr %431, align 8
  %433 = lshr i64 %432, 56
  %434 = trunc i64 %433 to i8
  br label %435

435:                                              ; preds = %422, %429
  %436 = phi i8 [ %434, %429 ], [ 0, %422 ]
  %437 = tail call ptr @expand_expr_real(ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %438 = tail call ptr @force_not_mem(ptr noundef %437) #22
  %439 = load ptr, ptr %22, align 8, !tbaa !197
  %440 = load i64, ptr %439, align 8
  %441 = and i64 %440, 65535
  %442 = icmp eq i64 %441, 14
  br i1 %442, label %443, label %445

443:                                              ; preds = %435
  %444 = tail call i32 @vector_type_mode(ptr noundef nonnull %439) #22
  br label %450

445:                                              ; preds = %435
  %446 = getelementptr inbounds %struct.tree_type, ptr %439, i64 0, i32 6
  %447 = load i32, ptr %446, align 4
  %448 = lshr i32 %447, 16
  %449 = and i32 %448, 255
  br label %450

450:                                              ; preds = %445, %443
  %451 = phi i32 [ %444, %443 ], [ %449, %445 ]
  %452 = load ptr, ptr %423, align 8, !tbaa !197
  %453 = tail call ptr @expand_expr_real(ptr noundef %452, ptr noundef null, i32 noundef 0, i32 noundef 2, ptr noundef null)
  %454 = tail call ptr @memory_address_addr_space(i32 noundef %451, ptr noundef %453, i8 noundef zeroext %436) #22
  %455 = tail call ptr @gen_rtx_MEM(i32 noundef %451, ptr noundef %454) #22
  tail call void @set_mem_attributes(ptr noundef %455, ptr noundef nonnull %0, i32 noundef 0) #22
  tail call void @set_mem_addr_space(ptr noundef %455, i8 noundef zeroext %436) #22
  %456 = zext i32 %451 to i64
  %457 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 %456
  %458 = load i32, ptr %457, align 4, !tbaa !235
  %459 = icmp eq i32 %458, 2956
  br i1 %459, label %460, label %461

460:                                              ; preds = %450
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4347, ptr noundef nonnull @.str.1) #22
  br label %461

461:                                              ; preds = %450, %460
  %462 = zext i32 %458 to i64
  %463 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %462, i32 3
  %464 = load ptr, ptr %463, align 8, !tbaa !217
  %465 = getelementptr inbounds %struct.insn_operand_data, ptr %464, i64 1
  %466 = getelementptr inbounds %struct.insn_operand_data, ptr %464, i64 1, i32 2
  %467 = load i16, ptr %466, align 8
  %468 = zext i16 %467 to i32
  %469 = load ptr, ptr %465, align 8, !tbaa !219
  %470 = tail call i32 %469(ptr noundef %438, i32 noundef %468) #22
  %471 = icmp eq i32 %470, 0
  %472 = icmp ne i16 %467, 0
  %473 = and i1 %472, %471
  br i1 %473, label %474, label %476

474:                                              ; preds = %461
  %475 = tail call ptr @copy_to_mode_reg(i32 noundef %468, ptr noundef %438) #22
  br label %476

476:                                              ; preds = %474, %461
  %477 = phi ptr [ %475, %474 ], [ %438, %461 ]
  %478 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %462, i32 2
  %479 = load ptr, ptr %478, align 8, !tbaa !257
  %480 = tail call ptr (ptr, ...) %479(ptr noundef %455, ptr noundef %477) #22
  %481 = tail call ptr @emit_insn(ptr noundef %480) #22
  br label %639

482:                                              ; preds = %419
  %483 = load i64, ptr %1, align 8
  %484 = and i64 %483, 65535
  %485 = icmp eq i64 %484, 59
  br i1 %485, label %486, label %550, !prof !366

486:                                              ; preds = %482
  %487 = tail call i32 @aggregate_value_p(ptr noundef nonnull %1, ptr noundef nonnull %1) #22
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %550, !prof !367

489:                                              ; preds = %486
  %490 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %491 = load ptr, ptr %490, align 8, !tbaa !197
  %492 = getelementptr inbounds %struct.tree_type, ptr %491, i64 0, i32 2
  %493 = load ptr, ptr %492, align 8, !tbaa !197
  %494 = icmp eq ptr %493, null
  br i1 %494, label %550, label %495, !prof !368

495:                                              ; preds = %489
  %496 = load i64, ptr %493, align 8
  %497 = and i64 %496, 65535
  %498 = icmp eq i64 %497, 23
  br i1 %498, label %499, label %550, !prof !367

499:                                              ; preds = %495
  %500 = load i64, ptr %0, align 8
  %501 = trunc i64 %500 to i16
  switch i16 %501, label %513 [
    i16 32, label %502
    i16 34, label %502
  ], !prof !369

502:                                              ; preds = %499, %499
  %503 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %504 = load ptr, ptr %503, align 8, !tbaa !197
  %505 = icmp eq ptr %504, null
  br i1 %505, label %506, label %508

506:                                              ; preds = %502
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #22
  %507 = load ptr, ptr %503, align 8, !tbaa !197
  br label %508

508:                                              ; preds = %502, %506
  %509 = phi ptr [ %507, %506 ], [ %504, %502 ]
  %510 = load i32, ptr %509, align 8
  %511 = and i32 %510, 65535
  %512 = icmp eq i32 %511, 37
  br i1 %512, label %550, label %513

513:                                              ; preds = %508, %499
  %514 = load i64, ptr %0, align 8
  %515 = and i64 %514, 65535
  %516 = icmp eq i64 %515, 141
  br i1 %516, label %550, label %517, !prof !367

517:                                              ; preds = %513
  tail call void @push_temp_slots() #22
  %518 = tail call ptr @expand_expr_real(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %519 = tail call ptr @expand_expr_real(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef 5, ptr noundef null)
  %520 = load i32, ptr %519, align 8
  %521 = and i32 %520, 65535
  %522 = icmp eq i32 %521, 15
  br i1 %522, label %523, label %527

523:                                              ; preds = %517
  %524 = load ptr, ptr %490, align 8, !tbaa !197
  %525 = tail call i64 @int_size_in_bytes(ptr noundef %524) #22
  %526 = trunc i64 %525 to i32
  tail call void @emit_group_load(ptr noundef nonnull %519, ptr noundef %518, ptr poison, i32 noundef %526)
  br label %549

527:                                              ; preds = %517
  %528 = and i32 %520, 16711680
  %529 = icmp eq i32 %528, 65536
  br i1 %529, label %530, label %533

530:                                              ; preds = %527
  %531 = tail call ptr @expr_size(ptr noundef nonnull %1) #22
  %532 = tail call ptr @emit_block_move_hints(ptr noundef nonnull %519, ptr noundef %518, ptr noundef %531, i32 noundef 0, i32 noundef 0, i64 noundef -1)
  br label %549

533:                                              ; preds = %527
  %534 = load ptr, ptr %22, align 8, !tbaa !197
  %535 = load i64, ptr %534, align 8
  %536 = trunc i64 %535 to i16
  switch i16 %536, label %546 [
    i16 10, label %537
    i16 12, label %537
  ]

537:                                              ; preds = %533, %533
  %538 = lshr i32 %520, 16
  %539 = and i32 %538, 255
  %540 = getelementptr inbounds %struct.tree_common, ptr %534, i64 0, i32 2
  %541 = load ptr, ptr %540, align 8, !tbaa !197
  %542 = load i64, ptr %541, align 8
  %543 = lshr i64 %542, 56
  %544 = trunc i64 %543 to i8
  %545 = tail call ptr @convert_memory_address_addr_space(i32 noundef %539, ptr noundef %518, i8 noundef zeroext %544) #22
  br label %546

546:                                              ; preds = %533, %537
  %547 = phi ptr [ %545, %537 ], [ %518, %533 ]
  %548 = tail call ptr @emit_move_insn(ptr noundef nonnull %519, ptr noundef %547)
  br label %549

549:                                              ; preds = %530, %546, %523
  tail call void @preserve_temp_slots(ptr noundef nonnull %519) #22
  tail call void @free_temp_slots() #22
  tail call void @pop_temp_slots() #22
  br label %639

550:                                              ; preds = %508, %482, %486, %489, %495, %513
  %551 = tail call ptr @expand_expr_real(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef 5, ptr noundef null)
  %552 = load i64, ptr %0, align 8
  %553 = and i64 %552, 65535
  %554 = icmp eq i64 %553, 36
  br i1 %554, label %555, label %637, !prof !362

555:                                              ; preds = %550
  %556 = load i32, ptr %551, align 8
  %557 = trunc i32 %556 to i16
  switch i16 %557, label %574 [
    i16 37, label %558
    i16 15, label %558
  ]

558:                                              ; preds = %555, %555
  tail call void @push_temp_slots() #22
  %559 = load i32, ptr %551, align 8
  %560 = lshr i32 %559, 16
  %561 = and i32 %560, 255
  %562 = tail call ptr @expand_expr_real(ptr noundef nonnull %1, ptr noundef null, i32 noundef %561, i32 noundef 0, ptr noundef null)
  %563 = load i32, ptr %551, align 8
  %564 = and i32 %563, 65535
  %565 = icmp eq i32 %564, 15
  br i1 %565, label %566, label %571

566:                                              ; preds = %558
  %567 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %568 = load ptr, ptr %567, align 8, !tbaa !197
  %569 = tail call i64 @int_size_in_bytes(ptr noundef %568) #22
  %570 = trunc i64 %569 to i32
  tail call void @emit_group_load(ptr noundef nonnull %551, ptr noundef %562, ptr poison, i32 noundef %570)
  br label %573

571:                                              ; preds = %558
  %572 = tail call ptr @emit_move_insn(ptr noundef nonnull %551, ptr noundef %562)
  br label %573

573:                                              ; preds = %571, %566
  tail call void @preserve_temp_slots(ptr noundef nonnull %551) #22
  tail call void @free_temp_slots() #22
  tail call void @pop_temp_slots() #22
  br label %639

574:                                              ; preds = %555
  br i1 %554, label %575, label %637, !prof !362

575:                                              ; preds = %574
  %576 = load i64, ptr %1, align 8
  %577 = and i64 %576, 65535
  %578 = icmp eq i64 %577, 47
  br i1 %578, label %579, label %637

579:                                              ; preds = %575
  %580 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %581 = load ptr, ptr %580, align 8, !tbaa !197
  %582 = getelementptr inbounds %struct.tree_common, ptr %581, i64 0, i32 2
  %583 = load ptr, ptr %582, align 8, !tbaa !197
  %584 = getelementptr inbounds %struct.tree_common, ptr %583, i64 0, i32 2
  %585 = load ptr, ptr %584, align 8, !tbaa !197
  %586 = load i64, ptr %585, align 8
  %587 = icmp ult i64 %586, 72057594037927936
  br i1 %587, label %588, label %637

588:                                              ; preds = %579
  %589 = tail call zeroext i8 @refs_may_alias_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #22
  %590 = icmp eq i8 %589, 0
  br i1 %590, label %637, label %591

591:                                              ; preds = %588
  %592 = load ptr, ptr @cfun, align 8, !tbaa !186
  %593 = getelementptr inbounds %struct.function, ptr %592, i64 0, i32 20
  %594 = load i32, ptr %593, align 8
  %595 = and i32 %594, 201326592
  %596 = icmp eq i32 %595, 67108864
  br i1 %596, label %597, label %637

597:                                              ; preds = %591
  tail call void @push_temp_slots() #22
  %598 = tail call ptr @expr_size(ptr noundef nonnull %1) #22
  %599 = tail call ptr @expand_expr_real(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %600 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 2), align 16, !tbaa !186
  %601 = getelementptr inbounds %struct.rtx_def, ptr %551, i64 0, i32 1
  %602 = load ptr, ptr %601, align 8, !tbaa !197
  %603 = getelementptr inbounds %struct.rtx_def, ptr %599, i64 0, i32 1
  %604 = load ptr, ptr %603, align 8, !tbaa !197
  %605 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %606 = load i64, ptr %605, align 8
  %607 = and i64 %606, 65535
  %608 = icmp eq i64 %607, 14
  br i1 %608, label %609, label %611

609:                                              ; preds = %597
  %610 = tail call i32 @vector_type_mode(ptr noundef nonnull %605) #22
  br label %616

611:                                              ; preds = %597
  %612 = getelementptr inbounds %struct.tree_type, ptr %605, i64 0, i32 6
  %613 = load i32, ptr %612, align 4
  %614 = lshr i32 %613, 16
  %615 = and i32 %614, 255
  br label %616

616:                                              ; preds = %611, %609
  %617 = phi i32 [ %610, %609 ], [ %615, %611 ]
  %618 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %619 = load i64, ptr %618, align 8
  %620 = trunc i64 %619 to i32
  %621 = lshr i32 %620, 21
  %622 = and i32 %621, 1
  %623 = tail call ptr @convert_modes(i32 noundef %617, i32 noundef 0, ptr noundef %598, i32 noundef %622)
  %624 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %625 = load i64, ptr %624, align 8
  %626 = and i64 %625, 65535
  %627 = icmp eq i64 %626, 14
  br i1 %627, label %628, label %630

628:                                              ; preds = %616
  %629 = tail call i32 @vector_type_mode(ptr noundef nonnull %624) #22
  br label %635

630:                                              ; preds = %616
  %631 = getelementptr inbounds %struct.tree_type, ptr %624, i64 0, i32 6
  %632 = load i32, ptr %631, align 4
  %633 = lshr i32 %632, 16
  %634 = and i32 %633, 255
  br label %635

635:                                              ; preds = %630, %628
  %636 = phi i32 [ %629, %628 ], [ %634, %630 ]
  tail call void (ptr, i32, i32, i32, ...) @emit_library_call(ptr noundef %600, i32 noundef 0, i32 noundef 0, i32 noundef 3, ptr noundef %602, i32 noundef 16, ptr noundef %604, i32 noundef 16, ptr noundef %623, i32 noundef %636) #22
  tail call void @preserve_temp_slots(ptr noundef nonnull %551) #22
  tail call void @free_temp_slots() #22
  tail call void @pop_temp_slots() #22
  br label %639

637:                                              ; preds = %550, %591, %588, %579, %575, %574
  tail call void @push_temp_slots() #22
  %638 = tail call ptr @store_expr(ptr noundef nonnull %1, ptr noundef %551, i32 noundef 0, i8 noundef zeroext %2)
  tail call void @preserve_temp_slots(ptr noundef null) #22
  tail call void @free_temp_slots() #22
  tail call void @pop_temp_slots() #22
  br label %639

639:                                              ; preds = %15, %637, %635, %573, %549, %476, %418, %13
  ret void
}

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @push_temp_slots() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @get_inner_reference(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, i8 zeroext %7) local_unnamed_addr #12 !prof !370 {
  %9 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !186
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !186
  store i64 -1, ptr %1, align 8, !tbaa !311
  %11 = load i64, ptr %0, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %74 [
    i16 41, label %13
    i16 42, label %31
  ], !prof !371

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !197
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !197
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 33554432
  %21 = icmp eq i64 %20, 0
  %22 = trunc i64 %19 to i32
  %23 = and i32 %22, 255
  %24 = and i64 %19, 33554687
  %25 = icmp eq i64 %24, 33554433
  %26 = select i1 %21, i32 %23, i32 0, !prof !372
  %27 = load i64, ptr %15, align 8
  %28 = trunc i64 %27 to i32
  %29 = lshr i32 %28, 21
  %30 = and i32 %29, 1
  store i32 %30, ptr %5, align 4, !tbaa !201
  br label %105

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %33 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !197
  %35 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !197
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, 65535
  %40 = add nsw i32 %39, -9
  %41 = icmp ult i32 %40, -3
  %42 = and i64 %37, 2097152
  %43 = icmp ne i64 %42, 0
  %44 = select i1 %41, i1 true, i1 %43
  %45 = zext i1 %44 to i32
  store i32 %45, ptr %5, align 4, !tbaa !201
  %46 = load ptr, ptr %32, align 8, !tbaa !197
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !197
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 14
  br i1 %51, label %52, label %105

52:                                               ; preds = %31
  %53 = load ptr, ptr %35, align 8, !tbaa !197
  %54 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !197
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %57, label %105

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !197
  %60 = tail call i32 @tree_int_cst_equal(ptr noundef %34, ptr noundef %59) #22
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %105, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %35, align 8, !tbaa !197
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 14
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = tail call i32 @vector_type_mode(ptr noundef nonnull %63) #22
  br label %105

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.tree_type, ptr %63, i64 0, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  br label %105

74:                                               ; preds = %8
  %75 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !197
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 14
  br i1 %79, label %80, label %82, !prof !373

80:                                               ; preds = %74
  %81 = tail call i32 @vector_type_mode(ptr noundef nonnull %76) #22
  br label %87

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.tree_type, ptr %76, i64 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = lshr i32 %84, 16
  %86 = and i32 %85, 255
  br label %87

87:                                               ; preds = %82, %80
  %88 = phi i32 [ %81, %80 ], [ %86, %82 ]
  %89 = load ptr, ptr %75, align 8, !tbaa !197
  %90 = load i64, ptr %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = lshr i32 %91, 21
  %93 = and i32 %92, 1
  store i32 %93, ptr %5, align 4, !tbaa !201
  %94 = icmp eq i32 %88, 1
  br i1 %94, label %95, label %99, !prof !373

95:                                               ; preds = %87
  %96 = load ptr, ptr %75, align 8, !tbaa !197
  %97 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !197
  br label %105

99:                                               ; preds = %87
  %100 = zext i32 %88 to i64
  %101 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !197
  %103 = zext i8 %102 to i64
  %104 = shl nuw nsw i64 %103, 3
  store i64 %104, ptr %1, align 8, !tbaa !311
  br label %105

105:                                              ; preds = %67, %69, %57, %52, %31, %99, %95, %13
  %106 = phi i1 [ %25, %13 ], [ false, %57 ], [ false, %52 ], [ false, %31 ], [ false, %95 ], [ false, %99 ], [ false, %69 ], [ false, %67 ]
  %107 = phi i32 [ %26, %13 ], [ 0, %57 ], [ 0, %52 ], [ 0, %31 ], [ 1, %95 ], [ %88, %99 ], [ %73, %69 ], [ %68, %67 ]
  %108 = phi ptr [ %17, %13 ], [ %34, %57 ], [ %34, %52 ], [ %34, %31 ], [ %98, %95 ], [ null, %99 ], [ %34, %69 ], [ %34, %67 ]
  %109 = icmp eq ptr %108, null
  br i1 %109, label %118, label %110, !prof !374

110:                                              ; preds = %105
  %111 = tail call i32 @host_integerp(ptr noundef nonnull %108, i32 noundef 1) #22
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113, !prof !375

113:                                              ; preds = %110
  %114 = tail call i64 @tree_low_cst(ptr noundef nonnull %108, i32 noundef 1) #22
  br label %115

115:                                              ; preds = %110, %113
  %116 = phi i64 [ %114, %113 ], [ -1, %110 ]
  %117 = phi i32 [ %107, %113 ], [ 1, %110 ]
  store i64 %116, ptr %1, align 8, !tbaa !311
  br label %118

118:                                              ; preds = %115, %105
  %119 = phi i32 [ %107, %105 ], [ %117, %115 ]
  br label %120

120:                                              ; preds = %280, %118
  %121 = phi ptr [ %10, %118 ], [ %274, %280 ]
  %122 = phi ptr [ %9, %118 ], [ %275, %280 ]
  %123 = phi ptr [ %0, %118 ], [ %282, %280 ]
  %124 = load i64, ptr %123, align 8
  %125 = trunc i64 %124 to i16
  switch i16 %125, label %283 [
    i16 42, label %126
    i16 41, label %130
    i16 45, label %181
    i16 46, label %181
    i16 43, label %273
    i16 44, label %269
    i16 118, label %273
  ], !prof !376

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.tree_exp, ptr %123, i64 1, i32 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !197
  %129 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %121, ptr noundef %128) #22
  br label %273

130:                                              ; preds = %120
  %131 = getelementptr inbounds %struct.tree_exp, ptr %123, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !197
  %133 = getelementptr inbounds %struct.tree_exp, ptr %123, i64 1, i32 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !197
  %135 = and i64 %124, 65535
  %136 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !201
  %138 = add i32 %137, -4
  %139 = icmp ult i32 %138, 7
  br i1 %139, label %140, label %143, !prof !377

140:                                              ; preds = %130
  %141 = getelementptr inbounds %struct.tree_exp, ptr %123, i64 0, i32 1
  %142 = load i32, ptr %141, align 8, !tbaa !197
  br label %143

143:                                              ; preds = %140, %130
  %144 = phi i32 [ %142, %140 ], [ 0, %130 ]
  %145 = icmp eq ptr %134, null
  br i1 %145, label %163, label %146, !prof !377

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.tree_common, ptr %134, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !197
  %149 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %150 = icmp eq ptr %148, %149
  br i1 %150, label %153, label %151

151:                                              ; preds = %146
  %152 = tail call ptr @fold_convert_loc(i32 noundef %144, ptr noundef %149, ptr noundef nonnull %134) #22
  br label %153

153:                                              ; preds = %151, %146
  %154 = phi ptr [ %152, %151 ], [ %134, %146 ]
  %155 = getelementptr inbounds %struct.tree_decl_common, ptr %132, i64 0, i32 2
  %156 = load i64, ptr %155, align 8
  %157 = lshr i64 %156, 32
  %158 = and i64 %157, 255
  %159 = shl nuw i64 1, %158
  %160 = lshr i64 %159, 3
  %161 = tail call ptr @size_int_kind(i64 noundef %160, i32 noundef 0) #22
  %162 = tail call ptr @size_binop_loc(i32 noundef %144, i32 noundef 65, ptr noundef %154, ptr noundef %161) #22
  br label %173

163:                                              ; preds = %143
  %164 = getelementptr inbounds %struct.tree_field_decl, ptr %132, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !197
  %166 = icmp eq ptr %165, null
  br i1 %166, label %173, label %167, !prof !378

167:                                              ; preds = %163
  %168 = load i64, ptr %165, align 8
  %169 = and i64 %168, 131072
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %173, !prof !378

171:                                              ; preds = %167
  %172 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %165, ptr noundef nonnull %123) #22
  br label %173

173:                                              ; preds = %153, %163, %167, %171
  %174 = phi ptr [ %162, %153 ], [ %172, %171 ], [ %165, %167 ], [ %165, %163 ]
  %175 = icmp eq ptr %174, null
  br i1 %175, label %273, label %176, !prof !379

176:                                              ; preds = %173
  %177 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %122, ptr noundef nonnull %174) #22
  %178 = getelementptr inbounds %struct.tree_field_decl, ptr %132, i64 0, i32 4
  %179 = load ptr, ptr %178, align 8, !tbaa !197
  %180 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %121, ptr noundef %179) #22
  br label %273

181:                                              ; preds = %120, %120
  %182 = getelementptr inbounds %struct.tree_exp, ptr %123, i64 1
  %183 = load ptr, ptr %182, align 8, !tbaa !197
  %184 = getelementptr inbounds %struct.tree_exp, ptr %123, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !197
  %186 = getelementptr inbounds %struct.tree_common, ptr %185, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !197
  %188 = getelementptr inbounds %struct.tree_type, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !197
  %190 = getelementptr inbounds %struct.tree_exp, ptr %123, i64 1, i32 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !197
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %209, !prof !380

193:                                              ; preds = %181
  %194 = icmp eq ptr %189, null
  br i1 %194, label %205, label %195, !prof !381

195:                                              ; preds = %193
  %196 = getelementptr inbounds %struct.tree_type, ptr %189, i64 0, i32 13
  %197 = load ptr, ptr %196, align 8, !tbaa !197
  %198 = icmp eq ptr %197, null
  br i1 %198, label %205, label %199, !prof !381

199:                                              ; preds = %195
  %200 = load i64, ptr %197, align 8
  %201 = and i64 %200, 131072
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %209, !prof !381

203:                                              ; preds = %199
  %204 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %197, ptr noundef nonnull %123) #22
  br label %209

205:                                              ; preds = %195, %193
  %206 = getelementptr inbounds %struct.tree_common, ptr %183, i64 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !197
  %208 = tail call ptr @build_int_cst(ptr noundef %207, i64 noundef 0) #22
  br label %209

209:                                              ; preds = %181, %199, %203, %205
  %210 = phi ptr [ %208, %205 ], [ %191, %181 ], [ %204, %203 ], [ %197, %199 ]
  %211 = getelementptr inbounds %struct.tree_exp, ptr %123, i64 1, i32 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !197
  %213 = load ptr, ptr %184, align 8, !tbaa !197
  %214 = getelementptr inbounds %struct.tree_common, ptr %213, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !197
  %216 = getelementptr inbounds %struct.tree_common, ptr %215, i64 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !197
  %218 = load i64, ptr %123, align 8
  %219 = and i64 %218, 65535
  %220 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !201
  %222 = add i32 %221, -4
  %223 = icmp ult i32 %222, 7
  br i1 %223, label %224, label %227, !prof !382

224:                                              ; preds = %209
  %225 = getelementptr inbounds %struct.tree_exp, ptr %123, i64 0, i32 1
  %226 = load i32, ptr %225, align 8, !tbaa !197
  br label %227

227:                                              ; preds = %224, %209
  %228 = phi i32 [ %226, %224 ], [ 0, %209 ]
  %229 = icmp eq ptr %212, null
  br i1 %229, label %245, label %230, !prof !383

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.tree_common, ptr %212, i64 0, i32 2
  %232 = load ptr, ptr %231, align 8, !tbaa !197
  %233 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %234 = icmp eq ptr %232, %233
  br i1 %234, label %237, label %235, !prof !384

235:                                              ; preds = %230
  %236 = tail call ptr @fold_convert_loc(i32 noundef %228, ptr noundef %233, ptr noundef nonnull %212) #22
  br label %237

237:                                              ; preds = %235, %230
  %238 = phi ptr [ %236, %235 ], [ %212, %230 ]
  %239 = getelementptr inbounds %struct.tree_type, ptr %217, i64 0, i32 7
  %240 = load i32, ptr %239, align 8, !tbaa !197
  %241 = lshr i32 %240, 3
  %242 = zext nneg i32 %241 to i64
  %243 = tail call ptr @size_int_kind(i64 noundef %242, i32 noundef 0) #22
  %244 = tail call ptr @size_binop_loc(i32 noundef %228, i32 noundef 65, ptr noundef %238, ptr noundef %243) #22
  br label %255

245:                                              ; preds = %227
  %246 = getelementptr inbounds %struct.tree_type, ptr %217, i64 0, i32 3
  %247 = load ptr, ptr %246, align 8, !tbaa !197
  %248 = icmp eq ptr %247, null
  br i1 %248, label %255, label %249, !prof !385

249:                                              ; preds = %245
  %250 = load i64, ptr %247, align 8
  %251 = and i64 %250, 131072
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %255, !prof !385

253:                                              ; preds = %249
  %254 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %247, ptr noundef nonnull %123) #22
  br label %255

255:                                              ; preds = %237, %245, %249, %253
  %256 = phi ptr [ %244, %237 ], [ %254, %253 ], [ %247, %249 ], [ %247, %245 ]
  %257 = tail call i32 @integer_zerop(ptr noundef %210) #22
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %263, !prof !386

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.tree_common, ptr %183, i64 0, i32 2
  %261 = load ptr, ptr %260, align 8, !tbaa !197
  %262 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %261, ptr noundef %183, ptr noundef %210) #22
  br label %263

263:                                              ; preds = %259, %255
  %264 = phi ptr [ %183, %255 ], [ %262, %259 ]
  %265 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %266 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %265, ptr noundef %264) #22
  %267 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %266, ptr noundef %256) #22
  %268 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %122, ptr noundef %267) #22
  br label %273

269:                                              ; preds = %120
  %270 = load i64, ptr %1, align 8, !tbaa !311
  %271 = tail call ptr @size_int_kind(i64 noundef %270, i32 noundef 2) #22
  %272 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %121, ptr noundef %271) #22
  br label %273

273:                                              ; preds = %120, %120, %176, %173, %269, %263, %126
  %274 = phi ptr [ %272, %269 ], [ %121, %263 ], [ %129, %126 ], [ %180, %176 ], [ %121, %173 ], [ %121, %120 ], [ %121, %120 ]
  %275 = phi ptr [ %122, %269 ], [ %268, %263 ], [ %122, %126 ], [ %177, %176 ], [ %122, %173 ], [ %122, %120 ], [ %122, %120 ]
  %276 = load i64, ptr %123, align 8
  %277 = and i64 %276, 524288
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %280, label %279, !prof !387

279:                                              ; preds = %273
  store i32 1, ptr %6, align 4, !tbaa !201
  br label %280

280:                                              ; preds = %279, %273
  %281 = getelementptr inbounds %struct.tree_exp, ptr %123, i64 0, i32 3
  %282 = load ptr, ptr %281, align 8, !tbaa !197
  br label %120, !llvm.loop !388

283:                                              ; preds = %120
  %284 = tail call i32 @host_integerp(ptr noundef %122, i32 noundef 0) #22
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %303, label %286, !prof !389

286:                                              ; preds = %283
  %287 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %122) #22
  %288 = extractvalue { i64, i64 } %287, 0
  %289 = extractvalue { i64, i64 } %287, 1
  %290 = tail call { i64, i64 } @double_int_mul(i64 %288, i64 %289, i64 8, i64 0) #22
  %291 = extractvalue { i64, i64 } %290, 0
  %292 = extractvalue { i64, i64 } %290, 1
  %293 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %121) #22
  %294 = extractvalue { i64, i64 } %293, 0
  %295 = extractvalue { i64, i64 } %293, 1
  %296 = tail call { i64, i64 } @double_int_add(i64 %291, i64 %292, i64 %294, i64 %295) #22
  %297 = extractvalue { i64, i64 } %296, 0
  %298 = extractvalue { i64, i64 } %296, 1
  %299 = tail call zeroext i8 @double_int_fits_in_shwi_p(i64 %297, i64 %298) #22
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %303, label %301, !prof !390

301:                                              ; preds = %286
  %302 = tail call i64 @double_int_to_shwi(i64 %297, i64 %298) #22
  store i64 %302, ptr %2, align 8, !tbaa !311
  store ptr null, ptr %3, align 8, !tbaa !186
  br label %303

303:                                              ; preds = %286, %301, %283
  %304 = phi ptr [ %122, %283 ], [ null, %301 ], [ %122, %286 ]
  %305 = icmp eq ptr %304, null
  br i1 %305, label %308, label %306, !prof !391

306:                                              ; preds = %303
  %307 = tail call i64 @tree_low_cst(ptr noundef %121, i32 noundef 0) #22
  store i64 %307, ptr %2, align 8, !tbaa !311
  store ptr %304, ptr %3, align 8, !tbaa !186
  br label %308

308:                                              ; preds = %306, %303
  %309 = icmp eq i32 %119, 0
  %310 = and i1 %106, %309
  br i1 %310, label %311, label %319, !prof !392

311:                                              ; preds = %308
  %312 = load i64, ptr %2, align 8, !tbaa !311
  %313 = and i64 %312, 7
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %311
  %316 = load i64, ptr %1, align 8, !tbaa !311
  %317 = and i64 %316, 7
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %320, label %319

319:                                              ; preds = %315, %311, %308
  br label %320

320:                                              ; preds = %315, %319
  %321 = phi i32 [ %119, %319 ], [ 1, %315 ]
  store i32 %321, ptr %4, align 4, !tbaa !201
  ret ptr %123
}

declare void @expand_builtin_trap() local_unnamed_addr #3

declare ptr @offset_address(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @store_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #9 !prof !358 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store ptr null, ptr %5, align 8, !tbaa !186
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !201
  %10 = add i32 %9, -4
  %11 = icmp ult i32 %10, 7
  br i1 %11, label %12, label %15, !prof !393

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !197
  br label %15

15:                                               ; preds = %4, %12
  %16 = phi i32 [ %14, %12 ], [ 0, %4 ]
  %17 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !197
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 19
  br i1 %21, label %22, label %28, !prof !359

22:                                               ; preds = %15
  %23 = icmp eq i32 %2, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4532, ptr noundef nonnull @.str.1) #22
  br label %25

25:                                               ; preds = %22, %24
  %26 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %27 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef %26, i32 noundef 0, i32 noundef 0, ptr noundef null)
  br label %517

28:                                               ; preds = %15
  %29 = trunc i64 %6 to i16
  switch i16 %29, label %64 [
    i16 52, label %30
    i16 56, label %40
  ], !prof !394

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !197
  %33 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %34 = icmp ne i32 %2, 0
  %35 = zext i1 %34 to i32
  %36 = tail call ptr @expand_expr_real(ptr noundef %32, ptr noundef %33, i32 noundef 0, i32 noundef %35, ptr noundef null)
  %37 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !197
  %39 = tail call ptr @store_expr(ptr noundef %38, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3)
  br label %517

40:                                               ; preds = %28
  %41 = load i32, ptr %1, align 8
  %42 = and i32 %41, 16711680
  %43 = icmp eq i32 %42, 65536
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = tail call ptr @gen_label_rtx() #22
  %46 = tail call ptr @gen_label_rtx() #22
  tail call void @do_pending_stack_adjust() #22
  %47 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !302
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !302
  %49 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !197
  tail call void @jumpifnot(ptr noundef %50, ptr noundef %45, i32 noundef -1) #22
  %51 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !197
  %53 = tail call ptr @store_expr(ptr noundef %52, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3)
  %54 = tail call ptr @gen_jump(ptr noundef %46) #22
  %55 = tail call ptr @emit_jump_insn(ptr noundef %54) #22
  %56 = tail call ptr @emit_barrier() #22
  %57 = tail call ptr @emit_label(ptr noundef %45) #22
  %58 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !197
  %60 = tail call ptr @store_expr(ptr noundef %59, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3)
  %61 = tail call ptr @emit_label(ptr noundef %46) #22
  %62 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !302
  %63 = add nsw i32 %62, -1
  store i32 %63, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !302
  br label %517

64:                                               ; preds = %28, %40
  %65 = load i32, ptr %1, align 8
  %66 = and i32 %65, 268500991
  %67 = icmp eq i32 %66, 268435495
  br i1 %67, label %68, label %206, !prof !359

68:                                               ; preds = %64
  %69 = trunc i64 %19 to i32
  %70 = and i32 %69, 65535
  %71 = add nsw i32 %70, -6
  %72 = icmp ult i32 %71, 3
  br i1 %72, label %73, label %142

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !197
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %142

77:                                               ; preds = %73
  %78 = lshr i32 %65, 16
  %79 = and i32 %78, 255
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %80
  %82 = load i16, ptr %81, align 2, !tbaa !234
  %83 = zext i16 %82 to i32
  %84 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 1023
  %87 = icmp eq i32 %86, %83
  br i1 %87, label %88, label %142

88:                                               ; preds = %77
  %89 = lshr i32 %69, 21
  %90 = and i32 %89, 1
  %91 = and i32 %65, 134217728
  %92 = icmp eq i32 %91, 0
  %93 = lshr i32 %65, 26
  %94 = and i32 %93, 1
  %95 = select i1 %92, i32 %94, i32 -1
  %96 = icmp eq i32 %90, %95
  br i1 %96, label %125, label %97

97:                                               ; preds = %88
  %98 = tail call ptr @signed_or_unsigned_type_for(i32 noundef %95, ptr noundef nonnull %18) #22
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %122

100:                                              ; preds = %97
  %101 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !395
  %102 = load ptr, ptr %17, align 8, !tbaa !197
  %103 = load i64, ptr %102, align 8
  %104 = and i64 %103, 65535
  %105 = icmp eq i64 %104, 14
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = tail call i32 @vector_type_mode(ptr noundef nonnull %102) #22
  br label %113

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.tree_type, ptr %102, i64 0, i32 6
  %110 = load i32, ptr %109, align 4
  %111 = lshr i32 %110, 16
  %112 = and i32 %111, 255
  br label %113

113:                                              ; preds = %108, %106
  %114 = phi i32 [ %107, %106 ], [ %112, %108 ]
  %115 = load i32, ptr %1, align 8
  %116 = and i32 %115, 134217728
  %117 = icmp eq i32 %116, 0
  %118 = lshr i32 %115, 26
  %119 = and i32 %118, 1
  %120 = select i1 %117, i32 %119, i32 -1
  %121 = tail call ptr %101(i32 noundef %114, i32 noundef %120) #22
  br label %122

122:                                              ; preds = %113, %97
  %123 = phi ptr [ %121, %113 ], [ %98, %97 ]
  %124 = tail call ptr @fold_convert_loc(i32 noundef %16, ptr noundef %123, ptr noundef %0) #22
  br label %125

125:                                              ; preds = %122, %88
  %126 = phi ptr [ %124, %122 ], [ %0, %88 ]
  %127 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !395
  %128 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !197
  %130 = load i32, ptr %129, align 8
  %131 = lshr i32 %130, 16
  %132 = and i32 %131, 255
  %133 = load i32, ptr %1, align 8
  %134 = and i32 %133, 134217728
  %135 = icmp eq i32 %134, 0
  %136 = lshr i32 %133, 26
  %137 = and i32 %136, 1
  %138 = select i1 %135, i32 %137, i32 -1
  %139 = tail call ptr %127(i32 noundef %132, i32 noundef %138) #22
  %140 = tail call ptr @fold_convert_loc(i32 noundef %16, ptr noundef %139, ptr noundef %126) #22
  %141 = load ptr, ptr %128, align 8, !tbaa !197
  br label %142

142:                                              ; preds = %68, %125, %77, %73
  %143 = phi ptr [ %141, %125 ], [ null, %77 ], [ null, %73 ], [ null, %68 ]
  %144 = phi ptr [ %140, %125 ], [ %0, %77 ], [ %0, %73 ], [ %0, %68 ]
  %145 = icmp ne i32 %2, 0
  %146 = zext i1 %145 to i32
  %147 = tail call ptr @expand_expr_real(ptr noundef %144, ptr noundef %143, i32 noundef 0, i32 noundef %146, ptr noundef null)
  %148 = load i32, ptr %147, align 8
  %149 = and i32 %148, 65535
  %150 = zext nneg i32 %149 to i64
  %151 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !201
  %153 = icmp eq i32 %152, 9
  %154 = and i32 %148, 16711680
  %155 = icmp eq i32 %154, 0
  %156 = and i1 %153, %155
  br i1 %156, label %157, label %196

157:                                              ; preds = %142
  %158 = load i32, ptr %1, align 8
  %159 = lshr i32 %158, 16
  %160 = and i32 %159, 255
  %161 = getelementptr inbounds %struct.tree_common, ptr %144, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !197
  %163 = load i64, ptr %162, align 8
  %164 = and i64 %163, 65535
  %165 = icmp eq i64 %164, 14
  br i1 %165, label %166, label %168

166:                                              ; preds = %157
  %167 = tail call i32 @vector_type_mode(ptr noundef nonnull %162) #22
  br label %173

168:                                              ; preds = %157
  %169 = getelementptr inbounds %struct.tree_type, ptr %162, i64 0, i32 6
  %170 = load i32, ptr %169, align 4
  %171 = lshr i32 %170, 16
  %172 = and i32 %171, 255
  br label %173

173:                                              ; preds = %168, %166
  %174 = phi i32 [ %167, %166 ], [ %172, %168 ]
  %175 = load i32, ptr %1, align 8
  %176 = and i32 %175, 134217728
  %177 = icmp eq i32 %176, 0
  %178 = lshr i32 %175, 26
  %179 = and i32 %178, 1
  %180 = select i1 %177, i32 %179, i32 -1
  %181 = tail call ptr @convert_modes(i32 noundef %160, i32 noundef %174, ptr noundef nonnull %147, i32 noundef %180)
  %182 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !197
  %184 = load i32, ptr %183, align 8
  %185 = lshr i32 %184, 16
  %186 = and i32 %185, 255
  %187 = load i32, ptr %1, align 8
  %188 = lshr i32 %187, 16
  %189 = and i32 %188, 255
  %190 = and i32 %187, 134217728
  %191 = icmp eq i32 %190, 0
  %192 = lshr i32 %187, 26
  %193 = and i32 %192, 1
  %194 = select i1 %191, i32 %193, i32 -1
  %195 = tail call ptr @convert_modes(i32 noundef %186, i32 noundef %189, ptr noundef %181, i32 noundef %194)
  br label %196

196:                                              ; preds = %173, %142
  %197 = phi ptr [ %195, %173 ], [ %147, %142 ]
  %198 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !197
  %200 = load i32, ptr %1, align 8
  %201 = and i32 %200, 134217728
  %202 = icmp eq i32 %201, 0
  %203 = lshr i32 %200, 26
  %204 = and i32 %203, 1
  %205 = select i1 %202, i32 %204, i32 -1
  tail call void @convert_move(ptr noundef %199, ptr noundef %197, i32 noundef %205)
  br label %517

206:                                              ; preds = %64
  %207 = icmp ne i64 %7, 28
  %208 = icmp ne i8 %3, 0
  %209 = or i1 %208, %207
  %210 = icmp ne i32 %2, 0
  %211 = or i1 %210, %209
  br i1 %211, label %269, label %212, !prof !360

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %214 = load i32, ptr %213, align 8, !tbaa !197
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %269

216:                                              ; preds = %212
  %217 = icmp eq i64 %20, 14
  br i1 %217, label %218, label %220

218:                                              ; preds = %216
  %219 = tail call i32 @vector_type_mode(ptr noundef nonnull %18) #22
  br label %225

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 6
  %222 = load i32, ptr %221, align 4
  %223 = lshr i32 %222, 16
  %224 = and i32 %223, 255
  br label %225

225:                                              ; preds = %220, %218
  %226 = phi i32 [ %219, %218 ], [ %224, %220 ]
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %269

228:                                              ; preds = %225
  %229 = tail call i64 @int_expr_size(ptr noundef nonnull %0) #22
  %230 = icmp slt i64 %229, 1
  br i1 %230, label %269, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 2
  %233 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %232)
  %234 = load i32, ptr %213, align 8, !tbaa !197
  %235 = add nsw i32 %234, -1
  %236 = sext i32 %235 to i64
  %237 = icmp slt i64 %233, %236
  br i1 %237, label %269, label %238

238:                                              ; preds = %231
  %239 = sext i32 %234 to i64
  %240 = add nsw i64 %239, 3
  %241 = and i64 %240, -4
  %242 = icmp slt i64 %241, %229
  %243 = tail call i64 @llvm.smin.i64(i64 %241, i64 %229)
  %244 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %245 = load ptr, ptr %244, align 8, !tbaa !197
  %246 = icmp eq ptr %245, null
  br i1 %246, label %250, label %247

247:                                              ; preds = %238
  %248 = getelementptr inbounds %struct.mem_attrs, ptr %245, i64 0, i32 4
  %249 = load i32, ptr %248, align 4, !tbaa !294
  br label %250

250:                                              ; preds = %238, %247
  %251 = phi i32 [ %249, %247 ], [ 8, %238 ]
  %252 = tail call i32 @can_store_by_pieces(i64 noundef %243, ptr noundef nonnull @builtin_strncpy_read_str, ptr noundef nonnull %232, i32 noundef %251, i8 noundef zeroext 0)
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %269, label %254

254:                                              ; preds = %250
  %255 = load ptr, ptr %244, align 8, !tbaa !197
  %256 = icmp eq ptr %255, null
  br i1 %256, label %260, label %257

257:                                              ; preds = %254
  %258 = getelementptr inbounds %struct.mem_attrs, ptr %255, i64 0, i32 4
  %259 = load i32, ptr %258, align 4, !tbaa !294
  br label %260

260:                                              ; preds = %254, %257
  %261 = phi i32 [ %259, %257 ], [ 8, %254 ]
  %262 = zext i1 %242 to i32
  %263 = tail call ptr @store_by_pieces(ptr noundef %1, i64 noundef %243, ptr noundef nonnull @builtin_strncpy_read_str, ptr noundef nonnull %232, i32 noundef %261, i8 noundef zeroext 0, i32 noundef %262)
  br i1 %242, label %264, label %517

264:                                              ; preds = %260
  %265 = tail call ptr @adjust_address_1(ptr noundef %263, i32 noundef 1, i64 noundef 0, i32 noundef 1, i32 noundef 1) #22
  %266 = sub nsw i64 %229, %243
  %267 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %266) #22
  %268 = tail call ptr @clear_storage_hints(ptr noundef %265, ptr noundef %267, i32 noundef 0, i32 noundef 0, i64 noundef -1)
  br label %517

269:                                              ; preds = %228, %231, %250, %206, %212, %225
  %270 = icmp eq i8 %3, 0
  %271 = select i1 %270, ptr %1, ptr null, !prof !360
  %272 = load i32, ptr %1, align 8
  %273 = lshr i32 %272, 16
  %274 = and i32 %273, 255
  %275 = zext i1 %210 to i32
  %276 = call ptr @expand_expr_real(ptr noundef nonnull %0, ptr noundef %271, i32 noundef %274, i32 noundef %275, ptr noundef nonnull %5)
  %277 = load i32, ptr %276, align 8
  %278 = and i32 %277, 65535
  %279 = zext nneg i32 %278 to i64
  %280 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %279
  %281 = load i32, ptr %280, align 4, !tbaa !201
  %282 = icmp eq i32 %281, 9
  %283 = and i32 %277, 16711680
  %284 = icmp eq i32 %283, 0
  %285 = and i1 %282, %284
  br i1 %285, label %286, label %331, !prof !359

286:                                              ; preds = %269
  %287 = load i64, ptr %0, align 8
  %288 = and i64 %287, 65535
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %331, label %290

290:                                              ; preds = %286
  %291 = load i32, ptr %1, align 8
  %292 = lshr i32 %291, 16
  %293 = and i32 %292, 255
  %294 = load ptr, ptr %17, align 8, !tbaa !197
  %295 = load i64, ptr %294, align 8
  %296 = and i64 %295, 65535
  %297 = icmp eq i64 %296, 14
  br i1 %297, label %298, label %300

298:                                              ; preds = %290
  %299 = call i32 @vector_type_mode(ptr noundef nonnull %294) #22
  br label %305

300:                                              ; preds = %290
  %301 = getelementptr inbounds %struct.tree_type, ptr %294, i64 0, i32 6
  %302 = load i32, ptr %301, align 4
  %303 = lshr i32 %302, 16
  %304 = and i32 %303, 255
  br label %305

305:                                              ; preds = %300, %298
  %306 = phi i32 [ %299, %298 ], [ %304, %300 ]
  %307 = icmp eq i32 %293, %306
  br i1 %307, label %331, label %308

308:                                              ; preds = %305
  %309 = load i32, ptr %1, align 8
  %310 = lshr i32 %309, 16
  %311 = and i32 %310, 255
  %312 = load ptr, ptr %17, align 8, !tbaa !197
  %313 = load i64, ptr %312, align 8
  %314 = and i64 %313, 65535
  %315 = icmp eq i64 %314, 14
  br i1 %315, label %316, label %318

316:                                              ; preds = %308
  %317 = call i32 @vector_type_mode(ptr noundef nonnull %312) #22
  br label %323

318:                                              ; preds = %308
  %319 = getelementptr inbounds %struct.tree_type, ptr %312, i64 0, i32 6
  %320 = load i32, ptr %319, align 4
  %321 = lshr i32 %320, 16
  %322 = and i32 %321, 255
  br label %323

323:                                              ; preds = %318, %316
  %324 = phi i32 [ %317, %316 ], [ %322, %318 ]
  %325 = load ptr, ptr %17, align 8, !tbaa !197
  %326 = load i64, ptr %325, align 8
  %327 = trunc i64 %326 to i32
  %328 = lshr i32 %327, 21
  %329 = and i32 %328, 1
  %330 = call ptr @convert_modes(i32 noundef %311, i32 noundef %324, ptr noundef nonnull %276, i32 noundef %329)
  br label %331

331:                                              ; preds = %323, %305, %286, %269
  %332 = phi ptr [ %330, %323 ], [ %276, %305 ], [ %276, %286 ], [ %276, %269 ]
  %333 = call i32 @rtx_equal_p(ptr noundef %332, ptr noundef %1) #22
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %343, label %335, !prof !403

335:                                              ; preds = %331
  %336 = icmp eq ptr %332, %1
  br i1 %336, label %517, label %337, !prof !367

337:                                              ; preds = %335
  %338 = call i32 @side_effects_p(ptr noundef %332) #22
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %337
  %341 = call i32 @side_effects_p(ptr noundef %1) #22
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %517, label %343

343:                                              ; preds = %340, %337, %331
  %344 = load i64, ptr %0, align 8
  %345 = and i64 %344, 65535
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %517, label %347, !prof !404

347:                                              ; preds = %343
  %348 = load ptr, ptr %5, align 8, !tbaa !186
  %349 = icmp eq ptr %348, null
  br i1 %349, label %353, label %350, !prof !405

350:                                              ; preds = %347
  %351 = call i32 @rtx_equal_p(ptr noundef nonnull %348, ptr noundef %1) #22
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %517, !prof !406

353:                                              ; preds = %350, %347
  %354 = call ptr @expr_size(ptr noundef nonnull %0) #22
  %355 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %356 = icmp eq ptr %354, %355
  br i1 %356, label %517, label %357, !prof !404

357:                                              ; preds = %353
  %358 = load i32, ptr %332, align 8
  %359 = lshr i32 %358, 16
  %360 = and i32 %359, 255
  %361 = load i32, ptr %1, align 8
  %362 = lshr i32 %361, 16
  %363 = and i32 %362, 255
  %364 = icmp eq i32 %360, %363
  %365 = icmp eq i32 %360, 0
  %366 = or i1 %365, %364
  br i1 %366, label %381, label %367, !prof !407

367:                                              ; preds = %357
  %368 = icmp eq i32 %363, 1
  %369 = icmp eq i32 %360, 1
  %370 = or i1 %369, %368
  br i1 %370, label %371, label %375

371:                                              ; preds = %367
  %372 = call ptr @expr_size(ptr noundef nonnull %0) #22
  %373 = select i1 %210, i32 2, i32 0
  %374 = call ptr @emit_block_move_hints(ptr noundef nonnull %1, ptr noundef nonnull %332, ptr noundef %372, i32 noundef %373, i32 noundef 0, i64 noundef -1)
  br label %517

375:                                              ; preds = %367
  %376 = load ptr, ptr %17, align 8, !tbaa !197
  %377 = load i64, ptr %376, align 8
  %378 = trunc i64 %377 to i32
  %379 = lshr i32 %378, 21
  %380 = and i32 %379, 1
  call void @convert_move(ptr noundef nonnull %1, ptr noundef nonnull %332, i32 noundef %380)
  br label %517

381:                                              ; preds = %357
  %382 = and i32 %358, 16711680
  %383 = icmp eq i32 %382, 65536
  br i1 %383, label %384, label %496, !prof !404

384:                                              ; preds = %381
  %385 = load i64, ptr %0, align 8
  %386 = and i64 %385, 65535
  %387 = icmp eq i64 %386, 28
  br i1 %387, label %388, label %496

388:                                              ; preds = %384
  %389 = call ptr @expr_size(ptr noundef nonnull %0) #22
  %390 = load i32, ptr %389, align 8
  %391 = and i32 %390, 65535
  %392 = icmp eq i32 %391, 30
  br i1 %392, label %393, label %403

393:                                              ; preds = %388
  %394 = getelementptr inbounds %struct.rtx_def, ptr %389, i64 0, i32 1
  %395 = load i64, ptr %394, align 8, !tbaa !197
  %396 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %397 = load i32, ptr %396, align 8, !tbaa !197
  %398 = sext i32 %397 to i64
  %399 = icmp slt i64 %395, %398
  br i1 %399, label %400, label %403

400:                                              ; preds = %393
  %401 = select i1 %210, i32 2, i32 0
  %402 = call ptr @emit_block_move_hints(ptr noundef nonnull %1, ptr noundef nonnull %332, ptr noundef nonnull %389, i32 noundef %401, i32 noundef 0, i64 noundef -1)
  br label %517

403:                                              ; preds = %393, %388
  %404 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57), align 8, !tbaa !408
  %405 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %406 = load ptr, ptr %405, align 8, !tbaa !197
  %407 = icmp eq ptr %406, null
  br i1 %407, label %411, label %408

408:                                              ; preds = %403
  %409 = getelementptr inbounds %struct.mem_attrs, ptr %406, i64 0, i32 5
  %410 = load i8, ptr %409, align 8, !tbaa !249
  br label %411

411:                                              ; preds = %403, %408
  %412 = phi i8 [ %410, %408 ], [ 0, %403 ]
  %413 = call i32 %404(i8 noundef zeroext %412) #22
  %414 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !282
  %415 = load ptr, ptr %405, align 8, !tbaa !197
  %416 = icmp eq ptr %415, null
  br i1 %416, label %420, label %417

417:                                              ; preds = %411
  %418 = getelementptr inbounds %struct.mem_attrs, ptr %415, i64 0, i32 5
  %419 = load i8, ptr %418, align 8, !tbaa !249
  br label %420

420:                                              ; preds = %411, %417
  %421 = phi i8 [ %419, %417 ], [ 0, %411 ]
  %422 = call i32 %414(i8 noundef zeroext %421) #22
  %423 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %424 = call ptr @make_tree(ptr noundef %423, ptr noundef nonnull %389) #22
  %425 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %426 = load i32, ptr %425, align 8, !tbaa !197
  %427 = sext i32 %426 to i64
  %428 = call ptr @size_int_kind(i64 noundef %427, i32 noundef 0) #22
  %429 = call ptr @size_binop_loc(i32 noundef %16, i32 noundef 80, ptr noundef %424, ptr noundef %428) #22
  %430 = call ptr @expand_expr_real(ptr noundef %429, ptr noundef null, i32 noundef 0, i32 noundef %275, ptr noundef null)
  %431 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %432 = load i64, ptr %431, align 8
  %433 = trunc i64 %432 to i32
  %434 = lshr i32 %433, 21
  %435 = and i32 %434, 1
  %436 = call ptr @convert_modes(i32 noundef %413, i32 noundef 0, ptr noundef %430, i32 noundef %435)
  %437 = select i1 %210, i32 2, i32 0
  %438 = call ptr @emit_block_move_hints(ptr noundef nonnull %1, ptr noundef nonnull %332, ptr noundef %436, i32 noundef %437, i32 noundef 0, i64 noundef -1)
  %439 = load i32, ptr %436, align 8
  %440 = and i32 %439, 65535
  %441 = icmp eq i32 %440, 30
  br i1 %441, label %442, label %449

442:                                              ; preds = %420
  %443 = getelementptr inbounds %struct.rtx_def, ptr %436, i64 0, i32 1
  %444 = load i64, ptr %443, align 8, !tbaa !197
  %445 = sub nsw i64 0, %444
  %446 = call ptr @plus_constant(ptr noundef nonnull %389, i64 noundef %445) #22
  %447 = load i64, ptr %443, align 8, !tbaa !197
  %448 = call ptr @adjust_address_1(ptr noundef nonnull %1, i32 noundef 1, i64 noundef %447, i32 noundef 1, i32 noundef 1) #22
  br label %484

449:                                              ; preds = %420
  %450 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %451 = load i64, ptr %450, align 8
  %452 = and i64 %451, 65535
  %453 = icmp eq i64 %452, 14
  br i1 %453, label %454, label %456

454:                                              ; preds = %449
  %455 = call i32 @vector_type_mode(ptr noundef nonnull %450) #22
  br label %461

456:                                              ; preds = %449
  %457 = getelementptr inbounds %struct.tree_type, ptr %450, i64 0, i32 6
  %458 = load i32, ptr %457, align 4
  %459 = lshr i32 %458, 16
  %460 = and i32 %459, 255
  br label %461

461:                                              ; preds = %456, %454
  %462 = phi i32 [ %455, %454 ], [ %460, %456 ]
  %463 = call ptr @expand_binop(i32 noundef %462, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef nonnull %389, ptr noundef nonnull %436, ptr noundef null, i32 noundef 0, i32 noundef 3) #22
  %464 = load i32, ptr %436, align 8
  %465 = lshr i32 %464, 16
  %466 = and i32 %465, 255
  %467 = icmp eq i32 %466, %422
  br i1 %467, label %475, label %468

468:                                              ; preds = %461
  %469 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %470 = load i64, ptr %469, align 8
  %471 = trunc i64 %470 to i32
  %472 = lshr i32 %471, 21
  %473 = and i32 %472, 1
  %474 = call ptr @convert_modes(i32 noundef %422, i32 noundef 0, ptr noundef nonnull %436, i32 noundef %473)
  br label %475

475:                                              ; preds = %468, %461
  %476 = phi ptr [ %474, %468 ], [ %436, %461 ]
  %477 = call i64 @highest_pow2_factor(ptr noundef %429)
  %478 = call ptr @offset_address(ptr noundef nonnull %1, ptr noundef %476, i64 noundef %477) #22
  %479 = call ptr @gen_label_rtx() #22
  %480 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %481 = load i32, ptr %463, align 8
  %482 = lshr i32 %481, 16
  %483 = and i32 %482, 255
  call void @emit_cmp_and_jump_insns(ptr noundef nonnull %463, ptr noundef %480, i32 noundef 85, ptr noundef null, i32 noundef %483, i32 noundef 0, ptr noundef %479) #22
  br label %484

484:                                              ; preds = %475, %442
  %485 = phi ptr [ %446, %442 ], [ %463, %475 ]
  %486 = phi ptr [ %448, %442 ], [ %478, %475 ]
  %487 = phi ptr [ null, %442 ], [ %479, %475 ]
  %488 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %489 = icmp eq ptr %485, %488
  br i1 %489, label %492, label %490

490:                                              ; preds = %484
  %491 = call ptr @clear_storage_hints(ptr noundef %486, ptr noundef %485, i32 noundef 0, i32 noundef 0, i64 noundef -1)
  br label %492

492:                                              ; preds = %490, %484
  %493 = icmp eq ptr %487, null
  br i1 %493, label %517, label %494

494:                                              ; preds = %492
  %495 = call ptr @emit_label(ptr noundef nonnull %487) #22
  br label %517

496:                                              ; preds = %384, %381
  %497 = and i32 %361, 65535
  %498 = icmp eq i32 %497, 15
  br i1 %498, label %499, label %503, !prof !404

499:                                              ; preds = %496
  %500 = load ptr, ptr %17, align 8, !tbaa !197
  %501 = call i64 @int_size_in_bytes(ptr noundef %500) #22
  %502 = trunc i64 %501 to i32
  call void @emit_group_load(ptr noundef nonnull %1, ptr noundef nonnull %332, ptr poison, i32 noundef %502)
  br label %517

503:                                              ; preds = %496
  br i1 %383, label %504, label %508, !prof !404

504:                                              ; preds = %503
  %505 = call ptr @expr_size(ptr noundef nonnull %0) #22
  %506 = select i1 %210, i32 2, i32 0
  %507 = call ptr @emit_block_move_hints(ptr noundef nonnull %1, ptr noundef nonnull %332, ptr noundef %505, i32 noundef %506, i32 noundef 0, i64 noundef -1)
  br label %517

508:                                              ; preds = %503
  br i1 %270, label %512, label %509, !prof !407

509:                                              ; preds = %508
  %510 = call zeroext i8 @emit_storent_insn(ptr noundef nonnull %1, ptr noundef nonnull %332), !range !409
  %511 = icmp eq i8 %510, 0
  br i1 %511, label %512, label %517

512:                                              ; preds = %509, %508
  %513 = call ptr @force_operand(ptr noundef nonnull %332, ptr noundef nonnull %1)
  %514 = icmp eq ptr %513, %1
  br i1 %514, label %517, label %515, !prof !404

515:                                              ; preds = %512
  %516 = call ptr @emit_move_insn(ptr noundef nonnull %1, ptr noundef %513)
  br label %517

517:                                              ; preds = %512, %353, %340, %335, %343, %350, %504, %515, %509, %499, %375, %371, %492, %494, %400, %264, %260, %196, %44, %30, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret ptr null
}

declare void @set_mem_attributes_minus_bitpos(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @component_uses_parent_alias_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @store_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i8 noundef zeroext %7) unnamed_addr #9 !prof !227 !PGOFuncName !410 {
  %9 = load i64, ptr %4, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14, !prof !411

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  br label %38

14:                                               ; preds = %8
  %15 = icmp eq i64 %1, 0
  br i1 %15, label %16, label %19, !prof !411

16:                                               ; preds = %14
  %17 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %18 = tail call ptr @expand_expr_real(ptr noundef nonnull %4, ptr noundef %17, i32 noundef 0, i32 noundef 0, ptr noundef null)
  br label %38

19:                                               ; preds = %14
  %20 = icmp eq i32 %3, 1
  br i1 %20, label %21, label %43, !prof !411

21:                                               ; preds = %19
  %22 = load i32, ptr %0, align 8
  %23 = trunc i32 %22 to i16
  switch i16 %23, label %43 [
    i16 37, label %24
    i16 39, label %24
  ]

24:                                               ; preds = %21, %21
  %25 = tail call ptr @assign_temp(ptr noundef %5, i32 noundef 0, i32 noundef 1, i32 noundef 1) #22
  %26 = tail call ptr @adjust_address_1(ptr noundef %25, i32 noundef 1, i64 noundef 0, i32 noundef 1, i32 noundef 1) #22
  %27 = load i32, ptr %0, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !197
  %33 = zext i8 %32 to i64
  %34 = shl nuw nsw i64 %33, 3
  %35 = icmp eq i64 %34, %1
  br i1 %35, label %40, label %36

36:                                               ; preds = %24
  %37 = tail call ptr @emit_move_insn(ptr noundef %25, ptr noundef nonnull %0)
  br label %40

38:                                               ; preds = %12, %16, %50, %239, %263, %40
  %39 = phi ptr [ %26, %40 ], [ %13, %12 ], [ %18, %16 ], [ null, %50 ], [ %240, %239 ], [ null, %263 ]
  ret ptr %39

40:                                               ; preds = %36, %24
  %41 = tail call fastcc ptr @store_field(ptr noundef %26, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef nonnull %4, ptr noundef %5, i32 noundef %6, i8 noundef zeroext %7)
  %42 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef %25)
  br label %38

43:                                               ; preds = %21, %19
  %44 = load i32, ptr %0, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 41
  br i1 %46, label %47, label %52, !prof !411

47:                                               ; preds = %43
  %48 = icmp eq i64 %2, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5812, ptr noundef nonnull @.str.1) #22
  br label %50

50:                                               ; preds = %47, %49
  %51 = tail call ptr @store_expr(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext %7)
  br label %38

52:                                               ; preds = %43
  %53 = icmp eq i32 %3, 0
  br i1 %53, label %98, label %54, !prof !411

54:                                               ; preds = %52
  br i1 %20, label %66, label %55, !prof !411

55:                                               ; preds = %54
  %56 = sext i32 %3 to i64
  %57 = getelementptr inbounds [87 x i8], ptr @direct_store, i64 0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !197
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %66, !prof !411

60:                                               ; preds = %55
  %61 = zext i32 %3 to i64
  %62 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !197
  %64 = and i8 %63, -2
  %65 = icmp eq i8 %64, 10
  br i1 %65, label %66, label %98

66:                                               ; preds = %60, %55, %54
  %67 = trunc i32 %44 to i16
  switch i16 %67, label %68 [
    i16 37, label %98
    i16 39, label %98
  ], !prof !412

68:                                               ; preds = %66
  br i1 %20, label %85, label %69, !prof !411

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !197
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73, !prof !411

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.mem_attrs, ptr %71, i64 0, i32 4
  %75 = load i32, ptr %74, align 4, !tbaa !294
  br label %76

76:                                               ; preds = %69, %73
  %77 = phi i32 [ %75, %73 ], [ 8, %69 ]
  %78 = tail call i32 @get_mode_alignment(i32 noundef %3) #22
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %82, label %80, !prof !411

80:                                               ; preds = %76
  %81 = tail call i32 @get_mode_alignment(i32 noundef %3) #22
  br label %82

82:                                               ; preds = %80, %76
  %83 = and i64 %2, 7
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %98, !prof !363

85:                                               ; preds = %82, %68
  %86 = icmp sgt i64 %1, -1
  br i1 %86, label %87, label %241, !prof !363

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !197
  %90 = getelementptr inbounds %struct.tree_type, ptr %89, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !197
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 23
  br i1 %94, label %95, label %241, !prof !363

95:                                               ; preds = %87
  %96 = tail call i32 @compare_tree_int(ptr noundef nonnull %91, i64 noundef %1) #22
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %241, label %98, !prof !363

98:                                               ; preds = %66, %60, %66, %95, %82, %52
  %99 = tail call fastcc ptr @get_def_for_expr(ptr noundef nonnull %4, i32 noundef 116)
  %100 = icmp eq ptr %99, null
  br i1 %100, label %164, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !197
  %104 = load i64, ptr %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = and i32 %105, 65535
  %107 = add nsw i32 %106, -6
  %108 = icmp ult i32 %107, 3
  br i1 %108, label %109, label %164

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.tree_type, ptr %103, i64 0, i32 6
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, 1023
  %113 = and i64 %104, 65535
  %114 = icmp eq i64 %113, 14
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = tail call i32 @vector_type_mode(ptr noundef nonnull %103) #22
  br label %120

117:                                              ; preds = %109
  %118 = lshr i32 %111, 16
  %119 = and i32 %118, 255
  br label %120

120:                                              ; preds = %117, %115
  %121 = phi i32 [ %116, %115 ], [ %119, %117 ]
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !197
  %125 = zext i8 %124 to i32
  %126 = shl nuw nsw i32 %125, 3
  %127 = icmp ult i32 %112, %126
  br i1 %127, label %128, label %164

128:                                              ; preds = %120
  %129 = load i32, ptr %110, align 4
  %130 = and i32 %129, 1023
  %131 = zext nneg i32 %130 to i64
  %132 = icmp eq i64 %131, %1
  br i1 %132, label %133, label %164

133:                                              ; preds = %128
  %134 = load i32, ptr %99, align 8
  %135 = and i32 %134, 255
  %136 = add nsw i32 %135, -1
  %137 = icmp ult i32 %136, 9
  tail call void @llvm.assume(i1 %137)
  %138 = zext nneg i32 %135 to i64
  %139 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !201
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %141
  %143 = load i64, ptr %142, align 8, !tbaa !311
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %146

146:                                              ; preds = %145, %133
  %147 = getelementptr inbounds i8, ptr %99, i64 %143
  %148 = getelementptr inbounds ptr, ptr %147, i64 1
  %149 = load ptr, ptr %148, align 8, !tbaa !186
  %150 = getelementptr inbounds %struct.tree_common, ptr %149, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !197
  %152 = load i64, ptr %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = and i32 %153, 65535
  %155 = add nsw i32 %154, -6
  %156 = icmp ult i32 %155, 3
  br i1 %156, label %157, label %164

157:                                              ; preds = %146
  %158 = getelementptr inbounds %struct.tree_type, ptr %151, i64 0, i32 6
  %159 = load i32, ptr %158, align 4
  %160 = and i32 %159, 1023
  %161 = zext nneg i32 %160 to i64
  %162 = icmp slt i64 %161, %1
  %163 = select i1 %162, ptr %4, ptr %149
  br label %164

164:                                              ; preds = %157, %146, %101, %120, %128, %98
  %165 = phi ptr [ %4, %98 ], [ %4, %128 ], [ %4, %120 ], [ %4, %101 ], [ %4, %146 ], [ %163, %157 ]
  %166 = tail call ptr @expand_expr_real(ptr noundef %165, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %167 = icmp ugt i32 %3, 1
  br i1 %167, label %168, label %199

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.tree_common, ptr %165, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !197
  %171 = load i64, ptr %170, align 8
  %172 = and i64 %171, 65535
  %173 = icmp eq i64 %172, 14
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = tail call i32 @vector_type_mode(ptr noundef nonnull %170) #22
  br label %181

176:                                              ; preds = %168
  %177 = getelementptr inbounds %struct.tree_type, ptr %170, i64 0, i32 6
  %178 = load i32, ptr %177, align 4
  %179 = lshr i32 %178, 16
  %180 = and i32 %179, 255
  br label %181

181:                                              ; preds = %176, %174
  %182 = phi i32 [ %175, %174 ], [ %180, %176 ]
  %183 = icmp eq i32 %182, %3
  br i1 %183, label %199, label %184

184:                                              ; preds = %181
  %185 = load ptr, ptr %169, align 8, !tbaa !197
  %186 = load i64, ptr %185, align 8
  %187 = and i64 %186, 65535
  %188 = icmp eq i64 %187, 14
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = tail call i32 @vector_type_mode(ptr noundef nonnull %185) #22
  br label %196

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.tree_type, ptr %185, i64 0, i32 6
  %193 = load i32, ptr %192, align 4
  %194 = lshr i32 %193, 16
  %195 = and i32 %194, 255
  br label %196

196:                                              ; preds = %191, %189
  %197 = phi i32 [ %190, %189 ], [ %195, %191 ]
  %198 = tail call ptr @convert_modes(i32 noundef %3, i32 noundef %197, ptr noundef %166, i32 noundef 1)
  br label %199

199:                                              ; preds = %196, %181, %164
  %200 = phi ptr [ %198, %196 ], [ %166, %181 ], [ %166, %164 ]
  %201 = load i32, ptr %200, align 8
  %202 = and i32 %201, 16711680
  %203 = icmp eq i32 %202, 65536
  br i1 %203, label %204, label %238

204:                                              ; preds = %199
  %205 = load i32, ptr %0, align 8
  %206 = lshr i32 %205, 16
  %207 = and i32 %206, 255
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %221, label %209

209:                                              ; preds = %204
  %210 = and i32 %205, 65535
  %211 = icmp eq i32 %210, 43
  br i1 %211, label %212, label %238

212:                                              ; preds = %209
  %213 = zext nneg i32 %207 to i64
  %214 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !197
  %216 = icmp eq i8 %215, 2
  %217 = or i64 %2, %1
  %218 = and i64 %217, 7
  %219 = icmp eq i64 %218, 0
  %220 = and i1 %219, %216
  br i1 %220, label %221, label %238

221:                                              ; preds = %212, %204
  %222 = and i32 %205, 65535
  %223 = icmp eq i32 %222, 43
  br i1 %223, label %224, label %230

224:                                              ; preds = %221
  %225 = and i32 %201, 65535
  %226 = icmp eq i32 %225, 43
  %227 = and i64 %2, 7
  %228 = icmp eq i64 %227, 0
  %229 = and i1 %228, %226
  br i1 %229, label %231, label %230

230:                                              ; preds = %224, %221
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5895, ptr noundef nonnull @.str.1) #22
  br label %231

231:                                              ; preds = %224, %230
  %232 = sdiv i64 %2, 8
  %233 = tail call ptr @adjust_address_1(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %232, i32 noundef 1, i32 noundef 1) #22
  %234 = add nsw i64 %1, 7
  %235 = sdiv i64 %234, 8
  %236 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %235) #22
  %237 = tail call ptr @emit_block_move_hints(ptr noundef %233, ptr noundef nonnull %200, ptr noundef %236, i32 noundef 0, i32 noundef 0, i64 noundef -1)
  br label %239

238:                                              ; preds = %212, %209, %199
  tail call void @store_bit_field(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull %200) #22
  br label %239

239:                                              ; preds = %238, %231
  %240 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  br label %38

241:                                              ; preds = %95, %87, %85
  %242 = sdiv i64 %2, 8
  %243 = tail call ptr @adjust_address_1(ptr noundef nonnull %0, i32 noundef %3, i64 noundef %242, i32 noundef 1, i32 noundef 1) #22
  %244 = icmp eq ptr %243, %0
  br i1 %244, label %245, label %247, !prof !411

245:                                              ; preds = %241
  %246 = tail call ptr @copy_rtx(ptr noundef %243) #22
  br label %247

247:                                              ; preds = %241, %245
  %248 = phi ptr [ %246, %245 ], [ %243, %241 ]
  %249 = load i32, ptr %248, align 8
  %250 = and i32 %249, 1879048191
  %251 = or disjoint i32 %250, 268435456
  store i32 %251, ptr %248, align 8
  %252 = and i32 %249, 16777216
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %263, !prof !363

254:                                              ; preds = %247
  %255 = getelementptr inbounds %struct.rtx_def, ptr %248, i64 0, i32 1, i32 0, i32 0, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !197
  %257 = icmp eq ptr %256, null
  br i1 %257, label %263, label %258, !prof !411

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.mem_attrs, ptr %256, i64 0, i32 3
  %260 = load i32, ptr %259, align 8, !tbaa !413
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262, !prof !363

262:                                              ; preds = %258
  tail call void @set_mem_alias_set(ptr noundef nonnull %248, i32 noundef %6) #22
  br label %263

263:                                              ; preds = %254, %262, %258, %247
  %264 = tail call ptr @store_expr(ptr noundef nonnull %4, ptr noundef nonnull %248, i32 noundef 0, i8 noundef zeroext %7)
  br label %38
}

declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #3

declare void @free_temp_slots() local_unnamed_addr #3

declare void @pop_temp_slots() local_unnamed_addr #3

declare ptr @force_not_mem(ptr noundef) local_unnamed_addr #3

declare void @set_mem_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @set_mem_addr_space(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @aggregate_value_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #3

declare ptr @expr_size(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @refs_may_alias_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @emit_library_call(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @emit_storent_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 !prof !185 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63, i32 4, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !235
  %9 = icmp eq i32 %8, 2956
  br i1 %9, label %41, label %10

10:                                               ; preds = %2
  %11 = zext i32 %8 to i64
  %12 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !217
  %14 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 0, i32 2
  %15 = load i16, ptr %14, align 8
  %16 = zext i16 %15 to i32
  %17 = load ptr, ptr %13, align 8, !tbaa !219
  %18 = tail call i32 %17(ptr noundef nonnull %0, i32 noundef %16) #22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 1
  %22 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 1, i32 2
  %23 = load i16, ptr %22, align 8
  %24 = zext i16 %23 to i32
  %25 = load ptr, ptr %21, align 8, !tbaa !219
  %26 = tail call i32 %25(ptr noundef %1, i32 noundef %24) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = tail call ptr @copy_to_mode_reg(i32 noundef %24, ptr noundef %1) #22
  %30 = load ptr, ptr %21, align 8, !tbaa !219
  %31 = tail call i32 %30(ptr noundef %29, i32 noundef %24) #22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28, %20
  %34 = phi ptr [ %1, %20 ], [ %29, %28 ]
  %35 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !257
  %37 = tail call ptr (ptr, ...) %36(ptr noundef nonnull %0, ptr noundef %34) #22
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = tail call ptr @emit_insn(ptr noundef nonnull %37) #22
  br label %41

41:                                               ; preds = %28, %33, %10, %2, %39
  %42 = phi i8 [ 1, %39 ], [ 0, %2 ], [ 0, %10 ], [ 0, %33 ], [ 0, %28 ]
  ret i8 %42
}

declare ptr @gen_label_rtx() local_unnamed_addr #3

declare void @do_pending_stack_adjust() local_unnamed_addr #3

declare void @jumpifnot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_jump_insn(ptr noundef) local_unnamed_addr #3

declare ptr @gen_jump(ptr noundef) local_unnamed_addr #3

declare ptr @emit_barrier() local_unnamed_addr #3

declare ptr @emit_label(ptr noundef) local_unnamed_addr #3

declare ptr @signed_or_unsigned_type_for(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @int_expr_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

declare ptr @builtin_strncpy_read_str(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @expand_expr_real(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #12 !prof !414 {
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %15, label %9, !prof !415

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %22, !prof !415

15:                                               ; preds = %9, %5
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !186
  %19 = icmp eq ptr %18, null
  %20 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %21 = select i1 %19, ptr %20, ptr %18
  br label %53

22:                                               ; preds = %9
  %23 = load ptr, ptr @cfun, align 8, !tbaa !186
  %24 = icmp eq ptr %23, null
  br i1 %24, label %51, label %25, !prof !415

25:                                               ; preds = %22
  %26 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %27 = load i32, ptr %26, align 4, !tbaa !201
  %28 = add i32 %27, -4
  %29 = icmp ult i32 %28, 7
  br i1 %29, label %30, label %51, !prof !416

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !197
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %51, label %34, !prof !417

34:                                               ; preds = %30
  %35 = load i32, ptr @input_location, align 4, !tbaa !201
  %36 = tail call i32 @get_curr_insn_source_location() #22
  %37 = tail call ptr @get_curr_insn_block() #22
  %38 = load i64, ptr %0, align 8
  %39 = and i64 %38, 65535
  %40 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !201
  %42 = add i32 %41, -4
  %43 = icmp ult i32 %42, 7
  br i1 %43, label %44, label %46, !prof !418

44:                                               ; preds = %34
  %45 = load i32, ptr %31, align 8, !tbaa !197
  br label %46

46:                                               ; preds = %34, %44
  %47 = phi i32 [ %45, %44 ], [ 0, %34 ]
  store i32 %47, ptr @input_location, align 4, !tbaa !201
  tail call void @set_curr_insn_source_location(i32 noundef %47) #22
  %48 = tail call ptr @tree_block(ptr noundef nonnull %0) #22
  %49 = load ptr, ptr %48, align 8, !tbaa !186
  tail call void @set_curr_insn_block(ptr noundef %49) #22
  %50 = tail call ptr @expand_expr_real_1(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  store i32 %35, ptr @input_location, align 4, !tbaa !201
  tail call void @set_curr_insn_block(ptr noundef %37) #22
  tail call void @set_curr_insn_source_location(i32 noundef %36) #22
  br label %53

51:                                               ; preds = %25, %30, %22
  %52 = tail call ptr @expand_expr_real_1(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  br label %53

53:                                               ; preds = %46, %51, %15
  %54 = phi ptr [ %21, %15 ], [ %50, %46 ], [ %52, %51 ]
  ret ptr %54
}

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @highest_pow2_factor(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !419 {
  br label %2

2:                                                ; preds = %68, %65, %62, %26, %1
  %3 = phi i64 [ -1, %1 ], [ %32, %26 ], [ %3, %62 ], [ %3, %65 ], [ %3, %68 ]
  %4 = phi ptr [ %0, %1 ], [ %31, %26 ], [ %64, %62 ], [ %67, %65 ], [ %70, %68 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %80 [
    i16 23, label %7
    i16 63, label %26
    i16 64, label %26
    i16 80, label %26
    i16 81, label %26
    i16 65, label %35
    i16 70, label %44
    i16 67, label %44
    i16 69, label %44
    i16 68, label %44
    i16 89, label %62
    i16 116, label %65
    i16 113, label %65
    i16 120, label %65
    i16 52, label %68
    i16 56, label %71
  ], !prof !420

7:                                                ; preds = %2
  %8 = and i64 %5, 134217728
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10, !prof !421

10:                                               ; preds = %7
  %11 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !201
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i64 128, i64 256
  br label %80

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !197
  %18 = sub i64 0, %17
  %19 = and i64 %17, %18
  %20 = icmp eq i64 %19, 0
  %21 = load i32, ptr @ix86_isa_flags, align 4
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i64 128, i64 256, !prof !421
  %25 = select i1 %20, i64 %24, i64 %19, !prof !422
  br label %80

26:                                               ; preds = %2, %2, %2, %2
  %27 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !197
  %29 = tail call i64 @highest_pow2_factor(ptr noundef %28)
  %30 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !197
  %32 = tail call i64 @llvm.umin.i64(i64 %29, i64 %3)
  br label %2

33:                                               ; preds = %80, %71, %35
  %34 = phi i64 [ %43, %35 ], [ %79, %71 ], [ %82, %80 ]
  ret i64 %34

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !197
  %38 = tail call i64 @highest_pow2_factor(ptr noundef %37)
  %39 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !197
  %41 = tail call i64 @highest_pow2_factor(ptr noundef %40)
  %42 = mul i64 %41, %38
  %43 = tail call i64 @llvm.umin.i64(i64 %42, i64 %3)
  br label %33

44:                                               ; preds = %2, %2, %2, %2
  %45 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %46 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !197
  %48 = tail call i32 @integer_pow2p(ptr noundef %47) #22
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %80, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %46, align 8, !tbaa !197
  %52 = tail call i32 @host_integerp(ptr noundef %51, i32 noundef 1) #22
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %80, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %45, align 8, !tbaa !197
  %56 = tail call i64 @highest_pow2_factor(ptr noundef %55)
  %57 = load ptr, ptr %46, align 8, !tbaa !197
  %58 = tail call i64 @tree_low_cst(ptr noundef %57, i32 noundef 1) #22
  %59 = icmp ugt i64 %58, %56
  br i1 %59, label %80, label %60

60:                                               ; preds = %54
  %61 = udiv i64 %56, %58
  br label %80

62:                                               ; preds = %2
  %63 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !197
  br label %2

65:                                               ; preds = %2, %2, %2
  %66 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !197
  br label %2

68:                                               ; preds = %2
  %69 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !197
  br label %2

71:                                               ; preds = %2
  %72 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !197
  %74 = tail call i64 @highest_pow2_factor(ptr noundef %73)
  %75 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !197
  %77 = tail call i64 @highest_pow2_factor(ptr noundef %76)
  %78 = tail call i64 @llvm.umin.i64(i64 %74, i64 %77)
  %79 = tail call i64 @llvm.umin.i64(i64 %78, i64 %3)
  br label %33

80:                                               ; preds = %2, %50, %44, %60, %54, %15, %10
  %81 = phi i64 [ %14, %10 ], [ %25, %15 ], [ %61, %60 ], [ 1, %54 ], [ 1, %44 ], [ 1, %50 ], [ 1, %2 ]
  %82 = tail call i64 @llvm.umin.i64(i64 %81, i64 %3)
  br label %33
}

declare void @emit_cmp_and_jump_insns(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @force_operand(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !423 {
  %3 = load i32, ptr @optimize, align 4, !tbaa !201
  %4 = icmp ne i32 %3, 0
  %5 = icmp eq ptr %1, null
  %6 = or i1 %5, %4
  br i1 %6, label %16, label %7, !prof !424

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !197
  %14 = icmp ult i32 %13, 53
  %15 = select i1 %14, ptr null, ptr %1
  br label %16

16:                                               ; preds = %2, %7, %11
  %17 = phi ptr [ null, %7 ], [ null, %2 ], [ %15, %11 ]
  %18 = load i32, ptr %0, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 39
  br i1 %20, label %21, label %42, !prof !425

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !197
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %26 [
    i16 37, label %42
    i16 43, label %42
  ]

26:                                               ; preds = %21
  %27 = lshr i32 %18, 16
  %28 = and i32 %27, 255
  %29 = lshr i32 %24, 16
  %30 = and i32 %29, 255
  %31 = tail call ptr @force_operand(ptr noundef nonnull %23, ptr noundef null)
  %32 = tail call ptr @force_reg(i32 noundef %30, ptr noundef %31) #22
  %33 = load ptr, ptr %22, align 8, !tbaa !197
  %34 = load i32, ptr %33, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load i32, ptr %37, align 8, !tbaa !197
  %39 = tail call ptr @simplify_gen_subreg(i32 noundef %28, ptr noundef %32, i32 noundef %36, i32 noundef %38) #22
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 65535
  br label %42

42:                                               ; preds = %21, %21, %26, %16
  %43 = phi ptr [ %39, %26 ], [ %0, %16 ], [ %0, %21 ], [ %0, %21 ]
  %44 = phi i32 [ %41, %26 ], [ %19, %16 ], [ 39, %21 ], [ 39, %21 ]
  %45 = icmp eq i32 %44, 50
  %46 = add nsw i32 %44, -49
  %47 = icmp ult i32 %46, 2
  br i1 %47, label %48, label %68, !prof !426

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !197
  %51 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !186
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %53, label %68, !prof !427

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !197
  %56 = load i32, ptr %55, align 8
  %57 = trunc i32 %56 to i16
  switch i16 %57, label %68 [
    i16 45, label %58
    i16 44, label %58
    i16 35, label %58
  ]

58:                                               ; preds = %53, %53, %53
  %59 = icmp eq ptr %17, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %58
  %61 = load i32, ptr %43, align 8
  %62 = lshr i32 %61, 16
  %63 = and i32 %62, 255
  %64 = tail call ptr @gen_reg_rtx(i32 noundef %63) #22
  br label %65

65:                                               ; preds = %60, %58
  %66 = phi ptr [ %17, %58 ], [ %64, %60 ]
  %67 = tail call ptr @emit_move_insn(ptr noundef %66, ptr noundef nonnull %43)
  br label %121

68:                                               ; preds = %53, %42, %48
  %69 = load i32, ptr %43, align 8
  %70 = and i32 %69, 65535
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !201
  %74 = and i32 %73, -2
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %165, !prof !428

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %78 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !197
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65535
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !201
  %85 = icmp eq i32 %84, 9
  %86 = icmp ne i32 %81, 37
  %87 = icmp eq ptr %79, %17
  %88 = select i1 %86, i1 true, i1 %87, !prof !429
  %89 = select i1 %88, ptr null, ptr %17, !prof !429
  %90 = select i1 %85, ptr %17, ptr %89, !prof !429
  br i1 %45, label %91, label %97, !prof !430

91:                                               ; preds = %76
  %92 = icmp eq i32 %81, 30
  br i1 %92, label %93, label %97

93:                                               ; preds = %91
  %94 = lshr i32 %69, 16
  %95 = and i32 %94, 255
  %96 = tail call ptr @negate_rtx(i32 noundef %95, ptr noundef nonnull %79) #22
  br label %97

97:                                               ; preds = %93, %91, %76
  %98 = phi ptr [ %96, %93 ], [ %79, %91 ], [ %79, %76 ]
  %99 = phi i32 [ 49, %93 ], [ 50, %91 ], [ %44, %76 ]
  %100 = icmp eq i32 %99, 49
  br i1 %100, label %101, label %136, !prof !431

101:                                              ; preds = %97
  %102 = load i32, ptr %98, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 30
  br i1 %104, label %105, label %136, !prof !432

105:                                              ; preds = %101
  %106 = load ptr, ptr %77, align 8, !tbaa !197
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 49
  br i1 %109, label %110, label %136, !prof !427

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !197
  %113 = load i32, ptr %112, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 37
  br i1 %115, label %116, label %136

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !197
  %119 = add i32 %118, -53
  %120 = icmp ult i32 %119, 5
  br i1 %120, label %123, label %136

121:                                              ; preds = %65, %143, %149, %151, %155, %157, %159, %161, %163, %178, %181, %184, %187, %200, %194, %192, %212, %123
  %122 = phi ptr [ %135, %123 ], [ %221, %212 ], [ %66, %65 ], [ %164, %163 ], [ %162, %161 ], [ %160, %159 ], [ %158, %157 ], [ %156, %155 ], [ %154, %151 ], [ %150, %149 ], [ %144, %143 ], [ %191, %187 ], [ %173, %184 ], [ %173, %181 ], [ %173, %178 ], [ %43, %200 ], [ %43, %194 ], [ %43, %192 ]
  ret ptr %122

123:                                              ; preds = %116
  %124 = load i32, ptr %43, align 8
  %125 = lshr i32 %124, 16
  %126 = and i32 %125, 255
  %127 = tail call ptr @expand_simple_binop(i32 noundef %126, i32 noundef 49, ptr noundef nonnull %112, ptr noundef nonnull %98, ptr noundef %90, i32 noundef 0, i32 noundef 3) #22
  %128 = load i32, ptr %43, align 8
  %129 = lshr i32 %128, 16
  %130 = and i32 %129, 255
  %131 = load ptr, ptr %77, align 8, !tbaa !197
  %132 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1, i32 0, i32 0, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !197
  %134 = tail call ptr @force_operand(ptr noundef %133, ptr noundef null)
  %135 = tail call ptr @expand_simple_binop(i32 noundef %130, i32 noundef 49, ptr noundef %127, ptr noundef %134, ptr noundef %1, i32 noundef 0, i32 noundef 3) #22
  br label %121

136:                                              ; preds = %116, %110, %105, %101, %97
  %137 = load ptr, ptr %77, align 8, !tbaa !197
  %138 = tail call ptr @force_operand(ptr noundef %137, ptr noundef %90)
  %139 = tail call ptr @force_operand(ptr noundef %98, ptr noundef null)
  %140 = load i32, ptr %43, align 8
  %141 = lshr i32 %140, 16
  %142 = and i32 %141, 255
  switch i32 %99, label %163 [
    i32 52, label %143
    i32 55, label %145
    i32 58, label %155
    i32 59, label %157
    i32 60, label %159
    i32 67, label %161
  ], !prof !433

143:                                              ; preds = %136
  %144 = tail call ptr @expand_mult(i32 noundef %142, ptr noundef %138, ptr noundef %139, ptr noundef %1, i32 noundef 1) #22
  br label %121

145:                                              ; preds = %136
  %146 = zext nneg i32 %142 to i64
  %147 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !197
  switch i8 %148, label %149 [
    i8 2, label %151
    i8 3, label %151
    i8 10, label %151
    i8 12, label %151
  ]

149:                                              ; preds = %145
  %150 = tail call ptr @expand_simple_binop(i32 noundef %142, i32 noundef 55, ptr noundef %138, ptr noundef %139, ptr noundef %1, i32 noundef 1, i32 noundef 3) #22
  br label %121

151:                                              ; preds = %145, %145, %145, %145
  %152 = icmp eq i8 %148, 17
  %153 = select i1 %152, i32 75, i32 67
  %154 = tail call ptr @expand_divmod(i32 noundef 0, i32 noundef %153, i32 noundef %142, ptr noundef %138, ptr noundef %139, ptr noundef %1, i32 noundef 0) #22
  br label %121

155:                                              ; preds = %136
  %156 = tail call ptr @expand_divmod(i32 noundef 1, i32 noundef 71, i32 noundef %142, ptr noundef %138, ptr noundef %139, ptr noundef %1, i32 noundef 0) #22
  br label %121

157:                                              ; preds = %136
  %158 = tail call ptr @expand_divmod(i32 noundef 0, i32 noundef 67, i32 noundef %142, ptr noundef %138, ptr noundef %139, ptr noundef %1, i32 noundef 1) #22
  br label %121

159:                                              ; preds = %136
  %160 = tail call ptr @expand_divmod(i32 noundef 1, i32 noundef 71, i32 noundef %142, ptr noundef %138, ptr noundef %139, ptr noundef %1, i32 noundef 1) #22
  br label %121

161:                                              ; preds = %136
  %162 = tail call ptr @expand_simple_binop(i32 noundef %142, i32 noundef 67, ptr noundef %138, ptr noundef %139, ptr noundef %1, i32 noundef 0, i32 noundef 3) #22
  br label %121

163:                                              ; preds = %136
  %164 = tail call ptr @expand_simple_binop(i32 noundef %142, i32 noundef %99, ptr noundef %138, ptr noundef %139, ptr noundef %1, i32 noundef 1, i32 noundef 3) #22
  br label %121

165:                                              ; preds = %68
  %166 = icmp eq i32 %73, 4
  br i1 %166, label %167, label %192, !prof !434

167:                                              ; preds = %165
  br i1 %5, label %168, label %172

168:                                              ; preds = %167
  %169 = lshr i32 %69, 16
  %170 = and i32 %169, 255
  %171 = tail call ptr @gen_reg_rtx(i32 noundef %170) #22
  br label %172

172:                                              ; preds = %168, %167
  %173 = phi ptr [ %1, %167 ], [ %171, %168 ]
  %174 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !197
  %176 = tail call ptr @force_operand(ptr noundef %175, ptr noundef null)
  %177 = trunc i32 %44 to i16
  switch i16 %177, label %187 [
    i16 99, label %178
    i16 98, label %178
    i16 100, label %178
    i16 101, label %178
    i16 102, label %178
    i16 104, label %181
    i16 106, label %181
    i16 103, label %184
    i16 105, label %184
  ]

178:                                              ; preds = %172, %172, %172, %172, %172
  %179 = icmp eq i32 %44, 99
  %180 = zext i1 %179 to i32
  tail call void @convert_move(ptr noundef %173, ptr noundef %176, i32 noundef %180)
  br label %121

181:                                              ; preds = %172, %172
  %182 = icmp eq i32 %44, 106
  %183 = zext i1 %182 to i32
  tail call void @expand_fix(ptr noundef %173, ptr noundef %176, i32 noundef %183) #22
  br label %121

184:                                              ; preds = %172, %172
  %185 = icmp eq i32 %44, 105
  %186 = zext i1 %185 to i32
  tail call void @expand_float(ptr noundef %173, ptr noundef %176, i32 noundef %186) #22
  br label %121

187:                                              ; preds = %172
  %188 = load i32, ptr %43, align 8
  %189 = lshr i32 %188, 16
  %190 = and i32 %189, 255
  %191 = tail call ptr @expand_simple_unop(i32 noundef %190, i32 noundef %44, ptr noundef %176, ptr noundef %173, i32 noundef 0) #22
  br label %121

192:                                              ; preds = %165
  %193 = icmp eq i32 %70, 39
  br i1 %193, label %194, label %121, !prof !434

194:                                              ; preds = %192
  %195 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !197
  %197 = load i32, ptr %196, align 8
  %198 = and i32 %197, 65535
  %199 = icmp eq i32 %198, 43
  br i1 %199, label %200, label %121

200:                                              ; preds = %194
  %201 = lshr i32 %69, 16
  %202 = and i32 %201, 255
  %203 = zext nneg i32 %202 to i64
  %204 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !197
  %206 = lshr i32 %197, 16
  %207 = and i32 %206, 255
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !197
  %211 = icmp ugt i8 %205, %210
  br i1 %211, label %212, label %121

212:                                              ; preds = %200
  %213 = tail call ptr @force_operand(ptr noundef nonnull %196, ptr noundef null)
  %214 = tail call ptr @force_reg(i32 noundef %207, ptr noundef %213) #22
  %215 = load ptr, ptr %195, align 8, !tbaa !197
  %216 = load i32, ptr %215, align 8
  %217 = lshr i32 %216, 16
  %218 = and i32 %217, 255
  %219 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 1
  %220 = load i32, ptr %219, align 8, !tbaa !197
  %221 = tail call ptr @simplify_gen_subreg(i32 noundef %202, ptr noundef %214, i32 noundef %218, i32 noundef %220) #22
  br label %121
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @categorize_ctor_elements(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #13 !prof !185 {
  store i64 0, ptr %1, align 8, !tbaa !311
  store i64 0, ptr %2, align 8, !tbaa !311
  store i8 0, ptr %3, align 1, !tbaa !197
  %5 = tail call fastcc zeroext i8 @categorize_ctor_elements_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3), !range !409
  ret i8 %5
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @categorize_ctor_elements_1(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #13 !prof !185 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = tail call zeroext i8 @constructor_static_from_elts_p(ptr noundef %0) #22
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = load i64, ptr %0, align 8
  %11 = trunc i64 %10 to i32
  %12 = lshr i32 %11, 26
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  br label %15

15:                                               ; preds = %4, %9
  %16 = phi i8 [ %14, %9 ], [ 1, %4 ]
  %17 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %131, %15
  %19 = phi ptr [ undef, %15 ], [ %39, %131 ]
  %20 = phi i8 [ %16, %15 ], [ %132, %131 ]
  %21 = phi ptr [ undef, %15 ], [ %40, %131 ]
  %22 = phi i64 [ 0, %15 ], [ %133, %131 ]
  %23 = phi i64 [ 0, %15 ], [ %134, %131 ]
  %24 = phi i64 [ 0, %15 ], [ %135, %131 ]
  %25 = load ptr, ptr %17, align 8, !tbaa !197
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = load i32, ptr %25, align 8, !tbaa !435
  br label %29

29:                                               ; preds = %18, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %18 ]
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %24, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %25, i64 0, i32 2, i64 %24
  %35 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %25, i64 0, i32 2, i64 %24, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !437
  %37 = load ptr, ptr %34, align 8, !tbaa !439
  br label %38

38:                                               ; preds = %29, %33
  %39 = phi ptr [ %19, %29 ], [ %37, %33 ]
  %40 = phi ptr [ %21, %29 ], [ %36, %33 ]
  br i1 %32, label %41, label %136

41:                                               ; preds = %38
  %42 = load i64, ptr %39, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 111
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !197
  %48 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !197
  %50 = tail call i32 @host_integerp(ptr noundef %47, i32 noundef 1) #22
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %45
  %53 = tail call i32 @host_integerp(ptr noundef %49, i32 noundef 1) #22
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = tail call i64 @tree_low_cst(ptr noundef %49, i32 noundef 1) #22
  %57 = tail call i64 @tree_low_cst(ptr noundef %47, i32 noundef 1) #22
  %58 = add i64 %56, 1
  %59 = sub i64 %58, %57
  br label %60

60:                                               ; preds = %45, %52, %55, %41
  %61 = phi i64 [ 1, %41 ], [ %59, %55 ], [ 1, %52 ], [ 1, %45 ]
  %62 = load i64, ptr %40, align 8
  %63 = trunc i64 %62 to i16
  switch i16 %63, label %120 [
    i16 51, label %64
    i16 23, label %75
    i16 24, label %75
    i16 25, label %75
    i16 28, label %81
    i16 26, label %88
    i16 27, label %102
  ]

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store i64 0, ptr %5, align 8, !tbaa !311
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  store i64 0, ptr %6, align 8, !tbaa !311
  %65 = call fastcc zeroext i8 @categorize_ctor_elements_1(ptr noundef nonnull %40, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %3), !range !409
  %66 = load i64, ptr %5, align 8, !tbaa !311
  %67 = mul nsw i64 %66, %61
  %68 = add nsw i64 %67, %23
  %69 = load i64, ptr %6, align 8, !tbaa !311
  %70 = mul nsw i64 %69, %61
  %71 = add nsw i64 %70, %22
  %72 = icmp ne i8 %20, 0
  %73 = select i1 %8, i1 %72, i1 false
  %74 = select i1 %73, i8 %65, i8 %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  br label %131

75:                                               ; preds = %60, %60, %60
  %76 = tail call zeroext i8 @initializer_zerop(ptr noundef nonnull %40) #22
  %77 = icmp eq i8 %76, 0
  %78 = select i1 %77, i64 %61, i64 0
  %79 = add nsw i64 %78, %23
  %80 = add nsw i64 %61, %22
  br label %131

81:                                               ; preds = %60
  %82 = getelementptr inbounds %struct.tree_string, ptr %40, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !197
  %84 = sext i32 %83 to i64
  %85 = mul nsw i64 %61, %84
  %86 = add nsw i64 %85, %23
  %87 = add nsw i64 %85, %22
  br label %131

88:                                               ; preds = %60
  %89 = getelementptr inbounds %struct.tree_complex, ptr %40, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !197
  %91 = tail call zeroext i8 @initializer_zerop(ptr noundef %90) #22
  %92 = icmp eq i8 %91, 0
  %93 = select i1 %92, i64 %61, i64 0
  %94 = add nsw i64 %93, %23
  %95 = getelementptr inbounds %struct.tree_complex, ptr %40, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !197
  %97 = tail call zeroext i8 @initializer_zerop(ptr noundef %96) #22
  %98 = icmp eq i8 %97, 0
  %99 = select i1 %98, i64 %61, i64 0
  %100 = add nsw i64 %94, %99
  %101 = add nsw i64 %61, %22
  br label %131

102:                                              ; preds = %60
  %103 = getelementptr inbounds %struct.tree_vector, ptr %40, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !197
  %105 = icmp eq ptr %104, null
  br i1 %105, label %131, label %106

106:                                              ; preds = %102, %106
  %107 = phi ptr [ %118, %106 ], [ %104, %102 ]
  %108 = phi i64 [ %115, %106 ], [ %23, %102 ]
  %109 = phi i64 [ %116, %106 ], [ %22, %102 ]
  %110 = getelementptr inbounds %struct.tree_list, ptr %107, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !197
  %112 = tail call zeroext i8 @initializer_zerop(ptr noundef %111) #22
  %113 = icmp eq i8 %112, 0
  %114 = select i1 %113, i64 %61, i64 0
  %115 = add nsw i64 %114, %108
  %116 = add nsw i64 %109, %61
  %117 = getelementptr inbounds %struct.tree_common, ptr %107, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !197
  %119 = icmp eq ptr %118, null
  br i1 %119, label %131, label %106, !llvm.loop !440

120:                                              ; preds = %60
  %121 = add nsw i64 %61, %23
  %122 = add nsw i64 %61, %22
  %123 = icmp ne i8 %20, 0
  %124 = select i1 %8, i1 %123, i1 false
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !197
  %128 = tail call ptr @initializer_constant_valid_p(ptr noundef nonnull %40, ptr noundef %127) #22
  %129 = icmp ne ptr %128, null
  %130 = zext i1 %129 to i8
  br label %131

131:                                              ; preds = %106, %102, %120, %125, %88, %81, %75, %64
  %132 = phi i8 [ %130, %125 ], [ %20, %120 ], [ %20, %88 ], [ %20, %81 ], [ %20, %75 ], [ %74, %64 ], [ %20, %102 ], [ %20, %106 ]
  %133 = phi i64 [ %122, %125 ], [ %122, %120 ], [ %101, %88 ], [ %87, %81 ], [ %80, %75 ], [ %71, %64 ], [ %22, %102 ], [ %116, %106 ]
  %134 = phi i64 [ %121, %125 ], [ %121, %120 ], [ %100, %88 ], [ %86, %81 ], [ %79, %75 ], [ %68, %64 ], [ %23, %102 ], [ %115, %106 ]
  %135 = add nuw nsw i64 %24, 1
  br label %18, !llvm.loop !441

136:                                              ; preds = %38
  %137 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %138 = load i8, ptr %3, align 1, !tbaa !197
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %176

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !197
  %143 = load i64, ptr %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = and i32 %144, 65535
  %146 = add nsw i32 %145, -17
  %147 = icmp ult i32 %146, 2
  br i1 %147, label %148, label %176

148:                                              ; preds = %140
  br i1 %26, label %174, label %149

149:                                              ; preds = %148
  %150 = load i32, ptr %25, align 8, !tbaa !435
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %174, label %152

152:                                              ; preds = %149
  br i1 %26, label %156, label %153

153:                                              ; preds = %152
  %154 = load i32, ptr %25, align 8, !tbaa !435
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %157, label %156

156:                                              ; preds = %152, %153
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4947, ptr noundef nonnull @.str.1) #22
  br label %157

157:                                              ; preds = %153, %156
  %158 = load ptr, ptr %137, align 8, !tbaa !197
  %159 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %158, i64 0, i32 2, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !437
  %161 = getelementptr inbounds %struct.tree_common, ptr %160, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !197
  %163 = load ptr, ptr %141, align 8, !tbaa !197
  %164 = getelementptr inbounds %struct.tree_type, ptr %163, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !197
  %166 = getelementptr inbounds %struct.tree_type, ptr %162, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !197
  %168 = tail call i32 @simple_cst_equal(ptr noundef %165, ptr noundef %167) #22
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %174

170:                                              ; preds = %157
  %171 = tail call i64 @count_type_elements(ptr noundef %162, i8 noundef zeroext 0)
  %172 = icmp ne i64 %22, %171
  %173 = zext i1 %172 to i8
  br label %174

174:                                              ; preds = %148, %170, %157, %149
  %175 = phi i8 [ 1, %149 ], [ 1, %157 ], [ %173, %170 ], [ 1, %148 ]
  store i8 %175, ptr %3, align 1, !tbaa !197
  br label %176

176:                                              ; preds = %140, %174, %136
  %177 = load i64, ptr %1, align 8, !tbaa !311
  %178 = add nsw i64 %177, %23
  store i64 %178, ptr %1, align 8, !tbaa !311
  %179 = load i64, ptr %2, align 8, !tbaa !311
  %180 = add nsw i64 %179, %22
  store i64 %180, ptr %2, align 8, !tbaa !311
  ret i8 %20
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @count_type_elements(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #13 !prof !185 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %90 [
    i16 15, label %5
    i16 16, label %27
    i16 17, label %91
    i16 18, label %91
    i16 13, label %81
    i16 14, label %82
    i16 8, label %88
    i16 9, label %88
    i16 11, label %88
    i16 6, label %88
    i16 7, label %88
    i16 10, label %88
    i16 5, label %88
    i16 12, label %88
    i16 0, label %89
  ]

5:                                                ; preds = %2
  %6 = tail call ptr @array_type_nelts(ptr noundef nonnull %0) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @host_integerp(ptr noundef nonnull %6, i32 noundef 1) #22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = tail call i64 @tree_low_cst(ptr noundef nonnull %6, i32 noundef 1) #22
  %13 = add nsw i64 %12, 1
  %14 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !197
  %16 = tail call i64 @count_type_elements(ptr noundef %15, i8 noundef zeroext 0)
  %17 = icmp eq i64 %13, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = sdiv i64 9223372036854775807, %13
  %20 = icmp sle i64 %19, %16
  %21 = mul nsw i64 %16, %13
  %22 = select i1 %20, i64 undef, i64 %21
  br label %23

23:                                               ; preds = %18, %11
  %24 = phi i1 [ false, %11 ], [ %20, %18 ]
  %25 = phi i64 [ 0, %11 ], [ %22, %18 ]
  br i1 %24, label %26, label %91

26:                                               ; preds = %23, %8, %5
  br label %91

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !197
  %30 = icmp eq ptr %29, null
  br i1 %30, label %91, label %31

31:                                               ; preds = %27, %76
  %32 = phi ptr [ %79, %76 ], [ %29, %27 ]
  %33 = phi i64 [ %77, %76 ], [ 0, %27 ]
  %34 = load i64, ptr %32, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 31
  br i1 %36, label %37, label %76

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !197
  %40 = tail call i64 @count_type_elements(ptr noundef %39, i8 noundef zeroext 0)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !197
  %45 = icmp eq i8 %1, 0
  br i1 %45, label %73, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !197
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = load i64, ptr %44, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 15
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !197
  %57 = icmp eq ptr %56, null
  br i1 %57, label %73, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_type, ptr %56, i64 0, i32 13
  %60 = load ptr, ptr %59, align 8, !tbaa !197
  %61 = icmp eq ptr %60, null
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  %63 = tail call i32 @integer_zerop(ptr noundef nonnull %60) #22
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %55, align 8, !tbaa !197
  %67 = getelementptr inbounds %struct.tree_type, ptr %66, i64 0, i32 14
  %68 = load ptr, ptr %67, align 8, !tbaa !197
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %0) #22
  %72 = icmp sgt i64 %71, -1
  br i1 %72, label %91, label %73

73:                                               ; preds = %70, %65, %62, %58, %54, %50, %46, %42
  br label %91

74:                                               ; preds = %37
  %75 = add nsw i64 %40, %33
  br label %76

76:                                               ; preds = %31, %74
  %77 = phi i64 [ %75, %74 ], [ %33, %31 ]
  %78 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !197
  %80 = icmp eq ptr %79, null
  br i1 %80, label %91, label %31, !llvm.loop !442

81:                                               ; preds = %2
  br label %91

82:                                               ; preds = %2
  %83 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 1023
  %86 = zext nneg i32 %85 to i64
  %87 = shl nuw i64 1, %86
  br label %91

88:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  br label %91

89:                                               ; preds = %2
  br label %91

90:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5085, ptr noundef nonnull @.str.1) #22
  br label %91

91:                                               ; preds = %76, %27, %2, %2, %73, %70, %26, %23, %90, %89, %88, %82, %81
  %92 = phi i64 [ 0, %90 ], [ 0, %89 ], [ 1, %88 ], [ %87, %82 ], [ 2, %81 ], [ -1, %26 ], [ %25, %23 ], [ -1, %73 ], [ %33, %70 ], [ -1, %2 ], [ -1, %2 ], [ 0, %27 ], [ %77, %76 ]
  ret i64 %92
}

declare ptr @array_type_nelts(ptr noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @component_ref_field_offset(ptr noundef %0) local_unnamed_addr #12 !prof !443 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  %4 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !197
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !201
  %10 = add i32 %9, -4
  %11 = icmp ult i32 %10, 7
  br i1 %11, label %12, label %15, !prof !377

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !197
  br label %15

15:                                               ; preds = %1, %12
  %16 = phi i32 [ %14, %12 ], [ 0, %1 ]
  %17 = icmp eq ptr %3, null
  br i1 %17, label %35, label %18, !prof !377

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !197
  %21 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call ptr @fold_convert_loc(i32 noundef %16, ptr noundef %21, ptr noundef nonnull %3) #22
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi ptr [ %24, %23 ], [ %3, %18 ]
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = lshr i64 %28, 32
  %30 = and i64 %29, 255
  %31 = shl nuw i64 1, %30
  %32 = lshr i64 %31, 3
  %33 = tail call ptr @size_int_kind(i64 noundef %32, i32 noundef 0) #22
  %34 = tail call ptr @size_binop_loc(i32 noundef %16, i32 noundef 65, ptr noundef %26, ptr noundef %33) #22
  br label %45

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.tree_field_decl, ptr %5, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !197
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39, !prof !378

39:                                               ; preds = %35
  %40 = load i64, ptr %37, align 8
  %41 = and i64 %40, 131072
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45, !prof !378

43:                                               ; preds = %39
  %44 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %37, ptr noundef nonnull %0) #22
  br label %45

45:                                               ; preds = %35, %39, %43, %25
  %46 = phi ptr [ %34, %25 ], [ %44, %43 ], [ %37, %39 ], [ %37, %35 ]
  ret ptr %46
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @array_ref_low_bound(ptr noundef %0) local_unnamed_addr #12 !prof !444 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !197
  %6 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !197
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !197
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %29, !prof !380

11:                                               ; preds = %1
  %12 = icmp eq ptr %7, null
  br i1 %12, label %23, label %13, !prof !381

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !197
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17, !prof !381

17:                                               ; preds = %13
  %18 = load i64, ptr %15, align 8
  %19 = and i64 %18, 131072
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %29, !prof !381

21:                                               ; preds = %17
  %22 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %15, ptr noundef %0) #22
  br label %29

23:                                               ; preds = %13, %11
  %24 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !197
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !197
  %28 = tail call ptr @build_int_cst(ptr noundef %27, i64 noundef 0) #22
  br label %29

29:                                               ; preds = %17, %21, %1, %23
  %30 = phi ptr [ %28, %23 ], [ %9, %1 ], [ %22, %21 ], [ %15, %17 ]
  ret ptr %30
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @array_ref_element_size(ptr noundef %0) local_unnamed_addr #12 !prof !445 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !197
  %5 = load ptr, ptr %2, align 8, !tbaa !197
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !197
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !197
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, 65535
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !201
  %14 = add i32 %13, -4
  %15 = icmp ult i32 %14, 7
  br i1 %15, label %16, label %19, !prof !382

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !197
  br label %19

19:                                               ; preds = %1, %16
  %20 = phi i32 [ %18, %16 ], [ 0, %1 ]
  %21 = icmp eq ptr %4, null
  br i1 %21, label %37, label %22, !prof !383

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !197
  %25 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %29, label %27, !prof !384

27:                                               ; preds = %22
  %28 = tail call ptr @fold_convert_loc(i32 noundef %20, ptr noundef %25, ptr noundef nonnull %4) #22
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi ptr [ %28, %27 ], [ %4, %22 ]
  %31 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !197
  %33 = lshr i32 %32, 3
  %34 = zext nneg i32 %33 to i64
  %35 = tail call ptr @size_int_kind(i64 noundef %34, i32 noundef 0) #22
  %36 = tail call ptr @size_binop_loc(i32 noundef %20, i32 noundef 65, ptr noundef %30, ptr noundef %35) #22
  br label %47

37:                                               ; preds = %19
  %38 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !197
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41, !prof !385

41:                                               ; preds = %37
  %42 = load i64, ptr %39, align 8
  %43 = and i64 %42, 131072
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47, !prof !385

45:                                               ; preds = %41
  %46 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %39, ptr noundef nonnull %0) #22
  br label %47

47:                                               ; preds = %37, %41, %45, %29
  %48 = phi ptr [ %36, %29 ], [ %46, %45 ], [ %39, %41 ], [ %39, %37 ]
  ret ptr %48
}

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @double_int_mul(i64, i64, i64, i64) local_unnamed_addr #3

declare { i64, i64 } @tree_to_double_int(ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

declare zeroext i8 @double_int_fits_in_shwi_p(i64, i64) local_unnamed_addr #3

declare i64 @double_int_to_shwi(i64, i64) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @contains_packed_reference(ptr nocapture noundef readonly %0) local_unnamed_addr #16 !prof !185 {
  br label %2

2:                                                ; preds = %28, %1
  %3 = phi ptr [ %0, %1 ], [ %31, %28 ]
  %4 = phi i8 [ 0, %1 ], [ %29, %28 ]
  %5 = load i64, ptr %3, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %32 [
    i16 41, label %7
    i16 42, label %28
    i16 45, label %28
    i16 46, label %28
    i16 43, label %28
    i16 44, label %28
    i16 118, label %28
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !197
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 2199023255552
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !197
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 2199023255552
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !197
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 2199023255552
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %19, %13, %7
  %26 = phi i1 [ true, %13 ], [ true, %7 ], [ %24, %19 ]
  %27 = zext i1 %26 to i8
  br i1 %26, label %32, label %28

28:                                               ; preds = %2, %2, %2, %2, %2, %25, %2
  %29 = phi i8 [ %4, %2 ], [ %27, %25 ], [ %4, %2 ], [ %4, %2 ], [ %4, %2 ], [ %4, %2 ], [ %4, %2 ]
  %30 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !197
  br label %2, !llvm.loop !446

32:                                               ; preds = %25, %2
  %33 = phi i8 [ %4, %2 ], [ %27, %25 ]
  ret i8 %33
}

declare ptr @substitute_placeholder_in_expr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @array_ref_up_bound(ptr noundef %0) local_unnamed_addr #13 !prof !185 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !197
  %6 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !197
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = load i64, ptr %11, align 8
  %15 = and i64 %14, 131072
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %11, ptr noundef %0) #22
  br label %19

19:                                               ; preds = %13, %1, %9, %17
  %20 = phi ptr [ %18, %17 ], [ null, %9 ], [ null, %1 ], [ %11, %13 ]
  ret ptr %20
}

declare ptr @negate_rtx(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @expand_simple_binop(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expand_mult(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expand_divmod(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @expand_fix(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @expand_float(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expand_simple_unop(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @safe_from_p(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !447 {
  br label %4

4:                                                ; preds = %137, %97, %213, %146, %3
  %5 = phi ptr [ %0, %3 ], [ %69, %146 ], [ %69, %213 ], [ %69, %97 ], [ %69, %137 ]
  %6 = phi ptr [ %1, %3 ], [ %148, %146 ], [ %215, %213 ], [ %95, %97 ], [ %139, %137 ]
  %7 = phi i32 [ %2, %3 ], [ 0, %146 ], [ 0, %213 ], [ 0, %97 ], [ 0, %137 ]
  %8 = icmp eq ptr %5, null
  br i1 %8, label %286, label %9, !prof !448

9:                                                ; preds = %4
  %10 = icmp eq i32 %7, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !197
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !197
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  %20 = load i64, ptr %17, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 23
  br i1 %22, label %39, label %23

23:                                               ; preds = %19
  %24 = load i64, ptr %13, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 15
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 14
  %29 = load ptr, ptr %28, align 8, !tbaa !197
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, ptr %29, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 23
  br i1 %34, label %39, label %35

35:                                               ; preds = %31, %27, %23
  %36 = load i32, ptr %5, align 8
  %37 = and i32 %36, 16711680
  %38 = icmp eq i32 %37, 65536
  br i1 %38, label %286, label %39

39:                                               ; preds = %35, %31, %19, %15, %11, %9
  %40 = load i32, ptr %5, align 8
  %41 = and i32 %40, 65535
  %42 = trunc i32 %40 to i16
  switch i16 %42, label %68 [
    i16 43, label %43
    i16 39, label %58
  ]

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !197
  %46 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !186
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %286, label %48

48:                                               ; preds = %43
  %49 = load i32, ptr %45, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 49
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !197
  %55 = icmp eq ptr %54, %46
  br i1 %55, label %286, label %56

56:                                               ; preds = %52, %48
  %57 = icmp eq i32 %41, 39
  br i1 %57, label %58, label %68

58:                                               ; preds = %39, %56
  %59 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !197
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 37
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !197
  %67 = icmp ult i32 %66, 53
  br i1 %67, label %286, label %68

68:                                               ; preds = %39, %58, %64, %56
  %69 = phi ptr [ %60, %64 ], [ %60, %58 ], [ %5, %56 ], [ %5, %39 ]
  %70 = load i64, ptr %6, align 8
  %71 = and i64 %70, 65535
  %72 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !201
  switch i32 %73, label %253 [
    i32 3, label %74
    i32 1, label %286
    i32 0, label %81
    i32 8, label %128
    i32 7, label %141
    i32 5, label %141
    i32 6, label %146
    i32 10, label %149
    i32 4, label %149
    i32 9, label %149
    i32 2, label %252
  ]

74:                                               ; preds = %68
  %75 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %71, i64 11
  %76 = load i8, ptr %75, align 1, !tbaa !197
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %253, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %6, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !197
  br label %253

81:                                               ; preds = %68
  %82 = trunc i64 %70 to i16
  switch i16 %82, label %127 [
    i16 2, label %85
    i16 51, label %83
    i16 0, label %286
  ]

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.tree_constructor, ptr %6, i64 0, i32 1
  br label %101

85:                                               ; preds = %81, %97
  %86 = phi ptr [ %95, %97 ], [ %6, %81 ]
  %87 = getelementptr inbounds %struct.tree_list, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !197
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = tail call i32 @safe_from_p(ptr noundef nonnull %69, ptr noundef nonnull %88, i32 noundef 0), !range !449
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %286, label %93

93:                                               ; preds = %90, %85
  %94 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !197
  %96 = icmp eq ptr %95, null
  br i1 %96, label %286, label %97

97:                                               ; preds = %93
  %98 = load i64, ptr %95, align 8
  %99 = and i64 %98, 65535
  %100 = icmp eq i64 %99, 2
  br i1 %100, label %85, label %4, !llvm.loop !450

101:                                              ; preds = %121, %83
  %102 = phi i64 [ %126, %121 ], [ 0, %83 ]
  %103 = load ptr, ptr %84, align 8, !tbaa !197
  %104 = icmp eq ptr %103, null
  br i1 %104, label %112, label %105

105:                                              ; preds = %101
  %106 = trunc i64 %102 to i32
  %107 = load i32, ptr %103, align 8, !tbaa !435
  %108 = icmp ugt i32 %107, %106
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = and i64 %102, 4294967295
  %111 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %103, i64 0, i32 2, i64 %110
  br label %112

112:                                              ; preds = %101, %105, %109
  %113 = phi ptr [ %111, %109 ], [ null, %105 ], [ null, %101 ]
  %114 = phi i1 [ false, %109 ], [ true, %105 ], [ true, %101 ]
  br i1 %114, label %286, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %113, align 8, !tbaa !439
  %117 = icmp eq ptr %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = tail call i32 @safe_from_p(ptr noundef nonnull %69, ptr noundef nonnull %116, i32 noundef 0), !range !449
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %286, label %121

121:                                              ; preds = %118, %115
  %122 = getelementptr inbounds %struct.constructor_elt_d, ptr %113, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !437
  %124 = tail call i32 @safe_from_p(ptr noundef nonnull %69, ptr noundef %123, i32 noundef 0), !range !449
  %125 = icmp eq i32 %124, 0
  %126 = add i64 %102, 1
  br i1 %125, label %286, label %101, !llvm.loop !451

127:                                              ; preds = %81
  br label %286

128:                                              ; preds = %68
  %129 = and i64 %70, 65535
  %130 = icmp eq i64 %129, 132
  br i1 %130, label %131, label %286

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !197
  %134 = load i64, ptr %133, align 8
  %135 = and i64 %134, 65535
  %136 = icmp eq i64 %135, 32
  br i1 %136, label %137, label %286

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.tree_decl_common, ptr %133, i64 0, i32 5
  %139 = load ptr, ptr %138, align 8, !tbaa !197
  %140 = icmp eq ptr %139, null
  br i1 %140, label %286, label %4

141:                                              ; preds = %68, %68
  %142 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !197
  %144 = tail call i32 @safe_from_p(ptr noundef nonnull %69, ptr noundef %143, i32 noundef 0), !range !449
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %286, label %146

146:                                              ; preds = %68, %141
  %147 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !197
  br label %4

149:                                              ; preds = %68, %68, %68
  %150 = trunc i64 %70 to i16
  switch i16 %150, label %216 [
    i16 121, label %151
    i16 49, label %186
    i16 48, label %186
    i16 47, label %186
    i16 59, label %202
    i16 60, label %212
    i16 61, label %212
    i16 120, label %213
  ]

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !197
  %154 = tail call ptr @staticp(ptr noundef %153) #22
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %286

156:                                              ; preds = %151
  %157 = load i64, ptr %6, align 8
  %158 = and i64 %157, 67108864
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %286

160:                                              ; preds = %156
  %161 = load ptr, ptr %152, align 8, !tbaa !197
  %162 = tail call i32 @safe_from_p(ptr noundef nonnull %69, ptr noundef %161, i32 noundef 0), !range !449
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %286

164:                                              ; preds = %160
  %165 = load ptr, ptr %152, align 8, !tbaa !197
  %166 = load i64, ptr %165, align 8
  %167 = and i64 %166, 65535
  %168 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !201
  %170 = icmp eq i32 %169, 3
  br i1 %170, label %171, label %216

171:                                              ; preds = %164
  %172 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %167, i64 11
  %173 = load i8, ptr %172, align 1, !tbaa !197
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %286, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %165, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !197
  %178 = icmp eq ptr %177, null
  br i1 %178, label %286, label %179

179:                                              ; preds = %175
  %180 = load i32, ptr %177, align 8
  %181 = and i32 %180, 65535
  %182 = icmp eq i32 %181, 43
  br i1 %182, label %183, label %286

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.rtx_def, ptr %177, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !197
  br label %216

186:                                              ; preds = %149, %149, %149
  %187 = load i32, ptr %69, align 8
  %188 = and i32 %187, 65535
  %189 = icmp eq i32 %188, 43
  br i1 %189, label %190, label %216

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1, i32 0, i32 0, i64 1
  %192 = load ptr, ptr %191, align 8, !tbaa !197
  %193 = icmp eq ptr %192, null
  br i1 %193, label %197, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.mem_attrs, ptr %192, i64 0, i32 3
  %196 = load i32, ptr %195, align 8, !tbaa !413
  br label %197

197:                                              ; preds = %190, %194
  %198 = phi i32 [ %196, %194 ], [ 0, %190 ]
  %199 = tail call i32 @get_alias_set(ptr noundef nonnull %6) #22
  %200 = tail call i32 @alias_sets_conflict_p(i32 noundef %198, i32 noundef %199) #22
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %216, label %286

202:                                              ; preds = %149
  %203 = load i32, ptr %69, align 8
  %204 = trunc i32 %203 to i16
  switch i16 %204, label %216 [
    i16 37, label %205
    i16 43, label %286
  ]

205:                                              ; preds = %202
  %206 = and i32 %203, 65535
  %207 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1
  %208 = load i32, ptr %207, align 8, !tbaa !197
  %209 = icmp ult i32 %208, 53
  %210 = icmp eq i32 %206, 43
  %211 = or i1 %210, %209
  br i1 %211, label %286, label %216

212:                                              ; preds = %149, %149
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6623, ptr noundef nonnull @.str.1) #22
  br label %213

213:                                              ; preds = %149, %212
  %214 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !197
  br label %4

216:                                              ; preds = %202, %205, %197, %186, %149, %164, %183
  %217 = phi ptr [ %165, %183 ], [ %165, %164 ], [ %6, %149 ], [ %6, %186 ], [ %6, %197 ], [ %6, %205 ], [ %6, %202 ]
  %218 = phi ptr [ %185, %183 ], [ null, %164 ], [ null, %149 ], [ null, %186 ], [ null, %197 ], [ null, %205 ], [ null, %202 ]
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %253

220:                                              ; preds = %216
  %221 = load i64, ptr %217, align 8
  %222 = and i64 %221, 65535
  %223 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !201
  %225 = icmp eq i32 %224, 9
  br i1 %225, label %226, label %232

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.tree_exp, ptr %217, i64 0, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !197
  %229 = getelementptr inbounds %struct.tree_int_cst, ptr %228, i64 0, i32 1
  %230 = load i64, ptr %229, align 8, !tbaa !197
  %231 = trunc i64 %230 to i32
  br label %236

232:                                              ; preds = %220
  %233 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %222
  %234 = load i8, ptr %233, align 1, !tbaa !197
  %235 = zext i8 %234 to i32
  br label %236

236:                                              ; preds = %226, %232
  %237 = phi i32 [ %231, %226 ], [ %235, %232 ]
  %238 = icmp sgt i32 %237, 0
  br i1 %238, label %239, label %253

239:                                              ; preds = %236
  %240 = zext nneg i32 %237 to i64
  br label %241

241:                                              ; preds = %239, %249
  %242 = phi i64 [ 0, %239 ], [ %250, %249 ]
  %243 = getelementptr inbounds %struct.tree_exp, ptr %217, i64 0, i32 3, i64 %242
  %244 = load ptr, ptr %243, align 8, !tbaa !197
  %245 = icmp eq ptr %244, null
  br i1 %245, label %249, label %246

246:                                              ; preds = %241
  %247 = tail call i32 @safe_from_p(ptr noundef nonnull %69, ptr noundef nonnull %244, i32 noundef 0), !range !449
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %286, label %249

249:                                              ; preds = %241, %246
  %250 = add nuw nsw i64 %242, 1
  %251 = icmp eq i64 %250, %240
  br i1 %251, label %253, label %241, !llvm.loop !452

252:                                              ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6646, ptr noundef nonnull @.str.1) #22
  br label %253

253:                                              ; preds = %249, %236, %68, %78, %74, %216, %252
  %254 = phi ptr [ null, %252 ], [ %218, %216 ], [ null, %74 ], [ %80, %78 ], [ null, %68 ], [ null, %236 ], [ null, %249 ]
  %255 = icmp eq ptr %254, null
  br i1 %255, label %286, label %256

256:                                              ; preds = %253
  %257 = load i32, ptr %254, align 8
  %258 = and i32 %257, 65535
  %259 = icmp eq i32 %258, 39
  br i1 %259, label %260, label %270

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.rtx_def, ptr %254, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !197
  %263 = load i32, ptr %262, align 8
  %264 = and i32 %263, 65535
  %265 = icmp eq i32 %264, 37
  br i1 %265, label %266, label %270

266:                                              ; preds = %260
  %267 = getelementptr inbounds %struct.rtx_def, ptr %262, i64 0, i32 1
  %268 = load i32, ptr %267, align 8, !tbaa !197
  %269 = icmp ult i32 %268, 53
  br i1 %269, label %286, label %270

270:                                              ; preds = %266, %260, %256
  %271 = phi ptr [ %262, %260 ], [ %254, %256 ], [ %262, %266 ]
  %272 = tail call i32 @rtx_equal_p(ptr noundef nonnull %69, ptr noundef nonnull %271) #22
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %286

274:                                              ; preds = %270
  %275 = load i32, ptr %69, align 8
  %276 = and i32 %275, 65535
  %277 = icmp eq i32 %276, 43
  br i1 %277, label %278, label %286

278:                                              ; preds = %274
  %279 = load i32, ptr %271, align 8
  %280 = and i32 %279, 65535
  %281 = icmp eq i32 %280, 43
  br i1 %281, label %282, label %286

282:                                              ; preds = %278
  %283 = tail call i32 @true_dependence(ptr noundef nonnull %271, i32 noundef 0, ptr noundef nonnull %69, ptr noundef nonnull @rtx_addr_varies_p) #22
  %284 = icmp eq i32 %283, 0
  %285 = zext i1 %284 to i32
  br label %286

286:                                              ; preds = %246, %118, %112, %121, %93, %90, %202, %141, %68, %52, %253, %270, %282, %278, %274, %266, %205, %197, %171, %175, %179, %151, %156, %160, %128, %131, %137, %81, %64, %4, %35, %43, %127
  %287 = phi i32 [ 0, %127 ], [ 1, %43 ], [ 1, %35 ], [ 1, %4 ], [ 0, %64 ], [ 1, %81 ], [ 1, %137 ], [ 1, %131 ], [ 1, %128 ], [ 1, %160 ], [ 1, %156 ], [ 1, %151 ], [ 0, %179 ], [ 0, %175 ], [ 0, %171 ], [ 0, %197 ], [ 0, %205 ], [ 0, %266 ], [ 0, %270 ], [ 1, %278 ], [ 1, %274 ], [ %285, %282 ], [ 1, %253 ], [ 1, %52 ], [ %73, %68 ], [ 0, %141 ], [ 0, %202 ], [ 0, %90 ], [ 1, %93 ], [ 0, %121 ], [ 1, %112 ], [ 0, %118 ], [ 0, %246 ]
  ret i32 %287
}

declare ptr @staticp(ptr noundef) local_unnamed_addr #3

declare i32 @alias_sets_conflict_p(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @rtx_addr_varies_p(ptr noundef, i8 noundef zeroext) #3

declare i32 @integer_pow2p(ptr noundef) local_unnamed_addr #3

declare i32 @get_curr_insn_source_location() local_unnamed_addr #3

declare ptr @get_curr_insn_block() local_unnamed_addr #3

declare void @set_curr_insn_source_location(i32 noundef) local_unnamed_addr #3

declare void @set_curr_insn_block(ptr noundef) local_unnamed_addr #3

declare ptr @tree_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @expand_expr_real_1(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #12 !prof !453 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.separate_ops, align 8
  %10 = alloca %struct.mem_address, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  %22 = load i64, ptr %0, align 8
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 65535
  %25 = and i64 %22, 65535
  %26 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !201
  %28 = freeze i32 %27
  %29 = add i32 %28, -4
  %30 = icmp ult i32 %29, 7
  br i1 %30, label %31, label %34, !prof !454

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !197
  br label %34

34:                                               ; preds = %5, %31
  %35 = phi i32 [ %33, %31 ], [ 0, %5 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #22
  %36 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !197
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 14
  br i1 %40, label %41, label %43, !prof !455

41:                                               ; preds = %34
  %42 = tail call i32 @vector_type_mode(ptr noundef nonnull %37) #22
  br label %48

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  br label %48

48:                                               ; preds = %43, %41
  %49 = phi i32 [ %42, %41 ], [ %47, %43 ]
  %50 = load i64, ptr %37, align 8
  %51 = trunc i64 %50 to i32
  %52 = lshr i32 %51, 21
  %53 = and i32 %52, 1
  store i32 %53, ptr %8, align 4, !tbaa !201
  %54 = load i64, ptr %0, align 8
  %55 = and i64 %54, 65535
  %56 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !201
  %58 = icmp eq i32 %57, 9
  br i1 %58, label %74, label %59, !prof !456

59:                                               ; preds = %48
  %60 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %25
  %61 = load i8, ptr %60, align 1, !tbaa !197
  switch i8 %61, label %62 [
    i8 0, label %74
    i8 2, label %65
    i8 1, label %69
  ], !prof !457

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !197
  br label %65

65:                                               ; preds = %59, %62
  %66 = phi ptr [ %64, %62 ], [ null, %59 ]
  %67 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !197
  br label %69

69:                                               ; preds = %59, %65
  %70 = phi ptr [ %66, %65 ], [ null, %59 ]
  %71 = phi ptr [ %68, %65 ], [ null, %59 ]
  %72 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !197
  br label %74

74:                                               ; preds = %59, %69, %48
  %75 = phi ptr [ null, %48 ], [ %70, %69 ], [ null, %59 ]
  %76 = phi ptr [ null, %48 ], [ %71, %69 ], [ null, %59 ]
  %77 = phi ptr [ null, %48 ], [ %73, %69 ], [ null, %59 ]
  store i32 %24, ptr %9, align 8, !tbaa !458
  %78 = getelementptr inbounds %struct.separate_ops, ptr %9, i64 0, i32 1
  store ptr %37, ptr %78, align 8, !tbaa !460
  %79 = getelementptr inbounds %struct.separate_ops, ptr %9, i64 0, i32 2
  store ptr %77, ptr %79, align 8, !tbaa !461
  %80 = getelementptr inbounds %struct.separate_ops, ptr %9, i64 0, i32 3
  store ptr %76, ptr %80, align 8, !tbaa !462
  %81 = getelementptr inbounds %struct.separate_ops, ptr %9, i64 0, i32 4
  store ptr %75, ptr %81, align 8, !tbaa !463
  %82 = getelementptr inbounds %struct.separate_ops, ptr %9, i64 0, i32 5
  store i32 %35, ptr %82, align 8, !tbaa !464
  %83 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %84 = icmp eq ptr %83, %1
  br i1 %84, label %91, label %85, !prof !465

85:                                               ; preds = %74
  %86 = trunc i64 %22 to i16
  switch i16 %86, label %91 [
    i16 118, label %87
    i16 116, label %87
    i16 113, label %87
    i16 56, label %87
  ], !prof !466

87:                                               ; preds = %85, %85, %85, %85
  %88 = load i64, ptr %37, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 19
  br label %91

91:                                               ; preds = %85, %87, %74
  %92 = phi i1 [ true, %74 ], [ %90, %87 ], [ false, %85 ]
  %93 = zext i1 %92 to i32
  br i1 %92, label %107, label %94, !prof !465

94:                                               ; preds = %91
  %95 = load i64, ptr %37, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 8
  br i1 %97, label %98, label %107, !prof !467

98:                                               ; preds = %94
  %99 = zext i32 %49 to i64
  %100 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %99
  %101 = load i16, ptr %100, align 2, !tbaa !234
  %102 = zext i16 %101 to i32
  %103 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 6
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 1023
  %106 = icmp ult i32 %105, %102
  br label %107

107:                                              ; preds = %98, %94, %91
  %108 = phi i1 [ false, %94 ], [ false, %91 ], [ %106, %98 ]
  br i1 %92, label %109, label %159, !prof !465

109:                                              ; preds = %107
  %110 = and i64 %54, 65536
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %2115, label %112, !prof !468

112:                                              ; preds = %109
  %113 = and i64 %54, 524288
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %132, label %115, !prof !469

115:                                              ; preds = %112
  %116 = icmp ne i64 %55, 29
  %117 = icmp ne i32 %49, 0
  %118 = select i1 %116, i1 %117, i1 false
  %119 = icmp ne i32 %49, 1
  %120 = select i1 %118, i1 %119, i1 false
  %121 = icmp ne i32 %3, 3
  %122 = and i1 %121, %120
  br i1 %122, label %123, label %132

123:                                              ; preds = %115
  %124 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef %3, ptr noundef null)
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 65535
  %127 = icmp eq i32 %126, 43
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = tail call ptr @copy_to_reg(ptr noundef nonnull %124) #22
  br label %130

130:                                              ; preds = %128, %123
  %131 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  br label %2115

132:                                              ; preds = %115, %112
  %133 = icmp eq i32 %28, 6
  br i1 %133, label %136, label %134

134:                                              ; preds = %132
  %135 = trunc i64 %22 to i16
  switch i16 %135, label %138 [
    i16 47, label %136
    i16 41, label %136
  ]

136:                                              ; preds = %134, %134, %132
  %137 = tail call ptr @expand_expr_real(ptr noundef %77, ptr noundef %83, i32 noundef 0, i32 noundef %3, ptr noundef null)
  br label %2115

138:                                              ; preds = %134
  %139 = icmp eq i32 %28, 7
  br i1 %139, label %145, label %140, !prof !468

140:                                              ; preds = %138
  %141 = icmp eq i32 %28, 5
  %142 = add nsw i32 %24, -45
  %143 = icmp ult i32 %142, 2
  %144 = or i1 %141, %143
  br i1 %144, label %145, label %150, !prof !468

145:                                              ; preds = %140, %138
  %146 = tail call ptr @expand_expr_real(ptr noundef %77, ptr noundef %83, i32 noundef 0, i32 noundef %3, ptr noundef null)
  %147 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %148 = tail call ptr @expand_expr_real(ptr noundef %76, ptr noundef %147, i32 noundef 0, i32 noundef %3, ptr noundef null)
  %149 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  br label %2115

150:                                              ; preds = %140
  %151 = icmp eq i32 %24, 42
  br i1 %151, label %152, label %159, !prof !468

152:                                              ; preds = %150
  %153 = tail call ptr @expand_expr_real(ptr noundef %77, ptr noundef %83, i32 noundef 0, i32 noundef %3, ptr noundef null)
  %154 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %155 = tail call ptr @expand_expr_real(ptr noundef %76, ptr noundef %154, i32 noundef 0, i32 noundef %3, ptr noundef null)
  %156 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %157 = tail call ptr @expand_expr_real(ptr noundef %75, ptr noundef %156, i32 noundef 0, i32 noundef %3, ptr noundef null)
  %158 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  br label %2115

159:                                              ; preds = %150, %107
  %160 = phi ptr [ %1, %107 ], [ null, %150 ]
  %161 = icmp eq i32 %3, 1
  %162 = and i1 %161, %108
  %163 = select i1 %162, ptr null, ptr %160, !prof !455
  %164 = load i32, ptr @optimize, align 4, !tbaa !201
  %165 = icmp ne i32 %164, 0
  %166 = icmp eq ptr %163, null
  %167 = or i1 %165, %166
  br i1 %167, label %177, label %168, !prof !470

168:                                              ; preds = %159
  %169 = load i32, ptr %163, align 8
  %170 = and i32 %169, 65535
  %171 = icmp eq i32 %170, 37
  br i1 %171, label %172, label %177

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 0, i32 1
  %174 = load i32, ptr %173, align 8, !tbaa !197
  %175 = icmp ult i32 %174, 53
  %176 = select i1 %175, ptr null, ptr %163
  br label %177

177:                                              ; preds = %159, %168, %172
  %178 = phi ptr [ null, %168 ], [ null, %159 ], [ %176, %172 ]
  %179 = trunc i64 %22 to i16
  switch i16 %179, label %2113 [
    i16 30, label %180
    i16 141, label %193
    i16 34, label %291
    i16 32, label %291
    i16 29, label %333
    i16 36, label %333
    i16 23, label %462
    i16 27, label %468
    i16 33, label %492
    i16 24, label %496
    i16 25, label %513
    i16 26, label %530
    i16 28, label %568
    i16 120, label %594
    i16 51, label %634
    i16 49, label %659
    i16 48, label %659
    i16 47, label %659
    i16 152, label %716
    i16 45, label %726
    i16 41, label %914
    i16 42, label %1012
    i16 46, label %1012
    i16 50, label %1526
    i16 59, label %1530
    i16 118, label %1579
    i16 91, label %1831
    i16 92, label %1831
    i16 147, label %1871
    i16 56, label %1888
    i16 57, label %1952
    i16 53, label %1954
    i16 121, label %2014
    i16 43, label %2063
    i16 44, label %2066
    i16 135, label %2069
    i16 133, label %2069
    i16 134, label %2069
    i16 138, label %2069
    i16 140, label %2069
    i16 130, label %2070
    i16 142, label %2070
    i16 143, label %2070
    i16 131, label %2070
    i16 60, label %2071
    i16 61, label %2071
    i16 55, label %2071
    i16 139, label %2071
    i16 129, label %2071
    i16 58, label %2071
    i16 54, label %2071
    i16 124, label %2071
    i16 52, label %2071
    i16 126, label %2071
    i16 125, label %2071
    i16 128, label %2071
    i16 127, label %2071
    i16 137, label %2071
    i16 136, label %2071
    i16 122, label %2072
    i16 150, label %2073
    i16 151, label %2075
    i16 167, label %2084
    i16 119, label %2090
  ], !prof !471

180:                                              ; preds = %177
  %181 = tail call ptr @decl_function_context(ptr noundef %0) #22
  %182 = tail call ptr @label_rtx(ptr noundef %0) #22
  %183 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %182) #22
  %184 = load ptr, ptr @current_function_decl, align 8, !tbaa !186
  %185 = icmp ne ptr %181, %184
  %186 = icmp ne ptr %181, null
  %187 = and i1 %186, %185
  br i1 %187, label %188, label %191

188:                                              ; preds = %180
  %189 = load i32, ptr %183, align 8
  %190 = or i32 %189, 134217728
  store i32 %190, ptr %183, align 8
  br label %191

191:                                              ; preds = %188, %180
  %192 = tail call ptr @gen_rtx_MEM(i32 noundef 14, ptr noundef %183) #22
  br label %2115

193:                                              ; preds = %177
  %194 = load i32, ptr @currently_expanding_to_rtl, align 4, !tbaa !201
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %200, !prof !472

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !197
  %199 = tail call ptr @expand_expr_real_1(ptr noundef %198, ptr noundef %163, i32 noundef %2, i32 noundef %3, ptr noundef null)
  br label %2115

200:                                              ; preds = %193
  %201 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 1), align 8, !tbaa !473
  %202 = icmp eq ptr %201, null
  br i1 %202, label %211, label %203, !prof !472

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %205 = load i32, ptr %204, align 8, !tbaa !197
  %206 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %201, i32 noundef %205) #22
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %211, label %208, !prof !475

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !197
  br label %211

211:                                              ; preds = %200, %203, %208
  %212 = phi ptr [ %210, %208 ], [ null, %203 ], [ null, %200 ]
  %213 = icmp eq ptr %212, null
  br i1 %213, label %263, label %214, !prof !475

214:                                              ; preds = %211
  %215 = tail call ptr @gimple_assign_rhs_to_tree(ptr noundef nonnull %212) #22
  %216 = load i64, ptr %215, align 8
  %217 = and i64 %216, 65535
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %225, label %219, !prof !415

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.tree_common, ptr %215, i64 0, i32 2
  %221 = load ptr, ptr %220, align 8, !tbaa !197
  %222 = load i64, ptr %221, align 8
  %223 = and i64 %222, 65535
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %232, !prof !415

225:                                              ; preds = %219, %214
  %226 = sext i32 %2 to i64
  %227 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %226
  %228 = load ptr, ptr %227, align 8, !tbaa !186
  %229 = icmp eq ptr %228, null
  %230 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %231 = select i1 %229, ptr %230, ptr %228
  br label %263

232:                                              ; preds = %219
  %233 = load ptr, ptr @cfun, align 8, !tbaa !186
  %234 = icmp eq ptr %233, null
  br i1 %234, label %261, label %235, !prof !415

235:                                              ; preds = %232
  %236 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %217
  %237 = load i32, ptr %236, align 4, !tbaa !201
  %238 = add i32 %237, -4
  %239 = icmp ult i32 %238, 7
  br i1 %239, label %240, label %261, !prof !416

240:                                              ; preds = %235
  %241 = getelementptr inbounds %struct.tree_exp, ptr %215, i64 0, i32 1
  %242 = load i32, ptr %241, align 8, !tbaa !197
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %261, label %244, !prof !417

244:                                              ; preds = %240
  %245 = load i32, ptr @input_location, align 4, !tbaa !201
  %246 = tail call i32 @get_curr_insn_source_location() #22
  %247 = tail call ptr @get_curr_insn_block() #22
  %248 = load i64, ptr %215, align 8
  %249 = and i64 %248, 65535
  %250 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %249
  %251 = load i32, ptr %250, align 4, !tbaa !201
  %252 = add i32 %251, -4
  %253 = icmp ult i32 %252, 7
  br i1 %253, label %254, label %256, !prof !418

254:                                              ; preds = %244
  %255 = load i32, ptr %241, align 8, !tbaa !197
  br label %256

256:                                              ; preds = %254, %244
  %257 = phi i32 [ %255, %254 ], [ 0, %244 ]
  store i32 %257, ptr @input_location, align 4, !tbaa !201
  tail call void @set_curr_insn_source_location(i32 noundef %257) #22
  %258 = tail call ptr @tree_block(ptr noundef nonnull %215) #22
  %259 = load ptr, ptr %258, align 8, !tbaa !186
  tail call void @set_curr_insn_block(ptr noundef %259) #22
  %260 = tail call ptr @expand_expr_real_1(ptr noundef nonnull %215, ptr noundef %163, i32 noundef %2, i32 noundef %3, ptr noundef null)
  store i32 %245, ptr @input_location, align 4, !tbaa !201
  tail call void @set_curr_insn_block(ptr noundef %247) #22
  tail call void @set_curr_insn_source_location(i32 noundef %246) #22
  br label %263

261:                                              ; preds = %240, %235, %232
  %262 = tail call ptr @expand_expr_real_1(ptr noundef nonnull %215, ptr noundef %163, i32 noundef %2, i32 noundef %3, ptr noundef null)
  br label %263

263:                                              ; preds = %261, %256, %225, %211
  %264 = phi ptr [ undef, %211 ], [ %231, %225 ], [ %260, %256 ], [ %262, %261 ]
  br i1 %213, label %265, label %2115, !prof !475

265:                                              ; preds = %263
  %266 = load ptr, ptr @SA, align 8, !tbaa !476
  %267 = load ptr, ptr %266, align 8, !tbaa !477
  %268 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %269 = load i32, ptr %268, align 8, !tbaa !197
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds %struct.partition_def, ptr %267, i64 0, i32 1, i64 %270
  %272 = load i32, ptr %271, align 8, !tbaa !479
  %273 = getelementptr inbounds %struct._var_map, ptr %266, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !481
  %275 = icmp eq ptr %274, null
  br i1 %275, label %280, label %276, !prof !482

276:                                              ; preds = %265
  %277 = sext i32 %272 to i64
  %278 = getelementptr inbounds i32, ptr %274, i64 %277
  %279 = load i32, ptr %278, align 4, !tbaa !201
  br label %280

280:                                              ; preds = %276, %265
  %281 = phi i32 [ %279, %276 ], [ %272, %265 ]
  %282 = icmp eq i32 %281, -1
  br i1 %282, label %283, label %284, !prof !482

283:                                              ; preds = %280
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 59, ptr noundef nonnull @.str.1) #22
  br label %284

284:                                              ; preds = %280, %283
  %285 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !483
  %286 = sext i32 %281 to i64
  %287 = getelementptr inbounds ptr, ptr %285, i64 %286
  %288 = load ptr, ptr %287, align 8, !tbaa !186
  %289 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !197
  br label %339

291:                                              ; preds = %177, %177
  %292 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !197
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %317, !prof !484

295:                                              ; preds = %291
  %296 = load ptr, ptr %36, align 8, !tbaa !197
  %297 = load i64, ptr %296, align 8
  %298 = and i64 %297, 65535
  %299 = icmp eq i64 %298, 15
  br i1 %299, label %300, label %303

300:                                              ; preds = %295
  %301 = getelementptr inbounds %struct.tree_common, ptr %296, i64 0, i32 2
  %302 = load ptr, ptr %301, align 8, !tbaa !197
  br label %303

303:                                              ; preds = %295, %300
  %304 = phi ptr [ %302, %300 ], [ %296, %295 ]
  %305 = getelementptr inbounds %struct.tree_type, ptr %304, i64 0, i32 2
  %306 = load ptr, ptr %305, align 8, !tbaa !197
  %307 = icmp eq ptr %306, null
  br i1 %307, label %317, label %308

308:                                              ; preds = %303
  %309 = and i64 %54, 67108864
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %308
  %312 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %313 = load i64, ptr %312, align 8
  %314 = and i64 %313, 33554432
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %311, %308
  tail call void @layout_decl(ptr noundef nonnull %0, i32 noundef 0) #22
  br label %317

317:                                              ; preds = %316, %311, %303, %291
  %318 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !485
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %320, label %333, !prof !484

320:                                              ; preds = %317
  %321 = load i64, ptr %0, align 8
  %322 = and i64 %321, 65535
  %323 = icmp eq i64 %322, 32
  br i1 %323, label %324, label %333

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %326 = load i32, ptr %325, align 8
  %327 = and i32 %326, 49152
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %333, label %329

329:                                              ; preds = %324
  %330 = tail call fastcc ptr @emutls_var_address(ptr noundef nonnull %0)
  %331 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %35, ptr noundef %330) #22
  %332 = tail call ptr @expand_expr_real_1(ptr noundef %331, ptr noundef %163, i32 noundef %2, i32 noundef %3, ptr noundef null)
  br label %2115

333:                                              ; preds = %317, %177, %320, %324, %177
  %334 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !197
  %336 = icmp eq ptr %335, null
  br i1 %336, label %337, label %339, !prof !486

337:                                              ; preds = %333
  tail call void @make_decl_rtl(ptr noundef %0) #22
  %338 = load ptr, ptr %334, align 8, !tbaa !197
  br label %339

339:                                              ; preds = %337, %333, %284
  %340 = phi ptr [ %288, %284 ], [ %338, %337 ], [ %335, %333 ]
  %341 = phi ptr [ %290, %284 ], [ %0, %337 ], [ %0, %333 ]
  %342 = icmp eq ptr %340, null
  br i1 %342, label %343, label %344, !prof !487

343:                                              ; preds = %339
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8451, ptr noundef nonnull @.str.1) #22
  br label %344

344:                                              ; preds = %339, %343
  %345 = tail call ptr @copy_rtx(ptr noundef %340) #22
  %346 = load i64, ptr %341, align 8
  %347 = and i64 %346, 16777216
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %349, label %352, !prof !488

349:                                              ; preds = %344
  tail call void @assemble_external(ptr noundef nonnull %341) #22
  %350 = load i64, ptr %341, align 8
  %351 = or i64 %350, 16777216
  store i64 %351, ptr %341, align 8
  br label %352

352:                                              ; preds = %349, %344
  %353 = tail call ptr @decl_function_context(ptr noundef nonnull %341) #22
  %354 = icmp eq ptr %353, null
  %355 = load ptr, ptr @current_function_decl, align 8
  %356 = icmp eq ptr %353, %355
  %357 = select i1 %354, i1 true, i1 %356, !prof !489
  br i1 %357, label %366, label %358, !prof !490

358:                                              ; preds = %352
  %359 = load i64, ptr %341, align 8
  %360 = and i64 %359, 67108864
  %361 = icmp ne i64 %360, 0
  %362 = and i64 %359, 65535
  %363 = icmp eq i64 %362, 29
  %364 = or i1 %361, %363
  br i1 %364, label %366, label %365, !prof !491

365:                                              ; preds = %358
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8473, ptr noundef nonnull @.str.1) #22
  br label %366

366:                                              ; preds = %352, %358, %365
  %367 = load i32, ptr %345, align 8
  %368 = and i32 %367, 65535
  %369 = icmp eq i32 %368, 43
  br i1 %369, label %370, label %378, !prof !492

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.rtx_def, ptr %345, i64 0, i32 1
  %372 = load ptr, ptr %371, align 8, !tbaa !197
  %373 = load i32, ptr %372, align 8
  %374 = and i32 %373, 65535
  %375 = icmp eq i32 %374, 37
  br i1 %375, label %376, label %378, !prof !484

376:                                              ; preds = %370
  %377 = tail call ptr @validize_mem(ptr noundef nonnull %345) #22
  br label %409

378:                                              ; preds = %370, %366
  %379 = icmp ne i32 %3, 4
  %380 = and i1 %379, %369
  br i1 %380, label %381, label %409, !prof !492

381:                                              ; preds = %378
  %382 = icmp eq ptr %4, null
  br i1 %382, label %384, label %383, !prof !493

383:                                              ; preds = %381
  store ptr %345, ptr %4, align 8, !tbaa !186
  br label %384

384:                                              ; preds = %383, %381
  %385 = tail call ptr @use_anchored_address(ptr noundef nonnull %345) #22
  %386 = add i32 %3, -4
  %387 = icmp ult i32 %386, -2
  br i1 %387, label %388, label %409, !prof !494

388:                                              ; preds = %384
  %389 = getelementptr inbounds %struct.tree_decl_common, ptr %341, i64 0, i32 2
  %390 = load i64, ptr %389, align 8
  %391 = trunc i64 %390 to i32
  %392 = and i32 %391, 255
  %393 = getelementptr inbounds %struct.rtx_def, ptr %385, i64 0, i32 1
  %394 = load ptr, ptr %393, align 8, !tbaa !197
  %395 = getelementptr inbounds %struct.rtx_def, ptr %385, i64 0, i32 1, i32 0, i32 0, i64 1
  %396 = load ptr, ptr %395, align 8, !tbaa !197
  %397 = icmp eq ptr %396, null
  br i1 %397, label %401, label %398, !prof !495

398:                                              ; preds = %388
  %399 = getelementptr inbounds %struct.mem_attrs, ptr %396, i64 0, i32 5
  %400 = load i8, ptr %399, align 8, !tbaa !249
  br label %401

401:                                              ; preds = %388, %398
  %402 = phi i8 [ %400, %398 ], [ 0, %388 ]
  %403 = tail call i32 @memory_address_addr_space_p(i32 noundef %392, ptr noundef %394, i8 noundef zeroext %402) #22
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %409, !prof !495

405:                                              ; preds = %401
  %406 = load ptr, ptr %393, align 8, !tbaa !197
  %407 = tail call ptr @copy_rtx(ptr noundef %406) #22
  %408 = tail call ptr @replace_equiv_address(ptr noundef %385, ptr noundef %407) #22
  br label %409

409:                                              ; preds = %378, %405, %401, %384, %376
  %410 = phi ptr [ %345, %376 ], [ %385, %401 ], [ %385, %405 ], [ %385, %384 ], [ %345, %378 ]
  %411 = phi ptr [ %377, %376 ], [ null, %401 ], [ %408, %405 ], [ null, %384 ], [ null, %378 ]
  %412 = icmp eq ptr %411, null
  br i1 %412, label %426, label %413, !prof !496

413:                                              ; preds = %409
  %414 = load i32, ptr %411, align 8
  %415 = and i32 %414, 65535
  %416 = icmp eq i32 %415, 43
  br i1 %416, label %417, label %2115

417:                                              ; preds = %413
  %418 = getelementptr inbounds %struct.rtx_def, ptr %411, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !197
  %420 = load i32, ptr %419, align 8
  %421 = and i32 %420, 65535
  %422 = icmp eq i32 %421, 37
  br i1 %422, label %423, label %2115

423:                                              ; preds = %417
  %424 = getelementptr inbounds %struct.tree_decl_common, ptr %341, i64 0, i32 3
  %425 = load i32, ptr %424, align 8, !tbaa !197
  tail call void @mark_reg_pointer(ptr noundef nonnull %419, i32 noundef %425) #22
  br label %2115

426:                                              ; preds = %409
  %427 = load i32, ptr %410, align 8
  %428 = and i32 %427, 65535
  %429 = icmp eq i32 %428, 37
  br i1 %429, label %430, label %2115, !prof !497

430:                                              ; preds = %426
  %431 = lshr i32 %427, 16
  %432 = getelementptr inbounds %struct.tree_decl_common, ptr %341, i64 0, i32 2
  %433 = load i64, ptr %432, align 8
  %434 = trunc i64 %433 to i32
  %435 = xor i32 %431, %434
  %436 = and i32 %435, 255
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %2115, label %438, !prof !498

438:                                              ; preds = %430
  %439 = call i32 @promote_decl_mode(ptr noundef nonnull %341, ptr noundef nonnull %8) #22
  %440 = load i32, ptr %410, align 8
  %441 = lshr i32 %440, 16
  %442 = and i32 %441, 255
  %443 = icmp eq i32 %442, %439
  br i1 %443, label %445, label %444

444:                                              ; preds = %438
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8521, ptr noundef nonnull @.str.1) #22
  br label %445

445:                                              ; preds = %438, %444
  %446 = call ptr @gen_lowpart_SUBREG(i32 noundef %49, ptr noundef nonnull %410) #22
  %447 = load i32, ptr %446, align 8
  %448 = or i32 %447, 268435456
  store i32 %448, ptr %446, align 8
  %449 = load i32, ptr %8, align 4, !tbaa !201
  %450 = icmp slt i32 %449, 0
  br i1 %450, label %451, label %453

451:                                              ; preds = %445
  %452 = or i32 %447, 402653184
  br label %460

453:                                              ; preds = %445
  %454 = and i32 %448, -134217729
  store i32 %454, ptr %446, align 8
  %455 = load i32, ptr %8, align 4, !tbaa !201
  %456 = shl i32 %455, 26
  %457 = and i32 %456, 67108864
  %458 = and i32 %448, -201326593
  %459 = or disjoint i32 %457, %458
  br label %460

460:                                              ; preds = %453, %451
  %461 = phi i32 [ %459, %453 ], [ %452, %451 ]
  store i32 %461, ptr %446, align 8
  br label %2115

462:                                              ; preds = %177
  %463 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %464 = load i64, ptr %463, align 8, !tbaa !197
  %465 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %466 = load i64, ptr %465, align 8, !tbaa !197
  %467 = tail call ptr @immed_double_const(i64 noundef %464, i64 noundef %466, i32 noundef %49) #22
  br label %2115

468:                                              ; preds = %177
  %469 = zext i32 %49 to i64
  %470 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %469
  %471 = load i8, ptr %470, align 1, !tbaa !197
  switch i8 %471, label %480 [
    i8 12, label %472
    i8 17, label %472
    i8 13, label %472
    i8 14, label %472
    i8 15, label %472
    i8 16, label %472
    i8 2, label %474
  ]

472:                                              ; preds = %468, %468, %468, %468, %468, %468
  %473 = tail call fastcc ptr @const_vector_from_tree(ptr noundef %0)
  br label %2115

474:                                              ; preds = %468
  %475 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !395
  %476 = tail call ptr %475(i32 noundef %49, i32 noundef 1) #22
  %477 = icmp eq ptr %476, null
  br i1 %477, label %480, label %478

478:                                              ; preds = %474
  %479 = tail call ptr @fold_unary_loc(i32 noundef %35, i32 noundef 118, ptr noundef nonnull %476, ptr noundef %0) #22
  br label %480

480:                                              ; preds = %474, %478, %468
  %481 = phi ptr [ null, %468 ], [ %479, %478 ], [ null, %474 ]
  %482 = icmp eq ptr %481, null
  br i1 %482, label %483, label %487

483:                                              ; preds = %480
  %484 = getelementptr inbounds %struct.tree_vector, ptr %0, i64 0, i32 1
  %485 = load ptr, ptr %484, align 8, !tbaa !197
  %486 = tail call ptr @build_constructor_from_list(ptr noundef nonnull %37, ptr noundef %485) #22
  br label %487

487:                                              ; preds = %483, %480
  %488 = phi ptr [ %481, %480 ], [ %486, %483 ]
  %489 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %490 = select i1 %92, ptr %489, ptr %163
  %491 = tail call ptr @expand_expr_real(ptr noundef %488, ptr noundef %490, i32 noundef %2, i32 noundef %3, ptr noundef null)
  br label %2115

492:                                              ; preds = %177
  %493 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %494 = load ptr, ptr %493, align 8, !tbaa !197
  %495 = tail call ptr @expand_expr_real(ptr noundef %494, ptr noundef %163, i32 noundef 0, i32 noundef %3, ptr noundef null)
  br label %2115

496:                                              ; preds = %177
  %497 = getelementptr inbounds %struct.tree_real_cst, ptr %0, i64 0, i32 1
  %498 = load ptr, ptr %497, align 8, !tbaa !197
  %499 = load ptr, ptr %36, align 8, !tbaa !197
  %500 = load i64, ptr %499, align 8
  %501 = and i64 %500, 65535
  %502 = icmp eq i64 %501, 14
  br i1 %502, label %503, label %505

503:                                              ; preds = %496
  %504 = tail call i32 @vector_type_mode(ptr noundef nonnull %499) #22
  br label %510

505:                                              ; preds = %496
  %506 = getelementptr inbounds %struct.tree_type, ptr %499, i64 0, i32 6
  %507 = load i32, ptr %506, align 4
  %508 = lshr i32 %507, 16
  %509 = and i32 %508, 255
  br label %510

510:                                              ; preds = %505, %503
  %511 = phi i32 [ %504, %503 ], [ %509, %505 ]
  %512 = tail call ptr @const_double_from_real_value(ptr noundef byval(%struct.real_value) align 8 %498, i32 noundef %511) #22
  br label %2115

513:                                              ; preds = %177
  %514 = getelementptr inbounds %struct.tree_fixed_cst, ptr %0, i64 0, i32 1
  %515 = load ptr, ptr %514, align 8, !tbaa !197
  %516 = load ptr, ptr %36, align 8, !tbaa !197
  %517 = load i64, ptr %516, align 8
  %518 = and i64 %517, 65535
  %519 = icmp eq i64 %518, 14
  br i1 %519, label %520, label %522

520:                                              ; preds = %513
  %521 = tail call i32 @vector_type_mode(ptr noundef nonnull %516) #22
  br label %527

522:                                              ; preds = %513
  %523 = getelementptr inbounds %struct.tree_type, ptr %516, i64 0, i32 6
  %524 = load i32, ptr %523, align 4
  %525 = lshr i32 %524, 16
  %526 = and i32 %525, 255
  br label %527

527:                                              ; preds = %522, %520
  %528 = phi i32 [ %521, %520 ], [ %526, %522 ]
  %529 = tail call ptr @const_fixed_from_fixed_value(ptr noundef byval(%struct.fixed_value) align 8 %515, i32 noundef %528) #22
  br label %2115

530:                                              ; preds = %177
  br i1 %166, label %568, label %531

531:                                              ; preds = %530
  %532 = load i32, ptr %163, align 8
  %533 = and i32 %532, 65535
  %534 = icmp eq i32 %533, 41
  br i1 %534, label %535, label %568

535:                                              ; preds = %531
  %536 = load ptr, ptr %36, align 8, !tbaa !197
  %537 = getelementptr inbounds %struct.tree_common, ptr %536, i64 0, i32 2
  %538 = load ptr, ptr %537, align 8, !tbaa !197
  %539 = load i64, ptr %538, align 8
  %540 = and i64 %539, 65535
  %541 = icmp eq i64 %540, 14
  br i1 %541, label %542, label %544

542:                                              ; preds = %535
  %543 = tail call i32 @vector_type_mode(ptr noundef nonnull %538) #22
  br label %549

544:                                              ; preds = %535
  %545 = getelementptr inbounds %struct.tree_type, ptr %538, i64 0, i32 6
  %546 = load i32, ptr %545, align 4
  %547 = lshr i32 %546, 16
  %548 = and i32 %547, 255
  br label %549

549:                                              ; preds = %544, %542
  %550 = phi i32 [ %543, %542 ], [ %548, %544 ]
  %551 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 0, i32 1
  %552 = load ptr, ptr %551, align 8, !tbaa !197
  %553 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 0, i32 1, i32 0, i32 0, i64 1
  %554 = load ptr, ptr %553, align 8, !tbaa !197
  %555 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 1
  %556 = load ptr, ptr %555, align 8, !tbaa !197
  %557 = tail call ptr @expand_expr_real(ptr noundef %556, ptr noundef %552, i32 noundef %550, i32 noundef 0, ptr noundef null)
  store ptr %557, ptr %6, align 8, !tbaa !186
  %558 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 2
  %559 = load ptr, ptr %558, align 8, !tbaa !197
  %560 = tail call ptr @expand_expr_real(ptr noundef %559, ptr noundef %554, i32 noundef %550, i32 noundef 0, ptr noundef null)
  store ptr %560, ptr %7, align 8, !tbaa !186
  %561 = icmp eq ptr %557, %552
  br i1 %561, label %564, label %562

562:                                              ; preds = %549
  %563 = tail call ptr @emit_move_insn(ptr noundef %552, ptr noundef %557)
  br label %564

564:                                              ; preds = %562, %549
  %565 = icmp eq ptr %560, %554
  br i1 %565, label %2115, label %566

566:                                              ; preds = %564
  %567 = tail call ptr @emit_move_insn(ptr noundef %554, ptr noundef %560)
  br label %2115

568:                                              ; preds = %530, %531, %177
  %569 = tail call ptr @output_constant_def(ptr noundef %0, i32 noundef 1) #22
  %570 = icmp eq i32 %3, 4
  br i1 %570, label %573, label %571

571:                                              ; preds = %568
  %572 = tail call ptr @use_anchored_address(ptr noundef %569) #22
  br label %573

573:                                              ; preds = %568, %571
  %574 = phi ptr [ %572, %571 ], [ %569, %568 ]
  %575 = add i32 %3, -5
  %576 = icmp ult i32 %575, -3
  br i1 %576, label %577, label %2115

577:                                              ; preds = %573
  %578 = getelementptr inbounds %struct.rtx_def, ptr %574, i64 0, i32 1
  %579 = load ptr, ptr %578, align 8, !tbaa !197
  %580 = getelementptr inbounds %struct.rtx_def, ptr %574, i64 0, i32 1, i32 0, i32 0, i64 1
  %581 = load ptr, ptr %580, align 8, !tbaa !197
  %582 = icmp eq ptr %581, null
  br i1 %582, label %586, label %583

583:                                              ; preds = %577
  %584 = getelementptr inbounds %struct.mem_attrs, ptr %581, i64 0, i32 5
  %585 = load i8, ptr %584, align 8, !tbaa !249
  br label %586

586:                                              ; preds = %577, %583
  %587 = phi i8 [ %585, %583 ], [ 0, %577 ]
  %588 = tail call i32 @memory_address_addr_space_p(i32 noundef %49, ptr noundef %579, i8 noundef zeroext %587) #22
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %590, label %2115

590:                                              ; preds = %586
  %591 = load ptr, ptr %578, align 8, !tbaa !197
  %592 = tail call ptr @copy_rtx(ptr noundef %591) #22
  %593 = tail call ptr @replace_equiv_address(ptr noundef %574, ptr noundef %592) #22
  br label %2115

594:                                              ; preds = %177
  %595 = tail call ptr @expand_expr_real_1(ptr noundef %77, ptr noundef %163, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %596 = load i64, ptr %0, align 8
  %597 = and i64 %596, 134217728
  %598 = icmp eq i64 %597, 0
  br i1 %598, label %599, label %2115

599:                                              ; preds = %594
  %600 = load i32, ptr %595, align 8
  %601 = and i32 %600, 16711680
  %602 = icmp eq i32 %601, 65536
  br i1 %602, label %603, label %604

603:                                              ; preds = %599
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8631, ptr noundef nonnull @.str.1) #22
  br label %604

604:                                              ; preds = %599, %603
  %605 = load i64, ptr %0, align 8
  %606 = and i64 %605, 65535
  %607 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %606
  %608 = load i32, ptr %607, align 4, !tbaa !201
  %609 = add i32 %608, -4
  %610 = icmp ult i32 %609, 7
  br i1 %610, label %611, label %614

611:                                              ; preds = %604
  %612 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %613 = load i32, ptr %612, align 8, !tbaa !197
  br label %614

614:                                              ; preds = %604, %611
  %615 = phi i32 [ %613, %611 ], [ 0, %604 ]
  %616 = load ptr, ptr %36, align 8, !tbaa !197
  %617 = tail call ptr @build_decl_stat(i32 noundef %615, i32 noundef 32, ptr noundef null, ptr noundef %616) #22
  %618 = getelementptr inbounds %struct.tree_decl_common, ptr %617, i64 0, i32 2
  %619 = load i64, ptr %618, align 8
  %620 = or i64 %619, 5120
  store i64 %620, ptr %618, align 8
  %621 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  store ptr %617, ptr %621, align 8, !tbaa !197
  %622 = load i64, ptr %0, align 8
  %623 = or i64 %622, 134217728
  store i64 %623, ptr %0, align 8
  %624 = load i32, ptr %595, align 8
  %625 = and i32 %624, 65535
  %626 = zext nneg i32 %625 to i64
  %627 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %626
  %628 = load i32, ptr %627, align 4, !tbaa !201
  %629 = icmp eq i32 %628, 9
  br i1 %629, label %632, label %630

630:                                              ; preds = %614
  %631 = tail call ptr @copy_to_reg(ptr noundef nonnull %595) #22
  br label %632

632:                                              ; preds = %630, %614
  %633 = phi ptr [ %595, %614 ], [ %631, %630 ]
  tail call void @set_decl_rtl(ptr noundef %617, ptr noundef %633) #22
  br label %2115

634:                                              ; preds = %177
  br i1 %92, label %635, label %657

635:                                              ; preds = %634
  %636 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  br label %637

637:                                              ; preds = %635, %654
  %638 = phi ptr [ %652, %654 ], [ undef, %635 ]
  %639 = phi i64 [ %656, %654 ], [ 0, %635 ]
  %640 = load ptr, ptr %636, align 8, !tbaa !197
  %641 = icmp eq ptr %640, null
  br i1 %641, label %644, label %642

642:                                              ; preds = %637
  %643 = load i32, ptr %640, align 8, !tbaa !435
  br label %644

644:                                              ; preds = %637, %642
  %645 = phi i32 [ %643, %642 ], [ 0, %637 ]
  %646 = zext i32 %645 to i64
  %647 = icmp ult i64 %639, %646
  br i1 %647, label %648, label %651

648:                                              ; preds = %644
  %649 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %640, i64 0, i32 2, i64 %639, i32 1
  %650 = load ptr, ptr %649, align 8, !tbaa !437
  br label %651

651:                                              ; preds = %644, %648
  %652 = phi ptr [ %638, %644 ], [ %650, %648 ]
  %653 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  br i1 %647, label %654, label %2115

654:                                              ; preds = %651
  %655 = tail call ptr @expand_expr_real(ptr noundef %652, ptr noundef %653, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %656 = add nuw nsw i64 %639, 1
  br label %637, !llvm.loop !499

657:                                              ; preds = %634
  %658 = tail call fastcc ptr @expand_constructor(ptr noundef %0, ptr noundef %163, i32 noundef %3, i8 noundef zeroext 0)
  br label %2115

659:                                              ; preds = %177, %177, %177
  %660 = icmp eq i32 %3, 5
  br i1 %660, label %668, label %661, !prof !500

661:                                              ; preds = %659
  %662 = tail call ptr @fold_read_from_constant_string(ptr noundef %0) #22
  %663 = icmp eq ptr %662, null
  br i1 %663, label %666, label %664, !prof !501

664:                                              ; preds = %661
  %665 = tail call ptr @expand_expr_real(ptr noundef nonnull %662, ptr noundef %163, i32 noundef %2, i32 noundef %3, ptr noundef null)
  br label %666

666:                                              ; preds = %661, %664
  %667 = phi ptr [ %665, %664 ], [ undef, %661 ]
  br i1 %663, label %668, label %2115, !prof !501

668:                                              ; preds = %666, %659
  %669 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 2
  %670 = load ptr, ptr %669, align 8, !tbaa !197
  %671 = load i64, ptr %670, align 8
  %672 = trunc i64 %671 to i16
  switch i16 %672, label %681 [
    i16 10, label %673
    i16 12, label %673
  ], !prof !502

673:                                              ; preds = %668, %668
  %674 = getelementptr inbounds %struct.tree_common, ptr %670, i64 0, i32 2
  %675 = load ptr, ptr %674, align 8, !tbaa !197
  %676 = load i64, ptr %675, align 8
  %677 = lshr i64 %676, 56
  %678 = trunc i64 %677 to i8
  %679 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !282
  %680 = tail call i32 %679(i8 noundef zeroext %678) #22, !prof !503
  br label %681

681:                                              ; preds = %668, %673
  %682 = phi i32 [ %680, %673 ], [ 16, %668 ]
  %683 = phi i8 [ %678, %673 ], [ 0, %668 ]
  %684 = tail call ptr @expand_expr_real(ptr noundef %77, ptr noundef null, i32 noundef 0, i32 noundef 2, ptr noundef null)
  store ptr %684, ptr %6, align 8, !tbaa !186
  %685 = tail call ptr @memory_address_addr_space(i32 noundef %49, ptr noundef %684, i8 noundef zeroext %683) #22
  store ptr %685, ptr %6, align 8, !tbaa !186
  %686 = icmp eq i32 %24, 48
  br i1 %686, label %687, label %696, !prof !500

687:                                              ; preds = %681
  %688 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 7
  %689 = load i32, ptr %688, align 8, !tbaa !197
  %690 = lshr i32 %689, 3
  %691 = sub nsw i32 0, %690
  %692 = sext i32 %691 to i64
  %693 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %692) #22
  %694 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef %682, ptr noundef %685, ptr noundef %693) #22
  store ptr %694, ptr %6, align 8, !tbaa !186
  %695 = tail call ptr @memory_address_addr_space(i32 noundef %49, ptr noundef %694, i8 noundef zeroext %683) #22
  store ptr %695, ptr %6, align 8, !tbaa !186
  br label %696

696:                                              ; preds = %687, %681
  %697 = load ptr, ptr %6, align 8, !tbaa !186
  %698 = tail call ptr @gen_rtx_MEM(i32 noundef %49, ptr noundef %697) #22
  tail call void @set_mem_attributes(ptr noundef %698, ptr noundef %0, i32 noundef 0) #22
  tail call void @set_mem_addr_space(ptr noundef %698, i8 noundef zeroext %683) #22
  %699 = icmp eq i32 %24, 49
  br i1 %699, label %700, label %2115, !prof !500

700:                                              ; preds = %696
  %701 = icmp ult i32 %3, 2
  br i1 %701, label %703, label %702

702:                                              ; preds = %700
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8712, ptr noundef nonnull @.str.1) #22
  br label %703

703:                                              ; preds = %700, %702
  %704 = sext i32 %49 to i64
  %705 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 %704
  %706 = load i32, ptr %705, align 4, !tbaa !235
  %707 = icmp eq i32 %706, 2956
  br i1 %707, label %708, label %709

708:                                              ; preds = %703
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8716, ptr noundef nonnull @.str.1) #22
  br label %709

709:                                              ; preds = %703, %708
  %710 = tail call ptr @gen_reg_rtx(i32 noundef %49) #22
  %711 = sext i32 %706 to i64
  %712 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %711, i32 2
  %713 = load ptr, ptr %712, align 8, !tbaa !257
  %714 = tail call ptr (ptr, ...) %713(ptr noundef %710, ptr noundef %698) #22
  %715 = tail call ptr @emit_insn(ptr noundef %714) #22
  br label %2115

716:                                              ; preds = %177
  %717 = load ptr, ptr %36, align 8, !tbaa !197
  %718 = load i64, ptr %717, align 8
  %719 = lshr i64 %718, 56
  %720 = trunc i64 %719 to i8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #22
  call void @get_address_description(ptr noundef %0, ptr noundef nonnull %10) #22
  %721 = call ptr @addr_for_mem_ref(ptr noundef nonnull %10, i8 noundef zeroext %720, i8 noundef zeroext 1) #22
  store ptr %721, ptr %6, align 8, !tbaa !186
  %722 = call ptr @memory_address_addr_space(i32 noundef %49, ptr noundef %721, i8 noundef zeroext %720) #22
  store ptr %722, ptr %6, align 8, !tbaa !186
  %723 = call ptr @gen_rtx_MEM(i32 noundef %49, ptr noundef %722) #22
  %724 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 2
  %725 = load ptr, ptr %724, align 8, !tbaa !197
  call void @set_mem_attributes(ptr noundef %723, ptr noundef %725, i32 noundef 0) #22
  call void @set_mem_addr_space(ptr noundef %723, i8 noundef zeroext %720) #22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #22
  br label %2115

726:                                              ; preds = %177
  switch i32 %3, label %727 [
    i32 6, label %734
    i32 4, label %734
    i32 3, label %734
  ], !prof !504

727:                                              ; preds = %726
  %728 = tail call ptr @fold_read_from_constant_string(ptr noundef %0) #22
  %729 = icmp eq ptr %728, null
  br i1 %729, label %732, label %730, !prof !505

730:                                              ; preds = %727
  %731 = tail call ptr @expand_expr_real(ptr noundef nonnull %728, ptr noundef %163, i32 noundef %2, i32 noundef %3, ptr noundef null)
  br label %732

732:                                              ; preds = %727, %730
  %733 = phi ptr [ %731, %730 ], [ undef, %727 ]
  br i1 %729, label %734, label %911, !prof !505

734:                                              ; preds = %726, %726, %726, %732
  %735 = phi ptr [ %733, %732 ], [ undef, %726 ], [ undef, %726 ], [ undef, %726 ]
  switch i32 %3, label %736 [
    i32 6, label %780
    i32 4, label %780
    i32 3, label %780
  ], !prof !504

736:                                              ; preds = %734
  %737 = load i64, ptr %77, align 8
  %738 = and i64 %737, 131071
  %739 = icmp eq i64 %738, 51
  br i1 %739, label %740, label %780, !prof !506

740:                                              ; preds = %736
  %741 = load i64, ptr %76, align 8
  %742 = and i64 %741, 65535
  %743 = icmp eq i64 %742, 23
  br i1 %743, label %744, label %780

744:                                              ; preds = %740
  %745 = getelementptr inbounds %struct.tree_constructor, ptr %77, i64 0, i32 1
  br label %746

746:                                              ; preds = %766, %744
  %747 = phi ptr [ %764, %766 ], [ undef, %744 ]
  %748 = phi ptr [ %765, %766 ], [ undef, %744 ]
  %749 = phi i64 [ %769, %766 ], [ 0, %744 ]
  %750 = load ptr, ptr %745, align 8, !tbaa !197
  %751 = icmp eq ptr %750, null
  br i1 %751, label %754, label %752

752:                                              ; preds = %746
  %753 = load i32, ptr %750, align 8, !tbaa !435
  br label %754

754:                                              ; preds = %746, %752
  %755 = phi i32 [ %753, %752 ], [ 0, %746 ]
  %756 = zext i32 %755 to i64
  %757 = icmp ult i64 %749, %756
  br i1 %757, label %758, label %763

758:                                              ; preds = %754
  %759 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %750, i64 0, i32 2, i64 %749
  %760 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %750, i64 0, i32 2, i64 %749, i32 1
  %761 = load ptr, ptr %760, align 8, !tbaa !437
  %762 = load ptr, ptr %759, align 8, !tbaa !439
  br label %763

763:                                              ; preds = %754, %758
  %764 = phi ptr [ %747, %754 ], [ %761, %758 ]
  %765 = phi ptr [ %748, %754 ], [ %762, %758 ]
  br i1 %757, label %766, label %777

766:                                              ; preds = %763
  %767 = tail call i32 @tree_int_cst_equal(ptr noundef %765, ptr noundef nonnull %76) #22
  %768 = icmp eq i32 %767, 0
  %769 = add nuw nsw i64 %749, 1
  br i1 %768, label %746, label %770, !llvm.loop !507

770:                                              ; preds = %766
  %771 = load i64, ptr %764, align 8
  %772 = and i64 %771, 65536
  %773 = icmp eq i64 %772, 0
  br i1 %773, label %774, label %777

774:                                              ; preds = %770
  %775 = tail call ptr @fold(ptr noundef nonnull %764) #22
  %776 = tail call ptr @expand_expr_real(ptr noundef %775, ptr noundef %163, i32 noundef %2, i32 noundef %3, ptr noundef null)
  br label %777

777:                                              ; preds = %763, %770, %774
  %778 = phi i1 [ false, %774 ], [ true, %770 ], [ true, %763 ]
  %779 = phi ptr [ %776, %774 ], [ %735, %770 ], [ %735, %763 ]
  br i1 %778, label %909, label %911

780:                                              ; preds = %734, %734, %734, %740, %736
  %781 = load i32, ptr @optimize, align 4, !tbaa !201
  %782 = freeze i32 %781
  %783 = icmp sgt i32 %782, 0
  br i1 %783, label %784, label %909, !prof !505

784:                                              ; preds = %780
  switch i32 %3, label %785 [
    i32 6, label %909
    i32 4, label %909
    i32 3, label %909
  ], !prof !504

785:                                              ; preds = %784
  %786 = load i64, ptr %77, align 8
  %787 = and i64 %786, 1179647
  %788 = icmp eq i64 %787, 1048608
  br i1 %788, label %789, label %909, !prof !506

789:                                              ; preds = %785
  %790 = getelementptr inbounds %struct.tree_decl_common, ptr %77, i64 0, i32 5
  %791 = load ptr, ptr %790, align 8, !tbaa !197
  %792 = icmp eq ptr %791, null
  br i1 %792, label %909, label %793

793:                                              ; preds = %789
  %794 = load i64, ptr %791, align 8
  %795 = and i64 %794, 65535
  %796 = icmp eq i64 %795, 0
  br i1 %796, label %909, label %797

797:                                              ; preds = %793
  %798 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !508
  %799 = tail call zeroext i8 %798(ptr noundef nonnull %77) #22
  %800 = icmp eq i8 %799, 0
  br i1 %800, label %909, label %801

801:                                              ; preds = %797
  %802 = load i64, ptr %76, align 8
  %803 = and i64 %802, 65535
  %804 = icmp eq i64 %803, 23
  br i1 %804, label %805, label %909

805:                                              ; preds = %801
  %806 = load ptr, ptr %790, align 8, !tbaa !197
  %807 = load i64, ptr %806, align 8
  %808 = trunc i64 %807 to i16
  switch i16 %808, label %904 [
    i16 51, label %809
    i16 28, label %851
  ]

809:                                              ; preds = %805
  %810 = getelementptr inbounds %struct.tree_constructor, ptr %806, i64 0, i32 1
  br label %811

811:                                              ; preds = %831, %809
  %812 = phi ptr [ %829, %831 ], [ undef, %809 ]
  %813 = phi ptr [ %830, %831 ], [ undef, %809 ]
  %814 = phi i64 [ %834, %831 ], [ 0, %809 ]
  %815 = load ptr, ptr %810, align 8, !tbaa !197
  %816 = icmp eq ptr %815, null
  br i1 %816, label %819, label %817

817:                                              ; preds = %811
  %818 = load i32, ptr %815, align 8, !tbaa !435
  br label %819

819:                                              ; preds = %811, %817
  %820 = phi i32 [ %818, %817 ], [ 0, %811 ]
  %821 = zext i32 %820 to i64
  %822 = icmp ult i64 %814, %821
  br i1 %822, label %823, label %828

823:                                              ; preds = %819
  %824 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %815, i64 0, i32 2, i64 %814
  %825 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %815, i64 0, i32 2, i64 %814, i32 1
  %826 = load ptr, ptr %825, align 8, !tbaa !437
  %827 = load ptr, ptr %824, align 8, !tbaa !439
  br label %828

828:                                              ; preds = %819, %823
  %829 = phi ptr [ %812, %819 ], [ %826, %823 ]
  %830 = phi ptr [ %813, %819 ], [ %827, %823 ]
  br i1 %822, label %831, label %848

831:                                              ; preds = %828
  %832 = tail call i32 @tree_int_cst_equal(ptr noundef %830, ptr noundef nonnull %76) #22
  %833 = icmp eq i32 %832, 0
  %834 = add nuw nsw i64 %814, 1
  br i1 %833, label %811, label %835, !llvm.loop !509

835:                                              ; preds = %831
  %836 = load i64, ptr %829, align 8
  %837 = and i64 %836, 65536
  %838 = icmp eq i64 %837, 0
  br i1 %838, label %839, label %848

839:                                              ; preds = %835
  %840 = and i64 %836, 65535
  %841 = icmp eq i64 %840, 51
  br i1 %841, label %842, label %845

842:                                              ; preds = %839
  %843 = tail call fastcc ptr @expand_constructor(ptr noundef nonnull %829, ptr noundef %163, i32 noundef %3, i8 noundef zeroext 1)
  %844 = icmp eq ptr %843, null
  br i1 %844, label %848, label %845

845:                                              ; preds = %842, %839
  %846 = tail call ptr @fold(ptr noundef nonnull %829) #22
  %847 = tail call ptr @expand_expr_real(ptr noundef %846, ptr noundef %163, i32 noundef %2, i32 noundef %3, ptr noundef null)
  br label %848

848:                                              ; preds = %828, %842, %835, %845
  %849 = phi i1 [ false, %845 ], [ true, %835 ], [ true, %842 ], [ true, %828 ]
  %850 = phi ptr [ %847, %845 ], [ %735, %835 ], [ %735, %842 ], [ %735, %828 ]
  br i1 %849, label %904, label %906

851:                                              ; preds = %805
  %852 = tail call ptr @array_ref_low_bound(ptr noundef %0)
  %853 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %854 = tail call ptr @fold_convert_loc(i32 noundef %35, ptr noundef %853, ptr noundef nonnull %76) #22
  %855 = tail call i32 @integer_zerop(ptr noundef %852) #22
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %857, label %861

857:                                              ; preds = %851
  %858 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %859 = tail call ptr @fold_convert_loc(i32 noundef %35, ptr noundef %858, ptr noundef %852) #22
  %860 = tail call ptr @size_diffop_loc(i32 noundef %35, ptr noundef %854, ptr noundef %859) #22
  br label %861

861:                                              ; preds = %857, %851
  %862 = phi ptr [ %854, %851 ], [ %860, %857 ]
  %863 = getelementptr inbounds %struct.tree_string, ptr %806, i64 0, i32 1
  %864 = load i32, ptr %863, align 8, !tbaa !197
  %865 = sext i32 %864 to i64
  %866 = tail call i32 @compare_tree_int(ptr noundef %862, i64 noundef %865) #22
  %867 = icmp slt i32 %866, 0
  br i1 %867, label %868, label %901

868:                                              ; preds = %861
  %869 = getelementptr inbounds %struct.tree_common, ptr %806, i64 0, i32 2
  %870 = load ptr, ptr %869, align 8, !tbaa !197
  %871 = getelementptr inbounds %struct.tree_common, ptr %870, i64 0, i32 2
  %872 = load ptr, ptr %871, align 8, !tbaa !197
  %873 = load i64, ptr %872, align 8
  %874 = and i64 %873, 65535
  %875 = icmp eq i64 %874, 14
  br i1 %875, label %876, label %878

876:                                              ; preds = %868
  %877 = tail call i32 @vector_type_mode(ptr noundef nonnull %872) #22
  br label %883

878:                                              ; preds = %868
  %879 = getelementptr inbounds %struct.tree_type, ptr %872, i64 0, i32 6
  %880 = load i32, ptr %879, align 4
  %881 = lshr i32 %880, 16
  %882 = and i32 %881, 255
  br label %883

883:                                              ; preds = %878, %876
  %884 = phi i32 [ %877, %876 ], [ %882, %878 ]
  %885 = zext i32 %884 to i64
  %886 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %885
  %887 = load i8, ptr %886, align 1, !tbaa !197
  %888 = icmp eq i8 %887, 2
  br i1 %888, label %889, label %901

889:                                              ; preds = %883
  %890 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %885
  %891 = load i8, ptr %890, align 1, !tbaa !197
  %892 = icmp eq i8 %891, 1
  br i1 %892, label %893, label %901

893:                                              ; preds = %889
  %894 = getelementptr inbounds %struct.tree_string, ptr %806, i64 0, i32 2
  %895 = getelementptr inbounds %struct.tree_int_cst, ptr %862, i64 0, i32 1
  %896 = load i64, ptr %895, align 8, !tbaa !197
  %897 = getelementptr inbounds i8, ptr %894, i64 %896
  %898 = load i8, ptr %897, align 1, !tbaa !197
  %899 = sext i8 %898 to i64
  %900 = tail call ptr @gen_int_mode(i64 noundef %899, i32 noundef %884) #22
  br label %901

901:                                              ; preds = %893, %889, %883, %861
  %902 = phi i1 [ true, %861 ], [ false, %893 ], [ true, %889 ], [ true, %883 ]
  %903 = phi ptr [ %735, %861 ], [ %900, %893 ], [ %735, %889 ], [ %735, %883 ]
  br i1 %902, label %904, label %906

904:                                              ; preds = %848, %805, %901
  %905 = phi ptr [ %903, %901 ], [ %735, %805 ], [ %850, %848 ]
  br label %906

906:                                              ; preds = %848, %901, %904
  %907 = phi i1 [ true, %904 ], [ false, %901 ], [ false, %848 ]
  %908 = phi ptr [ %905, %904 ], [ %903, %901 ], [ %850, %848 ]
  br i1 %907, label %909, label %911

909:                                              ; preds = %784, %784, %777, %784, %780, %785, %789, %793, %797, %906, %801
  %910 = phi ptr [ %908, %906 ], [ %735, %801 ], [ %735, %797 ], [ %735, %793 ], [ %735, %789 ], [ %735, %785 ], [ %735, %780 ], [ %735, %784 ], [ %779, %777 ], [ %735, %784 ], [ %735, %784 ]
  br label %911

911:                                              ; preds = %906, %777, %732, %909
  %912 = phi i1 [ true, %909 ], [ false, %732 ], [ false, %777 ], [ false, %906 ]
  %913 = phi ptr [ %910, %909 ], [ %733, %732 ], [ %779, %777 ], [ %908, %906 ]
  br i1 %912, label %1012, label %2115, !prof !505

914:                                              ; preds = %177
  %915 = load i64, ptr %77, align 8
  %916 = and i64 %915, 65535
  %917 = icmp eq i64 %916, 51
  br i1 %917, label %918, label %1012, !prof !510

918:                                              ; preds = %914
  %919 = getelementptr inbounds %struct.tree_constructor, ptr %77, i64 0, i32 1
  %920 = load ptr, ptr %919, align 8, !tbaa !197
  %921 = icmp eq ptr %920, null
  br label %922

922:                                              ; preds = %918, %1007
  %923 = phi ptr [ %938, %1007 ], [ undef, %918 ]
  %924 = phi ptr [ %939, %1007 ], [ undef, %918 ]
  %925 = phi i64 [ %1008, %1007 ], [ 0, %918 ]
  br i1 %921, label %928, label %926

926:                                              ; preds = %922
  %927 = load i32, ptr %920, align 8, !tbaa !435
  br label %928

928:                                              ; preds = %922, %926
  %929 = phi i32 [ %927, %926 ], [ 0, %922 ]
  %930 = zext i32 %929 to i64
  %931 = icmp ult i64 %925, %930
  br i1 %931, label %932, label %937

932:                                              ; preds = %928
  %933 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %920, i64 0, i32 2, i64 %925
  %934 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %920, i64 0, i32 2, i64 %925, i32 1
  %935 = load ptr, ptr %934, align 8, !tbaa !437
  %936 = load ptr, ptr %933, align 8, !tbaa !439
  br label %937

937:                                              ; preds = %928, %932
  %938 = phi ptr [ %923, %928 ], [ %935, %932 ]
  %939 = phi ptr [ %924, %928 ], [ %936, %932 ]
  br i1 %931, label %940, label %1009

940:                                              ; preds = %937
  %941 = icmp eq ptr %939, %76
  br i1 %941, label %942, label %1007

942:                                              ; preds = %940
  %943 = getelementptr inbounds %struct.tree_decl_common, ptr %939, i64 0, i32 2
  %944 = load i64, ptr %943, align 8
  %945 = and i64 %944, 33554432
  %946 = icmp eq i64 %945, 0
  br i1 %946, label %956, label %947

947:                                              ; preds = %942
  %948 = and i64 %944, 255
  %949 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %948
  %950 = load i8, ptr %949, align 1, !tbaa !197
  %951 = icmp eq i8 %950, 2
  br i1 %951, label %952, label %1007

952:                                              ; preds = %947
  %953 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %948
  %954 = load i8, ptr %953, align 1, !tbaa !197
  %955 = icmp ult i8 %954, 9
  br i1 %955, label %956, label %1007

956:                                              ; preds = %952, %942
  %957 = getelementptr inbounds %struct.tree_decl_common, ptr %939, i64 0, i32 2
  %958 = icmp ne i64 %945, 0
  %959 = and i1 %161, %958
  %960 = select i1 %959, ptr null, ptr %163
  %961 = tail call ptr @expand_expr_real(ptr noundef %938, ptr noundef %960, i32 noundef %2, i32 noundef %3, ptr noundef null)
  store ptr %961, ptr %6, align 8, !tbaa !186
  %962 = load i64, ptr %957, align 8
  %963 = and i64 %962, 33554432
  %964 = icmp eq i64 %963, 0
  br i1 %964, label %1005, label %965

965:                                              ; preds = %956
  %966 = getelementptr inbounds %struct.tree_decl_common, ptr %939, i64 0, i32 1
  %967 = load ptr, ptr %966, align 8, !tbaa !197
  %968 = getelementptr inbounds %struct.tree_int_cst, ptr %967, i64 0, i32 1
  %969 = load i64, ptr %968, align 8, !tbaa !197
  %970 = getelementptr inbounds %struct.tree_common, ptr %939, i64 0, i32 2
  %971 = load ptr, ptr %970, align 8, !tbaa !197
  %972 = load i64, ptr %971, align 8
  %973 = and i64 %972, 65535
  %974 = icmp eq i64 %973, 14
  br i1 %974, label %975, label %977

975:                                              ; preds = %965
  %976 = tail call i32 @vector_type_mode(ptr noundef nonnull %971) #22
  br label %982

977:                                              ; preds = %965
  %978 = getelementptr inbounds %struct.tree_type, ptr %971, i64 0, i32 6
  %979 = load i32, ptr %978, align 4
  %980 = lshr i32 %979, 16
  %981 = and i32 %980, 255
  br label %982

982:                                              ; preds = %977, %975
  %983 = phi i32 [ %976, %975 ], [ %981, %977 ]
  %984 = load ptr, ptr %970, align 8, !tbaa !197
  %985 = load i64, ptr %984, align 8
  %986 = and i64 %985, 2097152
  %987 = icmp eq i64 %986, 0
  br i1 %987, label %993, label %988

988:                                              ; preds = %982
  %989 = shl nsw i64 -1, %969
  %990 = xor i64 %989, -1
  %991 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %990) #22
  store ptr %991, ptr %7, align 8, !tbaa !186
  %992 = tail call ptr @expand_and(i32 noundef %983, ptr noundef %961, ptr noundef %991, ptr noundef %960) #22
  br label %1003

993:                                              ; preds = %982
  %994 = zext i32 %983 to i64
  %995 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %994
  %996 = load i8, ptr %995, align 1, !tbaa !197
  %997 = zext i8 %996 to i64
  %998 = shl nuw nsw i64 %997, 3
  %999 = sub nsw i64 %998, %969
  %1000 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %999) #22
  %1001 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %983, ptr noundef %961, ptr noundef %1000, ptr noundef %960, i32 noundef 0) #22
  store ptr %1001, ptr %6, align 8, !tbaa !186
  %1002 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %983, ptr noundef %1001, ptr noundef %1000, ptr noundef %960, i32 noundef 0) #22
  br label %1003

1003:                                             ; preds = %993, %988
  %1004 = phi ptr [ %1002, %993 ], [ %992, %988 ]
  store ptr %1004, ptr %6, align 8, !tbaa !186
  br label %1005

1005:                                             ; preds = %1003, %956
  %1006 = load ptr, ptr %6, align 8, !tbaa !186
  br label %1009

1007:                                             ; preds = %940, %947, %952
  %1008 = add nuw nsw i64 %925, 1
  br label %922, !llvm.loop !511

1009:                                             ; preds = %937, %1005
  %1010 = phi ptr [ %960, %1005 ], [ %163, %937 ]
  %1011 = phi ptr [ %1006, %1005 ], [ undef, %937 ]
  br i1 %931, label %2115, label %1012

1012:                                             ; preds = %1009, %177, %177, %914, %911
  %1013 = phi ptr [ %163, %177 ], [ %163, %914 ], [ %163, %911 ], [ %163, %177 ], [ %1010, %1009 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #22
  store i32 0, ptr %15, align 4, !tbaa !201
  %1014 = call ptr @get_inner_reference(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %15, i8 zeroext poison)
  %1015 = icmp eq ptr %1014, %0
  br i1 %1015, label %1016, label %1017, !prof !512

1016:                                             ; preds = %1012
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8943, ptr noundef nonnull @.str.1) #22
  br label %1017

1017:                                             ; preds = %1012, %1016
  %1018 = getelementptr inbounds %struct.tree_common, ptr %1014, i64 0, i32 2
  %1019 = load ptr, ptr %1018, align 8, !tbaa !197
  %1020 = load i64, ptr %1019, align 8
  %1021 = and i64 %1020, 65535
  %1022 = icmp eq i64 %1021, 17
  br i1 %1022, label %1023, label %1032, !prof !512

1023:                                             ; preds = %1017
  %1024 = getelementptr inbounds %struct.tree_type, ptr %1019, i64 0, i32 2
  %1025 = load ptr, ptr %1024, align 8, !tbaa !197
  %1026 = load i64, ptr %1025, align 8
  %1027 = and i64 %1026, 65535
  %1028 = icmp ne i64 %1027, 23
  %1029 = icmp ne i32 %3, 1
  %1030 = and i1 %1029, %1028
  %1031 = select i1 %1030, ptr %1013, ptr null
  br label %1032

1032:                                             ; preds = %1023, %1017
  %1033 = phi ptr [ null, %1017 ], [ %1031, %1023 ]
  %1034 = add i32 %3, -3
  %1035 = icmp ult i32 %1034, 2
  %1036 = or i1 %161, %1035
  %1037 = select i1 %1036, i32 %3, i32 0, !prof !513
  %1038 = tail call ptr @expand_expr_real(ptr noundef %1014, ptr noundef %1033, i32 noundef 0, i32 noundef %1037, ptr noundef null)
  store ptr %1038, ptr %6, align 8, !tbaa !186
  %1039 = load i32, ptr %1038, align 8
  %1040 = and i32 %1039, 65535
  %1041 = zext nneg i32 %1040 to i64
  %1042 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1041
  %1043 = load i32, ptr %1042, align 4, !tbaa !201
  %1044 = icmp eq i32 %1043, 9
  br i1 %1044, label %1045, label %1057, !prof !512

1045:                                             ; preds = %1032
  %1046 = load ptr, ptr %1018, align 8, !tbaa !197
  %1047 = load i64, ptr %1046, align 8
  %1048 = and i64 %1047, 65535
  %1049 = icmp eq i64 %1048, 14
  br i1 %1049, label %1050, label %1052

1050:                                             ; preds = %1045
  %1051 = tail call i32 @vector_type_mode(ptr noundef nonnull %1046) #22
  br label %1060

1052:                                             ; preds = %1045
  %1053 = getelementptr inbounds %struct.tree_type, ptr %1046, i64 0, i32 6
  %1054 = load i32, ptr %1053, align 4
  %1055 = lshr i32 %1054, 16
  %1056 = and i32 %1055, 255
  br label %1060

1057:                                             ; preds = %1032
  %1058 = lshr i32 %1039, 16
  %1059 = and i32 %1058, 255
  br label %1060

1060:                                             ; preds = %1050, %1052, %1057
  %1061 = phi i32 [ %1059, %1057 ], [ %1051, %1050 ], [ %1056, %1052 ]
  %1062 = load ptr, ptr %14, align 8
  %1063 = icmp ne ptr %1062, null
  %1064 = load i32, ptr %11, align 4
  %1065 = icmp eq i32 %1064, 1
  %1066 = select i1 %1063, i1 true, i1 %1065, !prof !514
  br i1 %1066, label %1077, label %1067, !prof !514

1067:                                             ; preds = %1060
  %1068 = load i64, ptr %13, align 8, !tbaa !311
  %1069 = load i64, ptr %12, align 8, !tbaa !311
  %1070 = add nsw i64 %1069, %1068
  %1071 = zext i32 %1061 to i64
  %1072 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1071
  %1073 = load i8, ptr %1072, align 1, !tbaa !197
  %1074 = zext i8 %1073 to i64
  %1075 = shl nuw nsw i64 %1074, 3
  %1076 = icmp sgt i64 %1070, %1075
  br label %1077

1077:                                             ; preds = %1067, %1060
  %1078 = phi i1 [ true, %1060 ], [ %1076, %1067 ]
  %1079 = load i32, ptr %1038, align 8
  %1080 = and i32 %1079, 65535
  %1081 = icmp ne i32 %1080, 41
  %1082 = select i1 %1081, i1 true, i1 %1078, !prof !515
  br i1 %1082, label %1143, label %1083, !prof !515

1083:                                             ; preds = %1077
  %1084 = load i64, ptr %13, align 8
  %1085 = icmp eq i64 %1084, 0
  br i1 %1085, label %1086, label %1113

1086:                                             ; preds = %1083
  %1087 = load i64, ptr %12, align 8, !tbaa !311
  %1088 = lshr i32 %1079, 16
  %1089 = and i32 %1088, 255
  %1090 = zext nneg i32 %1089 to i64
  %1091 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1090
  %1092 = load i8, ptr %1091, align 1, !tbaa !197
  %1093 = zext i8 %1092 to i64
  %1094 = shl nuw nsw i64 %1093, 3
  %1095 = icmp eq i64 %1087, %1094
  br i1 %1095, label %1524, label %1096

1096:                                             ; preds = %1086
  br i1 %1085, label %1097, label %1113

1097:                                             ; preds = %1096
  %1098 = load i64, ptr %12, align 8
  %1099 = getelementptr inbounds %struct.rtx_def, ptr %1038, i64 0, i32 1
  %1100 = load ptr, ptr %1099, align 8, !tbaa !197
  %1101 = load i32, ptr %1100, align 8
  %1102 = lshr i32 %1101, 16
  %1103 = and i32 %1102, 255
  %1104 = zext nneg i32 %1103 to i64
  %1105 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1104
  %1106 = load i8, ptr %1105, align 1, !tbaa !197
  %1107 = zext i8 %1106 to i64
  %1108 = shl nuw nsw i64 %1107, 3
  %1109 = icmp eq i64 %1098, %1108
  %1110 = icmp ne i64 %1098, 0
  %1111 = and i1 %1110, %1109
  br i1 %1111, label %1112, label %1113

1112:                                             ; preds = %1097
  store ptr %1100, ptr %6, align 8, !tbaa !186
  br label %1143

1113:                                             ; preds = %1083, %1097, %1096
  %1114 = getelementptr inbounds %struct.rtx_def, ptr %1038, i64 0, i32 1
  %1115 = load ptr, ptr %1114, align 8, !tbaa !197
  %1116 = load i32, ptr %1115, align 8
  %1117 = lshr i32 %1116, 16
  %1118 = and i32 %1117, 255
  %1119 = zext nneg i32 %1118 to i64
  %1120 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1119
  %1121 = load i8, ptr %1120, align 1, !tbaa !197
  %1122 = zext i8 %1121 to i64
  %1123 = shl nuw nsw i64 %1122, 3
  %1124 = icmp eq i64 %1084, %1123
  br i1 %1124, label %1125, label %1143

1125:                                             ; preds = %1113
  %1126 = load i64, ptr %12, align 8
  %1127 = getelementptr inbounds %struct.rtx_def, ptr %1038, i64 0, i32 1, i32 0, i32 0, i64 1
  %1128 = load ptr, ptr %1127, align 8, !tbaa !197
  %1129 = load i32, ptr %1128, align 8
  %1130 = lshr i32 %1129, 16
  %1131 = and i32 %1130, 255
  %1132 = zext nneg i32 %1131 to i64
  %1133 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1132
  %1134 = load i8, ptr %1133, align 1, !tbaa !197
  %1135 = zext i8 %1134 to i64
  %1136 = shl nuw nsw i64 %1135, 3
  %1137 = icmp eq i64 %1126, %1136
  %1138 = icmp ne i64 %1084, 0
  %1139 = and i1 %1138, %1137
  %1140 = icmp ne i64 %1126, 0
  %1141 = and i1 %1140, %1139
  br i1 %1141, label %1142, label %1143

1142:                                             ; preds = %1125
  store ptr %1128, ptr %6, align 8, !tbaa !186
  store i64 0, ptr %13, align 8, !tbaa !311
  br label %1143

1143:                                             ; preds = %1113, %1125, %1112, %1142, %1077
  %1144 = phi i32 [ %1061, %1077 ], [ %1103, %1112 ], [ %1131, %1142 ], [ %1061, %1125 ], [ %1061, %1113 ]
  %1145 = phi i1 [ %1078, %1077 ], [ %1078, %1112 ], [ %1078, %1142 ], [ true, %1125 ], [ true, %1113 ]
  %1146 = load ptr, ptr %6, align 8, !tbaa !186
  %1147 = load i32, ptr %1146, align 8
  %1148 = and i32 %1147, 65535
  %1149 = zext nneg i32 %1148 to i64
  %1150 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1149
  %1151 = load i32, ptr %1150, align 4, !tbaa !201
  %1152 = icmp eq i32 %1151, 9
  %1153 = icmp ne i32 %1144, 1
  %1154 = select i1 %1152, i1 %1153, i1 false, !prof !512
  br i1 %1154, label %1155, label %1161, !prof !512

1155:                                             ; preds = %1143
  %1156 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %1146) #22
  %1157 = icmp eq i8 %1156, 0
  %1158 = select i1 %1157, i1 true, i1 %1145
  br i1 %1158, label %1161, label %1159

1159:                                             ; preds = %1155
  %1160 = tail call ptr @force_reg(i32 noundef %1144, ptr noundef nonnull %1146) #22
  store ptr %1160, ptr %6, align 8, !tbaa !186
  br label %1202

1161:                                             ; preds = %1155, %1143
  %1162 = load i32, ptr %1146, align 8
  %1163 = and i32 %1162, 65535
  %1164 = zext nneg i32 %1163 to i64
  %1165 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1164
  %1166 = load i32, ptr %1165, align 4, !tbaa !201
  %1167 = icmp eq i32 %1166, 9
  br i1 %1167, label %1168, label %1173, !prof !512

1168:                                             ; preds = %1161
  %1169 = tail call ptr @force_const_mem(i32 noundef %1144, ptr noundef nonnull %1146) #22
  %1170 = icmp eq ptr %1169, null
  br i1 %1170, label %1173, label %1171

1171:                                             ; preds = %1168
  %1172 = tail call ptr @validize_mem(ptr noundef nonnull %1169) #22
  store ptr %1172, ptr %6, align 8, !tbaa !186
  br label %1202

1173:                                             ; preds = %1168, %1161
  %1174 = load i32, ptr %1146, align 8
  %1175 = and i32 %1174, 65535
  %1176 = zext nneg i32 %1175 to i64
  %1177 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1176
  %1178 = load i32, ptr %1177, align 4, !tbaa !201
  %1179 = icmp eq i32 %1178, 9
  %1180 = icmp ne i32 %1175, 43
  %1181 = select i1 %1180, i1 %1145, i1 false, !prof !512
  %1182 = select i1 %1179, i1 true, i1 %1181, !prof !512
  br i1 %1182, label %1183, label %1202, !prof !512

1183:                                             ; preds = %1173
  %1184 = load ptr, ptr %1018, align 8, !tbaa !197
  %1185 = load i64, ptr %1184, align 8
  %1186 = trunc i64 %1185 to i32
  %1187 = lshr i32 %1186, 18
  %1188 = and i32 %1187, 2
  %1189 = getelementptr inbounds %struct.tree_type, ptr %1184, i64 0, i32 6
  %1190 = load i32, ptr %1189, align 4
  %1191 = lshr i32 %1190, 11
  %1192 = and i32 %1191, 4
  %1193 = lshr i64 %1185, 48
  %1194 = trunc i64 %1193 to i32
  %1195 = and i32 %1194, 65280
  %1196 = or disjoint i32 %1192, %1188
  %1197 = or disjoint i32 %1196, %1195
  %1198 = or disjoint i32 %1197, 1
  %1199 = tail call ptr @build_qualified_type(ptr noundef nonnull %1184, i32 noundef %1198) #22
  %1200 = tail call ptr @assign_temp(ptr noundef %1199, i32 noundef 1, i32 noundef 1, i32 noundef 1) #22
  %1201 = tail call ptr @emit_move_insn(ptr noundef %1200, ptr noundef nonnull %1146)
  store ptr %1200, ptr %6, align 8, !tbaa !186
  br label %1202

1202:                                             ; preds = %1173, %1171, %1183, %1159
  %1203 = icmp eq ptr %1062, null
  br i1 %1203, label %1268, label %1204, !prof !516

1204:                                             ; preds = %1202
  %1205 = tail call ptr @expand_expr_real(ptr noundef nonnull %1062, ptr noundef null, i32 noundef 0, i32 noundef 2, ptr noundef null)
  %1206 = load ptr, ptr %6, align 8, !tbaa !186
  %1207 = load i32, ptr %1206, align 8
  %1208 = and i32 %1207, 65535
  %1209 = icmp eq i32 %1208, 43
  br i1 %1209, label %1211, label %1210, !prof !517

1210:                                             ; preds = %1204
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9034, ptr noundef nonnull @.str.1) #22
  br label %1211

1211:                                             ; preds = %1204, %1210
  %1212 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !282
  %1213 = getelementptr inbounds %struct.rtx_def, ptr %1206, i64 0, i32 1, i32 0, i32 0, i64 1
  %1214 = load ptr, ptr %1213, align 8, !tbaa !197
  %1215 = icmp eq ptr %1214, null
  br i1 %1215, label %1219, label %1216, !prof !518

1216:                                             ; preds = %1211
  %1217 = getelementptr inbounds %struct.mem_attrs, ptr %1214, i64 0, i32 5
  %1218 = load i8, ptr %1217, align 8, !tbaa !249
  br label %1219

1219:                                             ; preds = %1211, %1216
  %1220 = phi i8 [ %1218, %1216 ], [ 0, %1211 ]
  %1221 = tail call i32 %1212(i8 noundef zeroext %1220) #22, !prof !519
  %1222 = load i32, ptr %1205, align 8
  %1223 = lshr i32 %1222, 16
  %1224 = and i32 %1223, 255
  %1225 = icmp eq i32 %1224, %1221
  br i1 %1225, label %1228, label %1226, !prof !517

1226:                                             ; preds = %1219
  %1227 = tail call ptr @convert_modes(i32 noundef %1221, i32 noundef 0, ptr noundef nonnull %1205, i32 noundef 0)
  br label %1228

1228:                                             ; preds = %1226, %1219
  %1229 = phi ptr [ %1227, %1226 ], [ %1205, %1219 ]
  %1230 = load i32, ptr %1206, align 8
  %1231 = and i32 %1230, 16711680
  %1232 = icmp eq i32 %1231, 65536
  br i1 %1232, label %1233, label %1264, !prof !517

1233:                                             ; preds = %1228
  %1234 = getelementptr inbounds %struct.rtx_def, ptr %1206, i64 0, i32 1
  %1235 = load ptr, ptr %1234, align 8, !tbaa !197
  %1236 = load i32, ptr %1235, align 8
  %1237 = and i32 %1236, 16711680
  %1238 = icmp ne i32 %1237, 0
  %1239 = load i64, ptr %12, align 8
  %1240 = icmp ne i64 %1239, 0
  %1241 = select i1 %1238, i1 %1240, i1 false, !prof !517
  br i1 %1241, label %1242, label %1264, !prof !517

1242:                                             ; preds = %1233
  %1243 = load i64, ptr %13, align 8, !tbaa !311
  %1244 = srem i64 %1243, %1239
  %1245 = icmp eq i64 %1244, 0
  br i1 %1245, label %1246, label %1264, !prof !517

1246:                                             ; preds = %1242
  %1247 = tail call i32 @get_mode_alignment(i32 noundef %1064) #22
  %1248 = zext i32 %1247 to i64
  %1249 = srem i64 %1239, %1248
  %1250 = icmp eq i64 %1249, 0
  br i1 %1250, label %1251, label %1264, !prof !517

1251:                                             ; preds = %1246
  %1252 = load ptr, ptr %1213, align 8, !tbaa !197
  %1253 = icmp eq ptr %1252, null
  br i1 %1253, label %1257, label %1254, !prof !518

1254:                                             ; preds = %1251
  %1255 = getelementptr inbounds %struct.mem_attrs, ptr %1252, i64 0, i32 4
  %1256 = load i32, ptr %1255, align 4, !tbaa !294
  br label %1257

1257:                                             ; preds = %1251, %1254
  %1258 = phi i32 [ %1256, %1254 ], [ 8, %1251 ]
  %1259 = tail call i32 @get_mode_alignment(i32 noundef %1064) #22
  %1260 = icmp eq i32 %1258, %1259
  br i1 %1260, label %1261, label %1264, !prof !517

1261:                                             ; preds = %1257
  %1262 = sdiv i64 %1243, 8
  %1263 = tail call ptr @adjust_address_1(ptr noundef nonnull %1206, i32 noundef %1064, i64 noundef %1262, i32 noundef 1, i32 noundef 1) #22
  store ptr %1263, ptr %6, align 8, !tbaa !186
  store i64 0, ptr %13, align 8, !tbaa !311
  br label %1264

1264:                                             ; preds = %1261, %1257, %1246, %1242, %1233, %1228
  %1265 = load ptr, ptr %6, align 8, !tbaa !186
  %1266 = tail call i64 @highest_pow2_factor(ptr noundef nonnull %1062)
  %1267 = tail call ptr @offset_address(ptr noundef %1265, ptr noundef %1229, i64 noundef %1266) #22
  store ptr %1267, ptr %6, align 8, !tbaa !186
  br label %1268

1268:                                             ; preds = %1264, %1202
  %1269 = load ptr, ptr %6, align 8, !tbaa !186
  %1270 = load i32, ptr %1269, align 8
  %1271 = and i32 %1270, 65535
  %1272 = icmp eq i32 %1271, 43
  %1273 = load i64, ptr %13, align 8
  %1274 = icmp eq i64 %1273, 0
  %1275 = select i1 %1272, i1 %1274, i1 false, !prof !515
  %1276 = and i1 %1063, %1275
  br i1 %1276, label %1277, label %1285, !prof !514

1277:                                             ; preds = %1268
  %1278 = tail call fastcc i32 @is_aligning_offset(ptr noundef nonnull %1062, ptr noundef %1014), !range !449
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1285, label %1280, !prof !517

1280:                                             ; preds = %1277
  %1281 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !201
  %1282 = and i32 %1281, 32
  %1283 = icmp eq i32 %1282, 0
  %1284 = select i1 %1283, i32 128, i32 256
  tail call void @set_mem_align(ptr noundef nonnull %1269, i32 noundef %1284) #22
  br label %1285

1285:                                             ; preds = %1280, %1277, %1268
  %1286 = load i32, ptr %1269, align 8
  %1287 = load i32, ptr %15, align 4
  %1288 = icmp ne i32 %1287, 0
  %1289 = and i32 %1286, 134283263
  %1290 = icmp eq i32 %1289, 43
  %1291 = select i1 %1290, i1 %1288, i1 false, !prof !515
  br i1 %1291, label %1292, label %1300, !prof !512

1292:                                             ; preds = %1285
  %1293 = icmp eq ptr %1269, %1038
  br i1 %1293, label %1294, label %1296

1294:                                             ; preds = %1292
  %1295 = tail call ptr @copy_rtx(ptr noundef nonnull %1269) #22
  store ptr %1295, ptr %6, align 8, !tbaa !186
  br label %1296

1296:                                             ; preds = %1294, %1292
  %1297 = load ptr, ptr %6, align 8, !tbaa !186
  %1298 = load i32, ptr %1297, align 8
  %1299 = or i32 %1298, 134217728
  store i32 %1299, ptr %1297, align 8
  br label %1300

1300:                                             ; preds = %1296, %1285
  %1301 = icmp eq i32 %1064, 0
  br i1 %1301, label %1369, label %1302, !prof !512

1302:                                             ; preds = %1300
  %1303 = load ptr, ptr %6, align 8, !tbaa !186
  %1304 = load i32, ptr %1303, align 8
  %1305 = trunc i32 %1304 to i16
  switch i16 %1305, label %1306 [
    i16 37, label %1369
    i16 39, label %1369
  ], !prof !520

1306:                                             ; preds = %1302
  br i1 %1065, label %1354, label %1307, !prof !512

1307:                                             ; preds = %1306
  %1308 = sext i32 %1064 to i64
  %1309 = getelementptr inbounds [87 x i8], ptr @direct_load, i64 0, i64 %1308
  %1310 = load i8, ptr %1309, align 1, !tbaa !197
  %1311 = icmp eq i8 %1310, 0
  br i1 %1311, label %1312, label %1322, !prof !512

1312:                                             ; preds = %1307
  %1313 = zext i32 %49 to i64
  %1314 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1313
  %1315 = load i8, ptr %1314, align 1, !tbaa !197
  %1316 = icmp eq i8 %1315, 10
  br i1 %1316, label %1322, label %1317

1317:                                             ; preds = %1312
  %1318 = icmp ne i8 %1315, 11
  %1319 = add i32 %3, -5
  %1320 = icmp ult i32 %1319, -2
  %1321 = and i1 %1320, %1318
  br i1 %1321, label %1369, label %1322

1322:                                             ; preds = %1317, %1312, %1307
  br i1 %1065, label %1354, label %1323, !prof !512

1323:                                             ; preds = %1322
  %1324 = load ptr, ptr %1018, align 8, !tbaa !197
  %1325 = getelementptr inbounds %struct.tree_type, ptr %1324, i64 0, i32 7
  %1326 = load i32, ptr %1325, align 8, !tbaa !197
  %1327 = tail call i32 @get_mode_alignment(i32 noundef %49) #22
  %1328 = icmp ult i32 %1326, %1327
  br i1 %1328, label %1351, label %1329, !prof !512

1329:                                             ; preds = %1323
  %1330 = tail call i32 @get_mode_alignment(i32 noundef %49) #22
  %1331 = zext i32 %1330 to i64
  %1332 = srem i64 %1273, %1331
  %1333 = icmp eq i64 %1332, 0
  br i1 %1333, label %1334, label %1351, !prof !515

1334:                                             ; preds = %1329
  %1335 = load i32, ptr %1303, align 8
  %1336 = and i32 %1335, 65535
  %1337 = icmp eq i32 %1336, 43
  br i1 %1337, label %1338, label %1351, !prof !515

1338:                                             ; preds = %1334
  %1339 = getelementptr inbounds %struct.rtx_def, ptr %1303, i64 0, i32 1, i32 0, i32 0, i64 1
  %1340 = load ptr, ptr %1339, align 8, !tbaa !197
  %1341 = icmp eq ptr %1340, null
  br i1 %1341, label %1345, label %1342, !prof !512

1342:                                             ; preds = %1338
  %1343 = getelementptr inbounds %struct.mem_attrs, ptr %1340, i64 0, i32 4
  %1344 = load i32, ptr %1343, align 4, !tbaa !294
  br label %1345

1345:                                             ; preds = %1338, %1342
  %1346 = phi i32 [ %1344, %1342 ], [ 8, %1338 ]
  %1347 = tail call i32 @get_mode_alignment(i32 noundef %1064) #22
  %1348 = icmp ult i32 %1346, %1347
  br i1 %1348, label %1351, label %1349, !prof !512

1349:                                             ; preds = %1345
  %1350 = tail call i32 @get_mode_alignment(i32 noundef %1064) #22
  br label %1351

1351:                                             ; preds = %1349, %1323, %1329, %1345, %1334
  %1352 = and i64 %1273, 7
  %1353 = icmp eq i64 %1352, 0
  br i1 %1353, label %1354, label %1369, !prof !515

1354:                                             ; preds = %1306, %1351, %1322
  %1355 = load i64, ptr %12, align 8, !tbaa !311
  %1356 = icmp sgt i64 %1355, -1
  br i1 %1356, label %1357, label %1474, !prof !515

1357:                                             ; preds = %1354
  %1358 = load ptr, ptr %36, align 8, !tbaa !197
  %1359 = getelementptr inbounds %struct.tree_type, ptr %1358, i64 0, i32 2
  %1360 = load ptr, ptr %1359, align 8, !tbaa !197
  %1361 = icmp eq ptr %1360, null
  br i1 %1361, label %1474, label %1362, !prof !512

1362:                                             ; preds = %1357
  %1363 = load i64, ptr %1360, align 8
  %1364 = and i64 %1363, 65535
  %1365 = icmp eq i64 %1364, 23
  br i1 %1365, label %1366, label %1474, !prof !515

1366:                                             ; preds = %1362
  %1367 = tail call i32 @compare_tree_int(ptr noundef nonnull %1360, i64 noundef %1355) #22
  %1368 = icmp eq i32 %1367, 0
  br i1 %1368, label %1474, label %1369, !prof !515

1369:                                             ; preds = %1302, %1302, %1317, %1366, %1351, %1300
  %1370 = icmp eq i32 %49, 1
  br i1 %1370, label %1371, label %1389

1371:                                             ; preds = %1369
  %1372 = icmp eq ptr %1013, null
  br i1 %1372, label %1385, label %1373

1373:                                             ; preds = %1371
  %1374 = load ptr, ptr %6, align 8, !tbaa !186
  %1375 = load i32, ptr %1374, align 8
  %1376 = and i32 %1375, 65535
  %1377 = icmp eq i32 %1376, 43
  br i1 %1377, label %1378, label %1385

1378:                                             ; preds = %1373
  %1379 = load i32, ptr %1013, align 8
  %1380 = and i32 %1379, 65535
  %1381 = icmp eq i32 %1380, 43
  %1382 = and i64 %1273, 7
  %1383 = icmp eq i64 %1382, 0
  %1384 = select i1 %1381, i1 %1383, i1 false
  br i1 %1384, label %1389, label %1385

1385:                                             ; preds = %1378, %1373, %1371
  %1386 = load i64, ptr %12, align 8, !tbaa !311
  %1387 = trunc i64 %1386 to i32
  %1388 = tail call i32 @mode_for_size(i32 noundef %1387, i32 noundef 2, i32 noundef 1) #22
  br label %1389

1389:                                             ; preds = %1378, %1385, %1369
  %1390 = phi i32 [ %1388, %1385 ], [ %49, %1369 ], [ 1, %1378 ]
  %1391 = icmp eq i32 %1390, 1
  br i1 %1391, label %1392, label %1426

1392:                                             ; preds = %1389
  %1393 = icmp eq ptr %1013, null
  br i1 %1393, label %1394, label %1396

1394:                                             ; preds = %1392
  %1395 = tail call ptr @assign_temp(ptr noundef nonnull %37, i32 noundef 0, i32 noundef 1, i32 noundef 1) #22
  br label %1396

1396:                                             ; preds = %1394, %1392
  %1397 = phi ptr [ %1395, %1394 ], [ %1013, %1392 ]
  %1398 = load i64, ptr %12, align 8, !tbaa !311
  %1399 = icmp eq i64 %1398, 0
  br i1 %1399, label %1524, label %1400

1400:                                             ; preds = %1396
  %1401 = load ptr, ptr %6, align 8, !tbaa !186
  %1402 = load i32, ptr %1401, align 8
  %1403 = and i32 %1402, 65535
  %1404 = icmp eq i32 %1403, 43
  br i1 %1404, label %1405, label %1417

1405:                                             ; preds = %1400
  %1406 = icmp eq ptr %1397, null
  br i1 %1406, label %1414, label %1407

1407:                                             ; preds = %1405
  %1408 = load i32, ptr %1397, align 8
  %1409 = and i32 %1408, 65535
  %1410 = icmp eq i32 %1409, 43
  %1411 = and i64 %1273, 7
  %1412 = icmp eq i64 %1411, 0
  %1413 = select i1 %1410, i1 %1412, i1 false
  br i1 %1413, label %1418, label %1417

1414:                                             ; preds = %1405
  %1415 = and i64 %1273, 7
  %1416 = icmp eq i64 %1415, 0
  br i1 %1416, label %1418, label %1417

1417:                                             ; preds = %1407, %1414, %1400
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9128, ptr noundef nonnull @.str.1) #22
  br label %1418

1418:                                             ; preds = %1407, %1414, %1417
  %1419 = sdiv i64 %1273, 8
  %1420 = tail call ptr @adjust_address_1(ptr noundef nonnull %1401, i32 noundef 0, i64 noundef %1419, i32 noundef 1, i32 noundef 1) #22
  %1421 = add nsw i64 %1398, 7
  %1422 = sdiv i64 %1421, 8
  %1423 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1422) #22
  %1424 = select i1 %161, i32 2, i32 0
  %1425 = tail call ptr @emit_block_move_hints(ptr noundef %1397, ptr noundef %1420, ptr noundef %1423, i32 noundef %1424, i32 noundef 0, i64 noundef -1)
  br label %1524

1426:                                             ; preds = %1389
  %1427 = load ptr, ptr %6, align 8, !tbaa !186
  %1428 = tail call ptr @validize_mem(ptr noundef %1427) #22
  store ptr %1428, ptr %6, align 8, !tbaa !186
  %1429 = load i32, ptr %1428, align 8
  %1430 = and i32 %1429, 65535
  %1431 = icmp eq i32 %1430, 43
  br i1 %1431, label %1432, label %1447

1432:                                             ; preds = %1426
  %1433 = getelementptr inbounds %struct.rtx_def, ptr %1428, i64 0, i32 1
  %1434 = load ptr, ptr %1433, align 8, !tbaa !197
  %1435 = load i32, ptr %1434, align 8
  %1436 = and i32 %1435, 65535
  %1437 = icmp eq i32 %1436, 37
  br i1 %1437, label %1438, label %1447

1438:                                             ; preds = %1432
  %1439 = getelementptr inbounds %struct.rtx_def, ptr %1428, i64 0, i32 1, i32 0, i32 0, i64 1
  %1440 = load ptr, ptr %1439, align 8, !tbaa !197
  %1441 = icmp eq ptr %1440, null
  br i1 %1441, label %1445, label %1442

1442:                                             ; preds = %1438
  %1443 = getelementptr inbounds %struct.mem_attrs, ptr %1440, i64 0, i32 4
  %1444 = load i32, ptr %1443, align 4, !tbaa !294
  br label %1445

1445:                                             ; preds = %1438, %1442
  %1446 = phi i32 [ %1444, %1442 ], [ 8, %1438 ]
  tail call void @mark_reg_pointer(ptr noundef nonnull %1434, i32 noundef %1446) #22
  br label %1447

1447:                                             ; preds = %1445, %1432, %1426
  %1448 = load i64, ptr %12, align 8, !tbaa !311
  %1449 = load i32, ptr %8, align 4, !tbaa !201
  %1450 = select i1 %161, ptr null, ptr %1013
  %1451 = tail call ptr @extract_bit_field(ptr noundef nonnull %1428, i64 noundef %1448, i64 noundef %1273, i32 noundef %1449, ptr noundef %1450, i32 noundef %1390, i32 noundef %1390) #22
  store ptr %1451, ptr %6, align 8, !tbaa !186
  br i1 %1370, label %1452, label %1472

1452:                                             ; preds = %1447
  %1453 = zext i32 %1390 to i64
  %1454 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1453
  %1455 = load i8, ptr %1454, align 1, !tbaa !197
  %1456 = zext i8 %1455 to i64
  %1457 = shl nuw nsw i64 %1456, 3
  %1458 = tail call zeroext i8 @component_uses_parent_alias_set(ptr noundef %0) #22
  %1459 = icmp eq i8 %1458, 0
  br i1 %1459, label %1463, label %1460

1460:                                             ; preds = %1452
  %1461 = tail call ptr @assign_stack_local(i32 noundef %1390, i64 noundef %1457, i32 noundef 0) #22
  %1462 = tail call i32 @get_alias_set(ptr noundef %0) #22
  tail call void @set_mem_alias_set(ptr noundef %1461, i32 noundef %1462) #22
  br label %1465

1463:                                             ; preds = %1452
  %1464 = tail call ptr @assign_stack_temp_for_type(i32 noundef %1390, i64 noundef %1457, i32 noundef 0, ptr noundef nonnull %37) #22
  br label %1465

1465:                                             ; preds = %1463, %1460
  %1466 = phi ptr [ %1461, %1460 ], [ %1464, %1463 ]
  %1467 = tail call ptr @emit_move_insn(ptr noundef %1466, ptr noundef %1451)
  %1468 = tail call ptr @copy_rtx(ptr noundef %1466) #22
  store ptr %1468, ptr %6, align 8, !tbaa !186
  %1469 = load i32, ptr %1468, align 8
  %1470 = and i32 %1469, -16711681
  %1471 = or disjoint i32 %1470, 65536
  store i32 %1471, ptr %1468, align 8
  tail call void @set_mem_attributes(ptr noundef nonnull %1468, ptr noundef %0, i32 noundef 1) #22
  br label %1472

1472:                                             ; preds = %1465, %1447
  %1473 = load ptr, ptr %6, align 8, !tbaa !186
  br label %1524

1474:                                             ; preds = %1366, %1362, %1357, %1354
  %1475 = icmp eq i32 %49, 1
  br i1 %1475, label %1476, label %1477, !prof !512

1476:                                             ; preds = %1474
  store i32 1, ptr %11, align 4, !tbaa !201
  br label %1477

1477:                                             ; preds = %1476, %1474
  %1478 = add i32 %3, -5
  %1479 = icmp ult i32 %1478, -3
  %1480 = load i32, ptr %11, align 4, !tbaa !201
  %1481 = sdiv i64 %1273, 8
  %1482 = zext i1 %1479 to i32
  %1483 = tail call ptr @adjust_address_1(ptr noundef nonnull %1303, i32 noundef %1480, i64 noundef %1481, i32 noundef %1482, i32 noundef 1) #22
  store ptr %1483, ptr %6, align 8, !tbaa !186
  %1484 = icmp eq ptr %1483, %1038
  br i1 %1484, label %1485, label %1487, !prof !512

1485:                                             ; preds = %1477
  %1486 = tail call ptr @copy_rtx(ptr noundef %1483) #22
  store ptr %1486, ptr %6, align 8, !tbaa !186
  br label %1487

1487:                                             ; preds = %1485, %1477
  %1488 = load ptr, ptr %6, align 8, !tbaa !186
  tail call void @set_mem_attributes(ptr noundef %1488, ptr noundef %0, i32 noundef 0) #22
  %1489 = getelementptr inbounds %struct.rtx_def, ptr %1488, i64 0, i32 1
  %1490 = load ptr, ptr %1489, align 8, !tbaa !197
  %1491 = load i32, ptr %1490, align 8
  %1492 = and i32 %1491, 65535
  %1493 = icmp eq i32 %1492, 37
  br i1 %1493, label %1494, label %1503, !prof !521

1494:                                             ; preds = %1487
  %1495 = getelementptr inbounds %struct.rtx_def, ptr %1488, i64 0, i32 1, i32 0, i32 0, i64 1
  %1496 = load ptr, ptr %1495, align 8, !tbaa !197
  %1497 = icmp eq ptr %1496, null
  br i1 %1497, label %1501, label %1498, !prof !522

1498:                                             ; preds = %1494
  %1499 = getelementptr inbounds %struct.mem_attrs, ptr %1496, i64 0, i32 4
  %1500 = load i32, ptr %1499, align 4, !tbaa !294
  br label %1501

1501:                                             ; preds = %1494, %1498
  %1502 = phi i32 [ %1500, %1498 ], [ 8, %1494 ]
  tail call void @mark_reg_pointer(ptr noundef nonnull %1490, i32 noundef %1502) #22
  br label %1503

1503:                                             ; preds = %1501, %1487
  %1504 = load i32, ptr %1488, align 8
  %1505 = shl i32 %1287, 27
  %1506 = and i32 %1505, 134217728
  %1507 = or i32 %1504, %1506
  store i32 %1507, ptr %1488, align 8
  %1508 = load i32, ptr %11, align 4
  %1509 = icmp eq i32 %49, %1508
  %1510 = icmp eq i32 %1508, 1
  %1511 = or i1 %1509, %1510
  %1512 = icmp eq i32 %1508, %2
  %1513 = or i1 %1035, %1512
  %1514 = or i1 %1511, %1513
  br i1 %1514, label %1524, label %1515, !prof !515

1515:                                             ; preds = %1503
  %1516 = icmp eq ptr %1013, null
  br i1 %1516, label %1517, label %1521

1517:                                             ; preds = %1515
  %1518 = icmp eq i32 %2, 0
  %1519 = select i1 %1518, i32 %49, i32 %2
  %1520 = tail call ptr @gen_reg_rtx(i32 noundef %1519) #22
  br label %1521

1521:                                             ; preds = %1515, %1517
  %1522 = phi ptr [ %1520, %1517 ], [ %1013, %1515 ]
  %1523 = load i32, ptr %8, align 4, !tbaa !201
  tail call void @convert_move(ptr noundef %1522, ptr noundef nonnull %1488, i32 noundef %1523)
  br label %1524

1524:                                             ; preds = %1503, %1418, %1472, %1396, %1086, %1521
  %1525 = phi ptr [ %1522, %1521 ], [ %1038, %1086 ], [ %1397, %1418 ], [ %1473, %1472 ], [ %1397, %1396 ], [ %1488, %1503 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  br label %2115

1526:                                             ; preds = %177
  %1527 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %1528 = load ptr, ptr %1527, align 8, !tbaa !197
  %1529 = tail call ptr @expand_expr_real(ptr noundef %1528, ptr noundef %163, i32 noundef %2, i32 noundef %3, ptr noundef null)
  br label %2115

1530:                                             ; preds = %177
  %1531 = and i64 %54, 134217728
  %1532 = icmp eq i64 %1531, 0
  br i1 %1532, label %1534, label %1533, !prof !523

1533:                                             ; preds = %1530
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef %0) #22
  br label %1534

1534:                                             ; preds = %1533, %1530
  %1535 = tail call ptr @get_callee_fndecl(ptr noundef %0) #22
  %1536 = icmp eq ptr %1535, null
  br i1 %1536, label %1574, label %1537, !prof !524

1537:                                             ; preds = %1534
  %1538 = getelementptr inbounds %struct.tree_decl_common, ptr %1535, i64 0, i32 6
  %1539 = load ptr, ptr %1538, align 8, !tbaa !197
  %1540 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.5, ptr noundef %1539) #22
  %1541 = icmp eq ptr %1540, null
  br i1 %1541, label %1551, label %1542, !prof !523

1542:                                             ; preds = %1537
  %1543 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !525
  %1544 = tail call ptr %1543(ptr noundef nonnull %1535, i32 noundef 1) #22
  %1545 = tail call ptr @identifier_to_locale(ptr noundef %1544) #22
  %1546 = getelementptr inbounds %struct.tree_list, ptr %1540, i64 0, i32 2
  %1547 = load ptr, ptr %1546, align 8, !tbaa !197
  %1548 = getelementptr inbounds %struct.tree_list, ptr %1547, i64 0, i32 2
  %1549 = load ptr, ptr %1548, align 8, !tbaa !197
  %1550 = getelementptr inbounds %struct.tree_string, ptr %1549, i64 0, i32 2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.6, ptr noundef %0, ptr noundef %1545, ptr noundef nonnull %1550) #22
  br label %1551

1551:                                             ; preds = %1537, %1542
  %1552 = load ptr, ptr %1538, align 8, !tbaa !197
  %1553 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.7, ptr noundef %1552) #22
  %1554 = icmp eq ptr %1553, null
  br i1 %1554, label %1566, label %1555, !prof !523

1555:                                             ; preds = %1551
  %1556 = tail call i32 @tree_nonartificial_location(ptr noundef %0) #22
  %1557 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !525
  %1558 = tail call ptr %1557(ptr noundef nonnull %1535, i32 noundef 1) #22
  %1559 = tail call ptr @identifier_to_locale(ptr noundef %1558) #22
  %1560 = getelementptr inbounds %struct.tree_list, ptr %1553, i64 0, i32 2
  %1561 = load ptr, ptr %1560, align 8, !tbaa !197
  %1562 = getelementptr inbounds %struct.tree_list, ptr %1561, i64 0, i32 2
  %1563 = load ptr, ptr %1562, align 8, !tbaa !197
  %1564 = getelementptr inbounds %struct.tree_string, ptr %1563, i64 0, i32 2
  %1565 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %1556, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef %0, ptr noundef %1559, ptr noundef nonnull %1564) #22
  br label %1566

1566:                                             ; preds = %1551, %1555
  %1567 = getelementptr inbounds %struct.tree_function_decl, ptr %1535, i64 0, i32 5
  %1568 = load i32, ptr %1567, align 8
  %1569 = lshr i32 %1568, 11
  %1570 = and i32 %1569, 3
  switch i32 %1570, label %1572 [
    i32 0, label %1574
    i32 1, label %1571
  ], !prof !526

1571:                                             ; preds = %1566
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9253, ptr noundef nonnull @.str.1) #22
  br label %1572

1572:                                             ; preds = %1566, %1571
  %1573 = tail call ptr @expand_builtin(ptr noundef %0, ptr noundef %163, ptr noundef %178, i32 noundef %2, i32 noundef %93) #22
  br label %1574

1574:                                             ; preds = %1566, %1534, %1572
  %1575 = phi i1 [ false, %1572 ], [ true, %1534 ], [ true, %1566 ]
  %1576 = phi ptr [ %1573, %1572 ], [ undef, %1534 ], [ undef, %1566 ]
  br i1 %1575, label %1577, label %2115, !prof !523

1577:                                             ; preds = %1574
  %1578 = tail call ptr @expand_call(ptr noundef %0, ptr noundef %163, i32 noundef %93) #22
  br label %2115

1579:                                             ; preds = %177
  store ptr null, ptr %6, align 8, !tbaa !186
  %1580 = icmp eq i32 %49, 1
  br i1 %1580, label %1581, label %1681

1581:                                             ; preds = %1579
  %1582 = load ptr, ptr %36, align 8, !tbaa !197
  %1583 = getelementptr inbounds %struct.tree_type, ptr %1582, i64 0, i32 2
  %1584 = load ptr, ptr %1583, align 8, !tbaa !197
  %1585 = load i64, ptr %1584, align 8
  %1586 = and i64 %1585, 65535
  %1587 = icmp eq i64 %1586, 23
  br i1 %1587, label %1588, label %1681

1588:                                             ; preds = %1581
  %1589 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 2
  %1590 = load ptr, ptr %1589, align 8, !tbaa !197
  %1591 = load i64, ptr %1590, align 8
  %1592 = and i64 %1591, 65535
  %1593 = icmp eq i64 %1592, 14
  br i1 %1593, label %1594, label %1596

1594:                                             ; preds = %1588
  %1595 = tail call i32 @vector_type_mode(ptr noundef nonnull %1590) #22
  br label %1601

1596:                                             ; preds = %1588
  %1597 = getelementptr inbounds %struct.tree_type, ptr %1590, i64 0, i32 6
  %1598 = load i32, ptr %1597, align 4
  %1599 = lshr i32 %1598, 16
  %1600 = and i32 %1599, 255
  br label %1601

1601:                                             ; preds = %1596, %1594
  %1602 = phi i32 [ %1595, %1594 ], [ %1600, %1596 ]
  %1603 = icmp eq i32 %1602, 1
  br i1 %1603, label %1681, label %1604

1604:                                             ; preds = %1601
  %1605 = load i64, ptr %77, align 8
  %1606 = trunc i64 %1605 to i16
  switch i16 %1606, label %1681 [
    i16 42, label %1607
    i16 41, label %1607
    i16 45, label %1607
    i16 46, label %1607
    i16 118, label %1607
    i16 43, label %1607
    i16 44, label %1607
  ]

1607:                                             ; preds = %1604, %1604, %1604, %1604, %1604, %1604, %1604
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #22
  store i32 0, ptr %21, align 4, !tbaa !201
  %1608 = call ptr @get_inner_reference(ptr noundef nonnull %77, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %16, ptr noundef nonnull %20, ptr noundef nonnull %21, i8 zeroext poison)
  %1609 = load ptr, ptr %19, align 8, !tbaa !186
  %1610 = icmp eq ptr %1609, null
  br i1 %1610, label %1611, label %1680

1611:                                             ; preds = %1607
  %1612 = load i64, ptr %18, align 8, !tbaa !311
  %1613 = and i64 %1612, 7
  %1614 = icmp eq i64 %1613, 0
  %1615 = load i64, ptr %17, align 8
  %1616 = icmp sgt i64 %1615, -1
  %1617 = select i1 %1614, i1 %1616, i1 false
  br i1 %1617, label %1618, label %1680

1618:                                             ; preds = %1611
  %1619 = load ptr, ptr %36, align 8, !tbaa !197
  %1620 = getelementptr inbounds %struct.tree_type, ptr %1619, i64 0, i32 2
  %1621 = load ptr, ptr %1620, align 8, !tbaa !197
  %1622 = tail call i32 @compare_tree_int(ptr noundef %1621, i64 noundef %1615) #22
  %1623 = icmp eq i32 %1622, 0
  br i1 %1623, label %1624, label %1680

1624:                                             ; preds = %1618
  %1625 = getelementptr inbounds %struct.tree_common, ptr %1608, i64 0, i32 2
  %1626 = load ptr, ptr %1625, align 8, !tbaa !197
  %1627 = load i64, ptr %1626, align 8
  %1628 = and i64 %1627, 65535
  %1629 = icmp eq i64 %1628, 17
  br i1 %1629, label %1630, label %1639

1630:                                             ; preds = %1624
  %1631 = getelementptr inbounds %struct.tree_type, ptr %1626, i64 0, i32 2
  %1632 = load ptr, ptr %1631, align 8, !tbaa !197
  %1633 = load i64, ptr %1632, align 8
  %1634 = and i64 %1633, 65535
  %1635 = icmp ne i64 %1634, 23
  %1636 = icmp ne i32 %3, 1
  %1637 = and i1 %1636, %1635
  %1638 = select i1 %1637, ptr %163, ptr null
  br label %1639

1639:                                             ; preds = %1630, %1624
  %1640 = phi ptr [ null, %1624 ], [ %1638, %1630 ]
  %1641 = add i32 %3, -3
  %1642 = icmp ult i32 %1641, 2
  %1643 = or i1 %161, %1642
  %1644 = select i1 %1643, i32 %3, i32 0
  %1645 = tail call ptr @expand_expr_real(ptr noundef %1608, ptr noundef %1640, i32 noundef 0, i32 noundef %1644, ptr noundef null)
  %1646 = load i32, ptr %1645, align 8
  %1647 = and i32 %1646, 65535
  %1648 = icmp eq i32 %1647, 43
  br i1 %1648, label %1649, label %1680

1649:                                             ; preds = %1639
  store ptr %1645, ptr %6, align 8, !tbaa !186
  %1650 = add i32 %3, -5
  %1651 = icmp ult i32 %1650, -3
  %1652 = sdiv i64 %1612, 8
  %1653 = zext i1 %1651 to i32
  %1654 = tail call ptr @adjust_address_1(ptr noundef nonnull %1645, i32 noundef 1, i64 noundef %1652, i32 noundef %1653, i32 noundef 1) #22
  store ptr %1654, ptr %6, align 8, !tbaa !186
  %1655 = icmp eq ptr %1654, %1645
  br i1 %1655, label %1656, label %1658

1656:                                             ; preds = %1649
  %1657 = tail call ptr @copy_rtx(ptr noundef %1654) #22
  store ptr %1657, ptr %6, align 8, !tbaa !186
  br label %1658

1658:                                             ; preds = %1656, %1649
  %1659 = load ptr, ptr %6, align 8, !tbaa !186
  tail call void @set_mem_attributes(ptr noundef %1659, ptr noundef nonnull %77, i32 noundef 0) #22
  %1660 = getelementptr inbounds %struct.rtx_def, ptr %1659, i64 0, i32 1
  %1661 = load ptr, ptr %1660, align 8, !tbaa !197
  %1662 = load i32, ptr %1661, align 8
  %1663 = and i32 %1662, 65535
  %1664 = icmp eq i32 %1663, 37
  br i1 %1664, label %1665, label %1674

1665:                                             ; preds = %1658
  %1666 = getelementptr inbounds %struct.rtx_def, ptr %1659, i64 0, i32 1, i32 0, i32 0, i64 1
  %1667 = load ptr, ptr %1666, align 8, !tbaa !197
  %1668 = icmp eq ptr %1667, null
  br i1 %1668, label %1672, label %1669

1669:                                             ; preds = %1665
  %1670 = getelementptr inbounds %struct.mem_attrs, ptr %1667, i64 0, i32 4
  %1671 = load i32, ptr %1670, align 4, !tbaa !294
  br label %1672

1672:                                             ; preds = %1665, %1669
  %1673 = phi i32 [ %1671, %1669 ], [ 8, %1665 ]
  tail call void @mark_reg_pointer(ptr noundef nonnull %1661, i32 noundef %1673) #22
  br label %1674

1674:                                             ; preds = %1672, %1658
  %1675 = load i32, ptr %21, align 4, !tbaa !201
  %1676 = load i32, ptr %1659, align 8
  %1677 = shl i32 %1675, 27
  %1678 = and i32 %1677, 134217728
  %1679 = or i32 %1678, %1676
  store i32 %1679, ptr %1659, align 8
  br label %1680

1680:                                             ; preds = %1639, %1674, %1618, %1611, %1607
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #22
  br label %1681

1681:                                             ; preds = %1604, %1680, %1601, %1581, %1579
  %1682 = load ptr, ptr %6, align 8, !tbaa !186
  %1683 = icmp eq ptr %1682, null
  br i1 %1683, label %1684, label %1686

1684:                                             ; preds = %1681
  %1685 = tail call ptr @expand_expr_real(ptr noundef %77, ptr noundef null, i32 noundef 0, i32 noundef %3, ptr noundef null)
  store ptr %1685, ptr %6, align 8, !tbaa !186
  br label %1686

1686:                                             ; preds = %1684, %1681
  %1687 = load ptr, ptr %6, align 8, !tbaa !186
  %1688 = load i32, ptr %1687, align 8
  %1689 = lshr i32 %1688, 16
  %1690 = and i32 %1689, 255
  %1691 = icmp eq i32 %49, %1690
  br i1 %1691, label %1798, label %1692

1692:                                             ; preds = %1686
  %1693 = icmp eq i32 %1690, 1
  %1694 = or i1 %1580, %1693
  br i1 %1694, label %1717, label %1695

1695:                                             ; preds = %1692
  %1696 = zext i32 %49 to i64
  %1697 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1696
  %1698 = load i8, ptr %1697, align 1, !tbaa !197
  %1699 = zext nneg i32 %1690 to i64
  %1700 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1699
  %1701 = load i8, ptr %1700, align 1, !tbaa !197
  %1702 = icmp eq i8 %1698, %1701
  br i1 %1702, label %1703, label %1717

1703:                                             ; preds = %1695
  %1704 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1699
  %1705 = load i8, ptr %1704, align 1, !tbaa !197
  %1706 = and i8 %1705, -2
  %1707 = icmp eq i8 %1706, 10
  br i1 %1707, label %1717, label %1708

1708:                                             ; preds = %1703
  %1709 = and i32 %1688, 65535
  %1710 = icmp eq i32 %1709, 39
  br i1 %1710, label %1711, label %1713

1711:                                             ; preds = %1708
  %1712 = tail call ptr @force_reg(i32 noundef %1690, ptr noundef nonnull %1687) #22
  store ptr %1712, ptr %6, align 8, !tbaa !186
  br label %1713

1713:                                             ; preds = %1711, %1708
  %1714 = load ptr, ptr @rtl_hooks, align 8, !tbaa !231
  %1715 = load ptr, ptr %6, align 8, !tbaa !186
  %1716 = tail call ptr %1714(i32 noundef %49, ptr noundef %1715) #22
  store ptr %1716, ptr %6, align 8, !tbaa !186
  br label %1798

1717:                                             ; preds = %1703, %1695, %1692
  %1718 = zext nneg i32 %1690 to i64
  %1719 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1718
  %1720 = load i8, ptr %1719, align 1, !tbaa !197
  %1721 = and i8 %1720, -2
  %1722 = icmp eq i8 %1721, 2
  br i1 %1722, label %1723, label %1737

1723:                                             ; preds = %1717
  %1724 = zext i32 %49 to i64
  %1725 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1724
  %1726 = load i8, ptr %1725, align 1, !tbaa !197
  %1727 = and i8 %1726, -2
  %1728 = icmp eq i8 %1727, 2
  br i1 %1728, label %1729, label %1737

1729:                                             ; preds = %1723
  %1730 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 2
  %1731 = load ptr, ptr %1730, align 8, !tbaa !197
  %1732 = load i64, ptr %1731, align 8
  %1733 = trunc i64 %1732 to i32
  %1734 = lshr i32 %1733, 21
  %1735 = and i32 %1734, 1
  %1736 = tail call ptr @convert_modes(i32 noundef %49, i32 noundef %1690, ptr noundef nonnull %1687, i32 noundef %1735)
  store ptr %1736, ptr %6, align 8, !tbaa !186
  br label %1798

1737:                                             ; preds = %1723, %1717
  %1738 = and i32 %1688, 65535
  %1739 = icmp eq i32 %1738, 43
  br i1 %1739, label %1798, label %1740

1740:                                             ; preds = %1737
  %1741 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 2
  %1742 = load ptr, ptr %1741, align 8, !tbaa !197
  %1743 = load i64, ptr %0, align 8
  %1744 = and i64 %1743, 262144
  %1745 = icmp eq i64 %1744, 0
  br i1 %1745, label %1747, label %1746

1746:                                             ; preds = %1740
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9356, ptr noundef nonnull @.str.1) #22
  br label %1747

1747:                                             ; preds = %1740, %1746
  br i1 %166, label %1765, label %1748

1748:                                             ; preds = %1747
  %1749 = load i32, ptr %163, align 8
  %1750 = lshr i32 %1749, 16
  %1751 = and i32 %1750, 255
  %1752 = load i64, ptr %1742, align 8
  %1753 = and i64 %1752, 65535
  %1754 = icmp eq i64 %1753, 14
  br i1 %1754, label %1755, label %1757

1755:                                             ; preds = %1748
  %1756 = tail call i32 @vector_type_mode(ptr noundef nonnull %1742) #22
  br label %1762

1757:                                             ; preds = %1748
  %1758 = getelementptr inbounds %struct.tree_type, ptr %1742, i64 0, i32 6
  %1759 = load i32, ptr %1758, align 4
  %1760 = lshr i32 %1759, 16
  %1761 = and i32 %1760, 255
  br label %1762

1762:                                             ; preds = %1757, %1755
  %1763 = phi i32 [ %1756, %1755 ], [ %1761, %1757 ]
  %1764 = icmp eq i32 %1751, %1763
  br i1 %1764, label %1795, label %1765

1765:                                             ; preds = %1762, %1747
  %1766 = load i64, ptr %1742, align 8
  %1767 = and i64 %1766, 65535
  %1768 = icmp eq i64 %1767, 14
  br i1 %1768, label %1769, label %1771

1769:                                             ; preds = %1765
  %1770 = tail call i32 @vector_type_mode(ptr noundef nonnull %1742) #22
  br label %1776

1771:                                             ; preds = %1765
  %1772 = getelementptr inbounds %struct.tree_type, ptr %1742, i64 0, i32 6
  %1773 = load i32, ptr %1772, align 4
  %1774 = lshr i32 %1773, 16
  %1775 = and i32 %1774, 255
  br label %1776

1776:                                             ; preds = %1771, %1769
  %1777 = phi i32 [ %1770, %1769 ], [ %1775, %1771 ]
  %1778 = load i64, ptr %1742, align 8
  %1779 = and i64 %1778, 65535
  %1780 = icmp eq i64 %1779, 14
  br i1 %1780, label %1781, label %1783

1781:                                             ; preds = %1776
  %1782 = tail call i32 @vector_type_mode(ptr noundef nonnull %1742) #22
  br label %1788

1783:                                             ; preds = %1776
  %1784 = getelementptr inbounds %struct.tree_type, ptr %1742, i64 0, i32 6
  %1785 = load i32, ptr %1784, align 4
  %1786 = lshr i32 %1785, 16
  %1787 = and i32 %1786, 255
  br label %1788

1788:                                             ; preds = %1783, %1781
  %1789 = phi i32 [ %1782, %1781 ], [ %1787, %1783 ]
  %1790 = zext i32 %1789 to i64
  %1791 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1790
  %1792 = load i8, ptr %1791, align 1, !tbaa !197
  %1793 = zext i8 %1792 to i64
  %1794 = tail call ptr @assign_stack_temp_for_type(i32 noundef %1777, i64 noundef %1793, i32 noundef 0, ptr noundef nonnull %1742) #22
  br label %1795

1795:                                             ; preds = %1788, %1762
  %1796 = phi ptr [ %1794, %1788 ], [ %163, %1762 ]
  %1797 = tail call ptr @emit_move_insn(ptr noundef %1796, ptr noundef nonnull %1687)
  store ptr %1796, ptr %6, align 8, !tbaa !186
  br label %1798

1798:                                             ; preds = %1713, %1737, %1795, %1729, %1686
  %1799 = load ptr, ptr %6, align 8, !tbaa !186
  %1800 = load i32, ptr %1799, align 8
  %1801 = and i32 %1800, 65535
  %1802 = icmp eq i32 %1801, 43
  br i1 %1802, label %1803, label %1829

1803:                                             ; preds = %1798
  %1804 = tail call ptr @copy_rtx(ptr noundef nonnull %1799) #22
  store ptr %1804, ptr %6, align 8, !tbaa !186
  %1805 = load i64, ptr %37, align 8
  %1806 = and i64 %1805, 33554432
  %1807 = icmp eq i64 %1806, 0
  br i1 %1807, label %1827, label %1808

1808:                                             ; preds = %1803
  %1809 = getelementptr inbounds %struct.rtx_def, ptr %1804, i64 0, i32 1, i32 0, i32 0, i64 1
  %1810 = load ptr, ptr %1809, align 8, !tbaa !197
  %1811 = icmp eq ptr %1810, null
  br i1 %1811, label %1815, label %1812

1812:                                             ; preds = %1808
  %1813 = getelementptr inbounds %struct.mem_attrs, ptr %1810, i64 0, i32 4
  %1814 = load i32, ptr %1813, align 4, !tbaa !294
  br label %1815

1815:                                             ; preds = %1808, %1812
  %1816 = phi i32 [ %1814, %1812 ], [ 8, %1808 ]
  %1817 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 7
  %1818 = load i32, ptr %1817, align 8, !tbaa !197
  %1819 = icmp ule i32 %1816, %1818
  %1820 = or i1 %1811, %1819
  %1821 = select i1 %1819, i32 %1818, i32 8
  br i1 %1820, label %1825, label %1822

1822:                                             ; preds = %1815
  %1823 = getelementptr inbounds %struct.mem_attrs, ptr %1810, i64 0, i32 4
  %1824 = load i32, ptr %1823, align 4, !tbaa !294
  br label %1825

1825:                                             ; preds = %1815, %1822
  %1826 = phi i32 [ %1824, %1822 ], [ %1821, %1815 ]
  tail call void @set_mem_align(ptr noundef %1804, i32 noundef %1826) #22
  br label %1827

1827:                                             ; preds = %1803, %1825
  %1828 = tail call ptr @adjust_address_1(ptr noundef %1804, i32 noundef %49, i64 noundef 0, i32 noundef 1, i32 noundef 1) #22
  store ptr %1828, ptr %6, align 8, !tbaa !186
  br label %1829

1829:                                             ; preds = %1827, %1798
  %1830 = load ptr, ptr %6, align 8, !tbaa !186
  br label %2115

1831:                                             ; preds = %177, %177
  br i1 %92, label %1855, label %1832

1832:                                             ; preds = %1831
  %1833 = or i1 %161, %166
  br i1 %1833, label %1851, label %1834

1834:                                             ; preds = %1832
  %1835 = tail call i32 @safe_from_p(ptr noundef %163, ptr noundef %77, i32 noundef 1), !range !449
  %1836 = icmp eq i32 %1835, 0
  br i1 %1836, label %1851, label %1837

1837:                                             ; preds = %1834
  %1838 = tail call i32 @safe_from_p(ptr noundef %163, ptr noundef %76, i32 noundef 1), !range !449
  %1839 = icmp eq i32 %1838, 0
  br i1 %1839, label %1851, label %1840

1840:                                             ; preds = %1837
  %1841 = load i32, ptr @optimize, align 4, !tbaa !201
  %1842 = icmp eq i32 %1841, 0
  br i1 %1842, label %1843, label %1855

1843:                                             ; preds = %1840
  %1844 = load i32, ptr %163, align 8
  %1845 = and i32 %1844, 65535
  %1846 = icmp eq i32 %1845, 37
  br i1 %1846, label %1847, label %1855

1847:                                             ; preds = %1843
  %1848 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 0, i32 1
  %1849 = load i32, ptr %1848, align 8, !tbaa !197
  %1850 = icmp ult i32 %1849, 53
  br i1 %1850, label %1851, label %1855

1851:                                             ; preds = %1847, %1837, %1834, %1832
  %1852 = icmp eq i32 %2, 0
  %1853 = select i1 %1852, i32 %49, i32 %2
  %1854 = tail call ptr @gen_reg_rtx(i32 noundef %1853) #22
  br label %1855

1855:                                             ; preds = %1851, %1847, %1843, %1840, %1831
  %1856 = phi ptr [ %163, %1831 ], [ %1854, %1851 ], [ %163, %1840 ], [ %163, %1847 ], [ %163, %1843 ]
  %1857 = icmp eq ptr %1856, null
  br i1 %1857, label %1864, label %1858

1858:                                             ; preds = %1855
  %1859 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %1860 = tail call ptr @emit_move_insn(ptr noundef nonnull %1856, ptr noundef %1859)
  %1861 = tail call ptr @gen_label_rtx() #22
  store ptr %1861, ptr %7, align 8, !tbaa !186
  tail call void @jumpifnot_1(i32 noundef %24, ptr noundef %77, ptr noundef %76, ptr noundef %1861, i32 noundef -1) #22
  %1862 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !186
  %1863 = tail call ptr @emit_move_insn(ptr noundef nonnull %1856, ptr noundef %1862)
  br label %1866

1864:                                             ; preds = %1855
  %1865 = tail call ptr @gen_label_rtx() #22
  store ptr %1865, ptr %7, align 8, !tbaa !186
  tail call void @jumpifnot_1(i32 noundef %24, ptr noundef %77, ptr noundef %76, ptr noundef %1865, i32 noundef -1) #22
  br label %1866

1866:                                             ; preds = %1864, %1858
  %1867 = load ptr, ptr %7, align 8, !tbaa !186
  %1868 = tail call ptr @emit_label(ptr noundef %1867) #22
  %1869 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %1870 = select i1 %92, ptr %1869, ptr %1856
  br label %2115

1871:                                             ; preds = %177
  br i1 %92, label %1873, label %1872

1872:                                             ; preds = %1871
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9443, ptr noundef nonnull @.str.1) #22
  br label %1873

1873:                                             ; preds = %1871, %1872
  %1874 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 1
  %1875 = load ptr, ptr %1874, align 8, !tbaa !197
  %1876 = icmp eq ptr %1875, null
  br i1 %1876, label %1886, label %1877

1877:                                             ; preds = %1873, %1877
  %1878 = phi ptr [ %1884, %1877 ], [ %1875, %1873 ]
  %1879 = getelementptr inbounds %struct.tree_statement_list_node, ptr %1878, i64 0, i32 2
  %1880 = load ptr, ptr %1879, align 8, !tbaa !527
  %1881 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %1882 = tail call ptr @expand_expr_real(ptr noundef %1880, ptr noundef %1881, i32 noundef 0, i32 noundef %3, ptr noundef null)
  %1883 = getelementptr inbounds %struct.tree_statement_list_node, ptr %1878, i64 0, i32 1
  %1884 = load ptr, ptr %1883, align 8, !tbaa !197
  %1885 = icmp eq ptr %1884, null
  br i1 %1885, label %1886, label %1877, !llvm.loop !529

1886:                                             ; preds = %1877, %1873
  %1887 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  br label %2115

1888:                                             ; preds = %177
  %1889 = load i64, ptr %37, align 8
  %1890 = and i64 %1889, 65535
  %1891 = icmp eq i64 %1890, 19
  br i1 %1891, label %1892, label %1893

1892:                                             ; preds = %1888
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9454, ptr noundef nonnull @.str.1) #22
  br label %1893

1893:                                             ; preds = %1888, %1892
  %1894 = load i64, ptr %37, align 8
  %1895 = and i64 %1894, 262144
  %1896 = icmp ne i64 %1895, 0
  %1897 = or i1 %92, %1896
  br i1 %1897, label %1907, label %1898

1898:                                             ; preds = %1893
  %1899 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %1900 = load ptr, ptr %1899, align 8, !tbaa !197
  %1901 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !186
  %1902 = icmp eq ptr %1900, %1901
  br i1 %1902, label %1907, label %1903

1903:                                             ; preds = %1898
  %1904 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %1905 = load ptr, ptr %1904, align 8, !tbaa !197
  %1906 = icmp eq ptr %1905, %1901
  br i1 %1906, label %1907, label %1908

1907:                                             ; preds = %1903, %1898, %1893
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9464, ptr noundef nonnull @.str.1) #22
  br label %1908

1908:                                             ; preds = %1903, %1907
  %1909 = icmp ne i32 %3, 1
  %1910 = icmp ne ptr %163, null
  %1911 = and i1 %1909, %1910
  br i1 %1911, label %1912, label %1931

1912:                                             ; preds = %1908
  %1913 = tail call i32 @safe_from_p(ptr noundef nonnull %163, ptr noundef %77, i32 noundef 1), !range !449
  %1914 = icmp eq i32 %1913, 0
  br i1 %1914, label %1931, label %1915

1915:                                             ; preds = %1912
  %1916 = load i32, ptr %163, align 8
  %1917 = lshr i32 %1916, 16
  %1918 = and i32 %1917, 255
  %1919 = icmp eq i32 %1918, %49
  br i1 %1919, label %1920, label %1931

1920:                                             ; preds = %1915
  %1921 = tail call i32 @can_conditionally_move_p(i32 noundef %49) #22
  %1922 = icmp eq i32 %1921, 0
  br i1 %1922, label %1927, label %1923

1923:                                             ; preds = %1920
  %1924 = load i32, ptr %163, align 8
  %1925 = and i32 %1924, 65535
  %1926 = icmp eq i32 %1925, 37
  br i1 %1926, label %1927, label %1931

1927:                                             ; preds = %1923, %1920
  %1928 = load i32, ptr %163, align 8
  %1929 = and i32 %1928, 65535
  %1930 = icmp eq i32 %1929, 43
  br i1 %1930, label %1931, label %1933

1931:                                             ; preds = %1923, %1927, %1915, %1912, %1908
  %1932 = tail call ptr @assign_temp(ptr noundef nonnull %37, i32 noundef 0, i32 noundef 0, i32 noundef 1) #22
  br label %1933

1933:                                             ; preds = %1927, %1931
  %1934 = phi ptr [ %1932, %1931 ], [ %163, %1927 ]
  tail call void @do_pending_stack_adjust() #22
  %1935 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !302
  %1936 = add nsw i32 %1935, 1
  store i32 %1936, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !302
  %1937 = tail call ptr @gen_label_rtx() #22
  store ptr %1937, ptr %6, align 8, !tbaa !186
  %1938 = tail call ptr @gen_label_rtx() #22
  store ptr %1938, ptr %7, align 8, !tbaa !186
  tail call void @jumpifnot(ptr noundef %77, ptr noundef %1937, i32 noundef -1) #22
  %1939 = zext i1 %161 to i32
  %1940 = tail call ptr @store_expr(ptr noundef %76, ptr noundef %1934, i32 noundef %1939, i8 noundef zeroext 0)
  %1941 = load ptr, ptr %7, align 8, !tbaa !186
  %1942 = tail call ptr @gen_jump(ptr noundef %1941) #22
  %1943 = tail call ptr @emit_jump_insn(ptr noundef %1942) #22
  %1944 = tail call ptr @emit_barrier() #22
  %1945 = load ptr, ptr %6, align 8, !tbaa !186
  %1946 = tail call ptr @emit_label(ptr noundef %1945) #22
  %1947 = tail call ptr @store_expr(ptr noundef %75, ptr noundef %1934, i32 noundef %1939, i8 noundef zeroext 0)
  %1948 = load ptr, ptr %7, align 8, !tbaa !186
  %1949 = tail call ptr @emit_label(ptr noundef %1948) #22
  %1950 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !302
  %1951 = add nsw i32 %1950, -1
  store i32 %1951, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !302
  br label %2115

1952:                                             ; preds = %177
  %1953 = tail call ptr @expand_vec_cond_expr(ptr noundef nonnull %37, ptr noundef %77, ptr noundef %76, ptr noundef %75, ptr noundef %163) #22
  br label %2115

1954:                                             ; preds = %177
  br i1 %92, label %1956, label %1955

1955:                                             ; preds = %1954
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9512, ptr noundef nonnull @.str.1) #22
  br label %1956

1956:                                             ; preds = %1954, %1955
  %1957 = load i64, ptr %77, align 8
  %1958 = and i64 %1957, 65535
  %1959 = icmp eq i64 %1958, 41
  br i1 %1959, label %1960, label %2006

1960:                                             ; preds = %1956
  %1961 = load i64, ptr %76, align 8
  %1962 = trunc i64 %1961 to i16
  switch i16 %1962, label %2006 [
    i16 87, label %1963
    i16 89, label %1963
  ]

1963:                                             ; preds = %1960, %1960
  %1964 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 0, i32 3
  %1965 = load ptr, ptr %1964, align 8, !tbaa !197
  %1966 = icmp eq ptr %1965, %77
  br i1 %1966, label %1967, label %2006

1967:                                             ; preds = %1963
  %1968 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 1
  %1969 = load ptr, ptr %1968, align 8, !tbaa !197
  %1970 = load i64, ptr %1969, align 8
  %1971 = and i64 %1970, 65535
  %1972 = icmp eq i64 %1971, 41
  br i1 %1972, label %1973, label %2006

1973:                                             ; preds = %1967
  %1974 = getelementptr inbounds %struct.tree_exp, ptr %77, i64 1
  %1975 = load ptr, ptr %1974, align 8, !tbaa !197
  %1976 = getelementptr inbounds %struct.tree_decl_common, ptr %1975, i64 0, i32 1
  %1977 = load ptr, ptr %1976, align 8, !tbaa !197
  %1978 = tail call i32 @integer_onep(ptr noundef %1977) #22
  %1979 = icmp eq i32 %1978, 0
  br i1 %1979, label %2006, label %1980

1980:                                             ; preds = %1973
  %1981 = load ptr, ptr %1968, align 8, !tbaa !197
  %1982 = getelementptr inbounds %struct.tree_exp, ptr %1981, i64 1
  %1983 = load ptr, ptr %1982, align 8, !tbaa !197
  %1984 = getelementptr inbounds %struct.tree_decl_common, ptr %1983, i64 0, i32 1
  %1985 = load ptr, ptr %1984, align 8, !tbaa !197
  %1986 = tail call i32 @integer_onep(ptr noundef %1985) #22
  %1987 = icmp eq i32 %1986, 0
  br i1 %1987, label %2006, label %1988

1988:                                             ; preds = %1980
  %1989 = tail call ptr @gen_label_rtx() #22
  %1990 = load i64, ptr %76, align 8
  %1991 = and i64 %1990, 65535
  %1992 = icmp eq i64 %1991, 87
  %1993 = load ptr, ptr %1968, align 8, !tbaa !197
  %1994 = select i1 %1992, ptr %1989, ptr null
  %1995 = select i1 %1992, ptr null, ptr %1989
  tail call void @do_jump(ptr noundef %1993, ptr noundef %1994, ptr noundef %1995, i32 noundef -1) #22
  %1996 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %1997 = load ptr, ptr %1996, align 8, !tbaa !197
  %1998 = zext i1 %1992 to i64
  %1999 = tail call ptr @build_int_cst(ptr noundef %1997, i64 noundef %1998) #22
  %2000 = load i64, ptr %0, align 8
  %2001 = trunc i64 %2000 to i32
  %2002 = lshr i32 %2001, 26
  %2003 = trunc i32 %2002 to i8
  %2004 = and i8 %2003, 1
  tail call void @expand_assignment(ptr noundef %77, ptr noundef %1999, i8 noundef zeroext %2004)
  tail call void @do_pending_stack_adjust() #22
  %2005 = tail call ptr @emit_label(ptr noundef %1989) #22
  br label %2012

2006:                                             ; preds = %1960, %1980, %1973, %1967, %1963, %1956
  %2007 = load i64, ptr %0, align 8
  %2008 = trunc i64 %2007 to i32
  %2009 = lshr i32 %2008, 26
  %2010 = trunc i32 %2009 to i8
  %2011 = and i8 %2010, 1
  tail call void @expand_assignment(ptr noundef %77, ptr noundef %76, i8 noundef zeroext %2011)
  br label %2012

2012:                                             ; preds = %2006, %1988
  %2013 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  br label %2115

2014:                                             ; preds = %177
  %2015 = load i32, ptr @ptr_mode, align 4, !tbaa !201
  %2016 = icmp eq i32 %2, 0
  br i1 %2016, label %2017, label %2029, !prof !530

2017:                                             ; preds = %2014
  %2018 = load ptr, ptr %36, align 8, !tbaa !197
  %2019 = load i64, ptr %2018, align 8
  %2020 = and i64 %2019, 65535
  %2021 = icmp eq i64 %2020, 14
  br i1 %2021, label %2022, label %2024, !prof !531

2022:                                             ; preds = %2017
  %2023 = tail call i32 @vector_type_mode(ptr noundef nonnull %2018) #22
  br label %2029

2024:                                             ; preds = %2017
  %2025 = getelementptr inbounds %struct.tree_type, ptr %2018, i64 0, i32 6
  %2026 = load i32, ptr %2025, align 4
  %2027 = lshr i32 %2026, 16
  %2028 = and i32 %2027, 255
  br label %2029

2029:                                             ; preds = %2024, %2022, %2014
  %2030 = phi i32 [ %2, %2014 ], [ %2023, %2022 ], [ %2028, %2024 ]
  %2031 = load ptr, ptr %36, align 8, !tbaa !197
  %2032 = load i64, ptr %2031, align 8
  %2033 = trunc i64 %2032 to i16
  switch i16 %2033, label %2044 [
    i16 10, label %2034
    i16 12, label %2034
  ], !prof !532

2034:                                             ; preds = %2029, %2029
  %2035 = getelementptr inbounds %struct.tree_common, ptr %2031, i64 0, i32 2
  %2036 = load ptr, ptr %2035, align 8, !tbaa !197
  %2037 = load i64, ptr %2036, align 8
  %2038 = lshr i64 %2037, 56
  %2039 = trunc i64 %2038 to i8
  %2040 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !282
  %2041 = tail call i32 %2040(i8 noundef zeroext %2039) #22, !prof !533
  %2042 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57), align 8, !tbaa !408
  %2043 = tail call i32 %2042(i8 noundef zeroext %2039) #22, !prof !534
  br label %2044

2044:                                             ; preds = %2034, %2029
  %2045 = phi i8 [ %2039, %2034 ], [ 0, %2029 ]
  %2046 = phi i32 [ %2041, %2034 ], [ 16, %2029 ]
  %2047 = phi i32 [ %2043, %2034 ], [ %2015, %2029 ]
  %2048 = icmp eq i32 %2030, %2046
  %2049 = icmp eq i32 %2030, %2047
  %2050 = select i1 %2048, i1 true, i1 %2049, !prof !530
  %2051 = select i1 %2050, i32 %2030, i32 %2046, !prof !530
  %2052 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %2053 = load ptr, ptr %2052, align 8, !tbaa !197
  %2054 = tail call fastcc ptr @expand_expr_addr_expr_1(ptr noundef %2053, ptr noundef %163, i32 noundef %2051, i32 noundef %3, i8 noundef zeroext %2045)
  %2055 = load i32, ptr %2054, align 8
  %2056 = lshr i32 %2055, 16
  %2057 = and i32 %2056, 255
  %2058 = icmp eq i32 %2057, 0
  %2059 = icmp eq i32 %2057, %2051
  %2060 = or i1 %2058, %2059
  br i1 %2060, label %2115, label %2061, !prof !530

2061:                                             ; preds = %2044
  %2062 = tail call ptr @convert_memory_address_addr_space(i32 noundef %2051, ptr noundef nonnull %2054, i8 noundef zeroext %2045) #22
  br label %2115

2063:                                             ; preds = %177
  %2064 = tail call ptr @expand_expr_real(ptr noundef %77, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store ptr %2064, ptr %6, align 8, !tbaa !186
  %2065 = tail call fastcc ptr @read_complex_part(ptr noundef %2064, i8 noundef zeroext 0)
  br label %2115

2066:                                             ; preds = %177
  %2067 = tail call ptr @expand_expr_real(ptr noundef %77, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store ptr %2067, ptr %6, align 8, !tbaa !186
  %2068 = tail call fastcc ptr @read_complex_part(ptr noundef %2067, i8 noundef zeroext 1)
  br label %2115

2069:                                             ; preds = %177, %177, %177, %177, %177
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9563, ptr noundef nonnull @.str.1) #22
  br label %2070

2070:                                             ; preds = %177, %177, %177, %177, %2069
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9570, ptr noundef nonnull @.str.1) #22
  br label %2071

2071:                                             ; preds = %177, %177, %177, %177, %177, %177, %177, %177, %177, %177, %177, %177, %177, %177, %177, %2070
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9588, ptr noundef nonnull @.str.1) #22
  br label %2072

2072:                                             ; preds = %177, %2071
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9593, ptr noundef nonnull @.str.1) #22
  br label %2073

2073:                                             ; preds = %177, %2072
  %2074 = tail call ptr @expand_expr_real(ptr noundef %77, ptr noundef %163, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  br label %2115

2075:                                             ; preds = %177
  %2076 = tail call ptr @optab_for_tree_code(i32 noundef 151, ptr noundef nonnull %37, i32 noundef 0) #22
  call fastcc void @expand_operands(ptr noundef %77, ptr noundef %76, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0)
  %2077 = tail call ptr @expand_expr_real(ptr noundef %75, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %2078 = load ptr, ptr %6, align 8, !tbaa !186
  %2079 = load ptr, ptr %7, align 8, !tbaa !186
  %2080 = load i32, ptr %8, align 4, !tbaa !201
  %2081 = tail call ptr @expand_ternary_op(i32 noundef %49, ptr noundef %2076, ptr noundef %2078, ptr noundef %2079, ptr noundef %2077, ptr noundef %163, i32 noundef %2080) #22
  %2082 = icmp eq ptr %2081, null
  br i1 %2082, label %2083, label %2115

2083:                                             ; preds = %2075
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9613, ptr noundef nonnull @.str.1) #22
  br label %2115

2084:                                             ; preds = %177
  call fastcc void @expand_operands(ptr noundef %77, ptr noundef %76, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0)
  %2085 = tail call ptr @expand_expr_real(ptr noundef %75, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %2086 = load ptr, ptr %6, align 8, !tbaa !186
  %2087 = load ptr, ptr %7, align 8, !tbaa !186
  %2088 = load i32, ptr %8, align 4, !tbaa !201
  %2089 = call ptr @expand_widen_pattern_expr(ptr noundef nonnull %9, ptr noundef %2086, ptr noundef %2087, ptr noundef %2085, ptr noundef %163, i32 noundef %2088) #22
  br label %2115

2090:                                             ; preds = %177
  %2091 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %2092 = load ptr, ptr %2091, align 8, !tbaa !197
  %2093 = getelementptr inbounds %struct.tree_exp, ptr %2092, i64 0, i32 3
  %2094 = load ptr, ptr %2093, align 8, !tbaa !197
  %2095 = load i64, ptr %2094, align 8
  %2096 = and i64 %2095, 65535
  %2097 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2096, i64 11
  %2098 = load i8, ptr %2097, align 1, !tbaa !197
  %2099 = icmp eq i8 %2098, 0
  br i1 %2099, label %2104, label %2100

2100:                                             ; preds = %2090
  %2101 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %2094, i64 0, i32 1
  %2102 = load ptr, ptr %2101, align 8, !tbaa !197
  %2103 = icmp eq ptr %2102, null
  br i1 %2103, label %2104, label %2111

2104:                                             ; preds = %2100, %2090
  %2105 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2094, i64 0, i32 4
  %2106 = load i32, ptr %2105, align 8
  %2107 = and i32 %2106, 2
  %2108 = icmp eq i32 %2107, 0
  br i1 %2108, label %2110, label %2109

2109:                                             ; preds = %2104
  tail call void @rest_of_decl_compilation(ptr noundef nonnull %2094, i32 noundef 0, i32 noundef 0) #22
  br label %2111

2110:                                             ; preds = %2104
  tail call void @expand_decl(ptr noundef nonnull %2094) #22
  br label %2111

2111:                                             ; preds = %2109, %2110, %2100
  %2112 = tail call ptr @expand_expr_real(ptr noundef nonnull %2094, ptr noundef %163, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  br label %2115

2113:                                             ; preds = %177
  %2114 = call ptr @expand_expr_real_2(ptr noundef nonnull %9, ptr noundef %163, i32 noundef %2, i32 noundef %3)
  br label %2115

2115:                                             ; preds = %651, %2061, %2044, %1009, %911, %109, %2083, %2075, %709, %666, %696, %594, %632, %573, %586, %564, %566, %472, %487, %426, %430, %413, %417, %423, %263, %1574, %2113, %2111, %2084, %2073, %2066, %2063, %2012, %1952, %1933, %1886, %1866, %1829, %1577, %1526, %1524, %716, %657, %590, %527, %510, %492, %462, %460, %329, %196, %191, %152, %145, %136, %130
  %2116 = phi ptr [ %131, %130 ], [ %137, %136 ], [ %149, %145 ], [ %158, %152 ], [ %2114, %2113 ], [ %2112, %2111 ], [ %2089, %2084 ], [ %2074, %2073 ], [ %2068, %2066 ], [ %2065, %2063 ], [ %2013, %2012 ], [ %1953, %1952 ], [ %1934, %1933 ], [ %1887, %1886 ], [ %1870, %1866 ], [ %1830, %1829 ], [ %1578, %1577 ], [ %1576, %1574 ], [ %1529, %1526 ], [ %1525, %1524 ], [ %723, %716 ], [ %658, %657 ], [ %593, %590 ], [ %529, %527 ], [ %512, %510 ], [ %495, %492 ], [ %467, %462 ], [ %446, %460 ], [ %332, %329 ], [ %264, %263 ], [ %199, %196 ], [ %192, %191 ], [ %411, %423 ], [ %411, %417 ], [ %411, %413 ], [ %410, %430 ], [ %410, %426 ], [ %473, %472 ], [ %491, %487 ], [ %163, %566 ], [ %163, %564 ], [ %574, %586 ], [ %574, %573 ], [ %595, %594 ], [ %633, %632 ], [ %710, %709 ], [ %667, %666 ], [ %698, %696 ], [ %2081, %2075 ], [ %2081, %2083 ], [ %83, %109 ], [ %913, %911 ], [ %1011, %1009 ], [ %2062, %2061 ], [ %2054, %2044 ], [ %653, %651 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret ptr %2116
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expand_expr_real_2(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !535 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  %9 = load i32, ptr %0, align 8, !tbaa !458
  %10 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !464
  %12 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !460
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 14
  br i1 %16, label %17, label %19, !prof !536

17:                                               ; preds = %4
  %18 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #22
  br label %24

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i32 [ %18, %17 ], [ %23, %19 ]
  %26 = load i64, ptr %13, align 8
  %27 = trunc i64 %26 to i32
  %28 = lshr i32 %27, 21
  %29 = and i32 %28, 1
  %30 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !461
  %32 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !462
  %34 = sext i32 %9 to i64
  %35 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !197
  %37 = zext i8 %36 to i32
  %38 = add nsw i32 %37, -1
  %39 = icmp ult i32 %38, 2
  br i1 %39, label %41, label %40, !prof !537

40:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7239, ptr noundef nonnull @.str.1) #22
  br label %41

41:                                               ; preds = %24, %40
  %42 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %43 = icmp eq ptr %42, %1
  br i1 %43, label %49, label %44, !prof !536

44:                                               ; preds = %41
  switch i32 %9, label %50 [
    i32 118, label %45
    i32 116, label %45
    i32 113, label %45
    i32 56, label %45
  ], !prof !538

45:                                               ; preds = %44, %44, %44, %44
  %46 = load i64, ptr %13, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 19
  br i1 %48, label %49, label %50, !prof !539

49:                                               ; preds = %41, %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7247, ptr noundef nonnull @.str.1) #22
  br label %50

50:                                               ; preds = %44, %45, %49
  %51 = load i64, ptr %13, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 8
  br i1 %53, label %54, label %63, !prof !540

54:                                               ; preds = %50
  %55 = zext i32 %25 to i64
  %56 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !234
  %58 = zext i16 %57 to i32
  %59 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 1023
  %62 = icmp ult i32 %61, %58
  br label %63

63:                                               ; preds = %54, %50
  %64 = phi i1 [ false, %50 ], [ %62, %54 ]
  %65 = icmp eq i32 %3, 1
  %66 = and i1 %65, %64
  %67 = select i1 %66, ptr null, ptr %1, !prof !536
  %68 = load i32, ptr @optimize, align 4, !tbaa !201
  %69 = icmp ne i32 %68, 0
  %70 = icmp eq ptr %67, null
  %71 = or i1 %69, %70
  br i1 %71, label %81, label %72, !prof !537

72:                                               ; preds = %63
  %73 = load i32, ptr %67, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 37
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !197
  %79 = icmp ult i32 %78, 53
  %80 = select i1 %79, ptr null, ptr %67
  br label %81

81:                                               ; preds = %63, %72, %76
  %82 = phi ptr [ null, %72 ], [ null, %63 ], [ %80, %76 ]
  switch i32 %9, label %1822 [
    i32 117, label %83
    i32 112, label %83
    i32 116, label %83
    i32 113, label %83
    i32 114, label %281
    i32 66, label %323
    i32 63, label %336
    i32 64, label %679
    i32 65, label %885
    i32 67, label %1201
    i32 69, label %1201
    i32 68, label %1201
    i32 70, label %1201
    i32 76, label %1201
    i32 75, label %1823
    i32 71, label %1210
    i32 73, label %1210
    i32 72, label %1210
    i32 74, label %1210
    i32 115, label %1215
    i32 77, label %1240
    i32 78, label %1248
    i32 79, label %1284
    i32 82, label %1294
    i32 81, label %1311
    i32 80, label %1311
    i32 90, label %1408
    i32 93, label %1414
    i32 89, label %1823
    i32 94, label %1415
    i32 87, label %1823
    i32 95, label %1416
    i32 88, label %1823
    i32 85, label %1417
    i32 86, label %1417
    i32 83, label %1539
    i32 84, label %1539
    i32 97, label %1554
    i32 98, label %1554
    i32 99, label %1554
    i32 100, label %1554
    i32 101, label %1554
    i32 102, label %1554
    i32 103, label %1554
    i32 104, label %1554
    i32 105, label %1554
    i32 106, label %1554
    i32 107, label %1554
    i32 108, label %1554
    i32 109, label %1554
    i32 110, label %1554
    i32 96, label %1731
    i32 123, label %1738
    i32 168, label %1758
    i32 164, label %1762
    i32 165, label %1762
    i32 166, label %1762
    i32 181, label %1768
    i32 182, label %1768
    i32 183, label %1775
    i32 184, label %1775
    i32 170, label %1782
    i32 171, label %1782
    i32 174, label %1784
    i32 175, label %1784
    i32 176, label %1790
    i32 177, label %1790
    i32 172, label %1803
    i32 173, label %1803
    i32 178, label %1809
    i32 179, label %1809
    i32 180, label %1809
  ], !prof !541

83:                                               ; preds = %81, %81, %81, %81
  %84 = load ptr, ptr @global_trees, align 16, !tbaa !186
  %85 = icmp eq ptr %31, %84
  br i1 %85, label %86, label %88, !prof !539

86:                                               ; preds = %83
  %87 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  br label %1844

88:                                               ; preds = %83
  %89 = icmp eq i64 %52, 17
  %90 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !197
  br i1 %89, label %92, label %190, !prof !539

92:                                               ; preds = %88
  %93 = icmp eq i32 %25, 1
  br i1 %93, label %94, label %111

94:                                               ; preds = %92
  %95 = load i64, ptr %91, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 14
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = tail call i32 @vector_type_mode(ptr noundef nonnull %91) #22
  br label %105

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.tree_type, ptr %91, i64 0, i32 6
  %102 = load i32, ptr %101, align 4
  %103 = lshr i32 %102, 16
  %104 = and i32 %103, 255
  br label %105

105:                                              ; preds = %100, %98
  %106 = phi i32 [ %99, %98 ], [ %104, %100 ]
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = tail call ptr @expand_expr_real(ptr noundef %31, ptr noundef %67, i32 noundef %2, i32 noundef %3, ptr noundef null)
  %110 = tail call ptr @copy_rtx(ptr noundef %109) #22
  tail call void @set_mem_attributes(ptr noundef %110, ptr noundef nonnull %13, i32 noundef 0) #22
  br label %1844

111:                                              ; preds = %105, %92
  br i1 %70, label %112, label %142

112:                                              ; preds = %111
  %113 = load i64, ptr %13, align 8
  %114 = and i64 %113, 65535
  %115 = icmp eq i64 %114, 14
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #22
  br label %123

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = lshr i32 %120, 16
  %122 = and i32 %121, 255
  br label %123

123:                                              ; preds = %118, %116
  %124 = phi i32 [ %117, %116 ], [ %122, %118 ]
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %140, label %126

126:                                              ; preds = %123
  %127 = load i64, ptr %13, align 8
  %128 = and i64 %127, 65535
  %129 = icmp eq i64 %128, 14
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #22
  br label %137

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %134 = load i32, ptr %133, align 4
  %135 = lshr i32 %134, 16
  %136 = and i32 %135, 255
  br label %137

137:                                              ; preds = %132, %130
  %138 = phi i32 [ %131, %130 ], [ %136, %132 ]
  %139 = tail call ptr @gen_reg_rtx(i32 noundef %138) #22
  br label %142

140:                                              ; preds = %123
  %141 = tail call ptr @assign_temp(ptr noundef nonnull %13, i32 noundef 0, i32 noundef 1, i32 noundef 1) #22
  br label %142

142:                                              ; preds = %137, %140, %111
  %143 = phi ptr [ %139, %137 ], [ %141, %140 ], [ %67, %111 ]
  %144 = load i32, ptr %143, align 8
  %145 = trunc i32 %144 to i16
  switch i16 %145, label %162 [
    i16 43, label %146
    i16 37, label %163
  ]

146:                                              ; preds = %142
  %147 = load i64, ptr %91, align 8
  %148 = and i64 %147, 65535
  %149 = icmp eq i64 %148, 14
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = tail call i32 @vector_type_mode(ptr noundef nonnull %91) #22
  br label %157

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.tree_type, ptr %91, i64 0, i32 6
  %154 = load i32, ptr %153, align 4
  %155 = lshr i32 %154, 16
  %156 = and i32 %155, 255
  br label %157

157:                                              ; preds = %152, %150
  %158 = phi i32 [ %151, %150 ], [ %156, %152 ]
  %159 = tail call ptr @adjust_address_1(ptr noundef nonnull %143, i32 noundef %158, i64 noundef 0, i32 noundef 1, i32 noundef 1) #22
  %160 = zext i1 %65 to i32
  %161 = tail call ptr @store_expr(ptr noundef %31, ptr noundef %159, i32 noundef %160, i8 noundef zeroext 0)
  br label %1844

162:                                              ; preds = %142
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7303, ptr noundef nonnull @.str.1) #22
  br label %163

163:                                              ; preds = %142, %162
  %164 = load ptr, ptr %90, align 8, !tbaa !197
  %165 = tail call i64 @int_size_in_bytes(ptr noundef %164) #22
  %166 = zext i32 %25 to i64
  %167 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !197
  %169 = zext i8 %168 to i64
  %170 = icmp slt i64 %165, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %163
  %172 = load ptr, ptr %90, align 8, !tbaa !197
  %173 = tail call i64 @int_size_in_bytes(ptr noundef %172) #22
  br label %174

174:                                              ; preds = %163, %171
  %175 = phi i64 [ %173, %171 ], [ %169, %163 ]
  %176 = shl nsw i64 %175, 3
  %177 = load i64, ptr %91, align 8
  %178 = and i64 %177, 65535
  %179 = icmp eq i64 %178, 14
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = tail call i32 @vector_type_mode(ptr noundef nonnull %91) #22
  br label %187

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.tree_type, ptr %91, i64 0, i32 6
  %184 = load i32, ptr %183, align 4
  %185 = lshr i32 %184, 16
  %186 = and i32 %185, 255
  br label %187

187:                                              ; preds = %182, %180
  %188 = phi i32 [ %181, %180 ], [ %186, %182 ]
  %189 = tail call fastcc ptr @store_field(ptr noundef nonnull %143, i64 noundef %176, i64 noundef 0, i32 noundef %188, ptr noundef %31, ptr noundef nonnull %13, i32 noundef 0, i8 noundef zeroext 0)
  br label %1844

190:                                              ; preds = %88
  %191 = load i64, ptr %91, align 8
  %192 = and i64 %191, 65535
  %193 = icmp eq i64 %192, 14
  br i1 %193, label %194, label %196, !prof !539

194:                                              ; preds = %190
  %195 = tail call i32 @vector_type_mode(ptr noundef nonnull %91) #22
  br label %201

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.tree_type, ptr %91, i64 0, i32 6
  %198 = load i32, ptr %197, align 4
  %199 = lshr i32 %198, 16
  %200 = and i32 %199, 255
  br label %201

201:                                              ; preds = %196, %194
  %202 = phi i32 [ %195, %194 ], [ %200, %196 ]
  %203 = icmp eq i32 %25, %202
  br i1 %203, label %204, label %222, !prof !542

204:                                              ; preds = %201
  %205 = tail call ptr @expand_expr_real(ptr noundef %31, ptr noundef %67, i32 noundef 0, i32 noundef %3, ptr noundef null)
  store ptr %205, ptr %7, align 8, !tbaa !186
  %206 = load ptr, ptr %90, align 8, !tbaa !197
  %207 = load i64, ptr %206, align 8
  %208 = trunc i64 %207 to i32
  %209 = lshr i32 %208, 21
  %210 = and i32 %209, 1
  %211 = icmp eq i32 %210, %29
  br i1 %211, label %218, label %212, !prof !543

212:                                              ; preds = %204
  %213 = load i32, ptr %205, align 8
  %214 = and i32 %213, 65535
  %215 = icmp eq i32 %214, 39
  br i1 %215, label %216, label %218, !prof !544

216:                                              ; preds = %212
  %217 = and i32 %213, -268500953
  store i32 %217, ptr %205, align 8
  br label %218

218:                                              ; preds = %216, %212, %204
  %219 = load ptr, ptr %7, align 8, !tbaa !186
  br i1 %64, label %220, label %1844, !prof !545

220:                                              ; preds = %218
  %221 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %219, ptr noundef %67, ptr noundef nonnull %13)
  br label %1844

222:                                              ; preds = %201
  %223 = icmp eq i32 %3, 2
  %224 = select i1 %223, i32 0, i32 %3, !prof !546
  %225 = tail call ptr @expand_expr_real(ptr noundef %31, ptr noundef null, i32 noundef %25, i32 noundef %224, ptr noundef null)
  store ptr %225, ptr %7, align 8, !tbaa !186
  %226 = load i32, ptr %225, align 8
  %227 = lshr i32 %226, 16
  %228 = and i32 %227, 255
  %229 = icmp eq i32 %228, %25
  br i1 %229, label %277, label %230, !prof !547

230:                                              ; preds = %222
  %231 = and i32 %226, 65535
  %232 = zext nneg i32 %231 to i64
  %233 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !201
  %235 = icmp eq i32 %234, 9
  br i1 %235, label %236, label %263, !prof !548

236:                                              ; preds = %230
  %237 = load ptr, ptr %90, align 8, !tbaa !197
  %238 = load i64, ptr %237, align 8
  %239 = and i64 %238, 65535
  %240 = icmp eq i64 %239, 14
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = tail call i32 @vector_type_mode(ptr noundef nonnull %237) #22
  br label %248

243:                                              ; preds = %236
  %244 = getelementptr inbounds %struct.tree_type, ptr %237, i64 0, i32 6
  %245 = load i32, ptr %244, align 4
  %246 = lshr i32 %245, 16
  %247 = and i32 %246, 255
  br label %248

248:                                              ; preds = %243, %241
  %249 = phi i32 [ %242, %241 ], [ %247, %243 ]
  %250 = icmp eq i32 %3, 4
  %251 = load ptr, ptr %7, align 8, !tbaa !186
  br i1 %250, label %252, label %255

252:                                              ; preds = %248
  %253 = tail call i32 @subreg_lowpart_offset(i32 noundef %25, i32 noundef %249) #22
  %254 = tail call ptr @simplify_gen_subreg(i32 noundef %25, ptr noundef %251, i32 noundef %249, i32 noundef %253) #22
  br label %261

255:                                              ; preds = %248
  %256 = load i64, ptr %237, align 8
  %257 = trunc i64 %256 to i32
  %258 = lshr i32 %257, 21
  %259 = and i32 %258, 1
  %260 = tail call ptr @convert_modes(i32 noundef %25, i32 noundef %249, ptr noundef %251, i32 noundef %259)
  br label %261

261:                                              ; preds = %255, %252
  %262 = phi ptr [ %260, %255 ], [ %254, %252 ]
  store ptr %262, ptr %7, align 8, !tbaa !186
  br label %277

263:                                              ; preds = %230
  %264 = icmp eq i32 %3, 4
  br i1 %264, label %265, label %268, !prof !548

265:                                              ; preds = %263
  %266 = or disjoint i32 %29, 98
  %267 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %266, i32 noundef %25, ptr noundef nonnull %225) #22
  store ptr %267, ptr %7, align 8, !tbaa !186
  br label %277

268:                                              ; preds = %263
  %269 = load ptr, ptr %90, align 8, !tbaa !197
  %270 = load i64, ptr %269, align 8
  %271 = trunc i64 %270 to i32
  %272 = lshr i32 %271, 21
  %273 = and i32 %272, 1
  br i1 %70, label %274, label %276, !prof !548

274:                                              ; preds = %268
  %275 = tail call ptr @convert_modes(i32 noundef %25, i32 noundef 0, ptr noundef nonnull %225, i32 noundef %273)
  store ptr %275, ptr %7, align 8, !tbaa !186
  br label %277

276:                                              ; preds = %268
  tail call void @convert_move(ptr noundef nonnull %67, ptr noundef nonnull %225, i32 noundef %273)
  store ptr %67, ptr %7, align 8, !tbaa !186
  br label %277

277:                                              ; preds = %261, %274, %276, %265, %222
  %278 = load ptr, ptr %7, align 8, !tbaa !186
  br i1 %64, label %279, label %1844, !prof !546

279:                                              ; preds = %277
  %280 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %278, ptr noundef %67, ptr noundef nonnull %13)
  br label %1844

281:                                              ; preds = %81
  %282 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %283 = load ptr, ptr %282, align 8, !tbaa !197
  %284 = trunc i64 %51 to i16
  switch i16 %284, label %285 [
    i16 10, label %286
    i16 12, label %286
  ]

285:                                              ; preds = %281
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7376, ptr noundef nonnull @.str.1) #22
  br label %286

286:                                              ; preds = %281, %281, %285
  %287 = load i64, ptr %283, align 8
  %288 = trunc i64 %287 to i16
  switch i16 %288, label %289 [
    i16 10, label %290
    i16 12, label %290
  ]

289:                                              ; preds = %286
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7377, ptr noundef nonnull @.str.1) #22
  br label %290

290:                                              ; preds = %286, %286, %289
  %291 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %292 = load ptr, ptr %291, align 8, !tbaa !197
  %293 = load i64, ptr %292, align 8
  %294 = lshr i64 %293, 56
  %295 = trunc i64 %294 to i8
  %296 = getelementptr inbounds %struct.tree_common, ptr %283, i64 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !197
  %298 = load i64, ptr %297, align 8
  %299 = lshr i64 %298, 56
  %300 = trunc i64 %299 to i8
  %301 = icmp eq i64 %294, %299
  br i1 %301, label %302, label %303

302:                                              ; preds = %290
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7384, ptr noundef nonnull @.str.1) #22
  br label %303

303:                                              ; preds = %290, %302
  %304 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 5), align 8, !tbaa !549
  %305 = tail call zeroext i8 %304(i8 noundef zeroext %295, i8 noundef zeroext %300) #22
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %303
  %308 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 5), align 8, !tbaa !549
  %309 = tail call zeroext i8 %308(i8 noundef zeroext %300, i8 noundef zeroext %295) #22
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %317, label %311

311:                                              ; preds = %307, %303
  %312 = tail call ptr @expand_expr_real(ptr noundef %31, ptr noundef null, i32 noundef 0, i32 noundef %3, ptr noundef null)
  store ptr %312, ptr %7, align 8, !tbaa !186
  %313 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 6), align 8, !tbaa !550
  %314 = tail call ptr %313(ptr noundef %312, ptr noundef nonnull %283, ptr noundef nonnull %13) #22
  store ptr %314, ptr %7, align 8, !tbaa !186
  %315 = icmp eq ptr %314, null
  br i1 %315, label %316, label %320

316:                                              ; preds = %311
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7393, ptr noundef nonnull @.str.1) #22
  br label %320

317:                                              ; preds = %307
  %318 = sext i32 %25 to i64
  %319 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %318
  br label %320

320:                                              ; preds = %316, %311, %317
  %321 = phi ptr [ %319, %317 ], [ %7, %311 ], [ %7, %316 ]
  %322 = load ptr, ptr %321, align 8, !tbaa !186
  br label %1844

323:                                              ; preds = %81
  %324 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %325 = getelementptr inbounds %struct.tree_type, ptr %324, i64 0, i32 6
  %326 = load i32, ptr %325, align 4
  %327 = and i32 %326, 1023
  %328 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %329 = load i32, ptr %328, align 4
  %330 = and i32 %329, 1023
  %331 = icmp ult i32 %327, %330
  br i1 %331, label %332, label %336

332:                                              ; preds = %323
  %333 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !186
  %334 = tail call ptr @fold_convert_loc(i32 noundef %11, ptr noundef %333, ptr noundef %33) #22
  %335 = tail call ptr @fold_convert_loc(i32 noundef %11, ptr noundef nonnull %13, ptr noundef %334) #22
  br label %336

336:                                              ; preds = %323, %332, %81
  %337 = phi ptr [ %33, %81 ], [ %335, %332 ], [ %33, %323 ]
  %338 = load i64, ptr %13, align 8
  %339 = trunc i64 %338 to i16
  switch i16 %339, label %505 [
    i16 8, label %340
    i16 11, label %340
  ], !prof !551

340:                                              ; preds = %336, %336
  %341 = tail call fastcc ptr @get_def_for_expr(ptr noundef %31, i32 noundef 65)
  %342 = icmp eq ptr %341, null
  br i1 %342, label %505, label %343, !prof !552

343:                                              ; preds = %340
  %344 = load i64, ptr %13, align 8
  %345 = and i64 %344, 65535
  %346 = icmp eq i64 %345, 8
  %347 = select i1 %346, i32 116, i32 115
  %348 = load i32, ptr %341, align 8
  %349 = and i32 %348, 255
  %350 = add nsw i32 %349, -10
  %351 = icmp ult i32 %350, -9
  br i1 %351, label %365, label %352

352:                                              ; preds = %343
  %353 = zext nneg i32 %349 to i64
  %354 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !201
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %356
  %358 = load i64, ptr %357, align 8, !tbaa !311
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %352
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %361

361:                                              ; preds = %360, %352
  %362 = getelementptr inbounds i8, ptr %341, i64 %358
  %363 = getelementptr inbounds ptr, ptr %362, i64 1
  %364 = load ptr, ptr %363, align 8, !tbaa !186
  br label %365

365:                                              ; preds = %343, %361
  %366 = phi ptr [ %364, %361 ], [ null, %343 ]
  %367 = tail call fastcc ptr @get_def_for_expr(ptr noundef %366, i32 noundef %347)
  %368 = getelementptr inbounds %struct.gimple_statement_base, ptr %341, i64 0, i32 3
  %369 = load i32, ptr %368, align 4, !tbaa !197
  %370 = icmp ugt i32 %369, 2
  br i1 %370, label %371, label %389

371:                                              ; preds = %365
  %372 = load i32, ptr %341, align 8
  %373 = and i32 %372, 255
  %374 = add nsw i32 %373, -10
  %375 = icmp ult i32 %374, -9
  br i1 %375, label %389, label %376

376:                                              ; preds = %371
  %377 = zext nneg i32 %373 to i64
  %378 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %377
  %379 = load i32, ptr %378, align 4, !tbaa !201
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %380
  %382 = load i64, ptr %381, align 8, !tbaa !311
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %376
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %385

385:                                              ; preds = %384, %376
  %386 = getelementptr inbounds i8, ptr %341, i64 %382
  %387 = getelementptr inbounds ptr, ptr %386, i64 2
  %388 = load ptr, ptr %387, align 8, !tbaa !186
  br label %389

389:                                              ; preds = %365, %371, %385
  %390 = phi ptr [ null, %365 ], [ %388, %385 ], [ null, %371 ]
  %391 = tail call fastcc ptr @get_def_for_expr(ptr noundef %390, i32 noundef %347)
  %392 = icmp ne ptr %367, null
  %393 = icmp ne ptr %391, null
  %394 = select i1 %392, i1 %393, i1 false
  br i1 %394, label %395, label %502

395:                                              ; preds = %389
  %396 = load i32, ptr %367, align 8
  %397 = and i32 %396, 255
  %398 = add nsw i32 %397, -10
  %399 = icmp ult i32 %398, -9
  br i1 %399, label %413, label %400

400:                                              ; preds = %395
  %401 = zext nneg i32 %397 to i64
  %402 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %401
  %403 = load i32, ptr %402, align 4, !tbaa !201
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %404
  %406 = load i64, ptr %405, align 8, !tbaa !311
  %407 = icmp eq i64 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %400
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %409

409:                                              ; preds = %408, %400
  %410 = getelementptr inbounds i8, ptr %367, i64 %406
  %411 = getelementptr inbounds ptr, ptr %410, i64 1
  %412 = load ptr, ptr %411, align 8, !tbaa !186
  br label %413

413:                                              ; preds = %395, %409
  %414 = phi ptr [ %412, %409 ], [ null, %395 ]
  %415 = icmp eq ptr %414, null
  br i1 %415, label %502, label %416

416:                                              ; preds = %413
  %417 = load i32, ptr %391, align 8
  %418 = and i32 %417, 255
  %419 = add nsw i32 %418, -10
  %420 = icmp ult i32 %419, -9
  br i1 %420, label %434, label %421

421:                                              ; preds = %416
  %422 = zext nneg i32 %418 to i64
  %423 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %422
  %424 = load i32, ptr %423, align 4, !tbaa !201
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %425
  %427 = load i64, ptr %426, align 8, !tbaa !311
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %421
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %430

430:                                              ; preds = %429, %421
  %431 = getelementptr inbounds i8, ptr %391, i64 %427
  %432 = getelementptr inbounds ptr, ptr %431, i64 1
  %433 = load ptr, ptr %432, align 8, !tbaa !186
  br label %434

434:                                              ; preds = %416, %430
  %435 = phi ptr [ %433, %430 ], [ null, %416 ]
  %436 = icmp eq ptr %435, null
  br i1 %436, label %502, label %437

437:                                              ; preds = %434
  %438 = getelementptr inbounds %struct.tree_common, ptr %414, i64 0, i32 2
  %439 = load ptr, ptr %438, align 8, !tbaa !197
  %440 = getelementptr inbounds %struct.tree_type, ptr %439, i64 0, i32 6
  %441 = load i32, ptr %440, align 4
  %442 = and i32 %441, 1023
  %443 = getelementptr inbounds %struct.tree_common, ptr %366, i64 0, i32 2
  %444 = load ptr, ptr %443, align 8, !tbaa !197
  %445 = getelementptr inbounds %struct.tree_type, ptr %444, i64 0, i32 6
  %446 = load i32, ptr %445, align 4
  %447 = and i32 %446, 1023
  %448 = icmp ult i32 %442, %447
  br i1 %448, label %449, label %502

449:                                              ; preds = %437
  %450 = getelementptr inbounds %struct.tree_common, ptr %435, i64 0, i32 2
  %451 = load ptr, ptr %450, align 8, !tbaa !197
  %452 = getelementptr inbounds %struct.tree_type, ptr %451, i64 0, i32 6
  %453 = load i32, ptr %452, align 4
  %454 = and i32 %453, 1023
  %455 = icmp eq i32 %442, %454
  br i1 %455, label %456, label %502

456:                                              ; preds = %449
  %457 = load i64, ptr %439, align 8
  %458 = load i64, ptr %451, align 8
  %459 = xor i64 %458, %457
  %460 = and i64 %459, 2097152
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %462, label %502

462:                                              ; preds = %456
  %463 = and i64 %457, 65535
  %464 = icmp eq i64 %463, 14
  br i1 %464, label %465, label %467

465:                                              ; preds = %462
  %466 = tail call i32 @vector_type_mode(ptr noundef nonnull %439) #22
  br label %470

467:                                              ; preds = %462
  %468 = lshr i32 %441, 16
  %469 = and i32 %468, 255
  br label %470

470:                                              ; preds = %467, %465
  %471 = phi i32 [ %466, %465 ], [ %469, %467 ]
  %472 = load i64, ptr %439, align 8
  %473 = load ptr, ptr %443, align 8, !tbaa !197
  %474 = load i64, ptr %473, align 8
  %475 = and i64 %474, 2147483648
  %476 = icmp eq i64 %475, 0
  %477 = and i64 %472, 2097152
  %478 = icmp eq i64 %477, 0
  %479 = select i1 %478, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 23), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 24)
  %480 = select i1 %478, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 25), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 26)
  %481 = select i1 %476, ptr %479, ptr %480
  %482 = zext i32 %471 to i64
  %483 = getelementptr inbounds [87 x i8], ptr @mode_2xwider, i64 0, i64 %482
  %484 = load i8, ptr %483, align 1, !tbaa !197
  %485 = zext i8 %484 to i32
  %486 = icmp eq i32 %25, %485
  br i1 %486, label %487, label %502

487:                                              ; preds = %470
  %488 = zext nneg i32 %25 to i64
  %489 = getelementptr inbounds %struct.optab_d, ptr %481, i64 0, i32 4, i64 %488
  %490 = load i32, ptr %489, align 4, !tbaa !235
  %491 = icmp eq i32 %490, 2956
  br i1 %491, label %502, label %492

492:                                              ; preds = %487
  call fastcc void @expand_operands(ptr noundef nonnull %414, ptr noundef nonnull %435, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0)
  %493 = tail call ptr @expand_expr_real(ptr noundef %337, ptr noundef %82, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %494 = load ptr, ptr %7, align 8, !tbaa !186
  %495 = load ptr, ptr %8, align 8, !tbaa !186
  %496 = tail call ptr @expand_ternary_op(i32 noundef %25, ptr noundef nonnull %481, ptr noundef %494, ptr noundef %495, ptr noundef %493, ptr noundef %67, i32 noundef %29) #22
  %497 = icmp eq ptr %496, null
  br i1 %497, label %498, label %499

498:                                              ; preds = %492
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7460, ptr noundef nonnull @.str.1) #22
  br label %499

499:                                              ; preds = %492, %498
  br i1 %64, label %500, label %502

500:                                              ; preds = %499
  %501 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %496, ptr noundef %67, ptr noundef nonnull %13)
  br label %502

502:                                              ; preds = %499, %500, %487, %470, %389, %413, %434, %437, %449, %456
  %503 = phi i1 [ true, %456 ], [ true, %449 ], [ true, %437 ], [ true, %434 ], [ true, %413 ], [ true, %389 ], [ false, %499 ], [ false, %500 ], [ true, %487 ], [ true, %470 ]
  %504 = phi ptr [ undef, %456 ], [ undef, %449 ], [ undef, %437 ], [ undef, %434 ], [ undef, %413 ], [ undef, %389 ], [ %496, %499 ], [ %501, %500 ], [ undef, %487 ], [ undef, %470 ]
  br i1 %503, label %505, label %1844

505:                                              ; preds = %340, %336, %502
  %506 = phi ptr [ %504, %502 ], [ undef, %336 ], [ undef, %340 ]
  %507 = load i64, ptr %31, align 8
  %508 = and i64 %507, 65535
  %509 = icmp eq i64 %508, 63
  br i1 %509, label %510, label %551, !prof !553

510:                                              ; preds = %505
  %511 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  %512 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 1
  %513 = load ptr, ptr %512, align 8, !tbaa !197
  %514 = load i64, ptr %513, align 8
  %515 = and i64 %514, 65535
  %516 = icmp eq i64 %515, 23
  br i1 %516, label %517, label %551

517:                                              ; preds = %510
  %518 = load i64, ptr %337, align 8
  %519 = and i64 %518, 65535
  %520 = icmp eq i64 %519, 32
  br i1 %520, label %521, label %551

521:                                              ; preds = %517
  %522 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %337, i64 0, i32 1
  %523 = load ptr, ptr %522, align 8, !tbaa !197
  %524 = icmp eq ptr %523, null
  br i1 %524, label %525, label %527

525:                                              ; preds = %521
  tail call void @make_decl_rtl(ptr noundef nonnull %337) #22
  %526 = load ptr, ptr %522, align 8, !tbaa !197
  br label %527

527:                                              ; preds = %521, %525
  %528 = phi ptr [ %526, %525 ], [ %523, %521 ]
  %529 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !186
  %530 = icmp eq ptr %528, %529
  br i1 %530, label %549, label %531

531:                                              ; preds = %527
  %532 = load ptr, ptr %522, align 8, !tbaa !197
  %533 = icmp eq ptr %532, null
  br i1 %533, label %534, label %536

534:                                              ; preds = %531
  tail call void @make_decl_rtl(ptr noundef nonnull %337) #22
  %535 = load ptr, ptr %522, align 8, !tbaa !197
  br label %536

536:                                              ; preds = %531, %534
  %537 = phi ptr [ %535, %534 ], [ %532, %531 ]
  %538 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !186
  %539 = icmp eq ptr %537, %538
  br i1 %539, label %549, label %540

540:                                              ; preds = %536
  %541 = load ptr, ptr %522, align 8, !tbaa !197
  %542 = icmp eq ptr %541, null
  br i1 %542, label %543, label %545

543:                                              ; preds = %540
  tail call void @make_decl_rtl(ptr noundef nonnull %337) #22
  %544 = load ptr, ptr %522, align 8, !tbaa !197
  br label %545

545:                                              ; preds = %540, %543
  %546 = phi ptr [ %544, %543 ], [ %541, %540 ]
  %547 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !186
  %548 = icmp eq ptr %546, %547
  br i1 %548, label %549, label %551

549:                                              ; preds = %545, %536, %527
  %550 = load ptr, ptr %511, align 8, !tbaa !197
  store ptr %337, ptr %511, align 8, !tbaa !197
  br label %551

551:                                              ; preds = %549, %545, %517, %510, %505
  %552 = phi ptr [ %550, %549 ], [ %337, %545 ], [ %337, %517 ], [ %337, %510 ], [ %337, %505 ]
  %553 = icmp eq i32 %3, 4
  switch i32 %3, label %554 [
    i32 4, label %562
    i32 2, label %562
  ], !prof !554

554:                                              ; preds = %551
  %555 = load i32, ptr @ptr_mode, align 4, !tbaa !201
  %556 = icmp eq i32 %25, %555
  br i1 %556, label %557, label %661, !prof !552

557:                                              ; preds = %554
  %558 = icmp eq i32 %29, 0
  %559 = load i32, ptr @flag_trapv, align 4
  %560 = icmp ne i32 %559, 0
  %561 = select i1 %558, i1 %560, i1 false, !prof !555
  br i1 %561, label %661, label %562, !prof !553

562:                                              ; preds = %557, %551, %551
  %563 = select i1 %65, ptr null, ptr %67, !prof !553
  %564 = load i64, ptr %31, align 8
  %565 = and i64 %564, 65535
  %566 = icmp eq i64 %565, 23
  br i1 %566, label %567, label %604, !prof !553

567:                                              ; preds = %562
  %568 = zext i32 %25 to i64
  %569 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %568
  %570 = load i8, ptr %569, align 1, !tbaa !197
  %571 = icmp ult i8 %570, 9
  br i1 %571, label %572, label %604

572:                                              ; preds = %567
  %573 = load i64, ptr %552, align 8
  %574 = and i64 %573, 131072
  %575 = icmp eq i64 %574, 0
  br i1 %575, label %604, label %576

576:                                              ; preds = %572
  %577 = tail call ptr @expand_expr_real(ptr noundef nonnull %552, ptr noundef %82, i32 noundef 0, i32 noundef 2, ptr noundef null)
  store ptr %577, ptr %8, align 8, !tbaa !186
  %578 = getelementptr inbounds %struct.tree_int_cst, ptr %31, i64 0, i32 1
  %579 = load i64, ptr %578, align 8, !tbaa !197
  %580 = getelementptr inbounds %struct.tree_common, ptr %552, i64 0, i32 2
  %581 = load ptr, ptr %580, align 8, !tbaa !197
  %582 = load i64, ptr %581, align 8
  %583 = and i64 %582, 65535
  %584 = icmp eq i64 %583, 14
  br i1 %584, label %585, label %587

585:                                              ; preds = %576
  %586 = tail call i32 @vector_type_mode(ptr noundef nonnull %581) #22
  br label %592

587:                                              ; preds = %576
  %588 = getelementptr inbounds %struct.tree_type, ptr %581, i64 0, i32 6
  %589 = load i32, ptr %588, align 4
  %590 = lshr i32 %589, 16
  %591 = and i32 %590, 255
  br label %592

592:                                              ; preds = %587, %585
  %593 = phi i32 [ %586, %585 ], [ %591, %587 ]
  %594 = tail call ptr @immed_double_const(i64 noundef %579, i64 noundef 0, i32 noundef %593) #22
  %595 = getelementptr inbounds %struct.rtx_def, ptr %594, i64 0, i32 1
  %596 = load i64, ptr %595, align 8, !tbaa !197
  %597 = tail call ptr @plus_constant(ptr noundef %577, i64 noundef %596) #22
  store ptr %597, ptr %8, align 8, !tbaa !186
  switch i32 %3, label %598 [
    i32 4, label %600
    i32 2, label %600
  ]

598:                                              ; preds = %592
  %599 = tail call ptr @force_operand(ptr noundef %597, ptr noundef %563)
  store ptr %599, ptr %8, align 8, !tbaa !186
  br label %600

600:                                              ; preds = %592, %592, %598
  %601 = load ptr, ptr %8, align 8, !tbaa !186
  br i1 %64, label %602, label %1844

602:                                              ; preds = %600
  %603 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %601, ptr noundef %563, ptr noundef nonnull %13)
  br label %1844

604:                                              ; preds = %572, %567, %562
  %605 = load i64, ptr %552, align 8
  %606 = and i64 %605, 65535
  %607 = icmp eq i64 %606, 23
  br i1 %607, label %608, label %661, !prof !556

608:                                              ; preds = %604
  %609 = zext i32 %25 to i64
  %610 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %609
  %611 = load i8, ptr %610, align 1, !tbaa !197
  %612 = icmp ugt i8 %611, 8
  %613 = and i64 %564, 131072
  %614 = icmp eq i64 %613, 0
  %615 = or i1 %614, %612
  br i1 %615, label %661, label %616, !prof !557

616:                                              ; preds = %608
  %617 = select i1 %553, i32 4, i32 2
  %618 = tail call ptr @expand_expr_real(ptr noundef %31, ptr noundef %82, i32 noundef 0, i32 noundef %617, ptr noundef null)
  store ptr %618, ptr %7, align 8, !tbaa !186
  %619 = load i32, ptr %618, align 8
  %620 = and i32 %619, 65535
  %621 = zext nneg i32 %620 to i64
  %622 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %621
  %623 = load i32, ptr %622, align 4, !tbaa !201
  %624 = icmp eq i32 %623, 9
  br i1 %624, label %630, label %625

625:                                              ; preds = %616
  %626 = tail call ptr @expand_expr_real(ptr noundef nonnull %552, ptr noundef null, i32 noundef 0, i32 noundef %3, ptr noundef null)
  store ptr %626, ptr %8, align 8, !tbaa !186
  switch i32 %3, label %658 [
    i32 4, label %627
    i32 2, label %627
  ]

627:                                              ; preds = %625, %625
  %628 = load ptr, ptr %7, align 8, !tbaa !186
  %629 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %25, ptr noundef %628, ptr noundef %626) #22
  br label %658

630:                                              ; preds = %616
  %631 = getelementptr inbounds %struct.tree_int_cst, ptr %552, i64 0, i32 1
  %632 = load i64, ptr %631, align 8, !tbaa !197
  %633 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %634 = load ptr, ptr %633, align 8, !tbaa !197
  %635 = load i64, ptr %634, align 8
  %636 = and i64 %635, 65535
  %637 = icmp eq i64 %636, 14
  br i1 %637, label %638, label %640

638:                                              ; preds = %630
  %639 = tail call i32 @vector_type_mode(ptr noundef nonnull %634) #22
  br label %645

640:                                              ; preds = %630
  %641 = getelementptr inbounds %struct.tree_type, ptr %634, i64 0, i32 6
  %642 = load i32, ptr %641, align 4
  %643 = lshr i32 %642, 16
  %644 = and i32 %643, 255
  br label %645

645:                                              ; preds = %640, %638
  %646 = phi i32 [ %639, %638 ], [ %644, %640 ]
  %647 = tail call ptr @immed_double_const(i64 noundef %632, i64 noundef 0, i32 noundef %646) #22
  %648 = load ptr, ptr %7, align 8, !tbaa !186
  %649 = getelementptr inbounds %struct.rtx_def, ptr %647, i64 0, i32 1
  %650 = load i64, ptr %649, align 8, !tbaa !197
  %651 = tail call ptr @plus_constant(ptr noundef %648, i64 noundef %650) #22
  store ptr %651, ptr %7, align 8, !tbaa !186
  switch i32 %3, label %652 [
    i32 4, label %654
    i32 2, label %654
  ]

652:                                              ; preds = %645
  %653 = tail call ptr @force_operand(ptr noundef %651, ptr noundef %563)
  store ptr %653, ptr %7, align 8, !tbaa !186
  br label %654

654:                                              ; preds = %645, %645, %652
  %655 = load ptr, ptr %7, align 8, !tbaa !186
  br i1 %64, label %656, label %658

656:                                              ; preds = %654
  %657 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %655, ptr noundef %563, ptr noundef nonnull %13)
  br label %658

658:                                              ; preds = %654, %656, %625, %627
  %659 = phi i1 [ false, %627 ], [ true, %625 ], [ false, %656 ], [ false, %654 ]
  %660 = phi ptr [ %629, %627 ], [ %506, %625 ], [ %657, %656 ], [ %655, %654 ]
  br i1 %659, label %1826, label %1844

661:                                              ; preds = %608, %604, %557, %554
  %662 = phi ptr [ %563, %608 ], [ %563, %604 ], [ %67, %557 ], [ %67, %554 ]
  switch i32 %3, label %666 [
    i32 4, label %663
    i32 2, label %663
  ], !prof !554

663:                                              ; preds = %661, %661
  %664 = load i32, ptr @ptr_mode, align 4, !tbaa !201
  %665 = icmp eq i32 %25, %664
  br i1 %665, label %673, label %666

666:                                              ; preds = %663, %661
  call fastcc void @expand_operands(ptr noundef nonnull %31, ptr noundef %552, ptr noundef %82, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0)
  %667 = load ptr, ptr %7, align 8, !tbaa !186
  %668 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %669 = icmp eq ptr %667, %668
  %670 = load ptr, ptr %8, align 8, !tbaa !186
  br i1 %669, label %1844, label %671, !prof !553

671:                                              ; preds = %666
  %672 = icmp eq ptr %670, %668
  br i1 %672, label %1844, label %1826, !prof !553

673:                                              ; preds = %663
  call fastcc void @expand_operands(ptr noundef nonnull %31, ptr noundef %552, ptr noundef %82, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %3)
  %674 = load ptr, ptr %7, align 8, !tbaa !186
  %675 = load ptr, ptr %8, align 8, !tbaa !186
  %676 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %25, ptr noundef %674, ptr noundef %675) #22
  br i1 %64, label %677, label %1844

677:                                              ; preds = %673
  %678 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %676, ptr noundef %662, ptr noundef nonnull %13)
  br label %1844

679:                                              ; preds = %81
  %680 = trunc i64 %51 to i16
  switch i16 %680, label %846 [
    i16 8, label %681
    i16 11, label %681
  ], !prof !558

681:                                              ; preds = %679, %679
  %682 = tail call fastcc ptr @get_def_for_expr(ptr noundef %33, i32 noundef 65)
  %683 = icmp eq ptr %682, null
  br i1 %683, label %846, label %684, !prof !517

684:                                              ; preds = %681
  %685 = load i64, ptr %13, align 8
  %686 = and i64 %685, 65535
  %687 = icmp eq i64 %686, 8
  %688 = select i1 %687, i32 116, i32 115
  %689 = load i32, ptr %682, align 8
  %690 = and i32 %689, 255
  %691 = add nsw i32 %690, -10
  %692 = icmp ult i32 %691, -9
  br i1 %692, label %706, label %693

693:                                              ; preds = %684
  %694 = zext nneg i32 %690 to i64
  %695 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %694
  %696 = load i32, ptr %695, align 4, !tbaa !201
  %697 = zext i32 %696 to i64
  %698 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %697
  %699 = load i64, ptr %698, align 8, !tbaa !311
  %700 = icmp eq i64 %699, 0
  br i1 %700, label %701, label %702

701:                                              ; preds = %693
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %702

702:                                              ; preds = %701, %693
  %703 = getelementptr inbounds i8, ptr %682, i64 %699
  %704 = getelementptr inbounds ptr, ptr %703, i64 1
  %705 = load ptr, ptr %704, align 8, !tbaa !186
  br label %706

706:                                              ; preds = %684, %702
  %707 = phi ptr [ %705, %702 ], [ null, %684 ]
  %708 = tail call fastcc ptr @get_def_for_expr(ptr noundef %707, i32 noundef %688)
  %709 = getelementptr inbounds %struct.gimple_statement_base, ptr %682, i64 0, i32 3
  %710 = load i32, ptr %709, align 4, !tbaa !197
  %711 = icmp ugt i32 %710, 2
  br i1 %711, label %712, label %730

712:                                              ; preds = %706
  %713 = load i32, ptr %682, align 8
  %714 = and i32 %713, 255
  %715 = add nsw i32 %714, -10
  %716 = icmp ult i32 %715, -9
  br i1 %716, label %730, label %717

717:                                              ; preds = %712
  %718 = zext nneg i32 %714 to i64
  %719 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %718
  %720 = load i32, ptr %719, align 4, !tbaa !201
  %721 = zext i32 %720 to i64
  %722 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %721
  %723 = load i64, ptr %722, align 8, !tbaa !311
  %724 = icmp eq i64 %723, 0
  br i1 %724, label %725, label %726

725:                                              ; preds = %717
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %726

726:                                              ; preds = %725, %717
  %727 = getelementptr inbounds i8, ptr %682, i64 %723
  %728 = getelementptr inbounds ptr, ptr %727, i64 2
  %729 = load ptr, ptr %728, align 8, !tbaa !186
  br label %730

730:                                              ; preds = %706, %712, %726
  %731 = phi ptr [ null, %706 ], [ %729, %726 ], [ null, %712 ]
  %732 = tail call fastcc ptr @get_def_for_expr(ptr noundef %731, i32 noundef %688)
  %733 = icmp ne ptr %708, null
  %734 = icmp ne ptr %732, null
  %735 = select i1 %733, i1 %734, i1 false
  br i1 %735, label %736, label %843

736:                                              ; preds = %730
  %737 = load i32, ptr %708, align 8
  %738 = and i32 %737, 255
  %739 = add nsw i32 %738, -10
  %740 = icmp ult i32 %739, -9
  br i1 %740, label %754, label %741

741:                                              ; preds = %736
  %742 = zext nneg i32 %738 to i64
  %743 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %742
  %744 = load i32, ptr %743, align 4, !tbaa !201
  %745 = zext i32 %744 to i64
  %746 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %745
  %747 = load i64, ptr %746, align 8, !tbaa !311
  %748 = icmp eq i64 %747, 0
  br i1 %748, label %749, label %750

749:                                              ; preds = %741
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %750

750:                                              ; preds = %749, %741
  %751 = getelementptr inbounds i8, ptr %708, i64 %747
  %752 = getelementptr inbounds ptr, ptr %751, i64 1
  %753 = load ptr, ptr %752, align 8, !tbaa !186
  br label %754

754:                                              ; preds = %736, %750
  %755 = phi ptr [ %753, %750 ], [ null, %736 ]
  %756 = icmp eq ptr %755, null
  br i1 %756, label %843, label %757

757:                                              ; preds = %754
  %758 = load i32, ptr %732, align 8
  %759 = and i32 %758, 255
  %760 = add nsw i32 %759, -10
  %761 = icmp ult i32 %760, -9
  br i1 %761, label %775, label %762

762:                                              ; preds = %757
  %763 = zext nneg i32 %759 to i64
  %764 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %763
  %765 = load i32, ptr %764, align 4, !tbaa !201
  %766 = zext i32 %765 to i64
  %767 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %766
  %768 = load i64, ptr %767, align 8, !tbaa !311
  %769 = icmp eq i64 %768, 0
  br i1 %769, label %770, label %771

770:                                              ; preds = %762
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %771

771:                                              ; preds = %770, %762
  %772 = getelementptr inbounds i8, ptr %732, i64 %768
  %773 = getelementptr inbounds ptr, ptr %772, i64 1
  %774 = load ptr, ptr %773, align 8, !tbaa !186
  br label %775

775:                                              ; preds = %757, %771
  %776 = phi ptr [ %774, %771 ], [ null, %757 ]
  %777 = icmp eq ptr %776, null
  br i1 %777, label %843, label %778

778:                                              ; preds = %775
  %779 = getelementptr inbounds %struct.tree_common, ptr %755, i64 0, i32 2
  %780 = load ptr, ptr %779, align 8, !tbaa !197
  %781 = getelementptr inbounds %struct.tree_type, ptr %780, i64 0, i32 6
  %782 = load i32, ptr %781, align 4
  %783 = and i32 %782, 1023
  %784 = getelementptr inbounds %struct.tree_common, ptr %707, i64 0, i32 2
  %785 = load ptr, ptr %784, align 8, !tbaa !197
  %786 = getelementptr inbounds %struct.tree_type, ptr %785, i64 0, i32 6
  %787 = load i32, ptr %786, align 4
  %788 = and i32 %787, 1023
  %789 = icmp ult i32 %783, %788
  br i1 %789, label %790, label %843

790:                                              ; preds = %778
  %791 = getelementptr inbounds %struct.tree_common, ptr %776, i64 0, i32 2
  %792 = load ptr, ptr %791, align 8, !tbaa !197
  %793 = getelementptr inbounds %struct.tree_type, ptr %792, i64 0, i32 6
  %794 = load i32, ptr %793, align 4
  %795 = and i32 %794, 1023
  %796 = icmp eq i32 %783, %795
  br i1 %796, label %797, label %843

797:                                              ; preds = %790
  %798 = load i64, ptr %780, align 8
  %799 = load i64, ptr %792, align 8
  %800 = xor i64 %799, %798
  %801 = and i64 %800, 2097152
  %802 = icmp eq i64 %801, 0
  br i1 %802, label %803, label %843

803:                                              ; preds = %797
  %804 = and i64 %798, 65535
  %805 = icmp eq i64 %804, 14
  br i1 %805, label %806, label %808

806:                                              ; preds = %803
  %807 = tail call i32 @vector_type_mode(ptr noundef nonnull %780) #22
  br label %811

808:                                              ; preds = %803
  %809 = lshr i32 %782, 16
  %810 = and i32 %809, 255
  br label %811

811:                                              ; preds = %808, %806
  %812 = phi i32 [ %807, %806 ], [ %810, %808 ]
  %813 = load i64, ptr %780, align 8
  %814 = load ptr, ptr %784, align 8, !tbaa !197
  %815 = load i64, ptr %814, align 8
  %816 = and i64 %815, 2147483648
  %817 = icmp eq i64 %816, 0
  %818 = and i64 %813, 2097152
  %819 = icmp eq i64 %818, 0
  %820 = select i1 %819, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 27), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 28)
  %821 = select i1 %819, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 29), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 30)
  %822 = select i1 %817, ptr %820, ptr %821
  %823 = zext i32 %812 to i64
  %824 = getelementptr inbounds [87 x i8], ptr @mode_2xwider, i64 0, i64 %823
  %825 = load i8, ptr %824, align 1, !tbaa !197
  %826 = zext i8 %825 to i32
  %827 = icmp eq i32 %25, %826
  br i1 %827, label %828, label %843

828:                                              ; preds = %811
  %829 = zext nneg i32 %25 to i64
  %830 = getelementptr inbounds %struct.optab_d, ptr %822, i64 0, i32 4, i64 %829
  %831 = load i32, ptr %830, align 4, !tbaa !235
  %832 = icmp eq i32 %831, 2956
  br i1 %832, label %843, label %833

833:                                              ; preds = %828
  call fastcc void @expand_operands(ptr noundef nonnull %755, ptr noundef nonnull %776, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0)
  %834 = tail call ptr @expand_expr_real(ptr noundef %31, ptr noundef %82, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %835 = load ptr, ptr %7, align 8, !tbaa !186
  %836 = load ptr, ptr %8, align 8, !tbaa !186
  %837 = tail call ptr @expand_ternary_op(i32 noundef %25, ptr noundef nonnull %822, ptr noundef %835, ptr noundef %836, ptr noundef %834, ptr noundef %67, i32 noundef %29) #22
  %838 = icmp eq ptr %837, null
  br i1 %838, label %839, label %840

839:                                              ; preds = %833
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7625, ptr noundef nonnull @.str.1) #22
  br label %840

840:                                              ; preds = %833, %839
  br i1 %64, label %841, label %843

841:                                              ; preds = %840
  %842 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %837, ptr noundef %67, ptr noundef nonnull %13)
  br label %843

843:                                              ; preds = %840, %841, %828, %811, %730, %754, %775, %778, %790, %797
  %844 = phi i1 [ true, %797 ], [ true, %790 ], [ true, %778 ], [ true, %775 ], [ true, %754 ], [ true, %730 ], [ false, %840 ], [ false, %841 ], [ true, %828 ], [ true, %811 ]
  %845 = phi ptr [ undef, %797 ], [ undef, %790 ], [ undef, %778 ], [ undef, %775 ], [ undef, %754 ], [ undef, %730 ], [ %837, %840 ], [ %842, %841 ], [ undef, %828 ], [ undef, %811 ]
  br i1 %844, label %846, label %1844

846:                                              ; preds = %681, %679, %843
  switch i32 %3, label %1823 [
    i32 4, label %847
    i32 2, label %847
  ], !prof !559

847:                                              ; preds = %846, %846
  %848 = tail call i32 @really_constant_p(ptr noundef %31) #22
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %870, label %850

850:                                              ; preds = %847
  %851 = tail call i32 @really_constant_p(ptr noundef %33) #22
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %870, label %853

853:                                              ; preds = %850
  call fastcc void @expand_operands(ptr noundef %31, ptr noundef %33, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %3)
  %854 = load ptr, ptr %8, align 8, !tbaa !186
  %855 = load i32, ptr %854, align 8
  %856 = and i32 %855, 65535
  %857 = icmp eq i32 %856, 30
  %858 = load ptr, ptr %7, align 8, !tbaa !186
  br i1 %857, label %859, label %866

859:                                              ; preds = %853
  %860 = getelementptr inbounds %struct.rtx_def, ptr %854, i64 0, i32 1
  %861 = load i64, ptr %860, align 8, !tbaa !197
  %862 = sub nsw i64 0, %861
  %863 = tail call ptr @plus_constant(ptr noundef %858, i64 noundef %862) #22
  br i1 %64, label %864, label %1844

864:                                              ; preds = %859
  %865 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %863, ptr noundef %67, ptr noundef nonnull %13)
  br label %1844

866:                                              ; preds = %853
  %867 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %25, ptr noundef %858, ptr noundef nonnull %854) #22
  br i1 %64, label %868, label %1844

868:                                              ; preds = %866
  %869 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %867, ptr noundef %67, ptr noundef nonnull %13)
  br label %1844

870:                                              ; preds = %850, %847
  switch i32 %3, label %1823 [
    i32 4, label %871
    i32 2, label %871
  ]

871:                                              ; preds = %870, %870
  %872 = load i32, ptr @ptr_mode, align 4, !tbaa !201
  %873 = icmp eq i32 %25, %872
  br i1 %873, label %874, label %1823

874:                                              ; preds = %871
  call fastcc void @expand_operands(ptr noundef %31, ptr noundef %33, ptr noundef %82, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %3)
  %875 = load ptr, ptr %8, align 8, !tbaa !186
  %876 = load i32, ptr %875, align 8
  %877 = and i32 %876, 65535
  %878 = icmp eq i32 %877, 30
  br i1 %878, label %879, label %1826

879:                                              ; preds = %874
  %880 = tail call ptr @negate_rtx(i32 noundef %25, ptr noundef nonnull %875) #22
  store ptr %880, ptr %8, align 8, !tbaa !186
  %881 = load ptr, ptr %7, align 8, !tbaa !186
  %882 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %25, ptr noundef %881, ptr noundef %880) #22
  br i1 %64, label %883, label %1844

883:                                              ; preds = %879
  %884 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %882, ptr noundef %67, ptr noundef nonnull %13)
  br label %1844

885:                                              ; preds = %81
  %886 = zext i32 %25 to i64
  %887 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %886
  %888 = load i8, ptr %887, align 1, !tbaa !197
  switch i8 %888, label %889 [
    i8 4, label %1823
    i8 13, label %1823
    i8 6, label %1823
    i8 15, label %1823
    i8 5, label %1823
    i8 14, label %1823
    i8 7, label %1823
    i8 16, label %1823
  ], !prof !560

889:                                              ; preds = %885
  %890 = load i64, ptr %31, align 8
  %891 = and i64 %890, 65535
  %892 = icmp eq i64 %891, 23
  %893 = select i1 %892, ptr %31, ptr %33, !prof !518
  %894 = select i1 %892, ptr %33, ptr %31, !prof !518
  %895 = icmp eq i32 %3, 2
  %896 = load i32, ptr @ptr_mode, align 4
  %897 = icmp eq i32 %25, %896
  %898 = select i1 %895, i1 %897, i1 false, !prof !517
  br i1 %898, label %899, label %949, !prof !517

899:                                              ; preds = %889
  %900 = tail call i32 @host_integerp(ptr noundef %893, i32 noundef 0) #22
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %949, label %902, !prof !518

902:                                              ; preds = %899
  %903 = tail call ptr @expand_expr_real(ptr noundef %894, ptr noundef %82, i32 noundef 0, i32 noundef 2, ptr noundef null)
  store ptr %903, ptr %7, align 8, !tbaa !186
  %904 = load i32, ptr %903, align 8
  %905 = and i32 %904, 65535
  %906 = icmp eq i32 %905, 37
  br i1 %906, label %909, label %907, !prof !518

907:                                              ; preds = %902
  %908 = tail call ptr @force_operand(ptr noundef nonnull %903, ptr noundef null)
  store ptr %908, ptr %7, align 8, !tbaa !186
  br label %909

909:                                              ; preds = %907, %902
  %910 = load ptr, ptr %7, align 8, !tbaa !186
  %911 = load i32, ptr %910, align 8
  %912 = and i32 %911, 65535
  %913 = icmp eq i32 %912, 37
  br i1 %913, label %916, label %914, !prof !518

914:                                              ; preds = %909
  %915 = tail call ptr @copy_to_mode_reg(i32 noundef %25, ptr noundef nonnull %910) #22
  store ptr %915, ptr %7, align 8, !tbaa !186
  br label %916

916:                                              ; preds = %914, %909
  %917 = load ptr, ptr %7, align 8, !tbaa !186
  %918 = tail call i64 @tree_low_cst(ptr noundef %893, i32 noundef 0) #22
  %919 = getelementptr inbounds %struct.tree_common, ptr %893, i64 0, i32 2
  %920 = load ptr, ptr %919, align 8, !tbaa !197
  %921 = load i64, ptr %920, align 8
  %922 = and i64 %921, 65535
  %923 = icmp eq i64 %922, 14
  br i1 %64, label %924, label %937, !prof !518

924:                                              ; preds = %916
  br i1 %923, label %925, label %927

925:                                              ; preds = %924
  %926 = tail call i32 @vector_type_mode(ptr noundef nonnull %920) #22
  br label %932

927:                                              ; preds = %924
  %928 = getelementptr inbounds %struct.tree_type, ptr %920, i64 0, i32 6
  %929 = load i32, ptr %928, align 4
  %930 = lshr i32 %929, 16
  %931 = and i32 %930, 255
  br label %932

932:                                              ; preds = %927, %925
  %933 = phi i32 [ %926, %925 ], [ %931, %927 ]
  %934 = tail call ptr @gen_int_mode(i64 noundef %918, i32 noundef %933) #22
  %935 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %25, ptr noundef %917, ptr noundef %934) #22
  %936 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %935, ptr noundef %67, ptr noundef nonnull %13)
  br label %1844

937:                                              ; preds = %916
  br i1 %923, label %938, label %940, !prof !518

938:                                              ; preds = %937
  %939 = tail call i32 @vector_type_mode(ptr noundef nonnull %920) #22
  br label %945

940:                                              ; preds = %937
  %941 = getelementptr inbounds %struct.tree_type, ptr %920, i64 0, i32 6
  %942 = load i32, ptr %941, align 4
  %943 = lshr i32 %942, 16
  %944 = and i32 %943, 255
  br label %945

945:                                              ; preds = %940, %938
  %946 = phi i32 [ %939, %938 ], [ %944, %940 ]
  %947 = tail call ptr @gen_int_mode(i64 noundef %918, i32 noundef %946) #22
  %948 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %25, ptr noundef %917, ptr noundef %947) #22
  br label %1844

949:                                              ; preds = %899, %889
  %950 = select i1 %65, ptr null, ptr %67
  %951 = tail call fastcc ptr @get_def_for_expr(ptr noundef %894, i32 noundef 116)
  %952 = tail call fastcc ptr @get_def_for_expr(ptr noundef %893, i32 noundef 116)
  %953 = icmp eq ptr %951, null
  br i1 %953, label %1055, label %954

954:                                              ; preds = %949
  %955 = load i32, ptr %951, align 8
  %956 = and i32 %955, 255
  %957 = add nsw i32 %956, -10
  %958 = icmp ult i32 %957, -9
  br i1 %958, label %972, label %959

959:                                              ; preds = %954
  %960 = zext nneg i32 %956 to i64
  %961 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %960
  %962 = load i32, ptr %961, align 4, !tbaa !201
  %963 = zext i32 %962 to i64
  %964 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %963
  %965 = load i64, ptr %964, align 8, !tbaa !311
  %966 = icmp eq i64 %965, 0
  br i1 %966, label %967, label %968

967:                                              ; preds = %959
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %968

968:                                              ; preds = %967, %959
  %969 = getelementptr inbounds i8, ptr %951, i64 %965
  %970 = getelementptr inbounds ptr, ptr %969, i64 1
  %971 = load ptr, ptr %970, align 8, !tbaa !186
  br label %972

972:                                              ; preds = %954, %968
  %973 = phi ptr [ %971, %968 ], [ null, %954 ]
  %974 = icmp ne ptr %973, null
  %975 = icmp ne ptr %952, null
  %976 = select i1 %974, i1 %975, i1 false
  br i1 %976, label %977, label %1055

977:                                              ; preds = %972
  %978 = load i32, ptr %952, align 8
  %979 = and i32 %978, 255
  %980 = add nsw i32 %979, -10
  %981 = icmp ult i32 %980, -9
  br i1 %981, label %995, label %982

982:                                              ; preds = %977
  %983 = zext nneg i32 %979 to i64
  %984 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %983
  %985 = load i32, ptr %984, align 4, !tbaa !201
  %986 = zext i32 %985 to i64
  %987 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %986
  %988 = load i64, ptr %987, align 8, !tbaa !311
  %989 = icmp eq i64 %988, 0
  br i1 %989, label %990, label %991

990:                                              ; preds = %982
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %991

991:                                              ; preds = %990, %982
  %992 = getelementptr inbounds i8, ptr %952, i64 %988
  %993 = getelementptr inbounds ptr, ptr %992, i64 1
  %994 = load ptr, ptr %993, align 8, !tbaa !186
  br label %995

995:                                              ; preds = %977, %991
  %996 = phi ptr [ %994, %991 ], [ null, %977 ]
  %997 = icmp eq ptr %996, null
  br i1 %997, label %1055, label %998

998:                                              ; preds = %995
  %999 = load i64, ptr %13, align 8
  %1000 = and i64 %999, 65535
  %1001 = icmp eq i64 %1000, 8
  br i1 %1001, label %1002, label %1055

1002:                                             ; preds = %998
  %1003 = getelementptr inbounds %struct.tree_common, ptr %973, i64 0, i32 2
  %1004 = load ptr, ptr %1003, align 8, !tbaa !197
  %1005 = getelementptr inbounds %struct.tree_type, ptr %1004, i64 0, i32 6
  %1006 = load i32, ptr %1005, align 4
  %1007 = and i32 %1006, 1023
  %1008 = getelementptr inbounds %struct.tree_common, ptr %894, i64 0, i32 2
  %1009 = load ptr, ptr %1008, align 8, !tbaa !197
  %1010 = getelementptr inbounds %struct.tree_type, ptr %1009, i64 0, i32 6
  %1011 = load i32, ptr %1010, align 4
  %1012 = and i32 %1011, 1023
  %1013 = icmp ult i32 %1007, %1012
  br i1 %1013, label %1014, label %1055

1014:                                             ; preds = %1002
  %1015 = getelementptr inbounds %struct.tree_common, ptr %996, i64 0, i32 2
  %1016 = load ptr, ptr %1015, align 8, !tbaa !197
  %1017 = getelementptr inbounds %struct.tree_type, ptr %1016, i64 0, i32 6
  %1018 = load i32, ptr %1017, align 4
  %1019 = and i32 %1018, 1023
  %1020 = icmp eq i32 %1007, %1019
  br i1 %1020, label %1021, label %1055

1021:                                             ; preds = %1014
  %1022 = load i64, ptr %1004, align 8
  %1023 = load i64, ptr %1016, align 8
  %1024 = xor i64 %1023, %1022
  %1025 = and i64 %1024, 2097152
  %1026 = icmp eq i64 %1025, 0
  br i1 %1026, label %1055, label %1027

1027:                                             ; preds = %1021
  %1028 = and i64 %1022, 65535
  %1029 = icmp eq i64 %1028, 14
  br i1 %1029, label %1030, label %1032

1030:                                             ; preds = %1027
  %1031 = tail call i32 @vector_type_mode(ptr noundef nonnull %1004) #22
  br label %1035

1032:                                             ; preds = %1027
  %1033 = lshr i32 %1006, 16
  %1034 = and i32 %1033, 255
  br label %1035

1035:                                             ; preds = %1032, %1030
  %1036 = phi i32 [ %1031, %1030 ], [ %1034, %1032 ]
  %1037 = zext i32 %1036 to i64
  %1038 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %1037
  %1039 = load i8, ptr %1038, align 1, !tbaa !197
  %1040 = zext i8 %1039 to i32
  %1041 = icmp eq i32 %25, %1040
  br i1 %1041, label %1042, label %1053

1042:                                             ; preds = %1035
  %1043 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 22, i32 4, i64 %886
  %1044 = load i32, ptr %1043, align 4, !tbaa !235
  %1045 = icmp eq i32 %1044, 2956
  br i1 %1045, label %1053, label %1046

1046:                                             ; preds = %1042
  %1047 = load ptr, ptr %1003, align 8, !tbaa !197
  %1048 = load i64, ptr %1047, align 8
  %1049 = and i64 %1048, 2097152
  %1050 = icmp eq i64 %1049, 0
  br i1 %1050, label %1052, label %1051

1051:                                             ; preds = %1046
  call fastcc void @expand_operands(ptr noundef nonnull %973, ptr noundef nonnull %996, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0)
  br label %1053

1052:                                             ; preds = %1046
  call fastcc void @expand_operands(ptr noundef nonnull %973, ptr noundef nonnull %996, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef 0)
  br label %1053

1053:                                             ; preds = %1035, %1042, %1051, %1052
  %1054 = phi i32 [ 5, %1052 ], [ 5, %1051 ], [ 0, %1042 ], [ 0, %1035 ]
  switch i32 %1054, label %1844 [
    i32 0, label %1195
    i32 5, label %1831
  ]

1055:                                             ; preds = %1021, %1014, %1002, %998, %995, %972, %949
  %1056 = phi ptr [ %996, %1021 ], [ %996, %1014 ], [ %996, %1002 ], [ %996, %998 ], [ null, %995 ], [ null, %972 ], [ null, %949 ]
  %1057 = phi ptr [ %973, %1021 ], [ %973, %1014 ], [ %973, %1002 ], [ %973, %998 ], [ %973, %995 ], [ %973, %972 ], [ null, %949 ]
  %1058 = icmp eq ptr %1057, null
  br i1 %1058, label %1195, label %1059

1059:                                             ; preds = %1055
  %1060 = load i64, ptr %13, align 8
  %1061 = and i64 %1060, 65535
  %1062 = icmp eq i64 %1061, 8
  br i1 %1062, label %1063, label %1195

1063:                                             ; preds = %1059
  %1064 = getelementptr inbounds %struct.tree_common, ptr %1057, i64 0, i32 2
  %1065 = load ptr, ptr %1064, align 8, !tbaa !197
  %1066 = getelementptr inbounds %struct.tree_type, ptr %1065, i64 0, i32 6
  %1067 = load i32, ptr %1066, align 4
  %1068 = and i32 %1067, 1023
  %1069 = getelementptr inbounds %struct.tree_common, ptr %894, i64 0, i32 2
  %1070 = load ptr, ptr %1069, align 8, !tbaa !197
  %1071 = getelementptr inbounds %struct.tree_type, ptr %1070, i64 0, i32 6
  %1072 = load i32, ptr %1071, align 4
  %1073 = and i32 %1072, 1023
  %1074 = icmp ult i32 %1068, %1073
  br i1 %1074, label %1075, label %1195

1075:                                             ; preds = %1063
  %1076 = load i64, ptr %893, align 8
  %1077 = and i64 %1076, 65535
  %1078 = icmp eq i64 %1077, 23
  br i1 %1078, label %1079, label %1106

1079:                                             ; preds = %1075
  %1080 = tail call i32 @int_fits_type_p(ptr noundef nonnull %893, ptr noundef %1065) #22
  %1081 = icmp eq i32 %1080, 0
  br i1 %1081, label %1106, label %1082

1082:                                             ; preds = %1079
  %1083 = getelementptr inbounds %struct.tree_common, ptr %893, i64 0, i32 2
  %1084 = load ptr, ptr %1083, align 8, !tbaa !197
  %1085 = load i64, ptr %1084, align 8
  %1086 = and i64 %1085, 65535
  %1087 = icmp eq i64 %1086, 14
  br i1 %1087, label %1088, label %1090

1088:                                             ; preds = %1082
  %1089 = tail call i32 @vector_type_mode(ptr noundef nonnull %1084) #22
  br label %1095

1090:                                             ; preds = %1082
  %1091 = getelementptr inbounds %struct.tree_type, ptr %1084, i64 0, i32 6
  %1092 = load i32, ptr %1091, align 4
  %1093 = lshr i32 %1092, 16
  %1094 = and i32 %1093, 255
  br label %1095

1095:                                             ; preds = %1090, %1088
  %1096 = phi i32 [ %1089, %1088 ], [ %1094, %1090 ]
  %1097 = zext i32 %1096 to i64
  %1098 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1097
  %1099 = load i8, ptr %1098, align 1, !tbaa !197
  %1100 = icmp ugt i8 %1099, 8
  br i1 %1100, label %1125, label %1101

1101:                                             ; preds = %1095
  %1102 = getelementptr inbounds %struct.tree_int_cst, ptr %893, i64 0, i32 1
  %1103 = load i64, ptr %1102, align 8, !tbaa !197
  %1104 = tail call i32 @exact_log2(i64 noundef %1103) #22
  %1105 = icmp slt i32 %1104, 0
  br i1 %1105, label %1125, label %1106

1106:                                             ; preds = %1101, %1079, %1075
  %1107 = icmp eq ptr %1056, null
  br i1 %1107, label %1195, label %1108

1108:                                             ; preds = %1106
  %1109 = getelementptr inbounds %struct.tree_common, ptr %1056, i64 0, i32 2
  %1110 = load ptr, ptr %1109, align 8, !tbaa !197
  %1111 = getelementptr inbounds %struct.tree_type, ptr %1110, i64 0, i32 6
  %1112 = load i32, ptr %1111, align 4
  %1113 = load ptr, ptr %1064, align 8, !tbaa !197
  %1114 = getelementptr inbounds %struct.tree_type, ptr %1113, i64 0, i32 6
  %1115 = load i32, ptr %1114, align 4
  %1116 = xor i32 %1115, %1112
  %1117 = and i32 %1116, 1023
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1119, label %1195

1119:                                             ; preds = %1108
  %1120 = load i64, ptr %1110, align 8
  %1121 = load i64, ptr %1113, align 8
  %1122 = xor i64 %1121, %1120
  %1123 = and i64 %1122, 2097152
  %1124 = icmp eq i64 %1123, 0
  br i1 %1124, label %1125, label %1195

1125:                                             ; preds = %1101, %1119, %1095
  %1126 = load ptr, ptr %1064, align 8, !tbaa !197
  %1127 = load i64, ptr %1126, align 8
  %1128 = and i64 %1127, 65535
  %1129 = icmp eq i64 %1128, 14
  br i1 %1129, label %1130, label %1132

1130:                                             ; preds = %1125
  %1131 = tail call i32 @vector_type_mode(ptr noundef nonnull %1126) #22
  br label %1137

1132:                                             ; preds = %1125
  %1133 = getelementptr inbounds %struct.tree_type, ptr %1126, i64 0, i32 6
  %1134 = load i32, ptr %1133, align 4
  %1135 = lshr i32 %1134, 16
  %1136 = and i32 %1135, 255
  br label %1137

1137:                                             ; preds = %1132, %1130
  %1138 = phi i32 [ %1131, %1130 ], [ %1136, %1132 ]
  %1139 = load i64, ptr %1126, align 8
  %1140 = trunc i64 %1139 to i32
  %1141 = lshr i32 %1140, 21
  %1142 = and i32 %1141, 1
  %1143 = icmp eq i32 %1142, 0
  %1144 = select i1 %1143, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20)
  %1145 = select i1 %1143, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21)
  %1146 = zext i32 %1138 to i64
  %1147 = getelementptr inbounds [87 x i8], ptr @mode_2xwider, i64 0, i64 %1146
  %1148 = load i8, ptr %1147, align 1, !tbaa !197
  %1149 = zext i8 %1148 to i32
  %1150 = icmp eq i32 %25, %1149
  br i1 %1150, label %1151, label %1192

1151:                                             ; preds = %1137
  %1152 = select i1 %1143, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4)
  %1153 = getelementptr inbounds [87 x %struct.optab_handlers], ptr %1152, i64 0, i64 %886
  %1154 = load i32, ptr %1153, align 4, !tbaa !235
  %1155 = icmp eq i32 %1154, 2956
  br i1 %1155, label %1162, label %1156

1156:                                             ; preds = %1151
  %1157 = load i64, ptr %893, align 8
  %1158 = and i64 %1157, 65535
  %1159 = icmp eq i64 %1158, 23
  br i1 %1159, label %1160, label %1161

1160:                                             ; preds = %1156
  call fastcc void @expand_operands(ptr noundef nonnull %1057, ptr noundef nonnull %893, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0)
  br label %1192

1161:                                             ; preds = %1156
  call fastcc void @expand_operands(ptr noundef nonnull %1057, ptr noundef %1056, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0)
  br label %1192

1162:                                             ; preds = %1151
  %1163 = select i1 %1143, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4)
  %1164 = getelementptr inbounds [87 x %struct.optab_handlers], ptr %1163, i64 0, i64 %886
  %1165 = load i32, ptr %1164, align 4, !tbaa !235
  %1166 = icmp ne i32 %1165, 2956
  %1167 = load i32, ptr @word_mode, align 4
  %1168 = icmp eq i32 %1138, %1167
  %1169 = select i1 %1166, i1 %1168, i1 false
  br i1 %1169, label %1170, label %1192

1170:                                             ; preds = %1162
  %1171 = tail call ptr @expand_expr_real(ptr noundef nonnull %1057, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store ptr %1171, ptr %7, align 8, !tbaa !186
  %1172 = load i64, ptr %893, align 8
  %1173 = and i64 %1172, 65535
  %1174 = icmp eq i64 %1173, 23
  br i1 %1174, label %1175, label %1178

1175:                                             ; preds = %1170
  %1176 = tail call ptr @expand_expr_real(ptr noundef nonnull %893, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %1177 = tail call ptr @convert_modes(i32 noundef %1138, i32 noundef %25, ptr noundef %1176, i32 noundef %29)
  br label %1180

1178:                                             ; preds = %1170
  %1179 = tail call ptr @expand_expr_real(ptr noundef %1056, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  br label %1180

1180:                                             ; preds = %1178, %1175
  %1181 = phi ptr [ %1179, %1178 ], [ %1177, %1175 ]
  store ptr %1181, ptr %8, align 8, !tbaa !186
  %1182 = load ptr, ptr %7, align 8, !tbaa !186
  %1183 = tail call ptr @expand_binop(i32 noundef %25, ptr noundef nonnull %1144, ptr noundef %1182, ptr noundef %1181, ptr noundef %950, i32 noundef %29, i32 noundef 3) #22
  %1184 = tail call ptr @gen_highpart(i32 noundef %1138, ptr noundef %1183) #22
  %1185 = tail call ptr @expand_mult_highpart_adjust(i32 noundef %1138, ptr noundef %1184, ptr noundef %1182, ptr noundef %1181, ptr noundef %1184, i32 noundef %1142) #22
  %1186 = icmp eq ptr %1185, %1184
  br i1 %1186, label %1189, label %1187

1187:                                             ; preds = %1180
  %1188 = tail call ptr @emit_move_insn(ptr noundef %1184, ptr noundef %1185)
  br label %1189

1189:                                             ; preds = %1187, %1180
  br i1 %64, label %1190, label %1192

1190:                                             ; preds = %1189
  %1191 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %1183, ptr noundef %950, ptr noundef nonnull %13)
  br label %1192

1192:                                             ; preds = %1137, %1162, %1190, %1189, %1160, %1161
  %1193 = phi i32 [ 5, %1161 ], [ 5, %1160 ], [ 1, %1189 ], [ 1, %1190 ], [ 0, %1162 ], [ 0, %1137 ]
  %1194 = phi ptr [ undef, %1161 ], [ undef, %1160 ], [ %1183, %1189 ], [ %1191, %1190 ], [ undef, %1162 ], [ undef, %1137 ]
  switch i32 %1193, label %1844 [
    i32 0, label %1195
    i32 5, label %1831
  ]

1195:                                             ; preds = %1053, %1055, %1059, %1063, %1106, %1108, %1119, %1192
  call fastcc void @expand_operands(ptr noundef %894, ptr noundef %893, ptr noundef %82, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0)
  %1196 = load ptr, ptr %7, align 8, !tbaa !186
  %1197 = load ptr, ptr %8, align 8, !tbaa !186
  %1198 = tail call ptr @expand_mult(i32 noundef %25, ptr noundef %1196, ptr noundef %1197, ptr noundef %950, i32 noundef %29) #22
  br i1 %64, label %1199, label %1844

1199:                                             ; preds = %1195
  %1200 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %1198, ptr noundef %950, ptr noundef nonnull %13)
  br label %1844

1201:                                             ; preds = %81, %81, %81, %81, %81
  %1202 = zext i32 %25 to i64
  %1203 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1202
  %1204 = load i8, ptr %1203, align 1, !tbaa !197
  switch i8 %1204, label %1205 [
    i8 4, label %1823
    i8 13, label %1823
    i8 6, label %1823
    i8 15, label %1823
    i8 5, label %1823
    i8 14, label %1823
    i8 7, label %1823
    i8 16, label %1823
  ]

1205:                                             ; preds = %1201
  %1206 = select i1 %65, ptr null, ptr %67
  call fastcc void @expand_operands(ptr noundef %31, ptr noundef %33, ptr noundef %82, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0)
  %1207 = load ptr, ptr %7, align 8, !tbaa !186
  %1208 = load ptr, ptr %8, align 8, !tbaa !186
  %1209 = tail call ptr @expand_divmod(i32 noundef 0, i32 noundef %9, i32 noundef %25, ptr noundef %1207, ptr noundef %1208, ptr noundef %1206, i32 noundef %29) #22
  br label %1844

1210:                                             ; preds = %81, %81, %81, %81
  %1211 = select i1 %65, ptr null, ptr %67
  call fastcc void @expand_operands(ptr noundef %31, ptr noundef %33, ptr noundef %82, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0)
  %1212 = load ptr, ptr %7, align 8, !tbaa !186
  %1213 = load ptr, ptr %8, align 8, !tbaa !186
  %1214 = tail call ptr @expand_divmod(i32 noundef 1, i32 noundef %9, i32 noundef %25, ptr noundef %1212, ptr noundef %1213, ptr noundef %1211, i32 noundef %29) #22
  br label %1844

1215:                                             ; preds = %81
  %1216 = tail call ptr @expand_expr_real(ptr noundef %31, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store ptr %1216, ptr %7, align 8, !tbaa !186
  %1217 = or i1 %65, %70
  br i1 %1217, label %1218, label %1220

1218:                                             ; preds = %1215
  %1219 = tail call ptr @gen_reg_rtx(i32 noundef %25) #22
  br label %1220

1220:                                             ; preds = %1215, %1218
  %1221 = phi ptr [ %1219, %1218 ], [ %67, %1215 ]
  %1222 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %1223 = load ptr, ptr %1222, align 8, !tbaa !197
  %1224 = load i64, ptr %1223, align 8
  %1225 = and i64 %1224, 2162687
  %1226 = icmp eq i64 %1225, 2097160
  br i1 %1226, label %1231, label %1227

1227:                                             ; preds = %1220
  %1228 = load i64, ptr %13, align 8
  %1229 = and i64 %1228, 2162687
  %1230 = icmp eq i64 %1229, 2097160
  br i1 %1230, label %1231, label %1236

1231:                                             ; preds = %1227, %1220
  %1232 = load ptr, ptr %7, align 8, !tbaa !186
  %1233 = load i64, ptr %13, align 8
  %1234 = trunc i64 %1233 to i32
  %1235 = lshr i32 %1234, 31
  tail call void @expand_fixed_convert(ptr noundef %1221, ptr noundef %1232, i32 noundef 1, i32 noundef %1235) #22
  br label %1844

1236:                                             ; preds = %1227
  %1237 = load ptr, ptr %7, align 8, !tbaa !186
  %1238 = trunc i64 %1228 to i32
  %1239 = lshr i32 %1238, 31
  tail call void @expand_fixed_convert(ptr noundef %1221, ptr noundef %1237, i32 noundef 0, i32 noundef %1239) #22
  br label %1844

1240:                                             ; preds = %81
  %1241 = tail call ptr @expand_expr_real(ptr noundef %31, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store ptr %1241, ptr %7, align 8, !tbaa !186
  %1242 = or i1 %65, %70
  br i1 %1242, label %1243, label %1245

1243:                                             ; preds = %1240
  %1244 = tail call ptr @gen_reg_rtx(i32 noundef %25) #22
  br label %1245

1245:                                             ; preds = %1240, %1243
  %1246 = phi ptr [ %1244, %1243 ], [ %67, %1240 ]
  %1247 = load ptr, ptr %7, align 8, !tbaa !186
  tail call void @expand_fix(ptr noundef %1246, ptr noundef %1247, i32 noundef %29) #22
  br label %1844

1248:                                             ; preds = %81
  %1249 = tail call ptr @expand_expr_real(ptr noundef %31, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store ptr %1249, ptr %7, align 8, !tbaa !186
  %1250 = or i1 %65, %70
  br i1 %1250, label %1251, label %1253

1251:                                             ; preds = %1248
  %1252 = tail call ptr @gen_reg_rtx(i32 noundef %25) #22
  br label %1253

1253:                                             ; preds = %1248, %1251
  %1254 = phi ptr [ %1252, %1251 ], [ %67, %1248 ]
  %1255 = load ptr, ptr %7, align 8, !tbaa !186
  %1256 = load i32, ptr %1255, align 8
  %1257 = and i32 %1256, 16711680
  %1258 = icmp eq i32 %1257, 0
  br i1 %1258, label %1259, label %1276

1259:                                             ; preds = %1253
  %1260 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %1261 = load ptr, ptr %1260, align 8, !tbaa !197
  %1262 = load i64, ptr %1261, align 8
  %1263 = and i64 %1262, 65535
  %1264 = icmp eq i64 %1263, 14
  br i1 %1264, label %1265, label %1267

1265:                                             ; preds = %1259
  %1266 = tail call i32 @vector_type_mode(ptr noundef nonnull %1261) #22
  br label %1272

1267:                                             ; preds = %1259
  %1268 = getelementptr inbounds %struct.tree_type, ptr %1261, i64 0, i32 6
  %1269 = load i32, ptr %1268, align 4
  %1270 = lshr i32 %1269, 16
  %1271 = and i32 %1270, 255
  br label %1272

1272:                                             ; preds = %1267, %1265
  %1273 = phi i32 [ %1266, %1265 ], [ %1271, %1267 ]
  %1274 = load ptr, ptr %7, align 8, !tbaa !186
  %1275 = tail call ptr @copy_to_mode_reg(i32 noundef %1273, ptr noundef %1274) #22
  store ptr %1275, ptr %7, align 8, !tbaa !186
  br label %1276

1276:                                             ; preds = %1272, %1253
  %1277 = load ptr, ptr %7, align 8, !tbaa !186
  %1278 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %1279 = load ptr, ptr %1278, align 8, !tbaa !197
  %1280 = load i64, ptr %1279, align 8
  %1281 = trunc i64 %1280 to i32
  %1282 = lshr i32 %1281, 21
  %1283 = and i32 %1282, 1
  tail call void @expand_float(ptr noundef %1254, ptr noundef %1277, i32 noundef %1283) #22
  br label %1844

1284:                                             ; preds = %81
  %1285 = tail call ptr @expand_expr_real(ptr noundef %31, ptr noundef %82, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store ptr %1285, ptr %7, align 8, !tbaa !186
  %1286 = select i1 %65, ptr null, ptr %67
  %1287 = tail call ptr @optab_for_tree_code(i32 noundef 79, ptr noundef nonnull %13, i32 noundef 0) #22
  %1288 = tail call ptr @expand_unop(i32 noundef %25, ptr noundef %1287, ptr noundef %1285, ptr noundef %1286, i32 noundef 0) #22
  %1289 = icmp eq ptr %1288, null
  br i1 %1289, label %1290, label %1291

1290:                                             ; preds = %1284
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7895, ptr noundef nonnull @.str.1) #22
  br label %1291

1291:                                             ; preds = %1284, %1290
  br i1 %64, label %1292, label %1844

1292:                                             ; preds = %1291
  %1293 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %1288, ptr noundef %1286, ptr noundef nonnull %13)
  br label %1844

1294:                                             ; preds = %81
  %1295 = tail call ptr @expand_expr_real(ptr noundef %31, ptr noundef %82, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store ptr %1295, ptr %7, align 8, !tbaa !186
  %1296 = select i1 %65, ptr null, ptr %67
  %1297 = zext i32 %25 to i64
  %1298 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1297
  %1299 = load i8, ptr %1298, align 1, !tbaa !197
  %1300 = and i8 %1299, -2
  %1301 = icmp eq i8 %1300, 10
  br i1 %1301, label %1302, label %1303

1302:                                             ; preds = %1294
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7906, ptr noundef nonnull @.str.1) #22
  br label %1303

1303:                                             ; preds = %1294, %1302
  %1304 = load i64, ptr %13, align 8
  %1305 = and i64 %1304, 2097152
  %1306 = icmp eq i64 %1305, 0
  %1307 = load ptr, ptr %7, align 8, !tbaa !186
  br i1 %1306, label %1308, label %1844

1308:                                             ; preds = %1303
  %1309 = tail call i32 @safe_from_p(ptr noundef %1296, ptr noundef %31, i32 noundef 1), !range !449
  %1310 = tail call ptr @expand_abs(i32 noundef %25, ptr noundef %1307, ptr noundef %1296, i32 noundef %29, i32 noundef %1309) #22
  br label %1844

1311:                                             ; preds = %81, %81
  %1312 = or i1 %65, %70
  br i1 %1312, label %1328, label %1313

1313:                                             ; preds = %1311
  %1314 = load i32, ptr %67, align 8
  %1315 = and i32 %1314, 65535
  %1316 = and i32 %1314, 134283263
  %1317 = icmp eq i32 %1316, 134217771
  br i1 %1317, label %1328, label %1318

1318:                                             ; preds = %1313
  %1319 = lshr i32 %1314, 16
  %1320 = and i32 %1319, 255
  %1321 = icmp eq i32 %1320, %25
  br i1 %1321, label %1322, label %1328

1322:                                             ; preds = %1318
  %1323 = icmp eq i32 %1315, 37
  br i1 %1323, label %1324, label %1330

1324:                                             ; preds = %1322
  %1325 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %1326 = load i32, ptr %1325, align 8, !tbaa !197
  %1327 = icmp ult i32 %1326, 53
  br i1 %1327, label %1328, label %1330

1328:                                             ; preds = %1313, %1324, %1318, %1311
  %1329 = tail call ptr @gen_reg_rtx(i32 noundef %25) #22
  br label %1330

1330:                                             ; preds = %1324, %1328, %1322
  %1331 = phi ptr [ %1329, %1328 ], [ %67, %1322 ], [ %67, %1324 ]
  call fastcc void @expand_operands(ptr noundef %31, ptr noundef %33, ptr noundef %1331, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0)
  %1332 = tail call ptr @optab_for_tree_code(i32 noundef %9, ptr noundef nonnull %13, i32 noundef 0) #22
  %1333 = load ptr, ptr %7, align 8, !tbaa !186
  %1334 = load ptr, ptr %8, align 8, !tbaa !186
  %1335 = tail call ptr @expand_binop(i32 noundef %25, ptr noundef %1332, ptr noundef %1333, ptr noundef %1334, ptr noundef %1331, i32 noundef %29, i32 noundef 2) #22
  %1336 = icmp eq ptr %1335, null
  br i1 %1336, label %1337, label %1844

1337:                                             ; preds = %1330
  %1338 = load i32, ptr %1331, align 8
  %1339 = and i32 %1338, 65535
  %1340 = icmp eq i32 %1339, 37
  br i1 %1340, label %1343, label %1341

1341:                                             ; preds = %1337
  %1342 = tail call ptr @gen_reg_rtx(i32 noundef %25) #22
  br label %1343

1343:                                             ; preds = %1341, %1337
  %1344 = phi ptr [ %1331, %1337 ], [ %1342, %1341 ]
  %1345 = load ptr, ptr %7, align 8, !tbaa !186
  %1346 = icmp ne ptr %1344, %1345
  %1347 = icmp eq ptr %1344, %1334
  %1348 = and i1 %1347, %1346
  br i1 %1348, label %1349, label %1350

1349:                                             ; preds = %1343
  store ptr %1334, ptr %7, align 8, !tbaa !186
  store ptr %1345, ptr %8, align 8, !tbaa !186
  br label %1350

1350:                                             ; preds = %1349, %1343
  %1351 = phi ptr [ %1345, %1349 ], [ null, %1343 ]
  %1352 = load ptr, ptr %8, align 8, !tbaa !186
  %1353 = load i32, ptr %1352, align 8
  %1354 = and i32 %1353, 65535
  %1355 = zext nneg i32 %1354 to i64
  %1356 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1355
  %1357 = load i32, ptr %1356, align 4, !tbaa !201
  %1358 = icmp eq i32 %1357, 9
  br i1 %1358, label %1361, label %1359

1359:                                             ; preds = %1350
  %1360 = tail call ptr @force_reg(i32 noundef %25, ptr noundef nonnull %1352) #22
  store ptr %1360, ptr %8, align 8, !tbaa !186
  br label %1361

1361:                                             ; preds = %1359, %1350
  %1362 = load ptr, ptr %8, align 8, !tbaa !186
  %1363 = icmp eq i32 %9, 81
  %1364 = icmp eq i32 %29, 0
  %1365 = select i1 %1364, i32 82, i32 86
  %1366 = select i1 %1364, i32 84, i32 88
  %1367 = select i1 %1363, i32 %1365, i32 %1366
  %1368 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !186
  %1369 = icmp eq ptr %1362, %1368
  %1370 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %1371 = select i1 %1364, i32 83, i32 80
  %1372 = select i1 %1363, i32 %1371, i32 %1366
  %1373 = select i1 %1369, i32 %1372, i32 %1367
  %1374 = select i1 %1369, ptr %1370, ptr %1362
  %1375 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !186
  %1376 = icmp ne ptr %1362, %1375
  %1377 = icmp ne i32 %29, 0
  %1378 = select i1 %1376, i1 true, i1 %1377
  %1379 = icmp eq i32 %9, 80
  %1380 = select i1 %1379, i32 85, i32 %1373
  %1381 = select i1 %1378, i32 %1373, i32 %1380
  %1382 = select i1 %1378, ptr %1374, ptr %1370
  %1383 = tail call i32 @can_conditionally_move_p(i32 noundef %25) #22
  %1384 = icmp eq i32 %1383, 0
  br i1 %1384, label %1394, label %1385

1385:                                             ; preds = %1361
  tail call void @do_pending_stack_adjust() #22
  tail call void @start_sequence() #22
  %1386 = load ptr, ptr %7, align 8, !tbaa !186
  %1387 = tail call ptr @emit_conditional_move(ptr noundef %1344, i32 noundef %1381, ptr noundef %1386, ptr noundef %1382, i32 noundef %25, ptr noundef %1386, ptr noundef %1362, i32 noundef %25, i32 noundef %29) #22
  %1388 = icmp eq ptr %1387, null
  br i1 %1388, label %1392, label %1389

1389:                                             ; preds = %1385
  %1390 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %1391 = tail call ptr @emit_insn(ptr noundef %1390) #22
  br label %1393

1392:                                             ; preds = %1385
  tail call void @end_sequence() #22
  br label %1393

1393:                                             ; preds = %1392, %1389
  br i1 %1388, label %1394, label %1401

1394:                                             ; preds = %1393, %1361
  %1395 = load ptr, ptr %7, align 8, !tbaa !186
  %1396 = icmp eq ptr %1344, %1395
  br i1 %1396, label %1399, label %1397

1397:                                             ; preds = %1394
  %1398 = tail call ptr @emit_move_insn(ptr noundef %1344, ptr noundef %1395)
  br label %1399

1399:                                             ; preds = %1397, %1394
  %1400 = tail call ptr @gen_label_rtx() #22
  tail call void @do_compare_rtx_and_jump(ptr noundef %1344, ptr noundef %1382, i32 noundef %1381, i32 noundef %29, i32 noundef %25, ptr noundef null, ptr noundef null, ptr noundef %1400, i32 noundef -1) #22
  br label %1401

1401:                                             ; preds = %1393, %1399
  %1402 = phi i1 [ true, %1399 ], [ false, %1393 ]
  %1403 = phi ptr [ %1400, %1399 ], [ %1351, %1393 ]
  br i1 %1402, label %1404, label %1844

1404:                                             ; preds = %1401
  %1405 = load ptr, ptr %8, align 8, !tbaa !186
  %1406 = tail call ptr @emit_move_insn(ptr noundef %1344, ptr noundef %1405)
  %1407 = tail call ptr @emit_label(ptr noundef %1403) #22
  br label %1844

1408:                                             ; preds = %81
  %1409 = tail call ptr @expand_expr_real(ptr noundef %31, ptr noundef %82, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store ptr %1409, ptr %7, align 8, !tbaa !186
  %1410 = select i1 %65, ptr null, ptr %67
  %1411 = tail call ptr @expand_unop(i32 noundef %25, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), ptr noundef %1409, ptr noundef %1410, i32 noundef 1) #22
  %1412 = icmp eq ptr %1411, null
  br i1 %1412, label %1413, label %1844

1413:                                             ; preds = %1408
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8038, ptr noundef nonnull @.str.1) #22
  br label %1844

1414:                                             ; preds = %81
  br label %1823

1415:                                             ; preds = %81
  br label %1823

1416:                                             ; preds = %81
  br label %1823

1417:                                             ; preds = %81, %81
  %1418 = icmp eq i64 %52, 14
  br i1 %1418, label %1419, label %1421

1419:                                             ; preds = %1417
  %1420 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #22
  br label %1426

1421:                                             ; preds = %1417
  %1422 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %1423 = load i32, ptr %1422, align 4
  %1424 = lshr i32 %1423, 16
  %1425 = and i32 %1424, 255
  br label %1426

1426:                                             ; preds = %1421, %1419
  %1427 = phi i32 [ %1420, %1419 ], [ %1425, %1421 ]
  %1428 = zext i32 %1427 to i64
  %1429 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1428
  %1430 = load i8, ptr %1429, align 1, !tbaa !197
  %1431 = icmp eq i8 %1430, 12
  br i1 %1431, label %1539, label %1432

1432:                                             ; preds = %1426
  %1433 = load i64, ptr %13, align 8
  %1434 = and i64 %1433, 65535
  %1435 = icmp eq i64 %1434, 14
  br i1 %1435, label %1436, label %1438

1436:                                             ; preds = %1432
  %1437 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #22
  br label %1443

1438:                                             ; preds = %1432
  %1439 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %1440 = load i32, ptr %1439, align 4
  %1441 = lshr i32 %1440, 16
  %1442 = and i32 %1441, 255
  br label %1443

1443:                                             ; preds = %1438, %1436
  %1444 = phi i32 [ %1437, %1436 ], [ %1442, %1438 ]
  %1445 = zext i32 %1444 to i64
  %1446 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1445
  %1447 = load i8, ptr %1446, align 1, !tbaa !197
  %1448 = icmp eq i8 %1447, 17
  br i1 %1448, label %1539, label %1449

1449:                                             ; preds = %1443
  %1450 = load i64, ptr %13, align 8
  %1451 = and i64 %1450, 65535
  %1452 = icmp eq i64 %1451, 14
  br i1 %1452, label %1453, label %1455

1453:                                             ; preds = %1449
  %1454 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #22
  br label %1460

1455:                                             ; preds = %1449
  %1456 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %1457 = load i32, ptr %1456, align 4
  %1458 = lshr i32 %1457, 16
  %1459 = and i32 %1458, 255
  br label %1460

1460:                                             ; preds = %1455, %1453
  %1461 = phi i32 [ %1454, %1453 ], [ %1459, %1455 ]
  %1462 = zext i32 %1461 to i64
  %1463 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1462
  %1464 = load i8, ptr %1463, align 1, !tbaa !197
  %1465 = icmp eq i8 %1464, 13
  br i1 %1465, label %1539, label %1466

1466:                                             ; preds = %1460
  %1467 = load i64, ptr %13, align 8
  %1468 = and i64 %1467, 65535
  %1469 = icmp eq i64 %1468, 14
  br i1 %1469, label %1470, label %1472

1470:                                             ; preds = %1466
  %1471 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #22
  br label %1477

1472:                                             ; preds = %1466
  %1473 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %1474 = load i32, ptr %1473, align 4
  %1475 = lshr i32 %1474, 16
  %1476 = and i32 %1475, 255
  br label %1477

1477:                                             ; preds = %1472, %1470
  %1478 = phi i32 [ %1471, %1470 ], [ %1476, %1472 ]
  %1479 = zext i32 %1478 to i64
  %1480 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1479
  %1481 = load i8, ptr %1480, align 1, !tbaa !197
  %1482 = icmp eq i8 %1481, 14
  br i1 %1482, label %1539, label %1483

1483:                                             ; preds = %1477
  %1484 = load i64, ptr %13, align 8
  %1485 = and i64 %1484, 65535
  %1486 = icmp eq i64 %1485, 14
  br i1 %1486, label %1487, label %1489

1487:                                             ; preds = %1483
  %1488 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #22
  br label %1494

1489:                                             ; preds = %1483
  %1490 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %1491 = load i32, ptr %1490, align 4
  %1492 = lshr i32 %1491, 16
  %1493 = and i32 %1492, 255
  br label %1494

1494:                                             ; preds = %1489, %1487
  %1495 = phi i32 [ %1488, %1487 ], [ %1493, %1489 ]
  %1496 = zext i32 %1495 to i64
  %1497 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1496
  %1498 = load i8, ptr %1497, align 1, !tbaa !197
  %1499 = icmp eq i8 %1498, 15
  br i1 %1499, label %1539, label %1500

1500:                                             ; preds = %1494
  %1501 = load i64, ptr %13, align 8
  %1502 = and i64 %1501, 65535
  %1503 = icmp eq i64 %1502, 14
  br i1 %1503, label %1504, label %1506

1504:                                             ; preds = %1500
  %1505 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #22
  br label %1511

1506:                                             ; preds = %1500
  %1507 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %1508 = load i32, ptr %1507, align 4
  %1509 = lshr i32 %1508, 16
  %1510 = and i32 %1509, 255
  br label %1511

1511:                                             ; preds = %1506, %1504
  %1512 = phi i32 [ %1505, %1504 ], [ %1510, %1506 ]
  %1513 = zext i32 %1512 to i64
  %1514 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1513
  %1515 = load i8, ptr %1514, align 1, !tbaa !197
  %1516 = icmp eq i8 %1515, 16
  br i1 %1516, label %1539, label %1517

1517:                                             ; preds = %1511
  %1518 = load i64, ptr %13, align 8
  %1519 = and i64 %1518, 65535
  %1520 = icmp eq i64 %1519, 14
  br i1 %1520, label %1521, label %1523

1521:                                             ; preds = %1517
  %1522 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #22
  br label %1528

1523:                                             ; preds = %1517
  %1524 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %1525 = load i32, ptr %1524, align 4
  %1526 = lshr i32 %1525, 16
  %1527 = and i32 %1526, 255
  br label %1528

1528:                                             ; preds = %1523, %1521
  %1529 = phi i32 [ %1522, %1521 ], [ %1527, %1523 ]
  %1530 = zext i32 %1529 to i64
  %1531 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %1530
  %1532 = load i16, ptr %1531, align 2, !tbaa !234
  %1533 = zext i16 %1532 to i32
  %1534 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %1535 = load i32, ptr %1534, align 4
  %1536 = and i32 %1535, 1023
  %1537 = icmp eq i32 %1536, %1533
  br i1 %1537, label %1539, label %1538

1538:                                             ; preds = %1528
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8073, ptr noundef nonnull @.str.1) #22
  br label %1539

1539:                                             ; preds = %81, %81, %1538, %1528, %1511, %1494, %1477, %1460, %1443, %1426
  %1540 = zext i32 %25 to i64
  %1541 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1540
  %1542 = load i8, ptr %1541, align 1, !tbaa !197
  switch i8 %1542, label %1543 [
    i8 4, label %1823
    i8 13, label %1823
    i8 6, label %1823
    i8 15, label %1823
    i8 5, label %1823
    i8 14, label %1823
    i8 7, label %1823
    i8 16, label %1823
  ], !prof !561

1543:                                             ; preds = %1539
  %1544 = tail call i32 @safe_from_p(ptr noundef %82, ptr noundef %33, i32 noundef 1), !range !449
  %1545 = icmp eq i32 %1544, 0
  %1546 = select i1 %1545, ptr null, ptr %82, !prof !272
  %1547 = select i1 %65, ptr null, ptr %67, !prof !272
  %1548 = tail call ptr @expand_expr_real(ptr noundef %31, ptr noundef %1546, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store ptr %1548, ptr %7, align 8, !tbaa !186
  %1549 = tail call ptr @expand_shift(i32 noundef %9, i32 noundef %25, ptr noundef %1548, ptr noundef %33, ptr noundef %1547, i32 noundef %29) #22
  %1550 = icmp eq i32 %9, 83
  %1551 = and i1 %1550, %64
  br i1 %1551, label %1552, label %1844, !prof !272

1552:                                             ; preds = %1543
  %1553 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %1549, ptr noundef %1547, ptr noundef nonnull %13)
  br label %1844

1554:                                             ; preds = %81, %81, %81, %81, %81, %81, %81, %81, %81, %81, %81, %81, %81, %81
  %1555 = select i1 %65, ptr null, ptr %67, !prof !562
  %1556 = icmp eq i32 %2, 0
  %1557 = select i1 %1556, i32 %25, i32 %2, !prof !563
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %1558 = load i32, ptr %10, align 8, !tbaa !464
  %1559 = load ptr, ptr %30, align 8, !tbaa !461
  %1560 = load ptr, ptr %32, align 8, !tbaa !462
  %1561 = load ptr, ptr @global_trees, align 16, !tbaa !186
  %1562 = icmp eq ptr %1559, %1561
  %1563 = icmp eq ptr %1560, %1561
  %1564 = select i1 %1562, i1 true, i1 %1563, !prof !562
  br i1 %1564, label %1565, label %1567, !prof !562

1565:                                             ; preds = %1554
  %1566 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  br label %1699

1567:                                             ; preds = %1554
  %1568 = getelementptr inbounds %struct.tree_common, ptr %1559, i64 0, i32 2
  %1569 = load ptr, ptr %1568, align 8, !tbaa !197
  %1570 = load i64, ptr %1569, align 8
  %1571 = and i64 %1570, 65535
  %1572 = icmp eq i64 %1571, 14
  br i1 %1572, label %1573, label %1575, !prof !562

1573:                                             ; preds = %1567
  %1574 = tail call i32 @vector_type_mode(ptr noundef nonnull %1569) #22
  br label %1580

1575:                                             ; preds = %1567
  %1576 = getelementptr inbounds %struct.tree_type, ptr %1569, i64 0, i32 6
  %1577 = load i32, ptr %1576, align 4
  %1578 = lshr i32 %1577, 16
  %1579 = and i32 %1578, 255
  br label %1580

1580:                                             ; preds = %1575, %1573
  %1581 = phi i32 [ %1574, %1573 ], [ %1579, %1575 ]
  %1582 = load i64, ptr %1569, align 8
  %1583 = trunc i64 %1582 to i32
  %1584 = lshr i32 %1583, 21
  %1585 = and i32 %1584, 1
  %1586 = icmp eq i32 %1581, 1
  br i1 %1586, label %1699, label %1587, !prof !562

1587:                                             ; preds = %1580
  %1588 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1559) #22
  %1589 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1560) #22
  %1590 = load i32, ptr %0, align 8, !tbaa !458
  switch i32 %1590, label %1636 [
    i32 101, label %1637
    i32 102, label %1591
    i32 97, label %1592
    i32 98, label %1602
    i32 99, label %1610
    i32 100, label %1618
    i32 103, label %1628
    i32 104, label %1629
    i32 105, label %1630
    i32 106, label %1631
    i32 107, label %1632
    i32 108, label %1633
    i32 109, label %1634
    i32 110, label %1635
  ], !prof !564

1591:                                             ; preds = %1587
  br label %1637

1592:                                             ; preds = %1587
  %1593 = tail call i32 @integer_onep(ptr noundef %1589) #22
  %1594 = icmp eq i32 %1593, 0
  br i1 %1594, label %1599, label %1595

1595:                                             ; preds = %1592
  %1596 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !186
  %1597 = icmp eq i32 %1585, 0
  %1598 = select i1 %1597, i32 84, i32 88
  br label %1637

1599:                                             ; preds = %1592
  %1600 = icmp eq i32 %1585, 0
  %1601 = select i1 %1600, i32 85, i32 89
  br label %1637

1602:                                             ; preds = %1587
  %1603 = icmp eq i32 %1585, 0
  br i1 %1603, label %1604, label %1637, !prof !565

1604:                                             ; preds = %1602
  %1605 = tail call i32 @integer_all_onesp(ptr noundef %1589) #22
  %1606 = icmp eq i32 %1605, 0
  %1607 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8
  %1608 = select i1 %1606, ptr %1589, ptr %1607, !prof !566
  %1609 = select i1 %1606, i32 84, i32 85, !prof !566
  br label %1637

1610:                                             ; preds = %1587
  %1611 = icmp eq i32 %1585, 0
  br i1 %1611, label %1612, label %1637

1612:                                             ; preds = %1610
  %1613 = tail call i32 @integer_all_onesp(ptr noundef %1589) #22
  %1614 = icmp eq i32 %1613, 0
  %1615 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8
  %1616 = select i1 %1614, ptr %1589, ptr %1615
  %1617 = select i1 %1614, i32 83, i32 82
  br label %1637

1618:                                             ; preds = %1587
  %1619 = tail call i32 @integer_onep(ptr noundef %1589) #22
  %1620 = icmp eq i32 %1619, 0
  br i1 %1620, label %1625, label %1621

1621:                                             ; preds = %1618
  %1622 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !186
  %1623 = icmp eq i32 %1585, 0
  %1624 = select i1 %1623, i32 83, i32 87
  br label %1637

1625:                                             ; preds = %1618
  %1626 = icmp eq i32 %1585, 0
  %1627 = select i1 %1626, i32 82, i32 86
  br label %1637

1628:                                             ; preds = %1587
  br label %1637

1629:                                             ; preds = %1587
  br label %1637

1630:                                             ; preds = %1587
  br label %1637

1631:                                             ; preds = %1587
  br label %1637

1632:                                             ; preds = %1587
  br label %1637

1633:                                             ; preds = %1587
  br label %1637

1634:                                             ; preds = %1587
  br label %1637

1635:                                             ; preds = %1587
  br label %1637

1636:                                             ; preds = %1587
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9981, ptr noundef nonnull @.str.1) #22
  br label %1637

1637:                                             ; preds = %1636, %1635, %1634, %1633, %1632, %1631, %1630, %1629, %1628, %1625, %1621, %1612, %1610, %1604, %1602, %1599, %1595, %1591, %1587
  %1638 = phi ptr [ %1589, %1636 ], [ %1589, %1635 ], [ %1589, %1634 ], [ %1589, %1633 ], [ %1589, %1632 ], [ %1589, %1631 ], [ %1589, %1630 ], [ %1589, %1629 ], [ %1589, %1628 ], [ %1622, %1621 ], [ %1589, %1625 ], [ %1596, %1595 ], [ %1589, %1599 ], [ %1589, %1591 ], [ %1589, %1587 ], [ %1589, %1602 ], [ %1589, %1610 ], [ %1608, %1604 ], [ %1616, %1612 ]
  %1639 = phi i32 [ undef, %1636 ], [ 97, %1635 ], [ 92, %1634 ], [ 93, %1633 ], [ 94, %1632 ], [ 95, %1631 ], [ 96, %1630 ], [ 91, %1629 ], [ 90, %1628 ], [ %1624, %1621 ], [ %1627, %1625 ], [ %1598, %1595 ], [ %1601, %1599 ], [ 80, %1591 ], [ 81, %1587 ], [ 88, %1602 ], [ 87, %1610 ], [ %1609, %1604 ], [ %1617, %1612 ]
  %1640 = load i64, ptr %1588, align 8
  %1641 = trunc i64 %1640 to i32
  %1642 = and i32 %1641, 65535
  %1643 = add nsw i32 %1642, -23
  %1644 = icmp ult i32 %1643, 3
  br i1 %1644, label %1645, label %1647, !prof !562

1645:                                             ; preds = %1637
  %1646 = tail call i32 @swap_condition(i32 noundef %1639) #22
  br label %1647

1647:                                             ; preds = %1645, %1637
  %1648 = phi ptr [ %1588, %1645 ], [ %1638, %1637 ]
  %1649 = phi ptr [ %1638, %1645 ], [ %1588, %1637 ]
  %1650 = phi i32 [ %1646, %1645 ], [ %1639, %1637 ]
  %1651 = icmp eq i32 %1650, 80
  %1652 = and i32 %1650, -2
  %1653 = icmp eq i32 %1652, 80
  br i1 %1653, label %1654, label %1672, !prof !567

1654:                                             ; preds = %1647
  %1655 = load i64, ptr %1649, align 8
  %1656 = and i64 %1655, 65535
  %1657 = icmp eq i64 %1656, 89
  br i1 %1657, label %1658, label %1672, !prof !568

1658:                                             ; preds = %1654
  %1659 = tail call i32 @integer_zerop(ptr noundef %1648) #22
  %1660 = icmp eq i32 %1659, 0
  br i1 %1660, label %1672, label %1661

1661:                                             ; preds = %1658
  %1662 = getelementptr inbounds %struct.tree_exp, ptr %1649, i64 1
  %1663 = load ptr, ptr %1662, align 8, !tbaa !197
  %1664 = tail call i32 @integer_pow2p(ptr noundef %1663) #22
  %1665 = icmp eq i32 %1664, 0
  br i1 %1665, label %1672, label %1666

1666:                                             ; preds = %1661
  %1667 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !395
  %1668 = tail call ptr %1667(i32 noundef %1557, i32 noundef %1585) #22
  %1669 = select i1 %1651, i32 102, i32 101
  %1670 = tail call ptr @fold_single_bit_test(i32 noundef %1558, i32 noundef %1669, ptr noundef nonnull %1649, ptr noundef %1648, ptr noundef %1668) #22
  %1671 = tail call ptr @expand_expr_real(ptr noundef %1670, ptr noundef %1555, i32 noundef 0, i32 noundef 0, ptr noundef null)
  br label %1699

1672:                                             ; preds = %1661, %1658, %1654, %1647
  %1673 = load i32, ptr @optimize, align 4, !tbaa !201
  %1674 = icmp ne i32 %1673, 0
  %1675 = icmp eq ptr %1555, null
  %1676 = or i1 %1675, %1674
  br i1 %1676, label %1689, label %1677, !prof !569

1677:                                             ; preds = %1672
  %1678 = load i32, ptr %1555, align 8
  %1679 = and i32 %1678, 65535
  %1680 = icmp eq i32 %1679, 37
  br i1 %1680, label %1681, label %1689

1681:                                             ; preds = %1677
  %1682 = getelementptr inbounds %struct.rtx_def, ptr %1555, i64 0, i32 1
  %1683 = load i32, ptr %1682, align 8, !tbaa !197
  %1684 = icmp ult i32 %1683, 53
  br i1 %1684, label %1689, label %1685

1685:                                             ; preds = %1681
  %1686 = lshr i32 %1678, 16
  %1687 = and i32 %1686, 255
  %1688 = icmp eq i32 %1687, %1581
  br i1 %1688, label %1690, label %1689

1689:                                             ; preds = %1677, %1672, %1685, %1681
  br label %1690

1690:                                             ; preds = %1689, %1685
  %1691 = phi ptr [ null, %1689 ], [ %1555, %1685 ]
  call fastcc void @expand_operands(ptr noundef %1649, ptr noundef %1648, ptr noundef %1691, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0)
  br i1 %1675, label %1692, label %1694, !prof !570

1692:                                             ; preds = %1690
  %1693 = tail call ptr @gen_reg_rtx(i32 noundef %1557) #22
  br label %1694

1694:                                             ; preds = %1692, %1690
  %1695 = phi ptr [ %1693, %1692 ], [ %1555, %1690 ]
  %1696 = load ptr, ptr %5, align 8, !tbaa !186
  %1697 = load ptr, ptr %6, align 8, !tbaa !186
  %1698 = tail call ptr @emit_store_flag_force(ptr noundef %1695, i32 noundef %1650, ptr noundef %1696, ptr noundef %1697, i32 noundef %1581, i32 noundef %1585, i32 noundef 1) #22
  br label %1699

1699:                                             ; preds = %1565, %1580, %1666, %1694
  %1700 = phi ptr [ %1566, %1565 ], [ %1671, %1666 ], [ %1698, %1694 ], [ null, %1580 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  %1701 = icmp eq ptr %1700, null
  br i1 %1701, label %1702, label %1844, !prof !562

1702:                                             ; preds = %1699
  %1703 = or i1 %65, %70
  br i1 %1703, label %1721, label %1704

1704:                                             ; preds = %1702
  %1705 = tail call i32 @safe_from_p(ptr noundef %67, ptr noundef %31, i32 noundef 1), !range !449
  %1706 = icmp eq i32 %1705, 0
  br i1 %1706, label %1721, label %1707

1707:                                             ; preds = %1704
  %1708 = tail call i32 @safe_from_p(ptr noundef %67, ptr noundef %33, i32 noundef 1), !range !449
  %1709 = icmp eq i32 %1708, 0
  br i1 %1709, label %1721, label %1710

1710:                                             ; preds = %1707
  %1711 = load i32, ptr @optimize, align 4, !tbaa !201
  %1712 = icmp eq i32 %1711, 0
  br i1 %1712, label %1713, label %1723

1713:                                             ; preds = %1710
  %1714 = load i32, ptr %67, align 8
  %1715 = and i32 %1714, 65535
  %1716 = icmp eq i32 %1715, 37
  br i1 %1716, label %1717, label %1723

1717:                                             ; preds = %1713
  %1718 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %1719 = load i32, ptr %1718, align 8, !tbaa !197
  %1720 = icmp ult i32 %1719, 53
  br i1 %1720, label %1721, label %1723

1721:                                             ; preds = %1717, %1707, %1704, %1702
  %1722 = tail call ptr @gen_reg_rtx(i32 noundef %1557) #22
  br label %1723

1723:                                             ; preds = %1721, %1717, %1713, %1710
  %1724 = phi ptr [ %1722, %1721 ], [ %67, %1710 ], [ %67, %1717 ], [ %67, %1713 ]
  %1725 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  %1726 = tail call ptr @emit_move_insn(ptr noundef %1724, ptr noundef %1725)
  %1727 = tail call ptr @gen_label_rtx() #22
  store ptr %1727, ptr %8, align 8, !tbaa !186
  tail call void @jumpifnot_1(i32 noundef %9, ptr noundef %31, ptr noundef %33, ptr noundef %1727, i32 noundef -1) #22
  %1728 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !186
  %1729 = tail call ptr @emit_move_insn(ptr noundef %1724, ptr noundef %1728)
  %1730 = tail call ptr @emit_label(ptr noundef %1727) #22
  br label %1844

1731:                                             ; preds = %81
  %1732 = select i1 %65, ptr null, ptr %67
  %1733 = tail call ptr @expand_expr_real(ptr noundef %31, ptr noundef %1732, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store ptr %1733, ptr %7, align 8, !tbaa !186
  %1734 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !186
  %1735 = tail call ptr @expand_binop(i32 noundef %25, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %1733, ptr noundef %1734, ptr noundef %1732, i32 noundef 1, i32 noundef 3) #22
  %1736 = icmp eq ptr %1735, null
  br i1 %1736, label %1737, label %1844

1737:                                             ; preds = %1731
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8150, ptr noundef nonnull @.str.1) #22
  br label %1844

1738:                                             ; preds = %81
  %1739 = tail call ptr @expand_expr_real(ptr noundef %31, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store ptr %1739, ptr %7, align 8, !tbaa !186
  %1740 = tail call ptr @expand_expr_real(ptr noundef %33, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store ptr %1740, ptr %8, align 8, !tbaa !186
  br i1 %70, label %1741, label %1755

1741:                                             ; preds = %1738
  %1742 = load i64, ptr %13, align 8
  %1743 = and i64 %1742, 65535
  %1744 = icmp eq i64 %1743, 14
  br i1 %1744, label %1745, label %1747

1745:                                             ; preds = %1741
  %1746 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #22
  br label %1752

1747:                                             ; preds = %1741
  %1748 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %1749 = load i32, ptr %1748, align 4
  %1750 = lshr i32 %1749, 16
  %1751 = and i32 %1750, 255
  br label %1752

1752:                                             ; preds = %1747, %1745
  %1753 = phi i32 [ %1746, %1745 ], [ %1751, %1747 ]
  %1754 = tail call ptr @gen_reg_rtx(i32 noundef %1753) #22
  br label %1755

1755:                                             ; preds = %1752, %1738
  %1756 = phi ptr [ %67, %1738 ], [ %1754, %1752 ]
  %1757 = load ptr, ptr %7, align 8, !tbaa !186
  tail call fastcc void @write_complex_part(ptr noundef %1756, ptr noundef %1757, i8 noundef zeroext 0)
  tail call fastcc void @write_complex_part(ptr noundef %1756, ptr noundef %1740, i8 noundef zeroext 1)
  br label %1844

1758:                                             ; preds = %81
  call fastcc void @expand_operands(ptr noundef %31, ptr noundef %33, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0)
  %1759 = load ptr, ptr %7, align 8, !tbaa !186
  %1760 = load ptr, ptr %8, align 8, !tbaa !186
  %1761 = tail call ptr @expand_widen_pattern_expr(ptr noundef nonnull %0, ptr noundef %1759, ptr noundef null, ptr noundef %1760, ptr noundef %67, i32 noundef %29) #22
  br label %1844

1762:                                             ; preds = %81, %81, %81
  %1763 = tail call ptr @expand_expr_real(ptr noundef %31, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store ptr %1763, ptr %7, align 8, !tbaa !186
  %1764 = tail call ptr @optab_for_tree_code(i32 noundef %9, ptr noundef nonnull %13, i32 noundef 0) #22
  %1765 = tail call ptr @expand_unop(i32 noundef %25, ptr noundef %1764, ptr noundef %1763, ptr noundef %67, i32 noundef %29) #22
  %1766 = icmp eq ptr %1765, null
  br i1 %1766, label %1767, label %1844

1767:                                             ; preds = %1762
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8185, ptr noundef nonnull @.str.1) #22
  br label %1844

1768:                                             ; preds = %81, %81
  call fastcc void @expand_operands(ptr noundef %31, ptr noundef %33, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0)
  %1769 = tail call ptr @optab_for_tree_code(i32 noundef %9, ptr noundef nonnull %13, i32 noundef 0) #22
  %1770 = load ptr, ptr %7, align 8, !tbaa !186
  %1771 = load ptr, ptr %8, align 8, !tbaa !186
  %1772 = tail call ptr @expand_binop(i32 noundef %25, ptr noundef %1769, ptr noundef %1770, ptr noundef %1771, ptr noundef %67, i32 noundef %29, i32 noundef 2) #22
  %1773 = icmp eq ptr %1772, null
  br i1 %1773, label %1774, label %1844

1774:                                             ; preds = %1768
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8197, ptr noundef nonnull @.str.1) #22
  br label %1844

1775:                                             ; preds = %81, %81
  call fastcc void @expand_operands(ptr noundef %31, ptr noundef %33, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0)
  %1776 = tail call ptr @optab_for_tree_code(i32 noundef %9, ptr noundef nonnull %13, i32 noundef 0) #22
  %1777 = load ptr, ptr %7, align 8, !tbaa !186
  %1778 = load ptr, ptr %8, align 8, !tbaa !186
  %1779 = tail call ptr @expand_binop(i32 noundef %25, ptr noundef %1776, ptr noundef %1777, ptr noundef %1778, ptr noundef %67, i32 noundef %29, i32 noundef 2) #22
  %1780 = icmp eq ptr %1779, null
  br i1 %1780, label %1781, label %1844

1781:                                             ; preds = %1775
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8209, ptr noundef nonnull @.str.1) #22
  br label %1844

1782:                                             ; preds = %81, %81
  %1783 = tail call ptr @expand_vec_shift_expr(ptr noundef nonnull %0, ptr noundef %67) #22
  br label %1844

1784:                                             ; preds = %81, %81
  %1785 = tail call ptr @expand_expr_real(ptr noundef %31, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store ptr %1785, ptr %7, align 8, !tbaa !186
  %1786 = tail call ptr @optab_for_tree_code(i32 noundef %9, ptr noundef nonnull %13, i32 noundef 0) #22
  %1787 = tail call ptr @expand_widen_pattern_expr(ptr noundef nonnull %0, ptr noundef %1785, ptr noundef null, ptr noundef null, ptr noundef %67, i32 noundef %29) #22
  %1788 = icmp eq ptr %1787, null
  br i1 %1788, label %1789, label %1844

1789:                                             ; preds = %1784
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8227, ptr noundef nonnull @.str.1) #22
  br label %1844

1790:                                             ; preds = %81, %81
  %1791 = tail call ptr @expand_expr_real(ptr noundef %31, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store ptr %1791, ptr %7, align 8, !tbaa !186
  %1792 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %1793 = load ptr, ptr %1792, align 8, !tbaa !197
  %1794 = tail call ptr @optab_for_tree_code(i32 noundef %9, ptr noundef %1793, i32 noundef 0) #22
  %1795 = load ptr, ptr %1792, align 8, !tbaa !197
  %1796 = load i64, ptr %1795, align 8
  %1797 = trunc i64 %1796 to i32
  %1798 = lshr i32 %1797, 21
  %1799 = and i32 %1798, 1
  %1800 = tail call ptr @expand_widen_pattern_expr(ptr noundef nonnull %0, ptr noundef %1791, ptr noundef null, ptr noundef null, ptr noundef %67, i32 noundef %1799) #22
  %1801 = icmp eq ptr %1800, null
  br i1 %1801, label %1802, label %1844

1802:                                             ; preds = %1790
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8243, ptr noundef nonnull @.str.1) #22
  br label %1844

1803:                                             ; preds = %81, %81
  call fastcc void @expand_operands(ptr noundef %31, ptr noundef %33, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0)
  %1804 = load ptr, ptr %7, align 8, !tbaa !186
  %1805 = load ptr, ptr %8, align 8, !tbaa !186
  %1806 = tail call ptr @expand_widen_pattern_expr(ptr noundef nonnull %0, ptr noundef %1804, ptr noundef %1805, ptr noundef null, ptr noundef %67, i32 noundef %29) #22
  %1807 = icmp eq ptr %1806, null
  br i1 %1807, label %1808, label %1844

1808:                                             ; preds = %1803
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8256, ptr noundef nonnull @.str.1) #22
  br label %1844

1809:                                             ; preds = %81, %81, %81
  %1810 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %1811 = load ptr, ptr %1810, align 8, !tbaa !197
  %1812 = load i64, ptr %1811, align 8
  %1813 = and i64 %1812, 65535
  %1814 = icmp eq i64 %1813, 14
  br i1 %1814, label %1815, label %1817

1815:                                             ; preds = %1809
  %1816 = tail call i32 @vector_type_mode(ptr noundef nonnull %1811) #22
  br label %1823

1817:                                             ; preds = %1809
  %1818 = getelementptr inbounds %struct.tree_type, ptr %1811, i64 0, i32 6
  %1819 = load i32, ptr %1818, align 4
  %1820 = lshr i32 %1819, 16
  %1821 = and i32 %1820, 255
  br label %1823

1822:                                             ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8267, ptr noundef nonnull @.str.1) #22
  br label %1823

1823:                                             ; preds = %1539, %1539, %1539, %1539, %1539, %1539, %1539, %1201, %1201, %1201, %1201, %1201, %1201, %1201, %885, %885, %885, %885, %885, %885, %885, %871, %870, %81, %81, %81, %81, %846, %1815, %1817, %1539, %1201, %885, %1416, %1415, %1414, %1822
  %1824 = phi i32 [ %9, %1822 ], [ 88, %1416 ], [ 87, %1415 ], [ 89, %1414 ], [ 65, %885 ], [ %9, %1201 ], [ %9, %1539 ], [ %9, %1817 ], [ %9, %1815 ], [ 64, %846 ], [ %9, %81 ], [ %9, %81 ], [ %9, %81 ], [ %9, %81 ], [ 64, %870 ], [ 64, %871 ], [ 65, %885 ], [ 65, %885 ], [ 65, %885 ], [ 65, %885 ], [ 65, %885 ], [ 65, %885 ], [ 65, %885 ], [ %9, %1201 ], [ %9, %1201 ], [ %9, %1201 ], [ %9, %1201 ], [ %9, %1201 ], [ %9, %1201 ], [ %9, %1201 ], [ %9, %1539 ], [ %9, %1539 ], [ %9, %1539 ], [ %9, %1539 ], [ %9, %1539 ], [ %9, %1539 ], [ %9, %1539 ]
  %1825 = phi i32 [ %25, %1822 ], [ %25, %1416 ], [ %25, %1415 ], [ %25, %1414 ], [ %25, %885 ], [ %25, %1201 ], [ %25, %1539 ], [ %1821, %1817 ], [ %1816, %1815 ], [ %25, %846 ], [ %25, %81 ], [ %25, %81 ], [ %25, %81 ], [ %25, %81 ], [ %25, %870 ], [ %25, %871 ], [ %25, %885 ], [ %25, %885 ], [ %25, %885 ], [ %25, %885 ], [ %25, %885 ], [ %25, %885 ], [ %25, %885 ], [ %25, %1201 ], [ %25, %1201 ], [ %25, %1201 ], [ %25, %1201 ], [ %25, %1201 ], [ %25, %1201 ], [ %25, %1201 ], [ %25, %1539 ], [ %25, %1539 ], [ %25, %1539 ], [ %25, %1539 ], [ %25, %1539 ], [ %25, %1539 ], [ %25, %1539 ]
  call fastcc void @expand_operands(ptr noundef %31, ptr noundef %33, ptr noundef %82, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0)
  br label %1826

1826:                                             ; preds = %874, %671, %658, %1823
  %1827 = phi i32 [ %1824, %1823 ], [ 64, %874 ], [ %9, %658 ], [ %9, %671 ]
  %1828 = phi i32 [ %1825, %1823 ], [ %25, %874 ], [ %25, %658 ], [ %25, %671 ]
  %1829 = phi ptr [ %67, %1823 ], [ %67, %874 ], [ %563, %658 ], [ %662, %671 ]
  %1830 = tail call ptr @optab_for_tree_code(i32 noundef %1827, ptr noundef nonnull %13, i32 noundef 0) #22
  br label %1831

1831:                                             ; preds = %1192, %1053, %1826
  %1832 = phi ptr [ %1830, %1826 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 22), %1053 ], [ %1145, %1192 ]
  %1833 = phi i32 [ %1828, %1826 ], [ %25, %1053 ], [ %25, %1192 ]
  %1834 = phi ptr [ %1829, %1826 ], [ %950, %1053 ], [ %950, %1192 ]
  %1835 = select i1 %65, ptr null, ptr %1834, !prof !571
  %1836 = load ptr, ptr %7, align 8, !tbaa !186
  %1837 = load ptr, ptr %8, align 8, !tbaa !186
  %1838 = tail call ptr @expand_binop(i32 noundef %1833, ptr noundef %1832, ptr noundef %1836, ptr noundef %1837, ptr noundef %1835, i32 noundef %29, i32 noundef 3) #22
  %1839 = icmp eq ptr %1838, null
  br i1 %1839, label %1840, label %1841, !prof !571

1840:                                             ; preds = %1831
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8281, ptr noundef nonnull @.str.1) #22
  br label %1841

1841:                                             ; preds = %1831, %1840
  br i1 %64, label %1842, label %1844, !prof !571

1842:                                             ; preds = %1841
  %1843 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %1838, ptr noundef %1835, ptr noundef nonnull %13)
  br label %1844

1844:                                             ; preds = %1303, %1195, %879, %866, %859, %673, %666, %600, %277, %218, %1803, %1790, %1784, %1775, %1768, %843, %658, %502, %1543, %1842, %1841, %1808, %1802, %1789, %1781, %1774, %1767, %1762, %1737, %1731, %1699, %1552, %1413, %1408, %1330, %1292, %1291, %1231, %1236, %1199, %932, %945, %883, %868, %864, %677, %671, %602, %279, %220, %108, %187, %157, %1401, %1782, %1758, %1755, %1723, %1404, %1308, %1276, %1245, %1210, %1205, %1192, %1053, %320, %86
  %1845 = phi ptr [ %1783, %1782 ], [ %1761, %1758 ], [ %1756, %1755 ], [ %1724, %1723 ], [ %1344, %1404 ], [ %1344, %1401 ], [ %1310, %1308 ], [ %1254, %1276 ], [ %1246, %1245 ], [ %1214, %1210 ], [ %1209, %1205 ], [ undef, %1053 ], [ %1194, %1192 ], [ %322, %320 ], [ %87, %86 ], [ %110, %108 ], [ %143, %187 ], [ %143, %157 ], [ %221, %220 ], [ %280, %279 ], [ %603, %602 ], [ %667, %671 ], [ %678, %677 ], [ %865, %864 ], [ %869, %868 ], [ %884, %883 ], [ %936, %932 ], [ %948, %945 ], [ %1200, %1199 ], [ %1221, %1236 ], [ %1221, %1231 ], [ %1293, %1292 ], [ %1288, %1291 ], [ %1335, %1330 ], [ %1411, %1408 ], [ %1411, %1413 ], [ %1549, %1543 ], [ %1553, %1552 ], [ %1700, %1699 ], [ %1735, %1731 ], [ %1735, %1737 ], [ %1765, %1762 ], [ %1765, %1767 ], [ %1772, %1774 ], [ %1779, %1781 ], [ %1787, %1789 ], [ %1800, %1802 ], [ %1806, %1808 ], [ %1843, %1842 ], [ %1838, %1841 ], [ %504, %502 ], [ %660, %658 ], [ %845, %843 ], [ %1772, %1768 ], [ %1779, %1775 ], [ %1787, %1784 ], [ %1800, %1790 ], [ %1806, %1803 ], [ %219, %218 ], [ %278, %277 ], [ %601, %600 ], [ %670, %666 ], [ %676, %673 ], [ %863, %859 ], [ %867, %866 ], [ %882, %879 ], [ %1198, %1195 ], [ %1307, %1303 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  ret ptr %1845
}

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @reduce_to_bit_field_precision(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #13 !prof !185 {
  %4 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1023
  %7 = zext nneg i32 %6 to i64
  %8 = icmp eq ptr %1, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %1, align 8
  %11 = load i32, ptr %0, align 8
  %12 = xor i32 %11, %10
  %13 = and i32 %12, 16711680
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr %1, ptr null
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi ptr [ null, %3 ], [ %15, %9 ]
  %18 = load i32, ptr %0, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 30
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !197
  %24 = tail call ptr @build_int_cst_type(ptr noundef %2, i64 noundef %23) #22
  %25 = tail call ptr @expand_expr_real(ptr noundef %24, ptr noundef %17, i32 noundef 0, i32 noundef 0, ptr noundef null)
  br label %67

26:                                               ; preds = %16
  %27 = load i64, ptr %2, align 8
  %28 = and i64 %27, 2097152
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  %31 = icmp ult i32 %6, 64
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = shl nsw i64 -1, %7
  %34 = xor i64 %33, -1
  br label %39

35:                                               ; preds = %30
  %36 = add nsw i64 %7, -64
  %37 = shl nsw i64 -1, %36
  %38 = xor i64 %37, -1
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i64 [ %38, %35 ], [ 0, %32 ]
  %41 = phi i64 [ -1, %35 ], [ %34, %32 ]
  %42 = lshr i32 %18, 16
  %43 = and i32 %42, 255
  %44 = tail call ptr @immed_double_const(i64 noundef %41, i64 noundef %40, i32 noundef %43) #22
  %45 = load i32, ptr %0, align 8
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  %48 = tail call ptr @expand_and(i32 noundef %47, ptr noundef nonnull %0, ptr noundef %44, ptr noundef %17) #22
  br label %67

49:                                               ; preds = %26
  %50 = lshr i32 %18, 16
  %51 = and i32 %50, 255
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !197
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 3
  %57 = sub nsw i64 %56, %7
  %58 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %57) #22
  %59 = load i32, ptr %0, align 8
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %61, ptr noundef nonnull %0, ptr noundef %58, ptr noundef %17, i32 noundef 0) #22
  %63 = load i32, ptr %62, align 8
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  %66 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %65, ptr noundef nonnull %62, ptr noundef %58, ptr noundef %17, i32 noundef 0) #22
  br label %67

67:                                               ; preds = %49, %39, %21
  %68 = phi ptr [ %25, %21 ], [ %48, %39 ], [ %66, %49 ]
  ret ptr %68
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_def_for_expr(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !572 !PGOFuncName !573 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %56, !prof !574

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 1), align 8, !tbaa !473
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9, !prof !575

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !197
  %12 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %7, i32 noundef %11) #22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14, !prof !576

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !197
  br label %17

17:                                               ; preds = %6, %9, %14
  %18 = phi ptr [ %16, %14 ], [ null, %9 ], [ null, %6 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %56, label %20, !prof !576

20:                                               ; preds = %17
  %21 = load i32, ptr %18, align 8
  %22 = trunc i32 %21 to i8
  switch i8 %22, label %25 [
    i8 6, label %23
    i8 1, label %23
    i8 8, label %26
  ], !prof !577

23:                                               ; preds = %20, %20
  %24 = lshr i32 %21, 16
  br label %26

25:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %26

26:                                               ; preds = %25, %23, %20
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ], [ 59, %20 ]
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !197
  %31 = icmp eq i8 %30, 3
  br i1 %31, label %32, label %52, !prof !578

32:                                               ; preds = %26
  %33 = load i32, ptr %18, align 8
  %34 = and i32 %33, 255
  %35 = add nsw i32 %34, -1
  %36 = icmp ult i32 %35, 9
  tail call void @llvm.assume(i1 %36)
  %37 = zext nneg i32 %34 to i64
  %38 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !201
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !311
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45, !prof !579

44:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %45

45:                                               ; preds = %44, %32
  %46 = getelementptr inbounds i8, ptr %18, i64 %42
  %47 = getelementptr inbounds ptr, ptr %46, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !186
  %49 = load i64, ptr %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = and i32 %50, 65535
  br label %52

52:                                               ; preds = %26, %45
  %53 = phi i32 [ %51, %45 ], [ %27, %26 ]
  %54 = icmp eq i32 %53, %1
  %55 = select i1 %54, ptr %18, ptr null, !prof !580
  br label %56

56:                                               ; preds = %52, %17, %2
  %57 = phi ptr [ null, %2 ], [ null, %17 ], [ %55, %52 ]
  ret ptr %57
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_operands(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5) unnamed_addr #9 !prof !581 !PGOFuncName !582 {
  %7 = tail call i32 @safe_from_p(ptr noundef %2, ptr noundef %1, i32 noundef 1), !range !449
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, ptr null, ptr %2, !prof !583
  %10 = tail call i32 @operand_equal_p(ptr noundef %0, ptr noundef %1, i32 noundef 0) #22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12, !prof !584

12:                                               ; preds = %6
  %13 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef %9, i32 noundef 0, i32 noundef %5, ptr noundef null)
  store ptr %13, ptr %3, align 8, !tbaa !186
  %14 = tail call ptr @copy_rtx(ptr noundef %13) #22
  br label %28

15:                                               ; preds = %6
  %16 = load i32, ptr @flag_evaluation_order, align 4, !tbaa !201
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18, !prof !584

18:                                               ; preds = %15
  %19 = load i64, ptr %1, align 8
  %20 = and i64 %19, 65536
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @save_expr(ptr noundef %0) #22
  br label %24

24:                                               ; preds = %22, %18, %15
  %25 = phi ptr [ %23, %22 ], [ %0, %18 ], [ %0, %15 ]
  %26 = tail call ptr @expand_expr_real(ptr noundef %25, ptr noundef %9, i32 noundef 0, i32 noundef %5, ptr noundef null)
  store ptr %26, ptr %3, align 8, !tbaa !186
  %27 = tail call ptr @expand_expr_real(ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef %5, ptr noundef null)
  br label %28

28:                                               ; preds = %24, %12
  %29 = phi ptr [ %27, %24 ], [ %14, %12 ]
  store ptr %29, ptr %4, align 8, !tbaa !186
  ret void
}

declare ptr @expand_ternary_op(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @really_constant_p(ptr noundef) local_unnamed_addr #3

declare i32 @int_fits_type_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

declare ptr @gen_highpart(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @expand_mult_highpart_adjust(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expand_unop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @optab_for_tree_code(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expand_abs(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @can_conditionally_move_p(i32 noundef) local_unnamed_addr #3

declare ptr @emit_conditional_move(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @do_compare_rtx_and_jump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @jumpifnot_1(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expand_widen_pattern_expr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expand_vec_shift_expr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #3

declare ptr @label_rtx(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_u_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_assign_rhs_to_tree(ptr noundef) local_unnamed_addr #3

declare void @layout_decl(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @emutls_var_address(ptr noundef %0) unnamed_addr #13 !prof !185 {
  %2 = tail call ptr @emutls_decl(ptr noundef %0) #22
  %3 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 548), align 16, !tbaa !186
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !186
  %5 = tail call ptr @build_fold_addr_expr_with_type_loc(i32 noundef 0, ptr noundef %2, ptr noundef %4) #22
  %6 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %5) #22
  %7 = tail call ptr @build_function_call_expr(i32 noundef 0, ptr noundef %3, ptr noundef %6) #22
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !197
  %10 = tail call ptr @build_pointer_type(ptr noundef %9) #22
  %11 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %10, ptr noundef %7) #22
  ret ptr %11
}

declare void @assemble_external(ptr noundef) local_unnamed_addr #3

declare ptr @replace_equiv_address(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mark_reg_pointer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @promote_decl_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_lowpart_SUBREG(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @const_vector_from_tree(ptr noundef %0) unnamed_addr #13 !prof !185 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 14
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #22
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ %8, %7 ], [ %13, %9 ]
  %16 = tail call zeroext i8 @initializer_zerop(ptr noundef %0) #22
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = sext i32 %15 to i64
  %20 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !186
  br label %80

22:                                               ; preds = %14
  %23 = zext i32 %15 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !197
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %23
  %28 = load i8, ptr %27, align 1, !tbaa !197
  %29 = zext i8 %28 to i32
  %30 = tail call ptr @rtvec_alloc(i32 noundef %26) #22
  %31 = getelementptr inbounds %struct.tree_vector, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !197
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %44

34:                                               ; preds = %65
  %35 = trunc i64 %69 to i32
  br label %36

36:                                               ; preds = %34, %22
  %37 = phi i32 [ 0, %22 ], [ %35, %34 ]
  %38 = icmp ult i32 %37, %26
  br i1 %38, label %39, label %78

39:                                               ; preds = %36
  %40 = zext i8 %28 to i64
  %41 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %40
  %42 = zext i32 %37 to i64
  %43 = zext i8 %25 to i64
  br label %72

44:                                               ; preds = %22, %65
  %45 = phi i64 [ %69, %65 ], [ 0, %22 ]
  %46 = phi ptr [ %70, %65 ], [ %32, %22 ]
  %47 = getelementptr inbounds %struct.tree_list, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !197
  %49 = load i64, ptr %48, align 8
  %50 = trunc i64 %49 to i16
  switch i16 %50, label %59 [
    i16 24, label %51
    i16 25, label %55
  ]

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.tree_real_cst, ptr %48, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !197
  %54 = tail call ptr @const_double_from_real_value(ptr noundef byval(%struct.real_value) align 8 %53, i32 noundef %29) #22
  br label %65

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.tree_fixed_cst, ptr %48, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !197
  %58 = tail call ptr @const_fixed_from_fixed_value(ptr noundef byval(%struct.fixed_value) align 8 %57, i32 noundef %29) #22
  br label %65

59:                                               ; preds = %44
  %60 = getelementptr inbounds %struct.tree_int_cst, ptr %48, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !197
  %62 = getelementptr inbounds %struct.tree_int_cst, ptr %48, i64 0, i32 1, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !197
  %64 = tail call ptr @immed_double_const(i64 noundef %61, i64 noundef %63, i32 noundef %29) #22
  br label %65

65:                                               ; preds = %51, %59, %55
  %66 = phi ptr [ %54, %51 ], [ %64, %59 ], [ %58, %55 ]
  %67 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %45
  store ptr %66, ptr %67, align 8, !tbaa !186
  %68 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 1
  %69 = add nuw i64 %45, 1
  %70 = load ptr, ptr %68, align 8, !tbaa !197
  %71 = icmp eq ptr %70, null
  br i1 %71, label %34, label %44, !llvm.loop !585

72:                                               ; preds = %39, %72
  %73 = phi i64 [ %42, %39 ], [ %76, %72 ]
  %74 = load ptr, ptr %41, align 8, !tbaa !186
  %75 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %73
  store ptr %74, ptr %75, align 8, !tbaa !186
  %76 = add nuw nsw i64 %73, 1
  %77 = icmp eq i64 %76, %43
  br i1 %77, label %78, label %72, !llvm.loop !586

78:                                               ; preds = %72, %36
  %79 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %15, ptr noundef %30) #22
  br label %80

80:                                               ; preds = %78, %18
  %81 = phi ptr [ %21, %18 ], [ %79, %78 ]
  ret ptr %81
}

declare ptr @fold_unary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_constructor_from_list(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @const_double_from_real_value(ptr noundef byval(%struct.real_value) align 8, i32 noundef) local_unnamed_addr #3

declare ptr @const_fixed_from_fixed_value(ptr noundef byval(%struct.fixed_value) align 8, i32 noundef) local_unnamed_addr #3

declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_constructor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #13 !prof !185 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !197
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 14
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = tail call i32 @vector_type_mode(ptr noundef nonnull %9) #22
  br label %20

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i32 [ %14, %13 ], [ %19, %15 ]
  %22 = load i64, ptr %0, align 8
  %23 = and i64 %22, 67108864
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %20
  %26 = and i64 %22, 262144
  %27 = icmp eq i64 %26, 0
  %28 = icmp ne ptr %1, null
  %29 = and i1 %28, %27
  %30 = icmp eq i32 %21, 1
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %49

32:                                               ; preds = %25
  %33 = and i64 %22, 65535
  %34 = icmp eq i64 %33, 51
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #22
  store i64 0, ptr %5, align 8, !tbaa !311
  store i64 0, ptr %6, align 8, !tbaa !311
  store i8 0, ptr %7, align 1, !tbaa !197
  %36 = call fastcc zeroext i8 @categorize_ctor_elements_1(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7), !range !409
  %37 = load i64, ptr %5, align 8, !tbaa !311
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  br label %43

40:                                               ; preds = %32
  %41 = tail call zeroext i8 @initializer_zerop(ptr noundef nonnull %0) #22
  %42 = zext i8 %41 to i32
  br label %43

43:                                               ; preds = %35, %40
  %44 = phi i32 [ %39, %35 ], [ %42, %40 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = tail call ptr @expr_size(ptr noundef nonnull %0) #22
  %48 = tail call ptr @clear_storage_hints(ptr noundef nonnull %1, ptr noundef %47, i32 noundef 0, i32 noundef 0, i64 noundef -1)
  br label %152

49:                                               ; preds = %43, %25, %20
  %50 = load i64, ptr %0, align 8
  %51 = and i64 %50, 67108864
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %88, label %53

53:                                               ; preds = %49
  %54 = icmp eq i32 %21, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = icmp eq ptr %1, null
  br i1 %56, label %95, label %57

57:                                               ; preds = %55
  %58 = tail call i32 @safe_from_p(ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef 1), !range !449
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %95, label %60

60:                                               ; preds = %57, %53
  %61 = load i64, ptr %0, align 8
  %62 = and i64 %61, 262144
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !197
  %67 = tail call i32 @host_integerp(ptr noundef %66, i32 noundef 1) #22
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %88, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %65, align 8, !tbaa !197
  %71 = tail call i64 @tree_low_cst(ptr noundef %70, i32 noundef 1) #22
  %72 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 7
  %73 = load i32, ptr %72, align 8, !tbaa !197
  %74 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %71, i32 noundef %73)
  %75 = tail call zeroext i8 @optimize_insn_for_speed_p() #22
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %69
  %78 = load ptr, ptr @ix86_cost, align 8, !tbaa !186
  %79 = getelementptr inbounds %struct.processor_costs, ptr %78, i64 0, i32 10
  %80 = load i32, ptr %79, align 4, !tbaa !278
  %81 = zext i32 %80 to i64
  br label %82

82:                                               ; preds = %69, %77
  %83 = phi i64 [ %81, %77 ], [ 3, %69 ]
  %84 = icmp ult i64 %74, %83
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = tail call fastcc i32 @mostly_zeros_p(ptr noundef nonnull %0), !range !587
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %85, %82, %64, %49
  %89 = add i32 %2, -3
  %90 = icmp ult i32 %89, 2
  br i1 %90, label %91, label %108

91:                                               ; preds = %88
  %92 = load i64, ptr %0, align 8
  %93 = and i64 %92, 131072
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %91, %85, %57, %60, %55
  %96 = icmp eq i8 %3, 0
  br i1 %96, label %97, label %152

97:                                               ; preds = %95
  %98 = tail call ptr @output_constant_def(ptr noundef nonnull %0, i32 noundef 1) #22
  %99 = icmp eq i32 %2, 4
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = tail call ptr @use_anchored_address(ptr noundef %98) #22
  br label %102

102:                                              ; preds = %97, %100
  %103 = phi ptr [ %101, %100 ], [ %98, %97 ]
  %104 = add i32 %2, -5
  %105 = icmp ult i32 %104, -3
  br i1 %105, label %106, label %152

106:                                              ; preds = %102
  %107 = tail call ptr @validize_mem(ptr noundef %103) #22
  br label %152

108:                                              ; preds = %88, %91
  %109 = icmp eq ptr %1, null
  br i1 %109, label %119, label %110

110:                                              ; preds = %108
  %111 = tail call i32 @safe_from_p(ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef 1), !range !449
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %1, align 8
  %115 = and i32 %114, 65535
  %116 = icmp eq i32 %115, 15
  %117 = icmp eq i32 %2, 1
  %118 = or i1 %117, %116
  br i1 %118, label %119, label %149

119:                                              ; preds = %113, %110, %108
  %120 = icmp eq i8 %3, 0
  br i1 %120, label %121, label %152

121:                                              ; preds = %119
  %122 = load i64, ptr %9, align 8
  %123 = trunc i64 %122 to i32
  %124 = lshr i32 %123, 20
  %125 = and i32 %124, 1
  %126 = lshr i32 %123, 18
  %127 = and i32 %126, 2
  %128 = or disjoint i32 %125, %127
  %129 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %130 = load i32, ptr %129, align 4
  %131 = lshr i32 %130, 11
  %132 = and i32 %131, 4
  %133 = or disjoint i32 %128, %132
  %134 = lshr i64 %122, 48
  %135 = trunc i64 %134 to i32
  %136 = and i32 %135, 65280
  %137 = or disjoint i32 %133, %136
  %138 = load i64, ptr %0, align 8
  %139 = trunc i64 %138 to i32
  %140 = lshr i32 %139, 20
  %141 = and i32 %140, 1
  %142 = or i32 %137, %141
  %143 = tail call ptr @build_qualified_type(ptr noundef nonnull %9, i32 noundef %142) #22
  %144 = load i64, ptr %0, align 8
  %145 = trunc i64 %144 to i32
  %146 = lshr i32 %145, 18
  %147 = and i32 %146, 1
  %148 = tail call ptr @assign_temp(ptr noundef %143, i32 noundef 0, i32 noundef %147, i32 noundef 1) #22
  br label %149

149:                                              ; preds = %113, %121
  %150 = phi ptr [ %148, %121 ], [ %1, %113 ]
  %151 = tail call i64 @int_expr_size(ptr noundef nonnull %0) #22
  tail call fastcc void @store_constructor(ptr noundef nonnull %0, ptr noundef %150, i32 noundef 0, i64 noundef %151)
  br label %152

152:                                              ; preds = %119, %95, %106, %102, %149, %46
  %153 = phi ptr [ %1, %46 ], [ %150, %149 ], [ null, %95 ], [ %107, %106 ], [ %103, %102 ], [ null, %119 ]
  ret ptr %153
}

declare ptr @fold_read_from_constant_string(ptr noundef) local_unnamed_addr #3

declare void @get_address_description(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @addr_for_mem_ref(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @fold(ptr noundef) local_unnamed_addr #3

declare ptr @size_diffop_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @expand_and(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @is_aligning_offset(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #13 !prof !588 !PGOFuncName !589 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %0, %2 ], [ %9, %7 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %48 [
    i16 116, label %7
    i16 113, label %7
    i16 89, label %10
  ], !prof !590

7:                                                ; preds = %3, %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !197
  br label %3, !llvm.loop !591

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !197
  %13 = tail call i32 @host_integerp(ptr noundef %12, i32 noundef 1) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %11, align 8, !tbaa !197
  %17 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !201
  %18 = and i32 %17, 32
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i64 16, i64 32
  %21 = tail call i32 @compare_tree_int(ptr noundef %16, i64 noundef %20) #22
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %48, label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %11, align 8, !tbaa !197
  %25 = tail call i64 @tree_low_cst(ptr noundef %24, i32 noundef 1) #22
  %26 = add nsw i64 %25, 1
  %27 = tail call i32 @exact_log2(i64 noundef %26) #22
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %23, %35
  %30 = phi ptr [ %32, %35 ], [ %4, %23 ]
  %31 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !197
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i16
  switch i16 %34, label %48 [
    i16 116, label %35
    i16 113, label %35
    i16 79, label %36
  ]

35:                                               ; preds = %29, %29
  br label %29, !llvm.loop !592

36:                                               ; preds = %29, %42
  %37 = phi ptr [ %39, %42 ], [ %32, %29 ]
  %38 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !197
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i16
  switch i16 %41, label %48 [
    i16 116, label %42
    i16 113, label %42
    i16 121, label %43
  ]

42:                                               ; preds = %36, %36
  br label %36, !llvm.loop !593

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !197
  %46 = icmp eq ptr %45, %1
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %3, %29, %36, %43, %10, %15, %23
  %49 = phi i32 [ 0, %23 ], [ 0, %15 ], [ 0, %10 ], [ %47, %43 ], [ 0, %36 ], [ 0, %29 ], [ 0, %3 ]
  ret i32 %49
}

declare ptr @assign_stack_local(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @assign_stack_temp_for_type(i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #3

declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @identifier_to_locale(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @tree_nonartificial_location(ptr noundef) local_unnamed_addr #3

declare ptr @expand_builtin(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expand_call(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expand_vec_cond_expr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

declare void @do_jump(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @rest_of_decl_compilation(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @expand_decl(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @string_constant(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #13 !prof !185 {
  %3 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #22
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %127 [
    i16 121, label %6
    i16 63, label %41
    i16 66, label %41
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !197
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %127 [
    i16 28, label %11
    i16 32, label %14
    i16 45, label %16
  ]

11:                                               ; preds = %6
  %12 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !186
  store ptr %12, ptr %1, align 8, !tbaa !186
  %13 = load ptr, ptr %7, align 8, !tbaa !197
  br label %127

14:                                               ; preds = %6
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !186
  br label %73

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !197
  %19 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !197
  %21 = load i64, ptr %18, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %127 [
    i16 28, label %23
    i16 32, label %23
  ]

23:                                               ; preds = %16, %16
  %24 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %8)
  %25 = tail call i32 @integer_zerop(ptr noundef %24) #22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %73

27:                                               ; preds = %23
  %28 = load i64, ptr %24, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 23
  br i1 %30, label %31, label %127

31:                                               ; preds = %27
  %32 = load i64, ptr %20, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 23
  br i1 %34, label %35, label %127

35:                                               ; preds = %31
  %36 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %37 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %36, ptr noundef nonnull %20) #22
  %38 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %39 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %38, ptr noundef nonnull %24) #22
  %40 = tail call ptr @size_diffop_loc(i32 noundef 0, ptr noundef %37, ptr noundef %39) #22
  br label %73

41:                                               ; preds = %2, %2
  %42 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !197
  %44 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !197
  %46 = tail call ptr @tree_strip_nop_conversions(ptr noundef %43) #22
  %47 = tail call ptr @tree_strip_nop_conversions(ptr noundef %45) #22
  %48 = load i64, ptr %46, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 121
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !197
  %54 = load i64, ptr %53, align 8
  %55 = trunc i64 %54 to i16
  switch i16 %55, label %56 [
    i16 28, label %65
    i16 32, label %65
  ]

56:                                               ; preds = %51, %41
  %57 = load i64, ptr %47, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 121
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !197
  %63 = load i64, ptr %62, align 8
  %64 = trunc i64 %63 to i16
  switch i16 %64, label %69 [
    i16 28, label %65
    i16 32, label %65
  ]

65:                                               ; preds = %60, %51, %60, %51
  %66 = phi ptr [ %52, %51 ], [ %61, %60 ], [ %52, %51 ], [ %61, %60 ]
  %67 = phi ptr [ %47, %51 ], [ %46, %60 ], [ %47, %51 ], [ %46, %60 ]
  %68 = load ptr, ptr %66, align 8, !tbaa !197
  br label %69

69:                                               ; preds = %60, %56, %65
  %70 = phi ptr [ %68, %65 ], [ undef, %56 ], [ undef, %60 ]
  %71 = phi ptr [ %67, %65 ], [ undef, %56 ], [ undef, %60 ]
  %72 = phi i1 [ true, %65 ], [ false, %56 ], [ false, %60 ]
  br i1 %72, label %73, label %127

73:                                               ; preds = %69, %35, %23, %14
  %74 = phi ptr [ %8, %14 ], [ %18, %23 ], [ %18, %35 ], [ %70, %69 ]
  %75 = phi ptr [ %15, %14 ], [ %20, %23 ], [ %40, %35 ], [ %71, %69 ]
  %76 = load i64, ptr %74, align 8
  %77 = trunc i64 %76 to i16
  switch i16 %77, label %127 [
    i16 28, label %78
    i16 32, label %81
  ]

78:                                               ; preds = %73
  %79 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %80 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %79, ptr noundef %75) #22
  store ptr %80, ptr %1, align 8, !tbaa !186
  br label %127

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.tree_decl_common, ptr %74, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !197
  %84 = icmp eq ptr %83, null
  br i1 %84, label %127, label %85

85:                                               ; preds = %81
  %86 = load i64, ptr %83, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 28
  %89 = and i64 %76, 1114112
  %90 = icmp eq i64 %89, 1048576
  %91 = and i1 %90, %88
  br i1 %91, label %92, label %127

92:                                               ; preds = %85
  %93 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !508
  %94 = tail call zeroext i8 %93(ptr noundef nonnull %74) #22
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %127, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.tree_decl_common, ptr %74, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !197
  %99 = icmp eq ptr %98, null
  br i1 %99, label %127, label %100

100:                                              ; preds = %96
  %101 = load i64, ptr %98, align 8
  %102 = and i64 %101, 65535
  %103 = icmp eq i64 %102, 23
  br i1 %103, label %104, label %127

104:                                              ; preds = %100
  %105 = load ptr, ptr %82, align 8, !tbaa !197
  %106 = getelementptr inbounds %struct.tree_string, ptr %105, i64 0, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !197
  %108 = icmp slt i32 %107, 1
  br i1 %108, label %127, label %109

109:                                              ; preds = %104
  %110 = zext nneg i32 %107 to i64
  %111 = tail call i32 @compare_tree_int(ptr noundef nonnull %98, i64 noundef %110) #22
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr @sizetype_tab, align 16, !tbaa !186
  %115 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %114, ptr noundef %75) #22
  %116 = load ptr, ptr %97, align 8, !tbaa !197
  %117 = tail call i32 @compare_tree_int(ptr noundef %116, i64 noundef %110) #22
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = tail call i32 @host_integerp(ptr noundef %115, i32 noundef 1) #22
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %119
  %123 = tail call i32 @compare_tree_int(ptr noundef %115, i64 noundef %110) #22
  %124 = icmp sgt i32 %123, -1
  br i1 %124, label %127, label %125

125:                                              ; preds = %122, %113
  store ptr %115, ptr %1, align 8, !tbaa !186
  %126 = load ptr, ptr %82, align 8, !tbaa !197
  br label %127

127:                                              ; preds = %73, %16, %125, %85, %81, %92, %109, %104, %100, %96, %122, %119, %2, %6, %31, %27, %69, %78, %11
  %128 = phi ptr [ %13, %11 ], [ %74, %78 ], [ null, %69 ], [ null, %27 ], [ null, %31 ], [ null, %6 ], [ null, %2 ], [ %126, %125 ], [ null, %85 ], [ null, %81 ], [ null, %92 ], [ null, %109 ], [ null, %104 ], [ null, %100 ], [ null, %96 ], [ null, %122 ], [ null, %119 ], [ null, %16 ], [ null, %73 ]
  ret ptr %128
}

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @try_casesi(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4, ptr nocapture noundef readnone %5, ptr nocapture noundef readnone %6) local_unnamed_addr #17 !prof !594 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @try_tablejump(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #9 !prof !594 {
  %7 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %1) #22
  %8 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %2) #22
  %9 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %0, ptr noundef %7, ptr noundef %8) #22
  %10 = tail call ptr @expand_expr_real(ptr noundef %9, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  tail call void @do_pending_stack_adjust() #22
  %11 = load i64, ptr %0, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 14
  br i1 %13, label %14, label %16, !prof !595

14:                                               ; preds = %6
  %15 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #22
  br label %21

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  br label %21

21:                                               ; preds = %16, %14
  %22 = phi i32 [ %15, %14 ], [ %20, %16 ]
  %23 = load i64, ptr %0, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 14
  br i1 %25, label %26, label %28, !prof !595

26:                                               ; preds = %21
  %27 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #22
  br label %33

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  br label %33

33:                                               ; preds = %28, %26
  %34 = phi i32 [ %27, %26 ], [ %32, %28 ]
  %35 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !197
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 14
  br i1 %39, label %40, label %42, !prof !595

40:                                               ; preds = %33
  %41 = tail call i32 @vector_type_mode(ptr noundef nonnull %36) #22
  br label %47

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  br label %47

47:                                               ; preds = %42, %40
  %48 = phi i32 [ %41, %40 ], [ %46, %42 ]
  %49 = tail call ptr @expand_expr_real(ptr noundef %3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %50 = load ptr, ptr %35, align 8, !tbaa !197
  %51 = load i64, ptr %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = lshr i32 %52, 21
  %54 = and i32 %53, 1
  %55 = tail call ptr @convert_modes(i32 noundef %34, i32 noundef %48, ptr noundef %49, i32 noundef %54)
  %56 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !197
  %58 = load ptr, ptr @cfun, align 8, !tbaa !186
  %59 = getelementptr inbounds %struct.function, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !596
  %61 = getelementptr inbounds %struct.control_flow_graph, ptr %60, i64 0, i32 10
  %62 = load i32, ptr %61, align 4, !tbaa !598
  %63 = sext i32 %62 to i64
  %64 = icmp sgt i64 %57, %63
  br i1 %64, label %65, label %67, !prof !600

65:                                               ; preds = %47
  %66 = trunc i64 %57 to i32
  store i32 %66, ptr %61, align 4, !tbaa !598
  br label %67

67:                                               ; preds = %65, %47
  %68 = icmp eq ptr %5, null
  br i1 %68, label %70, label %69, !prof !595

69:                                               ; preds = %67
  tail call void @emit_cmp_and_jump_insns(ptr noundef %10, ptr noundef %55, i32 noundef 87, ptr noundef null, i32 noundef %22, i32 noundef 1, ptr noundef nonnull %5) #22
  br label %70

70:                                               ; preds = %69, %67
  %71 = icmp eq i32 %22, 16
  br i1 %71, label %74, label %72, !prof !600

72:                                               ; preds = %70
  %73 = tail call ptr @convert_modes(i32 noundef 16, i32 noundef 0, ptr noundef %10, i32 noundef 1)
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi ptr [ %73, %72 ], [ %10, %70 ]
  %76 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !197
  %77 = zext i8 %76 to i64
  %78 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %77) #22
  %79 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef 16, ptr noundef %75, ptr noundef %78) #22
  %80 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %4) #22
  %81 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %79, ptr noundef %80) #22
  %82 = tail call ptr @memory_address_addr_space(i32 noundef 16, ptr noundef %81, i8 noundef zeroext 0) #22
  %83 = tail call ptr @gen_reg_rtx(i32 noundef 16) #22
  %84 = tail call ptr @gen_const_mem(i32 noundef 16, ptr noundef %82) #22
  tail call void @convert_move(ptr noundef %83, ptr noundef %84, i32 noundef 0)
  %85 = tail call ptr @gen_tablejump(ptr noundef %83, ptr noundef %4) #22
  %86 = tail call ptr @emit_jump_insn(ptr noundef %85) #22
  %87 = load i32, ptr @flag_pic, align 4, !tbaa !201
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91, !prof !600

89:                                               ; preds = %74
  %90 = tail call ptr @emit_barrier() #22
  br label %91

91:                                               ; preds = %74, %89
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @vector_mode_valid_p(i32 noundef %0) local_unnamed_addr #13 !prof !185 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !197
  %5 = add i8 %4, -18
  %6 = icmp ult i8 %5, -6
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 59), align 8, !tbaa !601
  %9 = tail call zeroext i8 %8(i32 noundef %0) #22
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2
  %13 = load i8, ptr %12, align 1, !tbaa !197
  %14 = zext i8 %13 to i32
  %15 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 58), align 8, !tbaa !602
  %16 = tail call zeroext i8 %15(i32 noundef %14) #22
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %7, %1, %11
  %19 = phi i32 [ %17, %11 ], [ 0, %1 ], [ 1, %7 ]
  ret i32 %19
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @build_personality_function(ptr noundef %0) local_unnamed_addr #13 !prof !185 {
  %2 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !186
  %3 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !186
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !186
  %5 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %2, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %4, ptr noundef null) #22
  %6 = tail call ptr @get_identifier(ptr noundef %0) #22
  %7 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 29, ptr noundef %6, ptr noundef %5) #22
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = or i64 %9, 33558528
  store i64 %10, ptr %8, align 8
  %11 = load i64, ptr %7, align 8
  %12 = or i64 %11, 134217728
  store i64 %12, ptr %7, align 8
  %13 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !197
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  tail call void @make_decl_rtl(ptr noundef nonnull %7) #22
  %17 = load ptr, ptr %13, align 8, !tbaa !197
  br label %18

18:                                               ; preds = %1, %16
  %19 = phi ptr [ %17, %16 ], [ %14, %1 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !197
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 67108864
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 10304, ptr noundef nonnull @.str.1) #22
  br label %26

26:                                               ; preds = %18, %25
  %27 = load ptr, ptr %13, align 8, !tbaa !197
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  tail call void @make_decl_rtl(ptr noundef nonnull %7) #22
  %30 = load ptr, ptr %13, align 8, !tbaa !197
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi ptr [ %30, %29 ], [ %27, %26 ]
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !197
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %35, align 8, !tbaa !197
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @get_personality_function(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !603 {
  %2 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !197
  %6 = tail call i32 @function_needs_eh_personality(ptr noundef %5) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %31, label %8, !prof !604

8:                                                ; preds = %1
  %9 = icmp eq ptr %3, null
  %10 = icmp eq i32 %6, 1
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 45), align 8, !tbaa !605
  %14 = tail call ptr %13() #22
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi ptr [ %14, %12 ], [ %3, %8 ]
  %17 = icmp ne i32 %6, 2
  %18 = icmp ne ptr %16, null
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 10327, ptr noundef nonnull @.str.1) #22
  br label %21

21:                                               ; preds = %20, %15
  %22 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %16, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !197
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  tail call void @make_decl_rtl(ptr noundef %16) #22
  %26 = load ptr, ptr %22, align 8, !tbaa !197
  br label %27

27:                                               ; preds = %21, %25
  %28 = phi ptr [ %26, %25 ], [ %23, %21 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !197
  br label %31

31:                                               ; preds = %1, %27
  %32 = phi ptr [ %30, %27 ], [ null, %1 ]
  ret ptr %32
}

declare i32 @function_needs_eh_personality(ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #3

declare void @gt_pch_nx_lang_tree_node(ptr noundef) #3

declare i32 @ix86_function_type_abi(ptr noundef) local_unnamed_addr #3

declare i32 @ix86_reg_parm_stack_space(ptr noundef) local_unnamed_addr #3

declare void @init_cumulative_args(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @function_arg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @function_arg_advance(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @emit_jump(ptr noundef) local_unnamed_addr #3

declare ptr @change_address(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @split_double(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal ptr @clear_by_pieces_1(ptr nocapture readnone %0, i64 %1, i32 %2) #18 !prof !185 {
  %4 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !186
  ret ptr %4
}

declare i32 @register_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @emit_move_change_mode(i32 noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #13 !prof !185 {
  %5 = load i32, ptr %2, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = tail call i32 @push_operand(ptr noundef nonnull %2, i32 noundef %7) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %46, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !197
  %13 = tail call ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %12) #22
  %14 = load i32, ptr %2, align 8
  %15 = and i32 %14, 134217728
  %16 = load i32, ptr %13, align 8
  %17 = and i32 %16, -134217729
  %18 = or disjoint i32 %17, %15
  store i32 %18, ptr %13, align 8
  %19 = load i32, ptr %2, align 8
  %20 = and i32 %19, 268435456
  %21 = and i32 %18, -268435457
  %22 = or disjoint i32 %21, %20
  store i32 %22, ptr %13, align 8
  %23 = load i32, ptr %2, align 8
  %24 = and i32 %23, -2147483648
  %25 = and i32 %22, 2147483647
  %26 = or disjoint i32 %25, %24
  store i32 %26, ptr %13, align 8
  %27 = load i32, ptr %2, align 8
  %28 = and i32 %27, 33554432
  %29 = and i32 %26, -33554433
  %30 = or disjoint i32 %29, %28
  store i32 %30, ptr %13, align 8
  %31 = load i32, ptr %2, align 8
  %32 = and i32 %31, 67108864
  %33 = and i32 %30, -67108865
  %34 = or disjoint i32 %33, %32
  store i32 %34, ptr %13, align 8
  %35 = load i32, ptr %2, align 8
  %36 = and i32 %35, 16777216
  %37 = and i32 %34, -16777217
  %38 = or disjoint i32 %37, %36
  store i32 %38, ptr %13, align 8
  %39 = load i32, ptr %2, align 8
  %40 = and i32 %39, 1073741824
  %41 = and i32 %38, -1073741825
  %42 = or disjoint i32 %41, %40
  store i32 %42, ptr %13, align 8
  %43 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !197
  %45 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %44, ptr %45, align 8, !tbaa !197
  br label %63

46:                                               ; preds = %4
  %47 = load i32, ptr %2, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 43
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, ptr @reload_in_progress, align 4, !tbaa !201
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = tail call ptr @adjust_address_1(ptr noundef nonnull %2, i32 noundef %0, i64 noundef 0, i32 noundef 0, i32 noundef 1) #22
  tail call void @copy_replacements(ptr noundef nonnull %2, ptr noundef %54) #22
  br label %63

55:                                               ; preds = %50
  %56 = tail call ptr @adjust_address_1(ptr noundef nonnull %2, i32 noundef %0, i64 noundef 0, i32 noundef 1, i32 noundef 1) #22
  br label %63

57:                                               ; preds = %46
  %58 = icmp eq i8 %3, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %57
  %60 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %2, i32 noundef %1, i32 noundef 0) #22
  br label %63

61:                                               ; preds = %57
  %62 = tail call ptr @simplify_subreg(i32 noundef %0, ptr noundef nonnull %2, i32 noundef %1, i32 noundef 0) #22
  br label %63

63:                                               ; preds = %55, %53, %61, %59, %10
  %64 = phi ptr [ %13, %10 ], [ %54, %53 ], [ %56, %55 ], [ %60, %59 ], [ %62, %61 ]
  ret ptr %64
}

declare void @copy_replacements(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @find_replacement(ptr noundef) local_unnamed_addr #3

declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @exact_real_truncate(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @get_best_mode(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @set_mem_expr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @constructor_static_from_elts_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @initializer_zerop(ptr noundef) local_unnamed_addr #3

declare ptr @initializer_constant_valid_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i64 @target_align(ptr nocapture noundef readonly %0) unnamed_addr #19 !prof !185 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi i64 [ -1, %1 ], [ %15, %7 ]
  %4 = phi ptr [ %0, %1 ], [ %14, %7 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %40 [
    i16 42, label %46
    i16 41, label %7
    i16 45, label %18
    i16 46, label %18
    i16 116, label %29
    i16 113, label %29
    i16 117, label %29
    i16 118, label %29
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !197
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !197
  %13 = zext i32 %12 to i64
  %14 = load ptr, ptr %8, align 8, !tbaa !197
  %15 = tail call i64 @llvm.umin.i64(i64 %3, i64 %13)
  br label %2

16:                                               ; preds = %46, %29, %18
  %17 = phi i64 [ %28, %18 ], [ %39, %29 ], [ %48, %46 ]
  ret i64 %17

18:                                               ; preds = %2, %2
  %19 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !197
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !197
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !197
  %26 = tail call fastcc i64 @target_align(ptr noundef %25), !range !364
  %27 = tail call i64 @llvm.umin.i64(i64 %26, i64 %23)
  %28 = tail call i64 @llvm.umin.i64(i64 %3, i64 %27)
  br label %16

29:                                               ; preds = %2, %2, %2, %2
  %30 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !197
  %32 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !197
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !197
  %37 = tail call fastcc i64 @target_align(ptr noundef %36), !range !364
  %38 = tail call i64 @llvm.umax.i64(i64 %37, i64 %34)
  %39 = tail call i64 @llvm.umin.i64(i64 %3, i64 %38)
  br label %16

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !197
  %43 = getelementptr inbounds %struct.tree_type, ptr %42, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !197
  %45 = zext i32 %44 to i64
  br label %46

46:                                               ; preds = %2, %40
  %47 = phi i64 [ %45, %40 ], [ 1, %2 ]
  %48 = tail call i64 @llvm.umin.i64(i64 %3, i64 %47)
  br label %16
}

declare ptr @save_expr(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emutls_decl(ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_with_type_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_tree_list_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_function_call_expr(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare ptr @output_constant_def(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @mostly_zeros_p(ptr noundef %0) unnamed_addr #13 !prof !185 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 51
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #22
  store i64 0, ptr %2, align 8, !tbaa !311
  store i64 0, ptr %3, align 8, !tbaa !311
  store i8 0, ptr %4, align 1, !tbaa !197
  %9 = call fastcc zeroext i8 @categorize_ctor_elements_1(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !409
  %10 = load i8, ptr %4, align 1, !tbaa !197
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !197
  %15 = tail call i64 @count_type_elements(ptr noundef %14, i8 noundef zeroext 0)
  %16 = load i64, ptr %2, align 8, !tbaa !311
  %17 = sdiv i64 %15, 4
  %18 = icmp slt i64 %16, %17
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %8, %12
  %21 = phi i32 [ %19, %12 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  br label %25

22:                                               ; preds = %1
  %23 = tail call zeroext i8 @initializer_zerop(ptr noundef nonnull %0) #22
  %24 = zext i8 %23 to i32
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i32 [ %21, %20 ], [ %24, %22 ]
  ret i32 %26
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @store_constructor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #13 !prof !185 {
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !197
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %827 [
    i16 16, label %9
    i16 17, label %9
    i16 18, label %9
    i16 15, label %202
    i16 14, label %592
  ]

9:                                                ; preds = %4, %4, %4
  %10 = icmp eq i64 %3, 0
  %11 = icmp ne i32 %2, 0
  %12 = or i1 %11, %10
  br i1 %12, label %74, label %13

13:                                               ; preds = %9
  %14 = trunc i64 %7 to i32
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -17
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !197
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = tail call ptr @expr_size(ptr noundef %0) #22
  %24 = tail call ptr @clear_storage_hints(ptr noundef %1, ptr noundef %23, i32 noundef 0, i32 noundef 0, i64 noundef -1)
  br label %74

25:                                               ; preds = %13, %18
  %26 = load i32, ptr %1, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load i64, ptr %0, align 8
  %31 = and i64 %30, 67108864
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = lshr i32 %26, 16
  %35 = and i32 %34, 255
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !197
  %39 = icmp ult i8 %38, 5
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %36
  %42 = load ptr, ptr %41, align 8, !tbaa !186
  %43 = tail call ptr @emit_move_insn(ptr noundef nonnull %1, ptr noundef %42)
  br label %74

44:                                               ; preds = %33, %29, %25
  %45 = icmp sgt i64 %3, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !197
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load i32, ptr %48, align 8, !tbaa !435
  br label %52

52:                                               ; preds = %46, %50
  %53 = phi i32 [ %51, %50 ], [ 0, %46 ]
  %54 = tail call i32 @fields_length(ptr noundef nonnull %6) #22
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = tail call fastcc i32 @mostly_zeros_p(ptr noundef %0), !range !587
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %56, %52
  %60 = load i32, ptr %1, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 37
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = lshr i32 %60, 16
  %65 = and i32 %64, 255
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !197
  %69 = zext i8 %68 to i64
  %70 = icmp eq i64 %69, %3
  br i1 %70, label %71, label %74

71:                                               ; preds = %63, %59
  %72 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %3) #22
  %73 = tail call ptr @clear_storage_hints(ptr noundef nonnull %1, ptr noundef %72, i32 noundef 0, i32 noundef 0, i64 noundef -1)
  br label %74

74:                                               ; preds = %56, %9, %22, %44, %63, %71, %40
  %75 = phi i1 [ true, %40 ], [ true, %71 ], [ false, %63 ], [ false, %44 ], [ true, %22 ], [ true, %9 ], [ false, %56 ]
  %76 = phi i32 [ 1, %40 ], [ 1, %71 ], [ 0, %63 ], [ 0, %44 ], [ 1, %22 ], [ 1, %9 ], [ 0, %56 ]
  %77 = load i32, ptr %1, align 8
  %78 = and i32 %77, 65535
  %79 = icmp ne i32 %78, 37
  %80 = or i1 %75, %79
  br i1 %80, label %83, label %81

81:                                               ; preds = %74
  %82 = tail call ptr @emit_clobber(ptr noundef nonnull %1) #22
  br label %83

83:                                               ; preds = %81, %74
  %84 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %85 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %86

86:                                               ; preds = %200, %83
  %87 = phi ptr [ undef, %83 ], [ %104, %200 ]
  %88 = phi ptr [ undef, %83 ], [ %105, %200 ]
  %89 = phi i64 [ 0, %83 ], [ %201, %200 ]
  %90 = load ptr, ptr %84, align 8, !tbaa !197
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = load i32, ptr %90, align 8, !tbaa !435
  br label %94

94:                                               ; preds = %86, %92
  %95 = phi i32 [ %93, %92 ], [ 0, %86 ]
  %96 = zext i32 %95 to i64
  %97 = icmp ult i64 %89, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %90, i64 0, i32 2, i64 %89
  %100 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %90, i64 0, i32 2, i64 %89, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !437
  %102 = load ptr, ptr %99, align 8, !tbaa !439
  br label %103

103:                                              ; preds = %94, %98
  %104 = phi ptr [ %87, %94 ], [ %101, %98 ]
  %105 = phi ptr [ %88, %94 ], [ %102, %98 ]
  br i1 %97, label %106, label %828

106:                                              ; preds = %103
  %107 = icmp eq ptr %105, null
  br i1 %107, label %200, label %108

108:                                              ; preds = %106
  br i1 %75, label %109, label %112

109:                                              ; preds = %108
  %110 = tail call zeroext i8 @initializer_zerop(ptr noundef %104) #22
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %200

112:                                              ; preds = %109, %108
  %113 = getelementptr inbounds %struct.tree_decl_common, ptr %105, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !197
  %115 = tail call i32 @host_integerp(ptr noundef %114, i32 noundef 1) #22
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load ptr, ptr %113, align 8, !tbaa !197
  %119 = tail call i64 @tree_low_cst(ptr noundef %118, i32 noundef 1) #22
  br label %120

120:                                              ; preds = %112, %117
  %121 = phi i64 [ %119, %117 ], [ -1, %112 ]
  %122 = getelementptr inbounds %struct.tree_decl_common, ptr %105, i64 0, i32 2
  %123 = load i64, ptr %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = and i32 %124, 255
  %126 = and i64 %123, 33554432
  %127 = icmp eq i64 %126, 0
  %128 = select i1 %127, i32 %125, i32 0
  %129 = getelementptr inbounds %struct.tree_field_decl, ptr %105, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !197
  %131 = tail call i32 @host_integerp(ptr noundef %130, i32 noundef 0) #22
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %120
  %134 = tail call ptr @bit_position(ptr noundef nonnull %105) #22
  %135 = tail call i32 @host_integerp(ptr noundef %134, i32 noundef 0) #22
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %133
  %138 = tail call i64 @int_bit_position(ptr noundef nonnull %105) #22
  br label %143

139:                                              ; preds = %133, %120
  %140 = getelementptr inbounds %struct.tree_field_decl, ptr %105, i64 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !197
  %142 = tail call i64 @tree_low_cst(ptr noundef %141, i32 noundef 0) #22
  br label %143

143:                                              ; preds = %139, %137
  %144 = phi ptr [ null, %137 ], [ %130, %139 ]
  %145 = phi i64 [ %138, %137 ], [ %142, %139 ]
  %146 = icmp eq ptr %144, null
  br i1 %146, label %182, label %147

147:                                              ; preds = %143
  %148 = load i64, ptr %144, align 8
  %149 = and i64 %148, 131072
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load ptr, ptr %5, align 8, !tbaa !197
  %153 = tail call ptr @make_tree(ptr noundef %152, ptr noundef nonnull %1) #22
  %154 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %144, ptr noundef %153) #22
  br label %155

155:                                              ; preds = %147, %151
  %156 = phi ptr [ %154, %151 ], [ %144, %147 ]
  %157 = tail call ptr @expand_expr_real(ptr noundef %156, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %158 = load i32, ptr %1, align 8
  %159 = and i32 %158, 65535
  %160 = icmp eq i32 %159, 43
  br i1 %160, label %162, label %161

161:                                              ; preds = %155
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5300, ptr noundef nonnull @.str.1) #22
  br label %162

162:                                              ; preds = %155, %161
  %163 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !282
  %164 = load ptr, ptr %85, align 8, !tbaa !197
  %165 = icmp eq ptr %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.mem_attrs, ptr %164, i64 0, i32 5
  %168 = load i8, ptr %167, align 8, !tbaa !249
  br label %169

169:                                              ; preds = %162, %166
  %170 = phi i8 [ %168, %166 ], [ 0, %162 ]
  %171 = tail call i32 %163(i8 noundef zeroext %170) #22
  %172 = load i32, ptr %157, align 8
  %173 = lshr i32 %172, 16
  %174 = and i32 %173, 255
  %175 = icmp eq i32 %174, %171
  br i1 %175, label %178, label %176

176:                                              ; preds = %169
  %177 = tail call ptr @convert_modes(i32 noundef %171, i32 noundef 0, ptr noundef nonnull %157, i32 noundef 0)
  br label %178

178:                                              ; preds = %176, %169
  %179 = phi ptr [ %177, %176 ], [ %157, %169 ]
  %180 = tail call i64 @highest_pow2_factor(ptr noundef %156)
  %181 = tail call ptr @offset_address(ptr noundef nonnull %1, ptr noundef %179, i64 noundef %180) #22
  br label %182

182:                                              ; preds = %178, %143
  %183 = phi ptr [ %181, %178 ], [ %1, %143 ]
  %184 = load i32, ptr %183, align 8
  %185 = and i32 %184, 16842751
  %186 = icmp eq i32 %185, 43
  br i1 %186, label %187, label %195

187:                                              ; preds = %182
  %188 = load i64, ptr %122, align 8
  %189 = and i64 %188, 67108864
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %187
  %192 = tail call ptr @copy_rtx(ptr noundef nonnull %183) #22
  %193 = load i32, ptr %192, align 8
  %194 = or i32 %193, 16777216
  store i32 %194, ptr %192, align 8
  br label %195

195:                                              ; preds = %191, %187, %182
  %196 = phi ptr [ %192, %191 ], [ %183, %187 ], [ %183, %182 ]
  %197 = getelementptr inbounds %struct.tree_common, ptr %105, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !197
  %199 = tail call i32 @get_alias_set(ptr noundef %198) #22
  tail call fastcc void @store_constructor_field(ptr noundef nonnull %196, i64 noundef %121, i64 noundef %145, i32 noundef %128, ptr noundef %104, ptr noundef nonnull %6, i32 noundef %76, i32 noundef %199)
  br label %200

200:                                              ; preds = %109, %106, %195
  %201 = add nuw nsw i64 %89, 1
  br label %86, !llvm.loop !606

202:                                              ; preds = %4
  %203 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !197
  %205 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !197
  %207 = getelementptr inbounds %struct.tree_type, ptr %206, i64 0, i32 13
  %208 = load ptr, ptr %207, align 8, !tbaa !197
  %209 = icmp eq ptr %208, null
  br i1 %209, label %221, label %210

210:                                              ; preds = %202
  %211 = getelementptr inbounds %struct.tree_type, ptr %206, i64 0, i32 14
  %212 = load ptr, ptr %211, align 8, !tbaa !197
  %213 = icmp eq ptr %212, null
  br i1 %213, label %221, label %214

214:                                              ; preds = %210
  %215 = tail call i32 @host_integerp(ptr noundef nonnull %208, i32 noundef 0) #22
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %214
  %218 = load ptr, ptr %211, align 8, !tbaa !197
  %219 = tail call i32 @host_integerp(ptr noundef %218, i32 noundef 0) #22
  %220 = icmp ne i32 %219, 0
  br label %221

221:                                              ; preds = %217, %214, %210, %202
  %222 = phi i1 [ false, %214 ], [ false, %210 ], [ false, %202 ], [ %220, %217 ]
  br i1 %222, label %223, label %229

223:                                              ; preds = %221
  %224 = load ptr, ptr %207, align 8, !tbaa !197
  %225 = tail call i64 @tree_low_cst(ptr noundef %224, i32 noundef 0) #22
  %226 = getelementptr inbounds %struct.tree_type, ptr %206, i64 0, i32 14
  %227 = load ptr, ptr %226, align 8, !tbaa !197
  %228 = tail call i64 @tree_low_cst(ptr noundef %227, i32 noundef 0) #22
  br label %229

229:                                              ; preds = %223, %221
  %230 = phi i64 [ %228, %223 ], [ 0, %221 ]
  %231 = phi i64 [ %225, %223 ], [ 0, %221 ]
  %232 = icmp eq i32 %2, 0
  br i1 %232, label %233, label %326

233:                                              ; preds = %229
  %234 = load i32, ptr %1, align 8
  %235 = and i32 %234, 65535
  %236 = icmp eq i32 %235, 37
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = load i64, ptr %0, align 8
  %239 = and i64 %238, 67108864
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %326

241:                                              ; preds = %237, %233
  %242 = xor i1 %222, true
  %243 = zext i1 %242 to i32
  %244 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  br label %245

245:                                              ; preds = %305, %241
  %246 = phi i64 [ undef, %241 ], [ %306, %305 ]
  %247 = phi i64 [ 0, %241 ], [ %307, %305 ]
  %248 = phi i64 [ 0, %241 ], [ %308, %305 ]
  %249 = phi ptr [ undef, %241 ], [ %267, %305 ]
  %250 = phi ptr [ undef, %241 ], [ %268, %305 ]
  %251 = phi i64 [ 0, %241 ], [ %312, %305 ]
  %252 = phi i32 [ %243, %241 ], [ %309, %305 ]
  %253 = load ptr, ptr %244, align 8, !tbaa !197
  %254 = icmp eq ptr %253, null
  br i1 %254, label %257, label %255

255:                                              ; preds = %245
  %256 = load i32, ptr %253, align 8, !tbaa !435
  br label %257

257:                                              ; preds = %245, %255
  %258 = phi i32 [ %256, %255 ], [ 0, %245 ]
  %259 = zext i32 %258 to i64
  %260 = icmp ult i64 %251, %259
  br i1 %260, label %261, label %266

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %253, i64 0, i32 2, i64 %251
  %263 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %253, i64 0, i32 2, i64 %251, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !437
  %265 = load ptr, ptr %262, align 8, !tbaa !439
  br label %266

266:                                              ; preds = %257, %261
  %267 = phi ptr [ %249, %257 ], [ %264, %261 ]
  %268 = phi ptr [ %250, %257 ], [ %265, %261 ]
  br i1 %260, label %269, label %313

269:                                              ; preds = %266
  %270 = icmp eq i32 %252, 0
  br i1 %270, label %271, label %305

271:                                              ; preds = %269
  %272 = icmp eq ptr %268, null
  br i1 %272, label %297, label %273

273:                                              ; preds = %271
  %274 = load i64, ptr %268, align 8
  %275 = and i64 %274, 65535
  %276 = icmp eq i64 %275, 111
  br i1 %276, label %277, label %297

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.tree_exp, ptr %268, i64 0, i32 3
  %279 = load ptr, ptr %278, align 8, !tbaa !197
  %280 = getelementptr inbounds %struct.tree_exp, ptr %268, i64 1
  %281 = load ptr, ptr %280, align 8, !tbaa !197
  %282 = tail call i32 @host_integerp(ptr noundef %279, i32 noundef 1) #22
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %292, label %284

284:                                              ; preds = %277
  %285 = tail call i32 @host_integerp(ptr noundef %281, i32 noundef 1) #22
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %292, label %287

287:                                              ; preds = %284
  %288 = tail call i64 @tree_low_cst(ptr noundef %281, i32 noundef 1) #22
  %289 = tail call i64 @tree_low_cst(ptr noundef %279, i32 noundef 1) #22
  %290 = add i64 %288, 1
  %291 = sub i64 %290, %289
  br label %292

292:                                              ; preds = %277, %284, %287
  %293 = phi i64 [ %291, %287 ], [ %246, %284 ], [ %246, %277 ]
  %294 = phi i32 [ 0, %287 ], [ 1, %284 ], [ 1, %277 ]
  %295 = phi i1 [ true, %287 ], [ false, %284 ], [ false, %277 ]
  %296 = phi i32 [ 0, %287 ], [ 6, %284 ], [ 6, %277 ]
  br i1 %295, label %297, label %305

297:                                              ; preds = %271, %273, %292
  %298 = phi i64 [ %293, %292 ], [ 1, %273 ], [ 1, %271 ]
  %299 = phi i32 [ %294, %292 ], [ 0, %273 ], [ 0, %271 ]
  %300 = add nsw i64 %298, %248
  %301 = tail call fastcc i32 @mostly_zeros_p(ptr noundef %267), !range !587
  %302 = icmp eq i32 %301, 0
  %303 = select i1 %302, i64 0, i64 %298
  %304 = add nsw i64 %303, %247
  br label %305

305:                                              ; preds = %269, %292, %297
  %306 = phi i64 [ %298, %297 ], [ %293, %292 ], [ %246, %269 ]
  %307 = phi i64 [ %304, %297 ], [ %247, %292 ], [ %247, %269 ]
  %308 = phi i64 [ %300, %297 ], [ %248, %292 ], [ %248, %269 ]
  %309 = phi i32 [ %299, %297 ], [ %294, %292 ], [ 1, %269 ]
  %310 = phi i32 [ 0, %297 ], [ %296, %292 ], [ 6, %269 ]
  %311 = icmp eq i32 %310, 0
  %312 = add nuw nsw i64 %251, 1
  br i1 %311, label %245, label %313, !llvm.loop !607

313:                                              ; preds = %305, %266
  %314 = phi i64 [ %307, %305 ], [ %247, %266 ]
  %315 = phi i64 [ %308, %305 ], [ %248, %266 ]
  %316 = phi i32 [ %309, %305 ], [ %252, %266 ]
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %326

318:                                              ; preds = %313
  %319 = sub nsw i64 %230, %231
  %320 = icmp sgt i64 %315, %319
  br i1 %320, label %321, label %325

321:                                              ; preds = %318
  %322 = shl nsw i64 %314, 2
  %323 = mul nsw i64 %315, 3
  %324 = icmp slt i64 %322, %323
  br i1 %324, label %326, label %325

325:                                              ; preds = %321, %318
  br label %326

326:                                              ; preds = %313, %321, %325, %237, %229
  %327 = phi i1 [ false, %229 ], [ true, %237 ], [ true, %313 ], [ true, %325 ], [ false, %321 ]
  %328 = icmp sgt i64 %3, 0
  %329 = and i1 %328, %327
  br i1 %329, label %330, label %344

330:                                              ; preds = %326
  %331 = load i32, ptr %1, align 8
  %332 = and i32 %331, 65535
  %333 = icmp eq i32 %332, 37
  br i1 %333, label %334, label %341

334:                                              ; preds = %330
  %335 = lshr i32 %331, 16
  %336 = and i32 %335, 255
  %337 = zext nneg i32 %336 to i64
  %338 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %337
  %339 = load ptr, ptr %338, align 8, !tbaa !186
  %340 = tail call ptr @emit_move_insn(ptr noundef nonnull %1, ptr noundef %339)
  br label %344

341:                                              ; preds = %330
  %342 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %3) #22
  %343 = tail call ptr @clear_storage_hints(ptr noundef %1, ptr noundef %342, i32 noundef 0, i32 noundef 0, i64 noundef -1)
  br label %344

344:                                              ; preds = %334, %341, %326
  %345 = phi i32 [ %2, %326 ], [ 1, %341 ], [ 1, %334 ]
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %344
  %348 = load i32, ptr %1, align 8
  %349 = and i32 %348, 65535
  %350 = icmp eq i32 %349, 37
  br i1 %350, label %351, label %353

351:                                              ; preds = %347
  %352 = tail call ptr @emit_clobber(ptr noundef nonnull %1) #22
  br label %353

353:                                              ; preds = %351, %347, %344
  %354 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %355 = getelementptr inbounds %struct.tree_type, ptr %204, i64 0, i32 6
  %356 = getelementptr inbounds %struct.tree_type, ptr %204, i64 0, i32 2
  %357 = getelementptr inbounds %struct.tree_type, ptr %204, i64 0, i32 3
  %358 = getelementptr inbounds %struct.tree_type, ptr %204, i64 0, i32 2
  %359 = icmp eq i64 %231, 0
  %360 = getelementptr inbounds %struct.tree_type, ptr %204, i64 0, i32 3
  br label %361

361:                                              ; preds = %588, %353
  %362 = phi i64 [ 0, %353 ], [ %591, %588 ]
  %363 = phi ptr [ undef, %353 ], [ %589, %588 ]
  %364 = phi ptr [ undef, %353 ], [ %381, %588 ]
  %365 = phi ptr [ %1, %353 ], [ %590, %588 ]
  %366 = load ptr, ptr %354, align 8, !tbaa !197
  %367 = icmp eq ptr %366, null
  br i1 %367, label %370, label %368

368:                                              ; preds = %361
  %369 = load i32, ptr %366, align 8, !tbaa !435
  br label %370

370:                                              ; preds = %361, %368
  %371 = phi i32 [ %369, %368 ], [ 0, %361 ]
  %372 = zext i32 %371 to i64
  %373 = icmp ult i64 %362, %372
  br i1 %373, label %374, label %379

374:                                              ; preds = %370
  %375 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %366, i64 0, i32 2, i64 %362
  %376 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %366, i64 0, i32 2, i64 %362, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !437
  %378 = load ptr, ptr %375, align 8, !tbaa !439
  br label %379

379:                                              ; preds = %370, %374
  %380 = phi ptr [ %363, %370 ], [ %378, %374 ]
  %381 = phi ptr [ %364, %370 ], [ %377, %374 ]
  br i1 %373, label %382, label %828

382:                                              ; preds = %379
  br i1 %346, label %386, label %383

383:                                              ; preds = %382
  %384 = tail call zeroext i8 @initializer_zerop(ptr noundef %381) #22
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %386, label %588

386:                                              ; preds = %383, %382
  %387 = load i64, ptr %204, align 8
  %388 = and i64 %387, 65535
  %389 = icmp eq i64 %388, 14
  br i1 %389, label %390, label %392

390:                                              ; preds = %386
  %391 = tail call i32 @vector_type_mode(ptr noundef nonnull %204) #22
  br label %396

392:                                              ; preds = %386
  %393 = load i32, ptr %355, align 4
  %394 = lshr i32 %393, 16
  %395 = and i32 %394, 255
  br label %396

396:                                              ; preds = %392, %390
  %397 = phi i32 [ %391, %390 ], [ %395, %392 ]
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %399, label %406

399:                                              ; preds = %396
  %400 = load ptr, ptr %356, align 8, !tbaa !197
  %401 = tail call i32 @host_integerp(ptr noundef %400, i32 noundef 1) #22
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %412, label %403

403:                                              ; preds = %399
  %404 = load ptr, ptr %356, align 8, !tbaa !197
  %405 = tail call i64 @tree_low_cst(ptr noundef %404, i32 noundef 1) #22
  br label %412

406:                                              ; preds = %396
  %407 = zext i32 %397 to i64
  %408 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %407
  %409 = load i8, ptr %408, align 1, !tbaa !197
  %410 = zext i8 %409 to i64
  %411 = shl nuw nsw i64 %410, 3
  br label %412

412:                                              ; preds = %403, %399, %406
  %413 = phi i64 [ %411, %406 ], [ %405, %403 ], [ -1, %399 ]
  %414 = icmp eq ptr %380, null
  br i1 %414, label %533, label %415

415:                                              ; preds = %412
  %416 = load i64, ptr %380, align 8
  %417 = and i64 %416, 65535
  %418 = icmp eq i64 %417, 111
  br i1 %418, label %419, label %530

419:                                              ; preds = %415
  %420 = getelementptr inbounds %struct.tree_exp, ptr %380, i64 0, i32 3
  %421 = load ptr, ptr %420, align 8, !tbaa !197
  %422 = getelementptr inbounds %struct.tree_exp, ptr %380, i64 1
  %423 = load ptr, ptr %422, align 8, !tbaa !197
  br i1 %222, label %424, label %483

424:                                              ; preds = %419
  %425 = tail call i32 @host_integerp(ptr noundef %421, i32 noundef 0) #22
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %483, label %427

427:                                              ; preds = %424
  %428 = tail call i32 @host_integerp(ptr noundef %423, i32 noundef 0) #22
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %483, label %430

430:                                              ; preds = %427
  %431 = tail call i64 @tree_low_cst(ptr noundef %421, i32 noundef 0) #22
  %432 = tail call i64 @tree_low_cst(ptr noundef %423, i32 noundef 0) #22
  %433 = sub nsw i64 %432, %431
  %434 = add nsw i64 %433, 1
  %435 = load i32, ptr %365, align 8
  %436 = and i32 %435, 65535
  %437 = icmp ne i32 %436, 43
  %438 = icmp slt i64 %433, 2
  %439 = select i1 %437, i1 true, i1 %438
  br i1 %439, label %450, label %440

440:                                              ; preds = %430
  %441 = getelementptr inbounds %struct.tree_type, ptr %204, i64 0, i32 2
  %442 = load ptr, ptr %441, align 8, !tbaa !197
  %443 = tail call i32 @host_integerp(ptr noundef %442, i32 noundef 1) #22
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %483, label %445

445:                                              ; preds = %440
  %446 = load ptr, ptr %441, align 8, !tbaa !197
  %447 = tail call i64 @tree_low_cst(ptr noundef %446, i32 noundef 1) #22
  %448 = mul nsw i64 %447, %434
  %449 = icmp slt i64 %448, 321
  br i1 %449, label %450, label %483

450:                                              ; preds = %430, %445
  %451 = sub nsw i64 %432, %231
  %452 = icmp sgt i64 %431, %432
  br i1 %452, label %588, label %453

453:                                              ; preds = %450
  %454 = getelementptr inbounds %struct.tree_type, ptr %204, i64 0, i32 2
  %455 = sub nsw i64 %431, %231
  br label %456

456:                                              ; preds = %453, %478
  %457 = phi ptr [ %479, %478 ], [ %365, %453 ]
  %458 = phi i64 [ %481, %478 ], [ %455, %453 ]
  %459 = load ptr, ptr %454, align 8, !tbaa !197
  %460 = tail call i64 @tree_low_cst(ptr noundef %459, i32 noundef 0) #22
  %461 = mul nsw i64 %460, %458
  %462 = load i32, ptr %457, align 8
  %463 = and i32 %462, 16842751
  %464 = icmp eq i32 %463, 43
  br i1 %464, label %465, label %478

465:                                              ; preds = %456
  %466 = load i64, ptr %6, align 8
  %467 = and i64 %466, 65535
  %468 = icmp eq i64 %467, 15
  br i1 %468, label %469, label %478

469:                                              ; preds = %465
  %470 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 6
  %471 = load i32, ptr %470, align 4
  %472 = and i32 %471, 4096
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %478, label %474

474:                                              ; preds = %469
  %475 = tail call ptr @copy_rtx(ptr noundef nonnull %457) #22
  %476 = load i32, ptr %475, align 8
  %477 = or i32 %476, 16777216
  store i32 %477, ptr %475, align 8
  br label %478

478:                                              ; preds = %474, %469, %465, %456
  %479 = phi ptr [ %475, %474 ], [ %457, %469 ], [ %457, %465 ], [ %457, %456 ]
  %480 = tail call i32 @get_alias_set(ptr noundef nonnull %204) #22
  tail call fastcc void @store_constructor_field(ptr noundef nonnull %479, i64 noundef %413, i64 noundef %461, i32 noundef %397, ptr noundef %381, ptr noundef nonnull %6, i32 noundef %345, i32 noundef %480)
  %481 = add nsw i64 %458, 1
  %482 = icmp slt i64 %458, %451
  br i1 %482, label %456, label %588, !llvm.loop !608

483:                                              ; preds = %440, %445, %427, %424, %419
  %484 = tail call ptr @gen_label_rtx() #22
  %485 = tail call ptr @gen_label_rtx() #22
  %486 = tail call ptr @expand_expr_real(ptr noundef %423, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %487 = load i64, ptr %0, align 8
  %488 = and i64 %487, 65535
  %489 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %488
  %490 = load i32, ptr %489, align 4, !tbaa !201
  %491 = add i32 %490, -4
  %492 = icmp ult i32 %491, 7
  br i1 %492, label %493, label %495

493:                                              ; preds = %483
  %494 = load i32, ptr %354, align 8, !tbaa !197
  br label %495

495:                                              ; preds = %483, %493
  %496 = phi i32 [ %494, %493 ], [ 0, %483 ]
  %497 = tail call ptr @build_decl_stat(i32 noundef %496, i32 noundef 32, ptr noundef null, ptr noundef %206) #22
  %498 = tail call i32 @promote_decl_mode(ptr noundef %497, ptr noundef null) #22
  %499 = tail call ptr @gen_reg_rtx(i32 noundef %498) #22
  tail call void @set_decl_rtl(ptr noundef %497, ptr noundef %499) #22
  %500 = tail call ptr @store_expr(ptr noundef %421, ptr noundef %499, i32 noundef 0, i8 noundef zeroext 0)
  tail call void @do_pending_stack_adjust() #22
  %501 = tail call ptr @emit_label(ptr noundef %484) #22
  %502 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !186
  %503 = getelementptr inbounds %struct.tree_common, ptr %497, i64 0, i32 2
  %504 = load ptr, ptr %503, align 8, !tbaa !197
  %505 = load ptr, ptr %207, align 8, !tbaa !197
  %506 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %504, ptr noundef %497, ptr noundef %505) #22
  %507 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %502, ptr noundef %506) #22
  %508 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !186
  %509 = load ptr, ptr %357, align 8, !tbaa !197
  %510 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %508, ptr noundef %509) #22
  %511 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %507, ptr noundef %510) #22
  %512 = tail call ptr @expand_expr_real(ptr noundef %511, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %513 = tail call i64 @highest_pow2_factor(ptr noundef %511)
  %514 = tail call ptr @offset_address(ptr noundef %365, ptr noundef %512, i64 noundef %513) #22
  %515 = tail call ptr @adjust_address_1(ptr noundef %514, i32 noundef %397, i64 noundef 0, i32 noundef 1, i32 noundef 1) #22
  %516 = load i64, ptr %381, align 8
  %517 = and i64 %516, 65535
  %518 = icmp eq i64 %517, 51
  br i1 %518, label %519, label %521

519:                                              ; preds = %495
  %520 = sdiv i64 %413, 8
  tail call fastcc void @store_constructor(ptr noundef nonnull %381, ptr noundef %515, i32 noundef %345, i64 noundef %520)
  br label %523

521:                                              ; preds = %495
  %522 = tail call ptr @store_expr(ptr noundef nonnull %381, ptr noundef %515, i32 noundef 0, i8 noundef zeroext 0)
  br label %523

523:                                              ; preds = %521, %519
  %524 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !186
  %525 = tail call ptr @build2_stat(i32 noundef 97, ptr noundef %524, ptr noundef %497, ptr noundef %423) #22
  tail call void @jumpif(ptr noundef %525, ptr noundef %485, i32 noundef -1) #22
  %526 = load ptr, ptr %503, align 8, !tbaa !197
  %527 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !186
  %528 = tail call ptr @build2_stat(i32 noundef 63, ptr noundef %526, ptr noundef %497, ptr noundef %527) #22
  tail call void @expand_assignment(ptr noundef %497, ptr noundef %528, i8 noundef zeroext 0)
  tail call void @emit_jump(ptr noundef %484) #22
  %529 = tail call ptr @emit_label(ptr noundef %485) #22
  br label %588

530:                                              ; preds = %415
  %531 = tail call i32 @host_integerp(ptr noundef nonnull %380, i32 noundef 0) #22
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %537, label %533

533:                                              ; preds = %412, %530
  %534 = load ptr, ptr %358, align 8, !tbaa !197
  %535 = tail call i32 @host_integerp(ptr noundef %534, i32 noundef 1) #22
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %560

537:                                              ; preds = %530, %533
  br i1 %414, label %538, label %540

538:                                              ; preds = %537
  %539 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 1) #22
  br label %540

540:                                              ; preds = %538, %537
  %541 = phi ptr [ %539, %538 ], [ %380, %537 ]
  br i1 %359, label %549, label %542

542:                                              ; preds = %540
  %543 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !186
  %544 = getelementptr inbounds %struct.tree_common, ptr %541, i64 0, i32 2
  %545 = load ptr, ptr %544, align 8, !tbaa !197
  %546 = load ptr, ptr %207, align 8, !tbaa !197
  %547 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %545, ptr noundef %541, ptr noundef %546) #22
  %548 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %543, ptr noundef %547) #22
  br label %549

549:                                              ; preds = %542, %540
  %550 = phi ptr [ %548, %542 ], [ %541, %540 ]
  %551 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !186
  %552 = load ptr, ptr %360, align 8, !tbaa !197
  %553 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %551, ptr noundef %552) #22
  %554 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %550, ptr noundef %553) #22
  %555 = tail call ptr @expand_expr_real(ptr noundef %554, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %556 = tail call i64 @highest_pow2_factor(ptr noundef %554)
  %557 = tail call ptr @offset_address(ptr noundef %365, ptr noundef %555, i64 noundef %556) #22
  %558 = tail call ptr @adjust_address_1(ptr noundef %557, i32 noundef %397, i64 noundef 0, i32 noundef 1, i32 noundef 1) #22
  %559 = tail call ptr @store_expr(ptr noundef %381, ptr noundef %558, i32 noundef 0, i8 noundef zeroext 0)
  br label %588

560:                                              ; preds = %533
  br i1 %414, label %564, label %561

561:                                              ; preds = %560
  %562 = tail call i64 @tree_low_cst(ptr noundef nonnull %380, i32 noundef 0) #22
  %563 = sub nsw i64 %562, %231
  br label %564

564:                                              ; preds = %560, %561
  %565 = phi i64 [ %563, %561 ], [ %362, %560 ]
  %566 = load ptr, ptr %358, align 8, !tbaa !197
  %567 = tail call i64 @tree_low_cst(ptr noundef %566, i32 noundef 1) #22
  %568 = mul i64 %567, %565
  %569 = load i32, ptr %365, align 8
  %570 = and i32 %569, 16842751
  %571 = icmp eq i32 %570, 43
  br i1 %571, label %572, label %585

572:                                              ; preds = %564
  %573 = load i64, ptr %6, align 8
  %574 = and i64 %573, 65535
  %575 = icmp eq i64 %574, 15
  br i1 %575, label %576, label %585

576:                                              ; preds = %572
  %577 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 6
  %578 = load i32, ptr %577, align 4
  %579 = and i32 %578, 4096
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %585, label %581

581:                                              ; preds = %576
  %582 = tail call ptr @copy_rtx(ptr noundef nonnull %365) #22
  %583 = load i32, ptr %582, align 8
  %584 = or i32 %583, 16777216
  store i32 %584, ptr %582, align 8
  br label %585

585:                                              ; preds = %581, %576, %572, %564
  %586 = phi ptr [ %582, %581 ], [ %365, %576 ], [ %365, %572 ], [ %365, %564 ]
  %587 = tail call i32 @get_alias_set(ptr noundef nonnull %204) #22
  tail call fastcc void @store_constructor_field(ptr noundef nonnull %586, i64 noundef %413, i64 noundef %568, i32 noundef %397, ptr noundef %381, ptr noundef nonnull %6, i32 noundef %345, i32 noundef %587)
  br label %588

588:                                              ; preds = %478, %450, %585, %549, %523, %383
  %589 = phi ptr [ %380, %383 ], [ %380, %585 ], [ %550, %549 ], [ %497, %523 ], [ %380, %450 ], [ %380, %478 ]
  %590 = phi ptr [ %365, %383 ], [ %586, %585 ], [ %365, %549 ], [ %365, %523 ], [ %365, %450 ], [ %479, %478 ]
  %591 = add nuw nsw i64 %362, 1
  br label %361, !llvm.loop !609

592:                                              ; preds = %4
  %593 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %594 = load ptr, ptr %593, align 8, !tbaa !197
  %595 = getelementptr inbounds %struct.tree_type, ptr %594, i64 0, i32 2
  %596 = load ptr, ptr %595, align 8, !tbaa !197
  %597 = tail call i64 @tree_low_cst(ptr noundef %596, i32 noundef 1) #22
  %598 = load i64, ptr %594, align 8
  %599 = and i64 %598, 65535
  %600 = icmp eq i64 %599, 14
  br i1 %600, label %601, label %603

601:                                              ; preds = %592
  %602 = tail call i32 @vector_type_mode(ptr noundef nonnull %594) #22
  br label %608

603:                                              ; preds = %592
  %604 = getelementptr inbounds %struct.tree_type, ptr %594, i64 0, i32 6
  %605 = load i32, ptr %604, align 4
  %606 = lshr i32 %605, 16
  %607 = and i32 %606, 255
  br label %608

608:                                              ; preds = %603, %601
  %609 = phi i32 [ %602, %601 ], [ %607, %603 ]
  %610 = icmp eq i32 %609, 1
  br i1 %610, label %611, label %612

611:                                              ; preds = %608
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5633, ptr noundef nonnull @.str.1) #22
  br label %612

612:                                              ; preds = %608, %611
  %613 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 6
  %614 = load i32, ptr %613, align 4
  %615 = and i32 %614, 1023
  %616 = zext nneg i32 %615 to i64
  %617 = shl nuw i64 1, %616
  %618 = trunc i64 %617 to i32
  %619 = load i32, ptr %1, align 8
  %620 = and i32 %619, 65535
  %621 = icmp eq i32 %620, 37
  br i1 %621, label %622, label %650

622:                                              ; preds = %612
  %623 = lshr i32 %619, 16
  %624 = and i32 %623, 255
  %625 = zext nneg i32 %624 to i64
  %626 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %625
  %627 = load i8, ptr %626, align 1, !tbaa !197
  %628 = add i8 %627, -12
  %629 = icmp ult i8 %628, 6
  br i1 %629, label %630, label %650

630:                                              ; preds = %622
  %631 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 %625
  %632 = load i32, ptr %631, align 4, !tbaa !235
  %633 = icmp eq i32 %632, 2956
  br i1 %633, label %650, label %634

634:                                              ; preds = %630
  %635 = tail call ptr @rtvec_alloc(i32 noundef %618) #22
  %636 = icmp ugt i32 %615, 31
  br i1 %636, label %650, label %637

637:                                              ; preds = %634
  %638 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %625
  %639 = load i8, ptr %638, align 1, !tbaa !197
  %640 = zext i8 %639 to i64
  %641 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %640
  %642 = tail call i32 @llvm.umax.i32(i32 %618, i32 1)
  %643 = zext i32 %642 to i64
  br label %644

644:                                              ; preds = %637, %644
  %645 = phi i64 [ 0, %637 ], [ %648, %644 ]
  %646 = load ptr, ptr %641, align 8, !tbaa !186
  %647 = getelementptr inbounds %struct.rtvec_def, ptr %635, i64 0, i32 1, i64 %645
  store ptr %646, ptr %647, align 8, !tbaa !186
  %648 = add nuw nsw i64 %645, 1
  %649 = icmp eq i64 %648, %643
  br i1 %649, label %650, label %644, !llvm.loop !610

650:                                              ; preds = %644, %634, %622, %630, %612
  %651 = phi i32 [ 0, %612 ], [ 0, %622 ], [ %632, %630 ], [ %632, %634 ], [ %632, %644 ]
  %652 = phi ptr [ null, %612 ], [ null, %622 ], [ null, %630 ], [ %635, %634 ], [ %635, %644 ]
  %653 = icmp eq i32 %2, 0
  br i1 %653, label %654, label %705

654:                                              ; preds = %650
  %655 = load i32, ptr %1, align 8
  %656 = and i32 %655, 65535
  %657 = icmp eq i32 %656, 37
  br i1 %657, label %658, label %662

658:                                              ; preds = %654
  %659 = load i64, ptr %0, align 8
  %660 = and i64 %659, 67108864
  %661 = icmp eq i64 %660, 0
  br i1 %661, label %662, label %705

662:                                              ; preds = %658, %654
  %663 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  br label %664

664:                                              ; preds = %682, %662
  %665 = phi i64 [ 0, %662 ], [ %697, %682 ]
  %666 = phi i64 [ 0, %662 ], [ %692, %682 ]
  %667 = phi i64 [ 0, %662 ], [ %696, %682 ]
  %668 = phi ptr [ undef, %662 ], [ %681, %682 ]
  %669 = load ptr, ptr %663, align 8, !tbaa !197
  %670 = icmp eq ptr %669, null
  br i1 %670, label %673, label %671

671:                                              ; preds = %664
  %672 = load i32, ptr %669, align 8, !tbaa !435
  br label %673

673:                                              ; preds = %664, %671
  %674 = phi i32 [ %672, %671 ], [ 0, %664 ]
  %675 = zext i32 %674 to i64
  %676 = icmp ult i64 %665, %675
  br i1 %676, label %677, label %680

677:                                              ; preds = %673
  %678 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %669, i64 0, i32 2, i64 %665, i32 1
  %679 = load ptr, ptr %678, align 8, !tbaa !437
  br label %680

680:                                              ; preds = %673, %677
  %681 = phi ptr [ %668, %673 ], [ %679, %677 ]
  br i1 %676, label %682, label %698

682:                                              ; preds = %680
  %683 = getelementptr inbounds %struct.tree_common, ptr %681, i64 0, i32 2
  %684 = load ptr, ptr %683, align 8, !tbaa !197
  %685 = getelementptr inbounds %struct.tree_type, ptr %684, i64 0, i32 2
  %686 = load ptr, ptr %685, align 8, !tbaa !197
  %687 = load ptr, ptr %595, align 8, !tbaa !197
  %688 = tail call ptr @int_const_binop(i32 noundef 67, ptr noundef %686, ptr noundef %687, i32 noundef 0) #22
  %689 = tail call i64 @tree_low_cst(ptr noundef %688, i32 noundef 1) #22
  %690 = shl i64 %689, 32
  %691 = ashr exact i64 %690, 32
  %692 = add i64 %691, %666
  %693 = tail call fastcc i32 @mostly_zeros_p(ptr noundef %681), !range !587
  %694 = icmp eq i32 %693, 0
  %695 = select i1 %694, i64 0, i64 %691
  %696 = add i64 %695, %667
  %697 = add nuw nsw i64 %665, 1
  br label %664, !llvm.loop !611

698:                                              ; preds = %680
  %699 = and i64 %617, 4294967295
  %700 = icmp ult i64 %666, %699
  %701 = shl i64 %667, 2
  %702 = mul i64 %666, 3
  %703 = icmp uge i64 %701, %702
  %704 = select i1 %700, i1 true, i1 %703
  br label %705

705:                                              ; preds = %658, %650, %698
  %706 = phi i1 [ %704, %698 ], [ false, %650 ], [ true, %658 ]
  %707 = icmp sgt i64 %3, 0
  %708 = and i1 %707, %706
  %709 = xor i1 %708, true
  %710 = icmp ne ptr %652, null
  %711 = select i1 %709, i1 true, i1 %710
  br i1 %711, label %726, label %712

712:                                              ; preds = %705
  %713 = load i32, ptr %1, align 8
  %714 = and i32 %713, 65535
  %715 = icmp eq i32 %714, 37
  br i1 %715, label %716, label %723

716:                                              ; preds = %712
  %717 = lshr i32 %713, 16
  %718 = and i32 %717, 255
  %719 = zext nneg i32 %718 to i64
  %720 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %719
  %721 = load ptr, ptr %720, align 8, !tbaa !186
  %722 = tail call ptr @emit_move_insn(ptr noundef %1, ptr noundef %721)
  br label %726

723:                                              ; preds = %712
  %724 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %3) #22
  %725 = tail call ptr @clear_storage_hints(ptr noundef %1, ptr noundef %724, i32 noundef 0, i32 noundef 0, i64 noundef -1)
  br label %726

726:                                              ; preds = %716, %723, %705
  %727 = phi i32 [ %2, %705 ], [ 1, %723 ], [ 1, %716 ]
  %728 = icmp ne i32 %727, 0
  %729 = select i1 %728, i1 true, i1 %710
  br i1 %729, label %741, label %730

730:                                              ; preds = %726
  %731 = load i32, ptr %1, align 8
  %732 = and i32 %731, 65535
  %733 = icmp eq i32 %732, 37
  br i1 %733, label %734, label %741

734:                                              ; preds = %730
  %735 = lshr i32 %731, 16
  %736 = and i32 %735, 255
  %737 = zext nneg i32 %736 to i64
  %738 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %737
  %739 = load ptr, ptr %738, align 8, !tbaa !186
  %740 = tail call ptr @emit_move_insn(ptr noundef %1, ptr noundef %739)
  br label %741

741:                                              ; preds = %734, %730, %726
  %742 = load i32, ptr %1, align 8
  %743 = and i32 %742, 65535
  %744 = icmp eq i32 %743, 43
  br i1 %744, label %745, label %752

745:                                              ; preds = %741
  %746 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %747 = load ptr, ptr %746, align 8, !tbaa !197
  %748 = icmp eq ptr %747, null
  br i1 %748, label %754, label %749

749:                                              ; preds = %745
  %750 = getelementptr inbounds %struct.mem_attrs, ptr %747, i64 0, i32 3
  %751 = load i32, ptr %750, align 8, !tbaa !413
  br label %754

752:                                              ; preds = %741
  %753 = tail call i32 @get_alias_set(ptr noundef nonnull %594) #22
  br label %754

754:                                              ; preds = %749, %745, %752
  %755 = phi i32 [ %753, %752 ], [ %751, %749 ], [ 0, %745 ]
  %756 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %757 = shl i64 %597, 32
  %758 = ashr exact i64 %757, 32
  %759 = shl i64 %597, 32
  %760 = ashr exact i64 %759, 32
  br label %761

761:                                              ; preds = %811, %754
  %762 = phi i64 [ 0, %754 ], [ %812, %811 ]
  %763 = phi i32 [ 0, %754 ], [ %815, %811 ]
  %764 = load ptr, ptr %756, align 8, !tbaa !197
  %765 = icmp eq ptr %764, null
  br i1 %765, label %773, label %766

766:                                              ; preds = %761
  %767 = trunc i64 %762 to i32
  %768 = load i32, ptr %764, align 8, !tbaa !435
  %769 = icmp ugt i32 %768, %767
  br i1 %769, label %770, label %773

770:                                              ; preds = %766
  %771 = and i64 %762, 4294967295
  %772 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %764, i64 0, i32 2, i64 %771
  br label %773

773:                                              ; preds = %761, %766, %770
  %774 = phi ptr [ %772, %770 ], [ null, %766 ], [ null, %761 ]
  %775 = phi i1 [ false, %770 ], [ true, %766 ], [ true, %761 ]
  br i1 %775, label %816, label %776

776:                                              ; preds = %773
  %777 = getelementptr inbounds %struct.constructor_elt_d, ptr %774, i64 0, i32 1
  %778 = load ptr, ptr %777, align 8, !tbaa !437
  %779 = getelementptr inbounds %struct.tree_common, ptr %778, i64 0, i32 2
  %780 = load ptr, ptr %779, align 8, !tbaa !197
  %781 = getelementptr inbounds %struct.tree_type, ptr %780, i64 0, i32 2
  %782 = load ptr, ptr %781, align 8, !tbaa !197
  %783 = tail call i64 @tree_low_cst(ptr noundef %782, i32 noundef 1) #22
  br i1 %728, label %784, label %787

784:                                              ; preds = %776
  %785 = tail call zeroext i8 @initializer_zerop(ptr noundef %778) #22
  %786 = icmp eq i8 %785, 0
  br i1 %786, label %787, label %811

787:                                              ; preds = %784, %776
  %788 = load ptr, ptr %774, align 8, !tbaa !439
  %789 = icmp eq ptr %788, null
  br i1 %789, label %792, label %790

790:                                              ; preds = %787
  %791 = tail call i64 @tree_low_cst(ptr noundef nonnull %788, i32 noundef 1) #22
  br label %794

792:                                              ; preds = %787
  %793 = sext i32 %763 to i64
  br label %794

794:                                              ; preds = %792, %790
  %795 = phi i64 [ %791, %790 ], [ %793, %792 ]
  %796 = load ptr, ptr %779, align 8, !tbaa !197
  %797 = load i64, ptr %796, align 8
  %798 = and i64 %797, 65535
  %799 = icmp eq i64 %798, 14
  br i1 %710, label %800, label %805

800:                                              ; preds = %794
  br i1 %799, label %801, label %802

801:                                              ; preds = %800
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5720, ptr noundef nonnull @.str.1) #22
  br label %802

802:                                              ; preds = %800, %801
  %803 = tail call ptr @expand_expr_real(ptr noundef %778, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %804 = getelementptr inbounds %struct.rtvec_def, ptr %652, i64 0, i32 1, i64 %795
  store ptr %803, ptr %804, align 8, !tbaa !186
  br label %811

805:                                              ; preds = %794
  br i1 %799, label %806, label %808

806:                                              ; preds = %805
  %807 = tail call i32 @vector_type_mode(ptr noundef nonnull %796) #22
  br label %808

808:                                              ; preds = %805, %806
  %809 = phi i32 [ %807, %806 ], [ %609, %805 ]
  %810 = mul nsw i64 %795, %758
  tail call fastcc void @store_constructor_field(ptr noundef %1, i64 noundef %783, i64 noundef %810, i32 noundef %809, ptr noundef %778, ptr noundef nonnull %6, i32 noundef %727, i32 noundef %755)
  br label %811

811:                                              ; preds = %802, %808, %784
  %812 = add i64 %762, 1
  %813 = sdiv i64 %783, %760
  %814 = trunc i64 %813 to i32
  %815 = add i32 %763, %814
  br label %761, !llvm.loop !612

816:                                              ; preds = %773
  br i1 %710, label %817, label %828

817:                                              ; preds = %816
  %818 = sext i32 %651 to i64
  %819 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %818, i32 2
  %820 = load ptr, ptr %819, align 8, !tbaa !257
  %821 = load i32, ptr %1, align 8
  %822 = lshr i32 %821, 16
  %823 = and i32 %822, 255
  %824 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef %823, ptr noundef nonnull %652) #22
  %825 = tail call ptr (ptr, ...) %820(ptr noundef %1, ptr noundef %824) #22
  %826 = tail call ptr @emit_insn(ptr noundef %825) #22
  br label %828

827:                                              ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5745, ptr noundef nonnull @.str.1) #22
  br label %828

828:                                              ; preds = %379, %103, %816, %817, %827
  ret void
}

declare i32 @fields_length(ptr noundef) local_unnamed_addr #3

declare ptr @bit_position(ptr noundef) local_unnamed_addr #3

declare i64 @int_bit_position(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @store_constructor_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #13 !prof !185 {
  %9 = load i64, ptr %4, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 51
  br i1 %11, label %12, label %60

12:                                               ; preds = %8
  %13 = icmp ne i64 %1, 0
  %14 = or i64 %2, %1
  %15 = and i64 %14, 7
  %16 = icmp eq i64 %15, 0
  %17 = and i1 %13, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %12
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = load i32, ptr %0, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 43
  br i1 %23, label %24, label %60

24:                                               ; preds = %20, %18
  %25 = load i32, ptr %0, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 43
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = lshr i32 %25, 16
  %30 = and i32 %29, 255
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @get_mode_alignment(i32 noundef %30) #22
  %34 = zext i32 %33 to i64
  %35 = srem i64 %2, %34
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %32, %28
  %39 = phi i32 [ 1, %28 ], [ %37, %32 ]
  %40 = sdiv i64 %2, 8
  %41 = tail call ptr @adjust_address_1(ptr noundef nonnull %0, i32 noundef %39, i64 noundef %40, i32 noundef 1, i32 noundef 1) #22
  br label %42

42:                                               ; preds = %38, %24
  %43 = phi ptr [ %41, %38 ], [ %0, %24 ]
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 16842751
  %46 = icmp eq i32 %45, 43
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !197
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.mem_attrs, ptr %49, i64 0, i32 3
  %53 = load i32, ptr %52, align 8, !tbaa !413
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = tail call ptr @copy_rtx(ptr noundef nonnull %43) #22
  tail call void @set_mem_alias_set(ptr noundef %56, i32 noundef %7) #22
  br label %57

57:                                               ; preds = %47, %55, %51, %42
  %58 = phi ptr [ %56, %55 ], [ %43, %51 ], [ %43, %42 ], [ %43, %47 ]
  %59 = lshr exact i64 %1, 3
  tail call fastcc void @store_constructor(ptr noundef nonnull %4, ptr noundef %58, i32 noundef %6, i64 noundef %59)
  br label %62

60:                                               ; preds = %20, %12, %8
  %61 = tail call fastcc ptr @store_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull %4, ptr noundef %5, i32 noundef %7, i8 noundef zeroext 0)
  br label %62

62:                                               ; preds = %60, %57
  ret void
}

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @jumpif(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @expand_expr_addr_expr_1(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #9 !prof !613 !PGOFuncName !614 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 65535
  %14 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !201
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %26, !prof !615

17:                                               ; preds = %5
  %18 = tail call ptr @output_constant_def(ptr noundef nonnull %0, i32 noundef 0) #22
  %19 = icmp eq i32 %3, 4
  br i1 %19, label %22, label %20, !prof !616

20:                                               ; preds = %17
  %21 = tail call ptr @use_anchored_address(ptr noundef %18) #22
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ %18, %17 ]
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !197
  br label %196

26:                                               ; preds = %5
  %27 = trunc i64 %12 to i16
  switch i16 %27, label %79 [
    i16 47, label %28
    i16 33, label %32
    i16 43, label %43
    i16 44, label %46
    i16 32, label %68
  ], !prof !617

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !197
  %31 = tail call ptr @expand_expr_real(ptr noundef %30, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null)
  br label %196

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !197
  %35 = tail call ptr @output_constant_def(ptr noundef %34, i32 noundef 0) #22
  %36 = icmp eq i32 %3, 4
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = tail call ptr @use_anchored_address(ptr noundef %35) #22
  br label %39

39:                                               ; preds = %32, %37
  %40 = phi ptr [ %38, %37 ], [ %35, %32 ]
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !197
  br label %196

43:                                               ; preds = %26
  store ptr null, ptr %6, align 8, !tbaa !186
  store i64 0, ptr %8, align 8, !tbaa !311
  %44 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !197
  br label %121

46:                                               ; preds = %26
  store ptr null, ptr %6, align 8, !tbaa !186
  %47 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !197
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 14
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = tail call i32 @vector_type_mode(ptr noundef nonnull %48) #22
  br label %59

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.tree_type, ptr %48, i64 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  br label %59

59:                                               ; preds = %54, %52
  %60 = phi i32 [ %53, %52 ], [ %58, %54 ]
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !197
  %64 = zext i8 %63 to i64
  %65 = shl nuw nsw i64 %64, 3
  store i64 %65, ptr %8, align 8, !tbaa !311
  %66 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !197
  br label %121

68:                                               ; preds = %26
  %69 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !485
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %79, !prof !616

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 49152
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = tail call fastcc ptr @emutls_var_address(ptr noundef nonnull %0)
  %78 = tail call ptr @expand_expr_real(ptr noundef %77, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null)
  br label %196

79:                                               ; preds = %68, %71, %26
  %80 = and i64 %12, 65532
  %81 = icmp ult i64 %80, 188
  br i1 %81, label %83, label %82, !prof !618

82:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6889, ptr noundef nonnull @.str.1) #22
  br label %83

83:                                               ; preds = %79, %82
  %84 = load i64, ptr %0, align 8
  %85 = and i64 %84, 65535
  %86 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !201
  %88 = freeze i32 %87
  %89 = icmp eq i32 %88, 3
  br i1 %89, label %92, label %90

90:                                               ; preds = %83
  %91 = trunc i64 %84 to i16
  switch i16 %91, label %119 [
    i16 119, label %92
    i16 51, label %92
  ]

92:                                               ; preds = %90, %90, %83
  %93 = icmp eq i32 %3, 4
  %94 = select i1 %93, i32 4, i32 3, !prof !616
  %95 = tail call ptr @expand_expr_real(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %94, ptr noundef null)
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 43
  br i1 %98, label %100, label %99, !prof !619

99:                                               ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6901, ptr noundef nonnull @.str.1) #22
  br label %100

100:                                              ; preds = %92, %99
  %101 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !197
  %103 = load i64, ptr %0, align 8
  %104 = and i64 %103, 65535
  %105 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !201
  %107 = icmp ne i32 %106, 3
  %108 = and i64 %103, 16777216
  %109 = icmp eq i64 %108, 0
  %110 = or i1 %107, %109
  br i1 %110, label %114, label %111, !prof !616

111:                                              ; preds = %100
  tail call void @assemble_external(ptr noundef nonnull %0) #22
  %112 = load i64, ptr %0, align 8
  %113 = or i64 %112, 16777216
  store i64 %113, ptr %0, align 8
  br label %114

114:                                              ; preds = %111, %100
  %115 = add i32 %3, -5
  %116 = icmp ult i32 %115, -2
  br i1 %116, label %117, label %196, !prof !619

117:                                              ; preds = %114
  %118 = tail call ptr @force_operand(ptr noundef %102, ptr noundef %1)
  br label %196

119:                                              ; preds = %90
  %120 = call ptr @get_inner_reference(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %9, i8 zeroext poison)
  br label %121

121:                                              ; preds = %119, %59, %43
  %122 = phi ptr [ %120, %119 ], [ %67, %59 ], [ %45, %43 ]
  %123 = icmp eq ptr %122, %0
  br i1 %123, label %124, label %125, !prof !531

124:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6928, ptr noundef nonnull @.str.1) #22
  br label %125

125:                                              ; preds = %121, %124
  %126 = load ptr, ptr %6, align 8, !tbaa !186
  %127 = icmp ne ptr %126, null
  %128 = load i64, ptr %8, align 8
  %129 = icmp ne i64 %128, 0
  %130 = select i1 %127, i1 true, i1 %129, !prof !531
  %131 = select i1 %130, ptr null, ptr %1, !prof !531
  %132 = load i64, ptr %122, align 8
  %133 = and i64 %132, 65535
  %134 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !201
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %159, !prof !620

137:                                              ; preds = %125
  %138 = getelementptr inbounds %struct.tree_common, ptr %122, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !197
  %140 = getelementptr inbounds %struct.tree_type, ptr %139, i64 0, i32 7
  %141 = load i32, ptr %140, align 8, !tbaa !197
  %142 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !197
  %144 = getelementptr inbounds %struct.tree_type, ptr %143, i64 0, i32 7
  %145 = load i32, ptr %144, align 8, !tbaa !197
  %146 = icmp ult i32 %141, %145
  br i1 %146, label %147, label %159, !prof !616

147:                                              ; preds = %137
  %148 = tail call ptr @copy_node_stat(ptr noundef nonnull %122) #22
  %149 = getelementptr inbounds %struct.tree_common, ptr %148, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !197
  %151 = tail call ptr @copy_node_stat(ptr noundef %150) #22
  store ptr %151, ptr %149, align 8, !tbaa !197
  %152 = load ptr, ptr %142, align 8, !tbaa !197
  %153 = getelementptr inbounds %struct.tree_type, ptr %152, i64 0, i32 7
  %154 = load i32, ptr %153, align 8, !tbaa !197
  %155 = getelementptr inbounds %struct.tree_type, ptr %151, i64 0, i32 7
  store i32 %154, ptr %155, align 8, !tbaa !197
  %156 = load ptr, ptr %149, align 8, !tbaa !197
  %157 = load i64, ptr %156, align 8
  %158 = or i64 %157, 4398046511104
  store i64 %158, ptr %156, align 8
  br label %159

159:                                              ; preds = %147, %137, %125
  %160 = phi ptr [ %148, %147 ], [ %122, %137 ], [ %122, %125 ]
  %161 = tail call fastcc ptr @expand_expr_addr_expr_1(ptr noundef %160, ptr noundef %131, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4)
  %162 = load ptr, ptr %6, align 8, !tbaa !186
  %163 = icmp eq ptr %162, null
  br i1 %163, label %182, label %164, !prof !530

164:                                              ; preds = %159
  %165 = icmp eq i32 %3, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %164
  %167 = tail call ptr @force_operand(ptr noundef %161, ptr noundef null)
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi ptr [ %167, %166 ], [ %161, %164 ]
  %170 = icmp eq i32 %3, 4
  %171 = select i1 %170, i32 4, i32 0
  %172 = tail call ptr @expand_expr_real(ptr noundef nonnull %162, ptr noundef null, i32 noundef %2, i32 noundef %171, ptr noundef null)
  %173 = tail call ptr @convert_memory_address_addr_space(i32 noundef %2, ptr noundef %169, i8 noundef zeroext %4) #22
  %174 = tail call ptr @convert_memory_address_addr_space(i32 noundef %2, ptr noundef %172, i8 noundef zeroext %4) #22
  switch i32 %3, label %177 [
    i32 4, label %175
    i32 2, label %175
  ]

175:                                              ; preds = %168, %168
  %176 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %2, ptr noundef %173, ptr noundef %174) #22
  br label %182

177:                                              ; preds = %168
  %178 = load i64, ptr %8, align 8, !tbaa !311
  %179 = icmp eq i64 %178, 0
  %180 = select i1 %179, ptr %1, ptr null
  %181 = tail call ptr @expand_simple_binop(i32 noundef %2, i32 noundef 49, ptr noundef %173, ptr noundef %174, ptr noundef %180, i32 noundef 1, i32 noundef 3) #22
  br label %182

182:                                              ; preds = %175, %177, %159
  %183 = phi ptr [ %161, %159 ], [ %176, %175 ], [ %181, %177 ]
  %184 = load i64, ptr %8, align 8, !tbaa !311
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %196, label %186, !prof !530

186:                                              ; preds = %182
  %187 = and i64 %184, 7
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %186
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6970, ptr noundef nonnull @.str.1) #22
  br label %190

190:                                              ; preds = %186, %189
  %191 = sdiv i64 %184, 8
  %192 = tail call ptr @plus_constant(ptr noundef %183, i64 noundef %191) #22
  %193 = icmp ult i32 %3, 2
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = tail call ptr @force_operand(ptr noundef %192, ptr noundef %1)
  br label %196

196:                                              ; preds = %182, %194, %190, %114, %117, %76, %39, %28, %22
  %197 = phi ptr [ %25, %22 ], [ %78, %76 ], [ %42, %39 ], [ %31, %28 ], [ %118, %117 ], [ %102, %114 ], [ %195, %194 ], [ %192, %190 ], [ %183, %182 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret ptr %197
}

declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @integer_all_onesp(ptr noundef) local_unnamed_addr #3

declare i32 @swap_condition(i32 noundef) local_unnamed_addr #3

declare ptr @fold_single_bit_test(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_store_flag_force(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_tablejump(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_VECTOR(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!184}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!35 = !{ptr @init_expr_target, ptr @gen_rtx_MEM, i64 3}
!36 = !{ptr @init_expr_target, ptr @gen_rtx_REG, i64 1}
!37 = !{ptr @init_expr_target, ptr @rtx_alloc_stat, i64 1}
!38 = !{ptr @init_expr_target, ptr @gen_rtx_fmt_ee_stat, i64 1}
!39 = !{ptr @init_expr_target, ptr @ix86_hard_regno_mode_ok, i64 4147}
!40 = !{ptr @init_expr_target, ptr @df_ref_change_reg_with_loc, i64 699}
!41 = !{ptr @init_expr_target, ptr @recog, i64 2796}
!42 = !{ptr @init_expr_target, ptr @gen_rtx_fmt_i00_stat, i64 1}
!43 = !{ptr @init_expr_target, ptr @can_extend_p, i64 6}
!44 = !{ptr @convert_move, ptr @emit_move_insn, i64 23}
!45 = !{ptr @convert_move, ptr @can_extend_p, i64 1409}
!46 = !{ptr @convert_move, ptr @emit_unop_insn, i64 1409}
!47 = !{ptr @emit_move_insn, ptr @legitimate_constant_p, i64 98866}
!48 = !{ptr @emit_move_insn, ptr @memory_address_addr_space_p, i64 128817}
!49 = !{ptr @emit_move_insn, ptr @emit_insn, i64 268160}
!50 = !{ptr @emit_move_insn, ptr @rtx_equal_p, i64 86173}
!51 = !{ptr @emit_move_insn_1, ptr @emit_insn, i64 115}
!52 = !{ptr @emit_push_insn, ptr @plus_constant, i64 81668}
!53 = !{ptr @emit_push_insn, ptr @memory_address_addr_space, i64 81668}
!54 = !{ptr @emit_push_insn, ptr @gen_rtx_MEM, i64 81668}
!55 = !{ptr @emit_push_insn, ptr @set_mem_align, i64 81668}
!56 = !{ptr @emit_push_insn, ptr @emit_move_insn, i64 81668}
!57 = !{ptr @expand_assignment, ptr @operand_equal_p, i64 79672}
!58 = !{ptr @expand_assignment, ptr @push_temp_slots, i64 79672}
!59 = !{ptr @expand_assignment, ptr @get_inner_reference, i64 40}
!60 = !{ptr @expand_assignment, ptr @expand_expr_real, i64 79672}
!61 = !{ptr @expand_assignment, ptr @shallow_copy_rtx_stat, i64 40}
!62 = !{ptr @expand_assignment, ptr @set_mem_attributes_minus_bitpos, i64 40}
!63 = !{ptr @expand_assignment, ptr @component_uses_parent_alias_set, i64 40}
!64 = !{ptr @expand_assignment, ptr @get_alias_set, i64 40}
!65 = !{ptr @expand_assignment, ptr @store_field, i64 40}
!66 = !{ptr @expand_assignment, ptr @free_temp_slots, i64 79672}
!67 = !{ptr @expand_assignment, ptr @pop_temp_slots, i64 79672}
!68 = !{ptr @expand_assignment, ptr @aggregate_value_p, i64 66684}
!69 = !{ptr @expand_assignment, ptr @store_expr, i64 79632}
!70 = !{ptr @expand_assignment, ptr @preserve_temp_slots, i64 79632}
!71 = !{ptr @get_inner_reference, ptr @host_integerp, i64 328735}
!72 = !{ptr @get_inner_reference, ptr @tree_low_cst, i64 104584}
!73 = !{ptr @get_inner_reference, ptr @size_binop_loc, i64 389385}
!74 = !{ptr @get_inner_reference, ptr @fold_convert_loc, i64 46622}
!75 = !{ptr @get_inner_reference, ptr @size_int_kind, i64 5}
!76 = !{ptr @get_inner_reference, ptr @integer_zerop, i64 46621}
!77 = !{ptr @get_inner_reference, ptr @tree_to_double_int, i64 448302}
!78 = !{ptr @get_inner_reference, ptr @double_int_mul, i64 224151}
!79 = !{ptr @get_inner_reference, ptr @double_int_add, i64 224151}
!80 = !{ptr @get_inner_reference, ptr @double_int_fits_in_shwi_p, i64 224151}
!81 = !{ptr @get_inner_reference, ptr @double_int_to_shwi, i64 224151}
!82 = !{ptr @store_expr, ptr @expand_expr_real, i64 79672}
!83 = !{ptr @store_expr, ptr @rtx_equal_p, i64 92528}
!84 = !{ptr @store_expr, ptr @expr_size, i64 12988}
!85 = !{ptr @store_expr, ptr @force_operand, i64 12988}
!86 = !{ptr @store_expr, ptr @emit_move_insn, i64 12988}
!87 = !{ptr @store_field, ptr @get_mode_alignment, i64 80}
!88 = !{ptr @store_field, ptr @compare_tree_int, i64 40}
!89 = !{ptr @store_field, ptr @adjust_address_1, i64 40}
!90 = !{ptr @store_field, ptr @store_expr, i64 40}
!91 = !{ptr @expand_expr_real, ptr @get_curr_insn_source_location, i64 103115}
!92 = !{ptr @expand_expr_real, ptr @get_curr_insn_block, i64 103115}
!93 = !{ptr @expand_expr_real, ptr @set_curr_insn_source_location, i64 206230}
!94 = !{ptr @expand_expr_real, ptr @tree_block, i64 103115}
!95 = !{ptr @expand_expr_real, ptr @set_curr_insn_block, i64 206230}
!96 = !{ptr @expand_expr_real, ptr @expand_expr_real_1, i64 652285}
!97 = !{ptr @highest_pow2_factor, ptr @highest_pow2_factor, i64 24}
!98 = !{ptr @force_operand, ptr @force_operand, i64 166}
!99 = !{ptr @force_operand, ptr @expand_mult, i64 67}
!100 = !{ptr @force_operand, ptr @expand_simple_binop, i64 16}
!101 = !{ptr @array_ref_element_size, ptr @fold_convert_loc, i64 4}
!102 = !{ptr @array_ref_element_size, ptr @size_int_kind, i64 25}
!103 = !{ptr @array_ref_element_size, ptr @size_binop_loc, i64 25}
!104 = !{ptr @expand_expr_real_1, ptr @expand_expr_real, i64 16733}
!105 = !{ptr @expand_expr_real_1, ptr @bitmap_bit_p, i64 338524}
!106 = !{ptr @expand_expr_real_1, ptr @gimple_assign_rhs_to_tree, i64 102408}
!107 = !{ptr @expand_expr_real_1, ptr @get_curr_insn_source_location, i64 16189}
!108 = !{ptr @expand_expr_real_1, ptr @get_curr_insn_block, i64 16189}
!109 = !{ptr @expand_expr_real_1, ptr @set_curr_insn_source_location, i64 32378}
!110 = !{ptr @expand_expr_real_1, ptr @tree_block, i64 16189}
!111 = !{ptr @expand_expr_real_1, ptr @set_curr_insn_block, i64 32378}
!112 = !{ptr @expand_expr_real_1, ptr @expand_expr_real_1, i64 102408}
!113 = !{ptr @expand_expr_real_1, ptr @make_decl_rtl, i64 45}
!114 = !{ptr @expand_expr_real_1, ptr @copy_rtx, i64 313569}
!115 = !{ptr @expand_expr_real_1, ptr @assemble_external, i64 70412}
!116 = !{ptr @expand_expr_real_1, ptr @decl_function_context, i64 313569}
!117 = !{ptr @expand_expr_real_1, ptr @use_anchored_address, i64 77454}
!118 = !{ptr @expand_expr_real_1, ptr @memory_address_addr_space_p, i64 77391}
!119 = !{ptr @expand_expr_real_1, ptr @immed_double_const, i64 217814}
!120 = !{ptr @expand_expr_real_1, ptr @fold_read_from_constant_string, i64 14613}
!121 = !{ptr @expand_expr_real_1, ptr @memory_address_addr_space, i64 266}
!122 = !{ptr @expand_expr_real_1, ptr @gen_rtx_MEM, i64 266}
!123 = !{ptr @expand_expr_real_1, ptr @set_mem_attributes, i64 14832}
!124 = !{ptr @expand_expr_real_1, ptr @set_mem_addr_space, i64 266}
!125 = !{ptr @expand_expr_real_1, ptr @get_inner_reference, i64 14566}
!126 = !{ptr @expand_expr_real_1, ptr @get_mode_alignment, i64 58276}
!127 = !{ptr @expand_expr_real_1, ptr @adjust_address_1, i64 14572}
!128 = !{ptr @expand_expr_real_1, ptr @highest_pow2_factor, i64 6}
!129 = !{ptr @expand_expr_real_1, ptr @offset_address, i64 6}
!130 = !{ptr @expand_expr_real_1, ptr @is_aligning_offset, i64 6}
!131 = !{ptr @expand_expr_real_1, ptr @compare_tree_int, i64 14566}
!132 = !{ptr @expand_expr_real_1, ptr @mark_reg_pointer, i64 14350}
!133 = !{ptr @expand_expr_real_1, ptr @get_callee_fndecl, i64 68785}
!134 = !{ptr @expand_expr_real_1, ptr @lookup_attribute, i64 137570}
!135 = !{ptr @expand_expr_real_1, ptr @expand_call, i64 68785}
!136 = !{ptr @expand_expr_real_1, ptr @expand_expr_addr_expr_1, i64 126}
!137 = !{ptr @expand_expr_real_1, ptr @expand_expr_real_2, i64 37794}
!138 = !{ptr @expand_expr_real_2, ptr @expand_expr_real, i64 7610}
!139 = !{ptr @expand_expr_real_2, ptr @convert_move, i64 104}
!140 = !{ptr @expand_expr_real_2, ptr @get_def_for_expr, i64 3383}
!141 = !{ptr @expand_expr_real_2, ptr @expand_operands, i64 31424}
!142 = !{ptr @expand_expr_real_2, ptr @host_integerp, i64 6}
!143 = !{ptr @expand_expr_real_2, ptr @force_operand, i64 6}
!144 = !{ptr @expand_expr_real_2, ptr @copy_to_mode_reg, i64 6}
!145 = !{ptr @expand_expr_real_2, ptr @tree_low_cst, i64 6}
!146 = !{ptr @expand_expr_real_2, ptr @gen_int_mode, i64 6}
!147 = !{ptr @expand_expr_real_2, ptr @gen_rtx_fmt_ee_stat, i64 6}
!148 = !{ptr @expand_expr_real_2, ptr @safe_from_p, i64 7043}
!149 = !{ptr @expand_expr_real_2, ptr @expand_shift, i64 7043}
!150 = !{ptr @expand_expr_real_2, ptr @tree_strip_nop_conversions, i64 39100}
!151 = !{ptr @expand_expr_real_2, ptr @integer_all_onesp, i64 14}
!152 = !{ptr @expand_expr_real_2, ptr @gen_reg_rtx, i64 19305}
!153 = !{ptr @expand_expr_real_2, ptr @emit_store_flag_force, i64 19550}
!154 = !{ptr @expand_expr_real_2, ptr @optab_for_tree_code, i64 11874}
!155 = !{ptr @expand_expr_real_2, ptr @expand_binop, i64 11874}
!156 = !{ptr @get_def_for_expr, ptr @bitmap_bit_p, i64 3383}
!157 = !{ptr @expand_operands, ptr @safe_from_p, i64 31424}
!158 = !{ptr @expand_operands, ptr @operand_equal_p, i64 31424}
!159 = !{ptr @expand_operands, ptr @expand_expr_real, i64 62848}
!160 = !{ptr @try_tablejump, ptr @fold_convert_loc, i64 46}
!161 = !{ptr @try_tablejump, ptr @fold_build2_stat_loc, i64 23}
!162 = !{ptr @try_tablejump, ptr @expand_expr_real, i64 46}
!163 = !{ptr @try_tablejump, ptr @do_pending_stack_adjust, i64 23}
!164 = !{ptr @try_tablejump, ptr @convert_modes, i64 23}
!165 = !{ptr @try_tablejump, ptr @emit_cmp_and_jump_insns, i64 23}
!166 = !{ptr @try_tablejump, ptr @gen_rtx_CONST_INT, i64 23}
!167 = !{ptr @try_tablejump, ptr @gen_rtx_fmt_ee_stat, i64 46}
!168 = !{ptr @try_tablejump, ptr @gen_rtx_fmt_u_stat, i64 23}
!169 = !{ptr @try_tablejump, ptr @memory_address_addr_space, i64 23}
!170 = !{ptr @try_tablejump, ptr @gen_reg_rtx, i64 23}
!171 = !{ptr @try_tablejump, ptr @gen_const_mem, i64 23}
!172 = !{ptr @try_tablejump, ptr @convert_move, i64 23}
!173 = !{ptr @try_tablejump, ptr @gen_tablejump, i64 23}
!174 = !{ptr @try_tablejump, ptr @emit_jump_insn, i64 23}
!175 = !{ptr @try_tablejump, ptr @emit_barrier, i64 23}
!176 = !{ptr @get_personality_function, ptr @function_needs_eh_personality, i64 38}
!177 = !{ptr @expand_expr_addr_expr_1, ptr @output_constant_def, i64 63}
!178 = !{ptr @expand_expr_addr_expr_1, ptr @use_anchored_address, i64 63}
!179 = !{ptr @expand_expr_addr_expr_1, ptr @expand_expr_real, i64 157}
!180 = !{ptr @expand_expr_addr_expr_1, ptr @assemble_external, i64 157}
!181 = !{ptr @expand_expr_addr_expr_1, ptr @force_operand, i64 157}
!182 = !{ptr @expand_expr_addr_expr_1, ptr @get_inner_reference, i64 31}
!183 = !{ptr @expand_expr_addr_expr_1, ptr @expand_expr_addr_expr_1, i64 32}
!184 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!185 = !{!"function_entry_count", i64 0}
!186 = !{!187, !187, i64 0}
!187 = !{!"any pointer", !188, i64 0}
!188 = !{!"omnipotent char", !189, i64 0}
!189 = !{!"Simple C/C++ TBAA"}
!190 = !{!191, !187, i64 8}
!191 = !{!"_IO_FILE", !192, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !187, i64 40, !187, i64 48, !187, i64 56, !187, i64 64, !187, i64 72, !187, i64 80, !187, i64 88, !187, i64 96, !187, i64 104, !192, i64 112, !192, i64 116, !193, i64 120, !194, i64 128, !188, i64 130, !188, i64 131, !187, i64 136, !193, i64 144, !187, i64 152, !187, i64 160, !187, i64 168, !187, i64 176, !193, i64 184, !192, i64 192, !188, i64 196}
!192 = !{!"int", !188, i64 0}
!193 = !{!"long", !188, i64 0}
!194 = !{!"short", !188, i64 0}
!195 = !{!191, !187, i64 16}
!196 = !{!"branch_weights", i32 2000, i32 1}
!197 = !{!188, !188, i64 0}
!198 = !{!191, !187, i64 40}
!199 = !{!191, !187, i64 48}
!200 = !{!191, !192, i64 0}
!201 = !{!192, !192, i64 0}
!202 = distinct !{!202, !203, !204}
!203 = !{!"llvm.loop.mustprogress"}
!204 = !{!"llvm.loop.unroll.disable"}
!205 = !{!"function_entry_count", i64 1}
!206 = !{!"branch_weights", i32 85, i32 2}
!207 = !{!"branch_weights", i32 4141, i32 7}
!208 = !{!"branch_weights", i32 0, i32 7}
!209 = !{!"branch_weights", i32 3443, i32 698}
!210 = !{!"branch_weights", i32 7, i32 691}
!211 = !{!"branch_weights", i32 78, i32 4070}
!212 = distinct !{!212, !203, !204}
!213 = !{!"branch_weights", i32 1, i32 86}
!214 = distinct !{!214, !203, !204}
!215 = !{!"branch_weights", i32 1, i32 127}
!216 = !{!"branch_weights", i32 3, i32 3}
!217 = !{!218, !187, i64 24}
!218 = !{!"insn_data", !187, i64 0, !188, i64 8, !187, i64 16, !187, i64 24, !188, i64 32, !188, i64 33, !188, i64 34, !188, i64 35}
!219 = !{!220, !187, i64 0}
!220 = !{!"insn_operand_data", !187, i64 0, !187, i64 8, !192, i64 16, !188, i64 18, !188, i64 19}
!221 = !{!"VP", i32 0, i64 3, i64 2413368657831509256, i64 3}
!222 = !{!"branch_weights", i32 0, i32 3}
!223 = !{!"branch_weights", i32 127, i32 65}
!224 = distinct !{!224, !203, !204}
!225 = !{!"branch_weights", i32 127, i32 385}
!226 = distinct !{!226, !203, !204}
!227 = !{!"function_entry_count", i64 40}
!228 = !{!"function_entry_count", i64 1432}
!229 = !{!"branch_weights", i32 23, i32 1409}
!230 = !{!"branch_weights", i32 0, i32 1432}
!231 = !{!232, !187, i64 0}
!232 = !{!"rtl_hooks", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32}
!233 = !{!"branch_weights", i32 0, i32 1409}
!234 = !{!194, !194, i64 0}
!235 = !{!236, !192, i64 0}
!236 = !{!"optab_handlers", !192, i64 0}
!237 = distinct !{!237, !203, !204}
!238 = !{!"branch_weights", i32 1409, i32 0}
!239 = distinct !{!239, !203, !204}
!240 = !{!"function_entry_count", i64 268160}
!241 = !{!"branch_weights", i32 0, i32 268160}
!242 = !{!"branch_weights", i32 268160, i32 0}
!243 = !{!"branch_weights", i32 98866, i32 169294}
!244 = !{!"branch_weights", i32 0, i32 98866}
!245 = !{i64 0, i64 4, !201, i64 0, i64 4, !201, i64 0, i64 4, !201, i64 0, i64 4, !201, i64 0, i64 4, !201, i64 0, i64 4, !201, i64 8, i64 24, !197}
!246 = distinct !{!246, !203, !204}
!247 = !{!"branch_weights", i32 81735, i32 186425}
!248 = !{!"branch_weights", i32 27, i32 81708}
!249 = !{!250, !188, i64 32}
!250 = !{!"mem_attrs", !187, i64 0, !187, i64 8, !187, i64 16, !192, i64 24, !192, i64 28, !188, i64 32}
!251 = !{!"branch_weights", i32 0, i32 81735}
!252 = !{!"branch_weights", i32 47082, i32 221078}
!253 = !{!"branch_weights", i32 50, i32 47032}
!254 = !{!"branch_weights", i32 0, i32 47082}
!255 = !{!"branch_weights", i32 268275, i32 0}
!256 = !{!"branch_weights", i32 0, i32 268275}
!257 = !{!218, !187, i64 16}
!258 = !{!"VP", i32 0, i64 268160, i64 -7546587691537374372, i64 266565, i64 2231446877867758160, i64 1594}
!259 = !{!"branch_weights", i32 169294, i32 98866}
!260 = !{!"branch_weights", i32 86173, i32 12693}
!261 = !{!"branch_weights", i32 86173, i32 0}
!262 = !{!"branch_weights", i32 0, i32 86173}
!263 = !{!"function_entry_count", i64 28912}
!264 = !{!"branch_weights", i32 0, i32 28912}
!265 = !{!"branch_weights", i32 21869, i32 7043}
!266 = !{!"branch_weights", i32 21802, i32 7110}
!267 = !{!"branch_weights", i32 7043, i32 67}
!268 = !{!"branch_weights", i32 67, i32 0}
!269 = !{!"branch_weights", i32 0, i32 67}
!270 = !{!"branch_weights", i32 67, i32 7043}
!271 = !{!"branch_weights", i32 7043, i32 0}
!272 = !{!"branch_weights", i32 0, i32 7043}
!273 = !{!"branch_weights", i32 4804, i32 2239}
!274 = !{!"branch_weights", i32 0, i32 4804}
!275 = !{!"branch_weights", i32 2239, i32 0}
!276 = !{!"branch_weights", i32 0, i32 2239}
!277 = !{!"VP", i32 0, i64 7110, i64 499959809740398938, i64 7110}
!278 = !{!279, !192, i64 72}
!279 = !{!"processor_costs", !192, i64 0, !192, i64 4, !192, i64 8, !192, i64 12, !188, i64 16, !192, i64 36, !188, i64 40, !192, i64 60, !192, i64 64, !192, i64 68, !192, i64 72, !192, i64 76, !188, i64 80, !188, i64 92, !192, i64 104, !188, i64 108, !188, i64 120, !192, i64 132, !188, i64 136, !188, i64 144, !192, i64 152, !188, i64 156, !188, i64 168, !192, i64 180, !192, i64 184, !192, i64 188, !192, i64 192, !192, i64 196, !192, i64 200, !192, i64 204, !192, i64 208, !192, i64 212, !192, i64 216, !192, i64 220, !192, i64 224, !188, i64 228, !188, i64 300, !192, i64 372, !192, i64 376, !192, i64 380, !192, i64 384, !192, i64 388, !192, i64 392, !192, i64 396, !192, i64 400, !192, i64 404, !192, i64 408, !192, i64 412}
!280 = distinct !{!280, !203, !204}
!281 = distinct !{!281, !203, !204}
!282 = !{!283, !187, i64 1184}
!283 = !{!"gcc_target", !284, i64 0, !286, i64 368, !287, i64 664, !192, i64 744, !187, i64 752, !187, i64 760, !187, i64 768, !187, i64 776, !187, i64 784, !187, i64 792, !187, i64 800, !187, i64 808, !187, i64 816, !187, i64 824, !187, i64 832, !187, i64 840, !187, i64 848, !187, i64 856, !187, i64 864, !187, i64 872, !187, i64 880, !187, i64 888, !187, i64 896, !187, i64 904, !187, i64 912, !187, i64 920, !187, i64 928, !187, i64 936, !187, i64 944, !187, i64 952, !187, i64 960, !187, i64 968, !187, i64 976, !187, i64 984, !187, i64 992, !187, i64 1000, !187, i64 1008, !187, i64 1016, !187, i64 1024, !187, i64 1032, !187, i64 1040, !187, i64 1048, !187, i64 1056, !193, i64 1064, !193, i64 1072, !187, i64 1080, !187, i64 1088, !187, i64 1096, !187, i64 1104, !187, i64 1112, !187, i64 1120, !187, i64 1128, !187, i64 1136, !187, i64 1144, !187, i64 1152, !187, i64 1160, !187, i64 1168, !288, i64 1176, !187, i64 1232, !187, i64 1240, !187, i64 1248, !187, i64 1256, !187, i64 1264, !187, i64 1272, !187, i64 1280, !187, i64 1288, !187, i64 1296, !187, i64 1304, !187, i64 1312, !187, i64 1320, !187, i64 1328, !187, i64 1336, !187, i64 1344, !187, i64 1352, !187, i64 1360, !187, i64 1368, !187, i64 1376, !187, i64 1384, !187, i64 1392, !187, i64 1400, !187, i64 1408, !187, i64 1416, !187, i64 1424, !187, i64 1432, !187, i64 1440, !187, i64 1448, !187, i64 1456, !193, i64 1464, !289, i64 1472, !187, i64 1664, !187, i64 1672, !187, i64 1680, !187, i64 1688, !187, i64 1696, !187, i64 1704, !187, i64 1712, !187, i64 1720, !187, i64 1728, !187, i64 1736, !187, i64 1744, !187, i64 1752, !187, i64 1760, !187, i64 1768, !187, i64 1776, !290, i64 1784, !291, i64 1792, !292, i64 1896, !293, i64 1968, !187, i64 2016, !188, i64 2024, !188, i64 2025, !188, i64 2026, !188, i64 2027, !188, i64 2028, !188, i64 2029, !188, i64 2030, !188, i64 2031, !188, i64 2032, !188, i64 2033, !188, i64 2034, !188, i64 2035}
!284 = !{!"asm_out", !187, i64 0, !187, i64 8, !187, i64 16, !285, i64 24, !285, i64 56, !187, i64 88, !187, i64 96, !187, i64 104, !187, i64 112, !187, i64 120, !187, i64 128, !187, i64 136, !187, i64 144, !187, i64 152, !187, i64 160, !187, i64 168, !187, i64 176, !187, i64 184, !187, i64 192, !187, i64 200, !187, i64 208, !187, i64 216, !187, i64 224, !187, i64 232, !187, i64 240, !187, i64 248, !187, i64 256, !187, i64 264, !187, i64 272, !187, i64 280, !187, i64 288, !187, i64 296, !187, i64 304, !187, i64 312, !187, i64 320, !187, i64 328, !187, i64 336, !187, i64 344, !187, i64 352, !187, i64 360}
!285 = !{!"asm_int_op", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24}
!286 = !{!"sched", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !187, i64 40, !187, i64 48, !187, i64 56, !187, i64 64, !187, i64 72, !187, i64 80, !187, i64 88, !187, i64 96, !187, i64 104, !187, i64 112, !187, i64 120, !187, i64 128, !187, i64 136, !187, i64 144, !187, i64 152, !187, i64 160, !187, i64 168, !187, i64 176, !187, i64 184, !187, i64 192, !187, i64 200, !187, i64 208, !187, i64 216, !187, i64 224, !187, i64 232, !187, i64 240, !187, i64 248, !187, i64 256, !187, i64 264, !187, i64 272, !187, i64 280, !187, i64 288}
!287 = !{!"vectorize", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !187, i64 40, !187, i64 48, !187, i64 56, !187, i64 64, !187, i64 72}
!288 = !{!"addr_space", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !187, i64 40, !187, i64 48}
!289 = !{!"calls", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !187, i64 40, !187, i64 48, !187, i64 56, !187, i64 64, !187, i64 72, !187, i64 80, !187, i64 88, !187, i64 96, !187, i64 104, !187, i64 112, !187, i64 120, !187, i64 128, !187, i64 136, !187, i64 144, !187, i64 152, !187, i64 160, !187, i64 168, !187, i64 176, !187, i64 184}
!290 = !{!"c", !187, i64 0}
!291 = !{!"cxx", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !187, i64 40, !187, i64 48, !187, i64 56, !187, i64 64, !187, i64 72, !187, i64 80, !187, i64 88, !187, i64 96}
!292 = !{!"emutls", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !187, i64 40, !187, i64 48, !187, i64 56, !188, i64 64, !188, i64 65}
!293 = !{!"target_option_hooks", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !187, i64 40}
!294 = !{!250, !192, i64 28}
!295 = distinct !{!295, !203, !204}
!296 = distinct !{!296, !203, !204}
!297 = distinct !{!297, !203, !204}
!298 = distinct !{!298, !203, !204}
!299 = distinct !{!299, !203, !204}
!300 = !{!283, !187, i64 1576}
!301 = distinct !{!301, !203, !204}
!302 = !{!303, !192, i64 4}
!303 = !{!"rtl_data", !304, i64 0, !305, i64 40, !306, i64 96, !307, i64 112, !309, i64 208, !310, i64 248, !192, i64 312, !187, i64 320, !187, i64 328, !187, i64 336, !187, i64 344, !187, i64 352, !187, i64 360, !187, i64 368, !187, i64 376, !187, i64 384, !187, i64 392, !193, i64 400, !187, i64 408, !187, i64 416, !187, i64 424, !192, i64 432, !192, i64 436, !192, i64 440, !192, i64 444, !192, i64 448, !192, i64 452, !187, i64 456, !188, i64 464, !188, i64 465, !188, i64 466, !188, i64 467, !188, i64 468, !188, i64 469, !188, i64 470, !188, i64 471, !188, i64 472, !188, i64 473, !188, i64 474, !188, i64 475, !188, i64 476, !188, i64 477, !188, i64 478, !188, i64 479, !188, i64 480, !188, i64 481, !188, i64 482, !188, i64 483, !188, i64 484, !188, i64 485}
!304 = !{!"expr_status", !192, i64 0, !192, i64 4, !192, i64 8, !187, i64 16, !187, i64 24, !187, i64 32}
!305 = !{!"emit_status", !192, i64 0, !192, i64 4, !187, i64 8, !187, i64 16, !187, i64 24, !192, i64 32, !192, i64 36, !192, i64 40, !192, i64 44, !187, i64 48}
!306 = !{!"varasm_status", !187, i64 0, !192, i64 8}
!307 = !{!"incoming_args", !192, i64 0, !192, i64 4, !192, i64 8, !187, i64 16, !308, i64 24, !187, i64 88}
!308 = !{!"ix86_args", !192, i64 0, !192, i64 4, !192, i64 8, !192, i64 12, !192, i64 16, !192, i64 20, !192, i64 24, !192, i64 28, !192, i64 32, !192, i64 36, !192, i64 40, !192, i64 44, !192, i64 48, !192, i64 52, !192, i64 56, !192, i64 60}
!309 = !{!"function_subsections", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32}
!310 = !{!"rtl_eh", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !187, i64 40, !188, i64 48}
!311 = !{!193, !193, i64 0}
!312 = !{!218, !188, i64 32}
!313 = distinct !{!313, !203, !204}
!314 = distinct !{!314, !203, !204}
!315 = distinct !{!315, !203, !204}
!316 = !{!317, !192, i64 0}
!317 = !{!"rtvec_def", !192, i64 0, !188, i64 8}
!318 = distinct !{!318, !203, !204}
!319 = distinct !{!319, !203, !204}
!320 = distinct !{!320, !203, !204}
!321 = distinct !{!321, !203, !204}
!322 = distinct !{!322, !203, !204}
!323 = distinct !{!323, !203, !204}
!324 = distinct !{!324, !203, !204}
!325 = distinct !{!325, !203, !204}
!326 = !{!283, !187, i64 1504}
!327 = distinct !{!327, !203, !204}
!328 = distinct !{!328, !203, !204}
!329 = distinct !{!329, !203, !204}
!330 = distinct !{!330, !203, !204}
!331 = distinct !{!331, !203, !204}
!332 = distinct !{!332, !203, !204}
!333 = distinct !{!333, !203, !204}
!334 = !{!335, !187, i64 40}
!335 = !{!"store_by_pieces_d", !187, i64 0, !187, i64 8, !192, i64 16, !192, i64 20, !193, i64 24, !193, i64 32, !187, i64 40, !187, i64 48, !192, i64 56}
!336 = !{!335, !187, i64 48}
!337 = !{!335, !193, i64 24}
!338 = !{!335, !187, i64 0}
!339 = !{!335, !192, i64 56}
!340 = !{!335, !192, i64 16}
!341 = !{!335, !187, i64 8}
!342 = !{!335, !193, i64 32}
!343 = !{!335, !192, i64 20}
!344 = distinct !{!344, !203, !204}
!345 = distinct !{!345, !203, !204}
!346 = distinct !{!346, !203, !204}
!347 = distinct !{!347, !203, !204}
!348 = distinct !{!348, !203, !204}
!349 = distinct !{!349, !203, !204}
!350 = !{!"function_entry_count", i64 115}
!351 = !{!"VP", i32 0, i64 115, i64 -7546587691537374372, i64 114, i64 2231446877867758160, i64 0}
!352 = distinct !{!352, !203, !204}
!353 = !{!"function_entry_count", i64 81668}
!354 = !{!"branch_weights", i32 0, i32 81668}
!355 = distinct !{!355, !203, !204}
!356 = !{!"branch_weights", i32 81668, i32 0}
!357 = !{!303, !192, i64 8}
!358 = !{!"function_entry_count", i64 79672}
!359 = !{!"branch_weights", i32 0, i32 79672}
!360 = !{!"branch_weights", i32 79672, i32 0}
!361 = !{!"branch_weights", i32 79632, i32 0, i32 40, i32 0, i32 0, i32 0, i32 0, i32 0}
!362 = !{!"branch_weights", i32 0, i32 79632}
!363 = !{!"branch_weights", i32 40, i32 0}
!364 = !{i64 0, i64 4294967296}
!365 = !{!"branch_weights", i32 0, i32 0, i32 40}
!366 = !{!"branch_weights", i32 66684, i32 12948}
!367 = !{!"branch_weights", i32 66684, i32 0}
!368 = !{!"branch_weights", i32 0, i32 66684}
!369 = !{!"branch_weights", i32 66684, i32 0, i32 0}
!370 = !{!"function_entry_count", i64 224169}
!371 = !{!"branch_weights", i32 119603, i32 104566, i32 0}
!372 = !{!"branch_weights", i32 104566, i32 0}
!373 = !{!"branch_weights", i32 0, i32 119603}
!374 = !{!"branch_weights", i32 119603, i32 104566}
!375 = !{!"branch_weights", i32 0, i32 104566}
!376 = !{!"branch_weights", i32 224169, i32 0, i32 148069, i32 46621, i32 0, i32 0, i32 0, i32 0}
!377 = !{!"branch_weights", i32 249343, i32 0}
!378 = !{!"branch_weights", i32 0, i32 249343}
!379 = !{!"branch_weights", i32 0, i32 148069}
!380 = !{!"branch_weights", i32 262334, i32 36}
!381 = !{!"branch_weights", i32 0, i32 262334}
!382 = !{!"branch_weights", i32 260323, i32 0}
!383 = !{!"branch_weights", i32 260293, i32 30}
!384 = !{!"branch_weights", i32 25, i32 5}
!385 = !{!"branch_weights", i32 0, i32 260293}
!386 = !{!"branch_weights", i32 0, i32 46621}
!387 = !{!"branch_weights", i32 194690, i32 0}
!388 = distinct !{!388, !204}
!389 = !{!"branch_weights", i32 18, i32 224151}
!390 = !{!"branch_weights", i32 0, i32 224151}
!391 = !{!"branch_weights", i32 224151, i32 18}
!392 = !{!"branch_weights", i32 0, i32 224169}
!393 = !{!"branch_weights", i32 66776, i32 12896}
!394 = !{!"branch_weights", i32 79672, i32 0, i32 0}
!395 = !{!396, !187, i64 448}
!396 = !{!"lang_hooks", !187, i64 0, !193, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !187, i64 40, !187, i64 48, !187, i64 56, !187, i64 64, !187, i64 72, !187, i64 80, !187, i64 88, !187, i64 96, !187, i64 104, !187, i64 112, !187, i64 120, !187, i64 128, !187, i64 136, !187, i64 144, !187, i64 152, !187, i64 160, !187, i64 168, !187, i64 176, !187, i64 184, !187, i64 192, !187, i64 200, !187, i64 208, !187, i64 216, !187, i64 224, !187, i64 232, !397, i64 240, !398, i64 248, !399, i64 256, !400, i64 272, !401, i64 432, !402, i64 560, !187, i64 584, !187, i64 592, !187, i64 600, !187, i64 608, !187, i64 616, !187, i64 624, !187, i64 632, !187, i64 640, !187, i64 648, !187, i64 656, !187, i64 664, !188, i64 672}
!397 = !{!"lang_hooks_for_tree_inlining", !187, i64 0}
!398 = !{!"lang_hooks_for_callgraph", !187, i64 0}
!399 = !{!"lang_hooks_for_tree_dump", !187, i64 0, !187, i64 8}
!400 = !{!"lang_hooks_for_decls", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !187, i64 40, !187, i64 48, !187, i64 56, !187, i64 64, !187, i64 72, !187, i64 80, !187, i64 88, !187, i64 96, !187, i64 104, !187, i64 112, !187, i64 120, !187, i64 128, !187, i64 136, !187, i64 144, !187, i64 152}
!401 = !{!"lang_hooks_for_types", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !187, i64 40, !187, i64 48, !187, i64 56, !187, i64 64, !187, i64 72, !187, i64 80, !187, i64 88, !187, i64 96, !187, i64 104, !187, i64 112, !188, i64 120}
!402 = !{!"lang_hooks_for_lto", !187, i64 0, !187, i64 8, !187, i64 16}
!403 = !{!"branch_weights", i32 12988, i32 66684}
!404 = !{!"branch_weights", i32 0, i32 12988}
!405 = !{!"branch_weights", i32 132, i32 12856}
!406 = !{!"branch_weights", i32 12856, i32 0}
!407 = !{!"branch_weights", i32 12988, i32 0}
!408 = !{!283, !187, i64 1176}
!409 = !{i8 0, i8 2}
!410 = !{!"expr.c;store_field"}
!411 = !{!"branch_weights", i32 0, i32 40}
!412 = !{!"branch_weights", i32 40, i32 0, i32 0}
!413 = !{!250, !192, i64 24}
!414 = !{!"function_entry_count", i64 652285}
!415 = !{!"branch_weights", i32 0, i32 754950}
!416 = !{!"branch_weights", i32 119569, i32 635381}
!417 = !{!"branch_weights", i32 225, i32 119344}
!418 = !{!"branch_weights", i32 119344, i32 0}
!419 = !{!"function_entry_count", i64 75501}
!420 = !{!"branch_weights", i32 12, i32 75465, i32 0, i32 0, i32 0, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0}
!421 = !{!"branch_weights", i32 75465, i32 0}
!422 = !{!"branch_weights", i32 75453, i32 12}
!423 = !{!"function_entry_count", i64 13673}
!424 = !{!"branch_weights", i32 13673, i32 0}
!425 = !{!"branch_weights", i32 0, i32 13673}
!426 = !{!"branch_weights", i32 16, i32 13657}
!427 = !{!"branch_weights", i32 0, i32 16}
!428 = !{!"branch_weights", i32 83, i32 13590}
!429 = !{!"branch_weights", i32 83, i32 0}
!430 = !{!"branch_weights", i32 0, i32 83}
!431 = !{!"branch_weights", i32 16, i32 67}
!432 = !{!"branch_weights", i32 16, i32 0}
!433 = !{!"branch_weights", i32 16, i32 67, i32 0, i32 0, i32 0, i32 0, i32 0}
!434 = !{!"branch_weights", i32 0, i32 13590}
!435 = !{!436, !192, i64 0}
!436 = !{!"VEC_constructor_elt_base", !192, i64 0, !192, i64 4, !188, i64 8}
!437 = !{!438, !187, i64 8}
!438 = !{!"constructor_elt_d", !187, i64 0, !187, i64 8}
!439 = !{!438, !187, i64 0}
!440 = distinct !{!440, !203, !204}
!441 = distinct !{!441, !203, !204}
!442 = distinct !{!442, !203, !204}
!443 = !{!"function_entry_count", i64 101274}
!444 = !{!"function_entry_count", i64 215749}
!445 = !{!"function_entry_count", i64 213702}
!446 = distinct !{!446, !204}
!447 = !{!"function_entry_count", i64 38467}
!448 = !{!"branch_weights", i32 38467, i32 0}
!449 = !{i32 0, i32 2}
!450 = distinct !{!450, !204}
!451 = distinct !{!451, !203, !204}
!452 = distinct !{!452, !203, !204}
!453 = !{!"function_entry_count", i64 757224}
!454 = !{!"branch_weights", i32 121843, i32 635381}
!455 = !{!"branch_weights", i32 0, i32 757224}
!456 = !{!"branch_weights", i32 68958, i32 688266}
!457 = !{!"branch_weights", i32 14603, i32 635381, i32 37816, i32 466}
!458 = !{!459, !192, i64 0}
!459 = !{!"separate_ops", !192, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !192, i64 40}
!460 = !{!459, !187, i64 8}
!461 = !{!459, !187, i64 16}
!462 = !{!459, !187, i64 24}
!463 = !{!459, !187, i64 32}
!464 = !{!459, !192, i64 40}
!465 = !{!"branch_weights", i32 2274, i32 754950}
!466 = !{!"branch_weights", i32 754877, i32 0, i32 20, i32 53, i32 0}
!467 = !{!"branch_weights", i32 323561, i32 431389}
!468 = !{!"branch_weights", i32 0, i32 2274}
!469 = !{!"branch_weights", i32 2274, i32 0}
!470 = !{!"branch_weights", i32 757224, i32 0}
!471 = !{!"branch_weights", i32 37889, i32 0, i32 339373, i32 0, i32 77648, i32 0, i32 0, i32 218360, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 267, i32 0, i32 14383, i32 220, i32 0, i32 0, i32 0, i32 68958, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 126, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!472 = !{!"branch_weights", i32 0, i32 339373}
!473 = !{!474, !187, i64 8}
!474 = !{!"ssaexpand", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24}
!475 = !{!"branch_weights", i32 236708, i32 102665}
!476 = !{!474, !187, i64 0}
!477 = !{!478, !187, i64 0}
!478 = !{!"_var_map", !187, i64 0, !187, i64 8, !187, i64 16, !192, i64 24, !192, i64 28, !192, i64 32, !187, i64 40, !187, i64 48}
!479 = !{!480, !192, i64 0}
!480 = !{!"partition_elem", !192, i64 0, !187, i64 8, !192, i64 16}
!481 = !{!478, !187, i64 8}
!482 = !{!"branch_weights", i32 0, i32 236708}
!483 = !{!474, !187, i64 16}
!484 = !{!"branch_weights", i32 0, i32 77648}
!485 = !{!283, !188, i64 2028}
!486 = !{!"branch_weights", i32 45, i32 77603}
!487 = !{!"branch_weights", i32 0, i32 314356}
!488 = !{!"branch_weights", i32 70589, i32 243767}
!489 = !{!"branch_weights", i32 77585, i32 236771}
!490 = !{!"branch_weights", i32 314354, i32 2}
!491 = !{!"branch_weights", i32 2, i32 0}
!492 = !{!"branch_weights", i32 77648, i32 236708}
!493 = !{!"branch_weights", i32 64792, i32 12856}
!494 = !{!"branch_weights", i32 77585, i32 63}
!495 = !{!"branch_weights", i32 0, i32 77585}
!496 = !{!"branch_weights", i32 314356, i32 0}
!497 = !{!"branch_weights", i32 236708, i32 77648}
!498 = !{!"branch_weights", i32 236708, i32 0}
!499 = distinct !{!499, !203, !204}
!500 = !{!"branch_weights", i32 0, i32 267}
!501 = !{!"branch_weights", i32 267, i32 0}
!502 = !{!"branch_weights", i32 0, i32 267, i32 0}
!503 = !{!"VP", i32 0, i64 267, i64 -6774708585206560366, i64 267}
!504 = !{!"branch_weights", i32 14383, i32 0, i32 0, i32 0}
!505 = !{!"branch_weights", i32 14383, i32 0}
!506 = !{!"branch_weights", i32 0, i32 14383}
!507 = distinct !{!507, !203, !204}
!508 = !{!283, !187, i64 1112}
!509 = distinct !{!509, !203, !204}
!510 = !{!"branch_weights", i32 0, i32 220}
!511 = distinct !{!511, !203, !204}
!512 = !{!"branch_weights", i32 0, i32 14603}
!513 = !{!"branch_weights", i32 12340, i32 2263}
!514 = !{!"branch_weights", i32 6, i32 14597}
!515 = !{!"branch_weights", i32 14603, i32 0}
!516 = !{!"branch_weights", i32 14597, i32 6}
!517 = !{!"branch_weights", i32 6, i32 0}
!518 = !{!"branch_weights", i32 0, i32 6}
!519 = !{!"VP", i32 0, i64 6, i64 -6774708585206560366, i64 6}
!520 = !{!"branch_weights", i32 14603, i32 0, i32 0}
!521 = !{!"branch_weights", i32 14386, i32 217}
!522 = !{!"branch_weights", i32 0, i32 14386}
!523 = !{!"branch_weights", i32 68958, i32 0}
!524 = !{!"branch_weights", i32 0, i32 68958}
!525 = !{!396, !187, i64 176}
!526 = !{!"branch_weights", i32 0, i32 68958, i32 0}
!527 = !{!528, !187, i64 16}
!528 = !{!"tree_statement_list_node", !187, i64 0, !187, i64 8, !187, i64 16}
!529 = distinct !{!529, !203, !204}
!530 = !{!"branch_weights", i32 126, i32 0}
!531 = !{!"branch_weights", i32 0, i32 126}
!532 = !{!"branch_weights", i32 0, i32 126, i32 0}
!533 = !{!"VP", i32 0, i64 126, i64 -6774708585206560366, i64 126}
!534 = !{!"VP", i32 0, i64 126, i64 -2606002600943711288, i64 126}
!535 = !{!"function_entry_count", i64 39034}
!536 = !{!"branch_weights", i32 0, i32 39034}
!537 = !{!"branch_weights", i32 39034, i32 0}
!538 = !{!"branch_weights", i32 38473, i32 0, i32 49, i32 512, i32 0}
!539 = !{!"branch_weights", i32 0, i32 561}
!540 = !{!"branch_weights", i32 19296, i32 19738}
!541 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 49, i32 512, i32 0, i32 0, i32 3377, i32 6, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8176, i32 0, i32 303, i32 0, i32 12, i32 0, i32 0, i32 0, i32 7043, i32 0, i32 2485, i32 0, i32 0, i32 16797, i32 268, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!542 = !{!"branch_weights", i32 90, i32 471}
!543 = !{!"branch_weights", i32 59, i32 31}
!544 = !{!"branch_weights", i32 0, i32 31}
!545 = !{!"branch_weights", i32 0, i32 90}
!546 = !{!"branch_weights", i32 0, i32 471}
!547 = !{!"branch_weights", i32 367, i32 104}
!548 = !{!"branch_weights", i32 0, i32 104}
!549 = !{!283, !187, i64 1216}
!550 = !{!283, !187, i64 1224}
!551 = !{!"branch_weights", i32 0, i32 3377, i32 0}
!552 = !{!"branch_weights", i32 3377, i32 0}
!553 = !{!"branch_weights", i32 0, i32 3377}
!554 = !{!"branch_weights", i32 3377, i32 0, i32 0}
!555 = !{!"branch_weights", i32 771, i32 2606}
!556 = !{!"branch_weights", i32 2747, i32 630}
!557 = !{!"branch_weights", i32 7546009, i32 0}
!558 = !{!"branch_weights", i32 0, i32 6, i32 0}
!559 = !{!"branch_weights", i32 6, i32 0, i32 0}
!560 = !{!"branch_weights", i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!561 = !{!"branch_weights", i32 7043, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!562 = !{!"branch_weights", i32 0, i32 19550}
!563 = !{!"branch_weights", i32 18938, i32 612}
!564 = !{!"branch_weights", i32 0, i32 16797, i32 268, i32 0, i32 2485, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!565 = !{!"branch_weights", i32 14, i32 2471}
!566 = !{!"branch_weights", i32 14, i32 0}
!567 = !{!"branch_weights", i32 17065, i32 2485}
!568 = !{!"branch_weights", i32 0, i32 17065}
!569 = !{!"branch_weights", i32 19550, i32 0}
!570 = !{!"branch_weights", i32 19305, i32 245}
!571 = !{!"branch_weights", i32 0, i32 11874}
!572 = !{!"function_entry_count", i64 3383}
!573 = !{!"expr.c;get_def_for_expr"}
!574 = !{!"branch_weights", i32 3383, i32 0}
!575 = !{!"branch_weights", i32 0, i32 3383}
!576 = !{!"branch_weights", i32 2729, i32 654}
!577 = !{!"branch_weights", i32 0, i32 654, i32 0, i32 0}
!578 = !{!"branch_weights", i32 70, i32 584}
!579 = !{!"branch_weights", i32 0, i32 70}
!580 = !{!"branch_weights", i32 0, i32 654}
!581 = !{!"function_entry_count", i64 31424}
!582 = !{!"expr.c;expand_operands"}
!583 = !{!"branch_weights", i32 0, i32 31424}
!584 = !{!"branch_weights", i32 31424, i32 0}
!585 = distinct !{!585, !203, !204}
!586 = distinct !{!586, !203, !204}
!587 = !{i32 0, i32 256}
!588 = !{!"function_entry_count", i64 6}
!589 = !{!"expr.c;is_aligning_offset"}
!590 = !{!"branch_weights", i32 6, i32 0, i32 0, i32 0}
!591 = distinct !{!591, !203, !204}
!592 = distinct !{!592, !203, !204}
!593 = distinct !{!593, !203, !204}
!594 = !{!"function_entry_count", i64 23}
!595 = !{!"branch_weights", i32 0, i32 23}
!596 = !{!597, !187, i64 8}
!597 = !{!"function", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !187, i64 40, !187, i64 48, !187, i64 56, !187, i64 64, !187, i64 72, !187, i64 80, !187, i64 88, !187, i64 96, !192, i64 104, !192, i64 108, !192, i64 112, !192, i64 116, !192, i64 120, !192, i64 124, !187, i64 128, !192, i64 136, !192, i64 137, !192, i64 138, !192, i64 138, !192, i64 138, !192, i64 138, !192, i64 138, !192, i64 138, !192, i64 138, !192, i64 139, !192, i64 139, !192, i64 139, !192, i64 139, !192, i64 139, !192, i64 139, !192, i64 139}
!598 = !{!599, !192, i64 68}
!599 = !{!"control_flow_graph", !187, i64 0, !187, i64 8, !187, i64 16, !192, i64 24, !192, i64 28, !192, i64 32, !187, i64 40, !192, i64 48, !188, i64 52, !188, i64 60, !192, i64 68, !192, i64 72}
!600 = !{!"branch_weights", i32 23, i32 0}
!601 = !{!283, !187, i64 1240}
!602 = !{!283, !187, i64 1232}
!603 = !{!"function_entry_count", i64 38}
!604 = !{!"branch_weights", i32 38, i32 0}
!605 = !{!396, !187, i64 656}
!606 = distinct !{!606, !203, !204}
!607 = distinct !{!607, !203, !204}
!608 = distinct !{!608, !203, !204}
!609 = distinct !{!609, !203, !204}
!610 = distinct !{!610, !203, !204}
!611 = distinct !{!611, !203, !204}
!612 = distinct !{!612, !203, !204}
!613 = !{!"function_entry_count", i64 252}
!614 = !{!"expr.c;expand_expr_addr_expr_1"}
!615 = !{!"branch_weights", i32 63, i32 189}
!616 = !{!"branch_weights", i32 0, i32 63}
!617 = !{!"branch_weights", i32 126, i32 0, i32 0, i32 0, i32 0, i32 63}
!618 = !{!"branch_weights", i32 189, i32 0}
!619 = !{!"branch_weights", i32 63, i32 0}
!620 = !{!"branch_weights", i32 63, i32 63}
