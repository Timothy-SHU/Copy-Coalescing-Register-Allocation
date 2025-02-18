; ModuleID = 'tree-ssa-ccp.c'
source_filename = "tree-ssa-ccp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.real_value = type { i32, [3 x i64] }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.prop_value_d = type { i32, ptr }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimplify_ctx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cfun = external local_unnamed_addr global ptr, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.2 = private unnamed_addr constant [15 x i8] c"tree-ssa-ccp.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"ccp\00", align 1
@pass_ccp = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.4, ptr @gate_ccp, ptr @do_ssa_ccp, ptr null, ptr null, i32 0, i32 65, i32 40, i32 0, i32 0, i32 0, i32 23 } }, align 8
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"fab\00", align 1
@pass_fold_builtins = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.5, ptr null, ptr @execute_fold_all_builtins, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 2053 } }, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"%sUNINITIALIZED\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%sUNDEFINED\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%sVARYING\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%sCONSTANT \00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@const_val = internal unnamed_addr global ptr null, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@dconst0 = external global %struct.real_value, align 8
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@flag_tree_ccp = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [22 x i8] c"\0AVisiting statement:\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"No interesting values produced.  Marked VARYING.\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"which is likely \00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"CONSTANT\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"VARYING\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"Lattice value changed to \00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c".  Adding SSA edges to worklist.\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"\0AVisiting PHI node: \00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"\0A    Argument #%d (%d -> %d %sexecutable)\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"\09Value: \00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"\0A    PHI node value: \00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.27 = private unnamed_addr constant [14 x i8] c"Simplified\0A  \00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"to\0A  \00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !148 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !149
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !148 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !149
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !148 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !153
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !158
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !159

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !153
  %11 = load i8, ptr %3, align 1, !tbaa !160
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !148 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !153
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !158
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !159

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !153
  %11 = load i8, ptr %3, align 1, !tbaa !160
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !148 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !149
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !153
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !158
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !159

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !153
  %11 = load i8, ptr %3, align 1, !tbaa !160
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !148 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !149
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !148 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !159

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !161
  store i8 %12, ptr %4, align 1, !tbaa !160
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !148 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !159

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !161
  store i8 %12, ptr %4, align 1, !tbaa !160
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !148 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !159

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !161
  store i8 %12, ptr %4, align 1, !tbaa !160
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !148 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !148 {
  %2 = load i32, ptr %0, align 8, !tbaa !163
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !148 {
  %2 = load i32, ptr %0, align 8, !tbaa !163
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !148 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !149
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !164
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !148 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !149
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !164
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !148 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !148 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !148 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !148 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #18
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
  br i1 %23, label %7, label %24, !llvm.loop !165

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !148 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_lattice_value(i32 %0, ptr %1) local_unnamed_addr #9 !prof !148 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !149
  tail call fastcc void @dump_lattice_value(ptr noundef %3, ptr noundef nonnull @.str, i32 %0, ptr %1)
  %4 = load ptr, ptr @stderr, align 8, !tbaa !149
  %5 = tail call i32 @fputc(i32 10, ptr %4)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_lattice_value(ptr noundef %0, ptr noundef %1, i32 %2, ptr %3) unnamed_addr #9 !prof !148 {
  switch i32 %2, label %14 [
    i32 0, label %5
    i32 1, label %7
    i32 3, label %9
    i32 2, label %11
  ]

5:                                                ; preds = %4
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %1)
  br label %15

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %1)
  br label %15

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %1)
  br label %15

11:                                               ; preds = %4
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %1)
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !164
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %3, i32 noundef %13) #18
  br label %15

14:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 255, ptr noundef nonnull @.str.3) #18
  br label %15

15:                                               ; preds = %14, %11, %9, %7, %5
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @get_symbol_constant_value(ptr noundef %0) local_unnamed_addr #10 !prof !168 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %69, label %5, !prof !169

5:                                                ; preds = %1
  %6 = and i64 %2, 1048576
  %7 = icmp ne i64 %6, 0
  %8 = and i64 %2, 65535
  %9 = icmp eq i64 %8, 33
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %69

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !160
  %14 = icmp eq ptr %13, null
  br i1 %14, label %43, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %13) #18
  %17 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %16) #18
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %15
  %20 = load i64, ptr %16, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 121
  br i1 %22, label %23, label %66

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !160
  %26 = tail call ptr @get_base_address(ptr noundef %25) #18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %66, label %28

28:                                               ; preds = %23
  %29 = load i64, ptr %26, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 32
  br i1 %31, label %32, label %66

32:                                               ; preds = %28
  %33 = or i64 %29, 262144
  store i64 %33, ptr %26, align 8
  %34 = load ptr, ptr @cfun, align 8, !tbaa !149
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !170
  %37 = icmp eq ptr %36, null
  br i1 %37, label %66, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %36, align 8, !tbaa !172
  %40 = icmp eq ptr %39, null
  br i1 %40, label %66, label %41

41:                                               ; preds = %38
  %42 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %26) #18
  br label %66

43:                                               ; preds = %15, %11
  %44 = phi ptr [ %16, %15 ], [ null, %11 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 33554432
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !176
  %53 = tail call zeroext i8 %52(ptr noundef nonnull %0) #18
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !160
  %58 = load i64, ptr %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = and i32 %59, 65534
  %61 = add nsw i32 %60, -6
  %62 = icmp ult i32 %61, 4
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %65 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %57, ptr noundef %64) #18
  br label %66

66:                                               ; preds = %32, %55, %43, %46, %51, %19, %38, %41, %28, %23, %63
  %67 = phi ptr [ %65, %63 ], [ %16, %23 ], [ %16, %28 ], [ %16, %41 ], [ %16, %38 ], [ %16, %19 ], [ undef, %55 ], [ undef, %51 ], [ undef, %46 ], [ undef, %43 ], [ %16, %32 ]
  %68 = phi i1 [ false, %63 ], [ false, %23 ], [ false, %28 ], [ false, %41 ], [ false, %38 ], [ false, %19 ], [ true, %55 ], [ true, %51 ], [ true, %46 ], [ true, %43 ], [ false, %32 ]
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %5, %1
  br label %70

70:                                               ; preds = %66, %69
  %71 = phi ptr [ %67, %66 ], [ null, %69 ]
  ret ptr %71
}

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @may_propagate_address_into_dereference(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !188 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -47
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %8, label %12, !prof !189

8:                                                ; preds = %2
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 121
  br i1 %11, label %13, label %12, !prof !189

12:                                               ; preds = %2, %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 895, ptr noundef nonnull @.str.3) #18
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !160
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !160
  %18 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !160
  %20 = icmp eq ptr %19, null
  br i1 %20, label %59, label %21, !prof !190

21:                                               ; preds = %13
  %22 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %0) #18
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %41, label %24, !prof !189

24:                                               ; preds = %21
  %25 = load i64, ptr %1, align 8
  %26 = and i64 %25, 524288
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !160
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 524288
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %28, %24
  %35 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !160
  %37 = load ptr, ptr %14, align 8, !tbaa !160
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !160
  %40 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %36, ptr noundef %39) #18
  br label %59

41:                                               ; preds = %28, %21
  %42 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !160
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !160
  %46 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !160
  %48 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %45, ptr noundef %47) #18
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %59, label %50, !prof !190

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !160
  %53 = load ptr, ptr %14, align 8, !tbaa !160
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !160
  %56 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %52, ptr noundef %55) #18
  %57 = icmp ne i8 %56, 0
  %58 = zext i1 %57 to i8
  br label %59

59:                                               ; preds = %41, %50, %13, %34
  %60 = phi i8 [ %40, %34 ], [ 0, %13 ], [ 0, %41 ], [ %58, %50 ]
  ret i8 %60
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @fold_const_aggregate_ref(ptr noundef %0) local_unnamed_addr #10 !prof !191 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !164
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %9, !prof !192

7:                                                ; preds = %1
  %8 = tail call ptr @get_symbol_constant_value(ptr noundef nonnull %0)
  br label %338

9:                                                ; preds = %1
  %10 = trunc i64 %2 to i16
  switch i16 %10, label %337 [
    i16 45, label %11
    i16 41, label %194
    i16 43, label %273
    i16 44, label %273
    i16 47, label %302
  ], !prof !193

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !160
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %338 [
    i16 32, label %16
    i16 45, label %32
    i16 41, label %32
    i16 28, label %34
    i16 51, label %34
  ], !prof !194

16:                                               ; preds = %11
  %17 = and i64 %14, 1048576
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %338, label %19, !prof !195

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !160
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 15
  br i1 %24, label %25, label %338

25:                                               ; preds = %19
  %26 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !176
  %27 = tail call zeroext i8 %26(ptr noundef nonnull %13) #18
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %338, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !160
  br label %34

32:                                               ; preds = %11, %11
  %33 = tail call ptr @fold_const_aggregate_ref(ptr noundef nonnull %13)
  br label %34

34:                                               ; preds = %11, %11, %32, %29
  %35 = phi ptr [ %33, %32 ], [ %31, %29 ], [ %13, %11 ], [ %13, %11 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %338, label %37, !prof !196

37:                                               ; preds = %34
  %38 = load i64, ptr %35, align 8
  %39 = trunc i64 %38 to i16
  switch i16 %39, label %338 [
    i16 51, label %40
    i16 28, label %40
  ]

40:                                               ; preds = %37, %37
  %41 = and i64 %38, 67108864
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %338, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !160
  %46 = load i64, ptr %45, align 8
  %47 = trunc i64 %46 to i16
  switch i16 %47, label %338 [
    i16 141, label %48
    i16 23, label %60
  ]

48:                                               ; preds = %43
  %49 = tail call fastcc ptr @get_value(ptr noundef nonnull %45)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %338, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %49, align 8, !tbaa !197
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %338

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.prop_value_d, ptr %49, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !199
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 23
  br i1 %59, label %60, label %338

60:                                               ; preds = %54, %43
  %61 = phi ptr [ %45, %43 ], [ %56, %54 ]
  %62 = load i64, ptr %35, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 28
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.tree_constructor, ptr %35, i64 0, i32 1
  br label %154

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !160
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 14
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = tail call i32 @vector_type_mode(ptr noundef nonnull %69) #18
  br label %80

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.tree_type, ptr %69, i64 0, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = lshr i32 %77, 16
  %79 = and i32 %78, 255
  br label %80

80:                                               ; preds = %75, %73
  %81 = phi i32 [ %74, %73 ], [ %79, %75 ]
  %82 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !160
  %84 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !160
  %86 = load i64, ptr %85, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 14
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = tail call i32 @vector_type_mode(ptr noundef nonnull %85) #18
  br label %96

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.tree_type, ptr %85, i64 0, i32 6
  %93 = load i32, ptr %92, align 4
  %94 = lshr i32 %93, 16
  %95 = and i32 %94, 255
  br label %96

96:                                               ; preds = %91, %89
  %97 = phi i32 [ %90, %89 ], [ %95, %91 ]
  %98 = icmp eq i32 %81, %97
  br i1 %98, label %99, label %338

99:                                               ; preds = %96
  %100 = load ptr, ptr %82, align 8, !tbaa !160
  %101 = getelementptr inbounds %struct.tree_common, ptr %100, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !160
  %103 = load i64, ptr %102, align 8
  %104 = and i64 %103, 65535
  %105 = icmp eq i64 %104, 14
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = tail call i32 @vector_type_mode(ptr noundef nonnull %102) #18
  br label %113

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.tree_type, ptr %102, i64 0, i32 6
  %110 = load i32, ptr %109, align 4
  %111 = lshr i32 %110, 16
  %112 = and i32 %111, 255
  br label %113

113:                                              ; preds = %108, %106
  %114 = phi i32 [ %107, %106 ], [ %112, %108 ]
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !160
  %118 = icmp eq i8 %117, 2
  br i1 %118, label %119, label %338

119:                                              ; preds = %113
  %120 = load ptr, ptr %82, align 8, !tbaa !160
  %121 = getelementptr inbounds %struct.tree_common, ptr %120, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !160
  %123 = load i64, ptr %122, align 8
  %124 = and i64 %123, 65535
  %125 = icmp eq i64 %124, 14
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = tail call i32 @vector_type_mode(ptr noundef nonnull %122) #18
  br label %133

128:                                              ; preds = %119
  %129 = getelementptr inbounds %struct.tree_type, ptr %122, i64 0, i32 6
  %130 = load i32, ptr %129, align 4
  %131 = lshr i32 %130, 16
  %132 = and i32 %131, 255
  br label %133

133:                                              ; preds = %128, %126
  %134 = phi i32 [ %127, %126 ], [ %132, %128 ]
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !160
  %138 = icmp eq i8 %137, 1
  br i1 %138, label %139, label %338

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.tree_string, ptr %35, i64 0, i32 1
  %141 = load i32, ptr %140, align 8, !tbaa !160
  %142 = sext i32 %141 to i64
  %143 = tail call i32 @compare_tree_int(ptr noundef nonnull %61, i64 noundef %142) #18
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %338

145:                                              ; preds = %139
  %146 = load ptr, ptr %68, align 8, !tbaa !160
  %147 = getelementptr inbounds %struct.tree_string, ptr %35, i64 0, i32 2
  %148 = getelementptr inbounds %struct.tree_int_cst, ptr %61, i64 0, i32 1
  %149 = load i64, ptr %148, align 8, !tbaa !160
  %150 = getelementptr inbounds i8, ptr %147, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !160
  %152 = sext i8 %151 to i64
  %153 = tail call ptr @build_int_cst_type(ptr noundef %146, i64 noundef %152) #18
  br label %338

154:                                              ; preds = %174, %65
  %155 = phi i64 [ %177, %174 ], [ 0, %65 ]
  %156 = phi ptr [ %172, %174 ], [ undef, %65 ]
  %157 = phi ptr [ %173, %174 ], [ undef, %65 ]
  %158 = load ptr, ptr %66, align 8, !tbaa !160
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %154
  %161 = load i32, ptr %158, align 8, !tbaa !200
  br label %162

162:                                              ; preds = %154, %160
  %163 = phi i32 [ %161, %160 ], [ 0, %154 ]
  %164 = zext i32 %163 to i64
  %165 = icmp ult i64 %155, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %158, i64 0, i32 2, i64 %155
  %168 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %158, i64 0, i32 2, i64 %155, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !202
  %170 = load ptr, ptr %167, align 8, !tbaa !204
  br label %171

171:                                              ; preds = %162, %166
  %172 = phi ptr [ %156, %162 ], [ %170, %166 ]
  %173 = phi ptr [ %157, %162 ], [ %169, %166 ]
  br i1 %165, label %174, label %337

174:                                              ; preds = %171
  %175 = tail call i32 @tree_int_cst_equal(ptr noundef %172, ptr noundef nonnull %61) #18
  %176 = icmp eq i32 %175, 0
  %177 = add nuw nsw i64 %155, 1
  br i1 %176, label %154, label %178, !llvm.loop !205

178:                                              ; preds = %174
  %179 = tail call ptr @tree_strip_nop_conversions(ptr noundef %173) #18
  %180 = load i64, ptr %179, align 8
  %181 = and i64 %180, 65535
  %182 = icmp eq i64 %181, 121
  br i1 %182, label %183, label %338

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.tree_exp, ptr %179, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !160
  %186 = tail call ptr @get_base_address(ptr noundef %185) #18
  %187 = icmp eq ptr %186, null
  br i1 %187, label %338, label %188

188:                                              ; preds = %183
  %189 = load i64, ptr %186, align 8
  %190 = and i64 %189, 65535
  %191 = icmp eq i64 %190, 32
  br i1 %191, label %192, label %338

192:                                              ; preds = %188
  %193 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %186) #18
  br label %338

194:                                              ; preds = %9
  %195 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !160
  %197 = load i64, ptr %196, align 8
  %198 = trunc i64 %197 to i16
  switch i16 %198, label %338 [
    i16 32, label %199
    i16 45, label %215
    i16 41, label %215
  ], !prof !206

199:                                              ; preds = %194
  %200 = and i64 %197, 1048576
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %338, label %202, !prof !207

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.tree_common, ptr %196, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !160
  %205 = load i64, ptr %204, align 8
  %206 = and i64 %205, 65535
  %207 = icmp eq i64 %206, 16
  br i1 %207, label %208, label %338

208:                                              ; preds = %202
  %209 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !176
  %210 = tail call zeroext i8 %209(ptr noundef nonnull %196) #18
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %338, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.tree_decl_common, ptr %196, i64 0, i32 5
  %214 = load ptr, ptr %213, align 8, !tbaa !160
  br label %217

215:                                              ; preds = %194, %194
  %216 = tail call ptr @fold_const_aggregate_ref(ptr noundef nonnull %196)
  br label %217

217:                                              ; preds = %215, %212
  %218 = phi ptr [ %216, %215 ], [ %214, %212 ]
  %219 = icmp eq ptr %218, null
  br i1 %219, label %338, label %220, !prof !208

220:                                              ; preds = %217
  %221 = load i64, ptr %218, align 8
  %222 = and i64 %221, 67174399
  %223 = icmp eq i64 %222, 67108915
  br i1 %223, label %224, label %338

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %226 = load ptr, ptr %225, align 8, !tbaa !160
  %227 = getelementptr inbounds %struct.tree_constructor, ptr %218, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !160
  %229 = icmp eq ptr %228, null
  br label %230

230:                                              ; preds = %271, %224
  %231 = phi i64 [ 0, %224 ], [ %272, %271 ]
  %232 = phi ptr [ undef, %224 ], [ %246, %271 ]
  %233 = phi ptr [ undef, %224 ], [ %247, %271 ]
  br i1 %229, label %236, label %234

234:                                              ; preds = %230
  %235 = load i32, ptr %228, align 8, !tbaa !200
  br label %236

236:                                              ; preds = %230, %234
  %237 = phi i32 [ %235, %234 ], [ 0, %230 ]
  %238 = zext i32 %237 to i64
  %239 = icmp ult i64 %231, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %228, i64 0, i32 2, i64 %231
  %242 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %228, i64 0, i32 2, i64 %231, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !202
  %244 = load ptr, ptr %241, align 8, !tbaa !204
  br label %245

245:                                              ; preds = %236, %240
  %246 = phi ptr [ %232, %236 ], [ %244, %240 ]
  %247 = phi ptr [ %233, %236 ], [ %243, %240 ]
  br i1 %239, label %248, label %337

248:                                              ; preds = %245
  %249 = icmp eq ptr %246, %226
  br i1 %249, label %250, label %271

250:                                              ; preds = %248
  %251 = getelementptr inbounds %struct.tree_decl_common, ptr %246, i64 0, i32 2
  %252 = load i64, ptr %251, align 8
  %253 = and i64 %252, 33554432
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %271

255:                                              ; preds = %250
  %256 = tail call ptr @tree_strip_nop_conversions(ptr noundef %247) #18
  %257 = load i64, ptr %256, align 8
  %258 = and i64 %257, 65535
  %259 = icmp eq i64 %258, 121
  br i1 %259, label %260, label %338

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.tree_exp, ptr %256, i64 0, i32 3
  %262 = load ptr, ptr %261, align 8, !tbaa !160
  %263 = tail call ptr @get_base_address(ptr noundef %262) #18
  %264 = icmp eq ptr %263, null
  br i1 %264, label %338, label %265

265:                                              ; preds = %260
  %266 = load i64, ptr %263, align 8
  %267 = and i64 %266, 65535
  %268 = icmp eq i64 %267, 32
  br i1 %268, label %269, label %338

269:                                              ; preds = %265
  %270 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %263) #18
  br label %338

271:                                              ; preds = %248, %250
  %272 = add nuw nsw i64 %231, 1
  br label %230, !llvm.loop !209

273:                                              ; preds = %9, %9
  %274 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %275 = load ptr, ptr %274, align 8, !tbaa !160
  %276 = tail call ptr @fold_const_aggregate_ref(ptr noundef %275)
  %277 = icmp eq ptr %276, null
  br i1 %277, label %299, label %278

278:                                              ; preds = %273
  %279 = load i64, ptr %276, align 8
  %280 = and i64 %279, 65535
  %281 = icmp eq i64 %280, 26
  br i1 %281, label %282, label %299

282:                                              ; preds = %278
  %283 = load i64, ptr %0, align 8
  %284 = and i64 %283, 65535
  %285 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !164
  %287 = add i32 %286, -4
  %288 = icmp ult i32 %287, 7
  br i1 %288, label %289, label %292

289:                                              ; preds = %282
  %290 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %291 = load i32, ptr %290, align 8, !tbaa !160
  br label %292

292:                                              ; preds = %282, %289
  %293 = phi i32 [ %291, %289 ], [ 0, %282 ]
  %294 = trunc i64 %283 to i32
  %295 = and i32 %294, 65535
  %296 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !160
  %298 = tail call ptr @fold_build1_stat_loc(i32 noundef %293, i32 noundef %295, ptr noundef %297, ptr noundef nonnull %276) #18
  br label %299

299:                                              ; preds = %273, %278, %292
  %300 = phi i1 [ false, %292 ], [ true, %278 ], [ true, %273 ]
  %301 = phi ptr [ %298, %292 ], [ undef, %278 ], [ undef, %273 ]
  br i1 %300, label %337, label %338

302:                                              ; preds = %9
  %303 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %304 = load ptr, ptr %303, align 8, !tbaa !160
  %305 = load i64, ptr %304, align 8
  %306 = and i64 %305, 65535
  %307 = icmp eq i64 %306, 141
  br i1 %307, label %308, label %334, !prof !210

308:                                              ; preds = %302
  %309 = tail call fastcc ptr @get_value(ptr noundef nonnull %304)
  %310 = icmp eq ptr %309, null
  br i1 %310, label %334, label %311, !prof !211

311:                                              ; preds = %308
  %312 = load i32, ptr %309, align 8, !tbaa !197
  %313 = icmp eq i32 %312, 2
  br i1 %313, label %314, label %334, !prof !190

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct.prop_value_d, ptr %309, i64 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !199
  %317 = load i64, ptr %316, align 8
  %318 = and i64 %317, 65535
  %319 = icmp eq i64 %318, 121
  br i1 %319, label %320, label %334

320:                                              ; preds = %314
  %321 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !160
  %323 = getelementptr inbounds %struct.tree_common, ptr %316, i64 0, i32 2
  %324 = load ptr, ptr %323, align 8, !tbaa !160
  %325 = getelementptr inbounds %struct.tree_common, ptr %324, i64 0, i32 2
  %326 = load ptr, ptr %325, align 8, !tbaa !160
  %327 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %322, ptr noundef %326) #18
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %334, label %329

329:                                              ; preds = %320
  %330 = load ptr, ptr %315, align 8, !tbaa !199
  %331 = getelementptr inbounds %struct.tree_exp, ptr %330, i64 0, i32 3
  %332 = load ptr, ptr %331, align 8, !tbaa !160
  %333 = tail call ptr @fold_const_aggregate_ref(ptr noundef %332)
  br label %334

334:                                              ; preds = %302, %308, %311, %314, %320, %329
  %335 = phi i1 [ false, %329 ], [ true, %320 ], [ true, %314 ], [ true, %311 ], [ true, %308 ], [ true, %302 ]
  %336 = phi ptr [ %333, %329 ], [ undef, %320 ], [ undef, %314 ], [ undef, %311 ], [ undef, %308 ], [ undef, %302 ]
  br i1 %335, label %337, label %338, !prof !210

337:                                              ; preds = %245, %171, %9, %299, %334
  br label %338

338:                                              ; preds = %334, %54, %40, %11, %255, %269, %265, %260, %217, %220, %194, %199, %202, %208, %178, %192, %188, %183, %96, %113, %133, %139, %43, %48, %51, %34, %37, %16, %19, %25, %299, %337, %145, %7
  %339 = phi ptr [ %8, %7 ], [ null, %337 ], [ %301, %299 ], [ %153, %145 ], [ null, %25 ], [ null, %19 ], [ null, %16 ], [ null, %37 ], [ null, %34 ], [ null, %51 ], [ null, %48 ], [ null, %43 ], [ null, %139 ], [ null, %133 ], [ null, %113 ], [ null, %96 ], [ %179, %183 ], [ %179, %188 ], [ %179, %192 ], [ %179, %178 ], [ null, %208 ], [ null, %202 ], [ null, %199 ], [ null, %194 ], [ null, %220 ], [ null, %217 ], [ %256, %260 ], [ %256, %265 ], [ %256, %269 ], [ %256, %255 ], [ null, %11 ], [ null, %40 ], [ null, %54 ], [ %336, %334 ]
  ret ptr %339
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef ptr @get_value(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !212 !PGOFuncName !213 {
  %2 = alloca %struct.real_value, align 8
  %3 = load ptr, ptr @const_val, align 8, !tbaa !149
  %4 = icmp eq ptr %3, null
  br i1 %4, label %246, label %5, !prof !214

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !160
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.prop_value_d, ptr %3, i64 %8
  %10 = load i32, ptr %9, align 8, !tbaa !197
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %166, !prof !215

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !160
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !160
  %17 = load i32, ptr %16, align 8
  %18 = trunc i32 %17 to i8
  switch i8 %18, label %41 [
    i8 18, label %19
    i8 6, label %45
    i8 8, label %27
  ], !prof !216

19:                                               ; preds = %12
  %20 = tail call zeroext i8 @is_gimple_reg(ptr noundef %14) #18
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22, !prof !217

22:                                               ; preds = %19
  %23 = load i64, ptr %14, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 34
  br i1 %25, label %26, label %162, !prof !218

26:                                               ; preds = %22, %19
  br label %162

27:                                               ; preds = %12
  %28 = and i32 %17, 255
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !164
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %32
  %34 = load i64, ptr %33, align 8, !tbaa !219
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %37

37:                                               ; preds = %36, %27
  %38 = getelementptr inbounds i8, ptr %16, i64 %34
  %39 = load ptr, ptr %38, align 8, !tbaa !149
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %12
  %42 = load i32, ptr %16, align 8
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %43, 16
  br i1 %44, label %45, label %162, !prof !220

45:                                               ; preds = %41, %12, %37
  %46 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %16) #18
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %161, label %48, !prof !221

48:                                               ; preds = %45
  %49 = load i32, ptr %16, align 8
  %50 = and i32 %49, 255
  %51 = add nsw i32 %50, -1
  %52 = icmp ult i32 %51, 9
  tail call void @llvm.assume(i1 %52)
  %53 = zext nneg i32 %50 to i64
  %54 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !164
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !219
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61, !prof !222

60:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %61

61:                                               ; preds = %60, %48
  %62 = getelementptr inbounds i8, ptr %16, i64 %58
  %63 = getelementptr inbounds ptr, ptr %62, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !149
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, 65535
  %67 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !164
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %70, label %161, !prof !223

70:                                               ; preds = %61
  %71 = load i32, ptr %16, align 8
  %72 = and i32 %71, 255
  %73 = add nsw i32 %72, -10
  %74 = icmp ult i32 %73, -9
  br i1 %74, label %88, label %75, !prof !224

75:                                               ; preds = %70
  %76 = zext nneg i32 %72 to i64
  %77 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !164
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %79
  %81 = load i64, ptr %80, align 8, !tbaa !219
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84, !prof !224

83:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %84

84:                                               ; preds = %83, %75
  %85 = getelementptr inbounds i8, ptr %16, i64 %81
  %86 = getelementptr inbounds ptr, ptr %85, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !149
  br label %88

88:                                               ; preds = %84, %70
  %89 = phi ptr [ %87, %84 ], [ null, %70 ]
  %90 = load i64, ptr %89, align 8
  %91 = and i64 %90, 67108864
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %157, label %93, !prof !169

93:                                               ; preds = %88
  %94 = and i64 %90, 1048576
  %95 = icmp ne i64 %94, 0
  %96 = and i64 %90, 65535
  %97 = icmp eq i64 %96, 33
  %98 = or i1 %95, %97
  br i1 %98, label %99, label %157

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.tree_decl_common, ptr %89, i64 0, i32 5
  %101 = load ptr, ptr %100, align 8, !tbaa !160
  %102 = icmp eq ptr %101, null
  br i1 %102, label %131, label %103

103:                                              ; preds = %99
  %104 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %101) #18
  %105 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %104) #18
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %131, label %107

107:                                              ; preds = %103
  %108 = load i64, ptr %104, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 121
  br i1 %110, label %111, label %154

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.tree_exp, ptr %104, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !160
  %114 = tail call ptr @get_base_address(ptr noundef %113) #18
  %115 = icmp eq ptr %114, null
  br i1 %115, label %154, label %116

116:                                              ; preds = %111
  %117 = load i64, ptr %114, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 32
  br i1 %119, label %120, label %154

120:                                              ; preds = %116
  %121 = or i64 %117, 262144
  store i64 %121, ptr %114, align 8
  %122 = load ptr, ptr @cfun, align 8, !tbaa !149
  %123 = getelementptr inbounds %struct.function, ptr %122, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !170
  %125 = icmp eq ptr %124, null
  br i1 %125, label %154, label %126

126:                                              ; preds = %120
  %127 = load ptr, ptr %124, align 8, !tbaa !172
  %128 = icmp eq ptr %127, null
  br i1 %128, label %154, label %129

129:                                              ; preds = %126
  %130 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %114) #18
  br label %154

131:                                              ; preds = %103, %99
  %132 = phi ptr [ %104, %103 ], [ null, %99 ]
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %154

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.tree_decl_common, ptr %89, i64 0, i32 2
  %136 = load i64, ptr %135, align 8
  %137 = and i64 %136, 33554432
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %134
  %140 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !176
  %141 = tail call zeroext i8 %140(ptr noundef nonnull %89) #18
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.tree_common, ptr %89, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !160
  %146 = load i64, ptr %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = and i32 %147, 65534
  %149 = add nsw i32 %148, -6
  %150 = icmp ult i32 %149, 4
  br i1 %150, label %151, label %154

151:                                              ; preds = %143
  %152 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %153 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %145, ptr noundef %152) #18
  br label %154

154:                                              ; preds = %151, %143, %139, %134, %131, %129, %126, %120, %116, %111, %107
  %155 = phi ptr [ %153, %151 ], [ %104, %111 ], [ %104, %116 ], [ %104, %129 ], [ %104, %126 ], [ %104, %107 ], [ undef, %143 ], [ undef, %139 ], [ undef, %134 ], [ undef, %131 ], [ %104, %120 ]
  %156 = phi i1 [ false, %151 ], [ false, %111 ], [ false, %116 ], [ false, %129 ], [ false, %126 ], [ false, %107 ], [ true, %143 ], [ true, %139 ], [ true, %134 ], [ true, %131 ], [ false, %120 ]
  br i1 %156, label %157, label %158

157:                                              ; preds = %154, %93, %88
  br label %158

158:                                              ; preds = %154, %157
  %159 = phi ptr [ %155, %154 ], [ null, %157 ]
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %162, !prof !225

161:                                              ; preds = %158, %61, %45
  br label %162

162:                                              ; preds = %22, %26, %41, %158, %161
  %163 = phi ptr [ null, %26 ], [ null, %22 ], [ null, %161 ], [ %159, %158 ], [ null, %41 ]
  %164 = phi i32 [ 3, %26 ], [ 1, %22 ], [ 1, %161 ], [ 2, %158 ], [ 3, %41 ]
  store i32 %164, ptr %9, align 8, !tbaa.struct !226
  %165 = getelementptr inbounds i8, ptr %9, i64 8
  store ptr %163, ptr %165, align 8, !tbaa.struct !227
  br label %166

166:                                              ; preds = %162, %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #18
  %167 = load i32, ptr %9, align 8, !tbaa !197
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %169, label %245, !prof !228

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.prop_value_d, ptr %3, i64 %8, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !199
  %172 = load i64, ptr %171, align 8
  %173 = and i64 %172, 65535
  %174 = icmp eq i64 %173, 24
  br i1 %174, label %175, label %245, !prof !229

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.tree_real_cst, ptr %171, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %177, i64 32, i1 false), !tbaa.struct !230
  %178 = getelementptr inbounds %struct.tree_common, ptr %171, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !160
  %180 = load i64, ptr %179, align 8
  %181 = and i64 %180, 65535
  %182 = icmp eq i64 %181, 14
  br i1 %182, label %183, label %185

183:                                              ; preds = %175
  %184 = tail call i32 @vector_type_mode(ptr noundef nonnull %179) #18
  br label %190

185:                                              ; preds = %175
  %186 = getelementptr inbounds %struct.tree_type, ptr %179, i64 0, i32 6
  %187 = load i32, ptr %186, align 4
  %188 = lshr i32 %187, 16
  %189 = and i32 %188, 255
  br label %190

190:                                              ; preds = %185, %183
  %191 = phi i32 [ %184, %183 ], [ %189, %185 ]
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !160
  switch i8 %194, label %214 [
    i8 8, label %195
    i8 9, label %195
    i8 11, label %195
    i8 17, label %195
  ]

195:                                              ; preds = %190, %190, %190, %190
  %196 = and i8 %194, -2
  %197 = icmp eq i8 %196, 8
  br i1 %197, label %202, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %192
  %200 = load i8, ptr %199, align 1, !tbaa !160
  %201 = zext i8 %200 to i32
  br label %202

202:                                              ; preds = %195, %198
  %203 = phi i32 [ %201, %198 ], [ %191, %195 ]
  %204 = add i32 %203, -38
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !149
  %208 = getelementptr inbounds %struct.real_format, ptr %207, i64 0, i32 14
  %209 = load i8, ptr %208, align 1, !tbaa !231
  %210 = icmp ne i8 %209, 0
  %211 = load i32, ptr @flag_signed_zeros, align 4
  %212 = icmp ne i32 %211, 0
  %213 = select i1 %210, i1 %212, i1 false
  br i1 %213, label %219, label %214

214:                                              ; preds = %202, %190
  %215 = call zeroext i8 @real_isnegzero(ptr noundef nonnull %2) #18
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %214
  %218 = call ptr @build_real(ptr noundef nonnull %179, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #18
  br label %243

219:                                              ; preds = %214, %202
  switch i8 %194, label %239 [
    i8 8, label %220
    i8 9, label %220
    i8 11, label %220
    i8 17, label %220
  ]

220:                                              ; preds = %219, %219, %219, %219
  %221 = and i8 %194, -2
  %222 = icmp eq i8 %221, 8
  br i1 %222, label %227, label %223

223:                                              ; preds = %220
  %224 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %192
  %225 = load i8, ptr %224, align 1, !tbaa !160
  %226 = zext i8 %225 to i32
  br label %227

227:                                              ; preds = %220, %223
  %228 = phi i32 [ %226, %223 ], [ %191, %220 ]
  %229 = add i32 %228, -38
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !149
  %233 = getelementptr inbounds %struct.real_format, ptr %232, i64 0, i32 11
  %234 = load i8, ptr %233, align 2, !tbaa !233
  %235 = icmp eq i8 %234, 0
  %236 = load i32, ptr @flag_finite_math_only, align 4
  %237 = icmp ne i32 %236, 0
  %238 = select i1 %235, i1 true, i1 %237
  br i1 %238, label %239, label %245

239:                                              ; preds = %227, %219
  %240 = call zeroext i8 @real_isnan(ptr noundef nonnull %2) #18
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %239
  store i32 1, ptr %9, align 8, !tbaa !197
  br label %243

243:                                              ; preds = %242, %217
  %244 = phi ptr [ %218, %217 ], [ null, %242 ]
  store ptr %244, ptr %170, align 8, !tbaa !199
  br label %245

245:                                              ; preds = %243, %166, %169, %227, %239
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  br label %246

246:                                              ; preds = %1, %245
  %247 = phi ptr [ %9, %245 ], [ null, %1 ]
  ret ptr %247
}

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_ccp() #11 !prof !234 !PGOFuncName !235 {
  %1 = load i32, ptr @flag_tree_ccp, align 4, !tbaa !164
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @do_ssa_ccp() #12 !prof !234 !PGOFuncName !236 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !237
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8, !prof !217

8:                                                ; preds = %0
  %9 = load i32, ptr %6, align 8, !tbaa !238
  %10 = zext i32 %9 to i64
  br label %11

11:                                               ; preds = %8, %0
  %12 = phi i64 [ %10, %8 ], [ 0, %0 ]
  %13 = tail call ptr @xcalloc(i64 noundef %12, i64 noundef 16) #18
  store ptr %13, ptr @const_val, align 8, !tbaa !149
  %14 = load ptr, ptr @cfun, align 8, !tbaa !149
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !240
  %17 = load ptr, ptr %16, align 8, !tbaa !241
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !243
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !245
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %176, label %32, !prof !246

23:                                               ; preds = %169, %49
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !243
  %26 = load ptr, ptr @cfun, align 8, !tbaa !149
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !240
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !245
  %31 = icmp eq ptr %25, %30
  br i1 %31, label %176, label %32, !prof !247, !llvm.loop !248

32:                                               ; preds = %11, %23
  %33 = phi ptr [ %25, %23 ], [ %19, %11 ]
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 13
  %35 = load i32, ptr %34, align 8, !tbaa !249, !noalias !250
  %36 = and i32 %35, 512
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44, !prof !253

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !160, !noalias !250
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42, !prof !254

42:                                               ; preds = %38
  %43 = load ptr, ptr %40, align 8, !tbaa !255, !noalias !250
  br label %44

44:                                               ; preds = %42, %38, %32
  %45 = phi ptr [ %43, %42 ], [ null, %38 ], [ null, %32 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47, !prof !254

47:                                               ; preds = %44
  %48 = load ptr, ptr %45, align 8, !tbaa !257, !noalias !250
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi ptr [ %48, %47 ], [ null, %44 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %23, label %52, !prof !259

52:                                               ; preds = %49, %169
  %53 = phi ptr [ %174, %169 ], [ %50, %49 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !260
  %55 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %54) #18
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %124, !prof !262

57:                                               ; preds = %52
  %58 = load i32, ptr %54, align 8
  %59 = and i32 %58, 254
  %60 = add nsw i32 %59, -10
  %61 = icmp ult i32 %60, -4
  %62 = and i32 %58, 16384
  %63 = icmp eq i32 %62, 0
  %64 = or i1 %63, %61
  br i1 %64, label %65, label %124, !prof !263

65:                                               ; preds = %57
  %66 = and i32 %58, 255
  %67 = icmp eq i32 %66, 8
  br i1 %67, label %68, label %115, !prof !264

68:                                               ; preds = %65
  %69 = zext nneg i32 %66 to i64
  %70 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !164
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %72
  %74 = load i64, ptr %73, align 8, !tbaa !219
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77, !prof !265

76:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %77

77:                                               ; preds = %76, %68
  %78 = getelementptr inbounds i8, ptr %54, i64 %74
  %79 = load ptr, ptr %78, align 8, !tbaa !149
  %80 = icmp eq ptr %79, null
  br i1 %80, label %124, label %81, !prof !266

81:                                               ; preds = %77
  %82 = load i32, ptr %54, align 8
  %83 = and i32 %82, 255
  %84 = add nsw i32 %83, -10
  %85 = icmp ult i32 %84, -9
  br i1 %85, label %99, label %86, !prof !267

86:                                               ; preds = %81
  %87 = zext nneg i32 %83 to i64
  %88 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !164
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !219
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95, !prof !267

94:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %95

95:                                               ; preds = %94, %86
  %96 = getelementptr inbounds i8, ptr %54, i64 %92
  %97 = getelementptr inbounds ptr, ptr %96, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !149
  br label %99

99:                                               ; preds = %95, %81
  %100 = phi ptr [ %98, %95 ], [ null, %81 ]
  %101 = load i64, ptr %100, align 8
  %102 = and i64 %101, 65535
  %103 = icmp eq i64 %102, 121
  br i1 %103, label %104, label %107, !prof !268

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !160
  br label %107

107:                                              ; preds = %104, %99
  %108 = phi ptr [ %106, %104 ], [ null, %99 ]
  %109 = icmp eq ptr %108, null
  br i1 %109, label %120, label %110, !prof !267

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.tree_function_decl, ptr %108, i64 0, i32 5
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 6144
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %124, label %120, !prof !268

115:                                              ; preds = %65
  br i1 %61, label %120, label %116, !prof !269

116:                                              ; preds = %115
  %117 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %54, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !160
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %124, !prof !270

120:                                              ; preds = %116, %115, %110, %107
  %121 = load i32, ptr %54, align 8
  %122 = trunc i32 %121 to i8
  switch i8 %122, label %124 [
    i8 6, label %123
    i8 1, label %123
    i8 5, label %123
    i8 8, label %123
  ], !prof !271

123:                                              ; preds = %120, %120, %120, %120
  br label %124

124:                                              ; preds = %110, %123, %120, %116, %77, %57, %52
  %125 = phi i1 [ true, %52 ], [ true, %123 ], [ false, %57 ], [ false, %116 ], [ false, %120 ], [ false, %77 ], [ false, %110 ]
  %126 = phi i32 [ 512, %52 ], [ 512, %123 ], [ 0, %57 ], [ 0, %116 ], [ 0, %120 ], [ 0, %77 ], [ 0, %110 ]
  br i1 %125, label %169, label %127, !prof !272

127:                                              ; preds = %124
  %128 = load i32, ptr %54, align 8
  %129 = and i32 %128, 255
  %130 = add nsw i32 %129, -10
  %131 = icmp ult i32 %130, -9
  br i1 %131, label %135, label %132, !prof !273

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %54, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !160
  br label %135

135:                                              ; preds = %132, %127
  %136 = phi ptr [ %134, %132 ], [ null, %127 ]
  %137 = icmp eq ptr %136, null
  br i1 %137, label %143, label %138, !prof !274

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.def_optype_d, ptr %136, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !275
  %141 = load ptr, ptr %140, align 8, !tbaa !149
  %142 = load ptr, ptr %136, align 8, !tbaa !277
  br label %143

143:                                              ; preds = %138, %135
  %144 = phi ptr [ %142, %138 ], [ %136, %135 ]
  %145 = phi i8 [ 0, %138 ], [ 1, %135 ]
  %146 = phi ptr [ %141, %138 ], [ null, %135 ]
  br i1 %137, label %169, label %147, !prof !278

147:                                              ; preds = %143
  %148 = load ptr, ptr @const_val, align 8, !tbaa !149
  br label %149

149:                                              ; preds = %147, %164
  %150 = phi ptr [ %146, %147 ], [ %167, %164 ]
  %151 = phi i8 [ %145, %147 ], [ %166, %164 ]
  %152 = phi ptr [ %144, %147 ], [ %165, %164 ]
  %153 = getelementptr inbounds %struct.tree_ssa_name, ptr %150, i64 0, i32 3
  %154 = load i32, ptr %153, align 8, !tbaa !160
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.prop_value_d, ptr %148, i64 %155
  store i32 3, ptr %156, align 8, !tbaa !197
  %157 = getelementptr inbounds %struct.prop_value_d, ptr %148, i64 %155, i32 1
  store ptr null, ptr %157, align 8, !tbaa !199
  %158 = icmp eq ptr %152, null
  br i1 %158, label %164, label %159, !prof !279

159:                                              ; preds = %149
  %160 = getelementptr inbounds %struct.def_optype_d, ptr %152, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !275
  %162 = load ptr, ptr %161, align 8, !tbaa !149
  %163 = load ptr, ptr %152, align 8, !tbaa !277
  br label %164

164:                                              ; preds = %159, %149
  %165 = phi ptr [ %163, %159 ], [ %152, %149 ]
  %166 = phi i8 [ %151, %159 ], [ 1, %149 ]
  %167 = phi ptr [ %162, %159 ], [ null, %149 ]
  %168 = icmp eq i8 %166, 0
  br i1 %168, label %149, label %169, !prof !280, !llvm.loop !281

169:                                              ; preds = %164, %143, %124
  %170 = load i32, ptr %54, align 8
  %171 = and i32 %170, -513
  %172 = or disjoint i32 %171, %126
  store i32 %172, ptr %54, align 8
  %173 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %53, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !282
  %175 = icmp eq ptr %174, null
  br i1 %175, label %23, label %52, !prof !283, !llvm.loop !284

176:                                              ; preds = %23, %11
  %177 = phi ptr [ %16, %11 ], [ %28, %23 ]
  %178 = load ptr, ptr %177, align 8, !tbaa !241
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 6
  %180 = load ptr, ptr %179, align 8, !tbaa !243
  %181 = load ptr, ptr @cfun, align 8, !tbaa !149
  %182 = getelementptr inbounds %struct.function, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !240
  %184 = getelementptr inbounds %struct.control_flow_graph, ptr %183, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !245
  %186 = icmp eq ptr %180, %185
  br i1 %186, label %214, label %196, !prof !246

187:                                              ; preds = %200, %196
  %188 = getelementptr inbounds %struct.basic_block_def, ptr %197, i64 0, i32 6
  %189 = load ptr, ptr %188, align 8, !tbaa !243
  %190 = load ptr, ptr @cfun, align 8, !tbaa !149
  %191 = getelementptr inbounds %struct.function, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !240
  %193 = getelementptr inbounds %struct.control_flow_graph, ptr %192, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !245
  %195 = icmp eq ptr %189, %194
  br i1 %195, label %214, label %196, !prof !247, !llvm.loop !285

196:                                              ; preds = %176, %187
  %197 = phi ptr [ %189, %187 ], [ %180, %176 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %197) #18
  %198 = load ptr, ptr %1, align 8, !tbaa.struct !286
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #18
  %199 = icmp eq ptr %198, null
  br i1 %199, label %187, label %200, !prof !287

200:                                              ; preds = %196, %200
  %201 = phi ptr [ %212, %200 ], [ %198, %196 ]
  %202 = load ptr, ptr %201, align 8, !tbaa !260
  %203 = getelementptr inbounds %struct.gimple_statement_phi, ptr %202, i64 0, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !160
  %205 = call zeroext i8 @is_gimple_reg(ptr noundef %204) #18
  %206 = icmp eq i8 %205, 0
  %207 = load i32, ptr %202, align 8
  %208 = and i32 %207, -513
  %209 = select i1 %206, i32 0, i32 512, !prof !288
  %210 = or disjoint i32 %208, %209
  store i32 %210, ptr %202, align 8
  %211 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %201, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !282
  %213 = icmp eq ptr %212, null
  br i1 %213, label %187, label %200, !prof !289, !llvm.loop !290

214:                                              ; preds = %187, %176
  call void @ssa_propagate(ptr noundef nonnull @ccp_visit_stmt, ptr noundef nonnull @ccp_visit_phi_node) #18
  br label %215

215:                                              ; preds = %236, %214
  %216 = phi i64 [ %237, %236 ], [ 0, %214 ]
  %217 = load ptr, ptr @cfun, align 8, !tbaa !149
  %218 = getelementptr inbounds %struct.function, ptr %217, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !170
  %220 = getelementptr inbounds %struct.gimple_df, ptr %219, i64 0, i32 2
  %221 = load ptr, ptr %220, align 8, !tbaa !237
  %222 = icmp eq ptr %221, null
  br i1 %222, label %225, label %223, !prof !291

223:                                              ; preds = %215
  %224 = load i32, ptr %221, align 8, !tbaa !238
  br label %225

225:                                              ; preds = %223, %215
  %226 = phi i32 [ %224, %223 ], [ 0, %215 ]
  %227 = zext i32 %226 to i64
  %228 = icmp ult i64 %216, %227
  br i1 %228, label %229, label %238, !prof !292

229:                                              ; preds = %225
  %230 = call zeroext i8 @dbg_cnt(i32 noundef 1) #18
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %236, !prof !293

232:                                              ; preds = %229
  %233 = load ptr, ptr @const_val, align 8, !tbaa !149
  %234 = getelementptr inbounds %struct.prop_value_d, ptr %233, i64 %216
  store i32 3, ptr %234, align 8, !tbaa !197
  %235 = getelementptr inbounds %struct.prop_value_d, ptr %233, i64 %216, i32 1
  store ptr null, ptr %235, align 8, !tbaa !199
  br label %236

236:                                              ; preds = %232, %229
  %237 = add nuw nsw i64 %216, 1
  br label %215, !llvm.loop !294

238:                                              ; preds = %225
  %239 = load ptr, ptr @const_val, align 8, !tbaa !149
  %240 = call zeroext i8 @substitute_and_fold(ptr noundef %239, ptr noundef nonnull @ccp_fold_stmt) #18
  %241 = load ptr, ptr @const_val, align 8, !tbaa !149
  call void @free(ptr noundef %241)
  store ptr null, ptr @const_val, align 8, !tbaa !149
  %242 = icmp eq i8 %240, 0
  %243 = select i1 %242, i32 0, i32 34848, !prof !295
  ret i32 %243
}

; Function Attrs: nounwind uwtable
define dso_local ptr @maybe_fold_offset_to_reference(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 !prof !296 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #18
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 121
  br i1 %11, label %12, label %58, !prof !297

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !160
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %42 [
    i16 42, label %17
    i16 41, label %17
    i16 45, label %17
    i16 46, label %17
    i16 118, label %17
    i16 43, label %17
    i16 44, label %17
  ], !prof !298

17:                                               ; preds = %12, %12, %12, %12, %12, %12, %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %18 = call ptr @get_ref_base_and_extent(ptr noundef nonnull %14, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !299

20:                                               ; preds = %17
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2075, ptr noundef nonnull @.str.3) #18
  br label %21

21:                                               ; preds = %17, %20
  %22 = load i64, ptr %6, align 8
  %23 = load i64, ptr %7, align 8, !tbaa !219
  %24 = icmp eq i64 %22, %23
  %25 = icmp ne i64 %22, -1
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %39, !prof !300

27:                                               ; preds = %21
  %28 = load i64, ptr %5, align 8, !tbaa !219
  %29 = and i64 %28, 7
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %39, !prof !300

31:                                               ; preds = %27
  %32 = icmp eq i64 %28, 0
  br i1 %32, label %39, label %33, !prof !299

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !160
  %36 = ashr exact i64 %28, 3
  %37 = call ptr @build_int_cst(ptr noundef %35, i64 noundef %36) #18
  %38 = call ptr @int_const_binop(i32 noundef 63, ptr noundef %2, ptr noundef %37, i32 noundef 1) #18
  br label %39

39:                                               ; preds = %31, %33, %27, %21
  %40 = phi ptr [ %2, %27 ], [ %38, %33 ], [ %2, %31 ], [ %2, %21 ]
  %41 = phi ptr [ %14, %27 ], [ %18, %33 ], [ %18, %31 ], [ %14, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %42

42:                                               ; preds = %12, %39
  %43 = phi ptr [ %40, %39 ], [ %2, %12 ]
  %44 = phi ptr [ %41, %39 ], [ %14, %12 ]
  %45 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !160
  %47 = call zeroext i8 @useless_type_conversion_p(ptr noundef %3, ptr noundef %46) #18
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49, !prof !301

49:                                               ; preds = %42
  %50 = call i32 @integer_zerop(ptr noundef %43) #18
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49, %42
  %53 = load ptr, ptr %45, align 8, !tbaa !160
  %54 = call fastcc ptr @maybe_fold_offset_to_component_ref(i32 noundef %0, ptr noundef %53, ptr noundef %44, ptr noundef %43, ptr noundef %3)
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58, !prof !302

56:                                               ; preds = %52
  %57 = call fastcc ptr @maybe_fold_offset_to_array_ref(i32 noundef %0, ptr noundef %44, ptr noundef %43, ptr noundef %3, i8 noundef zeroext 1)
  br label %58

58:                                               ; preds = %52, %56, %49, %4
  %59 = phi ptr [ null, %4 ], [ %44, %49 ], [ %54, %52 ], [ %57, %56 ]
  ret ptr %59
}

declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @maybe_fold_offset_to_component_ref(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #12 !prof !303 !PGOFuncName !304 {
  br label %6

6:                                                ; preds = %105, %5
  %7 = phi ptr [ %1, %5 ], [ %107, %105 ]
  %8 = phi ptr [ %2, %5 ], [ %110, %105 ]
  %9 = phi ptr [ %3, %5 ], [ %109, %105 ]
  %10 = load i64, ptr %7, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -16
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %15, label %117, !prof !305

15:                                               ; preds = %6
  %16 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef nonnull %7, ptr noundef %4) #18
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %117, !prof !300

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !160
  %21 = icmp eq ptr %20, null
  br i1 %21, label %102, label %22, !prof !299

22:                                               ; preds = %18, %98
  %23 = phi ptr [ %100, %98 ], [ %20, %18 ]
  %24 = phi ptr [ %97, %98 ], [ undef, %18 ]
  %25 = phi ptr [ %95, %98 ], [ null, %18 ]
  %26 = load i64, ptr %23, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 31
  br i1 %28, label %29, label %94, !prof !306

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %23, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 33554432
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %94, !prof !306

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.tree_field_decl, ptr %23, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !160
  %37 = icmp eq ptr %36, null
  br i1 %37, label %94, label %38, !prof !307

38:                                               ; preds = %34
  %39 = tail call ptr @byte_position(ptr noundef nonnull %23) #18
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 23
  br i1 %42, label %43, label %94, !prof !306

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.tree_decl_minimal, ptr %23, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !160
  %46 = icmp eq ptr %45, null
  br i1 %46, label %94, label %47, !prof !307

47:                                               ; preds = %43
  %48 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %39, ptr noundef %9) #18
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %94, label %50, !prof !307

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !160
  %53 = icmp eq i32 %48, 0
  br i1 %53, label %54, label %59, !prof !308

54:                                               ; preds = %50
  %55 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %4, ptr noundef %52) #18
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57, !prof !300

57:                                               ; preds = %54
  %58 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %52, ptr noundef %8, ptr noundef nonnull %23, ptr noundef null) #18
  br label %94

59:                                               ; preds = %54, %50
  %60 = load i64, ptr %52, align 8
  %61 = trunc i64 %60 to i32
  %62 = and i32 %61, 65535
  %63 = add nsw i32 %62, -15
  %64 = icmp ult i32 %63, 4
  br i1 %64, label %65, label %94, !prof !308

65:                                               ; preds = %59
  %66 = and i64 %60, 65535
  %67 = icmp eq i64 %66, 15
  %68 = select i1 %67, ptr %23, ptr null, !prof !300
  %69 = getelementptr inbounds %struct.tree_decl_common, ptr %23, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !160
  %71 = icmp eq ptr %70, null
  br i1 %71, label %94, label %72, !prof !299

72:                                               ; preds = %65
  %73 = load i64, ptr %70, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 23
  br i1 %75, label %76, label %94, !prof !300

76:                                               ; preds = %72
  %77 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef %9, ptr noundef nonnull %39, i32 noundef 1) #18
  %78 = load ptr, ptr %69, align 8, !tbaa !160
  %79 = tail call i32 @tree_int_cst_lt(ptr noundef %77, ptr noundef %78) #18
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %94, label %81, !prof !299

81:                                               ; preds = %76
  %82 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef nonnull %52, ptr noundef %8, ptr noundef nonnull %23, ptr noundef null) #18
  %83 = getelementptr inbounds %struct.tree_exp, ptr %82, i64 0, i32 1
  store i32 %0, ptr %83, align 8, !tbaa !160
  %84 = load ptr, ptr %19, align 8, !tbaa !160
  %85 = icmp eq ptr %23, %84
  %86 = zext i1 %85 to i8
  %87 = tail call fastcc ptr @maybe_fold_offset_to_array_ref(i32 noundef %0, ptr noundef %82, ptr noundef %77, ptr noundef %4, i8 noundef zeroext %86)
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %94, !prof !299

89:                                               ; preds = %81
  %90 = tail call fastcc ptr @maybe_fold_offset_to_component_ref(i32 noundef %0, ptr noundef nonnull %52, ptr noundef %82, ptr noundef %77, ptr noundef %4)
  %91 = icmp ne ptr %90, null
  %92 = zext i1 %91 to i32
  %93 = select i1 %91, ptr %90, ptr %24
  br label %94

94:                                               ; preds = %59, %89, %81, %76, %65, %72, %47, %43, %38, %34, %29, %22, %57
  %95 = phi ptr [ null, %57 ], [ %25, %22 ], [ %25, %29 ], [ %25, %34 ], [ %25, %38 ], [ %25, %43 ], [ null, %47 ], [ null, %59 ], [ %68, %72 ], [ %68, %65 ], [ %68, %76 ], [ %68, %81 ], [ %68, %89 ]
  %96 = phi i32 [ 1, %57 ], [ 4, %22 ], [ 4, %29 ], [ 4, %34 ], [ 4, %38 ], [ 4, %43 ], [ 4, %47 ], [ 4, %59 ], [ 4, %72 ], [ 4, %65 ], [ 4, %76 ], [ 1, %81 ], [ %92, %89 ]
  %97 = phi ptr [ %58, %57 ], [ %24, %22 ], [ %24, %29 ], [ %24, %34 ], [ %24, %38 ], [ %24, %43 ], [ %24, %47 ], [ %24, %59 ], [ %24, %72 ], [ %24, %65 ], [ %24, %76 ], [ %87, %81 ], [ %93, %89 ]
  switch i32 %96, label %117 [
    i32 0, label %98
    i32 4, label %98
  ], !prof !309

98:                                               ; preds = %94, %94
  %99 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !160
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %22, !prof !307, !llvm.loop !310

102:                                              ; preds = %98, %18
  %103 = phi ptr [ null, %18 ], [ %95, %98 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %117, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.tree_common, ptr %103, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !160
  %108 = tail call ptr @byte_position(ptr noundef nonnull %103) #18
  %109 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef %9, ptr noundef %108, i32 noundef 1) #18
  %110 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %107, ptr noundef %8, ptr noundef nonnull %103, ptr noundef null) #18
  %111 = getelementptr inbounds %struct.tree_exp, ptr %110, i64 0, i32 1
  store i32 %0, ptr %111, align 8, !tbaa !160
  %112 = load ptr, ptr %19, align 8, !tbaa !160
  %113 = icmp eq ptr %103, %112
  %114 = zext i1 %113 to i8
  %115 = tail call fastcc ptr @maybe_fold_offset_to_array_ref(i32 noundef %0, ptr noundef %110, ptr noundef %109, ptr noundef %4, i8 noundef zeroext %114)
  %116 = icmp eq ptr %115, null
  br i1 %116, label %6, label %117

117:                                              ; preds = %94, %6, %105, %102, %15
  %118 = phi ptr [ null, %6 ], [ null, %15 ], [ null, %102 ], [ %115, %105 ], [ %97, %94 ]
  ret ptr %118
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @maybe_fold_offset_to_array_ref(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #12 !prof !303 !PGOFuncName !311 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 45
  br i1 %13, label %14, label %33, !prof !312

14:                                               ; preds = %5
  %15 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %1) #18
  %16 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %17 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !160
  %19 = load i64, ptr %15, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 23
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load i64, ptr %18, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 23
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef nonnull %18, ptr noundef nonnull %15, i32 noundef 0) #18
  %28 = load ptr, ptr %16, align 8, !tbaa !160
  br label %29

29:                                               ; preds = %14, %22, %26
  %30 = phi i1 [ true, %26 ], [ false, %22 ], [ false, %14 ]
  %31 = phi ptr [ %27, %26 ], [ %18, %22 ], [ %18, %14 ]
  %32 = phi ptr [ %28, %26 ], [ %1, %22 ], [ %1, %14 ]
  br i1 %30, label %33, label %172

33:                                               ; preds = %29, %5
  %34 = phi ptr [ %31, %29 ], [ %10, %5 ]
  %35 = phi ptr [ %32, %29 ], [ %1, %5 ]
  %36 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !160
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 15
  br i1 %40, label %41, label %172, !prof !301

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !160
  %44 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %3, ptr noundef %43) #18
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %172, label %46, !prof !312

46:                                               ; preds = %41
  %47 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !149
  %48 = tail call ptr @signed_type_for(ptr noundef %47) #18
  %49 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !160
  %51 = icmp eq ptr %50, null
  br i1 %51, label %172, label %52, !prof !312

52:                                               ; preds = %46
  %53 = tail call i32 @integer_zerop(ptr noundef %2) #18
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %66, label %55, !prof !312

55:                                               ; preds = %52
  %56 = load i64, ptr %50, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 23
  br i1 %58, label %64, label %59, !prof !301

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 7
  %61 = load i32, ptr %60, align 8, !tbaa !160
  %62 = zext i32 %61 to i64
  %63 = tail call ptr @size_int_kind(i64 noundef %62, i32 noundef 0) #18
  br label %64

64:                                               ; preds = %59, %55
  %65 = tail call ptr @build_int_cst(ptr noundef %48, i64 noundef 0) #18
  br label %101

66:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %67 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %2) #18
  %68 = extractvalue { i64, i64 } %67, 0
  %69 = extractvalue { i64, i64 } %67, 1
  %70 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !160
  %72 = getelementptr inbounds %struct.tree_type, ptr %71, i64 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 1023
  %75 = tail call { i64, i64 } @double_int_sext(i64 %68, i64 %69, i32 noundef %74) #18
  %76 = load i64, ptr %50, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 23
  br i1 %78, label %79, label %98

79:                                               ; preds = %66
  %80 = extractvalue { i64, i64 } %75, 1
  %81 = extractvalue { i64, i64 } %75, 0
  %82 = getelementptr inbounds %struct.tree_int_cst, ptr %50, i64 0, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !160
  %84 = getelementptr inbounds %struct.tree_int_cst, ptr %50, i64 0, i32 1, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !160
  %86 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 0, i64 noundef %81, i64 noundef %80, i64 noundef %83, i64 noundef %85, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9) #18
  %87 = icmp ne i32 %86, 0
  %88 = load i64, ptr %7, align 8
  %89 = icmp ne i64 %88, 0
  %90 = select i1 %87, i1 true, i1 %89
  %91 = load i64, ptr %9, align 8
  %92 = icmp ne i64 %91, 0
  %93 = select i1 %90, i1 true, i1 %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %79
  %95 = load i64, ptr %6, align 8, !tbaa !219
  %96 = load i64, ptr %8, align 8, !tbaa !219
  %97 = call ptr @build_int_cst_wide(ptr noundef %48, i64 noundef %95, i64 noundef %96) #18
  br label %98

98:                                               ; preds = %66, %79, %94
  %99 = phi i1 [ true, %94 ], [ false, %79 ], [ false, %66 ]
  %100 = phi ptr [ %97, %94 ], [ undef, %79 ], [ undef, %66 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br i1 %99, label %101, label %172

101:                                              ; preds = %98, %64
  %102 = phi ptr [ %65, %64 ], [ %100, %98 ]
  %103 = call ptr @build_int_cst(ptr noundef %48, i64 noundef 0) #18
  %104 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !160
  %106 = icmp eq ptr %105, null
  br i1 %106, label %120, label %107, !prof !312

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.tree_type, ptr %105, i64 0, i32 13
  %109 = load ptr, ptr %108, align 8, !tbaa !160
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113, !prof !312

111:                                              ; preds = %107
  %112 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %105, ptr noundef %103) #18
  br label %113

113:                                              ; preds = %107, %111
  %114 = phi ptr [ %112, %111 ], [ %109, %107 ]
  %115 = load i64, ptr %114, align 8
  %116 = and i64 %115, 65535
  %117 = icmp eq i64 %116, 23
  br i1 %117, label %118, label %172, !prof !301

118:                                              ; preds = %113
  %119 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %105, ptr noundef %34) #18
  br label %120

120:                                              ; preds = %118, %101
  %121 = phi ptr [ %119, %118 ], [ %34, %101 ]
  %122 = phi ptr [ %105, %118 ], [ %48, %101 ]
  %123 = phi ptr [ %114, %118 ], [ %103, %101 ]
  %124 = call i32 @integer_zerop(ptr noundef %123) #18
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128, !prof !312

126:                                              ; preds = %120
  %127 = call ptr @int_const_binop(i32 noundef 63, ptr noundef %102, ptr noundef %123, i32 noundef 0) #18
  br label %128

128:                                              ; preds = %126, %120
  %129 = phi ptr [ %102, %120 ], [ %127, %126 ]
  %130 = call i32 @integer_zerop(ptr noundef %121) #18
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %134, !prof !312

132:                                              ; preds = %128
  %133 = call ptr @int_const_binop(i32 noundef 63, ptr noundef %129, ptr noundef %121, i32 noundef 0) #18
  br label %134

134:                                              ; preds = %132, %128
  %135 = phi ptr [ %129, %128 ], [ %133, %132 ]
  %136 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %122, ptr noundef %135) #18
  br i1 %106, label %164, label %137, !prof !312

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.tree_type, ptr %105, i64 0, i32 14
  %139 = load ptr, ptr %138, align 8, !tbaa !160
  %140 = icmp eq ptr %139, null
  br i1 %140, label %151, label %141, !prof !312

141:                                              ; preds = %137
  %142 = load i64, ptr %139, align 8
  %143 = and i64 %142, 65535
  %144 = icmp eq i64 %143, 23
  br i1 %144, label %145, label %151, !prof !301

145:                                              ; preds = %141
  %146 = call i32 @tree_int_cst_lt(ptr noundef nonnull %139, ptr noundef %136) #18
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148, !prof !301

148:                                              ; preds = %145
  %149 = call i32 @compare_tree_int(ptr noundef nonnull %139, i64 noundef 1) #18
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %172, label %151

151:                                              ; preds = %148, %137, %141, %145
  %152 = getelementptr inbounds %struct.tree_type, ptr %105, i64 0, i32 13
  %153 = load ptr, ptr %152, align 8, !tbaa !160
  %154 = icmp eq ptr %153, null
  br i1 %154, label %164, label %155, !prof !312

155:                                              ; preds = %151
  %156 = icmp eq i8 %4, 0
  br i1 %156, label %157, label %169, !prof !305

157:                                              ; preds = %155
  %158 = load i64, ptr %153, align 8
  %159 = and i64 %158, 65535
  %160 = icmp eq i64 %159, 23
  br i1 %160, label %161, label %169, !prof !300

161:                                              ; preds = %157
  %162 = call i32 @tree_int_cst_lt(ptr noundef %136, ptr noundef nonnull %153) #18
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %169, label %172, !prof !300

164:                                              ; preds = %134, %151
  %165 = icmp eq i8 %4, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %164
  %167 = call i32 @compare_tree_int(ptr noundef %136, i64 noundef 0) #18
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %161, %164, %166, %155, %157
  %170 = call ptr @build4_stat(i32 noundef 45, ptr noundef %43, ptr noundef %35, ptr noundef %136, ptr noundef null, ptr noundef null) #18
  %171 = getelementptr inbounds %struct.tree_exp, ptr %170, i64 0, i32 1
  store i32 %0, ptr %171, align 8, !tbaa !160
  br label %172

172:                                              ; preds = %166, %29, %161, %148, %113, %46, %41, %33, %98, %169
  %173 = phi ptr [ %170, %169 ], [ null, %98 ], [ null, %33 ], [ null, %41 ], [ null, %46 ], [ null, %113 ], [ null, %148 ], [ null, %161 ], [ null, %29 ], [ null, %166 ]
  ret ptr %173
}

; Function Attrs: nounwind uwtable
define dso_local ptr @maybe_fold_offset_to_address(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 !prof !303 {
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !160
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %12 [
    i16 10, label %9
    i16 12, label %9
  ], !prof !313

9:                                                ; preds = %4, %4
  %10 = load i64, ptr %3, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %12 [
    i16 10, label %13
    i16 12, label %13
  ], !prof !313

12:                                               ; preds = %9, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2113, ptr noundef nonnull @.str.3) #18
  br label %13

13:                                               ; preds = %9, %9, %12
  %14 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !160
  %16 = tail call ptr @maybe_fold_offset_to_reference(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %15)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %66, label %18, !prof !312

18:                                               ; preds = %13
  %19 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #18
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 121
  br i1 %22, label %23, label %26, !prof !301

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !160
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi ptr [ %25, %23 ], [ %19, %18 ]
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %58 [
    i16 45, label %38
    i16 41, label %30
  ], !prof !314

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !160
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !160
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 15
  br i1 %37, label %38, label %58, !prof !300

38:                                               ; preds = %26, %30
  %39 = load i64, ptr %16, align 8
  %40 = trunc i64 %39 to i16
  switch i16 %40, label %58 [
    i16 45, label %41
    i16 41, label %41
  ], !prof !315

41:                                               ; preds = %38, %38
  %42 = and i64 %28, 65535
  %43 = icmp eq i64 %42, 45
  br i1 %43, label %44, label %47, !prof !299

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !160
  br label %47

47:                                               ; preds = %41, %44
  %48 = phi ptr [ %46, %44 ], [ %27, %41 ]
  %49 = and i64 %39, 65535
  %50 = icmp eq i64 %49, 45
  br i1 %50, label %51, label %54, !prof !300

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !160
  br label %54

54:                                               ; preds = %47, %51
  %55 = phi ptr [ %53, %51 ], [ %16, %47 ]
  %56 = tail call i32 @operand_equal_p(ptr noundef %48, ptr noundef %55, i32 noundef 0) #18
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58, !prof !299

58:                                               ; preds = %38, %30, %26, %54
  %59 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !160
  %61 = tail call ptr @build_pointer_type(ptr noundef %60) #18
  %62 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %3, ptr noundef %61) #18
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %66, label %64, !prof !312

64:                                               ; preds = %58
  %65 = tail call ptr @build_fold_addr_expr_with_type_loc(i32 noundef %0, ptr noundef nonnull %16, ptr noundef %61) #18
  br label %66

66:                                               ; preds = %54, %13, %64, %58
  %67 = phi ptr [ %65, %64 ], [ null, %58 ], [ null, %13 ], [ null, %54 ]
  ret ptr %67
}

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_with_type_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @maybe_fold_stmt_addition(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #9 !prof !188 {
  %5 = load i64, ptr %2, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 121
  br i1 %7, label %8, label %285, !prof !190

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !160
  %11 = load i64, ptr %3, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 23
  br i1 %13, label %200, label %14

14:                                               ; preds = %8
  %15 = load i64, ptr %10, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 45
  br i1 %17, label %18, label %199

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %20 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !160
  %22 = tail call i32 @integer_zerop(ptr noundef %21) #18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %199, label %24

24:                                               ; preds = %18
  %25 = load i64, ptr %3, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 141
  br i1 %27, label %28, label %199

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !160
  %31 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !160
  %33 = tail call i32 @host_integerp(ptr noundef %32, i32 noundef 1) #18
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %199, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !160
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, 6
  br i1 %40, label %41, label %196

41:                                               ; preds = %35
  %42 = lshr i32 %38, 16
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !160
  %46 = icmp eq i8 %45, 3
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = zext nneg i32 %39 to i64
  %49 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !164
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !219
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %56

56:                                               ; preds = %55, %47
  %57 = getelementptr inbounds i8, ptr %37, i64 %53
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !149
  %60 = load i64, ptr %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = and i32 %61, 65535
  br label %63

63:                                               ; preds = %41, %56
  %64 = phi i32 [ %62, %56 ], [ %42, %41 ]
  %65 = icmp eq i32 %64, 65
  br i1 %65, label %66, label %144

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.gimple_statement_base, ptr %37, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !160
  %69 = icmp ugt i32 %68, 2
  tail call void @llvm.assume(i1 %69)
  %70 = load i32, ptr %37, align 8
  %71 = and i32 %70, 255
  %72 = add nsw i32 %71, -1
  %73 = icmp ult i32 %72, 9
  tail call void @llvm.assume(i1 %73)
  %74 = zext nneg i32 %71 to i64
  %75 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !164
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !219
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %82

82:                                               ; preds = %81, %66
  %83 = getelementptr inbounds i8, ptr %37, i64 %79
  %84 = getelementptr inbounds ptr, ptr %83, i64 2
  %85 = load ptr, ptr %84, align 8, !tbaa !149
  %86 = load i64, ptr %85, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 23
  br i1 %88, label %89, label %144

89:                                               ; preds = %82
  %90 = load i32, ptr %67, align 4, !tbaa !160
  %91 = icmp ugt i32 %90, 2
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = load i32, ptr %37, align 8
  %94 = and i32 %93, 255
  %95 = add nsw i32 %94, -10
  %96 = icmp ult i32 %95, -9
  br i1 %96, label %110, label %97

97:                                               ; preds = %92
  %98 = zext nneg i32 %94 to i64
  %99 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !164
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %101
  %103 = load i64, ptr %102, align 8, !tbaa !219
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %106

106:                                              ; preds = %105, %97
  %107 = getelementptr inbounds i8, ptr %37, i64 %103
  %108 = getelementptr inbounds ptr, ptr %107, i64 2
  %109 = load ptr, ptr %108, align 8, !tbaa !149
  br label %110

110:                                              ; preds = %89, %92, %106
  %111 = phi ptr [ null, %89 ], [ %109, %106 ], [ null, %92 ]
  %112 = load ptr, ptr %29, align 8, !tbaa !160
  %113 = getelementptr inbounds %struct.tree_type, ptr %112, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !160
  %115 = tail call i32 @tree_int_cst_equal(ptr noundef %111, ptr noundef %114) #18
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %144, label %117

117:                                              ; preds = %110
  %118 = load ptr, ptr %29, align 8, !tbaa !160
  %119 = load ptr, ptr %19, align 8, !tbaa !160
  %120 = load i32, ptr %37, align 8
  %121 = and i32 %120, 255
  %122 = add nsw i32 %121, -10
  %123 = icmp ult i32 %122, -9
  br i1 %123, label %137, label %124

124:                                              ; preds = %117
  %125 = zext nneg i32 %121 to i64
  %126 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !164
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %128
  %130 = load i64, ptr %129, align 8, !tbaa !219
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %133

133:                                              ; preds = %132, %124
  %134 = getelementptr inbounds i8, ptr %37, i64 %130
  %135 = getelementptr inbounds ptr, ptr %134, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !149
  br label %137

137:                                              ; preds = %117, %133
  %138 = phi ptr [ %136, %133 ], [ null, %117 ]
  %139 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1, i32 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !160
  %141 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1, i32 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !160
  %143 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %118, ptr noundef %119, ptr noundef %138, ptr noundef %140, ptr noundef %142) #18
  br label %193

144:                                              ; preds = %110, %82, %63
  %145 = load ptr, ptr %29, align 8, !tbaa !160
  %146 = getelementptr inbounds %struct.tree_type, ptr %145, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !160
  %148 = tail call i32 @integer_onep(ptr noundef %147) #18
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %196, label %150

150:                                              ; preds = %144
  %151 = load i32, ptr %37, align 8
  %152 = trunc i32 %151 to i8
  switch i8 %152, label %155 [
    i8 6, label %153
    i8 1, label %153
    i8 8, label %156
  ]

153:                                              ; preds = %150, %150
  %154 = lshr i32 %151, 16
  br label %156

155:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1446, ptr noundef nonnull @.str.3) #18
  br label %156

156:                                              ; preds = %155, %153, %150
  %157 = phi i32 [ %154, %153 ], [ 0, %155 ], [ 59, %150 ]
  %158 = zext nneg i32 %157 to i64
  %159 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !160
  %161 = icmp eq i8 %160, 3
  br i1 %161, label %162, label %182

162:                                              ; preds = %156
  %163 = load i32, ptr %37, align 8
  %164 = and i32 %163, 255
  %165 = add nsw i32 %164, -1
  %166 = icmp ult i32 %165, 9
  tail call void @llvm.assume(i1 %166)
  %167 = zext nneg i32 %164 to i64
  %168 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !164
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %170
  %172 = load i64, ptr %171, align 8, !tbaa !219
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %162
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %175

175:                                              ; preds = %174, %162
  %176 = getelementptr inbounds i8, ptr %37, i64 %172
  %177 = getelementptr inbounds ptr, ptr %176, i64 1
  %178 = load ptr, ptr %177, align 8, !tbaa !149
  %179 = load i64, ptr %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = and i32 %180, 65535
  br label %182

182:                                              ; preds = %156, %175
  %183 = phi i32 [ %181, %175 ], [ %157, %156 ]
  %184 = icmp eq i32 %183, 65
  br i1 %184, label %196, label %185

185:                                              ; preds = %182
  %186 = load ptr, ptr %29, align 8, !tbaa !160
  %187 = load ptr, ptr %19, align 8, !tbaa !160
  %188 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1, i32 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !160
  %190 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1, i32 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !160
  %192 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %186, ptr noundef %187, ptr noundef nonnull %3, ptr noundef %189, ptr noundef %191) #18
  br label %193

193:                                              ; preds = %137, %185
  %194 = phi ptr [ %192, %185 ], [ %143, %137 ]
  %195 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %194) #18
  br label %196

196:                                              ; preds = %193, %182, %144, %35
  %197 = phi i1 [ false, %35 ], [ true, %144 ], [ true, %182 ], [ false, %193 ]
  %198 = phi ptr [ null, %35 ], [ undef, %144 ], [ undef, %182 ], [ %195, %193 ]
  br i1 %197, label %199, label %285

199:                                              ; preds = %196, %28, %24, %18, %14
  br label %285

200:                                              ; preds = %8, %250
  %201 = phi ptr [ %252, %250 ], [ %3, %8 ]
  %202 = phi ptr [ %253, %250 ], [ %10, %8 ]
  %203 = load i64, ptr %202, align 8
  %204 = and i64 %203, 65535
  %205 = icmp eq i64 %204, 45
  br i1 %205, label %206, label %254

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.tree_exp, ptr %202, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !160
  %209 = getelementptr inbounds %struct.tree_exp, ptr %202, i64 1
  %210 = load ptr, ptr %209, align 8, !tbaa !160
  %211 = getelementptr inbounds %struct.tree_common, ptr %202, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !160
  %213 = getelementptr inbounds %struct.tree_type, ptr %212, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !160
  %215 = load i64, ptr %210, align 8
  %216 = and i64 %215, 65535
  %217 = icmp eq i64 %216, 23
  br i1 %217, label %218, label %250

218:                                              ; preds = %206
  %219 = load i64, ptr %214, align 8
  %220 = and i64 %219, 65535
  %221 = icmp eq i64 %220, 23
  br i1 %221, label %222, label %250

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.tree_common, ptr %208, i64 0, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !160
  %225 = getelementptr inbounds %struct.tree_type, ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !160
  %227 = icmp eq ptr %226, null
  br i1 %227, label %244, label %228

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.tree_type, ptr %226, i64 0, i32 13
  %230 = load ptr, ptr %229, align 8, !tbaa !160
  %231 = icmp eq ptr %230, null
  br i1 %231, label %244, label %232

232:                                              ; preds = %228
  %233 = load i64, ptr %230, align 8
  %234 = and i64 %233, 65535
  %235 = icmp eq i64 %234, 23
  br i1 %235, label %236, label %250

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.tree_common, ptr %230, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !160
  %239 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %238, ptr noundef nonnull %210) #18
  %240 = tail call i32 @integer_zerop(ptr noundef nonnull %230) #18
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %236
  %243 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef %239, ptr noundef nonnull %230, i32 noundef 0) #18
  br label %244

244:                                              ; preds = %228, %242, %236, %222
  %245 = phi ptr [ %239, %236 ], [ %243, %242 ], [ %210, %228 ], [ %210, %222 ]
  %246 = load ptr, ptr @sizetype_tab, align 16, !tbaa !149
  %247 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %246, ptr noundef %245) #18
  %248 = tail call ptr @int_const_binop(i32 noundef 65, ptr noundef %247, ptr noundef nonnull %214, i32 noundef 0) #18
  %249 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef %248, ptr noundef %201, i32 noundef 0) #18
  br label %250

250:                                              ; preds = %232, %218, %206, %244
  %251 = phi i1 [ true, %244 ], [ false, %206 ], [ false, %218 ], [ false, %232 ]
  %252 = phi ptr [ %249, %244 ], [ %201, %206 ], [ %201, %218 ], [ %201, %232 ]
  %253 = phi ptr [ %208, %244 ], [ %202, %206 ], [ %202, %218 ], [ %202, %232 ]
  br i1 %251, label %200, label %254

254:                                              ; preds = %250, %200
  %255 = phi ptr [ %201, %200 ], [ %252, %250 ]
  %256 = phi ptr [ %202, %200 ], [ %253, %250 ]
  %257 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %258 = load ptr, ptr %257, align 8, !tbaa !160
  %259 = load i64, ptr %258, align 8
  %260 = and i64 %259, 65535
  %261 = icmp eq i64 %260, 19
  br i1 %261, label %262, label %271

262:                                              ; preds = %254
  %263 = getelementptr inbounds %struct.tree_common, ptr %256, i64 0, i32 2
  %264 = load ptr, ptr %263, align 8, !tbaa !160
  %265 = load i64, ptr %264, align 8
  %266 = and i64 %265, 65535
  %267 = icmp eq i64 %266, 15
  br i1 %267, label %268, label %271

268:                                              ; preds = %262
  %269 = getelementptr inbounds %struct.tree_common, ptr %264, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !160
  br label %271

271:                                              ; preds = %268, %262, %254
  %272 = phi ptr [ %270, %268 ], [ %258, %262 ], [ %258, %254 ]
  %273 = tail call fastcc ptr @maybe_fold_offset_to_array_ref(i32 noundef %0, ptr noundef %256, ptr noundef %255, ptr noundef %272, i8 noundef zeroext 1)
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %279

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.tree_common, ptr %256, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !160
  %278 = tail call fastcc ptr @maybe_fold_offset_to_component_ref(i32 noundef %0, ptr noundef %277, ptr noundef %256, ptr noundef %255, ptr noundef %272)
  br label %279

279:                                              ; preds = %275, %271
  %280 = phi ptr [ %273, %271 ], [ %278, %275 ]
  %281 = icmp eq ptr %280, null
  br i1 %281, label %285, label %282

282:                                              ; preds = %279
  %283 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %1, ptr noundef nonnull %280) #18
  %284 = getelementptr inbounds %struct.tree_exp, ptr %283, i64 0, i32 1
  store i32 %0, ptr %284, align 8, !tbaa !160
  br label %285

285:                                              ; preds = %279, %282, %4, %196, %199
  %286 = phi ptr [ null, %199 ], [ %198, %196 ], [ null, %4 ], [ %283, %282 ], [ null, %279 ]
  ret ptr %286
}

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @fold_stmt(ptr noundef %0) local_unnamed_addr #12 !prof !316 {
  %2 = tail call fastcc zeroext i8 @fold_stmt_1(ptr noundef %0, i8 noundef zeroext 0), !range !317
  ret i8 %2
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @fold_stmt_1(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #12 !prof !318 !PGOFuncName !319 {
  %3 = load ptr, ptr %0, align 1
  %4 = load ptr, ptr %3, align 8, !tbaa !260
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 255
  %7 = trunc i32 %5 to i8
  switch i8 %7, label %1038 [
    i8 6, label %18
    i8 1, label %705
    i8 8, label %14
    i8 7, label %8
  ], !prof !320

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %4, i64 0, i32 3
  %10 = load i8, ptr %9, align 1, !tbaa !160
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %951, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gimple_statement_asm, ptr %4, i64 0, i32 2
  br label %956

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.gimple_statement_base, ptr %4, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !160
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %834, label %755, !prof !321

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.gimple_statement_base, ptr %4, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !160
  %21 = lshr i32 %5, 16
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !160
  %25 = icmp eq i8 %24, 3
  br i1 %25, label %26, label %46, !prof !322

26:                                               ; preds = %18
  %27 = load i32, ptr %4, align 8
  %28 = and i32 %27, 255
  %29 = add nsw i32 %28, -1
  %30 = icmp ult i32 %29, 9
  tail call void @llvm.assume(i1 %30)
  %31 = zext nneg i32 %28 to i64
  %32 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !164
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !219
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39, !prof !323

38:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %39

39:                                               ; preds = %38, %26
  %40 = getelementptr inbounds i8, ptr %4, i64 %36
  %41 = getelementptr inbounds ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !149
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 65535
  br label %46

46:                                               ; preds = %39, %18
  %47 = phi i32 [ %45, %39 ], [ %21, %18 ]
  %48 = getelementptr inbounds %struct.gimple_statement_base, ptr %4, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !160
  %50 = zext nneg i32 %47 to i64
  %51 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !160
  switch i8 %52, label %661 [
    i8 3, label %53
    i8 2, label %212
    i8 1, label %337
    i8 0, label %660
  ], !prof !324

53:                                               ; preds = %46
  %54 = load i32, ptr %4, align 8
  %55 = and i32 %54, 255
  %56 = add nsw i32 %55, -10
  %57 = icmp ult i32 %56, -9
  br i1 %57, label %71, label %58, !prof !323

58:                                               ; preds = %53
  %59 = zext nneg i32 %55 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !164
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !219
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67, !prof !323

66:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %67

67:                                               ; preds = %66, %58
  %68 = getelementptr inbounds i8, ptr %4, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !149
  br label %71

71:                                               ; preds = %67, %53
  %72 = phi ptr [ %70, %67 ], [ null, %53 ]
  %73 = load i64, ptr %72, align 8
  %74 = trunc i64 %73 to i16
  switch i16 %74, label %132 [
    i16 56, label %75
    i16 152, label %130
  ], !prof !325

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !160
  %78 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 56), align 4, !tbaa !164
  %79 = add i32 %78, -4
  %80 = icmp ult i32 %79, 7
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !160
  br label %84

84:                                               ; preds = %81, %75
  %85 = phi i32 [ %83, %81 ], [ 0, %75 ]
  %86 = load i64, ptr %77, align 8
  %87 = and i64 %86, 65535
  %88 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !164
  %90 = icmp eq i32 %89, 5
  br i1 %90, label %91, label %113

91:                                               ; preds = %84
  tail call void @fold_defer_overflow_warnings() #18
  %92 = load i64, ptr %77, align 8
  %93 = trunc i64 %92 to i32
  %94 = and i32 %93, 65535
  %95 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !160
  %97 = getelementptr inbounds %struct.tree_exp, ptr %77, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !160
  %99 = getelementptr inbounds %struct.tree_exp, ptr %77, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !160
  %101 = tail call ptr @fold_binary_loc(i32 noundef %85, i32 noundef %94, ptr noundef %96, ptr noundef %98, ptr noundef %100) #18
  %102 = icmp eq ptr %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %91
  %104 = tail call zeroext i8 @is_gimple_condexpr(ptr noundef nonnull %101) #18
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef nonnull %101) #18
  %108 = icmp ne i8 %107, 0
  %109 = zext i1 %108 to i8
  br label %110

110:                                              ; preds = %106, %103, %91
  %111 = phi i8 [ 0, %103 ], [ 0, %91 ], [ %109, %106 ]
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext %111, ptr noundef nonnull %4, i32 noundef 0) #18
  %112 = icmp eq i8 %111, 0
  br label %116

113:                                              ; preds = %84
  %114 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %77) #18
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %113, %110
  %117 = phi i1 [ %112, %110 ], [ false, %113 ]
  %118 = phi ptr [ %101, %110 ], [ %77, %113 ]
  br i1 %117, label %127, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !160
  %122 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !160
  %124 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 1, i32 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !160
  %126 = tail call ptr @fold_build3_stat_loc(i32 noundef %85, i32 noundef 56, ptr noundef %121, ptr noundef %118, ptr noundef %123, ptr noundef %125) #18
  br label %127

127:                                              ; preds = %113, %119, %116
  %128 = phi i1 [ true, %119 ], [ true, %116 ], [ false, %113 ]
  %129 = phi ptr [ %126, %119 ], [ null, %116 ], [ null, %113 ]
  br i1 %128, label %199, label %662

130:                                              ; preds = %71
  %131 = tail call ptr @maybe_fold_tmr(ptr noundef nonnull %72) #18
  br label %662

132:                                              ; preds = %71
  %133 = and i64 %73, 65535
  %134 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !164
  %136 = icmp eq i32 %135, 4
  br i1 %136, label %137, label %139, !prof !326

137:                                              ; preds = %132
  %138 = tail call fastcc ptr @maybe_fold_reference(ptr noundef nonnull %72, i8 noundef zeroext 0)
  br label %662

139:                                              ; preds = %132
  switch i16 %74, label %194 [
    i16 121, label %140
    i16 51, label %150
  ], !prof !327

140:                                              ; preds = %139
  %141 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !160
  %143 = tail call fastcc ptr @maybe_fold_reference(ptr noundef %142, i8 noundef zeroext 1)
  %144 = icmp eq ptr %143, null
  br i1 %144, label %199, label %145, !prof !328

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !160
  %148 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %49, ptr noundef nonnull %143) #18
  %149 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %147, ptr noundef %148) #18
  br label %199

150:                                              ; preds = %139
  %151 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !160
  %153 = load i64, ptr %152, align 8
  %154 = and i64 %153, 65535
  %155 = icmp eq i64 %154, 14
  br i1 %155, label %156, label %194

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.tree_constructor, ptr %72, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !160
  %159 = icmp eq ptr %158, null
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = load i32, ptr %158, align 8, !tbaa !200
  %162 = zext i32 %161 to i64
  br label %163

163:                                              ; preds = %160, %156
  %164 = phi i64 [ %162, %160 ], [ 0, %156 ]
  %165 = getelementptr inbounds %struct.tree_type, ptr %152, i64 0, i32 6
  %166 = load i32, ptr %165, align 4
  %167 = and i32 %166, 1023
  %168 = zext nneg i32 %167 to i64
  %169 = shl nuw i64 1, %168
  %170 = icmp eq i64 %169, %164
  br i1 %170, label %171, label %194

171:                                              ; preds = %163, %185
  %172 = phi i64 [ %191, %185 ], [ 0, %163 ]
  %173 = phi ptr [ %184, %185 ], [ undef, %163 ]
  br i1 %159, label %176, label %174

174:                                              ; preds = %171
  %175 = load i32, ptr %158, align 8, !tbaa !200
  br label %176

176:                                              ; preds = %174, %171
  %177 = phi i32 [ %175, %174 ], [ 0, %171 ]
  %178 = zext i32 %177 to i64
  %179 = icmp ult i64 %172, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %158, i64 0, i32 2, i64 %172, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !202
  br label %183

183:                                              ; preds = %180, %176
  %184 = phi ptr [ %173, %176 ], [ %182, %180 ]
  br i1 %179, label %185, label %192

185:                                              ; preds = %183
  %186 = load i64, ptr %184, align 8
  %187 = trunc i64 %186 to i32
  %188 = and i32 %187, 65535
  %189 = add nsw i32 %188, -23
  %190 = icmp ult i32 %189, 3
  %191 = add nuw nsw i64 %172, 1
  br i1 %190, label %171, label %662, !llvm.loop !329

192:                                              ; preds = %183
  %193 = tail call ptr @build_vector_from_ctor(ptr noundef nonnull %152, ptr noundef %158) #18
  br label %662

194:                                              ; preds = %163, %150, %139
  %195 = icmp eq i32 %135, 3
  br i1 %195, label %196, label %199, !prof !330

196:                                              ; preds = %194
  %197 = tail call ptr @get_symbol_constant_value(ptr noundef nonnull %72)
  %198 = tail call ptr @unshare_expr(ptr noundef %197) #18
  br label %662

199:                                              ; preds = %194, %145, %140, %127
  %200 = phi ptr [ %129, %127 ], [ null, %194 ], [ %149, %145 ], [ null, %140 ]
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %204, !prof !331

202:                                              ; preds = %199
  %203 = tail call ptr @fold(ptr noundef nonnull %72) #18
  br label %204

204:                                              ; preds = %202, %199
  %205 = phi ptr [ %203, %202 ], [ %200, %199 ]
  %206 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %205) #18
  %207 = icmp eq ptr %206, %72
  br i1 %207, label %211, label %208, !prof !331

208:                                              ; preds = %204
  %209 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef %206) #18
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %662

211:                                              ; preds = %208, %204
  br label %662

212:                                              ; preds = %46
  %213 = load i32, ptr %4, align 8
  %214 = and i32 %213, 255
  %215 = add nsw i32 %214, -10
  %216 = icmp ult i32 %215, -9
  br i1 %216, label %230, label %217, !prof !332

217:                                              ; preds = %212
  %218 = zext nneg i32 %214 to i64
  %219 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !164
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %221
  %223 = load i64, ptr %222, align 8, !tbaa !219
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %226, !prof !332

225:                                              ; preds = %217
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %226

226:                                              ; preds = %225, %217
  %227 = getelementptr inbounds i8, ptr %4, i64 %223
  %228 = getelementptr inbounds ptr, ptr %227, i64 1
  %229 = load ptr, ptr %228, align 8, !tbaa !149
  br label %230

230:                                              ; preds = %226, %212
  %231 = phi ptr [ %229, %226 ], [ null, %212 ]
  %232 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %4)
  %233 = tail call ptr @fold_unary_loc(i32 noundef %49, i32 noundef %47, ptr noundef %232, ptr noundef %231) #18
  %234 = icmp eq ptr %233, null
  %235 = trunc i32 %47 to i16
  br i1 %234, label %253, label %236, !prof !333

236:                                              ; preds = %230
  switch i16 %235, label %249 [
    i16 116, label %237
    i16 113, label %237
  ]

237:                                              ; preds = %236, %236
  %238 = load i64, ptr %233, align 8
  %239 = and i64 %238, 65535
  %240 = icmp eq i64 %239, 23
  br i1 %240, label %241, label %249

241:                                              ; preds = %237
  %242 = load i64, ptr %231, align 8
  %243 = and i64 %242, 65535
  %244 = icmp eq i64 %243, 23
  br i1 %244, label %245, label %249

245:                                              ; preds = %241
  %246 = and i64 %242, 134217728
  %247 = and i64 %238, -134283241
  %248 = or disjoint i64 %246, %247
  store i64 %248, ptr %233, align 8
  br label %249

249:                                              ; preds = %237, %245, %241, %236
  %250 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %233) #18
  %251 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef %250) #18
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %332, label %334

253:                                              ; preds = %230
  switch i16 %235, label %332 [
    i16 116, label %254
    i16 113, label %254
  ], !prof !334

254:                                              ; preds = %253, %253
  %255 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %4)
  %256 = load i64, ptr %255, align 8
  %257 = and i64 %256, 65535
  %258 = icmp eq i64 %257, 10
  br i1 %258, label %264, label %259, !prof !332

259:                                              ; preds = %254
  %260 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %4)
  %261 = load i64, ptr %260, align 8
  %262 = and i64 %261, 65535
  %263 = icmp eq i64 %262, 12
  br i1 %263, label %264, label %332, !prof !332

264:                                              ; preds = %259, %254
  %265 = load i32, ptr %4, align 8
  %266 = and i32 %265, 255
  %267 = add nsw i32 %266, -1
  %268 = icmp ult i32 %267, 9
  tail call void @llvm.assume(i1 %268)
  %269 = zext nneg i32 %266 to i64
  %270 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !164
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %272
  %274 = load i64, ptr %273, align 8, !tbaa !219
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %264
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %277

277:                                              ; preds = %276, %264
  %278 = getelementptr inbounds i8, ptr %4, i64 %274
  %279 = getelementptr inbounds ptr, ptr %278, i64 1
  %280 = load ptr, ptr %279, align 8, !tbaa !149
  %281 = getelementptr inbounds %struct.tree_common, ptr %280, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !160
  %283 = load i64, ptr %282, align 8
  %284 = and i64 %283, 65535
  %285 = icmp eq i64 %284, 10
  br i1 %285, label %308, label %286

286:                                              ; preds = %277
  %287 = load i32, ptr %4, align 8
  %288 = and i32 %287, 255
  %289 = add nsw i32 %288, -1
  %290 = icmp ult i32 %289, 9
  tail call void @llvm.assume(i1 %290)
  %291 = zext nneg i32 %288 to i64
  %292 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %291
  %293 = load i32, ptr %292, align 4, !tbaa !164
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %294
  %296 = load i64, ptr %295, align 8, !tbaa !219
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %286
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %299

299:                                              ; preds = %298, %286
  %300 = getelementptr inbounds i8, ptr %4, i64 %296
  %301 = getelementptr inbounds ptr, ptr %300, i64 1
  %302 = load ptr, ptr %301, align 8, !tbaa !149
  %303 = getelementptr inbounds %struct.tree_common, ptr %302, i64 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !160
  %305 = load i64, ptr %304, align 8
  %306 = and i64 %305, 65535
  %307 = icmp eq i64 %306, 12
  br i1 %307, label %308, label %332

308:                                              ; preds = %299, %277
  %309 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %4)
  %310 = load i32, ptr %4, align 8
  %311 = and i32 %310, 255
  %312 = add nsw i32 %311, -10
  %313 = icmp ult i32 %312, -9
  br i1 %313, label %327, label %314

314:                                              ; preds = %308
  %315 = zext nneg i32 %311 to i64
  %316 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %315
  %317 = load i32, ptr %316, align 4, !tbaa !164
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %318
  %320 = load i64, ptr %319, align 8, !tbaa !219
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %314
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %323

323:                                              ; preds = %322, %314
  %324 = getelementptr inbounds i8, ptr %4, i64 %320
  %325 = getelementptr inbounds ptr, ptr %324, i64 1
  %326 = load ptr, ptr %325, align 8, !tbaa !149
  br label %327

327:                                              ; preds = %308, %323
  %328 = phi ptr [ %326, %323 ], [ null, %308 ]
  %329 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %330 = tail call ptr @maybe_fold_offset_to_address(i32 noundef %49, ptr noundef %328, ptr noundef %329, ptr noundef %309)
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %334

332:                                              ; preds = %327, %299, %259, %253, %249
  %333 = phi ptr [ undef, %249 ], [ undef, %253 ], [ undef, %259 ], [ undef, %299 ], [ %330, %327 ]
  br label %334

334:                                              ; preds = %332, %327, %249
  %335 = phi i1 [ true, %332 ], [ false, %327 ], [ false, %249 ]
  %336 = phi ptr [ %333, %332 ], [ %330, %327 ], [ %250, %249 ]
  br i1 %335, label %661, label %662, !prof !333

337:                                              ; preds = %46
  %338 = load i32, ptr %4, align 8
  %339 = trunc i32 %338 to i8
  switch i8 %339, label %342 [
    i8 6, label %340
    i8 1, label %340
    i8 8, label %343
  ], !prof !335

340:                                              ; preds = %337, %337
  %341 = lshr i32 %338, 16
  br label %343

342:                                              ; preds = %337
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1446, ptr noundef nonnull @.str.3) #18
  br label %343

343:                                              ; preds = %342, %340, %337
  %344 = phi i32 [ %341, %340 ], [ 0, %342 ], [ 59, %337 ]
  %345 = zext nneg i32 %344 to i64
  %346 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %345
  %347 = load i8, ptr %346, align 1, !tbaa !160
  %348 = icmp eq i8 %347, 3
  br i1 %348, label %349, label %369, !prof !336

349:                                              ; preds = %343
  %350 = load i32, ptr %4, align 8
  %351 = and i32 %350, 255
  %352 = add nsw i32 %351, -1
  %353 = icmp ult i32 %352, 9
  tail call void @llvm.assume(i1 %353)
  %354 = zext nneg i32 %351 to i64
  %355 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %354
  %356 = load i32, ptr %355, align 4, !tbaa !164
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %357
  %359 = load i64, ptr %358, align 8, !tbaa !219
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %349
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %362

362:                                              ; preds = %361, %349
  %363 = getelementptr inbounds i8, ptr %4, i64 %359
  %364 = getelementptr inbounds ptr, ptr %363, i64 1
  %365 = load ptr, ptr %364, align 8, !tbaa !149
  %366 = load i64, ptr %365, align 8
  %367 = trunc i64 %366 to i32
  %368 = and i32 %367, 65535
  br label %369

369:                                              ; preds = %362, %343
  %370 = phi i32 [ %368, %362 ], [ %344, %343 ]
  %371 = icmp eq i32 %370, 66
  br i1 %371, label %372, label %483, !prof !337

372:                                              ; preds = %369
  %373 = load i32, ptr %4, align 8
  %374 = and i32 %373, 255
  %375 = add nsw i32 %374, -1
  %376 = icmp ult i32 %375, 9
  tail call void @llvm.assume(i1 %376)
  %377 = zext nneg i32 %374 to i64
  %378 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %377
  %379 = load i32, ptr %378, align 4, !tbaa !164
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %380
  %382 = load i64, ptr %381, align 8, !tbaa !219
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %384, label %385, !prof !190

384:                                              ; preds = %372
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %385

385:                                              ; preds = %384, %372
  %386 = getelementptr inbounds i8, ptr %4, i64 %382
  %387 = getelementptr inbounds ptr, ptr %386, i64 1
  %388 = load ptr, ptr %387, align 8, !tbaa !149
  %389 = getelementptr inbounds %struct.tree_common, ptr %388, i64 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !160
  %391 = getelementptr inbounds %struct.tree_common, ptr %390, i64 0, i32 2
  %392 = load ptr, ptr %391, align 8, !tbaa !160
  %393 = load i64, ptr %392, align 8
  %394 = and i64 %393, 65535
  %395 = icmp eq i64 %394, 15
  br i1 %395, label %396, label %438, !prof !190

396:                                              ; preds = %385
  %397 = getelementptr inbounds %struct.tree_common, ptr %392, i64 0, i32 2
  %398 = load ptr, ptr %397, align 8, !tbaa !160
  %399 = tail call ptr @build_pointer_type(ptr noundef %398) #18
  %400 = load i32, ptr %4, align 8
  %401 = and i32 %400, 255
  %402 = add nsw i32 %401, -1
  %403 = icmp ult i32 %402, 9
  tail call void @llvm.assume(i1 %403)
  %404 = zext nneg i32 %401 to i64
  %405 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %404
  %406 = load i32, ptr %405, align 4, !tbaa !164
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %407
  %409 = load i64, ptr %408, align 8, !tbaa !219
  %410 = icmp eq i64 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %396
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %412

412:                                              ; preds = %411, %396
  %413 = getelementptr inbounds i8, ptr %4, i64 %409
  %414 = load ptr, ptr %413, align 8, !tbaa !149
  %415 = getelementptr inbounds %struct.tree_common, ptr %414, i64 0, i32 2
  %416 = load ptr, ptr %415, align 8, !tbaa !160
  %417 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %416, ptr noundef %399) #18
  %418 = icmp eq i8 %417, 0
  br i1 %418, label %419, label %438

419:                                              ; preds = %412
  %420 = load i32, ptr %4, align 8
  %421 = and i32 %420, 255
  %422 = add nsw i32 %421, -1
  %423 = icmp ult i32 %422, 9
  tail call void @llvm.assume(i1 %423)
  %424 = zext nneg i32 %421 to i64
  %425 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %424
  %426 = load i32, ptr %425, align 4, !tbaa !164
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %427
  %429 = load i64, ptr %428, align 8, !tbaa !219
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %419
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %432

432:                                              ; preds = %431, %419
  %433 = getelementptr inbounds i8, ptr %4, i64 %429
  %434 = getelementptr inbounds ptr, ptr %433, i64 1
  %435 = load ptr, ptr %434, align 8, !tbaa !149
  %436 = getelementptr inbounds %struct.tree_common, ptr %435, i64 0, i32 2
  %437 = load ptr, ptr %436, align 8, !tbaa !160
  br label %438

438:                                              ; preds = %432, %412, %385
  %439 = phi ptr [ %399, %412 ], [ %437, %432 ], [ %390, %385 ]
  %440 = load i32, ptr %48, align 8, !tbaa !160
  %441 = load i32, ptr %4, align 8
  %442 = and i32 %441, 255
  %443 = add nsw i32 %442, -10
  %444 = icmp ult i32 %443, -9
  br i1 %444, label %458, label %445, !prof !190

445:                                              ; preds = %438
  %446 = zext nneg i32 %442 to i64
  %447 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %446
  %448 = load i32, ptr %447, align 4, !tbaa !164
  %449 = zext i32 %448 to i64
  %450 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %449
  %451 = load i64, ptr %450, align 8, !tbaa !219
  %452 = icmp eq i64 %451, 0
  br i1 %452, label %453, label %454, !prof !190

453:                                              ; preds = %445
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %454

454:                                              ; preds = %453, %445
  %455 = getelementptr inbounds i8, ptr %4, i64 %451
  %456 = getelementptr inbounds ptr, ptr %455, i64 1
  %457 = load ptr, ptr %456, align 8, !tbaa !149
  br label %458

458:                                              ; preds = %454, %438
  %459 = phi ptr [ %457, %454 ], [ null, %438 ]
  %460 = load i32, ptr %19, align 4, !tbaa !160
  %461 = icmp ugt i32 %460, 2
  br i1 %461, label %462, label %480, !prof !189

462:                                              ; preds = %458
  %463 = load i32, ptr %4, align 8
  %464 = and i32 %463, 255
  %465 = add nsw i32 %464, -10
  %466 = icmp ult i32 %465, -9
  br i1 %466, label %480, label %467, !prof !190

467:                                              ; preds = %462
  %468 = zext nneg i32 %464 to i64
  %469 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %468
  %470 = load i32, ptr %469, align 4, !tbaa !164
  %471 = zext i32 %470 to i64
  %472 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %471
  %473 = load i64, ptr %472, align 8, !tbaa !219
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %475, label %476, !prof !190

475:                                              ; preds = %467
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %476

476:                                              ; preds = %475, %467
  %477 = getelementptr inbounds i8, ptr %4, i64 %473
  %478 = getelementptr inbounds ptr, ptr %477, i64 2
  %479 = load ptr, ptr %478, align 8, !tbaa !149
  br label %480

480:                                              ; preds = %476, %462, %458
  %481 = phi ptr [ null, %458 ], [ %479, %476 ], [ null, %462 ]
  %482 = tail call ptr @maybe_fold_stmt_addition(i32 noundef %440, ptr noundef %439, ptr noundef %459, ptr noundef %481)
  br label %483

483:                                              ; preds = %480, %369
  %484 = phi ptr [ %482, %480 ], [ null, %369 ]
  %485 = icmp eq ptr %484, null
  br i1 %485, label %486, label %546, !prof !338

486:                                              ; preds = %483
  %487 = load i32, ptr %4, align 8
  %488 = and i32 %487, 255
  %489 = add nsw i32 %488, -1
  %490 = icmp ult i32 %489, 9
  tail call void @llvm.assume(i1 %490)
  %491 = zext nneg i32 %488 to i64
  %492 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %491
  %493 = load i32, ptr %492, align 4, !tbaa !164
  %494 = zext i32 %493 to i64
  %495 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %494
  %496 = load i64, ptr %495, align 8, !tbaa !219
  %497 = icmp eq i64 %496, 0
  br i1 %497, label %498, label %499, !prof !336

498:                                              ; preds = %486
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %499

499:                                              ; preds = %498, %486
  %500 = getelementptr inbounds i8, ptr %4, i64 %496
  %501 = load ptr, ptr %500, align 8, !tbaa !149
  %502 = getelementptr inbounds %struct.tree_common, ptr %501, i64 0, i32 2
  %503 = load ptr, ptr %502, align 8, !tbaa !160
  %504 = load i32, ptr %4, align 8
  %505 = and i32 %504, 255
  %506 = add nsw i32 %505, -10
  %507 = icmp ult i32 %506, -9
  br i1 %507, label %521, label %508, !prof !336

508:                                              ; preds = %499
  %509 = zext nneg i32 %505 to i64
  %510 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %509
  %511 = load i32, ptr %510, align 4, !tbaa !164
  %512 = zext i32 %511 to i64
  %513 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %512
  %514 = load i64, ptr %513, align 8, !tbaa !219
  %515 = icmp eq i64 %514, 0
  br i1 %515, label %516, label %517, !prof !336

516:                                              ; preds = %508
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %517

517:                                              ; preds = %516, %508
  %518 = getelementptr inbounds i8, ptr %4, i64 %514
  %519 = getelementptr inbounds ptr, ptr %518, i64 1
  %520 = load ptr, ptr %519, align 8, !tbaa !149
  br label %521

521:                                              ; preds = %517, %499
  %522 = phi ptr [ %520, %517 ], [ null, %499 ]
  %523 = load i32, ptr %19, align 4, !tbaa !160
  %524 = icmp ugt i32 %523, 2
  br i1 %524, label %525, label %543, !prof !338

525:                                              ; preds = %521
  %526 = load i32, ptr %4, align 8
  %527 = and i32 %526, 255
  %528 = add nsw i32 %527, -10
  %529 = icmp ult i32 %528, -9
  br i1 %529, label %543, label %530, !prof !336

530:                                              ; preds = %525
  %531 = zext nneg i32 %527 to i64
  %532 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %531
  %533 = load i32, ptr %532, align 4, !tbaa !164
  %534 = zext i32 %533 to i64
  %535 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %534
  %536 = load i64, ptr %535, align 8, !tbaa !219
  %537 = icmp eq i64 %536, 0
  br i1 %537, label %538, label %539, !prof !336

538:                                              ; preds = %530
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %539

539:                                              ; preds = %538, %530
  %540 = getelementptr inbounds i8, ptr %4, i64 %536
  %541 = getelementptr inbounds ptr, ptr %540, i64 2
  %542 = load ptr, ptr %541, align 8, !tbaa !149
  br label %543

543:                                              ; preds = %539, %525, %521
  %544 = phi ptr [ null, %521 ], [ %542, %539 ], [ null, %525 ]
  %545 = tail call ptr @fold_binary_loc(i32 noundef %49, i32 noundef %47, ptr noundef %503, ptr noundef %522, ptr noundef %544) #18
  br label %546

546:                                              ; preds = %543, %483
  %547 = phi ptr [ %484, %483 ], [ %545, %543 ]
  %548 = icmp eq ptr %547, null
  br i1 %548, label %661, label %549, !prof !339

549:                                              ; preds = %546
  %550 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %547) #18
  %551 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef %550) #18
  %552 = icmp eq i8 %551, 0
  br i1 %552, label %553, label %662, !prof !340

553:                                              ; preds = %549
  %554 = tail call zeroext i8 @commutative_tree_code(i32 noundef %47) #18
  %555 = icmp eq i8 %554, 0
  br i1 %555, label %661, label %556

556:                                              ; preds = %553
  %557 = load i32, ptr %4, align 8
  %558 = and i32 %557, 255
  %559 = add nsw i32 %558, -10
  %560 = icmp ult i32 %559, -9
  br i1 %560, label %574, label %561

561:                                              ; preds = %556
  %562 = zext nneg i32 %558 to i64
  %563 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %562
  %564 = load i32, ptr %563, align 4, !tbaa !164
  %565 = zext i32 %564 to i64
  %566 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %565
  %567 = load i64, ptr %566, align 8, !tbaa !219
  %568 = icmp eq i64 %567, 0
  br i1 %568, label %569, label %570

569:                                              ; preds = %561
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %570

570:                                              ; preds = %569, %561
  %571 = getelementptr inbounds i8, ptr %4, i64 %567
  %572 = getelementptr inbounds ptr, ptr %571, i64 1
  %573 = load ptr, ptr %572, align 8, !tbaa !149
  br label %574

574:                                              ; preds = %570, %556
  %575 = phi ptr [ %573, %570 ], [ null, %556 ]
  %576 = load i32, ptr %19, align 4, !tbaa !160
  %577 = icmp ugt i32 %576, 2
  br i1 %577, label %578, label %596

578:                                              ; preds = %574
  %579 = load i32, ptr %4, align 8
  %580 = and i32 %579, 255
  %581 = add nsw i32 %580, -10
  %582 = icmp ult i32 %581, -9
  br i1 %582, label %596, label %583

583:                                              ; preds = %578
  %584 = zext nneg i32 %580 to i64
  %585 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %584
  %586 = load i32, ptr %585, align 4, !tbaa !164
  %587 = zext i32 %586 to i64
  %588 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %587
  %589 = load i64, ptr %588, align 8, !tbaa !219
  %590 = icmp eq i64 %589, 0
  br i1 %590, label %591, label %592

591:                                              ; preds = %583
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %592

592:                                              ; preds = %591, %583
  %593 = getelementptr inbounds i8, ptr %4, i64 %589
  %594 = getelementptr inbounds ptr, ptr %593, i64 2
  %595 = load ptr, ptr %594, align 8, !tbaa !149
  br label %596

596:                                              ; preds = %592, %578, %574
  %597 = phi ptr [ null, %574 ], [ %595, %592 ], [ null, %578 ]
  %598 = tail call zeroext i8 @tree_swap_operands_p(ptr noundef %575, ptr noundef %597, i8 noundef zeroext 0) #18
  %599 = icmp eq i8 %598, 0
  br i1 %599, label %661, label %600

600:                                              ; preds = %596
  %601 = load i32, ptr %4, align 8
  %602 = and i32 %601, 255
  %603 = add nsw i32 %602, -1
  %604 = icmp ult i32 %603, 9
  tail call void @llvm.assume(i1 %604)
  %605 = zext nneg i32 %602 to i64
  %606 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %605
  %607 = load i32, ptr %606, align 4, !tbaa !164
  %608 = zext i32 %607 to i64
  %609 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %608
  %610 = load i64, ptr %609, align 8, !tbaa !219
  %611 = icmp eq i64 %610, 0
  br i1 %611, label %612, label %613

612:                                              ; preds = %600
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %613

613:                                              ; preds = %612, %600
  %614 = getelementptr inbounds i8, ptr %4, i64 %610
  %615 = load ptr, ptr %614, align 8, !tbaa !149
  %616 = getelementptr inbounds %struct.tree_common, ptr %615, i64 0, i32 2
  %617 = load ptr, ptr %616, align 8, !tbaa !160
  %618 = load i32, ptr %19, align 4, !tbaa !160
  %619 = icmp ugt i32 %618, 2
  br i1 %619, label %620, label %638

620:                                              ; preds = %613
  %621 = load i32, ptr %4, align 8
  %622 = and i32 %621, 255
  %623 = add nsw i32 %622, -10
  %624 = icmp ult i32 %623, -9
  br i1 %624, label %638, label %625

625:                                              ; preds = %620
  %626 = zext nneg i32 %622 to i64
  %627 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %626
  %628 = load i32, ptr %627, align 4, !tbaa !164
  %629 = zext i32 %628 to i64
  %630 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %629
  %631 = load i64, ptr %630, align 8, !tbaa !219
  %632 = icmp eq i64 %631, 0
  br i1 %632, label %633, label %634

633:                                              ; preds = %625
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %634

634:                                              ; preds = %633, %625
  %635 = getelementptr inbounds i8, ptr %4, i64 %631
  %636 = getelementptr inbounds ptr, ptr %635, i64 2
  %637 = load ptr, ptr %636, align 8, !tbaa !149
  br label %638

638:                                              ; preds = %634, %620, %613
  %639 = phi ptr [ null, %613 ], [ %637, %634 ], [ null, %620 ]
  %640 = load i32, ptr %4, align 8
  %641 = and i32 %640, 255
  %642 = add nsw i32 %641, -10
  %643 = icmp ult i32 %642, -9
  br i1 %643, label %657, label %644

644:                                              ; preds = %638
  %645 = zext nneg i32 %641 to i64
  %646 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %645
  %647 = load i32, ptr %646, align 4, !tbaa !164
  %648 = zext i32 %647 to i64
  %649 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %648
  %650 = load i64, ptr %649, align 8, !tbaa !219
  %651 = icmp eq i64 %650, 0
  br i1 %651, label %652, label %653

652:                                              ; preds = %644
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %653

653:                                              ; preds = %652, %644
  %654 = getelementptr inbounds i8, ptr %4, i64 %650
  %655 = getelementptr inbounds ptr, ptr %654, i64 1
  %656 = load ptr, ptr %655, align 8, !tbaa !149
  br label %657

657:                                              ; preds = %653, %638
  %658 = phi ptr [ %656, %653 ], [ null, %638 ]
  %659 = tail call ptr @build2_stat(i32 noundef %47, ptr noundef %617, ptr noundef %639, ptr noundef %658) #18
  br label %662

660:                                              ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2954, ptr noundef nonnull @.str.3) #18
  br label %661

661:                                              ; preds = %660, %596, %553, %546, %334, %46
  br label %662

662:                                              ; preds = %185, %127, %130, %137, %192, %196, %208, %211, %334, %549, %657, %661
  %663 = phi ptr [ null, %661 ], [ %659, %657 ], [ %336, %334 ], [ null, %211 ], [ null, %127 ], [ %131, %130 ], [ %138, %137 ], [ %198, %196 ], [ %193, %192 ], [ %206, %208 ], [ %550, %549 ], [ null, %185 ]
  %664 = load i32, ptr %4, align 8
  %665 = and i32 %664, 255
  %666 = add nsw i32 %665, -10
  %667 = icmp ult i32 %666, -9
  br i1 %667, label %680, label %668, !prof !341

668:                                              ; preds = %662
  %669 = zext nneg i32 %665 to i64
  %670 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %669
  %671 = load i32, ptr %670, align 4, !tbaa !164
  %672 = zext i32 %671 to i64
  %673 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %672
  %674 = load i64, ptr %673, align 8, !tbaa !219
  %675 = icmp eq i64 %674, 0
  br i1 %675, label %676, label %677, !prof !341

676:                                              ; preds = %668
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %677

677:                                              ; preds = %676, %668
  %678 = getelementptr inbounds i8, ptr %4, i64 %674
  %679 = load ptr, ptr %678, align 8, !tbaa !149
  br label %680

680:                                              ; preds = %662, %677
  %681 = phi ptr [ %679, %677 ], [ null, %662 ]
  %682 = icmp eq ptr %663, null
  br i1 %682, label %693, label %683, !prof !342

683:                                              ; preds = %680
  %684 = getelementptr inbounds %struct.tree_common, ptr %681, i64 0, i32 2
  %685 = load ptr, ptr %684, align 8, !tbaa !160
  %686 = getelementptr inbounds %struct.tree_common, ptr %663, i64 0, i32 2
  %687 = load ptr, ptr %686, align 8, !tbaa !160
  %688 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %685, ptr noundef %687) #18
  %689 = icmp eq i8 %688, 0
  br i1 %689, label %690, label %693, !prof !340

690:                                              ; preds = %683
  %691 = load ptr, ptr %684, align 8, !tbaa !160
  %692 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %691, ptr noundef nonnull %663) #18
  br label %693

693:                                              ; preds = %690, %683, %680
  %694 = phi ptr [ %663, %683 ], [ %692, %690 ], [ null, %680 ]
  %695 = icmp eq ptr %694, null
  br i1 %695, label %1038, label %696, !prof !342

696:                                              ; preds = %693
  %697 = icmp eq i8 %1, 0
  br i1 %697, label %704, label %698, !prof !343

698:                                              ; preds = %696
  %699 = load i64, ptr %694, align 8
  %700 = trunc i64 %699 to i32
  %701 = and i32 %700, 65535
  %702 = tail call i32 @get_gimple_rhs_num_ops(i32 noundef %701) #18
  %703 = icmp ult i32 %702, %20
  br i1 %703, label %704, label %1038, !prof !344

704:                                              ; preds = %698, %696
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %0, ptr noundef nonnull %694) #18
  br label %1038

705:                                              ; preds = %2
  %706 = getelementptr inbounds %struct.gimple_statement_base, ptr %4, i64 0, i32 2
  %707 = load i32, ptr %706, align 8, !tbaa !160
  %708 = lshr i32 %5, 16
  %709 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !149
  %710 = add nsw i32 %6, -10
  %711 = icmp ult i32 %710, -9
  br i1 %711, label %724, label %712, !prof !345

712:                                              ; preds = %705
  %713 = zext nneg i32 %6 to i64
  %714 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %713
  %715 = load i32, ptr %714, align 4, !tbaa !164
  %716 = zext i32 %715 to i64
  %717 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %716
  %718 = load i64, ptr %717, align 8, !tbaa !219
  %719 = icmp eq i64 %718, 0
  br i1 %719, label %720, label %721, !prof !345

720:                                              ; preds = %712
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %721

721:                                              ; preds = %720, %712
  %722 = getelementptr inbounds i8, ptr %4, i64 %718
  %723 = load ptr, ptr %722, align 8, !tbaa !149
  br label %724

724:                                              ; preds = %721, %705
  %725 = phi ptr [ %723, %721 ], [ null, %705 ]
  %726 = load i32, ptr %4, align 8
  %727 = and i32 %726, 255
  %728 = add nsw i32 %727, -10
  %729 = icmp ult i32 %728, -9
  br i1 %729, label %743, label %730, !prof !345

730:                                              ; preds = %724
  %731 = zext nneg i32 %727 to i64
  %732 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %731
  %733 = load i32, ptr %732, align 4, !tbaa !164
  %734 = zext i32 %733 to i64
  %735 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %734
  %736 = load i64, ptr %735, align 8, !tbaa !219
  %737 = icmp eq i64 %736, 0
  br i1 %737, label %738, label %739, !prof !345

738:                                              ; preds = %730
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %739

739:                                              ; preds = %738, %730
  %740 = getelementptr inbounds i8, ptr %4, i64 %736
  %741 = getelementptr inbounds ptr, ptr %740, i64 1
  %742 = load ptr, ptr %741, align 8, !tbaa !149
  br label %743

743:                                              ; preds = %739, %724
  %744 = phi ptr [ %742, %739 ], [ null, %724 ]
  %745 = tail call ptr @fold_binary_loc(i32 noundef %707, i32 noundef %708, ptr noundef %709, ptr noundef %725, ptr noundef %744) #18
  %746 = icmp eq ptr %745, null
  br i1 %746, label %1038, label %747, !prof !346

747:                                              ; preds = %743
  %748 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %745) #18
  %749 = tail call zeroext i8 @is_gimple_condexpr(ptr noundef %748) #18
  %750 = icmp eq i8 %749, 0
  br i1 %750, label %1038, label %751, !prof !347

751:                                              ; preds = %747
  %752 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef %748) #18
  %753 = icmp eq i8 %752, 0
  br i1 %753, label %1038, label %754, !prof !347

754:                                              ; preds = %751
  tail call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %4, ptr noundef %748) #18
  br label %1038

755:                                              ; preds = %14, %827
  %756 = phi i64 [ %829, %827 ], [ 0, %14 ]
  %757 = phi i8 [ %828, %827 ], [ 0, %14 ]
  %758 = trunc i64 %756 to i32
  %759 = add i32 %758, 3
  %760 = load i32, ptr %4, align 8
  %761 = and i32 %760, 255
  %762 = add nsw i32 %761, -1
  %763 = icmp ult i32 %762, 9
  tail call void @llvm.assume(i1 %763)
  %764 = zext nneg i32 %761 to i64
  %765 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %764
  %766 = load i32, ptr %765, align 4, !tbaa !164
  %767 = zext i32 %766 to i64
  %768 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %767
  %769 = load i64, ptr %768, align 8, !tbaa !219
  %770 = icmp eq i64 %769, 0
  br i1 %770, label %771, label %772, !prof !348

771:                                              ; preds = %755
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %772

772:                                              ; preds = %771, %755
  %773 = getelementptr inbounds i8, ptr %4, i64 %769
  %774 = zext i32 %759 to i64
  %775 = getelementptr inbounds ptr, ptr %773, i64 %774
  %776 = load ptr, ptr %775, align 8, !tbaa !149
  %777 = load i64, ptr %776, align 8
  %778 = and i64 %777, 65535
  %779 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %778
  %780 = load i32, ptr %779, align 4, !tbaa !164
  %781 = icmp eq i32 %780, 4
  br i1 %781, label %782, label %827, !prof !348

782:                                              ; preds = %772
  %783 = load i32, ptr %4, align 8
  %784 = and i32 %783, 255
  %785 = add nsw i32 %784, -10
  %786 = icmp ult i32 %785, -9
  br i1 %786, label %800, label %787

787:                                              ; preds = %782
  %788 = zext nneg i32 %784 to i64
  %789 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %788
  %790 = load i32, ptr %789, align 4, !tbaa !164
  %791 = zext i32 %790 to i64
  %792 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %791
  %793 = load i64, ptr %792, align 8, !tbaa !219
  %794 = icmp eq i64 %793, 0
  br i1 %794, label %795, label %796

795:                                              ; preds = %787
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %796

796:                                              ; preds = %795, %787
  %797 = getelementptr inbounds i8, ptr %4, i64 %793
  %798 = getelementptr inbounds ptr, ptr %797, i64 %774
  %799 = load ptr, ptr %798, align 8, !tbaa !149
  br label %800

800:                                              ; preds = %782, %796
  %801 = phi ptr [ %799, %796 ], [ null, %782 ]
  %802 = tail call fastcc ptr @maybe_fold_reference(ptr noundef %801, i8 noundef zeroext 0)
  %803 = icmp eq ptr %802, null
  br i1 %803, label %827, label %804

804:                                              ; preds = %800
  %805 = load i32, ptr %4, align 8
  %806 = and i32 %805, 255
  %807 = add nsw i32 %806, -10
  %808 = icmp ult i32 %807, -9
  br i1 %808, label %812, label %809

809:                                              ; preds = %804
  %810 = load i32, ptr %15, align 4, !tbaa !160
  %811 = icmp ugt i32 %810, %759
  br i1 %811, label %813, label %812

812:                                              ; preds = %809, %804
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1665, ptr noundef nonnull @.str.3) #18
  br label %813

813:                                              ; preds = %812, %809
  %814 = load i32, ptr %4, align 8
  %815 = and i32 %814, 255
  %816 = zext nneg i32 %815 to i64
  %817 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %816
  %818 = load i32, ptr %817, align 4, !tbaa !164
  %819 = zext i32 %818 to i64
  %820 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %819
  %821 = load i64, ptr %820, align 8, !tbaa !219
  %822 = icmp eq i64 %821, 0
  br i1 %822, label %823, label %824

823:                                              ; preds = %813
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %824

824:                                              ; preds = %813, %823
  %825 = getelementptr inbounds i8, ptr %4, i64 %821
  %826 = getelementptr inbounds ptr, ptr %825, i64 %774
  store ptr %802, ptr %826, align 8, !tbaa !149
  br label %827

827:                                              ; preds = %800, %824, %772
  %828 = phi i8 [ %757, %772 ], [ 1, %824 ], [ %757, %800 ]
  %829 = add nuw nsw i64 %756, 1
  %830 = load i32, ptr %15, align 4, !tbaa !160
  %831 = add i32 %830, -3
  %832 = zext i32 %831 to i64
  %833 = icmp ult i64 %829, %832
  br i1 %833, label %755, label %834, !prof !349, !llvm.loop !350

834:                                              ; preds = %827, %14
  %835 = phi i8 [ 0, %14 ], [ %828, %827 ]
  %836 = icmp eq i8 %1, 0
  br i1 %836, label %837, label %1038, !prof !351

837:                                              ; preds = %834
  %838 = load ptr, ptr %0, align 1
  %839 = load ptr, ptr %838, align 8, !tbaa !260
  %840 = load i32, ptr %839, align 8
  %841 = and i32 %840, 255
  %842 = add nsw i32 %841, -10
  %843 = icmp ult i32 %842, -9
  br i1 %843, label %857, label %844, !prof !352

844:                                              ; preds = %837
  %845 = zext nneg i32 %841 to i64
  %846 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %845
  %847 = load i32, ptr %846, align 4, !tbaa !164
  %848 = zext i32 %847 to i64
  %849 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %848
  %850 = load i64, ptr %849, align 8, !tbaa !219
  %851 = icmp eq i64 %850, 0
  br i1 %851, label %852, label %853, !prof !352

852:                                              ; preds = %844
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %853

853:                                              ; preds = %852, %844
  %854 = getelementptr inbounds i8, ptr %839, i64 %850
  %855 = getelementptr inbounds ptr, ptr %854, i64 1
  %856 = load ptr, ptr %855, align 8, !tbaa !149
  br label %857

857:                                              ; preds = %853, %837
  %858 = phi ptr [ %856, %853 ], [ null, %837 ]
  %859 = load i64, ptr %858, align 8
  %860 = and i64 %859, 65535
  %861 = icmp eq i64 %860, 121
  br i1 %861, label %862, label %865, !prof !351

862:                                              ; preds = %857
  %863 = getelementptr inbounds %struct.tree_exp, ptr %858, i64 0, i32 3
  %864 = load ptr, ptr %863, align 8, !tbaa !160
  br label %865

865:                                              ; preds = %862, %857
  %866 = phi ptr [ %864, %862 ], [ null, %857 ]
  %867 = icmp eq ptr %866, null
  br i1 %867, label %880, label %868, !prof !352

868:                                              ; preds = %865
  %869 = getelementptr inbounds %struct.tree_function_decl, ptr %866, i64 0, i32 5
  %870 = load i32, ptr %869, align 8
  %871 = and i32 %870, 6144
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %880, label %873, !prof !351

873:                                              ; preds = %868
  %874 = tail call fastcc ptr @ccp_fold_builtin(ptr noundef nonnull %839)
  %875 = icmp eq ptr %874, null
  br i1 %875, label %948, label %876

876:                                              ; preds = %873
  %877 = tail call zeroext i8 @update_call_from_tree(ptr noundef nonnull %0, ptr noundef nonnull %874) #18
  %878 = icmp eq i8 %877, 0
  br i1 %878, label %879, label %948

879:                                              ; preds = %876
  tail call fastcc void @gimplify_and_update_call_from_tree(ptr noundef nonnull %0, ptr noundef nonnull %874)
  br label %948

880:                                              ; preds = %868, %865
  %881 = load i32, ptr %839, align 8
  %882 = and i32 %881, 255
  %883 = add nsw i32 %882, -1
  %884 = icmp ult i32 %883, 9
  tail call void @llvm.assume(i1 %884)
  %885 = zext nneg i32 %882 to i64
  %886 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %885
  %887 = load i32, ptr %886, align 4, !tbaa !164
  %888 = zext i32 %887 to i64
  %889 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %888
  %890 = load i64, ptr %889, align 8, !tbaa !219
  %891 = icmp eq i64 %890, 0
  br i1 %891, label %892, label %893, !prof !352

892:                                              ; preds = %880
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %893

893:                                              ; preds = %892, %880
  %894 = getelementptr inbounds i8, ptr %839, i64 %890
  %895 = getelementptr inbounds ptr, ptr %894, i64 1
  %896 = load ptr, ptr %895, align 8, !tbaa !149
  %897 = load i64, ptr %896, align 8
  %898 = and i64 %897, 65535
  %899 = icmp eq i64 %898, 50
  %900 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 40), align 8
  %901 = icmp ne ptr %900, null
  %902 = select i1 %899, i1 %901, i1 false, !prof !352
  br i1 %902, label %903, label %948, !prof !352

903:                                              ; preds = %893
  %904 = getelementptr inbounds %struct.tree_exp, ptr %896, i64 1
  %905 = load ptr, ptr %904, align 8, !tbaa !160
  %906 = load i64, ptr %905, align 8
  %907 = and i64 %906, 65535
  %908 = icmp eq i64 %907, 121
  br i1 %908, label %909, label %948

909:                                              ; preds = %903
  %910 = getelementptr inbounds %struct.tree_exp, ptr %905, i64 0, i32 3
  %911 = load ptr, ptr %910, align 8, !tbaa !160
  %912 = load i64, ptr %911, align 8
  %913 = and i64 %912, 65535
  %914 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %913
  %915 = load i32, ptr %914, align 4, !tbaa !164
  %916 = icmp eq i32 %915, 3
  br i1 %916, label %917, label %948

917:                                              ; preds = %909
  %918 = getelementptr inbounds %struct.tree_common, ptr %905, i64 0, i32 2
  %919 = load ptr, ptr %918, align 8, !tbaa !160
  %920 = getelementptr inbounds %struct.tree_common, ptr %919, i64 0, i32 2
  %921 = load ptr, ptr %920, align 8, !tbaa !160
  %922 = tail call ptr %900(ptr noundef nonnull %896, ptr noundef %921) #18
  %923 = icmp eq ptr %922, null
  br i1 %923, label %948, label %924

924:                                              ; preds = %917
  %925 = load i32, ptr %839, align 8
  %926 = and i32 %925, 255
  %927 = add nsw i32 %926, -10
  %928 = icmp ult i32 %927, -9
  br i1 %928, label %933, label %929

929:                                              ; preds = %924
  %930 = getelementptr inbounds %struct.gimple_statement_base, ptr %839, i64 0, i32 3
  %931 = load i32, ptr %930, align 4, !tbaa !160
  %932 = icmp ugt i32 %931, 1
  br i1 %932, label %934, label %933

933:                                              ; preds = %929, %924
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1665, ptr noundef nonnull @.str.3) #18
  br label %934

934:                                              ; preds = %933, %929
  %935 = load i32, ptr %839, align 8
  %936 = and i32 %935, 255
  %937 = zext nneg i32 %936 to i64
  %938 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %937
  %939 = load i32, ptr %938, align 4, !tbaa !164
  %940 = zext i32 %939 to i64
  %941 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %940
  %942 = load i64, ptr %941, align 8, !tbaa !219
  %943 = icmp eq i64 %942, 0
  br i1 %943, label %944, label %945

944:                                              ; preds = %934
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %945

945:                                              ; preds = %944, %934
  %946 = getelementptr inbounds i8, ptr %839, i64 %942
  %947 = getelementptr inbounds ptr, ptr %946, i64 1
  store ptr %922, ptr %947, align 8, !tbaa !149
  br label %948

948:                                              ; preds = %873, %876, %879, %893, %903, %909, %917, %945
  %949 = phi i8 [ 1, %945 ], [ 1, %876 ], [ 1, %879 ], [ 0, %917 ], [ 0, %873 ], [ 0, %893 ], [ 0, %903 ], [ 0, %909 ]
  %950 = or i8 %949, %835
  br label %1038

951:                                              ; preds = %993, %8
  %952 = phi i8 [ 0, %8 ], [ %994, %993 ]
  %953 = getelementptr inbounds %struct.gimple_statement_asm, ptr %4, i64 0, i32 2
  %954 = load i8, ptr %953, align 8, !tbaa !160
  %955 = icmp eq i8 %954, 0
  br i1 %955, label %1038, label %999

956:                                              ; preds = %12, %993
  %957 = phi i8 [ 0, %12 ], [ %994, %993 ]
  %958 = phi i32 [ 0, %12 ], [ %995, %993 ]
  %959 = load i8, ptr %13, align 8, !tbaa !160
  %960 = zext i8 %959 to i32
  %961 = add nuw nsw i32 %958, %960
  %962 = load i32, ptr %4, align 8
  %963 = and i32 %962, 255
  %964 = add nsw i32 %963, -10
  %965 = icmp ult i32 %964, -9
  br i1 %965, label %980, label %966

966:                                              ; preds = %956
  %967 = zext nneg i32 %963 to i64
  %968 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %967
  %969 = load i32, ptr %968, align 4, !tbaa !164
  %970 = zext i32 %969 to i64
  %971 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %970
  %972 = load i64, ptr %971, align 8, !tbaa !219
  %973 = icmp eq i64 %972, 0
  br i1 %973, label %974, label %975

974:                                              ; preds = %966
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %975

975:                                              ; preds = %974, %966
  %976 = getelementptr inbounds i8, ptr %4, i64 %972
  %977 = zext nneg i32 %961 to i64
  %978 = getelementptr inbounds ptr, ptr %976, i64 %977
  %979 = load ptr, ptr %978, align 8, !tbaa !149
  br label %980

980:                                              ; preds = %956, %975
  %981 = phi ptr [ %979, %975 ], [ null, %956 ]
  %982 = getelementptr inbounds %struct.tree_list, ptr %981, i64 0, i32 2
  %983 = load ptr, ptr %982, align 8, !tbaa !160
  %984 = load i64, ptr %983, align 8
  %985 = and i64 %984, 65535
  %986 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %985
  %987 = load i32, ptr %986, align 4, !tbaa !164
  %988 = icmp eq i32 %987, 4
  br i1 %988, label %989, label %993

989:                                              ; preds = %980
  %990 = tail call fastcc ptr @maybe_fold_reference(ptr noundef nonnull %983, i8 noundef zeroext 1)
  %991 = icmp eq ptr %990, null
  br i1 %991, label %993, label %992

992:                                              ; preds = %989
  store ptr %990, ptr %982, align 8, !tbaa !160
  br label %993

993:                                              ; preds = %992, %989, %980
  %994 = phi i8 [ 1, %992 ], [ %957, %989 ], [ %957, %980 ]
  %995 = add nuw nsw i32 %958, 1
  %996 = load i8, ptr %9, align 1, !tbaa !160
  %997 = zext i8 %996 to i32
  %998 = icmp ult i32 %995, %997
  br i1 %998, label %956, label %951, !llvm.loop !353

999:                                              ; preds = %951, %1032
  %1000 = phi i64 [ %1034, %1032 ], [ 0, %951 ]
  %1001 = phi i8 [ %1033, %1032 ], [ %952, %951 ]
  %1002 = load i32, ptr %4, align 8
  %1003 = and i32 %1002, 255
  %1004 = add nsw i32 %1003, -10
  %1005 = icmp ult i32 %1004, -9
  br i1 %1005, label %1019, label %1006

1006:                                             ; preds = %999
  %1007 = zext nneg i32 %1003 to i64
  %1008 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1007
  %1009 = load i32, ptr %1008, align 4, !tbaa !164
  %1010 = zext i32 %1009 to i64
  %1011 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1010
  %1012 = load i64, ptr %1011, align 8, !tbaa !219
  %1013 = icmp eq i64 %1012, 0
  br i1 %1013, label %1014, label %1015

1014:                                             ; preds = %1006
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %1015

1015:                                             ; preds = %1014, %1006
  %1016 = getelementptr inbounds i8, ptr %4, i64 %1012
  %1017 = getelementptr inbounds ptr, ptr %1016, i64 %1000
  %1018 = load ptr, ptr %1017, align 8, !tbaa !149
  br label %1019

1019:                                             ; preds = %999, %1015
  %1020 = phi ptr [ %1018, %1015 ], [ null, %999 ]
  %1021 = getelementptr inbounds %struct.tree_list, ptr %1020, i64 0, i32 2
  %1022 = load ptr, ptr %1021, align 8, !tbaa !160
  %1023 = load i64, ptr %1022, align 8
  %1024 = and i64 %1023, 65535
  %1025 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1024
  %1026 = load i32, ptr %1025, align 4, !tbaa !164
  %1027 = icmp eq i32 %1026, 4
  br i1 %1027, label %1028, label %1032

1028:                                             ; preds = %1019
  %1029 = tail call fastcc ptr @maybe_fold_reference(ptr noundef nonnull %1022, i8 noundef zeroext 0)
  %1030 = icmp eq ptr %1029, null
  br i1 %1030, label %1032, label %1031

1031:                                             ; preds = %1028
  store ptr %1029, ptr %1021, align 8, !tbaa !160
  br label %1032

1032:                                             ; preds = %1031, %1028, %1019
  %1033 = phi i8 [ 1, %1031 ], [ %1001, %1028 ], [ %1001, %1019 ]
  %1034 = add nuw nsw i64 %1000, 1
  %1035 = load i8, ptr %953, align 8, !tbaa !160
  %1036 = zext i8 %1035 to i64
  %1037 = icmp ult i64 %1034, %1036
  br i1 %1037, label %999, label %1038, !llvm.loop !354

1038:                                             ; preds = %1032, %951, %754, %751, %747, %743, %693, %698, %704, %2, %834, %948
  %1039 = phi i8 [ 0, %2 ], [ %835, %834 ], [ %950, %948 ], [ 1, %704 ], [ 0, %698 ], [ 0, %693 ], [ 1, %754 ], [ 0, %747 ], [ 0, %751 ], [ 0, %743 ], [ %952, %951 ], [ %1033, %1032 ]
  %1040 = load ptr, ptr %0, align 1
  %1041 = load ptr, ptr %1040, align 8, !tbaa !260
  %1042 = load i32, ptr %1041, align 8
  %1043 = trunc i32 %1042 to i8
  switch i8 %1043, label %1071 [
    i8 6, label %1058
    i8 8, label %1044
  ], !prof !355

1044:                                             ; preds = %1038
  %1045 = and i32 %1042, 255
  %1046 = zext nneg i32 %1045 to i64
  %1047 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1046
  %1048 = load i32, ptr %1047, align 4, !tbaa !164
  %1049 = zext i32 %1048 to i64
  %1050 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1049
  %1051 = load i64, ptr %1050, align 8, !tbaa !219
  %1052 = icmp eq i64 %1051, 0
  br i1 %1052, label %1053, label %1054, !prof !352

1053:                                             ; preds = %1044
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %1054

1054:                                             ; preds = %1053, %1044
  %1055 = getelementptr inbounds i8, ptr %1041, i64 %1051
  %1056 = load ptr, ptr %1055, align 8, !tbaa !149
  %1057 = icmp eq ptr %1056, null
  br i1 %1057, label %1071, label %1058, !prof !356

1058:                                             ; preds = %1038, %1054
  %1059 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %1041) #18
  %1060 = icmp eq ptr %1059, null
  br i1 %1060, label %1071, label %1061, !prof !357

1061:                                             ; preds = %1058
  %1062 = load i64, ptr %1059, align 8
  %1063 = and i64 %1062, 65535
  %1064 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1063
  %1065 = load i32, ptr %1064, align 4, !tbaa !164
  %1066 = icmp eq i32 %1065, 4
  br i1 %1066, label %1067, label %1071, !prof !358

1067:                                             ; preds = %1061
  %1068 = tail call fastcc ptr @maybe_fold_reference(ptr noundef nonnull %1059, i8 noundef zeroext 1)
  %1069 = icmp eq ptr %1068, null
  br i1 %1069, label %1071, label %1070, !prof !359

1070:                                             ; preds = %1067
  tail call void @gimple_set_lhs(ptr noundef nonnull %1041, ptr noundef nonnull %1068) #18
  br label %1071

1071:                                             ; preds = %1038, %1058, %1061, %1070, %1067, %1054
  %1072 = phi i8 [ %1039, %1054 ], [ %1039, %1061 ], [ %1039, %1058 ], [ 1, %1070 ], [ %1039, %1067 ], [ %1039, %1038 ]
  ret i8 %1072
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @fold_stmt_inplace(ptr noundef %0) local_unnamed_addr #12 !prof !360 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #18
  %3 = call fastcc zeroext i8 @fold_stmt_1(ptr noundef nonnull %2, i8 noundef zeroext 1), !range !317
  %4 = load ptr, ptr %2, align 8
  %5 = load ptr, ptr %4, align 8, !tbaa !260
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %8, label %7, !prof !361

7:                                                ; preds = %1
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3178, ptr noundef nonnull @.str.3) #18
  br label %8

8:                                                ; preds = %1, %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret i8 %3
}

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @execute_fold_all_builtins() #12 !prof !362 !PGOFuncName !363 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !149
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !240
  %7 = load ptr, ptr %6, align 8, !tbaa !241
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !243
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !245
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %635, label %13, !prof !364

13:                                               ; preds = %0
  %14 = getelementptr inbounds i8, ptr %3, i64 8
  %15 = getelementptr inbounds i8, ptr %3, i64 16
  br label %16

16:                                               ; preds = %13, %622
  %17 = phi ptr [ %9, %13 ], [ %626, %622 ]
  %18 = phi i8 [ 0, %13 ], [ %624, %622 ]
  %19 = phi i32 [ 0, %13 ], [ %623, %622 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 13
  %21 = load i32, ptr %20, align 8, !tbaa !249, !noalias !365
  %22 = and i32 %21, 512
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30, !prof !368

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !160, !noalias !365
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !369

28:                                               ; preds = %24
  %29 = load ptr, ptr %26, align 8, !tbaa !255, !noalias !365
  br label %30

30:                                               ; preds = %28, %24, %16
  %31 = phi ptr [ %29, %28 ], [ null, %24 ], [ null, %16 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !369

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !257, !noalias !365
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  store ptr %36, ptr %3, align 8, !tbaa.struct !286
  store ptr %31, ptr %14, align 8, !tbaa.struct !370
  store ptr %17, ptr %15, align 8, !tbaa.struct !227
  %37 = icmp eq ptr %36, null
  br i1 %37, label %622, label %38, !prof !371

38:                                               ; preds = %35, %617
  %39 = phi ptr [ %620, %617 ], [ %36, %35 ]
  %40 = phi i8 [ %619, %617 ], [ %18, %35 ]
  %41 = phi i32 [ %618, %617 ], [ %19, %35 ]
  %42 = load ptr, ptr %39, align 8, !tbaa !260
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 255
  %45 = icmp eq i32 %44, 8
  br i1 %45, label %49, label %46, !prof !372

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %39, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !282
  store ptr %48, ptr %3, align 8, !tbaa !373
  br label %617, !llvm.loop !375

49:                                               ; preds = %38
  %50 = zext nneg i32 %44 to i64
  %51 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !164
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !219
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58, !prof !376

57:                                               ; preds = %49
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %58

58:                                               ; preds = %57, %49
  %59 = getelementptr inbounds i8, ptr %42, i64 %55
  %60 = getelementptr inbounds ptr, ptr %59, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !149
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 121
  br i1 %64, label %65, label %68, !prof !377

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.tree_exp, ptr %61, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !160
  br label %68

68:                                               ; preds = %58, %65
  %69 = phi ptr [ %67, %65 ], [ null, %58 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71, !prof !376

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.tree_function_decl, ptr %69, i64 0, i32 5
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 6144
  %75 = icmp eq i32 %74, 6144
  br i1 %75, label %80, label %76, !prof !376

76:                                               ; preds = %71, %68
  %77 = load ptr, ptr %3, align 8, !tbaa !373
  %78 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !282
  store ptr %79, ptr %3, align 8, !tbaa !373
  br label %617, !llvm.loop !375

80:                                               ; preds = %71
  %81 = call fastcc ptr @ccp_fold_builtin(ptr noundef nonnull %42)
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr @cfun, align 8, !tbaa !149
  call void @gimple_remove_stmt_histograms(ptr noundef %84, ptr noundef nonnull %42) #18
  br label %527

85:                                               ; preds = %80
  %86 = load i32, ptr %72, align 8
  %87 = and i32 %86, 2047
  switch i32 %87, label %523 [
    i32 428, label %88
    i32 527, label %90
    i32 515, label %353
    i32 514, label %353
    i32 513, label %353
  ]

88:                                               ; preds = %85
  %89 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  br label %527

90:                                               ; preds = %85
  %91 = load ptr, ptr %3, align 8
  %92 = load ptr, ptr %15, align 8
  %93 = load ptr, ptr %91, align 8, !tbaa !260
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 255
  %96 = icmp eq i32 %95, 8
  br i1 %96, label %97, label %346

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.gimple_statement_base, ptr %93, i64 0, i32 3
  %99 = load i32, ptr %98, align 4, !tbaa !160
  %100 = icmp eq i32 %99, 4
  br i1 %100, label %101, label %346

101:                                              ; preds = %97
  %102 = zext nneg i32 %95 to i64
  %103 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !164
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !219
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %110

110:                                              ; preds = %109, %101
  %111 = getelementptr inbounds i8, ptr %93, i64 %107
  %112 = getelementptr inbounds ptr, ptr %111, i64 3
  %113 = load ptr, ptr %112, align 8, !tbaa !149
  %114 = load i64, ptr %113, align 8
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 141
  br i1 %116, label %117, label %346

117:                                              ; preds = %110
  %118 = load i32, ptr %93, align 8
  %119 = and i32 %118, 255
  %120 = add nsw i32 %119, -1
  %121 = icmp ult i32 %120, 9
  call void @llvm.assume(i1 %121)
  %122 = zext nneg i32 %119 to i64
  %123 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !164
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %125
  %127 = load i64, ptr %126, align 8, !tbaa !219
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %117
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %130

130:                                              ; preds = %129, %117
  %131 = getelementptr inbounds i8, ptr %93, i64 %127
  %132 = getelementptr inbounds ptr, ptr %131, i64 3
  %133 = load ptr, ptr %132, align 8, !tbaa !149
  %134 = getelementptr inbounds %struct.tree_common, ptr %133, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !160
  %136 = load i64, ptr %135, align 8
  %137 = and i64 %136, 65535
  %138 = icmp eq i64 %137, 10
  br i1 %138, label %161, label %139

139:                                              ; preds = %130
  %140 = load i32, ptr %93, align 8
  %141 = and i32 %140, 255
  %142 = add nsw i32 %141, -1
  %143 = icmp ult i32 %142, 9
  call void @llvm.assume(i1 %143)
  %144 = zext nneg i32 %141 to i64
  %145 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !164
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %147
  %149 = load i64, ptr %148, align 8, !tbaa !219
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %139
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %152

152:                                              ; preds = %151, %139
  %153 = getelementptr inbounds i8, ptr %93, i64 %149
  %154 = getelementptr inbounds ptr, ptr %153, i64 3
  %155 = load ptr, ptr %154, align 8, !tbaa !149
  %156 = getelementptr inbounds %struct.tree_common, ptr %155, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !160
  %158 = load i64, ptr %157, align 8
  %159 = and i64 %158, 65535
  %160 = icmp eq i64 %159, 12
  br i1 %160, label %161, label %346

161:                                              ; preds = %152, %130
  %162 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %91, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !282
  %164 = icmp eq ptr %163, null
  br i1 %164, label %209, label %165

165:                                              ; preds = %161, %205
  %166 = phi ptr [ %207, %205 ], [ %163, %161 ]
  %167 = load ptr, ptr %166, align 8, !tbaa !260
  %168 = load i32, ptr %167, align 8
  %169 = and i32 %168, 255
  %170 = trunc i32 %168 to i8
  switch i8 %170, label %205 [
    i8 7, label %346
    i8 8, label %171
  ]

171:                                              ; preds = %165
  %172 = add nsw i32 %169, -10
  %173 = icmp ult i32 %172, -9
  br i1 %173, label %187, label %174

174:                                              ; preds = %171
  %175 = zext nneg i32 %169 to i64
  %176 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !164
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %178
  %180 = load i64, ptr %179, align 8, !tbaa !219
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %183

183:                                              ; preds = %182, %174
  %184 = getelementptr inbounds i8, ptr %167, i64 %180
  %185 = getelementptr inbounds ptr, ptr %184, i64 1
  %186 = load ptr, ptr %185, align 8, !tbaa !149
  br label %187

187:                                              ; preds = %183, %171
  %188 = phi ptr [ %186, %183 ], [ null, %171 ]
  %189 = load i64, ptr %188, align 8
  %190 = and i64 %189, 65535
  %191 = icmp eq i64 %190, 121
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.tree_exp, ptr %188, i64 0, i32 3
  %194 = load ptr, ptr %193, align 8, !tbaa !160
  br label %195

195:                                              ; preds = %192, %187
  %196 = phi ptr [ %194, %192 ], [ null, %187 ]
  %197 = icmp eq ptr %196, null
  br i1 %197, label %346, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.tree_function_decl, ptr %196, i64 0, i32 5
  %200 = load i32, ptr %199, align 8
  %201 = and i32 %200, 6144
  %202 = icmp eq i32 %201, 6144
  br i1 %202, label %203, label %346

203:                                              ; preds = %198
  %204 = and i32 %200, 2047
  switch i32 %204, label %205 [
    i32 415, label %346
    i32 527, label %234
  ]

205:                                              ; preds = %203, %165
  %206 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %166, i64 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !282
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %165, !llvm.loop !378

209:                                              ; preds = %205, %161
  %210 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !379
  %212 = icmp eq ptr %211, null
  br i1 %212, label %215, label %213

213:                                              ; preds = %209
  %214 = load i32, ptr %211, align 8, !tbaa !380
  br label %215

215:                                              ; preds = %213, %209
  %216 = phi i32 [ %214, %213 ], [ 0, %209 ]
  switch i32 %216, label %346 [
    i32 0, label %234
    i32 1, label %217
  ]

217:                                              ; preds = %215
  br i1 %212, label %221, label %218

218:                                              ; preds = %217
  %219 = load i32, ptr %211, align 8, !tbaa !380
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %222, label %221

221:                                              ; preds = %218, %217
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 645, ptr noundef nonnull @.str.3) #18
  br label %222

222:                                              ; preds = %221, %218
  %223 = load ptr, ptr %210, align 8, !tbaa !379
  %224 = getelementptr inbounds %struct.VEC_edge_base, ptr %223, i64 0, i32 2, i64 0
  %225 = load ptr, ptr %224, align 8, !tbaa !149
  %226 = getelementptr inbounds %struct.edge_def, ptr %225, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !382
  %228 = load ptr, ptr @cfun, align 8, !tbaa !149
  %229 = getelementptr inbounds %struct.function, ptr %228, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !240
  %231 = getelementptr inbounds %struct.control_flow_graph, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !245
  %233 = icmp eq ptr %227, %232
  br i1 %233, label %234, label %346

234:                                              ; preds = %203, %222, %215
  %235 = load i32, ptr %93, align 8
  %236 = and i32 %235, 255
  %237 = add nsw i32 %236, -1
  %238 = icmp ult i32 %237, 9
  call void @llvm.assume(i1 %238)
  %239 = zext nneg i32 %236 to i64
  %240 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !164
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %242
  %244 = load i64, ptr %243, align 8, !tbaa !219
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %234
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %247

247:                                              ; preds = %246, %234
  %248 = getelementptr inbounds i8, ptr %93, i64 %244
  %249 = getelementptr inbounds ptr, ptr %248, i64 3
  %250 = load ptr, ptr %249, align 8, !tbaa !149
  %251 = getelementptr inbounds %struct.tree_ssa_name, ptr %250, i64 0, i32 5
  %252 = getelementptr inbounds %struct.tree_ssa_name, ptr %250, i64 0, i32 5, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !384
  %254 = icmp eq ptr %251, %253
  br i1 %254, label %271, label %255

255:                                              ; preds = %247
  %256 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %253, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !384
  %258 = icmp eq ptr %251, %257
  br i1 %258, label %259, label %266

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %253, i64 0, i32 2
  %261 = load ptr, ptr %260, align 8, !tbaa !160
  %262 = load i32, ptr %261, align 8
  %263 = and i32 %262, 255
  %264 = icmp ne i32 %263, 2
  %265 = zext i1 %264 to i8
  br label %271

266:                                              ; preds = %255
  %267 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !164
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %271, label %269

269:                                              ; preds = %266
  %270 = call zeroext i8 @single_imm_use_1(ptr noundef nonnull %251, ptr noundef null, ptr noundef null) #18
  br label %271

271:                                              ; preds = %269, %266, %259, %247
  %272 = phi i8 [ %265, %259 ], [ %270, %269 ], [ 0, %247 ], [ 0, %266 ]
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %344, label %274

274:                                              ; preds = %271
  %275 = load i32, ptr %93, align 8
  %276 = and i32 %275, 255
  %277 = add nsw i32 %276, -1
  %278 = icmp ult i32 %277, 9
  call void @llvm.assume(i1 %278)
  %279 = zext nneg i32 %276 to i64
  %280 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %279
  %281 = load i32, ptr %280, align 4, !tbaa !164
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %282
  %284 = load i64, ptr %283, align 8, !tbaa !219
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %274
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %287

287:                                              ; preds = %286, %274
  %288 = getelementptr inbounds i8, ptr %93, i64 %284
  %289 = getelementptr inbounds ptr, ptr %288, i64 3
  %290 = load ptr, ptr %289, align 8, !tbaa !149
  %291 = getelementptr inbounds %struct.tree_ssa_name, ptr %290, i64 0, i32 2
  %292 = load ptr, ptr %291, align 8, !tbaa !160
  %293 = load i32, ptr %292, align 8
  %294 = and i32 %293, 255
  %295 = icmp eq i32 %294, 8
  br i1 %295, label %296, label %344

296:                                              ; preds = %287
  %297 = zext nneg i32 %294 to i64
  %298 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %297
  %299 = load i32, ptr %298, align 4, !tbaa !164
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %300
  %302 = load i64, ptr %301, align 8, !tbaa !219
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %296
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %305

305:                                              ; preds = %304, %296
  %306 = getelementptr inbounds i8, ptr %292, i64 %302
  %307 = getelementptr inbounds ptr, ptr %306, i64 1
  %308 = load ptr, ptr %307, align 8, !tbaa !149
  %309 = load i64, ptr %308, align 8
  %310 = and i64 %309, 65535
  %311 = icmp eq i64 %310, 121
  br i1 %311, label %312, label %315

312:                                              ; preds = %305
  %313 = getelementptr inbounds %struct.tree_exp, ptr %308, i64 0, i32 3
  %314 = load ptr, ptr %313, align 8, !tbaa !160
  br label %315

315:                                              ; preds = %312, %305
  %316 = phi ptr [ %314, %312 ], [ null, %305 ]
  %317 = icmp eq ptr %316, null
  br i1 %317, label %344, label %318

318:                                              ; preds = %315
  %319 = getelementptr inbounds %struct.tree_function_decl, ptr %316, i64 0, i32 5
  %320 = load i32, ptr %319, align 8
  %321 = and i32 %320, 8191
  %322 = icmp eq i32 %321, 6670
  br i1 %322, label %323, label %344

323:                                              ; preds = %318
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %292) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !286
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  %324 = load i32, ptr %93, align 8
  %325 = and i32 %324, 255
  %326 = add nsw i32 %325, -1
  %327 = icmp ult i32 %326, 9
  call void @llvm.assume(i1 %327)
  %328 = zext nneg i32 %325 to i64
  %329 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %328
  %330 = load i32, ptr %329, align 4, !tbaa !164
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %331
  %333 = load i64, ptr %332, align 8, !tbaa !219
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %323
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %336

336:                                              ; preds = %335, %323
  %337 = getelementptr inbounds i8, ptr %93, i64 %333
  %338 = getelementptr inbounds ptr, ptr %337, i64 3
  %339 = load ptr, ptr %338, align 8, !tbaa !149
  %340 = getelementptr inbounds %struct.tree_common, ptr %339, i64 0, i32 2
  %341 = load ptr, ptr %340, align 8, !tbaa !160
  %342 = call ptr @build_int_cst(ptr noundef %341, i64 noundef 0) #18
  %343 = call zeroext i8 @update_call_from_tree(ptr noundef nonnull %1, ptr noundef %342) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #18
  br label %344

344:                                              ; preds = %336, %318, %315, %287, %271
  %345 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  br label %346

346:                                              ; preds = %203, %165, %195, %198, %90, %97, %110, %152, %215, %222, %344
  %347 = phi ptr [ %345, %344 ], [ null, %152 ], [ null, %110 ], [ null, %97 ], [ null, %90 ], [ null, %222 ], [ null, %215 ], [ null, %198 ], [ null, %195 ], [ null, %165 ], [ null, %203 ]
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %527

349:                                              ; preds = %346
  %350 = load ptr, ptr %3, align 8, !tbaa !373
  %351 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %350, i64 0, i32 2
  %352 = load ptr, ptr %351, align 8, !tbaa !282
  store ptr %352, ptr %3, align 8, !tbaa !373
  br label %617, !llvm.loop !375

353:                                              ; preds = %85, %85, %85
  %354 = getelementptr inbounds %struct.gimple_statement_base, ptr %42, i64 0, i32 2
  %355 = load i32, ptr %354, align 8, !tbaa !160
  %356 = load i32, ptr %42, align 8
  %357 = and i32 %356, 255
  %358 = icmp eq i32 %357, 8
  br i1 %358, label %359, label %520

359:                                              ; preds = %353
  %360 = zext nneg i32 %357 to i64
  %361 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %360
  %362 = load i32, ptr %361, align 4, !tbaa !164
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %363
  %365 = load i64, ptr %364, align 8, !tbaa !219
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %359
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %368

368:                                              ; preds = %367, %359
  %369 = getelementptr inbounds i8, ptr %42, i64 %365
  %370 = getelementptr inbounds ptr, ptr %369, i64 1
  %371 = load ptr, ptr %370, align 8, !tbaa !149
  %372 = load i64, ptr %371, align 8
  %373 = and i64 %372, 65535
  %374 = icmp eq i64 %373, 121
  br i1 %374, label %375, label %378

375:                                              ; preds = %368
  %376 = getelementptr inbounds %struct.tree_exp, ptr %371, i64 0, i32 3
  %377 = load ptr, ptr %376, align 8, !tbaa !160
  br label %378

378:                                              ; preds = %375, %368
  %379 = phi ptr [ %377, %375 ], [ null, %368 ]
  %380 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 70), align 8, !tbaa !386
  %381 = call ptr %380(ptr noundef %379) #18
  %382 = load i64, ptr %381, align 8
  %383 = trunc i64 %382 to i16
  switch i16 %383, label %392 [
    i16 10, label %384
    i16 12, label %384
  ]

384:                                              ; preds = %378, %378
  %385 = getelementptr inbounds %struct.tree_common, ptr %381, i64 0, i32 2
  %386 = load ptr, ptr %385, align 8, !tbaa !160
  %387 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !149
  %388 = icmp eq ptr %386, %387
  br i1 %388, label %392, label %389

389:                                              ; preds = %384
  %390 = load ptr, ptr @integer_types, align 16, !tbaa !149
  %391 = icmp ne ptr %386, %390
  br label %392

392:                                              ; preds = %384, %389, %378
  %393 = phi i1 [ %391, %389 ], [ true, %378 ], [ false, %384 ]
  %394 = getelementptr inbounds %struct.tree_function_decl, ptr %379, i64 0, i32 5
  %395 = load i32, ptr %394, align 8
  %396 = and i32 %395, 2047
  switch i32 %396, label %519 [
    i32 515, label %397
    i32 513, label %450
    i32 514, label %517
  ]

397:                                              ; preds = %392
  %398 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 72), align 8
  %399 = icmp ne ptr %398, null
  %400 = select i1 %393, i1 true, i1 %399
  %401 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 492), align 16
  %402 = icmp eq ptr %401, null
  %403 = select i1 %400, i1 true, i1 %402
  br i1 %403, label %520, label %404

404:                                              ; preds = %397
  %405 = getelementptr inbounds %struct.gimple_statement_base, ptr %42, i64 0, i32 3
  %406 = load i32, ptr %405, align 4, !tbaa !160
  %407 = icmp eq i32 %406, 5
  br i1 %407, label %408, label %520

408:                                              ; preds = %404
  %409 = load i32, ptr %42, align 8
  %410 = and i32 %409, 255
  %411 = add nsw i32 %410, -10
  %412 = icmp ult i32 %411, -9
  br i1 %412, label %426, label %413

413:                                              ; preds = %408
  %414 = zext nneg i32 %410 to i64
  %415 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %414
  %416 = load i32, ptr %415, align 4, !tbaa !164
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %417
  %419 = load i64, ptr %418, align 8, !tbaa !219
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %413
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %422

422:                                              ; preds = %421, %413
  %423 = getelementptr inbounds i8, ptr %42, i64 %419
  %424 = getelementptr inbounds ptr, ptr %423, i64 3
  %425 = load ptr, ptr %424, align 8, !tbaa !149
  br label %426

426:                                              ; preds = %422, %408
  %427 = phi ptr [ %425, %422 ], [ null, %408 ]
  %428 = getelementptr inbounds %struct.tree_common, ptr %427, i64 0, i32 2
  %429 = load ptr, ptr %428, align 8, !tbaa !160
  %430 = load i64, ptr %429, align 8
  %431 = trunc i64 %430 to i16
  switch i16 %431, label %520 [
    i16 10, label %432
    i16 12, label %432
  ]

432:                                              ; preds = %426, %426
  %433 = getelementptr inbounds %struct.tree_common, ptr %429, i64 0, i32 2
  %434 = load ptr, ptr %433, align 8, !tbaa !160
  %435 = getelementptr inbounds %struct.tree_type, ptr %434, i64 0, i32 16
  %436 = load ptr, ptr %435, align 8, !tbaa !160
  %437 = getelementptr inbounds %struct.tree_type, ptr %381, i64 0, i32 16
  %438 = load ptr, ptr %437, align 8, !tbaa !160
  %439 = icmp eq ptr %436, %438
  br i1 %439, label %440, label %520

440:                                              ; preds = %432
  %441 = call ptr @build_fold_indirect_ref_loc(i32 noundef %355, ptr noundef %427) #18
  %442 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 492), align 16, !tbaa !149
  %443 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %444 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %355, ptr noundef %442, i32 noundef 1, ptr noundef %443) #18
  %445 = getelementptr inbounds %struct.tree_common, ptr %441, i64 0, i32 2
  %446 = load ptr, ptr %445, align 8, !tbaa !160
  %447 = call ptr @fold_convert_loc(i32 noundef %355, ptr noundef %446, ptr noundef %444) #18
  %448 = load ptr, ptr %445, align 8, !tbaa !160
  %449 = call ptr @build2_stat(i32 noundef 53, ptr noundef %448, ptr noundef %441, ptr noundef %447) #18
  br label %520

450:                                              ; preds = %392
  br i1 %393, label %520, label %451

451:                                              ; preds = %450
  %452 = getelementptr inbounds %struct.gimple_statement_base, ptr %42, i64 0, i32 3
  %453 = load i32, ptr %452, align 4, !tbaa !160
  %454 = icmp eq i32 %453, 5
  br i1 %454, label %455, label %520

455:                                              ; preds = %451
  %456 = load i32, ptr %42, align 8
  %457 = and i32 %456, 255
  %458 = add nsw i32 %457, -10
  %459 = icmp ult i32 %458, -9
  br i1 %459, label %473, label %460

460:                                              ; preds = %455
  %461 = zext nneg i32 %457 to i64
  %462 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %461
  %463 = load i32, ptr %462, align 4, !tbaa !164
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %464
  %466 = load i64, ptr %465, align 8, !tbaa !219
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %468, label %469

468:                                              ; preds = %460
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %469

469:                                              ; preds = %468, %460
  %470 = getelementptr inbounds i8, ptr %42, i64 %466
  %471 = getelementptr inbounds ptr, ptr %470, i64 3
  %472 = load ptr, ptr %471, align 8, !tbaa !149
  br label %473

473:                                              ; preds = %469, %455
  %474 = phi ptr [ %472, %469 ], [ null, %455 ]
  %475 = getelementptr inbounds %struct.tree_common, ptr %474, i64 0, i32 2
  %476 = load ptr, ptr %475, align 8, !tbaa !160
  %477 = load i64, ptr %476, align 8
  %478 = trunc i64 %477 to i16
  switch i16 %478, label %520 [
    i16 10, label %479
    i16 12, label %479
  ]

479:                                              ; preds = %473, %473
  %480 = getelementptr inbounds %struct.tree_common, ptr %476, i64 0, i32 2
  %481 = load ptr, ptr %480, align 8, !tbaa !160
  %482 = getelementptr inbounds %struct.tree_type, ptr %481, i64 0, i32 16
  %483 = load ptr, ptr %482, align 8, !tbaa !160
  %484 = getelementptr inbounds %struct.tree_type, ptr %381, i64 0, i32 16
  %485 = load ptr, ptr %484, align 8, !tbaa !160
  %486 = icmp eq ptr %483, %485
  br i1 %486, label %487, label %520

487:                                              ; preds = %479
  %488 = call ptr @build_fold_indirect_ref_loc(i32 noundef %355, ptr noundef %474) #18
  %489 = load i32, ptr %42, align 8
  %490 = and i32 %489, 255
  %491 = add nsw i32 %490, -1
  %492 = icmp ult i32 %491, 9
  call void @llvm.assume(i1 %492)
  %493 = zext nneg i32 %490 to i64
  %494 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %493
  %495 = load i32, ptr %494, align 4, !tbaa !164
  %496 = zext i32 %495 to i64
  %497 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %496
  %498 = load i64, ptr %497, align 8, !tbaa !219
  %499 = icmp eq i64 %498, 0
  br i1 %499, label %500, label %501

500:                                              ; preds = %487
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %501

501:                                              ; preds = %500, %487
  %502 = getelementptr inbounds i8, ptr %42, i64 %498
  %503 = getelementptr inbounds ptr, ptr %502, i64 4
  %504 = load ptr, ptr %503, align 8, !tbaa !149
  %505 = getelementptr inbounds %struct.tree_common, ptr %504, i64 0, i32 2
  %506 = load ptr, ptr %505, align 8, !tbaa !160
  %507 = getelementptr inbounds %struct.tree_type, ptr %506, i64 0, i32 16
  %508 = load ptr, ptr %507, align 8, !tbaa !160
  %509 = load ptr, ptr %484, align 8, !tbaa !160
  %510 = icmp eq ptr %508, %509
  br i1 %510, label %511, label %520

511:                                              ; preds = %501
  %512 = getelementptr inbounds %struct.tree_common, ptr %488, i64 0, i32 2
  %513 = load ptr, ptr %512, align 8, !tbaa !160
  %514 = call ptr @fold_convert_loc(i32 noundef %355, ptr noundef %513, ptr noundef %504) #18
  %515 = load ptr, ptr %512, align 8, !tbaa !160
  %516 = call ptr @build2_stat(i32 noundef 53, ptr noundef %515, ptr noundef %488, ptr noundef %514) #18
  br label %520

517:                                              ; preds = %392
  %518 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  br label %520

519:                                              ; preds = %392
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3339, ptr noundef nonnull @.str.3) #18
  br label %520

520:                                              ; preds = %473, %426, %353, %397, %404, %432, %440, %450, %451, %479, %501, %511, %517, %519
  %521 = phi ptr [ null, %519 ], [ %518, %517 ], [ %516, %511 ], [ %449, %440 ], [ null, %353 ], [ null, %397 ], [ null, %404 ], [ null, %432 ], [ null, %450 ], [ null, %451 ], [ null, %479 ], [ null, %501 ], [ null, %426 ], [ null, %473 ]
  %522 = icmp eq ptr %521, null
  br i1 %522, label %523, label %527

523:                                              ; preds = %85, %520
  %524 = load ptr, ptr %3, align 8, !tbaa !373
  %525 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %524, i64 0, i32 2
  %526 = load ptr, ptr %525, align 8, !tbaa !282
  store ptr %526, ptr %3, align 8, !tbaa !373
  br label %617, !llvm.loop !375

527:                                              ; preds = %83, %88, %346, %520
  %528 = phi ptr [ %81, %83 ], [ %521, %520 ], [ %347, %346 ], [ %89, %88 ]
  %529 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %530 = icmp eq ptr %529, null
  br i1 %530, label %539, label %531

531:                                              ; preds = %527
  %532 = load i32, ptr @dump_flags, align 4, !tbaa !164
  %533 = and i32 %532, 8
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %539, label %535

535:                                              ; preds = %531
  %536 = call i64 @fwrite(ptr nonnull @.str.27, i64 13, i64 1, ptr nonnull %529)
  %537 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %538 = load i32, ptr @dump_flags, align 4, !tbaa !164
  call void @print_gimple_stmt(ptr noundef %537, ptr noundef nonnull %42, i32 noundef 0, i32 noundef %538) #18
  br label %539

539:                                              ; preds = %535, %531, %527
  %540 = call zeroext i8 @update_call_from_tree(ptr noundef nonnull %3, ptr noundef %528) #18
  %541 = icmp eq i8 %540, 0
  br i1 %541, label %542, label %544

542:                                              ; preds = %539
  call fastcc void @gimplify_and_update_call_from_tree(ptr noundef nonnull %3, ptr noundef %528)
  %543 = or i32 %41, 2097152
  br label %544

544:                                              ; preds = %542, %539
  %545 = phi i32 [ %41, %539 ], [ %543, %542 ]
  %546 = load ptr, ptr %3, align 8
  %547 = load ptr, ptr %546, align 8, !tbaa !260
  %548 = load i32, ptr %547, align 8
  %549 = and i32 %548, 255
  %550 = add nsw i32 %549, -10
  %551 = icmp ult i32 %550, -9
  br i1 %551, label %553, label %552

552:                                              ; preds = %544
  call void @gimple_set_modified(ptr noundef nonnull %547, i8 noundef zeroext 1) #18
  call void @update_stmt_operands(ptr noundef nonnull %547) #18
  br label %553

553:                                              ; preds = %544, %552
  %554 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef nonnull %42, ptr noundef nonnull %547) #18
  %555 = icmp eq i8 %554, 0
  br i1 %555, label %560, label %556

556:                                              ; preds = %553
  %557 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %17) #18
  %558 = icmp eq i8 %557, 0
  %559 = select i1 %558, i8 %40, i8 1
  br label %560

560:                                              ; preds = %556, %553
  %561 = phi i8 [ %40, %553 ], [ %559, %556 ]
  %562 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %563 = icmp eq ptr %562, null
  br i1 %563, label %574, label %564

564:                                              ; preds = %560
  %565 = load i32, ptr @dump_flags, align 4, !tbaa !164
  %566 = and i32 %565, 8
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %574, label %568

568:                                              ; preds = %564
  %569 = call i64 @fwrite(ptr nonnull @.str.28, i64 5, i64 1, ptr nonnull %562)
  %570 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %571 = load i32, ptr @dump_flags, align 4, !tbaa !164
  call void @print_gimple_stmt(ptr noundef %570, ptr noundef nonnull %547, i32 noundef 0, i32 noundef %571) #18
  %572 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %573 = call i32 @fputc(i32 10, ptr %572)
  br label %574

574:                                              ; preds = %568, %564, %560
  %575 = load i32, ptr %547, align 8
  %576 = and i32 %575, 255
  %577 = icmp eq i32 %576, 8
  br i1 %577, label %582, label %578

578:                                              ; preds = %574
  %579 = load ptr, ptr %3, align 8, !tbaa !373
  %580 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %579, i64 0, i32 2
  %581 = load ptr, ptr %580, align 8, !tbaa !282
  store ptr %581, ptr %3, align 8, !tbaa !373
  br label %617, !llvm.loop !375

582:                                              ; preds = %574
  %583 = zext nneg i32 %576 to i64
  %584 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %583
  %585 = load i32, ptr %584, align 4, !tbaa !164
  %586 = zext i32 %585 to i64
  %587 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %586
  %588 = load i64, ptr %587, align 8, !tbaa !219
  %589 = icmp eq i64 %588, 0
  br i1 %589, label %590, label %591

590:                                              ; preds = %582
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %591

591:                                              ; preds = %590, %582
  %592 = getelementptr inbounds i8, ptr %547, i64 %588
  %593 = getelementptr inbounds ptr, ptr %592, i64 1
  %594 = load ptr, ptr %593, align 8, !tbaa !149
  %595 = load i64, ptr %594, align 8
  %596 = and i64 %595, 65535
  %597 = icmp eq i64 %596, 121
  br i1 %597, label %598, label %601

598:                                              ; preds = %591
  %599 = getelementptr inbounds %struct.tree_exp, ptr %594, i64 0, i32 3
  %600 = load ptr, ptr %599, align 8, !tbaa !160
  br label %601

601:                                              ; preds = %591, %598
  %602 = phi ptr [ %600, %598 ], [ null, %591 ]
  %603 = icmp eq ptr %602, null
  br i1 %603, label %613, label %604

604:                                              ; preds = %601
  %605 = getelementptr inbounds %struct.tree_function_decl, ptr %602, i64 0, i32 5
  %606 = load i32, ptr %605, align 8
  %607 = and i32 %606, 6144
  %608 = icmp eq i32 %607, 6144
  br i1 %608, label %609, label %613

609:                                              ; preds = %604
  %610 = xor i32 %606, %73
  %611 = and i32 %610, 2047
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %613, label %617

613:                                              ; preds = %609, %604, %601
  %614 = load ptr, ptr %3, align 8, !tbaa !373
  %615 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %614, i64 0, i32 2
  %616 = load ptr, ptr %615, align 8, !tbaa !282
  store ptr %616, ptr %3, align 8, !tbaa !373
  br label %617

617:                                              ; preds = %609, %613, %578, %523, %349, %76, %46
  %618 = phi i32 [ %41, %46 ], [ %41, %76 ], [ %545, %578 ], [ %41, %523 ], [ %41, %349 ], [ %545, %613 ], [ %545, %609 ]
  %619 = phi i8 [ %40, %46 ], [ %40, %76 ], [ %561, %578 ], [ %40, %523 ], [ %40, %349 ], [ %561, %613 ], [ %561, %609 ]
  %620 = load ptr, ptr %3, align 8
  %621 = icmp eq ptr %620, null
  br i1 %621, label %622, label %38, !prof !387

622:                                              ; preds = %617, %35
  %623 = phi i32 [ %19, %35 ], [ %618, %617 ]
  %624 = phi i8 [ %18, %35 ], [ %619, %617 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  %625 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %626 = load ptr, ptr %625, align 8, !tbaa !243
  %627 = load ptr, ptr @cfun, align 8, !tbaa !149
  %628 = getelementptr inbounds %struct.function, ptr %627, i64 0, i32 1
  %629 = load ptr, ptr %628, align 8, !tbaa !240
  %630 = getelementptr inbounds %struct.control_flow_graph, ptr %629, i64 0, i32 1
  %631 = load ptr, ptr %630, align 8, !tbaa !245
  %632 = icmp eq ptr %626, %631
  br i1 %632, label %633, label %16, !prof !388, !llvm.loop !389

633:                                              ; preds = %622
  %634 = icmp eq i8 %624, 0
  br label %635

635:                                              ; preds = %633, %0
  %636 = phi i32 [ 0, %0 ], [ %623, %633 ]
  %637 = phi i1 [ true, %0 ], [ %634, %633 ]
  %638 = or i32 %636, 32
  %639 = select i1 %637, i32 %636, i32 %638, !prof !390
  ret i32 %639
}

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_isnegzero(ptr noundef) local_unnamed_addr #3

declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

declare zeroext i8 @real_isnan(ptr noundef) local_unnamed_addr #3

declare void @ssa_propagate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ccp_visit_stmt(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #10 !prof !391 !PGOFuncName !392 {
  %4 = alloca %struct.real_value, align 8
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7, !prof !393

7:                                                ; preds = %3
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !164
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 21, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !164
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %0, i32 noundef 0, i32 noundef %14) #18
  br label %15

15:                                               ; preds = %11, %7, %3
  %16 = load i32, ptr %0, align 8
  %17 = and i32 %16, 255
  %18 = trunc i32 %16 to i8
  switch i8 %18, label %582 [
    i8 6, label %19
    i8 8, label %21
    i8 1, label %39
    i8 5, label %39
  ], !prof !394

19:                                               ; preds = %15
  %20 = tail call fastcc i32 @visit_assignment(ptr noundef nonnull %0, ptr noundef %2), !range !395
  br label %627

21:                                               ; preds = %15
  %22 = add nsw i32 %17, -10
  %23 = icmp ult i32 %22, -9
  br i1 %23, label %582, label %24, !prof !396

24:                                               ; preds = %21
  %25 = zext nneg i32 %17 to i64
  %26 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !164
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !219
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33, !prof !396

32:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %33

33:                                               ; preds = %32, %24
  %34 = getelementptr inbounds i8, ptr %0, i64 %30
  %35 = load ptr, ptr %34, align 8, !tbaa !149
  %36 = icmp eq ptr %35, null
  br i1 %36, label %582, label %37, !prof !397

37:                                               ; preds = %33
  %38 = tail call fastcc i32 @visit_assignment(ptr noundef nonnull %0, ptr noundef %2), !range !395
  br label %627

39:                                               ; preds = %15, %15
  %40 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !160
  %42 = icmp eq i32 %17, 6
  switch i8 %18, label %43 [
    i8 8, label %44
    i8 6, label %44
    i8 5, label %44
    i8 1, label %44
  ], !prof !398

43:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 524, ptr noundef nonnull @.str.3) #18
  br label %44

44:                                               ; preds = %43, %39, %39, %39, %39
  %45 = load i32, ptr %0, align 8
  %46 = and i32 %45, 254
  %47 = add nsw i32 %46, -10
  %48 = icmp ult i32 %47, -4
  %49 = and i32 %45, 16384
  %50 = icmp eq i32 %49, 0
  %51 = or i1 %50, %48
  br i1 %51, label %52, label %472, !prof !399

52:                                               ; preds = %44
  %53 = and i32 %45, 255
  %54 = add nsw i32 %53, -10
  %55 = icmp ult i32 %54, -9
  br i1 %55, label %59, label %56, !prof !400

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !160
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi ptr [ %58, %56 ], [ null, %52 ]
  %61 = icmp eq ptr %60, null
  %62 = or i1 %48, %61
  br i1 %62, label %69, label %63, !prof !401

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !160
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67, !prof !402

67:                                               ; preds = %63
  %68 = load ptr, ptr %60, align 8, !tbaa !403
  br label %69

69:                                               ; preds = %67, %63, %59
  %70 = phi ptr [ %60, %59 ], [ %60, %63 ], [ %68, %67 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72, !prof !405

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.use_optype_d, ptr %70, i64 0, i32 1, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !406
  %75 = load ptr, ptr %74, align 8, !tbaa !149
  %76 = load ptr, ptr %70, align 8, !tbaa !403
  br label %77

77:                                               ; preds = %72, %69
  %78 = phi ptr [ %76, %72 ], [ %70, %69 ]
  %79 = phi i8 [ 0, %72 ], [ 1, %69 ]
  %80 = phi ptr [ %75, %72 ], [ null, %69 ]
  br i1 %71, label %346, label %81, !prof !407

81:                                               ; preds = %77, %341
  %82 = phi i8 [ %334, %341 ], [ 0, %77 ]
  %83 = phi i8 [ %332, %341 ], [ 0, %77 ]
  %84 = phi ptr [ %344, %341 ], [ %80, %77 ]
  %85 = phi i8 [ %331, %341 ], [ 1, %77 ]
  %86 = phi i8 [ %343, %341 ], [ %79, %77 ]
  %87 = phi ptr [ %342, %341 ], [ %78, %77 ]
  %88 = load ptr, ptr @const_val, align 8, !tbaa !149, !nonnull !408, !noundef !408
  %89 = getelementptr inbounds %struct.tree_ssa_name, ptr %84, i64 0, i32 3
  %90 = load i32, ptr %89, align 8, !tbaa !160
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.prop_value_d, ptr %88, i64 %91
  %93 = load i32, ptr %92, align 8, !tbaa !197
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %249, !prof !215

95:                                               ; preds = %81
  %96 = getelementptr inbounds %struct.tree_ssa_name, ptr %84, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !160
  %98 = getelementptr inbounds %struct.tree_ssa_name, ptr %84, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !160
  %100 = load i32, ptr %99, align 8
  %101 = trunc i32 %100 to i8
  switch i8 %101, label %124 [
    i8 18, label %102
    i8 6, label %128
    i8 8, label %110
  ], !prof !216

102:                                              ; preds = %95
  %103 = call zeroext i8 @is_gimple_reg(ptr noundef %97) #18
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %109, label %105, !prof !217

105:                                              ; preds = %102
  %106 = load i64, ptr %97, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 34
  br i1 %108, label %109, label %245, !prof !218

109:                                              ; preds = %105, %102
  br label %245

110:                                              ; preds = %95
  %111 = and i32 %100, 255
  %112 = zext nneg i32 %111 to i64
  %113 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !164
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %115
  %117 = load i64, ptr %116, align 8, !tbaa !219
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %120

120:                                              ; preds = %119, %110
  %121 = getelementptr inbounds i8, ptr %99, i64 %117
  %122 = load ptr, ptr %121, align 8, !tbaa !149
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %120, %95
  %125 = load i32, ptr %99, align 8
  %126 = and i32 %125, 255
  %127 = icmp eq i32 %126, 16
  br i1 %127, label %128, label %245, !prof !220

128:                                              ; preds = %124, %120, %95
  %129 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %99) #18
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %244, label %131, !prof !221

131:                                              ; preds = %128
  %132 = load i32, ptr %99, align 8
  %133 = and i32 %132, 255
  %134 = add nsw i32 %133, -1
  %135 = icmp ult i32 %134, 9
  call void @llvm.assume(i1 %135)
  %136 = zext nneg i32 %133 to i64
  %137 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !164
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !219
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %144, !prof !222

143:                                              ; preds = %131
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %144

144:                                              ; preds = %143, %131
  %145 = getelementptr inbounds i8, ptr %99, i64 %141
  %146 = getelementptr inbounds ptr, ptr %145, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !149
  %148 = load i64, ptr %147, align 8
  %149 = and i64 %148, 65535
  %150 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !164
  %152 = icmp eq i32 %151, 3
  br i1 %152, label %153, label %244, !prof !223

153:                                              ; preds = %144
  %154 = load i32, ptr %99, align 8
  %155 = and i32 %154, 255
  %156 = add nsw i32 %155, -10
  %157 = icmp ult i32 %156, -9
  br i1 %157, label %171, label %158, !prof !224

158:                                              ; preds = %153
  %159 = zext nneg i32 %155 to i64
  %160 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !164
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %162
  %164 = load i64, ptr %163, align 8, !tbaa !219
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %167, !prof !224

166:                                              ; preds = %158
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %167

167:                                              ; preds = %166, %158
  %168 = getelementptr inbounds i8, ptr %99, i64 %164
  %169 = getelementptr inbounds ptr, ptr %168, i64 1
  %170 = load ptr, ptr %169, align 8, !tbaa !149
  br label %171

171:                                              ; preds = %167, %153
  %172 = phi ptr [ %170, %167 ], [ null, %153 ]
  %173 = load i64, ptr %172, align 8
  %174 = and i64 %173, 67108864
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %240, label %176, !prof !169

176:                                              ; preds = %171
  %177 = and i64 %173, 1048576
  %178 = icmp ne i64 %177, 0
  %179 = and i64 %173, 65535
  %180 = icmp eq i64 %179, 33
  %181 = or i1 %178, %180
  br i1 %181, label %182, label %240

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.tree_decl_common, ptr %172, i64 0, i32 5
  %184 = load ptr, ptr %183, align 8, !tbaa !160
  %185 = icmp eq ptr %184, null
  br i1 %185, label %214, label %186

186:                                              ; preds = %182
  %187 = call ptr @tree_strip_nop_conversions(ptr noundef nonnull %184) #18
  %188 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %187) #18
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %214, label %190

190:                                              ; preds = %186
  %191 = load i64, ptr %187, align 8
  %192 = and i64 %191, 65535
  %193 = icmp eq i64 %192, 121
  br i1 %193, label %194, label %237

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.tree_exp, ptr %187, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !160
  %197 = call ptr @get_base_address(ptr noundef %196) #18
  %198 = icmp eq ptr %197, null
  br i1 %198, label %237, label %199

199:                                              ; preds = %194
  %200 = load i64, ptr %197, align 8
  %201 = and i64 %200, 65535
  %202 = icmp eq i64 %201, 32
  br i1 %202, label %203, label %237

203:                                              ; preds = %199
  %204 = or i64 %200, 262144
  store i64 %204, ptr %197, align 8
  %205 = load ptr, ptr @cfun, align 8, !tbaa !149
  %206 = getelementptr inbounds %struct.function, ptr %205, i64 0, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !170
  %208 = icmp eq ptr %207, null
  br i1 %208, label %237, label %209

209:                                              ; preds = %203
  %210 = load ptr, ptr %207, align 8, !tbaa !172
  %211 = icmp eq ptr %210, null
  br i1 %211, label %237, label %212

212:                                              ; preds = %209
  %213 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %197) #18
  br label %237

214:                                              ; preds = %186, %182
  %215 = phi ptr [ %187, %186 ], [ null, %182 ]
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %237

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.tree_decl_common, ptr %172, i64 0, i32 2
  %219 = load i64, ptr %218, align 8
  %220 = and i64 %219, 33554432
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %237

222:                                              ; preds = %217
  %223 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !176
  %224 = call zeroext i8 %223(ptr noundef nonnull %172) #18
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %237, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.tree_common, ptr %172, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !160
  %229 = load i64, ptr %228, align 8
  %230 = trunc i64 %229 to i32
  %231 = and i32 %230, 65534
  %232 = add nsw i32 %231, -6
  %233 = icmp ult i32 %232, 4
  br i1 %233, label %234, label %237

234:                                              ; preds = %226
  %235 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %236 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %228, ptr noundef %235) #18
  br label %237

237:                                              ; preds = %234, %226, %222, %217, %214, %212, %209, %203, %199, %194, %190
  %238 = phi ptr [ %236, %234 ], [ %187, %194 ], [ %187, %199 ], [ %187, %212 ], [ %187, %209 ], [ %187, %190 ], [ undef, %226 ], [ undef, %222 ], [ undef, %217 ], [ undef, %214 ], [ %187, %203 ]
  %239 = phi i1 [ false, %234 ], [ false, %194 ], [ false, %199 ], [ false, %212 ], [ false, %209 ], [ false, %190 ], [ true, %226 ], [ true, %222 ], [ true, %217 ], [ true, %214 ], [ false, %203 ]
  br i1 %239, label %240, label %241

240:                                              ; preds = %237, %176, %171
  br label %241

241:                                              ; preds = %240, %237
  %242 = phi ptr [ %238, %237 ], [ null, %240 ]
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %245, !prof !225

244:                                              ; preds = %241, %144, %128
  br label %245

245:                                              ; preds = %244, %241, %124, %109, %105
  %246 = phi ptr [ null, %109 ], [ null, %105 ], [ null, %244 ], [ %242, %241 ], [ null, %124 ]
  %247 = phi i32 [ 3, %109 ], [ 1, %105 ], [ 1, %244 ], [ 2, %241 ], [ 3, %124 ]
  store i32 %247, ptr %92, align 8, !tbaa.struct !226
  %248 = getelementptr inbounds i8, ptr %92, i64 8
  store ptr %246, ptr %248, align 8, !tbaa.struct !227
  br label %249

249:                                              ; preds = %245, %81
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  %250 = load i32, ptr %92, align 8, !tbaa !197
  %251 = icmp eq i32 %250, 2
  br i1 %251, label %252, label %328, !prof !228

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.prop_value_d, ptr %88, i64 %91, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !199
  %255 = load i64, ptr %254, align 8
  %256 = and i64 %255, 65535
  %257 = icmp eq i64 %256, 24
  br i1 %257, label %258, label %328, !prof !229

258:                                              ; preds = %252
  %259 = getelementptr inbounds %struct.tree_real_cst, ptr %254, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %260, i64 32, i1 false), !tbaa.struct !230
  %261 = getelementptr inbounds %struct.tree_common, ptr %254, i64 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !160
  %263 = load i64, ptr %262, align 8
  %264 = and i64 %263, 65535
  %265 = icmp eq i64 %264, 14
  br i1 %265, label %266, label %268

266:                                              ; preds = %258
  %267 = call i32 @vector_type_mode(ptr noundef nonnull %262) #18
  br label %273

268:                                              ; preds = %258
  %269 = getelementptr inbounds %struct.tree_type, ptr %262, i64 0, i32 6
  %270 = load i32, ptr %269, align 4
  %271 = lshr i32 %270, 16
  %272 = and i32 %271, 255
  br label %273

273:                                              ; preds = %268, %266
  %274 = phi i32 [ %267, %266 ], [ %272, %268 ]
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %275
  %277 = load i8, ptr %276, align 1, !tbaa !160
  switch i8 %277, label %297 [
    i8 8, label %278
    i8 9, label %278
    i8 11, label %278
    i8 17, label %278
  ]

278:                                              ; preds = %273, %273, %273, %273
  %279 = and i8 %277, -2
  %280 = icmp eq i8 %279, 8
  br i1 %280, label %285, label %281

281:                                              ; preds = %278
  %282 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %275
  %283 = load i8, ptr %282, align 1, !tbaa !160
  %284 = zext i8 %283 to i32
  br label %285

285:                                              ; preds = %278, %281
  %286 = phi i32 [ %284, %281 ], [ %274, %278 ]
  %287 = add i32 %286, -38
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %288
  %290 = load ptr, ptr %289, align 8, !tbaa !149
  %291 = getelementptr inbounds %struct.real_format, ptr %290, i64 0, i32 14
  %292 = load i8, ptr %291, align 1, !tbaa !231
  %293 = icmp ne i8 %292, 0
  %294 = load i32, ptr @flag_signed_zeros, align 4
  %295 = icmp ne i32 %294, 0
  %296 = select i1 %293, i1 %295, i1 false
  br i1 %296, label %302, label %297

297:                                              ; preds = %285, %273
  %298 = call zeroext i8 @real_isnegzero(ptr noundef nonnull %4) #18
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %302, label %300

300:                                              ; preds = %297
  %301 = call ptr @build_real(ptr noundef nonnull %262, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #18
  br label %326

302:                                              ; preds = %297, %285
  switch i8 %277, label %322 [
    i8 8, label %303
    i8 9, label %303
    i8 11, label %303
    i8 17, label %303
  ]

303:                                              ; preds = %302, %302, %302, %302
  %304 = and i8 %277, -2
  %305 = icmp eq i8 %304, 8
  br i1 %305, label %310, label %306

306:                                              ; preds = %303
  %307 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %275
  %308 = load i8, ptr %307, align 1, !tbaa !160
  %309 = zext i8 %308 to i32
  br label %310

310:                                              ; preds = %303, %306
  %311 = phi i32 [ %309, %306 ], [ %274, %303 ]
  %312 = add i32 %311, -38
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %313
  %315 = load ptr, ptr %314, align 8, !tbaa !149
  %316 = getelementptr inbounds %struct.real_format, ptr %315, i64 0, i32 11
  %317 = load i8, ptr %316, align 2, !tbaa !233
  %318 = icmp eq i8 %317, 0
  %319 = load i32, ptr @flag_finite_math_only, align 4
  %320 = icmp ne i32 %319, 0
  %321 = select i1 %318, i1 true, i1 %320
  br i1 %321, label %322, label %328

322:                                              ; preds = %310, %302
  %323 = call zeroext i8 @real_isnan(ptr noundef nonnull %4) #18
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %322
  store i32 1, ptr %92, align 8, !tbaa !197
  br label %326

326:                                              ; preds = %300, %325
  %327 = phi ptr [ null, %325 ], [ %301, %300 ]
  store ptr %327, ptr %253, align 8, !tbaa !199
  br label %328

328:                                              ; preds = %326, %322, %310, %252, %249
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  %329 = load i32, ptr %92, align 8, !tbaa !197
  %330 = icmp eq i32 %329, 1
  %331 = select i1 %330, i8 %85, i8 0, !prof !409
  %332 = select i1 %330, i8 1, i8 %83, !prof !409
  %333 = icmp eq i32 %329, 2
  %334 = select i1 %333, i8 1, i8 %82, !prof !410
  %335 = icmp eq ptr %87, null
  br i1 %335, label %341, label %336, !prof !411

336:                                              ; preds = %328
  %337 = getelementptr inbounds %struct.use_optype_d, ptr %87, i64 0, i32 1, i32 3
  %338 = load ptr, ptr %337, align 8, !tbaa !406
  %339 = load ptr, ptr %338, align 8, !tbaa !149
  %340 = load ptr, ptr %87, align 8, !tbaa !403
  br label %341

341:                                              ; preds = %336, %328
  %342 = phi ptr [ %340, %336 ], [ %87, %328 ]
  %343 = phi i8 [ %86, %336 ], [ 1, %328 ]
  %344 = phi ptr [ %339, %336 ], [ null, %328 ]
  %345 = icmp eq i8 %343, 0
  br i1 %345, label %81, label %346, !prof !409, !llvm.loop !412

346:                                              ; preds = %341, %77
  %347 = phi i8 [ 1, %77 ], [ %331, %341 ]
  %348 = phi i8 [ 0, %77 ], [ %332, %341 ]
  %349 = phi i8 [ 0, %77 ], [ %334, %341 ]
  %350 = load i32, ptr %0, align 8
  %351 = and i32 %350, 255
  %352 = icmp eq i32 %351, 8
  %353 = select i1 %352, i32 2, i32 0, !prof !400
  %354 = icmp eq i32 %351, 6
  br i1 %352, label %355, label %368, !prof !400

355:                                              ; preds = %346
  %356 = zext nneg i32 %351 to i64
  %357 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %356
  %358 = load i32, ptr %357, align 4, !tbaa !164
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %359
  %361 = load i64, ptr %360, align 8, !tbaa !219
  %362 = icmp eq i64 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %355
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %364

364:                                              ; preds = %363, %355
  %365 = getelementptr inbounds i8, ptr %0, i64 %361
  %366 = load ptr, ptr %365, align 8, !tbaa !149
  %367 = icmp ne ptr %366, null
  br label %368

368:                                              ; preds = %364, %346
  %369 = phi i1 [ %354, %346 ], [ %367, %364 ]
  %370 = zext i1 %369 to i32
  %371 = or disjoint i32 %353, %370
  %372 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %373 = load i32, ptr %372, align 4, !tbaa !160
  %374 = icmp ult i32 %371, %373
  br i1 %374, label %375, label %414, !prof !413

375:                                              ; preds = %368
  %376 = zext nneg i32 %371 to i64
  br label %377

377:                                              ; preds = %408, %375
  %378 = phi i64 [ %376, %375 ], [ %410, %408 ]
  %379 = phi i8 [ %349, %375 ], [ %409, %408 ]
  %380 = load i32, ptr %0, align 8
  %381 = and i32 %380, 255
  %382 = add nsw i32 %381, -10
  %383 = icmp ult i32 %382, -9
  br i1 %383, label %397, label %384, !prof !414

384:                                              ; preds = %377
  %385 = zext nneg i32 %381 to i64
  %386 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %385
  %387 = load i32, ptr %386, align 4, !tbaa !164
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %388
  %390 = load i64, ptr %389, align 8, !tbaa !219
  %391 = icmp eq i64 %390, 0
  br i1 %391, label %392, label %393, !prof !414

392:                                              ; preds = %384
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %393

393:                                              ; preds = %392, %384
  %394 = getelementptr inbounds i8, ptr %0, i64 %390
  %395 = getelementptr inbounds ptr, ptr %394, i64 %378
  %396 = load ptr, ptr %395, align 8, !tbaa !149
  br label %397

397:                                              ; preds = %393, %377
  %398 = phi ptr [ %396, %393 ], [ null, %377 ]
  %399 = icmp eq ptr %398, null
  br i1 %399, label %408, label %400, !prof !415

400:                                              ; preds = %397
  %401 = load i64, ptr %398, align 8
  %402 = and i64 %401, 65535
  %403 = icmp eq i64 %402, 141
  br i1 %403, label %408, label %404, !prof !416

404:                                              ; preds = %400
  %405 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %398) #18
  %406 = icmp eq i8 %405, 0
  %407 = select i1 %406, i8 %379, i8 1, !prof !417
  br label %408

408:                                              ; preds = %404, %400, %397
  %409 = phi i8 [ %407, %404 ], [ %379, %400 ], [ %379, %397 ]
  %410 = add nuw nsw i64 %378, 1
  %411 = load i32, ptr %372, align 4, !tbaa !160
  %412 = zext i32 %411 to i64
  %413 = icmp ult i64 %410, %412
  br i1 %413, label %377, label %414, !prof !418, !llvm.loop !419

414:                                              ; preds = %408, %368
  %415 = phi i8 [ %349, %368 ], [ %409, %408 ]
  %416 = icmp eq i8 %415, 0
  %417 = icmp ne i8 %348, 0
  %418 = icmp ne i8 %347, 0
  %419 = select i1 %417, i1 %416, i1 false, !prof !400
  %420 = select i1 %419, i1 %418, i1 false, !prof !400
  br i1 %420, label %472, label %421, !prof !400

421:                                              ; preds = %414
  %422 = and i1 %42, %417
  br i1 %422, label %423, label %458, !prof !400

423:                                              ; preds = %421
  %424 = load i32, ptr %0, align 8
  %425 = trunc i32 %424 to i8
  switch i8 %425, label %428 [
    i8 6, label %426
    i8 1, label %426
    i8 8, label %429
  ]

426:                                              ; preds = %423, %423
  %427 = lshr i32 %424, 16
  br label %429

428:                                              ; preds = %423
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1446, ptr noundef nonnull @.str.3) #18
  br label %429

429:                                              ; preds = %428, %426, %423
  %430 = phi i32 [ %427, %426 ], [ 0, %428 ], [ 59, %423 ]
  %431 = zext nneg i32 %430 to i64
  %432 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %431
  %433 = load i8, ptr %432, align 1, !tbaa !160
  %434 = icmp eq i8 %433, 3
  br i1 %434, label %435, label %455

435:                                              ; preds = %429
  %436 = load i32, ptr %0, align 8
  %437 = and i32 %436, 255
  %438 = add nsw i32 %437, -1
  %439 = icmp ult i32 %438, 9
  call void @llvm.assume(i1 %439)
  %440 = zext nneg i32 %437 to i64
  %441 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %440
  %442 = load i32, ptr %441, align 4, !tbaa !164
  %443 = zext i32 %442 to i64
  %444 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %443
  %445 = load i64, ptr %444, align 8, !tbaa !219
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %435
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %448

448:                                              ; preds = %447, %435
  %449 = getelementptr inbounds i8, ptr %0, i64 %445
  %450 = getelementptr inbounds ptr, ptr %449, i64 1
  %451 = load ptr, ptr %450, align 8, !tbaa !149
  %452 = load i64, ptr %451, align 8
  %453 = trunc i64 %452 to i32
  %454 = and i32 %453, 65535
  br label %455

455:                                              ; preds = %448, %429
  %456 = phi i32 [ %454, %448 ], [ %430, %429 ]
  %457 = trunc i32 %456 to i16
  switch i16 %457, label %458 [
    i16 63, label %472
    i16 64, label %472
    i16 66, label %472
  ]

458:                                              ; preds = %455, %421
  %459 = icmp eq i8 %348, 0
  %460 = select i1 %459, i1 %416, i1 false, !prof !399
  %461 = select i1 %459, i32 2, i32 3, !prof !399
  br i1 %460, label %462, label %472, !prof !420

462:                                              ; preds = %458
  %463 = load i32, ptr %0, align 8
  %464 = and i32 %463, 254
  %465 = add nsw i32 %464, -10
  %466 = icmp ult i32 %465, -4
  br i1 %466, label %472, label %467, !prof !421

467:                                              ; preds = %462
  %468 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %469 = load ptr, ptr %468, align 8, !tbaa !160
  %470 = icmp eq ptr %469, null
  %471 = select i1 %470, i32 3, i32 2, !prof !422
  br label %472

472:                                              ; preds = %467, %462, %458, %455, %455, %455, %414, %44
  %473 = phi i32 [ 3, %44 ], [ 1, %414 ], [ 1, %455 ], [ %461, %458 ], [ 3, %462 ], [ %471, %467 ], [ 1, %455 ], [ 1, %455 ]
  call void @fold_defer_overflow_warnings() #18
  switch i32 %473, label %544 [
    i32 2, label %474
    i32 3, label %476
  ], !prof !423

474:                                              ; preds = %472
  %475 = call fastcc ptr @ccp_fold(ptr noundef nonnull %0)
  br label %544

476:                                              ; preds = %472
  %477 = load i32, ptr %0, align 8
  %478 = and i32 %477, 255
  %479 = trunc i32 %477 to i8
  switch i8 %479, label %543 [
    i8 6, label %480
    i8 5, label %528
    i8 8, label %544
    i8 1, label %544
  ], !prof !424

480:                                              ; preds = %476
  %481 = lshr i32 %477, 16
  %482 = zext nneg i32 %481 to i64
  %483 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %482
  %484 = load i8, ptr %483, align 1, !tbaa !160
  %485 = icmp eq i8 %484, 3
  br i1 %485, label %486, label %504, !prof !425

486:                                              ; preds = %480
  %487 = add nsw i32 %478, -1
  %488 = icmp ult i32 %487, 9
  call void @llvm.assume(i1 %488)
  %489 = zext nneg i32 %478 to i64
  %490 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %489
  %491 = load i32, ptr %490, align 4, !tbaa !164
  %492 = zext i32 %491 to i64
  %493 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %492
  %494 = load i64, ptr %493, align 8, !tbaa !219
  %495 = icmp eq i64 %494, 0
  br i1 %495, label %496, label %497, !prof !426

496:                                              ; preds = %486
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %497

497:                                              ; preds = %496, %486
  %498 = getelementptr inbounds i8, ptr %0, i64 %494
  %499 = getelementptr inbounds ptr, ptr %498, i64 1
  %500 = load ptr, ptr %499, align 8, !tbaa !149
  %501 = load i64, ptr %500, align 8
  %502 = trunc i64 %501 to i32
  %503 = and i32 %502, 65535
  br label %504

504:                                              ; preds = %497, %480
  %505 = phi i32 [ %503, %497 ], [ %481, %480 ]
  %506 = zext nneg i32 %505 to i64
  %507 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %506
  %508 = load i8, ptr %507, align 1, !tbaa !160
  %509 = icmp eq i8 %508, 3
  br i1 %509, label %510, label %544, !prof !425

510:                                              ; preds = %504
  %511 = load i32, ptr %0, align 8
  %512 = and i32 %511, 255
  %513 = add nsw i32 %512, -10
  %514 = icmp ult i32 %513, -9
  br i1 %514, label %544, label %515, !prof !426

515:                                              ; preds = %510
  %516 = zext nneg i32 %512 to i64
  %517 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %516
  %518 = load i32, ptr %517, align 4, !tbaa !164
  %519 = zext i32 %518 to i64
  %520 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %519
  %521 = load i64, ptr %520, align 8, !tbaa !219
  %522 = icmp eq i64 %521, 0
  br i1 %522, label %523, label %524, !prof !426

523:                                              ; preds = %515
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %524

524:                                              ; preds = %523, %515
  %525 = getelementptr inbounds i8, ptr %0, i64 %521
  %526 = getelementptr inbounds ptr, ptr %525, i64 1
  %527 = load ptr, ptr %526, align 8, !tbaa !149
  br label %544

528:                                              ; preds = %476
  %529 = add nsw i32 %478, -10
  %530 = icmp ult i32 %529, -9
  br i1 %530, label %544, label %531, !prof !427

531:                                              ; preds = %528
  %532 = zext nneg i32 %478 to i64
  %533 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %532
  %534 = load i32, ptr %533, align 4, !tbaa !164
  %535 = zext i32 %534 to i64
  %536 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %535
  %537 = load i64, ptr %536, align 8, !tbaa !219
  %538 = icmp eq i64 %537, 0
  br i1 %538, label %539, label %540, !prof !427

539:                                              ; preds = %531
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %540

540:                                              ; preds = %539, %531
  %541 = getelementptr inbounds i8, ptr %0, i64 %537
  %542 = load ptr, ptr %541, align 8, !tbaa !149
  br label %544

543:                                              ; preds = %476
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1434, ptr noundef nonnull @.str.3) #18
  br label %544

544:                                              ; preds = %543, %540, %528, %524, %510, %504, %476, %476, %474, %472
  %545 = phi ptr [ %475, %474 ], [ null, %472 ], [ null, %543 ], [ null, %504 ], [ null, %476 ], [ %527, %524 ], [ null, %510 ], [ %542, %540 ], [ null, %528 ], [ null, %476 ]
  %546 = icmp eq ptr %545, null
  br i1 %546, label %551, label %547, !prof !428

547:                                              ; preds = %544
  %548 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %545) #18
  %549 = icmp ne i8 %548, 0
  %550 = zext i1 %549 to i8
  br label %551

551:                                              ; preds = %547, %544
  %552 = phi i8 [ 0, %544 ], [ %550, %547 ]
  call void @fold_undefer_overflow_warnings(i8 noundef zeroext %552, ptr noundef nonnull %0, i32 noundef 0) #18
  %553 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %554 = icmp eq ptr %553, null
  br i1 %554, label %572, label %555, !prof !399

555:                                              ; preds = %551
  %556 = load i32, ptr @dump_flags, align 4, !tbaa !164
  %557 = and i32 %556, 8
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %572, label %559

559:                                              ; preds = %555
  %560 = call i64 @fwrite(ptr nonnull @.str.14, i64 16, i64 1, ptr nonnull %553)
  %561 = load ptr, ptr @dump_file, align 8, !tbaa !149
  switch i32 %473, label %568 [
    i32 2, label %562
    i32 1, label %564
    i32 3, label %566
  ]

562:                                              ; preds = %559
  %563 = call i64 @fwrite(ptr nonnull @.str.15, i64 8, i64 1, ptr %561)
  br label %569

564:                                              ; preds = %559
  %565 = call i64 @fwrite(ptr nonnull @.str.16, i64 9, i64 1, ptr %561)
  br label %569

566:                                              ; preds = %559
  %567 = call i64 @fwrite(ptr nonnull @.str.17, i64 7, i64 1, ptr %561)
  br label %569

568:                                              ; preds = %559
  unreachable

569:                                              ; preds = %566, %564, %562
  %570 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %571 = call i32 @fputc(i32 10, ptr %570)
  br label %572

572:                                              ; preds = %551, %555, %569
  %573 = icmp eq i8 %552, 0
  %574 = icmp eq ptr %545, null
  %575 = or i1 %574, %573
  br i1 %575, label %578, label %576, !prof !429

576:                                              ; preds = %572
  %577 = call ptr @find_taken_edge(ptr noundef %41, ptr noundef nonnull %545) #18
  br label %578

578:                                              ; preds = %572, %576
  %579 = phi ptr [ %577, %576 ], [ null, %572 ]
  store ptr %579, ptr %1, align 8, !tbaa !149
  %580 = icmp eq ptr %579, null
  %581 = select i1 %580, i32 2, i32 1, !prof !429
  br label %627

582:                                              ; preds = %21, %15, %33
  %583 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %584 = icmp eq ptr %583, null
  br i1 %584, label %591, label %585, !prof !430

585:                                              ; preds = %582
  %586 = load i32, ptr @dump_flags, align 4, !tbaa !164
  %587 = and i32 %586, 8
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %591, label %589

589:                                              ; preds = %585
  %590 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 49, i64 1, ptr nonnull %583)
  br label %591

591:                                              ; preds = %589, %585, %582
  %592 = load i32, ptr %0, align 8
  %593 = and i32 %592, 255
  %594 = add nsw i32 %593, -10
  %595 = icmp ult i32 %594, -9
  br i1 %595, label %599, label %596, !prof !431

596:                                              ; preds = %591
  %597 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %598 = load ptr, ptr %597, align 8, !tbaa !160
  br label %599

599:                                              ; preds = %591, %596
  %600 = phi ptr [ %598, %596 ], [ null, %591 ]
  %601 = icmp eq ptr %600, null
  br i1 %601, label %607, label %602, !prof !430

602:                                              ; preds = %599
  %603 = getelementptr inbounds %struct.def_optype_d, ptr %600, i64 0, i32 1
  %604 = load ptr, ptr %603, align 8, !tbaa !275
  %605 = load ptr, ptr %604, align 8, !tbaa !149
  %606 = load ptr, ptr %600, align 8, !tbaa !277
  br label %607

607:                                              ; preds = %599, %602
  %608 = phi ptr [ %606, %602 ], [ %600, %599 ]
  %609 = phi i8 [ 0, %602 ], [ 1, %599 ]
  %610 = phi ptr [ %605, %602 ], [ null, %599 ]
  br i1 %601, label %627, label %611, !prof !300

611:                                              ; preds = %607, %622
  %612 = phi ptr [ %625, %622 ], [ %610, %607 ]
  %613 = phi i8 [ %624, %622 ], [ %609, %607 ]
  %614 = phi ptr [ %623, %622 ], [ %608, %607 ]
  %615 = tail call fastcc zeroext i8 @set_lattice_value(ptr noundef %612, i32 3, ptr null), !range !317
  %616 = icmp eq ptr %614, null
  br i1 %616, label %622, label %617

617:                                              ; preds = %611
  %618 = getelementptr inbounds %struct.def_optype_d, ptr %614, i64 0, i32 1
  %619 = load ptr, ptr %618, align 8, !tbaa !275
  %620 = load ptr, ptr %619, align 8, !tbaa !149
  %621 = load ptr, ptr %614, align 8, !tbaa !277
  br label %622

622:                                              ; preds = %611, %617
  %623 = phi ptr [ %621, %617 ], [ %614, %611 ]
  %624 = phi i8 [ %613, %617 ], [ 1, %611 ]
  %625 = phi ptr [ %620, %617 ], [ null, %611 ]
  %626 = icmp eq i8 %624, 0
  br i1 %626, label %611, label %627, !prof !299, !llvm.loop !432

627:                                              ; preds = %622, %607, %578, %37, %19
  %628 = phi i32 [ %581, %578 ], [ %38, %37 ], [ %20, %19 ], [ 2, %607 ], [ 2, %622 ]
  ret i32 %628
}

; Function Attrs: nounwind uwtable
define internal i32 @ccp_visit_phi_node(ptr noundef %0) #12 !prof !433 !PGOFuncName !434 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4, !prof !435

4:                                                ; preds = %1
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !164
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 20, i64 1, ptr nonnull %2)
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %11 = load i32, ptr @dump_flags, align 4, !tbaa !164
  tail call void @print_gimple_stmt(ptr noundef %10, ptr noundef %0, i32 noundef 0, i32 noundef %11) #18
  br label %12

12:                                               ; preds = %8, %4, %1
  %13 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !160
  %15 = tail call fastcc ptr @get_value(ptr noundef %14)
  %16 = load i32, ptr %15, align 8
  switch i32 %16, label %20 [
    i32 3, label %144
    i32 2, label %17
    i32 1, label %21
  ], !prof !436

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, ptr %15, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa.struct !227
  br label %21

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 823, ptr noundef nonnull @.str.3) #18
  br label %21

21:                                               ; preds = %12, %20, %17
  %22 = phi ptr [ undef, %20 ], [ %19, %17 ], [ null, %12 ]
  %23 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !160
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %125, label %26, !prof !437

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %28 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  br label %34

29:                                               ; preds = %120
  %30 = add nuw nsw i64 %35, 1
  %31 = load i32, ptr %23, align 4, !tbaa !160
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %125, !prof !438, !llvm.loop !439

34:                                               ; preds = %26, %29
  %35 = phi i64 [ 0, %26 ], [ %30, %29 ]
  %36 = phi i32 [ %16, %26 ], [ %122, %29 ]
  %37 = phi ptr [ %22, %26 ], [ %121, %29 ]
  %38 = load ptr, ptr %27, align 8, !tbaa !160
  %39 = load ptr, ptr %38, align 8, !tbaa !440, !nonnull !408, !noundef !408
  %40 = getelementptr inbounds %struct.VEC_edge_base, ptr %39, i64 0, i32 2, i64 %35
  %41 = load ptr, ptr %40, align 8, !tbaa !149
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %43 = icmp eq ptr %42, null
  br i1 %43, label %63, label %44, !prof !441

44:                                               ; preds = %34
  %45 = load i32, ptr @dump_flags, align 4, !tbaa !164
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %41, align 8, !tbaa !442
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !443
  %52 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !382
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 9
  %55 = load i32, ptr %54, align 8, !tbaa !443
  %56 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !444
  %58 = and i32 %57, 4096
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, ptr @.str.22, ptr @.str
  %61 = trunc i64 %35 to i32
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %42, ptr noundef nonnull @.str.21, i32 noundef %61, i32 noundef %51, i32 noundef %55, ptr noundef nonnull %60)
  br label %63

63:                                               ; preds = %48, %44, %34
  %64 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 7
  %65 = load i32, ptr %64, align 8, !tbaa !444
  %66 = and i32 %65, 4096
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %120, label %68, !prof !445

68:                                               ; preds = %63
  %69 = load i32, ptr %28, align 8, !tbaa !160
  %70 = zext i32 %69 to i64
  %71 = icmp ugt i64 %35, %70
  br i1 %71, label %72, label %73, !prof !446

72:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3103, ptr noundef nonnull @.str.3) #18
  br label %73

73:                                               ; preds = %68, %72
  %74 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %35, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !447
  %76 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %75) #18
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %83, !prof !449

78:                                               ; preds = %73
  %79 = tail call fastcc ptr @get_value(ptr noundef %75)
  %80 = load i32, ptr %79, align 8, !tbaa.struct !226
  %81 = getelementptr inbounds i8, ptr %79, i64 8
  %82 = load ptr, ptr %81, align 8, !tbaa.struct !227
  br label %83

83:                                               ; preds = %73, %78
  %84 = phi ptr [ %82, %78 ], [ %75, %73 ]
  %85 = phi i32 [ %80, %78 ], [ 2, %73 ]
  %86 = icmp eq i32 %36, 1
  br i1 %86, label %101, label %87, !prof !450

87:                                               ; preds = %83
  %88 = icmp eq i32 %85, 1
  br i1 %88, label %101, label %89, !prof !451

89:                                               ; preds = %87
  %90 = icmp eq i32 %36, 3
  %91 = icmp eq i32 %85, 3
  %92 = or i1 %90, %91
  br i1 %92, label %101, label %93, !prof !452

93:                                               ; preds = %89
  %94 = icmp eq i32 %36, 2
  %95 = icmp eq i32 %85, 2
  %96 = and i1 %94, %95
  br i1 %96, label %97, label %100, !prof !453

97:                                               ; preds = %93
  %98 = tail call i32 @simple_cst_equal(ptr noundef %37, ptr noundef %84) #18
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %101, label %100, !prof !454

100:                                              ; preds = %97, %93
  br label %101

101:                                              ; preds = %97, %89, %83, %87, %100
  %102 = phi ptr [ %37, %87 ], [ null, %100 ], [ %84, %83 ], [ null, %89 ], [ %37, %97 ]
  %103 = phi i32 [ %36, %87 ], [ 3, %100 ], [ %85, %83 ], [ 3, %89 ], [ 2, %97 ]
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %105 = icmp eq ptr %104, null
  br i1 %105, label %117, label %106, !prof !455

106:                                              ; preds = %101
  %107 = load i32, ptr @dump_flags, align 4, !tbaa !164
  %108 = and i32 %107, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %106
  %111 = tail call i32 @fputc(i32 9, ptr nonnull %104)
  %112 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %113 = load i32, ptr @dump_flags, align 4, !tbaa !164
  tail call void @print_generic_expr(ptr noundef %112, ptr noundef %75, i32 noundef %113) #18
  %114 = load ptr, ptr @dump_file, align 8, !tbaa !149
  tail call fastcc void @dump_lattice_value(ptr noundef %114, ptr noundef nonnull @.str.24, i32 %85, ptr %84)
  %115 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %116 = tail call i32 @fputc(i32 10, ptr %115)
  br label %117

117:                                              ; preds = %110, %106, %101
  %118 = icmp eq i32 %103, 3
  %119 = select i1 %118, i32 3, i32 0, !prof !450
  br label %120

120:                                              ; preds = %117, %63
  %121 = phi ptr [ %37, %63 ], [ %102, %117 ]
  %122 = phi i32 [ %36, %63 ], [ %103, %117 ]
  %123 = phi i32 [ 0, %63 ], [ %119, %117 ]
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %29, label %125, !prof !456

125:                                              ; preds = %29, %120, %21
  %126 = phi ptr [ %22, %21 ], [ %121, %120 ], [ %121, %29 ]
  %127 = phi i32 [ %16, %21 ], [ %122, %120 ], [ %122, %29 ]
  %128 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %129 = icmp eq ptr %128, null
  br i1 %129, label %137, label %130, !prof !435

130:                                              ; preds = %125
  %131 = load i32, ptr @dump_flags, align 4, !tbaa !164
  %132 = and i32 %131, 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %130
  tail call fastcc void @dump_lattice_value(ptr noundef nonnull %128, ptr noundef nonnull @.str.25, i32 %127, ptr %126)
  %135 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %136 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 2, i64 1, ptr %135)
  br label %137

137:                                              ; preds = %134, %130, %125
  %138 = load ptr, ptr %13, align 8, !tbaa !160
  %139 = tail call fastcc zeroext i8 @set_lattice_value(ptr noundef %138, i32 %127, ptr %126), !range !317
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %144, label %141, !prof !457

141:                                              ; preds = %137
  %142 = icmp eq i32 %127, 3
  %143 = select i1 %142, i32 2, i32 1, !prof !458
  br label %144

144:                                              ; preds = %137, %141, %12
  %145 = phi i32 [ 2, %12 ], [ %143, %141 ], [ 0, %137 ]
  ret i32 %145
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @visit_assignment(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 !prof !459 !PGOFuncName !460 {
  %3 = alloca %struct.real_value, align 8
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = tail call ptr @gimple_get_lhs(ptr noundef %0) #18
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %10, label %24, !prof !461

10:                                               ; preds = %2
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !164
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !219
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %19

19:                                               ; preds = %18, %10
  %20 = getelementptr inbounds i8, ptr %0, i64 %16
  %21 = load ptr, ptr %20, align 8, !tbaa !149
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1604, ptr noundef nonnull @.str.3) #18
  br label %24

24:                                               ; preds = %2, %19, %23
  %25 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef nonnull %0) #18
  %26 = icmp eq i8 %25, 0
  %27 = load i32, ptr %0, align 8
  %28 = and i32 %27, 255
  br i1 %26, label %59, label %29, !prof !462

29:                                               ; preds = %24
  %30 = add nsw i32 %28, -10
  %31 = icmp ult i32 %30, -9
  br i1 %31, label %45, label %32, !prof !463

32:                                               ; preds = %29
  %33 = zext nneg i32 %28 to i64
  %34 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !164
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !219
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41, !prof !463

40:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %41

41:                                               ; preds = %40, %32
  %42 = getelementptr inbounds i8, ptr %0, i64 %38
  %43 = getelementptr inbounds ptr, ptr %42, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !149
  br label %45

45:                                               ; preds = %29, %41
  %46 = phi ptr [ %44, %41 ], [ null, %29 ]
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 141
  br i1 %49, label %50, label %55, !prof !464

50:                                               ; preds = %45
  %51 = tail call fastcc ptr @get_value(ptr noundef nonnull %46)
  %52 = load i32, ptr %51, align 8, !tbaa.struct !226
  %53 = getelementptr inbounds i8, ptr %51, i64 8
  %54 = load ptr, ptr %53, align 8, !tbaa.struct !227
  br label %597

55:                                               ; preds = %45
  %56 = tail call fastcc { i32, ptr } @evaluate_stmt(ptr noundef nonnull %0)
  %57 = extractvalue { i32, ptr } %56, 0
  %58 = extractvalue { i32, ptr } %56, 1
  br label %597

59:                                               ; preds = %24
  %60 = icmp eq i32 %28, 6
  %61 = trunc i32 %27 to i8
  switch i8 %61, label %62 [
    i8 8, label %63
    i8 6, label %63
    i8 5, label %63
    i8 1, label %63
  ], !prof !398

62:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 524, ptr noundef nonnull @.str.3) #18
  br label %63

63:                                               ; preds = %62, %59, %59, %59, %59
  %64 = load i32, ptr %0, align 8
  %65 = and i32 %64, 254
  %66 = add nsw i32 %65, -10
  %67 = icmp ult i32 %66, -4
  %68 = and i32 %64, 16384
  %69 = icmp eq i32 %68, 0
  %70 = or i1 %69, %67
  br i1 %70, label %71, label %491, !prof !399

71:                                               ; preds = %63
  %72 = and i32 %64, 255
  %73 = add nsw i32 %72, -10
  %74 = icmp ult i32 %73, -9
  br i1 %74, label %78, label %75, !prof !400

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !160
  br label %78

78:                                               ; preds = %75, %71
  %79 = phi ptr [ %77, %75 ], [ null, %71 ]
  %80 = icmp eq ptr %79, null
  %81 = or i1 %67, %80
  br i1 %81, label %88, label %82, !prof !401

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !160
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86, !prof !402

86:                                               ; preds = %82
  %87 = load ptr, ptr %79, align 8, !tbaa !403
  br label %88

88:                                               ; preds = %86, %82, %78
  %89 = phi ptr [ %79, %78 ], [ %79, %82 ], [ %87, %86 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %96, label %91, !prof !405

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.use_optype_d, ptr %89, i64 0, i32 1, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !406
  %94 = load ptr, ptr %93, align 8, !tbaa !149
  %95 = load ptr, ptr %89, align 8, !tbaa !403
  br label %96

96:                                               ; preds = %91, %88
  %97 = phi ptr [ %95, %91 ], [ %89, %88 ]
  %98 = phi i8 [ 0, %91 ], [ 1, %88 ]
  %99 = phi ptr [ %94, %91 ], [ null, %88 ]
  br i1 %90, label %365, label %100, !prof !407

100:                                              ; preds = %96, %360
  %101 = phi i8 [ %353, %360 ], [ 0, %96 ]
  %102 = phi i8 [ %351, %360 ], [ 0, %96 ]
  %103 = phi ptr [ %363, %360 ], [ %99, %96 ]
  %104 = phi i8 [ %350, %360 ], [ 1, %96 ]
  %105 = phi i8 [ %362, %360 ], [ %98, %96 ]
  %106 = phi ptr [ %361, %360 ], [ %97, %96 ]
  %107 = load ptr, ptr @const_val, align 8, !tbaa !149, !nonnull !408, !noundef !408
  %108 = getelementptr inbounds %struct.tree_ssa_name, ptr %103, i64 0, i32 3
  %109 = load i32, ptr %108, align 8, !tbaa !160
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.prop_value_d, ptr %107, i64 %110
  %112 = load i32, ptr %111, align 8, !tbaa !197
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %268, !prof !215

114:                                              ; preds = %100
  %115 = getelementptr inbounds %struct.tree_ssa_name, ptr %103, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !160
  %117 = getelementptr inbounds %struct.tree_ssa_name, ptr %103, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !160
  %119 = load i32, ptr %118, align 8
  %120 = trunc i32 %119 to i8
  switch i8 %120, label %143 [
    i8 18, label %121
    i8 6, label %147
    i8 8, label %129
  ], !prof !216

121:                                              ; preds = %114
  %122 = call zeroext i8 @is_gimple_reg(ptr noundef %116) #18
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %128, label %124, !prof !217

124:                                              ; preds = %121
  %125 = load i64, ptr %116, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 34
  br i1 %127, label %128, label %264, !prof !218

128:                                              ; preds = %124, %121
  br label %264

129:                                              ; preds = %114
  %130 = and i32 %119, 255
  %131 = zext nneg i32 %130 to i64
  %132 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !164
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %134
  %136 = load i64, ptr %135, align 8, !tbaa !219
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %139

139:                                              ; preds = %138, %129
  %140 = getelementptr inbounds i8, ptr %118, i64 %136
  %141 = load ptr, ptr %140, align 8, !tbaa !149
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %139, %114
  %144 = load i32, ptr %118, align 8
  %145 = and i32 %144, 255
  %146 = icmp eq i32 %145, 16
  br i1 %146, label %147, label %264, !prof !220

147:                                              ; preds = %143, %139, %114
  %148 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %118) #18
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %263, label %150, !prof !221

150:                                              ; preds = %147
  %151 = load i32, ptr %118, align 8
  %152 = and i32 %151, 255
  %153 = add nsw i32 %152, -1
  %154 = icmp ult i32 %153, 9
  call void @llvm.assume(i1 %154)
  %155 = zext nneg i32 %152 to i64
  %156 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !164
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %158
  %160 = load i64, ptr %159, align 8, !tbaa !219
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163, !prof !222

162:                                              ; preds = %150
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %163

163:                                              ; preds = %162, %150
  %164 = getelementptr inbounds i8, ptr %118, i64 %160
  %165 = getelementptr inbounds ptr, ptr %164, i64 1
  %166 = load ptr, ptr %165, align 8, !tbaa !149
  %167 = load i64, ptr %166, align 8
  %168 = and i64 %167, 65535
  %169 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !164
  %171 = icmp eq i32 %170, 3
  br i1 %171, label %172, label %263, !prof !223

172:                                              ; preds = %163
  %173 = load i32, ptr %118, align 8
  %174 = and i32 %173, 255
  %175 = add nsw i32 %174, -10
  %176 = icmp ult i32 %175, -9
  br i1 %176, label %190, label %177, !prof !224

177:                                              ; preds = %172
  %178 = zext nneg i32 %174 to i64
  %179 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !164
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %181
  %183 = load i64, ptr %182, align 8, !tbaa !219
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %186, !prof !224

185:                                              ; preds = %177
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %186

186:                                              ; preds = %185, %177
  %187 = getelementptr inbounds i8, ptr %118, i64 %183
  %188 = getelementptr inbounds ptr, ptr %187, i64 1
  %189 = load ptr, ptr %188, align 8, !tbaa !149
  br label %190

190:                                              ; preds = %186, %172
  %191 = phi ptr [ %189, %186 ], [ null, %172 ]
  %192 = load i64, ptr %191, align 8
  %193 = and i64 %192, 67108864
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %259, label %195, !prof !169

195:                                              ; preds = %190
  %196 = and i64 %192, 1048576
  %197 = icmp ne i64 %196, 0
  %198 = and i64 %192, 65535
  %199 = icmp eq i64 %198, 33
  %200 = or i1 %197, %199
  br i1 %200, label %201, label %259

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.tree_decl_common, ptr %191, i64 0, i32 5
  %203 = load ptr, ptr %202, align 8, !tbaa !160
  %204 = icmp eq ptr %203, null
  br i1 %204, label %233, label %205

205:                                              ; preds = %201
  %206 = call ptr @tree_strip_nop_conversions(ptr noundef nonnull %203) #18
  %207 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %206) #18
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %233, label %209

209:                                              ; preds = %205
  %210 = load i64, ptr %206, align 8
  %211 = and i64 %210, 65535
  %212 = icmp eq i64 %211, 121
  br i1 %212, label %213, label %256

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.tree_exp, ptr %206, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !160
  %216 = call ptr @get_base_address(ptr noundef %215) #18
  %217 = icmp eq ptr %216, null
  br i1 %217, label %256, label %218

218:                                              ; preds = %213
  %219 = load i64, ptr %216, align 8
  %220 = and i64 %219, 65535
  %221 = icmp eq i64 %220, 32
  br i1 %221, label %222, label %256

222:                                              ; preds = %218
  %223 = or i64 %219, 262144
  store i64 %223, ptr %216, align 8
  %224 = load ptr, ptr @cfun, align 8, !tbaa !149
  %225 = getelementptr inbounds %struct.function, ptr %224, i64 0, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !170
  %227 = icmp eq ptr %226, null
  br i1 %227, label %256, label %228

228:                                              ; preds = %222
  %229 = load ptr, ptr %226, align 8, !tbaa !172
  %230 = icmp eq ptr %229, null
  br i1 %230, label %256, label %231

231:                                              ; preds = %228
  %232 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %216) #18
  br label %256

233:                                              ; preds = %205, %201
  %234 = phi ptr [ %206, %205 ], [ null, %201 ]
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %256

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.tree_decl_common, ptr %191, i64 0, i32 2
  %238 = load i64, ptr %237, align 8
  %239 = and i64 %238, 33554432
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %256

241:                                              ; preds = %236
  %242 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !176
  %243 = call zeroext i8 %242(ptr noundef nonnull %191) #18
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %256, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.tree_common, ptr %191, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !160
  %248 = load i64, ptr %247, align 8
  %249 = trunc i64 %248 to i32
  %250 = and i32 %249, 65534
  %251 = add nsw i32 %250, -6
  %252 = icmp ult i32 %251, 4
  br i1 %252, label %253, label %256

253:                                              ; preds = %245
  %254 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %255 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %247, ptr noundef %254) #18
  br label %256

256:                                              ; preds = %253, %245, %241, %236, %233, %231, %228, %222, %218, %213, %209
  %257 = phi ptr [ %255, %253 ], [ %206, %213 ], [ %206, %218 ], [ %206, %231 ], [ %206, %228 ], [ %206, %209 ], [ undef, %245 ], [ undef, %241 ], [ undef, %236 ], [ undef, %233 ], [ %206, %222 ]
  %258 = phi i1 [ false, %253 ], [ false, %213 ], [ false, %218 ], [ false, %231 ], [ false, %228 ], [ false, %209 ], [ true, %245 ], [ true, %241 ], [ true, %236 ], [ true, %233 ], [ false, %222 ]
  br i1 %258, label %259, label %260

259:                                              ; preds = %256, %195, %190
  br label %260

260:                                              ; preds = %259, %256
  %261 = phi ptr [ %257, %256 ], [ null, %259 ]
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %264, !prof !225

263:                                              ; preds = %260, %163, %147
  br label %264

264:                                              ; preds = %263, %260, %143, %128, %124
  %265 = phi ptr [ null, %128 ], [ null, %124 ], [ null, %263 ], [ %261, %260 ], [ null, %143 ]
  %266 = phi i32 [ 3, %128 ], [ 1, %124 ], [ 1, %263 ], [ 2, %260 ], [ 3, %143 ]
  store i32 %266, ptr %111, align 8, !tbaa.struct !226
  %267 = getelementptr inbounds i8, ptr %111, i64 8
  store ptr %265, ptr %267, align 8, !tbaa.struct !227
  br label %268

268:                                              ; preds = %264, %100
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %269 = load i32, ptr %111, align 8, !tbaa !197
  %270 = icmp eq i32 %269, 2
  br i1 %270, label %271, label %347, !prof !228

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.prop_value_d, ptr %107, i64 %110, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !199
  %274 = load i64, ptr %273, align 8
  %275 = and i64 %274, 65535
  %276 = icmp eq i64 %275, 24
  br i1 %276, label %277, label %347, !prof !229

277:                                              ; preds = %271
  %278 = getelementptr inbounds %struct.tree_real_cst, ptr %273, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %279, i64 32, i1 false), !tbaa.struct !230
  %280 = getelementptr inbounds %struct.tree_common, ptr %273, i64 0, i32 2
  %281 = load ptr, ptr %280, align 8, !tbaa !160
  %282 = load i64, ptr %281, align 8
  %283 = and i64 %282, 65535
  %284 = icmp eq i64 %283, 14
  br i1 %284, label %285, label %287

285:                                              ; preds = %277
  %286 = call i32 @vector_type_mode(ptr noundef nonnull %281) #18
  br label %292

287:                                              ; preds = %277
  %288 = getelementptr inbounds %struct.tree_type, ptr %281, i64 0, i32 6
  %289 = load i32, ptr %288, align 4
  %290 = lshr i32 %289, 16
  %291 = and i32 %290, 255
  br label %292

292:                                              ; preds = %287, %285
  %293 = phi i32 [ %286, %285 ], [ %291, %287 ]
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %294
  %296 = load i8, ptr %295, align 1, !tbaa !160
  switch i8 %296, label %316 [
    i8 8, label %297
    i8 9, label %297
    i8 11, label %297
    i8 17, label %297
  ]

297:                                              ; preds = %292, %292, %292, %292
  %298 = and i8 %296, -2
  %299 = icmp eq i8 %298, 8
  br i1 %299, label %304, label %300

300:                                              ; preds = %297
  %301 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %294
  %302 = load i8, ptr %301, align 1, !tbaa !160
  %303 = zext i8 %302 to i32
  br label %304

304:                                              ; preds = %297, %300
  %305 = phi i32 [ %303, %300 ], [ %293, %297 ]
  %306 = add i32 %305, -38
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !149
  %310 = getelementptr inbounds %struct.real_format, ptr %309, i64 0, i32 14
  %311 = load i8, ptr %310, align 1, !tbaa !231
  %312 = icmp ne i8 %311, 0
  %313 = load i32, ptr @flag_signed_zeros, align 4
  %314 = icmp ne i32 %313, 0
  %315 = select i1 %312, i1 %314, i1 false
  br i1 %315, label %321, label %316

316:                                              ; preds = %304, %292
  %317 = call zeroext i8 @real_isnegzero(ptr noundef nonnull %5) #18
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %321, label %319

319:                                              ; preds = %316
  %320 = call ptr @build_real(ptr noundef nonnull %281, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #18
  br label %345

321:                                              ; preds = %316, %304
  switch i8 %296, label %341 [
    i8 8, label %322
    i8 9, label %322
    i8 11, label %322
    i8 17, label %322
  ]

322:                                              ; preds = %321, %321, %321, %321
  %323 = and i8 %296, -2
  %324 = icmp eq i8 %323, 8
  br i1 %324, label %329, label %325

325:                                              ; preds = %322
  %326 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %294
  %327 = load i8, ptr %326, align 1, !tbaa !160
  %328 = zext i8 %327 to i32
  br label %329

329:                                              ; preds = %322, %325
  %330 = phi i32 [ %328, %325 ], [ %293, %322 ]
  %331 = add i32 %330, -38
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %332
  %334 = load ptr, ptr %333, align 8, !tbaa !149
  %335 = getelementptr inbounds %struct.real_format, ptr %334, i64 0, i32 11
  %336 = load i8, ptr %335, align 2, !tbaa !233
  %337 = icmp eq i8 %336, 0
  %338 = load i32, ptr @flag_finite_math_only, align 4
  %339 = icmp ne i32 %338, 0
  %340 = select i1 %337, i1 true, i1 %339
  br i1 %340, label %341, label %347

341:                                              ; preds = %329, %321
  %342 = call zeroext i8 @real_isnan(ptr noundef nonnull %5) #18
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %347, label %344

344:                                              ; preds = %341
  store i32 1, ptr %111, align 8, !tbaa !197
  br label %345

345:                                              ; preds = %319, %344
  %346 = phi ptr [ null, %344 ], [ %320, %319 ]
  store ptr %346, ptr %272, align 8, !tbaa !199
  br label %347

347:                                              ; preds = %345, %341, %329, %271, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  %348 = load i32, ptr %111, align 8, !tbaa !197
  %349 = icmp eq i32 %348, 1
  %350 = select i1 %349, i8 %104, i8 0, !prof !409
  %351 = select i1 %349, i8 1, i8 %102, !prof !409
  %352 = icmp eq i32 %348, 2
  %353 = select i1 %352, i8 1, i8 %101, !prof !410
  %354 = icmp eq ptr %106, null
  br i1 %354, label %360, label %355, !prof !411

355:                                              ; preds = %347
  %356 = getelementptr inbounds %struct.use_optype_d, ptr %106, i64 0, i32 1, i32 3
  %357 = load ptr, ptr %356, align 8, !tbaa !406
  %358 = load ptr, ptr %357, align 8, !tbaa !149
  %359 = load ptr, ptr %106, align 8, !tbaa !403
  br label %360

360:                                              ; preds = %355, %347
  %361 = phi ptr [ %359, %355 ], [ %106, %347 ]
  %362 = phi i8 [ %105, %355 ], [ 1, %347 ]
  %363 = phi ptr [ %358, %355 ], [ null, %347 ]
  %364 = icmp eq i8 %362, 0
  br i1 %364, label %100, label %365, !prof !409, !llvm.loop !412

365:                                              ; preds = %360, %96
  %366 = phi i8 [ 1, %96 ], [ %350, %360 ]
  %367 = phi i8 [ 0, %96 ], [ %351, %360 ]
  %368 = phi i8 [ 0, %96 ], [ %353, %360 ]
  %369 = load i32, ptr %0, align 8
  %370 = and i32 %369, 255
  %371 = icmp eq i32 %370, 8
  %372 = select i1 %371, i32 2, i32 0, !prof !400
  %373 = icmp eq i32 %370, 6
  br i1 %371, label %374, label %387, !prof !400

374:                                              ; preds = %365
  %375 = zext nneg i32 %370 to i64
  %376 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %375
  %377 = load i32, ptr %376, align 4, !tbaa !164
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %378
  %380 = load i64, ptr %379, align 8, !tbaa !219
  %381 = icmp eq i64 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %374
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %383

383:                                              ; preds = %382, %374
  %384 = getelementptr inbounds i8, ptr %0, i64 %380
  %385 = load ptr, ptr %384, align 8, !tbaa !149
  %386 = icmp ne ptr %385, null
  br label %387

387:                                              ; preds = %383, %365
  %388 = phi i1 [ %373, %365 ], [ %386, %383 ]
  %389 = zext i1 %388 to i32
  %390 = or disjoint i32 %372, %389
  %391 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %392 = load i32, ptr %391, align 4, !tbaa !160
  %393 = icmp ult i32 %390, %392
  br i1 %393, label %394, label %433, !prof !413

394:                                              ; preds = %387
  %395 = zext nneg i32 %390 to i64
  br label %396

396:                                              ; preds = %427, %394
  %397 = phi i64 [ %395, %394 ], [ %429, %427 ]
  %398 = phi i8 [ %368, %394 ], [ %428, %427 ]
  %399 = load i32, ptr %0, align 8
  %400 = and i32 %399, 255
  %401 = add nsw i32 %400, -10
  %402 = icmp ult i32 %401, -9
  br i1 %402, label %416, label %403, !prof !414

403:                                              ; preds = %396
  %404 = zext nneg i32 %400 to i64
  %405 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %404
  %406 = load i32, ptr %405, align 4, !tbaa !164
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %407
  %409 = load i64, ptr %408, align 8, !tbaa !219
  %410 = icmp eq i64 %409, 0
  br i1 %410, label %411, label %412, !prof !414

411:                                              ; preds = %403
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %412

412:                                              ; preds = %411, %403
  %413 = getelementptr inbounds i8, ptr %0, i64 %409
  %414 = getelementptr inbounds ptr, ptr %413, i64 %397
  %415 = load ptr, ptr %414, align 8, !tbaa !149
  br label %416

416:                                              ; preds = %412, %396
  %417 = phi ptr [ %415, %412 ], [ null, %396 ]
  %418 = icmp eq ptr %417, null
  br i1 %418, label %427, label %419, !prof !415

419:                                              ; preds = %416
  %420 = load i64, ptr %417, align 8
  %421 = and i64 %420, 65535
  %422 = icmp eq i64 %421, 141
  br i1 %422, label %427, label %423, !prof !416

423:                                              ; preds = %419
  %424 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %417) #18
  %425 = icmp eq i8 %424, 0
  %426 = select i1 %425, i8 %398, i8 1, !prof !417
  br label %427

427:                                              ; preds = %423, %419, %416
  %428 = phi i8 [ %426, %423 ], [ %398, %419 ], [ %398, %416 ]
  %429 = add nuw nsw i64 %397, 1
  %430 = load i32, ptr %391, align 4, !tbaa !160
  %431 = zext i32 %430 to i64
  %432 = icmp ult i64 %429, %431
  br i1 %432, label %396, label %433, !prof !418, !llvm.loop !419

433:                                              ; preds = %427, %387
  %434 = phi i8 [ %368, %387 ], [ %428, %427 ]
  %435 = icmp eq i8 %434, 0
  %436 = icmp ne i8 %367, 0
  %437 = icmp ne i8 %366, 0
  %438 = select i1 %436, i1 %435, i1 false, !prof !400
  %439 = select i1 %438, i1 %437, i1 false, !prof !400
  br i1 %439, label %491, label %440, !prof !400

440:                                              ; preds = %433
  %441 = and i1 %60, %436
  br i1 %441, label %442, label %477, !prof !400

442:                                              ; preds = %440
  %443 = load i32, ptr %0, align 8
  %444 = trunc i32 %443 to i8
  switch i8 %444, label %447 [
    i8 6, label %445
    i8 1, label %445
    i8 8, label %448
  ]

445:                                              ; preds = %442, %442
  %446 = lshr i32 %443, 16
  br label %448

447:                                              ; preds = %442
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1446, ptr noundef nonnull @.str.3) #18
  br label %448

448:                                              ; preds = %447, %445, %442
  %449 = phi i32 [ %446, %445 ], [ 0, %447 ], [ 59, %442 ]
  %450 = zext nneg i32 %449 to i64
  %451 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %450
  %452 = load i8, ptr %451, align 1, !tbaa !160
  %453 = icmp eq i8 %452, 3
  br i1 %453, label %454, label %474

454:                                              ; preds = %448
  %455 = load i32, ptr %0, align 8
  %456 = and i32 %455, 255
  %457 = add nsw i32 %456, -1
  %458 = icmp ult i32 %457, 9
  call void @llvm.assume(i1 %458)
  %459 = zext nneg i32 %456 to i64
  %460 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %459
  %461 = load i32, ptr %460, align 4, !tbaa !164
  %462 = zext i32 %461 to i64
  %463 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %462
  %464 = load i64, ptr %463, align 8, !tbaa !219
  %465 = icmp eq i64 %464, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %454
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %467

467:                                              ; preds = %466, %454
  %468 = getelementptr inbounds i8, ptr %0, i64 %464
  %469 = getelementptr inbounds ptr, ptr %468, i64 1
  %470 = load ptr, ptr %469, align 8, !tbaa !149
  %471 = load i64, ptr %470, align 8
  %472 = trunc i64 %471 to i32
  %473 = and i32 %472, 65535
  br label %474

474:                                              ; preds = %467, %448
  %475 = phi i32 [ %473, %467 ], [ %449, %448 ]
  %476 = trunc i32 %475 to i16
  switch i16 %476, label %477 [
    i16 63, label %491
    i16 64, label %491
    i16 66, label %491
  ]

477:                                              ; preds = %474, %440
  %478 = icmp eq i8 %367, 0
  %479 = select i1 %478, i1 %435, i1 false, !prof !399
  %480 = select i1 %478, i32 2, i32 3, !prof !399
  br i1 %479, label %481, label %491, !prof !420

481:                                              ; preds = %477
  %482 = load i32, ptr %0, align 8
  %483 = and i32 %482, 254
  %484 = add nsw i32 %483, -10
  %485 = icmp ult i32 %484, -4
  br i1 %485, label %491, label %486, !prof !421

486:                                              ; preds = %481
  %487 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %488 = load ptr, ptr %487, align 8, !tbaa !160
  %489 = icmp eq ptr %488, null
  %490 = select i1 %489, i32 3, i32 2, !prof !422
  br label %491

491:                                              ; preds = %486, %481, %477, %474, %474, %474, %433, %63
  %492 = phi i32 [ 3, %63 ], [ 1, %433 ], [ 1, %474 ], [ %480, %477 ], [ 3, %481 ], [ %490, %486 ], [ 1, %474 ], [ 1, %474 ]
  call void @fold_defer_overflow_warnings() #18
  switch i32 %492, label %563 [
    i32 2, label %493
    i32 3, label %495
  ], !prof !423

493:                                              ; preds = %491
  %494 = call fastcc ptr @ccp_fold(ptr noundef nonnull %0)
  br label %563

495:                                              ; preds = %491
  %496 = load i32, ptr %0, align 8
  %497 = and i32 %496, 255
  %498 = trunc i32 %496 to i8
  switch i8 %498, label %562 [
    i8 6, label %499
    i8 5, label %547
    i8 8, label %563
    i8 1, label %563
  ], !prof !424

499:                                              ; preds = %495
  %500 = lshr i32 %496, 16
  %501 = zext nneg i32 %500 to i64
  %502 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %501
  %503 = load i8, ptr %502, align 1, !tbaa !160
  %504 = icmp eq i8 %503, 3
  br i1 %504, label %505, label %523, !prof !425

505:                                              ; preds = %499
  %506 = add nsw i32 %497, -1
  %507 = icmp ult i32 %506, 9
  call void @llvm.assume(i1 %507)
  %508 = zext nneg i32 %497 to i64
  %509 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %508
  %510 = load i32, ptr %509, align 4, !tbaa !164
  %511 = zext i32 %510 to i64
  %512 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %511
  %513 = load i64, ptr %512, align 8, !tbaa !219
  %514 = icmp eq i64 %513, 0
  br i1 %514, label %515, label %516, !prof !426

515:                                              ; preds = %505
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %516

516:                                              ; preds = %515, %505
  %517 = getelementptr inbounds i8, ptr %0, i64 %513
  %518 = getelementptr inbounds ptr, ptr %517, i64 1
  %519 = load ptr, ptr %518, align 8, !tbaa !149
  %520 = load i64, ptr %519, align 8
  %521 = trunc i64 %520 to i32
  %522 = and i32 %521, 65535
  br label %523

523:                                              ; preds = %516, %499
  %524 = phi i32 [ %522, %516 ], [ %500, %499 ]
  %525 = zext nneg i32 %524 to i64
  %526 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %525
  %527 = load i8, ptr %526, align 1, !tbaa !160
  %528 = icmp eq i8 %527, 3
  br i1 %528, label %529, label %563, !prof !425

529:                                              ; preds = %523
  %530 = load i32, ptr %0, align 8
  %531 = and i32 %530, 255
  %532 = add nsw i32 %531, -10
  %533 = icmp ult i32 %532, -9
  br i1 %533, label %563, label %534, !prof !426

534:                                              ; preds = %529
  %535 = zext nneg i32 %531 to i64
  %536 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %535
  %537 = load i32, ptr %536, align 4, !tbaa !164
  %538 = zext i32 %537 to i64
  %539 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %538
  %540 = load i64, ptr %539, align 8, !tbaa !219
  %541 = icmp eq i64 %540, 0
  br i1 %541, label %542, label %543, !prof !426

542:                                              ; preds = %534
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %543

543:                                              ; preds = %542, %534
  %544 = getelementptr inbounds i8, ptr %0, i64 %540
  %545 = getelementptr inbounds ptr, ptr %544, i64 1
  %546 = load ptr, ptr %545, align 8, !tbaa !149
  br label %563

547:                                              ; preds = %495
  %548 = add nsw i32 %497, -10
  %549 = icmp ult i32 %548, -9
  br i1 %549, label %563, label %550, !prof !427

550:                                              ; preds = %547
  %551 = zext nneg i32 %497 to i64
  %552 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %551
  %553 = load i32, ptr %552, align 4, !tbaa !164
  %554 = zext i32 %553 to i64
  %555 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %554
  %556 = load i64, ptr %555, align 8, !tbaa !219
  %557 = icmp eq i64 %556, 0
  br i1 %557, label %558, label %559, !prof !427

558:                                              ; preds = %550
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %559

559:                                              ; preds = %558, %550
  %560 = getelementptr inbounds i8, ptr %0, i64 %556
  %561 = load ptr, ptr %560, align 8, !tbaa !149
  br label %563

562:                                              ; preds = %495
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1434, ptr noundef nonnull @.str.3) #18
  br label %563

563:                                              ; preds = %562, %559, %547, %543, %529, %523, %495, %495, %493, %491
  %564 = phi ptr [ %494, %493 ], [ null, %491 ], [ null, %562 ], [ null, %523 ], [ null, %495 ], [ %546, %543 ], [ null, %529 ], [ %561, %559 ], [ null, %547 ], [ null, %495 ]
  %565 = icmp eq ptr %564, null
  br i1 %565, label %570, label %566, !prof !428

566:                                              ; preds = %563
  %567 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %564) #18
  %568 = icmp ne i8 %567, 0
  %569 = zext i1 %568 to i8
  br label %570

570:                                              ; preds = %566, %563
  %571 = phi i8 [ 0, %563 ], [ %569, %566 ]
  call void @fold_undefer_overflow_warnings(i8 noundef zeroext %571, ptr noundef nonnull %0, i32 noundef 0) #18
  %572 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %573 = icmp eq ptr %572, null
  br i1 %573, label %591, label %574, !prof !399

574:                                              ; preds = %570
  %575 = load i32, ptr @dump_flags, align 4, !tbaa !164
  %576 = and i32 %575, 8
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %591, label %578

578:                                              ; preds = %574
  %579 = call i64 @fwrite(ptr nonnull @.str.14, i64 16, i64 1, ptr nonnull %572)
  %580 = load ptr, ptr @dump_file, align 8, !tbaa !149
  switch i32 %492, label %587 [
    i32 2, label %581
    i32 1, label %583
    i32 3, label %585
  ]

581:                                              ; preds = %578
  %582 = call i64 @fwrite(ptr nonnull @.str.15, i64 8, i64 1, ptr %580)
  br label %588

583:                                              ; preds = %578
  %584 = call i64 @fwrite(ptr nonnull @.str.16, i64 9, i64 1, ptr %580)
  br label %588

585:                                              ; preds = %578
  %586 = call i64 @fwrite(ptr nonnull @.str.17, i64 7, i64 1, ptr %580)
  br label %588

587:                                              ; preds = %578
  unreachable

588:                                              ; preds = %585, %583, %581
  %589 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %590 = call i32 @fputc(i32 10, ptr %589)
  br label %591

591:                                              ; preds = %570, %574, %588
  %592 = icmp eq i8 %571, 0
  %593 = icmp eq i32 %492, 1
  %594 = select i1 %593, i32 1, i32 3, !prof !400
  %595 = select i1 %592, i32 %594, i32 2, !prof !465
  %596 = select i1 %592, ptr null, ptr %564, !prof !465
  br label %597

597:                                              ; preds = %50, %55, %591
  %598 = phi i32 [ %595, %591 ], [ %52, %50 ], [ %57, %55 ]
  %599 = phi ptr [ %596, %591 ], [ %54, %50 ], [ %58, %55 ]
  %600 = load i64, ptr %6, align 8
  %601 = and i64 %600, 65535
  %602 = icmp eq i64 %601, 141
  br i1 %602, label %603, label %961, !prof !466

603:                                              ; preds = %597
  %604 = load ptr, ptr @const_val, align 8, !tbaa !149
  %605 = icmp eq ptr %604, null
  br i1 %605, label %847, label %606, !prof !214

606:                                              ; preds = %603
  %607 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 3
  %608 = load i32, ptr %607, align 8, !tbaa !160
  %609 = zext i32 %608 to i64
  %610 = getelementptr inbounds %struct.prop_value_d, ptr %604, i64 %609
  %611 = load i32, ptr %610, align 8, !tbaa !197
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %613, label %767, !prof !215

613:                                              ; preds = %606
  %614 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 1
  %615 = load ptr, ptr %614, align 8, !tbaa !160
  %616 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 2
  %617 = load ptr, ptr %616, align 8, !tbaa !160
  %618 = load i32, ptr %617, align 8
  %619 = trunc i32 %618 to i8
  switch i8 %619, label %642 [
    i8 18, label %620
    i8 6, label %646
    i8 8, label %628
  ], !prof !216

620:                                              ; preds = %613
  %621 = call zeroext i8 @is_gimple_reg(ptr noundef %615) #18
  %622 = icmp eq i8 %621, 0
  br i1 %622, label %627, label %623, !prof !217

623:                                              ; preds = %620
  %624 = load i64, ptr %615, align 8
  %625 = and i64 %624, 65535
  %626 = icmp eq i64 %625, 34
  br i1 %626, label %627, label %763, !prof !218

627:                                              ; preds = %623, %620
  br label %763

628:                                              ; preds = %613
  %629 = and i32 %618, 255
  %630 = zext nneg i32 %629 to i64
  %631 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %630
  %632 = load i32, ptr %631, align 4, !tbaa !164
  %633 = zext i32 %632 to i64
  %634 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %633
  %635 = load i64, ptr %634, align 8, !tbaa !219
  %636 = icmp eq i64 %635, 0
  br i1 %636, label %637, label %638

637:                                              ; preds = %628
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %638

638:                                              ; preds = %637, %628
  %639 = getelementptr inbounds i8, ptr %617, i64 %635
  %640 = load ptr, ptr %639, align 8, !tbaa !149
  %641 = icmp eq ptr %640, null
  br i1 %641, label %642, label %646

642:                                              ; preds = %638, %613
  %643 = load i32, ptr %617, align 8
  %644 = and i32 %643, 255
  %645 = icmp eq i32 %644, 16
  br i1 %645, label %646, label %763, !prof !220

646:                                              ; preds = %642, %638, %613
  %647 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %617) #18
  %648 = icmp eq i8 %647, 0
  br i1 %648, label %762, label %649, !prof !221

649:                                              ; preds = %646
  %650 = load i32, ptr %617, align 8
  %651 = and i32 %650, 255
  %652 = add nsw i32 %651, -1
  %653 = icmp ult i32 %652, 9
  call void @llvm.assume(i1 %653)
  %654 = zext nneg i32 %651 to i64
  %655 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %654
  %656 = load i32, ptr %655, align 4, !tbaa !164
  %657 = zext i32 %656 to i64
  %658 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %657
  %659 = load i64, ptr %658, align 8, !tbaa !219
  %660 = icmp eq i64 %659, 0
  br i1 %660, label %661, label %662, !prof !222

661:                                              ; preds = %649
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %662

662:                                              ; preds = %661, %649
  %663 = getelementptr inbounds i8, ptr %617, i64 %659
  %664 = getelementptr inbounds ptr, ptr %663, i64 1
  %665 = load ptr, ptr %664, align 8, !tbaa !149
  %666 = load i64, ptr %665, align 8
  %667 = and i64 %666, 65535
  %668 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %667
  %669 = load i32, ptr %668, align 4, !tbaa !164
  %670 = icmp eq i32 %669, 3
  br i1 %670, label %671, label %762, !prof !223

671:                                              ; preds = %662
  %672 = load i32, ptr %617, align 8
  %673 = and i32 %672, 255
  %674 = add nsw i32 %673, -10
  %675 = icmp ult i32 %674, -9
  br i1 %675, label %689, label %676, !prof !224

676:                                              ; preds = %671
  %677 = zext nneg i32 %673 to i64
  %678 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %677
  %679 = load i32, ptr %678, align 4, !tbaa !164
  %680 = zext i32 %679 to i64
  %681 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %680
  %682 = load i64, ptr %681, align 8, !tbaa !219
  %683 = icmp eq i64 %682, 0
  br i1 %683, label %684, label %685, !prof !224

684:                                              ; preds = %676
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %685

685:                                              ; preds = %684, %676
  %686 = getelementptr inbounds i8, ptr %617, i64 %682
  %687 = getelementptr inbounds ptr, ptr %686, i64 1
  %688 = load ptr, ptr %687, align 8, !tbaa !149
  br label %689

689:                                              ; preds = %685, %671
  %690 = phi ptr [ %688, %685 ], [ null, %671 ]
  %691 = load i64, ptr %690, align 8
  %692 = and i64 %691, 67108864
  %693 = icmp eq i64 %692, 0
  br i1 %693, label %758, label %694, !prof !169

694:                                              ; preds = %689
  %695 = and i64 %691, 1048576
  %696 = icmp ne i64 %695, 0
  %697 = and i64 %691, 65535
  %698 = icmp eq i64 %697, 33
  %699 = or i1 %696, %698
  br i1 %699, label %700, label %758

700:                                              ; preds = %694
  %701 = getelementptr inbounds %struct.tree_decl_common, ptr %690, i64 0, i32 5
  %702 = load ptr, ptr %701, align 8, !tbaa !160
  %703 = icmp eq ptr %702, null
  br i1 %703, label %732, label %704

704:                                              ; preds = %700
  %705 = call ptr @tree_strip_nop_conversions(ptr noundef nonnull %702) #18
  %706 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %705) #18
  %707 = icmp eq i8 %706, 0
  br i1 %707, label %732, label %708

708:                                              ; preds = %704
  %709 = load i64, ptr %705, align 8
  %710 = and i64 %709, 65535
  %711 = icmp eq i64 %710, 121
  br i1 %711, label %712, label %755

712:                                              ; preds = %708
  %713 = getelementptr inbounds %struct.tree_exp, ptr %705, i64 0, i32 3
  %714 = load ptr, ptr %713, align 8, !tbaa !160
  %715 = call ptr @get_base_address(ptr noundef %714) #18
  %716 = icmp eq ptr %715, null
  br i1 %716, label %755, label %717

717:                                              ; preds = %712
  %718 = load i64, ptr %715, align 8
  %719 = and i64 %718, 65535
  %720 = icmp eq i64 %719, 32
  br i1 %720, label %721, label %755

721:                                              ; preds = %717
  %722 = or i64 %718, 262144
  store i64 %722, ptr %715, align 8
  %723 = load ptr, ptr @cfun, align 8, !tbaa !149
  %724 = getelementptr inbounds %struct.function, ptr %723, i64 0, i32 3
  %725 = load ptr, ptr %724, align 8, !tbaa !170
  %726 = icmp eq ptr %725, null
  br i1 %726, label %755, label %727

727:                                              ; preds = %721
  %728 = load ptr, ptr %725, align 8, !tbaa !172
  %729 = icmp eq ptr %728, null
  br i1 %729, label %755, label %730

730:                                              ; preds = %727
  %731 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %715) #18
  br label %755

732:                                              ; preds = %704, %700
  %733 = phi ptr [ %705, %704 ], [ null, %700 ]
  %734 = icmp eq ptr %733, null
  br i1 %734, label %735, label %755

735:                                              ; preds = %732
  %736 = getelementptr inbounds %struct.tree_decl_common, ptr %690, i64 0, i32 2
  %737 = load i64, ptr %736, align 8
  %738 = and i64 %737, 33554432
  %739 = icmp eq i64 %738, 0
  br i1 %739, label %740, label %755

740:                                              ; preds = %735
  %741 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !176
  %742 = call zeroext i8 %741(ptr noundef nonnull %690) #18
  %743 = icmp eq i8 %742, 0
  br i1 %743, label %755, label %744

744:                                              ; preds = %740
  %745 = getelementptr inbounds %struct.tree_common, ptr %690, i64 0, i32 2
  %746 = load ptr, ptr %745, align 8, !tbaa !160
  %747 = load i64, ptr %746, align 8
  %748 = trunc i64 %747 to i32
  %749 = and i32 %748, 65534
  %750 = add nsw i32 %749, -6
  %751 = icmp ult i32 %750, 4
  br i1 %751, label %752, label %755

752:                                              ; preds = %744
  %753 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %754 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %746, ptr noundef %753) #18
  br label %755

755:                                              ; preds = %752, %744, %740, %735, %732, %730, %727, %721, %717, %712, %708
  %756 = phi ptr [ %754, %752 ], [ %705, %712 ], [ %705, %717 ], [ %705, %730 ], [ %705, %727 ], [ %705, %708 ], [ undef, %744 ], [ undef, %740 ], [ undef, %735 ], [ undef, %732 ], [ %705, %721 ]
  %757 = phi i1 [ false, %752 ], [ false, %712 ], [ false, %717 ], [ false, %730 ], [ false, %727 ], [ false, %708 ], [ true, %744 ], [ true, %740 ], [ true, %735 ], [ true, %732 ], [ false, %721 ]
  br i1 %757, label %758, label %759

758:                                              ; preds = %755, %694, %689
  br label %759

759:                                              ; preds = %758, %755
  %760 = phi ptr [ %756, %755 ], [ null, %758 ]
  %761 = icmp eq ptr %760, null
  br i1 %761, label %762, label %763, !prof !225

762:                                              ; preds = %759, %662, %646
  br label %763

763:                                              ; preds = %762, %759, %642, %627, %623
  %764 = phi ptr [ null, %627 ], [ null, %623 ], [ null, %762 ], [ %760, %759 ], [ null, %642 ]
  %765 = phi i32 [ 3, %627 ], [ 1, %623 ], [ 1, %762 ], [ 2, %759 ], [ 3, %642 ]
  store i32 %765, ptr %610, align 8, !tbaa.struct !226
  %766 = getelementptr inbounds i8, ptr %610, i64 8
  store ptr %764, ptr %766, align 8, !tbaa.struct !227
  br label %767

767:                                              ; preds = %763, %606
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  %768 = load i32, ptr %610, align 8, !tbaa !197
  %769 = icmp eq i32 %768, 2
  br i1 %769, label %770, label %846, !prof !228

770:                                              ; preds = %767
  %771 = getelementptr inbounds %struct.prop_value_d, ptr %604, i64 %609, i32 1
  %772 = load ptr, ptr %771, align 8, !tbaa !199
  %773 = load i64, ptr %772, align 8
  %774 = and i64 %773, 65535
  %775 = icmp eq i64 %774, 24
  br i1 %775, label %776, label %846, !prof !229

776:                                              ; preds = %770
  %777 = getelementptr inbounds %struct.tree_real_cst, ptr %772, i64 0, i32 1
  %778 = load ptr, ptr %777, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %778, i64 32, i1 false), !tbaa.struct !230
  %779 = getelementptr inbounds %struct.tree_common, ptr %772, i64 0, i32 2
  %780 = load ptr, ptr %779, align 8, !tbaa !160
  %781 = load i64, ptr %780, align 8
  %782 = and i64 %781, 65535
  %783 = icmp eq i64 %782, 14
  br i1 %783, label %784, label %786

784:                                              ; preds = %776
  %785 = call i32 @vector_type_mode(ptr noundef nonnull %780) #18
  br label %791

786:                                              ; preds = %776
  %787 = getelementptr inbounds %struct.tree_type, ptr %780, i64 0, i32 6
  %788 = load i32, ptr %787, align 4
  %789 = lshr i32 %788, 16
  %790 = and i32 %789, 255
  br label %791

791:                                              ; preds = %786, %784
  %792 = phi i32 [ %785, %784 ], [ %790, %786 ]
  %793 = zext i32 %792 to i64
  %794 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %793
  %795 = load i8, ptr %794, align 1, !tbaa !160
  switch i8 %795, label %815 [
    i8 8, label %796
    i8 9, label %796
    i8 11, label %796
    i8 17, label %796
  ]

796:                                              ; preds = %791, %791, %791, %791
  %797 = and i8 %795, -2
  %798 = icmp eq i8 %797, 8
  br i1 %798, label %803, label %799

799:                                              ; preds = %796
  %800 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %793
  %801 = load i8, ptr %800, align 1, !tbaa !160
  %802 = zext i8 %801 to i32
  br label %803

803:                                              ; preds = %796, %799
  %804 = phi i32 [ %802, %799 ], [ %792, %796 ]
  %805 = add i32 %804, -38
  %806 = zext i32 %805 to i64
  %807 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %806
  %808 = load ptr, ptr %807, align 8, !tbaa !149
  %809 = getelementptr inbounds %struct.real_format, ptr %808, i64 0, i32 14
  %810 = load i8, ptr %809, align 1, !tbaa !231
  %811 = icmp ne i8 %810, 0
  %812 = load i32, ptr @flag_signed_zeros, align 4
  %813 = icmp ne i32 %812, 0
  %814 = select i1 %811, i1 %813, i1 false
  br i1 %814, label %820, label %815

815:                                              ; preds = %803, %791
  %816 = call zeroext i8 @real_isnegzero(ptr noundef nonnull %4) #18
  %817 = icmp eq i8 %816, 0
  br i1 %817, label %820, label %818

818:                                              ; preds = %815
  %819 = call ptr @build_real(ptr noundef nonnull %780, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #18
  br label %844

820:                                              ; preds = %815, %803
  switch i8 %795, label %840 [
    i8 8, label %821
    i8 9, label %821
    i8 11, label %821
    i8 17, label %821
  ]

821:                                              ; preds = %820, %820, %820, %820
  %822 = and i8 %795, -2
  %823 = icmp eq i8 %822, 8
  br i1 %823, label %828, label %824

824:                                              ; preds = %821
  %825 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %793
  %826 = load i8, ptr %825, align 1, !tbaa !160
  %827 = zext i8 %826 to i32
  br label %828

828:                                              ; preds = %821, %824
  %829 = phi i32 [ %827, %824 ], [ %792, %821 ]
  %830 = add i32 %829, -38
  %831 = zext i32 %830 to i64
  %832 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %831
  %833 = load ptr, ptr %832, align 8, !tbaa !149
  %834 = getelementptr inbounds %struct.real_format, ptr %833, i64 0, i32 11
  %835 = load i8, ptr %834, align 2, !tbaa !233
  %836 = icmp eq i8 %835, 0
  %837 = load i32, ptr @flag_finite_math_only, align 4
  %838 = icmp ne i32 %837, 0
  %839 = select i1 %836, i1 true, i1 %838
  br i1 %839, label %840, label %846

840:                                              ; preds = %828, %820
  %841 = call zeroext i8 @real_isnan(ptr noundef nonnull %4) #18
  %842 = icmp eq i8 %841, 0
  br i1 %842, label %846, label %843

843:                                              ; preds = %840
  store i32 1, ptr %610, align 8, !tbaa !197
  br label %844

844:                                              ; preds = %818, %843
  %845 = phi ptr [ null, %843 ], [ %819, %818 ]
  store ptr %845, ptr %771, align 8, !tbaa !199
  br label %846

846:                                              ; preds = %844, %840, %828, %770, %767
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  br label %847

847:                                              ; preds = %846, %603
  %848 = phi ptr [ %610, %846 ], [ null, %603 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %849 = icmp eq i32 %598, 2
  br i1 %849, label %850, label %923, !prof !228

850:                                              ; preds = %847
  %851 = load i64, ptr %599, align 8
  %852 = and i64 %851, 65535
  %853 = icmp eq i64 %852, 24
  br i1 %853, label %854, label %923, !prof !229

854:                                              ; preds = %850
  %855 = getelementptr inbounds %struct.tree_real_cst, ptr %599, i64 0, i32 1
  %856 = load ptr, ptr %855, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %856, i64 32, i1 false), !tbaa.struct !230
  %857 = getelementptr inbounds %struct.tree_common, ptr %599, i64 0, i32 2
  %858 = load ptr, ptr %857, align 8, !tbaa !160
  %859 = load i64, ptr %858, align 8
  %860 = and i64 %859, 65535
  %861 = icmp eq i64 %860, 14
  br i1 %861, label %862, label %864

862:                                              ; preds = %854
  %863 = call i32 @vector_type_mode(ptr noundef nonnull %858) #18
  br label %869

864:                                              ; preds = %854
  %865 = getelementptr inbounds %struct.tree_type, ptr %858, i64 0, i32 6
  %866 = load i32, ptr %865, align 4
  %867 = lshr i32 %866, 16
  %868 = and i32 %867, 255
  br label %869

869:                                              ; preds = %864, %862
  %870 = phi i32 [ %863, %862 ], [ %868, %864 ]
  %871 = zext i32 %870 to i64
  %872 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %871
  %873 = load i8, ptr %872, align 1, !tbaa !160
  switch i8 %873, label %893 [
    i8 8, label %874
    i8 9, label %874
    i8 11, label %874
    i8 17, label %874
  ]

874:                                              ; preds = %869, %869, %869, %869
  %875 = and i8 %873, -2
  %876 = icmp eq i8 %875, 8
  br i1 %876, label %881, label %877

877:                                              ; preds = %874
  %878 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %871
  %879 = load i8, ptr %878, align 1, !tbaa !160
  %880 = zext i8 %879 to i32
  br label %881

881:                                              ; preds = %874, %877
  %882 = phi i32 [ %880, %877 ], [ %870, %874 ]
  %883 = add i32 %882, -38
  %884 = zext i32 %883 to i64
  %885 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %884
  %886 = load ptr, ptr %885, align 8, !tbaa !149
  %887 = getelementptr inbounds %struct.real_format, ptr %886, i64 0, i32 14
  %888 = load i8, ptr %887, align 1, !tbaa !231
  %889 = icmp ne i8 %888, 0
  %890 = load i32, ptr @flag_signed_zeros, align 4
  %891 = icmp ne i32 %890, 0
  %892 = select i1 %889, i1 %891, i1 false
  br i1 %892, label %898, label %893

893:                                              ; preds = %881, %869
  %894 = call zeroext i8 @real_isnegzero(ptr noundef nonnull %3) #18
  %895 = icmp eq i8 %894, 0
  br i1 %895, label %898, label %896

896:                                              ; preds = %893
  %897 = call ptr @build_real(ptr noundef nonnull %858, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #18
  br label %923

898:                                              ; preds = %893, %881
  switch i8 %873, label %918 [
    i8 8, label %899
    i8 9, label %899
    i8 11, label %899
    i8 17, label %899
  ]

899:                                              ; preds = %898, %898, %898, %898
  %900 = and i8 %873, -2
  %901 = icmp eq i8 %900, 8
  br i1 %901, label %906, label %902

902:                                              ; preds = %899
  %903 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %871
  %904 = load i8, ptr %903, align 1, !tbaa !160
  %905 = zext i8 %904 to i32
  br label %906

906:                                              ; preds = %899, %902
  %907 = phi i32 [ %905, %902 ], [ %870, %899 ]
  %908 = add i32 %907, -38
  %909 = zext i32 %908 to i64
  %910 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %909
  %911 = load ptr, ptr %910, align 8, !tbaa !149
  %912 = getelementptr inbounds %struct.real_format, ptr %911, i64 0, i32 11
  %913 = load i8, ptr %912, align 2, !tbaa !233
  %914 = icmp eq i8 %913, 0
  %915 = load i32, ptr @flag_finite_math_only, align 4
  %916 = icmp ne i32 %915, 0
  %917 = select i1 %914, i1 true, i1 %916
  br i1 %917, label %918, label %923

918:                                              ; preds = %906, %898
  %919 = call zeroext i8 @real_isnan(ptr noundef nonnull %3) #18
  %920 = icmp eq i8 %919, 0
  %921 = select i1 %920, ptr %599, ptr null
  %922 = select i1 %920, i32 %598, i32 1
  br label %923

923:                                              ; preds = %918, %906, %896, %850, %847
  %924 = phi ptr [ %599, %906 ], [ %897, %896 ], [ %599, %850 ], [ %599, %847 ], [ %921, %918 ]
  %925 = phi i32 [ %598, %906 ], [ %598, %896 ], [ %598, %850 ], [ %598, %847 ], [ %922, %918 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  %926 = load i32, ptr %848, align 8, !tbaa !197
  %927 = icmp ult i32 %926, %925
  br i1 %927, label %940, label %928, !prof !467

928:                                              ; preds = %923
  %929 = icmp eq i32 %926, %925
  br i1 %929, label %930, label %939, !prof !468

930:                                              ; preds = %928
  %931 = getelementptr inbounds %struct.prop_value_d, ptr %848, i64 0, i32 1
  %932 = load ptr, ptr %931, align 8, !tbaa !199
  %933 = icmp ne ptr %932, null
  %934 = icmp ne ptr %924, null
  %935 = select i1 %933, i1 true, i1 %934, !prof !469
  br i1 %935, label %936, label %940, !prof !469

936:                                              ; preds = %930
  %937 = call i32 @operand_equal_p(ptr noundef %932, ptr noundef %924, i32 noundef 0) #18
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %939, label %940, !prof !470

939:                                              ; preds = %936, %928
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 478, ptr noundef nonnull @.str.3) #18
  br label %940

940:                                              ; preds = %939, %936, %930, %923
  %941 = load i32, ptr %848, align 8, !tbaa !197
  %942 = icmp eq i32 %941, %925
  br i1 %942, label %961, label %943, !prof !471

943:                                              ; preds = %940
  %944 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %945 = icmp eq ptr %944, null
  br i1 %945, label %953, label %946, !prof !472

946:                                              ; preds = %943
  %947 = load i32, ptr @dump_flags, align 4, !tbaa !164
  %948 = and i32 %947, 8
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %953, label %950

950:                                              ; preds = %946
  call fastcc void @dump_lattice_value(ptr noundef nonnull %944, ptr noundef nonnull @.str.18, i32 %925, ptr %924)
  %951 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %952 = call i64 @fwrite(ptr nonnull @.str.19, i64 33, i64 1, ptr %951)
  br label %953

953:                                              ; preds = %950, %946, %943
  store i32 %925, ptr %848, align 8, !tbaa.struct !226
  %954 = getelementptr inbounds i8, ptr %848, i64 8
  store ptr %924, ptr %954, align 8, !tbaa.struct !227
  %955 = icmp eq i32 %925, 1
  br i1 %955, label %956, label %957, !prof !473

956:                                              ; preds = %953
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 490, ptr noundef nonnull @.str.3) #18
  br label %957

957:                                              ; preds = %953, %956
  br i1 %942, label %961, label %958, !prof !461

958:                                              ; preds = %957
  store ptr %6, ptr %1, align 8, !tbaa !149
  %959 = icmp eq i32 %598, 3
  %960 = select i1 %959, i32 2, i32 1, !prof !474
  br label %961

961:                                              ; preds = %940, %958, %957, %597
  %962 = phi i32 [ 0, %957 ], [ 0, %597 ], [ %960, %958 ], [ 0, %940 ]
  ret i32 %962
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i8 @set_lattice_value(ptr nocapture noundef readonly %0, i32 %1, ptr %2) unnamed_addr #10 !prof !433 !PGOFuncName !475 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = load ptr, ptr @const_val, align 8, !tbaa !149
  %7 = icmp eq ptr %6, null
  br i1 %7, label %249, label %8, !prof !214

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !160
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.prop_value_d, ptr %6, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !197
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %169, !prof !215

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !160
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !160
  %20 = load i32, ptr %19, align 8
  %21 = trunc i32 %20 to i8
  switch i8 %21, label %44 [
    i8 18, label %22
    i8 6, label %48
    i8 8, label %30
  ], !prof !216

22:                                               ; preds = %15
  %23 = tail call zeroext i8 @is_gimple_reg(ptr noundef %17) #18
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !217

25:                                               ; preds = %22
  %26 = load i64, ptr %17, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 34
  br i1 %28, label %29, label %165, !prof !218

29:                                               ; preds = %25, %22
  br label %165

30:                                               ; preds = %15
  %31 = and i32 %20, 255
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !164
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !219
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %40

40:                                               ; preds = %39, %30
  %41 = getelementptr inbounds i8, ptr %19, i64 %37
  %42 = load ptr, ptr %41, align 8, !tbaa !149
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %15
  %45 = load i32, ptr %19, align 8
  %46 = and i32 %45, 255
  %47 = icmp eq i32 %46, 16
  br i1 %47, label %48, label %165, !prof !220

48:                                               ; preds = %44, %40, %15
  %49 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %19) #18
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %164, label %51, !prof !221

51:                                               ; preds = %48
  %52 = load i32, ptr %19, align 8
  %53 = and i32 %52, 255
  %54 = add nsw i32 %53, -1
  %55 = icmp ult i32 %54, 9
  tail call void @llvm.assume(i1 %55)
  %56 = zext nneg i32 %53 to i64
  %57 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !164
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !219
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64, !prof !222

63:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %64

64:                                               ; preds = %63, %51
  %65 = getelementptr inbounds i8, ptr %19, i64 %61
  %66 = getelementptr inbounds ptr, ptr %65, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !149
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 65535
  %70 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !164
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %164, !prof !223

73:                                               ; preds = %64
  %74 = load i32, ptr %19, align 8
  %75 = and i32 %74, 255
  %76 = add nsw i32 %75, -10
  %77 = icmp ult i32 %76, -9
  br i1 %77, label %91, label %78, !prof !224

78:                                               ; preds = %73
  %79 = zext nneg i32 %75 to i64
  %80 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !164
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %82
  %84 = load i64, ptr %83, align 8, !tbaa !219
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87, !prof !224

86:                                               ; preds = %78
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %87

87:                                               ; preds = %86, %78
  %88 = getelementptr inbounds i8, ptr %19, i64 %84
  %89 = getelementptr inbounds ptr, ptr %88, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !149
  br label %91

91:                                               ; preds = %87, %73
  %92 = phi ptr [ %90, %87 ], [ null, %73 ]
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 67108864
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %160, label %96, !prof !169

96:                                               ; preds = %91
  %97 = and i64 %93, 1048576
  %98 = icmp ne i64 %97, 0
  %99 = and i64 %93, 65535
  %100 = icmp eq i64 %99, 33
  %101 = or i1 %98, %100
  br i1 %101, label %102, label %160

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.tree_decl_common, ptr %92, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !160
  %105 = icmp eq ptr %104, null
  br i1 %105, label %134, label %106

106:                                              ; preds = %102
  %107 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %104) #18
  %108 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %107) #18
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %134, label %110

110:                                              ; preds = %106
  %111 = load i64, ptr %107, align 8
  %112 = and i64 %111, 65535
  %113 = icmp eq i64 %112, 121
  br i1 %113, label %114, label %157

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.tree_exp, ptr %107, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !160
  %117 = tail call ptr @get_base_address(ptr noundef %116) #18
  %118 = icmp eq ptr %117, null
  br i1 %118, label %157, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8
  %121 = and i64 %120, 65535
  %122 = icmp eq i64 %121, 32
  br i1 %122, label %123, label %157

123:                                              ; preds = %119
  %124 = or i64 %120, 262144
  store i64 %124, ptr %117, align 8
  %125 = load ptr, ptr @cfun, align 8, !tbaa !149
  %126 = getelementptr inbounds %struct.function, ptr %125, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !170
  %128 = icmp eq ptr %127, null
  br i1 %128, label %157, label %129

129:                                              ; preds = %123
  %130 = load ptr, ptr %127, align 8, !tbaa !172
  %131 = icmp eq ptr %130, null
  br i1 %131, label %157, label %132

132:                                              ; preds = %129
  %133 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %117) #18
  br label %157

134:                                              ; preds = %106, %102
  %135 = phi ptr [ %107, %106 ], [ null, %102 ]
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %157

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.tree_decl_common, ptr %92, i64 0, i32 2
  %139 = load i64, ptr %138, align 8
  %140 = and i64 %139, 33554432
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %137
  %143 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !176
  %144 = tail call zeroext i8 %143(ptr noundef nonnull %92) #18
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %157, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.tree_common, ptr %92, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !160
  %149 = load i64, ptr %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = and i32 %150, 65534
  %152 = add nsw i32 %151, -6
  %153 = icmp ult i32 %152, 4
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %156 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %148, ptr noundef %155) #18
  br label %157

157:                                              ; preds = %154, %146, %142, %137, %134, %132, %129, %123, %119, %114, %110
  %158 = phi ptr [ %156, %154 ], [ %107, %114 ], [ %107, %119 ], [ %107, %132 ], [ %107, %129 ], [ %107, %110 ], [ undef, %146 ], [ undef, %142 ], [ undef, %137 ], [ undef, %134 ], [ %107, %123 ]
  %159 = phi i1 [ false, %154 ], [ false, %114 ], [ false, %119 ], [ false, %132 ], [ false, %129 ], [ false, %110 ], [ true, %146 ], [ true, %142 ], [ true, %137 ], [ true, %134 ], [ false, %123 ]
  br i1 %159, label %160, label %161

160:                                              ; preds = %157, %96, %91
  br label %161

161:                                              ; preds = %160, %157
  %162 = phi ptr [ %158, %157 ], [ null, %160 ]
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %165, !prof !225

164:                                              ; preds = %161, %64, %48
  br label %165

165:                                              ; preds = %164, %161, %44, %29, %25
  %166 = phi ptr [ null, %29 ], [ null, %25 ], [ null, %164 ], [ %162, %161 ], [ null, %44 ]
  %167 = phi i32 [ 3, %29 ], [ 1, %25 ], [ 1, %164 ], [ 2, %161 ], [ 3, %44 ]
  store i32 %167, ptr %12, align 8, !tbaa.struct !226
  %168 = getelementptr inbounds i8, ptr %12, i64 8
  store ptr %166, ptr %168, align 8, !tbaa.struct !227
  br label %169

169:                                              ; preds = %165, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %170 = load i32, ptr %12, align 8, !tbaa !197
  %171 = icmp eq i32 %170, 2
  br i1 %171, label %172, label %248, !prof !228

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.prop_value_d, ptr %6, i64 %11, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !199
  %175 = load i64, ptr %174, align 8
  %176 = and i64 %175, 65535
  %177 = icmp eq i64 %176, 24
  br i1 %177, label %178, label %248, !prof !229

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.tree_real_cst, ptr %174, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %180, i64 32, i1 false), !tbaa.struct !230
  %181 = getelementptr inbounds %struct.tree_common, ptr %174, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !160
  %183 = load i64, ptr %182, align 8
  %184 = and i64 %183, 65535
  %185 = icmp eq i64 %184, 14
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = tail call i32 @vector_type_mode(ptr noundef nonnull %182) #18
  br label %193

188:                                              ; preds = %178
  %189 = getelementptr inbounds %struct.tree_type, ptr %182, i64 0, i32 6
  %190 = load i32, ptr %189, align 4
  %191 = lshr i32 %190, 16
  %192 = and i32 %191, 255
  br label %193

193:                                              ; preds = %188, %186
  %194 = phi i32 [ %187, %186 ], [ %192, %188 ]
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !160
  switch i8 %197, label %217 [
    i8 8, label %198
    i8 9, label %198
    i8 11, label %198
    i8 17, label %198
  ]

198:                                              ; preds = %193, %193, %193, %193
  %199 = and i8 %197, -2
  %200 = icmp eq i8 %199, 8
  br i1 %200, label %205, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %195
  %203 = load i8, ptr %202, align 1, !tbaa !160
  %204 = zext i8 %203 to i32
  br label %205

205:                                              ; preds = %198, %201
  %206 = phi i32 [ %204, %201 ], [ %194, %198 ]
  %207 = add i32 %206, -38
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !149
  %211 = getelementptr inbounds %struct.real_format, ptr %210, i64 0, i32 14
  %212 = load i8, ptr %211, align 1, !tbaa !231
  %213 = icmp ne i8 %212, 0
  %214 = load i32, ptr @flag_signed_zeros, align 4
  %215 = icmp ne i32 %214, 0
  %216 = select i1 %213, i1 %215, i1 false
  br i1 %216, label %222, label %217

217:                                              ; preds = %205, %193
  %218 = call zeroext i8 @real_isnegzero(ptr noundef nonnull %5) #18
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %217
  %221 = call ptr @build_real(ptr noundef nonnull %182, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #18
  br label %246

222:                                              ; preds = %217, %205
  switch i8 %197, label %242 [
    i8 8, label %223
    i8 9, label %223
    i8 11, label %223
    i8 17, label %223
  ]

223:                                              ; preds = %222, %222, %222, %222
  %224 = and i8 %197, -2
  %225 = icmp eq i8 %224, 8
  br i1 %225, label %230, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %195
  %228 = load i8, ptr %227, align 1, !tbaa !160
  %229 = zext i8 %228 to i32
  br label %230

230:                                              ; preds = %223, %226
  %231 = phi i32 [ %229, %226 ], [ %194, %223 ]
  %232 = add i32 %231, -38
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %233
  %235 = load ptr, ptr %234, align 8, !tbaa !149
  %236 = getelementptr inbounds %struct.real_format, ptr %235, i64 0, i32 11
  %237 = load i8, ptr %236, align 2, !tbaa !233
  %238 = icmp eq i8 %237, 0
  %239 = load i32, ptr @flag_finite_math_only, align 4
  %240 = icmp ne i32 %239, 0
  %241 = select i1 %238, i1 true, i1 %240
  br i1 %241, label %242, label %248

242:                                              ; preds = %230, %222
  %243 = call zeroext i8 @real_isnan(ptr noundef nonnull %5) #18
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %242
  store i32 1, ptr %12, align 8, !tbaa !197
  br label %246

246:                                              ; preds = %220, %245
  %247 = phi ptr [ null, %245 ], [ %221, %220 ]
  store ptr %247, ptr %173, align 8, !tbaa !199
  br label %248

248:                                              ; preds = %246, %242, %230, %172, %169
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %249

249:                                              ; preds = %3, %248
  %250 = phi ptr [ %12, %248 ], [ null, %3 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  %251 = icmp eq i32 %1, 2
  br i1 %251, label %252, label %325, !prof !228

252:                                              ; preds = %249
  %253 = load i64, ptr %2, align 8
  %254 = and i64 %253, 65535
  %255 = icmp eq i64 %254, 24
  br i1 %255, label %256, label %325, !prof !229

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %258, i64 32, i1 false), !tbaa.struct !230
  %259 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !160
  %261 = load i64, ptr %260, align 8
  %262 = and i64 %261, 65535
  %263 = icmp eq i64 %262, 14
  br i1 %263, label %264, label %266

264:                                              ; preds = %256
  %265 = call i32 @vector_type_mode(ptr noundef nonnull %260) #18
  br label %271

266:                                              ; preds = %256
  %267 = getelementptr inbounds %struct.tree_type, ptr %260, i64 0, i32 6
  %268 = load i32, ptr %267, align 4
  %269 = lshr i32 %268, 16
  %270 = and i32 %269, 255
  br label %271

271:                                              ; preds = %266, %264
  %272 = phi i32 [ %265, %264 ], [ %270, %266 ]
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !160
  switch i8 %275, label %295 [
    i8 8, label %276
    i8 9, label %276
    i8 11, label %276
    i8 17, label %276
  ]

276:                                              ; preds = %271, %271, %271, %271
  %277 = and i8 %275, -2
  %278 = icmp eq i8 %277, 8
  br i1 %278, label %283, label %279

279:                                              ; preds = %276
  %280 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %273
  %281 = load i8, ptr %280, align 1, !tbaa !160
  %282 = zext i8 %281 to i32
  br label %283

283:                                              ; preds = %276, %279
  %284 = phi i32 [ %282, %279 ], [ %272, %276 ]
  %285 = add i32 %284, -38
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %286
  %288 = load ptr, ptr %287, align 8, !tbaa !149
  %289 = getelementptr inbounds %struct.real_format, ptr %288, i64 0, i32 14
  %290 = load i8, ptr %289, align 1, !tbaa !231
  %291 = icmp ne i8 %290, 0
  %292 = load i32, ptr @flag_signed_zeros, align 4
  %293 = icmp ne i32 %292, 0
  %294 = select i1 %291, i1 %293, i1 false
  br i1 %294, label %300, label %295

295:                                              ; preds = %283, %271
  %296 = call zeroext i8 @real_isnegzero(ptr noundef nonnull %4) #18
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %300, label %298

298:                                              ; preds = %295
  %299 = call ptr @build_real(ptr noundef nonnull %260, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #18
  br label %325

300:                                              ; preds = %295, %283
  switch i8 %275, label %320 [
    i8 8, label %301
    i8 9, label %301
    i8 11, label %301
    i8 17, label %301
  ]

301:                                              ; preds = %300, %300, %300, %300
  %302 = and i8 %275, -2
  %303 = icmp eq i8 %302, 8
  br i1 %303, label %308, label %304

304:                                              ; preds = %301
  %305 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %273
  %306 = load i8, ptr %305, align 1, !tbaa !160
  %307 = zext i8 %306 to i32
  br label %308

308:                                              ; preds = %301, %304
  %309 = phi i32 [ %307, %304 ], [ %272, %301 ]
  %310 = add i32 %309, -38
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %311
  %313 = load ptr, ptr %312, align 8, !tbaa !149
  %314 = getelementptr inbounds %struct.real_format, ptr %313, i64 0, i32 11
  %315 = load i8, ptr %314, align 2, !tbaa !233
  %316 = icmp eq i8 %315, 0
  %317 = load i32, ptr @flag_finite_math_only, align 4
  %318 = icmp ne i32 %317, 0
  %319 = select i1 %316, i1 true, i1 %318
  br i1 %319, label %320, label %325

320:                                              ; preds = %308, %300
  %321 = call zeroext i8 @real_isnan(ptr noundef nonnull %4) #18
  %322 = icmp eq i8 %321, 0
  %323 = select i1 %322, ptr %2, ptr null
  %324 = select i1 %322, i32 %1, i32 1
  br label %325

325:                                              ; preds = %320, %249, %252, %298, %308
  %326 = phi ptr [ %2, %308 ], [ %299, %298 ], [ %2, %252 ], [ %2, %249 ], [ %323, %320 ]
  %327 = phi i32 [ %1, %308 ], [ %1, %298 ], [ %1, %252 ], [ %1, %249 ], [ %324, %320 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  %328 = load i32, ptr %250, align 8, !tbaa !197
  %329 = icmp ult i32 %328, %327
  br i1 %329, label %342, label %330, !prof !467

330:                                              ; preds = %325
  %331 = icmp eq i32 %328, %327
  br i1 %331, label %332, label %341, !prof !468

332:                                              ; preds = %330
  %333 = getelementptr inbounds %struct.prop_value_d, ptr %250, i64 0, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !199
  %335 = icmp ne ptr %334, null
  %336 = icmp ne ptr %326, null
  %337 = select i1 %335, i1 true, i1 %336, !prof !469
  br i1 %337, label %338, label %342, !prof !469

338:                                              ; preds = %332
  %339 = call i32 @operand_equal_p(ptr noundef %334, ptr noundef %326, i32 noundef 0) #18
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %342, !prof !470

341:                                              ; preds = %338, %330
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 478, ptr noundef nonnull @.str.3) #18
  br label %342

342:                                              ; preds = %325, %338, %332, %341
  %343 = load i32, ptr %250, align 8, !tbaa !197
  %344 = icmp eq i32 %343, %327
  br i1 %344, label %359, label %345, !prof !471

345:                                              ; preds = %342
  %346 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %347 = icmp eq ptr %346, null
  br i1 %347, label %355, label %348, !prof !472

348:                                              ; preds = %345
  %349 = load i32, ptr @dump_flags, align 4, !tbaa !164
  %350 = and i32 %349, 8
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %355, label %352

352:                                              ; preds = %348
  call fastcc void @dump_lattice_value(ptr noundef nonnull %346, ptr noundef nonnull @.str.18, i32 %327, ptr %326)
  %353 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %354 = call i64 @fwrite(ptr nonnull @.str.19, i64 33, i64 1, ptr %353)
  br label %355

355:                                              ; preds = %352, %348, %345
  store i32 %327, ptr %250, align 8, !tbaa.struct !226
  %356 = getelementptr inbounds i8, ptr %250, i64 8
  store ptr %326, ptr %356, align 8, !tbaa.struct !227
  %357 = icmp eq i32 %327, 1
  br i1 %357, label %358, label %359, !prof !473

358:                                              ; preds = %355
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 490, ptr noundef nonnull @.str.3) #18
  br label %359

359:                                              ; preds = %342, %358, %355
  %360 = phi i8 [ 1, %355 ], [ 1, %358 ], [ 0, %342 ]
  ret i8 %360
}

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, ptr } @evaluate_stmt(ptr noundef %0) unnamed_addr #10 !prof !476 !PGOFuncName !477 {
  %2 = alloca %struct.real_value, align 8
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 6
  %6 = trunc i32 %3 to i8
  switch i8 %6, label %7 [
    i8 8, label %8
    i8 6, label %8
    i8 5, label %8
    i8 1, label %8
  ], !prof !398

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 524, ptr noundef nonnull @.str.3) #18
  br label %8

8:                                                ; preds = %1, %1, %1, %7, %1
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 254
  %11 = add nsw i32 %10, -10
  %12 = icmp ult i32 %11, -4
  %13 = and i32 %9, 16384
  %14 = icmp eq i32 %13, 0
  %15 = or i1 %14, %12
  br i1 %15, label %16, label %436, !prof !399

16:                                               ; preds = %8
  %17 = and i32 %9, 255
  %18 = add nsw i32 %17, -10
  %19 = icmp ult i32 %18, -9
  br i1 %19, label %23, label %20, !prof !400

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !160
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi ptr [ %22, %20 ], [ null, %16 ]
  %25 = icmp eq ptr %24, null
  %26 = or i1 %12, %25
  br i1 %26, label %33, label %27, !prof !401

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !160
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31, !prof !402

31:                                               ; preds = %27
  %32 = load ptr, ptr %24, align 8, !tbaa !403
  br label %33

33:                                               ; preds = %23, %31, %27
  %34 = phi ptr [ %24, %23 ], [ %24, %27 ], [ %32, %31 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36, !prof !405

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.use_optype_d, ptr %34, i64 0, i32 1, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !406
  %39 = load ptr, ptr %38, align 8, !tbaa !149
  %40 = load ptr, ptr %34, align 8, !tbaa !403
  br label %41

41:                                               ; preds = %36, %33
  %42 = phi ptr [ %40, %36 ], [ %34, %33 ]
  %43 = phi i8 [ 0, %36 ], [ 1, %33 ]
  %44 = phi ptr [ %39, %36 ], [ null, %33 ]
  br i1 %35, label %310, label %45, !prof !407

45:                                               ; preds = %41, %305
  %46 = phi i8 [ %298, %305 ], [ 0, %41 ]
  %47 = phi i8 [ %296, %305 ], [ 0, %41 ]
  %48 = phi ptr [ %308, %305 ], [ %44, %41 ]
  %49 = phi i8 [ %295, %305 ], [ 1, %41 ]
  %50 = phi i8 [ %307, %305 ], [ %43, %41 ]
  %51 = phi ptr [ %306, %305 ], [ %42, %41 ]
  %52 = load ptr, ptr @const_val, align 8, !tbaa !149, !nonnull !408, !noundef !408
  %53 = getelementptr inbounds %struct.tree_ssa_name, ptr %48, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !160
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.prop_value_d, ptr %52, i64 %55
  %57 = load i32, ptr %56, align 8, !tbaa !197
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %213, !prof !215

59:                                               ; preds = %45
  %60 = getelementptr inbounds %struct.tree_ssa_name, ptr %48, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !160
  %62 = getelementptr inbounds %struct.tree_ssa_name, ptr %48, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !160
  %64 = load i32, ptr %63, align 8
  %65 = trunc i32 %64 to i8
  switch i8 %65, label %88 [
    i8 18, label %66
    i8 6, label %92
    i8 8, label %74
  ], !prof !216

66:                                               ; preds = %59
  %67 = call zeroext i8 @is_gimple_reg(ptr noundef %61) #18
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %73, label %69, !prof !217

69:                                               ; preds = %66
  %70 = load i64, ptr %61, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 34
  br i1 %72, label %73, label %209, !prof !218

73:                                               ; preds = %69, %66
  br label %209

74:                                               ; preds = %59
  %75 = and i32 %64, 255
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !164
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %79
  %81 = load i64, ptr %80, align 8, !tbaa !219
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %84

84:                                               ; preds = %83, %74
  %85 = getelementptr inbounds i8, ptr %63, i64 %81
  %86 = load ptr, ptr %85, align 8, !tbaa !149
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %84, %59
  %89 = load i32, ptr %63, align 8
  %90 = and i32 %89, 255
  %91 = icmp eq i32 %90, 16
  br i1 %91, label %92, label %209, !prof !220

92:                                               ; preds = %88, %84, %59
  %93 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %63) #18
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %208, label %95, !prof !221

95:                                               ; preds = %92
  %96 = load i32, ptr %63, align 8
  %97 = and i32 %96, 255
  %98 = add nsw i32 %97, -1
  %99 = icmp ult i32 %98, 9
  call void @llvm.assume(i1 %99)
  %100 = zext nneg i32 %97 to i64
  %101 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !164
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %103
  %105 = load i64, ptr %104, align 8, !tbaa !219
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108, !prof !222

107:                                              ; preds = %95
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %108

108:                                              ; preds = %107, %95
  %109 = getelementptr inbounds i8, ptr %63, i64 %105
  %110 = getelementptr inbounds ptr, ptr %109, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !149
  %112 = load i64, ptr %111, align 8
  %113 = and i64 %112, 65535
  %114 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !164
  %116 = icmp eq i32 %115, 3
  br i1 %116, label %117, label %208, !prof !223

117:                                              ; preds = %108
  %118 = load i32, ptr %63, align 8
  %119 = and i32 %118, 255
  %120 = add nsw i32 %119, -10
  %121 = icmp ult i32 %120, -9
  br i1 %121, label %135, label %122, !prof !224

122:                                              ; preds = %117
  %123 = zext nneg i32 %119 to i64
  %124 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !164
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %126
  %128 = load i64, ptr %127, align 8, !tbaa !219
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131, !prof !224

130:                                              ; preds = %122
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %131

131:                                              ; preds = %130, %122
  %132 = getelementptr inbounds i8, ptr %63, i64 %128
  %133 = getelementptr inbounds ptr, ptr %132, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !149
  br label %135

135:                                              ; preds = %131, %117
  %136 = phi ptr [ %134, %131 ], [ null, %117 ]
  %137 = load i64, ptr %136, align 8
  %138 = and i64 %137, 67108864
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %204, label %140, !prof !169

140:                                              ; preds = %135
  %141 = and i64 %137, 1048576
  %142 = icmp ne i64 %141, 0
  %143 = and i64 %137, 65535
  %144 = icmp eq i64 %143, 33
  %145 = or i1 %142, %144
  br i1 %145, label %146, label %204

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.tree_decl_common, ptr %136, i64 0, i32 5
  %148 = load ptr, ptr %147, align 8, !tbaa !160
  %149 = icmp eq ptr %148, null
  br i1 %149, label %178, label %150

150:                                              ; preds = %146
  %151 = call ptr @tree_strip_nop_conversions(ptr noundef nonnull %148) #18
  %152 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %151) #18
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %178, label %154

154:                                              ; preds = %150
  %155 = load i64, ptr %151, align 8
  %156 = and i64 %155, 65535
  %157 = icmp eq i64 %156, 121
  br i1 %157, label %158, label %201

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.tree_exp, ptr %151, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !160
  %161 = call ptr @get_base_address(ptr noundef %160) #18
  %162 = icmp eq ptr %161, null
  br i1 %162, label %201, label %163

163:                                              ; preds = %158
  %164 = load i64, ptr %161, align 8
  %165 = and i64 %164, 65535
  %166 = icmp eq i64 %165, 32
  br i1 %166, label %167, label %201

167:                                              ; preds = %163
  %168 = or i64 %164, 262144
  store i64 %168, ptr %161, align 8
  %169 = load ptr, ptr @cfun, align 8, !tbaa !149
  %170 = getelementptr inbounds %struct.function, ptr %169, i64 0, i32 3
  %171 = load ptr, ptr %170, align 8, !tbaa !170
  %172 = icmp eq ptr %171, null
  br i1 %172, label %201, label %173

173:                                              ; preds = %167
  %174 = load ptr, ptr %171, align 8, !tbaa !172
  %175 = icmp eq ptr %174, null
  br i1 %175, label %201, label %176

176:                                              ; preds = %173
  %177 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %161) #18
  br label %201

178:                                              ; preds = %150, %146
  %179 = phi ptr [ %151, %150 ], [ null, %146 ]
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %201

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.tree_decl_common, ptr %136, i64 0, i32 2
  %183 = load i64, ptr %182, align 8
  %184 = and i64 %183, 33554432
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %181
  %187 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !176
  %188 = call zeroext i8 %187(ptr noundef nonnull %136) #18
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %201, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.tree_common, ptr %136, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !160
  %193 = load i64, ptr %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = and i32 %194, 65534
  %196 = add nsw i32 %195, -6
  %197 = icmp ult i32 %196, 4
  br i1 %197, label %198, label %201

198:                                              ; preds = %190
  %199 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %200 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %192, ptr noundef %199) #18
  br label %201

201:                                              ; preds = %198, %190, %186, %181, %178, %176, %173, %167, %163, %158, %154
  %202 = phi ptr [ %200, %198 ], [ %151, %158 ], [ %151, %163 ], [ %151, %176 ], [ %151, %173 ], [ %151, %154 ], [ undef, %190 ], [ undef, %186 ], [ undef, %181 ], [ undef, %178 ], [ %151, %167 ]
  %203 = phi i1 [ false, %198 ], [ false, %158 ], [ false, %163 ], [ false, %176 ], [ false, %173 ], [ false, %154 ], [ true, %190 ], [ true, %186 ], [ true, %181 ], [ true, %178 ], [ false, %167 ]
  br i1 %203, label %204, label %205

204:                                              ; preds = %201, %140, %135
  br label %205

205:                                              ; preds = %204, %201
  %206 = phi ptr [ %202, %201 ], [ null, %204 ]
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %209, !prof !225

208:                                              ; preds = %205, %108, %92
  br label %209

209:                                              ; preds = %208, %205, %88, %73, %69
  %210 = phi ptr [ null, %73 ], [ null, %69 ], [ null, %208 ], [ %206, %205 ], [ null, %88 ]
  %211 = phi i32 [ 3, %73 ], [ 1, %69 ], [ 1, %208 ], [ 2, %205 ], [ 3, %88 ]
  store i32 %211, ptr %56, align 8, !tbaa.struct !226
  %212 = getelementptr inbounds i8, ptr %56, i64 8
  store ptr %210, ptr %212, align 8, !tbaa.struct !227
  br label %213

213:                                              ; preds = %209, %45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #18
  %214 = load i32, ptr %56, align 8, !tbaa !197
  %215 = icmp eq i32 %214, 2
  br i1 %215, label %216, label %292, !prof !228

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.prop_value_d, ptr %52, i64 %55, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !199
  %219 = load i64, ptr %218, align 8
  %220 = and i64 %219, 65535
  %221 = icmp eq i64 %220, 24
  br i1 %221, label %222, label %292, !prof !229

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.tree_real_cst, ptr %218, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %224, i64 32, i1 false), !tbaa.struct !230
  %225 = getelementptr inbounds %struct.tree_common, ptr %218, i64 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !160
  %227 = load i64, ptr %226, align 8
  %228 = and i64 %227, 65535
  %229 = icmp eq i64 %228, 14
  br i1 %229, label %230, label %232

230:                                              ; preds = %222
  %231 = call i32 @vector_type_mode(ptr noundef nonnull %226) #18
  br label %237

232:                                              ; preds = %222
  %233 = getelementptr inbounds %struct.tree_type, ptr %226, i64 0, i32 6
  %234 = load i32, ptr %233, align 4
  %235 = lshr i32 %234, 16
  %236 = and i32 %235, 255
  br label %237

237:                                              ; preds = %232, %230
  %238 = phi i32 [ %231, %230 ], [ %236, %232 ]
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %239
  %241 = load i8, ptr %240, align 1, !tbaa !160
  switch i8 %241, label %261 [
    i8 8, label %242
    i8 9, label %242
    i8 11, label %242
    i8 17, label %242
  ]

242:                                              ; preds = %237, %237, %237, %237
  %243 = and i8 %241, -2
  %244 = icmp eq i8 %243, 8
  br i1 %244, label %249, label %245

245:                                              ; preds = %242
  %246 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %239
  %247 = load i8, ptr %246, align 1, !tbaa !160
  %248 = zext i8 %247 to i32
  br label %249

249:                                              ; preds = %242, %245
  %250 = phi i32 [ %248, %245 ], [ %238, %242 ]
  %251 = add i32 %250, -38
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %252
  %254 = load ptr, ptr %253, align 8, !tbaa !149
  %255 = getelementptr inbounds %struct.real_format, ptr %254, i64 0, i32 14
  %256 = load i8, ptr %255, align 1, !tbaa !231
  %257 = icmp ne i8 %256, 0
  %258 = load i32, ptr @flag_signed_zeros, align 4
  %259 = icmp ne i32 %258, 0
  %260 = select i1 %257, i1 %259, i1 false
  br i1 %260, label %266, label %261

261:                                              ; preds = %249, %237
  %262 = call zeroext i8 @real_isnegzero(ptr noundef nonnull %2) #18
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %266, label %264

264:                                              ; preds = %261
  %265 = call ptr @build_real(ptr noundef nonnull %226, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #18
  br label %290

266:                                              ; preds = %261, %249
  switch i8 %241, label %286 [
    i8 8, label %267
    i8 9, label %267
    i8 11, label %267
    i8 17, label %267
  ]

267:                                              ; preds = %266, %266, %266, %266
  %268 = and i8 %241, -2
  %269 = icmp eq i8 %268, 8
  br i1 %269, label %274, label %270

270:                                              ; preds = %267
  %271 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %239
  %272 = load i8, ptr %271, align 1, !tbaa !160
  %273 = zext i8 %272 to i32
  br label %274

274:                                              ; preds = %267, %270
  %275 = phi i32 [ %273, %270 ], [ %238, %267 ]
  %276 = add i32 %275, -38
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %277
  %279 = load ptr, ptr %278, align 8, !tbaa !149
  %280 = getelementptr inbounds %struct.real_format, ptr %279, i64 0, i32 11
  %281 = load i8, ptr %280, align 2, !tbaa !233
  %282 = icmp eq i8 %281, 0
  %283 = load i32, ptr @flag_finite_math_only, align 4
  %284 = icmp ne i32 %283, 0
  %285 = select i1 %282, i1 true, i1 %284
  br i1 %285, label %286, label %292

286:                                              ; preds = %274, %266
  %287 = call zeroext i8 @real_isnan(ptr noundef nonnull %2) #18
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %286
  store i32 1, ptr %56, align 8, !tbaa !197
  br label %290

290:                                              ; preds = %264, %289
  %291 = phi ptr [ null, %289 ], [ %265, %264 ]
  store ptr %291, ptr %217, align 8, !tbaa !199
  br label %292

292:                                              ; preds = %290, %286, %274, %216, %213
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  %293 = load i32, ptr %56, align 8, !tbaa !197
  %294 = icmp eq i32 %293, 1
  %295 = select i1 %294, i8 %49, i8 0, !prof !409
  %296 = select i1 %294, i8 1, i8 %47, !prof !409
  %297 = icmp eq i32 %293, 2
  %298 = select i1 %297, i8 1, i8 %46, !prof !410
  %299 = icmp eq ptr %51, null
  br i1 %299, label %305, label %300, !prof !411

300:                                              ; preds = %292
  %301 = getelementptr inbounds %struct.use_optype_d, ptr %51, i64 0, i32 1, i32 3
  %302 = load ptr, ptr %301, align 8, !tbaa !406
  %303 = load ptr, ptr %302, align 8, !tbaa !149
  %304 = load ptr, ptr %51, align 8, !tbaa !403
  br label %305

305:                                              ; preds = %292, %300
  %306 = phi ptr [ %304, %300 ], [ %51, %292 ]
  %307 = phi i8 [ %50, %300 ], [ 1, %292 ]
  %308 = phi ptr [ %303, %300 ], [ null, %292 ]
  %309 = icmp eq i8 %307, 0
  br i1 %309, label %45, label %310, !prof !409, !llvm.loop !412

310:                                              ; preds = %305, %41
  %311 = phi i8 [ 1, %41 ], [ %295, %305 ]
  %312 = phi i8 [ 0, %41 ], [ %296, %305 ]
  %313 = phi i8 [ 0, %41 ], [ %298, %305 ]
  %314 = load i32, ptr %0, align 8
  %315 = and i32 %314, 255
  %316 = icmp eq i32 %315, 8
  %317 = select i1 %316, i32 2, i32 0, !prof !400
  %318 = icmp eq i32 %315, 6
  br i1 %316, label %319, label %332, !prof !400

319:                                              ; preds = %310
  %320 = zext nneg i32 %315 to i64
  %321 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %320
  %322 = load i32, ptr %321, align 4, !tbaa !164
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %323
  %325 = load i64, ptr %324, align 8, !tbaa !219
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %319
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %328

328:                                              ; preds = %327, %319
  %329 = getelementptr inbounds i8, ptr %0, i64 %325
  %330 = load ptr, ptr %329, align 8, !tbaa !149
  %331 = icmp ne ptr %330, null
  br label %332

332:                                              ; preds = %328, %310
  %333 = phi i1 [ %318, %310 ], [ %331, %328 ]
  %334 = zext i1 %333 to i32
  %335 = or disjoint i32 %317, %334
  %336 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %337 = load i32, ptr %336, align 4, !tbaa !160
  %338 = icmp ult i32 %335, %337
  br i1 %338, label %339, label %378, !prof !413

339:                                              ; preds = %332
  %340 = zext nneg i32 %335 to i64
  br label %341

341:                                              ; preds = %339, %372
  %342 = phi i64 [ %340, %339 ], [ %374, %372 ]
  %343 = phi i8 [ %313, %339 ], [ %373, %372 ]
  %344 = load i32, ptr %0, align 8
  %345 = and i32 %344, 255
  %346 = add nsw i32 %345, -10
  %347 = icmp ult i32 %346, -9
  br i1 %347, label %361, label %348, !prof !414

348:                                              ; preds = %341
  %349 = zext nneg i32 %345 to i64
  %350 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %349
  %351 = load i32, ptr %350, align 4, !tbaa !164
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %352
  %354 = load i64, ptr %353, align 8, !tbaa !219
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %356, label %357, !prof !414

356:                                              ; preds = %348
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %357

357:                                              ; preds = %356, %348
  %358 = getelementptr inbounds i8, ptr %0, i64 %354
  %359 = getelementptr inbounds ptr, ptr %358, i64 %342
  %360 = load ptr, ptr %359, align 8, !tbaa !149
  br label %361

361:                                              ; preds = %357, %341
  %362 = phi ptr [ %360, %357 ], [ null, %341 ]
  %363 = icmp eq ptr %362, null
  br i1 %363, label %372, label %364, !prof !415

364:                                              ; preds = %361
  %365 = load i64, ptr %362, align 8
  %366 = and i64 %365, 65535
  %367 = icmp eq i64 %366, 141
  br i1 %367, label %372, label %368, !prof !416

368:                                              ; preds = %364
  %369 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %362) #18
  %370 = icmp eq i8 %369, 0
  %371 = select i1 %370, i8 %343, i8 1, !prof !417
  br label %372

372:                                              ; preds = %368, %364, %361
  %373 = phi i8 [ %371, %368 ], [ %343, %364 ], [ %343, %361 ]
  %374 = add nuw nsw i64 %342, 1
  %375 = load i32, ptr %336, align 4, !tbaa !160
  %376 = zext i32 %375 to i64
  %377 = icmp ult i64 %374, %376
  br i1 %377, label %341, label %378, !prof !418, !llvm.loop !419

378:                                              ; preds = %372, %332
  %379 = phi i8 [ %313, %332 ], [ %373, %372 ]
  %380 = icmp eq i8 %379, 0
  %381 = icmp ne i8 %312, 0
  %382 = icmp ne i8 %311, 0
  %383 = select i1 %381, i1 %380, i1 false, !prof !400
  %384 = select i1 %383, i1 %382, i1 false, !prof !400
  br i1 %384, label %436, label %385, !prof !400

385:                                              ; preds = %378
  %386 = and i1 %5, %381
  br i1 %386, label %387, label %422, !prof !400

387:                                              ; preds = %385
  %388 = load i32, ptr %0, align 8
  %389 = trunc i32 %388 to i8
  switch i8 %389, label %392 [
    i8 6, label %390
    i8 1, label %390
    i8 8, label %393
  ]

390:                                              ; preds = %387, %387
  %391 = lshr i32 %388, 16
  br label %393

392:                                              ; preds = %387
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1446, ptr noundef nonnull @.str.3) #18
  br label %393

393:                                              ; preds = %392, %390, %387
  %394 = phi i32 [ %391, %390 ], [ 0, %392 ], [ 59, %387 ]
  %395 = zext nneg i32 %394 to i64
  %396 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %395
  %397 = load i8, ptr %396, align 1, !tbaa !160
  %398 = icmp eq i8 %397, 3
  br i1 %398, label %399, label %419

399:                                              ; preds = %393
  %400 = load i32, ptr %0, align 8
  %401 = and i32 %400, 255
  %402 = add nsw i32 %401, -1
  %403 = icmp ult i32 %402, 9
  call void @llvm.assume(i1 %403)
  %404 = zext nneg i32 %401 to i64
  %405 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %404
  %406 = load i32, ptr %405, align 4, !tbaa !164
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %407
  %409 = load i64, ptr %408, align 8, !tbaa !219
  %410 = icmp eq i64 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %399
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %412

412:                                              ; preds = %411, %399
  %413 = getelementptr inbounds i8, ptr %0, i64 %409
  %414 = getelementptr inbounds ptr, ptr %413, i64 1
  %415 = load ptr, ptr %414, align 8, !tbaa !149
  %416 = load i64, ptr %415, align 8
  %417 = trunc i64 %416 to i32
  %418 = and i32 %417, 65535
  br label %419

419:                                              ; preds = %412, %393
  %420 = phi i32 [ %418, %412 ], [ %394, %393 ]
  %421 = trunc i32 %420 to i16
  switch i16 %421, label %422 [
    i16 63, label %436
    i16 64, label %436
    i16 66, label %436
  ]

422:                                              ; preds = %419, %385
  %423 = icmp eq i8 %312, 0
  %424 = select i1 %423, i1 %380, i1 false, !prof !399
  %425 = select i1 %423, i32 2, i32 3, !prof !399
  br i1 %424, label %426, label %436, !prof !420

426:                                              ; preds = %422
  %427 = load i32, ptr %0, align 8
  %428 = and i32 %427, 254
  %429 = add nsw i32 %428, -10
  %430 = icmp ult i32 %429, -4
  br i1 %430, label %436, label %431, !prof !421

431:                                              ; preds = %426
  %432 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %433 = load ptr, ptr %432, align 8, !tbaa !160
  %434 = icmp eq ptr %433, null
  %435 = select i1 %434, i32 3, i32 2, !prof !422
  br label %436

436:                                              ; preds = %419, %419, %426, %431, %8, %378, %419, %422
  %437 = phi i32 [ 3, %8 ], [ 1, %378 ], [ 1, %419 ], [ %425, %422 ], [ 3, %426 ], [ %435, %431 ], [ 1, %419 ], [ 1, %419 ]
  call void @fold_defer_overflow_warnings() #18
  switch i32 %437, label %510 [
    i32 2, label %438
    i32 3, label %440
  ], !prof !423

438:                                              ; preds = %436
  %439 = call fastcc ptr @ccp_fold(ptr noundef nonnull %0)
  br label %510

440:                                              ; preds = %436
  %441 = load i32, ptr %0, align 8
  %442 = and i32 %441, 255
  %443 = trunc i32 %441 to i8
  switch i8 %443, label %509 [
    i8 6, label %444
    i8 5, label %494
    i8 8, label %510
    i8 1, label %510
  ], !prof !424

444:                                              ; preds = %440
  %445 = lshr i32 %441, 16
  %446 = zext nneg i32 %445 to i64
  %447 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %446
  %448 = load i8, ptr %447, align 1, !tbaa !160
  %449 = icmp eq i8 %448, 3
  br i1 %449, label %450, label %470, !prof !425

450:                                              ; preds = %444
  %451 = load i32, ptr %0, align 8
  %452 = and i32 %451, 255
  %453 = add nsw i32 %452, -1
  %454 = icmp ult i32 %453, 9
  call void @llvm.assume(i1 %454)
  %455 = zext nneg i32 %452 to i64
  %456 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %455
  %457 = load i32, ptr %456, align 4, !tbaa !164
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %458
  %460 = load i64, ptr %459, align 8, !tbaa !219
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %462, label %463, !prof !426

462:                                              ; preds = %450
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %463

463:                                              ; preds = %462, %450
  %464 = getelementptr inbounds i8, ptr %0, i64 %460
  %465 = getelementptr inbounds ptr, ptr %464, i64 1
  %466 = load ptr, ptr %465, align 8, !tbaa !149
  %467 = load i64, ptr %466, align 8
  %468 = trunc i64 %467 to i32
  %469 = and i32 %468, 65535
  br label %470

470:                                              ; preds = %444, %463
  %471 = phi i32 [ %469, %463 ], [ %445, %444 ]
  %472 = zext nneg i32 %471 to i64
  %473 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %472
  %474 = load i8, ptr %473, align 1, !tbaa !160
  %475 = icmp eq i8 %474, 3
  br i1 %475, label %476, label %510, !prof !425

476:                                              ; preds = %470
  %477 = load i32, ptr %0, align 8
  %478 = and i32 %477, 255
  %479 = add nsw i32 %478, -10
  %480 = icmp ult i32 %479, -9
  br i1 %480, label %510, label %481, !prof !426

481:                                              ; preds = %476
  %482 = zext nneg i32 %478 to i64
  %483 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %482
  %484 = load i32, ptr %483, align 4, !tbaa !164
  %485 = zext i32 %484 to i64
  %486 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %485
  %487 = load i64, ptr %486, align 8, !tbaa !219
  %488 = icmp eq i64 %487, 0
  br i1 %488, label %489, label %490, !prof !426

489:                                              ; preds = %481
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %490

490:                                              ; preds = %489, %481
  %491 = getelementptr inbounds i8, ptr %0, i64 %487
  %492 = getelementptr inbounds ptr, ptr %491, i64 1
  %493 = load ptr, ptr %492, align 8, !tbaa !149
  br label %510

494:                                              ; preds = %440
  %495 = add nsw i32 %442, -10
  %496 = icmp ult i32 %495, -9
  br i1 %496, label %510, label %497, !prof !427

497:                                              ; preds = %494
  %498 = zext nneg i32 %442 to i64
  %499 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %498
  %500 = load i32, ptr %499, align 4, !tbaa !164
  %501 = zext i32 %500 to i64
  %502 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %501
  %503 = load i64, ptr %502, align 8, !tbaa !219
  %504 = icmp eq i64 %503, 0
  br i1 %504, label %505, label %506, !prof !427

505:                                              ; preds = %497
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %506

506:                                              ; preds = %505, %497
  %507 = getelementptr inbounds i8, ptr %0, i64 %503
  %508 = load ptr, ptr %507, align 8, !tbaa !149
  br label %510

509:                                              ; preds = %440
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1434, ptr noundef nonnull @.str.3) #18
  br label %510

510:                                              ; preds = %440, %506, %494, %490, %476, %440, %509, %470, %436, %438
  %511 = phi ptr [ %439, %438 ], [ null, %436 ], [ null, %509 ], [ null, %470 ], [ null, %440 ], [ %493, %490 ], [ null, %476 ], [ %508, %506 ], [ null, %494 ], [ null, %440 ]
  %512 = icmp eq ptr %511, null
  br i1 %512, label %517, label %513, !prof !428

513:                                              ; preds = %510
  %514 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %511) #18
  %515 = icmp ne i8 %514, 0
  %516 = zext i1 %515 to i8
  br label %517

517:                                              ; preds = %513, %510
  %518 = phi i8 [ 0, %510 ], [ %516, %513 ]
  call void @fold_undefer_overflow_warnings(i8 noundef zeroext %518, ptr noundef nonnull %0, i32 noundef 0) #18
  %519 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %520 = icmp eq ptr %519, null
  br i1 %520, label %538, label %521, !prof !399

521:                                              ; preds = %517
  %522 = load i32, ptr @dump_flags, align 4, !tbaa !164
  %523 = and i32 %522, 8
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %538, label %525

525:                                              ; preds = %521
  %526 = call i64 @fwrite(ptr nonnull @.str.14, i64 16, i64 1, ptr nonnull %519)
  %527 = load ptr, ptr @dump_file, align 8, !tbaa !149
  switch i32 %437, label %534 [
    i32 2, label %528
    i32 1, label %530
    i32 3, label %532
  ]

528:                                              ; preds = %525
  %529 = call i64 @fwrite(ptr nonnull @.str.15, i64 8, i64 1, ptr %527)
  br label %535

530:                                              ; preds = %525
  %531 = call i64 @fwrite(ptr nonnull @.str.16, i64 9, i64 1, ptr %527)
  br label %535

532:                                              ; preds = %525
  %533 = call i64 @fwrite(ptr nonnull @.str.17, i64 7, i64 1, ptr %527)
  br label %535

534:                                              ; preds = %525
  unreachable

535:                                              ; preds = %532, %530, %528
  %536 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %537 = call i32 @fputc(i32 10, ptr %536)
  br label %538

538:                                              ; preds = %535, %521, %517
  %539 = icmp eq i8 %518, 0
  %540 = icmp eq i32 %437, 1
  %541 = select i1 %540, i32 1, i32 3, !prof !400
  %542 = select i1 %539, i32 %541, i32 2, !prof !465
  %543 = select i1 %539, ptr null, ptr %511, !prof !465
  %544 = insertvalue { i32, ptr } poison, i32 %542, 0
  %545 = insertvalue { i32, ptr } %544, ptr %543, 1
  ret { i32, ptr } %545
}

declare void @fold_defer_overflow_warnings() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @ccp_fold(ptr noundef %0) unnamed_addr #10 !prof !478 !PGOFuncName !479 {
  %2 = alloca %struct.real_value, align 8
  %3 = alloca %struct.real_value, align 8
  %4 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !160
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 255
  %8 = trunc i32 %6 to i8
  switch i8 %8, label %1292 [
    i8 6, label %9
    i8 8, label %830
    i8 1, label %960
    i8 5, label %1268
  ], !prof !480

9:                                                ; preds = %1
  %10 = lshr i32 %6, 16
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !160
  %14 = icmp eq i8 %13, 3
  br i1 %14, label %15, label %35, !prof !481

15:                                               ; preds = %9
  %16 = load i32, ptr %0, align 8
  %17 = and i32 %16, 255
  %18 = add nsw i32 %17, -1
  %19 = icmp ult i32 %18, 9
  tail call void @llvm.assume(i1 %19)
  %20 = zext nneg i32 %17 to i64
  %21 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !164
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !219
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28, !prof !482

27:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %28

28:                                               ; preds = %27, %15
  %29 = getelementptr inbounds i8, ptr %0, i64 %25
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !149
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 65535
  br label %35

35:                                               ; preds = %9, %28
  %36 = phi i32 [ %34, %28 ], [ %10, %9 ]
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !160
  switch i8 %39, label %826 [
    i8 3, label %40
    i8 2, label %309
    i8 1, label %390
  ], !prof !483

40:                                               ; preds = %35
  %41 = load i32, ptr %0, align 8
  %42 = and i32 %41, 255
  %43 = add nsw i32 %42, -1
  %44 = icmp ult i32 %43, 9
  tail call void @llvm.assume(i1 %44)
  %45 = zext nneg i32 %42 to i64
  %46 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !164
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !219
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53, !prof !482

52:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %53

53:                                               ; preds = %52, %40
  %54 = getelementptr inbounds i8, ptr %0, i64 %50
  %55 = getelementptr inbounds ptr, ptr %54, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !149
  %57 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %37
  %58 = load i32, ptr %57, align 4, !tbaa !164
  %59 = load i64, ptr %56, align 8
  %60 = trunc i64 %59 to i16
  switch i16 %60, label %169 [
    i16 141, label %61
    i16 121, label %65
    i16 51, label %105
  ], !prof !484

61:                                               ; preds = %53
  %62 = tail call fastcc ptr @get_value(ptr noundef %56)
  %63 = getelementptr inbounds %struct.prop_value_d, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !199
  br label %827

65:                                               ; preds = %53, %71
  %66 = phi ptr [ %68, %71 ], [ %56, %53 ]
  %67 = getelementptr inbounds %struct.tree_exp, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !149
  %69 = load i64, ptr %68, align 8
  %70 = trunc i64 %69 to i16
  switch i16 %70, label %72 [
    i16 42, label %71
    i16 41, label %71
    i16 45, label %71
    i16 46, label %71
    i16 118, label %71
    i16 43, label %71
    i16 44, label %71
  ]

71:                                               ; preds = %65, %65, %65, %65, %65, %65, %65
  br label %65, !llvm.loop !485

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.tree_exp, ptr %66, i64 0, i32 3
  %74 = and i64 %69, 65535
  %75 = icmp eq i64 %74, 47
  br i1 %75, label %76, label %102

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.tree_exp, ptr %68, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !160
  %79 = load i64, ptr %78, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 141
  br i1 %81, label %82, label %102

82:                                               ; preds = %76
  %83 = tail call fastcc ptr @get_value(ptr noundef nonnull %78)
  %84 = load i32, ptr %83, align 8, !tbaa !197
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.prop_value_d, ptr %83, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !199
  %89 = load i64, ptr %88, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 121
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load ptr, ptr %73, align 8, !tbaa !149
  %94 = tail call zeroext i8 @may_propagate_address_into_dereference(ptr noundef nonnull %88, ptr noundef %93)
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %73, align 8, !tbaa !149
  %98 = load ptr, ptr %87, align 8, !tbaa !199
  %99 = getelementptr inbounds %struct.tree_exp, ptr %98, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !160
  store ptr %100, ptr %73, align 8, !tbaa !149
  %101 = tail call ptr @unshare_expr(ptr noundef %56) #18
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef %101) #18
  store ptr %97, ptr %73, align 8, !tbaa !149
  br label %102

102:                                              ; preds = %96, %92, %86, %82, %72, %76
  %103 = phi i1 [ true, %76 ], [ true, %72 ], [ false, %96 ], [ true, %92 ], [ true, %86 ], [ true, %82 ]
  %104 = phi ptr [ undef, %76 ], [ undef, %72 ], [ %101, %96 ], [ undef, %92 ], [ undef, %86 ], [ undef, %82 ]
  br i1 %103, label %169, label %827

105:                                              ; preds = %53
  %106 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !160
  %108 = load i64, ptr %107, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 14
  br i1 %110, label %111, label %169

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.tree_constructor, ptr %56, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !160
  %114 = icmp eq ptr %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load i32, ptr %113, align 8, !tbaa !200
  %117 = zext i32 %116 to i64
  br label %118

118:                                              ; preds = %111, %115
  %119 = phi i64 [ %117, %115 ], [ 0, %111 ]
  %120 = getelementptr inbounds %struct.tree_type, ptr %107, i64 0, i32 6
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %121, 1023
  %123 = zext nneg i32 %122 to i64
  %124 = shl nuw i64 1, %123
  %125 = icmp eq i64 %124, %119
  br i1 %125, label %126, label %169

126:                                              ; preds = %118, %162
  %127 = phi i64 [ %164, %162 ], [ 0, %118 ]
  %128 = phi ptr [ %163, %162 ], [ null, %118 ]
  %129 = phi ptr [ %156, %162 ], [ undef, %118 ]
  %130 = load ptr, ptr %112, align 8, !tbaa !160
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %126
  %133 = load i32, ptr %130, align 8, !tbaa !200
  br label %134

134:                                              ; preds = %126, %132
  %135 = phi i32 [ %133, %132 ], [ 0, %126 ]
  %136 = zext i32 %135 to i64
  %137 = icmp ult i64 %127, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %130, i64 0, i32 2, i64 %127, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !202
  br label %141

141:                                              ; preds = %134, %138
  %142 = phi ptr [ %129, %134 ], [ %140, %138 ]
  br i1 %137, label %143, label %165

143:                                              ; preds = %141
  %144 = load i64, ptr %142, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 141
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  %148 = tail call fastcc ptr @get_value(ptr noundef nonnull %142)
  %149 = load i32, ptr %148, align 8, !tbaa !197
  %150 = icmp eq i32 %149, 2
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = tail call fastcc ptr @get_value(ptr noundef nonnull %142)
  %153 = getelementptr inbounds %struct.prop_value_d, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !199
  br label %155

155:                                              ; preds = %151, %147, %143
  %156 = phi ptr [ %154, %151 ], [ %142, %147 ], [ %142, %143 ]
  %157 = load i64, ptr %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = and i32 %158, 65535
  %160 = add nsw i32 %159, -23
  %161 = icmp ult i32 %160, 3
  br i1 %161, label %162, label %827

162:                                              ; preds = %155
  %163 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %156, ptr noundef %128) #18
  %164 = add nuw nsw i64 %127, 1
  br label %126, !llvm.loop !486

165:                                              ; preds = %141
  %166 = load ptr, ptr %106, align 8, !tbaa !160
  %167 = tail call ptr @nreverse(ptr noundef %128) #18
  %168 = tail call ptr @build_vector(ptr noundef %166, ptr noundef %167) #18
  br label %827

169:                                              ; preds = %53, %102, %118, %105
  %170 = phi ptr [ %104, %102 ], [ undef, %118 ], [ undef, %105 ], [ undef, %53 ]
  switch i32 %58, label %827 [
    i32 4, label %171
    i32 3, label %240
  ], !prof !487

171:                                              ; preds = %169
  %172 = load i64, ptr %56, align 8
  %173 = trunc i64 %172 to i16
  switch i16 %173, label %205 [
    i16 118, label %174
    i16 43, label %174
    i16 44, label %174
  ], !prof !488

174:                                              ; preds = %171, %171, %171
  %175 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !160
  %177 = load i64, ptr %176, align 8
  %178 = and i64 %177, 65535
  %179 = icmp eq i64 %178, 141
  br i1 %179, label %180, label %205

180:                                              ; preds = %174
  %181 = tail call fastcc ptr @get_value(ptr noundef nonnull %176)
  %182 = load i32, ptr %181, align 8, !tbaa !197
  %183 = icmp eq i32 %182, 2
  br i1 %183, label %184, label %203

184:                                              ; preds = %180
  %185 = load i64, ptr %56, align 8
  %186 = and i64 %185, 65535
  %187 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !164
  %189 = add i32 %188, -4
  %190 = icmp ult i32 %189, 7
  br i1 %190, label %191, label %194

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 0, i32 1
  %193 = load i32, ptr %192, align 8, !tbaa !160
  br label %194

194:                                              ; preds = %184, %191
  %195 = phi i32 [ %193, %191 ], [ 0, %184 ]
  %196 = trunc i64 %185 to i32
  %197 = and i32 %196, 65535
  %198 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !160
  %200 = getelementptr inbounds %struct.prop_value_d, ptr %181, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !199
  %202 = tail call ptr @fold_unary_loc(i32 noundef %195, i32 noundef %197, ptr noundef %199, ptr noundef %201) #18
  br label %203

203:                                              ; preds = %180, %194
  %204 = phi ptr [ %202, %194 ], [ %170, %180 ]
  br i1 %183, label %827, label %237

205:                                              ; preds = %171, %174
  %206 = and i64 %172, 65535
  %207 = icmp eq i64 %206, 47
  br i1 %207, label %208, label %237, !prof !489

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 0, i32 3
  %210 = load ptr, ptr %209, align 8, !tbaa !160
  %211 = load i64, ptr %210, align 8
  %212 = and i64 %211, 65535
  %213 = icmp eq i64 %212, 141
  br i1 %213, label %214, label %237, !prof !189

214:                                              ; preds = %208
  %215 = tail call fastcc ptr @get_value(ptr noundef nonnull %210)
  %216 = load i32, ptr %215, align 8, !tbaa !197
  %217 = icmp eq i32 %216, 2
  br i1 %217, label %218, label %237, !prof !190

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.prop_value_d, ptr %215, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !199
  %221 = load i64, ptr %220, align 8
  %222 = and i64 %221, 65535
  %223 = icmp eq i64 %222, 121
  br i1 %223, label %224, label %237

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !160
  %227 = getelementptr inbounds %struct.tree_common, ptr %220, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !160
  %229 = getelementptr inbounds %struct.tree_common, ptr %228, i64 0, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !160
  %231 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %226, ptr noundef %230) #18
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %224
  %234 = load ptr, ptr %219, align 8, !tbaa !199
  %235 = getelementptr inbounds %struct.tree_exp, ptr %234, i64 0, i32 3
  %236 = load ptr, ptr %235, align 8, !tbaa !160
  br label %237

237:                                              ; preds = %214, %218, %224, %233, %205, %208, %203
  %238 = phi ptr [ %56, %203 ], [ %56, %208 ], [ %56, %205 ], [ %236, %233 ], [ %56, %224 ], [ %56, %218 ], [ %56, %214 ]
  %239 = tail call ptr @fold_const_aggregate_ref(ptr noundef %238)
  br label %827

240:                                              ; preds = %169
  %241 = load i64, ptr %56, align 8
  %242 = and i64 %241, 67108864
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %308, label %244, !prof !169

244:                                              ; preds = %240
  %245 = and i64 %241, 1048576
  %246 = icmp ne i64 %245, 0
  %247 = and i64 %241, 65535
  %248 = icmp eq i64 %247, 33
  %249 = or i1 %246, %248
  br i1 %249, label %250, label %308

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.tree_decl_common, ptr %56, i64 0, i32 5
  %252 = load ptr, ptr %251, align 8, !tbaa !160
  %253 = icmp eq ptr %252, null
  br i1 %253, label %282, label %254

254:                                              ; preds = %250
  %255 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %252) #18
  %256 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %255) #18
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %282, label %258

258:                                              ; preds = %254
  %259 = load i64, ptr %255, align 8
  %260 = and i64 %259, 65535
  %261 = icmp eq i64 %260, 121
  br i1 %261, label %262, label %305

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.tree_exp, ptr %255, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !160
  %265 = tail call ptr @get_base_address(ptr noundef %264) #18
  %266 = icmp eq ptr %265, null
  br i1 %266, label %305, label %267

267:                                              ; preds = %262
  %268 = load i64, ptr %265, align 8
  %269 = and i64 %268, 65535
  %270 = icmp eq i64 %269, 32
  br i1 %270, label %271, label %305

271:                                              ; preds = %267
  %272 = or i64 %268, 262144
  store i64 %272, ptr %265, align 8
  %273 = load ptr, ptr @cfun, align 8, !tbaa !149
  %274 = getelementptr inbounds %struct.function, ptr %273, i64 0, i32 3
  %275 = load ptr, ptr %274, align 8, !tbaa !170
  %276 = icmp eq ptr %275, null
  br i1 %276, label %305, label %277

277:                                              ; preds = %271
  %278 = load ptr, ptr %275, align 8, !tbaa !172
  %279 = icmp eq ptr %278, null
  br i1 %279, label %305, label %280

280:                                              ; preds = %277
  %281 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %265) #18
  br label %305

282:                                              ; preds = %254, %250
  %283 = phi ptr [ %255, %254 ], [ null, %250 ]
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %305

285:                                              ; preds = %282
  %286 = getelementptr inbounds %struct.tree_decl_common, ptr %56, i64 0, i32 2
  %287 = load i64, ptr %286, align 8
  %288 = and i64 %287, 33554432
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %305

290:                                              ; preds = %285
  %291 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !176
  %292 = tail call zeroext i8 %291(ptr noundef nonnull %56) #18
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %305, label %294

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  %296 = load ptr, ptr %295, align 8, !tbaa !160
  %297 = load i64, ptr %296, align 8
  %298 = trunc i64 %297 to i32
  %299 = and i32 %298, 65534
  %300 = add nsw i32 %299, -6
  %301 = icmp ult i32 %300, 4
  br i1 %301, label %302, label %305

302:                                              ; preds = %294
  %303 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %304 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %296, ptr noundef %303) #18
  br label %305

305:                                              ; preds = %302, %294, %290, %285, %282, %280, %277, %271, %267, %262, %258
  %306 = phi ptr [ %304, %302 ], [ %255, %262 ], [ %255, %267 ], [ %255, %280 ], [ %255, %277 ], [ %255, %258 ], [ undef, %294 ], [ undef, %290 ], [ undef, %285 ], [ undef, %282 ], [ %255, %271 ]
  %307 = phi i1 [ false, %302 ], [ false, %262 ], [ false, %267 ], [ false, %280 ], [ false, %277 ], [ false, %258 ], [ true, %294 ], [ true, %290 ], [ true, %285 ], [ true, %282 ], [ false, %271 ]
  br i1 %307, label %308, label %827

308:                                              ; preds = %305, %244, %240
  br label %827

309:                                              ; preds = %35
  %310 = load i32, ptr %0, align 8
  %311 = and i32 %310, 255
  %312 = add nsw i32 %311, -10
  %313 = icmp ult i32 %312, -9
  br i1 %313, label %326, label %314

314:                                              ; preds = %309
  %315 = zext nneg i32 %311 to i64
  %316 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %315
  %317 = load i32, ptr %316, align 4, !tbaa !164
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %318
  %320 = load i64, ptr %319, align 8, !tbaa !219
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %314
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %323

323:                                              ; preds = %322, %314
  %324 = getelementptr inbounds i8, ptr %0, i64 %320
  %325 = load ptr, ptr %324, align 8, !tbaa !149
  br label %326

326:                                              ; preds = %309, %323
  %327 = phi ptr [ %325, %323 ], [ null, %309 ]
  %328 = load i32, ptr %0, align 8
  %329 = and i32 %328, 255
  %330 = add nsw i32 %329, -1
  %331 = icmp ult i32 %330, 9
  tail call void @llvm.assume(i1 %331)
  %332 = zext nneg i32 %329 to i64
  %333 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %332
  %334 = load i32, ptr %333, align 4, !tbaa !164
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %335
  %337 = load i64, ptr %336, align 8, !tbaa !219
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %326
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %340

340:                                              ; preds = %339, %326
  %341 = getelementptr inbounds i8, ptr %0, i64 %337
  %342 = getelementptr inbounds ptr, ptr %341, i64 1
  %343 = load ptr, ptr %342, align 8, !tbaa !149
  %344 = load i64, ptr %343, align 8
  %345 = and i64 %344, 65535
  %346 = icmp eq i64 %345, 141
  br i1 %346, label %347, label %355

347:                                              ; preds = %340
  %348 = tail call fastcc ptr @get_value(ptr noundef nonnull %343)
  %349 = load i32, ptr %348, align 8, !tbaa !197
  %350 = icmp eq i32 %349, 2
  br i1 %350, label %351, label %355

351:                                              ; preds = %347
  %352 = tail call fastcc ptr @get_value(ptr noundef nonnull %343)
  %353 = getelementptr inbounds %struct.prop_value_d, ptr %352, i64 0, i32 1
  %354 = load ptr, ptr %353, align 8, !tbaa !199
  br label %355

355:                                              ; preds = %347, %351, %340
  %356 = phi ptr [ %343, %340 ], [ %354, %351 ], [ %343, %347 ]
  %357 = trunc i32 %36 to i16
  switch i16 %357, label %387 [
    i16 116, label %358
    i16 113, label %358
  ]

358:                                              ; preds = %355, %355
  %359 = getelementptr inbounds %struct.tree_common, ptr %327, i64 0, i32 2
  %360 = load ptr, ptr %359, align 8, !tbaa !160
  %361 = load i64, ptr %360, align 8
  %362 = trunc i64 %361 to i16
  switch i16 %362, label %387 [
    i16 10, label %363
    i16 12, label %363
  ]

363:                                              ; preds = %358, %358
  %364 = getelementptr inbounds %struct.tree_common, ptr %356, i64 0, i32 2
  %365 = load ptr, ptr %364, align 8, !tbaa !160
  %366 = load i64, ptr %365, align 8
  %367 = trunc i64 %366 to i16
  switch i16 %367, label %387 [
    i16 10, label %368
    i16 12, label %368
  ]

368:                                              ; preds = %363, %363
  %369 = getelementptr inbounds %struct.tree_common, ptr %360, i64 0, i32 2
  %370 = load ptr, ptr %369, align 8, !tbaa !160
  %371 = load i64, ptr %370, align 8
  %372 = getelementptr inbounds %struct.tree_common, ptr %365, i64 0, i32 2
  %373 = load ptr, ptr %372, align 8, !tbaa !160
  %374 = load i64, ptr %373, align 8
  %375 = xor i64 %374, %371
  %376 = and i64 %375, 524288
  %377 = icmp eq i64 %376, 0
  br i1 %377, label %378, label %387

378:                                              ; preds = %368
  %379 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef nonnull %360, ptr noundef nonnull %365) #18
  %380 = icmp eq i8 %379, 0
  br i1 %380, label %381, label %386

381:                                              ; preds = %378
  %382 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %383 = load ptr, ptr %359, align 8, !tbaa !160
  %384 = tail call ptr @maybe_fold_offset_to_address(i32 noundef %5, ptr noundef %356, ptr noundef %382, ptr noundef %383)
  %385 = icmp eq ptr %384, null
  br i1 %385, label %386, label %827

386:                                              ; preds = %381, %378
  br label %827

387:                                              ; preds = %368, %363, %358, %355
  %388 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0)
  %389 = tail call ptr @fold_unary_ignore_overflow_loc(i32 noundef %5, i32 noundef %36, ptr noundef %388, ptr noundef %356) #18
  br label %827

390:                                              ; preds = %35
  %391 = load i32, ptr %0, align 8
  %392 = and i32 %391, 255
  %393 = add nsw i32 %392, -10
  %394 = icmp ult i32 %393, -9
  br i1 %394, label %408, label %395, !prof !490

395:                                              ; preds = %390
  %396 = zext nneg i32 %392 to i64
  %397 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %396
  %398 = load i32, ptr %397, align 4, !tbaa !164
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %399
  %401 = load i64, ptr %400, align 8, !tbaa !219
  %402 = icmp eq i64 %401, 0
  br i1 %402, label %403, label %404, !prof !490

403:                                              ; preds = %395
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %404

404:                                              ; preds = %403, %395
  %405 = getelementptr inbounds i8, ptr %0, i64 %401
  %406 = getelementptr inbounds ptr, ptr %405, i64 1
  %407 = load ptr, ptr %406, align 8, !tbaa !149
  br label %408

408:                                              ; preds = %390, %404
  %409 = phi ptr [ %407, %404 ], [ null, %390 ]
  %410 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %411 = load i32, ptr %410, align 4, !tbaa !160
  %412 = icmp ugt i32 %411, 2
  br i1 %412, label %413, label %431, !prof !491

413:                                              ; preds = %408
  %414 = load i32, ptr %0, align 8
  %415 = and i32 %414, 255
  %416 = add nsw i32 %415, -10
  %417 = icmp ult i32 %416, -9
  br i1 %417, label %431, label %418, !prof !490

418:                                              ; preds = %413
  %419 = zext nneg i32 %415 to i64
  %420 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %419
  %421 = load i32, ptr %420, align 4, !tbaa !164
  %422 = zext i32 %421 to i64
  %423 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %422
  %424 = load i64, ptr %423, align 8, !tbaa !219
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %426, label %427, !prof !490

426:                                              ; preds = %418
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %427

427:                                              ; preds = %426, %418
  %428 = getelementptr inbounds i8, ptr %0, i64 %424
  %429 = getelementptr inbounds ptr, ptr %428, i64 2
  %430 = load ptr, ptr %429, align 8, !tbaa !149
  br label %431

431:                                              ; preds = %408, %413, %427
  %432 = phi ptr [ null, %408 ], [ %430, %427 ], [ null, %413 ]
  %433 = load i64, ptr %409, align 8
  %434 = and i64 %433, 65535
  %435 = icmp eq i64 %434, 141
  br i1 %435, label %436, label %687, !prof !492

436:                                              ; preds = %431
  %437 = load ptr, ptr @const_val, align 8, !tbaa !149
  %438 = icmp eq ptr %437, null
  br i1 %438, label %680, label %439, !prof !214

439:                                              ; preds = %436
  %440 = getelementptr inbounds %struct.tree_ssa_name, ptr %409, i64 0, i32 3
  %441 = load i32, ptr %440, align 8, !tbaa !160
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds %struct.prop_value_d, ptr %437, i64 %442
  %444 = load i32, ptr %443, align 8, !tbaa !197
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %600, !prof !215

446:                                              ; preds = %439
  %447 = getelementptr inbounds %struct.tree_ssa_name, ptr %409, i64 0, i32 1
  %448 = load ptr, ptr %447, align 8, !tbaa !160
  %449 = getelementptr inbounds %struct.tree_ssa_name, ptr %409, i64 0, i32 2
  %450 = load ptr, ptr %449, align 8, !tbaa !160
  %451 = load i32, ptr %450, align 8
  %452 = trunc i32 %451 to i8
  switch i8 %452, label %475 [
    i8 18, label %453
    i8 6, label %479
    i8 8, label %461
  ], !prof !216

453:                                              ; preds = %446
  %454 = tail call zeroext i8 @is_gimple_reg(ptr noundef %448) #18
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %460, label %456, !prof !217

456:                                              ; preds = %453
  %457 = load i64, ptr %448, align 8
  %458 = and i64 %457, 65535
  %459 = icmp eq i64 %458, 34
  br i1 %459, label %460, label %596, !prof !218

460:                                              ; preds = %456, %453
  br label %596

461:                                              ; preds = %446
  %462 = and i32 %451, 255
  %463 = zext nneg i32 %462 to i64
  %464 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %463
  %465 = load i32, ptr %464, align 4, !tbaa !164
  %466 = zext i32 %465 to i64
  %467 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %466
  %468 = load i64, ptr %467, align 8, !tbaa !219
  %469 = icmp eq i64 %468, 0
  br i1 %469, label %470, label %471

470:                                              ; preds = %461
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %471

471:                                              ; preds = %470, %461
  %472 = getelementptr inbounds i8, ptr %450, i64 %468
  %473 = load ptr, ptr %472, align 8, !tbaa !149
  %474 = icmp eq ptr %473, null
  br i1 %474, label %475, label %479

475:                                              ; preds = %471, %446
  %476 = load i32, ptr %450, align 8
  %477 = and i32 %476, 255
  %478 = icmp eq i32 %477, 16
  br i1 %478, label %479, label %596, !prof !220

479:                                              ; preds = %475, %471, %446
  %480 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %450) #18
  %481 = icmp eq i8 %480, 0
  br i1 %481, label %595, label %482, !prof !221

482:                                              ; preds = %479
  %483 = load i32, ptr %450, align 8
  %484 = and i32 %483, 255
  %485 = add nsw i32 %484, -1
  %486 = icmp ult i32 %485, 9
  tail call void @llvm.assume(i1 %486)
  %487 = zext nneg i32 %484 to i64
  %488 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %487
  %489 = load i32, ptr %488, align 4, !tbaa !164
  %490 = zext i32 %489 to i64
  %491 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %490
  %492 = load i64, ptr %491, align 8, !tbaa !219
  %493 = icmp eq i64 %492, 0
  br i1 %493, label %494, label %495, !prof !222

494:                                              ; preds = %482
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %495

495:                                              ; preds = %494, %482
  %496 = getelementptr inbounds i8, ptr %450, i64 %492
  %497 = getelementptr inbounds ptr, ptr %496, i64 1
  %498 = load ptr, ptr %497, align 8, !tbaa !149
  %499 = load i64, ptr %498, align 8
  %500 = and i64 %499, 65535
  %501 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %500
  %502 = load i32, ptr %501, align 4, !tbaa !164
  %503 = icmp eq i32 %502, 3
  br i1 %503, label %504, label %595, !prof !223

504:                                              ; preds = %495
  %505 = load i32, ptr %450, align 8
  %506 = and i32 %505, 255
  %507 = add nsw i32 %506, -10
  %508 = icmp ult i32 %507, -9
  br i1 %508, label %522, label %509, !prof !224

509:                                              ; preds = %504
  %510 = zext nneg i32 %506 to i64
  %511 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %510
  %512 = load i32, ptr %511, align 4, !tbaa !164
  %513 = zext i32 %512 to i64
  %514 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %513
  %515 = load i64, ptr %514, align 8, !tbaa !219
  %516 = icmp eq i64 %515, 0
  br i1 %516, label %517, label %518, !prof !224

517:                                              ; preds = %509
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %518

518:                                              ; preds = %517, %509
  %519 = getelementptr inbounds i8, ptr %450, i64 %515
  %520 = getelementptr inbounds ptr, ptr %519, i64 1
  %521 = load ptr, ptr %520, align 8, !tbaa !149
  br label %522

522:                                              ; preds = %518, %504
  %523 = phi ptr [ %521, %518 ], [ null, %504 ]
  %524 = load i64, ptr %523, align 8
  %525 = and i64 %524, 67108864
  %526 = icmp eq i64 %525, 0
  br i1 %526, label %591, label %527, !prof !169

527:                                              ; preds = %522
  %528 = and i64 %524, 1048576
  %529 = icmp ne i64 %528, 0
  %530 = and i64 %524, 65535
  %531 = icmp eq i64 %530, 33
  %532 = or i1 %529, %531
  br i1 %532, label %533, label %591

533:                                              ; preds = %527
  %534 = getelementptr inbounds %struct.tree_decl_common, ptr %523, i64 0, i32 5
  %535 = load ptr, ptr %534, align 8, !tbaa !160
  %536 = icmp eq ptr %535, null
  br i1 %536, label %565, label %537

537:                                              ; preds = %533
  %538 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %535) #18
  %539 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %538) #18
  %540 = icmp eq i8 %539, 0
  br i1 %540, label %565, label %541

541:                                              ; preds = %537
  %542 = load i64, ptr %538, align 8
  %543 = and i64 %542, 65535
  %544 = icmp eq i64 %543, 121
  br i1 %544, label %545, label %588

545:                                              ; preds = %541
  %546 = getelementptr inbounds %struct.tree_exp, ptr %538, i64 0, i32 3
  %547 = load ptr, ptr %546, align 8, !tbaa !160
  %548 = tail call ptr @get_base_address(ptr noundef %547) #18
  %549 = icmp eq ptr %548, null
  br i1 %549, label %588, label %550

550:                                              ; preds = %545
  %551 = load i64, ptr %548, align 8
  %552 = and i64 %551, 65535
  %553 = icmp eq i64 %552, 32
  br i1 %553, label %554, label %588

554:                                              ; preds = %550
  %555 = or i64 %551, 262144
  store i64 %555, ptr %548, align 8
  %556 = load ptr, ptr @cfun, align 8, !tbaa !149
  %557 = getelementptr inbounds %struct.function, ptr %556, i64 0, i32 3
  %558 = load ptr, ptr %557, align 8, !tbaa !170
  %559 = icmp eq ptr %558, null
  br i1 %559, label %588, label %560

560:                                              ; preds = %554
  %561 = load ptr, ptr %558, align 8, !tbaa !172
  %562 = icmp eq ptr %561, null
  br i1 %562, label %588, label %563

563:                                              ; preds = %560
  %564 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %548) #18
  br label %588

565:                                              ; preds = %537, %533
  %566 = phi ptr [ %538, %537 ], [ null, %533 ]
  %567 = icmp eq ptr %566, null
  br i1 %567, label %568, label %588

568:                                              ; preds = %565
  %569 = getelementptr inbounds %struct.tree_decl_common, ptr %523, i64 0, i32 2
  %570 = load i64, ptr %569, align 8
  %571 = and i64 %570, 33554432
  %572 = icmp eq i64 %571, 0
  br i1 %572, label %573, label %588

573:                                              ; preds = %568
  %574 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !176
  %575 = tail call zeroext i8 %574(ptr noundef nonnull %523) #18
  %576 = icmp eq i8 %575, 0
  br i1 %576, label %588, label %577

577:                                              ; preds = %573
  %578 = getelementptr inbounds %struct.tree_common, ptr %523, i64 0, i32 2
  %579 = load ptr, ptr %578, align 8, !tbaa !160
  %580 = load i64, ptr %579, align 8
  %581 = trunc i64 %580 to i32
  %582 = and i32 %581, 65534
  %583 = add nsw i32 %582, -6
  %584 = icmp ult i32 %583, 4
  br i1 %584, label %585, label %588

585:                                              ; preds = %577
  %586 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %587 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %579, ptr noundef %586) #18
  br label %588

588:                                              ; preds = %585, %577, %573, %568, %565, %563, %560, %554, %550, %545, %541
  %589 = phi ptr [ %587, %585 ], [ %538, %545 ], [ %538, %550 ], [ %538, %563 ], [ %538, %560 ], [ %538, %541 ], [ undef, %577 ], [ undef, %573 ], [ undef, %568 ], [ undef, %565 ], [ %538, %554 ]
  %590 = phi i1 [ false, %585 ], [ false, %545 ], [ false, %550 ], [ false, %563 ], [ false, %560 ], [ false, %541 ], [ true, %577 ], [ true, %573 ], [ true, %568 ], [ true, %565 ], [ false, %554 ]
  br i1 %590, label %591, label %592

591:                                              ; preds = %588, %527, %522
  br label %592

592:                                              ; preds = %591, %588
  %593 = phi ptr [ %589, %588 ], [ null, %591 ]
  %594 = icmp eq ptr %593, null
  br i1 %594, label %595, label %596, !prof !225

595:                                              ; preds = %592, %495, %479
  br label %596

596:                                              ; preds = %595, %592, %475, %460, %456
  %597 = phi ptr [ null, %460 ], [ null, %456 ], [ null, %595 ], [ %593, %592 ], [ null, %475 ]
  %598 = phi i32 [ 3, %460 ], [ 1, %456 ], [ 1, %595 ], [ 2, %592 ], [ 3, %475 ]
  store i32 %598, ptr %443, align 8, !tbaa.struct !226
  %599 = getelementptr inbounds i8, ptr %443, i64 8
  store ptr %597, ptr %599, align 8, !tbaa.struct !227
  br label %600

600:                                              ; preds = %596, %439
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %601 = load i32, ptr %443, align 8, !tbaa !197
  %602 = icmp eq i32 %601, 2
  br i1 %602, label %603, label %679, !prof !228

603:                                              ; preds = %600
  %604 = getelementptr inbounds %struct.prop_value_d, ptr %437, i64 %442, i32 1
  %605 = load ptr, ptr %604, align 8, !tbaa !199
  %606 = load i64, ptr %605, align 8
  %607 = and i64 %606, 65535
  %608 = icmp eq i64 %607, 24
  br i1 %608, label %609, label %679, !prof !229

609:                                              ; preds = %603
  %610 = getelementptr inbounds %struct.tree_real_cst, ptr %605, i64 0, i32 1
  %611 = load ptr, ptr %610, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %611, i64 32, i1 false), !tbaa.struct !230
  %612 = getelementptr inbounds %struct.tree_common, ptr %605, i64 0, i32 2
  %613 = load ptr, ptr %612, align 8, !tbaa !160
  %614 = load i64, ptr %613, align 8
  %615 = and i64 %614, 65535
  %616 = icmp eq i64 %615, 14
  br i1 %616, label %617, label %619

617:                                              ; preds = %609
  %618 = tail call i32 @vector_type_mode(ptr noundef nonnull %613) #18
  br label %624

619:                                              ; preds = %609
  %620 = getelementptr inbounds %struct.tree_type, ptr %613, i64 0, i32 6
  %621 = load i32, ptr %620, align 4
  %622 = lshr i32 %621, 16
  %623 = and i32 %622, 255
  br label %624

624:                                              ; preds = %619, %617
  %625 = phi i32 [ %618, %617 ], [ %623, %619 ]
  %626 = zext i32 %625 to i64
  %627 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %626
  %628 = load i8, ptr %627, align 1, !tbaa !160
  switch i8 %628, label %648 [
    i8 8, label %629
    i8 9, label %629
    i8 11, label %629
    i8 17, label %629
  ]

629:                                              ; preds = %624, %624, %624, %624
  %630 = and i8 %628, -2
  %631 = icmp eq i8 %630, 8
  br i1 %631, label %636, label %632

632:                                              ; preds = %629
  %633 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %626
  %634 = load i8, ptr %633, align 1, !tbaa !160
  %635 = zext i8 %634 to i32
  br label %636

636:                                              ; preds = %629, %632
  %637 = phi i32 [ %635, %632 ], [ %625, %629 ]
  %638 = add i32 %637, -38
  %639 = zext i32 %638 to i64
  %640 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %639
  %641 = load ptr, ptr %640, align 8, !tbaa !149
  %642 = getelementptr inbounds %struct.real_format, ptr %641, i64 0, i32 14
  %643 = load i8, ptr %642, align 1, !tbaa !231
  %644 = icmp ne i8 %643, 0
  %645 = load i32, ptr @flag_signed_zeros, align 4
  %646 = icmp ne i32 %645, 0
  %647 = select i1 %644, i1 %646, i1 false
  br i1 %647, label %653, label %648

648:                                              ; preds = %636, %624
  %649 = call zeroext i8 @real_isnegzero(ptr noundef nonnull %3) #18
  %650 = icmp eq i8 %649, 0
  br i1 %650, label %653, label %651

651:                                              ; preds = %648
  %652 = call ptr @build_real(ptr noundef nonnull %613, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #18
  br label %677

653:                                              ; preds = %648, %636
  switch i8 %628, label %673 [
    i8 8, label %654
    i8 9, label %654
    i8 11, label %654
    i8 17, label %654
  ]

654:                                              ; preds = %653, %653, %653, %653
  %655 = and i8 %628, -2
  %656 = icmp eq i8 %655, 8
  br i1 %656, label %661, label %657

657:                                              ; preds = %654
  %658 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %626
  %659 = load i8, ptr %658, align 1, !tbaa !160
  %660 = zext i8 %659 to i32
  br label %661

661:                                              ; preds = %654, %657
  %662 = phi i32 [ %660, %657 ], [ %625, %654 ]
  %663 = add i32 %662, -38
  %664 = zext i32 %663 to i64
  %665 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %664
  %666 = load ptr, ptr %665, align 8, !tbaa !149
  %667 = getelementptr inbounds %struct.real_format, ptr %666, i64 0, i32 11
  %668 = load i8, ptr %667, align 2, !tbaa !233
  %669 = icmp eq i8 %668, 0
  %670 = load i32, ptr @flag_finite_math_only, align 4
  %671 = icmp ne i32 %670, 0
  %672 = select i1 %669, i1 true, i1 %671
  br i1 %672, label %673, label %679

673:                                              ; preds = %661, %653
  %674 = call zeroext i8 @real_isnan(ptr noundef nonnull %3) #18
  %675 = icmp eq i8 %674, 0
  br i1 %675, label %679, label %676

676:                                              ; preds = %673
  store i32 1, ptr %443, align 8, !tbaa !197
  br label %677

677:                                              ; preds = %651, %676
  %678 = phi ptr [ null, %676 ], [ %652, %651 ]
  store ptr %678, ptr %604, align 8, !tbaa !199
  br label %679

679:                                              ; preds = %677, %673, %661, %603, %600
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %680

680:                                              ; preds = %436, %679
  %681 = phi ptr [ %443, %679 ], [ null, %436 ]
  %682 = load i32, ptr %681, align 8, !tbaa !197
  %683 = icmp eq i32 %682, 2
  br i1 %683, label %684, label %687, !prof !493

684:                                              ; preds = %680
  %685 = getelementptr inbounds %struct.prop_value_d, ptr %681, i64 0, i32 1
  %686 = load ptr, ptr %685, align 8, !tbaa !199
  br label %687

687:                                              ; preds = %680, %684, %431
  %688 = phi ptr [ %409, %431 ], [ %686, %684 ], [ %409, %680 ]
  %689 = load i64, ptr %432, align 8
  %690 = and i64 %689, 65535
  %691 = icmp eq i64 %690, 141
  br i1 %691, label %692, label %699, !prof !494

692:                                              ; preds = %687
  %693 = call fastcc ptr @get_value(ptr noundef nonnull %432)
  %694 = load i32, ptr %693, align 8, !tbaa !197
  %695 = icmp eq i32 %694, 2
  br i1 %695, label %696, label %699, !prof !495

696:                                              ; preds = %692
  %697 = getelementptr inbounds %struct.prop_value_d, ptr %693, i64 0, i32 1
  %698 = load ptr, ptr %697, align 8, !tbaa !199
  br label %699

699:                                              ; preds = %692, %696, %687
  %700 = phi ptr [ %432, %687 ], [ %698, %696 ], [ %432, %692 ]
  %701 = load i32, ptr %0, align 8
  %702 = trunc i32 %701 to i8
  switch i8 %702, label %705 [
    i8 6, label %703
    i8 1, label %703
    i8 8, label %706
  ], !prof !496

703:                                              ; preds = %699, %699
  %704 = lshr i32 %701, 16
  br label %706

705:                                              ; preds = %699
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1446, ptr noundef nonnull @.str.3) #18
  br label %706

706:                                              ; preds = %705, %703, %699
  %707 = phi i32 [ %704, %703 ], [ 0, %705 ], [ 59, %699 ]
  %708 = zext nneg i32 %707 to i64
  %709 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %708
  %710 = load i8, ptr %709, align 1, !tbaa !160
  %711 = icmp eq i8 %710, 3
  br i1 %711, label %712, label %732, !prof !490

712:                                              ; preds = %706
  %713 = load i32, ptr %0, align 8
  %714 = and i32 %713, 255
  %715 = add nsw i32 %714, -1
  %716 = icmp ult i32 %715, 9
  call void @llvm.assume(i1 %716)
  %717 = zext nneg i32 %714 to i64
  %718 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %717
  %719 = load i32, ptr %718, align 4, !tbaa !164
  %720 = zext i32 %719 to i64
  %721 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %720
  %722 = load i64, ptr %721, align 8, !tbaa !219
  %723 = icmp eq i64 %722, 0
  br i1 %723, label %724, label %725

724:                                              ; preds = %712
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %725

725:                                              ; preds = %724, %712
  %726 = getelementptr inbounds i8, ptr %0, i64 %722
  %727 = getelementptr inbounds ptr, ptr %726, i64 1
  %728 = load ptr, ptr %727, align 8, !tbaa !149
  %729 = load i64, ptr %728, align 8
  %730 = trunc i64 %729 to i32
  %731 = and i32 %730, 65535
  br label %732

732:                                              ; preds = %706, %725
  %733 = phi i32 [ %731, %725 ], [ %707, %706 ]
  %734 = icmp eq i32 %733, 66
  br i1 %734, label %735, label %748, !prof !490

735:                                              ; preds = %732
  %736 = load i64, ptr %688, align 8
  %737 = and i64 %736, 65535
  %738 = icmp eq i64 %737, 121
  br i1 %738, label %739, label %748

739:                                              ; preds = %735
  %740 = load i64, ptr %700, align 8
  %741 = and i64 %740, 65535
  %742 = icmp eq i64 %741, 23
  br i1 %742, label %743, label %748

743:                                              ; preds = %739
  %744 = getelementptr inbounds %struct.tree_common, ptr %688, i64 0, i32 2
  %745 = load ptr, ptr %744, align 8, !tbaa !160
  %746 = call ptr @maybe_fold_offset_to_address(i32 noundef %5, ptr noundef nonnull %688, ptr noundef nonnull %700, ptr noundef %745)
  %747 = icmp eq ptr %746, null
  br i1 %747, label %748, label %827

748:                                              ; preds = %743, %739, %735, %732
  %749 = load i32, ptr %0, align 8
  %750 = trunc i32 %749 to i8
  switch i8 %750, label %821 [
    i8 8, label %751
    i8 6, label %772
    i8 1, label %822
  ], !prof !497

751:                                              ; preds = %748
  %752 = and i32 %749, 255
  %753 = add nsw i32 %752, -1
  %754 = icmp ult i32 %753, 9
  call void @llvm.assume(i1 %754)
  %755 = zext nneg i32 %752 to i64
  %756 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %755
  %757 = load i32, ptr %756, align 4, !tbaa !164
  %758 = zext i32 %757 to i64
  %759 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %758
  %760 = load i64, ptr %759, align 8, !tbaa !219
  %761 = icmp eq i64 %760, 0
  br i1 %761, label %762, label %763

762:                                              ; preds = %751
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %763

763:                                              ; preds = %762, %751
  %764 = getelementptr inbounds i8, ptr %0, i64 %760
  %765 = getelementptr inbounds ptr, ptr %764, i64 1
  %766 = load ptr, ptr %765, align 8, !tbaa !149
  %767 = getelementptr inbounds %struct.tree_common, ptr %766, i64 0, i32 2
  %768 = load ptr, ptr %767, align 8, !tbaa !160
  %769 = getelementptr inbounds %struct.tree_common, ptr %768, i64 0, i32 2
  %770 = load ptr, ptr %769, align 8, !tbaa !160
  %771 = getelementptr inbounds %struct.tree_common, ptr %770, i64 0, i32 2
  br label %822

772:                                              ; preds = %748
  %773 = lshr i32 %749, 16
  %774 = zext nneg i32 %773 to i64
  %775 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %774
  %776 = load i8, ptr %775, align 1, !tbaa !160
  %777 = icmp eq i8 %776, 3
  br i1 %777, label %778, label %797, !prof !498

778:                                              ; preds = %772
  %779 = and i32 %749, 255
  %780 = add nsw i32 %779, -1
  %781 = icmp ult i32 %780, 9
  call void @llvm.assume(i1 %781)
  %782 = zext nneg i32 %779 to i64
  %783 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %782
  %784 = load i32, ptr %783, align 4, !tbaa !164
  %785 = zext i32 %784 to i64
  %786 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %785
  %787 = load i64, ptr %786, align 8, !tbaa !219
  %788 = icmp eq i64 %787, 0
  br i1 %788, label %789, label %790

789:                                              ; preds = %778
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %790

790:                                              ; preds = %789, %778
  %791 = getelementptr inbounds i8, ptr %0, i64 %787
  %792 = getelementptr inbounds ptr, ptr %791, i64 1
  %793 = load ptr, ptr %792, align 8, !tbaa !149
  %794 = load i64, ptr %793, align 8
  %795 = trunc i64 %794 to i32
  %796 = and i32 %795, 65535
  br label %797

797:                                              ; preds = %790, %772
  %798 = phi i32 [ %796, %790 ], [ %773, %772 ]
  %799 = icmp eq i32 %798, 66
  br i1 %799, label %800, label %818, !prof !498

800:                                              ; preds = %797
  %801 = load i32, ptr %0, align 8
  %802 = and i32 %801, 255
  %803 = add nsw i32 %802, -1
  %804 = icmp ult i32 %803, 9
  call void @llvm.assume(i1 %804)
  %805 = zext nneg i32 %802 to i64
  %806 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %805
  %807 = load i32, ptr %806, align 4, !tbaa !164
  %808 = zext i32 %807 to i64
  %809 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %808
  %810 = load i64, ptr %809, align 8, !tbaa !219
  %811 = icmp eq i64 %810, 0
  br i1 %811, label %812, label %813

812:                                              ; preds = %800
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %813

813:                                              ; preds = %812, %800
  %814 = getelementptr inbounds i8, ptr %0, i64 %810
  %815 = getelementptr inbounds ptr, ptr %814, i64 1
  %816 = load ptr, ptr %815, align 8, !tbaa !149
  %817 = getelementptr inbounds %struct.tree_common, ptr %816, i64 0, i32 2
  br label %822

818:                                              ; preds = %797
  %819 = call ptr @gimple_get_lhs(ptr noundef nonnull %0) #18
  %820 = getelementptr inbounds %struct.tree_common, ptr %819, i64 0, i32 2
  br label %822

821:                                              ; preds = %748
  br label %822

822:                                              ; preds = %748, %763, %813, %818, %821
  %823 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %821 ], [ %771, %763 ], [ %817, %813 ], [ %820, %818 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %748 ]
  %824 = load ptr, ptr %823, align 8, !tbaa !160
  %825 = call ptr @fold_binary_loc(i32 noundef %5, i32 noundef %36, ptr noundef %824, ptr noundef %688, ptr noundef %700) #18
  br label %827

826:                                              ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1119, ptr noundef nonnull @.str.3) #18
  br label %827

827:                                              ; preds = %155, %308, %305, %102, %822, %743, %387, %381, %386, %61, %237, %203, %165, %169, %826
  %828 = phi i1 [ true, %826 ], [ false, %169 ], [ false, %165 ], [ false, %203 ], [ false, %237 ], [ false, %61 ], [ false, %386 ], [ false, %381 ], [ false, %387 ], [ false, %743 ], [ false, %822 ], [ false, %102 ], [ false, %305 ], [ false, %308 ], [ false, %155 ]
  %829 = phi ptr [ undef, %826 ], [ %56, %169 ], [ %168, %165 ], [ %204, %203 ], [ %239, %237 ], [ %64, %61 ], [ %356, %386 ], [ %384, %381 ], [ %389, %387 ], [ %746, %743 ], [ %825, %822 ], [ %104, %102 ], [ %306, %305 ], [ null, %308 ], [ null, %155 ]
  br i1 %828, label %1293, label %1294, !prof !499

830:                                              ; preds = %1
  %831 = add nsw i32 %7, -1
  %832 = icmp ult i32 %831, 9
  tail call void @llvm.assume(i1 %832)
  %833 = zext nneg i32 %7 to i64
  %834 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %833
  %835 = load i32, ptr %834, align 4, !tbaa !164
  %836 = zext i32 %835 to i64
  %837 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %836
  %838 = load i64, ptr %837, align 8, !tbaa !219
  %839 = icmp eq i64 %838, 0
  br i1 %839, label %840, label %841

840:                                              ; preds = %830
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %841

841:                                              ; preds = %840, %830
  %842 = getelementptr inbounds i8, ptr %0, i64 %838
  %843 = getelementptr inbounds ptr, ptr %842, i64 1
  %844 = load ptr, ptr %843, align 8, !tbaa !149
  %845 = load i64, ptr %844, align 8
  %846 = and i64 %845, 65535
  %847 = icmp eq i64 %846, 141
  br i1 %847, label %848, label %855

848:                                              ; preds = %841
  %849 = tail call fastcc ptr @get_value(ptr noundef nonnull %844)
  %850 = load i32, ptr %849, align 8, !tbaa !197
  %851 = icmp eq i32 %850, 2
  br i1 %851, label %852, label %855

852:                                              ; preds = %848
  %853 = getelementptr inbounds %struct.prop_value_d, ptr %849, i64 0, i32 1
  %854 = load ptr, ptr %853, align 8, !tbaa !199
  br label %855

855:                                              ; preds = %848, %852, %841
  %856 = phi ptr [ %854, %852 ], [ %844, %848 ], [ %844, %841 ]
  %857 = load i64, ptr %856, align 8
  %858 = and i64 %857, 65535
  %859 = icmp eq i64 %858, 121
  br i1 %859, label %860, label %1294

860:                                              ; preds = %855
  %861 = getelementptr inbounds %struct.tree_exp, ptr %856, i64 0, i32 3
  %862 = load ptr, ptr %861, align 8, !tbaa !160
  %863 = load i64, ptr %862, align 8
  %864 = and i64 %863, 65535
  %865 = icmp eq i64 %864, 29
  br i1 %865, label %866, label %1294

866:                                              ; preds = %860
  %867 = getelementptr inbounds %struct.tree_function_decl, ptr %862, i64 0, i32 5
  %868 = load i32, ptr %867, align 8
  %869 = and i32 %868, 6144
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %1294, label %871

871:                                              ; preds = %866
  %872 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %873 = load i32, ptr %872, align 4, !tbaa !160
  %874 = add i32 %873, -3
  %875 = zext i32 %874 to i64
  %876 = shl nuw nsw i64 %875, 3
  %877 = alloca i8, i64 %876, align 16
  %878 = icmp eq i32 %873, 3
  br i1 %878, label %919, label %879

879:                                              ; preds = %871, %913
  %880 = phi i64 [ %914, %913 ], [ 0, %871 ]
  %881 = add nuw i64 %880, 3
  %882 = load i32, ptr %0, align 8
  %883 = and i32 %882, 255
  %884 = add nsw i32 %883, -10
  %885 = icmp ult i32 %884, -9
  br i1 %885, label %900, label %886

886:                                              ; preds = %879
  %887 = zext nneg i32 %883 to i64
  %888 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %887
  %889 = load i32, ptr %888, align 4, !tbaa !164
  %890 = zext i32 %889 to i64
  %891 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %890
  %892 = load i64, ptr %891, align 8, !tbaa !219
  %893 = icmp eq i64 %892, 0
  br i1 %893, label %894, label %895

894:                                              ; preds = %886
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %895

895:                                              ; preds = %894, %886
  %896 = getelementptr inbounds i8, ptr %0, i64 %892
  %897 = and i64 %881, 4294967295
  %898 = getelementptr inbounds ptr, ptr %896, i64 %897
  %899 = load ptr, ptr %898, align 8, !tbaa !149
  br label %900

900:                                              ; preds = %879, %895
  %901 = phi ptr [ %899, %895 ], [ null, %879 ]
  %902 = getelementptr inbounds ptr, ptr %877, i64 %880
  store ptr %901, ptr %902, align 8, !tbaa !149
  %903 = load i64, ptr %901, align 8
  %904 = and i64 %903, 65535
  %905 = icmp eq i64 %904, 141
  br i1 %905, label %906, label %913

906:                                              ; preds = %900
  %907 = tail call fastcc ptr @get_value(ptr noundef nonnull %901)
  %908 = load i32, ptr %907, align 8, !tbaa !197
  %909 = icmp eq i32 %908, 2
  br i1 %909, label %910, label %913

910:                                              ; preds = %906
  %911 = getelementptr inbounds %struct.prop_value_d, ptr %907, i64 0, i32 1
  %912 = load ptr, ptr %911, align 8, !tbaa !199
  store ptr %912, ptr %902, align 8, !tbaa !149
  br label %913

913:                                              ; preds = %900, %910, %906
  %914 = add nuw nsw i64 %880, 1
  %915 = load i32, ptr %872, align 4, !tbaa !160
  %916 = add i32 %915, -3
  %917 = zext i32 %916 to i64
  %918 = icmp ult i64 %914, %917
  br i1 %918, label %879, label %919, !llvm.loop !500

919:                                              ; preds = %913, %871
  %920 = load i32, ptr %0, align 8
  %921 = and i32 %920, 255
  %922 = add nsw i32 %921, -1
  %923 = icmp ult i32 %922, 9
  tail call void @llvm.assume(i1 %923)
  %924 = zext nneg i32 %921 to i64
  %925 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %924
  %926 = load i32, ptr %925, align 4, !tbaa !164
  %927 = zext i32 %926 to i64
  %928 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %927
  %929 = load i64, ptr %928, align 8, !tbaa !219
  %930 = icmp eq i64 %929, 0
  br i1 %930, label %931, label %932

931:                                              ; preds = %919
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %932

932:                                              ; preds = %919, %931
  %933 = getelementptr inbounds i8, ptr %0, i64 %929
  %934 = getelementptr inbounds ptr, ptr %933, i64 1
  %935 = load ptr, ptr %934, align 8, !tbaa !149
  %936 = getelementptr inbounds %struct.tree_common, ptr %935, i64 0, i32 2
  %937 = load ptr, ptr %936, align 8, !tbaa !160
  %938 = getelementptr inbounds %struct.tree_common, ptr %937, i64 0, i32 2
  %939 = load ptr, ptr %938, align 8, !tbaa !160
  %940 = getelementptr inbounds %struct.tree_common, ptr %939, i64 0, i32 2
  %941 = load ptr, ptr %940, align 8, !tbaa !160
  %942 = load i32, ptr %872, align 4, !tbaa !160
  %943 = add i32 %942, -3
  %944 = call ptr @build_call_array_loc(i32 noundef %5, ptr noundef %941, ptr noundef nonnull %856, i32 noundef %943, ptr noundef nonnull %877) #18
  %945 = load i64, ptr %944, align 8
  %946 = and i64 %945, 65535
  %947 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %946
  %948 = load i32, ptr %947, align 4, !tbaa !164
  %949 = add i32 %948, -4
  %950 = icmp ult i32 %949, 7
  br i1 %950, label %951, label %954

951:                                              ; preds = %932
  %952 = getelementptr inbounds %struct.tree_exp, ptr %944, i64 0, i32 1
  %953 = load i32, ptr %952, align 8, !tbaa !160
  br label %954

954:                                              ; preds = %932, %951
  %955 = phi i32 [ %953, %951 ], [ 0, %932 ]
  %956 = call ptr @fold_call_expr(i32 noundef %955, ptr noundef nonnull %944, i8 noundef zeroext 0) #18
  %957 = icmp eq ptr %956, null
  br i1 %957, label %1294, label %958

958:                                              ; preds = %954
  %959 = call ptr @tree_strip_nop_conversions(ptr noundef nonnull %956) #18
  br label %1294

960:                                              ; preds = %1
  %961 = add nsw i32 %7, -10
  %962 = icmp ult i32 %961, -9
  br i1 %962, label %975, label %963, !prof !501

963:                                              ; preds = %960
  %964 = zext nneg i32 %7 to i64
  %965 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %964
  %966 = load i32, ptr %965, align 4, !tbaa !164
  %967 = zext i32 %966 to i64
  %968 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %967
  %969 = load i64, ptr %968, align 8, !tbaa !219
  %970 = icmp eq i64 %969, 0
  br i1 %970, label %971, label %972, !prof !501

971:                                              ; preds = %963
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %972

972:                                              ; preds = %971, %963
  %973 = getelementptr inbounds i8, ptr %0, i64 %969
  %974 = load ptr, ptr %973, align 8, !tbaa !149
  br label %975

975:                                              ; preds = %960, %972
  %976 = phi ptr [ %974, %972 ], [ null, %960 ]
  %977 = load i32, ptr %0, align 8
  %978 = and i32 %977, 255
  %979 = add nsw i32 %978, -10
  %980 = icmp ult i32 %979, -9
  br i1 %980, label %994, label %981, !prof !501

981:                                              ; preds = %975
  %982 = zext nneg i32 %978 to i64
  %983 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %982
  %984 = load i32, ptr %983, align 4, !tbaa !164
  %985 = zext i32 %984 to i64
  %986 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %985
  %987 = load i64, ptr %986, align 8, !tbaa !219
  %988 = icmp eq i64 %987, 0
  br i1 %988, label %989, label %990, !prof !501

989:                                              ; preds = %981
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %990

990:                                              ; preds = %989, %981
  %991 = getelementptr inbounds i8, ptr %0, i64 %987
  %992 = getelementptr inbounds ptr, ptr %991, i64 1
  %993 = load ptr, ptr %992, align 8, !tbaa !149
  br label %994

994:                                              ; preds = %975, %990
  %995 = phi ptr [ %993, %990 ], [ null, %975 ]
  %996 = load i32, ptr %0, align 8
  %997 = lshr i32 %996, 16
  %998 = load i64, ptr %976, align 8
  %999 = and i64 %998, 65535
  %1000 = icmp eq i64 %999, 141
  br i1 %1000, label %1001, label %1252, !prof !502

1001:                                             ; preds = %994
  %1002 = load ptr, ptr @const_val, align 8, !tbaa !149
  %1003 = icmp eq ptr %1002, null
  br i1 %1003, label %1245, label %1004, !prof !214

1004:                                             ; preds = %1001
  %1005 = getelementptr inbounds %struct.tree_ssa_name, ptr %976, i64 0, i32 3
  %1006 = load i32, ptr %1005, align 8, !tbaa !160
  %1007 = zext i32 %1006 to i64
  %1008 = getelementptr inbounds %struct.prop_value_d, ptr %1002, i64 %1007
  %1009 = load i32, ptr %1008, align 8, !tbaa !197
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %1011, label %1165, !prof !215

1011:                                             ; preds = %1004
  %1012 = getelementptr inbounds %struct.tree_ssa_name, ptr %976, i64 0, i32 1
  %1013 = load ptr, ptr %1012, align 8, !tbaa !160
  %1014 = getelementptr inbounds %struct.tree_ssa_name, ptr %976, i64 0, i32 2
  %1015 = load ptr, ptr %1014, align 8, !tbaa !160
  %1016 = load i32, ptr %1015, align 8
  %1017 = trunc i32 %1016 to i8
  switch i8 %1017, label %1040 [
    i8 18, label %1018
    i8 6, label %1044
    i8 8, label %1026
  ], !prof !216

1018:                                             ; preds = %1011
  %1019 = tail call zeroext i8 @is_gimple_reg(ptr noundef %1013) #18
  %1020 = icmp eq i8 %1019, 0
  br i1 %1020, label %1025, label %1021, !prof !217

1021:                                             ; preds = %1018
  %1022 = load i64, ptr %1013, align 8
  %1023 = and i64 %1022, 65535
  %1024 = icmp eq i64 %1023, 34
  br i1 %1024, label %1025, label %1161, !prof !218

1025:                                             ; preds = %1021, %1018
  br label %1161

1026:                                             ; preds = %1011
  %1027 = and i32 %1016, 255
  %1028 = zext nneg i32 %1027 to i64
  %1029 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1028
  %1030 = load i32, ptr %1029, align 4, !tbaa !164
  %1031 = zext i32 %1030 to i64
  %1032 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1031
  %1033 = load i64, ptr %1032, align 8, !tbaa !219
  %1034 = icmp eq i64 %1033, 0
  br i1 %1034, label %1035, label %1036

1035:                                             ; preds = %1026
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %1036

1036:                                             ; preds = %1035, %1026
  %1037 = getelementptr inbounds i8, ptr %1015, i64 %1033
  %1038 = load ptr, ptr %1037, align 8, !tbaa !149
  %1039 = icmp eq ptr %1038, null
  br i1 %1039, label %1040, label %1044

1040:                                             ; preds = %1036, %1011
  %1041 = load i32, ptr %1015, align 8
  %1042 = and i32 %1041, 255
  %1043 = icmp eq i32 %1042, 16
  br i1 %1043, label %1044, label %1161, !prof !220

1044:                                             ; preds = %1040, %1036, %1011
  %1045 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %1015) #18
  %1046 = icmp eq i8 %1045, 0
  br i1 %1046, label %1160, label %1047, !prof !221

1047:                                             ; preds = %1044
  %1048 = load i32, ptr %1015, align 8
  %1049 = and i32 %1048, 255
  %1050 = add nsw i32 %1049, -1
  %1051 = icmp ult i32 %1050, 9
  tail call void @llvm.assume(i1 %1051)
  %1052 = zext nneg i32 %1049 to i64
  %1053 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1052
  %1054 = load i32, ptr %1053, align 4, !tbaa !164
  %1055 = zext i32 %1054 to i64
  %1056 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1055
  %1057 = load i64, ptr %1056, align 8, !tbaa !219
  %1058 = icmp eq i64 %1057, 0
  br i1 %1058, label %1059, label %1060, !prof !222

1059:                                             ; preds = %1047
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %1060

1060:                                             ; preds = %1059, %1047
  %1061 = getelementptr inbounds i8, ptr %1015, i64 %1057
  %1062 = getelementptr inbounds ptr, ptr %1061, i64 1
  %1063 = load ptr, ptr %1062, align 8, !tbaa !149
  %1064 = load i64, ptr %1063, align 8
  %1065 = and i64 %1064, 65535
  %1066 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1065
  %1067 = load i32, ptr %1066, align 4, !tbaa !164
  %1068 = icmp eq i32 %1067, 3
  br i1 %1068, label %1069, label %1160, !prof !223

1069:                                             ; preds = %1060
  %1070 = load i32, ptr %1015, align 8
  %1071 = and i32 %1070, 255
  %1072 = add nsw i32 %1071, -10
  %1073 = icmp ult i32 %1072, -9
  br i1 %1073, label %1087, label %1074, !prof !224

1074:                                             ; preds = %1069
  %1075 = zext nneg i32 %1071 to i64
  %1076 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1075
  %1077 = load i32, ptr %1076, align 4, !tbaa !164
  %1078 = zext i32 %1077 to i64
  %1079 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1078
  %1080 = load i64, ptr %1079, align 8, !tbaa !219
  %1081 = icmp eq i64 %1080, 0
  br i1 %1081, label %1082, label %1083, !prof !224

1082:                                             ; preds = %1074
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %1083

1083:                                             ; preds = %1082, %1074
  %1084 = getelementptr inbounds i8, ptr %1015, i64 %1080
  %1085 = getelementptr inbounds ptr, ptr %1084, i64 1
  %1086 = load ptr, ptr %1085, align 8, !tbaa !149
  br label %1087

1087:                                             ; preds = %1083, %1069
  %1088 = phi ptr [ %1086, %1083 ], [ null, %1069 ]
  %1089 = load i64, ptr %1088, align 8
  %1090 = and i64 %1089, 67108864
  %1091 = icmp eq i64 %1090, 0
  br i1 %1091, label %1156, label %1092, !prof !169

1092:                                             ; preds = %1087
  %1093 = and i64 %1089, 1048576
  %1094 = icmp ne i64 %1093, 0
  %1095 = and i64 %1089, 65535
  %1096 = icmp eq i64 %1095, 33
  %1097 = or i1 %1094, %1096
  br i1 %1097, label %1098, label %1156

1098:                                             ; preds = %1092
  %1099 = getelementptr inbounds %struct.tree_decl_common, ptr %1088, i64 0, i32 5
  %1100 = load ptr, ptr %1099, align 8, !tbaa !160
  %1101 = icmp eq ptr %1100, null
  br i1 %1101, label %1130, label %1102

1102:                                             ; preds = %1098
  %1103 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %1100) #18
  %1104 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1103) #18
  %1105 = icmp eq i8 %1104, 0
  br i1 %1105, label %1130, label %1106

1106:                                             ; preds = %1102
  %1107 = load i64, ptr %1103, align 8
  %1108 = and i64 %1107, 65535
  %1109 = icmp eq i64 %1108, 121
  br i1 %1109, label %1110, label %1153

1110:                                             ; preds = %1106
  %1111 = getelementptr inbounds %struct.tree_exp, ptr %1103, i64 0, i32 3
  %1112 = load ptr, ptr %1111, align 8, !tbaa !160
  %1113 = tail call ptr @get_base_address(ptr noundef %1112) #18
  %1114 = icmp eq ptr %1113, null
  br i1 %1114, label %1153, label %1115

1115:                                             ; preds = %1110
  %1116 = load i64, ptr %1113, align 8
  %1117 = and i64 %1116, 65535
  %1118 = icmp eq i64 %1117, 32
  br i1 %1118, label %1119, label %1153

1119:                                             ; preds = %1115
  %1120 = or i64 %1116, 262144
  store i64 %1120, ptr %1113, align 8
  %1121 = load ptr, ptr @cfun, align 8, !tbaa !149
  %1122 = getelementptr inbounds %struct.function, ptr %1121, i64 0, i32 3
  %1123 = load ptr, ptr %1122, align 8, !tbaa !170
  %1124 = icmp eq ptr %1123, null
  br i1 %1124, label %1153, label %1125

1125:                                             ; preds = %1119
  %1126 = load ptr, ptr %1123, align 8, !tbaa !172
  %1127 = icmp eq ptr %1126, null
  br i1 %1127, label %1153, label %1128

1128:                                             ; preds = %1125
  %1129 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %1113) #18
  br label %1153

1130:                                             ; preds = %1102, %1098
  %1131 = phi ptr [ %1103, %1102 ], [ null, %1098 ]
  %1132 = icmp eq ptr %1131, null
  br i1 %1132, label %1133, label %1153

1133:                                             ; preds = %1130
  %1134 = getelementptr inbounds %struct.tree_decl_common, ptr %1088, i64 0, i32 2
  %1135 = load i64, ptr %1134, align 8
  %1136 = and i64 %1135, 33554432
  %1137 = icmp eq i64 %1136, 0
  br i1 %1137, label %1138, label %1153

1138:                                             ; preds = %1133
  %1139 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !176
  %1140 = tail call zeroext i8 %1139(ptr noundef nonnull %1088) #18
  %1141 = icmp eq i8 %1140, 0
  br i1 %1141, label %1153, label %1142

1142:                                             ; preds = %1138
  %1143 = getelementptr inbounds %struct.tree_common, ptr %1088, i64 0, i32 2
  %1144 = load ptr, ptr %1143, align 8, !tbaa !160
  %1145 = load i64, ptr %1144, align 8
  %1146 = trunc i64 %1145 to i32
  %1147 = and i32 %1146, 65534
  %1148 = add nsw i32 %1147, -6
  %1149 = icmp ult i32 %1148, 4
  br i1 %1149, label %1150, label %1153

1150:                                             ; preds = %1142
  %1151 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %1152 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %1144, ptr noundef %1151) #18
  br label %1153

1153:                                             ; preds = %1150, %1142, %1138, %1133, %1130, %1128, %1125, %1119, %1115, %1110, %1106
  %1154 = phi ptr [ %1152, %1150 ], [ %1103, %1110 ], [ %1103, %1115 ], [ %1103, %1128 ], [ %1103, %1125 ], [ %1103, %1106 ], [ undef, %1142 ], [ undef, %1138 ], [ undef, %1133 ], [ undef, %1130 ], [ %1103, %1119 ]
  %1155 = phi i1 [ false, %1150 ], [ false, %1110 ], [ false, %1115 ], [ false, %1128 ], [ false, %1125 ], [ false, %1106 ], [ true, %1142 ], [ true, %1138 ], [ true, %1133 ], [ true, %1130 ], [ false, %1119 ]
  br i1 %1155, label %1156, label %1157

1156:                                             ; preds = %1153, %1092, %1087
  br label %1157

1157:                                             ; preds = %1156, %1153
  %1158 = phi ptr [ %1154, %1153 ], [ null, %1156 ]
  %1159 = icmp eq ptr %1158, null
  br i1 %1159, label %1160, label %1161, !prof !225

1160:                                             ; preds = %1157, %1060, %1044
  br label %1161

1161:                                             ; preds = %1160, %1157, %1040, %1025, %1021
  %1162 = phi ptr [ null, %1025 ], [ null, %1021 ], [ null, %1160 ], [ %1158, %1157 ], [ null, %1040 ]
  %1163 = phi i32 [ 3, %1025 ], [ 1, %1021 ], [ 1, %1160 ], [ 2, %1157 ], [ 3, %1040 ]
  store i32 %1163, ptr %1008, align 8, !tbaa.struct !226
  %1164 = getelementptr inbounds i8, ptr %1008, i64 8
  store ptr %1162, ptr %1164, align 8, !tbaa.struct !227
  br label %1165

1165:                                             ; preds = %1161, %1004
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #18
  %1166 = load i32, ptr %1008, align 8, !tbaa !197
  %1167 = icmp eq i32 %1166, 2
  br i1 %1167, label %1168, label %1244, !prof !228

1168:                                             ; preds = %1165
  %1169 = getelementptr inbounds %struct.prop_value_d, ptr %1002, i64 %1007, i32 1
  %1170 = load ptr, ptr %1169, align 8, !tbaa !199
  %1171 = load i64, ptr %1170, align 8
  %1172 = and i64 %1171, 65535
  %1173 = icmp eq i64 %1172, 24
  br i1 %1173, label %1174, label %1244, !prof !229

1174:                                             ; preds = %1168
  %1175 = getelementptr inbounds %struct.tree_real_cst, ptr %1170, i64 0, i32 1
  %1176 = load ptr, ptr %1175, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1176, i64 32, i1 false), !tbaa.struct !230
  %1177 = getelementptr inbounds %struct.tree_common, ptr %1170, i64 0, i32 2
  %1178 = load ptr, ptr %1177, align 8, !tbaa !160
  %1179 = load i64, ptr %1178, align 8
  %1180 = and i64 %1179, 65535
  %1181 = icmp eq i64 %1180, 14
  br i1 %1181, label %1182, label %1184

1182:                                             ; preds = %1174
  %1183 = tail call i32 @vector_type_mode(ptr noundef nonnull %1178) #18
  br label %1189

1184:                                             ; preds = %1174
  %1185 = getelementptr inbounds %struct.tree_type, ptr %1178, i64 0, i32 6
  %1186 = load i32, ptr %1185, align 4
  %1187 = lshr i32 %1186, 16
  %1188 = and i32 %1187, 255
  br label %1189

1189:                                             ; preds = %1184, %1182
  %1190 = phi i32 [ %1183, %1182 ], [ %1188, %1184 ]
  %1191 = zext i32 %1190 to i64
  %1192 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1191
  %1193 = load i8, ptr %1192, align 1, !tbaa !160
  switch i8 %1193, label %1213 [
    i8 8, label %1194
    i8 9, label %1194
    i8 11, label %1194
    i8 17, label %1194
  ]

1194:                                             ; preds = %1189, %1189, %1189, %1189
  %1195 = and i8 %1193, -2
  %1196 = icmp eq i8 %1195, 8
  br i1 %1196, label %1201, label %1197

1197:                                             ; preds = %1194
  %1198 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1191
  %1199 = load i8, ptr %1198, align 1, !tbaa !160
  %1200 = zext i8 %1199 to i32
  br label %1201

1201:                                             ; preds = %1194, %1197
  %1202 = phi i32 [ %1200, %1197 ], [ %1190, %1194 ]
  %1203 = add i32 %1202, -38
  %1204 = zext i32 %1203 to i64
  %1205 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1204
  %1206 = load ptr, ptr %1205, align 8, !tbaa !149
  %1207 = getelementptr inbounds %struct.real_format, ptr %1206, i64 0, i32 14
  %1208 = load i8, ptr %1207, align 1, !tbaa !231
  %1209 = icmp ne i8 %1208, 0
  %1210 = load i32, ptr @flag_signed_zeros, align 4
  %1211 = icmp ne i32 %1210, 0
  %1212 = select i1 %1209, i1 %1211, i1 false
  br i1 %1212, label %1218, label %1213

1213:                                             ; preds = %1201, %1189
  %1214 = call zeroext i8 @real_isnegzero(ptr noundef nonnull %2) #18
  %1215 = icmp eq i8 %1214, 0
  br i1 %1215, label %1218, label %1216

1216:                                             ; preds = %1213
  %1217 = call ptr @build_real(ptr noundef nonnull %1178, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #18
  br label %1242

1218:                                             ; preds = %1213, %1201
  switch i8 %1193, label %1238 [
    i8 8, label %1219
    i8 9, label %1219
    i8 11, label %1219
    i8 17, label %1219
  ]

1219:                                             ; preds = %1218, %1218, %1218, %1218
  %1220 = and i8 %1193, -2
  %1221 = icmp eq i8 %1220, 8
  br i1 %1221, label %1226, label %1222

1222:                                             ; preds = %1219
  %1223 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1191
  %1224 = load i8, ptr %1223, align 1, !tbaa !160
  %1225 = zext i8 %1224 to i32
  br label %1226

1226:                                             ; preds = %1219, %1222
  %1227 = phi i32 [ %1225, %1222 ], [ %1190, %1219 ]
  %1228 = add i32 %1227, -38
  %1229 = zext i32 %1228 to i64
  %1230 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1229
  %1231 = load ptr, ptr %1230, align 8, !tbaa !149
  %1232 = getelementptr inbounds %struct.real_format, ptr %1231, i64 0, i32 11
  %1233 = load i8, ptr %1232, align 2, !tbaa !233
  %1234 = icmp eq i8 %1233, 0
  %1235 = load i32, ptr @flag_finite_math_only, align 4
  %1236 = icmp ne i32 %1235, 0
  %1237 = select i1 %1234, i1 true, i1 %1236
  br i1 %1237, label %1238, label %1244

1238:                                             ; preds = %1226, %1218
  %1239 = call zeroext i8 @real_isnan(ptr noundef nonnull %2) #18
  %1240 = icmp eq i8 %1239, 0
  br i1 %1240, label %1244, label %1241

1241:                                             ; preds = %1238
  store i32 1, ptr %1008, align 8, !tbaa !197
  br label %1242

1242:                                             ; preds = %1216, %1241
  %1243 = phi ptr [ null, %1241 ], [ %1217, %1216 ]
  store ptr %1243, ptr %1169, align 8, !tbaa !199
  br label %1244

1244:                                             ; preds = %1242, %1238, %1226, %1168, %1165
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  br label %1245

1245:                                             ; preds = %1001, %1244
  %1246 = phi ptr [ %1008, %1244 ], [ null, %1001 ]
  %1247 = load i32, ptr %1246, align 8, !tbaa !197
  %1248 = icmp eq i32 %1247, 2
  br i1 %1248, label %1249, label %1252, !prof !503

1249:                                             ; preds = %1245
  %1250 = getelementptr inbounds %struct.prop_value_d, ptr %1246, i64 0, i32 1
  %1251 = load ptr, ptr %1250, align 8, !tbaa !199
  br label %1252

1252:                                             ; preds = %1245, %1249, %994
  %1253 = phi ptr [ %976, %994 ], [ %1251, %1249 ], [ %976, %1245 ]
  %1254 = load i64, ptr %995, align 8
  %1255 = and i64 %1254, 65535
  %1256 = icmp eq i64 %1255, 141
  br i1 %1256, label %1257, label %1264, !prof !501

1257:                                             ; preds = %1252
  %1258 = call fastcc ptr @get_value(ptr noundef nonnull %995)
  %1259 = load i32, ptr %1258, align 8, !tbaa !197
  %1260 = icmp eq i32 %1259, 2
  br i1 %1260, label %1261, label %1264

1261:                                             ; preds = %1257
  %1262 = getelementptr inbounds %struct.prop_value_d, ptr %1258, i64 0, i32 1
  %1263 = load ptr, ptr %1262, align 8, !tbaa !199
  br label %1264

1264:                                             ; preds = %1257, %1261, %1252
  %1265 = phi ptr [ %995, %1252 ], [ %1263, %1261 ], [ %995, %1257 ]
  %1266 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !149
  %1267 = call ptr @fold_binary_loc(i32 noundef %5, i32 noundef %997, ptr noundef %1266, ptr noundef %1253, ptr noundef %1265) #18
  br label %1294

1268:                                             ; preds = %1
  %1269 = add nsw i32 %7, -10
  %1270 = icmp ult i32 %1269, -9
  br i1 %1270, label %1283, label %1271

1271:                                             ; preds = %1268
  %1272 = zext nneg i32 %7 to i64
  %1273 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1272
  %1274 = load i32, ptr %1273, align 4, !tbaa !164
  %1275 = zext i32 %1274 to i64
  %1276 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1275
  %1277 = load i64, ptr %1276, align 8, !tbaa !219
  %1278 = icmp eq i64 %1277, 0
  br i1 %1278, label %1279, label %1280

1279:                                             ; preds = %1271
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %1280

1280:                                             ; preds = %1279, %1271
  %1281 = getelementptr inbounds i8, ptr %0, i64 %1277
  %1282 = load ptr, ptr %1281, align 8, !tbaa !149
  br label %1283

1283:                                             ; preds = %1268, %1280
  %1284 = phi ptr [ %1282, %1280 ], [ null, %1268 ]
  %1285 = load i64, ptr %1284, align 8
  %1286 = and i64 %1285, 65535
  %1287 = icmp eq i64 %1286, 141
  br i1 %1287, label %1288, label %1294

1288:                                             ; preds = %1283
  %1289 = tail call fastcc ptr @get_value(ptr noundef nonnull %1284)
  %1290 = getelementptr inbounds %struct.prop_value_d, ptr %1289, i64 0, i32 1
  %1291 = load ptr, ptr %1290, align 8, !tbaa !199
  br label %1294

1292:                                             ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1204, ptr noundef nonnull @.str.3) #18
  br label %1293

1293:                                             ; preds = %827, %1292
  br label %1294

1294:                                             ; preds = %1288, %1283, %958, %954, %866, %860, %855, %827, %1293, %1264
  %1295 = phi ptr [ null, %1293 ], [ %1267, %1264 ], [ %829, %827 ], [ %959, %958 ], [ null, %954 ], [ null, %866 ], [ null, %860 ], [ null, %855 ], [ %1291, %1288 ], [ %1284, %1283 ]
  ret ptr %1295
}

declare void @fold_undefer_overflow_warnings(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #3

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_vector(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @nreverse(ptr noundef) local_unnamed_addr #3

declare ptr @fold_unary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_unary_ignore_overflow_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #10 !prof !504 !PGOFuncName !505 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %75 [
    i8 8, label %4
    i8 6, label %25
    i8 1, label %76
  ], !prof !497

4:                                                ; preds = %1
  %5 = and i32 %2, 255
  %6 = add nsw i32 %5, -1
  %7 = icmp ult i32 %6, 9
  tail call void @llvm.assume(i1 %7)
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !164
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !219
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %16

16:                                               ; preds = %4, %15
  %17 = getelementptr inbounds i8, ptr %0, i64 %13
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !149
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !160
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !160
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  br label %76

25:                                               ; preds = %1
  %26 = lshr i32 %2, 16
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !160
  %30 = icmp eq i8 %29, 3
  br i1 %30, label %31, label %51, !prof !498

31:                                               ; preds = %25
  %32 = load i32, ptr %0, align 8
  %33 = and i32 %32, 255
  %34 = add nsw i32 %33, -1
  %35 = icmp ult i32 %34, 9
  tail call void @llvm.assume(i1 %35)
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !164
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !219
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %44

44:                                               ; preds = %43, %31
  %45 = getelementptr inbounds i8, ptr %0, i64 %41
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !149
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  br label %51

51:                                               ; preds = %25, %44
  %52 = phi i32 [ %50, %44 ], [ %26, %25 ]
  %53 = icmp eq i32 %52, 66
  br i1 %53, label %54, label %72, !prof !498

54:                                               ; preds = %51
  %55 = load i32, ptr %0, align 8
  %56 = and i32 %55, 255
  %57 = add nsw i32 %56, -1
  %58 = icmp ult i32 %57, 9
  tail call void @llvm.assume(i1 %58)
  %59 = zext nneg i32 %56 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !164
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !219
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %67

67:                                               ; preds = %66, %54
  %68 = getelementptr inbounds i8, ptr %0, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !149
  %71 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  br label %76

72:                                               ; preds = %51
  %73 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #18
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  br label %76

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %1, %16, %72, %67, %75
  %77 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %75 ], [ %24, %16 ], [ %71, %67 ], [ %74, %72 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %1 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !160
  ret ptr %78
}

declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_call_array_loc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_call_expr(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @find_taken_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @substitute_and_fold(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @ccp_fold_stmt(ptr noundef %0) #10 !prof !506 !PGOFuncName !507 {
  %2 = alloca %struct.real_value, align 8
  %3 = alloca %struct.real_value, align 8
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = load ptr, ptr %0, align 1
  %7 = load ptr, ptr %6, align 8, !tbaa !260
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 255
  %10 = trunc i32 %8 to i8
  switch i8 %10, label %1582 [
    i8 1, label %11
    i8 8, label %647
    i8 6, label %1294
  ], !prof !508

11:                                               ; preds = %1
  %12 = icmp eq i32 %9, 6
  %13 = load i32, ptr %7, align 8
  %14 = and i32 %13, 254
  %15 = add nsw i32 %14, -10
  %16 = icmp ult i32 %15, -4
  %17 = and i32 %13, 16384
  %18 = icmp eq i32 %17, 0
  %19 = or i1 %18, %16
  br i1 %19, label %20, label %440, !prof !399

20:                                               ; preds = %11
  %21 = and i32 %13, 255
  %22 = add nsw i32 %21, -10
  %23 = icmp ult i32 %22, -9
  br i1 %23, label %27, label %24, !prof !400

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %7, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !160
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi ptr [ %26, %24 ], [ null, %20 ]
  %29 = icmp eq ptr %28, null
  %30 = or i1 %16, %29
  br i1 %30, label %37, label %31, !prof !401

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %7, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !160
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !402

35:                                               ; preds = %31
  %36 = load ptr, ptr %28, align 8, !tbaa !403
  br label %37

37:                                               ; preds = %35, %31, %27
  %38 = phi ptr [ %28, %27 ], [ %28, %31 ], [ %36, %35 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40, !prof !405

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.use_optype_d, ptr %38, i64 0, i32 1, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !406
  %43 = load ptr, ptr %42, align 8, !tbaa !149
  %44 = load ptr, ptr %38, align 8, !tbaa !403
  br label %45

45:                                               ; preds = %40, %37
  %46 = phi ptr [ %44, %40 ], [ %38, %37 ]
  %47 = phi i8 [ 0, %40 ], [ 1, %37 ]
  %48 = phi ptr [ %43, %40 ], [ null, %37 ]
  br i1 %39, label %314, label %49, !prof !407

49:                                               ; preds = %45, %309
  %50 = phi i8 [ %302, %309 ], [ 0, %45 ]
  %51 = phi i8 [ %300, %309 ], [ 0, %45 ]
  %52 = phi ptr [ %312, %309 ], [ %48, %45 ]
  %53 = phi i8 [ %299, %309 ], [ 1, %45 ]
  %54 = phi i8 [ %311, %309 ], [ %47, %45 ]
  %55 = phi ptr [ %310, %309 ], [ %46, %45 ]
  %56 = load ptr, ptr @const_val, align 8, !tbaa !149, !nonnull !408, !noundef !408
  %57 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !160
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.prop_value_d, ptr %56, i64 %59
  %61 = load i32, ptr %60, align 8, !tbaa !197
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %217, !prof !215

63:                                               ; preds = %49
  %64 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !160
  %66 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !160
  %68 = load i32, ptr %67, align 8
  %69 = trunc i32 %68 to i8
  switch i8 %69, label %92 [
    i8 18, label %70
    i8 6, label %96
    i8 8, label %78
  ], !prof !216

70:                                               ; preds = %63
  %71 = call zeroext i8 @is_gimple_reg(ptr noundef %65) #18
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %77, label %73, !prof !217

73:                                               ; preds = %70
  %74 = load i64, ptr %65, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 34
  br i1 %76, label %77, label %213, !prof !218

77:                                               ; preds = %73, %70
  br label %213

78:                                               ; preds = %63
  %79 = and i32 %68, 255
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !164
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !219
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %88

88:                                               ; preds = %87, %78
  %89 = getelementptr inbounds i8, ptr %67, i64 %85
  %90 = load ptr, ptr %89, align 8, !tbaa !149
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %88, %63
  %93 = load i32, ptr %67, align 8
  %94 = and i32 %93, 255
  %95 = icmp eq i32 %94, 16
  br i1 %95, label %96, label %213, !prof !220

96:                                               ; preds = %92, %88, %63
  %97 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %67) #18
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %212, label %99, !prof !221

99:                                               ; preds = %96
  %100 = load i32, ptr %67, align 8
  %101 = and i32 %100, 255
  %102 = add nsw i32 %101, -1
  %103 = icmp ult i32 %102, 9
  call void @llvm.assume(i1 %103)
  %104 = zext nneg i32 %101 to i64
  %105 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !164
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %107
  %109 = load i64, ptr %108, align 8, !tbaa !219
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112, !prof !222

111:                                              ; preds = %99
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %112

112:                                              ; preds = %111, %99
  %113 = getelementptr inbounds i8, ptr %67, i64 %109
  %114 = getelementptr inbounds ptr, ptr %113, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !149
  %116 = load i64, ptr %115, align 8
  %117 = and i64 %116, 65535
  %118 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !164
  %120 = icmp eq i32 %119, 3
  br i1 %120, label %121, label %212, !prof !223

121:                                              ; preds = %112
  %122 = load i32, ptr %67, align 8
  %123 = and i32 %122, 255
  %124 = add nsw i32 %123, -10
  %125 = icmp ult i32 %124, -9
  br i1 %125, label %139, label %126, !prof !224

126:                                              ; preds = %121
  %127 = zext nneg i32 %123 to i64
  %128 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !164
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %130
  %132 = load i64, ptr %131, align 8, !tbaa !219
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %135, !prof !224

134:                                              ; preds = %126
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %135

135:                                              ; preds = %134, %126
  %136 = getelementptr inbounds i8, ptr %67, i64 %132
  %137 = getelementptr inbounds ptr, ptr %136, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !149
  br label %139

139:                                              ; preds = %135, %121
  %140 = phi ptr [ %138, %135 ], [ null, %121 ]
  %141 = load i64, ptr %140, align 8
  %142 = and i64 %141, 67108864
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %208, label %144, !prof !169

144:                                              ; preds = %139
  %145 = and i64 %141, 1048576
  %146 = icmp ne i64 %145, 0
  %147 = and i64 %141, 65535
  %148 = icmp eq i64 %147, 33
  %149 = or i1 %146, %148
  br i1 %149, label %150, label %208

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.tree_decl_common, ptr %140, i64 0, i32 5
  %152 = load ptr, ptr %151, align 8, !tbaa !160
  %153 = icmp eq ptr %152, null
  br i1 %153, label %182, label %154

154:                                              ; preds = %150
  %155 = call ptr @tree_strip_nop_conversions(ptr noundef nonnull %152) #18
  %156 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %155) #18
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %182, label %158

158:                                              ; preds = %154
  %159 = load i64, ptr %155, align 8
  %160 = and i64 %159, 65535
  %161 = icmp eq i64 %160, 121
  br i1 %161, label %162, label %205

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.tree_exp, ptr %155, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !160
  %165 = call ptr @get_base_address(ptr noundef %164) #18
  %166 = icmp eq ptr %165, null
  br i1 %166, label %205, label %167

167:                                              ; preds = %162
  %168 = load i64, ptr %165, align 8
  %169 = and i64 %168, 65535
  %170 = icmp eq i64 %169, 32
  br i1 %170, label %171, label %205

171:                                              ; preds = %167
  %172 = or i64 %168, 262144
  store i64 %172, ptr %165, align 8
  %173 = load ptr, ptr @cfun, align 8, !tbaa !149
  %174 = getelementptr inbounds %struct.function, ptr %173, i64 0, i32 3
  %175 = load ptr, ptr %174, align 8, !tbaa !170
  %176 = icmp eq ptr %175, null
  br i1 %176, label %205, label %177

177:                                              ; preds = %171
  %178 = load ptr, ptr %175, align 8, !tbaa !172
  %179 = icmp eq ptr %178, null
  br i1 %179, label %205, label %180

180:                                              ; preds = %177
  %181 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %165) #18
  br label %205

182:                                              ; preds = %154, %150
  %183 = phi ptr [ %155, %154 ], [ null, %150 ]
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %205

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.tree_decl_common, ptr %140, i64 0, i32 2
  %187 = load i64, ptr %186, align 8
  %188 = and i64 %187, 33554432
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %205

190:                                              ; preds = %185
  %191 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !176
  %192 = call zeroext i8 %191(ptr noundef nonnull %140) #18
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %205, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.tree_common, ptr %140, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !160
  %197 = load i64, ptr %196, align 8
  %198 = trunc i64 %197 to i32
  %199 = and i32 %198, 65534
  %200 = add nsw i32 %199, -6
  %201 = icmp ult i32 %200, 4
  br i1 %201, label %202, label %205

202:                                              ; preds = %194
  %203 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %204 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %196, ptr noundef %203) #18
  br label %205

205:                                              ; preds = %202, %194, %190, %185, %182, %180, %177, %171, %167, %162, %158
  %206 = phi ptr [ %204, %202 ], [ %155, %162 ], [ %155, %167 ], [ %155, %180 ], [ %155, %177 ], [ %155, %158 ], [ undef, %194 ], [ undef, %190 ], [ undef, %185 ], [ undef, %182 ], [ %155, %171 ]
  %207 = phi i1 [ false, %202 ], [ false, %162 ], [ false, %167 ], [ false, %180 ], [ false, %177 ], [ false, %158 ], [ true, %194 ], [ true, %190 ], [ true, %185 ], [ true, %182 ], [ false, %171 ]
  br i1 %207, label %208, label %209

208:                                              ; preds = %205, %144, %139
  br label %209

209:                                              ; preds = %208, %205
  %210 = phi ptr [ %206, %205 ], [ null, %208 ]
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %213, !prof !225

212:                                              ; preds = %209, %112, %96
  br label %213

213:                                              ; preds = %212, %209, %92, %77, %73
  %214 = phi ptr [ null, %77 ], [ null, %73 ], [ null, %212 ], [ %210, %209 ], [ null, %92 ]
  %215 = phi i32 [ 3, %77 ], [ 1, %73 ], [ 1, %212 ], [ 2, %209 ], [ 3, %92 ]
  store i32 %215, ptr %60, align 8, !tbaa.struct !226
  %216 = getelementptr inbounds i8, ptr %60, i64 8
  store ptr %214, ptr %216, align 8, !tbaa.struct !227
  br label %217

217:                                              ; preds = %213, %49
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %218 = load i32, ptr %60, align 8, !tbaa !197
  %219 = icmp eq i32 %218, 2
  br i1 %219, label %220, label %296, !prof !228

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.prop_value_d, ptr %56, i64 %59, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !199
  %223 = load i64, ptr %222, align 8
  %224 = and i64 %223, 65535
  %225 = icmp eq i64 %224, 24
  br i1 %225, label %226, label %296, !prof !229

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.tree_real_cst, ptr %222, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %228, i64 32, i1 false), !tbaa.struct !230
  %229 = getelementptr inbounds %struct.tree_common, ptr %222, i64 0, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !160
  %231 = load i64, ptr %230, align 8
  %232 = and i64 %231, 65535
  %233 = icmp eq i64 %232, 14
  br i1 %233, label %234, label %236

234:                                              ; preds = %226
  %235 = call i32 @vector_type_mode(ptr noundef nonnull %230) #18
  br label %241

236:                                              ; preds = %226
  %237 = getelementptr inbounds %struct.tree_type, ptr %230, i64 0, i32 6
  %238 = load i32, ptr %237, align 4
  %239 = lshr i32 %238, 16
  %240 = and i32 %239, 255
  br label %241

241:                                              ; preds = %236, %234
  %242 = phi i32 [ %235, %234 ], [ %240, %236 ]
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !160
  switch i8 %245, label %265 [
    i8 8, label %246
    i8 9, label %246
    i8 11, label %246
    i8 17, label %246
  ]

246:                                              ; preds = %241, %241, %241, %241
  %247 = and i8 %245, -2
  %248 = icmp eq i8 %247, 8
  br i1 %248, label %253, label %249

249:                                              ; preds = %246
  %250 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %243
  %251 = load i8, ptr %250, align 1, !tbaa !160
  %252 = zext i8 %251 to i32
  br label %253

253:                                              ; preds = %246, %249
  %254 = phi i32 [ %252, %249 ], [ %242, %246 ]
  %255 = add i32 %254, -38
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %256
  %258 = load ptr, ptr %257, align 8, !tbaa !149
  %259 = getelementptr inbounds %struct.real_format, ptr %258, i64 0, i32 14
  %260 = load i8, ptr %259, align 1, !tbaa !231
  %261 = icmp ne i8 %260, 0
  %262 = load i32, ptr @flag_signed_zeros, align 4
  %263 = icmp ne i32 %262, 0
  %264 = select i1 %261, i1 %263, i1 false
  br i1 %264, label %270, label %265

265:                                              ; preds = %253, %241
  %266 = call zeroext i8 @real_isnegzero(ptr noundef nonnull %5) #18
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %270, label %268

268:                                              ; preds = %265
  %269 = call ptr @build_real(ptr noundef nonnull %230, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #18
  br label %294

270:                                              ; preds = %265, %253
  switch i8 %245, label %290 [
    i8 8, label %271
    i8 9, label %271
    i8 11, label %271
    i8 17, label %271
  ]

271:                                              ; preds = %270, %270, %270, %270
  %272 = and i8 %245, -2
  %273 = icmp eq i8 %272, 8
  br i1 %273, label %278, label %274

274:                                              ; preds = %271
  %275 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %243
  %276 = load i8, ptr %275, align 1, !tbaa !160
  %277 = zext i8 %276 to i32
  br label %278

278:                                              ; preds = %271, %274
  %279 = phi i32 [ %277, %274 ], [ %242, %271 ]
  %280 = add i32 %279, -38
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %281
  %283 = load ptr, ptr %282, align 8, !tbaa !149
  %284 = getelementptr inbounds %struct.real_format, ptr %283, i64 0, i32 11
  %285 = load i8, ptr %284, align 2, !tbaa !233
  %286 = icmp eq i8 %285, 0
  %287 = load i32, ptr @flag_finite_math_only, align 4
  %288 = icmp ne i32 %287, 0
  %289 = select i1 %286, i1 true, i1 %288
  br i1 %289, label %290, label %296

290:                                              ; preds = %278, %270
  %291 = call zeroext i8 @real_isnan(ptr noundef nonnull %5) #18
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %290
  store i32 1, ptr %60, align 8, !tbaa !197
  br label %294

294:                                              ; preds = %268, %293
  %295 = phi ptr [ null, %293 ], [ %269, %268 ]
  store ptr %295, ptr %221, align 8, !tbaa !199
  br label %296

296:                                              ; preds = %294, %290, %278, %220, %217
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  %297 = load i32, ptr %60, align 8, !tbaa !197
  %298 = icmp eq i32 %297, 1
  %299 = select i1 %298, i8 %53, i8 0, !prof !409
  %300 = select i1 %298, i8 1, i8 %51, !prof !409
  %301 = icmp eq i32 %297, 2
  %302 = select i1 %301, i8 1, i8 %50, !prof !410
  %303 = icmp eq ptr %55, null
  br i1 %303, label %309, label %304, !prof !411

304:                                              ; preds = %296
  %305 = getelementptr inbounds %struct.use_optype_d, ptr %55, i64 0, i32 1, i32 3
  %306 = load ptr, ptr %305, align 8, !tbaa !406
  %307 = load ptr, ptr %306, align 8, !tbaa !149
  %308 = load ptr, ptr %55, align 8, !tbaa !403
  br label %309

309:                                              ; preds = %304, %296
  %310 = phi ptr [ %308, %304 ], [ %55, %296 ]
  %311 = phi i8 [ %54, %304 ], [ 1, %296 ]
  %312 = phi ptr [ %307, %304 ], [ null, %296 ]
  %313 = icmp eq i8 %311, 0
  br i1 %313, label %49, label %314, !prof !409, !llvm.loop !412

314:                                              ; preds = %309, %45
  %315 = phi i8 [ 1, %45 ], [ %299, %309 ]
  %316 = phi i8 [ 0, %45 ], [ %300, %309 ]
  %317 = phi i8 [ 0, %45 ], [ %302, %309 ]
  %318 = load i32, ptr %7, align 8
  %319 = and i32 %318, 255
  %320 = icmp eq i32 %319, 8
  %321 = select i1 %320, i32 2, i32 0, !prof !400
  %322 = icmp eq i32 %319, 6
  br i1 %320, label %323, label %336, !prof !400

323:                                              ; preds = %314
  %324 = zext nneg i32 %319 to i64
  %325 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %324
  %326 = load i32, ptr %325, align 4, !tbaa !164
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %327
  %329 = load i64, ptr %328, align 8, !tbaa !219
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %323
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %332

332:                                              ; preds = %331, %323
  %333 = getelementptr inbounds i8, ptr %7, i64 %329
  %334 = load ptr, ptr %333, align 8, !tbaa !149
  %335 = icmp ne ptr %334, null
  br label %336

336:                                              ; preds = %332, %314
  %337 = phi i1 [ %322, %314 ], [ %335, %332 ]
  %338 = zext i1 %337 to i32
  %339 = or disjoint i32 %321, %338
  %340 = getelementptr inbounds %struct.gimple_statement_base, ptr %7, i64 0, i32 3
  %341 = load i32, ptr %340, align 4, !tbaa !160
  %342 = icmp ult i32 %339, %341
  br i1 %342, label %343, label %382, !prof !413

343:                                              ; preds = %336
  %344 = zext nneg i32 %339 to i64
  br label %345

345:                                              ; preds = %376, %343
  %346 = phi i64 [ %344, %343 ], [ %378, %376 ]
  %347 = phi i8 [ %317, %343 ], [ %377, %376 ]
  %348 = load i32, ptr %7, align 8
  %349 = and i32 %348, 255
  %350 = add nsw i32 %349, -10
  %351 = icmp ult i32 %350, -9
  br i1 %351, label %365, label %352, !prof !414

352:                                              ; preds = %345
  %353 = zext nneg i32 %349 to i64
  %354 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !164
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %356
  %358 = load i64, ptr %357, align 8, !tbaa !219
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %361, !prof !414

360:                                              ; preds = %352
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %361

361:                                              ; preds = %360, %352
  %362 = getelementptr inbounds i8, ptr %7, i64 %358
  %363 = getelementptr inbounds ptr, ptr %362, i64 %346
  %364 = load ptr, ptr %363, align 8, !tbaa !149
  br label %365

365:                                              ; preds = %361, %345
  %366 = phi ptr [ %364, %361 ], [ null, %345 ]
  %367 = icmp eq ptr %366, null
  br i1 %367, label %376, label %368, !prof !415

368:                                              ; preds = %365
  %369 = load i64, ptr %366, align 8
  %370 = and i64 %369, 65535
  %371 = icmp eq i64 %370, 141
  br i1 %371, label %376, label %372, !prof !416

372:                                              ; preds = %368
  %373 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %366) #18
  %374 = icmp eq i8 %373, 0
  %375 = select i1 %374, i8 %347, i8 1, !prof !417
  br label %376

376:                                              ; preds = %372, %368, %365
  %377 = phi i8 [ %375, %372 ], [ %347, %368 ], [ %347, %365 ]
  %378 = add nuw nsw i64 %346, 1
  %379 = load i32, ptr %340, align 4, !tbaa !160
  %380 = zext i32 %379 to i64
  %381 = icmp ult i64 %378, %380
  br i1 %381, label %345, label %382, !prof !418, !llvm.loop !419

382:                                              ; preds = %376, %336
  %383 = phi i8 [ %317, %336 ], [ %377, %376 ]
  %384 = icmp eq i8 %383, 0
  %385 = icmp ne i8 %316, 0
  %386 = icmp ne i8 %315, 0
  %387 = select i1 %385, i1 %384, i1 false, !prof !400
  %388 = select i1 %387, i1 %386, i1 false, !prof !400
  br i1 %388, label %440, label %389, !prof !400

389:                                              ; preds = %382
  %390 = and i1 %12, %385
  br i1 %390, label %391, label %426, !prof !400

391:                                              ; preds = %389
  %392 = load i32, ptr %7, align 8
  %393 = trunc i32 %392 to i8
  switch i8 %393, label %396 [
    i8 6, label %394
    i8 1, label %394
    i8 8, label %397
  ]

394:                                              ; preds = %391, %391
  %395 = lshr i32 %392, 16
  br label %397

396:                                              ; preds = %391
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1446, ptr noundef nonnull @.str.3) #18
  br label %397

397:                                              ; preds = %396, %394, %391
  %398 = phi i32 [ %395, %394 ], [ 0, %396 ], [ 59, %391 ]
  %399 = zext nneg i32 %398 to i64
  %400 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %399
  %401 = load i8, ptr %400, align 1, !tbaa !160
  %402 = icmp eq i8 %401, 3
  br i1 %402, label %403, label %423

403:                                              ; preds = %397
  %404 = load i32, ptr %7, align 8
  %405 = and i32 %404, 255
  %406 = add nsw i32 %405, -1
  %407 = icmp ult i32 %406, 9
  call void @llvm.assume(i1 %407)
  %408 = zext nneg i32 %405 to i64
  %409 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %408
  %410 = load i32, ptr %409, align 4, !tbaa !164
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %411
  %413 = load i64, ptr %412, align 8, !tbaa !219
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %403
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %416

416:                                              ; preds = %415, %403
  %417 = getelementptr inbounds i8, ptr %7, i64 %413
  %418 = getelementptr inbounds ptr, ptr %417, i64 1
  %419 = load ptr, ptr %418, align 8, !tbaa !149
  %420 = load i64, ptr %419, align 8
  %421 = trunc i64 %420 to i32
  %422 = and i32 %421, 65535
  br label %423

423:                                              ; preds = %416, %397
  %424 = phi i32 [ %422, %416 ], [ %398, %397 ]
  %425 = trunc i32 %424 to i16
  switch i16 %425, label %426 [
    i16 63, label %440
    i16 64, label %440
    i16 66, label %440
  ]

426:                                              ; preds = %423, %389
  %427 = icmp eq i8 %316, 0
  %428 = select i1 %427, i1 %384, i1 false, !prof !399
  %429 = select i1 %427, i32 2, i32 3, !prof !399
  br i1 %428, label %430, label %440, !prof !420

430:                                              ; preds = %426
  %431 = load i32, ptr %7, align 8
  %432 = and i32 %431, 254
  %433 = add nsw i32 %432, -10
  %434 = icmp ult i32 %433, -4
  br i1 %434, label %440, label %435, !prof !421

435:                                              ; preds = %430
  %436 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %7, i64 0, i32 2
  %437 = load ptr, ptr %436, align 8, !tbaa !160
  %438 = icmp eq ptr %437, null
  %439 = select i1 %438, i32 3, i32 2, !prof !422
  br label %440

440:                                              ; preds = %435, %430, %426, %423, %423, %423, %382, %11
  %441 = phi i32 [ 3, %11 ], [ 1, %382 ], [ 1, %423 ], [ %429, %426 ], [ 3, %430 ], [ %439, %435 ], [ 1, %423 ], [ 1, %423 ]
  call void @fold_defer_overflow_warnings() #18
  switch i32 %441, label %512 [
    i32 2, label %442
    i32 3, label %444
  ], !prof !423

442:                                              ; preds = %440
  %443 = call fastcc ptr @ccp_fold(ptr noundef nonnull %7)
  br label %512

444:                                              ; preds = %440
  %445 = load i32, ptr %7, align 8
  %446 = and i32 %445, 255
  %447 = trunc i32 %445 to i8
  switch i8 %447, label %511 [
    i8 6, label %448
    i8 5, label %496
    i8 8, label %512
    i8 1, label %512
  ], !prof !424

448:                                              ; preds = %444
  %449 = lshr i32 %445, 16
  %450 = zext nneg i32 %449 to i64
  %451 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %450
  %452 = load i8, ptr %451, align 1, !tbaa !160
  %453 = icmp eq i8 %452, 3
  br i1 %453, label %454, label %472, !prof !425

454:                                              ; preds = %448
  %455 = add nsw i32 %446, -1
  %456 = icmp ult i32 %455, 9
  call void @llvm.assume(i1 %456)
  %457 = zext nneg i32 %446 to i64
  %458 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %457
  %459 = load i32, ptr %458, align 4, !tbaa !164
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %460
  %462 = load i64, ptr %461, align 8, !tbaa !219
  %463 = icmp eq i64 %462, 0
  br i1 %463, label %464, label %465, !prof !426

464:                                              ; preds = %454
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %465

465:                                              ; preds = %464, %454
  %466 = getelementptr inbounds i8, ptr %7, i64 %462
  %467 = getelementptr inbounds ptr, ptr %466, i64 1
  %468 = load ptr, ptr %467, align 8, !tbaa !149
  %469 = load i64, ptr %468, align 8
  %470 = trunc i64 %469 to i32
  %471 = and i32 %470, 65535
  br label %472

472:                                              ; preds = %465, %448
  %473 = phi i32 [ %471, %465 ], [ %449, %448 ]
  %474 = zext nneg i32 %473 to i64
  %475 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %474
  %476 = load i8, ptr %475, align 1, !tbaa !160
  %477 = icmp eq i8 %476, 3
  br i1 %477, label %478, label %512, !prof !425

478:                                              ; preds = %472
  %479 = load i32, ptr %7, align 8
  %480 = and i32 %479, 255
  %481 = add nsw i32 %480, -10
  %482 = icmp ult i32 %481, -9
  br i1 %482, label %512, label %483, !prof !426

483:                                              ; preds = %478
  %484 = zext nneg i32 %480 to i64
  %485 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %484
  %486 = load i32, ptr %485, align 4, !tbaa !164
  %487 = zext i32 %486 to i64
  %488 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %487
  %489 = load i64, ptr %488, align 8, !tbaa !219
  %490 = icmp eq i64 %489, 0
  br i1 %490, label %491, label %492, !prof !426

491:                                              ; preds = %483
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %492

492:                                              ; preds = %491, %483
  %493 = getelementptr inbounds i8, ptr %7, i64 %489
  %494 = getelementptr inbounds ptr, ptr %493, i64 1
  %495 = load ptr, ptr %494, align 8, !tbaa !149
  br label %512

496:                                              ; preds = %444
  %497 = add nsw i32 %446, -10
  %498 = icmp ult i32 %497, -9
  br i1 %498, label %512, label %499, !prof !427

499:                                              ; preds = %496
  %500 = zext nneg i32 %446 to i64
  %501 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %500
  %502 = load i32, ptr %501, align 4, !tbaa !164
  %503 = zext i32 %502 to i64
  %504 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %503
  %505 = load i64, ptr %504, align 8, !tbaa !219
  %506 = icmp eq i64 %505, 0
  br i1 %506, label %507, label %508, !prof !427

507:                                              ; preds = %499
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %508

508:                                              ; preds = %507, %499
  %509 = getelementptr inbounds i8, ptr %7, i64 %505
  %510 = load ptr, ptr %509, align 8, !tbaa !149
  br label %512

511:                                              ; preds = %444
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1434, ptr noundef nonnull @.str.3) #18
  br label %512

512:                                              ; preds = %511, %508, %496, %492, %478, %472, %444, %444, %442, %440
  %513 = phi ptr [ %443, %442 ], [ null, %440 ], [ null, %511 ], [ null, %472 ], [ null, %444 ], [ %495, %492 ], [ null, %478 ], [ %510, %508 ], [ null, %496 ], [ null, %444 ]
  %514 = icmp eq ptr %513, null
  br i1 %514, label %519, label %515, !prof !428

515:                                              ; preds = %512
  %516 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %513) #18
  %517 = icmp ne i8 %516, 0
  %518 = zext i1 %517 to i8
  br label %519

519:                                              ; preds = %515, %512
  %520 = phi i8 [ 0, %512 ], [ %518, %515 ]
  call void @fold_undefer_overflow_warnings(i8 noundef zeroext %520, ptr noundef nonnull %7, i32 noundef 0) #18
  %521 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %522 = icmp eq ptr %521, null
  br i1 %522, label %540, label %523, !prof !399

523:                                              ; preds = %519
  %524 = load i32, ptr @dump_flags, align 4, !tbaa !164
  %525 = and i32 %524, 8
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %540, label %527

527:                                              ; preds = %523
  %528 = call i64 @fwrite(ptr nonnull @.str.14, i64 16, i64 1, ptr nonnull %521)
  %529 = load ptr, ptr @dump_file, align 8, !tbaa !149
  switch i32 %441, label %536 [
    i32 2, label %530
    i32 1, label %532
    i32 3, label %534
  ]

530:                                              ; preds = %527
  %531 = call i64 @fwrite(ptr nonnull @.str.15, i64 8, i64 1, ptr %529)
  br label %537

532:                                              ; preds = %527
  %533 = call i64 @fwrite(ptr nonnull @.str.16, i64 9, i64 1, ptr %529)
  br label %537

534:                                              ; preds = %527
  %535 = call i64 @fwrite(ptr nonnull @.str.17, i64 7, i64 1, ptr %529)
  br label %537

536:                                              ; preds = %527
  unreachable

537:                                              ; preds = %534, %532, %530
  %538 = load ptr, ptr @dump_file, align 8, !tbaa !149
  %539 = call i32 @fputc(i32 10, ptr %538)
  br label %540

540:                                              ; preds = %519, %523, %537
  %541 = icmp eq i8 %520, 0
  %542 = select i1 %541, ptr null, ptr %513, !prof !465
  br i1 %541, label %1582, label %543, !prof !509

543:                                              ; preds = %540
  %544 = load i64, ptr %542, align 8
  %545 = and i64 %544, 65535
  %546 = icmp eq i64 %545, 23
  br i1 %546, label %547, label %1582, !prof !510

547:                                              ; preds = %543
  %548 = call i32 @integer_zerop(ptr noundef nonnull %542) #18
  %549 = icmp eq i32 %548, 0
  %550 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !149
  %551 = load i32, ptr %7, align 8
  %552 = and i32 %551, 255
  %553 = add nsw i32 %552, -10
  %554 = icmp ult i32 %553, -9
  br i1 %549, label %601, label %555, !prof !511

555:                                              ; preds = %547
  br i1 %554, label %560, label %556, !prof !511

556:                                              ; preds = %555
  %557 = getelementptr inbounds %struct.gimple_statement_base, ptr %7, i64 0, i32 3
  %558 = load i32, ptr %557, align 4, !tbaa !160
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %561, !prof !511

560:                                              ; preds = %556, %555
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1665, ptr noundef nonnull @.str.3) #18
  br label %561

561:                                              ; preds = %560, %556
  %562 = load i32, ptr %7, align 8
  %563 = and i32 %562, 255
  %564 = zext nneg i32 %563 to i64
  %565 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %564
  %566 = load i32, ptr %565, align 4, !tbaa !164
  %567 = zext i32 %566 to i64
  %568 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %567
  %569 = load i64, ptr %568, align 8, !tbaa !219
  %570 = icmp eq i64 %569, 0
  br i1 %570, label %571, label %572, !prof !511

571:                                              ; preds = %561
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %572

572:                                              ; preds = %571, %561
  %573 = getelementptr inbounds i8, ptr %7, i64 %569
  store ptr %550, ptr %573, align 8, !tbaa !149
  %574 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !149
  %575 = load i32, ptr %7, align 8
  %576 = and i32 %575, 255
  %577 = add nsw i32 %576, -10
  %578 = icmp ult i32 %577, -9
  br i1 %578, label %583, label %579, !prof !511

579:                                              ; preds = %572
  %580 = getelementptr inbounds %struct.gimple_statement_base, ptr %7, i64 0, i32 3
  %581 = load i32, ptr %580, align 4, !tbaa !160
  %582 = icmp ugt i32 %581, 1
  br i1 %582, label %584, label %583, !prof !510

583:                                              ; preds = %579, %572
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1665, ptr noundef nonnull @.str.3) #18
  br label %584

584:                                              ; preds = %583, %579
  %585 = load i32, ptr %7, align 8
  %586 = and i32 %585, 255
  %587 = zext nneg i32 %586 to i64
  %588 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %587
  %589 = load i32, ptr %588, align 4, !tbaa !164
  %590 = zext i32 %589 to i64
  %591 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %590
  %592 = load i64, ptr %591, align 8, !tbaa !219
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %594, label %595, !prof !511

594:                                              ; preds = %584
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %595

595:                                              ; preds = %584, %594
  %596 = getelementptr inbounds i8, ptr %7, i64 %592
  %597 = getelementptr inbounds ptr, ptr %596, i64 1
  store ptr %574, ptr %597, align 8, !tbaa !149
  %598 = load i32, ptr %7, align 8
  %599 = and i32 %598, 65535
  %600 = or disjoint i32 %599, 6619136
  store i32 %600, ptr %7, align 8
  br label %1582

601:                                              ; preds = %547
  br i1 %554, label %606, label %602

602:                                              ; preds = %601
  %603 = getelementptr inbounds %struct.gimple_statement_base, ptr %7, i64 0, i32 3
  %604 = load i32, ptr %603, align 4, !tbaa !160
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %607

606:                                              ; preds = %602, %601
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1665, ptr noundef nonnull @.str.3) #18
  br label %607

607:                                              ; preds = %606, %602
  %608 = load i32, ptr %7, align 8
  %609 = and i32 %608, 255
  %610 = zext nneg i32 %609 to i64
  %611 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %610
  %612 = load i32, ptr %611, align 4, !tbaa !164
  %613 = zext i32 %612 to i64
  %614 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %613
  %615 = load i64, ptr %614, align 8, !tbaa !219
  %616 = icmp eq i64 %615, 0
  br i1 %616, label %617, label %618

617:                                              ; preds = %607
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %618

618:                                              ; preds = %617, %607
  %619 = getelementptr inbounds i8, ptr %7, i64 %615
  store ptr %550, ptr %619, align 8, !tbaa !149
  %620 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !149
  %621 = load i32, ptr %7, align 8
  %622 = and i32 %621, 255
  %623 = add nsw i32 %622, -10
  %624 = icmp ult i32 %623, -9
  br i1 %624, label %629, label %625

625:                                              ; preds = %618
  %626 = getelementptr inbounds %struct.gimple_statement_base, ptr %7, i64 0, i32 3
  %627 = load i32, ptr %626, align 4, !tbaa !160
  %628 = icmp ugt i32 %627, 1
  br i1 %628, label %630, label %629

629:                                              ; preds = %625, %618
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1665, ptr noundef nonnull @.str.3) #18
  br label %630

630:                                              ; preds = %629, %625
  %631 = load i32, ptr %7, align 8
  %632 = and i32 %631, 255
  %633 = zext nneg i32 %632 to i64
  %634 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %633
  %635 = load i32, ptr %634, align 4, !tbaa !164
  %636 = zext i32 %635 to i64
  %637 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %636
  %638 = load i64, ptr %637, align 8, !tbaa !219
  %639 = icmp eq i64 %638, 0
  br i1 %639, label %640, label %641

640:                                              ; preds = %630
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %641

641:                                              ; preds = %630, %640
  %642 = getelementptr inbounds i8, ptr %7, i64 %638
  %643 = getelementptr inbounds ptr, ptr %642, i64 1
  store ptr %620, ptr %643, align 8, !tbaa !149
  %644 = load i32, ptr %7, align 8
  %645 = and i32 %644, 65535
  %646 = or disjoint i32 %645, 6619136
  store i32 %646, ptr %7, align 8
  br label %1582

647:                                              ; preds = %1
  %648 = add nsw i32 %9, -10
  %649 = icmp ult i32 %648, -9
  br i1 %649, label %662, label %650, !prof !512

650:                                              ; preds = %647
  %651 = zext nneg i32 %9 to i64
  %652 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %651
  %653 = load i32, ptr %652, align 4, !tbaa !164
  %654 = zext i32 %653 to i64
  %655 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %654
  %656 = load i64, ptr %655, align 8, !tbaa !219
  %657 = icmp eq i64 %656, 0
  br i1 %657, label %658, label %659, !prof !512

658:                                              ; preds = %650
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %659

659:                                              ; preds = %658, %650
  %660 = getelementptr inbounds i8, ptr %7, i64 %656
  %661 = load ptr, ptr %660, align 8, !tbaa !149
  br label %662

662:                                              ; preds = %647, %659
  %663 = phi ptr [ %661, %659 ], [ null, %647 ]
  %664 = icmp eq ptr %663, null
  br i1 %664, label %937, label %665, !prof !513

665:                                              ; preds = %662
  %666 = load i64, ptr %663, align 8
  %667 = and i64 %666, 65535
  %668 = icmp eq i64 %667, 141
  br i1 %668, label %669, label %937, !prof !268

669:                                              ; preds = %665
  %670 = load ptr, ptr @const_val, align 8, !tbaa !149
  %671 = icmp eq ptr %670, null
  br i1 %671, label %913, label %672, !prof !214

672:                                              ; preds = %669
  %673 = getelementptr inbounds %struct.tree_ssa_name, ptr %663, i64 0, i32 3
  %674 = load i32, ptr %673, align 8, !tbaa !160
  %675 = zext i32 %674 to i64
  %676 = getelementptr inbounds %struct.prop_value_d, ptr %670, i64 %675
  %677 = load i32, ptr %676, align 8, !tbaa !197
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %833, !prof !215

679:                                              ; preds = %672
  %680 = getelementptr inbounds %struct.tree_ssa_name, ptr %663, i64 0, i32 1
  %681 = load ptr, ptr %680, align 8, !tbaa !160
  %682 = getelementptr inbounds %struct.tree_ssa_name, ptr %663, i64 0, i32 2
  %683 = load ptr, ptr %682, align 8, !tbaa !160
  %684 = load i32, ptr %683, align 8
  %685 = trunc i32 %684 to i8
  switch i8 %685, label %708 [
    i8 18, label %686
    i8 6, label %712
    i8 8, label %694
  ], !prof !216

686:                                              ; preds = %679
  %687 = tail call zeroext i8 @is_gimple_reg(ptr noundef %681) #18
  %688 = icmp eq i8 %687, 0
  br i1 %688, label %693, label %689, !prof !217

689:                                              ; preds = %686
  %690 = load i64, ptr %681, align 8
  %691 = and i64 %690, 65535
  %692 = icmp eq i64 %691, 34
  br i1 %692, label %693, label %829, !prof !218

693:                                              ; preds = %689, %686
  br label %829

694:                                              ; preds = %679
  %695 = and i32 %684, 255
  %696 = zext nneg i32 %695 to i64
  %697 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %696
  %698 = load i32, ptr %697, align 4, !tbaa !164
  %699 = zext i32 %698 to i64
  %700 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %699
  %701 = load i64, ptr %700, align 8, !tbaa !219
  %702 = icmp eq i64 %701, 0
  br i1 %702, label %703, label %704

703:                                              ; preds = %694
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %704

704:                                              ; preds = %703, %694
  %705 = getelementptr inbounds i8, ptr %683, i64 %701
  %706 = load ptr, ptr %705, align 8, !tbaa !149
  %707 = icmp eq ptr %706, null
  br i1 %707, label %708, label %712

708:                                              ; preds = %704, %679
  %709 = load i32, ptr %683, align 8
  %710 = and i32 %709, 255
  %711 = icmp eq i32 %710, 16
  br i1 %711, label %712, label %829, !prof !220

712:                                              ; preds = %708, %704, %679
  %713 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %683) #18
  %714 = icmp eq i8 %713, 0
  br i1 %714, label %828, label %715, !prof !221

715:                                              ; preds = %712
  %716 = load i32, ptr %683, align 8
  %717 = and i32 %716, 255
  %718 = add nsw i32 %717, -1
  %719 = icmp ult i32 %718, 9
  tail call void @llvm.assume(i1 %719)
  %720 = zext nneg i32 %717 to i64
  %721 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %720
  %722 = load i32, ptr %721, align 4, !tbaa !164
  %723 = zext i32 %722 to i64
  %724 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %723
  %725 = load i64, ptr %724, align 8, !tbaa !219
  %726 = icmp eq i64 %725, 0
  br i1 %726, label %727, label %728, !prof !222

727:                                              ; preds = %715
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %728

728:                                              ; preds = %727, %715
  %729 = getelementptr inbounds i8, ptr %683, i64 %725
  %730 = getelementptr inbounds ptr, ptr %729, i64 1
  %731 = load ptr, ptr %730, align 8, !tbaa !149
  %732 = load i64, ptr %731, align 8
  %733 = and i64 %732, 65535
  %734 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %733
  %735 = load i32, ptr %734, align 4, !tbaa !164
  %736 = icmp eq i32 %735, 3
  br i1 %736, label %737, label %828, !prof !223

737:                                              ; preds = %728
  %738 = load i32, ptr %683, align 8
  %739 = and i32 %738, 255
  %740 = add nsw i32 %739, -10
  %741 = icmp ult i32 %740, -9
  br i1 %741, label %755, label %742, !prof !224

742:                                              ; preds = %737
  %743 = zext nneg i32 %739 to i64
  %744 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %743
  %745 = load i32, ptr %744, align 4, !tbaa !164
  %746 = zext i32 %745 to i64
  %747 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %746
  %748 = load i64, ptr %747, align 8, !tbaa !219
  %749 = icmp eq i64 %748, 0
  br i1 %749, label %750, label %751, !prof !224

750:                                              ; preds = %742
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %751

751:                                              ; preds = %750, %742
  %752 = getelementptr inbounds i8, ptr %683, i64 %748
  %753 = getelementptr inbounds ptr, ptr %752, i64 1
  %754 = load ptr, ptr %753, align 8, !tbaa !149
  br label %755

755:                                              ; preds = %751, %737
  %756 = phi ptr [ %754, %751 ], [ null, %737 ]
  %757 = load i64, ptr %756, align 8
  %758 = and i64 %757, 67108864
  %759 = icmp eq i64 %758, 0
  br i1 %759, label %824, label %760, !prof !169

760:                                              ; preds = %755
  %761 = and i64 %757, 1048576
  %762 = icmp ne i64 %761, 0
  %763 = and i64 %757, 65535
  %764 = icmp eq i64 %763, 33
  %765 = or i1 %762, %764
  br i1 %765, label %766, label %824

766:                                              ; preds = %760
  %767 = getelementptr inbounds %struct.tree_decl_common, ptr %756, i64 0, i32 5
  %768 = load ptr, ptr %767, align 8, !tbaa !160
  %769 = icmp eq ptr %768, null
  br i1 %769, label %798, label %770

770:                                              ; preds = %766
  %771 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %768) #18
  %772 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %771) #18
  %773 = icmp eq i8 %772, 0
  br i1 %773, label %798, label %774

774:                                              ; preds = %770
  %775 = load i64, ptr %771, align 8
  %776 = and i64 %775, 65535
  %777 = icmp eq i64 %776, 121
  br i1 %777, label %778, label %821

778:                                              ; preds = %774
  %779 = getelementptr inbounds %struct.tree_exp, ptr %771, i64 0, i32 3
  %780 = load ptr, ptr %779, align 8, !tbaa !160
  %781 = tail call ptr @get_base_address(ptr noundef %780) #18
  %782 = icmp eq ptr %781, null
  br i1 %782, label %821, label %783

783:                                              ; preds = %778
  %784 = load i64, ptr %781, align 8
  %785 = and i64 %784, 65535
  %786 = icmp eq i64 %785, 32
  br i1 %786, label %787, label %821

787:                                              ; preds = %783
  %788 = or i64 %784, 262144
  store i64 %788, ptr %781, align 8
  %789 = load ptr, ptr @cfun, align 8, !tbaa !149
  %790 = getelementptr inbounds %struct.function, ptr %789, i64 0, i32 3
  %791 = load ptr, ptr %790, align 8, !tbaa !170
  %792 = icmp eq ptr %791, null
  br i1 %792, label %821, label %793

793:                                              ; preds = %787
  %794 = load ptr, ptr %791, align 8, !tbaa !172
  %795 = icmp eq ptr %794, null
  br i1 %795, label %821, label %796

796:                                              ; preds = %793
  %797 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %781) #18
  br label %821

798:                                              ; preds = %770, %766
  %799 = phi ptr [ %771, %770 ], [ null, %766 ]
  %800 = icmp eq ptr %799, null
  br i1 %800, label %801, label %821

801:                                              ; preds = %798
  %802 = getelementptr inbounds %struct.tree_decl_common, ptr %756, i64 0, i32 2
  %803 = load i64, ptr %802, align 8
  %804 = and i64 %803, 33554432
  %805 = icmp eq i64 %804, 0
  br i1 %805, label %806, label %821

806:                                              ; preds = %801
  %807 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !176
  %808 = tail call zeroext i8 %807(ptr noundef nonnull %756) #18
  %809 = icmp eq i8 %808, 0
  br i1 %809, label %821, label %810

810:                                              ; preds = %806
  %811 = getelementptr inbounds %struct.tree_common, ptr %756, i64 0, i32 2
  %812 = load ptr, ptr %811, align 8, !tbaa !160
  %813 = load i64, ptr %812, align 8
  %814 = trunc i64 %813 to i32
  %815 = and i32 %814, 65534
  %816 = add nsw i32 %815, -6
  %817 = icmp ult i32 %816, 4
  br i1 %817, label %818, label %821

818:                                              ; preds = %810
  %819 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %820 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %812, ptr noundef %819) #18
  br label %821

821:                                              ; preds = %818, %810, %806, %801, %798, %796, %793, %787, %783, %778, %774
  %822 = phi ptr [ %820, %818 ], [ %771, %778 ], [ %771, %783 ], [ %771, %796 ], [ %771, %793 ], [ %771, %774 ], [ undef, %810 ], [ undef, %806 ], [ undef, %801 ], [ undef, %798 ], [ %771, %787 ]
  %823 = phi i1 [ false, %818 ], [ false, %778 ], [ false, %783 ], [ false, %796 ], [ false, %793 ], [ false, %774 ], [ true, %810 ], [ true, %806 ], [ true, %801 ], [ true, %798 ], [ false, %787 ]
  br i1 %823, label %824, label %825

824:                                              ; preds = %821, %760, %755
  br label %825

825:                                              ; preds = %824, %821
  %826 = phi ptr [ %822, %821 ], [ null, %824 ]
  %827 = icmp eq ptr %826, null
  br i1 %827, label %828, label %829, !prof !225

828:                                              ; preds = %825, %728, %712
  br label %829

829:                                              ; preds = %828, %825, %708, %693, %689
  %830 = phi ptr [ null, %693 ], [ null, %689 ], [ null, %828 ], [ %826, %825 ], [ null, %708 ]
  %831 = phi i32 [ 3, %693 ], [ 1, %689 ], [ 1, %828 ], [ 2, %825 ], [ 3, %708 ]
  store i32 %831, ptr %676, align 8, !tbaa.struct !226
  %832 = getelementptr inbounds i8, ptr %676, i64 8
  store ptr %830, ptr %832, align 8, !tbaa.struct !227
  br label %833

833:                                              ; preds = %829, %672
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  %834 = load i32, ptr %676, align 8, !tbaa !197
  %835 = icmp eq i32 %834, 2
  br i1 %835, label %836, label %912, !prof !228

836:                                              ; preds = %833
  %837 = getelementptr inbounds %struct.prop_value_d, ptr %670, i64 %675, i32 1
  %838 = load ptr, ptr %837, align 8, !tbaa !199
  %839 = load i64, ptr %838, align 8
  %840 = and i64 %839, 65535
  %841 = icmp eq i64 %840, 24
  br i1 %841, label %842, label %912, !prof !229

842:                                              ; preds = %836
  %843 = getelementptr inbounds %struct.tree_real_cst, ptr %838, i64 0, i32 1
  %844 = load ptr, ptr %843, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %844, i64 32, i1 false), !tbaa.struct !230
  %845 = getelementptr inbounds %struct.tree_common, ptr %838, i64 0, i32 2
  %846 = load ptr, ptr %845, align 8, !tbaa !160
  %847 = load i64, ptr %846, align 8
  %848 = and i64 %847, 65535
  %849 = icmp eq i64 %848, 14
  br i1 %849, label %850, label %852

850:                                              ; preds = %842
  %851 = tail call i32 @vector_type_mode(ptr noundef nonnull %846) #18
  br label %857

852:                                              ; preds = %842
  %853 = getelementptr inbounds %struct.tree_type, ptr %846, i64 0, i32 6
  %854 = load i32, ptr %853, align 4
  %855 = lshr i32 %854, 16
  %856 = and i32 %855, 255
  br label %857

857:                                              ; preds = %852, %850
  %858 = phi i32 [ %851, %850 ], [ %856, %852 ]
  %859 = zext i32 %858 to i64
  %860 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %859
  %861 = load i8, ptr %860, align 1, !tbaa !160
  switch i8 %861, label %881 [
    i8 8, label %862
    i8 9, label %862
    i8 11, label %862
    i8 17, label %862
  ]

862:                                              ; preds = %857, %857, %857, %857
  %863 = and i8 %861, -2
  %864 = icmp eq i8 %863, 8
  br i1 %864, label %869, label %865

865:                                              ; preds = %862
  %866 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %859
  %867 = load i8, ptr %866, align 1, !tbaa !160
  %868 = zext i8 %867 to i32
  br label %869

869:                                              ; preds = %862, %865
  %870 = phi i32 [ %868, %865 ], [ %858, %862 ]
  %871 = add i32 %870, -38
  %872 = zext i32 %871 to i64
  %873 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %872
  %874 = load ptr, ptr %873, align 8, !tbaa !149
  %875 = getelementptr inbounds %struct.real_format, ptr %874, i64 0, i32 14
  %876 = load i8, ptr %875, align 1, !tbaa !231
  %877 = icmp ne i8 %876, 0
  %878 = load i32, ptr @flag_signed_zeros, align 4
  %879 = icmp ne i32 %878, 0
  %880 = select i1 %877, i1 %879, i1 false
  br i1 %880, label %886, label %881

881:                                              ; preds = %869, %857
  %882 = call zeroext i8 @real_isnegzero(ptr noundef nonnull %4) #18
  %883 = icmp eq i8 %882, 0
  br i1 %883, label %886, label %884

884:                                              ; preds = %881
  %885 = call ptr @build_real(ptr noundef nonnull %846, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #18
  br label %910

886:                                              ; preds = %881, %869
  switch i8 %861, label %906 [
    i8 8, label %887
    i8 9, label %887
    i8 11, label %887
    i8 17, label %887
  ]

887:                                              ; preds = %886, %886, %886, %886
  %888 = and i8 %861, -2
  %889 = icmp eq i8 %888, 8
  br i1 %889, label %894, label %890

890:                                              ; preds = %887
  %891 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %859
  %892 = load i8, ptr %891, align 1, !tbaa !160
  %893 = zext i8 %892 to i32
  br label %894

894:                                              ; preds = %887, %890
  %895 = phi i32 [ %893, %890 ], [ %858, %887 ]
  %896 = add i32 %895, -38
  %897 = zext i32 %896 to i64
  %898 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %897
  %899 = load ptr, ptr %898, align 8, !tbaa !149
  %900 = getelementptr inbounds %struct.real_format, ptr %899, i64 0, i32 11
  %901 = load i8, ptr %900, align 2, !tbaa !233
  %902 = icmp eq i8 %901, 0
  %903 = load i32, ptr @flag_finite_math_only, align 4
  %904 = icmp ne i32 %903, 0
  %905 = select i1 %902, i1 true, i1 %904
  br i1 %905, label %906, label %912

906:                                              ; preds = %894, %886
  %907 = call zeroext i8 @real_isnan(ptr noundef nonnull %4) #18
  %908 = icmp eq i8 %907, 0
  br i1 %908, label %912, label %909

909:                                              ; preds = %906
  store i32 1, ptr %676, align 8, !tbaa !197
  br label %910

910:                                              ; preds = %884, %909
  %911 = phi ptr [ null, %909 ], [ %885, %884 ]
  store ptr %911, ptr %837, align 8, !tbaa !199
  br label %912

912:                                              ; preds = %910, %906, %894, %836, %833
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  br label %913

913:                                              ; preds = %669, %912
  %914 = phi ptr [ %676, %912 ], [ null, %669 ]
  %915 = icmp eq ptr %914, null
  br i1 %915, label %937, label %916, !prof !267

916:                                              ; preds = %913
  %917 = load i32, ptr %914, align 8, !tbaa !197
  %918 = icmp eq i32 %917, 2
  br i1 %918, label %919, label %937, !prof !267

919:                                              ; preds = %916
  %920 = getelementptr inbounds %struct.prop_value_d, ptr %914, i64 0, i32 1
  %921 = load ptr, ptr %920, align 8, !tbaa !199
  %922 = call ptr @unshare_expr(ptr noundef %921) #18
  %923 = getelementptr inbounds %struct.tree_common, ptr %663, i64 0, i32 2
  %924 = load ptr, ptr %923, align 8, !tbaa !160
  %925 = getelementptr inbounds %struct.tree_common, ptr %922, i64 0, i32 2
  %926 = load ptr, ptr %925, align 8, !tbaa !160
  %927 = call zeroext i8 @useless_type_conversion_p(ptr noundef %924, ptr noundef %926) #18
  %928 = icmp eq i8 %927, 0
  br i1 %928, label %929, label %932

929:                                              ; preds = %919
  %930 = load ptr, ptr %923, align 8, !tbaa !160
  %931 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %930, ptr noundef %922) #18
  br label %932

932:                                              ; preds = %929, %919
  %933 = phi ptr [ %922, %919 ], [ %931, %929 ]
  %934 = call zeroext i8 @update_call_from_tree(ptr noundef nonnull %0, ptr noundef %933) #18
  %935 = icmp eq i8 %934, 0
  br i1 %935, label %936, label %1582

936:                                              ; preds = %932
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1533, ptr noundef nonnull @.str.3) #18
  br label %1582

937:                                              ; preds = %916, %913, %665, %662
  %938 = load i32, ptr %7, align 8
  %939 = and i32 %938, 255
  %940 = add nsw i32 %939, -1
  %941 = icmp ult i32 %940, 9
  call void @llvm.assume(i1 %941)
  %942 = zext nneg i32 %939 to i64
  %943 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %942
  %944 = load i32, ptr %943, align 4, !tbaa !164
  %945 = zext i32 %944 to i64
  %946 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %945
  %947 = load i64, ptr %946, align 8, !tbaa !219
  %948 = icmp eq i64 %947, 0
  br i1 %948, label %949, label %950, !prof !512

949:                                              ; preds = %937
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %950

950:                                              ; preds = %949, %937
  %951 = getelementptr inbounds i8, ptr %7, i64 %947
  %952 = getelementptr inbounds ptr, ptr %951, i64 1
  %953 = load ptr, ptr %952, align 8, !tbaa !149
  %954 = getelementptr inbounds %struct.tree_common, ptr %953, i64 0, i32 2
  %955 = load ptr, ptr %954, align 8, !tbaa !160
  %956 = getelementptr inbounds %struct.tree_common, ptr %955, i64 0, i32 2
  %957 = load ptr, ptr %956, align 8, !tbaa !160
  %958 = getelementptr inbounds %struct.tree_type, ptr %957, i64 0, i32 1
  %959 = getelementptr inbounds %struct.gimple_statement_base, ptr %7, i64 0, i32 3
  %960 = load ptr, ptr %958, align 8, !tbaa !160
  %961 = load i32, ptr %959, align 4, !tbaa !160
  %962 = icmp ne i32 %961, 3
  %963 = icmp ne ptr %960, null
  %964 = select i1 %962, i1 %963, i1 false, !prof !514
  br i1 %964, label %965, label %1582, !prof !515

965:                                              ; preds = %950, %1283
  %966 = phi i64 [ %1285, %1283 ], [ 0, %950 ]
  %967 = phi ptr [ %1287, %1283 ], [ %960, %950 ]
  %968 = phi i8 [ %1284, %1283 ], [ 0, %950 ]
  %969 = trunc i64 %966 to i32
  %970 = add i32 %969, 3
  %971 = load i32, ptr %7, align 8
  %972 = and i32 %971, 255
  %973 = add nsw i32 %972, -10
  %974 = icmp ult i32 %973, -9
  br i1 %974, label %989, label %975, !prof !516

975:                                              ; preds = %965
  %976 = zext nneg i32 %972 to i64
  %977 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %976
  %978 = load i32, ptr %977, align 4, !tbaa !164
  %979 = zext i32 %978 to i64
  %980 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %979
  %981 = load i64, ptr %980, align 8, !tbaa !219
  %982 = icmp eq i64 %981, 0
  br i1 %982, label %983, label %984, !prof !516

983:                                              ; preds = %975
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %984

984:                                              ; preds = %983, %975
  %985 = getelementptr inbounds i8, ptr %7, i64 %981
  %986 = zext i32 %970 to i64
  %987 = getelementptr inbounds ptr, ptr %985, i64 %986
  %988 = load ptr, ptr %987, align 8, !tbaa !149
  br label %989

989:                                              ; preds = %965, %984
  %990 = phi ptr [ %988, %984 ], [ null, %965 ]
  %991 = load i64, ptr %990, align 8
  %992 = and i64 %991, 65535
  %993 = icmp eq i64 %992, 141
  br i1 %993, label %994, label %1283, !prof !517

994:                                              ; preds = %989
  %995 = load ptr, ptr @const_val, align 8, !tbaa !149
  %996 = icmp eq ptr %995, null
  br i1 %996, label %1238, label %997, !prof !214

997:                                              ; preds = %994
  %998 = getelementptr inbounds %struct.tree_ssa_name, ptr %990, i64 0, i32 3
  %999 = load i32, ptr %998, align 8, !tbaa !160
  %1000 = zext i32 %999 to i64
  %1001 = getelementptr inbounds %struct.prop_value_d, ptr %995, i64 %1000
  %1002 = load i32, ptr %1001, align 8, !tbaa !197
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1004, label %1158, !prof !215

1004:                                             ; preds = %997
  %1005 = getelementptr inbounds %struct.tree_ssa_name, ptr %990, i64 0, i32 1
  %1006 = load ptr, ptr %1005, align 8, !tbaa !160
  %1007 = getelementptr inbounds %struct.tree_ssa_name, ptr %990, i64 0, i32 2
  %1008 = load ptr, ptr %1007, align 8, !tbaa !160
  %1009 = load i32, ptr %1008, align 8
  %1010 = trunc i32 %1009 to i8
  switch i8 %1010, label %1033 [
    i8 18, label %1011
    i8 6, label %1037
    i8 8, label %1019
  ], !prof !216

1011:                                             ; preds = %1004
  %1012 = call zeroext i8 @is_gimple_reg(ptr noundef %1006) #18
  %1013 = icmp eq i8 %1012, 0
  br i1 %1013, label %1018, label %1014, !prof !217

1014:                                             ; preds = %1011
  %1015 = load i64, ptr %1006, align 8
  %1016 = and i64 %1015, 65535
  %1017 = icmp eq i64 %1016, 34
  br i1 %1017, label %1018, label %1154, !prof !218

1018:                                             ; preds = %1014, %1011
  br label %1154

1019:                                             ; preds = %1004
  %1020 = and i32 %1009, 255
  %1021 = zext nneg i32 %1020 to i64
  %1022 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1021
  %1023 = load i32, ptr %1022, align 4, !tbaa !164
  %1024 = zext i32 %1023 to i64
  %1025 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1024
  %1026 = load i64, ptr %1025, align 8, !tbaa !219
  %1027 = icmp eq i64 %1026, 0
  br i1 %1027, label %1028, label %1029

1028:                                             ; preds = %1019
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %1029

1029:                                             ; preds = %1028, %1019
  %1030 = getelementptr inbounds i8, ptr %1008, i64 %1026
  %1031 = load ptr, ptr %1030, align 8, !tbaa !149
  %1032 = icmp eq ptr %1031, null
  br i1 %1032, label %1033, label %1037

1033:                                             ; preds = %1029, %1004
  %1034 = load i32, ptr %1008, align 8
  %1035 = and i32 %1034, 255
  %1036 = icmp eq i32 %1035, 16
  br i1 %1036, label %1037, label %1154, !prof !220

1037:                                             ; preds = %1033, %1029, %1004
  %1038 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %1008) #18
  %1039 = icmp eq i8 %1038, 0
  br i1 %1039, label %1153, label %1040, !prof !221

1040:                                             ; preds = %1037
  %1041 = load i32, ptr %1008, align 8
  %1042 = and i32 %1041, 255
  %1043 = add nsw i32 %1042, -1
  %1044 = icmp ult i32 %1043, 9
  call void @llvm.assume(i1 %1044)
  %1045 = zext nneg i32 %1042 to i64
  %1046 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1045
  %1047 = load i32, ptr %1046, align 4, !tbaa !164
  %1048 = zext i32 %1047 to i64
  %1049 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1048
  %1050 = load i64, ptr %1049, align 8, !tbaa !219
  %1051 = icmp eq i64 %1050, 0
  br i1 %1051, label %1052, label %1053, !prof !222

1052:                                             ; preds = %1040
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %1053

1053:                                             ; preds = %1052, %1040
  %1054 = getelementptr inbounds i8, ptr %1008, i64 %1050
  %1055 = getelementptr inbounds ptr, ptr %1054, i64 1
  %1056 = load ptr, ptr %1055, align 8, !tbaa !149
  %1057 = load i64, ptr %1056, align 8
  %1058 = and i64 %1057, 65535
  %1059 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1058
  %1060 = load i32, ptr %1059, align 4, !tbaa !164
  %1061 = icmp eq i32 %1060, 3
  br i1 %1061, label %1062, label %1153, !prof !223

1062:                                             ; preds = %1053
  %1063 = load i32, ptr %1008, align 8
  %1064 = and i32 %1063, 255
  %1065 = add nsw i32 %1064, -10
  %1066 = icmp ult i32 %1065, -9
  br i1 %1066, label %1080, label %1067, !prof !224

1067:                                             ; preds = %1062
  %1068 = zext nneg i32 %1064 to i64
  %1069 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1068
  %1070 = load i32, ptr %1069, align 4, !tbaa !164
  %1071 = zext i32 %1070 to i64
  %1072 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1071
  %1073 = load i64, ptr %1072, align 8, !tbaa !219
  %1074 = icmp eq i64 %1073, 0
  br i1 %1074, label %1075, label %1076, !prof !224

1075:                                             ; preds = %1067
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %1076

1076:                                             ; preds = %1075, %1067
  %1077 = getelementptr inbounds i8, ptr %1008, i64 %1073
  %1078 = getelementptr inbounds ptr, ptr %1077, i64 1
  %1079 = load ptr, ptr %1078, align 8, !tbaa !149
  br label %1080

1080:                                             ; preds = %1076, %1062
  %1081 = phi ptr [ %1079, %1076 ], [ null, %1062 ]
  %1082 = load i64, ptr %1081, align 8
  %1083 = and i64 %1082, 67108864
  %1084 = icmp eq i64 %1083, 0
  br i1 %1084, label %1149, label %1085, !prof !169

1085:                                             ; preds = %1080
  %1086 = and i64 %1082, 1048576
  %1087 = icmp ne i64 %1086, 0
  %1088 = and i64 %1082, 65535
  %1089 = icmp eq i64 %1088, 33
  %1090 = or i1 %1087, %1089
  br i1 %1090, label %1091, label %1149

1091:                                             ; preds = %1085
  %1092 = getelementptr inbounds %struct.tree_decl_common, ptr %1081, i64 0, i32 5
  %1093 = load ptr, ptr %1092, align 8, !tbaa !160
  %1094 = icmp eq ptr %1093, null
  br i1 %1094, label %1123, label %1095

1095:                                             ; preds = %1091
  %1096 = call ptr @tree_strip_nop_conversions(ptr noundef nonnull %1093) #18
  %1097 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %1096) #18
  %1098 = icmp eq i8 %1097, 0
  br i1 %1098, label %1123, label %1099

1099:                                             ; preds = %1095
  %1100 = load i64, ptr %1096, align 8
  %1101 = and i64 %1100, 65535
  %1102 = icmp eq i64 %1101, 121
  br i1 %1102, label %1103, label %1146

1103:                                             ; preds = %1099
  %1104 = getelementptr inbounds %struct.tree_exp, ptr %1096, i64 0, i32 3
  %1105 = load ptr, ptr %1104, align 8, !tbaa !160
  %1106 = call ptr @get_base_address(ptr noundef %1105) #18
  %1107 = icmp eq ptr %1106, null
  br i1 %1107, label %1146, label %1108

1108:                                             ; preds = %1103
  %1109 = load i64, ptr %1106, align 8
  %1110 = and i64 %1109, 65535
  %1111 = icmp eq i64 %1110, 32
  br i1 %1111, label %1112, label %1146

1112:                                             ; preds = %1108
  %1113 = or i64 %1109, 262144
  store i64 %1113, ptr %1106, align 8
  %1114 = load ptr, ptr @cfun, align 8, !tbaa !149
  %1115 = getelementptr inbounds %struct.function, ptr %1114, i64 0, i32 3
  %1116 = load ptr, ptr %1115, align 8, !tbaa !170
  %1117 = icmp eq ptr %1116, null
  br i1 %1117, label %1146, label %1118

1118:                                             ; preds = %1112
  %1119 = load ptr, ptr %1116, align 8, !tbaa !172
  %1120 = icmp eq ptr %1119, null
  br i1 %1120, label %1146, label %1121

1121:                                             ; preds = %1118
  %1122 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %1106) #18
  br label %1146

1123:                                             ; preds = %1095, %1091
  %1124 = phi ptr [ %1096, %1095 ], [ null, %1091 ]
  %1125 = icmp eq ptr %1124, null
  br i1 %1125, label %1126, label %1146

1126:                                             ; preds = %1123
  %1127 = getelementptr inbounds %struct.tree_decl_common, ptr %1081, i64 0, i32 2
  %1128 = load i64, ptr %1127, align 8
  %1129 = and i64 %1128, 33554432
  %1130 = icmp eq i64 %1129, 0
  br i1 %1130, label %1131, label %1146

1131:                                             ; preds = %1126
  %1132 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !176
  %1133 = call zeroext i8 %1132(ptr noundef nonnull %1081) #18
  %1134 = icmp eq i8 %1133, 0
  br i1 %1134, label %1146, label %1135

1135:                                             ; preds = %1131
  %1136 = getelementptr inbounds %struct.tree_common, ptr %1081, i64 0, i32 2
  %1137 = load ptr, ptr %1136, align 8, !tbaa !160
  %1138 = load i64, ptr %1137, align 8
  %1139 = trunc i64 %1138 to i32
  %1140 = and i32 %1139, 65534
  %1141 = add nsw i32 %1140, -6
  %1142 = icmp ult i32 %1141, 4
  br i1 %1142, label %1143, label %1146

1143:                                             ; preds = %1135
  %1144 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %1145 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %1137, ptr noundef %1144) #18
  br label %1146

1146:                                             ; preds = %1143, %1135, %1131, %1126, %1123, %1121, %1118, %1112, %1108, %1103, %1099
  %1147 = phi ptr [ %1145, %1143 ], [ %1096, %1103 ], [ %1096, %1108 ], [ %1096, %1121 ], [ %1096, %1118 ], [ %1096, %1099 ], [ undef, %1135 ], [ undef, %1131 ], [ undef, %1126 ], [ undef, %1123 ], [ %1096, %1112 ]
  %1148 = phi i1 [ false, %1143 ], [ false, %1103 ], [ false, %1108 ], [ false, %1121 ], [ false, %1118 ], [ false, %1099 ], [ true, %1135 ], [ true, %1131 ], [ true, %1126 ], [ true, %1123 ], [ false, %1112 ]
  br i1 %1148, label %1149, label %1150

1149:                                             ; preds = %1146, %1085, %1080
  br label %1150

1150:                                             ; preds = %1149, %1146
  %1151 = phi ptr [ %1147, %1146 ], [ null, %1149 ]
  %1152 = icmp eq ptr %1151, null
  br i1 %1152, label %1153, label %1154, !prof !225

1153:                                             ; preds = %1150, %1053, %1037
  br label %1154

1154:                                             ; preds = %1153, %1150, %1033, %1018, %1014
  %1155 = phi ptr [ null, %1018 ], [ null, %1014 ], [ null, %1153 ], [ %1151, %1150 ], [ null, %1033 ]
  %1156 = phi i32 [ 3, %1018 ], [ 1, %1014 ], [ 1, %1153 ], [ 2, %1150 ], [ 3, %1033 ]
  store i32 %1156, ptr %1001, align 8, !tbaa.struct !226
  %1157 = getelementptr inbounds i8, ptr %1001, i64 8
  store ptr %1155, ptr %1157, align 8, !tbaa.struct !227
  br label %1158

1158:                                             ; preds = %1154, %997
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %1159 = load i32, ptr %1001, align 8, !tbaa !197
  %1160 = icmp eq i32 %1159, 2
  br i1 %1160, label %1161, label %1237, !prof !228

1161:                                             ; preds = %1158
  %1162 = getelementptr inbounds %struct.prop_value_d, ptr %995, i64 %1000, i32 1
  %1163 = load ptr, ptr %1162, align 8, !tbaa !199
  %1164 = load i64, ptr %1163, align 8
  %1165 = and i64 %1164, 65535
  %1166 = icmp eq i64 %1165, 24
  br i1 %1166, label %1167, label %1237, !prof !229

1167:                                             ; preds = %1161
  %1168 = getelementptr inbounds %struct.tree_real_cst, ptr %1163, i64 0, i32 1
  %1169 = load ptr, ptr %1168, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1169, i64 32, i1 false), !tbaa.struct !230
  %1170 = getelementptr inbounds %struct.tree_common, ptr %1163, i64 0, i32 2
  %1171 = load ptr, ptr %1170, align 8, !tbaa !160
  %1172 = load i64, ptr %1171, align 8
  %1173 = and i64 %1172, 65535
  %1174 = icmp eq i64 %1173, 14
  br i1 %1174, label %1175, label %1177

1175:                                             ; preds = %1167
  %1176 = call i32 @vector_type_mode(ptr noundef nonnull %1171) #18
  br label %1182

1177:                                             ; preds = %1167
  %1178 = getelementptr inbounds %struct.tree_type, ptr %1171, i64 0, i32 6
  %1179 = load i32, ptr %1178, align 4
  %1180 = lshr i32 %1179, 16
  %1181 = and i32 %1180, 255
  br label %1182

1182:                                             ; preds = %1177, %1175
  %1183 = phi i32 [ %1176, %1175 ], [ %1181, %1177 ]
  %1184 = zext i32 %1183 to i64
  %1185 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1184
  %1186 = load i8, ptr %1185, align 1, !tbaa !160
  switch i8 %1186, label %1206 [
    i8 8, label %1187
    i8 9, label %1187
    i8 11, label %1187
    i8 17, label %1187
  ]

1187:                                             ; preds = %1182, %1182, %1182, %1182
  %1188 = and i8 %1186, -2
  %1189 = icmp eq i8 %1188, 8
  br i1 %1189, label %1194, label %1190

1190:                                             ; preds = %1187
  %1191 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1184
  %1192 = load i8, ptr %1191, align 1, !tbaa !160
  %1193 = zext i8 %1192 to i32
  br label %1194

1194:                                             ; preds = %1187, %1190
  %1195 = phi i32 [ %1193, %1190 ], [ %1183, %1187 ]
  %1196 = add i32 %1195, -38
  %1197 = zext i32 %1196 to i64
  %1198 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1197
  %1199 = load ptr, ptr %1198, align 8, !tbaa !149
  %1200 = getelementptr inbounds %struct.real_format, ptr %1199, i64 0, i32 14
  %1201 = load i8, ptr %1200, align 1, !tbaa !231
  %1202 = icmp ne i8 %1201, 0
  %1203 = load i32, ptr @flag_signed_zeros, align 4
  %1204 = icmp ne i32 %1203, 0
  %1205 = select i1 %1202, i1 %1204, i1 false
  br i1 %1205, label %1211, label %1206

1206:                                             ; preds = %1194, %1182
  %1207 = call zeroext i8 @real_isnegzero(ptr noundef nonnull %3) #18
  %1208 = icmp eq i8 %1207, 0
  br i1 %1208, label %1211, label %1209

1209:                                             ; preds = %1206
  %1210 = call ptr @build_real(ptr noundef nonnull %1171, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #18
  br label %1235

1211:                                             ; preds = %1206, %1194
  switch i8 %1186, label %1231 [
    i8 8, label %1212
    i8 9, label %1212
    i8 11, label %1212
    i8 17, label %1212
  ]

1212:                                             ; preds = %1211, %1211, %1211, %1211
  %1213 = and i8 %1186, -2
  %1214 = icmp eq i8 %1213, 8
  br i1 %1214, label %1219, label %1215

1215:                                             ; preds = %1212
  %1216 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1184
  %1217 = load i8, ptr %1216, align 1, !tbaa !160
  %1218 = zext i8 %1217 to i32
  br label %1219

1219:                                             ; preds = %1212, %1215
  %1220 = phi i32 [ %1218, %1215 ], [ %1183, %1212 ]
  %1221 = add i32 %1220, -38
  %1222 = zext i32 %1221 to i64
  %1223 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1222
  %1224 = load ptr, ptr %1223, align 8, !tbaa !149
  %1225 = getelementptr inbounds %struct.real_format, ptr %1224, i64 0, i32 11
  %1226 = load i8, ptr %1225, align 2, !tbaa !233
  %1227 = icmp eq i8 %1226, 0
  %1228 = load i32, ptr @flag_finite_math_only, align 4
  %1229 = icmp ne i32 %1228, 0
  %1230 = select i1 %1227, i1 true, i1 %1229
  br i1 %1230, label %1231, label %1237

1231:                                             ; preds = %1219, %1211
  %1232 = call zeroext i8 @real_isnan(ptr noundef nonnull %3) #18
  %1233 = icmp eq i8 %1232, 0
  br i1 %1233, label %1237, label %1234

1234:                                             ; preds = %1231
  store i32 1, ptr %1001, align 8, !tbaa !197
  br label %1235

1235:                                             ; preds = %1209, %1234
  %1236 = phi ptr [ null, %1234 ], [ %1210, %1209 ]
  store ptr %1236, ptr %1162, align 8, !tbaa !199
  br label %1237

1237:                                             ; preds = %1235, %1231, %1219, %1161, %1158
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %1238

1238:                                             ; preds = %994, %1237
  %1239 = phi ptr [ %1001, %1237 ], [ null, %994 ]
  %1240 = icmp eq ptr %1239, null
  br i1 %1240, label %1283, label %1241, !prof !518

1241:                                             ; preds = %1238
  %1242 = load i32, ptr %1239, align 8, !tbaa !197
  %1243 = icmp eq i32 %1242, 2
  br i1 %1243, label %1244, label %1283, !prof !518

1244:                                             ; preds = %1241
  %1245 = getelementptr inbounds %struct.tree_list, ptr %967, i64 0, i32 2
  %1246 = load ptr, ptr %1245, align 8, !tbaa !160
  %1247 = getelementptr inbounds %struct.tree_type, ptr %1246, i64 0, i32 16
  %1248 = load ptr, ptr %1247, align 8, !tbaa !160
  %1249 = getelementptr inbounds %struct.prop_value_d, ptr %1239, i64 0, i32 1
  %1250 = load ptr, ptr %1249, align 8, !tbaa !199
  %1251 = getelementptr inbounds %struct.tree_common, ptr %1250, i64 0, i32 2
  %1252 = load ptr, ptr %1251, align 8, !tbaa !160
  %1253 = getelementptr inbounds %struct.tree_type, ptr %1252, i64 0, i32 16
  %1254 = load ptr, ptr %1253, align 8, !tbaa !160
  %1255 = call zeroext i8 @useless_type_conversion_p(ptr noundef %1248, ptr noundef %1254) #18
  %1256 = icmp eq i8 %1255, 0
  br i1 %1256, label %1283, label %1257

1257:                                             ; preds = %1244
  %1258 = load ptr, ptr %1249, align 8, !tbaa !199
  %1259 = call ptr @unshare_expr(ptr noundef %1258) #18
  %1260 = load i32, ptr %7, align 8
  %1261 = and i32 %1260, 255
  %1262 = add nsw i32 %1261, -10
  %1263 = icmp ult i32 %1262, -9
  br i1 %1263, label %1267, label %1264

1264:                                             ; preds = %1257
  %1265 = load i32, ptr %959, align 4, !tbaa !160
  %1266 = icmp ugt i32 %1265, %970
  br i1 %1266, label %1268, label %1267

1267:                                             ; preds = %1264, %1257
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1665, ptr noundef nonnull @.str.3) #18
  br label %1268

1268:                                             ; preds = %1267, %1264
  %1269 = load i32, ptr %7, align 8
  %1270 = and i32 %1269, 255
  %1271 = zext nneg i32 %1270 to i64
  %1272 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1271
  %1273 = load i32, ptr %1272, align 4, !tbaa !164
  %1274 = zext i32 %1273 to i64
  %1275 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1274
  %1276 = load i64, ptr %1275, align 8, !tbaa !219
  %1277 = icmp eq i64 %1276, 0
  br i1 %1277, label %1278, label %1279

1278:                                             ; preds = %1268
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %1279

1279:                                             ; preds = %1268, %1278
  %1280 = getelementptr inbounds i8, ptr %7, i64 %1276
  %1281 = zext i32 %970 to i64
  %1282 = getelementptr inbounds ptr, ptr %1280, i64 %1281
  store ptr %1259, ptr %1282, align 8, !tbaa !149
  br label %1283

1283:                                             ; preds = %1279, %1244, %1241, %1238, %989
  %1284 = phi i8 [ 1, %1279 ], [ %968, %1244 ], [ %968, %1241 ], [ %968, %1238 ], [ %968, %989 ]
  %1285 = add nuw nsw i64 %966, 1
  %1286 = getelementptr inbounds %struct.tree_common, ptr %967, i64 0, i32 1
  %1287 = load ptr, ptr %1286, align 8, !tbaa !160
  %1288 = load i32, ptr %959, align 4, !tbaa !160
  %1289 = add i32 %1288, -3
  %1290 = zext i32 %1289 to i64
  %1291 = icmp ult i64 %1285, %1290
  %1292 = icmp ne ptr %1287, null
  %1293 = select i1 %1291, i1 %1292, i1 false, !prof !514
  br i1 %1293, label %965, label %1582, !prof !519, !llvm.loop !520

1294:                                             ; preds = %1
  %1295 = add nsw i32 %9, -10
  %1296 = icmp ult i32 %1295, -9
  br i1 %1296, label %1309, label %1297, !prof !521

1297:                                             ; preds = %1294
  %1298 = zext nneg i32 %9 to i64
  %1299 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1298
  %1300 = load i32, ptr %1299, align 4, !tbaa !164
  %1301 = zext i32 %1300 to i64
  %1302 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1301
  %1303 = load i64, ptr %1302, align 8, !tbaa !219
  %1304 = icmp eq i64 %1303, 0
  br i1 %1304, label %1305, label %1306, !prof !521

1305:                                             ; preds = %1297
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %1306

1306:                                             ; preds = %1305, %1297
  %1307 = getelementptr inbounds i8, ptr %7, i64 %1303
  %1308 = load ptr, ptr %1307, align 8, !tbaa !149
  br label %1309

1309:                                             ; preds = %1294, %1306
  %1310 = phi ptr [ %1308, %1306 ], [ null, %1294 ]
  %1311 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %7) #18
  %1312 = icmp eq i8 %1311, 0
  br i1 %1312, label %1582, label %1313, !prof !522

1313:                                             ; preds = %1309
  %1314 = load i64, ptr %1310, align 8
  %1315 = and i64 %1314, 65535
  %1316 = icmp eq i64 %1315, 141
  br i1 %1316, label %1317, label %1582, !prof !523

1317:                                             ; preds = %1313
  %1318 = load ptr, ptr @const_val, align 8, !tbaa !149
  %1319 = icmp eq ptr %1318, null
  br i1 %1319, label %1561, label %1320, !prof !214

1320:                                             ; preds = %1317
  %1321 = getelementptr inbounds %struct.tree_ssa_name, ptr %1310, i64 0, i32 3
  %1322 = load i32, ptr %1321, align 8, !tbaa !160
  %1323 = zext i32 %1322 to i64
  %1324 = getelementptr inbounds %struct.prop_value_d, ptr %1318, i64 %1323
  %1325 = load i32, ptr %1324, align 8, !tbaa !197
  %1326 = icmp eq i32 %1325, 0
  br i1 %1326, label %1327, label %1481, !prof !215

1327:                                             ; preds = %1320
  %1328 = getelementptr inbounds %struct.tree_ssa_name, ptr %1310, i64 0, i32 1
  %1329 = load ptr, ptr %1328, align 8, !tbaa !160
  %1330 = getelementptr inbounds %struct.tree_ssa_name, ptr %1310, i64 0, i32 2
  %1331 = load ptr, ptr %1330, align 8, !tbaa !160
  %1332 = load i32, ptr %1331, align 8
  %1333 = trunc i32 %1332 to i8
  switch i8 %1333, label %1356 [
    i8 18, label %1334
    i8 6, label %1360
    i8 8, label %1342
  ], !prof !216

1334:                                             ; preds = %1327
  %1335 = tail call zeroext i8 @is_gimple_reg(ptr noundef %1329) #18
  %1336 = icmp eq i8 %1335, 0
  br i1 %1336, label %1341, label %1337, !prof !217

1337:                                             ; preds = %1334
  %1338 = load i64, ptr %1329, align 8
  %1339 = and i64 %1338, 65535
  %1340 = icmp eq i64 %1339, 34
  br i1 %1340, label %1341, label %1477, !prof !218

1341:                                             ; preds = %1337, %1334
  br label %1477

1342:                                             ; preds = %1327
  %1343 = and i32 %1332, 255
  %1344 = zext nneg i32 %1343 to i64
  %1345 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1344
  %1346 = load i32, ptr %1345, align 4, !tbaa !164
  %1347 = zext i32 %1346 to i64
  %1348 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1347
  %1349 = load i64, ptr %1348, align 8, !tbaa !219
  %1350 = icmp eq i64 %1349, 0
  br i1 %1350, label %1351, label %1352

1351:                                             ; preds = %1342
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %1352

1352:                                             ; preds = %1351, %1342
  %1353 = getelementptr inbounds i8, ptr %1331, i64 %1349
  %1354 = load ptr, ptr %1353, align 8, !tbaa !149
  %1355 = icmp eq ptr %1354, null
  br i1 %1355, label %1356, label %1360

1356:                                             ; preds = %1352, %1327
  %1357 = load i32, ptr %1331, align 8
  %1358 = and i32 %1357, 255
  %1359 = icmp eq i32 %1358, 16
  br i1 %1359, label %1360, label %1477, !prof !220

1360:                                             ; preds = %1356, %1352, %1327
  %1361 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %1331) #18
  %1362 = icmp eq i8 %1361, 0
  br i1 %1362, label %1476, label %1363, !prof !221

1363:                                             ; preds = %1360
  %1364 = load i32, ptr %1331, align 8
  %1365 = and i32 %1364, 255
  %1366 = add nsw i32 %1365, -1
  %1367 = icmp ult i32 %1366, 9
  tail call void @llvm.assume(i1 %1367)
  %1368 = zext nneg i32 %1365 to i64
  %1369 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1368
  %1370 = load i32, ptr %1369, align 4, !tbaa !164
  %1371 = zext i32 %1370 to i64
  %1372 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1371
  %1373 = load i64, ptr %1372, align 8, !tbaa !219
  %1374 = icmp eq i64 %1373, 0
  br i1 %1374, label %1375, label %1376, !prof !222

1375:                                             ; preds = %1363
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %1376

1376:                                             ; preds = %1375, %1363
  %1377 = getelementptr inbounds i8, ptr %1331, i64 %1373
  %1378 = getelementptr inbounds ptr, ptr %1377, i64 1
  %1379 = load ptr, ptr %1378, align 8, !tbaa !149
  %1380 = load i64, ptr %1379, align 8
  %1381 = and i64 %1380, 65535
  %1382 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1381
  %1383 = load i32, ptr %1382, align 4, !tbaa !164
  %1384 = icmp eq i32 %1383, 3
  br i1 %1384, label %1385, label %1476, !prof !223

1385:                                             ; preds = %1376
  %1386 = load i32, ptr %1331, align 8
  %1387 = and i32 %1386, 255
  %1388 = add nsw i32 %1387, -10
  %1389 = icmp ult i32 %1388, -9
  br i1 %1389, label %1403, label %1390, !prof !224

1390:                                             ; preds = %1385
  %1391 = zext nneg i32 %1387 to i64
  %1392 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1391
  %1393 = load i32, ptr %1392, align 4, !tbaa !164
  %1394 = zext i32 %1393 to i64
  %1395 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1394
  %1396 = load i64, ptr %1395, align 8, !tbaa !219
  %1397 = icmp eq i64 %1396, 0
  br i1 %1397, label %1398, label %1399, !prof !224

1398:                                             ; preds = %1390
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %1399

1399:                                             ; preds = %1398, %1390
  %1400 = getelementptr inbounds i8, ptr %1331, i64 %1396
  %1401 = getelementptr inbounds ptr, ptr %1400, i64 1
  %1402 = load ptr, ptr %1401, align 8, !tbaa !149
  br label %1403

1403:                                             ; preds = %1399, %1385
  %1404 = phi ptr [ %1402, %1399 ], [ null, %1385 ]
  %1405 = load i64, ptr %1404, align 8
  %1406 = and i64 %1405, 67108864
  %1407 = icmp eq i64 %1406, 0
  br i1 %1407, label %1472, label %1408, !prof !169

1408:                                             ; preds = %1403
  %1409 = and i64 %1405, 1048576
  %1410 = icmp ne i64 %1409, 0
  %1411 = and i64 %1405, 65535
  %1412 = icmp eq i64 %1411, 33
  %1413 = or i1 %1410, %1412
  br i1 %1413, label %1414, label %1472

1414:                                             ; preds = %1408
  %1415 = getelementptr inbounds %struct.tree_decl_common, ptr %1404, i64 0, i32 5
  %1416 = load ptr, ptr %1415, align 8, !tbaa !160
  %1417 = icmp eq ptr %1416, null
  br i1 %1417, label %1446, label %1418

1418:                                             ; preds = %1414
  %1419 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %1416) #18
  %1420 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1419) #18
  %1421 = icmp eq i8 %1420, 0
  br i1 %1421, label %1446, label %1422

1422:                                             ; preds = %1418
  %1423 = load i64, ptr %1419, align 8
  %1424 = and i64 %1423, 65535
  %1425 = icmp eq i64 %1424, 121
  br i1 %1425, label %1426, label %1469

1426:                                             ; preds = %1422
  %1427 = getelementptr inbounds %struct.tree_exp, ptr %1419, i64 0, i32 3
  %1428 = load ptr, ptr %1427, align 8, !tbaa !160
  %1429 = tail call ptr @get_base_address(ptr noundef %1428) #18
  %1430 = icmp eq ptr %1429, null
  br i1 %1430, label %1469, label %1431

1431:                                             ; preds = %1426
  %1432 = load i64, ptr %1429, align 8
  %1433 = and i64 %1432, 65535
  %1434 = icmp eq i64 %1433, 32
  br i1 %1434, label %1435, label %1469

1435:                                             ; preds = %1431
  %1436 = or i64 %1432, 262144
  store i64 %1436, ptr %1429, align 8
  %1437 = load ptr, ptr @cfun, align 8, !tbaa !149
  %1438 = getelementptr inbounds %struct.function, ptr %1437, i64 0, i32 3
  %1439 = load ptr, ptr %1438, align 8, !tbaa !170
  %1440 = icmp eq ptr %1439, null
  br i1 %1440, label %1469, label %1441

1441:                                             ; preds = %1435
  %1442 = load ptr, ptr %1439, align 8, !tbaa !172
  %1443 = icmp eq ptr %1442, null
  br i1 %1443, label %1469, label %1444

1444:                                             ; preds = %1441
  %1445 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %1429) #18
  br label %1469

1446:                                             ; preds = %1418, %1414
  %1447 = phi ptr [ %1419, %1418 ], [ null, %1414 ]
  %1448 = icmp eq ptr %1447, null
  br i1 %1448, label %1449, label %1469

1449:                                             ; preds = %1446
  %1450 = getelementptr inbounds %struct.tree_decl_common, ptr %1404, i64 0, i32 2
  %1451 = load i64, ptr %1450, align 8
  %1452 = and i64 %1451, 33554432
  %1453 = icmp eq i64 %1452, 0
  br i1 %1453, label %1454, label %1469

1454:                                             ; preds = %1449
  %1455 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !176
  %1456 = tail call zeroext i8 %1455(ptr noundef nonnull %1404) #18
  %1457 = icmp eq i8 %1456, 0
  br i1 %1457, label %1469, label %1458

1458:                                             ; preds = %1454
  %1459 = getelementptr inbounds %struct.tree_common, ptr %1404, i64 0, i32 2
  %1460 = load ptr, ptr %1459, align 8, !tbaa !160
  %1461 = load i64, ptr %1460, align 8
  %1462 = trunc i64 %1461 to i32
  %1463 = and i32 %1462, 65534
  %1464 = add nsw i32 %1463, -6
  %1465 = icmp ult i32 %1464, 4
  br i1 %1465, label %1466, label %1469

1466:                                             ; preds = %1458
  %1467 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %1468 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %1460, ptr noundef %1467) #18
  br label %1469

1469:                                             ; preds = %1466, %1458, %1454, %1449, %1446, %1444, %1441, %1435, %1431, %1426, %1422
  %1470 = phi ptr [ %1468, %1466 ], [ %1419, %1426 ], [ %1419, %1431 ], [ %1419, %1444 ], [ %1419, %1441 ], [ %1419, %1422 ], [ undef, %1458 ], [ undef, %1454 ], [ undef, %1449 ], [ undef, %1446 ], [ %1419, %1435 ]
  %1471 = phi i1 [ false, %1466 ], [ false, %1426 ], [ false, %1431 ], [ false, %1444 ], [ false, %1441 ], [ false, %1422 ], [ true, %1458 ], [ true, %1454 ], [ true, %1449 ], [ true, %1446 ], [ false, %1435 ]
  br i1 %1471, label %1472, label %1473

1472:                                             ; preds = %1469, %1408, %1403
  br label %1473

1473:                                             ; preds = %1472, %1469
  %1474 = phi ptr [ %1470, %1469 ], [ null, %1472 ]
  %1475 = icmp eq ptr %1474, null
  br i1 %1475, label %1476, label %1477, !prof !225

1476:                                             ; preds = %1473, %1376, %1360
  br label %1477

1477:                                             ; preds = %1476, %1473, %1356, %1341, %1337
  %1478 = phi ptr [ null, %1341 ], [ null, %1337 ], [ null, %1476 ], [ %1474, %1473 ], [ null, %1356 ]
  %1479 = phi i32 [ 3, %1341 ], [ 1, %1337 ], [ 1, %1476 ], [ 2, %1473 ], [ 3, %1356 ]
  store i32 %1479, ptr %1324, align 8, !tbaa.struct !226
  %1480 = getelementptr inbounds i8, ptr %1324, i64 8
  store ptr %1478, ptr %1480, align 8, !tbaa.struct !227
  br label %1481

1481:                                             ; preds = %1477, %1320
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #18
  %1482 = load i32, ptr %1324, align 8, !tbaa !197
  %1483 = icmp eq i32 %1482, 2
  br i1 %1483, label %1484, label %1560, !prof !228

1484:                                             ; preds = %1481
  %1485 = getelementptr inbounds %struct.prop_value_d, ptr %1318, i64 %1323, i32 1
  %1486 = load ptr, ptr %1485, align 8, !tbaa !199
  %1487 = load i64, ptr %1486, align 8
  %1488 = and i64 %1487, 65535
  %1489 = icmp eq i64 %1488, 24
  br i1 %1489, label %1490, label %1560, !prof !229

1490:                                             ; preds = %1484
  %1491 = getelementptr inbounds %struct.tree_real_cst, ptr %1486, i64 0, i32 1
  %1492 = load ptr, ptr %1491, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1492, i64 32, i1 false), !tbaa.struct !230
  %1493 = getelementptr inbounds %struct.tree_common, ptr %1486, i64 0, i32 2
  %1494 = load ptr, ptr %1493, align 8, !tbaa !160
  %1495 = load i64, ptr %1494, align 8
  %1496 = and i64 %1495, 65535
  %1497 = icmp eq i64 %1496, 14
  br i1 %1497, label %1498, label %1500

1498:                                             ; preds = %1490
  %1499 = tail call i32 @vector_type_mode(ptr noundef nonnull %1494) #18
  br label %1505

1500:                                             ; preds = %1490
  %1501 = getelementptr inbounds %struct.tree_type, ptr %1494, i64 0, i32 6
  %1502 = load i32, ptr %1501, align 4
  %1503 = lshr i32 %1502, 16
  %1504 = and i32 %1503, 255
  br label %1505

1505:                                             ; preds = %1500, %1498
  %1506 = phi i32 [ %1499, %1498 ], [ %1504, %1500 ]
  %1507 = zext i32 %1506 to i64
  %1508 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1507
  %1509 = load i8, ptr %1508, align 1, !tbaa !160
  switch i8 %1509, label %1529 [
    i8 8, label %1510
    i8 9, label %1510
    i8 11, label %1510
    i8 17, label %1510
  ]

1510:                                             ; preds = %1505, %1505, %1505, %1505
  %1511 = and i8 %1509, -2
  %1512 = icmp eq i8 %1511, 8
  br i1 %1512, label %1517, label %1513

1513:                                             ; preds = %1510
  %1514 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1507
  %1515 = load i8, ptr %1514, align 1, !tbaa !160
  %1516 = zext i8 %1515 to i32
  br label %1517

1517:                                             ; preds = %1510, %1513
  %1518 = phi i32 [ %1516, %1513 ], [ %1506, %1510 ]
  %1519 = add i32 %1518, -38
  %1520 = zext i32 %1519 to i64
  %1521 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1520
  %1522 = load ptr, ptr %1521, align 8, !tbaa !149
  %1523 = getelementptr inbounds %struct.real_format, ptr %1522, i64 0, i32 14
  %1524 = load i8, ptr %1523, align 1, !tbaa !231
  %1525 = icmp ne i8 %1524, 0
  %1526 = load i32, ptr @flag_signed_zeros, align 4
  %1527 = icmp ne i32 %1526, 0
  %1528 = select i1 %1525, i1 %1527, i1 false
  br i1 %1528, label %1534, label %1529

1529:                                             ; preds = %1517, %1505
  %1530 = call zeroext i8 @real_isnegzero(ptr noundef nonnull %2) #18
  %1531 = icmp eq i8 %1530, 0
  br i1 %1531, label %1534, label %1532

1532:                                             ; preds = %1529
  %1533 = call ptr @build_real(ptr noundef nonnull %1494, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #18
  br label %1558

1534:                                             ; preds = %1529, %1517
  switch i8 %1509, label %1554 [
    i8 8, label %1535
    i8 9, label %1535
    i8 11, label %1535
    i8 17, label %1535
  ]

1535:                                             ; preds = %1534, %1534, %1534, %1534
  %1536 = and i8 %1509, -2
  %1537 = icmp eq i8 %1536, 8
  br i1 %1537, label %1542, label %1538

1538:                                             ; preds = %1535
  %1539 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1507
  %1540 = load i8, ptr %1539, align 1, !tbaa !160
  %1541 = zext i8 %1540 to i32
  br label %1542

1542:                                             ; preds = %1535, %1538
  %1543 = phi i32 [ %1541, %1538 ], [ %1506, %1535 ]
  %1544 = add i32 %1543, -38
  %1545 = zext i32 %1544 to i64
  %1546 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1545
  %1547 = load ptr, ptr %1546, align 8, !tbaa !149
  %1548 = getelementptr inbounds %struct.real_format, ptr %1547, i64 0, i32 11
  %1549 = load i8, ptr %1548, align 2, !tbaa !233
  %1550 = icmp eq i8 %1549, 0
  %1551 = load i32, ptr @flag_finite_math_only, align 4
  %1552 = icmp ne i32 %1551, 0
  %1553 = select i1 %1550, i1 true, i1 %1552
  br i1 %1553, label %1554, label %1560

1554:                                             ; preds = %1542, %1534
  %1555 = call zeroext i8 @real_isnan(ptr noundef nonnull %2) #18
  %1556 = icmp eq i8 %1555, 0
  br i1 %1556, label %1560, label %1557

1557:                                             ; preds = %1554
  store i32 1, ptr %1324, align 8, !tbaa !197
  br label %1558

1558:                                             ; preds = %1532, %1557
  %1559 = phi ptr [ null, %1557 ], [ %1533, %1532 ]
  store ptr %1559, ptr %1485, align 8, !tbaa !199
  br label %1560

1560:                                             ; preds = %1558, %1554, %1542, %1484, %1481
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  br label %1561

1561:                                             ; preds = %1317, %1560
  %1562 = phi ptr [ %1324, %1560 ], [ null, %1317 ]
  %1563 = icmp eq ptr %1562, null
  br i1 %1563, label %1582, label %1564, !prof !524

1564:                                             ; preds = %1561
  %1565 = load i32, ptr %1562, align 8, !tbaa !197
  %1566 = icmp eq i32 %1565, 2
  br i1 %1566, label %1567, label %1582, !prof !525

1567:                                             ; preds = %1564
  %1568 = getelementptr inbounds %struct.prop_value_d, ptr %1562, i64 0, i32 1
  %1569 = load ptr, ptr %1568, align 8, !tbaa !199
  %1570 = call ptr @unshare_expr(ptr noundef %1569) #18
  %1571 = getelementptr inbounds %struct.tree_common, ptr %1310, i64 0, i32 2
  %1572 = load ptr, ptr %1571, align 8, !tbaa !160
  %1573 = getelementptr inbounds %struct.tree_common, ptr %1570, i64 0, i32 2
  %1574 = load ptr, ptr %1573, align 8, !tbaa !160
  %1575 = call zeroext i8 @useless_type_conversion_p(ptr noundef %1572, ptr noundef %1574) #18
  %1576 = icmp eq i8 %1575, 0
  br i1 %1576, label %1577, label %1580, !prof !526

1577:                                             ; preds = %1567
  %1578 = load ptr, ptr %1571, align 8, !tbaa !160
  %1579 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1578, ptr noundef %1570) #18
  br label %1580

1580:                                             ; preds = %1577, %1567
  %1581 = phi ptr [ %1570, %1567 ], [ %1579, %1577 ]
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %0, ptr noundef %1581) #18
  br label %1582

1582:                                             ; preds = %1283, %950, %1, %1580, %1564, %1561, %1313, %1309, %932, %936, %543, %540, %641, %595
  %1583 = phi i8 [ 0, %543 ], [ 0, %540 ], [ 1, %641 ], [ 1, %595 ], [ 1, %932 ], [ 1, %936 ], [ 1, %1580 ], [ 0, %1564 ], [ 0, %1561 ], [ 0, %1313 ], [ 0, %1309 ], [ 0, %1 ], [ 0, %950 ], [ %1284, %1283 ]
  ret i8 %1583
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @update_call_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @byte_position(ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_compare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #3

declare ptr @signed_type_for(ptr noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

declare { i64, i64 } @double_int_sext(i64, i64, i32 noundef) local_unnamed_addr #3

declare { i64, i64 } @tree_to_double_int(ptr noundef) local_unnamed_addr #3

declare i32 @div_and_round_double(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @get_gimple_rhs_num_ops(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @maybe_fold_reference(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #12 !prof !527 !PGOFuncName !528 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !149
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp ne i64 %5, 45
  %7 = icmp ne i8 %1, 0
  %8 = or i1 %7, %6
  br i1 %8, label %12, label %9, !prof !529

9:                                                ; preds = %2
  %10 = tail call ptr @fold_read_from_constant_string(ptr noundef nonnull %0) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %217, !prof !530

12:                                               ; preds = %9, %2
  %13 = phi ptr [ undef, %2 ], [ %10, %9 ]
  %14 = load i64, ptr %0, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %28 [
    i16 42, label %16
    i16 41, label %16
    i16 45, label %16
    i16 46, label %16
    i16 118, label %16
    i16 43, label %16
    i16 44, label %16
  ], !prof !531

16:                                               ; preds = %12, %12, %12, %12, %12, %12, %12
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !160
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !164
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %28, !prof !532

24:                                               ; preds = %16
  %25 = tail call ptr @fold(ptr noundef nonnull %0) #18
  %26 = icmp eq ptr %25, %0
  %27 = select i1 %26, ptr %13, ptr %25
  br i1 %26, label %28, label %217

28:                                               ; preds = %12, %24, %16
  %29 = phi ptr [ %13, %16 ], [ %27, %24 ], [ %13, %12 ]
  br label %30

30:                                               ; preds = %38, %28
  %31 = phi ptr [ %3, %28 ], [ %39, %38 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !149
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i16
  switch i16 %34, label %35 [
    i16 42, label %38
    i16 41, label %38
    i16 45, label %38
    i16 46, label %38
    i16 118, label %38
    i16 43, label %38
    i16 44, label %38
  ], !prof !533

35:                                               ; preds = %30
  %36 = and i64 %33, 65535
  %37 = icmp eq i64 %36, 47
  br i1 %37, label %40, label %191, !prof !534

38:                                               ; preds = %30, %30, %30, %30, %30, %30, %30
  %39 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 0, i32 3
  br label %30, !llvm.loop !535

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !160
  %43 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  %44 = and i64 %33, 524288
  %45 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %36
  %46 = load i32, ptr %45, align 4, !tbaa !164
  %47 = add i32 %46, -4
  %48 = icmp ult i32 %47, 7
  br i1 %48, label %49, label %52, !prof !536

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !160
  br label %52

52:                                               ; preds = %49, %40
  %53 = phi i32 [ %51, %49 ], [ 0, %40 ]
  %54 = tail call ptr @fold(ptr noundef %42) #18
  br label %55

55:                                               ; preds = %64, %52
  %56 = phi ptr [ %54, %52 ], [ %62, %64 ]
  %57 = load i64, ptr %56, align 8
  %58 = trunc i64 %57 to i16
  switch i16 %58, label %70 [
    i16 116, label %59
    i16 113, label %59
    i16 117, label %59
  ], !prof !537

59:                                               ; preds = %55, %55, %55
  %60 = load ptr, ptr @global_trees, align 16
  %61 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !160
  %63 = icmp eq ptr %62, %60
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !160
  %67 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !160
  %69 = icmp eq ptr %66, %68
  br i1 %69, label %55, label %70, !llvm.loop !538

70:                                               ; preds = %64, %55, %59
  store ptr %56, ptr %41, align 8, !tbaa !160
  %71 = tail call ptr @fold_read_from_constant_string(ptr noundef nonnull %32) #18
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %157, !prof !536

73:                                               ; preds = %70
  %74 = load i64, ptr %56, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 66
  br i1 %76, label %77, label %92, !prof !539

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !160
  %80 = load i64, ptr %79, align 8
  %81 = and i64 %80, 65535
  %82 = icmp eq i64 %81, 23
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !160
  %86 = load ptr, ptr @sizetype_tab, align 16, !tbaa !149
  %87 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef %43, ptr noundef nonnull %79, i32 noundef 1) #18
  %88 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %86, ptr noundef %87) #18
  br label %89

89:                                               ; preds = %83, %77
  %90 = phi ptr [ %88, %83 ], [ %43, %77 ]
  %91 = phi ptr [ %85, %83 ], [ %56, %77 ]
  br i1 %82, label %92, label %157

92:                                               ; preds = %89, %73
  %93 = phi ptr [ %90, %89 ], [ %43, %73 ]
  %94 = phi ptr [ %91, %89 ], [ %56, %73 ]
  %95 = load i64, ptr %94, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 121
  br i1 %97, label %98, label %133, !prof !539

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.tree_exp, ptr %94, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !160
  %101 = load i64, ptr %100, align 8
  %102 = and i64 %101, 65535
  %103 = icmp eq i64 %102, 33
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.tree_decl_common, ptr %100, i64 0, i32 5
  %106 = load ptr, ptr %105, align 8, !tbaa !160
  %107 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %106) #18
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = load ptr, ptr %105, align 8, !tbaa !160
  br label %130

111:                                              ; preds = %104, %98
  %112 = tail call i32 @integer_zerop(ptr noundef %93) #18
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !160
  %117 = tail call ptr @maybe_fold_offset_to_reference(i32 noundef %53, ptr noundef nonnull %94, ptr noundef %93, ptr noundef %116)
  %118 = icmp eq ptr %117, null
  br i1 %118, label %130, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8
  %121 = trunc i64 %120 to i16
  switch i16 %121, label %127 [
    i16 32, label %130
    i16 34, label %130
    i16 36, label %130
    i16 141, label %122
  ]

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.tree_ssa_name, ptr %117, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !160
  %125 = load i64, ptr %124, align 8
  %126 = trunc i64 %125 to i16
  switch i16 %126, label %127 [
    i16 32, label %130
    i16 34, label %130
    i16 36, label %130
  ]

127:                                              ; preds = %122, %119
  %128 = and i64 %120, -524289
  %129 = or disjoint i64 %128, %44
  store i64 %129, ptr %117, align 8
  br label %130

130:                                              ; preds = %122, %122, %119, %119, %127, %122, %119, %114, %111, %109
  %131 = phi i1 [ false, %109 ], [ false, %111 ], [ false, %122 ], [ false, %119 ], [ false, %127 ], [ true, %114 ], [ false, %119 ], [ false, %119 ], [ false, %122 ], [ false, %122 ]
  %132 = phi ptr [ %110, %109 ], [ %100, %111 ], [ %117, %122 ], [ %117, %119 ], [ %117, %127 ], [ null, %114 ], [ %117, %119 ], [ %117, %119 ], [ %117, %122 ], [ %117, %122 ]
  br i1 %131, label %156, label %157

133:                                              ; preds = %92
  %134 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %94) #18
  %135 = load i64, ptr %134, align 8
  %136 = and i64 %135, 65535
  %137 = icmp eq i64 %136, 121
  br i1 %137, label %138, label %146, !prof !539

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.tree_exp, ptr %134, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !160
  %141 = load i64, ptr %140, align 8
  %142 = and i64 %141, 65535
  %143 = icmp eq i64 %142, 28
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !149
  br label %157

146:                                              ; preds = %138, %133
  %147 = getelementptr inbounds %struct.tree_common, ptr %94, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !160
  %149 = load i64, ptr %148, align 8
  %150 = trunc i64 %149 to i16
  switch i16 %150, label %156 [
    i16 10, label %151
    i16 12, label %151
  ], !prof !540

151:                                              ; preds = %146, %146
  %152 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !160
  %154 = tail call ptr @maybe_fold_offset_to_reference(i32 noundef %53, ptr noundef nonnull %94, ptr noundef %93, ptr noundef %153)
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %157, !prof !536

156:                                              ; preds = %151, %146, %130
  br label %157

157:                                              ; preds = %70, %89, %130, %144, %151, %156
  %158 = phi ptr [ null, %156 ], [ %132, %130 ], [ %145, %144 ], [ null, %89 ], [ %71, %70 ], [ %154, %151 ]
  %159 = icmp ne ptr %158, null
  %160 = select i1 %7, i1 %159, i1 false, !prof !541
  br i1 %160, label %161, label %168, !prof !539

161:                                              ; preds = %157
  %162 = load i64, ptr %158, align 8
  %163 = and i64 %162, 65535
  %164 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !164
  %166 = icmp eq i32 %165, 1
  %167 = select i1 %166, ptr null, ptr %158
  br label %168

168:                                              ; preds = %161, %157
  %169 = phi ptr [ %167, %161 ], [ %158, %157 ]
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %181, !prof !536

171:                                              ; preds = %168
  %172 = load ptr, ptr %31, align 8, !tbaa !149
  %173 = getelementptr inbounds %struct.tree_exp, ptr %172, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !160
  %175 = load i64, ptr %174, align 8
  %176 = and i64 %175, 65535
  %177 = icmp eq i64 %176, 121
  br i1 %177, label %178, label %181, !prof !539

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.tree_exp, ptr %174, i64 0, i32 3
  %180 = load ptr, ptr %179, align 8, !tbaa !160
  br label %181

181:                                              ; preds = %178, %171, %168
  %182 = phi ptr [ %169, %168 ], [ %180, %178 ], [ null, %171 ]
  %183 = icmp eq ptr %182, null
  br i1 %183, label %189, label %184, !prof !536

184:                                              ; preds = %181
  store ptr %182, ptr %31, align 8, !tbaa !149
  %185 = load ptr, ptr %3, align 8
  %186 = tail call fastcc ptr @maybe_fold_reference(ptr noundef %185, i8 noundef zeroext %1)
  %187 = icmp eq ptr %186, null
  %188 = select i1 %187, ptr %185, ptr %186
  br label %189

189:                                              ; preds = %184, %181
  %190 = phi ptr [ %29, %181 ], [ %188, %184 ]
  br i1 %183, label %216, label %217, !prof !536

191:                                              ; preds = %35
  br i1 %7, label %216, label %192, !prof !542

192:                                              ; preds = %191
  %193 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %36
  %194 = load i32, ptr %193, align 4, !tbaa !164
  %195 = icmp eq i32 %194, 3
  br i1 %195, label %196, label %216, !prof !543

196:                                              ; preds = %192
  %197 = tail call ptr @get_symbol_constant_value(ptr noundef nonnull %32)
  %198 = icmp eq ptr %197, null
  br i1 %198, label %213, label %199, !prof !543

199:                                              ; preds = %196
  %200 = load ptr, ptr %31, align 8, !tbaa !149
  %201 = getelementptr inbounds %struct.tree_common, ptr %200, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !160
  %203 = getelementptr inbounds %struct.tree_common, ptr %197, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !160
  %205 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %202, ptr noundef %204) #18
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %213, label %207

207:                                              ; preds = %199
  %208 = tail call ptr @unshare_expr(ptr noundef nonnull %197) #18
  store ptr %208, ptr %31, align 8, !tbaa !149
  %209 = load ptr, ptr %3, align 8
  %210 = tail call fastcc ptr @maybe_fold_reference(ptr noundef %209, i8 noundef zeroext 0)
  %211 = icmp eq ptr %210, null
  %212 = select i1 %211, ptr %209, ptr %210
  br label %213

213:                                              ; preds = %207, %196, %199
  %214 = phi i1 [ true, %199 ], [ true, %196 ], [ false, %207 ]
  %215 = phi ptr [ %29, %199 ], [ %29, %196 ], [ %212, %207 ]
  br i1 %214, label %216, label %217, !prof !543

216:                                              ; preds = %191, %192, %213, %189
  br label %217

217:                                              ; preds = %213, %9, %24, %189, %216
  %218 = phi ptr [ null, %216 ], [ %190, %189 ], [ %27, %24 ], [ %10, %9 ], [ %215, %213 ]
  ret ptr %218
}

declare void @gimple_set_lhs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_condexpr(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @valid_gimple_rhs_p(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @maybe_fold_tmr(ptr noundef) local_unnamed_addr #3

declare ptr @build_vector_from_ctor(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold(ptr noundef) local_unnamed_addr #3

declare ptr @tree_ssa_strip_useless_type_conversions(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @commutative_tree_code(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @tree_swap_operands_p(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_cond_set_condition_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_read_from_constant_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @ccp_fold_builtin(ptr noundef %0) unnamed_addr #9 !prof !148 {
  %2 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !160
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2593, ptr noundef nonnull @.str.3) #18
  br label %9

9:                                                ; preds = %1, %8
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 255
  %12 = add nsw i32 %11, -10
  %13 = icmp ult i32 %12, -9
  br i1 %13, label %26, label %14

14:                                               ; preds = %9
  %15 = zext nneg i32 %11 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !164
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !219
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %23

23:                                               ; preds = %22, %14
  %24 = getelementptr inbounds i8, ptr %0, i64 %20
  %25 = load ptr, ptr %24, align 8, !tbaa !149
  br label %26

26:                                               ; preds = %9, %23
  %27 = phi ptr [ %25, %23 ], [ null, %9 ]
  %28 = icmp eq ptr %27, null
  %29 = zext i1 %28 to i8
  %30 = tail call ptr @fold_call_stmt(ptr noundef %0, i8 noundef zeroext %29) #18
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  br i1 %28, label %33, label %621

33:                                               ; preds = %32
  %34 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %30) #18
  br label %621

35:                                               ; preds = %26
  %36 = load i32, ptr %0, align 8
  %37 = and i32 %36, 255
  %38 = add nsw i32 %37, -10
  %39 = icmp ult i32 %38, -9
  br i1 %39, label %53, label %40

40:                                               ; preds = %35
  %41 = zext nneg i32 %37 to i64
  %42 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !164
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !219
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %49

49:                                               ; preds = %48, %40
  %50 = getelementptr inbounds i8, ptr %0, i64 %46
  %51 = getelementptr inbounds ptr, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !149
  br label %53

53:                                               ; preds = %49, %35
  %54 = phi ptr [ %52, %49 ], [ null, %35 ]
  %55 = load i64, ptr %54, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 121
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.tree_exp, ptr %54, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !160
  br label %61

61:                                               ; preds = %53, %58
  %62 = phi ptr [ %60, %58 ], [ null, %53 ]
  %63 = getelementptr inbounds %struct.tree_function_decl, ptr %62, i64 0, i32 5
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 6144
  %66 = icmp eq i32 %65, 4096
  br i1 %66, label %621, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !160
  %70 = add i32 %69, -3
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %621, label %72

72:                                               ; preds = %67
  %73 = and i32 %64, 2047
  switch i32 %73, label %621 [
    i32 345, label %78
    i32 360, label %78
    i32 361, label %78
    i32 341, label %74
    i32 349, label %74
    i32 529, label %75
    i32 531, label %75
    i32 530, label %75
    i32 532, label %75
    i32 537, label %75
    i32 535, label %76
    i32 533, label %76
    i32 538, label %77
    i32 540, label %77
  ]

74:                                               ; preds = %72, %72
  br label %78

75:                                               ; preds = %72, %72, %72, %72, %72
  br label %78

76:                                               ; preds = %72, %72
  br label %78

77:                                               ; preds = %72, %72
  br label %78

78:                                               ; preds = %72, %72, %72, %77, %76, %75, %74
  %79 = phi i32 [ 2, %77 ], [ 1, %76 ], [ 2, %75 ], [ 0, %74 ], [ 0, %72 ], [ 0, %72 ], [ 0, %72 ]
  %80 = phi i32 [ 1, %77 ], [ 1, %76 ], [ 2, %75 ], [ 1, %74 ], [ 0, %72 ], [ 0, %72 ], [ 0, %72 ]
  %81 = icmp slt i32 %80, %70
  br i1 %81, label %82, label %621

82:                                               ; preds = %78
  %83 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  tail call void @bitmap_clear(ptr noundef %83) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %84 = load i32, ptr %0, align 8
  %85 = and i32 %84, 255
  %86 = add nsw i32 %85, -10
  %87 = icmp ult i32 %86, -9
  br i1 %87, label %103, label %88

88:                                               ; preds = %82
  %89 = zext nneg i32 %85 to i64
  %90 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !164
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %92
  %94 = load i64, ptr %93, align 8, !tbaa !219
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %97

97:                                               ; preds = %96, %88
  %98 = getelementptr inbounds i8, ptr %0, i64 %94
  %99 = zext nneg i32 %80 to i64
  %100 = getelementptr ptr, ptr %98, i64 %99
  %101 = getelementptr ptr, ptr %100, i64 3
  %102 = load ptr, ptr %101, align 8, !tbaa !149
  br label %103

103:                                              ; preds = %82, %97
  %104 = phi ptr [ %102, %97 ], [ null, %82 ]
  %105 = zext nneg i32 %80 to i64
  %106 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 %105
  %107 = call fastcc zeroext i8 @get_maxval_strlen(ptr noundef %104, ptr noundef nonnull %106, ptr noundef %83, i32 noundef %79)
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store ptr null, ptr %106, align 8, !tbaa !149
  br label %110

110:                                              ; preds = %109, %103
  call void @bitmap_obstack_free(ptr noundef %83) #18
  %111 = load i32, ptr %63, align 8
  %112 = and i32 %111, 2047
  switch i32 %112, label %614 [
    i32 345, label %113
    i32 341, label %148
    i32 349, label %198
    i32 360, label %267
    i32 361, label %310
    i32 529, label %353
    i32 531, label %353
    i32 530, label %353
    i32 532, label %353
    i32 535, label %443
    i32 533, label %443
    i32 537, label %514
    i32 538, label %602
    i32 540, label %602
  ]

113:                                              ; preds = %110
  %114 = load ptr, ptr %2, align 16, !tbaa !149
  %115 = icmp ne ptr %114, null
  %116 = icmp eq i32 %70, 1
  %117 = and i1 %116, %115
  br i1 %117, label %118, label %615

118:                                              ; preds = %113
  %119 = load i32, ptr %0, align 8
  %120 = and i32 %119, 255
  %121 = add nsw i32 %120, -1
  %122 = icmp ult i32 %121, 9
  call void @llvm.assume(i1 %122)
  %123 = zext nneg i32 %120 to i64
  %124 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !164
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %126
  %128 = load i64, ptr %127, align 8, !tbaa !219
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %118
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %131

131:                                              ; preds = %130, %118
  %132 = getelementptr inbounds i8, ptr %0, i64 %128
  %133 = load ptr, ptr %132, align 8, !tbaa !149
  %134 = getelementptr inbounds %struct.tree_common, ptr %133, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !160
  %136 = load ptr, ptr %2, align 16, !tbaa !149
  %137 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %135, ptr noundef %136) #18
  %138 = call zeroext i8 @is_gimple_val(ptr noundef %137) #18
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %621

140:                                              ; preds = %131
  %141 = call zeroext i8 @is_gimple_cast(ptr noundef %137) #18
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %615, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.tree_exp, ptr %137, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !160
  %146 = call zeroext i8 @is_gimple_val(ptr noundef %145) #18
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %615, label %621

148:                                              ; preds = %110
  %149 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !149
  %151 = icmp eq ptr %150, null
  br i1 %151, label %615, label %152

152:                                              ; preds = %148
  %153 = call zeroext i8 @is_gimple_val(ptr noundef nonnull %150) #18
  %154 = icmp ne i8 %153, 0
  %155 = icmp eq i32 %70, 2
  %156 = and i1 %155, %154
  br i1 %156, label %157, label %615

157:                                              ; preds = %152
  %158 = load i32, ptr %0, align 8
  %159 = and i32 %158, 255
  %160 = add nsw i32 %159, -10
  %161 = icmp ult i32 %160, -9
  br i1 %161, label %175, label %162

162:                                              ; preds = %157
  %163 = zext nneg i32 %159 to i64
  %164 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !164
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %166
  %168 = load i64, ptr %167, align 8, !tbaa !219
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %171

171:                                              ; preds = %170, %162
  %172 = getelementptr inbounds i8, ptr %0, i64 %168
  %173 = getelementptr inbounds ptr, ptr %172, i64 3
  %174 = load ptr, ptr %173, align 8, !tbaa !149
  br label %175

175:                                              ; preds = %157, %171
  %176 = phi ptr [ %174, %171 ], [ null, %157 ]
  %177 = load i32, ptr %0, align 8
  %178 = and i32 %177, 255
  %179 = add nsw i32 %178, -10
  %180 = icmp ult i32 %179, -9
  br i1 %180, label %194, label %181

181:                                              ; preds = %175
  %182 = zext nneg i32 %178 to i64
  %183 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !164
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %185
  %187 = load i64, ptr %186, align 8, !tbaa !219
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %190

190:                                              ; preds = %189, %181
  %191 = getelementptr inbounds i8, ptr %0, i64 %187
  %192 = getelementptr inbounds ptr, ptr %191, i64 4
  %193 = load ptr, ptr %192, align 8, !tbaa !149
  br label %194

194:                                              ; preds = %175, %190
  %195 = phi ptr [ %193, %190 ], [ null, %175 ]
  %196 = load ptr, ptr %149, align 8, !tbaa !149
  %197 = call ptr @fold_builtin_strcpy(i32 noundef %4, ptr noundef %62, ptr noundef %176, ptr noundef %195, ptr noundef %196) #18
  br label %615

198:                                              ; preds = %110
  %199 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 1
  %200 = load ptr, ptr %199, align 8, !tbaa !149
  %201 = icmp eq ptr %200, null
  br i1 %201, label %615, label %202

202:                                              ; preds = %198
  %203 = call zeroext i8 @is_gimple_val(ptr noundef nonnull %200) #18
  %204 = icmp ne i8 %203, 0
  %205 = icmp eq i32 %70, 3
  %206 = and i1 %205, %204
  br i1 %206, label %207, label %615

207:                                              ; preds = %202
  %208 = load i32, ptr %0, align 8
  %209 = and i32 %208, 255
  %210 = add nsw i32 %209, -10
  %211 = icmp ult i32 %210, -9
  br i1 %211, label %225, label %212

212:                                              ; preds = %207
  %213 = zext nneg i32 %209 to i64
  %214 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !164
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %216
  %218 = load i64, ptr %217, align 8, !tbaa !219
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %212
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %221

221:                                              ; preds = %220, %212
  %222 = getelementptr inbounds i8, ptr %0, i64 %218
  %223 = getelementptr inbounds ptr, ptr %222, i64 3
  %224 = load ptr, ptr %223, align 8, !tbaa !149
  br label %225

225:                                              ; preds = %207, %221
  %226 = phi ptr [ %224, %221 ], [ null, %207 ]
  %227 = load i32, ptr %0, align 8
  %228 = and i32 %227, 255
  %229 = add nsw i32 %228, -10
  %230 = icmp ult i32 %229, -9
  br i1 %230, label %244, label %231

231:                                              ; preds = %225
  %232 = zext nneg i32 %228 to i64
  %233 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !164
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %235
  %237 = load i64, ptr %236, align 8, !tbaa !219
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %231
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %240

240:                                              ; preds = %239, %231
  %241 = getelementptr inbounds i8, ptr %0, i64 %237
  %242 = getelementptr inbounds ptr, ptr %241, i64 4
  %243 = load ptr, ptr %242, align 8, !tbaa !149
  br label %244

244:                                              ; preds = %225, %240
  %245 = phi ptr [ %243, %240 ], [ null, %225 ]
  %246 = load i32, ptr %0, align 8
  %247 = and i32 %246, 255
  %248 = add nsw i32 %247, -10
  %249 = icmp ult i32 %248, -9
  br i1 %249, label %263, label %250

250:                                              ; preds = %244
  %251 = zext nneg i32 %247 to i64
  %252 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !164
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %254
  %256 = load i64, ptr %255, align 8, !tbaa !219
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %250
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %259

259:                                              ; preds = %258, %250
  %260 = getelementptr inbounds i8, ptr %0, i64 %256
  %261 = getelementptr inbounds ptr, ptr %260, i64 5
  %262 = load ptr, ptr %261, align 8, !tbaa !149
  br label %263

263:                                              ; preds = %244, %259
  %264 = phi ptr [ %262, %259 ], [ null, %244 ]
  %265 = load ptr, ptr %199, align 8, !tbaa !149
  %266 = call ptr @fold_builtin_strncpy(i32 noundef %4, ptr noundef %62, ptr noundef %226, ptr noundef %245, ptr noundef %264, ptr noundef %265) #18
  br label %615

267:                                              ; preds = %110
  %268 = icmp eq i32 %70, 2
  br i1 %268, label %269, label %615

269:                                              ; preds = %267
  %270 = load i32, ptr %0, align 8
  %271 = and i32 %270, 255
  %272 = add nsw i32 %271, -10
  %273 = icmp ult i32 %272, -9
  br i1 %273, label %287, label %274

274:                                              ; preds = %269
  %275 = zext nneg i32 %271 to i64
  %276 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %275
  %277 = load i32, ptr %276, align 4, !tbaa !164
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %278
  %280 = load i64, ptr %279, align 8, !tbaa !219
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %274
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %283

283:                                              ; preds = %282, %274
  %284 = getelementptr inbounds i8, ptr %0, i64 %280
  %285 = getelementptr inbounds ptr, ptr %284, i64 3
  %286 = load ptr, ptr %285, align 8, !tbaa !149
  br label %287

287:                                              ; preds = %269, %283
  %288 = phi ptr [ %286, %283 ], [ null, %269 ]
  %289 = load i32, ptr %0, align 8
  %290 = and i32 %289, 255
  %291 = add nsw i32 %290, -10
  %292 = icmp ult i32 %291, -9
  br i1 %292, label %306, label %293

293:                                              ; preds = %287
  %294 = zext nneg i32 %290 to i64
  %295 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %294
  %296 = load i32, ptr %295, align 4, !tbaa !164
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %297
  %299 = load i64, ptr %298, align 8, !tbaa !219
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %293
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %302

302:                                              ; preds = %301, %293
  %303 = getelementptr inbounds i8, ptr %0, i64 %299
  %304 = getelementptr inbounds ptr, ptr %303, i64 4
  %305 = load ptr, ptr %304, align 8, !tbaa !149
  br label %306

306:                                              ; preds = %287, %302
  %307 = phi ptr [ %305, %302 ], [ null, %287 ]
  %308 = load ptr, ptr %2, align 16, !tbaa !149
  %309 = call ptr @fold_builtin_fputs(i32 noundef %4, ptr noundef %288, ptr noundef %307, i8 noundef zeroext %29, i8 noundef zeroext 0, ptr noundef %308) #18
  br label %615

310:                                              ; preds = %110
  %311 = icmp eq i32 %70, 2
  br i1 %311, label %312, label %615

312:                                              ; preds = %310
  %313 = load i32, ptr %0, align 8
  %314 = and i32 %313, 255
  %315 = add nsw i32 %314, -10
  %316 = icmp ult i32 %315, -9
  br i1 %316, label %330, label %317

317:                                              ; preds = %312
  %318 = zext nneg i32 %314 to i64
  %319 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %318
  %320 = load i32, ptr %319, align 4, !tbaa !164
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %321
  %323 = load i64, ptr %322, align 8, !tbaa !219
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %317
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %326

326:                                              ; preds = %325, %317
  %327 = getelementptr inbounds i8, ptr %0, i64 %323
  %328 = getelementptr inbounds ptr, ptr %327, i64 3
  %329 = load ptr, ptr %328, align 8, !tbaa !149
  br label %330

330:                                              ; preds = %312, %326
  %331 = phi ptr [ %329, %326 ], [ null, %312 ]
  %332 = load i32, ptr %0, align 8
  %333 = and i32 %332, 255
  %334 = add nsw i32 %333, -10
  %335 = icmp ult i32 %334, -9
  br i1 %335, label %349, label %336

336:                                              ; preds = %330
  %337 = zext nneg i32 %333 to i64
  %338 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %337
  %339 = load i32, ptr %338, align 4, !tbaa !164
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %340
  %342 = load i64, ptr %341, align 8, !tbaa !219
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %336
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %345

345:                                              ; preds = %344, %336
  %346 = getelementptr inbounds i8, ptr %0, i64 %342
  %347 = getelementptr inbounds ptr, ptr %346, i64 4
  %348 = load ptr, ptr %347, align 8, !tbaa !149
  br label %349

349:                                              ; preds = %330, %345
  %350 = phi ptr [ %348, %345 ], [ null, %330 ]
  %351 = load ptr, ptr %2, align 16, !tbaa !149
  %352 = call ptr @fold_builtin_fputs(i32 noundef %4, ptr noundef %331, ptr noundef %350, i8 noundef zeroext %29, i8 noundef zeroext 1, ptr noundef %351) #18
  br label %615

353:                                              ; preds = %110, %110, %110, %110
  %354 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 2
  %355 = load ptr, ptr %354, align 16, !tbaa !149
  %356 = icmp eq ptr %355, null
  br i1 %356, label %615, label %357

357:                                              ; preds = %353
  %358 = call zeroext i8 @is_gimple_val(ptr noundef nonnull %355) #18
  %359 = icmp ne i8 %358, 0
  %360 = icmp eq i32 %70, 4
  %361 = and i1 %360, %359
  br i1 %361, label %362, label %615

362:                                              ; preds = %357
  %363 = load i32, ptr %0, align 8
  %364 = and i32 %363, 255
  %365 = add nsw i32 %364, -10
  %366 = icmp ult i32 %365, -9
  br i1 %366, label %380, label %367

367:                                              ; preds = %362
  %368 = zext nneg i32 %364 to i64
  %369 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %368
  %370 = load i32, ptr %369, align 4, !tbaa !164
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %371
  %373 = load i64, ptr %372, align 8, !tbaa !219
  %374 = icmp eq i64 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %367
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %376

376:                                              ; preds = %375, %367
  %377 = getelementptr inbounds i8, ptr %0, i64 %373
  %378 = getelementptr inbounds ptr, ptr %377, i64 3
  %379 = load ptr, ptr %378, align 8, !tbaa !149
  br label %380

380:                                              ; preds = %362, %376
  %381 = phi ptr [ %379, %376 ], [ null, %362 ]
  %382 = load i32, ptr %0, align 8
  %383 = and i32 %382, 255
  %384 = add nsw i32 %383, -10
  %385 = icmp ult i32 %384, -9
  br i1 %385, label %399, label %386

386:                                              ; preds = %380
  %387 = zext nneg i32 %383 to i64
  %388 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %387
  %389 = load i32, ptr %388, align 4, !tbaa !164
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %390
  %392 = load i64, ptr %391, align 8, !tbaa !219
  %393 = icmp eq i64 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %386
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %395

395:                                              ; preds = %394, %386
  %396 = getelementptr inbounds i8, ptr %0, i64 %392
  %397 = getelementptr inbounds ptr, ptr %396, i64 4
  %398 = load ptr, ptr %397, align 8, !tbaa !149
  br label %399

399:                                              ; preds = %380, %395
  %400 = phi ptr [ %398, %395 ], [ null, %380 ]
  %401 = load i32, ptr %0, align 8
  %402 = and i32 %401, 255
  %403 = add nsw i32 %402, -10
  %404 = icmp ult i32 %403, -9
  br i1 %404, label %418, label %405

405:                                              ; preds = %399
  %406 = zext nneg i32 %402 to i64
  %407 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %406
  %408 = load i32, ptr %407, align 4, !tbaa !164
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %409
  %411 = load i64, ptr %410, align 8, !tbaa !219
  %412 = icmp eq i64 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %405
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %414

414:                                              ; preds = %413, %405
  %415 = getelementptr inbounds i8, ptr %0, i64 %411
  %416 = getelementptr inbounds ptr, ptr %415, i64 5
  %417 = load ptr, ptr %416, align 8, !tbaa !149
  br label %418

418:                                              ; preds = %399, %414
  %419 = phi ptr [ %417, %414 ], [ null, %399 ]
  %420 = load i32, ptr %0, align 8
  %421 = and i32 %420, 255
  %422 = add nsw i32 %421, -10
  %423 = icmp ult i32 %422, -9
  br i1 %423, label %437, label %424

424:                                              ; preds = %418
  %425 = zext nneg i32 %421 to i64
  %426 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %425
  %427 = load i32, ptr %426, align 4, !tbaa !164
  %428 = zext i32 %427 to i64
  %429 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %428
  %430 = load i64, ptr %429, align 8, !tbaa !219
  %431 = icmp eq i64 %430, 0
  br i1 %431, label %432, label %433

432:                                              ; preds = %424
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %433

433:                                              ; preds = %432, %424
  %434 = getelementptr inbounds i8, ptr %0, i64 %430
  %435 = getelementptr inbounds ptr, ptr %434, i64 6
  %436 = load ptr, ptr %435, align 8, !tbaa !149
  br label %437

437:                                              ; preds = %418, %433
  %438 = phi ptr [ %436, %433 ], [ null, %418 ]
  %439 = load ptr, ptr %354, align 16, !tbaa !149
  %440 = load i32, ptr %63, align 8
  %441 = and i32 %440, 2047
  %442 = call ptr @fold_builtin_memory_chk(i32 noundef %4, ptr noundef %62, ptr noundef %381, ptr noundef %400, ptr noundef %419, ptr noundef %438, ptr noundef %439, i8 noundef zeroext %29, i32 noundef %441) #18
  br label %615

443:                                              ; preds = %110, %110
  %444 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 1
  %445 = load ptr, ptr %444, align 8, !tbaa !149
  %446 = icmp eq ptr %445, null
  br i1 %446, label %615, label %447

447:                                              ; preds = %443
  %448 = call zeroext i8 @is_gimple_val(ptr noundef nonnull %445) #18
  %449 = icmp ne i8 %448, 0
  %450 = icmp eq i32 %70, 3
  %451 = and i1 %450, %449
  br i1 %451, label %452, label %615

452:                                              ; preds = %447
  %453 = load i32, ptr %0, align 8
  %454 = and i32 %453, 255
  %455 = add nsw i32 %454, -10
  %456 = icmp ult i32 %455, -9
  br i1 %456, label %470, label %457

457:                                              ; preds = %452
  %458 = zext nneg i32 %454 to i64
  %459 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %458
  %460 = load i32, ptr %459, align 4, !tbaa !164
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %461
  %463 = load i64, ptr %462, align 8, !tbaa !219
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %457
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %466

466:                                              ; preds = %465, %457
  %467 = getelementptr inbounds i8, ptr %0, i64 %463
  %468 = getelementptr inbounds ptr, ptr %467, i64 3
  %469 = load ptr, ptr %468, align 8, !tbaa !149
  br label %470

470:                                              ; preds = %452, %466
  %471 = phi ptr [ %469, %466 ], [ null, %452 ]
  %472 = load i32, ptr %0, align 8
  %473 = and i32 %472, 255
  %474 = add nsw i32 %473, -10
  %475 = icmp ult i32 %474, -9
  br i1 %475, label %489, label %476

476:                                              ; preds = %470
  %477 = zext nneg i32 %473 to i64
  %478 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %477
  %479 = load i32, ptr %478, align 4, !tbaa !164
  %480 = zext i32 %479 to i64
  %481 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %480
  %482 = load i64, ptr %481, align 8, !tbaa !219
  %483 = icmp eq i64 %482, 0
  br i1 %483, label %484, label %485

484:                                              ; preds = %476
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %485

485:                                              ; preds = %484, %476
  %486 = getelementptr inbounds i8, ptr %0, i64 %482
  %487 = getelementptr inbounds ptr, ptr %486, i64 4
  %488 = load ptr, ptr %487, align 8, !tbaa !149
  br label %489

489:                                              ; preds = %470, %485
  %490 = phi ptr [ %488, %485 ], [ null, %470 ]
  %491 = load i32, ptr %0, align 8
  %492 = and i32 %491, 255
  %493 = add nsw i32 %492, -10
  %494 = icmp ult i32 %493, -9
  br i1 %494, label %508, label %495

495:                                              ; preds = %489
  %496 = zext nneg i32 %492 to i64
  %497 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %496
  %498 = load i32, ptr %497, align 4, !tbaa !164
  %499 = zext i32 %498 to i64
  %500 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %499
  %501 = load i64, ptr %500, align 8, !tbaa !219
  %502 = icmp eq i64 %501, 0
  br i1 %502, label %503, label %504

503:                                              ; preds = %495
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %504

504:                                              ; preds = %503, %495
  %505 = getelementptr inbounds i8, ptr %0, i64 %501
  %506 = getelementptr inbounds ptr, ptr %505, i64 5
  %507 = load ptr, ptr %506, align 8, !tbaa !149
  br label %508

508:                                              ; preds = %489, %504
  %509 = phi ptr [ %507, %504 ], [ null, %489 ]
  %510 = load ptr, ptr %444, align 8, !tbaa !149
  %511 = load i32, ptr %63, align 8
  %512 = and i32 %511, 2047
  %513 = call ptr @fold_builtin_stxcpy_chk(i32 noundef %4, ptr noundef %62, ptr noundef %471, ptr noundef %490, ptr noundef %509, ptr noundef %510, i8 noundef zeroext %29, i32 noundef %512) #18
  br label %615

514:                                              ; preds = %110
  %515 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 2
  %516 = load ptr, ptr %515, align 16, !tbaa !149
  %517 = icmp eq ptr %516, null
  br i1 %517, label %615, label %518

518:                                              ; preds = %514
  %519 = call zeroext i8 @is_gimple_val(ptr noundef nonnull %516) #18
  %520 = icmp ne i8 %519, 0
  %521 = icmp eq i32 %70, 4
  %522 = and i1 %521, %520
  br i1 %522, label %523, label %615

523:                                              ; preds = %518
  %524 = load i32, ptr %0, align 8
  %525 = and i32 %524, 255
  %526 = add nsw i32 %525, -10
  %527 = icmp ult i32 %526, -9
  br i1 %527, label %541, label %528

528:                                              ; preds = %523
  %529 = zext nneg i32 %525 to i64
  %530 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %529
  %531 = load i32, ptr %530, align 4, !tbaa !164
  %532 = zext i32 %531 to i64
  %533 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %532
  %534 = load i64, ptr %533, align 8, !tbaa !219
  %535 = icmp eq i64 %534, 0
  br i1 %535, label %536, label %537

536:                                              ; preds = %528
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %537

537:                                              ; preds = %536, %528
  %538 = getelementptr inbounds i8, ptr %0, i64 %534
  %539 = getelementptr inbounds ptr, ptr %538, i64 3
  %540 = load ptr, ptr %539, align 8, !tbaa !149
  br label %541

541:                                              ; preds = %523, %537
  %542 = phi ptr [ %540, %537 ], [ null, %523 ]
  %543 = load i32, ptr %0, align 8
  %544 = and i32 %543, 255
  %545 = add nsw i32 %544, -10
  %546 = icmp ult i32 %545, -9
  br i1 %546, label %560, label %547

547:                                              ; preds = %541
  %548 = zext nneg i32 %544 to i64
  %549 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %548
  %550 = load i32, ptr %549, align 4, !tbaa !164
  %551 = zext i32 %550 to i64
  %552 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %551
  %553 = load i64, ptr %552, align 8, !tbaa !219
  %554 = icmp eq i64 %553, 0
  br i1 %554, label %555, label %556

555:                                              ; preds = %547
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %556

556:                                              ; preds = %555, %547
  %557 = getelementptr inbounds i8, ptr %0, i64 %553
  %558 = getelementptr inbounds ptr, ptr %557, i64 4
  %559 = load ptr, ptr %558, align 8, !tbaa !149
  br label %560

560:                                              ; preds = %541, %556
  %561 = phi ptr [ %559, %556 ], [ null, %541 ]
  %562 = load i32, ptr %0, align 8
  %563 = and i32 %562, 255
  %564 = add nsw i32 %563, -10
  %565 = icmp ult i32 %564, -9
  br i1 %565, label %579, label %566

566:                                              ; preds = %560
  %567 = zext nneg i32 %563 to i64
  %568 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %567
  %569 = load i32, ptr %568, align 4, !tbaa !164
  %570 = zext i32 %569 to i64
  %571 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %570
  %572 = load i64, ptr %571, align 8, !tbaa !219
  %573 = icmp eq i64 %572, 0
  br i1 %573, label %574, label %575

574:                                              ; preds = %566
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %575

575:                                              ; preds = %574, %566
  %576 = getelementptr inbounds i8, ptr %0, i64 %572
  %577 = getelementptr inbounds ptr, ptr %576, i64 5
  %578 = load ptr, ptr %577, align 8, !tbaa !149
  br label %579

579:                                              ; preds = %560, %575
  %580 = phi ptr [ %578, %575 ], [ null, %560 ]
  %581 = load i32, ptr %0, align 8
  %582 = and i32 %581, 255
  %583 = add nsw i32 %582, -10
  %584 = icmp ult i32 %583, -9
  br i1 %584, label %598, label %585

585:                                              ; preds = %579
  %586 = zext nneg i32 %582 to i64
  %587 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %586
  %588 = load i32, ptr %587, align 4, !tbaa !164
  %589 = zext i32 %588 to i64
  %590 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %589
  %591 = load i64, ptr %590, align 8, !tbaa !219
  %592 = icmp eq i64 %591, 0
  br i1 %592, label %593, label %594

593:                                              ; preds = %585
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %594

594:                                              ; preds = %593, %585
  %595 = getelementptr inbounds i8, ptr %0, i64 %591
  %596 = getelementptr inbounds ptr, ptr %595, i64 6
  %597 = load ptr, ptr %596, align 8, !tbaa !149
  br label %598

598:                                              ; preds = %579, %594
  %599 = phi ptr [ %597, %594 ], [ null, %579 ]
  %600 = load ptr, ptr %515, align 16, !tbaa !149
  %601 = call ptr @fold_builtin_strncpy_chk(i32 noundef %4, ptr noundef %542, ptr noundef %561, ptr noundef %580, ptr noundef %599, ptr noundef %600) #18
  br label %615

602:                                              ; preds = %110, %110
  %603 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 1
  %604 = load ptr, ptr %603, align 8, !tbaa !149
  %605 = icmp eq ptr %604, null
  br i1 %605, label %615, label %606

606:                                              ; preds = %602
  %607 = call zeroext i8 @is_gimple_val(ptr noundef nonnull %604) #18
  %608 = icmp eq i8 %607, 0
  br i1 %608, label %615, label %609

609:                                              ; preds = %606
  %610 = load ptr, ptr %603, align 8, !tbaa !149
  %611 = load i32, ptr %63, align 8
  %612 = and i32 %611, 2047
  %613 = call ptr @gimple_fold_builtin_snprintf_chk(ptr noundef %0, ptr noundef %610, i32 noundef %612) #18
  br label %615

614:                                              ; preds = %110
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2759, ptr noundef nonnull @.str.3) #18
  br label %615

615:                                              ; preds = %602, %443, %143, %140, %606, %609, %514, %518, %598, %447, %508, %353, %357, %437, %310, %349, %267, %306, %198, %202, %263, %148, %152, %194, %113, %614
  %616 = phi ptr [ null, %614 ], [ %613, %609 ], [ null, %606 ], [ %601, %598 ], [ null, %518 ], [ null, %514 ], [ %513, %508 ], [ null, %447 ], [ %442, %437 ], [ null, %357 ], [ null, %353 ], [ %352, %349 ], [ null, %310 ], [ %309, %306 ], [ null, %267 ], [ %266, %263 ], [ null, %202 ], [ null, %198 ], [ %197, %194 ], [ null, %152 ], [ null, %148 ], [ null, %113 ], [ null, %140 ], [ null, %143 ], [ null, %443 ], [ null, %602 ]
  %617 = icmp ne ptr %616, null
  %618 = and i1 %28, %617
  br i1 %618, label %619, label %621

619:                                              ; preds = %615
  %620 = call ptr @fold_ignored_result(ptr noundef nonnull %616) #18
  br label %621

621:                                              ; preds = %72, %615, %619, %143, %131, %78, %67, %61, %32, %33
  %622 = phi ptr [ %34, %33 ], [ %30, %32 ], [ null, %61 ], [ null, %67 ], [ null, %78 ], [ %137, %131 ], [ %137, %143 ], [ %620, %619 ], [ %616, %615 ], [ null, %72 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret ptr %622
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gimplify_and_update_call_from_tree(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !148 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimplify_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %5 = tail call ptr @gimple_seq_alloc() #18
  store ptr %5, ptr %3, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #18
  %6 = load ptr, ptr %0, align 1
  %7 = load ptr, ptr %6, align 8, !tbaa !260
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3366, ptr noundef nonnull @.str.3) #18
  br label %12

12:                                               ; preds = %2, %11
  %13 = load i32, ptr %7, align 8
  %14 = and i32 %13, 255
  %15 = add nsw i32 %14, -10
  %16 = icmp ult i32 %15, -9
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = zext nneg i32 %14 to i64
  %19 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !164
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !219
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %26

26:                                               ; preds = %25, %17
  %27 = getelementptr inbounds i8, ptr %7, i64 %23
  %28 = load ptr, ptr %27, align 8, !tbaa !149
  br label %29

29:                                               ; preds = %12, %26
  %30 = phi ptr [ %28, %26 ], [ null, %12 ]
  call void @push_gimplify_context(ptr noundef nonnull %4) #18
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @gimplify_and_add(ptr noundef %1, ptr noundef nonnull %3) #18
  br label %35

33:                                               ; preds = %29
  %34 = call ptr @get_initialized_tmp_var(ptr noundef %1, ptr noundef nonnull %3, ptr noundef null) #18
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi ptr [ null, %32 ], [ %34, %33 ]
  call void @pop_gimplify_context(ptr noundef null) #18
  %37 = getelementptr inbounds %struct.gimple_statement_base, ptr %7, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !160
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %3, align 8, !tbaa !149
  call void @annotate_all_with_location(ptr noundef %41, i32 noundef %38) #18
  br label %42

42:                                               ; preds = %40, %35
  %43 = load ptr, ptr %3, align 8, !tbaa !149
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %43, align 8, !tbaa !257, !noalias !544
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi ptr [ %46, %45 ], [ null, %42 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %47, %50
  %51 = phi ptr [ %57, %50 ], [ %48, %47 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !260
  call void @find_new_referenced_vars(ptr noundef %52) #18
  call void @gsi_insert_before(ptr noundef nonnull %0, ptr noundef %52, i32 noundef 0) #18
  call void @mark_symbols_for_renaming(ptr noundef %52) #18
  %53 = load ptr, ptr %0, align 8, !tbaa !373
  %54 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !282
  store ptr %55, ptr %0, align 8, !tbaa !373
  %56 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %51, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !282
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %50, !llvm.loop !547

59:                                               ; preds = %50, %47
  br i1 %31, label %60, label %62

60:                                               ; preds = %59
  %61 = call ptr @gimple_build_nop() #18
  call void @unlink_stmt_vdef(ptr noundef nonnull %7) #18
  call void @release_defs(ptr noundef nonnull %7) #18
  br label %96

62:                                               ; preds = %59
  %63 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %30, ptr noundef %36) #18
  %64 = load i32, ptr %7, align 8
  %65 = and i32 %64, 254
  %66 = add nsw i32 %65, -10
  %67 = icmp ult i32 %66, -4
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %7, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !160
  br label %71

71:                                               ; preds = %62, %68
  %72 = phi ptr [ %70, %68 ], [ null, %62 ]
  %73 = load i32, ptr %63, align 8
  %74 = and i32 %73, 254
  %75 = add nsw i32 %74, -10
  %76 = icmp ult i32 %75, -4
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1407, ptr noundef nonnull @.str.3) #18
  br label %78

78:                                               ; preds = %71, %77
  %79 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %63, i64 0, i32 2
  store ptr %72, ptr %79, align 8, !tbaa !160
  %80 = load i32, ptr %7, align 8
  %81 = and i32 %80, 254
  %82 = add nsw i32 %81, -10
  %83 = icmp ult i32 %82, -4
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %7, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !160
  br label %87

87:                                               ; preds = %78, %84
  %88 = phi ptr [ %86, %84 ], [ null, %78 ]
  %89 = load i32, ptr %63, align 8
  %90 = and i32 %89, 254
  %91 = add nsw i32 %90, -10
  %92 = icmp ult i32 %91, -4
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1416, ptr noundef nonnull @.str.3) #18
  br label %94

94:                                               ; preds = %87, %93
  %95 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %63, i64 0, i32 1
  store ptr %88, ptr %95, align 8, !tbaa !160
  call void @move_ssa_defining_stmt_for_defs(ptr noundef nonnull %63, ptr noundef nonnull %7) #18
  br label %96

96:                                               ; preds = %94, %60
  %97 = phi ptr [ %61, %60 ], [ %63, %94 ]
  %98 = load i32, ptr %37, align 8, !tbaa !160
  %99 = getelementptr inbounds %struct.gimple_statement_base, ptr %97, i64 0, i32 2
  store i32 %98, ptr %99, align 8, !tbaa !160
  call void @gsi_replace(ptr noundef nonnull %0, ptr noundef %97, i8 noundef zeroext 0) #18
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret void
}

declare ptr @fold_call_stmt(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @get_maxval_strlen(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #9 !prof !148 {
  br label %5

5:                                                ; preds = %129, %4
  %6 = phi ptr [ %0, %4 ], [ %130, %129 ]
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %51 [
    i16 141, label %86
    i16 56, label %9
    i16 121, label %22
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !160
  %12 = tail call fastcc zeroext i8 @get_maxval_strlen(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %85, %48, %9, %53, %62, %74, %70, %81, %78, %82, %86, %108, %91, %57, %153, %98, %16
  %15 = phi i8 [ %21, %16 ], [ 1, %85 ], [ %50, %48 ], [ 0, %9 ], [ 0, %53 ], [ 0, %62 ], [ 0, %74 ], [ 0, %70 ], [ 1, %81 ], [ 1, %78 ], [ 0, %82 ], [ 1, %86 ], [ 0, %108 ], [ 0, %91 ], [ 0, %57 ], [ 1, %98 ], [ %156, %153 ]
  ret i8 %15

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !160
  %19 = tail call fastcc zeroext i8 @get_maxval_strlen(ptr noundef %18, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %20 = icmp ne i8 %19, 0
  %21 = zext i1 %20 to i8
  br label %14

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !160
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 45
  br i1 %27, label %28, label %51

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !160
  %31 = tail call i32 @integer_zerop(ptr noundef %30) #18
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %23, align 8, !tbaa !160
  %35 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !160
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 47
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.tree_exp, ptr %36, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !160
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 141
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = tail call fastcc zeroext i8 @get_maxval_strlen(ptr noundef nonnull %42, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %48

48:                                               ; preds = %33, %40, %46
  %49 = phi i1 [ false, %46 ], [ true, %40 ], [ true, %33 ]
  %50 = phi i8 [ %47, %46 ], [ undef, %40 ], [ undef, %33 ]
  br i1 %49, label %51, label %14

51:                                               ; preds = %5, %22, %28, %48
  %52 = icmp eq i32 %3, 2
  br i1 %52, label %53, label %60

53:                                               ; preds = %51
  %54 = load i64, ptr %6, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 23
  br i1 %56, label %57, label %14

57:                                               ; preds = %53
  %58 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %6) #18
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %14, label %62

60:                                               ; preds = %51
  %61 = tail call ptr @c_strlen(ptr noundef nonnull %6, i32 noundef 1) #18
  br label %62

62:                                               ; preds = %57, %60
  %63 = phi ptr [ %6, %57 ], [ %61, %60 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %14, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %1, align 8, !tbaa !149
  %67 = icmp eq ptr %66, null
  br i1 %67, label %85, label %68

68:                                               ; preds = %65
  %69 = icmp sgt i32 %3, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %68
  %71 = load i64, ptr %66, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 23
  br i1 %73, label %74, label %14

74:                                               ; preds = %70
  %75 = load i64, ptr %63, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 23
  br i1 %77, label %78, label %14

78:                                               ; preds = %74
  %79 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %66, ptr noundef nonnull %63) #18
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %14, label %81

81:                                               ; preds = %78
  store ptr %63, ptr %1, align 8, !tbaa !149
  br label %14

82:                                               ; preds = %68
  %83 = tail call i32 @simple_cst_equal(ptr noundef nonnull %63, ptr noundef nonnull %66) #18
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %14

85:                                               ; preds = %82, %65
  store ptr %63, ptr %1, align 8, !tbaa !149
  br label %14

86:                                               ; preds = %5
  %87 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 3
  %88 = load i32, ptr %87, align 8, !tbaa !160
  %89 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %88) #18
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %14

91:                                               ; preds = %86
  %92 = load i32, ptr %87, align 8, !tbaa !160
  %93 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %92) #18
  %94 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !160
  %96 = load i32, ptr %95, align 8
  %97 = trunc i32 %96 to i8
  switch i8 %97, label %14 [
    i8 6, label %105
    i8 16, label %98
  ]

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.gimple_statement_phi, ptr %95, i64 0, i32 2
  %100 = load i32, ptr %99, align 4, !tbaa !160
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %14, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.gimple_statement_phi, ptr %95, i64 0, i32 1
  %104 = getelementptr inbounds %struct.gimple_statement_phi, ptr %95, i64 0, i32 3
  br label %131

105:                                              ; preds = %91
  %106 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %95) #18
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = tail call zeroext i8 @gimple_assign_unary_nop_p(ptr noundef nonnull %95) #18
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %14, label %111

111:                                              ; preds = %108, %105
  %112 = load i32, ptr %95, align 8
  %113 = and i32 %112, 255
  %114 = add nsw i32 %113, -10
  %115 = icmp ult i32 %114, -9
  br i1 %115, label %129, label %116

116:                                              ; preds = %111
  %117 = zext nneg i32 %113 to i64
  %118 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !164
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !219
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %125

125:                                              ; preds = %124, %116
  %126 = getelementptr inbounds i8, ptr %95, i64 %122
  %127 = getelementptr inbounds ptr, ptr %126, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !149
  br label %129

129:                                              ; preds = %111, %125
  %130 = phi ptr [ %128, %125 ], [ null, %111 ]
  br label %5

131:                                              ; preds = %102, %148
  %132 = phi i64 [ 0, %102 ], [ %149, %148 ]
  %133 = load i32, ptr %103, align 8, !tbaa !160
  %134 = zext i32 %133 to i64
  %135 = icmp ugt i64 %132, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3103, ptr noundef nonnull @.str.3) #18
  br label %137

137:                                              ; preds = %131, %136
  %138 = getelementptr inbounds %struct.gimple_statement_phi, ptr %95, i64 0, i32 4, i64 %132, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !447
  %140 = load ptr, ptr %104, align 8, !tbaa !160
  %141 = icmp eq ptr %139, %140
  br i1 %141, label %146, label %142

142:                                              ; preds = %137
  %143 = tail call fastcc zeroext i8 @get_maxval_strlen(ptr noundef %139, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %144 = icmp eq i8 %143, 0
  %145 = zext i1 %144 to i32
  br label %146

146:                                              ; preds = %142, %137
  %147 = phi i32 [ 5, %137 ], [ %145, %142 ]
  switch i32 %147, label %153 [
    i32 0, label %148
    i32 5, label %148
  ]

148:                                              ; preds = %146, %146
  %149 = add nuw nsw i64 %132, 1
  %150 = load i32, ptr %99, align 4, !tbaa !160
  %151 = zext i32 %150 to i64
  %152 = icmp ult i64 %149, %151
  br i1 %152, label %131, label %153, !llvm.loop !548

153:                                              ; preds = %148, %146
  %154 = phi i32 [ %147, %146 ], [ 0, %148 ]
  %155 = icmp eq i32 %154, 0
  %156 = zext i1 %155 to i8
  br label %14
}

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_cast(ptr noundef) local_unnamed_addr #3

declare ptr @fold_builtin_strcpy(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_builtin_strncpy(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_builtin_fputs(i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare ptr @fold_builtin_memory_chk(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @fold_builtin_stxcpy_chk(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @fold_builtin_strncpy_chk(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_fold_builtin_snprintf_chk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fold_ignored_result(ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #3

declare ptr @c_strlen(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_unary_nop_p(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_seq_alloc() local_unnamed_addr #3

declare void @push_gimplify_context(ptr noundef) local_unnamed_addr #3

declare void @gimplify_and_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_initialized_tmp_var(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pop_gimplify_context(ptr noundef) local_unnamed_addr #3

declare void @annotate_all_with_location(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @find_new_referenced_vars(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_nop() local_unnamed_addr #3

declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #3

declare void @release_defs(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @move_ssa_defining_stmt_for_defs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @gimple_remove_stmt_histograms(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

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
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!147}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!35 = !{ptr @may_propagate_address_into_dereference, ptr @is_gimple_min_invariant, i64 12}
!36 = !{ptr @may_propagate_address_into_dereference, ptr @useless_type_conversion_p, i64 24}
!37 = !{ptr @fold_const_aggregate_ref, ptr @fold_const_aggregate_ref, i64 64363}
!38 = !{ptr @fold_const_aggregate_ref, ptr @get_value, i64 18}
!39 = !{ptr @get_value, ptr @is_gimple_reg, i64 1}
!40 = !{ptr @get_value, ptr @gimple_assign_single_p, i64 4165}
!41 = !{ptr @do_ssa_ccp, ptr @xcalloc, i64 116}
!42 = !{ptr @do_ssa_ccp, ptr @stmt_ends_bb_p, i64 1100179}
!43 = !{ptr @do_ssa_ccp, ptr @gsi_start_phis, i64 491306}
!44 = !{ptr @do_ssa_ccp, ptr @is_gimple_reg, i64 133911}
!45 = !{ptr @do_ssa_ccp, ptr @ssa_propagate, i64 116}
!46 = !{ptr @do_ssa_ccp, ptr @dbg_cnt, i64 1157514}
!47 = !{ptr @do_ssa_ccp, ptr @substitute_and_fold, i64 116}
!48 = !{ptr @do_ssa_ccp, ptr @free, i64 116}
!49 = !{ptr @maybe_fold_offset_to_reference, ptr @tree_strip_nop_conversions, i64 330}
!50 = !{ptr @maybe_fold_offset_to_reference, ptr @get_ref_base_and_extent, i64 1}
!51 = !{ptr @maybe_fold_offset_to_reference, ptr @build_int_cst, i64 1}
!52 = !{ptr @maybe_fold_offset_to_reference, ptr @int_const_binop, i64 1}
!53 = !{ptr @maybe_fold_offset_to_reference, ptr @useless_type_conversion_p, i64 123}
!54 = !{ptr @maybe_fold_offset_to_reference, ptr @maybe_fold_offset_to_component_ref, i64 123}
!55 = !{ptr @maybe_fold_offset_to_reference, ptr @maybe_fold_offset_to_array_ref, i64 122}
!56 = !{ptr @maybe_fold_offset_to_component_ref, ptr @useless_type_conversion_p, i64 2}
!57 = !{ptr @maybe_fold_offset_to_component_ref, ptr @byte_position, i64 3}
!58 = !{ptr @maybe_fold_offset_to_component_ref, ptr @tree_int_cst_compare, i64 3}
!59 = !{ptr @maybe_fold_offset_to_component_ref, ptr @int_const_binop, i64 1}
!60 = !{ptr @maybe_fold_offset_to_component_ref, ptr @tree_int_cst_lt, i64 1}
!61 = !{ptr @maybe_fold_offset_to_component_ref, ptr @build3_stat, i64 1}
!62 = !{ptr @maybe_fold_offset_to_component_ref, ptr @maybe_fold_offset_to_array_ref, i64 1}
!63 = !{ptr @maybe_fold_offset_to_array_ref, ptr @useless_type_conversion_p, i64 123}
!64 = !{ptr @maybe_fold_offset_to_array_ref, ptr @signed_type_for, i64 123}
!65 = !{ptr @maybe_fold_offset_to_array_ref, ptr @integer_zerop, i64 369}
!66 = !{ptr @maybe_fold_offset_to_array_ref, ptr @build_int_cst, i64 246}
!67 = !{ptr @maybe_fold_offset_to_array_ref, ptr @fold_convert_loc, i64 246}
!68 = !{ptr @maybe_fold_offset_to_array_ref, ptr @tree_int_cst_lt, i64 124}
!69 = !{ptr @maybe_fold_offset_to_array_ref, ptr @build4_stat, i64 123}
!70 = !{ptr @maybe_fold_offset_to_address, ptr @maybe_fold_offset_to_reference, i64 123}
!71 = !{ptr @maybe_fold_offset_to_address, ptr @tree_strip_nop_conversions, i64 123}
!72 = !{ptr @maybe_fold_offset_to_address, ptr @operand_equal_p, i64 1}
!73 = !{ptr @maybe_fold_offset_to_address, ptr @build_pointer_type, i64 123}
!74 = !{ptr @maybe_fold_offset_to_address, ptr @useless_type_conversion_p, i64 123}
!75 = !{ptr @maybe_fold_offset_to_address, ptr @build_fold_addr_expr_with_type_loc, i64 123}
!76 = !{ptr @fold_stmt, ptr @fold_stmt_1, i64 79929}
!77 = !{ptr @fold_stmt_1, ptr @maybe_fold_reference, i64 262}
!78 = !{ptr @fold_stmt_1, ptr @get_symbol_constant_value, i64 737}
!79 = !{ptr @fold_stmt_1, ptr @unshare_expr, i64 737}
!80 = !{ptr @fold_stmt_1, ptr @fold, i64 43428}
!81 = !{ptr @fold_stmt_1, ptr @tree_ssa_strip_useless_type_conversions, i64 47114}
!82 = !{ptr @fold_stmt_1, ptr @gimple_expr_type, i64 51}
!83 = !{ptr @fold_stmt_1, ptr @fold_unary_loc, i64 17}
!84 = !{ptr @fold_stmt_1, ptr @maybe_fold_stmt_addition, i64 12}
!85 = !{ptr @fold_stmt_1, ptr @fold_binary_loc, i64 36693}
!86 = !{ptr @fold_stmt_1, ptr @valid_gimple_rhs_p, i64 3686}
!87 = !{ptr @fold_stmt_1, ptr @useless_type_conversion_p, i64 2999}
!88 = !{ptr @fold_stmt_1, ptr @get_gimple_rhs_num_ops, i64 36}
!89 = !{ptr @fold_stmt_1, ptr @gimple_assign_set_rhs_from_tree, i64 2999}
!90 = !{ptr @fold_stmt_1, ptr @is_gimple_condexpr, i64 687}
!91 = !{ptr @fold_stmt_1, ptr @gimple_cond_set_condition_from_tree, i64 687}
!92 = !{ptr @fold_stmt_1, ptr @gimple_get_lhs, i64 73210}
!93 = !{ptr @fold_stmt_inplace, ptr @gsi_for_stmt, i64 1544}
!94 = !{ptr @fold_stmt_inplace, ptr @fold_stmt_1, i64 1544}
!95 = !{ptr @ccp_visit_stmt, ptr @visit_assignment, i64 455716}
!96 = !{ptr @ccp_visit_stmt, ptr @is_gimple_reg, i64 12}
!97 = !{ptr @ccp_visit_stmt, ptr @gimple_assign_single_p, i64 48732}
!98 = !{ptr @ccp_visit_stmt, ptr @is_gimple_min_invariant, i64 461718}
!99 = !{ptr @ccp_visit_stmt, ptr @fold_defer_overflow_warnings, i64 428053}
!100 = !{ptr @ccp_visit_stmt, ptr @ccp_fold, i64 416228}
!101 = !{ptr @ccp_visit_stmt, ptr @fold_undefer_overflow_warnings, i64 428053}
!102 = !{ptr @ccp_visit_stmt, ptr @find_taken_edge, i64 2}
!103 = !{ptr @ccp_visit_phi_node, ptr @get_value, i64 7329}
!104 = !{ptr @ccp_visit_phi_node, ptr @is_gimple_min_invariant, i64 3850}
!105 = !{ptr @ccp_visit_phi_node, ptr @simple_cst_equal, i64 640}
!106 = !{ptr @ccp_visit_phi_node, ptr @set_lattice_value, i64 3833}
!107 = !{ptr @visit_assignment, ptr @gimple_get_lhs, i64 455716}
!108 = !{ptr @visit_assignment, ptr @gimple_assign_copy_p, i64 455716}
!109 = !{ptr @visit_assignment, ptr @get_value, i64 95}
!110 = !{ptr @visit_assignment, ptr @evaluate_stmt, i64 43423}
!111 = !{ptr @visit_assignment, ptr @is_gimple_reg, i64 29}
!112 = !{ptr @visit_assignment, ptr @gimple_assign_single_p, i64 112534}
!113 = !{ptr @visit_assignment, ptr @is_gimple_min_invariant, i64 444616}
!114 = !{ptr @visit_assignment, ptr @fold_defer_overflow_warnings, i64 412198}
!115 = !{ptr @visit_assignment, ptr @ccp_fold, i64 400811}
!116 = !{ptr @visit_assignment, ptr @fold_undefer_overflow_warnings, i64 412198}
!117 = !{ptr @visit_assignment, ptr @operand_equal_p, i64 40}
!118 = !{ptr @set_lattice_value, ptr @gimple_assign_single_p, i64 552}
!119 = !{ptr @evaluate_stmt, ptr @is_gimple_reg, i64 1}
!120 = !{ptr @evaluate_stmt, ptr @gimple_assign_single_p, i64 4944}
!121 = !{ptr @evaluate_stmt, ptr @is_gimple_min_invariant, i64 46838}
!122 = !{ptr @evaluate_stmt, ptr @fold_defer_overflow_warnings, i64 43423}
!123 = !{ptr @evaluate_stmt, ptr @ccp_fold, i64 42223}
!124 = !{ptr @evaluate_stmt, ptr @fold_undefer_overflow_warnings, i64 43423}
!125 = !{ptr @ccp_fold, ptr @get_value, i64 21495}
!126 = !{ptr @ccp_fold, ptr @fold_const_aggregate_ref, i64 44908}
!127 = !{ptr @ccp_fold, ptr @is_gimple_reg, i64 34}
!128 = !{ptr @ccp_fold, ptr @gimple_assign_single_p, i64 136439}
!129 = !{ptr @ccp_fold, ptr @gimple_get_lhs, i64 113321}
!130 = !{ptr @ccp_fold, ptr @fold_binary_loc, i64 969191}
!131 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 51}
!132 = !{ptr @ccp_fold_stmt, ptr @is_gimple_reg, i64 38}
!133 = !{ptr @ccp_fold_stmt, ptr @gimple_assign_single_p, i64 606972}
!134 = !{ptr @ccp_fold_stmt, ptr @is_gimple_min_invariant, i64 461590}
!135 = !{ptr @ccp_fold_stmt, ptr @fold_defer_overflow_warnings, i64 427935}
!136 = !{ptr @ccp_fold_stmt, ptr @ccp_fold, i64 416113}
!137 = !{ptr @ccp_fold_stmt, ptr @fold_undefer_overflow_warnings, i64 427935}
!138 = !{ptr @ccp_fold_stmt, ptr @integer_zerop, i64 2}
!139 = !{ptr @ccp_fold_stmt, ptr @unshare_expr, i64 43272}
!140 = !{ptr @ccp_fold_stmt, ptr @useless_type_conversion_p, i64 43272}
!141 = !{ptr @ccp_fold_stmt, ptr @gimple_assign_set_rhs_from_tree, i64 43272}
!142 = !{ptr @maybe_fold_reference, ptr @fold_read_from_constant_string, i64 268}
!143 = !{ptr @maybe_fold_reference, ptr @fold, i64 207}
!144 = !{ptr @maybe_fold_reference, ptr @tree_strip_nop_conversions, i64 207}
!145 = !{ptr @maybe_fold_reference, ptr @maybe_fold_offset_to_reference, i64 207}
!146 = !{ptr @maybe_fold_reference, ptr @get_symbol_constant_value, i64 55}
!147 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!148 = !{!"function_entry_count", i64 0}
!149 = !{!150, !150, i64 0}
!150 = !{!"any pointer", !151, i64 0}
!151 = !{!"omnipotent char", !152, i64 0}
!152 = !{!"Simple C/C++ TBAA"}
!153 = !{!154, !150, i64 8}
!154 = !{!"_IO_FILE", !155, i64 0, !150, i64 8, !150, i64 16, !150, i64 24, !150, i64 32, !150, i64 40, !150, i64 48, !150, i64 56, !150, i64 64, !150, i64 72, !150, i64 80, !150, i64 88, !150, i64 96, !150, i64 104, !155, i64 112, !155, i64 116, !156, i64 120, !157, i64 128, !151, i64 130, !151, i64 131, !150, i64 136, !156, i64 144, !150, i64 152, !150, i64 160, !150, i64 168, !150, i64 176, !156, i64 184, !155, i64 192, !151, i64 196}
!155 = !{!"int", !151, i64 0}
!156 = !{!"long", !151, i64 0}
!157 = !{!"short", !151, i64 0}
!158 = !{!154, !150, i64 16}
!159 = !{!"branch_weights", i32 2000, i32 1}
!160 = !{!151, !151, i64 0}
!161 = !{!154, !150, i64 40}
!162 = !{!154, !150, i64 48}
!163 = !{!154, !155, i64 0}
!164 = !{!155, !155, i64 0}
!165 = distinct !{!165, !166, !167}
!166 = !{!"llvm.loop.mustprogress"}
!167 = !{!"llvm.loop.unroll.disable"}
!168 = !{!"function_entry_count", i64 142008}
!169 = !{!"branch_weights", i32 577716, i32 0}
!170 = !{!171, !150, i64 24}
!171 = !{!"function", !150, i64 0, !150, i64 8, !150, i64 16, !150, i64 24, !150, i64 32, !150, i64 40, !150, i64 48, !150, i64 56, !150, i64 64, !150, i64 72, !150, i64 80, !150, i64 88, !150, i64 96, !155, i64 104, !155, i64 108, !155, i64 112, !155, i64 116, !155, i64 120, !155, i64 124, !150, i64 128, !155, i64 136, !155, i64 137, !155, i64 138, !155, i64 138, !155, i64 138, !155, i64 138, !155, i64 138, !155, i64 138, !155, i64 138, !155, i64 139, !155, i64 139, !155, i64 139, !155, i64 139, !155, i64 139, !155, i64 139, !155, i64 139}
!172 = !{!173, !150, i64 0}
!173 = !{!"gimple_df", !150, i64 0, !150, i64 8, !150, i64 16, !150, i64 24, !174, i64 32, !174, i64 48, !150, i64 64, !150, i64 72, !150, i64 80, !150, i64 88, !155, i64 96, !175, i64 104}
!174 = !{!"pt_solution", !155, i64 0, !155, i64 0, !155, i64 0, !155, i64 0, !155, i64 0, !155, i64 0, !150, i64 8}
!175 = !{!"ssa_operands", !150, i64 0, !155, i64 8, !155, i64 12, !151, i64 16, !150, i64 24, !150, i64 32}
!176 = !{!177, !150, i64 1112}
!177 = !{!"gcc_target", !178, i64 0, !180, i64 368, !181, i64 664, !155, i64 744, !150, i64 752, !150, i64 760, !150, i64 768, !150, i64 776, !150, i64 784, !150, i64 792, !150, i64 800, !150, i64 808, !150, i64 816, !150, i64 824, !150, i64 832, !150, i64 840, !150, i64 848, !150, i64 856, !150, i64 864, !150, i64 872, !150, i64 880, !150, i64 888, !150, i64 896, !150, i64 904, !150, i64 912, !150, i64 920, !150, i64 928, !150, i64 936, !150, i64 944, !150, i64 952, !150, i64 960, !150, i64 968, !150, i64 976, !150, i64 984, !150, i64 992, !150, i64 1000, !150, i64 1008, !150, i64 1016, !150, i64 1024, !150, i64 1032, !150, i64 1040, !150, i64 1048, !150, i64 1056, !156, i64 1064, !156, i64 1072, !150, i64 1080, !150, i64 1088, !150, i64 1096, !150, i64 1104, !150, i64 1112, !150, i64 1120, !150, i64 1128, !150, i64 1136, !150, i64 1144, !150, i64 1152, !150, i64 1160, !150, i64 1168, !182, i64 1176, !150, i64 1232, !150, i64 1240, !150, i64 1248, !150, i64 1256, !150, i64 1264, !150, i64 1272, !150, i64 1280, !150, i64 1288, !150, i64 1296, !150, i64 1304, !150, i64 1312, !150, i64 1320, !150, i64 1328, !150, i64 1336, !150, i64 1344, !150, i64 1352, !150, i64 1360, !150, i64 1368, !150, i64 1376, !150, i64 1384, !150, i64 1392, !150, i64 1400, !150, i64 1408, !150, i64 1416, !150, i64 1424, !150, i64 1432, !150, i64 1440, !150, i64 1448, !150, i64 1456, !156, i64 1464, !183, i64 1472, !150, i64 1664, !150, i64 1672, !150, i64 1680, !150, i64 1688, !150, i64 1696, !150, i64 1704, !150, i64 1712, !150, i64 1720, !150, i64 1728, !150, i64 1736, !150, i64 1744, !150, i64 1752, !150, i64 1760, !150, i64 1768, !150, i64 1776, !184, i64 1784, !185, i64 1792, !186, i64 1896, !187, i64 1968, !150, i64 2016, !151, i64 2024, !151, i64 2025, !151, i64 2026, !151, i64 2027, !151, i64 2028, !151, i64 2029, !151, i64 2030, !151, i64 2031, !151, i64 2032, !151, i64 2033, !151, i64 2034, !151, i64 2035}
!178 = !{!"asm_out", !150, i64 0, !150, i64 8, !150, i64 16, !179, i64 24, !179, i64 56, !150, i64 88, !150, i64 96, !150, i64 104, !150, i64 112, !150, i64 120, !150, i64 128, !150, i64 136, !150, i64 144, !150, i64 152, !150, i64 160, !150, i64 168, !150, i64 176, !150, i64 184, !150, i64 192, !150, i64 200, !150, i64 208, !150, i64 216, !150, i64 224, !150, i64 232, !150, i64 240, !150, i64 248, !150, i64 256, !150, i64 264, !150, i64 272, !150, i64 280, !150, i64 288, !150, i64 296, !150, i64 304, !150, i64 312, !150, i64 320, !150, i64 328, !150, i64 336, !150, i64 344, !150, i64 352, !150, i64 360}
!179 = !{!"asm_int_op", !150, i64 0, !150, i64 8, !150, i64 16, !150, i64 24}
!180 = !{!"sched", !150, i64 0, !150, i64 8, !150, i64 16, !150, i64 24, !150, i64 32, !150, i64 40, !150, i64 48, !150, i64 56, !150, i64 64, !150, i64 72, !150, i64 80, !150, i64 88, !150, i64 96, !150, i64 104, !150, i64 112, !150, i64 120, !150, i64 128, !150, i64 136, !150, i64 144, !150, i64 152, !150, i64 160, !150, i64 168, !150, i64 176, !150, i64 184, !150, i64 192, !150, i64 200, !150, i64 208, !150, i64 216, !150, i64 224, !150, i64 232, !150, i64 240, !150, i64 248, !150, i64 256, !150, i64 264, !150, i64 272, !150, i64 280, !150, i64 288}
!181 = !{!"vectorize", !150, i64 0, !150, i64 8, !150, i64 16, !150, i64 24, !150, i64 32, !150, i64 40, !150, i64 48, !150, i64 56, !150, i64 64, !150, i64 72}
!182 = !{!"addr_space", !150, i64 0, !150, i64 8, !150, i64 16, !150, i64 24, !150, i64 32, !150, i64 40, !150, i64 48}
!183 = !{!"calls", !150, i64 0, !150, i64 8, !150, i64 16, !150, i64 24, !150, i64 32, !150, i64 40, !150, i64 48, !150, i64 56, !150, i64 64, !150, i64 72, !150, i64 80, !150, i64 88, !150, i64 96, !150, i64 104, !150, i64 112, !150, i64 120, !150, i64 128, !150, i64 136, !150, i64 144, !150, i64 152, !150, i64 160, !150, i64 168, !150, i64 176, !150, i64 184}
!184 = !{!"c", !150, i64 0}
!185 = !{!"cxx", !150, i64 0, !150, i64 8, !150, i64 16, !150, i64 24, !150, i64 32, !150, i64 40, !150, i64 48, !150, i64 56, !150, i64 64, !150, i64 72, !150, i64 80, !150, i64 88, !150, i64 96}
!186 = !{!"emutls", !150, i64 0, !150, i64 8, !150, i64 16, !150, i64 24, !150, i64 32, !150, i64 40, !150, i64 48, !150, i64 56, !151, i64 64, !151, i64 65}
!187 = !{!"target_option_hooks", !150, i64 0, !150, i64 8, !150, i64 16, !150, i64 24, !150, i64 32, !150, i64 40}
!188 = !{!"function_entry_count", i64 12}
!189 = !{!"branch_weights", i32 12, i32 0}
!190 = !{!"branch_weights", i32 0, i32 12}
!191 = !{!"function_entry_count", i64 138954}
!192 = !{!"branch_weights", i32 0, i32 138954}
!193 = !{!"branch_weights", i32 0, i32 74164, i32 64772, i32 0, i32 0, i32 18}
!194 = !{!"branch_weights", i32 0, i32 11536, i32 0, i32 62628, i32 0, i32 0}
!195 = !{!"branch_weights", i32 11536, i32 0}
!196 = !{!"branch_weights", i32 62628, i32 0}
!197 = !{!198, !155, i64 0}
!198 = !{!"prop_value_d", !155, i64 0, !150, i64 8}
!199 = !{!198, !150, i64 8}
!200 = !{!201, !155, i64 0}
!201 = !{!"VEC_constructor_elt_base", !155, i64 0, !155, i64 4, !151, i64 8}
!202 = !{!203, !150, i64 8}
!203 = !{!"constructor_elt_d", !150, i64 0, !150, i64 8}
!204 = !{!203, !150, i64 0}
!205 = distinct !{!205, !166, !167}
!206 = !{!"branch_weights", i32 1285, i32 61752, i32 859, i32 876}
!207 = !{!"branch_weights", i32 61752, i32 0}
!208 = !{!"branch_weights", i32 1735, i32 0}
!209 = distinct !{!209, !166, !167}
!210 = !{!"branch_weights", i32 18, i32 0}
!211 = !{!"branch_weights", i32 6, i32 12}
!212 = !{!"function_entry_count", i64 28928}
!213 = !{!"tree-ssa-ccp.c;get_value"}
!214 = !{!"branch_weights", i32 6, i32 3187417}
!215 = !{!"branch_weights", i32 458992, i32 2728425}
!216 = !{!"branch_weights", i32 3160, i32 116, i32 455716, i32 0}
!217 = !{!"branch_weights", i32 0, i32 116}
!218 = !{!"branch_weights", i32 116, i32 0}
!219 = !{!156, !156, i64 0}
!220 = !{!"branch_weights", i32 3160, i32 0}
!221 = !{!"branch_weights", i32 152571, i32 306305}
!222 = !{!"branch_weights", i32 0, i32 306305}
!223 = !{!"branch_weights", i32 217854, i32 88451}
!224 = !{!"branch_weights", i32 0, i32 217854}
!225 = !{!"branch_weights", i32 217854, i32 0}
!226 = !{i64 0, i64 4, !164, i64 8, i64 8, !149}
!227 = !{i64 0, i64 8, !149}
!228 = !{!"branch_weights", i32 87918, i32 3559048}
!229 = !{!"branch_weights", i32 0, i32 87918}
!230 = !{i64 0, i64 4, !164, i64 0, i64 4, !164, i64 0, i64 4, !164, i64 0, i64 4, !164, i64 0, i64 4, !164, i64 0, i64 4, !164, i64 8, i64 24, !160}
!231 = !{!232, !151, i64 49}
!232 = !{!"real_format", !150, i64 0, !150, i64 8, !155, i64 16, !155, i64 20, !155, i64 24, !155, i64 28, !155, i64 32, !155, i64 36, !155, i64 40, !151, i64 44, !151, i64 45, !151, i64 46, !151, i64 47, !151, i64 48, !151, i64 49, !151, i64 50, !151, i64 51}
!233 = !{!232, !151, i64 46}
!234 = !{!"function_entry_count", i64 116}
!235 = !{!"tree-ssa-ccp.c;gate_ccp"}
!236 = !{!"tree-ssa-ccp.c;do_ssa_ccp"}
!237 = !{!173, !150, i64 16}
!238 = !{!239, !155, i64 0}
!239 = !{!"VEC_tree_base", !155, i64 0, !155, i64 4, !151, i64 8}
!240 = !{!171, !150, i64 8}
!241 = !{!242, !150, i64 0}
!242 = !{!"control_flow_graph", !150, i64 0, !150, i64 8, !150, i64 16, !155, i64 24, !155, i64 28, !155, i64 32, !150, i64 40, !155, i64 48, !151, i64 52, !151, i64 60, !155, i64 68, !155, i64 72}
!243 = !{!244, !150, i64 56}
!244 = !{!"basic_block_def", !150, i64 0, !150, i64 8, !150, i64 16, !150, i64 24, !151, i64 32, !150, i64 48, !150, i64 56, !151, i64 64, !156, i64 72, !155, i64 80, !155, i64 84, !155, i64 88, !155, i64 92, !155, i64 96}
!245 = !{!242, !150, i64 8}
!246 = !{!"branch_weights", i32 1, i32 231}
!247 = !{!"branch_weights", i32 231, i32 982381}
!248 = distinct !{!248, !166, !167}
!249 = !{!244, !155, i64 96}
!250 = !{!251}
!251 = distinct !{!251, !252, !"gsi_start_bb: argument 0"}
!252 = distinct !{!252, !"gsi_start_bb"}
!253 = !{!"branch_weights", i32 491306, i32 0}
!254 = !{!"branch_weights", i32 0, i32 491306}
!255 = !{!256, !150, i64 0}
!256 = !{!"gimple_bb_info", !150, i64 0, !150, i64 8}
!257 = !{!258, !150, i64 0}
!258 = !{!"gimple_seq_d", !150, i64 0, !150, i64 8, !150, i64 16}
!259 = !{!"branch_weights", i32 1, i32 491305}
!260 = !{!261, !150, i64 0}
!261 = !{!"gimple_seq_node_d", !150, i64 0, !150, i64 8, !150, i64 16}
!262 = !{!"branch_weights", i32 671823, i32 428356}
!263 = !{!"branch_weights", i32 671823, i32 0}
!264 = !{!"branch_weights", i32 207201, i32 464622}
!265 = !{!"branch_weights", i32 0, i32 207201}
!266 = !{!"branch_weights", i32 6558, i32 200643}
!267 = !{!"branch_weights", i32 0, i32 200643}
!268 = !{!"branch_weights", i32 200643, i32 0}
!269 = !{!"branch_weights", i32 8825, i32 455797}
!270 = !{!"branch_weights", i32 455716, i32 81}
!271 = !{!"branch_weights", i32 8825, i32 455716, i32 0, i32 0, i32 0}
!272 = !{!"branch_weights", i32 884072, i32 216107}
!273 = !{!"branch_weights", i32 0, i32 216107}
!274 = !{!"branch_weights", i32 8825, i32 207282}
!275 = !{!276, !150, i64 8}
!276 = !{!"def_optype_d", !150, i64 0, !150, i64 8}
!277 = !{!276, !150, i64 0}
!278 = !{!"branch_weights", i32 1, i32 216106}
!279 = !{!"branch_weights", i32 207282, i32 200643}
!280 = !{!"branch_weights", i32 191819, i32 216106}
!281 = distinct !{!281, !166, !167}
!282 = !{!261, !150, i64 16}
!283 = !{!"branch_weights", i32 491305, i32 608874}
!284 = distinct !{!284, !166, !167}
!285 = distinct !{!285, !166, !167}
!286 = !{i64 0, i64 8, !149, i64 8, i64 8, !149, i64 16, i64 8, !149}
!287 = !{!"branch_weights", i32 357395, i32 133911}
!288 = !{!"branch_weights", i32 130751, i32 3160}
!289 = !{!"branch_weights", i32 133911, i32 0}
!290 = distinct !{!290, !166, !167}
!291 = !{!"branch_weights", i32 0, i32 1157628}
!292 = !{!"branch_weights", i32 1157512, i32 116}
!293 = !{!"branch_weights", i32 0, i32 1157512}
!294 = distinct !{!294, !166, !167}
!295 = !{!"branch_weights", i32 76, i32 40}
!296 = !{!"function_entry_count", i64 330}
!297 = !{!"branch_weights", i32 123, i32 207}
!298 = !{!"branch_weights", i32 122, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0}
!299 = !{!"branch_weights", i32 0, i32 1}
!300 = !{!"branch_weights", i32 1, i32 0}
!301 = !{!"branch_weights", i32 123, i32 0}
!302 = !{!"branch_weights", i32 122, i32 1}
!303 = !{!"function_entry_count", i64 123}
!304 = !{!"tree-ssa-ccp.c;maybe_fold_offset_to_component_ref"}
!305 = !{!"branch_weights", i32 1, i32 122}
!306 = !{!"branch_weights", i32 3, i32 0}
!307 = !{!"branch_weights", i32 0, i32 3}
!308 = !{!"branch_weights", i32 1, i32 2}
!309 = !{!"branch_weights", i32 1, i32 0, i32 2}
!310 = distinct !{!310, !166, !167}
!311 = !{!"tree-ssa-ccp.c;maybe_fold_offset_to_array_ref"}
!312 = !{!"branch_weights", i32 0, i32 123}
!313 = !{!"branch_weights", i32 0, i32 123, i32 0}
!314 = !{!"branch_weights", i32 122, i32 0, i32 1}
!315 = !{!"branch_weights", i32 0, i32 1, i32 0}
!316 = !{!"function_entry_count", i64 79929}
!317 = !{i8 0, i8 2}
!318 = !{!"function_entry_count", i64 81473}
!319 = !{!"tree-ssa-ccp.c;fold_stmt_1"}
!320 = !{!"branch_weights", i32 85, i32 72922, i32 8146, i32 320, i32 0}
!321 = !{!"branch_weights", i32 1, i32 319}
!322 = !{!"branch_weights", i32 44358, i32 28564}
!323 = !{!"branch_weights", i32 0, i32 44358}
!324 = !{!"branch_weights", i32 0, i32 44358, i32 17, i32 28547, i32 0}
!325 = !{!"branch_weights", i32 44358, i32 0, i32 0}
!326 = !{!"branch_weights", i32 193, i32 44165}
!327 = !{!"branch_weights", i32 44135, i32 30, i32 0}
!328 = !{!"branch_weights", i32 30, i32 0}
!329 = distinct !{!329, !166, !167}
!330 = !{!"branch_weights", i32 737, i32 43398}
!331 = !{!"branch_weights", i32 43428, i32 0}
!332 = !{!"branch_weights", i32 0, i32 17}
!333 = !{!"branch_weights", i32 17, i32 0}
!334 = !{!"branch_weights", i32 0, i32 17, i32 0}
!335 = !{!"branch_weights", i32 0, i32 28547, i32 0, i32 0}
!336 = !{!"branch_weights", i32 0, i32 28547}
!337 = !{!"branch_weights", i32 12, i32 28535}
!338 = !{!"branch_weights", i32 28547, i32 0}
!339 = !{!"branch_weights", i32 25548, i32 2999}
!340 = !{!"branch_weights", i32 0, i32 2999}
!341 = !{!"branch_weights", i32 0, i32 72922}
!342 = !{!"branch_weights", i32 69923, i32 2999}
!343 = !{!"branch_weights", i32 2963, i32 36}
!344 = !{!"branch_weights", i32 36, i32 0}
!345 = !{!"branch_weights", i32 0, i32 8146}
!346 = !{!"branch_weights", i32 7459, i32 687}
!347 = !{!"branch_weights", i32 0, i32 687}
!348 = !{!"branch_weights", i32 0, i32 462}
!349 = !{!"branch_weights", i32 143, i32 319}
!350 = distinct !{!350, !166, !167}
!351 = !{!"branch_weights", i32 320, i32 0}
!352 = !{!"branch_weights", i32 0, i32 320}
!353 = distinct !{!353, !166, !167}
!354 = distinct !{!354, !166, !167}
!355 = !{!"branch_weights", i32 8231, i32 72922, i32 320}
!356 = !{!"branch_weights", i32 8238, i32 73235}
!357 = !{!"branch_weights", i32 0, i32 73235}
!358 = !{!"branch_weights", i32 39, i32 73196}
!359 = !{!"branch_weights", i32 39, i32 0}
!360 = !{!"function_entry_count", i64 1544}
!361 = !{!"branch_weights", i32 1544, i32 0}
!362 = !{!"function_entry_count", i64 38}
!363 = !{!"tree-ssa-ccp.c;execute_fold_all_builtins"}
!364 = !{!"branch_weights", i32 1, i32 151}
!365 = !{!366}
!366 = distinct !{!366, !367, !"gsi_start_bb: argument 0"}
!367 = distinct !{!367, !"gsi_start_bb"}
!368 = !{!"branch_weights", i32 154060, i32 0}
!369 = !{!"branch_weights", i32 0, i32 154060}
!370 = !{i64 0, i64 8, !149, i64 8, i64 8, !149}
!371 = !{!"branch_weights", i32 1, i32 154059}
!372 = !{!"branch_weights", i32 68958, i32 269151}
!373 = !{!374, !150, i64 0}
!374 = !{!"", !150, i64 0, !150, i64 8, !150, i64 16}
!375 = distinct !{!375, !166, !167}
!376 = !{!"branch_weights", i32 0, i32 68958}
!377 = !{!"branch_weights", i32 68958, i32 0}
!378 = distinct !{!378, !166, !167}
!379 = !{!244, !150, i64 8}
!380 = !{!381, !155, i64 0}
!381 = !{!"VEC_edge_base", !155, i64 0, !155, i64 4, !151, i64 8}
!382 = !{!383, !150, i64 8}
!383 = !{!"edge_def", !150, i64 0, !150, i64 8, !151, i64 16, !150, i64 24, !150, i64 32, !155, i64 40, !155, i64 44, !155, i64 48, !155, i64 52, !156, i64 56}
!384 = !{!385, !150, i64 8}
!385 = !{!"ssa_use_operand_d", !150, i64 0, !150, i64 8, !151, i64 16, !150, i64 24}
!386 = !{!177, !150, i64 1328}
!387 = !{!"branch_weights", i32 154059, i32 184050}
!388 = !{!"branch_weights", i32 151, i32 616089}
!389 = distinct !{!389, !166, !167}
!390 = !{!"branch_weights", i32 38, i32 0}
!391 = !{!"function_entry_count", i64 884072}
!392 = !{!"tree-ssa-ccp.c;ccp_visit_stmt"}
!393 = !{!"branch_weights", i32 884072, i32 0}
!394 = !{!"branch_weights", i32 116, i32 455716, i32 187, i32 427935, i32 118}
!395 = !{i32 0, i32 3}
!396 = !{!"branch_weights", i32 0, i32 187}
!397 = !{!"branch_weights", i32 187, i32 0}
!398 = !{!"branch_weights", i32 0, i32 0, i32 455621, i32 118, i32 855870}
!399 = !{!"branch_weights", i32 1311609, i32 0}
!400 = !{!"branch_weights", i32 0, i32 1311609}
!401 = !{!"branch_weights", i32 -2067193003, i32 1020983853}
!402 = !{!"branch_weights", i32 149436, i32 262762}
!403 = !{!404, !150, i64 0}
!404 = !{!"use_optype_d", !150, i64 0, !385, i64 8}
!405 = !{!"branch_weights", i32 305444, i32 1006165}
!406 = !{!385, !150, i64 24}
!407 = !{!"branch_weights", i32 274408, i32 1037201}
!408 = !{}
!409 = !{!"branch_weights", i32 0, i32 1037201}
!410 = !{!"branch_weights", i32 22, i32 1037179}
!411 = !{!"branch_weights", i32 1006165, i32 31036}
!412 = distinct !{!412, !166, !167}
!413 = !{!"branch_weights", i32 1311608, i32 1}
!414 = !{!"branch_weights", i32 0, i32 4051295}
!415 = !{!"branch_weights", i32 1711740, i32 2339555}
!416 = !{!"branch_weights", i32 1036429, i32 1303126}
!417 = !{!"branch_weights", i32 290530, i32 1012596}
!418 = !{!"branch_weights", i32 2739687, i32 1311608}
!419 = distinct !{!419, !166, !167}
!420 = !{!"branch_weights", i32 298995, i32 1012614}
!421 = !{!"branch_weights", i32 118, i32 298877}
!422 = !{!"branch_weights", i32 36115, i32 262762}
!423 = !{!"branch_weights", i32 0, i32 1275376, i32 36233}
!424 = !{!"branch_weights", i32 0, i32 36115, i32 118, i32 0, i32 0}
!425 = !{!"branch_weights", i32 25, i32 36090}
!426 = !{!"branch_weights", i32 0, i32 25}
!427 = !{!"branch_weights", i32 0, i32 118}
!428 = !{!"branch_weights", i32 1199973, i32 111636}
!429 = !{!"branch_weights", i32 428051, i32 2}
!430 = !{!"branch_weights", i32 303, i32 0}
!431 = !{!"branch_weights", i32 0, i32 303}
!432 = distinct !{!432, !166, !167}
!433 = !{!"function_entry_count", i64 3833}
!434 = !{!"tree-ssa-ccp.c;ccp_visit_phi_node"}
!435 = !{!"branch_weights", i32 3833, i32 0}
!436 = !{!"branch_weights", i32 0, i32 0, i32 190, i32 3643}
!437 = !{!"branch_weights", i32 1, i32 672}
!438 = !{!"branch_weights", i32 142144, i32 672}
!439 = distinct !{!439, !166, !167}
!440 = !{!244, !150, i64 0}
!441 = !{!"branch_weights", i32 142816, i32 0}
!442 = !{!383, !150, i64 0}
!443 = !{!244, !155, i64 80}
!444 = !{!383, !155, i64 48}
!445 = !{!"branch_weights", i32 138976, i32 3840}
!446 = !{!"branch_weights", i32 0, i32 3840}
!447 = !{!448, !150, i64 32}
!448 = !{!"phi_arg_d", !385, i64 0, !150, i64 32, !155, i64 40}
!449 = !{!"branch_weights", i32 3487, i32 353}
!450 = !{!"branch_weights", i32 3160, i32 680}
!451 = !{!"branch_weights", i32 0, i32 680}
!452 = !{!"branch_weights", i32 42, i32 638}
!453 = !{!"branch_weights", i32 638, i32 0}
!454 = !{!"branch_weights", i32 360, i32 278}
!455 = !{!"branch_weights", i32 3840, i32 0}
!456 = !{!"branch_weights", i32 139656, i32 3160}
!457 = !{!"branch_weights", i32 523, i32 3310}
!458 = !{!"branch_weights", i32 3160, i32 150}
!459 = !{!"function_entry_count", i64 455716}
!460 = !{!"tree-ssa-ccp.c;visit_assignment"}
!461 = !{!"branch_weights", i32 0, i32 455716}
!462 = !{!"branch_weights", i32 412198, i32 43518}
!463 = !{!"branch_weights", i32 0, i32 43518}
!464 = !{!"branch_weights", i32 95, i32 43423}
!465 = !{!"branch_weights", i32 1268182, i32 43427}
!466 = !{!"branch_weights", i32 455716, i32 0}
!467 = !{!"branch_weights", i32 459026, i32 523}
!468 = !{!"branch_weights", i32 523, i32 0}
!469 = !{!"branch_weights", i32 40, i32 483}
!470 = !{!"branch_weights", i32 0, i32 40}
!471 = !{!"branch_weights", i32 523, i32 459026}
!472 = !{!"branch_weights", i32 459026, i32 0}
!473 = !{!"branch_weights", i32 0, i32 459026}
!474 = !{!"branch_weights", i32 412291, i32 43425}
!475 = !{!"tree-ssa-ccp.c;set_lattice_value"}
!476 = !{!"function_entry_count", i64 43423}
!477 = !{!"tree-ssa-ccp.c;evaluate_stmt"}
!478 = !{!"function_entry_count", i64 1275376}
!479 = !{!"tree-ssa-ccp.c;ccp_fold"}
!480 = !{!"branch_weights", i32 0, i32 419506, i32 0, i32 855870, i32 0}
!481 = !{!"branch_weights", i32 306185, i32 113321}
!482 = !{!"branch_weights", i32 0, i32 306185}
!483 = !{!"branch_weights", i32 0, i32 306185, i32 0, i32 113321}
!484 = !{!"branch_weights", i32 306185, i32 0, i32 0, i32 0}
!485 = distinct !{!485, !166, !167}
!486 = distinct !{!486, !166, !167}
!487 = !{!"branch_weights", i32 43423, i32 44908, i32 217854}
!488 = !{!"branch_weights", i32 44908, i32 0, i32 0, i32 0}
!489 = !{!"branch_weights", i32 12, i32 44896}
!490 = !{!"branch_weights", i32 0, i32 113321}
!491 = !{!"branch_weights", i32 113321, i32 0}
!492 = !{!"branch_weights", i32 91856, i32 21465}
!493 = !{!"branch_weights", i32 18, i32 91838}
!494 = !{!"branch_weights", i32 21483, i32 91838}
!495 = !{!"branch_weights", i32 0, i32 21483}
!496 = !{!"branch_weights", i32 0, i32 113321, i32 0, i32 0}
!497 = !{!"branch_weights", i32 0, i32 0, i32 113372, i32 0}
!498 = !{!"branch_weights", i32 0, i32 113372}
!499 = !{!"branch_weights", i32 0, i32 419506}
!500 = distinct !{!500, !166, !167}
!501 = !{!"branch_weights", i32 0, i32 855870}
!502 = !{!"branch_weights", i32 855870, i32 0}
!503 = !{!"branch_weights", i32 4, i32 855866}
!504 = !{!"function_entry_count", i64 51}
!505 = !{!"tree-ssa-ccp.c;gimple_expr_type"}
!506 = !{!"function_entry_count", i64 1099843}
!507 = !{!"tree-ssa-ccp.c;ccp_fold_stmt"}
!508 = !{!"branch_weights", i32 9059, i32 427935, i32 207388, i32 455461}
!509 = !{!"branch_weights", i32 427933, i32 2}
!510 = !{!"branch_weights", i32 2, i32 0}
!511 = !{!"branch_weights", i32 0, i32 2}
!512 = !{!"branch_weights", i32 0, i32 207388}
!513 = !{!"branch_weights", i32 6745, i32 200643}
!514 = !{!"branch_weights", i32 245442, i32 207388}
!515 = !{!"branch_weights", i32 207387, i32 1}
!516 = !{!"branch_weights", i32 0, i32 245442}
!517 = !{!"branch_weights", i32 207400, i32 38042}
!518 = !{!"branch_weights", i32 0, i32 207400}
!519 = !{!"branch_weights", i32 38055, i32 207387}
!520 = distinct !{!520, !166, !167}
!521 = !{!"branch_weights", i32 0, i32 455461}
!522 = !{!"branch_weights", i32 149404, i32 306057}
!523 = !{!"branch_weights", i32 305976, i32 81}
!524 = !{!"branch_weights", i32 0, i32 305976}
!525 = !{!"branch_weights", i32 43272, i32 262704}
!526 = !{!"branch_weights", i32 0, i32 43272}
!527 = !{!"function_entry_count", i64 262}
!528 = !{!"tree-ssa-ccp.c;maybe_fold_reference"}
!529 = !{!"branch_weights", i32 201, i32 61}
!530 = !{!"branch_weights", i32 61, i32 0}
!531 = !{!"branch_weights", i32 0, i32 0, i32 177, i32 85, i32 0, i32 0, i32 0, i32 0}
!532 = !{!"branch_weights", i32 0, i32 262}
!533 = !{!"branch_weights", i32 262, i32 0, i32 616, i32 253, i32 0, i32 0, i32 0, i32 0}
!534 = !{!"branch_weights", i32 207, i32 55}
!535 = distinct !{!535, !166, !167}
!536 = !{!"branch_weights", i32 207, i32 0}
!537 = !{!"branch_weights", i32 207, i32 0, i32 0, i32 0}
!538 = distinct !{!538, !166, !167}
!539 = !{!"branch_weights", i32 0, i32 207}
!540 = !{!"branch_weights", i32 0, i32 207, i32 0}
!541 = !{!"branch_weights", i32 69, i32 138}
!542 = !{!"branch_weights", i32 0, i32 55}
!543 = !{!"branch_weights", i32 55, i32 0}
!544 = !{!545}
!545 = distinct !{!545, !546, !"gsi_start: argument 0"}
!546 = distinct !{!546, !"gsi_start"}
!547 = distinct !{!547, !166, !167}
!548 = distinct !{!548, !166, !167}
