; ModuleID = 'cfgexpand.c'
source_filename = "cfgexpand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ssaexpand = type { ptr, ptr, ptr, ptr }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
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
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.stack_var = type { ptr, i64, i64, i32, i64, i64, ptr }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, ptr, i32 }
%struct._var_map = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.def_optype_d = type { ptr, ptr }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.separate_ops = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_complex = type { %struct.tree_common, ptr, ptr }
%struct.tree_vector = type { %struct.tree_common, ptr }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@currently_expanding_to_rtl = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"cfgexpand.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@stack_vars_num = internal unnamed_addr global i64 0, align 8
@stack_vars_sorted = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@pass_expand = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.2, ptr null, ptr @gimple_expand_cfg, ptr null, ptr null, i32 0, i32 116, i32 1068, i32 128, i32 295, i32 28, i32 3 } }, align 8
@SA = dso_local global %struct.ssaexpand zeroinitializer, align 8
@currently_expanding_gimple_stmt = dso_local local_unnamed_addr global ptr null, align 8
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@has_protected_decls = internal unnamed_addr global i1 false, align 1
@has_short_buffer = internal unnamed_addr global i1 false, align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.4 = private unnamed_addr constant [35 x i8] c"size of variable %q+D is too large\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@.str.5 = private unnamed_addr constant [18 x i8] c"./tree-ssa-live.h\00", align 1
@flag_stack_protect = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@stack_vars_alloc = internal unnamed_addr global i64 0, align 8
@stack_vars = internal unnamed_addr global ptr null, align 8
@prologue_locator = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@warn_stack_protect = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"not protecting local variables: variable length buffer\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"not protecting function: no buffer at least %d bytes long\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@lab_rtx_for_bb = internal unnamed_addr global ptr null, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@generating_concat_p = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [50 x i8] c"\0A\0A;;\0A;; Full RTL generated for this function:\0A;;\0A\00", align 1
@debug_hooks = external local_unnamed_addr global ptr, align 8
@ix86_preferred_stack_boundary = external local_unnamed_addr global i32, align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"Partition %lu: size %ld align %u\0A\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c", offset %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"\0A;; Generating RTL for gimple basic block %d\0A\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"\0A;; \00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@ix86_branch_cost = external local_unnamed_addr global i32, align 4
@flag_strict_aliasing = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@const_true_rtx = external local_unnamed_addr global ptr, align 8
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@ix86_incoming_stack_boundary = external local_unnamed_addr global i32, align 4
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !149 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !150
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !149 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !150
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !149 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !159
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !160

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !154
  %11 = load i8, ptr %3, align 1, !tbaa !161
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !149 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !159
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !160

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !154
  %11 = load i8, ptr %3, align 1, !tbaa !161
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !149 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !150
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !159
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !160

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #22
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !154
  %11 = load i8, ptr %3, align 1, !tbaa !161
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !149 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !150
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !149 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !162
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !160

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !162
  store i8 %12, ptr %4, align 1, !tbaa !161
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !149 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !162
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !160

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !162
  store i8 %12, ptr %4, align 1, !tbaa !161
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !149 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !162
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !160

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !162
  store i8 %12, ptr %4, align 1, !tbaa !161
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !149 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #22
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !149 {
  %2 = load i32, ptr %0, align 8, !tbaa !164
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !149 {
  %2 = load i32, ptr %0, align 8, !tbaa !164
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !149 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !150
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !165
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !149 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !150
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !165
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !149 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !149 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !149 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !149 {
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
  br i1 %23, label %7, label %24, !llvm.loop !166

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !149 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @gimple_assign_rhs_to_tree(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !169 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %6 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %7
  ], !prof !170

4:                                                ; preds = %1, %1
  %5 = lshr i32 %2, 16
  br label %7

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %7

7:                                                ; preds = %1, %4, %6
  %8 = phi i32 [ %5, %4 ], [ 0, %6 ], [ 59, %1 ]
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !161
  switch i8 %11, label %233 [
    i8 1, label %12
    i8 2, label %106
    i8 3, label %177
  ], !prof !171

12:                                               ; preds = %7
  %13 = load i32, ptr %0, align 8
  %14 = trunc i32 %13 to i8
  switch i8 %14, label %17 [
    i8 6, label %15
    i8 1, label %15
    i8 8, label %18
  ], !prof !172

15:                                               ; preds = %12, %12
  %16 = lshr i32 %13, 16
  br label %18

17:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %18

18:                                               ; preds = %17, %15, %12
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ], [ 59, %12 ]
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !161
  %23 = icmp eq i8 %22, 3
  br i1 %23, label %24, label %44, !prof !173

24:                                               ; preds = %18
  %25 = load i32, ptr %0, align 8
  %26 = and i32 %25, 255
  %27 = add nsw i32 %26, -1
  %28 = icmp ult i32 %27, 9
  tail call void @llvm.assume(i1 %28)
  %29 = zext nneg i32 %26 to i64
  %30 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !165
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %32
  %34 = load i64, ptr %33, align 8, !tbaa !174
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %37

37:                                               ; preds = %36, %24
  %38 = getelementptr inbounds i8, ptr %0, i64 %34
  %39 = getelementptr inbounds ptr, ptr %38, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !150
  %41 = load i64, ptr %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = and i32 %42, 65535
  br label %44

44:                                               ; preds = %18, %37
  %45 = phi i32 [ %43, %37 ], [ %19, %18 ]
  %46 = load i32, ptr %0, align 8
  %47 = and i32 %46, 255
  %48 = add nsw i32 %47, -1
  %49 = icmp ult i32 %48, 9
  tail call void @llvm.assume(i1 %49)
  %50 = zext nneg i32 %47 to i64
  %51 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !165
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !174
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58, !prof !173

57:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %58

58:                                               ; preds = %57, %44
  %59 = getelementptr inbounds i8, ptr %0, i64 %55
  %60 = load ptr, ptr %59, align 8, !tbaa !150
  %61 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !161
  %63 = load i32, ptr %0, align 8
  %64 = and i32 %63, 255
  %65 = add nsw i32 %64, -10
  %66 = icmp ult i32 %65, -9
  br i1 %66, label %80, label %67, !prof !173

67:                                               ; preds = %58
  %68 = zext nneg i32 %64 to i64
  %69 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !165
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %71
  %73 = load i64, ptr %72, align 8, !tbaa !174
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76, !prof !173

75:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %76

76:                                               ; preds = %75, %67
  %77 = getelementptr inbounds i8, ptr %0, i64 %73
  %78 = getelementptr inbounds ptr, ptr %77, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !150
  br label %80

80:                                               ; preds = %58, %76
  %81 = phi ptr [ %79, %76 ], [ null, %58 ]
  %82 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !161
  %84 = icmp ugt i32 %83, 2
  br i1 %84, label %85, label %103, !prof !175

85:                                               ; preds = %80
  %86 = load i32, ptr %0, align 8
  %87 = and i32 %86, 255
  %88 = add nsw i32 %87, -10
  %89 = icmp ult i32 %88, -9
  br i1 %89, label %103, label %90, !prof !173

90:                                               ; preds = %85
  %91 = zext nneg i32 %87 to i64
  %92 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !165
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !174
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99, !prof !173

98:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %99

99:                                               ; preds = %98, %90
  %100 = getelementptr inbounds i8, ptr %0, i64 %96
  %101 = getelementptr inbounds ptr, ptr %100, i64 2
  %102 = load ptr, ptr %101, align 8, !tbaa !150
  br label %103

103:                                              ; preds = %80, %85, %99
  %104 = phi ptr [ null, %80 ], [ %102, %99 ], [ null, %85 ]
  %105 = tail call ptr @build2_stat(i32 noundef %45, ptr noundef %62, ptr noundef %81, ptr noundef %104) #22
  br label %234

106:                                              ; preds = %7
  %107 = load i32, ptr %0, align 8
  %108 = trunc i32 %107 to i8
  switch i8 %108, label %111 [
    i8 6, label %109
    i8 1, label %109
    i8 8, label %112
  ], !prof !176

109:                                              ; preds = %106, %106
  %110 = lshr i32 %107, 16
  br label %112

111:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %112

112:                                              ; preds = %111, %109, %106
  %113 = phi i32 [ %110, %109 ], [ 0, %111 ], [ 59, %106 ]
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !161
  %117 = icmp eq i8 %116, 3
  br i1 %117, label %118, label %138, !prof !177

118:                                              ; preds = %112
  %119 = load i32, ptr %0, align 8
  %120 = and i32 %119, 255
  %121 = add nsw i32 %120, -1
  %122 = icmp ult i32 %121, 9
  tail call void @llvm.assume(i1 %122)
  %123 = zext nneg i32 %120 to i64
  %124 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !165
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %126
  %128 = load i64, ptr %127, align 8, !tbaa !174
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %118
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %131

131:                                              ; preds = %130, %118
  %132 = getelementptr inbounds i8, ptr %0, i64 %128
  %133 = getelementptr inbounds ptr, ptr %132, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !150
  %135 = load i64, ptr %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = and i32 %136, 65535
  br label %138

138:                                              ; preds = %112, %131
  %139 = phi i32 [ %137, %131 ], [ %113, %112 ]
  %140 = load i32, ptr %0, align 8
  %141 = and i32 %140, 255
  %142 = add nsw i32 %141, -1
  %143 = icmp ult i32 %142, 9
  tail call void @llvm.assume(i1 %143)
  %144 = zext nneg i32 %141 to i64
  %145 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !165
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %147
  %149 = load i64, ptr %148, align 8, !tbaa !174
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %152, !prof !177

151:                                              ; preds = %138
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %152

152:                                              ; preds = %151, %138
  %153 = getelementptr inbounds i8, ptr %0, i64 %149
  %154 = load ptr, ptr %153, align 8, !tbaa !150
  %155 = getelementptr inbounds %struct.tree_common, ptr %154, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !161
  %157 = load i32, ptr %0, align 8
  %158 = and i32 %157, 255
  %159 = add nsw i32 %158, -10
  %160 = icmp ult i32 %159, -9
  br i1 %160, label %174, label %161, !prof !177

161:                                              ; preds = %152
  %162 = zext nneg i32 %158 to i64
  %163 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !165
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %165
  %167 = load i64, ptr %166, align 8, !tbaa !174
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %170, !prof !177

169:                                              ; preds = %161
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %170

170:                                              ; preds = %169, %161
  %171 = getelementptr inbounds i8, ptr %0, i64 %167
  %172 = getelementptr inbounds ptr, ptr %171, i64 1
  %173 = load ptr, ptr %172, align 8, !tbaa !150
  br label %174

174:                                              ; preds = %152, %170
  %175 = phi ptr [ %173, %170 ], [ null, %152 ]
  %176 = tail call ptr @build1_stat(i32 noundef %139, ptr noundef %156, ptr noundef %175) #22
  br label %234

177:                                              ; preds = %7
  %178 = load i32, ptr %0, align 8
  %179 = and i32 %178, 255
  %180 = add nsw i32 %179, -10
  %181 = icmp ult i32 %180, -9
  br i1 %181, label %195, label %182, !prof !178

182:                                              ; preds = %177
  %183 = zext nneg i32 %179 to i64
  %184 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !165
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %186
  %188 = load i64, ptr %187, align 8, !tbaa !174
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %191, !prof !178

190:                                              ; preds = %182
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %191

191:                                              ; preds = %190, %182
  %192 = getelementptr inbounds i8, ptr %0, i64 %188
  %193 = getelementptr inbounds ptr, ptr %192, i64 1
  %194 = load ptr, ptr %193, align 8, !tbaa !150
  br label %195

195:                                              ; preds = %177, %191
  %196 = phi ptr [ %194, %191 ], [ null, %177 ]
  %197 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %198 = load i32, ptr %197, align 8, !tbaa !161
  %199 = icmp ne i32 %198, 0
  %200 = icmp ne ptr %196, null
  %201 = select i1 %199, i1 %200, i1 false, !prof !179
  br i1 %201, label %202, label %213, !prof !179

202:                                              ; preds = %195
  %203 = load i64, ptr %196, align 8
  %204 = and i64 %203, 65535
  %205 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !165
  %207 = add i32 %206, -4
  %208 = icmp ult i32 %207, 7
  br i1 %208, label %209, label %213, !prof !180

209:                                              ; preds = %202
  %210 = getelementptr inbounds %struct.tree_exp, ptr %196, i64 0, i32 1
  %211 = load i32, ptr %210, align 8, !tbaa !161
  %212 = icmp eq i32 %198, %211
  br i1 %212, label %213, label %231, !prof !181

213:                                              ; preds = %209, %202, %195
  %214 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %215 = load ptr, ptr %214, align 8, !tbaa !161
  %216 = icmp ne ptr %215, null
  %217 = load i32, ptr @currently_expanding_to_rtl, align 4
  %218 = icmp ne i32 %217, 0
  %219 = select i1 %216, i1 %218, i1 false, !prof !182
  br i1 %219, label %220, label %234, !prof !182

220:                                              ; preds = %213
  %221 = load i64, ptr %196, align 8
  %222 = and i64 %221, 65535
  %223 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !165
  %225 = add i32 %224, -4
  %226 = icmp ult i32 %225, 7
  br i1 %226, label %227, label %234, !prof !183

227:                                              ; preds = %220
  %228 = tail call ptr @tree_block(ptr noundef nonnull %196) #22
  %229 = load ptr, ptr %228, align 8, !tbaa !150
  %230 = icmp eq ptr %215, %229
  br i1 %230, label %234, label %231, !prof !184

231:                                              ; preds = %227, %209
  %232 = tail call ptr @copy_node_stat(ptr noundef %196) #22
  br label %234

233:                                              ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 89, ptr noundef nonnull @.str.1) #22
  br label %234

234:                                              ; preds = %227, %174, %213, %220, %231, %233, %103
  %235 = phi ptr [ %105, %103 ], [ %176, %174 ], [ %232, %231 ], [ %196, %220 ], [ %196, %213 ], [ undef, %233 ], [ %196, %227 ]
  %236 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %237 = load i32, ptr %236, align 8, !tbaa !161
  %238 = icmp ne i32 %237, 0
  %239 = icmp ne ptr %235, null
  %240 = select i1 %238, i1 %239, i1 false, !prof !185
  br i1 %240, label %241, label %250, !prof !185

241:                                              ; preds = %234
  %242 = load i64, ptr %235, align 8
  %243 = and i64 %242, 65535
  %244 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %243
  %245 = load i32, ptr %244, align 4, !tbaa !165
  %246 = add i32 %245, -4
  %247 = icmp ult i32 %246, 7
  br i1 %247, label %248, label %250, !prof !186

248:                                              ; preds = %241
  %249 = getelementptr inbounds %struct.tree_exp, ptr %235, i64 0, i32 1
  store i32 %237, ptr %249, align 8, !tbaa !161
  br label %250

250:                                              ; preds = %248, %241, %234
  %251 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %252 = load ptr, ptr %251, align 8, !tbaa !161
  %253 = icmp ne ptr %252, null
  %254 = load i32, ptr @currently_expanding_to_rtl, align 4
  %255 = icmp ne i32 %254, 0
  %256 = select i1 %253, i1 %255, i1 false, !prof !187
  br i1 %256, label %257, label %266, !prof !187

257:                                              ; preds = %250
  %258 = load i64, ptr %235, align 8
  %259 = and i64 %258, 65535
  %260 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %259
  %261 = load i32, ptr %260, align 4, !tbaa !165
  %262 = add i32 %261, -4
  %263 = icmp ult i32 %262, 7
  br i1 %263, label %264, label %266, !prof !188

264:                                              ; preds = %257
  %265 = tail call ptr @tree_block(ptr noundef nonnull %235) #22
  store ptr %252, ptr %265, align 8, !tbaa !150
  br label %266

266:                                              ; preds = %264, %257, %250
  ret ptr %235
}

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_block(ptr noundef) local_unnamed_addr #3

declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @estimated_stack_frame_size() local_unnamed_addr #10 !prof !189 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !150
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  %4 = load ptr, ptr @cfun, align 8, !tbaa !150
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !161
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8, !prof !190

8:                                                ; preds = %0, %8
  %9 = phi ptr [ %15, %8 ], [ %6, %0 ]
  %10 = getelementptr inbounds %struct.tree_list, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !161
  %12 = load i64, ptr %11, align 8
  %13 = or i64 %12, 16777216
  store i64 %13, ptr %11, align 8
  %14 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !161
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %8, !prof !191, !llvm.loop !192

17:                                               ; preds = %8, %0
  %18 = load ptr, ptr @current_function_decl, align 8, !tbaa !150
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !161
  tail call fastcc void @clear_tree_used(ptr noundef %20)
  store i1 false, ptr @has_protected_decls, align 1
  store i1 false, ptr @has_short_buffer, align 1
  %21 = load ptr, ptr @cfun, align 8, !tbaa !150
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !161
  %24 = icmp eq ptr %23, null
  br i1 %24, label %163, label %25, !prof !190

25:                                               ; preds = %17, %156
  %26 = phi ptr [ %161, %156 ], [ %23, %17 ]
  %27 = phi i64 [ %157, %156 ], [ 0, %17 ]
  %28 = getelementptr inbounds %struct.tree_list, ptr %26, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !161
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 16777216
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %156, label %33, !prof !193

33:                                               ; preds = %25
  %34 = and i64 %30, 65535
  %35 = icmp eq i64 %34, 141
  br i1 %35, label %36, label %39, !prof !194

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %29, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !161
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi ptr [ %38, %36 ], [ %29, %33 ]
  %41 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !161
  %43 = load ptr, ptr @global_trees, align 16, !tbaa !150
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %89, label %45, !prof !195

45:                                               ; preds = %39
  %46 = load i64, ptr %40, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 32
  br i1 %48, label %49, label %89, !prof !196

49:                                               ; preds = %45
  %50 = and i64 %46, 67108864
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %57, !prof !197

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 2
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 33554432
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %74, label %57, !prof !198

57:                                               ; preds = %52, %49
  %58 = load i64, ptr %42, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 14
  br i1 %60, label %61, label %63, !prof !199

61:                                               ; preds = %57
  %62 = tail call i32 @vector_type_mode(ptr noundef nonnull %42) #22
  br label %68

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.tree_type, ptr %42, i64 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  br label %68

68:                                               ; preds = %63, %61
  %69 = phi i32 [ %62, %61 ], [ %67, %63 ]
  %70 = load ptr, ptr %41, align 8, !tbaa !161
  %71 = getelementptr inbounds %struct.tree_type, ptr %70, i64 0, i32 7
  %72 = load i32, ptr %71, align 8, !tbaa !161
  %73 = tail call i32 @ix86_minimum_alignment(ptr noundef nonnull %42, i32 noundef %69, i32 noundef %72) #22
  br label %80

74:                                               ; preds = %52
  %75 = trunc i64 %54 to i32
  %76 = and i32 %75, 255
  %77 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !161
  %79 = tail call i32 @ix86_minimum_alignment(ptr noundef nonnull %40, i32 noundef %76, i32 noundef %78) #22
  br label %80

80:                                               ; preds = %74, %68
  %81 = phi i32 [ %73, %68 ], [ %79, %74 ]
  %82 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !200
  %83 = icmp ult i32 %82, %81
  br i1 %83, label %84, label %89, !prof !209

84:                                               ; preds = %80
  %85 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !210
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %88, label %87, !prof !211

87:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 944, ptr noundef nonnull @.str.1) #22
  br label %88

88:                                               ; preds = %87, %84
  store i32 %81, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !200
  br label %89

89:                                               ; preds = %88, %80, %45, %39
  %90 = load i64, ptr %29, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 141
  br i1 %92, label %93, label %98, !prof !194

93:                                               ; preds = %89
  %94 = load i64, ptr %40, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 32
  br i1 %96, label %97, label %98, !prof !212

97:                                               ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 957, ptr noundef nonnull @.str.1) #22
  br label %98

98:                                               ; preds = %97, %93, %89
  %99 = load i64, ptr %40, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 32
  br i1 %101, label %106, label %102, !prof !196

102:                                              ; preds = %98
  %103 = load i64, ptr %29, align 8
  %104 = and i64 %103, 65535
  %105 = icmp eq i64 %104, 141
  br i1 %105, label %106, label %153

106:                                              ; preds = %102, %98
  %107 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 2
  %108 = load i64, ptr %107, align 8
  %109 = and i64 %108, 100663296
  %110 = and i64 %99, 67108864
  %111 = or i64 %109, %110
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %153, !prof !213

113:                                              ; preds = %106
  %114 = load i64, ptr %29, align 8
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 141
  br i1 %116, label %125, label %117, !prof !214

117:                                              ; preds = %113
  %118 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %100, i64 11
  %119 = load i8, ptr %118, align 1, !tbaa !161
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %125, label %121, !prof !215

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %40, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !161
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %153, !prof !216

125:                                              ; preds = %121, %117, %113
  %126 = load ptr, ptr %41, align 8, !tbaa !161
  %127 = load ptr, ptr @global_trees, align 16, !tbaa !150
  %128 = icmp eq ptr %126, %127
  br i1 %128, label %153, label %129, !prof !217

129:                                              ; preds = %125
  br i1 %101, label %130, label %135, !prof !198

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %40, i64 0, i32 4
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 2
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %153, !prof !198

135:                                              ; preds = %130, %129
  %136 = tail call zeroext i8 @use_register_for_decl(ptr noundef nonnull %40) #22
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %153, !prof !217

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 4
  %140 = load ptr, ptr %139, align 8, !tbaa !161
  %141 = tail call i32 @host_integerp(ptr noundef %140, i32 noundef 1) #22
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %138
  %144 = load i32, ptr @flag_stack_protect, align 4, !tbaa !165
  %145 = icmp eq i32 %144, 0
  %146 = load i32, ptr @optimize, align 4
  %147 = icmp slt i32 %146, 2
  %148 = select i1 %145, i1 %147, i1 false
  br i1 %148, label %150, label %149

149:                                              ; preds = %143
  tail call fastcc void @add_stack_var(ptr noundef nonnull %29)
  br label %153

150:                                              ; preds = %143
  %151 = load ptr, ptr %139, align 8, !tbaa !161
  %152 = tail call i64 @tree_low_cst(ptr noundef %151, i32 noundef 1) #22
  br label %153

153:                                              ; preds = %138, %135, %130, %125, %102, %106, %121, %149, %150
  %154 = phi i64 [ %152, %150 ], [ 0, %106 ], [ 0, %149 ], [ 0, %121 ], [ 0, %102 ], [ 0, %125 ], [ 0, %130 ], [ 0, %135 ], [ 0, %138 ]
  %155 = add nsw i64 %154, %27
  br label %156

156:                                              ; preds = %153, %25
  %157 = phi i64 [ %155, %153 ], [ %27, %25 ]
  %158 = load i64, ptr %29, align 8
  %159 = or i64 %158, 16777216
  store i64 %159, ptr %29, align 8
  %160 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !161
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %25, !prof !191, !llvm.loop !218

163:                                              ; preds = %156, %17
  %164 = phi i64 [ 0, %17 ], [ %157, %156 ]
  %165 = tail call fastcc i64 @account_used_vars_for_block(ptr noundef %3, i8 noundef zeroext 1)
  %166 = add nsw i64 %165, %164
  %167 = load i64, ptr @stack_vars_num, align 8, !tbaa !174
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %235, label %169, !prof !219

169:                                              ; preds = %163
  %170 = shl i64 %167, 3
  %171 = tail call ptr @xmalloc(i64 noundef %170) #22
  store ptr %171, ptr @stack_vars_sorted, align 8, !tbaa !150
  %172 = load i64, ptr @stack_vars_num, align 8, !tbaa !174
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %232, label %174

174:                                              ; preds = %169, %174
  %175 = phi i64 [ %177, %174 ], [ 0, %169 ]
  %176 = getelementptr inbounds i64, ptr %171, i64 %175
  store i64 %175, ptr %176, align 8, !tbaa !174
  %177 = add nuw i64 %175, 1
  %178 = icmp eq i64 %177, %172
  br i1 %178, label %179, label %174, !llvm.loop !220

179:                                              ; preds = %174, %228
  %180 = phi i64 [ %229, %228 ], [ 0, %174 ]
  %181 = phi i64 [ %230, %228 ], [ 0, %174 ]
  %182 = load ptr, ptr @stack_vars_sorted, align 8, !tbaa !150
  %183 = getelementptr inbounds i64, ptr %182, i64 %181
  %184 = load i64, ptr %183, align 8, !tbaa !174
  %185 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %186 = getelementptr inbounds %struct.stack_var, ptr %185, i64 %184, i32 4
  %187 = load i64, ptr %186, align 8, !tbaa !221
  %188 = icmp eq i64 %187, %184
  br i1 %188, label %189, label %228

189:                                              ; preds = %179
  %190 = getelementptr inbounds %struct.stack_var, ptr %185, i64 %184, i32 2
  %191 = load i64, ptr %190, align 8, !tbaa !223
  %192 = add nsw i64 %191, %180
  %193 = icmp eq i64 %184, -1
  br i1 %193, label %228, label %194

194:                                              ; preds = %189, %223
  %195 = phi i64 [ %226, %223 ], [ %184, %189 ]
  %196 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %197 = getelementptr inbounds %struct.stack_var, ptr %196, i64 %195
  %198 = load ptr, ptr %197, align 8, !tbaa !224
  %199 = load i64, ptr %198, align 8
  %200 = and i64 %199, 65535
  %201 = icmp eq i64 %200, 141
  br i1 %201, label %202, label %222

202:                                              ; preds = %194
  %203 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !225
  %204 = load ptr, ptr @SA, align 8, !tbaa !227
  %205 = load ptr, ptr %204, align 8, !tbaa !228
  %206 = getelementptr inbounds %struct.tree_ssa_name, ptr %198, i64 0, i32 3
  %207 = load i32, ptr %206, align 8, !tbaa !161
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.partition_def, ptr %205, i64 0, i32 1, i64 %208
  %210 = load i32, ptr %209, align 8, !tbaa !230
  %211 = getelementptr inbounds %struct._var_map, ptr %204, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !232
  %213 = icmp eq ptr %212, null
  br i1 %213, label %218, label %214

214:                                              ; preds = %202
  %215 = sext i32 %210 to i64
  %216 = getelementptr inbounds i32, ptr %212, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !165
  br label %218

218:                                              ; preds = %214, %202
  %219 = phi i32 [ %217, %214 ], [ %210, %202 ]
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds ptr, ptr %203, i64 %220
  store ptr null, ptr %221, align 8, !tbaa !150
  br label %223

222:                                              ; preds = %194
  tail call void @set_decl_rtl(ptr noundef nonnull %198, ptr noundef null) #22
  br label %223

223:                                              ; preds = %222, %218
  %224 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %225 = getelementptr inbounds %struct.stack_var, ptr %224, i64 %195, i32 5
  %226 = load i64, ptr %225, align 8, !tbaa !233
  %227 = icmp eq i64 %226, -1
  br i1 %227, label %228, label %194, !llvm.loop !234

228:                                              ; preds = %223, %189, %179
  %229 = phi i64 [ %180, %179 ], [ %192, %189 ], [ %192, %223 ]
  %230 = add nuw i64 %181, 1
  %231 = icmp eq i64 %230, %172
  br i1 %231, label %232, label %179, !llvm.loop !235

232:                                              ; preds = %228, %169
  %233 = phi i64 [ 0, %169 ], [ %229, %228 ]
  %234 = add nsw i64 %233, %166
  tail call fastcc void @fini_vars_expansion()
  br label %235

235:                                              ; preds = %232, %163
  %236 = phi i64 [ %234, %232 ], [ %166, %163 ]
  ret i64 %236
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @expand_one_var(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #9 !prof !236 !PGOFuncName !237 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %10, !prof !194

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !161
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !161
  %14 = load ptr, ptr @global_trees, align 16, !tbaa !150
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %60, label %16, !prof !195

16:                                               ; preds = %10
  %17 = load i64, ptr %11, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 32
  br i1 %19, label %20, label %60, !prof !196

20:                                               ; preds = %16
  %21 = and i64 %17, 67108864
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28, !prof !197

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 33554432
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %45, label %28, !prof !198

28:                                               ; preds = %23, %20
  %29 = load i64, ptr %13, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 14
  br i1 %31, label %32, label %34, !prof !199

32:                                               ; preds = %28
  %33 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #22
  br label %39

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  br label %39

39:                                               ; preds = %34, %32
  %40 = phi i32 [ %33, %32 ], [ %38, %34 ]
  %41 = load ptr, ptr %12, align 8, !tbaa !161
  %42 = getelementptr inbounds %struct.tree_type, ptr %41, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !161
  %44 = tail call i32 @ix86_minimum_alignment(ptr noundef nonnull %13, i32 noundef %40, i32 noundef %43) #22
  br label %51

45:                                               ; preds = %23
  %46 = trunc i64 %25 to i32
  %47 = and i32 %46, 255
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !161
  %50 = tail call i32 @ix86_minimum_alignment(ptr noundef nonnull %11, i32 noundef %47, i32 noundef %49) #22
  br label %51

51:                                               ; preds = %45, %39
  %52 = phi i32 [ %44, %39 ], [ %50, %45 ]
  %53 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !200
  %54 = icmp ult i32 %53, %52
  br i1 %54, label %55, label %60, !prof !209

55:                                               ; preds = %51
  %56 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !210
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %59, label %58, !prof !211

58:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 944, ptr noundef nonnull @.str.1) #22
  br label %59

59:                                               ; preds = %55, %58
  store i32 %52, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !200
  br label %60

60:                                               ; preds = %51, %59, %16, %10
  %61 = load i64, ptr %0, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 141
  br i1 %63, label %64, label %87, !prof !194

64:                                               ; preds = %60
  %65 = load i64, ptr %11, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 32
  br i1 %67, label %68, label %87, !prof !212

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 100663296
  %72 = and i64 %65, 67108864
  %73 = or i64 %71, %72
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %86, !prof !212

75:                                               ; preds = %68
  %76 = load ptr, ptr %12, align 8, !tbaa !161
  %77 = load ptr, ptr @global_trees, align 16, !tbaa !150
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %86, label %79, !prof !238

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %11, i64 0, i32 4
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, 2
  %83 = icmp eq i32 %82, 0
  %84 = icmp ne i8 %2, 0
  %85 = and i1 %84, %83
  br i1 %85, label %87, label %86, !prof !212

86:                                               ; preds = %79, %75, %68
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 957, ptr noundef nonnull @.str.1) #22
  br label %87

87:                                               ; preds = %86, %79, %64, %60
  %88 = load i64, ptr %11, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 32
  br i1 %90, label %95, label %91, !prof !196

91:                                               ; preds = %87
  %92 = load i64, ptr %0, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 141
  br i1 %94, label %95, label %245

95:                                               ; preds = %91, %87
  %96 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %97 = load i64, ptr %96, align 8
  %98 = and i64 %97, 100663296
  %99 = and i64 %88, 67108864
  %100 = or i64 %98, %99
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %245, !prof !213

102:                                              ; preds = %95
  %103 = load i64, ptr %0, align 8
  %104 = and i64 %103, 65535
  %105 = icmp eq i64 %104, 141
  br i1 %105, label %114, label %106, !prof !214

106:                                              ; preds = %102
  %107 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %89, i64 11
  %108 = load i8, ptr %107, align 1, !tbaa !161
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %114, label %110, !prof !215

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %11, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !161
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %245, !prof !216

114:                                              ; preds = %110, %106, %102
  %115 = load ptr, ptr %12, align 8, !tbaa !161
  %116 = load ptr, ptr @global_trees, align 16, !tbaa !150
  %117 = icmp eq ptr %115, %116
  br i1 %117, label %118, label %121, !prof !217

118:                                              ; preds = %114
  %119 = icmp eq i8 %2, 0
  br i1 %119, label %245, label %120

120:                                              ; preds = %118
  tail call fastcc void @expand_one_error_var(ptr noundef nonnull %11)
  br label %245

121:                                              ; preds = %114
  br i1 %90, label %122, label %130, !prof !198

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %11, i64 0, i32 4
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 2
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127, !prof !198

127:                                              ; preds = %122
  %128 = icmp eq i8 %2, 0
  br i1 %128, label %245, label %129

129:                                              ; preds = %127
  tail call void @rest_of_decl_compilation(ptr noundef nonnull %11, i32 noundef 0, i32 noundef 0) #22
  br label %245

130:                                              ; preds = %122, %121
  %131 = tail call zeroext i8 @use_register_for_decl(ptr noundef nonnull %11) #22
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %216, label %133, !prof !217

133:                                              ; preds = %130
  %134 = icmp eq i8 %2, 0
  br i1 %134, label %245, label %135, !prof !239

135:                                              ; preds = %133
  %136 = load i64, ptr %0, align 8
  %137 = and i64 %136, 65535
  %138 = icmp eq i64 %137, 141
  br i1 %138, label %139, label %142, !prof !212

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !161
  br label %142

142:                                              ; preds = %139, %135
  %143 = phi ptr [ %141, %139 ], [ %0, %135 ]
  %144 = getelementptr inbounds %struct.tree_common, ptr %143, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !161
  %146 = tail call i32 @promote_decl_mode(ptr noundef %143, ptr noundef null) #22
  %147 = tail call ptr @gen_reg_rtx(i32 noundef %146) #22
  %148 = load i64, ptr %0, align 8
  %149 = and i64 %148, 65535
  %150 = icmp eq i64 %149, 141
  br i1 %150, label %151, label %201, !prof !212

151:                                              ; preds = %142
  %152 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !225
  %153 = load ptr, ptr @SA, align 8, !tbaa !227
  %154 = load ptr, ptr %153, align 8, !tbaa !228
  %155 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %156 = load i32, ptr %155, align 8, !tbaa !161
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.partition_def, ptr %154, i64 0, i32 1, i64 %157
  %159 = load i32, ptr %158, align 8, !tbaa !230
  %160 = getelementptr inbounds %struct._var_map, ptr %153, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !232
  %162 = icmp eq ptr %161, null
  br i1 %162, label %167, label %163, !prof !238

163:                                              ; preds = %151
  %164 = sext i32 %159 to i64
  %165 = getelementptr inbounds i32, ptr %161, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !165
  br label %167

167:                                              ; preds = %163, %151
  %168 = phi i32 [ %166, %163 ], [ %159, %151 ]
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds ptr, ptr %152, i64 %169
  store ptr %147, ptr %170, align 8, !tbaa !150
  %171 = icmp eq ptr %147, null
  br i1 %171, label %202, label %172, !prof !238

172:                                              ; preds = %167
  %173 = load i32, ptr %147, align 8
  %174 = and i32 %173, 65535
  %175 = icmp eq i32 %174, 43
  br i1 %175, label %179, label %176, !prof !238

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !161
  tail call void @set_reg_attrs_for_decl_rtl(ptr noundef %178, ptr noundef nonnull %147) #22
  br label %179

179:                                              ; preds = %176, %172
  %180 = load ptr, ptr @global_rtl, align 16
  %181 = icmp eq ptr %180, %147
  br i1 %181, label %202, label %182, !prof !238

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !161
  %185 = load i64, ptr %184, align 8
  %186 = and i64 %185, 65535
  %187 = icmp eq i64 %186, 32
  br i1 %187, label %188, label %202, !prof !212

188:                                              ; preds = %182
  %189 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 11), align 1, !tbaa !161
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %195, label %191, !prof !238

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %184, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !161
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %196, !prof !240

195:                                              ; preds = %191, %188
  tail call void @set_decl_rtl(ptr noundef nonnull %184, ptr noundef nonnull %147) #22
  br label %202

196:                                              ; preds = %191
  %197 = icmp eq ptr %193, %180
  %198 = icmp eq ptr %193, %147
  %199 = or i1 %197, %198
  br i1 %199, label %202, label %200, !prof !241

200:                                              ; preds = %196
  tail call void @set_decl_rtl(ptr noundef nonnull %184, ptr noundef %180) #22
  br label %202

201:                                              ; preds = %142
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %147) #22
  br label %202

202:                                              ; preds = %167, %179, %182, %195, %196, %200, %201
  %203 = getelementptr inbounds %struct.tree_decl_common, ptr %143, i64 0, i32 2
  %204 = load i64, ptr %203, align 8
  %205 = and i64 %204, 4096
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %208, !prof !238

207:                                              ; preds = %202
  tail call void @mark_user_reg(ptr noundef %147) #22
  br label %208

208:                                              ; preds = %207, %202
  %209 = load i64, ptr %145, align 8
  %210 = trunc i64 %209 to i16
  switch i16 %210, label %245 [
    i16 10, label %211
    i16 12, label %211
  ], !prof !242

211:                                              ; preds = %208, %208
  %212 = getelementptr inbounds %struct.tree_common, ptr %145, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !161
  %214 = getelementptr inbounds %struct.tree_type, ptr %213, i64 0, i32 7
  %215 = load i32, ptr %214, align 8, !tbaa !161
  tail call void @mark_reg_pointer(ptr noundef %147, i32 noundef %215) #22
  br label %245

216:                                              ; preds = %130
  %217 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 4
  %218 = load ptr, ptr %217, align 8, !tbaa !161
  %219 = tail call i32 @host_integerp(ptr noundef %218, i32 noundef 1) #22
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = icmp eq i8 %2, 0
  br i1 %222, label %245, label %223

223:                                              ; preds = %221
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef nonnull %11) #22
  tail call fastcc void @expand_one_error_var(ptr noundef nonnull %11)
  br label %245

224:                                              ; preds = %216
  %225 = load i32, ptr @flag_stack_protect, align 4, !tbaa !165
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %224
  %228 = icmp ne i8 %1, 0
  %229 = load i32, ptr @optimize, align 4
  %230 = icmp slt i32 %229, 2
  %231 = select i1 %228, i1 %230, i1 false
  br i1 %231, label %239, label %232

232:                                              ; preds = %227
  %233 = icmp eq i32 %229, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %232
  %235 = load ptr, ptr %217, align 8, !tbaa !161
  %236 = tail call i64 @tree_low_cst(ptr noundef %235, i32 noundef 1) #22
  %237 = icmp slt i64 %236, 32
  br i1 %237, label %239, label %238

238:                                              ; preds = %232, %234, %224
  tail call fastcc void @add_stack_var(ptr noundef nonnull %0)
  br label %245

239:                                              ; preds = %234, %227
  %240 = icmp eq i8 %2, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %239
  tail call fastcc void @expand_one_stack_var(ptr noundef nonnull %0)
  br label %242

242:                                              ; preds = %241, %239
  %243 = load ptr, ptr %217, align 8, !tbaa !161
  %244 = tail call i64 @tree_low_cst(ptr noundef %243, i32 noundef 1) #22
  br label %245

245:                                              ; preds = %91, %211, %208, %110, %129, %127, %238, %223, %221, %133, %118, %120, %95, %242
  %246 = phi i64 [ %244, %242 ], [ 0, %95 ], [ 0, %120 ], [ 0, %118 ], [ 0, %133 ], [ 0, %221 ], [ 0, %223 ], [ 0, %238 ], [ 0, %127 ], [ 0, %129 ], [ 0, %110 ], [ 0, %208 ], [ 0, %211 ], [ 0, %91 ]
  ret i64 %246
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @account_used_vars_for_block(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #10 !prof !243 !PGOFuncName !244 {
  %3 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6, !prof !245

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %18, %15 ], [ %4, %2 ]
  %8 = phi i64 [ %16, %15 ], [ 0, %2 ]
  %9 = load i64, ptr %7, align 8
  %10 = and i64 %9, 16777216
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %12, !prof !246

12:                                               ; preds = %6
  %13 = tail call fastcc i64 @expand_one_var(ptr noundef nonnull %7, i8 noundef zeroext %1, i8 noundef zeroext 0)
  %14 = add nsw i64 %13, %8
  br label %15

15:                                               ; preds = %6, %12
  %16 = phi i64 [ %14, %12 ], [ %8, %6 ]
  %17 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !161
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %6, !prof !247, !llvm.loop !248

20:                                               ; preds = %15, %2
  %21 = phi i64 [ 0, %2 ], [ %16, %15 ]
  %22 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !161
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25, !prof !249

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %31, %25 ], [ %23, %20 ]
  %27 = phi i64 [ %29, %25 ], [ %21, %20 ]
  %28 = tail call fastcc i64 @account_used_vars_for_block(ptr noundef nonnull %26, i8 noundef zeroext 0)
  %29 = add nsw i64 %28, %27
  %30 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !161
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %25, !prof !250, !llvm.loop !251

33:                                               ; preds = %25, %20
  %34 = phi i64 [ %21, %20 ], [ %29, %25 ]
  ret i64 %34
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @fini_vars_expansion() unnamed_addr #11 !prof !149 {
  %1 = load i64, ptr @stack_vars_num, align 8, !tbaa !174
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %0, %3
  %4 = phi i64 [ %10, %3 ], [ 0, %0 ]
  %5 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %6 = getelementptr inbounds %struct.stack_var, ptr %5, i64 %4, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !252
  tail call void @bitmap_obstack_free(ptr noundef %7) #22
  %8 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %9 = getelementptr inbounds %struct.stack_var, ptr %8, i64 %4, i32 6
  store ptr null, ptr %9, align 8, !tbaa !252
  %10 = add nuw i64 %4, 1
  %11 = icmp eq i64 %10, %1
  br i1 %11, label %12, label %3, !llvm.loop !253

12:                                               ; preds = %3, %0
  %13 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  tail call void @free(ptr noundef %13)
  %14 = load ptr, ptr @stack_vars_sorted, align 8, !tbaa !150
  tail call void @free(ptr noundef %14)
  store ptr null, ptr @stack_vars, align 8, !tbaa !150
  store i64 0, ptr @stack_vars_num, align 8, !tbaa !174
  store i64 0, ptr @stack_vars_alloc, align 8, !tbaa !174
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gimple_expand_cfg() #10 !prof !254 !PGOFuncName !255 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.immediate_use_iterator_d, align 8
  %5 = alloca { ptr, ptr }, align 8
  %6 = tail call i32 @rewrite_out_of_ssa(ptr noundef nonnull @SA) #22
  %7 = load ptr, ptr @SA, align 8, !tbaa !227
  %8 = getelementptr inbounds %struct._var_map, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !256
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 8) #22
  store ptr %11, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !225
  store i32 1, ptr @currently_expanding_to_rtl, align 4, !tbaa !165
  %12 = load ptr, ptr @cfun, align 8, !tbaa !150
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !257
  %15 = load ptr, ptr %14, align 8, !tbaa !259
  tail call void @rtl_profile_for_bb(ptr noundef %15) #22
  tail call void @insn_locators_alloc() #22
  %16 = load ptr, ptr @current_function_decl, align 8, !tbaa !150
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !161
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %26, label %20, !prof !261

20:                                               ; preds = %0
  %21 = load ptr, ptr @cfun, align 8, !tbaa !150
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 15
  %23 = load i32, ptr %22, align 8, !tbaa !262
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 %18, i32 %23, !prof !261
  tail call void @set_curr_insn_source_location(i32 noundef %25) #22
  br label %26

26:                                               ; preds = %20, %0
  %27 = load ptr, ptr @current_function_decl, align 8, !tbaa !150
  %28 = getelementptr inbounds %struct.tree_decl_common, ptr %27, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !161
  tail call void @set_curr_insn_block(ptr noundef %29) #22
  %30 = tail call i32 @curr_insn_locator() #22
  store i32 %30, ptr @prologue_locator, align 4, !tbaa !165
  %31 = tail call ptr @emit_note(i32 noundef 0) #22
  %32 = load ptr, ptr @cfun, align 8, !tbaa !150
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !257
  %35 = load ptr, ptr %34, align 8, !tbaa !259
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !263
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !265
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %82, label %50, !prof !266

41:                                               ; preds = %78, %67
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !263
  %44 = load ptr, ptr @cfun, align 8, !tbaa !150
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !257
  %47 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !265
  %49 = icmp eq ptr %43, %48
  br i1 %49, label %82, label %50, !prof !267, !llvm.loop !268

50:                                               ; preds = %26, %41
  %51 = phi ptr [ %43, %41 ], [ %37, %26 ]
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 13
  %53 = load i32, ptr %52, align 8, !tbaa !269, !noalias !270
  %54 = and i32 %53, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62, !prof !273

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !161, !noalias !270
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60, !prof !274

60:                                               ; preds = %56
  %61 = load ptr, ptr %58, align 8, !tbaa !275, !noalias !270
  br label %62

62:                                               ; preds = %60, %56, %50
  %63 = phi ptr [ %61, %60 ], [ null, %56 ], [ null, %50 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65, !prof !274

65:                                               ; preds = %62
  %66 = load ptr, ptr %63, align 8, !tbaa !277, !noalias !270
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi ptr [ %66, %65 ], [ null, %62 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %41, label %70, !prof !279

70:                                               ; preds = %67, %78
  %71 = phi ptr [ %80, %78 ], [ %68, %67 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !280
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 255
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %78, label %76, !prof !282

76:                                               ; preds = %70
  %77 = tail call ptr @walk_gimple_op(ptr noundef nonnull %72, ptr noundef nonnull @discover_nonconstant_array_refs_r, ptr noundef null) #22
  br label %78

78:                                               ; preds = %76, %70
  %79 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %71, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !283
  %81 = icmp eq ptr %80, null
  br i1 %81, label %41, label %70, !prof !284, !llvm.loop !285

82:                                               ; preds = %41, %26
  %83 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 98), align 8, !tbaa !286
  tail call void %83() #22, !prof !298
  store i32 32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !299
  store i32 32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 25), align 8, !tbaa !300
  store i32 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !200
  store i32 32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !301
  %84 = load ptr, ptr @cfun, align 8, !tbaa !150
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !257
  %87 = getelementptr inbounds %struct.control_flow_graph, ptr %86, i64 0, i32 10
  store i32 0, ptr %87, align 4, !tbaa !302
  %88 = load ptr, ptr @current_function_decl, align 8, !tbaa !150
  %89 = getelementptr inbounds %struct.tree_decl_common, ptr %88, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !161
  %91 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 9
  %92 = load ptr, ptr %91, align 8, !tbaa !161
  %93 = icmp eq ptr %92, null
  br i1 %93, label %103, label %94, !prof !266

94:                                               ; preds = %82, %94
  %95 = phi ptr [ %101, %94 ], [ %92, %82 ]
  %96 = getelementptr inbounds %struct.tree_list, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !161
  %98 = load i64, ptr %97, align 8
  %99 = or i64 %98, 16777216
  store i64 %99, ptr %97, align 8
  %100 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !161
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %94, !prof !303, !llvm.loop !192

103:                                              ; preds = %94, %82
  %104 = load ptr, ptr @current_function_decl, align 8, !tbaa !150
  %105 = getelementptr inbounds %struct.tree_decl_common, ptr %104, i64 0, i32 5
  %106 = load ptr, ptr %105, align 8, !tbaa !161
  tail call fastcc void @clear_tree_used(ptr noundef %106)
  store i1 false, ptr @has_protected_decls, align 1
  store i1 false, ptr @has_short_buffer, align 1
  %107 = load ptr, ptr @SA, align 8, !tbaa !227
  %108 = getelementptr inbounds %struct._var_map, ptr %107, i64 0, i32 3
  %109 = load i32, ptr %108, align 8, !tbaa !256
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %376, label %111, !prof !266

111:                                              ; preds = %103, %370
  %112 = phi ptr [ %372, %370 ], [ %107, %103 ]
  %113 = phi i32 [ %371, %370 ], [ 0, %103 ]
  %114 = getelementptr inbounds %struct._var_map, ptr %112, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !304
  %116 = icmp eq ptr %115, null
  br i1 %116, label %121, label %117, !prof !305

117:                                              ; preds = %111
  %118 = sext i32 %113 to i64
  %119 = getelementptr inbounds i32, ptr %115, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !165
  br label %121

121:                                              ; preds = %117, %111
  %122 = phi i32 [ %120, %117 ], [ %113, %111 ]
  %123 = load ptr, ptr %112, align 8, !tbaa !228
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds %struct.partition_def, ptr %123, i64 0, i32 1, i64 %124
  %126 = load i32, ptr %125, align 8, !tbaa !230
  %127 = load ptr, ptr @cfun, align 8, !tbaa !150
  %128 = getelementptr inbounds %struct.function, ptr %127, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !306
  %130 = getelementptr inbounds %struct.gimple_df, ptr %129, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !307
  %132 = zext i32 %126 to i64
  %133 = getelementptr inbounds %struct.VEC_tree_base, ptr %131, i64 0, i32 2, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !150
  %135 = tail call zeroext i8 @is_gimple_reg(ptr noundef %134) #22
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %138, !prof !305

137:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1312, ptr noundef nonnull @.str.1) #22
  br label %138

138:                                              ; preds = %137, %121
  %139 = getelementptr inbounds %struct.tree_ssa_name, ptr %134, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !161
  %141 = load i64, ptr %140, align 8
  %142 = and i64 %141, 65535
  %143 = icmp eq i64 %142, 32
  br i1 %143, label %144, label %358, !prof !311

144:                                              ; preds = %138
  %145 = load i64, ptr %134, align 8
  %146 = and i64 %145, 65535
  %147 = icmp eq i64 %146, 141
  %148 = select i1 %147, ptr %140, ptr %134, !prof !194
  %149 = getelementptr inbounds %struct.tree_common, ptr %148, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !161
  %151 = load ptr, ptr @global_trees, align 16, !tbaa !150
  %152 = icmp eq ptr %150, %151
  br i1 %152, label %197, label %153, !prof !195

153:                                              ; preds = %144
  %154 = load i64, ptr %148, align 8
  %155 = and i64 %154, 65535
  %156 = icmp eq i64 %155, 32
  br i1 %156, label %157, label %197, !prof !196

157:                                              ; preds = %153
  %158 = and i64 %154, 67108864
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %165, !prof !197

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.tree_decl_common, ptr %148, i64 0, i32 2
  %162 = load i64, ptr %161, align 8
  %163 = and i64 %162, 33554432
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %182, label %165, !prof !198

165:                                              ; preds = %160, %157
  %166 = load i64, ptr %150, align 8
  %167 = and i64 %166, 65535
  %168 = icmp eq i64 %167, 14
  br i1 %168, label %169, label %171, !prof !199

169:                                              ; preds = %165
  %170 = tail call i32 @vector_type_mode(ptr noundef nonnull %150) #22
  br label %176

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.tree_type, ptr %150, i64 0, i32 6
  %173 = load i32, ptr %172, align 4
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  br label %176

176:                                              ; preds = %171, %169
  %177 = phi i32 [ %170, %169 ], [ %175, %171 ]
  %178 = load ptr, ptr %149, align 8, !tbaa !161
  %179 = getelementptr inbounds %struct.tree_type, ptr %178, i64 0, i32 7
  %180 = load i32, ptr %179, align 8, !tbaa !161
  %181 = tail call i32 @ix86_minimum_alignment(ptr noundef nonnull %150, i32 noundef %177, i32 noundef %180) #22
  br label %188

182:                                              ; preds = %160
  %183 = trunc i64 %162 to i32
  %184 = and i32 %183, 255
  %185 = getelementptr inbounds %struct.tree_decl_common, ptr %148, i64 0, i32 3
  %186 = load i32, ptr %185, align 8, !tbaa !161
  %187 = tail call i32 @ix86_minimum_alignment(ptr noundef nonnull %148, i32 noundef %184, i32 noundef %186) #22
  br label %188

188:                                              ; preds = %182, %176
  %189 = phi i32 [ %181, %176 ], [ %187, %182 ]
  %190 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !200
  %191 = icmp ult i32 %190, %189
  br i1 %191, label %192, label %197, !prof !209

192:                                              ; preds = %188
  %193 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !210
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %196, label %195, !prof !211

195:                                              ; preds = %192
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 944, ptr noundef nonnull @.str.1) #22
  br label %196

196:                                              ; preds = %195, %192
  store i32 %189, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !200
  br label %197

197:                                              ; preds = %196, %188, %153, %144
  %198 = load i64, ptr %134, align 8
  %199 = and i64 %198, 65535
  %200 = icmp eq i64 %199, 141
  br i1 %200, label %201, label %222, !prof !194

201:                                              ; preds = %197
  %202 = load i64, ptr %148, align 8
  %203 = and i64 %202, 65535
  %204 = icmp eq i64 %203, 32
  br i1 %204, label %205, label %222, !prof !212

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.tree_decl_common, ptr %148, i64 0, i32 2
  %207 = load i64, ptr %206, align 8
  %208 = and i64 %207, 100663296
  %209 = and i64 %202, 67108864
  %210 = or i64 %208, %209
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %221, !prof !212

212:                                              ; preds = %205
  %213 = load ptr, ptr %149, align 8, !tbaa !161
  %214 = load ptr, ptr @global_trees, align 16, !tbaa !150
  %215 = icmp eq ptr %213, %214
  br i1 %215, label %221, label %216, !prof !238

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %148, i64 0, i32 4
  %218 = load i32, ptr %217, align 8
  %219 = and i32 %218, 2
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %222, label %221, !prof !212

221:                                              ; preds = %216, %212, %205
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 957, ptr noundef nonnull @.str.1) #22
  br label %222

222:                                              ; preds = %221, %216, %201, %197
  %223 = load i64, ptr %148, align 8
  %224 = and i64 %223, 65535
  %225 = icmp eq i64 %224, 32
  br i1 %225, label %230, label %226, !prof !196

226:                                              ; preds = %222
  %227 = load i64, ptr %134, align 8
  %228 = and i64 %227, 65535
  %229 = icmp eq i64 %228, 141
  br i1 %229, label %230, label %370

230:                                              ; preds = %226, %222
  %231 = getelementptr inbounds %struct.tree_decl_common, ptr %148, i64 0, i32 2
  %232 = load i64, ptr %231, align 8
  %233 = and i64 %232, 100663296
  %234 = and i64 %223, 67108864
  %235 = or i64 %233, %234
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %370, !prof !213

237:                                              ; preds = %230
  %238 = load i64, ptr %134, align 8
  %239 = and i64 %238, 65535
  %240 = icmp eq i64 %239, 141
  br i1 %240, label %249, label %241, !prof !214

241:                                              ; preds = %237
  %242 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %224, i64 11
  %243 = load i8, ptr %242, align 1, !tbaa !161
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %249, label %245, !prof !215

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %148, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !161
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %370, !prof !216

249:                                              ; preds = %245, %241, %237
  %250 = load ptr, ptr %149, align 8, !tbaa !161
  %251 = load ptr, ptr @global_trees, align 16, !tbaa !150
  %252 = icmp eq ptr %250, %251
  br i1 %252, label %253, label %254, !prof !217

253:                                              ; preds = %249
  tail call fastcc void @expand_one_error_var(ptr noundef nonnull %148)
  br label %370

254:                                              ; preds = %249
  br i1 %225, label %255, label %261, !prof !198

255:                                              ; preds = %254
  %256 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %148, i64 0, i32 4
  %257 = load i32, ptr %256, align 8
  %258 = and i32 %257, 2
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %261, label %260, !prof !198

260:                                              ; preds = %255
  tail call void @rest_of_decl_compilation(ptr noundef nonnull %148, i32 noundef 0, i32 noundef 0) #22
  br label %370

261:                                              ; preds = %255, %254
  %262 = tail call zeroext i8 @use_register_for_decl(ptr noundef nonnull %148) #22
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %342, label %264, !prof !217

264:                                              ; preds = %261
  %265 = load i64, ptr %134, align 8
  %266 = and i64 %265, 65535
  %267 = icmp eq i64 %266, 141
  br i1 %267, label %268, label %270, !prof !212

268:                                              ; preds = %264
  %269 = load ptr, ptr %139, align 8, !tbaa !161
  br label %270

270:                                              ; preds = %268, %264
  %271 = phi ptr [ %269, %268 ], [ %134, %264 ]
  %272 = getelementptr inbounds %struct.tree_common, ptr %271, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !161
  %274 = tail call i32 @promote_decl_mode(ptr noundef %271, ptr noundef null) #22
  %275 = tail call ptr @gen_reg_rtx(i32 noundef %274) #22
  %276 = load i64, ptr %134, align 8
  %277 = and i64 %276, 65535
  %278 = icmp eq i64 %277, 141
  br i1 %278, label %279, label %327, !prof !212

279:                                              ; preds = %270
  %280 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !225
  %281 = load ptr, ptr @SA, align 8, !tbaa !227
  %282 = load ptr, ptr %281, align 8, !tbaa !228
  %283 = getelementptr inbounds %struct.tree_ssa_name, ptr %134, i64 0, i32 3
  %284 = load i32, ptr %283, align 8, !tbaa !161
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds %struct.partition_def, ptr %282, i64 0, i32 1, i64 %285
  %287 = load i32, ptr %286, align 8, !tbaa !230
  %288 = getelementptr inbounds %struct._var_map, ptr %281, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !232
  %290 = icmp eq ptr %289, null
  br i1 %290, label %295, label %291, !prof !238

291:                                              ; preds = %279
  %292 = sext i32 %287 to i64
  %293 = getelementptr inbounds i32, ptr %289, i64 %292
  %294 = load i32, ptr %293, align 4, !tbaa !165
  br label %295

295:                                              ; preds = %291, %279
  %296 = phi i32 [ %294, %291 ], [ %287, %279 ]
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds ptr, ptr %280, i64 %297
  store ptr %275, ptr %298, align 8, !tbaa !150
  %299 = icmp eq ptr %275, null
  br i1 %299, label %328, label %300, !prof !238

300:                                              ; preds = %295
  %301 = load i32, ptr %275, align 8
  %302 = and i32 %301, 65535
  %303 = icmp eq i32 %302, 43
  br i1 %303, label %306, label %304, !prof !238

304:                                              ; preds = %300
  %305 = load ptr, ptr %139, align 8, !tbaa !161
  tail call void @set_reg_attrs_for_decl_rtl(ptr noundef %305, ptr noundef nonnull %275) #22
  br label %306

306:                                              ; preds = %304, %300
  %307 = load ptr, ptr @global_rtl, align 16
  %308 = icmp eq ptr %307, %275
  br i1 %308, label %328, label %309, !prof !238

309:                                              ; preds = %306
  %310 = load ptr, ptr %139, align 8, !tbaa !161
  %311 = load i64, ptr %310, align 8
  %312 = and i64 %311, 65535
  %313 = icmp eq i64 %312, 32
  br i1 %313, label %314, label %328, !prof !212

314:                                              ; preds = %309
  %315 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 11), align 1, !tbaa !161
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %321, label %317, !prof !238

317:                                              ; preds = %314
  %318 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %310, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !161
  %320 = icmp eq ptr %319, null
  br i1 %320, label %321, label %322, !prof !240

321:                                              ; preds = %317, %314
  tail call void @set_decl_rtl(ptr noundef nonnull %310, ptr noundef nonnull %275) #22
  br label %328

322:                                              ; preds = %317
  %323 = icmp eq ptr %319, %307
  %324 = icmp eq ptr %319, %275
  %325 = or i1 %323, %324
  br i1 %325, label %328, label %326, !prof !241

326:                                              ; preds = %322
  tail call void @set_decl_rtl(ptr noundef nonnull %310, ptr noundef %307) #22
  br label %328

327:                                              ; preds = %270
  tail call void @set_decl_rtl(ptr noundef nonnull %134, ptr noundef %275) #22
  br label %328

328:                                              ; preds = %327, %326, %322, %321, %309, %306, %295
  %329 = getelementptr inbounds %struct.tree_decl_common, ptr %271, i64 0, i32 2
  %330 = load i64, ptr %329, align 8
  %331 = and i64 %330, 4096
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %333, label %334, !prof !238

333:                                              ; preds = %328
  tail call void @mark_user_reg(ptr noundef %275) #22
  br label %334

334:                                              ; preds = %333, %328
  %335 = load i64, ptr %273, align 8
  %336 = trunc i64 %335 to i16
  switch i16 %336, label %370 [
    i16 10, label %337
    i16 12, label %337
  ], !prof !242

337:                                              ; preds = %334, %334
  %338 = getelementptr inbounds %struct.tree_common, ptr %273, i64 0, i32 2
  %339 = load ptr, ptr %338, align 8, !tbaa !161
  %340 = getelementptr inbounds %struct.tree_type, ptr %339, i64 0, i32 7
  %341 = load i32, ptr %340, align 8, !tbaa !161
  tail call void @mark_reg_pointer(ptr noundef %275, i32 noundef %341) #22
  br label %370

342:                                              ; preds = %261
  %343 = getelementptr inbounds %struct.tree_decl_common, ptr %148, i64 0, i32 4
  %344 = load ptr, ptr %343, align 8, !tbaa !161
  %345 = tail call i32 @host_integerp(ptr noundef %344, i32 noundef 1) #22
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %342
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef nonnull %148) #22
  tail call fastcc void @expand_one_error_var(ptr noundef nonnull %148)
  br label %370

348:                                              ; preds = %342
  %349 = load i32, ptr @flag_stack_protect, align 4, !tbaa !165
  %350 = icmp eq i32 %349, 0
  %351 = load i32, ptr @optimize, align 4
  %352 = icmp slt i32 %351, 2
  %353 = select i1 %350, i1 %352, i1 false
  br i1 %353, label %355, label %354

354:                                              ; preds = %348
  tail call fastcc void @add_stack_var(ptr noundef nonnull %134)
  br label %370

355:                                              ; preds = %348
  tail call fastcc void @expand_one_stack_var(ptr noundef nonnull %134)
  %356 = load ptr, ptr %343, align 8, !tbaa !161
  %357 = tail call i64 @tree_low_cst(ptr noundef %356, i32 noundef 1) #22
  br label %370

358:                                              ; preds = %138
  %359 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 3), align 8, !tbaa !312
  %360 = tail call i32 @bitmap_bit_p(ptr noundef %359, i32 noundef %113) #22
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %370, !prof !261

362:                                              ; preds = %358
  %363 = tail call fastcc i64 @expand_one_var(ptr noundef %134, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %364 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !225
  %365 = zext i32 %113 to i64
  %366 = getelementptr inbounds ptr, ptr %364, i64 %365
  %367 = load ptr, ptr %366, align 8, !tbaa !150
  %368 = icmp eq ptr %367, null
  br i1 %368, label %369, label %370

369:                                              ; preds = %362
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1325, ptr noundef nonnull @.str.1) #22
  br label %370

370:                                              ; preds = %355, %354, %347, %337, %334, %260, %253, %245, %230, %226, %369, %362, %358
  %371 = add nuw i32 %113, 1
  %372 = load ptr, ptr @SA, align 8, !tbaa !227
  %373 = getelementptr inbounds %struct._var_map, ptr %372, i64 0, i32 3
  %374 = load i32, ptr %373, align 8, !tbaa !256
  %375 = icmp ult i32 %371, %374
  br i1 %375, label %111, label %376, !prof !313, !llvm.loop !314

376:                                              ; preds = %370, %103
  %377 = load ptr, ptr @cfun, align 8, !tbaa !150
  %378 = getelementptr inbounds %struct.function, ptr %377, i64 0, i32 9
  %379 = load ptr, ptr %378, align 8, !tbaa !315
  store ptr null, ptr %378, align 8, !tbaa !315
  %380 = icmp eq ptr %379, null
  br i1 %380, label %442, label %381, !prof !266

381:                                              ; preds = %376, %439
  %382 = phi ptr [ %387, %439 ], [ %379, %376 ]
  %383 = phi ptr [ %440, %439 ], [ null, %376 ]
  %384 = getelementptr inbounds %struct.tree_list, ptr %382, i64 0, i32 2
  %385 = load ptr, ptr %384, align 8, !tbaa !161
  %386 = getelementptr inbounds %struct.tree_common, ptr %382, i64 0, i32 1
  %387 = load ptr, ptr %386, align 8, !tbaa !161
  %388 = tail call zeroext i8 @is_gimple_reg(ptr noundef %385) #22
  %389 = icmp eq i8 %388, 0
  %390 = load i64, ptr %385, align 8
  br i1 %389, label %393, label %391, !prof !316

391:                                              ; preds = %381
  %392 = and i64 %390, -16777217
  store i64 %392, ptr %385, align 8
  br label %409

393:                                              ; preds = %381
  %394 = and i64 %390, 67108864
  %395 = icmp eq i64 %394, 0
  br i1 %395, label %396, label %405, !prof !317

396:                                              ; preds = %393
  %397 = getelementptr inbounds %struct.tree_decl_common, ptr %385, i64 0, i32 2
  %398 = load i64, ptr %397, align 8
  %399 = and i64 %398, 33554432
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %396
  %402 = and i64 %390, 16777216
  %403 = icmp eq i64 %402, 0
  %404 = or i64 %390, 16777216
  store i64 %404, ptr %385, align 8
  br i1 %403, label %409, label %407

405:                                              ; preds = %396, %393
  %406 = or i64 %390, 16777216
  store i64 %406, ptr %385, align 8
  br label %407

407:                                              ; preds = %405, %401
  %408 = tail call fastcc i64 @expand_one_var(ptr noundef nonnull %385, i8 noundef zeroext 1, i8 noundef zeroext 1)
  br label %409

409:                                              ; preds = %407, %401, %391
  %410 = getelementptr inbounds %struct.tree_decl_common, ptr %385, i64 0, i32 2
  %411 = load i64, ptr %410, align 8
  %412 = and i64 %411, 5120
  %413 = icmp eq i64 %412, 4096
  br i1 %413, label %414, label %437, !prof !316

414:                                              ; preds = %409
  %415 = load i64, ptr %385, align 8
  %416 = and i64 %415, 65535
  %417 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %416, i64 11
  %418 = load i8, ptr %417, align 1, !tbaa !161
  %419 = icmp eq i8 %418, 0
  br i1 %419, label %423, label %420, !prof !317

420:                                              ; preds = %414
  %421 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %385, i64 0, i32 1
  %422 = load ptr, ptr %421, align 8, !tbaa !161
  br label %423

423:                                              ; preds = %420, %414
  %424 = phi ptr [ null, %414 ], [ %422, %420 ]
  %425 = icmp eq ptr %424, null
  br i1 %425, label %433, label %426, !prof !318

426:                                              ; preds = %423
  %427 = load i32, ptr %424, align 8
  %428 = trunc i32 %427 to i16
  switch i16 %428, label %434 [
    i16 43, label %429
    i16 41, label %429
  ], !prof !319

429:                                              ; preds = %426, %426
  %430 = load ptr, ptr @cfun, align 8, !tbaa !150
  %431 = getelementptr inbounds %struct.function, ptr %430, i64 0, i32 9
  %432 = load ptr, ptr %431, align 8, !tbaa !315
  store ptr %432, ptr %386, align 8, !tbaa !161
  store ptr %382, ptr %431, align 8, !tbaa !315
  br label %434

433:                                              ; preds = %423
  store ptr %383, ptr %386, align 8, !tbaa !161
  br label %434

434:                                              ; preds = %433, %429, %426
  %435 = phi i1 [ false, %429 ], [ false, %433 ], [ true, %426 ]
  %436 = phi ptr [ %383, %429 ], [ %382, %433 ], [ %383, %426 ]
  br i1 %435, label %437, label %439, !prof !317

437:                                              ; preds = %434, %409
  %438 = phi ptr [ %436, %434 ], [ %383, %409 ]
  tail call void @ggc_free(ptr noundef nonnull %382) #22
  br label %439

439:                                              ; preds = %437, %434
  %440 = phi ptr [ %438, %437 ], [ %436, %434 ]
  %441 = icmp eq ptr %387, null
  br i1 %441, label %442, label %381, !prof !303, !llvm.loop !320

442:                                              ; preds = %439, %376
  %443 = phi ptr [ null, %376 ], [ %440, %439 ]
  tail call fastcc void @expand_used_vars_for_block(ptr noundef %90, i8 noundef zeroext 1)
  %444 = load i64, ptr @stack_vars_num, align 8, !tbaa !174
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %853, label %446, !prof !321

446:                                              ; preds = %442, %483
  %447 = phi i64 [ %484, %483 ], [ 0, %442 ]
  %448 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %449 = getelementptr inbounds %struct.stack_var, ptr %448, i64 %447
  %450 = load ptr, ptr %449, align 8, !tbaa !224
  %451 = getelementptr inbounds %struct.tree_common, ptr %450, i64 0, i32 2
  %452 = load ptr, ptr %451, align 8, !tbaa !161
  %453 = load i64, ptr %452, align 8
  %454 = trunc i64 %453 to i32
  %455 = and i32 %454, 65535
  %456 = add nsw i32 %455, -15
  %457 = icmp ult i32 %456, 4
  %458 = tail call fastcc zeroext i8 @aggregate_contains_union_type(ptr noundef nonnull %452), !range !322
  %459 = icmp eq i64 %447, 0
  br i1 %459, label %483, label %460

460:                                              ; preds = %446
  %461 = icmp ne i8 %458, 0
  br label %462

462:                                              ; preds = %460, %480
  %463 = phi i64 [ 0, %460 ], [ %481, %480 ]
  %464 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %465 = getelementptr inbounds %struct.stack_var, ptr %464, i64 %463
  %466 = load ptr, ptr %465, align 8, !tbaa !224
  %467 = getelementptr inbounds %struct.tree_common, ptr %466, i64 0, i32 2
  %468 = load ptr, ptr %467, align 8, !tbaa !161
  %469 = load i64, ptr %468, align 8
  %470 = trunc i64 %469 to i32
  %471 = and i32 %470, 65535
  %472 = add nsw i32 %471, -15
  %473 = icmp ult i32 %472, 4
  %474 = xor i1 %457, %473
  br i1 %474, label %479, label %475

475:                                              ; preds = %462
  %476 = tail call i32 @objects_must_conflict_p(ptr noundef nonnull %452, ptr noundef nonnull %468) #22
  %477 = icmp eq i32 %476, 0
  %478 = select i1 %477, i1 true, i1 %461
  br i1 %478, label %479, label %480

479:                                              ; preds = %475, %462
  tail call fastcc void @add_stack_var_conflict(i64 noundef %447, i64 noundef %463)
  br label %480

480:                                              ; preds = %479, %475
  %481 = add nuw i64 %463, 1
  %482 = icmp eq i64 %481, %447
  br i1 %482, label %483, label %462, !llvm.loop !323

483:                                              ; preds = %480, %446
  %484 = add nuw i64 %447, 1
  %485 = icmp eq i64 %484, %444
  br i1 %485, label %486, label %446, !llvm.loop !324

486:                                              ; preds = %483
  %487 = load i32, ptr @flag_stack_protect, align 4, !tbaa !165
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %521, label %489

489:                                              ; preds = %486
  %490 = load i64, ptr @stack_vars_num, align 8, !tbaa !174
  %491 = tail call ptr @xmalloc(i64 noundef %490) #22
  %492 = icmp eq i64 %490, 0
  br i1 %492, label %520, label %493

493:                                              ; preds = %489, %493
  %494 = phi i64 [ %501, %493 ], [ 0, %489 ]
  %495 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %496 = getelementptr inbounds %struct.stack_var, ptr %495, i64 %494
  %497 = load ptr, ptr %496, align 8, !tbaa !224
  %498 = tail call fastcc i32 @stack_protect_decl_phase(ptr noundef %497), !range !325
  %499 = trunc i32 %498 to i8
  %500 = getelementptr inbounds i8, ptr %491, i64 %494
  store i8 %499, ptr %500, align 1, !tbaa !161
  %501 = add nuw i64 %494, 1
  %502 = icmp eq i64 %501, %490
  br i1 %502, label %503, label %493, !llvm.loop !326

503:                                              ; preds = %493, %517
  %504 = phi i64 [ %518, %517 ], [ 0, %493 ]
  %505 = getelementptr inbounds i8, ptr %491, i64 %504
  %506 = load i8, ptr %505, align 1, !tbaa !161
  %507 = icmp eq i64 %504, 0
  br i1 %507, label %517, label %508

508:                                              ; preds = %503, %514
  %509 = phi i64 [ %515, %514 ], [ 0, %503 ]
  %510 = getelementptr inbounds i8, ptr %491, i64 %509
  %511 = load i8, ptr %510, align 1, !tbaa !161
  %512 = icmp eq i8 %506, %511
  br i1 %512, label %514, label %513

513:                                              ; preds = %508
  tail call fastcc void @add_stack_var_conflict(i64 noundef %504, i64 noundef %509)
  br label %514

514:                                              ; preds = %513, %508
  %515 = add nuw i64 %509, 1
  %516 = icmp eq i64 %515, %504
  br i1 %516, label %517, label %508, !llvm.loop !327

517:                                              ; preds = %514, %503
  %518 = add nuw i64 %504, 1
  %519 = icmp eq i64 %518, %490
  br i1 %519, label %520, label %503, !llvm.loop !328

520:                                              ; preds = %517, %489
  tail call void @free(ptr noundef %491)
  br label %521

521:                                              ; preds = %520, %486
  %522 = load i64, ptr @stack_vars_num, align 8, !tbaa !174
  %523 = shl i64 %522, 3
  %524 = tail call ptr @xmalloc(i64 noundef %523) #22
  store ptr %524, ptr @stack_vars_sorted, align 8, !tbaa !150
  %525 = icmp eq i64 %522, 0
  br i1 %525, label %533, label %526

526:                                              ; preds = %521, %526
  %527 = phi i64 [ %529, %526 ], [ 0, %521 ]
  %528 = getelementptr inbounds i64, ptr %524, i64 %527
  store i64 %527, ptr %528, align 8, !tbaa !174
  %529 = add nuw i64 %527, 1
  %530 = icmp eq i64 %529, %522
  br i1 %530, label %531, label %526, !llvm.loop !329

531:                                              ; preds = %526
  %532 = icmp eq i64 %522, 1
  br i1 %532, label %809, label %533

533:                                              ; preds = %521, %531
  tail call void @spec_qsort(ptr noundef %524, i64 noundef %522, i64 noundef 8, ptr noundef nonnull @stack_var_size_cmp) #22
  %534 = icmp eq i64 %522, 0
  br i1 %534, label %690, label %535

535:                                              ; preds = %533, %687
  %536 = phi i64 [ %688, %687 ], [ 0, %533 ]
  %537 = load ptr, ptr @stack_vars_sorted, align 8, !tbaa !150
  %538 = getelementptr inbounds i64, ptr %537, i64 %536
  %539 = load i64, ptr %538, align 8, !tbaa !174
  %540 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %541 = getelementptr inbounds %struct.stack_var, ptr %540, i64 %539, i32 2
  %542 = load i64, ptr %541, align 8, !tbaa !223
  br label %543

543:                                              ; preds = %684, %535
  %544 = phi i64 [ %542, %535 ], [ %685, %684 ]
  %545 = phi i64 [ %536, %535 ], [ %546, %684 ]
  %546 = add i64 %545, -1
  %547 = icmp eq i64 %545, 0
  br i1 %547, label %687, label %548

548:                                              ; preds = %543
  %549 = load ptr, ptr @stack_vars_sorted, align 8, !tbaa !150
  %550 = getelementptr inbounds i64, ptr %549, i64 %546
  %551 = load i64, ptr %550, align 8, !tbaa !174
  %552 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %553 = getelementptr inbounds %struct.stack_var, ptr %552, i64 %551, i32 2
  %554 = load i64, ptr %553, align 8, !tbaa !223
  %555 = getelementptr inbounds %struct.stack_var, ptr %552, i64 %551, i32 4
  %556 = load i64, ptr %555, align 8, !tbaa !221
  %557 = icmp ne i64 %556, %551
  %558 = icmp slt i64 %544, %554
  %559 = select i1 %557, i1 true, i1 %558
  br i1 %559, label %684, label %560, !llvm.loop !330

560:                                              ; preds = %548
  %561 = getelementptr inbounds %struct.stack_var, ptr %552, i64 %539, i32 6
  %562 = load ptr, ptr %561, align 8, !tbaa !252
  %563 = icmp eq ptr %562, null
  br i1 %563, label %572, label %564

564:                                              ; preds = %560
  %565 = getelementptr inbounds %struct.stack_var, ptr %552, i64 %551, i32 6
  %566 = load ptr, ptr %565, align 8, !tbaa !252
  %567 = icmp eq ptr %566, null
  br i1 %567, label %572, label %568

568:                                              ; preds = %564
  %569 = trunc i64 %551 to i32
  %570 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %562, i32 noundef %569) #22
  %571 = trunc i32 %570 to i8
  br label %572

572:                                              ; preds = %568, %564, %560
  %573 = phi i8 [ %571, %568 ], [ 0, %564 ], [ 0, %560 ]
  %574 = icmp eq i8 %573, 0
  br i1 %574, label %575, label %684, !llvm.loop !330

575:                                              ; preds = %572
  %576 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %577 = icmp eq i64 %551, -1
  br i1 %577, label %584, label %578

578:                                              ; preds = %575, %578
  %579 = phi i64 [ %582, %578 ], [ %551, %575 ]
  %580 = getelementptr inbounds %struct.stack_var, ptr %576, i64 %579, i32 4
  store i64 %539, ptr %580, align 8, !tbaa !221
  %581 = getelementptr inbounds %struct.stack_var, ptr %576, i64 %579, i32 5
  %582 = load i64, ptr %581, align 8, !tbaa !233
  %583 = icmp eq i64 %582, -1
  br i1 %583, label %584, label %578, !llvm.loop !331

584:                                              ; preds = %578, %575
  %585 = phi i64 [ %551, %575 ], [ %579, %578 ]
  %586 = getelementptr inbounds %struct.stack_var, ptr %576, i64 %539, i32 5
  %587 = load i64, ptr %586, align 8, !tbaa !233
  %588 = getelementptr inbounds %struct.stack_var, ptr %576, i64 %585, i32 5
  store i64 %587, ptr %588, align 8, !tbaa !233
  store i64 %551, ptr %586, align 8, !tbaa !233
  %589 = getelementptr inbounds %struct.stack_var, ptr %576, i64 %539, i32 3
  %590 = load i32, ptr %589, align 8, !tbaa !332
  %591 = getelementptr inbounds %struct.stack_var, ptr %576, i64 %551, i32 3
  %592 = load i32, ptr %591, align 8, !tbaa !332
  %593 = icmp ult i32 %590, %592
  br i1 %593, label %594, label %595

594:                                              ; preds = %584
  store i32 %592, ptr %589, align 8, !tbaa !332
  br label %595

595:                                              ; preds = %594, %584
  %596 = getelementptr inbounds %struct.stack_var, ptr %576, i64 %551, i32 6
  %597 = load ptr, ptr %596, align 8, !tbaa !252
  %598 = icmp eq ptr %597, null
  br i1 %598, label %681, label %599

599:                                              ; preds = %595
  %600 = load ptr, ptr %597, align 8, !tbaa !333
  %601 = icmp eq ptr %600, null
  %602 = select i1 %601, ptr @bitmap_zero_bits, ptr %600
  %603 = getelementptr inbounds %struct.bitmap_element_def, ptr %602, i64 0, i32 2
  %604 = load i32, ptr %603, align 8, !tbaa !335
  %605 = shl i32 %604, 7
  %606 = getelementptr inbounds %struct.bitmap_element_def, ptr %602, i64 0, i32 3
  %607 = load i64, ptr %606, align 8, !tbaa !174
  %608 = icmp eq i64 %607, 0
  %609 = zext i1 %608 to i32
  %610 = or disjoint i32 %605, %609
  br label %611

611:                                              ; preds = %672, %599
  %612 = phi i32 [ 0, %599 ], [ %667, %672 ]
  %613 = phi i64 [ %607, %599 ], [ %677, %672 ]
  %614 = phi ptr [ %602, %599 ], [ %669, %672 ]
  %615 = phi i32 [ %610, %599 ], [ %678, %672 ]
  %616 = icmp eq i64 %613, 0
  br i1 %616, label %631, label %617

617:                                              ; preds = %645, %611
  %618 = phi i32 [ %612, %611 ], [ %646, %645 ]
  %619 = phi i64 [ %613, %611 ], [ %650, %645 ]
  %620 = phi ptr [ %614, %611 ], [ %637, %645 ]
  %621 = phi i32 [ %615, %611 ], [ %647, %645 ]
  %622 = and i64 %619, 1
  %623 = icmp eq i64 %622, 0
  br i1 %623, label %624, label %666

624:                                              ; preds = %617, %624
  %625 = phi i32 [ %628, %624 ], [ %621, %617 ]
  %626 = phi i64 [ %627, %624 ], [ %619, %617 ]
  %627 = lshr exact i64 %626, 1
  %628 = add i32 %625, 1
  %629 = and i64 %626, 2
  %630 = icmp eq i64 %629, 0
  br i1 %630, label %624, label %666, !llvm.loop !337

631:                                              ; preds = %611
  %632 = add i32 %615, 63
  %633 = and i32 %632, -64
  %634 = add i32 %612, 1
  br label %635

635:                                              ; preds = %662, %631
  %636 = phi i64 [ %613, %631 ], [ %657, %662 ]
  %637 = phi ptr [ %614, %631 ], [ %660, %662 ]
  %638 = phi i32 [ %633, %631 ], [ %665, %662 ]
  %639 = phi i32 [ %634, %631 ], [ 0, %662 ]
  %640 = icmp eq i32 %639, 2
  br i1 %640, label %656, label %641

641:                                              ; preds = %635
  %642 = add i32 %638, 128
  %643 = shl i32 %639, 6
  %644 = sub i32 %642, %643
  br label %645

645:                                              ; preds = %641, %652
  %646 = phi i32 [ %654, %652 ], [ %639, %641 ]
  %647 = phi i32 [ %653, %652 ], [ %638, %641 ]
  %648 = zext i32 %646 to i64
  %649 = getelementptr inbounds %struct.bitmap_element_def, ptr %637, i64 0, i32 3, i64 %648
  %650 = load i64, ptr %649, align 8, !tbaa !174
  %651 = icmp eq i64 %650, 0
  br i1 %651, label %652, label %617

652:                                              ; preds = %645
  %653 = add i32 %647, 64
  %654 = add i32 %646, 1
  %655 = icmp eq i32 %654, 2
  br i1 %655, label %656, label %645, !llvm.loop !338

656:                                              ; preds = %652, %635
  %657 = phi i64 [ %636, %635 ], [ %650, %652 ]
  %658 = phi i32 [ %638, %635 ], [ %644, %652 ]
  %659 = phi i32 [ %639, %635 ], [ 2, %652 ]
  %660 = load ptr, ptr %637, align 8, !tbaa !339
  %661 = icmp eq ptr %660, null
  br i1 %661, label %666, label %662

662:                                              ; preds = %656
  %663 = getelementptr inbounds %struct.bitmap_element_def, ptr %660, i64 0, i32 2
  %664 = load i32, ptr %663, align 8, !tbaa !335
  %665 = shl i32 %664, 7
  br label %635, !llvm.loop !340

666:                                              ; preds = %656, %624, %617
  %667 = phi i32 [ %618, %617 ], [ %618, %624 ], [ %659, %656 ]
  %668 = phi i64 [ %619, %617 ], [ %627, %624 ], [ %657, %656 ]
  %669 = phi ptr [ %620, %617 ], [ %620, %624 ], [ %660, %656 ]
  %670 = phi i32 [ %621, %617 ], [ %628, %624 ], [ %658, %656 ]
  %671 = phi i1 [ false, %617 ], [ false, %624 ], [ true, %656 ]
  br i1 %671, label %679, label %672

672:                                              ; preds = %666
  %673 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %674 = zext i32 %670 to i64
  %675 = getelementptr inbounds %struct.stack_var, ptr %673, i64 %674, i32 4
  %676 = load i64, ptr %675, align 8, !tbaa !221
  tail call fastcc void @add_stack_var_conflict(i64 noundef %539, i64 noundef %676)
  %677 = lshr i64 %668, 1
  %678 = add i32 %670, 1
  br label %611, !llvm.loop !341

679:                                              ; preds = %666
  %680 = load ptr, ptr %596, align 8, !tbaa !252
  tail call void @bitmap_obstack_free(ptr noundef %680) #22
  store ptr null, ptr %596, align 8, !tbaa !252
  br label %681

681:                                              ; preds = %679, %595
  %682 = sub nsw i64 %544, %554
  %683 = icmp eq i64 %682, 0
  br label %684

684:                                              ; preds = %681, %572, %548
  %685 = phi i64 [ %544, %548 ], [ %544, %572 ], [ %682, %681 ]
  %686 = phi i1 [ false, %548 ], [ false, %572 ], [ %683, %681 ]
  br i1 %686, label %687, label %543

687:                                              ; preds = %684, %543
  %688 = add nuw i64 %536, 1
  %689 = icmp eq i64 %688, %522
  br i1 %689, label %690, label %535, !llvm.loop !342

690:                                              ; preds = %687, %533
  %691 = load i32, ptr @optimize, align 4, !tbaa !165
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %809, label %693

693:                                              ; preds = %690
  %694 = load i64, ptr @stack_vars_num, align 8, !tbaa !174
  %695 = icmp eq i64 %694, 0
  br i1 %695, label %767, label %696

696:                                              ; preds = %693, %761
  %697 = phi ptr [ %763, %761 ], [ null, %693 ]
  %698 = phi i64 [ %764, %761 ], [ 0, %693 ]
  %699 = phi ptr [ %762, %761 ], [ null, %693 ]
  %700 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %701 = getelementptr inbounds %struct.stack_var, ptr %700, i64 %698, i32 4
  %702 = load i64, ptr %701, align 8, !tbaa !221
  %703 = icmp eq i64 %702, %698
  br i1 %703, label %704, label %761

704:                                              ; preds = %696
  %705 = getelementptr inbounds %struct.stack_var, ptr %700, i64 %698, i32 5
  %706 = load i64, ptr %705, align 8, !tbaa !233
  %707 = icmp eq i64 %706, -1
  br i1 %707, label %761, label %708

708:                                              ; preds = %704
  %709 = icmp eq ptr %697, null
  br i1 %709, label %710, label %717

710:                                              ; preds = %708
  %711 = tail call ptr @pointer_map_create() #22
  %712 = tail call ptr @pointer_map_create() #22
  %713 = load ptr, ptr @cfun, align 8, !tbaa !150
  %714 = getelementptr inbounds %struct.function, ptr %713, i64 0, i32 3
  %715 = load ptr, ptr %714, align 8, !tbaa !306
  %716 = getelementptr inbounds %struct.gimple_df, ptr %715, i64 0, i32 6
  store ptr %712, ptr %716, align 8, !tbaa !343
  br label %717

717:                                              ; preds = %710, %708
  %718 = phi ptr [ %697, %708 ], [ %711, %710 ]
  %719 = icmp eq ptr %699, null
  br i1 %719, label %720, label %723

720:                                              ; preds = %717
  %721 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !150
  %722 = tail call ptr @create_tmp_var(ptr noundef %721, ptr noundef null) #22
  br label %723

723:                                              ; preds = %720, %717
  %724 = phi ptr [ %722, %720 ], [ %699, %717 ]
  %725 = load ptr, ptr @cfun, align 8, !tbaa !150
  %726 = tail call ptr @make_ssa_name_fn(ptr noundef %725, ptr noundef %724, ptr noundef null) #22
  %727 = tail call ptr @bitmap_gc_alloc_stat() #22
  br label %728

728:                                              ; preds = %723, %744
  %729 = phi i64 [ %757, %744 ], [ %698, %723 ]
  %730 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %731 = getelementptr inbounds %struct.stack_var, ptr %730, i64 %729
  %732 = load ptr, ptr %731, align 8, !tbaa !224
  %733 = getelementptr inbounds %struct.tree_decl_minimal, ptr %732, i64 0, i32 2
  %734 = load i32, ptr %733, align 4, !tbaa !161
  %735 = load i64, ptr %732, align 8
  %736 = and i64 %735, 65535
  %737 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %736
  %738 = load i32, ptr %737, align 4, !tbaa !165
  %739 = icmp eq i32 %738, 3
  br i1 %739, label %740, label %743

740:                                              ; preds = %728
  %741 = tail call ptr @referenced_var_lookup(i32 noundef %734) #22
  %742 = icmp eq ptr %741, null
  br i1 %742, label %743, label %744

743:                                              ; preds = %740, %728
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 508, ptr noundef nonnull @.str.1) #22
  br label %744

744:                                              ; preds = %743, %740
  %745 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %727, i32 noundef %734) #22
  %746 = zext i32 %734 to i64
  %747 = inttoptr i64 %746 to ptr
  %748 = tail call ptr @pointer_map_insert(ptr noundef %718, ptr noundef %747) #22
  store ptr %727, ptr %748, align 8, !tbaa !150
  %749 = load ptr, ptr @cfun, align 8, !tbaa !150
  %750 = getelementptr inbounds %struct.function, ptr %749, i64 0, i32 3
  %751 = load ptr, ptr %750, align 8, !tbaa !306
  %752 = getelementptr inbounds %struct.gimple_df, ptr %751, i64 0, i32 6
  %753 = load ptr, ptr %752, align 8, !tbaa !343
  %754 = tail call ptr @pointer_map_insert(ptr noundef %753, ptr noundef nonnull %732) #22
  store ptr %726, ptr %754, align 8, !tbaa !150
  %755 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %756 = getelementptr inbounds %struct.stack_var, ptr %755, i64 %729, i32 5
  %757 = load i64, ptr %756, align 8, !tbaa !233
  %758 = icmp eq i64 %757, -1
  br i1 %758, label %759, label %728, !llvm.loop !344

759:                                              ; preds = %744
  %760 = tail call ptr @get_ptr_info(ptr noundef %726) #22
  tail call void @pt_solution_set(ptr noundef %760, ptr noundef %727) #22
  br label %761

761:                                              ; preds = %759, %704, %696
  %762 = phi ptr [ %724, %759 ], [ %699, %704 ], [ %699, %696 ]
  %763 = phi ptr [ %718, %759 ], [ %697, %704 ], [ %697, %696 ]
  %764 = add nuw i64 %698, 1
  %765 = load i64, ptr @stack_vars_num, align 8, !tbaa !174
  %766 = icmp ult i64 %764, %765
  br i1 %766, label %696, label %767, !llvm.loop !345

767:                                              ; preds = %761, %693
  %768 = phi ptr [ null, %693 ], [ %763, %761 ]
  %769 = icmp eq ptr %768, null
  br i1 %769, label %809, label %770

770:                                              ; preds = %767
  %771 = tail call ptr @pointer_set_create() #22
  %772 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  br label %773

773:                                              ; preds = %801, %770
  %774 = phi i64 [ %802, %801 ], [ 1, %770 ]
  %775 = load ptr, ptr @cfun, align 8, !tbaa !150
  %776 = getelementptr inbounds %struct.function, ptr %775, i64 0, i32 3
  %777 = load ptr, ptr %776, align 8, !tbaa !306
  %778 = getelementptr inbounds %struct.gimple_df, ptr %777, i64 0, i32 2
  %779 = load ptr, ptr %778, align 8, !tbaa !307
  %780 = icmp eq ptr %779, null
  br i1 %780, label %783, label %781

781:                                              ; preds = %773
  %782 = load i32, ptr %779, align 8, !tbaa !346
  br label %783

783:                                              ; preds = %781, %773
  %784 = phi i32 [ %782, %781 ], [ 0, %773 ]
  %785 = zext i32 %784 to i64
  %786 = icmp ult i64 %774, %785
  br i1 %786, label %787, label %803

787:                                              ; preds = %783
  %788 = getelementptr inbounds %struct.VEC_tree_base, ptr %779, i64 0, i32 2, i64 %774
  %789 = load ptr, ptr %788, align 8, !tbaa !150
  %790 = icmp eq ptr %789, null
  br i1 %790, label %801, label %791

791:                                              ; preds = %787
  %792 = getelementptr inbounds %struct.tree_common, ptr %789, i64 0, i32 2
  %793 = load ptr, ptr %792, align 8, !tbaa !161
  %794 = load i64, ptr %793, align 8
  %795 = trunc i64 %794 to i16
  switch i16 %795, label %801 [
    i16 10, label %796
    i16 12, label %796
  ]

796:                                              ; preds = %791, %791
  %797 = getelementptr inbounds %struct.tree_ssa_name, ptr %789, i64 0, i32 4
  %798 = load ptr, ptr %797, align 8, !tbaa !161
  %799 = icmp eq ptr %798, null
  br i1 %799, label %801, label %800

800:                                              ; preds = %796
  tail call fastcc void @add_partitioned_vars_to_ptset(ptr noundef nonnull %798, ptr noundef nonnull %768, ptr noundef %771, ptr noundef %772)
  br label %801

801:                                              ; preds = %796, %800, %791, %787
  %802 = add nuw nsw i64 %774, 1
  br label %773, !llvm.loop !348

803:                                              ; preds = %783
  %804 = getelementptr inbounds %struct.gimple_df, ptr %777, i64 0, i32 4
  tail call fastcc void @add_partitioned_vars_to_ptset(ptr noundef nonnull %804, ptr noundef nonnull %768, ptr noundef %771, ptr noundef %772)
  %805 = load ptr, ptr @cfun, align 8, !tbaa !150
  %806 = getelementptr inbounds %struct.function, ptr %805, i64 0, i32 3
  %807 = load ptr, ptr %806, align 8, !tbaa !306
  %808 = getelementptr inbounds %struct.gimple_df, ptr %807, i64 0, i32 5
  tail call fastcc void @add_partitioned_vars_to_ptset(ptr noundef nonnull %808, ptr noundef nonnull %768, ptr noundef %771, ptr noundef %772)
  tail call void @pointer_set_destroy(ptr noundef %771) #22
  tail call void @pointer_map_destroy(ptr noundef nonnull %768) #22
  tail call void @bitmap_obstack_free(ptr noundef %772) #22
  br label %809

809:                                              ; preds = %803, %767, %690, %531
  %810 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %811 = icmp eq ptr %810, null
  br i1 %811, label %853, label %812

812:                                              ; preds = %809
  %813 = load i64, ptr @stack_vars_num, align 8, !tbaa !174
  %814 = icmp eq i64 %813, 0
  br i1 %814, label %853, label %815

815:                                              ; preds = %812, %850
  %816 = phi i64 [ %851, %850 ], [ 0, %812 ]
  %817 = load ptr, ptr @stack_vars_sorted, align 8, !tbaa !150
  %818 = getelementptr inbounds i64, ptr %817, i64 %816
  %819 = load i64, ptr %818, align 8, !tbaa !174
  %820 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %821 = getelementptr inbounds %struct.stack_var, ptr %820, i64 %819, i32 4
  %822 = load i64, ptr %821, align 8, !tbaa !221
  %823 = icmp eq i64 %822, %819
  br i1 %823, label %824, label %850

824:                                              ; preds = %815
  %825 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %826 = getelementptr inbounds %struct.stack_var, ptr %820, i64 %819, i32 2
  %827 = load i64, ptr %826, align 8, !tbaa !223
  %828 = getelementptr inbounds %struct.stack_var, ptr %820, i64 %819, i32 3
  %829 = load i32, ptr %828, align 8, !tbaa !332
  %830 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %825, ptr noundef nonnull @.str.9, i64 noundef %819, i64 noundef %827, i32 noundef %829)
  %831 = icmp eq i64 %819, -1
  br i1 %831, label %850, label %832

832:                                              ; preds = %824, %832
  %833 = phi i64 [ %848, %832 ], [ %819, %824 ]
  %834 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %835 = tail call i32 @fputc(i32 noundef 9, ptr noundef %834)
  %836 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %837 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %838 = getelementptr inbounds %struct.stack_var, ptr %837, i64 %833
  %839 = load ptr, ptr %838, align 8, !tbaa !224
  %840 = load i32, ptr @dump_flags, align 4, !tbaa !165
  tail call void @print_generic_expr(ptr noundef %836, ptr noundef %839, i32 noundef %840) #22
  %841 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %842 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %843 = getelementptr inbounds %struct.stack_var, ptr %842, i64 %833, i32 1
  %844 = load i64, ptr %843, align 8, !tbaa !349
  %845 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %841, ptr noundef nonnull @.str.10, i64 noundef %844)
  %846 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %847 = getelementptr inbounds %struct.stack_var, ptr %846, i64 %833, i32 5
  %848 = load i64, ptr %847, align 8, !tbaa !233
  %849 = icmp eq i64 %848, -1
  br i1 %849, label %850, label %832, !llvm.loop !350

850:                                              ; preds = %832, %824, %815
  %851 = add nuw i64 %816, 1
  %852 = icmp eq i64 %851, %813
  br i1 %852, label %853, label %815, !llvm.loop !351

853:                                              ; preds = %850, %812, %809, %442
  %854 = load i32, ptr @flag_stack_protect, align 4, !tbaa !165
  switch i32 %854, label %855 [
    i32 2, label %863
    i32 0, label %871
  ], !prof !352

855:                                              ; preds = %853
  %856 = load ptr, ptr @cfun, align 8, !tbaa !150
  %857 = getelementptr inbounds %struct.function, ptr %856, i64 0, i32 20
  %858 = load i32, ptr %857, align 8
  %859 = and i32 %858, 524288
  %860 = icmp ne i32 %859, 0
  %861 = load i1, ptr @has_protected_decls, align 1
  %862 = select i1 %860, i1 true, i1 %861
  br i1 %862, label %863, label %871

863:                                              ; preds = %855, %853
  %864 = load ptr, ptr @current_function_decl, align 8, !tbaa !150
  %865 = getelementptr inbounds %struct.tree_decl_minimal, ptr %864, i64 0, i32 1
  %866 = load i32, ptr %865, align 8, !tbaa !161
  %867 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !150
  %868 = tail call ptr @build_decl_stat(i32 noundef %866, i32 noundef 32, ptr noundef null, ptr noundef %867) #22
  %869 = load i64, ptr %868, align 8
  %870 = or i64 %869, 17301504
  store i64 %870, ptr %868, align 8
  tail call fastcc void @expand_one_stack_var(ptr noundef nonnull %868)
  store ptr %868, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8, !tbaa !353
  br label %871

871:                                              ; preds = %855, %863, %853
  %872 = load i64, ptr @stack_vars_num, align 8, !tbaa !174
  %873 = icmp eq i64 %872, 0
  br i1 %873, label %881, label %874, !prof !321

874:                                              ; preds = %871
  %875 = load i1, ptr @has_protected_decls, align 1
  br i1 %875, label %876, label %880

876:                                              ; preds = %874
  tail call fastcc void @expand_stack_vars(ptr noundef nonnull @stack_protect_decl_phase_1)
  %877 = load i32, ptr @flag_stack_protect, align 4, !tbaa !165
  %878 = icmp eq i32 %877, 2
  br i1 %878, label %879, label %880

879:                                              ; preds = %876
  tail call fastcc void @expand_stack_vars(ptr noundef nonnull @stack_protect_decl_phase_2)
  br label %880

880:                                              ; preds = %879, %876, %874
  tail call fastcc void @expand_stack_vars(ptr noundef null)
  tail call fastcc void @fini_vars_expansion()
  br label %881

881:                                              ; preds = %880, %871
  %882 = icmp eq ptr %443, null
  br i1 %882, label %910, label %883, !prof !266

883:                                              ; preds = %881, %908
  %884 = phi ptr [ %898, %908 ], [ %443, %881 ]
  %885 = getelementptr inbounds %struct.tree_list, ptr %884, i64 0, i32 2
  %886 = load ptr, ptr %885, align 8, !tbaa !161
  %887 = load i64, ptr %886, align 8
  %888 = and i64 %887, 65535
  %889 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %888, i64 11
  %890 = load i8, ptr %889, align 1, !tbaa !161
  %891 = icmp eq i8 %890, 0
  br i1 %891, label %895, label %892, !prof !261

892:                                              ; preds = %883
  %893 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %886, i64 0, i32 1
  %894 = load ptr, ptr %893, align 8, !tbaa !161
  br label %895

895:                                              ; preds = %892, %883
  %896 = phi ptr [ null, %883 ], [ %894, %892 ]
  %897 = getelementptr inbounds %struct.tree_common, ptr %884, i64 0, i32 1
  %898 = load ptr, ptr %897, align 8, !tbaa !161
  %899 = icmp eq ptr %896, null
  br i1 %899, label %907, label %900, !prof !321

900:                                              ; preds = %895
  %901 = load i32, ptr %896, align 8
  %902 = trunc i32 %901 to i16
  switch i16 %902, label %907 [
    i16 43, label %903
    i16 41, label %903
  ]

903:                                              ; preds = %900, %900
  %904 = load ptr, ptr @cfun, align 8, !tbaa !150
  %905 = getelementptr inbounds %struct.function, ptr %904, i64 0, i32 9
  %906 = load ptr, ptr %905, align 8, !tbaa !315
  store ptr %906, ptr %897, align 8, !tbaa !161
  store ptr %884, ptr %905, align 8, !tbaa !315
  br label %908

907:                                              ; preds = %900, %895
  tail call void @ggc_free(ptr noundef nonnull %884) #22
  br label %908

908:                                              ; preds = %907, %903
  %909 = icmp eq ptr %898, null
  br i1 %909, label %910, label %883, !prof !354, !llvm.loop !355

910:                                              ; preds = %908, %881
  %911 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !165
  %912 = lshr i32 %911, 3
  %913 = zext nneg i32 %912 to i64
  %914 = sub nsw i64 0, %913
  %915 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !356
  %916 = and i64 %915, %914
  store i64 %916, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !356
  %917 = load i32, ptr @warn_stack_protect, align 4, !tbaa !165
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %937, label %919, !prof !321

919:                                              ; preds = %910
  %920 = load ptr, ptr @cfun, align 8, !tbaa !150
  %921 = getelementptr inbounds %struct.function, ptr %920, i64 0, i32 20
  %922 = load i32, ptr %921, align 8
  %923 = and i32 %922, 524288
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %927, label %925

925:                                              ; preds = %919
  %926 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 181, ptr noundef nonnull @.str.6) #22
  br label %927

927:                                              ; preds = %925, %919
  %928 = load i1, ptr @has_short_buffer, align 1
  %929 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8
  %930 = icmp eq ptr %929, null
  %931 = select i1 %928, i1 %930, i1 false
  br i1 %931, label %932, label %937

932:                                              ; preds = %927
  %933 = load ptr, ptr @compiler_params, align 8, !tbaa !150
  %934 = getelementptr inbounds %struct.param_info, ptr %933, i64 93, i32 1
  %935 = load i32, ptr %934, align 8, !tbaa !357
  %936 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 181, ptr noundef nonnull @.str.7, i32 noundef %935) #22
  br label %937

937:                                              ; preds = %927, %932, %910
  %938 = load ptr, ptr @current_function_decl, align 8, !tbaa !150
  tail call void @expand_function_start(ptr noundef %938) #22
  %939 = load ptr, ptr @SA, align 8, !tbaa !227
  %940 = getelementptr inbounds %struct._var_map, ptr %939, i64 0, i32 3
  %941 = load i32, ptr %940, align 8, !tbaa !256
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %1032, label %943, !prof !266

943:                                              ; preds = %937, %1026
  %944 = phi ptr [ %1028, %1026 ], [ %939, %937 ]
  %945 = phi i32 [ %1027, %1026 ], [ 0, %937 ]
  %946 = getelementptr inbounds %struct._var_map, ptr %944, i64 0, i32 2
  %947 = load ptr, ptr %946, align 8, !tbaa !304
  %948 = icmp eq ptr %947, null
  br i1 %948, label %953, label %949, !prof !305

949:                                              ; preds = %943
  %950 = sext i32 %945 to i64
  %951 = getelementptr inbounds i32, ptr %947, i64 %950
  %952 = load i32, ptr %951, align 4, !tbaa !165
  br label %953

953:                                              ; preds = %943, %949
  %954 = phi i32 [ %952, %949 ], [ %945, %943 ]
  %955 = load ptr, ptr %944, align 8, !tbaa !228
  %956 = sext i32 %954 to i64
  %957 = getelementptr inbounds %struct.partition_def, ptr %955, i64 0, i32 1, i64 %956
  %958 = load i32, ptr %957, align 8, !tbaa !230
  %959 = load ptr, ptr @cfun, align 8, !tbaa !150
  %960 = getelementptr inbounds %struct.function, ptr %959, i64 0, i32 3
  %961 = load ptr, ptr %960, align 8, !tbaa !306
  %962 = getelementptr inbounds %struct.gimple_df, ptr %961, i64 0, i32 2
  %963 = load ptr, ptr %962, align 8, !tbaa !307
  %964 = zext i32 %958 to i64
  %965 = getelementptr inbounds %struct.VEC_tree_base, ptr %963, i64 0, i32 2, i64 %964
  %966 = load ptr, ptr %965, align 8, !tbaa !150
  %967 = getelementptr inbounds %struct.tree_ssa_name, ptr %966, i64 0, i32 1
  %968 = load ptr, ptr %967, align 8, !tbaa !161
  %969 = load i64, ptr %968, align 8
  %970 = and i64 %969, 65535
  %971 = icmp eq i64 %970, 32
  br i1 %971, label %987, label %972, !prof !311

972:                                              ; preds = %953
  %973 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !225
  %974 = zext i32 %945 to i64
  %975 = getelementptr inbounds ptr, ptr %973, i64 %974
  %976 = load ptr, ptr %975, align 8, !tbaa !150
  %977 = icmp eq ptr %976, null
  br i1 %977, label %978, label %987, !prof !321

978:                                              ; preds = %972
  %979 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %970, i64 11
  %980 = load i8, ptr %979, align 1, !tbaa !161
  %981 = icmp eq i8 %980, 0
  br i1 %981, label %985, label %982, !prof !261

982:                                              ; preds = %978
  %983 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %968, i64 0, i32 1
  %984 = load ptr, ptr %983, align 8, !tbaa !161
  br label %985

985:                                              ; preds = %982, %978
  %986 = phi ptr [ null, %978 ], [ %984, %982 ]
  store ptr %986, ptr %975, align 8, !tbaa !150
  br label %987

987:                                              ; preds = %985, %972, %953
  %988 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !225
  %989 = zext i32 %945 to i64
  %990 = getelementptr inbounds ptr, ptr %988, i64 %989
  %991 = load ptr, ptr %990, align 8, !tbaa !150
  %992 = icmp eq ptr %991, null
  br i1 %992, label %993, label %994, !prof !305

993:                                              ; preds = %987
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3792, ptr noundef nonnull @.str.1) #22
  br label %994

994:                                              ; preds = %987, %993
  %995 = load i64, ptr %968, align 8
  %996 = and i64 %995, 65535
  %997 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %996, i64 11
  %998 = load i8, ptr %997, align 1, !tbaa !161
  %999 = icmp eq i8 %998, 0
  br i1 %999, label %1003, label %1000, !prof !305

1000:                                             ; preds = %994
  %1001 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %968, i64 0, i32 1
  %1002 = load ptr, ptr %1001, align 8, !tbaa !161
  br label %1003

1003:                                             ; preds = %1000, %994
  %1004 = phi ptr [ null, %994 ], [ %1002, %1000 ]
  %1005 = load ptr, ptr @global_rtl, align 16, !tbaa !150
  %1006 = icmp eq ptr %1004, %1005
  br i1 %1006, label %1007, label %1008, !prof !359

1007:                                             ; preds = %1003
  tail call void @set_decl_rtl(ptr noundef nonnull %968, ptr noundef null) #22
  br label %1008

1008:                                             ; preds = %1007, %1003
  %1009 = load i64, ptr %968, align 8
  %1010 = and i64 %1009, 65535
  %1011 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %1010, i64 11
  %1012 = load i8, ptr %1011, align 1, !tbaa !161
  %1013 = icmp eq i8 %1012, 0
  br i1 %1013, label %1018, label %1014, !prof !305

1014:                                             ; preds = %1008
  %1015 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %968, i64 0, i32 1
  %1016 = load ptr, ptr %1015, align 8, !tbaa !161
  %1017 = icmp eq ptr %1016, null
  br i1 %1017, label %1018, label %1026, !prof !360

1018:                                             ; preds = %1014, %1008
  %1019 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !225
  %1020 = getelementptr inbounds ptr, ptr %1019, i64 %989
  %1021 = load ptr, ptr %1020, align 8, !tbaa !150
  %1022 = load i32, ptr %1021, align 8
  %1023 = and i32 %1022, 65535
  %1024 = icmp eq i32 %1023, 43
  br i1 %1024, label %1025, label %1026, !prof !361

1025:                                             ; preds = %1018
  tail call void @set_mem_expr(ptr noundef nonnull %1021, ptr noundef null) #22
  br label %1026

1026:                                             ; preds = %1018, %1025, %1014
  %1027 = add nuw i32 %945, 1
  %1028 = load ptr, ptr @SA, align 8, !tbaa !227
  %1029 = getelementptr inbounds %struct._var_map, ptr %1028, i64 0, i32 3
  %1030 = load i32, ptr %1029, align 8, !tbaa !256
  %1031 = icmp ult i32 %1027, %1030
  br i1 %1031, label %943, label %1032, !prof !313, !llvm.loop !362

1032:                                             ; preds = %1026, %937
  %1033 = load ptr, ptr @current_function_decl, align 8, !tbaa !150
  %1034 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1033, i64 0, i32 3
  %1035 = load ptr, ptr %1034, align 8, !tbaa !161
  %1036 = icmp ne ptr %1035, null
  %1037 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 56), align 16
  %1038 = icmp eq ptr %1035, %1037
  %1039 = select i1 %1036, i1 %1038, i1 false, !prof !321
  br i1 %1039, label %1040, label %1049, !prof !261

1040:                                             ; preds = %1032
  %1041 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1033, i64 0, i32 4
  %1042 = load ptr, ptr %1041, align 8, !tbaa !161
  %1043 = icmp eq ptr %1042, null
  br i1 %1043, label %1048, label %1044

1044:                                             ; preds = %1040
  %1045 = load i64, ptr %1042, align 8
  %1046 = and i64 %1045, 65535
  %1047 = icmp eq i64 %1046, 40
  br i1 %1047, label %1048, label %1049

1048:                                             ; preds = %1044, %1040
  tail call void @expand_main_function() #22
  br label %1049

1049:                                             ; preds = %1048, %1044, %1032
  %1050 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8, !tbaa !353
  %1051 = icmp eq ptr %1050, null
  br i1 %1051, label %1053, label %1052, !prof !321

1052:                                             ; preds = %1049
  tail call void @stack_protect_prologue() #22
  br label %1053

1053:                                             ; preds = %1052, %1049
  tail call void @expand_phi_nodes(ptr noundef nonnull @SA) #22
  tail call void @rtl_register_cfg_hooks() #22
  %1054 = load ptr, ptr @cfun, align 8, !tbaa !150
  %1055 = getelementptr inbounds %struct.function, ptr %1054, i64 0, i32 1
  %1056 = load ptr, ptr %1055, align 8, !tbaa !257
  %1057 = load ptr, ptr %1056, align 8, !tbaa !259
  %1058 = getelementptr inbounds %struct.basic_block_def, ptr %1057, i64 0, i32 1
  %1059 = load ptr, ptr %1058, align 8, !tbaa !363
  %1060 = icmp eq ptr %1059, null
  br i1 %1060, label %1064, label %1061, !prof !261

1061:                                             ; preds = %1053
  %1062 = load i32, ptr %1059, align 8, !tbaa !364
  %1063 = icmp eq i32 %1062, 1
  br i1 %1063, label %1065, label %1064, !prof !321

1064:                                             ; preds = %1053, %1061
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3452, ptr noundef nonnull @.str.1) #22
  br label %1065

1065:                                             ; preds = %1064, %1061
  %1066 = load ptr, ptr @cfun, align 8, !tbaa !150
  %1067 = getelementptr inbounds %struct.function, ptr %1066, i64 0, i32 1
  %1068 = load ptr, ptr %1067, align 8, !tbaa !257
  %1069 = load ptr, ptr %1068, align 8, !tbaa !259
  tail call void @init_rtl_bb_info(ptr noundef %1069) #22
  %1070 = load ptr, ptr @cfun, align 8, !tbaa !150
  %1071 = getelementptr inbounds %struct.function, ptr %1070, i64 0, i32 1
  %1072 = load ptr, ptr %1071, align 8, !tbaa !257
  %1073 = getelementptr inbounds %struct.control_flow_graph, ptr %1072, i64 0, i32 1
  %1074 = load ptr, ptr %1073, align 8, !tbaa !265
  tail call void @init_rtl_bb_info(ptr noundef %1074) #22
  %1075 = load ptr, ptr @cfun, align 8, !tbaa !150
  %1076 = getelementptr inbounds %struct.function, ptr %1075, i64 0, i32 1
  %1077 = load ptr, ptr %1076, align 8, !tbaa !257
  %1078 = load ptr, ptr %1077, align 8, !tbaa !259
  %1079 = getelementptr inbounds %struct.basic_block_def, ptr %1078, i64 0, i32 13
  %1080 = load i32, ptr %1079, align 8, !tbaa !269
  %1081 = or i32 %1080, 512
  store i32 %1081, ptr %1079, align 8, !tbaa !269
  %1082 = getelementptr inbounds %struct.control_flow_graph, ptr %1077, i64 0, i32 1
  %1083 = load ptr, ptr %1082, align 8, !tbaa !265
  %1084 = getelementptr inbounds %struct.basic_block_def, ptr %1083, i64 0, i32 13
  %1085 = load i32, ptr %1084, align 8, !tbaa !269
  %1086 = or i32 %1085, 512
  store i32 %1086, ptr %1084, align 8, !tbaa !269
  %1087 = getelementptr inbounds %struct.basic_block_def, ptr %1078, i64 0, i32 1
  %1088 = load ptr, ptr %1087, align 8, !tbaa !363
  %1089 = getelementptr inbounds %struct.VEC_edge_base, ptr %1088, i64 0, i32 2, i64 0
  %1090 = load ptr, ptr %1089, align 8, !tbaa !150
  %1091 = icmp eq ptr %1090, null
  br i1 %1091, label %1101, label %1092, !prof !261

1092:                                             ; preds = %1065
  %1093 = getelementptr inbounds %struct.edge_def, ptr %1090, i64 0, i32 1
  %1094 = load ptr, ptr %1093, align 8, !tbaa !366
  %1095 = getelementptr inbounds %struct.basic_block_def, ptr %1078, i64 0, i32 6
  %1096 = load ptr, ptr %1095, align 8, !tbaa !263
  %1097 = icmp eq ptr %1094, %1096
  br i1 %1097, label %1101, label %1098, !prof !321

1098:                                             ; preds = %1092
  %1099 = tail call ptr @gimple_block_label(ptr noundef %1094) #22
  %1100 = tail call ptr @label_rtx(ptr noundef %1099) #22
  tail call void @emit_jump(ptr noundef %1100) #22
  br label %1101

1101:                                             ; preds = %1098, %1092, %1065
  %1102 = phi i32 [ 0, %1098 ], [ 1, %1092 ], [ 1, %1065 ]
  %1103 = tail call ptr @get_insns() #22
  %1104 = getelementptr inbounds %struct.rtx_def, ptr %1103, i64 0, i32 1, i32 0, i32 0, i64 2
  %1105 = load ptr, ptr %1104, align 8, !tbaa !161
  %1106 = tail call ptr @get_last_insn() #22
  %1107 = load ptr, ptr @cfun, align 8, !tbaa !150
  %1108 = getelementptr inbounds %struct.function, ptr %1107, i64 0, i32 1
  %1109 = load ptr, ptr %1108, align 8, !tbaa !257
  %1110 = load ptr, ptr %1109, align 8, !tbaa !259
  %1111 = tail call ptr @create_basic_block(ptr noundef %1105, ptr noundef %1106, ptr noundef %1110) #22
  %1112 = load ptr, ptr @cfun, align 8, !tbaa !150
  %1113 = getelementptr inbounds %struct.function, ptr %1112, i64 0, i32 1
  %1114 = load ptr, ptr %1113, align 8, !tbaa !257
  %1115 = load ptr, ptr %1114, align 8, !tbaa !259
  %1116 = getelementptr inbounds %struct.basic_block_def, ptr %1115, i64 0, i32 11
  %1117 = load i32, ptr %1116, align 8, !tbaa !368
  %1118 = getelementptr inbounds %struct.basic_block_def, ptr %1111, i64 0, i32 11
  store i32 %1117, ptr %1118, align 8, !tbaa !368
  %1119 = getelementptr inbounds %struct.basic_block_def, ptr %1115, i64 0, i32 8
  %1120 = load i64, ptr %1119, align 8, !tbaa !369
  %1121 = getelementptr inbounds %struct.basic_block_def, ptr %1111, i64 0, i32 8
  store i64 %1120, ptr %1121, align 8, !tbaa !369
  br i1 %1091, label %1126, label %1122, !prof !261

1122:                                             ; preds = %1101
  %1123 = getelementptr inbounds %struct.edge_def, ptr %1090, i64 0, i32 1
  %1124 = load ptr, ptr %1123, align 8, !tbaa !366
  tail call void @redirect_edge_succ(ptr noundef nonnull %1090, ptr noundef %1111) #22
  %1125 = tail call ptr @make_edge(ptr noundef %1111, ptr noundef %1124, i32 noundef %1102) #22
  br label %1130

1126:                                             ; preds = %1101
  %1127 = getelementptr inbounds %struct.control_flow_graph, ptr %1114, i64 0, i32 1
  %1128 = load ptr, ptr %1127, align 8, !tbaa !265
  %1129 = tail call ptr @make_edge(ptr noundef %1111, ptr noundef %1128, i32 noundef 1) #22
  br label %1130

1130:                                             ; preds = %1122, %1126
  %1131 = phi ptr [ %1125, %1122 ], [ %1129, %1126 ]
  %1132 = getelementptr inbounds %struct.edge_def, ptr %1131, i64 0, i32 8
  store i32 10000, ptr %1132, align 4, !tbaa !370
  %1133 = load ptr, ptr @cfun, align 8, !tbaa !150
  %1134 = getelementptr inbounds %struct.function, ptr %1133, i64 0, i32 1
  %1135 = load ptr, ptr %1134, align 8, !tbaa !257
  %1136 = load ptr, ptr %1135, align 8, !tbaa !259
  %1137 = getelementptr inbounds %struct.basic_block_def, ptr %1136, i64 0, i32 8
  %1138 = load i64, ptr %1137, align 8, !tbaa !369
  %1139 = getelementptr inbounds %struct.edge_def, ptr %1131, i64 0, i32 9
  store i64 %1138, ptr %1139, align 8, !tbaa !371
  tail call void @update_bb_for_insn(ptr noundef %1111) #22
  %1140 = load ptr, ptr @cfun, align 8, !tbaa !150
  %1141 = getelementptr inbounds %struct.function, ptr %1140, i64 0, i32 1
  %1142 = load ptr, ptr %1141, align 8, !tbaa !257
  %1143 = load ptr, ptr %1142, align 8, !tbaa !259
  %1144 = getelementptr inbounds %struct.basic_block_def, ptr %1143, i64 0, i32 1
  br label %1145

1145:                                             ; preds = %1171, %1130
  %1146 = phi i32 [ 0, %1130 ], [ %1172, %1171 ]
  %1147 = load ptr, ptr %1144, align 8, !tbaa !150
  %1148 = icmp eq ptr %1147, null
  br i1 %1148, label %1151, label %1149, !prof !372

1149:                                             ; preds = %1145
  %1150 = load i32, ptr %1147, align 8, !tbaa !364
  br label %1151

1151:                                             ; preds = %1149, %1145
  %1152 = phi i32 [ %1150, %1149 ], [ 0, %1145 ]
  %1153 = icmp eq i32 %1152, %1146
  br i1 %1153, label %1158, label %1154, !prof !373

1154:                                             ; preds = %1151
  %1155 = zext i32 %1146 to i64
  %1156 = getelementptr inbounds %struct.VEC_edge_base, ptr %1147, i64 0, i32 2, i64 %1155
  %1157 = load ptr, ptr %1156, align 8, !tbaa !150
  br label %1158

1158:                                             ; preds = %1151, %1154
  %1159 = phi ptr [ %1157, %1154 ], [ null, %1151 ]
  br i1 %1153, label %1173, label %1160, !prof !373

1160:                                             ; preds = %1158
  %1161 = getelementptr inbounds %struct.edge_def, ptr %1159, i64 0, i32 7
  %1162 = load i32, ptr %1161, align 8, !tbaa !374
  %1163 = and i32 %1162, -4097
  store i32 %1163, ptr %1161, align 8, !tbaa !374
  %1164 = icmp eq ptr %1147, null
  br i1 %1164, label %1167, label %1165, !prof !261

1165:                                             ; preds = %1160
  %1166 = load i32, ptr %1147, align 8, !tbaa !364
  br label %1167

1167:                                             ; preds = %1165, %1160
  %1168 = phi i32 [ %1166, %1165 ], [ 0, %1160 ]
  %1169 = icmp ult i32 %1146, %1168
  br i1 %1169, label %1171, label %1170, !prof !321

1170:                                             ; preds = %1167
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %1171

1171:                                             ; preds = %1167, %1170
  %1172 = add i32 %1146, 1
  br label %1145, !llvm.loop !375

1173:                                             ; preds = %1158
  %1174 = tail call ptr @pointer_map_create() #22
  store ptr %1174, ptr @lab_rtx_for_bb, align 8, !tbaa !150
  %1175 = getelementptr inbounds %struct.basic_block_def, ptr %1111, i64 0, i32 6
  %1176 = load ptr, ptr %1175, align 8, !tbaa !263
  %1177 = load ptr, ptr @cfun, align 8, !tbaa !150
  %1178 = getelementptr inbounds %struct.function, ptr %1177, i64 0, i32 1
  %1179 = load ptr, ptr %1178, align 8, !tbaa !257
  %1180 = getelementptr inbounds %struct.control_flow_graph, ptr %1179, i64 0, i32 1
  %1181 = load ptr, ptr %1180, align 8, !tbaa !265
  %1182 = icmp eq ptr %1176, %1181
  br i1 %1182, label %2756, label %1183, !prof !266

1183:                                             ; preds = %1173
  %1184 = getelementptr inbounds i8, ptr %3, i64 8
  %1185 = getelementptr inbounds i8, ptr %3, i64 16
  br label %1186

1186:                                             ; preds = %1183, %2746
  %1187 = phi ptr [ %1176, %1183 ], [ %2749, %2746 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %1188 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %1189 = icmp eq ptr %1188, null
  br i1 %1189, label %1194, label %1190, !prof !273

1190:                                             ; preds = %1186
  %1191 = getelementptr inbounds %struct.basic_block_def, ptr %1187, i64 0, i32 9
  %1192 = load i32, ptr %1191, align 8, !tbaa !376
  %1193 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1188, ptr noundef nonnull @.str.12, i32 noundef %1192)
  br label %1194

1194:                                             ; preds = %1190, %1186
  %1195 = getelementptr inbounds %struct.basic_block_def, ptr %1187, i64 0, i32 13
  %1196 = load i32, ptr %1195, align 8, !tbaa !269
  %1197 = and i32 %1196, 512
  %1198 = icmp eq i32 %1197, 0
  br i1 %1198, label %1199, label %1205, !prof !273

1199:                                             ; preds = %1194
  %1200 = getelementptr inbounds %struct.basic_block_def, ptr %1187, i64 0, i32 7
  %1201 = load ptr, ptr %1200, align 8, !tbaa !161
  %1202 = icmp eq ptr %1201, null
  br i1 %1202, label %1205, label %1203, !prof !274

1203:                                             ; preds = %1199
  %1204 = load ptr, ptr %1201, align 8, !tbaa !275
  br label %1205

1205:                                             ; preds = %1203, %1199, %1194
  %1206 = phi ptr [ %1204, %1203 ], [ null, %1199 ], [ null, %1194 ]
  %1207 = getelementptr inbounds %struct.basic_block_def, ptr %1187, i64 0, i32 7
  store ptr null, ptr %1207, align 8, !tbaa !161
  call void @rtl_profile_for_bb(ptr noundef %1187) #22
  call void @init_rtl_bb_info(ptr noundef %1187) #22
  %1208 = load i32, ptr %1195, align 8, !tbaa !269
  %1209 = or i32 %1208, 512
  store i32 %1209, ptr %1195, align 8, !tbaa !269
  %1210 = icmp eq ptr %1206, null
  br i1 %1210, label %1214, label %1211, !prof !274

1211:                                             ; preds = %1205
  %1212 = getelementptr inbounds %struct.gimple_seq_d, ptr %1206, i64 0, i32 1
  %1213 = load ptr, ptr %1212, align 8, !tbaa !377, !noalias !378
  br label %1214

1214:                                             ; preds = %1211, %1205
  %1215 = phi ptr [ %1213, %1211 ], [ null, %1205 ]
  %1216 = icmp eq ptr %1215, null
  br i1 %1216, label %1305, label %1217, !prof !381

1217:                                             ; preds = %1214
  %1218 = load ptr, ptr %1215, align 8, !tbaa !280, !noalias !378
  %1219 = icmp eq ptr %1218, null
  br i1 %1219, label %1223, label %1220, !prof !382

1220:                                             ; preds = %1217
  %1221 = getelementptr inbounds %struct.gimple_statement_base, ptr %1218, i64 0, i32 4
  %1222 = load ptr, ptr %1221, align 8, !tbaa !161, !noalias !378
  br label %1223

1223:                                             ; preds = %1220, %1217
  %1224 = phi ptr [ %1222, %1220 ], [ null, %1217 ]
  store ptr %1215, ptr %3, align 8, !tbaa.struct !383
  store ptr %1206, ptr %1184, align 8, !tbaa.struct !384
  store ptr %1224, ptr %1185, align 8, !tbaa.struct !385
  br i1 %1216, label %1306, label %1225, !prof !381

1225:                                             ; preds = %1223
  %1226 = load ptr, ptr %1215, align 8, !tbaa !280
  %1227 = load i32, ptr %1226, align 8
  %1228 = and i32 %1227, 255
  %1229 = icmp eq i32 %1228, 9
  br i1 %1229, label %1230, label %1306, !prof !386

1230:                                             ; preds = %1225
  %1231 = getelementptr inbounds %struct.basic_block_def, ptr %1187, i64 0, i32 1
  %1232 = load ptr, ptr %1231, align 8, !tbaa !363
  %1233 = icmp eq ptr %1232, null
  br i1 %1233, label %1238, label %1234, !prof !261

1234:                                             ; preds = %1230
  %1235 = load i32, ptr %1232, align 8, !tbaa !364
  %1236 = icmp eq i32 %1235, 1
  %1237 = zext i1 %1236 to i8
  br label %1238

1238:                                             ; preds = %1234, %1230
  %1239 = phi i8 [ %1237, %1234 ], [ 0, %1230 ]
  %1240 = icmp eq i8 %1239, 0
  br i1 %1240, label %1241, label %1242, !prof !261

1241:                                             ; preds = %1238
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3137, ptr noundef nonnull @.str.1) #22
  br label %1242

1242:                                             ; preds = %1241, %1238
  %1243 = load ptr, ptr %1231, align 8, !tbaa !363
  %1244 = icmp eq ptr %1243, null
  br i1 %1244, label %1248, label %1245, !prof !261

1245:                                             ; preds = %1242
  %1246 = load i32, ptr %1243, align 8, !tbaa !364
  %1247 = icmp eq i32 %1246, 1
  br i1 %1247, label %1249, label %1248, !prof !321

1248:                                             ; preds = %1245, %1242
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 645, ptr noundef nonnull @.str.1) #22
  br label %1249

1249:                                             ; preds = %1248, %1245
  %1250 = load ptr, ptr %1231, align 8, !tbaa !363
  %1251 = getelementptr inbounds %struct.VEC_edge_base, ptr %1250, i64 0, i32 2, i64 0
  %1252 = load ptr, ptr %1251, align 8, !tbaa !150
  %1253 = getelementptr inbounds %struct.edge_def, ptr %1252, i64 0, i32 1
  %1254 = load ptr, ptr %1253, align 8, !tbaa !366
  %1255 = load ptr, ptr @cfun, align 8, !tbaa !150
  %1256 = getelementptr inbounds %struct.function, ptr %1255, i64 0, i32 1
  %1257 = load ptr, ptr %1256, align 8, !tbaa !257
  %1258 = getelementptr inbounds %struct.control_flow_graph, ptr %1257, i64 0, i32 1
  %1259 = load ptr, ptr %1258, align 8, !tbaa !265
  %1260 = icmp eq ptr %1254, %1259
  br i1 %1260, label %1262, label %1261, !prof !321

1261:                                             ; preds = %1249
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3138, ptr noundef nonnull @.str.1) #22
  br label %1262

1262:                                             ; preds = %1261, %1249
  %1263 = getelementptr inbounds %struct.basic_block_def, ptr %1187, i64 0, i32 6
  %1264 = load ptr, ptr %1263, align 8, !tbaa !263
  %1265 = load ptr, ptr @cfun, align 8, !tbaa !150
  %1266 = getelementptr inbounds %struct.function, ptr %1265, i64 0, i32 1
  %1267 = load ptr, ptr %1266, align 8, !tbaa !257
  %1268 = getelementptr inbounds %struct.control_flow_graph, ptr %1267, i64 0, i32 1
  %1269 = load ptr, ptr %1268, align 8, !tbaa !265
  %1270 = icmp eq ptr %1264, %1269
  br i1 %1270, label %1271, label %1306, !prof !387

1271:                                             ; preds = %1262
  %1272 = load i32, ptr %1226, align 8
  %1273 = and i32 %1272, 255
  %1274 = add nsw i32 %1273, -10
  %1275 = icmp ult i32 %1274, -9
  br i1 %1275, label %1288, label %1276, !prof !388

1276:                                             ; preds = %1271
  %1277 = zext nneg i32 %1273 to i64
  %1278 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1277
  %1279 = load i32, ptr %1278, align 4, !tbaa !165
  %1280 = zext i32 %1279 to i64
  %1281 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1280
  %1282 = load i64, ptr %1281, align 8, !tbaa !174
  %1283 = icmp eq i64 %1282, 0
  br i1 %1283, label %1284, label %1285, !prof !388

1284:                                             ; preds = %1276
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1285

1285:                                             ; preds = %1284, %1276
  %1286 = getelementptr inbounds i8, ptr %1226, i64 %1282
  %1287 = load ptr, ptr %1286, align 8, !tbaa !150
  br label %1288

1288:                                             ; preds = %1285, %1271
  %1289 = phi ptr [ %1287, %1285 ], [ null, %1271 ]
  %1290 = icmp eq ptr %1289, null
  br i1 %1290, label %1291, label %1306, !prof !388

1291:                                             ; preds = %1288
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 0) #22
  %1292 = load ptr, ptr %1231, align 8, !tbaa !363
  %1293 = icmp eq ptr %1292, null
  br i1 %1293, label %1297, label %1294

1294:                                             ; preds = %1291
  %1295 = load i32, ptr %1292, align 8, !tbaa !364
  %1296 = icmp eq i32 %1295, 1
  br i1 %1296, label %1298, label %1297

1297:                                             ; preds = %1294, %1291
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 645, ptr noundef nonnull @.str.1) #22
  br label %1298

1298:                                             ; preds = %1297, %1294
  %1299 = load ptr, ptr %1231, align 8, !tbaa !363
  %1300 = getelementptr inbounds %struct.VEC_edge_base, ptr %1299, i64 0, i32 2, i64 0
  %1301 = load ptr, ptr %1300, align 8, !tbaa !150
  %1302 = getelementptr inbounds %struct.edge_def, ptr %1301, i64 0, i32 7
  %1303 = load i32, ptr %1302, align 8, !tbaa !374
  %1304 = or i32 %1303, 1
  store i32 %1304, ptr %1302, align 8, !tbaa !374
  br label %1306

1305:                                             ; preds = %1214
  store ptr %1215, ptr %3, align 8, !tbaa.struct !383
  store ptr %1206, ptr %1184, align 8, !tbaa.struct !384
  store ptr null, ptr %1185, align 8, !tbaa.struct !385
  br label %1306

1306:                                             ; preds = %1305, %1298, %1288, %1262, %1225, %1223
  br i1 %1210, label %1309, label %1307, !prof !274

1307:                                             ; preds = %1306
  %1308 = load ptr, ptr %1206, align 8, !tbaa !277, !noalias !389
  br label %1309

1309:                                             ; preds = %1307, %1306
  %1310 = phi ptr [ %1308, %1307 ], [ null, %1306 ]
  %1311 = icmp eq ptr %1310, null
  br i1 %1311, label %1325, label %1312, !prof !381

1312:                                             ; preds = %1309
  %1313 = load ptr, ptr %1310, align 8, !tbaa !280, !noalias !389
  %1314 = icmp eq ptr %1313, null
  br i1 %1314, label %1318, label %1315, !prof !382

1315:                                             ; preds = %1312
  %1316 = getelementptr inbounds %struct.gimple_statement_base, ptr %1313, i64 0, i32 4
  %1317 = load ptr, ptr %1316, align 8, !tbaa !161, !noalias !389
  br label %1318

1318:                                             ; preds = %1315, %1312
  %1319 = phi ptr [ %1317, %1315 ], [ null, %1312 ]
  store ptr %1310, ptr %3, align 8, !tbaa.struct !383
  store ptr %1206, ptr %1184, align 8, !tbaa.struct !384
  store ptr %1319, ptr %1185, align 8, !tbaa.struct !385
  %1320 = load ptr, ptr %1310, align 8, !tbaa !280
  %1321 = load i32, ptr %1320, align 8
  %1322 = and i32 %1321, 255
  %1323 = icmp eq i32 %1322, 4
  %1324 = select i1 %1323, ptr %1320, ptr null, !prof !392
  br label %1326

1325:                                             ; preds = %1309
  store ptr %1310, ptr %3, align 8, !tbaa.struct !383
  store ptr %1206, ptr %1184, align 8, !tbaa.struct !384
  store ptr null, ptr %1185, align 8, !tbaa.struct !385
  br label %1326

1326:                                             ; preds = %1325, %1318
  %1327 = phi ptr [ %1324, %1318 ], [ null, %1325 ]
  %1328 = load ptr, ptr @lab_rtx_for_bb, align 8, !tbaa !150
  %1329 = call ptr @pointer_map_contains(ptr noundef %1328, ptr noundef %1187) #22
  %1330 = icmp ne ptr %1327, null
  %1331 = icmp ne ptr %1329, null
  %1332 = select i1 %1330, i1 true, i1 %1331, !prof !393
  br i1 %1332, label %1333, label %1380, !prof !394

1333:                                             ; preds = %1326
  %1334 = call ptr @get_last_insn() #22
  br i1 %1330, label %1335, label %1340, !prof !395

1335:                                             ; preds = %1333
  %1336 = call fastcc ptr @expand_gimple_stmt(ptr noundef nonnull %1327)
  %1337 = load ptr, ptr %3, align 8, !tbaa !396
  %1338 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1337, i64 0, i32 2
  %1339 = load ptr, ptr %1338, align 8, !tbaa !283
  store ptr %1339, ptr %3, align 8, !tbaa !396
  br label %1340

1340:                                             ; preds = %1335, %1333
  br i1 %1331, label %1341, label %1344, !prof !398

1341:                                             ; preds = %1340
  %1342 = load ptr, ptr %1329, align 8, !tbaa !150
  %1343 = call ptr @emit_label(ptr noundef %1342) #22
  br label %1344

1344:                                             ; preds = %1341, %1340
  %1345 = getelementptr inbounds %struct.rtx_def, ptr %1334, i64 0, i32 1, i32 0, i32 0, i64 2
  %1346 = load ptr, ptr %1345, align 8, !tbaa !161
  %1347 = load ptr, ptr %1207, align 8, !tbaa !161
  store ptr %1346, ptr %1347, align 8, !tbaa !399
  %1348 = load ptr, ptr %1207, align 8, !tbaa !161
  %1349 = load ptr, ptr %1348, align 8, !tbaa !399
  %1350 = load i32, ptr %1349, align 8
  %1351 = and i32 %1350, 65535
  %1352 = icmp eq i32 %1351, 13
  br i1 %1352, label %1353, label %1356, !prof !401

1353:                                             ; preds = %1344
  %1354 = getelementptr inbounds %struct.rtx_def, ptr %1349, i64 0, i32 1, i32 0, i32 0, i64 2
  %1355 = load ptr, ptr %1354, align 8, !tbaa !161
  store ptr %1355, ptr %1348, align 8, !tbaa !399
  br label %1356

1356:                                             ; preds = %1353, %1344
  %1357 = load ptr, ptr %1207, align 8, !tbaa !161
  %1358 = load ptr, ptr %1357, align 8, !tbaa !399
  %1359 = call ptr @emit_note_after(i32 noundef 10, ptr noundef %1358) #22
  %1360 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %1361 = icmp eq ptr %1360, null
  br i1 %1361, label %1383, label %1362, !prof !402

1362:                                             ; preds = %1356
  %1363 = load i32, ptr @dump_flags, align 4, !tbaa !165
  %1364 = and i32 %1363, 8
  %1365 = icmp eq i32 %1364, 0
  br i1 %1365, label %1383, label %1366

1366:                                             ; preds = %1362
  %1367 = call i64 @fwrite(ptr nonnull @.str.13, i64 4, i64 1, ptr nonnull %1360)
  %1368 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %1369 = load i32, ptr @dump_flags, align 4, !tbaa !165
  %1370 = and i32 %1369, 128
  %1371 = or disjoint i32 %1370, 2
  call void @print_gimple_stmt(ptr noundef %1368, ptr noundef %1327, i32 noundef 0, i32 noundef %1371) #22
  %1372 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %1373 = call i32 @fputc(i32 10, ptr %1372)
  %1374 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %1375 = icmp eq ptr %1334, null
  br i1 %1375, label %1378, label %1376

1376:                                             ; preds = %1366
  %1377 = load ptr, ptr %1345, align 8, !tbaa !161
  br label %1378

1378:                                             ; preds = %1376, %1366
  %1379 = phi ptr [ %1377, %1376 ], [ null, %1366 ]
  call void @print_rtl(ptr noundef %1374, ptr noundef %1379) #22
  br label %1383

1380:                                             ; preds = %1326
  %1381 = call ptr @emit_note(i32 noundef 10) #22
  %1382 = load ptr, ptr %1207, align 8, !tbaa !161
  store ptr %1381, ptr %1382, align 8, !tbaa !399
  br label %1383

1383:                                             ; preds = %1378, %1362, %1356, %1380
  %1384 = phi ptr [ %1381, %1380 ], [ %1359, %1356 ], [ %1359, %1362 ], [ %1359, %1378 ]
  %1385 = getelementptr inbounds %struct.rtx_def, ptr %1384, i64 0, i32 1, i32 0, i32 2
  store ptr %1187, ptr %1385, align 8, !tbaa !161
  %1386 = load ptr, ptr %3, align 8
  %1387 = icmp eq ptr %1386, null
  br i1 %1387, label %2638, label %1388, !prof !403

1388:                                             ; preds = %1383, %2633
  %1389 = phi ptr [ %2636, %2633 ], [ %1386, %1383 ]
  %1390 = phi ptr [ %2632, %2633 ], [ undef, %1383 ]
  %1391 = phi ptr [ %2631, %2633 ], [ %1187, %1383 ]
  %1392 = load ptr, ptr %1389, align 8, !tbaa !280
  %1393 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !165
  %1394 = icmp ne i32 %1393, 0
  %1395 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 1), align 8
  %1396 = icmp ne ptr %1395, null
  %1397 = select i1 %1394, i1 %1396, i1 false, !prof !404
  br i1 %1397, label %1398, label %1617, !prof !404

1398:                                             ; preds = %1388
  %1399 = load i32, ptr %1392, align 8
  %1400 = and i32 %1399, 255
  %1401 = icmp eq i32 %1400, 2
  br i1 %1401, label %1617, label %1402

1402:                                             ; preds = %1398
  %1403 = call i32 @get_curr_insn_source_location() #22
  %1404 = call ptr @get_curr_insn_block() #22
  %1405 = load i32, ptr %1392, align 8
  %1406 = and i32 %1405, 255
  %1407 = add nsw i32 %1406, -10
  %1408 = icmp ult i32 %1407, -9
  br i1 %1408, label %1412, label %1409

1409:                                             ; preds = %1402
  %1410 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1392, i64 0, i32 2
  %1411 = load ptr, ptr %1410, align 8, !tbaa !161
  br label %1412

1412:                                             ; preds = %1409, %1402
  %1413 = phi ptr [ %1411, %1409 ], [ null, %1402 ]
  %1414 = icmp eq ptr %1413, null
  br i1 %1414, label %1425, label %1415

1415:                                             ; preds = %1412
  %1416 = and i32 %1405, 254
  %1417 = add nsw i32 %1416, -10
  %1418 = icmp ult i32 %1417, -4
  br i1 %1418, label %1425, label %1419

1419:                                             ; preds = %1415
  %1420 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1392, i64 0, i32 2
  %1421 = load ptr, ptr %1420, align 8, !tbaa !161
  %1422 = icmp eq ptr %1421, null
  br i1 %1422, label %1425, label %1423

1423:                                             ; preds = %1419
  %1424 = load ptr, ptr %1413, align 8, !tbaa !405
  br label %1425

1425:                                             ; preds = %1423, %1419, %1415, %1412
  %1426 = phi ptr [ %1413, %1412 ], [ %1413, %1415 ], [ %1413, %1419 ], [ %1424, %1423 ]
  %1427 = icmp eq ptr %1426, null
  br i1 %1427, label %1433, label %1428

1428:                                             ; preds = %1425
  %1429 = getelementptr inbounds %struct.use_optype_d, ptr %1426, i64 0, i32 1, i32 3
  %1430 = load ptr, ptr %1429, align 8, !tbaa !408
  %1431 = load ptr, ptr %1430, align 8, !tbaa !150
  %1432 = load ptr, ptr %1426, align 8, !tbaa !405
  br label %1433

1433:                                             ; preds = %1428, %1425
  %1434 = phi ptr [ %1432, %1428 ], [ %1426, %1425 ]
  %1435 = phi i8 [ 0, %1428 ], [ 1, %1425 ]
  %1436 = phi ptr [ %1431, %1428 ], [ null, %1425 ]
  br i1 %1427, label %1616, label %1437

1437:                                             ; preds = %1433
  %1438 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %4, i64 0, i32 1
  %1439 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %4, i64 0, i32 3
  %1440 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %4, i64 0, i32 2
  %1441 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %4, i64 0, i32 2, i32 1
  br label %1442

1442:                                             ; preds = %1437, %1611
  %1443 = phi ptr [ %1614, %1611 ], [ %1436, %1437 ]
  %1444 = phi i8 [ %1613, %1611 ], [ %1435, %1437 ]
  %1445 = phi ptr [ %1612, %1611 ], [ %1434, %1437 ]
  %1446 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 1), align 8, !tbaa !409
  %1447 = icmp eq ptr %1446, null
  br i1 %1447, label %1456, label %1448

1448:                                             ; preds = %1442
  %1449 = getelementptr inbounds %struct.tree_ssa_name, ptr %1443, i64 0, i32 3
  %1450 = load i32, ptr %1449, align 8, !tbaa !161
  %1451 = call i32 @bitmap_bit_p(ptr noundef nonnull %1446, i32 noundef %1450) #22
  %1452 = icmp eq i32 %1451, 0
  br i1 %1452, label %1456, label %1453

1453:                                             ; preds = %1448
  %1454 = getelementptr inbounds %struct.tree_ssa_name, ptr %1443, i64 0, i32 2
  %1455 = load ptr, ptr %1454, align 8, !tbaa !161
  br label %1456

1456:                                             ; preds = %1453, %1448, %1442
  %1457 = phi ptr [ %1455, %1453 ], [ null, %1448 ], [ null, %1442 ]
  %1458 = icmp eq ptr %1457, null
  br i1 %1458, label %1604, label %1459

1459:                                             ; preds = %1456
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #22
  %1460 = getelementptr inbounds %struct.tree_ssa_name, ptr %1443, i64 0, i32 5
  store ptr %1460, ptr %1438, align 8, !tbaa !410
  %1461 = getelementptr inbounds %struct.tree_ssa_name, ptr %1443, i64 0, i32 5, i32 1
  %1462 = load ptr, ptr %1461, align 8, !tbaa !412
  store ptr %1462, ptr %4, align 8, !tbaa !413
  %1463 = icmp eq ptr %1462, %1460
  br i1 %1463, label %1603, label %1464

1464:                                             ; preds = %1459, %1472
  %1465 = phi ptr [ %1476, %1472 ], [ %1462, %1459 ]
  %1466 = phi ptr [ %1474, %1472 ], [ %1462, %1459 ]
  %1467 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1465, i64 0, i32 2
  %1468 = load ptr, ptr %1467, align 8, !tbaa !161
  %1469 = load i32, ptr %1468, align 8
  %1470 = and i32 %1469, -65281
  %1471 = icmp eq i32 %1470, 2
  br i1 %1471, label %1478, label %1472

1472:                                             ; preds = %1464
  %1473 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1466, i64 0, i32 1
  %1474 = load ptr, ptr %1473, align 8, !tbaa !412
  store ptr %1474, ptr %4, align 8, !tbaa !413
  %1475 = icmp eq ptr %1474, %1460
  %1476 = select i1 %1475, ptr null, ptr %1474
  %1477 = icmp eq ptr %1474, %1460
  br i1 %1477, label %1603, label %1464, !llvm.loop !414

1478:                                             ; preds = %1464
  %1479 = call ptr @gimple_assign_rhs_to_tree(ptr noundef nonnull %1457)
  %1480 = call ptr @make_node_stat(i32 noundef 37) #22
  %1481 = getelementptr inbounds %struct.gimple_statement_base, ptr %1457, i64 0, i32 2
  %1482 = load i32, ptr %1481, align 8, !tbaa !161
  call void @set_curr_insn_source_location(i32 noundef %1482) #22
  %1483 = getelementptr inbounds %struct.gimple_statement_base, ptr %1457, i64 0, i32 5
  %1484 = load ptr, ptr %1483, align 8, !tbaa !161
  call void @set_curr_insn_block(ptr noundef %1484) #22
  %1485 = getelementptr inbounds %struct.tree_decl_common, ptr %1480, i64 0, i32 2
  %1486 = load i64, ptr %1485, align 8
  %1487 = or i64 %1486, 4096
  store i64 %1487, ptr %1485, align 8
  %1488 = getelementptr inbounds %struct.tree_common, ptr %1479, i64 0, i32 2
  %1489 = load ptr, ptr %1488, align 8, !tbaa !161
  %1490 = getelementptr inbounds %struct.tree_common, ptr %1480, i64 0, i32 2
  store ptr %1489, ptr %1490, align 8, !tbaa !161
  %1491 = load i64, ptr %1479, align 8
  %1492 = and i64 %1491, 65535
  %1493 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1492
  %1494 = load i32, ptr %1493, align 4, !tbaa !165
  %1495 = icmp eq i32 %1494, 3
  br i1 %1495, label %1496, label %1501

1496:                                             ; preds = %1478
  %1497 = getelementptr inbounds %struct.tree_decl_common, ptr %1479, i64 0, i32 2
  %1498 = load i64, ptr %1497, align 8
  %1499 = trunc i64 %1498 to i32
  %1500 = and i32 %1499, 255
  br label %1513

1501:                                             ; preds = %1478
  %1502 = load ptr, ptr %1488, align 8, !tbaa !161
  %1503 = load i64, ptr %1502, align 8
  %1504 = and i64 %1503, 65535
  %1505 = icmp eq i64 %1504, 14
  br i1 %1505, label %1506, label %1508

1506:                                             ; preds = %1501
  %1507 = call i32 @vector_type_mode(ptr noundef nonnull %1502) #22
  br label %1513

1508:                                             ; preds = %1501
  %1509 = getelementptr inbounds %struct.tree_type, ptr %1502, i64 0, i32 6
  %1510 = load i32, ptr %1509, align 4
  %1511 = lshr i32 %1510, 16
  %1512 = and i32 %1511, 255
  br label %1513

1513:                                             ; preds = %1508, %1506, %1496
  %1514 = phi i32 [ %1500, %1496 ], [ %1507, %1506 ], [ %1512, %1508 ]
  %1515 = load i64, ptr %1485, align 8
  %1516 = and i32 %1514, 255
  %1517 = zext nneg i32 %1516 to i64
  %1518 = and i64 %1515, -256
  %1519 = or disjoint i64 %1518, %1517
  store i64 %1519, ptr %1485, align 8
  %1520 = call ptr @gen_rtx_fmt_tei_stat(i32 noundef 138, i32 noundef %1514, ptr noundef %1480, ptr noundef nonnull %1479, i32 noundef 2) #22
  %1521 = call ptr @emit_debug_insn(ptr noundef %1520) #22
  store ptr %1460, ptr %1438, align 8, !tbaa !410
  %1522 = load ptr, ptr %1461, align 8, !tbaa !412
  store ptr %1522, ptr %4, align 8, !tbaa !413
  %1523 = icmp eq ptr %1522, %1460
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1440, i8 0, i64 40, i1 false)
  br i1 %1523, label %1528, label %1524

1524:                                             ; preds = %1513
  call fastcc void @link_use_stmts_after(ptr noundef %1522, ptr noundef nonnull %4)
  %1525 = load ptr, ptr %4, align 8, !tbaa !413
  %1526 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1525, i64 0, i32 2
  %1527 = load ptr, ptr %1526, align 8, !tbaa !161
  br label %1528

1528:                                             ; preds = %1524, %1513
  %1529 = phi ptr [ %1527, %1524 ], [ null, %1513 ]
  %1530 = load ptr, ptr %4, align 8, !tbaa !413
  %1531 = load ptr, ptr %1438, align 8, !tbaa !410
  %1532 = icmp eq ptr %1530, %1531
  br i1 %1532, label %1603, label %1533

1533:                                             ; preds = %1528
  %1534 = icmp eq ptr %1480, null
  %1535 = getelementptr inbounds %struct.tree_ssa_name, ptr %1480, i64 0, i32 5, i32 1
  br label %1536

1536:                                             ; preds = %1533, %1598
  %1537 = phi ptr [ %1530, %1533 ], [ %1600, %1598 ]
  %1538 = phi ptr [ %1529, %1533 ], [ %1599, %1598 ]
  %1539 = load i32, ptr %1538, align 8
  %1540 = and i32 %1539, -65281
  %1541 = icmp eq i32 %1540, 2
  br i1 %1541, label %1542, label %1584

1542:                                             ; preds = %1536
  %1543 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1537, i64 0, i32 1
  %1544 = load ptr, ptr %1543, align 8, !tbaa !412
  store ptr %1544, ptr %1439, align 8, !tbaa !415
  %1545 = load ptr, ptr %4, align 8, !tbaa !413
  %1546 = icmp eq ptr %1545, %1440
  br i1 %1546, label %1578, label %1547

1547:                                             ; preds = %1542, %1574
  %1548 = phi ptr [ %1575, %1574 ], [ %1537, %1542 ]
  %1549 = load ptr, ptr %1548, align 8, !tbaa !416
  %1550 = icmp eq ptr %1549, null
  br i1 %1550, label %1556, label %1551

1551:                                             ; preds = %1547
  %1552 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1548, i64 0, i32 1
  %1553 = load ptr, ptr %1552, align 8, !tbaa !412
  %1554 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1549, i64 0, i32 1
  store ptr %1553, ptr %1554, align 8, !tbaa !412
  %1555 = load ptr, ptr %1552, align 8, !tbaa !412
  store ptr %1549, ptr %1555, align 8, !tbaa !416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1548, i8 0, i64 16, i1 false)
  br label %1556

1556:                                             ; preds = %1551, %1547
  %1557 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1548, i64 0, i32 3
  %1558 = load ptr, ptr %1557, align 8, !tbaa !408
  store ptr %1480, ptr %1558, align 8, !tbaa !150
  br i1 %1534, label %1563, label %1559

1559:                                             ; preds = %1556
  %1560 = load i64, ptr %1480, align 8
  %1561 = and i64 %1560, 65535
  %1562 = icmp eq i64 %1561, 141
  br i1 %1562, label %1564, label %1563

1563:                                             ; preds = %1559, %1556
  store ptr null, ptr %1548, align 8, !tbaa !416
  br label %1568

1564:                                             ; preds = %1559
  store ptr %1485, ptr %1548, align 8, !tbaa !416
  %1565 = load ptr, ptr %1535, align 8, !tbaa !412
  %1566 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1548, i64 0, i32 1
  store ptr %1565, ptr %1566, align 8, !tbaa !412
  %1567 = load ptr, ptr %1535, align 8, !tbaa !412
  store ptr %1548, ptr %1567, align 8, !tbaa !416
  store ptr %1548, ptr %1535, align 8, !tbaa !412
  br label %1568

1568:                                             ; preds = %1564, %1563
  %1569 = load ptr, ptr %1439, align 8, !tbaa !415
  store ptr %1569, ptr %4, align 8, !tbaa !413
  %1570 = icmp eq ptr %1569, %1440
  br i1 %1570, label %1574, label %1571

1571:                                             ; preds = %1568
  %1572 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1569, i64 0, i32 1
  %1573 = load ptr, ptr %1572, align 8, !tbaa !412
  store ptr %1573, ptr %1439, align 8, !tbaa !415
  br label %1574

1574:                                             ; preds = %1571, %1568
  %1575 = phi ptr [ %1569, %1571 ], [ null, %1568 ]
  %1576 = load ptr, ptr %4, align 8, !tbaa !413
  %1577 = icmp eq ptr %1576, %1440
  br i1 %1577, label %1578, label %1547, !llvm.loop !417

1578:                                             ; preds = %1574, %1542
  %1579 = load i32, ptr %1538, align 8
  %1580 = and i32 %1579, 255
  %1581 = add nsw i32 %1580, -10
  %1582 = icmp ult i32 %1581, -9
  br i1 %1582, label %1584, label %1583

1583:                                             ; preds = %1578
  call void @gimple_set_modified(ptr noundef nonnull %1538, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %1538) #22
  br label %1584

1584:                                             ; preds = %1583, %1578, %1536
  %1585 = load ptr, ptr %1441, align 8, !tbaa !412
  store ptr %1585, ptr %4, align 8, !tbaa !413
  %1586 = load ptr, ptr %1438, align 8, !tbaa !410
  %1587 = icmp eq ptr %1585, %1586
  br i1 %1587, label %1588, label %1594

1588:                                             ; preds = %1584
  %1589 = load ptr, ptr %1440, align 8, !tbaa !416
  %1590 = icmp eq ptr %1589, null
  br i1 %1590, label %1598, label %1591

1591:                                             ; preds = %1588
  %1592 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1589, i64 0, i32 1
  store ptr %1585, ptr %1592, align 8, !tbaa !412
  %1593 = load ptr, ptr %1441, align 8, !tbaa !412
  store ptr %1589, ptr %1593, align 8, !tbaa !416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1440, i8 0, i64 16, i1 false)
  br label %1598

1594:                                             ; preds = %1584
  call fastcc void @link_use_stmts_after(ptr noundef %1585, ptr noundef nonnull %4)
  %1595 = load ptr, ptr %4, align 8, !tbaa !413
  %1596 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1595, i64 0, i32 2
  %1597 = load ptr, ptr %1596, align 8, !tbaa !161
  br label %1598

1598:                                             ; preds = %1594, %1591, %1588
  %1599 = phi ptr [ %1597, %1594 ], [ null, %1591 ], [ null, %1588 ]
  %1600 = load ptr, ptr %4, align 8, !tbaa !413
  %1601 = load ptr, ptr %1438, align 8, !tbaa !410
  %1602 = icmp eq ptr %1600, %1601
  br i1 %1602, label %1603, label %1536, !llvm.loop !418

1603:                                             ; preds = %1472, %1598, %1459, %1528
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #22
  br label %1604

1604:                                             ; preds = %1603, %1456
  %1605 = icmp eq ptr %1445, null
  br i1 %1605, label %1611, label %1606

1606:                                             ; preds = %1604
  %1607 = getelementptr inbounds %struct.use_optype_d, ptr %1445, i64 0, i32 1, i32 3
  %1608 = load ptr, ptr %1607, align 8, !tbaa !408
  %1609 = load ptr, ptr %1608, align 8, !tbaa !150
  %1610 = load ptr, ptr %1445, align 8, !tbaa !405
  br label %1611

1611:                                             ; preds = %1604, %1606
  %1612 = phi ptr [ %1610, %1606 ], [ %1445, %1604 ]
  %1613 = phi i8 [ %1444, %1606 ], [ 1, %1604 ]
  %1614 = phi ptr [ %1609, %1606 ], [ null, %1604 ]
  %1615 = icmp eq i8 %1613, 0
  br i1 %1615, label %1442, label %1616, !llvm.loop !419

1616:                                             ; preds = %1611, %1433
  call void @set_curr_insn_source_location(i32 noundef %1403) #22
  call void @set_curr_insn_block(ptr noundef %1404) #22
  br label %1617

1617:                                             ; preds = %1616, %1398, %1388
  store ptr %1392, ptr @currently_expanding_gimple_stmt, align 8, !tbaa !150
  %1618 = load i32, ptr %1392, align 8
  %1619 = and i32 %1618, 255
  %1620 = icmp eq i32 %1619, 1
  br i1 %1620, label %1621, label %2213, !prof !420

1621:                                             ; preds = %1617
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %1622 = load i32, ptr %1392, align 8
  %1623 = lshr i32 %1622, 16
  %1624 = and i32 %1622, 255
  %1625 = add nsw i32 %1624, -10
  %1626 = icmp ult i32 %1625, -9
  br i1 %1626, label %1639, label %1627, !prof !421

1627:                                             ; preds = %1621
  %1628 = zext nneg i32 %1624 to i64
  %1629 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1628
  %1630 = load i32, ptr %1629, align 4, !tbaa !165
  %1631 = zext i32 %1630 to i64
  %1632 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1631
  %1633 = load i64, ptr %1632, align 8, !tbaa !174
  %1634 = icmp eq i64 %1633, 0
  br i1 %1634, label %1635, label %1636, !prof !421

1635:                                             ; preds = %1627
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1636

1636:                                             ; preds = %1635, %1627
  %1637 = getelementptr inbounds i8, ptr %1392, i64 %1633
  %1638 = load ptr, ptr %1637, align 8, !tbaa !150
  br label %1639

1639:                                             ; preds = %1636, %1621
  %1640 = phi ptr [ %1638, %1636 ], [ null, %1621 ]
  %1641 = load i32, ptr %1392, align 8
  %1642 = and i32 %1641, 255
  %1643 = add nsw i32 %1642, -10
  %1644 = icmp ult i32 %1643, -9
  br i1 %1644, label %1658, label %1645, !prof !421

1645:                                             ; preds = %1639
  %1646 = zext nneg i32 %1642 to i64
  %1647 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1646
  %1648 = load i32, ptr %1647, align 4, !tbaa !165
  %1649 = zext i32 %1648 to i64
  %1650 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1649
  %1651 = load i64, ptr %1650, align 8, !tbaa !174
  %1652 = icmp eq i64 %1651, 0
  br i1 %1652, label %1653, label %1654, !prof !421

1653:                                             ; preds = %1645
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1654

1654:                                             ; preds = %1653, %1645
  %1655 = getelementptr inbounds i8, ptr %1392, i64 %1651
  %1656 = getelementptr inbounds ptr, ptr %1655, i64 1
  %1657 = load ptr, ptr %1656, align 8, !tbaa !150
  br label %1658

1658:                                             ; preds = %1654, %1639
  %1659 = phi ptr [ %1657, %1654 ], [ null, %1639 ]
  %1660 = load i32, ptr %1392, align 8
  %1661 = and i32 %1660, -65536
  %1662 = icmp eq i32 %1661, 6684672
  br i1 %1662, label %1663, label %1684, !prof !422

1663:                                             ; preds = %1658
  %1664 = and i32 %1660, 255
  %1665 = add nsw i32 %1664, -10
  %1666 = icmp ult i32 %1665, -9
  br i1 %1666, label %1680, label %1667, !prof !423

1667:                                             ; preds = %1663
  %1668 = zext nneg i32 %1664 to i64
  %1669 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1668
  %1670 = load i32, ptr %1669, align 4, !tbaa !165
  %1671 = zext i32 %1670 to i64
  %1672 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1671
  %1673 = load i64, ptr %1672, align 8, !tbaa !174
  %1674 = icmp eq i64 %1673, 0
  br i1 %1674, label %1675, label %1676, !prof !423

1675:                                             ; preds = %1667
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1676

1676:                                             ; preds = %1675, %1667
  %1677 = getelementptr inbounds i8, ptr %1392, i64 %1673
  %1678 = getelementptr inbounds ptr, ptr %1677, i64 1
  %1679 = load ptr, ptr %1678, align 8, !tbaa !150
  br label %1680

1680:                                             ; preds = %1676, %1663
  %1681 = phi ptr [ %1679, %1676 ], [ null, %1663 ]
  %1682 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !150
  %1683 = icmp eq ptr %1681, %1682
  br i1 %1683, label %1710, label %1684, !prof !424

1684:                                             ; preds = %1680, %1658
  %1685 = load i32, ptr %1392, align 8
  %1686 = and i32 %1685, -65536
  %1687 = icmp eq i32 %1686, 6619136
  br i1 %1687, label %1688, label %1709, !prof !425

1688:                                             ; preds = %1684
  %1689 = and i32 %1685, 255
  %1690 = add nsw i32 %1689, -10
  %1691 = icmp ult i32 %1690, -9
  br i1 %1691, label %1705, label %1692, !prof !426

1692:                                             ; preds = %1688
  %1693 = zext nneg i32 %1689 to i64
  %1694 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1693
  %1695 = load i32, ptr %1694, align 4, !tbaa !165
  %1696 = zext i32 %1695 to i64
  %1697 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1696
  %1698 = load i64, ptr %1697, align 8, !tbaa !174
  %1699 = icmp eq i64 %1698, 0
  br i1 %1699, label %1700, label %1701, !prof !426

1700:                                             ; preds = %1692
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1701

1701:                                             ; preds = %1700, %1692
  %1702 = getelementptr inbounds i8, ptr %1392, i64 %1698
  %1703 = getelementptr inbounds ptr, ptr %1702, i64 1
  %1704 = load ptr, ptr %1703, align 8, !tbaa !150
  br label %1705

1705:                                             ; preds = %1701, %1688
  %1706 = phi ptr [ %1704, %1701 ], [ null, %1688 ]
  %1707 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !150
  %1708 = icmp eq ptr %1706, %1707
  br i1 %1708, label %1710, label %1709, !prof !426

1709:                                             ; preds = %1705, %1684
  br label %1710

1710:                                             ; preds = %1705, %1709, %1680
  %1711 = phi i1 [ false, %1709 ], [ true, %1680 ], [ true, %1705 ]
  %1712 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 1), align 8
  %1713 = icmp ne ptr %1712, null
  %1714 = select i1 %1711, i1 %1713, i1 false, !prof !427
  br i1 %1714, label %1715, label %1917, !prof !427

1715:                                             ; preds = %1710
  %1716 = load i64, ptr %1640, align 8
  %1717 = and i64 %1716, 65535
  %1718 = icmp eq i64 %1717, 141
  br i1 %1718, label %1719, label %1917, !prof !428

1719:                                             ; preds = %1715
  %1720 = getelementptr inbounds %struct.tree_ssa_name, ptr %1640, i64 0, i32 3
  %1721 = load i32, ptr %1720, align 8, !tbaa !161
  %1722 = call i32 @bitmap_bit_p(ptr noundef nonnull %1712, i32 noundef %1721) #22
  %1723 = icmp eq i32 %1722, 0
  br i1 %1723, label %1917, label %1724, !prof !429

1724:                                             ; preds = %1719
  %1725 = getelementptr inbounds %struct.tree_ssa_name, ptr %1640, i64 0, i32 2
  %1726 = load ptr, ptr %1725, align 8, !tbaa !161
  %1727 = load i32, ptr %1726, align 8
  %1728 = and i32 %1727, 255
  %1729 = icmp eq i32 %1728, 6
  br i1 %1729, label %1730, label %1917, !prof !430

1730:                                             ; preds = %1724
  %1731 = lshr i32 %1727, 16
  %1732 = zext nneg i32 %1731 to i64
  %1733 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1732
  %1734 = load i8, ptr %1733, align 1, !tbaa !161
  %1735 = icmp eq i8 %1734, 3
  br i1 %1735, label %1736, label %1752, !prof !431

1736:                                             ; preds = %1730
  %1737 = zext nneg i32 %1728 to i64
  %1738 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1737
  %1739 = load i32, ptr %1738, align 4, !tbaa !165
  %1740 = zext i32 %1739 to i64
  %1741 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1740
  %1742 = load i64, ptr %1741, align 8, !tbaa !174
  %1743 = icmp eq i64 %1742, 0
  br i1 %1743, label %1744, label %1745

1744:                                             ; preds = %1736
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1745

1745:                                             ; preds = %1744, %1736
  %1746 = getelementptr inbounds i8, ptr %1726, i64 %1742
  %1747 = getelementptr inbounds ptr, ptr %1746, i64 1
  %1748 = load ptr, ptr %1747, align 8, !tbaa !150
  %1749 = load i64, ptr %1748, align 8
  %1750 = trunc i64 %1749 to i32
  %1751 = and i32 %1750, 65535
  br label %1752

1752:                                             ; preds = %1745, %1730
  %1753 = phi i32 [ %1751, %1745 ], [ %1731, %1730 ]
  %1754 = zext nneg i32 %1753 to i64
  %1755 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1754
  %1756 = load i32, ptr %1755, align 4, !tbaa !165
  %1757 = icmp eq i32 %1756, 5
  br i1 %1757, label %1758, label %1794, !prof !431

1758:                                             ; preds = %1752
  %1759 = load i32, ptr %1726, align 8
  %1760 = and i32 %1759, 255
  %1761 = add nsw i32 %1760, -10
  %1762 = icmp ult i32 %1761, -9
  br i1 %1762, label %1776, label %1763

1763:                                             ; preds = %1758
  %1764 = zext nneg i32 %1760 to i64
  %1765 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1764
  %1766 = load i32, ptr %1765, align 4, !tbaa !165
  %1767 = zext i32 %1766 to i64
  %1768 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1767
  %1769 = load i64, ptr %1768, align 8, !tbaa !174
  %1770 = icmp eq i64 %1769, 0
  br i1 %1770, label %1771, label %1772

1771:                                             ; preds = %1763
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1772

1772:                                             ; preds = %1771, %1763
  %1773 = getelementptr inbounds i8, ptr %1726, i64 %1769
  %1774 = getelementptr inbounds ptr, ptr %1773, i64 1
  %1775 = load ptr, ptr %1774, align 8, !tbaa !150
  br label %1776

1776:                                             ; preds = %1772, %1758
  %1777 = phi ptr [ %1775, %1772 ], [ null, %1758 ]
  %1778 = getelementptr inbounds %struct.gimple_statement_base, ptr %1726, i64 0, i32 3
  %1779 = load i32, ptr %1778, align 4, !tbaa !161
  %1780 = icmp ugt i32 %1779, 2
  br i1 %1780, label %1781, label %1917

1781:                                             ; preds = %1776
  %1782 = load i32, ptr %1726, align 8
  %1783 = and i32 %1782, 255
  %1784 = add nsw i32 %1783, -10
  %1785 = icmp ult i32 %1784, -9
  br i1 %1785, label %1917, label %1786

1786:                                             ; preds = %1781
  %1787 = zext nneg i32 %1783 to i64
  %1788 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1787
  %1789 = load i32, ptr %1788, align 4, !tbaa !165
  %1790 = zext i32 %1789 to i64
  %1791 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1790
  %1792 = load i64, ptr %1791, align 8, !tbaa !174
  %1793 = icmp eq i64 %1792, 0
  br i1 %1793, label %1906, label %1910

1794:                                             ; preds = %1752
  %1795 = call zeroext i8 @optimize_insn_for_speed_p() #22
  %1796 = icmp eq i8 %1795, 0
  %1797 = load i32, ptr @ix86_branch_cost, align 4
  %1798 = icmp slt i32 %1797, 4
  %1799 = select i1 %1796, i1 true, i1 %1798, !prof !432
  br i1 %1799, label %1800, label %1917, !prof !430

1800:                                             ; preds = %1794
  %1801 = trunc i32 %1753 to i16
  switch i16 %1801, label %1917 [
    i16 89, label %1802
    i16 93, label %1833
    i16 94, label %1870
    i16 87, label %1870
  ], !prof !433

1802:                                             ; preds = %1800
  %1803 = getelementptr inbounds %struct.tree_common, ptr %1640, i64 0, i32 2
  %1804 = load ptr, ptr %1803, align 8, !tbaa !161
  %1805 = getelementptr inbounds %struct.tree_type, ptr %1804, i64 0, i32 6
  %1806 = load i32, ptr %1805, align 4
  %1807 = and i32 %1806, 1023
  %1808 = icmp eq i32 %1807, 1
  br i1 %1808, label %1809, label %1832

1809:                                             ; preds = %1802
  %1810 = getelementptr inbounds %struct.gimple_statement_base, ptr %1726, i64 0, i32 3
  %1811 = load i32, ptr %1810, align 4, !tbaa !161
  %1812 = icmp ugt i32 %1811, 2
  call void @llvm.assume(i1 %1812)
  %1813 = load i32, ptr %1726, align 8
  %1814 = and i32 %1813, 255
  %1815 = add nsw i32 %1814, -1
  %1816 = icmp ult i32 %1815, 9
  call void @llvm.assume(i1 %1816)
  %1817 = zext nneg i32 %1814 to i64
  %1818 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1817
  %1819 = load i32, ptr %1818, align 4, !tbaa !165
  %1820 = zext i32 %1819 to i64
  %1821 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1820
  %1822 = load i64, ptr %1821, align 8, !tbaa !174
  %1823 = icmp eq i64 %1822, 0
  br i1 %1823, label %1824, label %1825

1824:                                             ; preds = %1809
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1825

1825:                                             ; preds = %1824, %1809
  %1826 = getelementptr inbounds i8, ptr %1726, i64 %1822
  %1827 = getelementptr inbounds ptr, ptr %1826, i64 2
  %1828 = load ptr, ptr %1827, align 8, !tbaa !150
  %1829 = load i64, ptr %1828, align 8
  %1830 = and i64 %1829, 65535
  %1831 = icmp eq i64 %1830, 23
  br i1 %1831, label %1869, label %1833

1832:                                             ; preds = %1802
  switch i16 %1801, label %1917 [
    i16 93, label %1833
    i16 94, label %1870
    i16 87, label %1870
  ]

1833:                                             ; preds = %1832, %1825, %1800
  %1834 = load i32, ptr %1726, align 8
  %1835 = and i32 %1834, 255
  %1836 = add nsw i32 %1835, -10
  %1837 = icmp ult i32 %1836, -9
  br i1 %1837, label %1851, label %1838

1838:                                             ; preds = %1833
  %1839 = zext nneg i32 %1835 to i64
  %1840 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1839
  %1841 = load i32, ptr %1840, align 4, !tbaa !165
  %1842 = zext i32 %1841 to i64
  %1843 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1842
  %1844 = load i64, ptr %1843, align 8, !tbaa !174
  %1845 = icmp eq i64 %1844, 0
  br i1 %1845, label %1846, label %1847

1846:                                             ; preds = %1838
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1847

1847:                                             ; preds = %1846, %1838
  %1848 = getelementptr inbounds i8, ptr %1726, i64 %1844
  %1849 = getelementptr inbounds ptr, ptr %1848, i64 1
  %1850 = load ptr, ptr %1849, align 8, !tbaa !150
  br label %1851

1851:                                             ; preds = %1847, %1833
  %1852 = phi ptr [ %1850, %1847 ], [ null, %1833 ]
  %1853 = getelementptr inbounds %struct.gimple_statement_base, ptr %1726, i64 0, i32 3
  %1854 = load i32, ptr %1853, align 4, !tbaa !161
  %1855 = icmp ugt i32 %1854, 2
  br i1 %1855, label %1856, label %1917

1856:                                             ; preds = %1851
  %1857 = load i32, ptr %1726, align 8
  %1858 = and i32 %1857, 255
  %1859 = add nsw i32 %1858, -10
  %1860 = icmp ult i32 %1859, -9
  br i1 %1860, label %1917, label %1861

1861:                                             ; preds = %1856
  %1862 = zext nneg i32 %1858 to i64
  %1863 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1862
  %1864 = load i32, ptr %1863, align 4, !tbaa !165
  %1865 = zext i32 %1864 to i64
  %1866 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1865
  %1867 = load i64, ptr %1866, align 8, !tbaa !174
  %1868 = icmp eq i64 %1867, 0
  br i1 %1868, label %1906, label %1910

1869:                                             ; preds = %1825
  switch i16 %1801, label %1917 [
    i16 94, label %1870
    i16 87, label %1870
  ]

1870:                                             ; preds = %1869, %1832, %1800, %1869, %1832, %1800
  %1871 = load i32, ptr %1726, align 8
  %1872 = and i32 %1871, 255
  %1873 = add nsw i32 %1872, -10
  %1874 = icmp ult i32 %1873, -9
  br i1 %1874, label %1888, label %1875, !prof !431

1875:                                             ; preds = %1870
  %1876 = zext nneg i32 %1872 to i64
  %1877 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1876
  %1878 = load i32, ptr %1877, align 4, !tbaa !165
  %1879 = zext i32 %1878 to i64
  %1880 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1879
  %1881 = load i64, ptr %1880, align 8, !tbaa !174
  %1882 = icmp eq i64 %1881, 0
  br i1 %1882, label %1883, label %1884, !prof !431

1883:                                             ; preds = %1875
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1884

1884:                                             ; preds = %1883, %1875
  %1885 = getelementptr inbounds i8, ptr %1726, i64 %1881
  %1886 = getelementptr inbounds ptr, ptr %1885, i64 1
  %1887 = load ptr, ptr %1886, align 8, !tbaa !150
  br label %1888

1888:                                             ; preds = %1884, %1870
  %1889 = phi ptr [ %1887, %1884 ], [ null, %1870 ]
  %1890 = getelementptr inbounds %struct.gimple_statement_base, ptr %1726, i64 0, i32 3
  %1891 = load i32, ptr %1890, align 4, !tbaa !161
  %1892 = icmp ugt i32 %1891, 2
  br i1 %1892, label %1893, label %1917, !prof !430

1893:                                             ; preds = %1888
  %1894 = load i32, ptr %1726, align 8
  %1895 = and i32 %1894, 255
  %1896 = add nsw i32 %1895, -10
  %1897 = icmp ult i32 %1896, -9
  br i1 %1897, label %1917, label %1898, !prof !431

1898:                                             ; preds = %1893
  %1899 = zext nneg i32 %1895 to i64
  %1900 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1899
  %1901 = load i32, ptr %1900, align 4, !tbaa !165
  %1902 = zext i32 %1901 to i64
  %1903 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1902
  %1904 = load i64, ptr %1903, align 8, !tbaa !174
  %1905 = icmp eq i64 %1904, 0
  br i1 %1905, label %1906, label %1910, !prof !431

1906:                                             ; preds = %1898, %1861, %1786
  %1907 = phi i64 [ %1792, %1786 ], [ %1867, %1861 ], [ %1904, %1898 ]
  %1908 = phi i32 [ %1753, %1786 ], [ 91, %1861 ], [ 92, %1898 ]
  %1909 = phi ptr [ %1777, %1786 ], [ %1852, %1861 ], [ %1889, %1898 ]
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1910

1910:                                             ; preds = %1906, %1898, %1861, %1786
  %1911 = phi i64 [ %1792, %1786 ], [ %1867, %1861 ], [ %1904, %1898 ], [ %1907, %1906 ]
  %1912 = phi i32 [ %1753, %1786 ], [ 91, %1861 ], [ 92, %1898 ], [ %1908, %1906 ]
  %1913 = phi ptr [ %1777, %1786 ], [ %1852, %1861 ], [ %1889, %1898 ], [ %1909, %1906 ]
  %1914 = getelementptr inbounds i8, ptr %1726, i64 %1911
  %1915 = getelementptr inbounds ptr, ptr %1914, i64 2
  %1916 = load ptr, ptr %1915, align 8, !tbaa !150
  br label %1917

1917:                                             ; preds = %1910, %1869, %1851, %1832, %1800, %1893, %1888, %1856, %1794, %1781, %1776, %1724, %1719, %1715, %1710
  %1918 = phi i32 [ %1623, %1719 ], [ %1623, %1715 ], [ %1623, %1710 ], [ %1623, %1724 ], [ %1623, %1794 ], [ %1753, %1776 ], [ %1753, %1781 ], [ 91, %1856 ], [ 92, %1888 ], [ 92, %1893 ], [ %1623, %1800 ], [ %1623, %1832 ], [ 91, %1851 ], [ %1623, %1869 ], [ %1912, %1910 ]
  %1919 = phi ptr [ %1640, %1719 ], [ %1640, %1715 ], [ %1640, %1710 ], [ %1640, %1724 ], [ %1640, %1794 ], [ %1777, %1776 ], [ %1777, %1781 ], [ %1852, %1856 ], [ %1889, %1888 ], [ %1889, %1893 ], [ %1640, %1800 ], [ %1640, %1832 ], [ %1852, %1851 ], [ %1640, %1869 ], [ %1913, %1910 ]
  %1920 = phi ptr [ %1659, %1719 ], [ %1659, %1715 ], [ %1659, %1710 ], [ %1659, %1724 ], [ %1659, %1794 ], [ null, %1776 ], [ null, %1781 ], [ null, %1856 ], [ null, %1888 ], [ null, %1893 ], [ %1659, %1800 ], [ %1659, %1832 ], [ null, %1851 ], [ %1659, %1869 ], [ %1916, %1910 ]
  %1921 = call ptr @get_last_insn() #22
  call void @extract_true_false_edges_from_block(ptr noundef %1391, ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %1922 = getelementptr inbounds %struct.gimple_statement_base, ptr %1392, i64 0, i32 2
  %1923 = load i32, ptr %1922, align 8, !tbaa !161
  %1924 = icmp eq i32 %1923, 0
  br i1 %1924, label %1928, label %1925, !prof !421

1925:                                             ; preds = %1917
  call void @set_curr_insn_source_location(i32 noundef %1923) #22
  %1926 = getelementptr inbounds %struct.gimple_statement_base, ptr %1392, i64 0, i32 5
  %1927 = load ptr, ptr %1926, align 8, !tbaa !161
  call void @set_curr_insn_block(ptr noundef %1927) #22
  br label %1928

1928:                                             ; preds = %1925, %1917
  %1929 = load ptr, ptr %1, align 8, !tbaa !150
  %1930 = getelementptr inbounds %struct.edge_def, ptr %1929, i64 0, i32 7
  %1931 = load i32, ptr %1930, align 8, !tbaa !374
  %1932 = and i32 %1931, -1025
  store i32 %1932, ptr %1930, align 8, !tbaa !374
  %1933 = load ptr, ptr %2, align 8, !tbaa !150
  %1934 = getelementptr inbounds %struct.edge_def, ptr %1933, i64 0, i32 7
  %1935 = load i32, ptr %1934, align 8, !tbaa !374
  %1936 = and i32 %1935, -2049
  store i32 %1936, ptr %1934, align 8, !tbaa !374
  %1937 = getelementptr inbounds %struct.edge_def, ptr %1933, i64 0, i32 1
  %1938 = load ptr, ptr %1937, align 8, !tbaa !366
  %1939 = getelementptr inbounds %struct.basic_block_def, ptr %1391, i64 0, i32 6
  %1940 = load ptr, ptr %1939, align 8, !tbaa !263
  %1941 = icmp eq ptr %1938, %1940
  %1942 = getelementptr inbounds %struct.edge_def, ptr %1929, i64 0, i32 1
  %1943 = load ptr, ptr %1942, align 8, !tbaa !366
  br i1 %1941, label %1944, label %2021, !prof !434

1944:                                             ; preds = %1928
  %1945 = call fastcc ptr @label_rtx_for_bb(ptr noundef %1943)
  %1946 = load ptr, ptr %1, align 8, !tbaa !150
  %1947 = getelementptr inbounds %struct.edge_def, ptr %1946, i64 0, i32 8
  %1948 = load i32, ptr %1947, align 4, !tbaa !370
  call void @jumpif_1(i32 noundef %1918, ptr noundef %1919, ptr noundef %1920, ptr noundef %1945, i32 noundef %1948) #22
  %1949 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %1950 = icmp eq ptr %1949, null
  br i1 %1950, label %1970, label %1951, !prof !402

1951:                                             ; preds = %1944
  %1952 = load i32, ptr @dump_flags, align 4, !tbaa !165
  %1953 = and i32 %1952, 8
  %1954 = icmp eq i32 %1953, 0
  br i1 %1954, label %1970, label %1955

1955:                                             ; preds = %1951
  %1956 = call i64 @fwrite(ptr nonnull @.str.13, i64 4, i64 1, ptr nonnull %1949)
  %1957 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %1958 = load i32, ptr @dump_flags, align 4, !tbaa !165
  %1959 = and i32 %1958, 128
  %1960 = or disjoint i32 %1959, 2
  call void @print_gimple_stmt(ptr noundef %1957, ptr noundef nonnull %1392, i32 noundef 0, i32 noundef %1960) #22
  %1961 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %1962 = call i32 @fputc(i32 10, ptr %1961)
  %1963 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %1964 = icmp eq ptr %1921, null
  br i1 %1964, label %1968, label %1965

1965:                                             ; preds = %1955
  %1966 = getelementptr inbounds %struct.rtx_def, ptr %1921, i64 0, i32 1, i32 0, i32 0, i64 2
  %1967 = load ptr, ptr %1966, align 8, !tbaa !161
  br label %1968

1968:                                             ; preds = %1965, %1955
  %1969 = phi ptr [ %1967, %1965 ], [ null, %1955 ]
  call void @print_rtl(ptr noundef %1963, ptr noundef %1969) #22
  br label %1970

1970:                                             ; preds = %1944, %1951, %1968
  %1971 = load ptr, ptr %1, align 8, !tbaa !150
  %1972 = getelementptr inbounds %struct.edge_def, ptr %1971, i64 0, i32 5
  %1973 = load i32, ptr %1972, align 8, !tbaa !435
  %1974 = icmp eq i32 %1973, 0
  br i1 %1974, label %1982, label %1975, !prof !436

1975:                                             ; preds = %1970
  call void @set_curr_insn_source_location(i32 noundef %1973) #22
  %1976 = load ptr, ptr %1, align 8, !tbaa !150
  %1977 = getelementptr inbounds %struct.edge_def, ptr %1976, i64 0, i32 4
  %1978 = load ptr, ptr %1977, align 8, !tbaa !437
  call void @set_curr_insn_block(ptr noundef %1978) #22
  %1979 = call i32 @curr_insn_locator() #22
  %1980 = load ptr, ptr %1, align 8, !tbaa !150
  %1981 = getelementptr inbounds %struct.edge_def, ptr %1980, i64 0, i32 5
  store i32 %1979, ptr %1981, align 8, !tbaa !435
  br label %1982

1982:                                             ; preds = %1975, %1970
  %1983 = load ptr, ptr %1, align 8, !tbaa !150
  %1984 = getelementptr inbounds %struct.edge_def, ptr %1983, i64 0, i32 4
  store ptr null, ptr %1984, align 8, !tbaa !437
  %1985 = load ptr, ptr %2, align 8, !tbaa !150
  %1986 = getelementptr inbounds %struct.edge_def, ptr %1985, i64 0, i32 7
  %1987 = load i32, ptr %1986, align 8, !tbaa !374
  %1988 = or i32 %1987, 1
  store i32 %1988, ptr %1986, align 8, !tbaa !374
  %1989 = call ptr @get_last_insn() #22
  %1990 = load i32, ptr %1989, align 8
  %1991 = and i32 %1990, 65535
  %1992 = icmp eq i32 %1991, 11
  br i1 %1992, label %1993, label %2210, !prof !438

1993:                                             ; preds = %1982
  call void @remove_edge(ptr noundef %1985) #22
  %1994 = call ptr @get_last_insn() #22
  %1995 = getelementptr inbounds %struct.rtx_def, ptr %1994, i64 0, i32 1, i32 0, i32 0, i64 1
  %1996 = load ptr, ptr %1995, align 8, !tbaa !161
  %1997 = load i32, ptr %1996, align 8
  %1998 = and i32 %1997, 65535
  %1999 = icmp eq i32 %1998, 9
  br i1 %1999, label %2000, label %2003

2000:                                             ; preds = %1993
  %2001 = call i32 @any_condjump_p(ptr noundef nonnull %1996) #22
  %2002 = icmp eq i32 %2001, 0
  br i1 %2002, label %2004, label %2003

2003:                                             ; preds = %2000, %1993
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1576, ptr noundef nonnull @.str.1) #22
  br label %2004

2004:                                             ; preds = %2003, %2000
  %2005 = getelementptr inbounds %struct.rtx_def, ptr %1996, i64 0, i32 1, i32 0, i32 0, i64 1
  %2006 = load ptr, ptr %2005, align 8, !tbaa !161
  %2007 = icmp eq ptr %2006, %1921
  br i1 %2007, label %2210, label %2008

2008:                                             ; preds = %2004, %2019
  %2009 = phi ptr [ %2011, %2019 ], [ %2006, %2004 ]
  %2010 = getelementptr inbounds %struct.rtx_def, ptr %2009, i64 0, i32 1, i32 0, i32 0, i64 1
  %2011 = load ptr, ptr %2010, align 8, !tbaa !161
  %2012 = getelementptr inbounds %struct.rtx_def, ptr %2011, i64 0, i32 1, i32 0, i32 0, i64 2
  %2013 = load ptr, ptr %2012, align 8, !tbaa !161
  %2014 = load i32, ptr %2013, align 8
  %2015 = and i32 %2014, 65535
  %2016 = icmp eq i32 %2015, 9
  br i1 %2016, label %2017, label %2019

2017:                                             ; preds = %2008
  %2018 = call ptr @delete_insn(ptr noundef nonnull %2013) #22
  br label %2019

2019:                                             ; preds = %2017, %2008
  %2020 = icmp eq ptr %2011, %1921
  br i1 %2020, label %2210, label %2008, !llvm.loop !439

2021:                                             ; preds = %1928
  %2022 = icmp eq ptr %1943, %1940
  br i1 %2022, label %2023, label %2100, !prof !440

2023:                                             ; preds = %2021
  %2024 = call fastcc ptr @label_rtx_for_bb(ptr noundef %1938)
  %2025 = load ptr, ptr %2, align 8, !tbaa !150
  %2026 = getelementptr inbounds %struct.edge_def, ptr %2025, i64 0, i32 8
  %2027 = load i32, ptr %2026, align 4, !tbaa !370
  call void @jumpifnot_1(i32 noundef %1918, ptr noundef %1919, ptr noundef %1920, ptr noundef %2024, i32 noundef %2027) #22
  %2028 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %2029 = icmp eq ptr %2028, null
  br i1 %2029, label %2049, label %2030, !prof !402

2030:                                             ; preds = %2023
  %2031 = load i32, ptr @dump_flags, align 4, !tbaa !165
  %2032 = and i32 %2031, 8
  %2033 = icmp eq i32 %2032, 0
  br i1 %2033, label %2049, label %2034

2034:                                             ; preds = %2030
  %2035 = call i64 @fwrite(ptr nonnull @.str.13, i64 4, i64 1, ptr nonnull %2028)
  %2036 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %2037 = load i32, ptr @dump_flags, align 4, !tbaa !165
  %2038 = and i32 %2037, 128
  %2039 = or disjoint i32 %2038, 2
  call void @print_gimple_stmt(ptr noundef %2036, ptr noundef nonnull %1392, i32 noundef 0, i32 noundef %2039) #22
  %2040 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %2041 = call i32 @fputc(i32 10, ptr %2040)
  %2042 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %2043 = icmp eq ptr %1921, null
  br i1 %2043, label %2047, label %2044

2044:                                             ; preds = %2034
  %2045 = getelementptr inbounds %struct.rtx_def, ptr %1921, i64 0, i32 1, i32 0, i32 0, i64 2
  %2046 = load ptr, ptr %2045, align 8, !tbaa !161
  br label %2047

2047:                                             ; preds = %2044, %2034
  %2048 = phi ptr [ %2046, %2044 ], [ null, %2034 ]
  call void @print_rtl(ptr noundef %2042, ptr noundef %2048) #22
  br label %2049

2049:                                             ; preds = %2023, %2030, %2047
  %2050 = load ptr, ptr %2, align 8, !tbaa !150
  %2051 = getelementptr inbounds %struct.edge_def, ptr %2050, i64 0, i32 5
  %2052 = load i32, ptr %2051, align 8, !tbaa !435
  %2053 = icmp eq i32 %2052, 0
  br i1 %2053, label %2061, label %2054, !prof !441

2054:                                             ; preds = %2049
  call void @set_curr_insn_source_location(i32 noundef %2052) #22
  %2055 = load ptr, ptr %2, align 8, !tbaa !150
  %2056 = getelementptr inbounds %struct.edge_def, ptr %2055, i64 0, i32 4
  %2057 = load ptr, ptr %2056, align 8, !tbaa !437
  call void @set_curr_insn_block(ptr noundef %2057) #22
  %2058 = call i32 @curr_insn_locator() #22
  %2059 = load ptr, ptr %2, align 8, !tbaa !150
  %2060 = getelementptr inbounds %struct.edge_def, ptr %2059, i64 0, i32 5
  store i32 %2058, ptr %2060, align 8, !tbaa !435
  br label %2061

2061:                                             ; preds = %2054, %2049
  %2062 = load ptr, ptr %2, align 8, !tbaa !150
  %2063 = getelementptr inbounds %struct.edge_def, ptr %2062, i64 0, i32 4
  store ptr null, ptr %2063, align 8, !tbaa !437
  %2064 = load ptr, ptr %1, align 8, !tbaa !150
  %2065 = getelementptr inbounds %struct.edge_def, ptr %2064, i64 0, i32 7
  %2066 = load i32, ptr %2065, align 8, !tbaa !374
  %2067 = or i32 %2066, 1
  store i32 %2067, ptr %2065, align 8, !tbaa !374
  %2068 = call ptr @get_last_insn() #22
  %2069 = load i32, ptr %2068, align 8
  %2070 = and i32 %2069, 65535
  %2071 = icmp eq i32 %2070, 11
  br i1 %2071, label %2072, label %2210, !prof !438

2072:                                             ; preds = %2061
  call void @remove_edge(ptr noundef %2064) #22
  %2073 = call ptr @get_last_insn() #22
  %2074 = getelementptr inbounds %struct.rtx_def, ptr %2073, i64 0, i32 1, i32 0, i32 0, i64 1
  %2075 = load ptr, ptr %2074, align 8, !tbaa !161
  %2076 = load i32, ptr %2075, align 8
  %2077 = and i32 %2076, 65535
  %2078 = icmp eq i32 %2077, 9
  br i1 %2078, label %2079, label %2082

2079:                                             ; preds = %2072
  %2080 = call i32 @any_condjump_p(ptr noundef nonnull %2075) #22
  %2081 = icmp eq i32 %2080, 0
  br i1 %2081, label %2083, label %2082

2082:                                             ; preds = %2079, %2072
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1576, ptr noundef nonnull @.str.1) #22
  br label %2083

2083:                                             ; preds = %2082, %2079
  %2084 = getelementptr inbounds %struct.rtx_def, ptr %2075, i64 0, i32 1, i32 0, i32 0, i64 1
  %2085 = load ptr, ptr %2084, align 8, !tbaa !161
  %2086 = icmp eq ptr %2085, %1921
  br i1 %2086, label %2210, label %2087

2087:                                             ; preds = %2083, %2098
  %2088 = phi ptr [ %2090, %2098 ], [ %2085, %2083 ]
  %2089 = getelementptr inbounds %struct.rtx_def, ptr %2088, i64 0, i32 1, i32 0, i32 0, i64 1
  %2090 = load ptr, ptr %2089, align 8, !tbaa !161
  %2091 = getelementptr inbounds %struct.rtx_def, ptr %2090, i64 0, i32 1, i32 0, i32 0, i64 2
  %2092 = load ptr, ptr %2091, align 8, !tbaa !161
  %2093 = load i32, ptr %2092, align 8
  %2094 = and i32 %2093, 65535
  %2095 = icmp eq i32 %2094, 9
  br i1 %2095, label %2096, label %2098

2096:                                             ; preds = %2087
  %2097 = call ptr @delete_insn(ptr noundef nonnull %2092) #22
  br label %2098

2098:                                             ; preds = %2096, %2087
  %2099 = icmp eq ptr %2090, %1921
  br i1 %2099, label %2210, label %2087, !llvm.loop !439

2100:                                             ; preds = %2021
  %2101 = call fastcc ptr @label_rtx_for_bb(ptr noundef %1943)
  %2102 = load ptr, ptr %1, align 8, !tbaa !150
  %2103 = getelementptr inbounds %struct.edge_def, ptr %2102, i64 0, i32 8
  %2104 = load i32, ptr %2103, align 4, !tbaa !370
  call void @jumpif_1(i32 noundef %1918, ptr noundef %1919, ptr noundef %1920, ptr noundef %2101, i32 noundef %2104) #22
  %2105 = call ptr @get_last_insn() #22
  %2106 = load ptr, ptr %2, align 8, !tbaa !150
  %2107 = getelementptr inbounds %struct.edge_def, ptr %2106, i64 0, i32 5
  %2108 = load i32, ptr %2107, align 8, !tbaa !435
  %2109 = icmp eq i32 %2108, 0
  br i1 %2109, label %2117, label %2110, !prof !442

2110:                                             ; preds = %2100
  call void @set_curr_insn_source_location(i32 noundef %2108) #22
  %2111 = load ptr, ptr %2, align 8, !tbaa !150
  %2112 = getelementptr inbounds %struct.edge_def, ptr %2111, i64 0, i32 4
  %2113 = load ptr, ptr %2112, align 8, !tbaa !437
  call void @set_curr_insn_block(ptr noundef %2113) #22
  %2114 = call i32 @curr_insn_locator() #22
  %2115 = load ptr, ptr %2, align 8, !tbaa !150
  %2116 = getelementptr inbounds %struct.edge_def, ptr %2115, i64 0, i32 5
  store i32 %2114, ptr %2116, align 8, !tbaa !435
  br label %2117

2117:                                             ; preds = %2110, %2100
  %2118 = load ptr, ptr %2, align 8, !tbaa !150
  %2119 = getelementptr inbounds %struct.edge_def, ptr %2118, i64 0, i32 4
  store ptr null, ptr %2119, align 8, !tbaa !437
  %2120 = getelementptr inbounds %struct.edge_def, ptr %2118, i64 0, i32 1
  %2121 = load ptr, ptr %2120, align 8, !tbaa !366
  %2122 = call fastcc ptr @label_rtx_for_bb(ptr noundef %2121)
  call void @emit_jump(ptr noundef %2122) #22
  %2123 = getelementptr inbounds %struct.basic_block_def, ptr %1391, i64 0, i32 7
  %2124 = load ptr, ptr %2123, align 8, !tbaa !161
  %2125 = getelementptr inbounds %struct.rtl_bb_info, ptr %2124, i64 0, i32 1
  store ptr %2105, ptr %2125, align 8, !tbaa !443
  %2126 = load ptr, ptr %2123, align 8, !tbaa !161
  %2127 = getelementptr inbounds %struct.rtl_bb_info, ptr %2126, i64 0, i32 1
  %2128 = load ptr, ptr %2127, align 8, !tbaa !443
  %2129 = load i32, ptr %2128, align 8
  %2130 = and i32 %2129, 65535
  %2131 = icmp eq i32 %2130, 11
  br i1 %2131, label %2132, label %2135, !prof !444

2132:                                             ; preds = %2117
  %2133 = getelementptr inbounds %struct.rtx_def, ptr %2128, i64 0, i32 1, i32 0, i32 0, i64 1
  %2134 = load ptr, ptr %2133, align 8, !tbaa !161
  store ptr %2134, ptr %2127, align 8, !tbaa !443
  br label %2135

2135:                                             ; preds = %2132, %2117
  call void @update_bb_for_insn(ptr noundef %1391) #22
  %2136 = getelementptr inbounds %struct.rtx_def, ptr %2105, i64 0, i32 1, i32 0, i32 0, i64 2
  %2137 = load ptr, ptr %2136, align 8, !tbaa !161
  %2138 = call ptr @get_last_insn() #22
  %2139 = call ptr @create_basic_block(ptr noundef %2137, ptr noundef %2138, ptr noundef %1391) #22
  %2140 = load ptr, ptr %2, align 8, !tbaa !150
  %2141 = getelementptr inbounds %struct.edge_def, ptr %2140, i64 0, i32 1
  %2142 = load ptr, ptr %2141, align 8, !tbaa !366
  call void @redirect_edge_succ(ptr noundef %2140, ptr noundef %2139) #22
  %2143 = load ptr, ptr %2, align 8, !tbaa !150
  %2144 = getelementptr inbounds %struct.edge_def, ptr %2143, i64 0, i32 7
  %2145 = load i32, ptr %2144, align 8, !tbaa !374
  %2146 = or i32 %2145, 1
  store i32 %2146, ptr %2144, align 8, !tbaa !374
  %2147 = getelementptr inbounds %struct.edge_def, ptr %2143, i64 0, i32 9
  %2148 = load i64, ptr %2147, align 8, !tbaa !371
  %2149 = getelementptr inbounds %struct.basic_block_def, ptr %2139, i64 0, i32 8
  store i64 %2148, ptr %2149, align 8, !tbaa !369
  %2150 = load ptr, ptr %2143, align 8, !tbaa !445
  %2151 = getelementptr inbounds %struct.basic_block_def, ptr %2150, i64 0, i32 11
  %2152 = load i32, ptr %2151, align 8, !tbaa !368
  %2153 = getelementptr inbounds %struct.edge_def, ptr %2143, i64 0, i32 8
  %2154 = load i32, ptr %2153, align 4, !tbaa !370
  %2155 = mul nsw i32 %2154, %2152
  %2156 = add nsw i32 %2155, 5000
  %2157 = sdiv i32 %2156, 10000
  %2158 = getelementptr inbounds %struct.basic_block_def, ptr %2139, i64 0, i32 11
  store i32 %2157, ptr %2158, align 8, !tbaa !368
  %2159 = call ptr @make_edge(ptr noundef %2139, ptr noundef %2142, i32 noundef 0) #22
  %2160 = getelementptr inbounds %struct.edge_def, ptr %2159, i64 0, i32 8
  store i32 10000, ptr %2160, align 4, !tbaa !370
  %2161 = load i64, ptr %2149, align 8, !tbaa !369
  %2162 = getelementptr inbounds %struct.edge_def, ptr %2159, i64 0, i32 9
  store i64 %2161, ptr %2162, align 8, !tbaa !371
  %2163 = getelementptr inbounds %struct.basic_block_def, ptr %2139, i64 0, i32 7
  %2164 = load ptr, ptr %2163, align 8, !tbaa !161
  %2165 = getelementptr inbounds %struct.rtl_bb_info, ptr %2164, i64 0, i32 1
  %2166 = load ptr, ptr %2165, align 8, !tbaa !443
  %2167 = load i32, ptr %2166, align 8
  %2168 = and i32 %2167, 65535
  %2169 = icmp eq i32 %2168, 11
  br i1 %2169, label %2170, label %2173, !prof !442

2170:                                             ; preds = %2135
  %2171 = getelementptr inbounds %struct.rtx_def, ptr %2166, i64 0, i32 1, i32 0, i32 0, i64 1
  %2172 = load ptr, ptr %2171, align 8, !tbaa !161
  store ptr %2172, ptr %2165, align 8, !tbaa !443
  br label %2173

2173:                                             ; preds = %2170, %2135
  call void @update_bb_for_insn(ptr noundef %2139) #22
  %2174 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %2175 = icmp eq ptr %2174, null
  br i1 %2175, label %2195, label %2176, !prof !402

2176:                                             ; preds = %2173
  %2177 = load i32, ptr @dump_flags, align 4, !tbaa !165
  %2178 = and i32 %2177, 8
  %2179 = icmp eq i32 %2178, 0
  br i1 %2179, label %2195, label %2180

2180:                                             ; preds = %2176
  %2181 = call i64 @fwrite(ptr nonnull @.str.13, i64 4, i64 1, ptr nonnull %2174)
  %2182 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %2183 = load i32, ptr @dump_flags, align 4, !tbaa !165
  %2184 = and i32 %2183, 128
  %2185 = or disjoint i32 %2184, 2
  call void @print_gimple_stmt(ptr noundef %2182, ptr noundef nonnull %1392, i32 noundef 0, i32 noundef %2185) #22
  %2186 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %2187 = call i32 @fputc(i32 10, ptr %2186)
  %2188 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %2189 = icmp eq ptr %1921, null
  br i1 %2189, label %2193, label %2190

2190:                                             ; preds = %2180
  %2191 = getelementptr inbounds %struct.rtx_def, ptr %1921, i64 0, i32 1, i32 0, i32 0, i64 2
  %2192 = load ptr, ptr %2191, align 8, !tbaa !161
  br label %2193

2193:                                             ; preds = %2190, %2180
  %2194 = phi ptr [ %2192, %2190 ], [ null, %2180 ]
  call void @print_rtl(ptr noundef %2188, ptr noundef %2194) #22
  br label %2195

2195:                                             ; preds = %2173, %2176, %2193
  %2196 = load ptr, ptr %1, align 8, !tbaa !150
  %2197 = getelementptr inbounds %struct.edge_def, ptr %2196, i64 0, i32 5
  %2198 = load i32, ptr %2197, align 8, !tbaa !435
  %2199 = icmp eq i32 %2198, 0
  br i1 %2199, label %2207, label %2200, !prof !442

2200:                                             ; preds = %2195
  call void @set_curr_insn_source_location(i32 noundef %2198) #22
  %2201 = load ptr, ptr %1, align 8, !tbaa !150
  %2202 = getelementptr inbounds %struct.edge_def, ptr %2201, i64 0, i32 4
  %2203 = load ptr, ptr %2202, align 8, !tbaa !437
  call void @set_curr_insn_block(ptr noundef %2203) #22
  %2204 = call i32 @curr_insn_locator() #22
  %2205 = load ptr, ptr %1, align 8, !tbaa !150
  %2206 = getelementptr inbounds %struct.edge_def, ptr %2205, i64 0, i32 5
  store i32 %2204, ptr %2206, align 8, !tbaa !435
  br label %2207

2207:                                             ; preds = %2200, %2195
  %2208 = load ptr, ptr %1, align 8, !tbaa !150
  %2209 = getelementptr inbounds %struct.edge_def, ptr %2208, i64 0, i32 4
  store ptr null, ptr %2209, align 8, !tbaa !437
  br label %2210

2210:                                             ; preds = %2098, %2019, %2083, %2061, %2004, %1982, %2207
  %2211 = phi ptr [ %2139, %2207 ], [ null, %1982 ], [ null, %2004 ], [ null, %2061 ], [ null, %2083 ], [ null, %2019 ], [ null, %2098 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  %2212 = icmp eq ptr %2211, null
  br i1 %2212, label %2626, label %2629, !prof !446

2213:                                             ; preds = %1617
  %2214 = and i32 %1618, -65281
  %2215 = icmp eq i32 %2214, 2
  br i1 %2215, label %2216, label %2383, !prof !447

2216:                                             ; preds = %2213
  %2217 = call i32 @get_curr_insn_source_location() #22
  %2218 = call ptr @get_curr_insn_block() #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  %2219 = load ptr, ptr %3, align 8, !tbaa.struct !383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1184, i64 16, i1 false), !tbaa.struct !384
  br label %2220

2220:                                             ; preds = %2379, %2216
  %2221 = phi ptr [ %2219, %2216 ], [ %2372, %2379 ]
  %2222 = phi ptr [ %1392, %2216 ], [ %2381, %2379 ]
  %2223 = load i32, ptr %2222, align 8
  %2224 = and i32 %2223, 255
  %2225 = add nsw i32 %2224, -10
  %2226 = icmp ult i32 %2225, -9
  br i1 %2226, label %2239, label %2227

2227:                                             ; preds = %2220
  %2228 = zext nneg i32 %2224 to i64
  %2229 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2228
  %2230 = load i32, ptr %2229, align 4, !tbaa !165
  %2231 = zext i32 %2230 to i64
  %2232 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2231
  %2233 = load i64, ptr %2232, align 8, !tbaa !174
  %2234 = icmp eq i64 %2233, 0
  br i1 %2234, label %2235, label %2236

2235:                                             ; preds = %2227
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %2236

2236:                                             ; preds = %2235, %2227
  %2237 = getelementptr inbounds i8, ptr %2222, i64 %2233
  %2238 = load ptr, ptr %2237, align 8, !tbaa !150
  br label %2239

2239:                                             ; preds = %2236, %2220
  %2240 = phi ptr [ %2238, %2236 ], [ null, %2220 ]
  %2241 = load i32, ptr %2222, align 8
  %2242 = and i32 %2241, 255
  %2243 = add nsw i32 %2242, -10
  %2244 = icmp ult i32 %2243, -9
  br i1 %2244, label %2260, label %2245

2245:                                             ; preds = %2239
  %2246 = zext nneg i32 %2242 to i64
  %2247 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2246
  %2248 = load i32, ptr %2247, align 4, !tbaa !165
  %2249 = zext i32 %2248 to i64
  %2250 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2249
  %2251 = load i64, ptr %2250, align 8, !tbaa !174
  %2252 = icmp eq i64 %2251, 0
  br i1 %2252, label %2253, label %2254

2253:                                             ; preds = %2245
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %2254

2254:                                             ; preds = %2253, %2245
  %2255 = getelementptr inbounds i8, ptr %2222, i64 %2251
  %2256 = getelementptr inbounds ptr, ptr %2255, i64 1
  %2257 = load ptr, ptr %2256, align 8, !tbaa !150
  %2258 = icmp ne ptr %2257, null
  %2259 = zext i1 %2258 to i8
  br label %2260

2260:                                             ; preds = %2254, %2239
  %2261 = phi i8 [ %2259, %2254 ], [ 0, %2239 ]
  %2262 = icmp eq i8 %2261, 0
  br i1 %2262, label %2281, label %2263

2263:                                             ; preds = %2260
  %2264 = load i32, ptr %2222, align 8
  %2265 = and i32 %2264, 255
  %2266 = add nsw i32 %2265, -10
  %2267 = icmp ult i32 %2266, -9
  br i1 %2267, label %2281, label %2268

2268:                                             ; preds = %2263
  %2269 = zext nneg i32 %2265 to i64
  %2270 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2269
  %2271 = load i32, ptr %2270, align 4, !tbaa !165
  %2272 = zext i32 %2271 to i64
  %2273 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2272
  %2274 = load i64, ptr %2273, align 8, !tbaa !174
  %2275 = icmp eq i64 %2274, 0
  br i1 %2275, label %2276, label %2277

2276:                                             ; preds = %2268
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %2277

2277:                                             ; preds = %2276, %2268
  %2278 = getelementptr inbounds i8, ptr %2222, i64 %2274
  %2279 = getelementptr inbounds ptr, ptr %2278, i64 1
  %2280 = load ptr, ptr %2279, align 8, !tbaa !150
  br label %2281

2281:                                             ; preds = %2277, %2263, %2260
  %2282 = phi ptr [ null, %2260 ], [ %2280, %2277 ], [ null, %2263 ]
  %2283 = call ptr @get_last_insn() #22
  %2284 = getelementptr inbounds %struct.gimple_statement_base, ptr %2222, i64 0, i32 2
  %2285 = load i32, ptr %2284, align 8, !tbaa !161
  call void @set_curr_insn_source_location(i32 noundef %2285) #22
  %2286 = getelementptr inbounds %struct.gimple_statement_base, ptr %2222, i64 0, i32 5
  %2287 = load ptr, ptr %2286, align 8, !tbaa !161
  call void @set_curr_insn_block(ptr noundef %2287) #22
  %2288 = load i64, ptr %2240, align 8
  %2289 = and i64 %2288, 65535
  %2290 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2289
  %2291 = load i32, ptr %2290, align 4, !tbaa !165
  %2292 = icmp eq i32 %2291, 3
  br i1 %2292, label %2293, label %2298

2293:                                             ; preds = %2281
  %2294 = getelementptr inbounds %struct.tree_decl_common, ptr %2240, i64 0, i32 2
  %2295 = load i64, ptr %2294, align 8
  %2296 = trunc i64 %2295 to i32
  %2297 = and i32 %2296, 255
  br label %2311

2298:                                             ; preds = %2281
  %2299 = getelementptr inbounds %struct.tree_common, ptr %2240, i64 0, i32 2
  %2300 = load ptr, ptr %2299, align 8, !tbaa !161
  %2301 = load i64, ptr %2300, align 8
  %2302 = and i64 %2301, 65535
  %2303 = icmp eq i64 %2302, 14
  br i1 %2303, label %2304, label %2306

2304:                                             ; preds = %2298
  %2305 = call i32 @vector_type_mode(ptr noundef nonnull %2300) #22
  br label %2311

2306:                                             ; preds = %2298
  %2307 = getelementptr inbounds %struct.tree_type, ptr %2300, i64 0, i32 6
  %2308 = load i32, ptr %2307, align 4
  %2309 = lshr i32 %2308, 16
  %2310 = and i32 %2309, 255
  br label %2311

2311:                                             ; preds = %2306, %2304, %2293
  %2312 = phi i32 [ %2297, %2293 ], [ %2305, %2304 ], [ %2310, %2306 ]
  %2313 = call ptr @gen_rtx_fmt_tei_stat(i32 noundef 138, i32 noundef %2312, ptr noundef nonnull %2240, ptr noundef %2282, i32 noundef 2) #22
  %2314 = call ptr @emit_debug_insn(ptr noundef %2313) #22
  %2315 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %2316 = icmp eq ptr %2315, null
  br i1 %2316, label %2328, label %2317

2317:                                             ; preds = %2311
  %2318 = load i32, ptr @dump_flags, align 4, !tbaa !165
  %2319 = and i32 %2318, 8
  %2320 = icmp eq i32 %2319, 0
  br i1 %2320, label %2328, label %2321

2321:                                             ; preds = %2317
  %2322 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %2323 = getelementptr inbounds %struct.rtx_def, ptr %2314, i64 1
  %2324 = load ptr, ptr %2323, align 8, !tbaa !161
  %2325 = getelementptr inbounds %struct.rtx_def, ptr %2324, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %2322, ptr %2325, align 8, !tbaa !161
  call fastcc void @maybe_dump_rtl_for_gimple_stmt(ptr noundef nonnull %2222, ptr noundef %2283)
  %2326 = load ptr, ptr %2323, align 8, !tbaa !161
  %2327 = getelementptr inbounds %struct.rtx_def, ptr %2326, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %2282, ptr %2327, align 8, !tbaa !161
  br label %2328

2328:                                             ; preds = %2321, %2317, %2311
  %2329 = call zeroext i8 @ssa_operands_active() #22
  %2330 = icmp eq i8 %2329, 0
  br i1 %2330, label %2370, label %2331

2331:                                             ; preds = %2328
  %2332 = load i32, ptr %2222, align 8
  %2333 = and i32 %2332, 255
  %2334 = add nsw i32 %2333, -10
  %2335 = icmp ult i32 %2334, -9
  br i1 %2335, label %2339, label %2336

2336:                                             ; preds = %2331
  %2337 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %2222, i64 0, i32 2
  %2338 = load ptr, ptr %2337, align 8, !tbaa !161
  br label %2339

2339:                                             ; preds = %2336, %2331
  %2340 = phi ptr [ %2338, %2336 ], [ null, %2331 ]
  %2341 = icmp eq ptr %2340, null
  br i1 %2341, label %2345, label %2342

2342:                                             ; preds = %2339
  %2343 = getelementptr inbounds %struct.use_optype_d, ptr %2340, i64 0, i32 1
  %2344 = load ptr, ptr %2340, align 8, !tbaa !405
  br label %2345

2345:                                             ; preds = %2342, %2339
  %2346 = phi ptr [ %2344, %2342 ], [ %2340, %2339 ]
  %2347 = phi i8 [ 0, %2342 ], [ 1, %2339 ]
  %2348 = phi ptr [ %2343, %2342 ], [ null, %2339 ]
  br i1 %2341, label %2370, label %2349

2349:                                             ; preds = %2345, %2365
  %2350 = phi ptr [ %2368, %2365 ], [ %2348, %2345 ]
  %2351 = phi i8 [ %2367, %2365 ], [ %2347, %2345 ]
  %2352 = phi ptr [ %2366, %2365 ], [ %2346, %2345 ]
  %2353 = load ptr, ptr %2350, align 8, !tbaa !416
  %2354 = icmp eq ptr %2353, null
  br i1 %2354, label %2360, label %2355

2355:                                             ; preds = %2349
  %2356 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2350, i64 0, i32 1
  %2357 = load ptr, ptr %2356, align 8, !tbaa !412
  %2358 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2353, i64 0, i32 1
  store ptr %2357, ptr %2358, align 8, !tbaa !412
  %2359 = load ptr, ptr %2356, align 8, !tbaa !412
  store ptr %2353, ptr %2359, align 8, !tbaa !416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2350, i8 0, i64 16, i1 false)
  br label %2360

2360:                                             ; preds = %2355, %2349
  %2361 = icmp eq ptr %2352, null
  br i1 %2361, label %2365, label %2362

2362:                                             ; preds = %2360
  %2363 = getelementptr inbounds %struct.use_optype_d, ptr %2352, i64 0, i32 1
  %2364 = load ptr, ptr %2352, align 8, !tbaa !405
  br label %2365

2365:                                             ; preds = %2360, %2362
  %2366 = phi ptr [ %2364, %2362 ], [ %2352, %2360 ]
  %2367 = phi i8 [ %2351, %2362 ], [ 1, %2360 ]
  %2368 = phi ptr [ %2363, %2362 ], [ null, %2360 ]
  %2369 = icmp eq i8 %2367, 0
  br i1 %2369, label %2349, label %2370, !llvm.loop !448

2370:                                             ; preds = %2365, %2345, %2328
  store ptr %2221, ptr %3, align 8, !tbaa.struct !383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1184, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !384
  %2371 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2221, i64 0, i32 2
  %2372 = load ptr, ptr %2371, align 8, !tbaa !283
  %2373 = icmp eq ptr %2372, null
  br i1 %2373, label %2379, label %2374

2374:                                             ; preds = %2370
  %2375 = load ptr, ptr %2372, align 8, !tbaa !280
  %2376 = load i32, ptr %2375, align 8
  %2377 = and i32 %2376, -65281
  %2378 = icmp eq i32 %2377, 2
  br label %2379

2379:                                             ; preds = %2374, %2370
  %2380 = phi i1 [ false, %2370 ], [ %2378, %2374 ]
  %2381 = phi ptr [ %2222, %2370 ], [ %2375, %2374 ]
  br i1 %2380, label %2220, label %2382

2382:                                             ; preds = %2379
  call void @set_curr_insn_source_location(i32 noundef %2217) #22
  call void @set_curr_insn_block(ptr noundef %2218) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  br label %2626

2383:                                             ; preds = %2213
  %2384 = and i32 %1618, 524543
  %2385 = icmp eq i32 %2384, 524296
  br i1 %2385, label %2386, label %2560, !prof !449

2386:                                             ; preds = %2383
  %2387 = call fastcc ptr @expand_gimple_stmt(ptr noundef %1392)
  br label %2388

2388:                                             ; preds = %2393, %2386
  %2389 = phi ptr [ %2387, %2386 ], [ %2391, %2393 ]
  %2390 = getelementptr inbounds %struct.rtx_def, ptr %2389, i64 0, i32 1, i32 0, i32 0, i64 2
  %2391 = load ptr, ptr %2390, align 8, !tbaa !161
  %2392 = icmp eq ptr %2391, null
  br i1 %2392, label %2397, label %2393, !prof !450

2393:                                             ; preds = %2388
  %2394 = load i32, ptr %2391, align 8
  %2395 = and i32 %2394, 16842751
  %2396 = icmp eq i32 %2395, 16777226
  br i1 %2396, label %2419, label %2388, !prof !451, !llvm.loop !452

2397:                                             ; preds = %2388
  %2398 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %2399 = icmp eq ptr %2398, null
  br i1 %2399, label %2549, label %2400, !prof !402

2400:                                             ; preds = %2397
  %2401 = load i32, ptr @dump_flags, align 4, !tbaa !165
  %2402 = and i32 %2401, 8
  %2403 = icmp eq i32 %2402, 0
  br i1 %2403, label %2549, label %2404

2404:                                             ; preds = %2400
  %2405 = call i64 @fwrite(ptr nonnull @.str.13, i64 4, i64 1, ptr nonnull %2398)
  %2406 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %2407 = load i32, ptr @dump_flags, align 4, !tbaa !165
  %2408 = and i32 %2407, 128
  %2409 = or disjoint i32 %2408, 2
  call void @print_gimple_stmt(ptr noundef %2406, ptr noundef %1392, i32 noundef 0, i32 noundef %2409) #22
  %2410 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %2411 = call i32 @fputc(i32 10, ptr %2410)
  %2412 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %2413 = icmp eq ptr %2387, null
  br i1 %2413, label %2417, label %2414

2414:                                             ; preds = %2404
  %2415 = getelementptr inbounds %struct.rtx_def, ptr %2387, i64 0, i32 1, i32 0, i32 0, i64 2
  %2416 = load ptr, ptr %2415, align 8, !tbaa !161
  br label %2417

2417:                                             ; preds = %2414, %2404
  %2418 = phi ptr [ %2416, %2414 ], [ null, %2404 ]
  call void @print_rtl(ptr noundef %2412, ptr noundef %2418) #22
  br label %2549

2419:                                             ; preds = %2393
  call void @do_pending_stack_adjust() #22
  %2420 = getelementptr inbounds %struct.basic_block_def, ptr %1391, i64 0, i32 1
  br label %2421

2421:                                             ; preds = %2492, %2419
  %2422 = phi i32 [ %2493, %2492 ], [ 0, %2419 ]
  %2423 = phi i32 [ %2426, %2492 ], [ 0, %2419 ]
  %2424 = phi i64 [ %2427, %2492 ], [ 0, %2419 ]
  br label %2425

2425:                                             ; preds = %2421, %2478
  %2426 = phi i32 [ %2484, %2478 ], [ %2423, %2421 ]
  %2427 = phi i64 [ %2481, %2478 ], [ %2424, %2421 ]
  %2428 = load ptr, ptr %2420, align 8, !tbaa !150
  %2429 = icmp eq ptr %2428, null
  br i1 %2429, label %2432, label %2430, !prof !261

2430:                                             ; preds = %2425
  %2431 = load i32, ptr %2428, align 8, !tbaa !364
  br label %2432

2432:                                             ; preds = %2430, %2425
  %2433 = phi i32 [ %2431, %2430 ], [ 0, %2425 ]
  %2434 = icmp eq i32 %2433, %2422
  br i1 %2434, label %2439, label %2435, !prof !453

2435:                                             ; preds = %2432
  %2436 = zext i32 %2422 to i64
  %2437 = getelementptr inbounds %struct.VEC_edge_base, ptr %2428, i64 0, i32 2, i64 %2436
  %2438 = load ptr, ptr %2437, align 8, !tbaa !150
  br label %2439

2439:                                             ; preds = %2435, %2432
  %2440 = phi ptr [ %2438, %2435 ], [ null, %2432 ]
  %2441 = icmp eq ptr %2440, null
  br i1 %2441, label %2494, label %2442, !prof !453

2442:                                             ; preds = %2439
  %2443 = getelementptr inbounds %struct.edge_def, ptr %2440, i64 0, i32 7
  %2444 = load i32, ptr %2443, align 8, !tbaa !374
  %2445 = and i32 %2444, 10
  %2446 = icmp eq i32 %2445, 0
  br i1 %2446, label %2447, label %2485, !prof !454

2447:                                             ; preds = %2442
  %2448 = getelementptr inbounds %struct.edge_def, ptr %2440, i64 0, i32 1
  %2449 = load ptr, ptr %2448, align 8, !tbaa !366
  %2450 = load ptr, ptr @cfun, align 8, !tbaa !150
  %2451 = getelementptr inbounds %struct.function, ptr %2450, i64 0, i32 1
  %2452 = load ptr, ptr %2451, align 8, !tbaa !257
  %2453 = getelementptr inbounds %struct.control_flow_graph, ptr %2452, i64 0, i32 1
  %2454 = load ptr, ptr %2453, align 8, !tbaa !265
  %2455 = icmp eq ptr %2449, %2454
  br i1 %2455, label %2478, label %2456, !prof !455

2456:                                             ; preds = %2447
  %2457 = getelementptr inbounds %struct.edge_def, ptr %2440, i64 0, i32 9
  %2458 = load i64, ptr %2457, align 8, !tbaa !371
  %2459 = getelementptr inbounds %struct.basic_block_def, ptr %2449, i64 0, i32 8
  %2460 = load i64, ptr %2459, align 8, !tbaa !369
  %2461 = sub nsw i64 %2460, %2458
  store i64 %2461, ptr %2459, align 8, !tbaa !369
  %2462 = load ptr, ptr %2440, align 8, !tbaa !445
  %2463 = getelementptr inbounds %struct.basic_block_def, ptr %2462, i64 0, i32 11
  %2464 = load i32, ptr %2463, align 8, !tbaa !368
  %2465 = getelementptr inbounds %struct.edge_def, ptr %2440, i64 0, i32 8
  %2466 = load i32, ptr %2465, align 4, !tbaa !370
  %2467 = mul nsw i32 %2466, %2464
  %2468 = add nsw i32 %2467, 5000
  %2469 = sdiv i32 %2468, -10000
  %2470 = getelementptr inbounds %struct.basic_block_def, ptr %2449, i64 0, i32 11
  %2471 = load i32, ptr %2470, align 8, !tbaa !368
  %2472 = add i32 %2469, %2471
  store i32 %2472, ptr %2470, align 8, !tbaa !368
  %2473 = icmp slt i64 %2461, 0
  br i1 %2473, label %2474, label %2475, !prof !455

2474:                                             ; preds = %2456
  store i64 0, ptr %2459, align 8, !tbaa !369
  br label %2475

2475:                                             ; preds = %2474, %2456
  %2476 = icmp slt i32 %2472, 0
  br i1 %2476, label %2477, label %2478, !prof !455

2477:                                             ; preds = %2475
  store i32 0, ptr %2470, align 8, !tbaa !368
  br label %2478

2478:                                             ; preds = %2477, %2475, %2447
  %2479 = getelementptr inbounds %struct.edge_def, ptr %2440, i64 0, i32 9
  %2480 = load i64, ptr %2479, align 8, !tbaa !371
  %2481 = add nsw i64 %2480, %2427
  %2482 = getelementptr inbounds %struct.edge_def, ptr %2440, i64 0, i32 8
  %2483 = load i32, ptr %2482, align 4, !tbaa !370
  %2484 = add nsw i32 %2483, %2426
  call void @remove_edge(ptr noundef nonnull %2440) #22
  br label %2425, !llvm.loop !456

2485:                                             ; preds = %2442
  br i1 %2429, label %2488, label %2486

2486:                                             ; preds = %2485
  %2487 = load i32, ptr %2428, align 8, !tbaa !364
  br label %2488

2488:                                             ; preds = %2486, %2485
  %2489 = phi i32 [ %2487, %2486 ], [ 0, %2485 ]
  %2490 = icmp ult i32 %2422, %2489
  br i1 %2490, label %2492, label %2491

2491:                                             ; preds = %2488
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %2492

2492:                                             ; preds = %2491, %2488
  %2493 = add i32 %2422, 1
  br label %2421, !llvm.loop !456

2494:                                             ; preds = %2439
  %2495 = getelementptr inbounds %struct.rtx_def, ptr %2391, i64 0, i32 1, i32 0, i32 0, i64 2
  %2496 = load ptr, ptr %2495, align 8, !tbaa !161
  %2497 = load i32, ptr %2496, align 8
  %2498 = and i32 %2497, 65535
  %2499 = icmp eq i32 %2498, 11
  br i1 %2499, label %2501, label %2500, !prof !454

2500:                                             ; preds = %2494
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2079, ptr noundef nonnull @.str.1) #22
  br label %2501

2501:                                             ; preds = %2500, %2494
  %2502 = getelementptr inbounds %struct.rtx_def, ptr %2496, i64 0, i32 1, i32 0, i32 0, i64 2
  %2503 = load ptr, ptr %2502, align 8, !tbaa !161
  %2504 = icmp eq ptr %2503, null
  br i1 %2504, label %2514, label %2505, !prof !266

2505:                                             ; preds = %2501, %2510
  %2506 = phi ptr [ %2512, %2510 ], [ %2503, %2501 ]
  %2507 = load i32, ptr %2506, align 8
  %2508 = and i32 %2507, 65535
  %2509 = icmp eq i32 %2508, 12
  br i1 %2509, label %2514, label %2510, !prof !455

2510:                                             ; preds = %2505
  %2511 = call ptr @delete_insn(ptr noundef nonnull %2506) #22
  %2512 = load ptr, ptr %2502, align 8, !tbaa !161
  %2513 = icmp eq ptr %2512, null
  br i1 %2513, label %2514, label %2505, !prof !354, !llvm.loop !457

2514:                                             ; preds = %2510, %2505, %2501
  %2515 = phi i8 [ 0, %2501 ], [ 0, %2510 ], [ 1, %2505 ]
  %2516 = getelementptr inbounds %struct.rtx_def, ptr %2496, i64 0, i32 1, i32 0, i32 0, i64 2
  %2517 = load ptr, ptr @cfun, align 8, !tbaa !150
  %2518 = getelementptr inbounds %struct.function, ptr %2517, i64 0, i32 1
  %2519 = load ptr, ptr %2518, align 8, !tbaa !257
  %2520 = getelementptr inbounds %struct.control_flow_graph, ptr %2519, i64 0, i32 1
  %2521 = load ptr, ptr %2520, align 8, !tbaa !265
  %2522 = call ptr @make_edge(ptr noundef %1391, ptr noundef %2521, i32 noundef 258) #22
  %2523 = getelementptr inbounds %struct.edge_def, ptr %2522, i64 0, i32 8
  %2524 = load i32, ptr %2523, align 4, !tbaa !370
  %2525 = add nsw i32 %2524, %2426
  store i32 %2525, ptr %2523, align 4, !tbaa !370
  %2526 = getelementptr inbounds %struct.edge_def, ptr %2522, i64 0, i32 9
  %2527 = load i64, ptr %2526, align 8, !tbaa !371
  %2528 = add nsw i64 %2527, %2427
  store i64 %2528, ptr %2526, align 8, !tbaa !371
  %2529 = getelementptr inbounds %struct.basic_block_def, ptr %1391, i64 0, i32 7
  %2530 = load ptr, ptr %2529, align 8, !tbaa !161
  %2531 = getelementptr inbounds %struct.rtl_bb_info, ptr %2530, i64 0, i32 1
  store ptr %2496, ptr %2531, align 8, !tbaa !443
  call void @update_bb_for_insn(ptr noundef %1391) #22
  %2532 = load ptr, ptr %2516, align 8, !tbaa !161
  %2533 = icmp eq ptr %2532, null
  br i1 %2533, label %2547, label %2534, !prof !454

2534:                                             ; preds = %2514
  %2535 = call ptr @get_last_insn() #22
  %2536 = call ptr @create_basic_block(ptr noundef nonnull %2532, ptr noundef %2535, ptr noundef %1391) #22
  %2537 = getelementptr inbounds %struct.basic_block_def, ptr %2536, i64 0, i32 7
  %2538 = load ptr, ptr %2537, align 8, !tbaa !161
  %2539 = getelementptr inbounds %struct.rtl_bb_info, ptr %2538, i64 0, i32 1
  %2540 = load ptr, ptr %2539, align 8, !tbaa !443
  %2541 = load i32, ptr %2540, align 8
  %2542 = and i32 %2541, 65535
  %2543 = icmp eq i32 %2542, 11
  br i1 %2543, label %2544, label %2547

2544:                                             ; preds = %2534
  %2545 = getelementptr inbounds %struct.rtx_def, ptr %2540, i64 0, i32 1, i32 0, i32 0, i64 1
  %2546 = load ptr, ptr %2545, align 8, !tbaa !161
  store ptr %2546, ptr %2539, align 8, !tbaa !443
  br label %2547

2547:                                             ; preds = %2544, %2534, %2514
  %2548 = phi ptr [ %2536, %2544 ], [ %2536, %2534 ], [ %1391, %2514 ]
  call fastcc void @maybe_dump_rtl_for_gimple_stmt(ptr noundef %1392, ptr noundef %2387)
  br label %2549

2549:                                             ; preds = %2417, %2400, %2397, %2547
  %2550 = phi i8 [ %2515, %2547 ], [ 1, %2397 ], [ 1, %2400 ], [ 1, %2417 ]
  %2551 = phi ptr [ %2548, %2547 ], [ null, %2397 ], [ null, %2400 ], [ null, %2417 ]
  %2552 = icmp eq ptr %2551, null
  br i1 %2552, label %2556, label %2553, !prof !458

2553:                                             ; preds = %2549
  %2554 = icmp eq i8 %2550, 0
  br i1 %2554, label %2556, label %2555, !prof !454

2555:                                             ; preds = %2553
  br label %2556

2556:                                             ; preds = %2555, %2553, %2549
  %2557 = phi i1 [ false, %2553 ], [ true, %2549 ], [ true, %2555 ]
  %2558 = phi ptr [ %1391, %2553 ], [ %1391, %2549 ], [ %2551, %2555 ]
  %2559 = phi ptr [ %2551, %2553 ], [ %1390, %2549 ], [ %1390, %2555 ]
  br i1 %2557, label %2626, label %2629, !prof !458

2560:                                             ; preds = %2383
  %2561 = add nsw i32 %1619, -10
  %2562 = icmp ult i32 %2561, -9
  br i1 %2562, label %2566, label %2563, !prof !459

2563:                                             ; preds = %2560
  %2564 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1392, i64 0, i32 1
  %2565 = load ptr, ptr %2564, align 8, !tbaa !161
  br label %2566

2566:                                             ; preds = %2563, %2560
  %2567 = phi ptr [ %2565, %2563 ], [ null, %2560 ]
  %2568 = icmp eq ptr %2567, null
  br i1 %2568, label %2579, label %2569, !prof !460

2569:                                             ; preds = %2566
  %2570 = and i32 %1618, 254
  %2571 = add nsw i32 %2570, -10
  %2572 = icmp ult i32 %2571, -4
  br i1 %2572, label %2579, label %2573, !prof !461

2573:                                             ; preds = %2569
  %2574 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1392, i64 0, i32 1
  %2575 = load ptr, ptr %2574, align 8, !tbaa !161
  %2576 = icmp eq ptr %2575, null
  br i1 %2576, label %2579, label %2577, !prof !462

2577:                                             ; preds = %2573
  %2578 = load ptr, ptr %2567, align 8, !tbaa !463
  br label %2579

2579:                                             ; preds = %2577, %2573, %2569, %2566
  %2580 = phi ptr [ %2567, %2566 ], [ %2567, %2569 ], [ %2567, %2573 ], [ %2578, %2577 ]
  %2581 = icmp eq ptr %2580, null
  br i1 %2581, label %2588, label %2582, !prof !465

2582:                                             ; preds = %2579
  %2583 = getelementptr inbounds %struct.def_optype_d, ptr %2580, i64 0, i32 1
  %2584 = load ptr, ptr %2583, align 8, !tbaa !466
  %2585 = load ptr, ptr %2580, align 8, !tbaa !463
  %2586 = icmp eq ptr %2585, null
  %2587 = select i1 %2586, ptr %2584, ptr null, !prof !467
  br label %2588

2588:                                             ; preds = %2582, %2579
  %2589 = phi ptr [ %2587, %2582 ], [ null, %2579 ]
  %2590 = icmp ne ptr %2589, null
  %2591 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 1), align 8
  %2592 = icmp ne ptr %2591, null
  %2593 = select i1 %2590, i1 %2592, i1 false, !prof !468
  br i1 %2593, label %2594, label %2600, !prof !468

2594:                                             ; preds = %2588
  %2595 = load ptr, ptr %2589, align 8, !tbaa !150
  %2596 = getelementptr inbounds %struct.tree_ssa_name, ptr %2595, i64 0, i32 3
  %2597 = load i32, ptr %2596, align 8, !tbaa !161
  %2598 = call i32 @bitmap_bit_p(ptr noundef nonnull %2591, i32 noundef %2597) #22
  %2599 = icmp eq i32 %2598, 0
  br i1 %2599, label %2600, label %2623, !prof !469

2600:                                             ; preds = %2594, %2588
  %2601 = call fastcc ptr @expand_gimple_stmt(ptr noundef nonnull %1392)
  %2602 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %2603 = icmp eq ptr %2602, null
  br i1 %2603, label %2623, label %2604, !prof !402

2604:                                             ; preds = %2600
  %2605 = load i32, ptr @dump_flags, align 4, !tbaa !165
  %2606 = and i32 %2605, 8
  %2607 = icmp eq i32 %2606, 0
  br i1 %2607, label %2623, label %2608

2608:                                             ; preds = %2604
  %2609 = call i64 @fwrite(ptr nonnull @.str.13, i64 4, i64 1, ptr nonnull %2602)
  %2610 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %2611 = load i32, ptr @dump_flags, align 4, !tbaa !165
  %2612 = and i32 %2611, 128
  %2613 = or disjoint i32 %2612, 2
  call void @print_gimple_stmt(ptr noundef %2610, ptr noundef %1392, i32 noundef 0, i32 noundef %2613) #22
  %2614 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %2615 = call i32 @fputc(i32 10, ptr %2614)
  %2616 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %2617 = icmp eq ptr %2601, null
  br i1 %2617, label %2621, label %2618

2618:                                             ; preds = %2608
  %2619 = getelementptr inbounds %struct.rtx_def, ptr %2601, i64 0, i32 1, i32 0, i32 0, i64 2
  %2620 = load ptr, ptr %2619, align 8, !tbaa !161
  br label %2621

2621:                                             ; preds = %2618, %2608
  %2622 = phi ptr [ %2620, %2618 ], [ null, %2608 ]
  call void @print_rtl(ptr noundef %2616, ptr noundef %2622) #22
  br label %2623

2623:                                             ; preds = %2621, %2604, %2600, %2594
  %2624 = phi i1 [ false, %2594 ], [ true, %2600 ], [ true, %2604 ], [ true, %2621 ]
  %2625 = phi i32 [ 4, %2594 ], [ 0, %2600 ], [ 0, %2604 ], [ 0, %2621 ]
  br i1 %2624, label %2626, label %2629, !prof !470

2626:                                             ; preds = %2623, %2556, %2382, %2210
  %2627 = phi ptr [ %1391, %2210 ], [ %1391, %2382 ], [ %2558, %2556 ], [ %1391, %2623 ]
  %2628 = phi ptr [ %1390, %2210 ], [ %1390, %2382 ], [ %2559, %2556 ], [ %1390, %2623 ]
  br label %2629

2629:                                             ; preds = %2623, %2556, %2626, %2210
  %2630 = phi i32 [ 0, %2626 ], [ 1, %2210 ], [ 1, %2556 ], [ %2625, %2623 ]
  %2631 = phi ptr [ %2627, %2626 ], [ %1391, %2210 ], [ %2558, %2556 ], [ %1391, %2623 ]
  %2632 = phi ptr [ %2628, %2626 ], [ %2211, %2210 ], [ %2559, %2556 ], [ %1390, %2623 ]
  switch i32 %2630, label %2746 [
    i32 0, label %2633
    i32 4, label %2633
  ], !prof !471

2633:                                             ; preds = %2629, %2629
  %2634 = load ptr, ptr %3, align 8, !tbaa !396
  %2635 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2634, i64 0, i32 2
  %2636 = load ptr, ptr %2635, align 8, !tbaa !283
  store ptr %2636, ptr %3, align 8, !tbaa !396
  %2637 = icmp eq ptr %2636, null
  br i1 %2637, label %2638, label %1388, !prof !472, !llvm.loop !473

2638:                                             ; preds = %2633, %1383
  %2639 = phi ptr [ %1187, %1383 ], [ %2631, %2633 ]
  store ptr null, ptr @currently_expanding_gimple_stmt, align 8, !tbaa !150
  %2640 = getelementptr inbounds %struct.basic_block_def, ptr %2639, i64 0, i32 1
  br label %2641

2641:                                             ; preds = %2692, %2638
  %2642 = phi i32 [ 0, %2638 ], [ %2693, %2692 ]
  %2643 = load ptr, ptr %2640, align 8, !tbaa !150
  %2644 = icmp eq ptr %2643, null
  br i1 %2644, label %2647, label %2645, !prof !474

2645:                                             ; preds = %2641
  %2646 = load i32, ptr %2643, align 8, !tbaa !364
  br label %2647

2647:                                             ; preds = %2645, %2641
  %2648 = phi i32 [ %2646, %2645 ], [ 0, %2641 ]
  %2649 = icmp eq i32 %2648, %2642
  br i1 %2649, label %2654, label %2650, !prof !475

2650:                                             ; preds = %2647
  %2651 = zext i32 %2642 to i64
  %2652 = getelementptr inbounds %struct.VEC_edge_base, ptr %2643, i64 0, i32 2, i64 %2651
  %2653 = load ptr, ptr %2652, align 8, !tbaa !150
  br label %2654

2654:                                             ; preds = %2650, %2647
  %2655 = phi ptr [ %2653, %2650 ], [ null, %2647 ]
  br i1 %2649, label %2694, label %2656, !prof !475

2656:                                             ; preds = %2654
  %2657 = getelementptr inbounds %struct.edge_def, ptr %2655, i64 0, i32 5
  %2658 = load i32, ptr %2657, align 8, !tbaa !435
  %2659 = icmp eq i32 %2658, 0
  br i1 %2659, label %2667, label %2660, !prof !476

2660:                                             ; preds = %2656
  %2661 = getelementptr inbounds %struct.edge_def, ptr %2655, i64 0, i32 4
  %2662 = load ptr, ptr %2661, align 8, !tbaa !437
  %2663 = icmp eq ptr %2662, null
  br i1 %2663, label %2667, label %2664, !prof !477

2664:                                             ; preds = %2660
  call void @set_curr_insn_source_location(i32 noundef %2658) #22
  %2665 = load ptr, ptr %2661, align 8, !tbaa !437
  call void @set_curr_insn_block(ptr noundef %2665) #22
  %2666 = call i32 @curr_insn_locator() #22
  store i32 %2666, ptr %2657, align 8, !tbaa !435
  br label %2667

2667:                                             ; preds = %2664, %2660, %2656
  %2668 = getelementptr inbounds %struct.edge_def, ptr %2655, i64 0, i32 4
  store ptr null, ptr %2668, align 8, !tbaa !437
  %2669 = getelementptr inbounds %struct.edge_def, ptr %2655, i64 0, i32 7
  %2670 = load i32, ptr %2669, align 8, !tbaa !374
  %2671 = and i32 %2670, 1
  %2672 = icmp eq i32 %2671, 0
  br i1 %2672, label %2683, label %2673, !prof !478

2673:                                             ; preds = %2667
  %2674 = getelementptr inbounds %struct.basic_block_def, ptr %2639, i64 0, i32 6
  %2675 = getelementptr inbounds %struct.edge_def, ptr %2655, i64 0, i32 1
  %2676 = load ptr, ptr %2675, align 8, !tbaa !366
  %2677 = load ptr, ptr %2674, align 8, !tbaa !263
  %2678 = icmp eq ptr %2676, %2677
  br i1 %2678, label %2683, label %2679, !prof !479

2679:                                             ; preds = %2673
  %2680 = call fastcc ptr @label_rtx_for_bb(ptr noundef %2676)
  call void @emit_jump(ptr noundef %2680) #22
  %2681 = load i32, ptr %2669, align 8, !tbaa !374
  %2682 = and i32 %2681, -2
  store i32 %2682, ptr %2669, align 8, !tbaa !374
  br label %2683

2683:                                             ; preds = %2679, %2673, %2667
  %2684 = load ptr, ptr %2640, align 8, !tbaa !150
  %2685 = icmp eq ptr %2684, null
  br i1 %2685, label %2688, label %2686, !prof !480

2686:                                             ; preds = %2683
  %2687 = load i32, ptr %2684, align 8, !tbaa !364
  br label %2688

2688:                                             ; preds = %2686, %2683
  %2689 = phi i32 [ %2687, %2686 ], [ 0, %2683 ]
  %2690 = icmp ult i32 %2642, %2689
  br i1 %2690, label %2692, label %2691, !prof !481

2691:                                             ; preds = %2688
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %2692

2692:                                             ; preds = %2691, %2688
  %2693 = add i32 %2642, 1
  br label %2641, !llvm.loop !482

2694:                                             ; preds = %2654
  br i1 %2644, label %2717, label %2695, !prof !483

2695:                                             ; preds = %2694
  %2696 = load i32, ptr %2643, align 8, !tbaa !364
  %2697 = icmp eq i32 %2696, 1
  br i1 %2697, label %2698, label %2717, !prof !484

2698:                                             ; preds = %2695
  %2699 = load ptr, ptr %2640, align 8, !tbaa !363
  %2700 = getelementptr inbounds %struct.VEC_edge_base, ptr %2699, i64 0, i32 2, i64 0
  %2701 = load ptr, ptr %2700, align 8, !tbaa !150
  %2702 = getelementptr inbounds %struct.edge_def, ptr %2701, i64 0, i32 7
  %2703 = load i32, ptr %2702, align 8, !tbaa !374
  %2704 = and i32 %2703, 1
  %2705 = icmp eq i32 %2704, 0
  br i1 %2705, label %2717, label %2706, !prof !485

2706:                                             ; preds = %2698
  %2707 = call ptr @get_last_insn() #22
  %2708 = icmp eq ptr %2707, null
  br i1 %2708, label %2717, label %2709, !prof !486

2709:                                             ; preds = %2706
  %2710 = load i32, ptr %2707, align 8
  %2711 = and i32 %2710, 65535
  %2712 = icmp eq i32 %2711, 9
  br i1 %2712, label %2713, label %2717, !prof !486

2713:                                             ; preds = %2709
  %2714 = call ptr @gen_reg_rtx(i32 noundef 16) #22
  %2715 = call ptr @gen_move_insn(ptr noundef %2714, ptr noundef %2714) #22
  %2716 = call ptr @emit_insn_after_noloc(ptr noundef %2715, ptr noundef nonnull %2707, ptr noundef null) #22
  br label %2717

2717:                                             ; preds = %2694, %2713, %2709, %2706, %2698, %2695
  call void @do_pending_stack_adjust() #22
  %2718 = call ptr @get_last_insn() #22
  %2719 = load i32, ptr %2718, align 8
  %2720 = and i32 %2719, 65535
  %2721 = icmp eq i32 %2720, 11
  br i1 %2721, label %2722, label %2725, !prof !487

2722:                                             ; preds = %2717
  %2723 = getelementptr inbounds %struct.rtx_def, ptr %2718, i64 0, i32 1, i32 0, i32 0, i64 1
  %2724 = load ptr, ptr %2723, align 8, !tbaa !161
  br label %2725

2725:                                             ; preds = %2722, %2717
  %2726 = phi ptr [ %2724, %2722 ], [ %2718, %2717 ]
  %2727 = load i32, ptr %2726, align 8
  %2728 = and i32 %2727, 65535
  %2729 = icmp eq i32 %2728, 9
  br i1 %2729, label %2730, label %2741, !prof !488

2730:                                             ; preds = %2725
  %2731 = getelementptr inbounds %struct.rtx_def, ptr %2726, i64 1
  %2732 = load ptr, ptr %2731, align 8, !tbaa !161
  %2733 = load i32, ptr %2732, align 8
  %2734 = and i32 %2733, 65534
  %2735 = icmp eq i32 %2734, 20
  br i1 %2735, label %2736, label %2741, !prof !489

2736:                                             ; preds = %2730
  %2737 = getelementptr inbounds %struct.rtx_def, ptr %2726, i64 0, i32 1, i32 0, i32 0, i64 1
  %2738 = load ptr, ptr %2737, align 8, !tbaa !161
  %2739 = getelementptr inbounds %struct.rtx_def, ptr %2738, i64 0, i32 1, i32 0, i32 0, i64 1
  %2740 = load ptr, ptr %2739, align 8, !tbaa !161
  br label %2741

2741:                                             ; preds = %2736, %2730, %2725
  %2742 = phi ptr [ %2740, %2736 ], [ %2726, %2725 ], [ %2726, %2730 ]
  %2743 = getelementptr inbounds %struct.basic_block_def, ptr %2639, i64 0, i32 7
  %2744 = load ptr, ptr %2743, align 8, !tbaa !161
  %2745 = getelementptr inbounds %struct.rtl_bb_info, ptr %2744, i64 0, i32 1
  store ptr %2742, ptr %2745, align 8, !tbaa !443
  call void @update_bb_for_insn(ptr noundef %2639) #22
  br label %2746

2746:                                             ; preds = %2629, %2741
  %2747 = phi ptr [ %2639, %2741 ], [ %2632, %2629 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  %2748 = getelementptr inbounds %struct.basic_block_def, ptr %2747, i64 0, i32 6
  %2749 = load ptr, ptr %2748, align 8, !tbaa !263
  %2750 = load ptr, ptr @cfun, align 8, !tbaa !150
  %2751 = getelementptr inbounds %struct.function, ptr %2750, i64 0, i32 1
  %2752 = load ptr, ptr %2751, align 8, !tbaa !257
  %2753 = getelementptr inbounds %struct.control_flow_graph, ptr %2752, i64 0, i32 1
  %2754 = load ptr, ptr %2753, align 8, !tbaa !265
  %2755 = icmp eq ptr %2749, %2754
  br i1 %2755, label %2756, label %1186, !prof !267, !llvm.loop !490

2756:                                             ; preds = %2746, %1173
  %2757 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !165
  %2758 = icmp eq i32 %2757, 0
  br i1 %2758, label %2809, label %2759, !prof !321

2759:                                             ; preds = %2756
  %2760 = call ptr @get_last_insn() #22
  %2761 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !165
  store i32 0, ptr @flag_strict_aliasing, align 4, !tbaa !165
  %2762 = call ptr @get_insns() #22
  %2763 = icmp eq ptr %2762, null
  br i1 %2763, label %2808, label %2764

2764:                                             ; preds = %2759, %2804
  %2765 = phi ptr [ %2806, %2804 ], [ %2762, %2759 ]
  %2766 = load i32, ptr %2765, align 8
  %2767 = and i32 %2766, 65535
  %2768 = icmp eq i32 %2767, 7
  br i1 %2768, label %2769, label %2804

2769:                                             ; preds = %2764
  %2770 = getelementptr inbounds %struct.rtx_def, ptr %2765, i64 1
  %2771 = load ptr, ptr %2770, align 8, !tbaa !161
  %2772 = getelementptr inbounds %struct.rtx_def, ptr %2771, i64 0, i32 1, i32 0, i32 0, i64 1
  %2773 = load ptr, ptr %2772, align 8, !tbaa !161
  %2774 = icmp eq ptr %2773, null
  br i1 %2774, label %2780, label %2775

2775:                                             ; preds = %2769
  %2776 = call fastcc ptr @expand_debug_expr(ptr noundef nonnull %2773)
  %2777 = call ptr @get_last_insn() #22
  %2778 = icmp eq ptr %2760, %2777
  br i1 %2778, label %2780, label %2779

2779:                                             ; preds = %2775
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3079, ptr noundef nonnull @.str.1) #22
  br label %2780

2780:                                             ; preds = %2779, %2775, %2769
  %2781 = phi ptr [ %2776, %2775 ], [ %2776, %2779 ], [ null, %2769 ]
  %2782 = icmp eq ptr %2781, null
  br i1 %2782, label %2783, label %2786

2783:                                             ; preds = %2780
  %2784 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %2785 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %2784) #22
  br label %2800

2786:                                             ; preds = %2780
  %2787 = load ptr, ptr %2770, align 8, !tbaa !161
  %2788 = load i32, ptr %2787, align 8
  %2789 = lshr i32 %2788, 16
  %2790 = and i32 %2789, 255
  %2791 = load i32, ptr %2781, align 8
  %2792 = lshr i32 %2791, 16
  %2793 = and i32 %2792, 255
  %2794 = icmp eq i32 %2790, %2793
  br i1 %2794, label %2800, label %2795

2795:                                             ; preds = %2786
  %2796 = icmp eq i32 %2793, 0
  br i1 %2796, label %2797, label %2799

2797:                                             ; preds = %2795
  %2798 = trunc i32 %2791 to i16
  switch i16 %2798, label %2799 [
    i16 30, label %2800
    i16 31, label %2800
    i16 32, label %2800
    i16 44, label %2800
  ]

2799:                                             ; preds = %2797, %2795
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3093, ptr noundef nonnull @.str.1) #22
  br label %2800

2800:                                             ; preds = %2797, %2797, %2797, %2799, %2797, %2786, %2783
  %2801 = phi ptr [ %2781, %2786 ], [ %2781, %2799 ], [ %2785, %2783 ], [ %2781, %2797 ], [ %2781, %2797 ], [ %2781, %2797 ], [ %2781, %2797 ]
  %2802 = load ptr, ptr %2770, align 8, !tbaa !161
  %2803 = getelementptr inbounds %struct.rtx_def, ptr %2802, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %2801, ptr %2803, align 8, !tbaa !161
  br label %2804

2804:                                             ; preds = %2800, %2764
  %2805 = getelementptr inbounds %struct.rtx_def, ptr %2765, i64 0, i32 1, i32 0, i32 0, i64 2
  %2806 = load ptr, ptr %2805, align 8, !tbaa !161
  %2807 = icmp eq ptr %2806, null
  br i1 %2807, label %2808, label %2764, !llvm.loop !491

2808:                                             ; preds = %2804, %2759
  store i32 %2761, ptr @flag_strict_aliasing, align 4, !tbaa !165
  br label %2809

2809:                                             ; preds = %2808, %2756
  %2810 = call i32 @execute_free_datastructures() #22
  call void @finish_out_of_ssa(ptr noundef nonnull @SA) #22
  %2811 = load ptr, ptr @cfun, align 8, !tbaa !150
  %2812 = getelementptr inbounds %struct.function, ptr %2811, i64 0, i32 3
  %2813 = load ptr, ptr %2812, align 8, !tbaa !306
  %2814 = getelementptr inbounds %struct.gimple_df, ptr %2813, i64 0, i32 10
  %2815 = load i8, ptr %2814, align 8
  %2816 = and i8 %2815, -2
  store i8 %2816, ptr %2814, align 8
  %2817 = load ptr, ptr @lab_rtx_for_bb, align 8, !tbaa !150
  call void @pointer_map_destroy(ptr noundef %2817) #22
  call void @free_histograms() #22
  %2818 = call ptr @get_last_insn() #22
  %2819 = load ptr, ptr @cfun, align 8, !tbaa !150
  %2820 = getelementptr inbounds %struct.function, ptr %2819, i64 0, i32 1
  %2821 = load ptr, ptr %2820, align 8, !tbaa !257
  %2822 = getelementptr inbounds %struct.control_flow_graph, ptr %2821, i64 0, i32 1
  %2823 = load ptr, ptr %2822, align 8, !tbaa !265
  %2824 = getelementptr inbounds %struct.basic_block_def, ptr %2823, i64 0, i32 5
  %2825 = load ptr, ptr %2824, align 8, !tbaa !492
  %2826 = getelementptr inbounds %struct.basic_block_def, ptr %2825, i64 0, i32 7
  %2827 = load ptr, ptr %2826, align 8, !tbaa !161
  %2828 = getelementptr inbounds %struct.rtl_bb_info, ptr %2827, i64 0, i32 1
  %2829 = load ptr, ptr %2828, align 8, !tbaa !443
  call void @rtl_profile_for_bb(ptr noundef %2823) #22
  %2830 = load ptr, ptr @cfun, align 8, !tbaa !150
  %2831 = getelementptr inbounds %struct.function, ptr %2830, i64 0, i32 16
  %2832 = load i32, ptr %2831, align 4, !tbaa !493
  %2833 = icmp eq i32 %2832, 0
  br i1 %2833, label %2835, label %2834, !prof !261

2834:                                             ; preds = %2809
  store i32 %2832, ptr @input_location, align 4, !tbaa !165
  br label %2835

2835:                                             ; preds = %2834, %2809
  %2836 = load ptr, ptr @current_function_decl, align 8, !tbaa !150
  %2837 = getelementptr inbounds %struct.tree_decl_common, ptr %2836, i64 0, i32 5
  %2838 = load ptr, ptr %2837, align 8, !tbaa !161
  call void @set_curr_insn_block(ptr noundef %2838) #22
  call void @expand_function_end() #22
  %2839 = call ptr @get_last_insn() #22
  %2840 = icmp eq ptr %2818, %2839
  br i1 %2840, label %2971, label %2841, !prof !261

2841:                                             ; preds = %2835
  %2842 = load ptr, ptr @cfun, align 8, !tbaa !150
  %2843 = getelementptr inbounds %struct.function, ptr %2842, i64 0, i32 1
  %2844 = load ptr, ptr %2843, align 8, !tbaa !257
  %2845 = getelementptr inbounds %struct.control_flow_graph, ptr %2844, i64 0, i32 1
  %2846 = load ptr, ptr %2845, align 8, !tbaa !265
  %2847 = getelementptr inbounds %struct.basic_block_def, ptr %2846, i64 0, i32 5
  %2848 = load ptr, ptr %2847, align 8, !tbaa !492
  %2849 = getelementptr inbounds %struct.basic_block_def, ptr %2848, i64 0, i32 7
  %2850 = load ptr, ptr %2849, align 8, !tbaa !161
  %2851 = getelementptr inbounds %struct.rtl_bb_info, ptr %2850, i64 0, i32 1
  store ptr %2829, ptr %2851, align 8, !tbaa !443
  br label %2852

2852:                                             ; preds = %2857, %2841
  %2853 = phi ptr [ %2818, %2841 ], [ %2855, %2857 ]
  %2854 = getelementptr inbounds %struct.rtx_def, ptr %2853, i64 0, i32 1, i32 0, i32 0, i64 2
  %2855 = load ptr, ptr %2854, align 8, !tbaa !161
  %2856 = icmp eq ptr %2855, null
  br i1 %2856, label %2861, label %2857, !prof !261

2857:                                             ; preds = %2852
  %2858 = load i32, ptr %2855, align 8
  %2859 = and i32 %2858, 65535
  %2860 = icmp eq i32 %2859, 13
  br i1 %2860, label %2852, label %2861, !prof !261, !llvm.loop !494

2861:                                             ; preds = %2857, %2852
  %2862 = call ptr @create_basic_block(ptr noundef %2855, ptr noundef %2839, ptr noundef %2848) #22
  %2863 = load ptr, ptr @cfun, align 8, !tbaa !150
  %2864 = getelementptr inbounds %struct.function, ptr %2863, i64 0, i32 1
  %2865 = load ptr, ptr %2864, align 8, !tbaa !257
  %2866 = getelementptr inbounds %struct.control_flow_graph, ptr %2865, i64 0, i32 1
  %2867 = load ptr, ptr %2866, align 8, !tbaa !265
  %2868 = getelementptr inbounds %struct.basic_block_def, ptr %2867, i64 0, i32 11
  %2869 = load i32, ptr %2868, align 8, !tbaa !368
  %2870 = getelementptr inbounds %struct.basic_block_def, ptr %2862, i64 0, i32 11
  store i32 %2869, ptr %2870, align 8, !tbaa !368
  %2871 = getelementptr inbounds %struct.basic_block_def, ptr %2867, i64 0, i32 8
  %2872 = load i64, ptr %2871, align 8, !tbaa !369
  %2873 = getelementptr inbounds %struct.basic_block_def, ptr %2862, i64 0, i32 8
  store i64 %2872, ptr %2873, align 8, !tbaa !369
  br label %2874

2874:                                             ; preds = %2898, %2861
  %2875 = phi i32 [ %2899, %2898 ], [ 0, %2861 ]
  %2876 = zext i32 %2875 to i64
  br label %2877

2877:                                             ; preds = %2874, %2897
  %2878 = load ptr, ptr @cfun, align 8, !tbaa !150
  %2879 = getelementptr inbounds %struct.function, ptr %2878, i64 0, i32 1
  %2880 = load ptr, ptr %2879, align 8, !tbaa !257
  %2881 = getelementptr inbounds %struct.control_flow_graph, ptr %2880, i64 0, i32 1
  %2882 = load ptr, ptr %2881, align 8, !tbaa !265
  %2883 = load ptr, ptr %2882, align 8, !tbaa !495
  %2884 = icmp eq ptr %2883, null
  br i1 %2884, label %2887, label %2885, !prof !496

2885:                                             ; preds = %2877
  %2886 = load i32, ptr %2883, align 8, !tbaa !364
  br label %2887

2887:                                             ; preds = %2885, %2877
  %2888 = phi i32 [ %2886, %2885 ], [ 0, %2877 ]
  %2889 = icmp ult i32 %2875, %2888
  br i1 %2889, label %2890, label %2900, !prof !497

2890:                                             ; preds = %2887
  %2891 = getelementptr inbounds %struct.VEC_edge_base, ptr %2883, i64 0, i32 2, i64 %2876
  %2892 = load ptr, ptr %2891, align 8, !tbaa !150
  %2893 = getelementptr inbounds %struct.edge_def, ptr %2892, i64 0, i32 7
  %2894 = load i32, ptr %2893, align 8, !tbaa !374
  %2895 = and i32 %2894, 2
  %2896 = icmp eq i32 %2895, 0
  br i1 %2896, label %2897, label %2898, !prof !498

2897:                                             ; preds = %2890
  call void @redirect_edge_succ(ptr noundef %2892, ptr noundef %2862) #22
  br label %2877, !llvm.loop !499

2898:                                             ; preds = %2890
  %2899 = add nuw i32 %2875, 1
  br label %2874, !llvm.loop !499

2900:                                             ; preds = %2887
  %2901 = call ptr @make_edge(ptr noundef %2862, ptr noundef nonnull %2882, i32 noundef 1) #22
  %2902 = getelementptr inbounds %struct.edge_def, ptr %2901, i64 0, i32 8
  store i32 10000, ptr %2902, align 4, !tbaa !370
  %2903 = load ptr, ptr @cfun, align 8, !tbaa !150
  %2904 = getelementptr inbounds %struct.function, ptr %2903, i64 0, i32 1
  %2905 = load ptr, ptr %2904, align 8, !tbaa !257
  %2906 = getelementptr inbounds %struct.control_flow_graph, ptr %2905, i64 0, i32 1
  %2907 = load ptr, ptr %2906, align 8, !tbaa !265
  %2908 = getelementptr inbounds %struct.basic_block_def, ptr %2907, i64 0, i32 8
  %2909 = load i64, ptr %2908, align 8, !tbaa !369
  %2910 = getelementptr inbounds %struct.edge_def, ptr %2901, i64 0, i32 9
  store i64 %2909, ptr %2910, align 8, !tbaa !371
  %2911 = icmp eq ptr %2907, null
  br label %2912

2912:                                             ; preds = %2956, %2900
  %2913 = phi i32 [ 0, %2900 ], [ %2957, %2956 ]
  br i1 %2911, label %2914, label %2915, !prof !496

2914:                                             ; preds = %2912
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 687, ptr noundef nonnull @.str.1) #22
  br label %2915

2915:                                             ; preds = %2914, %2912
  %2916 = load ptr, ptr %2907, align 8, !tbaa !150
  %2917 = icmp eq ptr %2916, null
  br i1 %2917, label %2920, label %2918, !prof !496

2918:                                             ; preds = %2915
  %2919 = load i32, ptr %2916, align 8, !tbaa !364
  br label %2920

2920:                                             ; preds = %2918, %2915
  %2921 = phi i32 [ %2919, %2918 ], [ 0, %2915 ]
  %2922 = icmp eq i32 %2921, %2913
  br i1 %2922, label %2927, label %2923, !prof !500

2923:                                             ; preds = %2920
  %2924 = zext i32 %2913 to i64
  %2925 = getelementptr inbounds %struct.VEC_edge_base, ptr %2916, i64 0, i32 2, i64 %2924
  %2926 = load ptr, ptr %2925, align 8, !tbaa !150
  br label %2927

2927:                                             ; preds = %2923, %2920
  %2928 = phi ptr [ %2926, %2923 ], [ null, %2920 ]
  br i1 %2922, label %2958, label %2929, !prof !500

2929:                                             ; preds = %2927
  %2930 = icmp eq ptr %2928, %2901
  br i1 %2930, label %2949, label %2931, !prof !498

2931:                                             ; preds = %2929
  %2932 = getelementptr inbounds %struct.edge_def, ptr %2928, i64 0, i32 9
  %2933 = load i64, ptr %2932, align 8, !tbaa !371
  %2934 = load i64, ptr %2910, align 8, !tbaa !371
  %2935 = sub nsw i64 %2934, %2933
  store i64 %2935, ptr %2910, align 8, !tbaa !371
  %2936 = load i64, ptr %2932, align 8, !tbaa !371
  %2937 = load i64, ptr %2873, align 8, !tbaa !369
  %2938 = sub nsw i64 %2937, %2936
  store i64 %2938, ptr %2873, align 8, !tbaa !369
  %2939 = load ptr, ptr %2928, align 8, !tbaa !445
  %2940 = getelementptr inbounds %struct.basic_block_def, ptr %2939, i64 0, i32 11
  %2941 = load i32, ptr %2940, align 8, !tbaa !368
  %2942 = getelementptr inbounds %struct.edge_def, ptr %2928, i64 0, i32 8
  %2943 = load i32, ptr %2942, align 4, !tbaa !370
  %2944 = mul nsw i32 %2943, %2941
  %2945 = add nsw i32 %2944, 5000
  %2946 = sdiv i32 %2945, -10000
  %2947 = load i32, ptr %2870, align 8, !tbaa !368
  %2948 = add i32 %2946, %2947
  store i32 %2948, ptr %2870, align 8, !tbaa !368
  br label %2949

2949:                                             ; preds = %2931, %2929
  br i1 %2917, label %2952, label %2950, !prof !501

2950:                                             ; preds = %2949
  %2951 = load i32, ptr %2916, align 8, !tbaa !364
  br label %2952

2952:                                             ; preds = %2950, %2949
  %2953 = phi i32 [ %2951, %2950 ], [ 0, %2949 ]
  %2954 = icmp ult i32 %2913, %2953
  br i1 %2954, label %2956, label %2955, !prof !502

2955:                                             ; preds = %2952
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %2956

2956:                                             ; preds = %2955, %2952
  %2957 = add i32 %2913, 1
  br label %2912, !llvm.loop !503

2958:                                             ; preds = %2927
  %2959 = load i64, ptr %2910, align 8, !tbaa !371
  %2960 = icmp slt i64 %2959, 0
  br i1 %2960, label %2961, label %2962, !prof !261

2961:                                             ; preds = %2958
  store i64 0, ptr %2910, align 8, !tbaa !371
  br label %2962

2962:                                             ; preds = %2961, %2958
  %2963 = load i64, ptr %2873, align 8, !tbaa !369
  %2964 = icmp slt i64 %2963, 0
  br i1 %2964, label %2965, label %2966, !prof !261

2965:                                             ; preds = %2962
  store i64 0, ptr %2873, align 8, !tbaa !369
  br label %2966

2966:                                             ; preds = %2965, %2962
  %2967 = load i32, ptr %2870, align 8, !tbaa !368
  %2968 = icmp slt i32 %2967, 0
  br i1 %2968, label %2969, label %2970, !prof !261

2969:                                             ; preds = %2966
  store i32 0, ptr %2870, align 8, !tbaa !368
  br label %2970

2970:                                             ; preds = %2969, %2966
  call void @update_bb_for_insn(ptr noundef %2862) #22
  br label %2971

2971:                                             ; preds = %2835, %2970
  %2972 = load ptr, ptr @current_function_decl, align 8, !tbaa !150
  %2973 = getelementptr inbounds %struct.tree_decl_common, ptr %2972, i64 0, i32 5
  %2974 = load ptr, ptr %2973, align 8, !tbaa !161
  call void @set_curr_insn_block(ptr noundef %2974) #22
  call void @insn_locators_finalize() #22
  %2975 = load ptr, ptr @cfun, align 8, !tbaa !150
  call void @set_eh_throw_stmt_table(ptr noundef %2975, ptr noundef null) #22
  %2976 = call ptr @get_insns() #22
  call void @rebuild_jump_labels(ptr noundef %2976) #22
  %2977 = load ptr, ptr @cfun, align 8, !tbaa !150
  %2978 = getelementptr inbounds %struct.function, ptr %2977, i64 0, i32 1
  %2979 = load ptr, ptr %2978, align 8, !tbaa !257
  %2980 = load ptr, ptr %2979, align 8, !tbaa !150
  %2981 = getelementptr inbounds %struct.control_flow_graph, ptr %2979, i64 0, i32 1
  %2982 = load ptr, ptr %2981, align 8, !tbaa !265
  %2983 = icmp eq ptr %2980, %2982
  br i1 %2983, label %3028, label %2984, !prof !266

2984:                                             ; preds = %2971, %3019
  %2985 = phi ptr [ %3021, %3019 ], [ %2980, %2971 ]
  %2986 = getelementptr inbounds %struct.basic_block_def, ptr %2985, i64 0, i32 1
  br label %2987

2987:                                             ; preds = %3017, %2984
  %2988 = phi i32 [ %3018, %3017 ], [ 0, %2984 ]
  br label %2989

2989:                                             ; preds = %2987, %3008
  %2990 = load ptr, ptr %2986, align 8, !tbaa !150
  %2991 = icmp eq ptr %2990, null
  br i1 %2991, label %2994, label %2992, !prof !504

2992:                                             ; preds = %2989
  %2993 = load i32, ptr %2990, align 8, !tbaa !364
  br label %2994

2994:                                             ; preds = %2992, %2989
  %2995 = phi i32 [ %2993, %2992 ], [ 0, %2989 ]
  %2996 = icmp eq i32 %2995, %2988
  br i1 %2996, label %3001, label %2997, !prof !505

2997:                                             ; preds = %2994
  %2998 = zext i32 %2988 to i64
  %2999 = getelementptr inbounds %struct.VEC_edge_base, ptr %2990, i64 0, i32 2, i64 %2998
  %3000 = load ptr, ptr %2999, align 8, !tbaa !150
  br label %3001

3001:                                             ; preds = %2994, %2997
  %3002 = phi ptr [ %3000, %2997 ], [ null, %2994 ]
  %3003 = icmp eq ptr %3002, null
  br i1 %3003, label %3019, label %3004, !prof !505

3004:                                             ; preds = %3001
  %3005 = getelementptr inbounds %struct.edge_def, ptr %3002, i64 0, i32 2
  %3006 = load ptr, ptr %3005, align 8, !tbaa !161
  %3007 = icmp eq ptr %3006, null
  br i1 %3007, label %3009, label %3008, !prof !506

3008:                                             ; preds = %3004
  call void @commit_one_edge_insertion(ptr noundef nonnull %3002) #22
  br label %2989, !llvm.loop !507

3009:                                             ; preds = %3004
  %3010 = icmp eq ptr %2990, null
  br i1 %3010, label %3013, label %3011, !prof !508

3011:                                             ; preds = %3009
  %3012 = load i32, ptr %2990, align 8, !tbaa !364
  br label %3013

3013:                                             ; preds = %3011, %3009
  %3014 = phi i32 [ %3012, %3011 ], [ 0, %3009 ]
  %3015 = icmp ult i32 %2988, %3014
  br i1 %3015, label %3017, label %3016, !prof !509

3016:                                             ; preds = %3013
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %3017

3017:                                             ; preds = %3013, %3016
  %3018 = add i32 %2988, 1
  br label %2987, !llvm.loop !507

3019:                                             ; preds = %3001
  %3020 = getelementptr inbounds %struct.basic_block_def, ptr %2985, i64 0, i32 6
  %3021 = load ptr, ptr %3020, align 8, !tbaa !150
  %3022 = load ptr, ptr @cfun, align 8, !tbaa !150
  %3023 = getelementptr inbounds %struct.function, ptr %3022, i64 0, i32 1
  %3024 = load ptr, ptr %3023, align 8, !tbaa !257
  %3025 = getelementptr inbounds %struct.control_flow_graph, ptr %3024, i64 0, i32 1
  %3026 = load ptr, ptr %3025, align 8, !tbaa !265
  %3027 = icmp eq ptr %3021, %3026
  br i1 %3027, label %3028, label %2984, !prof !510, !llvm.loop !511

3028:                                             ; preds = %3019, %2971
  %3029 = phi ptr [ %2979, %2971 ], [ %3024, %3019 ]
  store i32 0, ptr @currently_expanding_to_rtl, align 4, !tbaa !165
  %3030 = load ptr, ptr %3029, align 8, !tbaa !259
  %3031 = getelementptr inbounds %struct.basic_block_def, ptr %3030, i64 0, i32 6
  %3032 = load ptr, ptr %3031, align 8, !tbaa !263
  %3033 = load ptr, ptr @cfun, align 8, !tbaa !150
  %3034 = getelementptr inbounds %struct.function, ptr %3033, i64 0, i32 1
  %3035 = load ptr, ptr %3034, align 8, !tbaa !257
  %3036 = getelementptr inbounds %struct.control_flow_graph, ptr %3035, i64 0, i32 1
  %3037 = load ptr, ptr %3036, align 8, !tbaa !265
  %3038 = icmp eq ptr %3032, %3037
  br i1 %3038, label %3085, label %3048, !prof !266

3039:                                             ; preds = %3065
  %3040 = getelementptr inbounds %struct.basic_block_def, ptr %3049, i64 0, i32 6
  %3041 = load ptr, ptr %3040, align 8, !tbaa !263
  %3042 = load ptr, ptr @cfun, align 8, !tbaa !150
  %3043 = getelementptr inbounds %struct.function, ptr %3042, i64 0, i32 1
  %3044 = load ptr, ptr %3043, align 8, !tbaa !257
  %3045 = getelementptr inbounds %struct.control_flow_graph, ptr %3044, i64 0, i32 1
  %3046 = load ptr, ptr %3045, align 8, !tbaa !265
  %3047 = icmp eq ptr %3041, %3046
  br i1 %3047, label %3085, label %3048, !prof !512, !llvm.loop !513

3048:                                             ; preds = %3028, %3039
  %3049 = phi ptr [ %3041, %3039 ], [ %3032, %3028 ]
  %3050 = getelementptr inbounds %struct.basic_block_def, ptr %3049, i64 0, i32 1
  br label %3051

3051:                                             ; preds = %3083, %3048
  %3052 = phi i32 [ %3084, %3083 ], [ 0, %3048 ]
  br label %3053

3053:                                             ; preds = %3051, %3074
  %3054 = load ptr, ptr %3050, align 8, !tbaa !150
  %3055 = icmp eq ptr %3054, null
  br i1 %3055, label %3058, label %3056, !prof !514

3056:                                             ; preds = %3053
  %3057 = load i32, ptr %3054, align 8, !tbaa !364
  br label %3058

3058:                                             ; preds = %3056, %3053
  %3059 = phi i32 [ %3057, %3056 ], [ 0, %3053 ]
  %3060 = icmp eq i32 %3059, %3052
  br i1 %3060, label %3065, label %3061, !prof !515

3061:                                             ; preds = %3058
  %3062 = zext i32 %3052 to i64
  %3063 = getelementptr inbounds %struct.VEC_edge_base, ptr %3054, i64 0, i32 2, i64 %3062
  %3064 = load ptr, ptr %3063, align 8, !tbaa !150
  br label %3065

3065:                                             ; preds = %3058, %3061
  %3066 = phi ptr [ %3064, %3061 ], [ null, %3058 ]
  %3067 = icmp eq ptr %3066, null
  br i1 %3067, label %3039, label %3068, !prof !515

3068:                                             ; preds = %3065
  %3069 = getelementptr inbounds %struct.edge_def, ptr %3066, i64 0, i32 7
  %3070 = load i32, ptr %3069, align 8, !tbaa !374
  %3071 = and i32 %3070, -4097
  store i32 %3071, ptr %3069, align 8, !tbaa !374
  %3072 = and i32 %3070, 258
  %3073 = icmp eq i32 %3072, 2
  br i1 %3073, label %3074, label %3075, !prof !516

3074:                                             ; preds = %3068
  call void @remove_edge(ptr noundef nonnull %3066) #22
  br label %3053, !llvm.loop !517

3075:                                             ; preds = %3068
  %3076 = icmp eq ptr %3054, null
  br i1 %3076, label %3079, label %3077, !prof !516

3077:                                             ; preds = %3075
  %3078 = load i32, ptr %3054, align 8, !tbaa !364
  br label %3079

3079:                                             ; preds = %3077, %3075
  %3080 = phi i32 [ %3078, %3077 ], [ 0, %3075 ]
  %3081 = icmp ult i32 %3052, %3080
  br i1 %3081, label %3083, label %3082, !prof !518

3082:                                             ; preds = %3079
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %3083

3083:                                             ; preds = %3079, %3082
  %3084 = add i32 %3052, 1
  br label %3051, !llvm.loop !517

3085:                                             ; preds = %3039, %3028
  %3086 = phi ptr [ %3035, %3028 ], [ %3044, %3039 ]
  %3087 = getelementptr inbounds %struct.control_flow_graph, ptr %3086, i64 0, i32 5
  %3088 = load i32, ptr %3087, align 8, !tbaa !519
  %3089 = call ptr @sbitmap_alloc(i32 noundef %3088) #22
  call void @sbitmap_ones(ptr noundef %3089) #22
  call void @find_many_sub_basic_blocks(ptr noundef %3089) #22
  %3090 = load ptr, ptr %3089, align 8, !tbaa !520
  call void @free(ptr noundef %3090)
  call void @free(ptr noundef %3089)
  %3091 = call zeroext i8 @purge_all_dead_edges() #22
  call void @compact_blocks() #22
  %3092 = load ptr, ptr @cfun, align 8, !tbaa !150
  %3093 = getelementptr inbounds %struct.function, ptr %3092, i64 0, i32 20
  %3094 = load i32, ptr %3093, align 8
  %3095 = and i32 %3094, 524288
  %3096 = icmp eq i32 %3095, 0
  br i1 %3096, label %3097, label %3103, !prof !321

3097:                                             ; preds = %3085
  %3098 = and i32 %3094, 1048576
  %3099 = icmp ne i32 %3098, 0
  %3100 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 31), align 1
  %3101 = icmp ne i8 %3100, 0
  %3102 = select i1 %3099, i1 true, i1 %3101, !prof !261
  br i1 %3102, label %3103, label %3104, !prof !261

3103:                                             ; preds = %3097, %3085
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1, !tbaa !522
  br label %3104

3104:                                             ; preds = %3103, %3097
  %3105 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 18), align 8, !tbaa !523
  %3106 = icmp eq ptr %3105, null
  br i1 %3106, label %3108, label %3107, !prof !261

3107:                                             ; preds = %3104
  call void %3105() #22, !prof !524
  br label %3108

3108:                                             ; preds = %3107, %3104
  %3109 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 24), align 4, !tbaa !525
  %3110 = load i32, ptr @ix86_incoming_stack_boundary, align 4, !tbaa !165
  %3111 = icmp ugt i32 %3109, %3110
  br i1 %3111, label %3112, label %3113, !prof !261

3112:                                             ; preds = %3108
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3665, ptr noundef nonnull @.str.1) #22
  br label %3113

3113:                                             ; preds = %3112, %3108
  %3114 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !165
  %3115 = icmp eq i32 %3114, 0
  br i1 %3115, label %3120, label %3116, !prof !321

3116:                                             ; preds = %3113
  %3117 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !165
  %3118 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !301
  %3119 = icmp ugt i32 %3117, %3118
  br i1 %3119, label %3122, label %3120

3120:                                             ; preds = %3116, %3113
  %3121 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !301
  br label %3122

3122:                                             ; preds = %3120, %3116
  %3123 = phi i32 [ %3121, %3120 ], [ %3117, %3116 ]
  %3124 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !200
  %3125 = icmp ugt i32 %3123, %3124
  br i1 %3125, label %3126, label %3127, !prof !321

3126:                                             ; preds = %3122
  store i32 %3123, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !200
  br label %3127

3127:                                             ; preds = %3126, %3122
  %3128 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !299
  %3129 = icmp ugt i32 %3123, %3128
  br i1 %3129, label %3130, label %3131, !prof !321

3130:                                             ; preds = %3127
  store i32 %3123, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !299
  br label %3131

3131:                                             ; preds = %3130, %3127
  %3132 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !299
  %3133 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !200
  %3134 = icmp ugt i32 %3132, %3133
  br i1 %3134, label %3135, label %3136, !prof !261

3135:                                             ; preds = %3131
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3682, ptr noundef nonnull @.str.1) #22
  br label %3136

3136:                                             ; preds = %3135, %3131
  %3137 = load i32, ptr @ix86_incoming_stack_boundary, align 4, !tbaa !165
  %3138 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !200
  %3139 = icmp ult i32 %3137, %3138
  %3140 = zext i1 %3139 to i8
  store i8 %3140, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !526
  store i8 %3140, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 44), align 8, !tbaa !527
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !210
  %3141 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 19), align 8, !tbaa !528
  %3142 = icmp eq ptr %3141, null
  br i1 %3142, label %3143, label %3144, !prof !261

3143:                                             ; preds = %3136
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3692, ptr noundef nonnull @.str.1) #22
  br label %3144

3144:                                             ; preds = %3143, %3136
  %3145 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 19), align 8, !tbaa !528
  %3146 = call ptr %3145() #22, !prof !529
  %3147 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !526
  %3148 = icmp ne i8 %3147, 0
  %3149 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1
  %3150 = icmp ne i8 %3149, 0
  %3151 = select i1 %3148, i1 %3150, i1 false, !prof !261
  %3152 = icmp ne ptr %3146, null
  %3153 = xor i1 %3152, %3151
  br i1 %3153, label %3154, label %3155, !prof !261

3154:                                             ; preds = %3144
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3696, ptr noundef nonnull @.str.1) #22
  br label %3155

3155:                                             ; preds = %3154, %3144
  br i1 %3152, label %3156, label %3157, !prof !261

3156:                                             ; preds = %3155
  store ptr %3146, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !530
  call void @fixup_tail_calls() #22
  br label %3157

3157:                                             ; preds = %3155, %3156
  %3158 = load ptr, ptr @current_function_decl, align 8, !tbaa !150
  %3159 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %3158, i64 0, i32 4
  %3160 = load i32, ptr %3159, align 8
  %3161 = and i32 %3160, -2
  store i32 %3161, ptr %3159, align 8
  store i32 0, ptr @generating_concat_p, align 4, !tbaa !165
  %3162 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %3163 = icmp eq ptr %3162, null
  br i1 %3163, label %3166, label %3164, !prof !321

3164:                                             ; preds = %3157
  %3165 = call i64 @fwrite(ptr nonnull @.str.8, i64 49, i64 1, ptr nonnull %3162)
  br label %3166

3166:                                             ; preds = %3164, %3157
  %3167 = load ptr, ptr @current_function_decl, align 8, !tbaa !150
  %3168 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3167, i64 0, i32 4
  %3169 = load ptr, ptr %3168, align 8, !tbaa !161
  %3170 = icmp eq ptr %3169, null
  br i1 %3170, label %3183, label %3171, !prof !531

3171:                                             ; preds = %3166, %3180
  %3172 = phi ptr [ %3181, %3180 ], [ %3169, %3166 ]
  %3173 = load i64, ptr %3172, align 8
  %3174 = and i64 %3173, 65535
  %3175 = icmp eq i64 %3174, 29
  br i1 %3175, label %3176, label %3180

3176:                                             ; preds = %3171
  %3177 = call ptr @decl_assembler_name(ptr noundef nonnull %3172) #22
  %3178 = load i64, ptr %3177, align 8
  %3179 = or i64 %3178, 67108864
  store i64 %3179, ptr %3177, align 8
  br label %3180

3180:                                             ; preds = %3171, %3176
  %3181 = call ptr @get_containing_scope(ptr noundef nonnull %3172) #22
  %3182 = icmp eq ptr %3181, null
  br i1 %3182, label %3183, label %3171, !prof !531, !llvm.loop !532

3183:                                             ; preds = %3180, %3166
  %3184 = load ptr, ptr @current_function_decl, align 8, !tbaa !150
  %3185 = call zeroext i8 @cgraph_function_possibly_inlined_p(ptr noundef %3184) #22
  %3186 = icmp eq i8 %3185, 0
  br i1 %3186, label %3192, label %3187, !prof !533

3187:                                             ; preds = %3183
  %3188 = load ptr, ptr @debug_hooks, align 8, !tbaa !150
  %3189 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %3188, i64 0, i32 21
  %3190 = load ptr, ptr %3189, align 8, !tbaa !534
  %3191 = load ptr, ptr @current_function_decl, align 8, !tbaa !150
  call void %3190(ptr noundef %3191) #22, !prof !536
  br label %3192

3192:                                             ; preds = %3187, %3183
  %3193 = load ptr, ptr @current_function_decl, align 8, !tbaa !150
  %3194 = load i64, ptr %3193, align 8
  %3195 = or i64 %3194, 4194304
  store i64 %3195, ptr %3193, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 11), i8 0, i64 16, i1 false)
  %3196 = load ptr, ptr @cfun, align 8, !tbaa !150
  %3197 = getelementptr inbounds %struct.function, ptr %3196, i64 0, i32 6
  %3198 = load ptr, ptr %3197, align 8, !tbaa !537
  %3199 = getelementptr inbounds %struct.tree_decl_common, ptr %3198, i64 0, i32 5
  %3200 = load ptr, ptr %3199, align 8, !tbaa !161
  call fastcc void @set_block_levels(ptr noundef %3200, i32 noundef 0)
  call void @default_rtl_profile() #22
  ret i32 0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clear_tree_used(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !538 !PGOFuncName !539 {
  %2 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5, !prof !540

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, -16777217
  store i64 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !161
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !prof !541, !llvm.loop !542

12:                                               ; preds = %5, %1
  %13 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !161
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16, !prof !543

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %19, %16 ], [ %14, %12 ]
  tail call fastcc void @clear_tree_used(ptr noundef nonnull %17)
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !161
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %16, !prof !544, !llvm.loop !545

21:                                               ; preds = %16, %12
  ret void
}

declare i32 @ix86_minimum_alignment(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @expand_one_error_var(ptr noundef %0) unnamed_addr #11 !prof !149 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8
  %4 = trunc i64 %3 to i8
  switch i8 %4, label %10 [
    i8 1, label %5
    i8 0, label %8
  ]

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %7 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %6) #22
  br label %14

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  br label %14

10:                                               ; preds = %1
  %11 = trunc i64 %3 to i32
  %12 = and i32 %11, 255
  %13 = tail call ptr @gen_reg_rtx(i32 noundef %12) #22
  br label %14

14:                                               ; preds = %8, %10, %5
  %15 = phi ptr [ %7, %5 ], [ %9, %8 ], [ %13, %10 ]
  tail call void @set_decl_rtl(ptr noundef %0, ptr noundef %15) #22
  ret void
}

declare zeroext i8 @use_register_for_decl(ptr noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_stack_var(ptr noundef %0) unnamed_addr #11 !prof !149 {
  %2 = load i64, ptr @stack_vars_num, align 8, !tbaa !174
  %3 = load i64, ptr @stack_vars_alloc, align 8, !tbaa !174
  %4 = icmp ult i64 %2, %3
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = icmp eq i64 %3, 0
  %7 = mul i64 %3, 3
  %8 = lshr i64 %7, 1
  %9 = select i1 %6, i64 32, i64 %8
  store i64 %9, ptr @stack_vars_alloc, align 8, !tbaa !174
  %10 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %11 = mul i64 %9, 56
  %12 = tail call ptr @xrealloc(ptr noundef %10, i64 noundef %11) #22
  store ptr %12, ptr @stack_vars, align 8, !tbaa !150
  br label %13

13:                                               ; preds = %5, %1
  %14 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %15 = load i64, ptr @stack_vars_num, align 8, !tbaa !174
  %16 = getelementptr inbounds %struct.stack_var, ptr %14, i64 %15
  store ptr %0, ptr %16, align 8, !tbaa !224
  %17 = getelementptr inbounds %struct.stack_var, ptr %14, i64 %15, i32 1
  store i64 0, ptr %17, align 8, !tbaa !349
  %18 = load i64, ptr %0, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !161
  br label %24

24:                                               ; preds = %13, %21
  %25 = phi ptr [ %23, %21 ], [ %0, %13 ]
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !161
  %28 = tail call i64 @tree_low_cst(ptr noundef %27, i32 noundef 1) #22
  %29 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %30 = load i64, ptr @stack_vars_num, align 8, !tbaa !174
  %31 = getelementptr inbounds %struct.stack_var, ptr %29, i64 %30, i32 2
  store i64 %28, ptr %31, align 8, !tbaa !223
  %32 = load i64, ptr %0, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 141
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !161
  br label %38

38:                                               ; preds = %24, %35
  %39 = phi ptr [ %37, %35 ], [ %0, %24 ]
  %40 = tail call fastcc i32 @get_decl_align_unit(ptr noundef %39), !range !546
  %41 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %42 = load i64, ptr @stack_vars_num, align 8, !tbaa !174
  %43 = getelementptr inbounds %struct.stack_var, ptr %41, i64 %42, i32 3
  store i32 %40, ptr %43, align 8, !tbaa !332
  %44 = getelementptr inbounds %struct.stack_var, ptr %41, i64 %42, i32 4
  store i64 %42, ptr %44, align 8, !tbaa !221
  %45 = getelementptr inbounds %struct.stack_var, ptr %41, i64 %42, i32 5
  store i64 -1, ptr %45, align 8, !tbaa !233
  %46 = getelementptr inbounds %struct.stack_var, ptr %41, i64 %42, i32 6
  store ptr null, ptr %46, align 8, !tbaa !252
  %47 = load ptr, ptr @global_rtl, align 16, !tbaa !150
  tail call fastcc void @set_rtl(ptr noundef nonnull %0, ptr noundef %47)
  %48 = load i64, ptr @stack_vars_num, align 8, !tbaa !174
  %49 = add i64 %48, 1
  store i64 %49, ptr @stack_vars_num, align 8, !tbaa !174
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @expand_one_stack_var(ptr noundef %0) unnamed_addr #11 !prof !149 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !161
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !161
  %12 = tail call i64 @tree_low_cst(ptr noundef %11, i32 noundef 1) #22
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !161
  br label %19

19:                                               ; preds = %8, %16
  %20 = phi ptr [ %18, %16 ], [ %0, %8 ]
  %21 = tail call fastcc i32 @get_decl_align_unit(ptr noundef %20), !range !546
  %22 = zext nneg i32 %21 to i64
  %23 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !356
  %24 = sub nsw i64 %23, %12
  %25 = sub nsw i64 0, %22
  %26 = and i64 %24, %25
  store i64 %26, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !356
  %27 = load ptr, ptr @cfun, align 8, !tbaa !150
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !537
  %30 = tail call zeroext i8 @frame_offset_overflow(i64 noundef %26, ptr noundef %29) #22
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  store i64 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !356
  br label %33

33:                                               ; preds = %19, %32
  %34 = phi i64 [ 0, %32 ], [ %26, %19 ]
  tail call fastcc void @expand_one_stack_var_at(ptr noundef nonnull %0, i64 noundef %34)
  ret void
}

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rest_of_decl_compilation(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @promote_decl_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_rtl(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !149 !PGOFuncName !547 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %56, !prof !212

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !225
  %8 = load ptr, ptr @SA, align 8, !tbaa !227
  %9 = load ptr, ptr %8, align 8, !tbaa !228
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !161
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.partition_def, ptr %9, i64 0, i32 1, i64 %12
  %14 = load i32, ptr %13, align 8, !tbaa !230
  %15 = getelementptr inbounds %struct._var_map, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !232
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18, !prof !238

18:                                               ; preds = %6
  %19 = sext i32 %14 to i64
  %20 = getelementptr inbounds i32, ptr %16, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !165
  br label %22

22:                                               ; preds = %6, %18
  %23 = phi i32 [ %21, %18 ], [ %14, %6 ]
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %7, i64 %24
  store ptr %1, ptr %25, align 8, !tbaa !150
  %26 = icmp eq ptr %1, null
  br i1 %26, label %57, label %27, !prof !238

27:                                               ; preds = %22
  %28 = load i32, ptr %1, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 43
  br i1 %30, label %34, label %31, !prof !238

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !161
  tail call void @set_reg_attrs_for_decl_rtl(ptr noundef %33, ptr noundef nonnull %1) #22
  br label %34

34:                                               ; preds = %31, %27
  %35 = load ptr, ptr @global_rtl, align 16
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %57, label %37, !prof !238

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !161
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 32
  br i1 %42, label %43, label %57, !prof !212

43:                                               ; preds = %37
  %44 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 11), align 1, !tbaa !161
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46, !prof !238

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %39, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !161
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51, !prof !240

50:                                               ; preds = %46, %43
  tail call void @set_decl_rtl(ptr noundef nonnull %39, ptr noundef nonnull %1) #22
  br label %57

51:                                               ; preds = %46
  %52 = icmp eq ptr %48, %35
  %53 = icmp eq ptr %48, %1
  %54 = or i1 %52, %53
  br i1 %54, label %57, label %55, !prof !241

55:                                               ; preds = %51
  tail call void @set_decl_rtl(ptr noundef nonnull %39, ptr noundef %35) #22
  br label %57

56:                                               ; preds = %2
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %1) #22
  br label %57

57:                                               ; preds = %22, %50, %55, %51, %34, %37, %56
  ret void
}

declare void @mark_user_reg(ptr noundef) local_unnamed_addr #3

declare void @mark_reg_pointer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @set_reg_attrs_for_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @get_decl_align_unit(ptr noundef %0) unnamed_addr #11 !prof !149 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !161
  %4 = tail call i32 @ix86_local_alignment(ptr noundef %0, i32 noundef 0, i32 noundef %3) #22
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 -2147483648)
  %6 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !200
  %7 = icmp ult i32 %6, %5
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !210
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 215, ptr noundef nonnull @.str.1) #22
  br label %12

12:                                               ; preds = %8, %11
  store i32 %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !200
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !299
  %15 = icmp ult i32 %14, %5
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !299
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 25), align 8, !tbaa !300
  %19 = icmp ult i32 %18, %5
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 25), align 8, !tbaa !300
  br label %21

21:                                               ; preds = %20, %17
  %22 = lshr i32 %5, 3
  ret i32 %22
}

declare i32 @ix86_local_alignment(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @expand_one_stack_var_at(ptr noundef %0, i64 noundef %1) unnamed_addr #11 !prof !149 {
  %3 = tail call i64 @trunc_int_for_mode(i64 noundef %1, i32 noundef 16) #22
  %4 = icmp eq i64 %3, %1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 716, ptr noundef nonnull @.str.1) #22
  br label %6

6:                                                ; preds = %2, %5
  %7 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !150
  %8 = tail call ptr @plus_constant(ptr noundef %7, i64 noundef %1) #22
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !161
  br label %15

15:                                               ; preds = %6, %12
  %16 = phi ptr [ %14, %12 ], [ %0, %6 ]
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 255
  %21 = tail call ptr @gen_rtx_MEM(i32 noundef %20, ptr noundef %8) #22
  %22 = load i64, ptr %0, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 141
  br i1 %24, label %35, label %25

25:                                               ; preds = %15
  %26 = sub nsw i64 0, %1
  %27 = and i64 %26, %1
  %28 = shl i64 %27, 3
  %29 = icmp eq i64 %28, 0
  %30 = tail call i64 @llvm.umin.i64(i64 %28, i64 2147483648)
  %31 = trunc i64 %30 to i32
  %32 = select i1 %29, i32 32, i32 %31
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  store i32 %32, ptr %33, align 8, !tbaa !161
  %34 = and i64 %22, -4398046511105
  store i64 %34, ptr %0, align 8
  br label %35

35:                                               ; preds = %25, %15
  %36 = load i64, ptr %0, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !161
  br label %42

42:                                               ; preds = %35, %39
  %43 = phi ptr [ %41, %39 ], [ %0, %35 ]
  tail call void @set_mem_attributes(ptr noundef %21, ptr noundef %43, i32 noundef 1) #22
  tail call fastcc void @set_rtl(ptr noundef nonnull %0, ptr noundef %21)
  ret void
}

declare zeroext i8 @frame_offset_overflow(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @set_mem_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

declare i32 @rewrite_out_of_ssa(ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @rtl_profile_for_bb(ptr noundef) local_unnamed_addr #3

declare void @insn_locators_alloc() local_unnamed_addr #3

declare void @set_curr_insn_source_location(i32 noundef) local_unnamed_addr #3

declare void @set_curr_insn_block(ptr noundef) local_unnamed_addr #3

declare i32 @curr_insn_locator() local_unnamed_addr #3

declare ptr @emit_note(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @expand_function_start(ptr noundef) local_unnamed_addr #3

declare void @set_mem_expr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @expand_main_function() local_unnamed_addr #3

declare void @stack_protect_prologue() local_unnamed_addr #3

declare void @expand_phi_nodes(ptr noundef) local_unnamed_addr #3

declare void @rtl_register_cfg_hooks() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

declare ptr @pointer_map_create() local_unnamed_addr #3

declare i32 @execute_free_datastructures() local_unnamed_addr #3

declare void @finish_out_of_ssa(ptr noundef) local_unnamed_addr #3

declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

declare void @free_histograms() local_unnamed_addr #3

declare void @insn_locators_finalize() local_unnamed_addr #3

declare void @set_eh_throw_stmt_table(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rebuild_jump_labels(ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @commit_one_edge_insertion(ptr noundef) local_unnamed_addr #3

declare void @remove_edge(ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #3

declare void @find_many_sub_basic_blocks(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @purge_all_dead_edges() local_unnamed_addr #3

declare void @compact_blocks() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare ptr @get_containing_scope(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @cgraph_function_possibly_inlined_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_block_levels(ptr noundef %0, i32 noundef %1) unnamed_addr #12 !prof !548 !PGOFuncName !549 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4, !prof !550

4:                                                ; preds = %2
  %5 = shl i32 %1, 1
  %6 = add nsw i32 %1, 1
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %0, %4 ], [ %16, %7 ]
  %9 = getelementptr inbounds %struct.tree_block, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 1
  %12 = or disjoint i32 %11, %5
  store i32 %12, ptr %9, align 8
  %13 = getelementptr inbounds %struct.tree_block, ptr %8, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !161
  tail call fastcc void @set_block_levels(ptr noundef %14, i32 noundef %6)
  %15 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !161
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %7, !prof !551, !llvm.loop !552

18:                                               ; preds = %7, %2
  ret void
}

declare void @default_rtl_profile() local_unnamed_addr #3

declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal noalias noundef ptr @discover_nonconstant_array_refs_r(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #9 !prof !553 !PGOFuncName !554 {
  %4 = load ptr, ptr %0, align 8, !tbaa !150
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !165
  %9 = and i32 %8, -2
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %68, label %11, !prof !555

11:                                               ; preds = %3
  %12 = trunc i64 %5 to i32
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -45
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %69, !prof !556

16:                                               ; preds = %11, %49
  %17 = phi ptr [ %51, %49 ], [ %4, %11 ]
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -45
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %35, !prof !557

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !161
  %26 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %25) #22
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %35, label %28, !prof !558

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !161
  %31 = icmp eq ptr %30, null
  br i1 %31, label %49, label %32, !prof !559

32:                                               ; preds = %28
  %33 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %30) #22
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %49, !prof !560

35:                                               ; preds = %32, %16, %23
  %36 = load i64, ptr %17, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 41
  br i1 %38, label %39, label %46, !prof !561

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !161
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43, !prof !562

43:                                               ; preds = %39
  %44 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %41) #22
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %35
  %47 = load i64, ptr %17, align 8
  %48 = trunc i64 %47 to i16
  switch i16 %48, label %68 [
    i16 42, label %49
    i16 43, label %49
    i16 44, label %49
    i16 118, label %49
    i16 116, label %49
    i16 113, label %49
    i16 45, label %52
    i16 46, label %52
  ], !prof !563

49:                                               ; preds = %46, %46, %46, %46, %46, %46, %43, %39, %32, %28
  %50 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !161
  br label %16, !llvm.loop !564

52:                                               ; preds = %46, %46
  %53 = tail call ptr @get_base_address(ptr noundef nonnull %17) #22
  %54 = icmp eq ptr %53, null
  br i1 %54, label %68, label %55, !prof !560

55:                                               ; preds = %52
  %56 = load i64, ptr %53, align 8
  %57 = and i64 %56, 65535
  %58 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !165
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %68, !prof !560

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.tree_decl_common, ptr %53, i64 0, i32 2
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 255
  %65 = icmp eq i64 %64, 1
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = or i64 %56, 262144
  store i64 %67, ptr %53, align 8
  br label %68

68:                                               ; preds = %46, %66, %61, %55, %52, %3
  store i32 0, ptr %1, align 4, !tbaa !165
  br label %69

69:                                               ; preds = %68, %11
  ret ptr null
}

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_used_vars_for_block(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #10 !prof !565 !PGOFuncName !566 {
  %3 = icmp eq i8 %1, 0
  %4 = load i64, ptr @stack_vars_num, align 8
  %5 = select i1 %3, i64 %4, i64 0, !prof !567
  %6 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !161
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9, !prof !567

9:                                                ; preds = %2, %16
  %10 = phi ptr [ %18, %16 ], [ %7, %2 ]
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 16777216
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14, !prof !261

14:                                               ; preds = %9
  %15 = tail call fastcc i64 @expand_one_var(ptr noundef nonnull %10, i8 noundef zeroext %1, i8 noundef zeroext 1)
  br label %16

16:                                               ; preds = %9, %14
  %17 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !161
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !prof !321, !llvm.loop !568

20:                                               ; preds = %16, %2
  %21 = load i64, ptr @stack_vars_num, align 8, !tbaa !174
  %22 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !161
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25, !prof !569

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %28, %25 ], [ %23, %20 ]
  tail call fastcc void @expand_used_vars_for_block(ptr noundef nonnull %26, i8 noundef zeroext 0)
  %27 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !161
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %25, !prof !570, !llvm.loop !571

30:                                               ; preds = %25, %20
  %31 = icmp ult i64 %5, %21
  br i1 %31, label %32, label %46, !prof !572

32:                                               ; preds = %30
  %33 = load i64, ptr @stack_vars_num, align 8, !tbaa !174
  %34 = icmp ult i64 %5, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %32, %43
  %36 = phi i64 [ %44, %43 ], [ %5, %32 ]
  %37 = tail call i64 @llvm.umin.i64(i64 %36, i64 %21)
  %38 = icmp ugt i64 %37, %5
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %39
  %40 = phi i64 [ %41, %39 ], [ %37, %35 ]
  %41 = add i64 %40, -1
  tail call fastcc void @add_stack_var_conflict(i64 noundef %36, i64 noundef %41)
  %42 = icmp ugt i64 %41, %5
  br i1 %42, label %39, label %43, !llvm.loop !573

43:                                               ; preds = %39, %35
  %44 = add nuw i64 %36, 1
  %45 = icmp eq i64 %44, %33
  br i1 %45, label %46, label %35, !llvm.loop !574

46:                                               ; preds = %43, %32, %30
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @expand_stack_vars(ptr noundef readonly %0) unnamed_addr #11 !prof !149 {
  %2 = load i64, ptr @stack_vars_num, align 8, !tbaa !174
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %107, label %4

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br label %6

6:                                                ; preds = %4, %104
  %7 = phi i64 [ 0, %4 ], [ %105, %104 ]
  %8 = load ptr, ptr @stack_vars_sorted, align 8, !tbaa !150
  %9 = getelementptr inbounds i64, ptr %8, i64 %7
  %10 = load i64, ptr %9, align 8, !tbaa !174
  %11 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %12 = getelementptr inbounds %struct.stack_var, ptr %11, i64 %10, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !221
  %14 = icmp eq i64 %13, %10
  br i1 %14, label %15, label %104

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.stack_var, ptr %11, i64 %10
  %17 = load ptr, ptr %16, align 8, !tbaa !224
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !225
  %23 = load ptr, ptr @SA, align 8, !tbaa !227
  %24 = load ptr, ptr %23, align 8, !tbaa !228
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %17, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !161
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.partition_def, ptr %24, i64 0, i32 1, i64 %27
  %29 = load i32, ptr %28, align 8, !tbaa !230
  %30 = getelementptr inbounds %struct._var_map, ptr %23, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !232
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %21
  %34 = sext i32 %29 to i64
  %35 = getelementptr inbounds i32, ptr %31, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !165
  br label %37

37:                                               ; preds = %21, %33
  %38 = phi i32 [ %36, %33 ], [ %29, %21 ]
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %22, i64 %39
  br label %50

41:                                               ; preds = %15
  %42 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %17, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !161
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  tail call void @make_decl_rtl(ptr noundef nonnull %17) #22
  %46 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %47 = getelementptr inbounds %struct.stack_var, ptr %46, i64 %10
  %48 = load ptr, ptr %47, align 8, !tbaa !224
  %49 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %48, i64 0, i32 1
  br label %50

50:                                               ; preds = %37, %45
  %51 = phi ptr [ %49, %45 ], [ %40, %37 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !161
  br label %53

53:                                               ; preds = %50, %41
  %54 = phi ptr [ %43, %41 ], [ %52, %50 ]
  %55 = load ptr, ptr @global_rtl, align 16, !tbaa !150
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %104

57:                                               ; preds = %53
  br i1 %5, label %64, label %58

58:                                               ; preds = %57
  %59 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %60 = getelementptr inbounds %struct.stack_var, ptr %59, i64 %10
  %61 = load ptr, ptr %60, align 8, !tbaa !224
  %62 = tail call zeroext i8 %0(ptr noundef %61) #22, !callees !575
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %104, label %64

64:                                               ; preds = %58, %57
  %65 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %66 = getelementptr inbounds %struct.stack_var, ptr %65, i64 %10, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !223
  %68 = getelementptr inbounds %struct.stack_var, ptr %65, i64 %10, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !332
  %70 = zext i32 %69 to i64
  %71 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !356
  %72 = sub nsw i64 %71, %67
  %73 = sub nsw i64 0, %70
  %74 = and i64 %72, %73
  store i64 %74, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !356
  %75 = load ptr, ptr @cfun, align 8, !tbaa !150
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !537
  %78 = tail call zeroext i8 @frame_offset_overflow(i64 noundef %74, ptr noundef %77) #22
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %64
  store i64 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !356
  br label %81

81:                                               ; preds = %64, %80
  %82 = phi i64 [ 0, %80 ], [ %74, %64 ]
  %83 = icmp eq i64 %10, -1
  br i1 %83, label %104, label %84

84:                                               ; preds = %81, %93
  %85 = phi i64 [ %102, %93 ], [ %10, %81 ]
  %86 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %87 = getelementptr inbounds %struct.stack_var, ptr %86, i64 %85, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !349
  %89 = getelementptr inbounds %struct.stack_var, ptr %86, i64 %10, i32 2
  %90 = load i64, ptr %89, align 8, !tbaa !223
  %91 = icmp sgt i64 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 780, ptr noundef nonnull @.str.1) #22
  br label %93

93:                                               ; preds = %84, %92
  %94 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %95 = getelementptr inbounds %struct.stack_var, ptr %94, i64 %85
  %96 = load ptr, ptr %95, align 8, !tbaa !224
  %97 = getelementptr inbounds %struct.stack_var, ptr %94, i64 %85, i32 1
  %98 = load i64, ptr %97, align 8, !tbaa !349
  %99 = add nsw i64 %98, %82
  tail call fastcc void @expand_one_stack_var_at(ptr noundef %96, i64 noundef %99)
  %100 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %101 = getelementptr inbounds %struct.stack_var, ptr %100, i64 %85, i32 5
  %102 = load i64, ptr %101, align 8, !tbaa !233
  %103 = icmp eq i64 %102, -1
  br i1 %103, label %104, label %84, !llvm.loop !576

104:                                              ; preds = %93, %81, %58, %53, %6
  %105 = add nuw i64 %7, 1
  %106 = icmp eq i64 %105, %2
  br i1 %106, label %107, label %6, !llvm.loop !577

107:                                              ; preds = %104, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal zeroext i8 @stack_protect_decl_phase_1(ptr nocapture noundef readonly %0) #11 !prof !149 {
  %2 = tail call fastcc i32 @stack_protect_decl_phase(ptr noundef %0), !range !325
  %3 = icmp eq i32 %2, 1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: cold nounwind uwtable
define internal zeroext i8 @stack_protect_decl_phase_2(ptr nocapture noundef readonly %0) #11 !prof !149 {
  %2 = tail call fastcc i32 @stack_protect_decl_phase(ptr noundef %0), !range !325
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_stack_var_conflict(i64 noundef %0, i64 noundef %1) unnamed_addr #11 !prof !149 {
  %3 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.stack_var, ptr %3, i64 %0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !252
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %8, ptr %4, align 8, !tbaa !252
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.stack_var, ptr %3, i64 %1, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !252
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %14, ptr %10, align 8, !tbaa !252
  br label %15

15:                                               ; preds = %13, %9
  %16 = load ptr, ptr %4, align 8, !tbaa !252
  %17 = trunc i64 %1 to i32
  %18 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %17) #22
  %19 = load ptr, ptr %10, align 8, !tbaa !252
  %20 = trunc i64 %0 to i32
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %19, i32 noundef %20) #22
  ret void
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @aggregate_contains_union_type(ptr nocapture noundef readonly %0) unnamed_addr #15 !prof !149 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %8, %6 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %9 [
    i16 17, label %28
    i16 18, label %28
    i16 15, label %6
    i16 16, label %10
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !161
  br label %2

9:                                                ; preds = %2
  br label %28

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !161
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10, %24
  %15 = phi ptr [ %26, %24 ], [ %12, %10 ]
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 31
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !161
  %22 = tail call fastcc zeroext i8 @aggregate_contains_union_type(ptr noundef %21), !range !322
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %14, %19
  %25 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !161
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %14, !llvm.loop !578

28:                                               ; preds = %19, %24, %10, %2, %2, %9
  %29 = phi i8 [ 0, %9 ], [ 1, %2 ], [ 1, %2 ], [ 0, %10 ], [ 0, %24 ], [ 1, %19 ]
  ret i8 %29
}

declare i32 @objects_must_conflict_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @stack_protect_decl_phase(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !149 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  %4 = tail call fastcc i32 @stack_protect_classify_type(ptr noundef %3), !range !579
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i1 true, ptr @has_short_buffer, align 1
  br label %8

8:                                                ; preds = %7, %1
  %9 = load i32, ptr @flag_stack_protect, align 4, !tbaa !165
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = and i32 %4, 3
  %13 = icmp ne i32 %12, 0
  %14 = icmp ult i32 %4, 8
  %15 = and i1 %14, %13
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = lshr i32 %4, 1
  %18 = and i32 %17, 2
  br label %21

19:                                               ; preds = %8
  %20 = and i32 %4, 1
  br label %21

21:                                               ; preds = %16, %11, %19
  %22 = phi i32 [ %20, %19 ], [ 1, %11 ], [ %18, %16 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i1 true, ptr @has_protected_decls, align 1
  br label %25

25:                                               ; preds = %24, %21
  ret i32 %22
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @stack_protect_classify_type(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !149 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %55 [
    i16 15, label %4
    i16 17, label %35
    i16 18, label %35
    i16 16, label %35
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !161
  %7 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 16
  %8 = load ptr, ptr %7, align 8, !tbaa !161
  %9 = load ptr, ptr @integer_types, align 16, !tbaa !150
  %10 = icmp eq ptr %8, %9
  %11 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8
  %12 = icmp eq ptr %8, %11
  %13 = select i1 %10, i1 true, i1 %12
  %14 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16
  %15 = icmp eq ptr %8, %14
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %4
  %18 = load ptr, ptr @compiler_params, align 8, !tbaa !150
  %19 = getelementptr inbounds %struct.param_info, ptr %18, i64 93, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !357
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !161
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %17
  %26 = tail call i32 @host_integerp(ptr noundef nonnull %23, i32 noundef 1) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %22, align 8, !tbaa !161
  %30 = tail call i64 @tree_low_cst(ptr noundef %29, i32 noundef 1) #22
  br label %31

31:                                               ; preds = %17, %25, %28
  %32 = phi i64 [ %30, %28 ], [ %21, %25 ], [ %21, %17 ]
  %33 = icmp ult i64 %32, %21
  %34 = select i1 %33, i32 6, i32 5
  br label %55

35:                                               ; preds = %1, %1, %1
  %36 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !161
  %38 = icmp eq ptr %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %35, %50
  %40 = phi ptr [ %53, %50 ], [ %37, %35 ]
  %41 = phi i32 [ %51, %50 ], [ 8, %35 ]
  %42 = load i64, ptr %40, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 31
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !161
  %48 = tail call fastcc i32 @stack_protect_classify_type(ptr noundef %47), !range !579
  %49 = or i32 %48, %41
  br label %50

50:                                               ; preds = %39, %45
  %51 = phi i32 [ %49, %45 ], [ %41, %39 ]
  %52 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !161
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %39, !llvm.loop !580

55:                                               ; preds = %50, %35, %4, %1, %31
  %56 = phi i32 [ 0, %1 ], [ %34, %31 ], [ 4, %4 ], [ 8, %35 ], [ %51, %50 ]
  ret i32 %56
}

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @stack_var_size_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #16 !prof !149 {
  %3 = load ptr, ptr @stack_vars, align 8, !tbaa !150
  %4 = load i64, ptr %0, align 8, !tbaa !174
  %5 = getelementptr inbounds %struct.stack_var, ptr %3, i64 %4
  %6 = getelementptr inbounds %struct.stack_var, ptr %3, i64 %4, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !223
  %8 = load i64, ptr %1, align 8, !tbaa !174
  %9 = getelementptr inbounds %struct.stack_var, ptr %3, i64 %8
  %10 = getelementptr inbounds %struct.stack_var, ptr %3, i64 %8, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !223
  %12 = icmp slt i64 %7, %11
  br i1 %12, label %41, label %13

13:                                               ; preds = %2
  %14 = icmp sgt i64 %7, %11
  br i1 %14, label %41, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %5, align 8, !tbaa !224
  %17 = load ptr, ptr %9, align 8, !tbaa !224
  %18 = load i64, ptr %16, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  %21 = load i64, ptr %17, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 141
  br i1 %20, label %24, label %28

24:                                               ; preds = %15
  br i1 %23, label %25, label %41

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 3
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %17, i64 0, i32 3
  br label %32

28:                                               ; preds = %15
  br i1 %23, label %41, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 2
  %31 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 2
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi ptr [ %26, %25 ], [ %30, %29 ]
  %34 = phi ptr [ %27, %25 ], [ %31, %29 ]
  %35 = load i32, ptr %34, align 4, !tbaa !161
  %36 = load i32, ptr %33, align 4, !tbaa !161
  %37 = icmp ult i32 %36, %35
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = icmp ugt i32 %36, %35
  %40 = zext i1 %39 to i32
  br label %41

41:                                               ; preds = %38, %32, %28, %24, %13, %2
  %42 = phi i32 [ -1, %2 ], [ 1, %13 ], [ -1, %24 ], [ 1, %28 ], [ -1, %32 ], [ %40, %38 ]
  ret i32 %42
}

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_gc_alloc_stat() local_unnamed_addr #3

declare ptr @referenced_var_lookup(i32 noundef) local_unnamed_addr #3

declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_ptr_info(ptr noundef) local_unnamed_addr #3

declare void @pt_solution_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pointer_set_create() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_partitioned_vars_to_ptset(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #11 !prof !149 {
  %5 = load i8, ptr %0, align 8
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %111

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !581
  %11 = icmp eq ptr %10, null
  br i1 %11, label %111, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @pointer_set_insert(ptr noundef %2, ptr noundef nonnull %10) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %111

15:                                               ; preds = %12
  tail call void @bitmap_clear(ptr noundef %3) #22
  %16 = load ptr, ptr %9, align 8, !tbaa !581
  %17 = load ptr, ptr %16, align 8, !tbaa !333
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr @bitmap_zero_bits, ptr %17
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !335
  %22 = shl i32 %21, 7
  %23 = getelementptr inbounds %struct.bitmap_element_def, ptr %19, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !174
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = or disjoint i32 %22, %26
  %28 = icmp eq ptr %3, null
  br label %29

29:                                               ; preds = %102, %15
  %30 = phi i32 [ 0, %15 ], [ %85, %102 ]
  %31 = phi i64 [ %24, %15 ], [ %103, %102 ]
  %32 = phi ptr [ %19, %15 ], [ %87, %102 ]
  %33 = phi i32 [ %27, %15 ], [ %104, %102 ]
  %34 = icmp eq i64 %31, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %63, %29
  %36 = phi i32 [ %30, %29 ], [ %64, %63 ]
  %37 = phi i64 [ %31, %29 ], [ %68, %63 ]
  %38 = phi ptr [ %32, %29 ], [ %55, %63 ]
  %39 = phi i32 [ %33, %29 ], [ %65, %63 ]
  %40 = and i64 %37, 1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %84

42:                                               ; preds = %35, %42
  %43 = phi i32 [ %46, %42 ], [ %39, %35 ]
  %44 = phi i64 [ %45, %42 ], [ %37, %35 ]
  %45 = lshr exact i64 %44, 1
  %46 = add i32 %43, 1
  %47 = and i64 %44, 2
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %42, label %84, !llvm.loop !337

49:                                               ; preds = %29
  %50 = add i32 %33, 63
  %51 = and i32 %50, -64
  %52 = add i32 %30, 1
  br label %53

53:                                               ; preds = %80, %49
  %54 = phi i64 [ %31, %49 ], [ %75, %80 ]
  %55 = phi ptr [ %32, %49 ], [ %78, %80 ]
  %56 = phi i32 [ %51, %49 ], [ %83, %80 ]
  %57 = phi i32 [ %52, %49 ], [ 0, %80 ]
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %74, label %59

59:                                               ; preds = %53
  %60 = add i32 %56, 128
  %61 = shl i32 %57, 6
  %62 = sub i32 %60, %61
  br label %63

63:                                               ; preds = %59, %70
  %64 = phi i32 [ %72, %70 ], [ %57, %59 ]
  %65 = phi i32 [ %71, %70 ], [ %56, %59 ]
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds %struct.bitmap_element_def, ptr %55, i64 0, i32 3, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !174
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %35

70:                                               ; preds = %63
  %71 = add i32 %65, 64
  %72 = add i32 %64, 1
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %63, !llvm.loop !338

74:                                               ; preds = %70, %53
  %75 = phi i64 [ %54, %53 ], [ %68, %70 ]
  %76 = phi i32 [ %56, %53 ], [ %62, %70 ]
  %77 = phi i32 [ %57, %53 ], [ 2, %70 ]
  %78 = load ptr, ptr %55, align 8, !tbaa !339
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.bitmap_element_def, ptr %78, i64 0, i32 2
  %82 = load i32, ptr %81, align 8, !tbaa !335
  %83 = shl i32 %82, 7
  br label %53, !llvm.loop !340

84:                                               ; preds = %74, %42, %35
  %85 = phi i32 [ %36, %35 ], [ %36, %42 ], [ %77, %74 ]
  %86 = phi i64 [ %37, %35 ], [ %45, %42 ], [ %75, %74 ]
  %87 = phi ptr [ %38, %35 ], [ %38, %42 ], [ %78, %74 ]
  %88 = phi i32 [ %39, %35 ], [ %46, %42 ], [ %76, %74 ]
  %89 = phi i1 [ false, %35 ], [ false, %42 ], [ true, %74 ]
  br i1 %89, label %105, label %90

90:                                               ; preds = %84
  br i1 %28, label %94, label %91

91:                                               ; preds = %90
  %92 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %3, i32 noundef %88) #22
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91, %90
  %95 = zext i32 %88 to i64
  %96 = inttoptr i64 %95 to ptr
  %97 = tail call ptr @pointer_map_contains(ptr noundef %1, ptr noundef %96) #22
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load ptr, ptr %97, align 8, !tbaa !150
  %101 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %3, ptr noundef %100) #22
  br label %102

102:                                              ; preds = %94, %91, %99
  %103 = lshr i64 %86, 1
  %104 = add i32 %88, 1
  br label %29, !llvm.loop !582

105:                                              ; preds = %84
  %106 = load ptr, ptr %3, align 8, !tbaa !333
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %9, align 8, !tbaa !581
  %110 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %109, ptr noundef nonnull %3) #22
  br label %111

111:                                              ; preds = %105, %108, %4, %8, %12
  ret void
}

declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @init_rtl_bb_info(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_block_label(ptr noundef) local_unnamed_addr #3

declare void @emit_jump(ptr noundef) local_unnamed_addr #3

declare ptr @label_rtx(ptr noundef) local_unnamed_addr #3

declare ptr @create_basic_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_last_insn() local_unnamed_addr #3

declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @update_bb_for_insn(ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @expand_gimple_stmt(ptr noundef %0) unnamed_addr #9 !prof !583 !PGOFuncName !584 {
  %2 = alloca %struct.separate_ops, align 8
  %3 = load i32, ptr @input_location, align 4, !tbaa !165
  %4 = tail call ptr @get_last_insn() #22
  %5 = load ptr, ptr @cfun, align 8, !tbaa !150
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !585

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1971, ptr noundef nonnull @.str.1) #22
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !161
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12, !prof !586

12:                                               ; preds = %8
  store i32 %10, ptr @input_location, align 4, !tbaa !165
  tail call void @set_curr_insn_source_location(i32 noundef %10) #22
  %13 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !161
  tail call void @set_curr_insn_block(ptr noundef %14) #22
  br label %15

15:                                               ; preds = %12, %8
  %16 = load i32, ptr %0, align 8
  %17 = and i32 %16, 255
  %18 = trunc i32 %16 to i8
  switch i8 %18, label %625 [
    i8 3, label %19
    i8 4, label %38
    i8 18, label %626
    i8 33, label %626
    i8 5, label %55
    i8 7, label %56
    i8 8, label %57
    i8 9, label %334
    i8 6, label %374
  ], !prof !587

19:                                               ; preds = %15
  %20 = add nsw i32 %17, -1
  %21 = icmp ult i32 %20, 9
  tail call void @llvm.assume(i1 %21)
  %22 = zext nneg i32 %17 to i64
  %23 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !165
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %25
  %27 = load i64, ptr %26, align 8, !tbaa !174
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %30

30:                                               ; preds = %29, %19
  %31 = getelementptr inbounds i8, ptr %0, i64 %27
  %32 = load ptr, ptr %31, align 8, !tbaa !150
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 30
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  tail call void @expand_goto(ptr noundef nonnull %32) #22
  br label %626

37:                                               ; preds = %30
  tail call void @expand_computed_goto(ptr noundef nonnull %32) #22
  br label %626

38:                                               ; preds = %15
  %39 = add nsw i32 %17, -10
  %40 = icmp ult i32 %39, -9
  br i1 %40, label %53, label %41, !prof !588

41:                                               ; preds = %38
  %42 = zext nneg i32 %17 to i64
  %43 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !165
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !174
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50, !prof !588

49:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %50

50:                                               ; preds = %49, %41
  %51 = getelementptr inbounds i8, ptr %0, i64 %47
  %52 = load ptr, ptr %51, align 8, !tbaa !150
  br label %53

53:                                               ; preds = %50, %38
  %54 = phi ptr [ %52, %50 ], [ null, %38 ]
  tail call void @expand_label(ptr noundef %54) #22
  br label %626

55:                                               ; preds = %15
  tail call void @expand_case(ptr noundef %0) #22
  br label %626

56:                                               ; preds = %15
  tail call void @expand_asm_stmt(ptr noundef %0) #22
  br label %626

57:                                               ; preds = %15
  %58 = add nsw i32 %17, -10
  %59 = icmp ult i32 %58, -9
  br i1 %59, label %72, label %60, !prof !589

60:                                               ; preds = %57
  %61 = zext nneg i32 %17 to i64
  %62 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !165
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !174
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69, !prof !589

68:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %69

69:                                               ; preds = %68, %60
  %70 = getelementptr inbounds i8, ptr %0, i64 %66
  %71 = load ptr, ptr %70, align 8, !tbaa !150
  br label %72

72:                                               ; preds = %69, %57
  %73 = phi ptr [ %71, %69 ], [ null, %57 ]
  %74 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %75 = load i32, ptr %74, align 4, !tbaa !161
  %76 = tail call ptr @build_vl_exp_stat(i32 noundef 59, i32 noundef %75) #22
  %77 = load i32, ptr %0, align 8
  %78 = and i32 %77, 255
  %79 = add nsw i32 %78, -10
  %80 = icmp ult i32 %79, -9
  br i1 %80, label %94, label %81, !prof !589

81:                                               ; preds = %72
  %82 = zext nneg i32 %78 to i64
  %83 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !165
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !174
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90, !prof !589

89:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %90

90:                                               ; preds = %89, %81
  %91 = getelementptr inbounds i8, ptr %0, i64 %87
  %92 = getelementptr inbounds ptr, ptr %91, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !150
  br label %94

94:                                               ; preds = %90, %72
  %95 = phi ptr [ %93, %90 ], [ null, %72 ]
  %96 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 1
  store ptr %95, ptr %96, align 8, !tbaa !161
  %97 = load i32, ptr %0, align 8
  %98 = and i32 %97, 255
  %99 = add nsw i32 %98, -10
  %100 = icmp ult i32 %99, -9
  br i1 %100, label %114, label %101, !prof !589

101:                                              ; preds = %94
  %102 = zext nneg i32 %98 to i64
  %103 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !165
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !174
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110, !prof !589

109:                                              ; preds = %101
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %110

110:                                              ; preds = %109, %101
  %111 = getelementptr inbounds i8, ptr %0, i64 %107
  %112 = getelementptr inbounds ptr, ptr %111, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !150
  br label %114

114:                                              ; preds = %110, %94
  %115 = phi ptr [ %113, %110 ], [ null, %94 ]
  %116 = load i64, ptr %115, align 8
  %117 = and i64 %116, 65535
  %118 = icmp eq i64 %117, 121
  br i1 %118, label %119, label %122, !prof !590

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.tree_exp, ptr %115, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !161
  br label %122

122:                                              ; preds = %119, %114
  %123 = phi ptr [ %121, %119 ], [ null, %114 ]
  %124 = icmp eq ptr %123, null
  br i1 %124, label %130, label %125, !prof !589

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.tree_function_decl, ptr %123, i64 0, i32 5
  %127 = load i32, ptr %126, align 8
  %128 = and i32 %127, 6144
  %129 = icmp eq i32 %128, 0
  br label %130

130:                                              ; preds = %125, %122
  %131 = phi i1 [ true, %122 ], [ %129, %125 ]
  %132 = load i32, ptr %0, align 8
  %133 = and i32 %132, 255
  %134 = add nsw i32 %133, -1
  %135 = icmp ult i32 %134, 9
  tail call void @llvm.assume(i1 %135)
  %136 = zext nneg i32 %133 to i64
  %137 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !165
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !174
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %144, !prof !589

143:                                              ; preds = %130
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %144

144:                                              ; preds = %143, %130
  %145 = getelementptr inbounds i8, ptr %0, i64 %141
  %146 = getelementptr inbounds ptr, ptr %145, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !150
  %148 = getelementptr inbounds %struct.tree_common, ptr %147, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !161
  %150 = getelementptr inbounds %struct.tree_common, ptr %149, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !161
  %152 = getelementptr inbounds %struct.tree_common, ptr %151, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !161
  %154 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  store ptr %153, ptr %154, align 8, !tbaa !161
  %155 = load i32, ptr %0, align 8
  %156 = and i32 %155, 255
  %157 = add nsw i32 %156, -10
  %158 = icmp ult i32 %157, -9
  br i1 %158, label %172, label %159, !prof !589

159:                                              ; preds = %144
  %160 = zext nneg i32 %156 to i64
  %161 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !165
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %163
  %165 = load i64, ptr %164, align 8, !tbaa !174
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %168, !prof !589

167:                                              ; preds = %159
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %168

168:                                              ; preds = %167, %159
  %169 = getelementptr inbounds i8, ptr %0, i64 %165
  %170 = getelementptr inbounds ptr, ptr %169, i64 2
  %171 = load ptr, ptr %170, align 8, !tbaa !150
  br label %172

172:                                              ; preds = %168, %144
  %173 = phi ptr [ %171, %168 ], [ null, %144 ]
  %174 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 1, i32 0, i32 1
  store ptr %173, ptr %174, align 8, !tbaa !161
  %175 = load i32, ptr %74, align 4, !tbaa !161
  %176 = icmp eq i32 %175, 3
  br i1 %176, label %279, label %177, !prof !591

177:                                              ; preds = %172, %271
  %178 = phi i64 [ %274, %271 ], [ 0, %172 ]
  %179 = add nuw nsw i64 %178, 3
  %180 = load i32, ptr %0, align 8
  %181 = and i32 %180, 255
  %182 = add nsw i32 %181, -10
  %183 = icmp ult i32 %182, -9
  br i1 %183, label %198, label %184, !prof !592

184:                                              ; preds = %177
  %185 = zext nneg i32 %181 to i64
  %186 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !165
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %188
  %190 = load i64, ptr %189, align 8, !tbaa !174
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %193, !prof !592

192:                                              ; preds = %184
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %193

193:                                              ; preds = %192, %184
  %194 = getelementptr inbounds i8, ptr %0, i64 %190
  %195 = and i64 %179, 4294967295
  %196 = getelementptr inbounds ptr, ptr %194, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !150
  br label %198

198:                                              ; preds = %193, %177
  %199 = phi ptr [ %197, %193 ], [ null, %177 ]
  br i1 %131, label %271, label %200, !prof !593

200:                                              ; preds = %198
  %201 = load i64, ptr %199, align 8
  %202 = and i64 %201, 65535
  %203 = icmp eq i64 %202, 141
  br i1 %203, label %204, label %271

204:                                              ; preds = %200
  %205 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 1), align 8, !tbaa !409
  %206 = icmp eq ptr %205, null
  br i1 %206, label %215, label %207

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.tree_ssa_name, ptr %199, i64 0, i32 3
  %209 = load i32, ptr %208, align 8, !tbaa !161
  %210 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %205, i32 noundef %209) #22
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.tree_ssa_name, ptr %199, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !161
  br label %215

215:                                              ; preds = %212, %207, %204
  %216 = phi ptr [ %214, %212 ], [ null, %207 ], [ null, %204 ]
  %217 = icmp eq ptr %216, null
  br i1 %217, label %271, label %218

218:                                              ; preds = %215
  %219 = load i32, ptr %216, align 8
  %220 = trunc i32 %219 to i8
  switch i8 %220, label %223 [
    i8 6, label %221
    i8 1, label %221
    i8 8, label %224
  ]

221:                                              ; preds = %218, %218
  %222 = lshr i32 %219, 16
  br label %224

223:                                              ; preds = %218
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %224

224:                                              ; preds = %223, %221, %218
  %225 = phi i32 [ %222, %221 ], [ 0, %223 ], [ 59, %218 ]
  %226 = zext nneg i32 %225 to i64
  %227 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %226
  %228 = load i8, ptr %227, align 1, !tbaa !161
  %229 = icmp eq i8 %228, 3
  br i1 %229, label %230, label %250

230:                                              ; preds = %224
  %231 = load i32, ptr %216, align 8
  %232 = and i32 %231, 255
  %233 = add nsw i32 %232, -1
  %234 = icmp ult i32 %233, 9
  tail call void @llvm.assume(i1 %234)
  %235 = zext nneg i32 %232 to i64
  %236 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %235
  %237 = load i32, ptr %236, align 4, !tbaa !165
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %238
  %240 = load i64, ptr %239, align 8, !tbaa !174
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %230
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %243

243:                                              ; preds = %242, %230
  %244 = getelementptr inbounds i8, ptr %216, i64 %240
  %245 = getelementptr inbounds ptr, ptr %244, i64 1
  %246 = load ptr, ptr %245, align 8, !tbaa !150
  %247 = load i64, ptr %246, align 8
  %248 = trunc i64 %247 to i32
  %249 = and i32 %248, 65535
  br label %250

250:                                              ; preds = %243, %224
  %251 = phi i32 [ %249, %243 ], [ %225, %224 ]
  %252 = icmp eq i32 %251, 121
  br i1 %252, label %253, label %271

253:                                              ; preds = %250
  %254 = load i32, ptr %216, align 8
  %255 = and i32 %254, 255
  %256 = add nsw i32 %255, -10
  %257 = icmp ult i32 %256, -9
  br i1 %257, label %271, label %258

258:                                              ; preds = %253
  %259 = zext nneg i32 %255 to i64
  %260 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %259
  %261 = load i32, ptr %260, align 4, !tbaa !165
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %262
  %264 = load i64, ptr %263, align 8, !tbaa !174
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %258
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %267

267:                                              ; preds = %266, %258
  %268 = getelementptr inbounds i8, ptr %216, i64 %264
  %269 = getelementptr inbounds ptr, ptr %268, i64 1
  %270 = load ptr, ptr %269, align 8, !tbaa !150
  br label %271

271:                                              ; preds = %267, %253, %250, %215, %200, %198
  %272 = phi ptr [ %199, %250 ], [ %199, %215 ], [ %199, %200 ], [ %199, %198 ], [ %270, %267 ], [ null, %253 ]
  %273 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 0, i32 3, i64 %179
  store ptr %272, ptr %273, align 8, !tbaa !161
  %274 = add nuw nsw i64 %178, 1
  %275 = load i32, ptr %74, align 4, !tbaa !161
  %276 = add i32 %275, -3
  %277 = zext i32 %276 to i64
  %278 = icmp ult i64 %274, %277
  br i1 %278, label %177, label %279, !prof !594, !llvm.loop !595

279:                                              ; preds = %271, %172
  %280 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef nonnull %0) #22
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %285, label %282, !prof !589

282:                                              ; preds = %279
  %283 = load i64, ptr %76, align 8
  %284 = or i64 %283, 65536
  store i64 %284, ptr %76, align 8
  br label %285

285:                                              ; preds = %282, %279
  %286 = tail call i32 @gimple_call_flags(ptr noundef nonnull %0) #22
  %287 = and i32 %286, 64
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %292, label %289, !prof !596

289:                                              ; preds = %285
  %290 = load i64, ptr %76, align 8
  %291 = or i64 %290, 33554432
  store i64 %291, ptr %76, align 8
  br label %292

292:                                              ; preds = %289, %285
  %293 = load i32, ptr %0, align 8
  %294 = load i64, ptr %76, align 8
  %295 = lshr i32 %293, 1
  %296 = and i32 %295, 262144
  %297 = zext nneg i32 %296 to i64
  %298 = and i64 %294, -262145
  %299 = or disjoint i64 %298, %297
  store i64 %299, ptr %76, align 8
  %300 = load i32, ptr %0, align 8
  %301 = shl i32 %300, 10
  %302 = and i32 %301, 268435456
  %303 = zext nneg i32 %302 to i64
  %304 = and i64 %299, -268435457
  %305 = or disjoint i64 %304, %303
  store i64 %305, ptr %76, align 8
  %306 = load i32, ptr %0, align 8
  %307 = shl i32 %306, 12
  %308 = and i32 %307, 536870912
  %309 = zext nneg i32 %308 to i64
  %310 = and i64 %305, -536870913
  %311 = or disjoint i64 %310, %309
  store i64 %311, ptr %76, align 8
  %312 = load i32, ptr %0, align 8
  %313 = shl i32 %312, 10
  %314 = and i32 %313, 67108864
  %315 = zext nneg i32 %314 to i64
  %316 = and i64 %311, -67108865
  %317 = or disjoint i64 %316, %315
  store i64 %317, ptr %76, align 8
  %318 = load i32, ptr %0, align 8
  %319 = shl i32 %318, 7
  %320 = and i32 %319, 134217728
  %321 = zext nneg i32 %320 to i64
  %322 = and i64 %317, -134217729
  %323 = or disjoint i64 %322, %321
  store i64 %323, ptr %76, align 8
  %324 = load i32, ptr %9, align 8, !tbaa !161
  %325 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 0, i32 1
  store i32 %324, ptr %325, align 8, !tbaa !161
  %326 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %327 = load ptr, ptr %326, align 8, !tbaa !161
  %328 = tail call ptr @tree_block(ptr noundef nonnull %76) #22
  store ptr %327, ptr %328, align 8, !tbaa !150
  %329 = icmp eq ptr %73, null
  br i1 %329, label %331, label %330, !prof !597

330:                                              ; preds = %292
  tail call void @expand_assignment(ptr noundef nonnull %73, ptr noundef nonnull %76, i8 noundef zeroext 0) #22
  br label %626

331:                                              ; preds = %292
  %332 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %333 = tail call ptr @expand_expr_real_1(ptr noundef nonnull %76, ptr noundef %332, i32 noundef 0, i32 noundef 0, ptr noundef null) #22
  br label %626

334:                                              ; preds = %15
  %335 = add nsw i32 %17, -10
  %336 = icmp ult i32 %335, -9
  br i1 %336, label %349, label %337, !prof !261

337:                                              ; preds = %334
  %338 = zext nneg i32 %17 to i64
  %339 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !165
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %341
  %343 = load i64, ptr %342, align 8, !tbaa !174
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %345, label %346, !prof !261

345:                                              ; preds = %337
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %346

346:                                              ; preds = %345, %337
  %347 = getelementptr inbounds i8, ptr %0, i64 %343
  %348 = load ptr, ptr %347, align 8, !tbaa !150
  br label %349

349:                                              ; preds = %346, %334
  %350 = phi ptr [ %348, %346 ], [ null, %334 ]
  %351 = icmp eq ptr %350, null
  br i1 %351, label %369, label %352, !prof !261

352:                                              ; preds = %349
  %353 = load ptr, ptr @global_trees, align 16, !tbaa !150
  %354 = icmp eq ptr %350, %353
  br i1 %354, label %369, label %355, !prof !261

355:                                              ; preds = %352
  %356 = load ptr, ptr @current_function_decl, align 8, !tbaa !150
  %357 = getelementptr inbounds %struct.tree_decl_non_common, ptr %356, i64 0, i32 3
  %358 = load ptr, ptr %357, align 8, !tbaa !161
  %359 = icmp eq ptr %350, %358
  br i1 %359, label %369, label %360, !prof !261

360:                                              ; preds = %355
  %361 = load i64, ptr %350, align 8
  %362 = and i64 %361, 65535
  %363 = icmp eq i64 %362, 36
  br i1 %363, label %364, label %365, !prof !261

364:                                              ; preds = %360
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1841, ptr noundef nonnull @.str.1) #22
  br label %365

365:                                              ; preds = %364, %360
  %366 = getelementptr inbounds %struct.tree_common, ptr %358, i64 0, i32 2
  %367 = load ptr, ptr %366, align 8, !tbaa !161
  %368 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %367, ptr noundef %358, ptr noundef nonnull %350) #22
  br label %369

369:                                              ; preds = %365, %355, %352, %349
  %370 = phi ptr [ %350, %352 ], [ null, %349 ], [ %368, %365 ], [ %350, %355 ]
  %371 = icmp eq ptr %370, null
  br i1 %371, label %372, label %373, !prof !261

372:                                              ; preds = %369
  tail call void @expand_null_return() #22
  br label %626

373:                                              ; preds = %369
  tail call void @expand_return(ptr noundef nonnull %370) #22
  br label %626

374:                                              ; preds = %15
  %375 = add nsw i32 %17, -10
  %376 = icmp ult i32 %375, -9
  br i1 %376, label %389, label %377, !prof !598

377:                                              ; preds = %374
  %378 = zext nneg i32 %17 to i64
  %379 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %378
  %380 = load i32, ptr %379, align 4, !tbaa !165
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %381
  %383 = load i64, ptr %382, align 8, !tbaa !174
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %385, label %386, !prof !598

385:                                              ; preds = %377
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %386

386:                                              ; preds = %385, %377
  %387 = getelementptr inbounds i8, ptr %0, i64 %383
  %388 = load ptr, ptr %387, align 8, !tbaa !150
  br label %389

389:                                              ; preds = %386, %374
  %390 = phi ptr [ %388, %386 ], [ null, %374 ]
  %391 = load i64, ptr %390, align 8
  %392 = and i64 %391, 65535
  %393 = icmp eq i64 %392, 141
  br i1 %393, label %394, label %406, !prof !599

394:                                              ; preds = %389
  %395 = load i32, ptr %0, align 8
  %396 = trunc i32 %395 to i8
  switch i8 %396, label %399 [
    i8 6, label %397
    i8 1, label %397
    i8 8, label %400
  ], !prof !600

397:                                              ; preds = %394, %394
  %398 = lshr i32 %395, 16
  br label %400

399:                                              ; preds = %394
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %400

400:                                              ; preds = %399, %397, %394
  %401 = phi i32 [ %398, %397 ], [ 0, %399 ], [ 59, %394 ]
  %402 = zext nneg i32 %401 to i64
  %403 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %402
  %404 = load i8, ptr %403, align 1, !tbaa !161
  %405 = icmp eq i8 %404, 3
  br i1 %405, label %406, label %457, !prof !601

406:                                              ; preds = %400, %389
  %407 = load i32, ptr %0, align 8
  %408 = and i32 %407, 255
  %409 = add nsw i32 %408, -10
  %410 = icmp ult i32 %409, -9
  br i1 %410, label %424, label %411, !prof !602

411:                                              ; preds = %406
  %412 = zext nneg i32 %408 to i64
  %413 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %412
  %414 = load i32, ptr %413, align 4, !tbaa !165
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %415
  %417 = load i64, ptr %416, align 8, !tbaa !174
  %418 = icmp eq i64 %417, 0
  br i1 %418, label %419, label %420, !prof !602

419:                                              ; preds = %411
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %420

420:                                              ; preds = %419, %411
  %421 = getelementptr inbounds i8, ptr %0, i64 %417
  %422 = getelementptr inbounds ptr, ptr %421, i64 1
  %423 = load ptr, ptr %422, align 8, !tbaa !150
  br label %424

424:                                              ; preds = %420, %406
  %425 = phi ptr [ %423, %420 ], [ null, %406 ]
  %426 = load i32, ptr %0, align 8
  %427 = trunc i32 %426 to i8
  switch i8 %427, label %431 [
    i8 6, label %428
    i8 1, label %428
    i8 8, label %432
  ], !prof !603

428:                                              ; preds = %424, %424
  %429 = lshr i32 %426, 16
  %430 = zext nneg i32 %429 to i64
  br label %432

431:                                              ; preds = %424
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %432

432:                                              ; preds = %431, %428, %424
  %433 = phi i64 [ %430, %428 ], [ 0, %431 ], [ 59, %424 ]
  %434 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %433
  %435 = load i8, ptr %434, align 1, !tbaa !161
  %436 = icmp eq i8 %435, 3
  br i1 %436, label %438, label %437, !prof !604

437:                                              ; preds = %432
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1873, ptr noundef nonnull @.str.1) #22
  br label %438

438:                                              ; preds = %437, %432
  %439 = load i32, ptr %9, align 8, !tbaa !161
  %440 = icmp ne i32 %439, 0
  %441 = icmp ne ptr %425, null
  %442 = select i1 %440, i1 %441, i1 false, !prof !605
  br i1 %442, label %443, label %452, !prof !605

443:                                              ; preds = %438
  %444 = load i64, ptr %425, align 8
  %445 = and i64 %444, 65535
  %446 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %445
  %447 = load i32, ptr %446, align 4, !tbaa !165
  %448 = add i32 %447, -4
  %449 = icmp ult i32 %448, 7
  br i1 %449, label %450, label %452, !prof !606

450:                                              ; preds = %443
  %451 = getelementptr inbounds %struct.tree_exp, ptr %425, i64 0, i32 1
  store i32 %439, ptr %451, align 8, !tbaa !161
  br label %452

452:                                              ; preds = %450, %443, %438
  %453 = load i32, ptr %0, align 8
  %454 = lshr i32 %453, 10
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  tail call void @expand_assignment(ptr noundef nonnull %390, ptr noundef %425, i8 noundef zeroext %456) #22
  br label %626

457:                                              ; preds = %400
  %458 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #22
  %459 = tail call ptr @expand_expr_real(ptr noundef nonnull %390, ptr noundef null, i32 noundef 0, i32 noundef 5, ptr noundef null) #22
  %460 = load i32, ptr %459, align 8
  %461 = and i32 %460, 268500991
  %462 = icmp eq i32 %461, 268435495
  %463 = load i32, ptr %0, align 8
  %464 = trunc i32 %463 to i8
  switch i8 %464, label %467 [
    i8 6, label %465
    i8 1, label %465
    i8 8, label %468
  ], !prof !607

465:                                              ; preds = %457, %457
  %466 = lshr i32 %463, 16
  br label %468

467:                                              ; preds = %457
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %468

468:                                              ; preds = %467, %465, %457
  %469 = phi i32 [ %466, %465 ], [ 0, %467 ], [ 59, %457 ]
  %470 = zext nneg i32 %469 to i64
  %471 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %470
  %472 = load i8, ptr %471, align 1, !tbaa !161
  %473 = icmp eq i8 %472, 3
  br i1 %473, label %474, label %494, !prof !608

474:                                              ; preds = %468
  %475 = load i32, ptr %0, align 8
  %476 = and i32 %475, 255
  %477 = add nsw i32 %476, -1
  %478 = icmp ult i32 %477, 9
  tail call void @llvm.assume(i1 %478)
  %479 = zext nneg i32 %476 to i64
  %480 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %479
  %481 = load i32, ptr %480, align 4, !tbaa !165
  %482 = zext i32 %481 to i64
  %483 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %482
  %484 = load i64, ptr %483, align 8, !tbaa !174
  %485 = icmp eq i64 %484, 0
  br i1 %485, label %486, label %487

486:                                              ; preds = %474
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %487

487:                                              ; preds = %486, %474
  %488 = getelementptr inbounds i8, ptr %0, i64 %484
  %489 = getelementptr inbounds ptr, ptr %488, i64 1
  %490 = load ptr, ptr %489, align 8, !tbaa !150
  %491 = load i64, ptr %490, align 8
  %492 = trunc i64 %491 to i32
  %493 = and i32 %492, 65535
  br label %494

494:                                              ; preds = %487, %468
  %495 = phi i32 [ %493, %487 ], [ %469, %468 ]
  store i32 %495, ptr %2, align 8, !tbaa !609
  %496 = getelementptr inbounds %struct.tree_common, ptr %390, i64 0, i32 2
  %497 = load ptr, ptr %496, align 8, !tbaa !161
  %498 = getelementptr inbounds %struct.separate_ops, ptr %2, i64 0, i32 1
  store ptr %497, ptr %498, align 8, !tbaa !611
  %499 = load i32, ptr %0, align 8
  %500 = trunc i32 %499 to i8
  switch i8 %500, label %504 [
    i8 6, label %501
    i8 1, label %501
    i8 8, label %505
  ], !prof !607

501:                                              ; preds = %494, %494
  %502 = lshr i32 %499, 16
  %503 = zext nneg i32 %502 to i64
  br label %505

504:                                              ; preds = %494
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %505

505:                                              ; preds = %504, %501, %494
  %506 = phi i64 [ %503, %501 ], [ 0, %504 ], [ 59, %494 ]
  %507 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %506
  %508 = load i8, ptr %507, align 1, !tbaa !161
  switch i8 %508, label %555 [
    i8 1, label %509
    i8 2, label %534
  ], !prof !612

509:                                              ; preds = %505
  %510 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %511 = load i32, ptr %510, align 4, !tbaa !161
  %512 = icmp ugt i32 %511, 2
  br i1 %512, label %513, label %531, !prof !613

513:                                              ; preds = %509
  %514 = load i32, ptr %0, align 8
  %515 = and i32 %514, 255
  %516 = add nsw i32 %515, -10
  %517 = icmp ult i32 %516, -9
  br i1 %517, label %531, label %518, !prof !614

518:                                              ; preds = %513
  %519 = zext nneg i32 %515 to i64
  %520 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %519
  %521 = load i32, ptr %520, align 4, !tbaa !165
  %522 = zext i32 %521 to i64
  %523 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %522
  %524 = load i64, ptr %523, align 8, !tbaa !174
  %525 = icmp eq i64 %524, 0
  br i1 %525, label %526, label %527, !prof !614

526:                                              ; preds = %518
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %527

527:                                              ; preds = %526, %518
  %528 = getelementptr inbounds i8, ptr %0, i64 %524
  %529 = getelementptr inbounds ptr, ptr %528, i64 2
  %530 = load ptr, ptr %529, align 8, !tbaa !150
  br label %531

531:                                              ; preds = %527, %513, %509
  %532 = phi ptr [ null, %509 ], [ %530, %527 ], [ null, %513 ]
  %533 = getelementptr inbounds %struct.separate_ops, ptr %2, i64 0, i32 3
  store ptr %532, ptr %533, align 8, !tbaa !615
  br label %534

534:                                              ; preds = %531, %505
  %535 = load i32, ptr %0, align 8
  %536 = and i32 %535, 255
  %537 = add nsw i32 %536, -10
  %538 = icmp ult i32 %537, -9
  br i1 %538, label %552, label %539, !prof !608

539:                                              ; preds = %534
  %540 = zext nneg i32 %536 to i64
  %541 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %540
  %542 = load i32, ptr %541, align 4, !tbaa !165
  %543 = zext i32 %542 to i64
  %544 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %543
  %545 = load i64, ptr %544, align 8, !tbaa !174
  %546 = icmp eq i64 %545, 0
  br i1 %546, label %547, label %548, !prof !608

547:                                              ; preds = %539
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %548

548:                                              ; preds = %547, %539
  %549 = getelementptr inbounds i8, ptr %0, i64 %545
  %550 = getelementptr inbounds ptr, ptr %549, i64 1
  %551 = load ptr, ptr %550, align 8, !tbaa !150
  br label %552

552:                                              ; preds = %548, %534
  %553 = phi ptr [ %551, %548 ], [ null, %534 ]
  %554 = getelementptr inbounds %struct.separate_ops, ptr %2, i64 0, i32 2
  store ptr %553, ptr %554, align 8, !tbaa !616
  br label %556

555:                                              ; preds = %505
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1901, ptr noundef nonnull @.str.1) #22
  br label %556

556:                                              ; preds = %555, %552
  %557 = load i32, ptr %9, align 8, !tbaa !161
  %558 = getelementptr inbounds %struct.separate_ops, ptr %2, i64 0, i32 5
  store i32 %557, ptr %558, align 8, !tbaa !617
  %559 = and i32 %458, 1024
  %560 = icmp ne i32 %559, 0
  %561 = or i1 %560, %462
  %562 = select i1 %561, ptr null, ptr %459, !prof !608
  %563 = load i32, ptr %459, align 8
  %564 = lshr i32 %563, 16
  %565 = and i32 %564, 255
  %566 = call ptr @expand_expr_real_2(ptr noundef nonnull %2, ptr noundef %562, i32 noundef %565, i32 noundef 0) #22
  %567 = icmp eq ptr %566, %459
  br i1 %567, label %624, label %568, !prof !618

568:                                              ; preds = %556
  br i1 %462, label %569, label %615, !prof !619

569:                                              ; preds = %568
  %570 = load i32, ptr %459, align 8
  %571 = and i32 %570, 134217728
  %572 = icmp eq i32 %571, 0
  %573 = lshr i32 %570, 26
  %574 = and i32 %573, 1
  %575 = select i1 %572, i32 %574, i32 -1
  %576 = load i32, ptr %566, align 8
  %577 = and i32 %576, 65535
  %578 = zext nneg i32 %577 to i64
  %579 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %578
  %580 = load i32, ptr %579, align 4, !tbaa !165
  %581 = icmp eq i32 %580, 9
  %582 = and i32 %576, 16711680
  %583 = icmp eq i32 %582, 0
  %584 = and i1 %581, %583
  br i1 %584, label %585, label %611

585:                                              ; preds = %569
  %586 = lshr i32 %570, 16
  %587 = and i32 %586, 255
  %588 = load ptr, ptr %498, align 8, !tbaa !611
  %589 = load i64, ptr %588, align 8
  %590 = and i64 %589, 65535
  %591 = icmp eq i64 %590, 14
  br i1 %591, label %592, label %594

592:                                              ; preds = %585
  %593 = call i32 @vector_type_mode(ptr noundef nonnull %588) #22
  br label %599

594:                                              ; preds = %585
  %595 = getelementptr inbounds %struct.tree_type, ptr %588, i64 0, i32 6
  %596 = load i32, ptr %595, align 4
  %597 = lshr i32 %596, 16
  %598 = and i32 %597, 255
  br label %599

599:                                              ; preds = %594, %592
  %600 = phi i32 [ %593, %592 ], [ %598, %594 ]
  %601 = call ptr @convert_modes(i32 noundef %587, i32 noundef %600, ptr noundef nonnull %566, i32 noundef %575) #22
  %602 = getelementptr inbounds %struct.rtx_def, ptr %459, i64 0, i32 1
  %603 = load ptr, ptr %602, align 8, !tbaa !161
  %604 = load i32, ptr %603, align 8
  %605 = lshr i32 %604, 16
  %606 = and i32 %605, 255
  %607 = load i32, ptr %459, align 8
  %608 = lshr i32 %607, 16
  %609 = and i32 %608, 255
  %610 = call ptr @convert_modes(i32 noundef %606, i32 noundef %609, ptr noundef %601, i32 noundef %575) #22
  br label %611

611:                                              ; preds = %599, %569
  %612 = phi ptr [ %610, %599 ], [ %566, %569 ]
  %613 = getelementptr inbounds %struct.rtx_def, ptr %459, i64 0, i32 1
  %614 = load ptr, ptr %613, align 8, !tbaa !161
  call void @convert_move(ptr noundef %614, ptr noundef %612, i32 noundef %575) #22
  br label %624

615:                                              ; preds = %568
  br i1 %560, label %616, label %619, !prof !619

616:                                              ; preds = %615
  %617 = call zeroext i8 @emit_storent_insn(ptr noundef nonnull %459, ptr noundef %566) #22
  %618 = icmp eq i8 %617, 0
  br i1 %618, label %619, label %624

619:                                              ; preds = %616, %615
  %620 = call ptr @force_operand(ptr noundef %566, ptr noundef nonnull %459) #22
  %621 = icmp eq ptr %620, %459
  br i1 %621, label %624, label %622, !prof !619

622:                                              ; preds = %619
  %623 = call ptr @emit_move_insn(ptr noundef nonnull %459, ptr noundef %620) #22
  br label %624

624:                                              ; preds = %622, %619, %616, %611, %556
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #22
  br label %626

625:                                              ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1943, ptr noundef nonnull @.str.1) #22
  br label %626

626:                                              ; preds = %15, %15, %36, %37, %53, %55, %56, %330, %331, %372, %373, %452, %624, %625
  call void @free_temp_slots() #22
  store i32 %3, ptr @input_location, align 4, !tbaa !165
  %627 = call i32 @lookup_stmt_eh_lp(ptr noundef %0) #22
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %649, label %629, !prof !620

629:                                              ; preds = %626
  %630 = call ptr @next_real_insn(ptr noundef %4) #22
  %631 = icmp eq ptr %630, null
  br i1 %631, label %649, label %632

632:                                              ; preds = %629, %646
  %633 = phi ptr [ %647, %646 ], [ %630, %629 ]
  %634 = call ptr @find_reg_note(ptr noundef nonnull %633, i32 noundef 25, ptr noundef null) #22
  %635 = icmp eq ptr %634, null
  br i1 %635, label %636, label %646

636:                                              ; preds = %632
  %637 = getelementptr inbounds %struct.rtx_def, ptr %633, i64 1
  %638 = load ptr, ptr %637, align 8, !tbaa !161
  %639 = load i32, ptr %638, align 8
  %640 = and i32 %639, 65534
  %641 = icmp eq i32 %640, 24
  br i1 %641, label %646, label %642

642:                                              ; preds = %636
  %643 = call zeroext i8 @insn_could_throw_p(ptr noundef nonnull %633) #22
  %644 = icmp eq i8 %643, 0
  br i1 %644, label %646, label %645

645:                                              ; preds = %642
  call void @make_reg_eh_region_note(ptr noundef nonnull %633, i32 noundef 0, i32 noundef %627) #22
  br label %646

646:                                              ; preds = %636, %632, %642, %645
  %647 = call ptr @next_real_insn(ptr noundef nonnull %633) #22
  %648 = icmp eq ptr %647, null
  br i1 %648, label %649, label %632, !llvm.loop !621

649:                                              ; preds = %646, %629, %626
  ret ptr %4
}

declare ptr @emit_label(ptr noundef) local_unnamed_addr #3

declare ptr @emit_note_after(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @maybe_dump_rtl_for_gimple_stmt(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #9 !prof !622 !PGOFuncName !623 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5, !prof !402

5:                                                ; preds = %2
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !165
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 4, i64 1, ptr nonnull %3)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !165
  %13 = and i32 %12, 128
  %14 = or disjoint i32 %13, 2
  tail call void @print_gimple_stmt(ptr noundef %11, ptr noundef %0, i32 noundef 0, i32 noundef %14) #22
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !150
  %18 = icmp eq ptr %1, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !161
  br label %22

22:                                               ; preds = %9, %19
  %23 = phi ptr [ %21, %19 ], [ null, %9 ]
  tail call void @print_rtl(ptr noundef %17, ptr noundef %23) #22
  br label %24

24:                                               ; preds = %22, %5, %2
  ret void
}

declare i32 @get_curr_insn_source_location() local_unnamed_addr #3

declare ptr @get_curr_insn_block() local_unnamed_addr #3

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_tei_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_debug_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @label_rtx_for_bb(ptr noundef %0) unnamed_addr #9 !prof !624 !PGOFuncName !625 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !269
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !626

6:                                                ; preds = %1
  %7 = tail call ptr @block_label(ptr noundef %0) #22
  br label %59

8:                                                ; preds = %1
  %9 = load ptr, ptr @lab_rtx_for_bb, align 8, !tbaa !150
  %10 = tail call ptr @pointer_map_contains(ptr noundef %9, ptr noundef %0) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !627

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !150
  br label %59

14:                                               ; preds = %8
  %15 = load i32, ptr %2, align 8, !tbaa !269, !noalias !628
  %16 = and i32 %15, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24, !prof !631

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !161, !noalias !628
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22, !prof !632

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !275, !noalias !628
  br label %24

24:                                               ; preds = %22, %18, %14
  %25 = phi ptr [ %23, %22 ], [ null, %18 ], [ null, %14 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !632

27:                                               ; preds = %24
  %28 = load ptr, ptr %25, align 8, !tbaa !277, !noalias !628
  br label %29

29:                                               ; preds = %24, %27
  %30 = phi ptr [ %28, %27 ], [ null, %24 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %55, label %32, !prof !633

32:                                               ; preds = %29
  %33 = load ptr, ptr %30, align 8, !tbaa !280
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 255
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %55, !prof !634

37:                                               ; preds = %32
  %38 = zext nneg i32 %35 to i64
  %39 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !165
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !174
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46, !prof !635

45:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %46

46:                                               ; preds = %45, %37
  %47 = getelementptr inbounds i8, ptr %33, i64 %43
  %48 = load ptr, ptr %47, align 8, !tbaa !150
  %49 = getelementptr inbounds %struct.tree_decl_common, ptr %48, i64 0, i32 2
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 256
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55, !prof !636

53:                                               ; preds = %46
  %54 = tail call ptr @label_rtx(ptr noundef %48) #22
  br label %59

55:                                               ; preds = %46, %32, %29
  %56 = load ptr, ptr @lab_rtx_for_bb, align 8, !tbaa !150
  %57 = tail call ptr @pointer_map_insert(ptr noundef %56, ptr noundef %0) #22
  %58 = tail call ptr @gen_label_rtx() #22
  store ptr %58, ptr %57, align 8, !tbaa !150
  br label %59

59:                                               ; preds = %55, %53, %12, %6
  %60 = phi ptr [ %7, %6 ], [ %13, %12 ], [ %58, %55 ], [ %54, %53 ]
  ret ptr %60
}

declare ptr @emit_insn_after_noloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @do_pending_stack_adjust() local_unnamed_addr #3

declare void @free_temp_slots() local_unnamed_addr #3

declare i32 @lookup_stmt_eh_lp(ptr noundef) local_unnamed_addr #3

declare ptr @next_real_insn(ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @insn_could_throw_p(ptr noundef) local_unnamed_addr #3

declare void @make_reg_eh_region_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @expand_goto(ptr noundef) local_unnamed_addr #3

declare void @expand_computed_goto(ptr noundef) local_unnamed_addr #3

declare void @expand_label(ptr noundef) local_unnamed_addr #3

declare void @expand_case(ptr noundef) local_unnamed_addr #3

declare void @expand_asm_stmt(ptr noundef) local_unnamed_addr #3

declare void @expand_null_return() local_unnamed_addr #3

declare void @expand_return(ptr noundef) local_unnamed_addr #3

declare void @expand_assignment(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @expand_expr_real_2(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @convert_modes(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @convert_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @emit_storent_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_vl_exp_stat(i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #3

declare ptr @expand_expr_real_1(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !149 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !408
  %8 = load ptr, ptr %7, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %8) #22
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = load i32, ptr %5, align 8
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %15, label %94

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !161
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 3
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 1
  %20 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 4
  %21 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 5
  %22 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 6
  store i8 0, ptr %3, align 8, !tbaa !637
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %19, i8 0, i64 36, i1 false)
  %23 = tail call zeroext i8 @is_gimple_reg(ptr noundef %17) #22
  %24 = icmp eq i8 %23, 0
  %25 = xor i1 %10, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i8 1, ptr %3, align 8, !tbaa !637
  br label %34

27:                                               ; preds = %15
  store ptr %5, ptr %22, align 8, !tbaa !639
  %28 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !161
  store i32 %29, ptr %21, align 4, !tbaa !640
  store i32 2, ptr %19, align 4, !tbaa !641
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  store i32 1, ptr %20, align 8, !tbaa !642
  %32 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 4, i64 0
  br label %34

33:                                               ; preds = %27
  store i8 1, ptr %3, align 8, !tbaa !637
  br label %34

34:                                               ; preds = %26, %31, %33
  %35 = phi ptr [ null, %26 ], [ %32, %31 ], [ null, %33 ]
  %36 = load i8, ptr %3, align 8, !tbaa !637
  %37 = load ptr, ptr %18, align 8, !tbaa !643
  %38 = load i32, ptr %20, align 8, !tbaa !642
  %39 = icmp eq i8 %36, 0
  br i1 %39, label %40, label %200

40:                                               ; preds = %34
  %41 = load i32, ptr %21, align 4
  %42 = load ptr, ptr %22, align 8
  %43 = getelementptr inbounds %struct.gimple_statement_phi, ptr %42, i64 0, i32 1
  br label %44

44:                                               ; preds = %40, %88
  %45 = phi ptr [ %35, %40 ], [ %92, %88 ]
  %46 = phi ptr [ %0, %40 ], [ %73, %88 ]
  %47 = phi i8 [ %36, %40 ], [ %91, %88 ]
  %48 = phi ptr [ %37, %40 ], [ %90, %88 ]
  %49 = phi i32 [ %38, %40 ], [ %89, %88 ]
  %50 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %45, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !408
  %52 = load ptr, ptr %51, align 8, !tbaa !150
  %53 = icmp ne ptr %52, %8
  %54 = icmp eq ptr %45, %0
  %55 = or i1 %53, %54
  br i1 %55, label %72, label %56

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %46, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !412
  %59 = icmp eq ptr %58, %45
  br i1 %59, label %72, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %45, align 8, !tbaa !416
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %45, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !412
  %66 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %61, i64 0, i32 1
  store ptr %65, ptr %66, align 8, !tbaa !412
  %67 = load ptr, ptr %64, align 8, !tbaa !412
  store ptr %61, ptr %67, align 8, !tbaa !416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  br label %68

68:                                               ; preds = %63, %60
  store ptr %46, ptr %45, align 8, !tbaa !416
  %69 = load ptr, ptr %57, align 8, !tbaa !412
  %70 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %45, i64 0, i32 1
  store ptr %69, ptr %70, align 8, !tbaa !412
  %71 = load ptr, ptr %57, align 8, !tbaa !412
  store ptr %45, ptr %71, align 8, !tbaa !416
  store ptr %45, ptr %57, align 8, !tbaa !412
  br label %72

72:                                               ; preds = %68, %56, %44
  %73 = phi ptr [ %46, %44 ], [ %45, %68 ], [ %45, %56 ]
  %74 = icmp eq ptr %48, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.use_optype_d, ptr %48, i64 0, i32 1
  %77 = load ptr, ptr %48, align 8, !tbaa !405
  br label %88

78:                                               ; preds = %72
  %79 = icmp slt i32 %49, %41
  br i1 %79, label %80, label %88

80:                                               ; preds = %78
  %81 = add nsw i32 %49, 1
  %82 = load i32, ptr %43, align 8, !tbaa !161
  %83 = icmp ult i32 %82, %49
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.1) #22
  br label %85

85:                                               ; preds = %84, %80
  %86 = zext i32 %49 to i64
  %87 = getelementptr inbounds %struct.gimple_statement_phi, ptr %42, i64 0, i32 4, i64 %86
  br label %88

88:                                               ; preds = %78, %75, %85
  %89 = phi i32 [ %49, %75 ], [ %81, %85 ], [ %49, %78 ]
  %90 = phi ptr [ %77, %75 ], [ %48, %85 ], [ %48, %78 ]
  %91 = phi i8 [ %47, %75 ], [ %47, %85 ], [ 1, %78 ]
  %92 = phi ptr [ %76, %75 ], [ %87, %85 ], [ null, %78 ]
  %93 = icmp eq i8 %91, 0
  br i1 %93, label %44, label %200, !llvm.loop !644

94:                                               ; preds = %2
  br i1 %10, label %159, label %95

95:                                               ; preds = %94
  %96 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef %11)
  %97 = load i8, ptr %3, align 8, !tbaa !637
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %206

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 3
  %101 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 4
  %102 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 5
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.gimple_statement_phi, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %100, align 8, !tbaa !643
  %108 = load i32, ptr %101, align 8, !tbaa !642
  br label %109

109:                                              ; preds = %99, %153
  %110 = phi i32 [ %108, %99 ], [ %154, %153 ]
  %111 = phi ptr [ %107, %99 ], [ %155, %153 ]
  %112 = phi ptr [ %96, %99 ], [ %157, %153 ]
  %113 = phi ptr [ %0, %99 ], [ %138, %153 ]
  %114 = phi i8 [ %97, %99 ], [ %156, %153 ]
  %115 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %112, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !408
  %117 = load ptr, ptr %116, align 8, !tbaa !150
  %118 = icmp ne ptr %117, %8
  %119 = icmp eq ptr %112, %0
  %120 = or i1 %118, %119
  br i1 %120, label %137, label %121

121:                                              ; preds = %109
  %122 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %113, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !412
  %124 = icmp eq ptr %123, %112
  br i1 %124, label %137, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr %112, align 8, !tbaa !416
  %127 = icmp eq ptr %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %112, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !412
  %131 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %126, i64 0, i32 1
  store ptr %130, ptr %131, align 8, !tbaa !412
  %132 = load ptr, ptr %129, align 8, !tbaa !412
  store ptr %126, ptr %132, align 8, !tbaa !416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %112, i8 0, i64 16, i1 false)
  br label %133

133:                                              ; preds = %128, %125
  store ptr %113, ptr %112, align 8, !tbaa !416
  %134 = load ptr, ptr %122, align 8, !tbaa !412
  %135 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %112, i64 0, i32 1
  store ptr %134, ptr %135, align 8, !tbaa !412
  %136 = load ptr, ptr %122, align 8, !tbaa !412
  store ptr %112, ptr %136, align 8, !tbaa !416
  store ptr %112, ptr %122, align 8, !tbaa !412
  br label %137

137:                                              ; preds = %133, %121, %109
  %138 = phi ptr [ %113, %109 ], [ %112, %133 ], [ %112, %121 ]
  %139 = icmp eq ptr %111, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.use_optype_d, ptr %111, i64 0, i32 1
  %142 = load ptr, ptr %111, align 8, !tbaa !405
  br label %153

143:                                              ; preds = %137
  %144 = icmp slt i32 %110, %103
  br i1 %144, label %145, label %153

145:                                              ; preds = %143
  %146 = add nsw i32 %110, 1
  %147 = load i32, ptr %106, align 8, !tbaa !161
  %148 = icmp ult i32 %147, %110
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.1) #22
  br label %150

150:                                              ; preds = %149, %145
  %151 = zext i32 %110 to i64
  %152 = getelementptr inbounds %struct.gimple_statement_phi, ptr %105, i64 0, i32 4, i64 %151
  br label %153

153:                                              ; preds = %143, %140, %150
  %154 = phi i32 [ %110, %140 ], [ %146, %150 ], [ %110, %143 ]
  %155 = phi ptr [ %142, %140 ], [ %111, %150 ], [ %111, %143 ]
  %156 = phi i8 [ %114, %140 ], [ %114, %150 ], [ 1, %143 ]
  %157 = phi ptr [ %141, %140 ], [ %152, %150 ], [ null, %143 ]
  %158 = icmp eq i8 %156, 0
  br i1 %158, label %109, label %205, !llvm.loop !645

159:                                              ; preds = %94
  %160 = and i32 %12, 254
  %161 = add nsw i32 %160, -10
  %162 = icmp ult i32 %161, -4
  br i1 %162, label %174, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %5, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !161
  %166 = icmp eq ptr %165, null
  br i1 %166, label %174, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.use_optype_d, ptr %165, i64 0, i32 1, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !646
  %170 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %5, i64 0, i32 2
  %171 = icmp eq ptr %169, %170
  %172 = getelementptr inbounds %struct.use_optype_d, ptr %165, i64 0, i32 1
  %173 = select i1 %171, ptr %172, ptr null
  br label %174

174:                                              ; preds = %159, %163, %167
  %175 = phi ptr [ null, %159 ], [ null, %163 ], [ %173, %167 ]
  %176 = icmp eq ptr %175, null
  br i1 %176, label %209, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %175, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !408
  %180 = load ptr, ptr %179, align 8, !tbaa !150
  %181 = icmp ne ptr %180, %8
  %182 = icmp eq ptr %175, %0
  %183 = or i1 %182, %181
  br i1 %183, label %209, label %184

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !412
  %187 = icmp eq ptr %186, %175
  br i1 %187, label %209, label %188

188:                                              ; preds = %184
  %189 = load ptr, ptr %175, align 8, !tbaa !416
  %190 = icmp eq ptr %189, null
  br i1 %190, label %196, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %175, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !412
  %194 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %189, i64 0, i32 1
  store ptr %193, ptr %194, align 8, !tbaa !412
  %195 = load ptr, ptr %192, align 8, !tbaa !412
  store ptr %189, ptr %195, align 8, !tbaa !416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %175, i8 0, i64 16, i1 false)
  br label %196

196:                                              ; preds = %191, %188
  store ptr %0, ptr %175, align 8, !tbaa !416
  %197 = load ptr, ptr %185, align 8, !tbaa !412
  %198 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %175, i64 0, i32 1
  store ptr %197, ptr %198, align 8, !tbaa !412
  %199 = load ptr, ptr %185, align 8, !tbaa !412
  store ptr %175, ptr %199, align 8, !tbaa !416
  store ptr %175, ptr %185, align 8, !tbaa !412
  br label %209

200:                                              ; preds = %88, %34
  %201 = phi i32 [ %38, %34 ], [ %89, %88 ]
  %202 = phi ptr [ %37, %34 ], [ %90, %88 ]
  %203 = phi i8 [ %36, %34 ], [ %91, %88 ]
  %204 = phi ptr [ %0, %34 ], [ %73, %88 ]
  store i8 %203, ptr %3, align 8, !tbaa !637
  store ptr %202, ptr %18, align 8, !tbaa !643
  store i32 %201, ptr %20, align 8, !tbaa !642
  br label %209

205:                                              ; preds = %153
  store ptr %155, ptr %100, align 8, !tbaa !643
  store i32 %154, ptr %101, align 8, !tbaa !642
  br label %206

206:                                              ; preds = %205, %95
  %207 = phi i8 [ %156, %205 ], [ %97, %95 ]
  %208 = phi ptr [ %138, %205 ], [ %0, %95 ]
  store i8 %207, ptr %3, align 8, !tbaa !637
  br label %209

209:                                              ; preds = %206, %200, %196, %184, %177, %174
  %210 = phi ptr [ %0, %177 ], [ %0, %174 ], [ %175, %196 ], [ %175, %184 ], [ %204, %200 ], [ %208, %206 ]
  %211 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !416
  %213 = icmp eq ptr %212, null
  br i1 %213, label %219, label %214

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !412
  %217 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %212, i64 0, i32 1
  store ptr %216, ptr %217, align 8, !tbaa !412
  %218 = load ptr, ptr %215, align 8, !tbaa !412
  store ptr %212, ptr %218, align 8, !tbaa !416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %211, i8 0, i64 16, i1 false)
  br label %219

219:                                              ; preds = %214, %209
  store ptr %210, ptr %211, align 8, !tbaa !416
  %220 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %210, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !412
  %222 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  store ptr %221, ptr %222, align 8, !tbaa !412
  %223 = load ptr, ptr %220, align 8, !tbaa !412
  store ptr %211, ptr %223, align 8, !tbaa !416
  store ptr %211, ptr %220, align 8, !tbaa !412
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 !prof !149 {
  %4 = and i32 %2, 10
  %5 = and i32 %2, 11
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 771, ptr noundef nonnull @.str.1) #22
  br label %8

8:                                                ; preds = %3, %7
  %9 = and i32 %2, 4
  %10 = icmp ne i32 %9, 0
  %11 = and i32 %2, 5
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 747, ptr noundef nonnull @.str.1) #22
  br label %14

14:                                               ; preds = %13, %8
  %15 = icmp eq i32 %4, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %14
  %17 = load i32, ptr %1, align 8
  %18 = and i32 %17, 255
  %19 = add nsw i32 %18, -10
  %20 = icmp ult i32 %19, -9
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !161
  br label %24

24:                                               ; preds = %21, %16, %14
  %25 = phi ptr [ null, %14 ], [ %23, %21 ], [ null, %16 ]
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !647
  %27 = icmp eq ptr %25, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %1, align 8
  %30 = and i32 %29, 254
  %31 = add nsw i32 %30, -10
  %32 = icmp ult i32 %31, -4
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !161
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %25, align 8, !tbaa !463
  store ptr %38, ptr %26, align 8, !tbaa !647
  br label %39

39:                                               ; preds = %28, %37, %33, %24
  %40 = icmp eq i32 %11, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %39
  %42 = load i32, ptr %1, align 8
  %43 = and i32 %42, 255
  %44 = add nsw i32 %43, -10
  %45 = icmp ult i32 %44, -9
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !161
  br label %49

49:                                               ; preds = %46, %41, %39
  %50 = phi ptr [ null, %39 ], [ %48, %46 ], [ null, %41 ]
  %51 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %50, ptr %51, align 8, !tbaa !643
  %52 = icmp eq ptr %50, null
  %53 = select i1 %10, i1 true, i1 %52
  br i1 %53, label %65, label %54

54:                                               ; preds = %49
  %55 = load i32, ptr %1, align 8
  %56 = and i32 %55, 254
  %57 = add nsw i32 %56, -10
  %58 = icmp ult i32 %57, -4
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !161
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %50, align 8, !tbaa !405
  store ptr %64, ptr %51, align 8, !tbaa !643
  br label %65

65:                                               ; preds = %54, %49, %59, %63
  store i8 0, ptr %0, align 8, !tbaa !637
  %66 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %67 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %66, i8 0, i64 16, i1 false)
  store i32 2, ptr %67, align 4, !tbaa !641
  %68 = load ptr, ptr %51, align 8, !tbaa !643
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.use_optype_d, ptr %68, i64 0, i32 1
  %72 = load ptr, ptr %68, align 8, !tbaa !405
  store ptr %72, ptr %51, align 8, !tbaa !643
  br label %74

73:                                               ; preds = %65
  store i8 1, ptr %0, align 8, !tbaa !637
  br label %74

74:                                               ; preds = %70, %73
  %75 = phi ptr [ %71, %70 ], [ null, %73 ]
  ret ptr %75
}

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #3

declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @jumpif_1(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @jumpifnot_1(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ssa_operands_active() local_unnamed_addr #3

declare ptr @block_label(ptr noundef) local_unnamed_addr #3

declare ptr @gen_label_rtx() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_debug_expr(ptr noundef %0) unnamed_addr #11 !prof !149 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !161
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 14
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = tail call i32 @vector_type_mode(ptr noundef nonnull %9) #22
  br label %20

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i32 [ %14, %13 ], [ %19, %15 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  %22 = load ptr, ptr %8, align 8, !tbaa !161
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = lshr i32 %24, 21
  %26 = and i32 %25, 1
  store i32 %26, ptr %2, align 4, !tbaa !165
  %27 = load i64, ptr %0, align 8
  %28 = and i64 %27, 65535
  %29 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !165
  switch i32 %30, label %52 [
    i32 10, label %31
    i32 7, label %38
    i32 5, label %38
    i32 6, label %44
    i32 2, label %51
    i32 8, label %51
  ]

31:                                               ; preds = %20
  %32 = trunc i64 %27 to i16
  switch i16 %32, label %52 [
    i16 56, label %33
    i16 167, label %33
    i16 91, label %38
    i16 92, label %38
    i16 93, label %38
    i16 94, label %38
    i16 95, label %38
    i16 96, label %44
  ]

33:                                               ; preds = %31, %31
  %34 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !161
  %36 = tail call fastcc ptr @expand_debug_expr(ptr noundef %35)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %1118, label %38

38:                                               ; preds = %33, %31, %31, %31, %31, %20, %31, %20
  %39 = phi ptr [ null, %20 ], [ null, %31 ], [ null, %20 ], [ null, %31 ], [ null, %31 ], [ null, %31 ], [ null, %31 ], [ %36, %33 ]
  %40 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !161
  %42 = tail call fastcc ptr @expand_debug_expr(ptr noundef %41)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %1118, label %44

44:                                               ; preds = %31, %20, %38
  %45 = phi ptr [ %39, %38 ], [ null, %20 ], [ null, %31 ]
  %46 = phi ptr [ %42, %38 ], [ null, %20 ], [ null, %31 ]
  %47 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !161
  %49 = tail call fastcc ptr @expand_debug_expr(ptr noundef %48)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %1118, label %52

51:                                               ; preds = %20, %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2284, ptr noundef nonnull @.str.1) #22
  br label %52

52:                                               ; preds = %31, %20, %51, %44
  %53 = phi ptr [ null, %51 ], [ %45, %44 ], [ null, %20 ], [ null, %31 ]
  %54 = phi ptr [ null, %51 ], [ %46, %44 ], [ null, %20 ], [ null, %31 ]
  %55 = phi ptr [ null, %51 ], [ %49, %44 ], [ null, %20 ], [ null, %31 ]
  %56 = load i64, ptr %0, align 8
  %57 = trunc i64 %56 to i16
  switch i16 %57, label %1118 [
    i16 28, label %58
    i16 23, label %72
    i16 24, label %72
    i16 25, label %72
    i16 26, label %74
    i16 37, label %89
    i16 32, label %101
    i16 34, label %101
    i16 29, label %101
    i16 30, label %101
    i16 33, label %101
    i16 36, label %101
    i16 112, label %173
    i16 116, label %173
    i16 113, label %173
    i16 47, label %294
    i16 48, label %294
    i16 49, label %294
    i16 152, label %329
    i16 45, label %355
    i16 46, label %355
    i16 41, label %355
    i16 42, label %355
    i16 43, label %355
    i16 44, label %355
    i16 118, label %355
    i16 82, label %552
    i16 79, label %554
    i16 90, label %556
    i16 78, label %558
    i16 77, label %565
    i16 66, label %572
    i16 63, label %572
    i16 64, label %574
    i16 65, label %576
    i16 75, label %578
    i16 67, label %578
    i16 76, label %578
    i16 71, label %585
    i16 69, label %592
    i16 73, label %602
    i16 68, label %613
    i16 72, label %626
    i16 70, label %641
    i16 74, label %654
    i16 83, label %669
    i16 84, label %671
    i16 85, label %678
    i16 86, label %680
    i16 80, label %682
    i16 81, label %689
    i16 89, label %696
    i16 93, label %696
    i16 87, label %698
    i16 94, label %698
    i16 88, label %700
    i16 95, label %700
    i16 91, label %702
    i16 92, label %705
    i16 96, label %708
    i16 97, label %711
    i16 98, label %718
    i16 99, label %725
    i16 100, label %732
    i16 101, label %739
    i16 102, label %741
    i16 103, label %743
    i16 104, label %745
    i16 105, label %747
    i16 106, label %749
    i16 107, label %751
    i16 108, label %753
    i16 109, label %755
    i16 110, label %757
    i16 56, label %759
    i16 123, label %761
    i16 124, label %790
    i16 121, label %859
    i16 27, label %872
    i16 51, label %877
    i16 168, label %1092
    i16 141, label %960
    i16 169, label %1057
    i16 167, label %1021
  ]

58:                                               ; preds = %52
  %59 = tail call ptr @lookup_constant_def(ptr noundef %0) #22
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 2
  %63 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %62)
  %64 = add i64 %63, 1
  %65 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !161
  %67 = sext i32 %66 to i64
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %1118

69:                                               ; preds = %61
  %70 = tail call ptr @gen_rtx_fmt_s_stat(i32 noundef 34, i32 noundef 16, ptr noundef nonnull %62) #22
  %71 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %70) #22
  tail call void @set_mem_attributes(ptr noundef %71, ptr noundef %0, i32 noundef 0) #22
  br label %1118

72:                                               ; preds = %52, %52, %58, %52
  %73 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef %21, i32 noundef 4, ptr noundef null) #22
  br label %1118

74:                                               ; preds = %52
  %75 = zext i32 %21 to i64
  %76 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !161
  %78 = and i8 %77, -2
  %79 = icmp eq i8 %78, 10
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2316, ptr noundef nonnull @.str.1) #22
  br label %81

81:                                               ; preds = %74, %80
  %82 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !161
  %84 = tail call fastcc ptr @expand_debug_expr(ptr noundef %83)
  %85 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !161
  %87 = tail call fastcc ptr @expand_debug_expr(ptr noundef %86)
  %88 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %21, ptr noundef %84, ptr noundef %87) #22
  br label %1118

89:                                               ; preds = %52
  %90 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 37, i64 11), align 1, !tbaa !161
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !161
  br label %95

95:                                               ; preds = %92, %89
  %96 = phi ptr [ null, %89 ], [ %94, %92 ]
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %1118

98:                                               ; preds = %95
  %99 = tail call ptr @gen_rtx_fmt_0_stat(i32 noundef 2, i32 noundef %21) #22
  %100 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1
  store ptr %0, ptr %100, align 8, !tbaa !161
  tail call void @set_decl_rtl(ptr noundef %0, ptr noundef %99) #22
  br label %1118

101:                                              ; preds = %52, %52, %52, %52, %52, %52
  %102 = and i64 %56, 65535
  %103 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %102, i64 11
  %104 = load i8, ptr %103, align 1, !tbaa !161
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !161
  br label %109

109:                                              ; preds = %106, %101
  %110 = phi ptr [ null, %101 ], [ %108, %106 ]
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %153

112:                                              ; preds = %109
  %113 = icmp eq i64 %102, 32
  br i1 %113, label %114, label %1118

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %116 = load i64, ptr %115, align 8
  %117 = and i64 %116, 33554432
  %118 = icmp ne i64 %117, 0
  %119 = and i64 %56, 67108864
  %120 = icmp eq i64 %119, 0
  %121 = or i1 %120, %118
  br i1 %121, label %1118, label %122

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !161
  %125 = icmp eq ptr %124, null
  br i1 %125, label %1118, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 2
  %130 = icmp ne i32 %129, 0
  %131 = icmp eq i32 %21, 0
  %132 = select i1 %130, i1 true, i1 %131
  br i1 %132, label %1118, label %133

133:                                              ; preds = %126
  %134 = tail call ptr @make_decl_rtl_for_debug(ptr noundef %0) #22
  %135 = load i32, ptr %134, align 8
  %136 = and i32 %135, 65535
  %137 = icmp eq i32 %136, 43
  br i1 %137, label %138, label %1118

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !161
  %141 = load i32, ptr %140, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 45
  br i1 %143, label %144, label %1118

144:                                              ; preds = %138
  %145 = and i32 %141, 67108864
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.rtx_def, ptr %140, i64 0, i32 1, i32 0, i32 0, i64 2
  %149 = load ptr, ptr %148, align 8, !tbaa !161
  br label %150

150:                                              ; preds = %144, %147
  %151 = phi ptr [ %149, %147 ], [ null, %144 ]
  %152 = icmp eq ptr %151, %0
  br i1 %152, label %155, label %1118

153:                                              ; preds = %109
  %154 = tail call ptr @copy_rtx(ptr noundef nonnull %110) #22
  br label %155

155:                                              ; preds = %150, %153
  %156 = phi ptr [ %154, %153 ], [ %134, %150 ]
  %157 = load i32, ptr %156, align 8
  %158 = lshr i32 %157, 16
  %159 = and i32 %158, 255
  %160 = icmp eq i32 %159, 1
  %161 = icmp eq i32 %21, 1
  %162 = select i1 %160, i1 true, i1 %161
  br i1 %162, label %167, label %163

163:                                              ; preds = %155
  %164 = icmp ne i32 %21, 0
  %165 = icmp eq i32 %159, 0
  %166 = or i1 %164, %165
  br i1 %166, label %173, label %167

167:                                              ; preds = %163, %155
  %168 = and i32 %157, 65535
  %169 = icmp eq i32 %168, 43
  br i1 %169, label %171, label %170

170:                                              ; preds = %167
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2368, ptr noundef nonnull @.str.1) #22
  br label %171

171:                                              ; preds = %167, %170
  %172 = tail call ptr @adjust_address_1(ptr noundef nonnull %156, i32 noundef %21, i64 noundef 0, i32 noundef 0, i32 noundef 1) #22
  br label %1118

173:                                              ; preds = %52, %52, %1018, %163, %52
  %174 = phi ptr [ %1020, %1018 ], [ %55, %52 ], [ %156, %163 ], [ %55, %52 ], [ %55, %52 ]
  %175 = load i32, ptr %174, align 8
  %176 = lshr i32 %175, 16
  %177 = and i32 %176, 255
  %178 = icmp eq i32 %21, %177
  br i1 %178, label %1118, label %179

179:                                              ; preds = %173
  %180 = icmp eq i32 %177, 0
  br i1 %180, label %181, label %215

181:                                              ; preds = %179
  %182 = load i64, ptr %0, align 8
  %183 = and i64 %182, 65535
  %184 = icmp eq i64 %183, 141
  br i1 %184, label %185, label %197

185:                                              ; preds = %181
  %186 = load ptr, ptr %8, align 8, !tbaa !161
  %187 = load i64, ptr %186, align 8
  %188 = and i64 %187, 65535
  %189 = icmp eq i64 %188, 14
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = tail call i32 @vector_type_mode(ptr noundef nonnull %186) #22
  br label %212

192:                                              ; preds = %185
  %193 = getelementptr inbounds %struct.tree_type, ptr %186, i64 0, i32 6
  %194 = load i32, ptr %193, align 4
  %195 = lshr i32 %194, 16
  %196 = and i32 %195, 255
  br label %212

197:                                              ; preds = %181
  %198 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !161
  %200 = getelementptr inbounds %struct.tree_common, ptr %199, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !161
  %202 = load i64, ptr %201, align 8
  %203 = and i64 %202, 65535
  %204 = icmp eq i64 %203, 14
  br i1 %204, label %205, label %207

205:                                              ; preds = %197
  %206 = tail call i32 @vector_type_mode(ptr noundef nonnull %201) #22
  br label %212

207:                                              ; preds = %197
  %208 = getelementptr inbounds %struct.tree_type, ptr %201, i64 0, i32 6
  %209 = load i32, ptr %208, align 4
  %210 = lshr i32 %209, 16
  %211 = and i32 %210, 255
  br label %212

212:                                              ; preds = %205, %207, %190, %192
  %213 = phi i32 [ %191, %190 ], [ %196, %192 ], [ %206, %205 ], [ %211, %207 ]
  %214 = icmp eq i32 %21, %213
  br i1 %214, label %1118, label %215

215:                                              ; preds = %212, %179
  %216 = phi i32 [ %213, %212 ], [ %177, %179 ]
  %217 = zext i32 %21 to i64
  %218 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !161
  switch i8 %219, label %260 [
    i8 8, label %220
    i8 9, label %220
    i8 11, label %220
    i8 17, label %220
  ]

220:                                              ; preds = %215, %215, %215, %215
  %221 = zext i32 %216 to i64
  %222 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !161
  switch i8 %223, label %242 [
    i8 8, label %224
    i8 9, label %224
    i8 11, label %224
    i8 17, label %224
  ]

224:                                              ; preds = %220, %220, %220, %220
  %225 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %217
  %226 = load i8, ptr %225, align 1, !tbaa !161
  %227 = zext i8 %226 to i32
  %228 = shl nuw nsw i32 %227, 3
  %229 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %221
  %230 = load i8, ptr %229, align 1, !tbaa !161
  %231 = zext i8 %230 to i32
  %232 = shl nuw nsw i32 %231, 3
  %233 = icmp eq i32 %228, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %224
  %235 = tail call ptr @simplify_gen_subreg(i32 noundef %21, ptr noundef nonnull %174, i32 noundef %216, i32 noundef 0) #22
  br label %1118

236:                                              ; preds = %224
  %237 = icmp ult i32 %228, %232
  br i1 %237, label %238, label %240

238:                                              ; preds = %236
  %239 = tail call ptr @simplify_gen_unary(i32 noundef 102, i32 noundef %21, ptr noundef nonnull %174, i32 noundef %216) #22
  br label %1118

240:                                              ; preds = %236
  %241 = tail call ptr @simplify_gen_unary(i32 noundef 101, i32 noundef %21, ptr noundef nonnull %174, i32 noundef %216) #22
  br label %1118

242:                                              ; preds = %220
  switch i8 %219, label %260 [
    i8 8, label %243
    i8 9, label %243
    i8 11, label %243
    i8 17, label %243
  ]

243:                                              ; preds = %242, %242, %242, %242
  %244 = load i64, ptr %0, align 8
  %245 = and i64 %244, 65535
  %246 = icmp eq i64 %245, 141
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2406, ptr noundef nonnull @.str.1) #22
  br label %248

248:                                              ; preds = %243, %247
  %249 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %250 = load ptr, ptr %249, align 8, !tbaa !161
  %251 = getelementptr inbounds %struct.tree_common, ptr %250, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !161
  %253 = load i64, ptr %252, align 8
  %254 = and i64 %253, 2097152
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %248
  %257 = tail call ptr @simplify_gen_unary(i32 noundef 105, i32 noundef %21, ptr noundef nonnull %174, i32 noundef %216) #22
  br label %1118

258:                                              ; preds = %248
  %259 = tail call ptr @simplify_gen_unary(i32 noundef 103, i32 noundef %21, ptr noundef nonnull %174, i32 noundef %216) #22
  br label %1118

260:                                              ; preds = %215, %242
  %261 = zext i32 %216 to i64
  %262 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %261
  %263 = load i8, ptr %262, align 1, !tbaa !161
  switch i8 %263, label %271 [
    i8 8, label %264
    i8 9, label %264
    i8 11, label %264
    i8 17, label %264
  ]

264:                                              ; preds = %260, %260, %260, %260
  %265 = load i32, ptr %2, align 4, !tbaa !165
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %264
  %268 = tail call ptr @simplify_gen_unary(i32 noundef 106, i32 noundef %21, ptr noundef nonnull %174, i32 noundef %216) #22
  br label %1118

269:                                              ; preds = %264
  %270 = tail call ptr @simplify_gen_unary(i32 noundef 104, i32 noundef %21, ptr noundef nonnull %174, i32 noundef %216) #22
  br label %1118

271:                                              ; preds = %260
  %272 = load i32, ptr %174, align 8
  %273 = and i32 %272, 65535
  %274 = zext nneg i32 %273 to i64
  %275 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %274
  %276 = load i32, ptr %275, align 4, !tbaa !165
  %277 = icmp eq i32 %276, 9
  br i1 %277, label %284, label %278

278:                                              ; preds = %271
  %279 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %217
  %280 = load i8, ptr %279, align 1, !tbaa !161
  %281 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %261
  %282 = load i8, ptr %281, align 1, !tbaa !161
  %283 = icmp ugt i8 %280, %282
  br i1 %283, label %287, label %284

284:                                              ; preds = %278, %271
  %285 = tail call i32 @subreg_lowpart_offset(i32 noundef %21, i32 noundef %216) #22
  %286 = tail call ptr @simplify_gen_subreg(i32 noundef %21, ptr noundef nonnull %174, i32 noundef %216, i32 noundef %285) #22
  br label %1118

287:                                              ; preds = %278
  %288 = load i32, ptr %2, align 4, !tbaa !165
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %287
  %291 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 99, i32 noundef %21, ptr noundef nonnull %174) #22
  br label %1118

292:                                              ; preds = %287
  %293 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 98, i32 noundef %21, ptr noundef nonnull %174) #22
  br label %1118

294:                                              ; preds = %52, %52, %52
  %295 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %296 = load ptr, ptr %295, align 8, !tbaa !161
  %297 = tail call fastcc ptr @expand_debug_expr(ptr noundef %296)
  %298 = icmp eq ptr %297, null
  br i1 %298, label %1118, label %299

299:                                              ; preds = %294
  %300 = load ptr, ptr %8, align 8, !tbaa !161
  %301 = load i64, ptr %300, align 8
  %302 = trunc i64 %301 to i16
  switch i16 %302, label %311 [
    i16 10, label %303
    i16 12, label %303
  ]

303:                                              ; preds = %299, %299
  %304 = getelementptr inbounds %struct.tree_common, ptr %300, i64 0, i32 2
  %305 = load ptr, ptr %304, align 8, !tbaa !161
  %306 = load i64, ptr %305, align 8
  %307 = lshr i64 %306, 56
  %308 = trunc i64 %307 to i8
  %309 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !648
  %310 = tail call i32 %309(i8 noundef zeroext %308) #22
  br label %311

311:                                              ; preds = %299, %303
  %312 = phi i32 [ %310, %303 ], [ 16, %299 ]
  %313 = phi i8 [ %308, %303 ], [ 0, %299 ]
  %314 = load i64, ptr %0, align 8
  %315 = and i64 %314, 65535
  %316 = icmp eq i64 %315, 48
  br i1 %316, label %317, label %326

317:                                              ; preds = %311
  %318 = load ptr, ptr %8, align 8, !tbaa !161
  %319 = getelementptr inbounds %struct.tree_type, ptr %318, i64 0, i32 7
  %320 = load i32, ptr %319, align 8, !tbaa !161
  %321 = lshr i32 %320, 3
  %322 = sub nsw i32 0, %321
  %323 = sext i32 %322 to i64
  %324 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %323) #22
  %325 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef %312, ptr noundef nonnull %297, ptr noundef %324) #22
  br label %326

326:                                              ; preds = %317, %311
  %327 = phi ptr [ %325, %317 ], [ %297, %311 ]
  %328 = tail call ptr @gen_rtx_MEM(i32 noundef %21, ptr noundef %327) #22
  tail call void @set_mem_attributes(ptr noundef %328, ptr noundef %0, i32 noundef 0) #22
  tail call void @set_mem_addr_space(ptr noundef %328, i8 noundef zeroext %313) #22
  br label %1118

329:                                              ; preds = %52
  %330 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %331 = load ptr, ptr %330, align 8, !tbaa !161
  %332 = icmp eq ptr %331, null
  br i1 %332, label %343, label %333

333:                                              ; preds = %329
  %334 = load i64, ptr %331, align 8
  %335 = and i64 %334, 65535
  %336 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %335, i64 11
  %337 = load i8, ptr %336, align 1, !tbaa !161
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %1118, label %339

339:                                              ; preds = %333
  %340 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %331, i64 0, i32 1
  %341 = load ptr, ptr %340, align 8, !tbaa !161
  %342 = icmp eq ptr %341, null
  br i1 %342, label %1118, label %343

343:                                              ; preds = %339, %329
  %344 = load ptr, ptr %8, align 8, !tbaa !161
  %345 = tail call ptr @build_pointer_type(ptr noundef %344) #22
  %346 = tail call ptr @tree_mem_ref_addr(ptr noundef %345, ptr noundef %0) #22
  %347 = tail call fastcc ptr @expand_debug_expr(ptr noundef %346)
  %348 = icmp eq ptr %347, null
  br i1 %348, label %1118, label %349

349:                                              ; preds = %343
  %350 = load ptr, ptr %8, align 8, !tbaa !161
  %351 = load i64, ptr %350, align 8
  %352 = lshr i64 %351, 56
  %353 = trunc i64 %352 to i8
  %354 = tail call ptr @gen_rtx_MEM(i32 noundef %21, ptr noundef nonnull %347) #22
  tail call void @set_mem_attributes(ptr noundef %354, ptr noundef %0, i32 noundef 0) #22
  tail call void @set_mem_addr_space(ptr noundef %354, i8 noundef zeroext %353) #22
  br label %1118

355:                                              ; preds = %52, %52, %52, %52, %52, %52, %52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 0, ptr %7, align 4, !tbaa !165
  %356 = call ptr @get_inner_reference(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %7, i8 noundef zeroext 0) #22
  %357 = load i64, ptr %4, align 8, !tbaa !174
  %358 = icmp eq i64 %357, 0
  br i1 %358, label %550, label %359

359:                                              ; preds = %355
  %360 = call fastcc ptr @expand_debug_expr(ptr noundef %356)
  %361 = icmp eq ptr %360, null
  br i1 %361, label %550, label %362

362:                                              ; preds = %359
  %363 = load ptr, ptr %6, align 8, !tbaa !150
  %364 = icmp eq ptr %363, null
  br i1 %364, label %411, label %365

365:                                              ; preds = %362
  %366 = load i32, ptr %360, align 8
  %367 = and i32 %366, 65535
  %368 = icmp eq i32 %367, 43
  br i1 %368, label %369, label %408

369:                                              ; preds = %365
  %370 = getelementptr inbounds %struct.rtx_def, ptr %360, i64 0, i32 1
  %371 = load ptr, ptr %370, align 8, !tbaa !161
  %372 = load i32, ptr %371, align 8
  %373 = lshr i32 %372, 16
  %374 = and i32 %373, 255
  %375 = icmp eq i32 %374, 0
  %376 = select i1 %375, i32 16, i32 %374
  %377 = call fastcc ptr @expand_debug_expr(ptr noundef nonnull %363)
  %378 = icmp eq ptr %377, null
  br i1 %378, label %408, label %379

379:                                              ; preds = %369
  %380 = load i32, ptr %377, align 8
  %381 = lshr i32 %380, 16
  %382 = and i32 %381, 255
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %398

384:                                              ; preds = %379
  %385 = load ptr, ptr %6, align 8, !tbaa !150
  %386 = getelementptr inbounds %struct.tree_common, ptr %385, i64 0, i32 2
  %387 = load ptr, ptr %386, align 8, !tbaa !161
  %388 = load i64, ptr %387, align 8
  %389 = and i64 %388, 65535
  %390 = icmp eq i64 %389, 14
  br i1 %390, label %391, label %393

391:                                              ; preds = %384
  %392 = call i32 @vector_type_mode(ptr noundef nonnull %387) #22
  br label %398

393:                                              ; preds = %384
  %394 = getelementptr inbounds %struct.tree_type, ptr %387, i64 0, i32 6
  %395 = load i32, ptr %394, align 4
  %396 = lshr i32 %395, 16
  %397 = and i32 %396, 255
  br label %398

398:                                              ; preds = %391, %393, %379
  %399 = phi i32 [ %382, %379 ], [ %392, %391 ], [ %397, %393 ]
  %400 = icmp eq i32 %376, %399
  br i1 %400, label %404, label %401

401:                                              ; preds = %398
  %402 = call i32 @subreg_lowpart_offset(i32 noundef %376, i32 noundef %399) #22
  %403 = call ptr @simplify_gen_subreg(i32 noundef %376, ptr noundef nonnull %377, i32 noundef %399, i32 noundef %402) #22
  br label %404

404:                                              ; preds = %401, %398
  %405 = phi ptr [ %403, %401 ], [ %377, %398 ]
  %406 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %376, ptr noundef nonnull %371, ptr noundef %405) #22
  %407 = call ptr @gen_rtx_MEM(i32 noundef %21, ptr noundef %406) #22
  br label %408

408:                                              ; preds = %369, %365, %404
  %409 = phi i1 [ true, %404 ], [ false, %365 ], [ false, %369 ]
  %410 = phi ptr [ %407, %404 ], [ %360, %365 ], [ %371, %369 ]
  br i1 %409, label %411, label %550

411:                                              ; preds = %408, %362
  %412 = phi ptr [ %410, %408 ], [ %360, %362 ]
  %413 = load i32, ptr %412, align 8
  %414 = and i32 %413, 65535
  %415 = icmp eq i32 %414, 43
  br i1 %415, label %416, label %471

416:                                              ; preds = %411
  %417 = load i32, ptr %3, align 4, !tbaa !165
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %423

419:                                              ; preds = %416
  %420 = load i64, ptr %4, align 8, !tbaa !174
  %421 = trunc i64 %420 to i32
  %422 = call i32 @smallest_mode_for_size(i32 noundef %421, i32 noundef 2) #22
  store i32 %422, ptr %3, align 4, !tbaa !165
  br label %423

423:                                              ; preds = %419, %416
  %424 = load i64, ptr %5, align 8, !tbaa !174
  %425 = icmp sgt i64 %424, 7
  br i1 %425, label %426, label %432

426:                                              ; preds = %423
  %427 = load i32, ptr %3, align 4, !tbaa !165
  %428 = lshr i64 %424, 3
  %429 = call ptr @adjust_address_1(ptr noundef nonnull %412, i32 noundef %427, i64 noundef %428, i32 noundef 0, i32 noundef 1) #22
  %430 = load i64, ptr %5, align 8, !tbaa !174
  %431 = srem i64 %430, 8
  store i64 %431, ptr %5, align 8, !tbaa !174
  br label %464

432:                                              ; preds = %423
  %433 = icmp slt i64 %424, 0
  br i1 %433, label %434, label %442

434:                                              ; preds = %432
  %435 = sub i64 7, %424
  %436 = sdiv i64 %435, 8
  %437 = load i32, ptr %3, align 4, !tbaa !165
  %438 = call ptr @adjust_address_1(ptr noundef nonnull %412, i32 noundef %437, i64 noundef %436, i32 noundef 0, i32 noundef 1) #22
  %439 = shl nsw i64 %436, 3
  %440 = load i64, ptr %5, align 8, !tbaa !174
  %441 = add nsw i64 %440, %439
  store i64 %441, ptr %5, align 8, !tbaa !174
  br label %464

442:                                              ; preds = %432
  %443 = icmp eq i64 %424, 0
  br i1 %443, label %444, label %454

444:                                              ; preds = %442
  %445 = load i64, ptr %4, align 8, !tbaa !174
  %446 = zext i32 %21 to i64
  %447 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %446
  %448 = load i8, ptr %447, align 1, !tbaa !161
  %449 = zext i8 %448 to i64
  %450 = shl nuw nsw i64 %449, 3
  %451 = icmp eq i64 %445, %450
  br i1 %451, label %452, label %454

452:                                              ; preds = %444
  %453 = call ptr @adjust_address_1(ptr noundef nonnull %412, i32 noundef %21, i64 noundef 0, i32 noundef 0, i32 noundef 1) #22
  br label %464

454:                                              ; preds = %444, %442
  %455 = load i32, ptr %412, align 8
  %456 = lshr i32 %455, 16
  %457 = and i32 %456, 255
  %458 = load i32, ptr %3, align 4, !tbaa !165
  %459 = icmp eq i32 %457, %458
  br i1 %459, label %462, label %460

460:                                              ; preds = %454
  %461 = call ptr @adjust_address_1(ptr noundef nonnull %412, i32 noundef %458, i64 noundef 0, i32 noundef 0, i32 noundef 1) #22
  br label %464

462:                                              ; preds = %454
  %463 = call ptr @copy_rtx(ptr noundef nonnull %412) #22
  br label %464

464:                                              ; preds = %434, %460, %462, %452, %426
  %465 = phi ptr [ %429, %426 ], [ %438, %434 ], [ %453, %452 ], [ %461, %460 ], [ %463, %462 ]
  %466 = icmp eq ptr %465, %360
  br i1 %466, label %467, label %469

467:                                              ; preds = %464
  %468 = call ptr @shallow_copy_rtx_stat(ptr noundef %465) #22
  br label %469

469:                                              ; preds = %467, %464
  %470 = phi ptr [ %468, %467 ], [ %465, %464 ]
  call void @set_mem_attributes(ptr noundef %470, ptr noundef %0, i32 noundef 0) #22
  br label %471

471:                                              ; preds = %469, %411
  %472 = phi ptr [ %470, %469 ], [ %412, %411 ]
  %473 = load i64, ptr %5, align 8, !tbaa !174
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %475, label %480

475:                                              ; preds = %471
  %476 = load i32, ptr %472, align 8
  %477 = lshr i32 %476, 16
  %478 = and i32 %477, 255
  %479 = icmp eq i32 %21, %478
  br i1 %479, label %550, label %480

480:                                              ; preds = %475, %471
  %481 = icmp slt i64 %473, 0
  br i1 %481, label %550, label %482

482:                                              ; preds = %480
  %483 = and i64 %473, 7
  %484 = icmp eq i64 %483, 0
  br i1 %484, label %485, label %525

485:                                              ; preds = %482
  %486 = load i64, ptr %4, align 8, !tbaa !174
  %487 = load i32, ptr %3, align 4, !tbaa !165
  %488 = zext i32 %487 to i64
  %489 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %488
  %490 = load i8, ptr %489, align 1, !tbaa !161
  %491 = zext i8 %490 to i64
  %492 = shl nuw nsw i64 %491, 3
  %493 = icmp eq i64 %486, %492
  br i1 %493, label %494, label %525

494:                                              ; preds = %485
  %495 = load i32, ptr %472, align 8
  %496 = lshr i32 %495, 16
  %497 = and i32 %496, 255
  %498 = trunc i32 %496 to i8
  switch i8 %498, label %501 [
    i8 1, label %499
    i8 0, label %500
  ]

499:                                              ; preds = %494
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2575, ptr noundef nonnull @.str.1) #22
  br label %501

500:                                              ; preds = %494
  br label %501

501:                                              ; preds = %499, %494, %500
  %502 = phi i32 [ %487, %500 ], [ %497, %499 ], [ %497, %494 ]
  %503 = load i64, ptr %5, align 8, !tbaa !174
  %504 = zext i32 %502 to i64
  %505 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %504
  %506 = load i8, ptr %505, align 1, !tbaa !161
  %507 = zext i8 %506 to i64
  %508 = shl nuw nsw i64 %507, 3
  %509 = icmp slt i64 %503, %508
  br i1 %509, label %510, label %522

510:                                              ; preds = %501
  %511 = zext i32 %21 to i64
  %512 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %511
  %513 = load i8, ptr %512, align 1, !tbaa !161
  %514 = zext i8 %513 to i64
  %515 = shl nuw nsw i64 %514, 3
  %516 = srem i64 %503, %515
  %517 = icmp eq i64 %516, 0
  br i1 %517, label %518, label %522

518:                                              ; preds = %510
  %519 = sdiv i64 %503, 8
  %520 = trunc i64 %519 to i32
  %521 = call ptr @simplify_gen_subreg(i32 noundef %21, ptr noundef nonnull %472, i32 noundef %502, i32 noundef %520) #22
  br label %522

522:                                              ; preds = %510, %501, %518
  %523 = phi i1 [ false, %518 ], [ false, %501 ], [ true, %510 ]
  %524 = phi ptr [ %521, %518 ], [ null, %501 ], [ null, %510 ]
  br i1 %523, label %525, label %550

525:                                              ; preds = %522, %485, %482
  %526 = load i32, ptr %472, align 8
  %527 = lshr i32 %526, 16
  %528 = and i32 %527, 255
  %529 = zext nneg i32 %528 to i64
  %530 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %529
  %531 = load i8, ptr %530, align 1, !tbaa !161
  %532 = and i8 %531, -2
  %533 = icmp eq i8 %532, 2
  br i1 %533, label %534, label %540

534:                                              ; preds = %525
  %535 = load ptr, ptr %8, align 8, !tbaa !161
  %536 = load i64, ptr %535, align 8
  %537 = and i64 %536, 2097152
  %538 = icmp eq i64 %537, 0
  %539 = select i1 %538, i32 120, i32 119
  br label %540

540:                                              ; preds = %525, %534
  %541 = phi i32 [ %539, %534 ], [ 120, %525 ]
  %542 = icmp eq i32 %528, 0
  %543 = load i32, ptr %3, align 4
  %544 = select i1 %542, i32 %543, i32 %528
  %545 = load i64, ptr %4, align 8, !tbaa !174
  %546 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %545) #22
  %547 = load i64, ptr %5, align 8, !tbaa !174
  %548 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %547) #22
  %549 = call ptr @simplify_gen_ternary(i32 noundef %541, i32 noundef %21, i32 noundef %544, ptr noundef nonnull %472, ptr noundef %546, ptr noundef %548) #22
  br label %550

550:                                              ; preds = %480, %475, %359, %355, %408, %522, %540
  %551 = phi ptr [ %549, %540 ], [ %524, %522 ], [ null, %408 ], [ null, %355 ], [ null, %359 ], [ %472, %475 ], [ null, %480 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  br label %1118

552:                                              ; preds = %52
  %553 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 111, i32 noundef %21, ptr noundef %55) #22
  br label %1118

554:                                              ; preds = %52
  %555 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %21, ptr noundef %55) #22
  br label %1118

556:                                              ; preds = %52
  %557 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %21, ptr noundef %55) #22
  br label %1118

558:                                              ; preds = %52
  %559 = load i32, ptr %2, align 4, !tbaa !165
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %563, label %561

561:                                              ; preds = %558
  %562 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 105, i32 noundef %21, ptr noundef %55) #22
  br label %1118

563:                                              ; preds = %558
  %564 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 103, i32 noundef %21, ptr noundef %55) #22
  br label %1118

565:                                              ; preds = %52
  %566 = load i32, ptr %2, align 4, !tbaa !165
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %570, label %568

568:                                              ; preds = %565
  %569 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 106, i32 noundef %21, ptr noundef %55) #22
  br label %1118

570:                                              ; preds = %565
  %571 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 104, i32 noundef %21, ptr noundef %55) #22
  br label %1118

572:                                              ; preds = %52, %52
  %573 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

574:                                              ; preds = %52
  %575 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

576:                                              ; preds = %52
  %577 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

578:                                              ; preds = %52, %52, %52
  %579 = load i32, ptr %2, align 4, !tbaa !165
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %583, label %581

581:                                              ; preds = %578
  %582 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 59, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

583:                                              ; preds = %578
  %584 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

585:                                              ; preds = %52
  %586 = load i32, ptr %2, align 4, !tbaa !165
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %590, label %588

588:                                              ; preds = %585
  %589 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 60, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

590:                                              ; preds = %585
  %591 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 58, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

592:                                              ; preds = %52
  %593 = load i32, ptr %2, align 4, !tbaa !165
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %597, label %595

595:                                              ; preds = %592
  %596 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 59, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

597:                                              ; preds = %592
  %598 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  %599 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 58, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  %600 = tail call fastcc ptr @floor_sdiv_adjust(i32 noundef %21, ptr noundef %599, ptr noundef %54)
  %601 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %21, ptr noundef %598, ptr noundef %600) #22
  br label %1118

602:                                              ; preds = %52
  %603 = load i32, ptr %2, align 4, !tbaa !165
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %607, label %605

605:                                              ; preds = %602
  %606 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 60, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

607:                                              ; preds = %602
  %608 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 58, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  %609 = tail call fastcc ptr @floor_sdiv_adjust(i32 noundef %21, ptr noundef %608, ptr noundef %54)
  %610 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %21, ptr noundef %609, ptr noundef %54) #22
  %611 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %21, ptr noundef %610) #22
  %612 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %21, ptr noundef %608, ptr noundef %611) #22
  br label %1118

613:                                              ; preds = %52
  %614 = load i32, ptr %2, align 4, !tbaa !165
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %621, label %616

616:                                              ; preds = %613
  %617 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 59, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  %618 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 60, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  %619 = tail call fastcc ptr @ceil_udiv_adjust(i32 noundef %21, ptr noundef %618)
  %620 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %21, ptr noundef %617, ptr noundef %619) #22
  br label %1118

621:                                              ; preds = %613
  %622 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  %623 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 58, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  %624 = tail call fastcc ptr @ceil_sdiv_adjust(i32 noundef %21, ptr noundef %623, ptr noundef %54)
  %625 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %21, ptr noundef %622, ptr noundef %624) #22
  br label %1118

626:                                              ; preds = %52
  %627 = load i32, ptr %2, align 4, !tbaa !165
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %635, label %629

629:                                              ; preds = %626
  %630 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 60, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  %631 = tail call fastcc ptr @ceil_udiv_adjust(i32 noundef %21, ptr noundef %630)
  %632 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %21, ptr noundef %631, ptr noundef %54) #22
  %633 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %21, ptr noundef %632) #22
  %634 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %21, ptr noundef %630, ptr noundef %633) #22
  br label %1118

635:                                              ; preds = %626
  %636 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 58, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  %637 = tail call fastcc ptr @ceil_sdiv_adjust(i32 noundef %21, ptr noundef %636, ptr noundef %54)
  %638 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %21, ptr noundef %637, ptr noundef %54) #22
  %639 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %21, ptr noundef %638) #22
  %640 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %21, ptr noundef %636, ptr noundef %639) #22
  br label %1118

641:                                              ; preds = %52
  %642 = load i32, ptr %2, align 4, !tbaa !165
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %649, label %644

644:                                              ; preds = %641
  %645 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 59, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  %646 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 60, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  %647 = tail call fastcc ptr @round_udiv_adjust(i32 noundef %21, ptr noundef %646, ptr noundef %54)
  %648 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %21, ptr noundef %645, ptr noundef %647) #22
  br label %1118

649:                                              ; preds = %641
  %650 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  %651 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 58, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  %652 = tail call fastcc ptr @round_sdiv_adjust(i32 noundef %21, ptr noundef %651, ptr noundef %54)
  %653 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %21, ptr noundef %650, ptr noundef %652) #22
  br label %1118

654:                                              ; preds = %52
  %655 = load i32, ptr %2, align 4, !tbaa !165
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %663, label %657

657:                                              ; preds = %654
  %658 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 60, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  %659 = tail call fastcc ptr @round_udiv_adjust(i32 noundef %21, ptr noundef %658, ptr noundef %54)
  %660 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %21, ptr noundef %659, ptr noundef %54) #22
  %661 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %21, ptr noundef %660) #22
  %662 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %21, ptr noundef %658, ptr noundef %661) #22
  br label %1118

663:                                              ; preds = %654
  %664 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 58, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  %665 = tail call fastcc ptr @round_sdiv_adjust(i32 noundef %21, ptr noundef %664, ptr noundef %54)
  %666 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %21, ptr noundef %665, ptr noundef %54) #22
  %667 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %21, ptr noundef %666) #22
  %668 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %21, ptr noundef %664, ptr noundef %667) #22
  br label %1118

669:                                              ; preds = %52
  %670 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 65, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

671:                                              ; preds = %52
  %672 = load i32, ptr %2, align 4, !tbaa !165
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %676, label %674

674:                                              ; preds = %671
  %675 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 68, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

676:                                              ; preds = %671
  %677 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 67, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

678:                                              ; preds = %52
  %679 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 66, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

680:                                              ; preds = %52
  %681 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 69, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

682:                                              ; preds = %52
  %683 = load i32, ptr %2, align 4, !tbaa !165
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %687, label %685

685:                                              ; preds = %682
  %686 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 72, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

687:                                              ; preds = %682
  %688 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 70, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

689:                                              ; preds = %52
  %690 = load i32, ptr %2, align 4, !tbaa !165
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %694, label %692

692:                                              ; preds = %689
  %693 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 73, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

694:                                              ; preds = %689
  %695 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 71, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

696:                                              ; preds = %52, %52
  %697 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

698:                                              ; preds = %52, %52
  %699 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 62, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

700:                                              ; preds = %52, %52
  %701 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 63, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

702:                                              ; preds = %52
  %703 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %704 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %21, ptr noundef %55, ptr noundef %54, ptr noundef %703) #22
  br label %1118

705:                                              ; preds = %52
  %706 = load ptr, ptr @const_true_rtx, align 8, !tbaa !150
  %707 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %21, ptr noundef %55, ptr noundef %706, ptr noundef %54) #22
  br label %1118

708:                                              ; preds = %52
  %709 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %710 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 81, i32 noundef %21, ptr noundef %55, ptr noundef %709) #22
  br label %1118

711:                                              ; preds = %52
  %712 = load i32, ptr %2, align 4, !tbaa !165
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %716, label %714

714:                                              ; preds = %711
  %715 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 89, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

716:                                              ; preds = %711
  %717 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 85, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

718:                                              ; preds = %52
  %719 = load i32, ptr %2, align 4, !tbaa !165
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %723, label %721

721:                                              ; preds = %718
  %722 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 88, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

723:                                              ; preds = %718
  %724 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 84, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

725:                                              ; preds = %52
  %726 = load i32, ptr %2, align 4, !tbaa !165
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %730, label %728

728:                                              ; preds = %725
  %729 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 87, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

730:                                              ; preds = %725
  %731 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 83, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

732:                                              ; preds = %52
  %733 = load i32, ptr %2, align 4, !tbaa !165
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %737, label %735

735:                                              ; preds = %732
  %736 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 86, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

737:                                              ; preds = %732
  %738 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 82, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

739:                                              ; preds = %52
  %740 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 81, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

741:                                              ; preds = %52
  %742 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 80, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

743:                                              ; preds = %52
  %744 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 90, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

745:                                              ; preds = %52
  %746 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 91, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

747:                                              ; preds = %52
  %748 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 96, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

749:                                              ; preds = %52
  %750 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 95, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

751:                                              ; preds = %52
  %752 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 94, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

753:                                              ; preds = %52
  %754 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 93, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

755:                                              ; preds = %52
  %756 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 92, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

757:                                              ; preds = %52
  %758 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 97, i32 noundef %21, ptr noundef %55, ptr noundef %54) #22
  br label %1118

759:                                              ; preds = %52
  %760 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %21, ptr noundef %55, ptr noundef %54, ptr noundef %53) #22
  br label %1118

761:                                              ; preds = %52
  %762 = zext i32 %21 to i64
  %763 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %762
  %764 = load i8, ptr %763, align 1, !tbaa !161
  %765 = and i8 %764, -2
  %766 = icmp eq i8 %765, 10
  br i1 %766, label %768, label %767

767:                                              ; preds = %761
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2840, ptr noundef nonnull @.str.1) #22
  br label %768

768:                                              ; preds = %761, %767
  %769 = load i32, ptr %55, align 8
  %770 = and i32 %769, 16711680
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %772, label %777

772:                                              ; preds = %768
  %773 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %762
  %774 = load i8, ptr %773, align 1, !tbaa !161
  %775 = zext i8 %774 to i32
  %776 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %775, ptr noundef %55) #22
  br label %777

777:                                              ; preds = %772, %768
  %778 = phi ptr [ %776, %772 ], [ %55, %768 ]
  %779 = load i32, ptr %54, align 8
  %780 = and i32 %779, 16711680
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %782, label %787

782:                                              ; preds = %777
  %783 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %762
  %784 = load i8, ptr %783, align 1, !tbaa !161
  %785 = zext i8 %784 to i32
  %786 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %785, ptr noundef %54) #22
  br label %787

787:                                              ; preds = %782, %777
  %788 = phi ptr [ %786, %782 ], [ %54, %777 ]
  %789 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %21, ptr noundef %778, ptr noundef %788) #22
  br label %1118

790:                                              ; preds = %52
  %791 = load i32, ptr %55, align 8
  %792 = and i32 %791, 65535
  %793 = icmp eq i32 %792, 41
  br i1 %793, label %794, label %805

794:                                              ; preds = %790
  %795 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %796 = load ptr, ptr %795, align 8, !tbaa !161
  %797 = zext i32 %21 to i64
  %798 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %797
  %799 = load i8, ptr %798, align 1, !tbaa !161
  %800 = zext i8 %799 to i32
  %801 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 0, i64 1
  %802 = load ptr, ptr %801, align 8, !tbaa !161
  %803 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %800, ptr noundef %802) #22
  %804 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %21, ptr noundef %796, ptr noundef %803) #22
  br label %1118

805:                                              ; preds = %790
  %806 = zext i32 %21 to i64
  %807 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %806
  %808 = load i8, ptr %807, align 1, !tbaa !161
  %809 = zext i8 %808 to i32
  %810 = icmp eq i32 %792, 43
  br i1 %810, label %811, label %818

811:                                              ; preds = %805
  %812 = tail call ptr @adjust_address_1(ptr noundef %55, i32 noundef %809, i64 noundef 0, i32 noundef 0, i32 noundef 1) #22
  %813 = zext i8 %808 to i64
  %814 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %813
  %815 = load i8, ptr %814, align 1, !tbaa !161
  %816 = zext i8 %815 to i64
  %817 = tail call ptr @adjust_address_1(ptr noundef %55, i32 noundef %809, i64 noundef %816, i32 noundef 0, i32 noundef 1) #22
  br label %854

818:                                              ; preds = %805
  %819 = tail call i32 @int_mode_for_mode(i32 noundef %21) #22
  %820 = tail call i32 @int_mode_for_mode(i32 noundef %809) #22
  %821 = icmp ne i32 %819, 1
  %822 = icmp ne i32 %820, 1
  %823 = select i1 %821, i1 %822, i1 false
  br i1 %823, label %824, label %851

824:                                              ; preds = %818
  %825 = zext i32 %820 to i64
  %826 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %825
  %827 = load i8, ptr %826, align 1, !tbaa !161
  %828 = zext i8 %827 to i64
  %829 = shl nuw nsw i64 %828, 3
  %830 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %829) #22
  %831 = icmp eq i32 %21, %819
  br i1 %831, label %834, label %832

832:                                              ; preds = %824
  %833 = tail call ptr @gen_rtx_SUBREG(i32 noundef %819, ptr noundef %55, i32 noundef 0) #22
  br label %834

834:                                              ; preds = %832, %824
  %835 = phi ptr [ %833, %832 ], [ %55, %824 ]
  %836 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %837 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 120, i32 noundef %820, ptr noundef %835, ptr noundef %830, ptr noundef %836) #22
  %838 = icmp eq i32 %820, %809
  br i1 %838, label %841, label %839

839:                                              ; preds = %834
  %840 = tail call ptr @gen_rtx_SUBREG(i32 noundef %809, ptr noundef %837, i32 noundef 0) #22
  br label %841

841:                                              ; preds = %839, %834
  %842 = phi ptr [ %840, %839 ], [ %837, %834 ]
  %843 = tail call ptr @copy_rtx(ptr noundef %55) #22
  br i1 %831, label %846, label %844

844:                                              ; preds = %841
  %845 = tail call ptr @gen_rtx_SUBREG(i32 noundef %819, ptr noundef %843, i32 noundef 0) #22
  br label %846

846:                                              ; preds = %844, %841
  %847 = phi ptr [ %845, %844 ], [ %843, %841 ]
  %848 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 120, i32 noundef %820, ptr noundef %847, ptr noundef %830, ptr noundef %830) #22
  br i1 %838, label %851, label %849

849:                                              ; preds = %846
  %850 = tail call ptr @gen_rtx_SUBREG(i32 noundef %809, ptr noundef %848, i32 noundef 0) #22
  br label %851

851:                                              ; preds = %846, %849, %818
  %852 = phi ptr [ undef, %818 ], [ %842, %849 ], [ %842, %846 ]
  %853 = phi ptr [ undef, %818 ], [ %850, %849 ], [ %848, %846 ]
  br i1 %823, label %854, label %1118

854:                                              ; preds = %851, %811
  %855 = phi ptr [ %812, %811 ], [ %852, %851 ]
  %856 = phi ptr [ %817, %811 ], [ %853, %851 ]
  %857 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %809, ptr noundef %856) #22
  %858 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %21, ptr noundef %855, ptr noundef %857) #22
  br label %1118

859:                                              ; preds = %52
  %860 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %861 = load ptr, ptr %860, align 8, !tbaa !161
  %862 = tail call fastcc ptr @expand_debug_expr(ptr noundef %861)
  %863 = icmp eq ptr %862, null
  br i1 %863, label %1118, label %864

864:                                              ; preds = %859
  %865 = load i32, ptr %862, align 8
  %866 = and i32 %865, 65535
  %867 = icmp eq i32 %866, 43
  br i1 %867, label %868, label %1118

868:                                              ; preds = %864
  %869 = getelementptr inbounds %struct.rtx_def, ptr %862, i64 0, i32 1
  %870 = load ptr, ptr %869, align 8, !tbaa !161
  %871 = tail call fastcc ptr @convert_debug_memory_address(i32 noundef %21, ptr noundef %870)
  br label %1118

872:                                              ; preds = %52
  %873 = load ptr, ptr %8, align 8, !tbaa !161
  %874 = getelementptr inbounds %struct.tree_vector, ptr %0, i64 0, i32 1
  %875 = load ptr, ptr %874, align 8, !tbaa !161
  %876 = tail call ptr @build_constructor_from_list(ptr noundef %873, ptr noundef %875) #22
  br label %877

877:                                              ; preds = %52, %872
  %878 = phi ptr [ %0, %52 ], [ %876, %872 ]
  %879 = getelementptr inbounds %struct.tree_common, ptr %878, i64 0, i32 2
  %880 = load ptr, ptr %879, align 8, !tbaa !161
  %881 = load i64, ptr %880, align 8
  %882 = and i64 %881, 65535
  %883 = icmp eq i64 %882, 14
  br i1 %883, label %884, label %1118

884:                                              ; preds = %877
  %885 = getelementptr inbounds %struct.tree_type, ptr %880, i64 0, i32 6
  %886 = load i32, ptr %885, align 4
  %887 = and i32 %886, 1023
  %888 = zext nneg i32 %887 to i64
  %889 = shl nuw i64 1, %888
  %890 = trunc i64 %889 to i32
  %891 = tail call ptr @rtvec_alloc(i32 noundef %890) #22
  %892 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 42, i32 noundef %21, ptr noundef %891) #22
  %893 = getelementptr inbounds %struct.tree_constructor, ptr %878, i64 0, i32 1
  %894 = getelementptr inbounds %struct.rtx_def, ptr %892, i64 0, i32 1
  br label %895

895:                                              ; preds = %914, %884
  %896 = phi i64 [ %917, %914 ], [ 0, %884 ]
  %897 = phi ptr [ %910, %914 ], [ undef, %884 ]
  %898 = load ptr, ptr %893, align 8, !tbaa !161
  %899 = icmp eq ptr %898, null
  br i1 %899, label %902, label %900

900:                                              ; preds = %895
  %901 = load i32, ptr %898, align 8, !tbaa !649
  br label %902

902:                                              ; preds = %895, %900
  %903 = phi i32 [ %901, %900 ], [ 0, %895 ]
  %904 = zext i32 %903 to i64
  %905 = icmp ult i64 %896, %904
  br i1 %905, label %906, label %909

906:                                              ; preds = %902
  %907 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %898, i64 0, i32 2, i64 %896, i32 1
  %908 = load ptr, ptr %907, align 8, !tbaa !651
  br label %909

909:                                              ; preds = %902, %906
  %910 = phi ptr [ %897, %902 ], [ %908, %906 ]
  br i1 %905, label %911, label %918

911:                                              ; preds = %909
  %912 = tail call fastcc ptr @expand_debug_expr(ptr noundef %910)
  %913 = icmp eq ptr %912, null
  br i1 %913, label %1118, label %914

914:                                              ; preds = %911
  %915 = load ptr, ptr %894, align 8, !tbaa !161
  %916 = getelementptr inbounds %struct.rtvec_def, ptr %915, i64 0, i32 1, i64 %896
  store ptr %912, ptr %916, align 8, !tbaa !150
  %917 = add nuw nsw i64 %896, 1
  br label %895, !llvm.loop !653

918:                                              ; preds = %909
  %919 = trunc i64 %896 to i32
  %920 = and i64 %896, 4294967295
  %921 = load ptr, ptr %879, align 8, !tbaa !161
  %922 = getelementptr inbounds %struct.tree_type, ptr %921, i64 0, i32 6
  %923 = load i32, ptr %922, align 4
  %924 = and i32 %923, 1023
  %925 = zext nneg i32 %924 to i64
  %926 = lshr i64 %920, %925
  %927 = icmp eq i64 %926, 0
  br i1 %927, label %928, label %1118

928:                                              ; preds = %918
  %929 = getelementptr inbounds %struct.tree_common, ptr %921, i64 0, i32 2
  %930 = load ptr, ptr %929, align 8, !tbaa !161
  %931 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !150
  %932 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %930, ptr noundef %931) #22
  %933 = tail call fastcc ptr @expand_debug_expr(ptr noundef %932)
  %934 = icmp eq ptr %933, null
  br i1 %934, label %1118, label %935

935:                                              ; preds = %928
  %936 = and i64 %896, 4294967295
  %937 = load ptr, ptr %879, align 8, !tbaa !161
  %938 = getelementptr inbounds %struct.tree_type, ptr %937, i64 0, i32 6
  %939 = load i32, ptr %938, align 4
  %940 = and i32 %939, 1023
  %941 = zext nneg i32 %940 to i64
  %942 = lshr i64 %936, %941
  %943 = icmp eq i64 %942, 0
  br i1 %943, label %944, label %1118

944:                                              ; preds = %935
  %945 = getelementptr inbounds %struct.rtx_def, ptr %892, i64 0, i32 1
  br label %946

946:                                              ; preds = %944, %946
  %947 = phi i64 [ %936, %944 ], [ %952, %946 ]
  %948 = phi i32 [ %919, %944 ], [ %951, %946 ]
  %949 = load ptr, ptr %945, align 8, !tbaa !161
  %950 = getelementptr inbounds %struct.rtvec_def, ptr %949, i64 0, i32 1, i64 %947
  store ptr %933, ptr %950, align 8, !tbaa !150
  %951 = add i32 %948, 1
  %952 = zext i32 %951 to i64
  %953 = load ptr, ptr %879, align 8, !tbaa !161
  %954 = getelementptr inbounds %struct.tree_type, ptr %953, i64 0, i32 6
  %955 = load i32, ptr %954, align 4
  %956 = and i32 %955, 1023
  %957 = zext nneg i32 %956 to i64
  %958 = lshr i64 %952, %957
  %959 = icmp eq i64 %958, 0
  br i1 %959, label %946, label %1118, !llvm.loop !654

960:                                              ; preds = %52
  %961 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 1), align 8, !tbaa !409
  %962 = icmp eq ptr %961, null
  br i1 %962, label %971, label %963

963:                                              ; preds = %960
  %964 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %965 = load i32, ptr %964, align 8, !tbaa !161
  %966 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %961, i32 noundef %965) #22
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %971, label %968

968:                                              ; preds = %963
  %969 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %970 = load ptr, ptr %969, align 8, !tbaa !161
  br label %971

971:                                              ; preds = %960, %963, %968
  %972 = phi ptr [ %970, %968 ], [ null, %963 ], [ null, %960 ]
  %973 = icmp eq ptr %972, null
  br i1 %973, label %978, label %974

974:                                              ; preds = %971
  %975 = tail call ptr @gimple_assign_rhs_to_tree(ptr noundef nonnull %972)
  %976 = tail call fastcc ptr @expand_debug_expr(ptr noundef %975)
  %977 = icmp eq ptr %976, null
  br i1 %977, label %1018, label %1016

978:                                              ; preds = %971
  %979 = load ptr, ptr @SA, align 8, !tbaa !227
  %980 = load i64, ptr %0, align 8
  %981 = and i64 %980, 65535
  %982 = icmp eq i64 %981, 141
  br i1 %982, label %984, label %983

983:                                              ; preds = %978
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 147, ptr noundef nonnull @.str.1) #22
  br label %984

984:                                              ; preds = %983, %978
  %985 = load ptr, ptr %979, align 8, !tbaa !228
  %986 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %987 = load i32, ptr %986, align 8, !tbaa !161
  %988 = zext i32 %987 to i64
  %989 = getelementptr inbounds %struct.partition_def, ptr %985, i64 0, i32 1, i64 %988
  %990 = load i32, ptr %989, align 8, !tbaa !230
  %991 = getelementptr inbounds %struct._var_map, ptr %979, i64 0, i32 1
  %992 = load ptr, ptr %991, align 8, !tbaa !232
  %993 = icmp eq ptr %992, null
  br i1 %993, label %998, label %994

994:                                              ; preds = %984
  %995 = sext i32 %990 to i64
  %996 = getelementptr inbounds i32, ptr %992, i64 %995
  %997 = load i32, ptr %996, align 4, !tbaa !165
  br label %998

998:                                              ; preds = %984, %994
  %999 = phi i32 [ %997, %994 ], [ %990, %984 ]
  %1000 = icmp eq i32 %999, -1
  br i1 %1000, label %1014, label %1001

1001:                                             ; preds = %998
  %1002 = icmp sgt i32 %999, -1
  br i1 %1002, label %1003, label %1008

1003:                                             ; preds = %1001
  %1004 = load ptr, ptr @SA, align 8, !tbaa !227
  %1005 = getelementptr inbounds %struct._var_map, ptr %1004, i64 0, i32 3
  %1006 = load i32, ptr %1005, align 8, !tbaa !256
  %1007 = icmp ult i32 %999, %1006
  br i1 %1007, label %1009, label %1008

1008:                                             ; preds = %1003, %1001
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2955, ptr noundef nonnull @.str.1) #22
  br label %1009

1009:                                             ; preds = %1003, %1008
  %1010 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !225
  %1011 = sext i32 %999 to i64
  %1012 = getelementptr inbounds ptr, ptr %1010, i64 %1011
  %1013 = load ptr, ptr %1012, align 8, !tbaa !150
  br label %1014

1014:                                             ; preds = %998, %1009
  %1015 = phi ptr [ %1013, %1009 ], [ %55, %998 ]
  br i1 %1000, label %1018, label %1016

1016:                                             ; preds = %1014, %974
  %1017 = phi ptr [ %976, %974 ], [ %1015, %1014 ]
  br label %1018

1018:                                             ; preds = %1014, %974, %1016
  %1019 = phi i1 [ true, %1016 ], [ false, %974 ], [ false, %1014 ]
  %1020 = phi ptr [ %1017, %1016 ], [ null, %974 ], [ %1015, %1014 ]
  br i1 %1019, label %173, label %1118

1021:                                             ; preds = %52
  %1022 = load i32, ptr %55, align 8
  %1023 = lshr i32 %1022, 16
  %1024 = and i32 %1023, 255
  %1025 = zext nneg i32 %1024 to i64
  %1026 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1025
  %1027 = load i8, ptr %1026, align 1, !tbaa !161
  %1028 = and i8 %1027, -2
  %1029 = icmp eq i8 %1028, 2
  br i1 %1029, label %1030, label %1118

1030:                                             ; preds = %1021
  %1031 = zext i32 %21 to i64
  %1032 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1031
  %1033 = load i8, ptr %1032, align 1, !tbaa !161
  %1034 = and i8 %1033, -2
  %1035 = icmp eq i8 %1034, 2
  br i1 %1035, label %1036, label %1118

1036:                                             ; preds = %1030
  %1037 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %1038 = load ptr, ptr %1037, align 8, !tbaa !161
  %1039 = getelementptr inbounds %struct.tree_common, ptr %1038, i64 0, i32 2
  %1040 = load ptr, ptr %1039, align 8, !tbaa !161
  %1041 = load i64, ptr %1040, align 8
  %1042 = and i64 %1041, 2097152
  %1043 = icmp eq i64 %1042, 0
  %1044 = select i1 %1043, i32 98, i32 99
  %1045 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %1044, i32 noundef %21, ptr noundef %55) #22
  %1046 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %1047 = load ptr, ptr %1046, align 8, !tbaa !161
  %1048 = getelementptr inbounds %struct.tree_common, ptr %1047, i64 0, i32 2
  %1049 = load ptr, ptr %1048, align 8, !tbaa !161
  %1050 = load i64, ptr %1049, align 8
  %1051 = and i64 %1050, 2097152
  %1052 = icmp eq i64 %1051, 0
  %1053 = select i1 %1052, i32 98, i32 99
  %1054 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %1053, i32 noundef %21, ptr noundef %54) #22
  %1055 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %21, ptr noundef %1045, ptr noundef %1054) #22
  %1056 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %21, ptr noundef %1055, ptr noundef %53) #22
  br label %1118

1057:                                             ; preds = %52
  %1058 = load i32, ptr %55, align 8
  %1059 = lshr i32 %1058, 16
  %1060 = and i32 %1059, 255
  %1061 = zext nneg i32 %1060 to i64
  %1062 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1061
  %1063 = load i8, ptr %1062, align 1, !tbaa !161
  %1064 = and i8 %1063, -2
  %1065 = icmp eq i8 %1064, 2
  br i1 %1065, label %1066, label %1118

1066:                                             ; preds = %1057
  %1067 = zext i32 %21 to i64
  %1068 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1067
  %1069 = load i8, ptr %1068, align 1, !tbaa !161
  %1070 = and i8 %1069, -2
  %1071 = icmp eq i8 %1070, 2
  br i1 %1071, label %1072, label %1118

1072:                                             ; preds = %1066
  %1073 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %1074 = load ptr, ptr %1073, align 8, !tbaa !161
  %1075 = getelementptr inbounds %struct.tree_common, ptr %1074, i64 0, i32 2
  %1076 = load ptr, ptr %1075, align 8, !tbaa !161
  %1077 = load i64, ptr %1076, align 8
  %1078 = and i64 %1077, 2097152
  %1079 = icmp eq i64 %1078, 0
  %1080 = select i1 %1079, i32 98, i32 99
  %1081 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %1080, i32 noundef %21, ptr noundef %55) #22
  %1082 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %1083 = load ptr, ptr %1082, align 8, !tbaa !161
  %1084 = getelementptr inbounds %struct.tree_common, ptr %1083, i64 0, i32 2
  %1085 = load ptr, ptr %1084, align 8, !tbaa !161
  %1086 = load i64, ptr %1085, align 8
  %1087 = and i64 %1086, 2097152
  %1088 = icmp eq i64 %1087, 0
  %1089 = select i1 %1088, i32 98, i32 99
  %1090 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %1089, i32 noundef %21, ptr noundef %54) #22
  %1091 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %21, ptr noundef %1081, ptr noundef %1090) #22
  br label %1118

1092:                                             ; preds = %52
  %1093 = load i32, ptr %55, align 8
  %1094 = lshr i32 %1093, 16
  %1095 = and i32 %1094, 255
  %1096 = zext nneg i32 %1095 to i64
  %1097 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1096
  %1098 = load i8, ptr %1097, align 1, !tbaa !161
  %1099 = and i8 %1098, -2
  %1100 = icmp eq i8 %1099, 2
  br i1 %1100, label %1101, label %1118

1101:                                             ; preds = %1092
  %1102 = zext i32 %21 to i64
  %1103 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1102
  %1104 = load i8, ptr %1103, align 1, !tbaa !161
  %1105 = and i8 %1104, -2
  %1106 = icmp eq i8 %1105, 2
  br i1 %1106, label %1107, label %1118

1107:                                             ; preds = %1101
  %1108 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %1109 = load ptr, ptr %1108, align 8, !tbaa !161
  %1110 = getelementptr inbounds %struct.tree_common, ptr %1109, i64 0, i32 2
  %1111 = load ptr, ptr %1110, align 8, !tbaa !161
  %1112 = load i64, ptr %1111, align 8
  %1113 = and i64 %1112, 2097152
  %1114 = icmp eq i64 %1113, 0
  %1115 = select i1 %1114, i32 98, i32 99
  %1116 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %1115, i32 noundef %21, ptr noundef %55) #22
  %1117 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %21, ptr noundef %1116, ptr noundef %54) #22
  br label %1118

1118:                                             ; preds = %911, %946, %935, %1018, %928, %877, %339, %294, %173, %52, %38, %33, %1101, %1092, %1066, %1057, %1030, %1021, %918, %859, %864, %854, %851, %343, %333, %212, %258, %256, %284, %292, %290, %267, %269, %234, %240, %238, %133, %138, %150, %112, %114, %122, %126, %95, %61, %44, %1107, %1072, %1036, %868, %794, %787, %759, %757, %755, %753, %751, %749, %747, %745, %743, %741, %739, %737, %735, %730, %728, %723, %721, %716, %714, %708, %705, %702, %700, %698, %696, %694, %692, %687, %685, %680, %678, %676, %674, %669, %663, %657, %649, %644, %635, %629, %621, %616, %607, %605, %597, %595, %590, %588, %583, %581, %576, %574, %572, %570, %568, %563, %561, %556, %554, %552, %550, %349, %326, %171, %98, %81, %72, %69
  %1119 = phi ptr [ %1117, %1107 ], [ %1091, %1072 ], [ %1056, %1036 ], [ %870, %868 ], [ %804, %794 ], [ %789, %787 ], [ %760, %759 ], [ %758, %757 ], [ %756, %755 ], [ %754, %753 ], [ %752, %751 ], [ %750, %749 ], [ %748, %747 ], [ %746, %745 ], [ %744, %743 ], [ %742, %741 ], [ %740, %739 ], [ %736, %735 ], [ %738, %737 ], [ %729, %728 ], [ %731, %730 ], [ %722, %721 ], [ %724, %723 ], [ %715, %714 ], [ %717, %716 ], [ %710, %708 ], [ %707, %705 ], [ %704, %702 ], [ %701, %700 ], [ %699, %698 ], [ %697, %696 ], [ %693, %692 ], [ %695, %694 ], [ %686, %685 ], [ %688, %687 ], [ %681, %680 ], [ %679, %678 ], [ %675, %674 ], [ %677, %676 ], [ %670, %669 ], [ %662, %657 ], [ %668, %663 ], [ %648, %644 ], [ %653, %649 ], [ %634, %629 ], [ %640, %635 ], [ %620, %616 ], [ %625, %621 ], [ %606, %605 ], [ %612, %607 ], [ %596, %595 ], [ %601, %597 ], [ %589, %588 ], [ %591, %590 ], [ %582, %581 ], [ %584, %583 ], [ %577, %576 ], [ %575, %574 ], [ %573, %572 ], [ %569, %568 ], [ %571, %570 ], [ %562, %561 ], [ %564, %563 ], [ %557, %556 ], [ %555, %554 ], [ %553, %552 ], [ %551, %550 ], [ %354, %349 ], [ %328, %326 ], [ %172, %171 ], [ %99, %98 ], [ %88, %81 ], [ %73, %72 ], [ %71, %69 ], [ null, %44 ], [ null, %61 ], [ %96, %95 ], [ null, %126 ], [ null, %122 ], [ null, %114 ], [ null, %112 ], [ null, %150 ], [ null, %138 ], [ null, %133 ], [ %174, %212 ], [ %235, %234 ], [ %239, %238 ], [ %241, %240 ], [ %257, %256 ], [ %259, %258 ], [ %268, %267 ], [ %270, %269 ], [ %286, %284 ], [ %291, %290 ], [ %293, %292 ], [ null, %333 ], [ null, %343 ], [ %858, %854 ], [ null, %851 ], [ null, %864 ], [ null, %859 ], [ %892, %918 ], [ null, %1030 ], [ null, %1021 ], [ null, %1066 ], [ null, %1057 ], [ null, %1101 ], [ null, %1092 ], [ null, %33 ], [ null, %38 ], [ null, %52 ], [ %174, %173 ], [ null, %294 ], [ null, %339 ], [ null, %877 ], [ null, %928 ], [ null, %1018 ], [ %892, %935 ], [ %892, %946 ], [ null, %911 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret ptr %1119
}

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lookup_constant_def(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #17

declare ptr @gen_rtx_fmt_s_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_0_stat(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @make_decl_rtl_for_debug(ptr noundef) local_unnamed_addr #3

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @simplify_gen_unary(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @set_mem_addr_space(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @tree_mem_ref_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @smallest_mode_for_size(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #3

declare ptr @simplify_gen_ternary(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @floor_sdiv_adjust(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 !prof !149 {
  %4 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %5 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 80, i32 noundef 13, ptr noundef %1, ptr noundef %4) #22
  %6 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %0, ptr noundef %2, ptr noundef %1) #22
  %7 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %8 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 85, i32 noundef 13, ptr noundef %6, ptr noundef %7) #22
  %9 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !150
  %10 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %11 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %0, ptr noundef %8, ptr noundef %9, ptr noundef %10) #22
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %13 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %0, ptr noundef %5, ptr noundef %11, ptr noundef %12) #22
  ret ptr %13
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @ceil_udiv_adjust(i32 noundef %0, ptr noundef %1) unnamed_addr #11 !prof !149 {
  %3 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %4 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 80, i32 noundef 13, ptr noundef %1, ptr noundef %3) #22
  %5 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !150
  %6 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %7 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %0, ptr noundef %4, ptr noundef %5, ptr noundef %6) #22
  ret ptr %7
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @ceil_sdiv_adjust(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 !prof !149 {
  %4 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %5 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 80, i32 noundef 13, ptr noundef %1, ptr noundef %4) #22
  %6 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %0, ptr noundef %2, ptr noundef %1) #22
  %7 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %8 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 83, i32 noundef 13, ptr noundef %6, ptr noundef %7) #22
  %9 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !150
  %10 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %11 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %0, ptr noundef %8, ptr noundef %9, ptr noundef %10) #22
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %13 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %0, ptr noundef %5, ptr noundef %11, ptr noundef %12) #22
  ret ptr %13
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @round_udiv_adjust(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 !prof !149 {
  %4 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %0, ptr noundef %2, ptr noundef %1) #22
  %5 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 82, i32 noundef 13, ptr noundef %1, ptr noundef %4) #22
  %6 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !150
  %7 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %8 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef %7) #22
  ret ptr %8
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @round_sdiv_adjust(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 !prof !149 {
  %4 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 111, i32 noundef %0, ptr noundef %1) #22
  %5 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 111, i32 noundef %0, ptr noundef %2) #22
  %6 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 111, i32 noundef %0, ptr noundef %1) #22
  %7 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %0, ptr noundef %5, ptr noundef %6) #22
  %8 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 82, i32 noundef 13, ptr noundef %4, ptr noundef %7) #22
  %9 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %0, ptr noundef %2, ptr noundef %1) #22
  %10 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %11 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 83, i32 noundef 13, ptr noundef %9, ptr noundef %10) #22
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !150
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !150
  %14 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %0, ptr noundef %11, ptr noundef %12, ptr noundef %13) #22
  %15 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !150
  %16 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %0, ptr noundef %8, ptr noundef %14, ptr noundef %15) #22
  ret ptr %16
}

declare ptr @gen_rtx_fmt_eee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @int_mode_for_mode(i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_SUBREG(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @convert_debug_memory_address(i32 noundef %0, ptr noundef readonly returned %1) unnamed_addr #11 !prof !149 {
  %3 = load i32, ptr %1, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %0, 16
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2202, ptr noundef nonnull @.str.1) #22
  br label %8

8:                                                ; preds = %2, %7
  %9 = icmp eq i32 %5, %0
  %10 = icmp eq i32 %5, 0
  %11 = or i1 %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2203, ptr noundef nonnull @.str.1) #22
  br label %13

13:                                               ; preds = %8, %12
  ret ptr %1
}

declare ptr @build_constructor_from_list(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @expand_function_end() local_unnamed_addr #3

declare void @fixup_tail_calls() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!148}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147}
!35 = !{ptr @gimple_assign_rhs_to_tree, ptr @build2_stat, i64 37787}
!36 = !{ptr @gimple_assign_rhs_to_tree, ptr @build1_stat, i64 14}
!37 = !{ptr @gimple_assign_rhs_to_tree, ptr @tree_block, i64 66425}
!38 = !{ptr @gimple_assign_rhs_to_tree, ptr @copy_node_stat, i64 14505}
!39 = !{ptr @estimated_stack_frame_size, ptr @clear_tree_used, i64 119}
!40 = !{ptr @estimated_stack_frame_size, ptr @ix86_minimum_alignment, i64 332379}
!41 = !{ptr @estimated_stack_frame_size, ptr @fancy_abort, i64 120901}
!42 = !{ptr @estimated_stack_frame_size, ptr @use_register_for_decl, i64 332258}
!43 = !{ptr @estimated_stack_frame_size, ptr @account_used_vars_for_block, i64 119}
!44 = !{ptr @expand_one_var, ptr @ix86_minimum_alignment, i64 191}
!45 = !{ptr @expand_one_var, ptr @use_register_for_decl, i64 191}
!46 = !{ptr @expand_one_var, ptr @promote_decl_mode, i64 69}
!47 = !{ptr @expand_one_var, ptr @gen_reg_rtx, i64 69}
!48 = !{ptr @expand_one_var, ptr @set_reg_attrs_for_decl_rtl, i64 69}
!49 = !{ptr @expand_one_var, ptr @set_decl_rtl, i64 38}
!50 = !{ptr @expand_one_var, ptr @mark_reg_pointer, i64 5}
!51 = !{ptr @account_used_vars_for_block, ptr @expand_one_var, i64 114}
!52 = !{ptr @account_used_vars_for_block, ptr @account_used_vars_for_block, i64 12}
!53 = !{ptr @gimple_expand_cfg, ptr @rewrite_out_of_ssa, i64 38}
!54 = !{ptr @gimple_expand_cfg, ptr @xcalloc, i64 38}
!55 = !{ptr @gimple_expand_cfg, ptr @rtl_profile_for_bb, i64 154136}
!56 = !{ptr @gimple_expand_cfg, ptr @insn_locators_alloc, i64 38}
!57 = !{ptr @gimple_expand_cfg, ptr @set_curr_insn_source_location, i64 141439}
!58 = !{ptr @gimple_expand_cfg, ptr @set_curr_insn_block, i64 141515}
!59 = !{ptr @gimple_expand_cfg, ptr @curr_insn_locator, i64 479}
!60 = !{ptr @gimple_expand_cfg, ptr @emit_note, i64 97230}
!61 = !{ptr @gimple_expand_cfg, ptr @walk_gimple_op, i64 338109}
!62 = !{ptr @gimple_expand_cfg, ptr @clear_tree_used, i64 38}
!63 = !{ptr @gimple_expand_cfg, ptr @is_gimple_reg, i64 293838}
!64 = !{ptr @gimple_expand_cfg, ptr @ix86_minimum_alignment, i64 190129}
!65 = !{ptr @gimple_expand_cfg, ptr @use_register_for_decl, i64 190060}
!66 = !{ptr @gimple_expand_cfg, ptr @promote_decl_mode, i64 190060}
!67 = !{ptr @gimple_expand_cfg, ptr @gen_reg_rtx, i64 190060}
!68 = !{ptr @gimple_expand_cfg, ptr @set_reg_attrs_for_decl_rtl, i64 190060}
!69 = !{ptr @gimple_expand_cfg, ptr @set_decl_rtl, i64 105972}
!70 = !{ptr @gimple_expand_cfg, ptr @mark_reg_pointer, i64 14079}
!71 = !{ptr @gimple_expand_cfg, ptr @bitmap_bit_p, i64 203188}
!72 = !{ptr @gimple_expand_cfg, ptr @expand_one_var, i64 39}
!73 = !{ptr @gimple_expand_cfg, ptr @ggc_free, i64 103670}
!74 = !{ptr @gimple_expand_cfg, ptr @expand_used_vars_for_block, i64 38}
!75 = !{ptr @gimple_expand_cfg, ptr @expand_function_start, i64 38}
!76 = !{ptr @gimple_expand_cfg, ptr @expand_phi_nodes, i64 38}
!77 = !{ptr @gimple_expand_cfg, ptr @rtl_register_cfg_hooks, i64 38}
!78 = !{ptr @gimple_expand_cfg, ptr @init_rtl_bb_info, i64 154136}
!79 = !{ptr @gimple_expand_cfg, ptr @get_insns, i64 76}
!80 = !{ptr @gimple_expand_cfg, ptr @get_last_insn, i64 498415}
!81 = !{ptr @gimple_expand_cfg, ptr @create_basic_block, i64 1969}
!82 = !{ptr @gimple_expand_cfg, ptr @redirect_edge_succ, i64 1969}
!83 = !{ptr @gimple_expand_cfg, ptr @make_edge, i64 1988}
!84 = !{ptr @gimple_expand_cfg, ptr @update_bb_for_insn, i64 156029}
!85 = !{ptr @gimple_expand_cfg, ptr @pointer_map_create, i64 38}
!86 = !{ptr @gimple_expand_cfg, ptr @pointer_map_contains, i64 154060}
!87 = !{ptr @gimple_expand_cfg, ptr @expand_gimple_stmt, i64 86581}
!88 = !{ptr @gimple_expand_cfg, ptr @emit_label, i64 53925}
!89 = !{ptr @gimple_expand_cfg, ptr @emit_note_after, i64 56868}
!90 = !{ptr @gimple_expand_cfg, ptr @optimize_insn_for_speed_p, i64 9214}
!91 = !{ptr @gimple_expand_cfg, ptr @extract_true_false_edges_from_block, i64 140960}
!92 = !{ptr @gimple_expand_cfg, ptr @label_rtx_for_bb, i64 151110}
!93 = !{ptr @gimple_expand_cfg, ptr @jumpif_1, i64 65735}
!94 = !{ptr @gimple_expand_cfg, ptr @jumpifnot_1, i64 75225}
!95 = !{ptr @gimple_expand_cfg, ptr @emit_jump, i64 10150}
!96 = !{ptr @gimple_expand_cfg, ptr @do_pending_stack_adjust, i64 152167}
!97 = !{ptr @gimple_expand_cfg, ptr @remove_edge, i64 19}
!98 = !{ptr @gimple_expand_cfg, ptr @delete_insn, i64 19}
!99 = !{ptr @gimple_expand_cfg, ptr @maybe_dump_rtl_for_gimple_stmt, i64 19}
!100 = !{ptr @gimple_expand_cfg, ptr @execute_free_datastructures, i64 38}
!101 = !{ptr @gimple_expand_cfg, ptr @finish_out_of_ssa, i64 38}
!102 = !{ptr @gimple_expand_cfg, ptr @pointer_map_destroy, i64 38}
!103 = !{ptr @gimple_expand_cfg, ptr @free_histograms, i64 38}
!104 = !{ptr @gimple_expand_cfg, ptr @expand_function_end, i64 38}
!105 = !{ptr @gimple_expand_cfg, ptr @insn_locators_finalize, i64 38}
!106 = !{ptr @gimple_expand_cfg, ptr @set_eh_throw_stmt_table, i64 38}
!107 = !{ptr @gimple_expand_cfg, ptr @rebuild_jump_labels, i64 38}
!108 = !{ptr @gimple_expand_cfg, ptr @commit_one_edge_insertion, i64 64766}
!109 = !{ptr @gimple_expand_cfg, ptr @sbitmap_alloc, i64 38}
!110 = !{ptr @gimple_expand_cfg, ptr @sbitmap_ones, i64 38}
!111 = !{ptr @gimple_expand_cfg, ptr @find_many_sub_basic_blocks, i64 38}
!112 = !{ptr @gimple_expand_cfg, ptr @free, i64 76}
!113 = !{ptr @gimple_expand_cfg, ptr @purge_all_dead_edges, i64 38}
!114 = !{ptr @gimple_expand_cfg, ptr @compact_blocks, i64 38}
!115 = !{ptr @gimple_expand_cfg, ptr @cgraph_function_possibly_inlined_p, i64 38}
!116 = !{ptr @gimple_expand_cfg, ptr @set_block_levels, i64 38}
!117 = !{ptr @gimple_expand_cfg, ptr @default_rtl_profile, i64 38}
!118 = !{ptr @clear_tree_used, ptr @clear_tree_used, i64 54}
!119 = !{ptr @set_block_levels, ptr @set_block_levels, i64 80}
!120 = !{ptr @discover_nonconstant_array_refs_r, ptr @is_gimple_min_invariant, i64 14694}
!121 = !{ptr @discover_nonconstant_array_refs_r, ptr @get_base_address, i64 6}
!122 = !{ptr @expand_used_vars_for_block, ptr @expand_one_var, i64 38}
!123 = !{ptr @expand_used_vars_for_block, ptr @expand_used_vars_for_block, i64 42}
!124 = !{ptr @expand_gimple_stmt, ptr @get_last_insn, i64 86112}
!125 = !{ptr @expand_gimple_stmt, ptr @set_curr_insn_source_location, i64 83077}
!126 = !{ptr @expand_gimple_stmt, ptr @set_curr_insn_block, i64 83077}
!127 = !{ptr @expand_gimple_stmt, ptr @expand_label, i64 2943}
!128 = !{ptr @expand_gimple_stmt, ptr @expand_case, i64 40}
!129 = !{ptr @expand_gimple_stmt, ptr @build_vl_exp_stat, i64 68958}
!130 = !{ptr @expand_gimple_stmt, ptr @gimple_has_side_effects, i64 68958}
!131 = !{ptr @expand_gimple_stmt, ptr @gimple_call_flags, i64 68958}
!132 = !{ptr @expand_gimple_stmt, ptr @tree_block, i64 68958}
!133 = !{ptr @expand_gimple_stmt, ptr @expand_assignment, i64 79672}
!134 = !{ptr @expand_gimple_stmt, ptr @expand_expr_real_1, i64 2274}
!135 = !{ptr @expand_gimple_stmt, ptr @build2_stat, i64 38}
!136 = !{ptr @expand_gimple_stmt, ptr @expand_return, i64 38}
!137 = !{ptr @expand_gimple_stmt, ptr @expand_expr_real, i64 1145}
!138 = !{ptr @expand_gimple_stmt, ptr @expand_expr_real_2, i64 1145}
!139 = !{ptr @expand_gimple_stmt, ptr @force_operand, i64 367}
!140 = !{ptr @expand_gimple_stmt, ptr @emit_move_insn, i64 367}
!141 = !{ptr @expand_gimple_stmt, ptr @free_temp_slots, i64 86112}
!142 = !{ptr @expand_gimple_stmt, ptr @lookup_stmt_eh_lp, i64 86112}
!143 = !{ptr @label_rtx_for_bb, ptr @block_label, i64 5174}
!144 = !{ptr @label_rtx_for_bb, ptr @pointer_map_contains, i64 145136}
!145 = !{ptr @label_rtx_for_bb, ptr @label_rtx, i64 2625}
!146 = !{ptr @label_rtx_for_bb, ptr @pointer_map_insert, i64 53925}
!147 = !{ptr @label_rtx_for_bb, ptr @gen_label_rtx, i64 53925}
!148 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!149 = !{!"function_entry_count", i64 0}
!150 = !{!151, !151, i64 0}
!151 = !{!"any pointer", !152, i64 0}
!152 = !{!"omnipotent char", !153, i64 0}
!153 = !{!"Simple C/C++ TBAA"}
!154 = !{!155, !151, i64 8}
!155 = !{!"_IO_FILE", !156, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !151, i64 48, !151, i64 56, !151, i64 64, !151, i64 72, !151, i64 80, !151, i64 88, !151, i64 96, !151, i64 104, !156, i64 112, !156, i64 116, !157, i64 120, !158, i64 128, !152, i64 130, !152, i64 131, !151, i64 136, !157, i64 144, !151, i64 152, !151, i64 160, !151, i64 168, !151, i64 176, !157, i64 184, !156, i64 192, !152, i64 196}
!156 = !{!"int", !152, i64 0}
!157 = !{!"long", !152, i64 0}
!158 = !{!"short", !152, i64 0}
!159 = !{!155, !151, i64 16}
!160 = !{!"branch_weights", i32 2000, i32 1}
!161 = !{!152, !152, i64 0}
!162 = !{!155, !151, i64 40}
!163 = !{!155, !151, i64 48}
!164 = !{!155, !156, i64 0}
!165 = !{!156, !156, i64 0}
!166 = distinct !{!166, !167, !168}
!167 = !{!"llvm.loop.mustprogress"}
!168 = !{!"llvm.loop.unroll.disable"}
!169 = !{!"function_entry_count", i64 102665}
!170 = !{!"branch_weights", i32 0, i32 102665, i32 0, i32 0}
!171 = !{!"branch_weights", i32 0, i32 37787, i32 14, i32 64864}
!172 = !{!"branch_weights", i32 0, i32 37787, i32 0, i32 0}
!173 = !{!"branch_weights", i32 0, i32 37787}
!174 = !{!157, !157, i64 0}
!175 = !{!"branch_weights", i32 37787, i32 0}
!176 = !{!"branch_weights", i32 0, i32 14, i32 0, i32 0}
!177 = !{!"branch_weights", i32 0, i32 14}
!178 = !{!"branch_weights", i32 0, i32 64864}
!179 = !{!"branch_weights", i32 64852, i32 12}
!180 = !{!"branch_weights", i32 14505, i32 50347}
!181 = !{!"branch_weights", i32 14498, i32 7}
!182 = !{!"branch_weights", i32 64845, i32 12}
!183 = !{!"branch_weights", i32 14498, i32 50347}
!184 = !{!"branch_weights", i32 0, i32 14498}
!185 = !{!"branch_weights", i32 102653, i32 12}
!186 = !{!"branch_weights", i32 52306, i32 50347}
!187 = !{!"branch_weights", i32 102274, i32 391}
!188 = !{!"branch_weights", i32 51927, i32 50347}
!189 = !{!"function_entry_count", i64 119}
!190 = !{!"branch_weights", i32 1, i32 237}
!191 = !{!"branch_weights", i32 237, i32 664749}
!192 = distinct !{!192, !167, !168}
!193 = !{!"branch_weights", i32 114, i32 332379}
!194 = !{!"branch_weights", i32 190129, i32 332570}
!195 = !{!"branch_weights", i32 0, i32 522699}
!196 = !{!"branch_weights", i32 522699, i32 0}
!197 = !{!"branch_weights", i32 522508, i32 191}
!198 = !{!"branch_weights", i32 522508, i32 0}
!199 = !{!"branch_weights", i32 0, i32 191}
!200 = !{!201, !156, i64 452}
!201 = !{!"rtl_data", !202, i64 0, !203, i64 40, !204, i64 96, !205, i64 112, !207, i64 208, !208, i64 248, !156, i64 312, !151, i64 320, !151, i64 328, !151, i64 336, !151, i64 344, !151, i64 352, !151, i64 360, !151, i64 368, !151, i64 376, !151, i64 384, !151, i64 392, !157, i64 400, !151, i64 408, !151, i64 416, !151, i64 424, !156, i64 432, !156, i64 436, !156, i64 440, !156, i64 444, !156, i64 448, !156, i64 452, !151, i64 456, !152, i64 464, !152, i64 465, !152, i64 466, !152, i64 467, !152, i64 468, !152, i64 469, !152, i64 470, !152, i64 471, !152, i64 472, !152, i64 473, !152, i64 474, !152, i64 475, !152, i64 476, !152, i64 477, !152, i64 478, !152, i64 479, !152, i64 480, !152, i64 481, !152, i64 482, !152, i64 483, !152, i64 484, !152, i64 485}
!202 = !{!"expr_status", !156, i64 0, !156, i64 4, !156, i64 8, !151, i64 16, !151, i64 24, !151, i64 32}
!203 = !{!"emit_status", !156, i64 0, !156, i64 4, !151, i64 8, !151, i64 16, !151, i64 24, !156, i64 32, !156, i64 36, !156, i64 40, !156, i64 44, !151, i64 48}
!204 = !{!"varasm_status", !151, i64 0, !156, i64 8}
!205 = !{!"incoming_args", !156, i64 0, !156, i64 4, !156, i64 8, !151, i64 16, !206, i64 24, !151, i64 88}
!206 = !{!"ix86_args", !156, i64 0, !156, i64 4, !156, i64 8, !156, i64 12, !156, i64 16, !156, i64 20, !156, i64 24, !156, i64 28, !156, i64 32, !156, i64 36, !156, i64 40, !156, i64 44, !156, i64 48, !156, i64 52, !156, i64 56, !156, i64 60}
!207 = !{!"function_subsections", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32}
!208 = !{!"rtl_eh", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !152, i64 48}
!209 = !{!"branch_weights", i32 40, i32 522659}
!210 = !{!201, !152, i64 482}
!211 = !{!"branch_weights", i32 40, i32 0}
!212 = !{!"branch_weights", i32 190129, i32 0}
!213 = !{!"branch_weights", i32 -27554654, i32 1559929}
!214 = !{!"branch_weights", i32 190129, i32 332379}
!215 = !{!"branch_weights", i32 0, i32 332379}
!216 = !{!"branch_weights", i32 332379, i32 0}
!217 = !{!"branch_weights", i32 0, i32 522508}
!218 = distinct !{!218, !167, !168}
!219 = !{!"branch_weights", i32 119, i32 0}
!220 = distinct !{!220, !167, !168}
!221 = !{!222, !157, i64 32}
!222 = !{!"stack_var", !151, i64 0, !157, i64 8, !157, i64 16, !156, i64 24, !157, i64 32, !157, i64 40, !151, i64 48}
!223 = !{!222, !157, i64 16}
!224 = !{!222, !151, i64 0}
!225 = !{!226, !151, i64 16}
!226 = !{!"ssaexpand", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24}
!227 = !{!226, !151, i64 0}
!228 = !{!229, !151, i64 0}
!229 = !{!"_var_map", !151, i64 0, !151, i64 8, !151, i64 16, !156, i64 24, !156, i64 28, !156, i64 32, !151, i64 40, !151, i64 48}
!230 = !{!231, !156, i64 0}
!231 = !{!"partition_elem", !156, i64 0, !151, i64 8, !156, i64 16}
!232 = !{!229, !151, i64 8}
!233 = !{!222, !157, i64 40}
!234 = distinct !{!234, !167, !168}
!235 = distinct !{!235, !167, !168}
!236 = !{!"function_entry_count", i64 191}
!237 = !{!"cfgexpand.c;expand_one_var"}
!238 = !{!"branch_weights", i32 0, i32 190129}
!239 = !{!"branch_weights", i32 332379, i32 190129}
!240 = !{!"branch_weights", i32 103660, i32 86469}
!241 = !{!"branch_weights", i32 85294, i32 1175}
!242 = !{!"branch_weights", i32 176045, i32 14084, i32 0}
!243 = !{!"function_entry_count", i64 131}
!244 = !{!"cfgexpand.c;account_used_vars_for_block"}
!245 = !{!"branch_weights", i32 17, i32 114}
!246 = !{!"branch_weights", i32 0, i32 114}
!247 = !{!"branch_weights", i32 114, i32 0}
!248 = distinct !{!248, !167, !168}
!249 = !{!"branch_weights", i32 119, i32 12}
!250 = !{!"branch_weights", i32 12, i32 0}
!251 = distinct !{!251, !167, !168}
!252 = !{!222, !151, i64 48}
!253 = distinct !{!253, !167, !168}
!254 = !{!"function_entry_count", i64 38}
!255 = !{!"cfgexpand.c;gimple_expand_cfg"}
!256 = !{!229, !156, i64 24}
!257 = !{!258, !151, i64 8}
!258 = !{!"function", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !151, i64 48, !151, i64 56, !151, i64 64, !151, i64 72, !151, i64 80, !151, i64 88, !151, i64 96, !156, i64 104, !156, i64 108, !156, i64 112, !156, i64 116, !156, i64 120, !156, i64 124, !151, i64 128, !156, i64 136, !156, i64 137, !156, i64 138, !156, i64 138, !156, i64 138, !156, i64 138, !156, i64 138, !156, i64 138, !156, i64 138, !156, i64 139, !156, i64 139, !156, i64 139, !156, i64 139, !156, i64 139, !156, i64 139, !156, i64 139}
!259 = !{!260, !151, i64 0}
!260 = !{!"control_flow_graph", !151, i64 0, !151, i64 8, !151, i64 16, !156, i64 24, !156, i64 28, !156, i64 32, !151, i64 40, !156, i64 48, !152, i64 52, !152, i64 60, !156, i64 68, !156, i64 72}
!261 = !{!"branch_weights", i32 0, i32 38}
!262 = !{!258, !156, i64 112}
!263 = !{!264, !151, i64 56}
!264 = !{!"basic_block_def", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !152, i64 32, !151, i64 48, !151, i64 56, !152, i64 64, !157, i64 72, !156, i64 80, !156, i64 84, !156, i64 88, !156, i64 92, !156, i64 96}
!265 = !{!260, !151, i64 8}
!266 = !{!"branch_weights", i32 1, i32 151}
!267 = !{!"branch_weights", i32 151, i32 616089}
!268 = distinct !{!268, !167, !168}
!269 = !{!264, !156, i64 96}
!270 = !{!271}
!271 = distinct !{!271, !272, !"gsi_start_bb: argument 0"}
!272 = distinct !{!272, !"gsi_start_bb"}
!273 = !{!"branch_weights", i32 154060, i32 0}
!274 = !{!"branch_weights", i32 0, i32 154060}
!275 = !{!276, !151, i64 0}
!276 = !{!"gimple_bb_info", !151, i64 0, !151, i64 8}
!277 = !{!278, !151, i64 0}
!278 = !{!"gimple_seq_d", !151, i64 0, !151, i64 8, !151, i64 16}
!279 = !{!"branch_weights", i32 1, i32 154059}
!280 = !{!281, !151, i64 0}
!281 = !{!"gimple_seq_node_d", !151, i64 0, !151, i64 8, !151, i64 16}
!282 = !{!"branch_weights", i32 0, i32 338109}
!283 = !{!281, !151, i64 16}
!284 = !{!"branch_weights", i32 154059, i32 184050}
!285 = distinct !{!285, !167, !168}
!286 = !{!287, !151, i64 1736}
!287 = !{!"gcc_target", !288, i64 0, !290, i64 368, !291, i64 664, !156, i64 744, !151, i64 752, !151, i64 760, !151, i64 768, !151, i64 776, !151, i64 784, !151, i64 792, !151, i64 800, !151, i64 808, !151, i64 816, !151, i64 824, !151, i64 832, !151, i64 840, !151, i64 848, !151, i64 856, !151, i64 864, !151, i64 872, !151, i64 880, !151, i64 888, !151, i64 896, !151, i64 904, !151, i64 912, !151, i64 920, !151, i64 928, !151, i64 936, !151, i64 944, !151, i64 952, !151, i64 960, !151, i64 968, !151, i64 976, !151, i64 984, !151, i64 992, !151, i64 1000, !151, i64 1008, !151, i64 1016, !151, i64 1024, !151, i64 1032, !151, i64 1040, !151, i64 1048, !151, i64 1056, !157, i64 1064, !157, i64 1072, !151, i64 1080, !151, i64 1088, !151, i64 1096, !151, i64 1104, !151, i64 1112, !151, i64 1120, !151, i64 1128, !151, i64 1136, !151, i64 1144, !151, i64 1152, !151, i64 1160, !151, i64 1168, !292, i64 1176, !151, i64 1232, !151, i64 1240, !151, i64 1248, !151, i64 1256, !151, i64 1264, !151, i64 1272, !151, i64 1280, !151, i64 1288, !151, i64 1296, !151, i64 1304, !151, i64 1312, !151, i64 1320, !151, i64 1328, !151, i64 1336, !151, i64 1344, !151, i64 1352, !151, i64 1360, !151, i64 1368, !151, i64 1376, !151, i64 1384, !151, i64 1392, !151, i64 1400, !151, i64 1408, !151, i64 1416, !151, i64 1424, !151, i64 1432, !151, i64 1440, !151, i64 1448, !151, i64 1456, !157, i64 1464, !293, i64 1472, !151, i64 1664, !151, i64 1672, !151, i64 1680, !151, i64 1688, !151, i64 1696, !151, i64 1704, !151, i64 1712, !151, i64 1720, !151, i64 1728, !151, i64 1736, !151, i64 1744, !151, i64 1752, !151, i64 1760, !151, i64 1768, !151, i64 1776, !294, i64 1784, !295, i64 1792, !296, i64 1896, !297, i64 1968, !151, i64 2016, !152, i64 2024, !152, i64 2025, !152, i64 2026, !152, i64 2027, !152, i64 2028, !152, i64 2029, !152, i64 2030, !152, i64 2031, !152, i64 2032, !152, i64 2033, !152, i64 2034, !152, i64 2035}
!288 = !{!"asm_out", !151, i64 0, !151, i64 8, !151, i64 16, !289, i64 24, !289, i64 56, !151, i64 88, !151, i64 96, !151, i64 104, !151, i64 112, !151, i64 120, !151, i64 128, !151, i64 136, !151, i64 144, !151, i64 152, !151, i64 160, !151, i64 168, !151, i64 176, !151, i64 184, !151, i64 192, !151, i64 200, !151, i64 208, !151, i64 216, !151, i64 224, !151, i64 232, !151, i64 240, !151, i64 248, !151, i64 256, !151, i64 264, !151, i64 272, !151, i64 280, !151, i64 288, !151, i64 296, !151, i64 304, !151, i64 312, !151, i64 320, !151, i64 328, !151, i64 336, !151, i64 344, !151, i64 352, !151, i64 360}
!289 = !{!"asm_int_op", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24}
!290 = !{!"sched", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !151, i64 48, !151, i64 56, !151, i64 64, !151, i64 72, !151, i64 80, !151, i64 88, !151, i64 96, !151, i64 104, !151, i64 112, !151, i64 120, !151, i64 128, !151, i64 136, !151, i64 144, !151, i64 152, !151, i64 160, !151, i64 168, !151, i64 176, !151, i64 184, !151, i64 192, !151, i64 200, !151, i64 208, !151, i64 216, !151, i64 224, !151, i64 232, !151, i64 240, !151, i64 248, !151, i64 256, !151, i64 264, !151, i64 272, !151, i64 280, !151, i64 288}
!291 = !{!"vectorize", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !151, i64 48, !151, i64 56, !151, i64 64, !151, i64 72}
!292 = !{!"addr_space", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !151, i64 48}
!293 = !{!"calls", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !151, i64 48, !151, i64 56, !151, i64 64, !151, i64 72, !151, i64 80, !151, i64 88, !151, i64 96, !151, i64 104, !151, i64 112, !151, i64 120, !151, i64 128, !151, i64 136, !151, i64 144, !151, i64 152, !151, i64 160, !151, i64 168, !151, i64 176, !151, i64 184}
!294 = !{!"c", !151, i64 0}
!295 = !{!"cxx", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !151, i64 48, !151, i64 56, !151, i64 64, !151, i64 72, !151, i64 80, !151, i64 88, !151, i64 96}
!296 = !{!"emutls", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !151, i64 48, !151, i64 56, !152, i64 64, !152, i64 65}
!297 = !{!"target_option_hooks", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40}
!298 = !{!"VP", i32 0, i64 38, i64 -6956625523296278410, i64 38}
!299 = !{!201, !156, i64 436}
!300 = !{!201, !156, i64 448}
!301 = !{!201, !156, i64 440}
!302 = !{!260, !156, i64 68}
!303 = !{!"branch_weights", i32 151, i32 414533}
!304 = !{!229, !151, i64 16}
!305 = !{!"branch_weights", i32 0, i32 190167}
!306 = !{!258, !151, i64 24}
!307 = !{!308, !151, i64 16}
!308 = !{!"gimple_df", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !309, i64 32, !309, i64 48, !151, i64 64, !151, i64 72, !151, i64 80, !151, i64 88, !156, i64 96, !310, i64 104}
!309 = !{!"pt_solution", !156, i64 0, !156, i64 0, !156, i64 0, !156, i64 0, !156, i64 0, !156, i64 0, !151, i64 8}
!310 = !{!"ssa_operands", !151, i64 0, !156, i64 8, !156, i64 12, !152, i64 16, !151, i64 24, !151, i64 32}
!311 = !{!"branch_weights", i32 190129, i32 38}
!312 = !{!226, !151, i64 24}
!313 = !{!"branch_weights", i32 760517, i32 151}
!314 = distinct !{!314, !167, !168}
!315 = !{!258, !151, i64 72}
!316 = !{!"branch_weights", i32 39, i32 103632}
!317 = !{!"branch_weights", i32 0, i32 39}
!318 = !{!"branch_weights", i32 38, i32 1}
!319 = !{!"branch_weights", i32 0, i32 1, i32 0}
!320 = distinct !{!320, !167, !168}
!321 = !{!"branch_weights", i32 38, i32 0}
!322 = !{i8 0, i8 2}
!323 = distinct !{!323, !167, !168}
!324 = distinct !{!324, !167, !168}
!325 = !{i32 0, i32 3}
!326 = distinct !{!326, !167, !168}
!327 = distinct !{!327, !167, !168}
!328 = distinct !{!328, !167, !168}
!329 = distinct !{!329, !167, !168}
!330 = distinct !{!330, !167, !168}
!331 = distinct !{!331, !167, !168}
!332 = !{!222, !156, i64 24}
!333 = !{!334, !151, i64 0}
!334 = !{!"bitmap_head_def", !151, i64 0, !151, i64 8, !156, i64 16, !151, i64 24}
!335 = !{!336, !156, i64 16}
!336 = !{!"bitmap_element_def", !151, i64 0, !151, i64 8, !156, i64 16, !152, i64 24}
!337 = distinct !{!337, !167, !168}
!338 = distinct !{!338, !167, !168}
!339 = !{!336, !151, i64 0}
!340 = distinct !{!340, !168}
!341 = distinct !{!341, !167, !168}
!342 = distinct !{!342, !167, !168}
!343 = !{!308, !151, i64 64}
!344 = distinct !{!344, !167, !168}
!345 = distinct !{!345, !167, !168}
!346 = !{!347, !156, i64 0}
!347 = !{!"VEC_tree_base", !156, i64 0, !156, i64 4, !152, i64 8}
!348 = distinct !{!348, !167, !168}
!349 = !{!222, !157, i64 8}
!350 = distinct !{!350, !167, !168}
!351 = distinct !{!351, !167, !168}
!352 = !{!"branch_weights", i32 0, i32 0, i32 38}
!353 = !{!201, !151, i64 336}
!354 = !{!"branch_weights", i32 151, i32 1}
!355 = distinct !{!355, !167, !168}
!356 = !{!201, !157, i64 400}
!357 = !{!358, !156, i64 8}
!358 = !{!"param_info", !151, i64 0, !156, i64 8, !152, i64 12, !156, i64 16, !156, i64 20, !151, i64 24}
!359 = !{!"branch_weights", i32 1175, i32 188992}
!360 = !{!"branch_weights", i32 87644, i32 102523}
!361 = !{!"branch_weights", i32 0, i32 87644}
!362 = distinct !{!362, !167, !168}
!363 = !{!264, !151, i64 8}
!364 = !{!365, !156, i64 0}
!365 = !{!"VEC_edge_base", !156, i64 0, !156, i64 4, !152, i64 8}
!366 = !{!367, !151, i64 8}
!367 = !{!"edge_def", !151, i64 0, !151, i64 8, !152, i64 16, !151, i64 24, !151, i64 32, !156, i64 40, !156, i64 44, !156, i64 48, !156, i64 52, !157, i64 56}
!368 = !{!264, !156, i64 88}
!369 = !{!264, !157, i64 72}
!370 = !{!367, !156, i64 52}
!371 = !{!367, !157, i64 56}
!372 = !{!"branch_weights", i32 0, i32 76}
!373 = !{!"branch_weights", i32 38, i32 38}
!374 = !{!367, !156, i64 48}
!375 = distinct !{!375, !167, !168}
!376 = !{!264, !156, i64 80}
!377 = !{!278, !151, i64 8}
!378 = !{!379}
!379 = distinct !{!379, !380, !"gsi_last: argument 0"}
!380 = distinct !{!380, !"gsi_last"}
!381 = !{!"branch_weights", i32 11521, i32 142539}
!382 = !{!"branch_weights", i32 0, i32 142539}
!383 = !{i64 0, i64 8, !150, i64 8, i64 8, !150, i64 16, i64 8, !150}
!384 = !{i64 0, i64 8, !150, i64 8, i64 8, !150}
!385 = !{i64 0, i64 8, !150}
!386 = !{!"branch_weights", i32 38, i32 142501}
!387 = !{!"branch_weights", i32 30, i32 8}
!388 = !{!"branch_weights", i32 0, i32 30}
!389 = !{!390}
!390 = distinct !{!390, !391, !"gsi_start: argument 0"}
!391 = distinct !{!391, !"gsi_start"}
!392 = !{!"branch_weights", i32 2943, i32 139596}
!393 = !{!"branch_weights", i32 2943, i32 151117}
!394 = !{!"branch_weights", i32 56868, i32 97192}
!395 = !{!"branch_weights", i32 2943, i32 53925}
!396 = !{!397, !151, i64 0}
!397 = !{!"", !151, i64 0, !151, i64 8, !151, i64 16}
!398 = !{!"branch_weights", i32 53925, i32 2943}
!399 = !{!400, !151, i64 0}
!400 = !{!"rtl_bb_info", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !156, i64 32}
!401 = !{!"branch_weights", i32 0, i32 56868}
!402 = !{!"branch_weights", i32 280207, i32 0}
!403 = !{!"branch_weights", i32 1, i32 152158}
!404 = !{!"branch_weights", i32 0, i32 335166}
!405 = !{!406, !151, i64 0}
!406 = !{!"use_optype_d", !151, i64 0, !407, i64 8}
!407 = !{!"ssa_use_operand_d", !151, i64 0, !151, i64 8, !152, i64 16, !151, i64 24}
!408 = !{!407, !151, i64 24}
!409 = !{!226, !151, i64 8}
!410 = !{!411, !151, i64 8}
!411 = !{!"immediate_use_iterator_d", !151, i64 0, !151, i64 8, !407, i64 16, !151, i64 48}
!412 = !{!407, !151, i64 8}
!413 = !{!411, !151, i64 0}
!414 = distinct !{!414, !167, !168}
!415 = !{!411, !151, i64 48}
!416 = !{!407, !151, i64 0}
!417 = distinct !{!417, !167, !168}
!418 = distinct !{!418, !167, !168}
!419 = distinct !{!419, !167, !168}
!420 = !{!"branch_weights", i32 140170, i32 194996}
!421 = !{!"branch_weights", i32 0, i32 140170}
!422 = !{!"branch_weights", i32 33432, i32 106738}
!423 = !{!"branch_weights", i32 0, i32 33432}
!424 = !{!"branch_weights", i32 9533, i32 23899}
!425 = !{!"branch_weights", i32 106517, i32 24120}
!426 = !{!"branch_weights", i32 0, i32 106517}
!427 = !{!"branch_weights", i32 9533, i32 130637}
!428 = !{!"branch_weights", i32 9533, i32 0}
!429 = !{!"branch_weights", i32 371, i32 9162}
!430 = !{!"branch_weights", i32 9162, i32 0}
!431 = !{!"branch_weights", i32 0, i32 9162}
!432 = !{!"branch_weights", i32 5685, i32 3477}
!433 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 9162}
!434 = !{!"branch_weights", i32 63484, i32 76686}
!435 = !{!367, !156, i64 40}
!436 = !{!"branch_weights", i32 63484, i32 0}
!437 = !{!367, !151, i64 32}
!438 = !{!"branch_weights", i32 0, i32 138288}
!439 = distinct !{!439, !167, !168}
!440 = !{!"branch_weights", i32 74804, i32 1882}
!441 = !{!"branch_weights", i32 74804, i32 0}
!442 = !{!"branch_weights", i32 1882, i32 0}
!443 = !{!400, !151, i64 8}
!444 = !{!"branch_weights", i32 0, i32 1882}
!445 = !{!367, !151, i64 0}
!446 = !{!"branch_weights", i32 138288, i32 1882}
!447 = !{!"branch_weights", i32 0, i32 194996}
!448 = distinct !{!448, !167, !168}
!449 = !{!"branch_weights", i32 125, i32 194871}
!450 = !{!"branch_weights", i32 106, i32 526}
!451 = !{!"branch_weights", i32 19, i32 507}
!452 = distinct !{!452, !167, !168}
!453 = !{!"branch_weights", i32 19, i32 19}
!454 = !{!"branch_weights", i32 19, i32 0}
!455 = !{!"branch_weights", i32 0, i32 19}
!456 = distinct !{!456, !167, !168}
!457 = distinct !{!457, !167, !168}
!458 = !{!"branch_weights", i32 106, i32 19}
!459 = !{!"branch_weights", i32 0, i32 194871}
!460 = !{!"branch_weights", i32 141, i32 194730}
!461 = !{!"branch_weights", i32 0, i32 194730}
!462 = !{!"branch_weights", i32 125920, i32 68810}
!463 = !{!464, !151, i64 0}
!464 = !{!"def_optype_d", !151, i64 0, !151, i64 8}
!465 = !{!"branch_weights", i32 2392, i32 192479}
!466 = !{!464, !151, i64 8}
!467 = !{!"branch_weights", i32 192479, i32 0}
!468 = !{!"branch_weights", i32 192479, i32 2392}
!469 = !{!"branch_weights", i32 80652, i32 111827}
!470 = !{!"branch_weights", i32 83044, i32 111827}
!471 = !{!"branch_weights", i32 1901, i32 221438, i32 111827}
!472 = !{!"branch_weights", i32 152158, i32 183008}
!473 = distinct !{!473, !167, !168}
!474 = !{!"branch_weights", i32 0, i32 445446}
!475 = !{!"branch_weights", i32 152159, i32 293287}
!476 = !{!"branch_weights", i32 292846, i32 441}
!477 = !{!"branch_weights", i32 0, i32 441}
!478 = !{!"branch_weights", i32 141269, i32 152018}
!479 = !{!"branch_weights", i32 143760, i32 8258}
!480 = !{!"branch_weights", i32 0, i32 293287}
!481 = !{!"branch_weights", i32 293287, i32 0}
!482 = distinct !{!482, !167, !168}
!483 = !{!"branch_weights", i32 0, i32 152159}
!484 = !{!"branch_weights", i32 13768, i32 138391}
!485 = !{!"branch_weights", i32 8296, i32 5472}
!486 = !{!"branch_weights", i32 0, i32 5472}
!487 = !{!"branch_weights", i32 8399, i32 143760}
!488 = !{!"branch_weights", i32 138033, i32 14126}
!489 = !{!"branch_weights", i32 23, i32 138010}
!490 = distinct !{!490, !167, !168}
!491 = distinct !{!491, !167, !168}
!492 = !{!264, !151, i64 48}
!493 = !{!258, !156, i64 116}
!494 = distinct !{!494, !167, !168}
!495 = !{!264, !151, i64 0}
!496 = !{!"branch_weights", i32 0, i32 95}
!497 = !{!"branch_weights", i32 57, i32 38}
!498 = !{!"branch_weights", i32 38, i32 19}
!499 = distinct !{!499, !167, !168}
!500 = !{!"branch_weights", i32 38, i32 57}
!501 = !{!"branch_weights", i32 0, i32 57}
!502 = !{!"branch_weights", i32 57, i32 0}
!503 = distinct !{!503, !167, !168}
!504 = !{!"branch_weights", i32 0, i32 643832}
!505 = !{!"branch_weights", i32 218028, i32 425804}
!506 = !{!"branch_weights", i32 361038, i32 64766}
!507 = distinct !{!507, !167, !168}
!508 = !{!"branch_weights", i32 0, i32 361038}
!509 = !{!"branch_weights", i32 361038, i32 0}
!510 = !{!"branch_weights", i32 151, i32 871961}
!511 = distinct !{!511, !167, !168}
!512 = !{!"branch_weights", i32 151, i32 871837}
!513 = distinct !{!513, !167, !168}
!514 = !{!"branch_weights", i32 0, i32 579004}
!515 = !{!"branch_weights", i32 217997, i32 361007}
!516 = !{!"branch_weights", i32 0, i32 361007}
!517 = distinct !{!517, !167, !168}
!518 = !{!"branch_weights", i32 361007, i32 0}
!519 = !{!260, !156, i64 32}
!520 = !{!521, !151, i64 0}
!521 = !{!"simple_bitmap_def", !151, i64 0, !156, i64 8, !156, i64 12, !152, i64 16}
!522 = !{!201, !152, i64 481}
!523 = !{!287, !151, i64 1616}
!524 = !{!"VP", i32 0, i64 38, i64 6790757904499613287, i64 38}
!525 = !{!201, !156, i64 444}
!526 = !{!201, !152, i64 479}
!527 = !{!201, !152, i64 480}
!528 = !{!287, !151, i64 1624}
!529 = !{!"VP", i32 0, i64 38, i64 611045849880040934, i64 38}
!530 = !{!201, !151, i64 200}
!531 = !{!"branch_weights", i32 1, i32 0}
!532 = distinct !{!532, !167, !168}
!533 = !{!"branch_weights", i32 37, i32 1}
!534 = !{!535, !151, i64 168}
!535 = !{!"gcc_debug_hooks", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !151, i64 48, !151, i64 56, !151, i64 64, !151, i64 72, !151, i64 80, !151, i64 88, !151, i64 96, !151, i64 104, !151, i64 112, !151, i64 120, !151, i64 128, !151, i64 136, !151, i64 144, !151, i64 152, !151, i64 160, !151, i64 168, !151, i64 176, !151, i64 184, !151, i64 192, !151, i64 200, !151, i64 208, !151, i64 216, !151, i64 224, !151, i64 232, !151, i64 240, !156, i64 248}
!536 = !{!"VP", i32 0, i64 1, i64 7830675925866490575, i64 1}
!537 = !{!258, !151, i64 48}
!538 = !{!"function_entry_count", i64 211}
!539 = !{!"cfgexpand.c;clear_tree_used"}
!540 = !{!"branch_weights", i32 59, i32 152}
!541 = !{!"branch_weights", i32 152, i32 0}
!542 = distinct !{!542, !167, !168}
!543 = !{!"branch_weights", i32 157, i32 54}
!544 = !{!"branch_weights", i32 54, i32 0}
!545 = distinct !{!545, !167, !168}
!546 = !{i32 0, i32 536870912}
!547 = !{!"cfgexpand.c;set_rtl"}
!548 = !{!"function_entry_count", i64 118}
!549 = !{!"cfgexpand.c;set_block_levels"}
!550 = !{!"branch_weights", i32 38, i32 80}
!551 = !{!"branch_weights", i32 80, i32 0}
!552 = distinct !{!552, !167, !168}
!553 = !{!"function_entry_count", i64 901309}
!554 = !{!"cfgexpand.c;discover_nonconstant_array_refs_r"}
!555 = !{!"branch_weights", i32 144619, i32 756690}
!556 = !{!"branch_weights", i32 14688, i32 742002}
!557 = !{!"branch_weights", i32 14688, i32 27384}
!558 = !{!"branch_weights", i32 6, i32 14682}
!559 = !{!"branch_weights", i32 14676, i32 6}
!560 = !{!"branch_weights", i32 0, i32 6}
!561 = !{!"branch_weights", i32 12702, i32 14688}
!562 = !{!"branch_weights", i32 12702, i32 0}
!563 = !{!"branch_weights", i32 14682, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 0}
!564 = distinct !{!564, !167, !168}
!565 = !{!"function_entry_count", i64 80}
!566 = !{!"cfgexpand.c;expand_used_vars_for_block"}
!567 = !{!"branch_weights", i32 42, i32 38}
!568 = distinct !{!568, !167, !168}
!569 = !{!"branch_weights", i32 38, i32 42}
!570 = !{!"branch_weights", i32 42, i32 0}
!571 = distinct !{!571, !167, !168}
!572 = !{!"branch_weights", i32 0, i32 80}
!573 = distinct !{!573, !167, !168}
!574 = distinct !{!574, !167, !168}
!575 = !{ptr @stack_protect_decl_phase_1, ptr @stack_protect_decl_phase_2}
!576 = distinct !{!576, !167, !168}
!577 = distinct !{!577, !167, !168}
!578 = distinct !{!578, !167, !168}
!579 = !{i32 0, i32 16}
!580 = distinct !{!580, !167, !168}
!581 = !{!309, !151, i64 8}
!582 = distinct !{!582, !167, !168}
!583 = !{!"function_entry_count", i64 86112}
!584 = !{!"cfgexpand.c;expand_gimple_stmt"}
!585 = !{!"branch_weights", i32 0, i32 86112}
!586 = !{!"branch_weights", i32 3035, i32 83077}
!587 = !{!"branch_weights", i32 0, i32 0, i32 2943, i32 0, i32 0, i32 40, i32 0, i32 68958, i32 38, i32 14133}
!588 = !{!"branch_weights", i32 0, i32 2943}
!589 = !{!"branch_weights", i32 0, i32 68958}
!590 = !{!"branch_weights", i32 68958, i32 0}
!591 = !{!"branch_weights", i32 1, i32 68957}
!592 = !{!"branch_weights", i32 0, i32 81668}
!593 = !{!"branch_weights", i32 81668, i32 0}
!594 = !{!"branch_weights", i32 12711, i32 68957}
!595 = distinct !{!595, !167, !168}
!596 = !{!"branch_weights", i32 16387, i32 52571}
!597 = !{!"branch_weights", i32 2274, i32 66684}
!598 = !{!"branch_weights", i32 0, i32 14133}
!599 = !{!"branch_weights", i32 14093, i32 40}
!600 = !{!"branch_weights", i32 0, i32 14093, i32 0, i32 0}
!601 = !{!"branch_weights", i32 12948, i32 1145}
!602 = !{!"branch_weights", i32 0, i32 12988}
!603 = !{!"branch_weights", i32 0, i32 12988, i32 0, i32 0}
!604 = !{!"branch_weights", i32 12988, i32 0}
!605 = !{!"branch_weights", i32 12940, i32 48}
!606 = !{!"branch_weights", i32 92, i32 12848}
!607 = !{!"branch_weights", i32 0, i32 1145, i32 0, i32 0}
!608 = !{!"branch_weights", i32 0, i32 1145}
!609 = !{!610, !156, i64 0}
!610 = !{!"separate_ops", !156, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !156, i64 40}
!611 = !{!610, !151, i64 8}
!612 = !{!"branch_weights", i32 0, i32 657, i32 488}
!613 = !{!"branch_weights", i32 657, i32 0}
!614 = !{!"branch_weights", i32 0, i32 657}
!615 = !{!610, !151, i64 24}
!616 = !{!610, !151, i64 16}
!617 = !{!610, !156, i64 40}
!618 = !{!"branch_weights", i32 778, i32 367}
!619 = !{!"branch_weights", i32 0, i32 367}
!620 = !{!"branch_weights", i32 86112, i32 0}
!621 = distinct !{!621, !167, !168}
!622 = !{!"function_entry_count", i64 19}
!623 = !{!"cfgexpand.c;maybe_dump_rtl_for_gimple_stmt"}
!624 = !{!"function_entry_count", i64 150310}
!625 = !{!"cfgexpand.c;label_rtx_for_bb"}
!626 = !{!"branch_weights", i32 145136, i32 5174}
!627 = !{!"branch_weights", i32 56550, i32 88586}
!628 = !{!629}
!629 = distinct !{!629, !630, !"gsi_start_bb: argument 0"}
!630 = distinct !{!630, !"gsi_start_bb"}
!631 = !{!"branch_weights", i32 56550, i32 0}
!632 = !{!"branch_weights", i32 0, i32 56550}
!633 = !{!"branch_weights", i32 9654, i32 46896}
!634 = !{!"branch_weights", i32 2625, i32 44271}
!635 = !{!"branch_weights", i32 0, i32 2625}
!636 = !{!"branch_weights", i32 2625, i32 0}
!637 = !{!638, !152, i64 0}
!638 = !{!"ssa_operand_iterator_d", !152, i64 0, !156, i64 4, !151, i64 8, !151, i64 16, !156, i64 24, !156, i64 28, !151, i64 32}
!639 = !{!638, !151, i64 32}
!640 = !{!638, !156, i64 28}
!641 = !{!638, !156, i64 4}
!642 = !{!638, !156, i64 24}
!643 = !{!638, !151, i64 16}
!644 = distinct !{!644, !167, !168}
!645 = distinct !{!645, !167, !168}
!646 = !{!406, !151, i64 32}
!647 = !{!638, !151, i64 8}
!648 = !{!287, !151, i64 1184}
!649 = !{!650, !156, i64 0}
!650 = !{!"VEC_constructor_elt_base", !156, i64 0, !156, i64 4, !152, i64 8}
!651 = !{!652, !151, i64 8}
!652 = !{!"constructor_elt_d", !151, i64 0, !151, i64 8}
!653 = distinct !{!653, !167, !168}
!654 = distinct !{!654, !167, !168}
