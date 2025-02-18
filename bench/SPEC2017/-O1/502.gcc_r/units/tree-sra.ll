; ModuleID = 'tree-sra.c'
source_filename = "tree-sra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.access = type { i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.ao_ref_s = type { ptr, ptr, i64, i64, i64, i32, i32 }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_access_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.VEC_ipa_parm_adjustment_t_base = type { i32, i32, [1 x %struct.ipa_parm_adjustment] }
%struct.ipa_parm_adjustment = type { ptr, ptr, ptr, ptr, ptr, i64, i32, i8 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.processor_costs = type { i32, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, [3 x i32], [3 x i32], i32, [2 x i32], [2 x i32], i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.stringop_algs], [2 x %struct.stringop_algs], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stringop_algs = type { i32, [4 x %struct.stringop_strategy] }
%struct.stringop_strategy = type { i32, i32 }
%struct.assign_link = type { ptr, ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str = private unnamed_addr constant [5 x i8] c"esra\00", align 1
@pass_sra_early = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_intra_sra, ptr @early_intra_sra, ptr null, ptr null, i32 0, i32 63, i32 40, i32 0, i32 0, i32 0, i32 2055 } }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"sra\00", align 1
@pass_sra = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.1, ptr @gate_intra_sra, ptr @late_intra_sra, ptr null, ptr null, i32 0, i32 63, i32 40, i32 0, i32 0, i32 2097152, i32 2055 } }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"eipa_sra\00", align 1
@pass_early_ipa_sra = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @ipa_early_sra_gate, ptr @ipa_early_sra, ptr null, ptr null, i32 0, i32 20, i32 0, i32 0, i32 0, i32 0, i32 129 } }, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"tree-sra.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_tree_sra = external local_unnamed_addr global i32, align 4
@sra_mode = internal unnamed_addr global i32 0, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"Scalar replacements created\00", align 1
@sra_stats = internal unnamed_addr global %struct.anon zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Modified expressions\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Subtree copy stmts\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Subreplacement stmts\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Deleted stmts\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Separate LHS and RHS handling\00", align 1
@candidate_bitmap = internal unnamed_addr global ptr null, align 8
@should_scalarize_away_bitmap = internal unnamed_addr global ptr null, align 8
@cannot_scalarize_away_bitmap = internal unnamed_addr global ptr null, align 8
@name_obstack = internal global %struct.obstack zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"SRA accesses\00", align 1
@access_pool = internal unnamed_addr global ptr null, align 8
@.str.12 = private unnamed_addr constant [10 x i8] c"SRA links\00", align 1
@link_pool = internal unnamed_addr global ptr null, align 8
@base_access_vec = internal unnamed_addr global ptr null, align 8
@encountered_apply_args = internal unnamed_addr global i1 false, align 1
@encountered_recursive_call = internal unnamed_addr global i1 false, align 1
@encountered_unchangable_recursive_call = internal unnamed_addr global i1 false, align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"Candidate (%d): \00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@final_bbs = internal unnamed_addr global ptr null, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@func_param_count = internal unnamed_addr global i32 0, align 4
@.str.16 = private unnamed_addr constant [24 x i8] c"LHS of a throwing stmt.\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"RHS of a throwing stmt.\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"! Disqualifying \00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c" - %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Non-scalarizable GIMPLE_ASM operand.\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"V_C_E under a different handled component.\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"Encountered a variable sized access.\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"Encountered an acces not aligned to a byte.\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"Encountered an unconstrained access.\00", align 1
@bb_dereferences = internal unnamed_addr global ptr null, align 8
@ix86_cost = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [35 x i8] c"Will attempt to totally scalarize \00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c" (UID: %u): \0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"No or inhibitingly overlapping accesses.\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"\0AAccess trees for \00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"No scalar replacements to be created.\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Scalarized aggregates\00", align 1
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@work_queue_head = internal unnamed_addr global ptr null, align 8
@.str.31 = private unnamed_addr constant [9 x i8] c"Marking \00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c" offset: %u, size: %u: \00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c" to be replaced.\0A\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"* \00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"access { \00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"base = (%d)'\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"', offset = %ld\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c", size = %ld\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c", expr = \00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c", type = \00", align 1
@.str.41 = private unnamed_addr constant [264 x i8] c", grp_write = %d, total_scalarization = %d, grp_read = %d, grp_hint = %d, grp_covered = %d, grp_unscalarizable_region = %d, grp_unscalarized_data = %d, grp_partial_lhs = %d, grp_to_be_replaced = %d, grp_maybe_modified = %d, grp_not_necessarilly_dereferenced = %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"SR\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"Created a replacement for \00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"D%u\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@flag_ipa_sra = external local_unnamed_addr global i32, align 4
@.str.49 = private unnamed_addr constant [37 x i8] c"Function has no IPA-SRA candidates.\0A\00", align 1
@.str.50 = private unnamed_addr constant [58 x i8] c"There are callers with insufficient number of arguments.\0A\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"Function calls  __builtin_apply_args().\0A\00", align 1
@.str.52 = private unnamed_addr constant [62 x i8] c"Function calls itself with insufficient number of arguments.\0A\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"Unused parameters deleted\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"Scalar parameters converted to by-value\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"Aggregate parameters broken up\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"Aggregate parameter components created\00", align 1
@.str.57 = private unnamed_addr constant [46 x i8] c"Function not local to this compilation unit.\0A\00", align 1
@.str.58 = private unnamed_addr constant [31 x i8] c"Function is a virtual method.\0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.59 = private unnamed_addr constant [42 x i8] c"Function too big to be made truly local.\0A\00", align 1
@.str.60 = private unnamed_addr constant [51 x i8] c"Function has no callers in this compilation unit.\0A\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"Function uses stdarg. \0A\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.62 = private unnamed_addr constant [34 x i8] c"NOT proceeding to change params.\0A\00", align 1
@no_accesses_representant = internal global %struct.access zeroinitializer, align 8
@.str.63 = private unnamed_addr constant [39 x i8] c"Dereference table before propagation:\0A\00", align 1
@.str.64 = private unnamed_addr constant [38 x i8] c"Dereference table after propagation:\0A\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"%4i  %i   \00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c" %4ld\00", align 1
@.str.67 = private unnamed_addr constant [34 x i8] c"Evaluating PARAM group sizes for \00", align 1
@.str.68 = private unnamed_addr constant [42 x i8] c"    ....will be split into %i components\0A\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"ISRA\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"About to replace expr \00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c" with \00", align 1
@.str.72 = private unnamed_addr constant [42 x i8] c"replacing an SSA name of a removed param \00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"ISR\00", align 1
@.str.74 = private unnamed_addr constant [36 x i8] c"Adjusting call (%i -> %i) %s -> %s\0A\00", align 1
@.str.75 = private unnamed_addr constant [25 x i8] c"Adjusting recursive call\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !67 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !68
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !67 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !68
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !67 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !78

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !72
  %11 = load i8, ptr %3, align 1, !tbaa !79
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !67 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !78

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !72
  %11 = load i8, ptr %3, align 1, !tbaa !79
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !67 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !68
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !78

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #22
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !72
  %11 = load i8, ptr %3, align 1, !tbaa !79
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !67 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !68
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !67 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !78

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !80
  store i8 %12, ptr %4, align 1, !tbaa !79
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !67 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !78

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !80
  store i8 %12, ptr %4, align 1, !tbaa !79
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !67 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !68
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !78

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !80
  store i8 %12, ptr %4, align 1, !tbaa !79
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !67 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #22
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !67 {
  %2 = load i32, ptr %0, align 8, !tbaa !82
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !67 {
  %2 = load i32, ptr %0, align 8, !tbaa !82
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !67 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !83
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !67 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !83
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !67 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !67 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !67 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !67 {
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
  br i1 %23, label %7, label %24, !llvm.loop !84

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !67 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @build_ref_for_offset(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #9 !prof !67 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 8, !tbaa !68
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !83
  %13 = add i32 %12, -4
  %14 = icmp ult i32 %13, 7
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !79
  br label %18

18:                                               ; preds = %5, %15, %7
  %19 = phi i32 [ %17, %15 ], [ 0, %7 ], [ 0, %5 ]
  br i1 %6, label %23, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %0, align 8, !tbaa !68
  %22 = tail call ptr @unshare_expr(ptr noundef %21) #22
  store ptr %22, ptr %0, align 8, !tbaa !68
  br label %23

23:                                               ; preds = %20, %18
  %24 = icmp eq i8 %4, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %23
  %26 = load i64, ptr %1, align 8
  %27 = trunc i64 %26 to i16
  switch i16 %27, label %34 [
    i16 10, label %28
    i16 12, label %28
  ]

28:                                               ; preds = %25, %25
  %29 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !79
  br i1 %6, label %34, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %0, align 8, !tbaa !68
  %33 = tail call ptr @fold_build1_stat_loc(i32 noundef %19, i32 noundef 47, ptr noundef %30, ptr noundef %32) #22
  store ptr %33, ptr %0, align 8, !tbaa !68
  br label %34

34:                                               ; preds = %28, %25, %31, %23
  %35 = phi ptr [ %30, %31 ], [ %1, %23 ], [ %1, %25 ], [ %30, %28 ]
  %36 = tail call fastcc zeroext i8 @build_ref_for_offset_1(ptr noundef %0, ptr noundef %35, i64 noundef %2, ptr noundef %3)
  ret i8 %36
}

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @build_ref_for_offset_1(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #9 !prof !67 {
  %5 = alloca ptr, align 8
  %6 = icmp ne ptr %3, null
  %7 = icmp eq ptr %0, null
  %8 = xor i1 %6, true
  br label %9

9:                                                ; preds = %122, %4
  %10 = phi i64 [ %2, %4 ], [ %123, %122 ]
  %11 = phi ptr [ %1, %4 ], [ %125, %122 ]
  %12 = phi i8 [ undef, %4 ], [ %126, %122 ]
  %13 = icmp eq i64 %10, 0
  %14 = and i1 %6, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = call zeroext i8 @types_compatible_p(ptr noundef nonnull %3, ptr noundef %11) #22
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %122

18:                                               ; preds = %15, %9
  %19 = load i64, ptr %11, align 8
  %20 = trunc i64 %19 to i16
  switch i16 %20, label %119 [
    i16 17, label %21
    i16 18, label %21
    i16 16, label %21
    i16 15, label %82
  ]

21:                                               ; preds = %18, %18, %18
  %22 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  %24 = icmp eq ptr %23, null
  br i1 %24, label %122, label %25

25:                                               ; preds = %21, %78
  %26 = phi ptr [ %80, %78 ], [ %23, %21 ]
  %27 = phi i8 [ %77, %78 ], [ %12, %21 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %28 = load i64, ptr %26, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 31
  br i1 %30, label %31, label %75

31:                                               ; preds = %25
  %32 = call i64 @int_bit_position(ptr noundef nonnull %26) #22
  %33 = load i64, ptr %11, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 16
  %36 = icmp eq i64 %32, 0
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1405, ptr noundef nonnull @.str.4) #22
  br label %39

39:                                               ; preds = %31, %38
  %40 = getelementptr inbounds %struct.tree_decl_common, ptr %26, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !79
  %42 = icmp eq ptr %41, null
  br i1 %42, label %75, label %43

43:                                               ; preds = %39
  %44 = call i32 @host_integerp(ptr noundef nonnull %41, i32 noundef 1) #22
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %75, label %46

46:                                               ; preds = %43
  %47 = call i64 @tree_low_cst(ptr noundef nonnull %41, i32 noundef 1) #22
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = icmp eq i64 %32, %10
  br i1 %50, label %56, label %75

51:                                               ; preds = %46
  %52 = icmp sle i64 %32, %10
  %53 = add nsw i64 %47, %32
  %54 = icmp sgt i64 %53, %10
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %75

56:                                               ; preds = %51, %49
  br i1 %7, label %62, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !79
  %60 = load ptr, ptr %0, align 8, !tbaa !68
  %61 = call ptr @build3_stat(i32 noundef 41, ptr noundef %59, ptr noundef %60, ptr noundef nonnull %26, ptr noundef null) #22
  store ptr %61, ptr %5, align 8, !tbaa !68
  br label %62

62:                                               ; preds = %56, %57
  %63 = phi ptr [ %5, %57 ], [ null, %56 ]
  %64 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !79
  %66 = sub nsw i64 %10, %32
  %67 = call fastcc zeroext i8 @build_ref_for_offset_1(ptr noundef %63, ptr noundef %65, i64 noundef %66, ptr noundef %3)
  %68 = icmp eq i8 %67, 0
  %69 = or i1 %7, %68
  %70 = xor i1 %68, true
  %71 = zext i1 %70 to i32
  %72 = select i1 %68, i8 %27, i8 1
  br i1 %69, label %75, label %73

73:                                               ; preds = %62
  %74 = load ptr, ptr %5, align 8, !tbaa !68
  store ptr %74, ptr %0, align 8, !tbaa !68
  br label %75

75:                                               ; preds = %49, %62, %73, %51, %39, %43, %25
  %76 = phi i32 [ 7, %25 ], [ 7, %43 ], [ 7, %39 ], [ 7, %51 ], [ 1, %73 ], [ %71, %62 ], [ 7, %49 ]
  %77 = phi i8 [ %27, %25 ], [ %27, %43 ], [ %27, %39 ], [ %27, %51 ], [ 1, %73 ], [ %72, %62 ], [ %27, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  switch i32 %76, label %122 [
    i32 0, label %78
    i32 7, label %78
  ]

78:                                               ; preds = %75, %75
  %79 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !79
  %81 = icmp eq ptr %80, null
  br i1 %81, label %122, label %25, !llvm.loop !87

82:                                               ; preds = %18
  %83 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !79
  %85 = getelementptr inbounds %struct.tree_type, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !79
  %87 = icmp eq ptr %86, null
  br i1 %87, label %122, label %88

88:                                               ; preds = %82
  %89 = call i32 @host_integerp(ptr noundef nonnull %86, i32 noundef 1) #22
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %122, label %91

91:                                               ; preds = %88
  %92 = call i64 @tree_low_cst(ptr noundef nonnull %86, i32 noundef 1) #22
  %93 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !79
  %95 = getelementptr inbounds %struct.tree_type, ptr %94, i64 0, i32 13
  %96 = load ptr, ptr %95, align 8, !tbaa !79
  %97 = load i64, ptr %96, align 8
  %98 = and i64 %97, 65535
  %99 = icmp ne i64 %98, 23
  %100 = icmp eq i64 %92, 0
  %101 = select i1 %99, i1 true, i1 %100
  br i1 %101, label %122, label %102

102:                                              ; preds = %91
  %103 = icmp eq ptr %0, null
  br i1 %103, label %116, label %104

104:                                              ; preds = %102
  %105 = sdiv i64 %10, %92
  %106 = call ptr @build_int_cst(ptr noundef %94, i64 noundef %105) #22
  %107 = call i32 @integer_zerop(ptr noundef nonnull %96) #22
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = call ptr @int_const_binop(i32 noundef 63, ptr noundef %106, ptr noundef nonnull %96, i32 noundef 0) #22
  br label %111

111:                                              ; preds = %109, %104
  %112 = phi ptr [ %106, %104 ], [ %110, %109 ]
  %113 = load ptr, ptr %83, align 8, !tbaa !79
  %114 = load ptr, ptr %0, align 8, !tbaa !68
  %115 = call ptr @build4_stat(i32 noundef 45, ptr noundef %113, ptr noundef %114, ptr noundef %112, ptr noundef null, ptr noundef null) #22
  store ptr %115, ptr %0, align 8, !tbaa !68
  br label %116

116:                                              ; preds = %111, %102
  %117 = srem i64 %10, %92
  %118 = load ptr, ptr %83, align 8, !tbaa !79
  br label %122

119:                                              ; preds = %18
  %120 = and i1 %13, %8
  %121 = zext i1 %120 to i8
  br label %122

122:                                              ; preds = %75, %78, %21, %119, %91, %82, %88, %15, %116
  %123 = phi i64 [ %117, %116 ], [ 0, %15 ], [ %10, %88 ], [ %10, %82 ], [ %10, %91 ], [ %10, %119 ], [ %10, %21 ], [ %10, %78 ], [ %10, %75 ]
  %124 = phi i32 [ 0, %116 ], [ 1, %15 ], [ 1, %88 ], [ 1, %82 ], [ 1, %91 ], [ 1, %119 ], [ 1, %21 ], [ %76, %75 ], [ 1, %78 ]
  %125 = phi ptr [ %118, %116 ], [ %11, %15 ], [ %11, %88 ], [ %11, %82 ], [ %11, %91 ], [ %11, %119 ], [ %11, %21 ], [ %11, %78 ], [ %11, %75 ]
  %126 = phi i8 [ %12, %116 ], [ 1, %15 ], [ 0, %88 ], [ 0, %82 ], [ 0, %91 ], [ %121, %119 ], [ 0, %21 ], [ %77, %75 ], [ 0, %78 ]
  %127 = icmp eq i32 %124, 0
  br i1 %127, label %9, label %128

128:                                              ; preds = %122
  ret i8 %126
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_intra_sra() #10 !prof !88 !PGOFuncName !89 {
  %1 = load i32, ptr @flag_tree_sra, align 4, !tbaa !83
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @early_intra_sra() #11 !prof !90 !PGOFuncName !91 {
  store i32 1, ptr @sra_mode, align 4, !tbaa !83
  %1 = tail call fastcc i32 @perform_intra_sra(), !range !92
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @late_intra_sra() #11 !prof !93 !PGOFuncName !94 {
  store i32 2, ptr @sra_mode, align 4, !tbaa !83
  %1 = tail call fastcc i32 @perform_intra_sra(), !range !92
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @ipa_early_sra_gate() #10 !prof !90 !PGOFuncName !95 {
  %1 = load i32, ptr @flag_ipa_sra, align 4, !tbaa !83
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ipa_early_sra() #11 !prof !90 !PGOFuncName !96 {
  %1 = alloca %struct.immediate_use_iterator_d, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.immediate_use_iterator_d, align 8
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !68
  %7 = tail call ptr @cgraph_node(ptr noundef %6) #22
  %8 = tail call zeroext i8 @cgraph_node_can_be_local_p(ptr noundef %7) #22
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %15, !prof !97

10:                                               ; preds = %0
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1571, label %13, !prof !98

13:                                               ; preds = %10
  %14 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 45, i64 1, ptr nonnull %11)
  br label %1571

15:                                               ; preds = %0
  %16 = load ptr, ptr @current_function_decl, align 8, !tbaa !68
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 512
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %26, label %21, !prof !99

21:                                               ; preds = %15
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %23 = icmp eq ptr %22, null
  br i1 %23, label %1571, label %24

24:                                               ; preds = %21
  %25 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 30, i64 1, ptr nonnull %22)
  br label %1571

26:                                               ; preds = %15
  %27 = load ptr, ptr %7, align 8, !tbaa !100
  %28 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %27, i64 0, i32 4
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 512
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37, !prof !99

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %27, i64 0, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 33554432
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %49, label %37, !prof !99

37:                                               ; preds = %32, %26
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 19, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !108
  %40 = load ptr, ptr @compiler_params, align 8, !tbaa !68
  %41 = getelementptr inbounds %struct.param_info, ptr %40, i64 3, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !109
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %46 = icmp eq ptr %45, null
  br i1 %46, label %1571, label %47

47:                                               ; preds = %44
  %48 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 41, i64 1, ptr nonnull %45)
  br label %1571

49:                                               ; preds = %37, %32
  %50 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !111
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %58, !prof !112

53:                                               ; preds = %49
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %55 = icmp eq ptr %54, null
  br i1 %55, label %1571, label %56

56:                                               ; preds = %53
  %57 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 50, i64 1, ptr nonnull %54)
  br label %1571

58:                                               ; preds = %49
  %59 = load ptr, ptr @cfun, align 8, !tbaa !68
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 20
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 4194304
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64, !prof !99

64:                                               ; preds = %58
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %66 = icmp eq ptr %65, null
  br i1 %66, label %1571, label %67

67:                                               ; preds = %64
  %68 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 23, i64 1, ptr nonnull %65)
  br label %1571

69:                                               ; preds = %58
  tail call fastcc void @sra_initialize()
  store i32 0, ptr @sra_mode, align 4, !tbaa !83
  %70 = load ptr, ptr @current_function_decl, align 8, !tbaa !68
  %71 = getelementptr inbounds %struct.tree_decl_non_common, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !79
  %73 = icmp eq ptr %72, null
  br i1 %73, label %375, label %74, !prof !113

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 1
  %76 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 3
  %77 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 2
  %78 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 2, i32 1
  br label %79

79:                                               ; preds = %74, %370
  %80 = phi ptr [ %72, %74 ], [ %373, %370 ]
  %81 = phi i8 [ 0, %74 ], [ %371, %370 ]
  %82 = phi i32 [ 0, %74 ], [ %85, %370 ]
  %83 = getelementptr inbounds %struct.tree_common, ptr %80, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !79
  %85 = add nuw nsw i32 %82, 1
  %86 = load i64, ptr %80, align 8
  %87 = and i64 %86, 786432
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %370, !prof !99

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.tree_type, ptr %84, i64 0, i32 16
  %91 = load ptr, ptr %90, align 8, !tbaa !79
  %92 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 44), align 16, !tbaa !68
  %93 = getelementptr inbounds %struct.tree_type, ptr %92, i64 0, i32 16
  %94 = load ptr, ptr %93, align 8, !tbaa !79
  %95 = icmp eq ptr %91, %94
  br i1 %95, label %370, label %96, !prof !112

96:                                               ; preds = %89
  %97 = call fastcc zeroext i8 @is_unused_scalar_param(ptr noundef nonnull %80), !range !114
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %370, !prof !99

99:                                               ; preds = %96
  %100 = load i64, ptr %84, align 8
  %101 = trunc i64 %100 to i16
  switch i16 %101, label %370 [
    i16 10, label %102
    i16 12, label %102
    i16 15, label %332
    i16 16, label %332
    i16 17, label %332
    i16 18, label %332
  ], !prof !115

102:                                              ; preds = %99, %99
  %103 = getelementptr inbounds %struct.tree_common, ptr %84, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !79
  %105 = load i64, ptr %104, align 8
  %106 = and i64 %105, 65535
  %107 = icmp ne i64 %106, 20
  %108 = and i64 %105, 524288
  %109 = icmp eq i64 %108, 0
  %110 = and i1 %107, %109
  br i1 %110, label %111, label %370, !prof !99

111:                                              ; preds = %102
  %112 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %80) #22
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %370, label %114, !prof !112

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.tree_type, ptr %104, i64 0, i32 16
  %116 = load ptr, ptr %115, align 8, !tbaa !79
  %117 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 44), align 16, !tbaa !68
  %118 = getelementptr inbounds %struct.tree_type, ptr %117, i64 0, i32 16
  %119 = load ptr, ptr %118, align 8, !tbaa !79
  %120 = icmp eq ptr %116, %119
  br i1 %120, label %370, label %121, !prof !112

121:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #22
  %122 = load ptr, ptr @cfun, align 8, !tbaa !68
  %123 = call ptr @gimple_default_def(ptr noundef %122, ptr noundef nonnull %80) #22
  %124 = getelementptr inbounds %struct.tree_ssa_name, ptr %123, i64 0, i32 5
  store ptr %124, ptr %75, align 8, !tbaa !116
  %125 = getelementptr inbounds %struct.tree_ssa_name, ptr %123, i64 0, i32 5, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !119
  store ptr %126, ptr %5, align 8, !tbaa !120
  %127 = icmp eq ptr %126, %124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %77, i8 0, i64 40, i1 false)
  br i1 %127, label %132, label %128, !prof !112

128:                                              ; preds = %121
  call fastcc void @link_use_stmts_after(ptr noundef %126, ptr noundef nonnull %5)
  %129 = load ptr, ptr %5, align 8, !tbaa !120
  %130 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %129, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !79
  br label %132

132:                                              ; preds = %128, %121
  %133 = phi ptr [ %131, %128 ], [ null, %121 ]
  %134 = load ptr, ptr %5, align 8, !tbaa !120
  %135 = load ptr, ptr %75, align 8, !tbaa !116
  %136 = icmp eq ptr %134, %135
  br i1 %136, label %329, label %137, !prof !121

137:                                              ; preds = %132, %324
  %138 = phi i8 [ %308, %324 ], [ 0, %132 ]
  %139 = phi ptr [ %325, %324 ], [ %133, %132 ]
  %140 = load i32, ptr %139, align 8
  %141 = and i32 %140, 255
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %307, label %143, !prof !122

143:                                              ; preds = %137
  %144 = trunc i32 %140 to i8
  switch i8 %144, label %159 [
    i8 6, label %160
    i8 8, label %145
  ], !prof !123

145:                                              ; preds = %143
  %146 = zext nneg i32 %141 to i64
  %147 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !83
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %149
  %151 = load i64, ptr %150, align 8, !tbaa !124
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %154, !prof !121

153:                                              ; preds = %145
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %154

154:                                              ; preds = %153, %145
  %155 = getelementptr inbounds i8, ptr %139, i64 %151
  %156 = load ptr, ptr %155, align 8, !tbaa !68
  %157 = icmp ne ptr %156, null
  %158 = zext i1 %157 to i8
  br label %160

159:                                              ; preds = %143
  br label %160

160:                                              ; preds = %159, %154, %143
  %161 = phi i8 [ 1, %143 ], [ %158, %154 ], [ 0, %159 ]
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %182, label %163, !prof !122

163:                                              ; preds = %160
  %164 = call ptr @gimple_get_lhs(ptr noundef nonnull %139) #22
  br label %165

165:                                              ; preds = %174, %163
  %166 = phi ptr [ %164, %163 ], [ %176, %174 ]
  %167 = load i64, ptr %166, align 8
  %168 = trunc i64 %167 to i16
  switch i16 %168, label %169 [
    i16 42, label %174
    i16 41, label %174
    i16 45, label %174
    i16 46, label %174
    i16 118, label %174
    i16 43, label %174
    i16 44, label %174
  ], !prof !125

169:                                              ; preds = %165
  %170 = trunc i64 %167 to i32
  %171 = and i32 %170, 65535
  %172 = add nsw i32 %171, -47
  %173 = icmp ult i32 %172, 3
  br i1 %173, label %177, label %182, !prof !126

174:                                              ; preds = %165, %165, %165, %165, %165, %165, %165
  %175 = getelementptr inbounds %struct.tree_exp, ptr %166, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !79
  br label %165, !llvm.loop !127

177:                                              ; preds = %169
  %178 = getelementptr inbounds %struct.tree_exp, ptr %166, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !79
  %180 = icmp eq ptr %179, %123
  %181 = zext i1 %180 to i32
  br label %182

182:                                              ; preds = %177, %169, %160
  %183 = phi i32 [ 0, %160 ], [ 0, %169 ], [ %181, %177 ]
  %184 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %139) #22
  %185 = icmp eq i8 %184, 0
  %186 = load i32, ptr %139, align 8
  %187 = and i32 %186, 255
  br i1 %185, label %223, label %188, !prof !126

188:                                              ; preds = %182
  %189 = add nsw i32 %187, -10
  %190 = icmp ult i32 %189, -9
  br i1 %190, label %206, label %191, !prof !128

191:                                              ; preds = %188
  %192 = zext nneg i32 %187 to i64
  %193 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !83
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %195
  %197 = load i64, ptr %196, align 8, !tbaa !124
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %200, !prof !128

199:                                              ; preds = %191
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %200

200:                                              ; preds = %199, %191
  %201 = getelementptr inbounds i8, ptr %139, i64 %197
  %202 = getelementptr inbounds ptr, ptr %201, i64 1
  br label %203

203:                                              ; preds = %215, %200
  %204 = phi ptr [ %202, %200 ], [ %216, %215 ]
  %205 = load ptr, ptr %204, align 8, !tbaa !79
  br label %206

206:                                              ; preds = %203, %188
  %207 = phi ptr [ null, %188 ], [ %205, %203 ]
  %208 = load i64, ptr %207, align 8
  %209 = trunc i64 %208 to i16
  switch i16 %209, label %210 [
    i16 42, label %215
    i16 41, label %215
    i16 45, label %215
    i16 46, label %215
    i16 118, label %215
    i16 43, label %215
    i16 44, label %215
  ], !prof !129

210:                                              ; preds = %206
  %211 = trunc i64 %208 to i32
  %212 = and i32 %211, 65535
  %213 = add nsw i32 %212, -47
  %214 = icmp ult i32 %213, 3
  br i1 %214, label %217, label %277, !prof !130

215:                                              ; preds = %206, %206, %206, %206, %206, %206, %206
  %216 = getelementptr inbounds %struct.tree_exp, ptr %207, i64 0, i32 3
  br label %203, !llvm.loop !131

217:                                              ; preds = %210
  %218 = getelementptr inbounds %struct.tree_exp, ptr %207, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !79
  %220 = icmp eq ptr %219, %123
  %221 = zext i1 %220 to i32
  %222 = add nuw nsw i32 %183, %221
  br label %277

223:                                              ; preds = %182
  %224 = icmp eq i32 %187, 8
  br i1 %224, label %225, label %277, !prof !132

225:                                              ; preds = %223
  %226 = getelementptr inbounds %struct.gimple_statement_base, ptr %139, i64 0, i32 3
  %227 = load i32, ptr %226, align 4, !tbaa !79
  %228 = icmp eq i32 %227, 3
  br i1 %228, label %277, label %229, !prof !113

229:                                              ; preds = %225, %270
  %230 = phi i64 [ %272, %270 ], [ 0, %225 ]
  %231 = phi i32 [ %271, %270 ], [ %183, %225 ]
  %232 = add nuw i64 %230, 3
  %233 = load i32, ptr %139, align 8
  %234 = and i32 %233, 255
  %235 = add nsw i32 %234, -10
  %236 = icmp ult i32 %235, -9
  br i1 %236, label %253, label %237, !prof !128

237:                                              ; preds = %229
  %238 = zext nneg i32 %234 to i64
  %239 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %238
  %240 = load i32, ptr %239, align 4, !tbaa !83
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %241
  %243 = load i64, ptr %242, align 8, !tbaa !124
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %246, !prof !128

245:                                              ; preds = %237
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %246

246:                                              ; preds = %245, %237
  %247 = getelementptr inbounds i8, ptr %139, i64 %243
  %248 = and i64 %232, 4294967295
  %249 = getelementptr inbounds ptr, ptr %247, i64 %248
  br label %250

250:                                              ; preds = %262, %246
  %251 = phi ptr [ %249, %246 ], [ %263, %262 ]
  %252 = load ptr, ptr %251, align 8, !tbaa !79
  br label %253

253:                                              ; preds = %250, %229
  %254 = phi ptr [ null, %229 ], [ %252, %250 ]
  %255 = load i64, ptr %254, align 8
  %256 = trunc i64 %255 to i16
  switch i16 %256, label %257 [
    i16 42, label %262
    i16 41, label %262
    i16 45, label %262
    i16 46, label %262
    i16 118, label %262
    i16 43, label %262
    i16 44, label %262
  ], !prof !133

257:                                              ; preds = %253
  %258 = trunc i64 %255 to i32
  %259 = and i32 %258, 65535
  %260 = add nsw i32 %259, -47
  %261 = icmp ult i32 %260, 3
  br i1 %261, label %264, label %270, !prof !128

262:                                              ; preds = %253, %253, %253, %253, %253, %253, %253
  %263 = getelementptr inbounds %struct.tree_exp, ptr %254, i64 0, i32 3
  br label %250, !llvm.loop !134

264:                                              ; preds = %257
  %265 = getelementptr inbounds %struct.tree_exp, ptr %254, i64 0, i32 3
  %266 = load ptr, ptr %265, align 8, !tbaa !79
  %267 = icmp eq ptr %266, %123
  %268 = zext i1 %267 to i32
  %269 = add nsw i32 %231, %268
  br label %270

270:                                              ; preds = %264, %257
  %271 = phi i32 [ %231, %257 ], [ %269, %264 ]
  %272 = add nuw nsw i64 %230, 1
  %273 = load i32, ptr %226, align 4, !tbaa !79
  %274 = add i32 %273, -3
  %275 = zext i32 %274 to i64
  %276 = icmp ult i64 %272, %275
  br i1 %276, label %229, label %277, !prof !135, !llvm.loop !136

277:                                              ; preds = %270, %225, %223, %217, %210
  %278 = phi i32 [ %183, %210 ], [ %222, %217 ], [ %183, %223 ], [ %183, %225 ], [ %271, %270 ]
  %279 = load ptr, ptr %5, align 8, !tbaa !120
  %280 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %279, i64 0, i32 1
  %281 = load ptr, ptr %280, align 8, !tbaa !119
  store ptr %281, ptr %76, align 8, !tbaa !137
  %282 = icmp eq ptr %279, %77
  br i1 %282, label %295, label %283, !prof !113

283:                                              ; preds = %277, %291
  %284 = phi i32 [ %286, %291 ], [ %278, %277 ]
  %285 = phi ptr [ %292, %291 ], [ %281, %277 ]
  %286 = add nsw i32 %284, -1
  %287 = icmp eq ptr %285, %77
  br i1 %287, label %291, label %288, !prof !138

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %285, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !119
  store ptr %290, ptr %76, align 8, !tbaa !137
  br label %291

291:                                              ; preds = %288, %283
  %292 = phi ptr [ %290, %288 ], [ %285, %283 ]
  %293 = icmp eq ptr %285, %77
  br i1 %293, label %294, label %283, !prof !139, !llvm.loop !140

294:                                              ; preds = %291
  store ptr %285, ptr %5, align 8, !tbaa !120
  br label %295

295:                                              ; preds = %294, %277
  %296 = phi i32 [ %286, %294 ], [ %278, %277 ]
  %297 = icmp eq i32 %296, 0
  %298 = icmp eq i8 %138, 0
  %299 = select i1 %297, i1 %298, i1 false, !prof !141
  br i1 %299, label %307, label %300, !prof !141

300:                                              ; preds = %295
  %301 = load ptr, ptr %77, align 8, !tbaa !142
  %302 = icmp eq ptr %301, null
  br i1 %302, label %307, label %303, !prof !112

303:                                              ; preds = %300
  %304 = load ptr, ptr %78, align 8, !tbaa !119
  %305 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %301, i64 0, i32 1
  store ptr %304, ptr %305, align 8, !tbaa !119
  %306 = load ptr, ptr %78, align 8, !tbaa !119
  store ptr %301, ptr %306, align 8, !tbaa !142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %77, i8 0, i64 16, i1 false)
  br label %307

307:                                              ; preds = %303, %300, %295, %137
  %308 = phi i8 [ %138, %137 ], [ 0, %295 ], [ 1, %300 ], [ 1, %303 ]
  %309 = phi i1 [ false, %137 ], [ false, %295 ], [ true, %300 ], [ true, %303 ]
  br i1 %309, label %329, label %310, !prof !141

310:                                              ; preds = %307
  %311 = load ptr, ptr %78, align 8, !tbaa !119
  store ptr %311, ptr %5, align 8, !tbaa !120
  %312 = load ptr, ptr %75, align 8, !tbaa !116
  %313 = icmp eq ptr %311, %312
  br i1 %313, label %314, label %320, !prof !112

314:                                              ; preds = %310
  %315 = load ptr, ptr %77, align 8, !tbaa !142
  %316 = icmp eq ptr %315, null
  br i1 %316, label %324, label %317

317:                                              ; preds = %314
  %318 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %315, i64 0, i32 1
  store ptr %311, ptr %318, align 8, !tbaa !119
  %319 = load ptr, ptr %78, align 8, !tbaa !119
  store ptr %315, ptr %319, align 8, !tbaa !142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %77, i8 0, i64 16, i1 false)
  br label %324

320:                                              ; preds = %310
  call fastcc void @link_use_stmts_after(ptr noundef %311, ptr noundef nonnull %5)
  %321 = load ptr, ptr %5, align 8, !tbaa !120
  %322 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %321, i64 0, i32 2
  %323 = load ptr, ptr %322, align 8, !tbaa !79
  br label %324

324:                                              ; preds = %320, %317, %314
  %325 = phi ptr [ %323, %320 ], [ null, %317 ], [ null, %314 ]
  %326 = load ptr, ptr %5, align 8, !tbaa !120
  %327 = load ptr, ptr %75, align 8, !tbaa !116
  %328 = icmp eq ptr %326, %327
  br i1 %328, label %329, label %137, !prof !122, !llvm.loop !143

329:                                              ; preds = %324, %307, %132
  %330 = phi i8 [ 0, %132 ], [ %308, %307 ], [ %308, %324 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #22
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %332, label %370, !prof !112

332:                                              ; preds = %329, %99, %99, %99, %99
  %333 = phi ptr [ %84, %99 ], [ %84, %99 ], [ %84, %99 ], [ %84, %99 ], [ %104, %329 ]
  %334 = getelementptr inbounds %struct.tree_type, ptr %333, i64 0, i32 2
  %335 = load ptr, ptr %334, align 8, !tbaa !79
  %336 = icmp eq ptr %335, null
  br i1 %336, label %370, label %337

337:                                              ; preds = %332
  %338 = call i32 @host_integerp(ptr noundef nonnull %335, i32 noundef 1) #22
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %370, label %340

340:                                              ; preds = %337
  %341 = load ptr, ptr %334, align 8, !tbaa !79
  %342 = call i64 @tree_low_cst(ptr noundef %341, i32 noundef 1) #22
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %370, label %344

344:                                              ; preds = %340
  %345 = load i64, ptr %333, align 8
  %346 = trunc i64 %345 to i32
  %347 = and i32 %346, 65535
  %348 = add nsw i32 %347, -15
  %349 = icmp ult i32 %348, 4
  br i1 %349, label %350, label %353

350:                                              ; preds = %344
  %351 = call fastcc zeroext i8 @type_internals_preclude_sra_p(ptr noundef nonnull %333)
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %353, label %370

353:                                              ; preds = %350, %344
  %354 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !68
  %355 = getelementptr inbounds %struct.tree_decl_minimal, ptr %80, i64 0, i32 2
  %356 = load i32, ptr %355, align 4, !tbaa !79
  %357 = call zeroext i8 @bitmap_set_bit(ptr noundef %354, i32 noundef %356) #22
  %358 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %359 = icmp eq ptr %358, null
  br i1 %359, label %370, label %360

360:                                              ; preds = %353
  %361 = load i32, ptr @dump_flags, align 4, !tbaa !83
  %362 = and i32 %361, 8
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %370, label %364

364:                                              ; preds = %360
  %365 = load i32, ptr %355, align 4, !tbaa !79
  %366 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %358, ptr noundef nonnull @.str.13, i32 noundef %365)
  %367 = load ptr, ptr @dump_file, align 8, !tbaa !68
  call void @print_generic_expr(ptr noundef %367, ptr noundef nonnull %80, i32 noundef 0) #22
  %368 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %369 = call i32 @fputc(i32 10, ptr %368)
  br label %370

370:                                              ; preds = %102, %99, %364, %360, %353, %350, %340, %337, %332, %329, %114, %111, %96, %89, %79
  %371 = phi i8 [ %81, %89 ], [ %81, %79 ], [ 1, %96 ], [ %81, %329 ], [ %81, %114 ], [ %81, %111 ], [ %81, %350 ], [ %81, %340 ], [ %81, %337 ], [ %81, %332 ], [ 1, %364 ], [ 1, %360 ], [ 1, %353 ], [ %81, %99 ], [ %81, %102 ]
  %372 = getelementptr inbounds %struct.tree_common, ptr %80, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !79
  %374 = icmp eq ptr %373, null
  br i1 %374, label %375, label %79, !prof !139, !llvm.loop !144

375:                                              ; preds = %370, %69
  %376 = phi i32 [ 0, %69 ], [ %85, %370 ]
  %377 = phi i8 [ 0, %69 ], [ %371, %370 ]
  store i32 %376, ptr @func_param_count, align 4, !tbaa !83
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %379, label %384, !prof !99

379:                                              ; preds = %375
  %380 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %381 = icmp eq ptr %380, null
  br i1 %381, label %1569, label %382, !prof !99

382:                                              ; preds = %379
  %383 = call i64 @fwrite(ptr nonnull @.str.49, i64 36, i64 1, ptr nonnull %380)
  br label %1569

384:                                              ; preds = %375
  %385 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 2
  %386 = load ptr, ptr %385, align 8, !tbaa !68
  %387 = icmp eq ptr %386, null
  br i1 %387, label %414, label %388

388:                                              ; preds = %384
  %389 = getelementptr inbounds %struct.cgraph_edge, ptr %386, i64 0, i32 7
  %390 = load ptr, ptr %389, align 8, !tbaa !145
  %391 = getelementptr inbounds %struct.gimple_statement_base, ptr %390, i64 0, i32 3
  %392 = load i32, ptr %391, align 4, !tbaa !79
  %393 = add i32 %392, -3
  %394 = icmp ult i32 %393, %376
  br i1 %394, label %407, label %395

395:                                              ; preds = %388, %400
  %396 = phi ptr [ %398, %400 ], [ %386, %388 ]
  %397 = getelementptr inbounds %struct.cgraph_edge, ptr %396, i64 0, i32 4
  %398 = load ptr, ptr %397, align 8, !tbaa !68
  %399 = icmp eq ptr %398, null
  br i1 %399, label %414, label %400, !llvm.loop !147

400:                                              ; preds = %395
  %401 = getelementptr inbounds %struct.cgraph_edge, ptr %398, i64 0, i32 7
  %402 = load ptr, ptr %401, align 8, !tbaa !145
  %403 = getelementptr inbounds %struct.gimple_statement_base, ptr %402, i64 0, i32 3
  %404 = load i32, ptr %403, align 4, !tbaa !79
  %405 = add i32 %404, -3
  %406 = icmp ult i32 %405, %376
  br i1 %406, label %407, label %395, !llvm.loop !147

407:                                              ; preds = %400, %388
  %408 = phi i1 [ %387, %388 ], [ %399, %400 ]
  br i1 %408, label %414, label %409

409:                                              ; preds = %407
  %410 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %411 = icmp eq ptr %410, null
  br i1 %411, label %1569, label %412

412:                                              ; preds = %409
  %413 = call i64 @fwrite(ptr nonnull @.str.50, i64 57, i64 1, ptr nonnull %410)
  br label %1569

414:                                              ; preds = %395, %384, %407
  %415 = load ptr, ptr @cfun, align 8, !tbaa !68
  %416 = getelementptr inbounds %struct.function, ptr %415, i64 0, i32 1
  %417 = load ptr, ptr %416, align 8, !tbaa !148
  %418 = getelementptr inbounds %struct.control_flow_graph, ptr %417, i64 0, i32 5
  %419 = load i32, ptr %418, align 8, !tbaa !150
  %420 = mul nsw i32 %419, %376
  %421 = sext i32 %420 to i64
  %422 = call ptr @xcalloc(i64 noundef %421, i64 noundef 8) #22
  store ptr %422, ptr @bb_dereferences, align 8, !tbaa !68
  %423 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %423, ptr @final_bbs, align 8, !tbaa !68
  %424 = call fastcc zeroext i8 @scan_function.specialized.1(i8 noundef zeroext 1)
  %425 = load i1, ptr @encountered_apply_args, align 1
  br i1 %425, label %426, label %431

426:                                              ; preds = %414
  %427 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %428 = icmp eq ptr %427, null
  br i1 %428, label %1565, label %429

429:                                              ; preds = %426
  %430 = call i64 @fwrite(ptr nonnull @.str.51, i64 40, i64 1, ptr nonnull %427)
  br label %1565

431:                                              ; preds = %414
  %432 = load i1, ptr @encountered_unchangable_recursive_call, align 1
  br i1 %432, label %433, label %438

433:                                              ; preds = %431
  %434 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %435 = icmp eq ptr %434, null
  br i1 %435, label %1565, label %436

436:                                              ; preds = %433
  %437 = call i64 @fwrite(ptr nonnull @.str.52, i64 61, i64 1, ptr nonnull %434)
  br label %1565

438:                                              ; preds = %431
  %439 = load i32, ptr @func_param_count, align 4, !tbaa !83
  %440 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %439) #22
  %441 = load ptr, ptr @current_function_decl, align 8, !tbaa !68
  %442 = getelementptr inbounds %struct.tree_decl_non_common, ptr %441, i64 0, i32 2
  %443 = load ptr, ptr %442, align 8, !tbaa !79
  %444 = icmp eq ptr %443, null
  br i1 %444, label %695, label %445

445:                                              ; preds = %438, %690
  %446 = phi ptr [ %693, %690 ], [ %443, %438 ]
  %447 = phi i32 [ %691, %690 ], [ 0, %438 ]
  %448 = call fastcc zeroext i8 @is_unused_scalar_param(ptr noundef nonnull %446), !range !114
  %449 = icmp eq i8 %448, 0
  br i1 %449, label %456, label %450

450:                                              ; preds = %445
  %451 = load i32, ptr %440, align 8, !tbaa !152
  %452 = add i32 %451, 1
  store i32 %452, ptr %440, align 8, !tbaa !152
  %453 = zext i32 %451 to i64
  %454 = getelementptr inbounds %struct.VEC_access_p_base, ptr %440, i64 0, i32 2, i64 %453
  store ptr @no_accesses_representant, ptr %454, align 8, !tbaa !68
  %455 = call i32 @llvm.umax.i32(i32 %447, i32 1)
  br label %690

456:                                              ; preds = %445
  %457 = getelementptr inbounds %struct.tree_common, ptr %446, i64 0, i32 2
  %458 = load ptr, ptr %457, align 8, !tbaa !79
  %459 = load i64, ptr %458, align 8
  %460 = trunc i64 %459 to i16
  switch i16 %460, label %524 [
    i16 10, label %461
    i16 12, label %461
  ]

461:                                              ; preds = %456, %456
  %462 = getelementptr inbounds %struct.tree_common, ptr %458, i64 0, i32 2
  %463 = load ptr, ptr %462, align 8, !tbaa !79
  %464 = call zeroext i8 @is_gimple_reg_type(ptr noundef %463) #22
  %465 = icmp eq i8 %464, 0
  br i1 %465, label %524, label %466

466:                                              ; preds = %461
  %467 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !68
  %468 = getelementptr inbounds %struct.tree_decl_minimal, ptr %446, i64 0, i32 2
  %469 = load i32, ptr %468, align 4, !tbaa !79
  %470 = call i32 @bitmap_bit_p(ptr noundef %467, i32 noundef %469) #22
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %524, label %472

472:                                              ; preds = %466
  %473 = load ptr, ptr @base_access_vec, align 8, !tbaa !68
  %474 = call ptr @pointer_map_contains(ptr noundef %473, ptr noundef nonnull %446) #22
  %475 = icmp eq ptr %474, null
  br i1 %475, label %478, label %476

476:                                              ; preds = %472
  %477 = load ptr, ptr %474, align 8, !tbaa !68
  br label %478

478:                                              ; preds = %476, %472
  %479 = phi ptr [ %477, %476 ], [ null, %472 ]
  %480 = icmp eq ptr %479, null
  br i1 %480, label %481, label %482

481:                                              ; preds = %478
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3267, ptr noundef nonnull @.str.4) #22
  br label %482

482:                                              ; preds = %481, %478
  %483 = getelementptr inbounds %struct.VEC_access_p_base, ptr %479, i64 0, i32 2, i64 0
  %484 = load ptr, ptr %483, align 8, !tbaa !68
  %485 = getelementptr inbounds %struct.access, ptr %484, i64 0, i32 14
  %486 = load i16, ptr %485, align 8
  %487 = and i16 %486, 1
  %488 = icmp eq i16 %487, 0
  br i1 %488, label %489, label %516

489:                                              ; preds = %482
  %490 = getelementptr inbounds %struct.access, ptr %484, i64 0, i32 7
  store ptr %484, ptr %490, align 8, !tbaa !154
  br i1 %480, label %493, label %491

491:                                              ; preds = %489
  %492 = load i32, ptr %479, align 8, !tbaa !152
  br label %493

493:                                              ; preds = %491, %489
  %494 = phi i32 [ %492, %491 ], [ 0, %489 ]
  %495 = icmp sgt i32 %494, 1
  br i1 %495, label %496, label %513

496:                                              ; preds = %493
  %497 = getelementptr inbounds %struct.access, ptr %484, i64 0, i32 9
  %498 = zext nneg i32 %494 to i64
  br label %499

499:                                              ; preds = %496, %507
  %500 = phi i64 [ 1, %496 ], [ %511, %507 ]
  %501 = getelementptr inbounds %struct.VEC_access_p_base, ptr %479, i64 0, i32 2, i64 %500
  %502 = load ptr, ptr %501, align 8, !tbaa !68
  %503 = getelementptr inbounds %struct.access, ptr %502, i64 0, i32 14
  %504 = load i16, ptr %503, align 8
  %505 = and i16 %504, 1
  %506 = icmp eq i16 %505, 0
  br i1 %506, label %507, label %516

507:                                              ; preds = %499
  %508 = getelementptr inbounds %struct.access, ptr %502, i64 0, i32 7
  store ptr %484, ptr %508, align 8, !tbaa !154
  %509 = load ptr, ptr %497, align 8, !tbaa !156
  %510 = getelementptr inbounds %struct.access, ptr %502, i64 0, i32 9
  store ptr %509, ptr %510, align 8, !tbaa !156
  store ptr %502, ptr %497, align 8, !tbaa !156
  %511 = add nuw nsw i64 %500, 1
  %512 = icmp eq i64 %511, %498
  br i1 %512, label %513, label %499, !llvm.loop !157

513:                                              ; preds = %507, %493
  %514 = load i16, ptr %485, align 8
  %515 = or i16 %514, 4112
  store i16 %515, ptr %485, align 8
  br label %516

516:                                              ; preds = %499, %513, %482
  %517 = phi ptr [ %484, %513 ], [ null, %482 ], [ null, %499 ]
  %518 = load i32, ptr %440, align 8, !tbaa !152
  %519 = add i32 %518, 1
  store i32 %519, ptr %440, align 8, !tbaa !152
  %520 = zext i32 %518 to i64
  %521 = getelementptr inbounds %struct.VEC_access_p_base, ptr %440, i64 0, i32 2, i64 %520
  store ptr %517, ptr %521, align 8, !tbaa !68
  %522 = icmp eq ptr %517, null
  %523 = select i1 %522, i32 %447, i32 4
  br label %690

524:                                              ; preds = %461, %466, %456
  %525 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !68
  %526 = getelementptr inbounds %struct.tree_decl_minimal, ptr %446, i64 0, i32 2
  %527 = load i32, ptr %526, align 4, !tbaa !79
  %528 = call i32 @bitmap_bit_p(ptr noundef %525, i32 noundef %527) #22
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %685, label %530

530:                                              ; preds = %524
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  %531 = load ptr, ptr @base_access_vec, align 8, !tbaa !68
  %532 = call ptr @pointer_map_contains(ptr noundef %531, ptr noundef nonnull %446) #22
  %533 = icmp eq ptr %532, null
  br i1 %533, label %536, label %534

534:                                              ; preds = %530
  %535 = load ptr, ptr %532, align 8, !tbaa !68
  br label %536

536:                                              ; preds = %534, %530
  %537 = phi ptr [ %535, %534 ], [ null, %530 ]
  %538 = icmp eq ptr %537, null
  br i1 %538, label %661, label %539

539:                                              ; preds = %536
  %540 = load i32, ptr %537, align 8, !tbaa !152
  %541 = getelementptr inbounds %struct.VEC_access_p_base, ptr %537, i64 0, i32 2
  %542 = sext i32 %540 to i64
  call void @spec_qsort(ptr noundef nonnull %541, i64 noundef %542, i64 noundef 8, ptr noundef nonnull @compare_access_positions) #22
  br label %543

543:                                              ; preds = %634, %539
  %544 = phi i8 [ 0, %539 ], [ %635, %634 ]
  %545 = phi i32 [ 0, %539 ], [ %636, %634 ]
  %546 = phi i32 [ 0, %539 ], [ %637, %634 ]
  %547 = phi ptr [ %4, %539 ], [ %638, %634 ]
  %548 = phi i32 [ 0, %539 ], [ %639, %634 ]
  %549 = icmp slt i32 %548, %540
  br i1 %549, label %550, label %642

550:                                              ; preds = %543
  %551 = zext i32 %548 to i64
  %552 = getelementptr inbounds %struct.VEC_access_p_base, ptr %537, i64 0, i32 2, i64 %551
  %553 = load ptr, ptr %552, align 8, !tbaa !68
  %554 = getelementptr inbounds %struct.access, ptr %553, i64 0, i32 14
  %555 = load i16, ptr %554, align 8
  %556 = and i16 %555, 1
  %557 = icmp eq i16 %556, 0
  br i1 %557, label %565, label %558

558:                                              ; preds = %550
  %559 = getelementptr inbounds %struct.access, ptr %553, i64 0, i32 5
  %560 = load ptr, ptr %559, align 8, !tbaa !158
  %561 = load i32, ptr %560, align 8
  %562 = and i32 %561, 255
  %563 = add nsw i32 %562, -7
  %564 = icmp ult i32 %563, 2
  br i1 %564, label %634, label %565

565:                                              ; preds = %558, %550
  %566 = trunc i16 %555 to i8
  %567 = and i8 %566, 1
  %568 = add nsw i32 %548, 1
  %569 = getelementptr inbounds %struct.access, ptr %553, i64 0, i32 1
  %570 = getelementptr inbounds %struct.access, ptr %553, i64 0, i32 1
  %571 = getelementptr inbounds %struct.access, ptr %553, i64 0, i32 9
  br label %572

572:                                              ; preds = %613, %565
  %573 = phi i32 [ %568, %565 ], [ %614, %613 ]
  %574 = phi i8 [ %567, %565 ], [ %616, %613 ]
  %575 = icmp slt i32 %573, %540
  br i1 %575, label %576, label %617

576:                                              ; preds = %572
  %577 = zext i32 %573 to i64
  %578 = getelementptr inbounds %struct.VEC_access_p_base, ptr %537, i64 0, i32 2, i64 %577
  %579 = load ptr, ptr %578, align 8, !tbaa !68
  %580 = load i64, ptr %579, align 8, !tbaa !159
  %581 = load i64, ptr %553, align 8, !tbaa !159
  %582 = icmp eq i64 %580, %581
  br i1 %582, label %588, label %583

583:                                              ; preds = %576
  %584 = load i64, ptr %569, align 8, !tbaa !160
  %585 = add nsw i64 %584, %581
  %586 = icmp sgt i64 %585, %580
  %587 = select i1 %586, i32 1, i32 5
  br label %613

588:                                              ; preds = %576
  %589 = getelementptr inbounds %struct.access, ptr %579, i64 0, i32 1
  %590 = load i64, ptr %589, align 8, !tbaa !160
  %591 = load i64, ptr %570, align 8, !tbaa !160
  %592 = icmp eq i64 %590, %591
  br i1 %592, label %593, label %613

593:                                              ; preds = %588
  %594 = getelementptr inbounds %struct.access, ptr %579, i64 0, i32 14
  %595 = load i16, ptr %594, align 8
  %596 = and i16 %595, 1
  %597 = icmp eq i16 %596, 0
  br i1 %597, label %605, label %598

598:                                              ; preds = %593
  %599 = getelementptr inbounds %struct.access, ptr %579, i64 0, i32 5
  %600 = load ptr, ptr %599, align 8, !tbaa !158
  %601 = load i32, ptr %600, align 8
  %602 = and i32 %601, 255
  %603 = add nsw i32 %602, -7
  %604 = icmp ult i32 %603, 2
  br i1 %604, label %613, label %605

605:                                              ; preds = %598, %593
  %606 = trunc i16 %595 to i8
  %607 = and i8 %606, 1
  %608 = or i8 %607, %574
  %609 = getelementptr inbounds %struct.access, ptr %579, i64 0, i32 7
  store ptr %553, ptr %609, align 8, !tbaa !154
  %610 = load ptr, ptr %571, align 8, !tbaa !156
  %611 = getelementptr inbounds %struct.access, ptr %579, i64 0, i32 9
  store ptr %610, ptr %611, align 8, !tbaa !156
  store ptr %579, ptr %571, align 8, !tbaa !156
  %612 = add nsw i32 %573, 1
  br label %613

613:                                              ; preds = %605, %598, %588, %583
  %614 = phi i32 [ %612, %605 ], [ %573, %583 ], [ %573, %588 ], [ %573, %598 ]
  %615 = phi i32 [ 0, %605 ], [ %587, %583 ], [ 1, %588 ], [ 1, %598 ]
  %616 = phi i8 [ %608, %605 ], [ %574, %583 ], [ %574, %588 ], [ %574, %598 ]
  switch i32 %615, label %634 [
    i32 0, label %572
    i32 5, label %617
  ], !llvm.loop !161

617:                                              ; preds = %613, %572
  %618 = phi i32 [ %573, %572 ], [ %614, %613 ]
  %619 = phi i8 [ %574, %572 ], [ %616, %613 ]
  %620 = add nsw i32 %545, 1
  %621 = load i16, ptr %554, align 8
  %622 = and i8 %619, 1
  %623 = zext nneg i8 %622 to i16
  %624 = shl nuw nsw i16 %623, 11
  %625 = and i16 %621, -2049
  %626 = or disjoint i16 %624, %625
  store i16 %626, ptr %554, align 8
  %627 = icmp eq i8 %619, 0
  %628 = select i1 %627, i8 1, i8 %544
  store ptr %553, ptr %547, align 8, !tbaa !68
  %629 = getelementptr inbounds %struct.access, ptr %553, i64 0, i32 6
  %630 = getelementptr inbounds %struct.access, ptr %553, i64 0, i32 1
  %631 = load i64, ptr %630, align 8, !tbaa !160
  %632 = trunc i64 %631 to i32
  %633 = add i32 %546, %632
  br label %634

634:                                              ; preds = %613, %617, %558
  %635 = phi i8 [ %628, %617 ], [ %544, %558 ], [ %544, %613 ]
  %636 = phi i32 [ %620, %617 ], [ %545, %558 ], [ %545, %613 ]
  %637 = phi i32 [ %633, %617 ], [ %546, %558 ], [ %546, %613 ]
  %638 = phi ptr [ %629, %617 ], [ %547, %558 ], [ %547, %613 ]
  %639 = phi i32 [ %618, %617 ], [ %548, %558 ], [ %548, %613 ]
  %640 = phi i32 [ 0, %617 ], [ 1, %558 ], [ %615, %613 ]
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %543, label %661, !llvm.loop !162

642:                                              ; preds = %543
  %643 = load ptr, ptr %457, align 8, !tbaa !79
  %644 = load i64, ptr %643, align 8
  %645 = trunc i64 %644 to i16
  switch i16 %645, label %649 [
    i16 10, label %646
    i16 12, label %646
  ]

646:                                              ; preds = %642, %642
  %647 = getelementptr inbounds %struct.tree_common, ptr %643, i64 0, i32 2
  %648 = load ptr, ptr %647, align 8, !tbaa !79
  br label %649

649:                                              ; preds = %642, %646
  %650 = phi ptr [ %648, %646 ], [ %643, %642 ]
  %651 = getelementptr inbounds %struct.tree_type, ptr %650, i64 0, i32 2
  %652 = load ptr, ptr %651, align 8, !tbaa !79
  %653 = call i64 @tree_low_cst(ptr noundef %652, i32 noundef 1) #22
  %654 = trunc i64 %653 to i32
  %655 = icmp slt i32 %546, %654
  br i1 %655, label %656, label %661

656:                                              ; preds = %649
  %657 = icmp sgt i32 %545, 0
  br i1 %657, label %659, label %658

658:                                              ; preds = %656
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3395, ptr noundef nonnull @.str.4) #22
  br label %659

659:                                              ; preds = %658, %656
  %660 = load ptr, ptr %4, align 8, !tbaa !68
  br label %661

661:                                              ; preds = %634, %659, %649, %536
  %662 = phi i8 [ 0, %536 ], [ %544, %659 ], [ %544, %649 ], [ %635, %634 ]
  %663 = phi ptr [ @no_accesses_representant, %536 ], [ %660, %659 ], [ null, %649 ], [ null, %634 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  %664 = load i32, ptr %440, align 8, !tbaa !152
  %665 = add i32 %664, 1
  store i32 %665, ptr %440, align 8, !tbaa !152
  %666 = zext i32 %664 to i64
  %667 = getelementptr inbounds %struct.VEC_access_p_base, ptr %440, i64 0, i32 2, i64 %666
  store ptr %663, ptr %667, align 8, !tbaa !68
  %668 = icmp eq ptr %663, null
  %669 = icmp eq ptr %663, @no_accesses_representant
  %670 = or i1 %668, %669
  br i1 %670, label %681, label %671

671:                                              ; preds = %661
  %672 = load ptr, ptr %457, align 8, !tbaa !79
  %673 = load i64, ptr %672, align 8
  %674 = trunc i64 %673 to i16
  switch i16 %674, label %679 [
    i16 10, label %675
    i16 12, label %675
  ]

675:                                              ; preds = %671, %671
  %676 = icmp eq i8 %662, 0
  br i1 %676, label %677, label %690

677:                                              ; preds = %675
  %678 = call i32 @llvm.umax.i32(i32 %447, i32 3)
  br label %690

679:                                              ; preds = %671
  %680 = call i32 @llvm.umax.i32(i32 %447, i32 2)
  br label %690

681:                                              ; preds = %661
  %682 = icmp eq i32 %447, 0
  %683 = select i1 %669, i1 %682, i1 false
  %684 = select i1 %683, i32 1, i32 %447
  br label %690

685:                                              ; preds = %524
  %686 = load i32, ptr %440, align 8, !tbaa !152
  %687 = add i32 %686, 1
  store i32 %687, ptr %440, align 8, !tbaa !152
  %688 = zext i32 %686 to i64
  %689 = getelementptr inbounds %struct.VEC_access_p_base, ptr %440, i64 0, i32 2, i64 %688
  store ptr null, ptr %689, align 8, !tbaa !68
  br label %690

690:                                              ; preds = %685, %681, %679, %677, %675, %516, %450
  %691 = phi i32 [ %455, %450 ], [ %447, %685 ], [ %523, %516 ], [ %684, %681 ], [ %678, %677 ], [ %680, %679 ], [ 4, %675 ]
  %692 = getelementptr inbounds %struct.tree_common, ptr %446, i64 0, i32 1
  %693 = load ptr, ptr %692, align 8, !tbaa !79
  %694 = icmp eq ptr %693, null
  br i1 %694, label %695, label %445, !llvm.loop !163

695:                                              ; preds = %690, %438
  %696 = phi i32 [ 0, %438 ], [ %691, %690 ]
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %698, label %701

698:                                              ; preds = %695
  %699 = icmp eq ptr %440, null
  br i1 %699, label %701, label %700

700:                                              ; preds = %698
  call void @free(ptr noundef %440)
  br label %701

701:                                              ; preds = %700, %698, %695
  %702 = phi ptr [ %440, %695 ], [ null, %700 ], [ null, %698 ]
  %703 = phi i32 [ %696, %695 ], [ 0, %700 ], [ 0, %698 ]
  switch i32 %703, label %1010 [
    i32 0, label %1290
    i32 4, label %704
  ]

704:                                              ; preds = %701
  %705 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %706 = icmp eq ptr %705, null
  br i1 %706, label %713, label %707

707:                                              ; preds = %704
  %708 = load i32, ptr @dump_flags, align 4, !tbaa !83
  %709 = and i32 %708, 8
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %713, label %711

711:                                              ; preds = %707
  %712 = load ptr, ptr @bb_dereferences, align 8, !tbaa !68
  call fastcc void @dump_dereferences_table(ptr noundef nonnull %705, ptr noundef nonnull @.str.63, ptr noundef %712)
  br label %713

713:                                              ; preds = %711, %707, %704
  %714 = load ptr, ptr @cfun, align 8, !tbaa !68
  %715 = getelementptr inbounds %struct.function, ptr %714, i64 0, i32 1
  %716 = load ptr, ptr %715, align 8, !tbaa !148
  %717 = getelementptr inbounds %struct.control_flow_graph, ptr %716, i64 0, i32 5
  %718 = load i32, ptr %717, align 8, !tbaa !150
  %719 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %718) #22
  %720 = load ptr, ptr @cfun, align 8, !tbaa !68
  %721 = getelementptr inbounds %struct.function, ptr %720, i64 0, i32 1
  %722 = load ptr, ptr %721, align 8, !tbaa !148
  %723 = load ptr, ptr %722, align 8, !tbaa !164
  %724 = load i32, ptr %719, align 8, !tbaa !165
  %725 = add i32 %724, 1
  store i32 %725, ptr %719, align 8, !tbaa !165
  %726 = zext i32 %724 to i64
  %727 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %719, i64 0, i32 2, i64 %726
  store ptr %723, ptr %727, align 8, !tbaa !68
  %728 = load ptr, ptr @cfun, align 8, !tbaa !68
  %729 = getelementptr inbounds %struct.function, ptr %728, i64 0, i32 1
  %730 = load ptr, ptr %729, align 8, !tbaa !148
  %731 = load ptr, ptr %730, align 8, !tbaa !164
  %732 = getelementptr inbounds %struct.basic_block_def, ptr %731, i64 0, i32 6
  %733 = load ptr, ptr %732, align 8, !tbaa !167
  %734 = getelementptr inbounds %struct.control_flow_graph, ptr %730, i64 0, i32 1
  %735 = load ptr, ptr %734, align 8, !tbaa !169
  %736 = icmp eq ptr %733, %735
  br i1 %736, label %740, label %737

737:                                              ; preds = %713
  %738 = load i32, ptr %719, align 8, !tbaa !165
  br label %743

739:                                              ; preds = %743
  store i32 %746, ptr %719, align 8, !tbaa !165
  br label %740

740:                                              ; preds = %739, %713
  %741 = load i32, ptr %719, align 8, !tbaa !165
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %898, label %758

743:                                              ; preds = %737, %743
  %744 = phi i32 [ %738, %737 ], [ %746, %743 ]
  %745 = phi ptr [ %733, %737 ], [ %751, %743 ]
  %746 = add i32 %744, 1
  %747 = zext i32 %744 to i64
  %748 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %719, i64 0, i32 2, i64 %747
  store ptr %745, ptr %748, align 8, !tbaa !68
  %749 = getelementptr inbounds %struct.basic_block_def, ptr %745, i64 0, i32 2
  store ptr %745, ptr %749, align 8, !tbaa !170
  %750 = getelementptr inbounds %struct.basic_block_def, ptr %745, i64 0, i32 6
  %751 = load ptr, ptr %750, align 8, !tbaa !167
  %752 = load ptr, ptr @cfun, align 8, !tbaa !68
  %753 = getelementptr inbounds %struct.function, ptr %752, i64 0, i32 1
  %754 = load ptr, ptr %753, align 8, !tbaa !148
  %755 = getelementptr inbounds %struct.control_flow_graph, ptr %754, i64 0, i32 1
  %756 = load ptr, ptr %755, align 8, !tbaa !169
  %757 = icmp eq ptr %751, %756
  br i1 %757, label %739, label %743, !llvm.loop !171

758:                                              ; preds = %740, %895
  %759 = phi i32 [ %896, %895 ], [ %741, %740 ]
  %760 = add i32 %759, -1
  store i32 %760, ptr %719, align 8, !tbaa !165
  %761 = zext i32 %760 to i64
  %762 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %719, i64 0, i32 2, i64 %761
  %763 = load ptr, ptr %762, align 8, !tbaa !68
  %764 = getelementptr inbounds %struct.basic_block_def, ptr %763, i64 0, i32 2
  store ptr null, ptr %764, align 8, !tbaa !170
  %765 = load ptr, ptr @final_bbs, align 8, !tbaa !68
  %766 = getelementptr inbounds %struct.basic_block_def, ptr %763, i64 0, i32 9
  %767 = load i32, ptr %766, align 8, !tbaa !172
  %768 = call i32 @bitmap_bit_p(ptr noundef %765, i32 noundef %767) #22
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %770, label %895, !llvm.loop !173

770:                                              ; preds = %758
  %771 = load i32, ptr @func_param_count, align 4, !tbaa !83
  %772 = icmp sgt i32 %771, 0
  br i1 %772, label %773, label %847

773:                                              ; preds = %770
  %774 = getelementptr inbounds %struct.basic_block_def, ptr %763, i64 0, i32 1
  br label %775

775:                                              ; preds = %773, %842
  %776 = phi i32 [ %771, %773 ], [ %845, %842 ]
  %777 = phi i8 [ 0, %773 ], [ %843, %842 ]
  %778 = phi i32 [ 0, %773 ], [ %844, %842 ]
  %779 = load i32, ptr %766, align 8, !tbaa !172
  %780 = mul nsw i32 %779, %776
  br label %781

781:                                              ; preds = %830, %775
  %782 = phi i32 [ 0, %775 ], [ %831, %830 ]
  %783 = phi i64 [ 0, %775 ], [ %822, %830 ]
  %784 = phi i8 [ 1, %775 ], [ %823, %830 ]
  %785 = load ptr, ptr %774, align 8, !tbaa !68
  %786 = icmp eq ptr %785, null
  br i1 %786, label %789, label %787

787:                                              ; preds = %781
  %788 = load i32, ptr %785, align 8, !tbaa !174
  br label %789

789:                                              ; preds = %787, %781
  %790 = phi i32 [ %788, %787 ], [ 0, %781 ]
  %791 = icmp eq i32 %790, %782
  br i1 %791, label %796, label %792

792:                                              ; preds = %789
  %793 = zext i32 %782 to i64
  %794 = getelementptr inbounds %struct.VEC_edge_base, ptr %785, i64 0, i32 2, i64 %793
  %795 = load ptr, ptr %794, align 8, !tbaa !68
  br label %796

796:                                              ; preds = %792, %789
  %797 = phi ptr [ %795, %792 ], [ null, %789 ]
  br i1 %791, label %832, label %798

798:                                              ; preds = %796
  %799 = load ptr, ptr %797, align 8, !tbaa !176
  %800 = load ptr, ptr @cfun, align 8, !tbaa !68
  %801 = getelementptr inbounds %struct.function, ptr %800, i64 0, i32 1
  %802 = load ptr, ptr %801, align 8, !tbaa !148
  %803 = getelementptr inbounds %struct.control_flow_graph, ptr %802, i64 0, i32 1
  %804 = load ptr, ptr %803, align 8, !tbaa !169
  %805 = icmp eq ptr %799, %804
  br i1 %805, label %821, label %806

806:                                              ; preds = %798
  %807 = load i32, ptr @func_param_count, align 4, !tbaa !83
  %808 = getelementptr inbounds %struct.edge_def, ptr %797, i64 0, i32 1
  %809 = load ptr, ptr %808, align 8, !tbaa !178
  %810 = getelementptr inbounds %struct.basic_block_def, ptr %809, i64 0, i32 9
  %811 = load i32, ptr %810, align 8, !tbaa !172
  %812 = mul nsw i32 %807, %811
  %813 = add nsw i32 %812, %778
  %814 = icmp eq i8 %784, 0
  %815 = load ptr, ptr @bb_dereferences, align 8, !tbaa !68
  %816 = sext i32 %813 to i64
  %817 = getelementptr inbounds i64, ptr %815, i64 %816
  %818 = load i64, ptr %817, align 8, !tbaa !124
  br i1 %814, label %819, label %821

819:                                              ; preds = %806
  %820 = call i64 @llvm.smin.i64(i64 %818, i64 %783)
  br label %821

821:                                              ; preds = %806, %819, %798
  %822 = phi i64 [ %783, %798 ], [ %820, %819 ], [ %818, %806 ]
  %823 = phi i8 [ %784, %798 ], [ 0, %819 ], [ 0, %806 ]
  br i1 %786, label %826, label %824

824:                                              ; preds = %821
  %825 = load i32, ptr %785, align 8, !tbaa !174
  br label %826

826:                                              ; preds = %824, %821
  %827 = phi i32 [ %825, %824 ], [ 0, %821 ]
  %828 = icmp ult i32 %782, %827
  br i1 %828, label %830, label %829

829:                                              ; preds = %826
  call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.4) #22
  br label %830

830:                                              ; preds = %829, %826
  %831 = add i32 %782, 1
  br label %781, !llvm.loop !179

832:                                              ; preds = %796
  %833 = icmp eq i8 %784, 0
  br i1 %833, label %834, label %842

834:                                              ; preds = %832
  %835 = add nsw i32 %780, %778
  %836 = load ptr, ptr @bb_dereferences, align 8, !tbaa !68
  %837 = sext i32 %835 to i64
  %838 = getelementptr inbounds i64, ptr %836, i64 %837
  %839 = load i64, ptr %838, align 8, !tbaa !124
  %840 = icmp slt i64 %839, %783
  br i1 %840, label %841, label %842

841:                                              ; preds = %834
  store i64 %783, ptr %838, align 8, !tbaa !124
  br label %842

842:                                              ; preds = %841, %834, %832
  %843 = phi i8 [ %777, %832 ], [ 1, %841 ], [ %777, %834 ]
  %844 = add nuw nsw i32 %778, 1
  %845 = load i32, ptr @func_param_count, align 4, !tbaa !83
  %846 = icmp slt i32 %844, %845
  br i1 %846, label %775, label %847, !llvm.loop !180

847:                                              ; preds = %842, %770
  %848 = phi i8 [ 0, %770 ], [ %843, %842 ]
  %849 = icmp eq i8 %848, 0
  br i1 %849, label %895, label %850

850:                                              ; preds = %847
  %851 = load ptr, ptr @final_bbs, align 8, !tbaa !68
  %852 = load i32, ptr %766, align 8, !tbaa !172
  %853 = call i32 @bitmap_bit_p(ptr noundef %851, i32 noundef %852) #22
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %855, label %895

855:                                              ; preds = %850
  %856 = icmp eq ptr %763, null
  br label %857

857:                                              ; preds = %855, %893
  %858 = phi i32 [ %894, %893 ], [ 0, %855 ]
  br i1 %856, label %859, label %860

859:                                              ; preds = %857
  call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 687, ptr noundef nonnull @.str.4) #22
  br label %860

860:                                              ; preds = %859, %857
  %861 = load ptr, ptr %763, align 8, !tbaa !68
  %862 = icmp eq ptr %861, null
  br i1 %862, label %865, label %863

863:                                              ; preds = %860
  %864 = load i32, ptr %861, align 8, !tbaa !174
  br label %865

865:                                              ; preds = %863, %860
  %866 = phi i32 [ %864, %863 ], [ 0, %860 ]
  %867 = icmp eq i32 %866, %858
  br i1 %867, label %872, label %868

868:                                              ; preds = %865
  %869 = zext i32 %858 to i64
  %870 = getelementptr inbounds %struct.VEC_edge_base, ptr %861, i64 0, i32 2, i64 %869
  %871 = load ptr, ptr %870, align 8, !tbaa !68
  br label %872

872:                                              ; preds = %868, %865
  %873 = phi ptr [ %871, %868 ], [ null, %865 ]
  br i1 %867, label %895, label %874

874:                                              ; preds = %872
  %875 = load ptr, ptr %873, align 8, !tbaa !176
  %876 = getelementptr inbounds %struct.basic_block_def, ptr %875, i64 0, i32 2
  %877 = load ptr, ptr %876, align 8, !tbaa !170
  %878 = icmp eq ptr %877, null
  br i1 %878, label %879, label %884

879:                                              ; preds = %874
  store ptr %875, ptr %876, align 8, !tbaa !170
  %880 = load i32, ptr %719, align 8, !tbaa !165
  %881 = add i32 %880, 1
  store i32 %881, ptr %719, align 8, !tbaa !165
  %882 = zext i32 %880 to i64
  %883 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %719, i64 0, i32 2, i64 %882
  store ptr %875, ptr %883, align 8, !tbaa !68
  br label %884

884:                                              ; preds = %879, %874
  %885 = load ptr, ptr %763, align 8, !tbaa !68
  %886 = icmp eq ptr %885, null
  br i1 %886, label %889, label %887

887:                                              ; preds = %884
  %888 = load i32, ptr %885, align 8, !tbaa !174
  br label %889

889:                                              ; preds = %887, %884
  %890 = phi i32 [ %888, %887 ], [ 0, %884 ]
  %891 = icmp ult i32 %858, %890
  br i1 %891, label %893, label %892

892:                                              ; preds = %889
  call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.4) #22
  br label %893

893:                                              ; preds = %892, %889
  %894 = add i32 %858, 1
  br label %857, !llvm.loop !181

895:                                              ; preds = %872, %850, %847, %758
  %896 = load i32, ptr %719, align 8, !tbaa !165
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %898, label %758

898:                                              ; preds = %895, %740
  call void @free(ptr noundef %719)
  %899 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %900 = icmp eq ptr %899, null
  br i1 %900, label %907, label %901

901:                                              ; preds = %898
  %902 = load i32, ptr @dump_flags, align 4, !tbaa !83
  %903 = and i32 %902, 8
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %907, label %905

905:                                              ; preds = %901
  %906 = load ptr, ptr @bb_dereferences, align 8, !tbaa !68
  call fastcc void @dump_dereferences_table(ptr noundef nonnull %899, ptr noundef nonnull @.str.64, ptr noundef %906)
  br label %907

907:                                              ; preds = %905, %901, %898
  %908 = load i32, ptr @func_param_count, align 4, !tbaa !83
  %909 = icmp sgt i32 %908, 0
  br i1 %909, label %910, label %915

910:                                              ; preds = %907
  %911 = load ptr, ptr @cfun, align 8, !tbaa !68
  %912 = getelementptr inbounds %struct.function, ptr %911, i64 0, i32 1
  %913 = load ptr, ptr @bb_dereferences, align 8
  %914 = zext nneg i32 %908 to i64
  br label %918

915:                                              ; preds = %951, %907
  %916 = load i32, ptr @func_param_count, align 4, !tbaa !83
  %917 = icmp sgt i32 %916, 0
  br i1 %917, label %954, label %1010

918:                                              ; preds = %910, %951
  %919 = phi i64 [ 0, %910 ], [ %952, %951 ]
  %920 = getelementptr inbounds %struct.VEC_access_p_base, ptr %702, i64 0, i32 2, i64 %919
  %921 = load ptr, ptr %920, align 8, !tbaa !68
  %922 = icmp eq ptr %921, null
  %923 = icmp eq ptr %921, @no_accesses_representant
  %924 = or i1 %922, %923
  br i1 %924, label %951, label %925

925:                                              ; preds = %918
  %926 = load ptr, ptr %912, align 8, !tbaa !148
  %927 = load ptr, ptr %926, align 8, !tbaa !164
  %928 = getelementptr inbounds %struct.basic_block_def, ptr %927, i64 0, i32 9
  %929 = load i32, ptr %928, align 8, !tbaa !172
  %930 = mul nsw i32 %929, %908
  %931 = trunc i64 %919 to i32
  %932 = add nsw i32 %930, %931
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds i64, ptr %913, i64 %933
  br label %935

935:                                              ; preds = %925, %947
  %936 = phi ptr [ %949, %947 ], [ %921, %925 ]
  %937 = load i64, ptr %936, align 8, !tbaa !159
  %938 = getelementptr inbounds %struct.access, ptr %936, i64 0, i32 1
  %939 = load i64, ptr %938, align 8, !tbaa !160
  %940 = add nsw i64 %939, %937
  %941 = load i64, ptr %934, align 8, !tbaa !124
  %942 = icmp sgt i64 %940, %941
  br i1 %942, label %943, label %947

943:                                              ; preds = %935
  %944 = getelementptr inbounds %struct.access, ptr %936, i64 0, i32 14
  %945 = load i16, ptr %944, align 8
  %946 = or i16 %945, 8192
  store i16 %946, ptr %944, align 8
  br label %947

947:                                              ; preds = %935, %943
  %948 = getelementptr inbounds %struct.access, ptr %936, i64 0, i32 6
  %949 = load ptr, ptr %948, align 8, !tbaa !182
  %950 = icmp eq ptr %949, null
  br i1 %950, label %951, label %935, !llvm.loop !183

951:                                              ; preds = %947, %918
  %952 = add nuw nsw i64 %919, 1
  %953 = icmp eq i64 %952, %914
  br i1 %953, label %915, label %918, !llvm.loop !184

954:                                              ; preds = %915, %1005
  %955 = phi i64 [ %1006, %1005 ], [ 0, %915 ]
  %956 = getelementptr inbounds %struct.VEC_access_p_base, ptr %702, i64 0, i32 2, i64 %955
  %957 = load ptr, ptr %956, align 8, !tbaa !68
  %958 = icmp eq ptr %957, null
  br i1 %958, label %1005, label %959

959:                                              ; preds = %954, %1001
  %960 = phi ptr [ %1003, %1001 ], [ %957, %954 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #22
  %961 = icmp eq ptr %960, @no_accesses_representant
  br i1 %961, label %1001, label %962

962:                                              ; preds = %959
  %963 = getelementptr inbounds %struct.access, ptr %960, i64 0, i32 2
  %964 = load ptr, ptr %963, align 8, !tbaa !185
  %965 = getelementptr inbounds %struct.tree_common, ptr %964, i64 0, i32 2
  %966 = load ptr, ptr %965, align 8, !tbaa !79
  %967 = load i64, ptr %966, align 8
  %968 = trunc i64 %967 to i16
  switch i16 %968, label %1001 [
    i16 10, label %969
    i16 12, label %969
  ]

969:                                              ; preds = %962, %962
  %970 = getelementptr inbounds %struct.access, ptr %960, i64 0, i32 14
  %971 = load i16, ptr %970, align 8
  %972 = and i16 %971, 2048
  %973 = icmp eq i16 %972, 0
  br i1 %973, label %974, label %1001

974:                                              ; preds = %969
  %975 = getelementptr inbounds %struct.access, ptr %960, i64 0, i32 3
  %976 = load ptr, ptr %975, align 8, !tbaa !186
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef %976) #22
  %977 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %977, ptr %2, align 8, !tbaa !68
  br label %978

978:                                              ; preds = %974, %995
  %979 = phi ptr [ %960, %974 ], [ %997, %995 ]
  %980 = getelementptr inbounds %struct.access, ptr %979, i64 0, i32 5
  %981 = load ptr, ptr %980, align 8, !tbaa !158
  %982 = load i32, ptr %981, align 8
  %983 = and i32 %982, 254
  %984 = add nsw i32 %983, -10
  %985 = icmp ult i32 %984, -4
  br i1 %985, label %989, label %986

986:                                              ; preds = %978
  %987 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %981, i64 0, i32 2
  %988 = load ptr, ptr %987, align 8, !tbaa !79
  br label %989

989:                                              ; preds = %986, %978
  %990 = phi ptr [ %988, %986 ], [ null, %978 ]
  %991 = call i32 @walk_aliased_vdefs(ptr noundef nonnull %3, ptr noundef %990, ptr noundef nonnull @mark_maybe_modified, ptr noundef nonnull %960, ptr noundef nonnull %2) #22
  %992 = load i16, ptr %970, align 8
  %993 = and i16 %992, 2048
  %994 = icmp eq i16 %993, 0
  br i1 %994, label %995, label %999

995:                                              ; preds = %989
  %996 = getelementptr inbounds %struct.access, ptr %979, i64 0, i32 9
  %997 = load ptr, ptr %996, align 8, !tbaa !156
  %998 = icmp eq ptr %997, null
  br i1 %998, label %999, label %978, !llvm.loop !187

999:                                              ; preds = %989, %995
  %1000 = load ptr, ptr %2, align 8, !tbaa !68
  call void @bitmap_obstack_free(ptr noundef %1000) #22
  store ptr null, ptr %2, align 8, !tbaa !68
  br label %1001

1001:                                             ; preds = %969, %999, %962, %959
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  %1002 = getelementptr inbounds %struct.access, ptr %960, i64 0, i32 6
  %1003 = load ptr, ptr %1002, align 8, !tbaa !68
  %1004 = icmp eq ptr %1003, null
  br i1 %1004, label %1005, label %959, !llvm.loop !188

1005:                                             ; preds = %1001, %954
  %1006 = add nuw nsw i64 %955, 1
  %1007 = load i32, ptr @func_param_count, align 4, !tbaa !83
  %1008 = sext i32 %1007 to i64
  %1009 = icmp slt i64 %1006, %1008
  br i1 %1009, label %954, label %1010, !llvm.loop !189

1010:                                             ; preds = %1005, %915, %701
  %1011 = load i32, ptr @func_param_count, align 4, !tbaa !83
  %1012 = icmp sgt i32 %1011, 0
  br i1 %1012, label %1013, label %1152

1013:                                             ; preds = %1010, %1145
  %1014 = phi i64 [ %1148, %1145 ], [ 0, %1010 ]
  %1015 = phi i8 [ %1147, %1145 ], [ 0, %1010 ]
  %1016 = phi i32 [ %1146, %1145 ], [ 0, %1010 ]
  %1017 = getelementptr inbounds %struct.VEC_access_p_base, ptr %702, i64 0, i32 2, i64 %1014
  %1018 = load ptr, ptr %1017, align 8, !tbaa !68
  %1019 = icmp eq ptr %1018, null
  %1020 = icmp eq ptr %1018, @no_accesses_representant
  %1021 = or i1 %1019, %1020
  br i1 %1021, label %1138, label %1022

1022:                                             ; preds = %1013
  %1023 = getelementptr inbounds %struct.access, ptr %1018, i64 0, i32 14
  %1024 = load i16, ptr %1023, align 8
  %1025 = and i16 %1024, 4096
  %1026 = icmp eq i16 %1025, 0
  br i1 %1026, label %1035, label %1027

1027:                                             ; preds = %1022
  %1028 = add nsw i32 %1016, 1
  %1029 = and i16 %1024, 10240
  %1030 = icmp eq i16 %1029, 0
  br i1 %1030, label %1032, label %1031

1031:                                             ; preds = %1027
  store ptr null, ptr %1017, align 8, !tbaa !68
  br label %1145

1032:                                             ; preds = %1027
  %1033 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 7), align 4, !tbaa !190
  %1034 = add nsw i32 %1033, 1
  store i32 %1034, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 7), align 4, !tbaa !190
  br label %1145

1035:                                             ; preds = %1022
  %1036 = getelementptr inbounds %struct.access, ptr %1018, i64 0, i32 2
  %1037 = load ptr, ptr %1036, align 8, !tbaa !185
  %1038 = getelementptr inbounds %struct.tree_common, ptr %1037, i64 0, i32 2
  %1039 = load ptr, ptr %1038, align 8, !tbaa !79
  %1040 = getelementptr inbounds %struct.tree_type, ptr %1039, i64 0, i32 2
  %1041 = load ptr, ptr %1040, align 8, !tbaa !79
  %1042 = call i64 @tree_low_cst(ptr noundef %1041, i32 noundef 1) #22
  %1043 = trunc i64 %1042 to i32
  %1044 = icmp sgt i32 %1043, 0
  br i1 %1044, label %1046, label %1045

1045:                                             ; preds = %1035
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3411, ptr noundef nonnull @.str.4) #22
  br label %1046

1046:                                             ; preds = %1045, %1035
  %1047 = load ptr, ptr %1038, align 8, !tbaa !79
  %1048 = load i64, ptr %1047, align 8
  %1049 = trunc i64 %1048 to i16
  switch i16 %1049, label %1057 [
    i16 10, label %1050
    i16 12, label %1050
  ]

1050:                                             ; preds = %1046, %1046
  %1051 = getelementptr inbounds %struct.tree_common, ptr %1047, i64 0, i32 2
  %1052 = load ptr, ptr %1051, align 8, !tbaa !79
  %1053 = getelementptr inbounds %struct.tree_type, ptr %1052, i64 0, i32 2
  %1054 = load ptr, ptr %1053, align 8, !tbaa !79
  %1055 = call i64 @tree_low_cst(ptr noundef %1054, i32 noundef 1) #22
  %1056 = trunc i64 %1055 to i32
  br label %1057

1057:                                             ; preds = %1050, %1046
  %1058 = phi i32 [ %1056, %1050 ], [ %1043, %1046 ]
  %1059 = phi i1 [ false, %1050 ], [ true, %1046 ]
  %1060 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %1061 = icmp eq ptr %1060, null
  br i1 %1061, label %1076, label %1062

1062:                                             ; preds = %1057
  %1063 = call i64 @fwrite(ptr nonnull @.str.67, i64 33, i64 1, ptr nonnull %1060)
  %1064 = load ptr, ptr @dump_file, align 8, !tbaa !68
  call void @print_generic_expr(ptr noundef %1064, ptr noundef %1037, i32 noundef 0) #22
  %1065 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %1066 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1037, i64 0, i32 2
  %1067 = load i32, ptr %1066, align 4, !tbaa !79
  %1068 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1065, ptr noundef nonnull @.str.26, i32 noundef %1067)
  %1069 = icmp eq ptr %1018, null
  br i1 %1069, label %1103, label %1070

1070:                                             ; preds = %1062, %1070
  %1071 = phi ptr [ %1074, %1070 ], [ %1018, %1062 ]
  %1072 = load ptr, ptr @dump_file, align 8, !tbaa !68
  call fastcc void @dump_access(ptr noundef %1072, ptr noundef nonnull %1071)
  %1073 = getelementptr inbounds %struct.access, ptr %1071, i64 0, i32 6
  %1074 = load ptr, ptr %1073, align 8, !tbaa !182
  %1075 = icmp eq ptr %1074, null
  br i1 %1075, label %1076, label %1070, !llvm.loop !192

1076:                                             ; preds = %1070, %1057
  %1077 = icmp eq ptr %1018, null
  br i1 %1077, label %1103, label %1078

1078:                                             ; preds = %1076, %1097
  %1079 = phi i32 [ %1087, %1097 ], [ 0, %1076 ]
  %1080 = phi ptr [ %1101, %1097 ], [ %1018, %1076 ]
  %1081 = phi i32 [ %1099, %1097 ], [ 0, %1076 ]
  %1082 = getelementptr inbounds %struct.access, ptr %1080, i64 0, i32 2
  %1083 = load ptr, ptr %1082, align 8, !tbaa !185
  %1084 = icmp eq ptr %1037, %1083
  br i1 %1084, label %1086, label %1085

1085:                                             ; preds = %1078
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3439, ptr noundef nonnull @.str.4) #22
  br label %1086

1086:                                             ; preds = %1085, %1078
  %1087 = add nuw nsw i32 %1079, 1
  br i1 %1059, label %1093, label %1088

1088:                                             ; preds = %1086
  %1089 = getelementptr inbounds %struct.access, ptr %1080, i64 0, i32 14
  %1090 = load i16, ptr %1089, align 8
  %1091 = and i16 %1090, 10240
  %1092 = icmp eq i16 %1091, 0
  br i1 %1092, label %1093, label %1097

1093:                                             ; preds = %1088, %1086
  %1094 = getelementptr inbounds %struct.access, ptr %1080, i64 0, i32 1
  %1095 = load i64, ptr %1094, align 8, !tbaa !160
  %1096 = trunc i64 %1095 to i32
  br label %1097

1097:                                             ; preds = %1093, %1088
  %1098 = phi i32 [ %1096, %1093 ], [ %1043, %1088 ]
  %1099 = add i32 %1098, %1081
  %1100 = getelementptr inbounds %struct.access, ptr %1080, i64 0, i32 6
  %1101 = load ptr, ptr %1100, align 8, !tbaa !182
  %1102 = icmp eq ptr %1101, null
  br i1 %1102, label %1103, label %1078, !llvm.loop !193

1103:                                             ; preds = %1097, %1062, %1076
  %1104 = phi i32 [ 0, %1076 ], [ 0, %1062 ], [ %1099, %1097 ]
  %1105 = phi i32 [ 0, %1076 ], [ 0, %1062 ], [ %1087, %1097 ]
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1107, label %1108

1107:                                             ; preds = %1103
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3449, ptr noundef nonnull @.str.4) #22
  br label %1108

1108:                                             ; preds = %1107, %1103
  %1109 = load ptr, ptr @cfun, align 8, !tbaa !68
  %1110 = call zeroext i8 @optimize_function_for_size_p(ptr noundef %1109) #22
  %1111 = icmp eq i8 %1110, 0
  br i1 %1111, label %1112, label %1117

1112:                                             ; preds = %1108
  %1113 = load ptr, ptr @compiler_params, align 8, !tbaa !68
  %1114 = getelementptr inbounds %struct.param_info, ptr %1113, i64 118, i32 1
  %1115 = load i32, ptr %1114, align 8, !tbaa !109
  %1116 = mul nsw i32 %1115, %1043
  br label %1117

1117:                                             ; preds = %1112, %1108
  %1118 = phi i32 [ %1116, %1112 ], [ %1043, %1108 ]
  %1119 = icmp sge i32 %1104, %1058
  %1120 = icmp sgt i32 %1104, %1118
  %1121 = select i1 %1119, i1 true, i1 %1120
  br i1 %1121, label %1127, label %1122

1122:                                             ; preds = %1117
  %1123 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %1124 = icmp eq ptr %1123, null
  br i1 %1124, label %1127, label %1125

1125:                                             ; preds = %1122
  %1126 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1123, ptr noundef nonnull @.str.68, i32 noundef %1105)
  br label %1127

1127:                                             ; preds = %1125, %1122, %1117
  %1128 = phi i32 [ %1105, %1125 ], [ %1105, %1122 ], [ 0, %1117 ]
  %1129 = icmp eq i32 %1128, 0
  br i1 %1129, label %1130, label %1132

1130:                                             ; preds = %1127
  store ptr null, ptr %1017, align 8, !tbaa !68
  %1131 = add nsw i32 %1016, 1
  br label %1145

1132:                                             ; preds = %1127
  %1133 = add nsw i32 %1128, %1016
  %1134 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 8), align 4, !tbaa !194
  %1135 = add nsw i32 %1134, 1
  store i32 %1135, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 8), align 4, !tbaa !194
  %1136 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 9), align 4, !tbaa !195
  %1137 = add nsw i32 %1136, %1128
  store i32 %1137, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 9), align 4, !tbaa !195
  br label %1145

1138:                                             ; preds = %1013
  br i1 %1020, label %1139, label %1142

1139:                                             ; preds = %1138
  %1140 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 6), align 4, !tbaa !196
  %1141 = add nsw i32 %1140, 1
  store i32 %1141, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 6), align 4, !tbaa !196
  br label %1142

1142:                                             ; preds = %1139, %1138
  %1143 = phi i8 [ 1, %1139 ], [ %1015, %1138 ]
  %1144 = add nsw i32 %1016, 1
  br label %1145

1145:                                             ; preds = %1142, %1132, %1130, %1032, %1031
  %1146 = phi i32 [ %1144, %1142 ], [ %1028, %1031 ], [ %1028, %1032 ], [ %1131, %1130 ], [ %1133, %1132 ]
  %1147 = phi i8 [ %1143, %1142 ], [ %1015, %1031 ], [ 1, %1032 ], [ %1015, %1130 ], [ 1, %1132 ]
  %1148 = add nuw nsw i64 %1014, 1
  %1149 = load i32, ptr @func_param_count, align 4, !tbaa !83
  %1150 = sext i32 %1149 to i64
  %1151 = icmp slt i64 %1148, %1150
  br i1 %1151, label %1013, label %1152, !llvm.loop !197

1152:                                             ; preds = %1145, %1010
  %1153 = phi i32 [ 0, %1010 ], [ %1146, %1145 ]
  %1154 = phi i8 [ 0, %1010 ], [ %1147, %1145 ]
  %1155 = icmp eq i8 %1154, 0
  %1156 = load ptr, ptr @dump_file, align 8
  %1157 = icmp ne ptr %1156, null
  %1158 = select i1 %1155, i1 %1157, i1 false
  br i1 %1158, label %1159, label %1161

1159:                                             ; preds = %1152
  %1160 = call i64 @fwrite(ptr nonnull @.str.62, i64 33, i64 1, ptr nonnull %1156)
  br label %1161

1161:                                             ; preds = %1159, %1152
  br i1 %1155, label %1286, label %1162

1162:                                             ; preds = %1161
  %1163 = icmp sgt i32 %1153, 0
  br i1 %1163, label %1165, label %1164

1164:                                             ; preds = %1162
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3572, ptr noundef nonnull @.str.4) #22
  br label %1165

1165:                                             ; preds = %1164, %1162
  %1166 = load ptr, ptr @current_function_decl, align 8, !tbaa !68
  %1167 = call ptr @ipa_get_vector_of_formal_parms(ptr noundef %1166) #22
  %1168 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %1153, i64 noundef 8, i64 noundef 56) #22
  %1169 = load i32, ptr @func_param_count, align 4, !tbaa !83
  %1170 = icmp sgt i32 %1169, 0
  br i1 %1170, label %1171, label %1283

1171:                                             ; preds = %1165
  %1172 = load ptr, ptr @current_function_decl, align 8, !tbaa !68
  %1173 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1172, i64 0, i32 2
  %1174 = icmp eq ptr %1167, null
  %1175 = icmp eq ptr %1167, null
  br label %1176

1176:                                             ; preds = %1171, %1277
  %1177 = phi i64 [ 0, %1171 ], [ %1278, %1277 ]
  %1178 = phi ptr [ %1173, %1171 ], [ %1279, %1277 ]
  %1179 = load ptr, ptr %1178, align 8, !tbaa !79
  %1180 = getelementptr inbounds %struct.VEC_access_p_base, ptr %702, i64 0, i32 2, i64 %1177
  %1181 = load ptr, ptr %1180, align 8, !tbaa !68
  %1182 = icmp eq ptr %1181, null
  %1183 = icmp eq ptr %1181, @no_accesses_representant
  %1184 = or i1 %1182, %1183
  br i1 %1184, label %1185, label %1215

1185:                                             ; preds = %1176
  %1186 = load i32, ptr %1168, align 8, !tbaa !198
  %1187 = add i32 %1186, 1
  store i32 %1187, ptr %1168, align 8, !tbaa !198
  %1188 = zext i32 %1186 to i64
  %1189 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1168, i64 0, i32 2, i64 %1188
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1189, i8 0, i64 56, i1 false)
  br i1 %1175, label %1192, label %1190

1190:                                             ; preds = %1185
  %1191 = load i32, ptr %1167, align 8, !tbaa !200
  br label %1192

1192:                                             ; preds = %1190, %1185
  %1193 = phi i32 [ %1191, %1190 ], [ 0, %1185 ]
  %1194 = icmp sgt i32 %1193, 0
  br i1 %1194, label %1195, label %1205

1195:                                             ; preds = %1192
  %1196 = zext nneg i32 %1193 to i64
  br label %1197

1197:                                             ; preds = %1195, %1202
  %1198 = phi i64 [ 0, %1195 ], [ %1203, %1202 ]
  %1199 = getelementptr inbounds %struct.VEC_tree_base, ptr %1167, i64 0, i32 2, i64 %1198
  %1200 = load ptr, ptr %1199, align 8, !tbaa !68
  %1201 = icmp eq ptr %1200, %1179
  br i1 %1201, label %1206, label %1202

1202:                                             ; preds = %1197
  %1203 = add nuw nsw i64 %1198, 1
  %1204 = icmp eq i64 %1203, %1196
  br i1 %1204, label %1205, label %1197, !llvm.loop !202

1205:                                             ; preds = %1202, %1192
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3552, ptr noundef nonnull @.str.4) #22
  br label %1208

1206:                                             ; preds = %1197
  %1207 = trunc i64 %1198 to i32
  br label %1208

1208:                                             ; preds = %1206, %1205
  %1209 = phi i32 [ 0, %1205 ], [ %1207, %1206 ]
  %1210 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1168, i64 0, i32 2, i64 %1188, i32 6
  store i32 %1209, ptr %1210, align 8, !tbaa !203
  store ptr %1179, ptr %1189, align 8, !tbaa !205
  %1211 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1168, i64 0, i32 2, i64 %1188, i32 7
  %1212 = load i8, ptr %1211, align 4
  %1213 = select i1 %1182, i8 1, i8 2
  %1214 = or i8 %1212, %1213
  store i8 %1214, ptr %1211, align 4
  br label %1277

1215:                                             ; preds = %1176
  br i1 %1174, label %1218, label %1216

1216:                                             ; preds = %1215
  %1217 = load i32, ptr %1167, align 8, !tbaa !200
  br label %1218

1218:                                             ; preds = %1216, %1215
  %1219 = phi i32 [ %1217, %1216 ], [ 0, %1215 ]
  %1220 = icmp sgt i32 %1219, 0
  br i1 %1220, label %1221, label %1231

1221:                                             ; preds = %1218
  %1222 = zext nneg i32 %1219 to i64
  br label %1223

1223:                                             ; preds = %1221, %1228
  %1224 = phi i64 [ 0, %1221 ], [ %1229, %1228 ]
  %1225 = getelementptr inbounds %struct.VEC_tree_base, ptr %1167, i64 0, i32 2, i64 %1224
  %1226 = load ptr, ptr %1225, align 8, !tbaa !68
  %1227 = icmp eq ptr %1226, %1179
  br i1 %1227, label %1232, label %1228

1228:                                             ; preds = %1223
  %1229 = add nuw nsw i64 %1224, 1
  %1230 = icmp eq i64 %1229, %1222
  br i1 %1230, label %1231, label %1223, !llvm.loop !202

1231:                                             ; preds = %1228, %1218
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3552, ptr noundef nonnull @.str.4) #22
  br label %1234

1232:                                             ; preds = %1223
  %1233 = trunc i64 %1224 to i32
  br label %1234

1234:                                             ; preds = %1232, %1231
  %1235 = phi i32 [ 0, %1231 ], [ %1233, %1232 ]
  %1236 = icmp eq ptr %1181, null
  br i1 %1236, label %1277, label %1237

1237:                                             ; preds = %1234, %1267
  %1238 = phi ptr [ %1275, %1267 ], [ %1181, %1234 ]
  %1239 = load i32, ptr %1168, align 8, !tbaa !198
  %1240 = add i32 %1239, 1
  store i32 %1240, ptr %1168, align 8, !tbaa !198
  %1241 = zext i32 %1239 to i64
  %1242 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1168, i64 0, i32 2, i64 %1241
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1242, i8 0, i64 56, i1 false)
  %1243 = getelementptr inbounds %struct.access, ptr %1238, i64 0, i32 2
  %1244 = load ptr, ptr %1243, align 8, !tbaa !185
  %1245 = icmp eq ptr %1244, %1179
  br i1 %1245, label %1247, label %1246

1246:                                             ; preds = %1237
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3602, ptr noundef nonnull @.str.4) #22
  br label %1247

1247:                                             ; preds = %1246, %1237
  %1248 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1168, i64 0, i32 2, i64 %1241, i32 6
  store i32 %1235, ptr %1248, align 8, !tbaa !203
  %1249 = load ptr, ptr %1243, align 8, !tbaa !185
  store ptr %1249, ptr %1242, align 8, !tbaa !205
  %1250 = getelementptr inbounds %struct.access, ptr %1238, i64 0, i32 4
  %1251 = load ptr, ptr %1250, align 8, !tbaa !206
  %1252 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1168, i64 0, i32 2, i64 %1241, i32 1
  store ptr %1251, ptr %1252, align 8, !tbaa !207
  %1253 = load i64, ptr %1238, align 8, !tbaa !159
  %1254 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1168, i64 0, i32 2, i64 %1241, i32 5
  store i64 %1253, ptr %1254, align 8, !tbaa !208
  %1255 = getelementptr inbounds %struct.tree_common, ptr %1249, i64 0, i32 2
  %1256 = load ptr, ptr %1255, align 8, !tbaa !79
  %1257 = load i64, ptr %1256, align 8
  %1258 = trunc i64 %1257 to i16
  switch i16 %1258, label %1267 [
    i16 10, label %1259
    i16 12, label %1259
  ]

1259:                                             ; preds = %1247, %1247
  %1260 = getelementptr inbounds %struct.access, ptr %1238, i64 0, i32 14
  %1261 = load i16, ptr %1260, align 8
  %1262 = and i16 %1261, 2048
  %1263 = icmp eq i16 %1262, 0
  br i1 %1263, label %1264, label %1267

1264:                                             ; preds = %1259
  %1265 = and i16 %1261, 8192
  %1266 = icmp ne i16 %1265, 0
  br label %1267

1267:                                             ; preds = %1259, %1264, %1247
  %1268 = phi i1 [ %1266, %1264 ], [ false, %1247 ], [ true, %1259 ]
  %1269 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1168, i64 0, i32 2, i64 %1241, i32 7
  %1270 = load i8, ptr %1269, align 4
  %1271 = select i1 %1268, i8 4, i8 0
  %1272 = and i8 %1270, -5
  %1273 = or disjoint i8 %1272, %1271
  store i8 %1273, ptr %1269, align 4
  %1274 = getelementptr inbounds %struct.access, ptr %1238, i64 0, i32 6
  %1275 = load ptr, ptr %1274, align 8, !tbaa !182
  %1276 = icmp eq ptr %1275, null
  br i1 %1276, label %1277, label %1237, !llvm.loop !209

1277:                                             ; preds = %1267, %1208, %1234
  %1278 = add nuw nsw i64 %1177, 1
  %1279 = getelementptr inbounds %struct.tree_common, ptr %1179, i64 0, i32 1
  %1280 = load i32, ptr @func_param_count, align 4, !tbaa !83
  %1281 = sext i32 %1280 to i64
  %1282 = icmp slt i64 %1278, %1281
  br i1 %1282, label %1176, label %1283, !llvm.loop !210

1283:                                             ; preds = %1277, %1165
  %1284 = icmp eq ptr %1167, null
  br i1 %1284, label %1286, label %1285

1285:                                             ; preds = %1283
  call void @free(ptr noundef %1167)
  br label %1286

1286:                                             ; preds = %1285, %1283, %1161
  %1287 = phi ptr [ null, %1161 ], [ %1168, %1283 ], [ %1168, %1285 ]
  %1288 = icmp eq ptr %702, null
  br i1 %1288, label %1290, label %1289

1289:                                             ; preds = %1286
  call void @free(ptr noundef %702)
  br label %1290

1290:                                             ; preds = %701, %1286, %1289
  %1291 = phi ptr [ null, %701 ], [ %1287, %1286 ], [ %1287, %1289 ]
  %1292 = icmp eq ptr %1291, null
  br i1 %1292, label %1565, label %1293

1293:                                             ; preds = %1290
  %1294 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %1295 = icmp eq ptr %1294, null
  br i1 %1295, label %1298, label %1296

1296:                                             ; preds = %1293
  %1297 = load ptr, ptr @current_function_decl, align 8, !tbaa !68
  call void @ipa_dump_param_adjustments(ptr noundef nonnull %1294, ptr noundef nonnull %1291, ptr noundef %1297) #22
  br label %1298

1298:                                             ; preds = %1296, %1293
  %1299 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 13
  %1300 = load ptr, ptr %1299, align 8, !tbaa !68
  %1301 = icmp eq ptr %1300, null
  br i1 %1301, label %1308, label %1302

1302:                                             ; preds = %1298, %1302
  %1303 = phi ptr [ %1306, %1302 ], [ %1300, %1298 ]
  %1304 = load ptr, ptr %1303, align 8, !tbaa !100
  call void @ipa_modify_formal_parameters(ptr noundef %1304, ptr noundef nonnull %1291, ptr noundef nonnull @.str.69) #22
  %1305 = getelementptr inbounds %struct.cgraph_node, ptr %1303, i64 0, i32 3
  %1306 = load ptr, ptr %1305, align 8, !tbaa !68
  %1307 = icmp eq ptr %1306, null
  br i1 %1307, label %1308, label %1302, !llvm.loop !211

1308:                                             ; preds = %1302, %1298
  %1309 = load ptr, ptr @current_function_decl, align 8, !tbaa !68
  %1310 = getelementptr inbounds %struct.tree_decl_common, ptr %1309, i64 0, i32 7
  %1311 = load ptr, ptr %1310, align 8, !tbaa !79
  %1312 = icmp eq ptr %1311, null
  br i1 %1312, label %1313, label %1323

1313:                                             ; preds = %1308
  %1314 = call ptr @copy_node_stat(ptr noundef %1309) #22
  %1315 = getelementptr inbounds %struct.tree_decl_common, ptr %1314, i64 0, i32 2
  %1316 = load i64, ptr %1315, align 8
  %1317 = or i64 %1316, 2048
  store i64 %1317, ptr %1315, align 8
  %1318 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1314, i64 0, i32 1
  store ptr null, ptr %1318, align 8, !tbaa !79
  call void @set_decl_rtl(ptr noundef %1314, ptr noundef null) #22
  %1319 = getelementptr inbounds %struct.tree_function_decl, ptr %1314, i64 0, i32 1
  store ptr null, ptr %1319, align 8, !tbaa !79
  %1320 = getelementptr inbounds %struct.tree_decl_common, ptr %1309, i64 0, i32 2
  %1321 = load i64, ptr %1320, align 8
  %1322 = or i64 %1321, 4096
  store i64 %1322, ptr %1320, align 8
  store ptr %1314, ptr %1310, align 8, !tbaa !79
  br label %1323

1323:                                             ; preds = %1313, %1308
  %1324 = load ptr, ptr @current_function_decl, align 8, !tbaa !68
  call void @ipa_modify_formal_parameters(ptr noundef %1324, ptr noundef nonnull %1291, ptr noundef nonnull @.str.69) #22
  call fastcc void @scan_function(ptr noundef nonnull @sra_ipa_modify_expr, ptr noundef nonnull @sra_ipa_modify_assign, ptr noundef nonnull @replace_removed_params_ssa_names, i8 noundef zeroext 0, ptr noundef nonnull %1291)
  %1325 = load i32, ptr %1291, align 8, !tbaa !198
  %1326 = icmp sgt i32 %1325, 0
  br i1 %1326, label %1327, label %1419

1327:                                             ; preds = %1323
  %1328 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 1
  %1329 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %1330 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %1331 = zext nneg i32 %1325 to i64
  br label %1332

1332:                                             ; preds = %1327, %1416
  %1333 = phi i64 [ 0, %1327 ], [ %1417, %1416 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #22
  %1334 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1291, i64 0, i32 2, i64 %1333
  %1335 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1291, i64 0, i32 2, i64 %1333, i32 7
  %1336 = load i8, ptr %1335, align 4
  %1337 = and i8 %1336, 1
  %1338 = icmp eq i8 %1337, 0
  br i1 %1338, label %1339, label %1416

1339:                                             ; preds = %1332
  %1340 = load ptr, ptr %1334, align 8, !tbaa !205
  %1341 = call zeroext i8 @is_gimple_reg(ptr noundef %1340) #22
  %1342 = icmp eq i8 %1341, 0
  br i1 %1342, label %1416, label %1343

1343:                                             ; preds = %1339
  %1344 = load ptr, ptr @cfun, align 8, !tbaa !68
  %1345 = load ptr, ptr %1334, align 8, !tbaa !205
  %1346 = call ptr @gimple_default_def(ptr noundef %1344, ptr noundef %1345) #22
  %1347 = icmp eq ptr %1346, null
  br i1 %1347, label %1416, label %1348

1348:                                             ; preds = %1343
  %1349 = getelementptr inbounds %struct.tree_ssa_name, ptr %1346, i64 0, i32 5
  store ptr %1349, ptr %1328, align 8, !tbaa !116
  %1350 = getelementptr inbounds %struct.tree_ssa_name, ptr %1346, i64 0, i32 5, i32 1
  %1351 = load ptr, ptr %1350, align 8, !tbaa !119
  store ptr %1351, ptr %1, align 8, !tbaa !120
  %1352 = icmp eq ptr %1351, %1349
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1329, i8 0, i64 40, i1 false)
  br i1 %1352, label %1357, label %1353

1353:                                             ; preds = %1348
  call fastcc void @link_use_stmts_after(ptr noundef %1351, ptr noundef nonnull %1)
  %1354 = load ptr, ptr %1, align 8, !tbaa !120
  %1355 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1354, i64 0, i32 2
  %1356 = load ptr, ptr %1355, align 8, !tbaa !79
  br label %1357

1357:                                             ; preds = %1353, %1348
  %1358 = phi ptr [ %1356, %1353 ], [ null, %1348 ]
  %1359 = load ptr, ptr %1, align 8, !tbaa !120
  %1360 = load ptr, ptr %1328, align 8, !tbaa !116
  %1361 = icmp eq ptr %1359, %1360
  br i1 %1361, label %1416, label %1362

1362:                                             ; preds = %1357, %1411
  %1363 = phi ptr [ %1412, %1411 ], [ %1358, %1357 ]
  %1364 = load i32, ptr %1363, align 8
  %1365 = and i32 %1364, 255
  %1366 = icmp eq i32 %1365, 2
  br i1 %1366, label %1368, label %1367

1367:                                             ; preds = %1362
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3980, ptr noundef nonnull @.str.4) #22
  br label %1368

1368:                                             ; preds = %1367, %1362
  %1369 = load i32, ptr %1363, align 8
  %1370 = and i32 %1369, 255
  %1371 = add nsw i32 %1370, -10
  %1372 = icmp ult i32 %1371, -9
  br i1 %1372, label %1377, label %1373

1373:                                             ; preds = %1368
  %1374 = getelementptr inbounds %struct.gimple_statement_base, ptr %1363, i64 0, i32 3
  %1375 = load i32, ptr %1374, align 4, !tbaa !79
  %1376 = icmp ugt i32 %1375, 1
  br i1 %1376, label %1378, label %1377

1377:                                             ; preds = %1373, %1368
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1665, ptr noundef nonnull @.str.4) #22
  br label %1378

1378:                                             ; preds = %1377, %1373
  %1379 = load i32, ptr %1363, align 8
  %1380 = and i32 %1379, 255
  %1381 = zext nneg i32 %1380 to i64
  %1382 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1381
  %1383 = load i32, ptr %1382, align 4, !tbaa !83
  %1384 = zext i32 %1383 to i64
  %1385 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1384
  %1386 = load i64, ptr %1385, align 8, !tbaa !124
  %1387 = icmp eq i64 %1386, 0
  br i1 %1387, label %1388, label %1389

1388:                                             ; preds = %1378
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %1389

1389:                                             ; preds = %1388, %1378
  %1390 = getelementptr inbounds i8, ptr %1363, i64 %1386
  %1391 = getelementptr inbounds ptr, ptr %1390, i64 1
  store ptr null, ptr %1391, align 8, !tbaa !68
  %1392 = load i32, ptr %1363, align 8
  %1393 = and i32 %1392, 255
  %1394 = add nsw i32 %1393, -10
  %1395 = icmp ult i32 %1394, -9
  br i1 %1395, label %1397, label %1396

1396:                                             ; preds = %1389
  call void @gimple_set_modified(ptr noundef nonnull %1363, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %1363) #22
  br label %1397

1397:                                             ; preds = %1396, %1389
  %1398 = load ptr, ptr %1330, align 8, !tbaa !119
  store ptr %1398, ptr %1, align 8, !tbaa !120
  %1399 = load ptr, ptr %1328, align 8, !tbaa !116
  %1400 = icmp eq ptr %1398, %1399
  br i1 %1400, label %1401, label %1407

1401:                                             ; preds = %1397
  %1402 = load ptr, ptr %1329, align 8, !tbaa !142
  %1403 = icmp eq ptr %1402, null
  br i1 %1403, label %1411, label %1404

1404:                                             ; preds = %1401
  %1405 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1402, i64 0, i32 1
  store ptr %1398, ptr %1405, align 8, !tbaa !119
  %1406 = load ptr, ptr %1330, align 8, !tbaa !119
  store ptr %1402, ptr %1406, align 8, !tbaa !142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1329, i8 0, i64 16, i1 false)
  br label %1411

1407:                                             ; preds = %1397
  call fastcc void @link_use_stmts_after(ptr noundef %1398, ptr noundef nonnull %1)
  %1408 = load ptr, ptr %1, align 8, !tbaa !120
  %1409 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1408, i64 0, i32 2
  %1410 = load ptr, ptr %1409, align 8, !tbaa !79
  br label %1411

1411:                                             ; preds = %1407, %1404, %1401
  %1412 = phi ptr [ %1410, %1407 ], [ null, %1404 ], [ null, %1401 ]
  %1413 = load ptr, ptr %1, align 8, !tbaa !120
  %1414 = load ptr, ptr %1328, align 8, !tbaa !116
  %1415 = icmp eq ptr %1413, %1414
  br i1 %1415, label %1416, label %1362, !llvm.loop !212

1416:                                             ; preds = %1411, %1357, %1343, %1339, %1332
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #22
  %1417 = add nuw nsw i64 %1333, 1
  %1418 = icmp eq i64 %1417, %1331
  br i1 %1418, label %1419, label %1332, !llvm.loop !213

1419:                                             ; preds = %1416, %1323
  %1420 = load ptr, ptr @current_function_decl, align 8, !tbaa !68
  %1421 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %1422 = load ptr, ptr %385, align 8, !tbaa !68
  %1423 = icmp eq ptr %1422, null
  br i1 %1423, label %1424, label %1427

1424:                                             ; preds = %1449, %1419
  %1425 = load ptr, ptr %385, align 8, !tbaa !68
  %1426 = icmp eq ptr %1425, null
  br i1 %1426, label %1474, label %1455

1427:                                             ; preds = %1419, %1449
  %1428 = phi ptr [ %1453, %1449 ], [ %1422, %1419 ]
  %1429 = getelementptr inbounds %struct.cgraph_edge, ptr %1428, i64 0, i32 1
  %1430 = load ptr, ptr %1429, align 8, !tbaa !214
  %1431 = load ptr, ptr %1430, align 8, !tbaa !100
  store ptr %1431, ptr @current_function_decl, align 8, !tbaa !68
  %1432 = load ptr, ptr %1430, align 8, !tbaa !100
  %1433 = getelementptr inbounds %struct.tree_function_decl, ptr %1432, i64 0, i32 1
  %1434 = load ptr, ptr %1433, align 8, !tbaa !79
  call void @push_cfun(ptr noundef %1434) #22
  %1435 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %1436 = icmp eq ptr %1435, null
  br i1 %1436, label %1449, label %1437

1437:                                             ; preds = %1427
  %1438 = load ptr, ptr %1429, align 8, !tbaa !214
  %1439 = getelementptr inbounds %struct.cgraph_node, ptr %1438, i64 0, i32 24
  %1440 = load i32, ptr %1439, align 8, !tbaa !215
  %1441 = getelementptr inbounds %struct.cgraph_edge, ptr %1428, i64 0, i32 2
  %1442 = load ptr, ptr %1441, align 8, !tbaa !216
  %1443 = getelementptr inbounds %struct.cgraph_node, ptr %1442, i64 0, i32 24
  %1444 = load i32, ptr %1443, align 8, !tbaa !215
  %1445 = call ptr @cgraph_node_name(ptr noundef %1438) #22
  %1446 = load ptr, ptr %1441, align 8, !tbaa !216
  %1447 = call ptr @cgraph_node_name(ptr noundef %1446) #22
  %1448 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1435, ptr noundef nonnull @.str.74, i32 noundef %1440, i32 noundef %1444, ptr noundef %1445, ptr noundef %1447)
  br label %1449

1449:                                             ; preds = %1437, %1427
  %1450 = getelementptr inbounds %struct.cgraph_edge, ptr %1428, i64 0, i32 7
  %1451 = load ptr, ptr %1450, align 8, !tbaa !145
  call void @ipa_modify_call_arguments(ptr noundef nonnull %1428, ptr noundef %1451, ptr noundef nonnull %1291) #22
  call void @pop_cfun() #22
  %1452 = getelementptr inbounds %struct.cgraph_edge, ptr %1428, i64 0, i32 4
  %1453 = load ptr, ptr %1452, align 8, !tbaa !68
  %1454 = icmp eq ptr %1453, null
  br i1 %1454, label %1424, label %1427, !llvm.loop !217

1455:                                             ; preds = %1424, %1470
  %1456 = phi ptr [ %1472, %1470 ], [ %1425, %1424 ]
  %1457 = getelementptr inbounds %struct.cgraph_edge, ptr %1456, i64 0, i32 1
  %1458 = load ptr, ptr %1457, align 8, !tbaa !214
  %1459 = getelementptr inbounds %struct.cgraph_node, ptr %1458, i64 0, i32 24
  %1460 = load i32, ptr %1459, align 8, !tbaa !215
  %1461 = call i32 @bitmap_bit_p(ptr noundef %1421, i32 noundef %1460) #22
  %1462 = icmp eq i32 %1461, 0
  br i1 %1462, label %1463, label %1470

1463:                                             ; preds = %1455
  %1464 = load ptr, ptr %1457, align 8, !tbaa !214
  %1465 = call i32 @compute_inline_parameters(ptr noundef %1464) #22
  %1466 = load ptr, ptr %1457, align 8, !tbaa !214
  %1467 = getelementptr inbounds %struct.cgraph_node, ptr %1466, i64 0, i32 24
  %1468 = load i32, ptr %1467, align 8, !tbaa !215
  %1469 = call zeroext i8 @bitmap_set_bit(ptr noundef %1421, i32 noundef %1468) #22
  br label %1470

1470:                                             ; preds = %1463, %1455
  %1471 = getelementptr inbounds %struct.cgraph_edge, ptr %1456, i64 0, i32 4
  %1472 = load ptr, ptr %1471, align 8, !tbaa !68
  %1473 = icmp eq ptr %1472, null
  br i1 %1473, label %1474, label %1455, !llvm.loop !218

1474:                                             ; preds = %1470, %1424
  call void @bitmap_obstack_free(ptr noundef %1421) #22
  store ptr %1420, ptr @current_function_decl, align 8, !tbaa !68
  %1475 = load i1, ptr @encountered_recursive_call, align 1
  br i1 %1475, label %1476, label %1556

1476:                                             ; preds = %1474
  %1477 = load ptr, ptr @cfun, align 8, !tbaa !68
  %1478 = getelementptr inbounds %struct.function, ptr %1477, i64 0, i32 1
  %1479 = load ptr, ptr %1478, align 8, !tbaa !148
  %1480 = load ptr, ptr %1479, align 8, !tbaa !164
  %1481 = getelementptr inbounds %struct.basic_block_def, ptr %1480, i64 0, i32 6
  %1482 = load ptr, ptr %1481, align 8, !tbaa !167
  %1483 = getelementptr inbounds %struct.control_flow_graph, ptr %1479, i64 0, i32 1
  %1484 = load ptr, ptr %1483, align 8, !tbaa !169
  %1485 = icmp eq ptr %1482, %1484
  br i1 %1485, label %1556, label %1495

1486:                                             ; preds = %1552, %1512
  %1487 = getelementptr inbounds %struct.basic_block_def, ptr %1496, i64 0, i32 6
  %1488 = load ptr, ptr %1487, align 8, !tbaa !167
  %1489 = load ptr, ptr @cfun, align 8, !tbaa !68
  %1490 = getelementptr inbounds %struct.function, ptr %1489, i64 0, i32 1
  %1491 = load ptr, ptr %1490, align 8, !tbaa !148
  %1492 = getelementptr inbounds %struct.control_flow_graph, ptr %1491, i64 0, i32 1
  %1493 = load ptr, ptr %1492, align 8, !tbaa !169
  %1494 = icmp eq ptr %1488, %1493
  br i1 %1494, label %1556, label %1495, !llvm.loop !219

1495:                                             ; preds = %1476, %1486
  %1496 = phi ptr [ %1488, %1486 ], [ %1482, %1476 ]
  %1497 = getelementptr inbounds %struct.basic_block_def, ptr %1496, i64 0, i32 13
  %1498 = load i32, ptr %1497, align 8, !tbaa !220, !noalias !221
  %1499 = and i32 %1498, 512
  %1500 = icmp eq i32 %1499, 0
  br i1 %1500, label %1501, label %1507

1501:                                             ; preds = %1495
  %1502 = getelementptr inbounds %struct.basic_block_def, ptr %1496, i64 0, i32 7
  %1503 = load ptr, ptr %1502, align 8, !tbaa !79, !noalias !221
  %1504 = icmp eq ptr %1503, null
  br i1 %1504, label %1507, label %1505

1505:                                             ; preds = %1501
  %1506 = load ptr, ptr %1503, align 8, !tbaa !224, !noalias !221
  br label %1507

1507:                                             ; preds = %1505, %1501, %1495
  %1508 = phi ptr [ %1506, %1505 ], [ null, %1501 ], [ null, %1495 ]
  %1509 = icmp eq ptr %1508, null
  br i1 %1509, label %1512, label %1510

1510:                                             ; preds = %1507
  %1511 = load ptr, ptr %1508, align 8, !tbaa !226, !noalias !221
  br label %1512

1512:                                             ; preds = %1510, %1507
  %1513 = phi ptr [ %1511, %1510 ], [ null, %1507 ]
  %1514 = icmp eq ptr %1513, null
  br i1 %1514, label %1486, label %1515

1515:                                             ; preds = %1512, %1552
  %1516 = phi ptr [ %1554, %1552 ], [ %1513, %1512 ]
  %1517 = load ptr, ptr %1516, align 8, !tbaa !228
  %1518 = load i32, ptr %1517, align 8
  %1519 = and i32 %1518, 255
  %1520 = icmp eq i32 %1519, 8
  br i1 %1520, label %1521, label %1552

1521:                                             ; preds = %1515
  %1522 = zext nneg i32 %1519 to i64
  %1523 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1522
  %1524 = load i32, ptr %1523, align 4, !tbaa !83
  %1525 = zext i32 %1524 to i64
  %1526 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1525
  %1527 = load i64, ptr %1526, align 8, !tbaa !124
  %1528 = icmp eq i64 %1527, 0
  br i1 %1528, label %1529, label %1530

1529:                                             ; preds = %1521
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %1530

1530:                                             ; preds = %1529, %1521
  %1531 = getelementptr inbounds i8, ptr %1517, i64 %1527
  %1532 = getelementptr inbounds ptr, ptr %1531, i64 1
  %1533 = load ptr, ptr %1532, align 8, !tbaa !68
  %1534 = load i64, ptr %1533, align 8
  %1535 = and i64 %1534, 65535
  %1536 = icmp eq i64 %1535, 121
  br i1 %1536, label %1537, label %1540

1537:                                             ; preds = %1530
  %1538 = getelementptr inbounds %struct.tree_exp, ptr %1533, i64 0, i32 3
  %1539 = load ptr, ptr %1538, align 8, !tbaa !79
  br label %1540

1540:                                             ; preds = %1537, %1530
  %1541 = phi ptr [ %1539, %1537 ], [ null, %1530 ]
  %1542 = icmp eq ptr %1541, null
  br i1 %1542, label %1552, label %1543

1543:                                             ; preds = %1540
  %1544 = call ptr @cgraph_get_node(ptr noundef nonnull %1541) #22
  %1545 = icmp eq ptr %1544, %7
  br i1 %1545, label %1546, label %1552

1546:                                             ; preds = %1543
  %1547 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %1548 = icmp eq ptr %1547, null
  br i1 %1548, label %1551, label %1549

1549:                                             ; preds = %1546
  %1550 = call i64 @fwrite(ptr nonnull @.str.75, i64 24, i64 1, ptr nonnull %1547)
  br label %1551

1551:                                             ; preds = %1549, %1546
  call void @ipa_modify_call_arguments(ptr noundef null, ptr noundef nonnull %1517, ptr noundef nonnull %1291) #22
  br label %1552

1552:                                             ; preds = %1551, %1543, %1540, %1515
  %1553 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1516, i64 0, i32 2
  %1554 = load ptr, ptr %1553, align 8, !tbaa !230
  %1555 = icmp eq ptr %1554, null
  br i1 %1555, label %1486, label %1515, !llvm.loop !231

1556:                                             ; preds = %1486, %1476, %1474
  call void @cgraph_make_node_local(ptr noundef nonnull %7) #22
  call void @free(ptr noundef %1291)
  %1557 = load ptr, ptr @cfun, align 8, !tbaa !68
  %1558 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 6), align 4, !tbaa !196
  call void @statistics_counter_event(ptr noundef %1557, ptr noundef nonnull @.str.53, i32 noundef %1558) #22
  %1559 = load ptr, ptr @cfun, align 8, !tbaa !68
  %1560 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 7), align 4, !tbaa !190
  call void @statistics_counter_event(ptr noundef %1559, ptr noundef nonnull @.str.54, i32 noundef %1560) #22
  %1561 = load ptr, ptr @cfun, align 8, !tbaa !68
  %1562 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 8), align 4, !tbaa !194
  call void @statistics_counter_event(ptr noundef %1561, ptr noundef nonnull @.str.55, i32 noundef %1562) #22
  %1563 = load ptr, ptr @cfun, align 8, !tbaa !68
  %1564 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 9), align 4, !tbaa !195
  call void @statistics_counter_event(ptr noundef %1563, ptr noundef nonnull @.str.56, i32 noundef %1564) #22
  br label %1565

1565:                                             ; preds = %1290, %433, %436, %426, %429, %1556
  %1566 = phi i32 [ 0, %429 ], [ 0, %426 ], [ 0, %436 ], [ 0, %433 ], [ 2048, %1556 ], [ 0, %1290 ]
  %1567 = load ptr, ptr @final_bbs, align 8, !tbaa !68
  call void @bitmap_obstack_free(ptr noundef %1567) #22
  store ptr null, ptr @final_bbs, align 8, !tbaa !68
  %1568 = load ptr, ptr @bb_dereferences, align 8, !tbaa !68
  call void @free(ptr noundef %1568)
  br label %1569

1569:                                             ; preds = %409, %412, %379, %382, %1565
  %1570 = phi i32 [ %1566, %1565 ], [ 0, %412 ], [ 0, %409 ], [ 0, %382 ], [ 0, %379 ]
  call fastcc void @sra_deinitialize()
  br label %1571

1571:                                             ; preds = %13, %10, %24, %21, %47, %44, %56, %53, %67, %64, %1569
  %1572 = phi i32 [ %1570, %1569 ], [ 0, %64 ], [ 0, %67 ], [ 0, %53 ], [ 0, %56 ], [ 0, %44 ], [ 0, %47 ], [ 0, %21 ], [ 0, %24 ], [ 0, %10 ], [ 0, %13 ]
  ret i32 %1572
}

declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @int_bit_position(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @perform_intra_sra() unnamed_addr #11 !prof !88 !PGOFuncName !232 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %4, ptr @candidate_bitmap, align 8, !tbaa !68
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %5, ptr @should_scalarize_away_bitmap, align 8, !tbaa !68
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %6, ptr @cannot_scalarize_away_bitmap, align 8, !tbaa !68
  %7 = tail call i32 @_obstack_begin(ptr noundef nonnull @name_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #22
  %8 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.11, i64 noundef 120, i64 noundef 16) #22
  store ptr %8, ptr @access_pool, align 8, !tbaa !68
  %9 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.12, i64 noundef 24, i64 noundef 16) #22
  store ptr %9, ptr @link_pool, align 8, !tbaa !68
  %10 = tail call ptr @pointer_map_create() #22
  store ptr %10, ptr @base_access_vec, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) @sra_stats, i8 0, i64 40, i1 false)
  store i1 false, ptr @encountered_apply_args, align 1
  store i1 false, ptr @encountered_recursive_call, align 1
  store i1 false, ptr @encountered_unchangable_recursive_call, align 1
  %11 = load ptr, ptr @cfun, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !233
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !234

15:                                               ; preds = %0
  %16 = load ptr, ptr %13, align 8, !tbaa !235
  br label %17

17:                                               ; preds = %15, %0
  %18 = phi ptr [ %16, %15 ], [ null, %0 ]
  %19 = getelementptr inbounds %struct.htab, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !239
  %21 = tail call i64 @htab_size(ptr noundef %18) #22
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  br label %23

23:                                               ; preds = %27, %17
  %24 = phi ptr [ %20, %17 ], [ %28, %27 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !68
  %26 = icmp ult ptr %25, inttoptr (i64 2 to ptr)
  br i1 %26, label %27, label %30, !prof !241

27:                                               ; preds = %23
  %28 = getelementptr inbounds ptr, ptr %24, i64 1
  %29 = icmp ult ptr %28, %22
  br i1 %29, label %23, label %30, !prof !242, !llvm.loop !243

30:                                               ; preds = %27, %23
  %31 = phi ptr [ %24, %23 ], [ %28, %27 ]
  %32 = icmp ult ptr %31, %22
  br i1 %32, label %33, label %35, !prof !244

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !68
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  %37 = icmp ult ptr %31, %22
  br i1 %37, label %38, label %829, !prof !245

38:                                               ; preds = %35, %111
  %39 = phi i8 [ %101, %111 ], [ 0, %35 ]
  %40 = phi ptr [ %112, %111 ], [ %36, %35 ]
  %41 = phi ptr [ %105, %111 ], [ %31, %35 ]
  %42 = load i64, ptr %40, align 8
  %43 = trunc i64 %42 to i16
  switch i16 %43, label %100 [
    i16 32, label %44
    i16 34, label %44
  ], !prof !246

44:                                               ; preds = %38, %38
  %45 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !79
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = and i32 %48, 65535
  %50 = add nsw i32 %49, -15
  %51 = icmp ult i32 %50, 4
  br i1 %51, label %52, label %100, !prof !247

52:                                               ; preds = %44
  %53 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %40) #22
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %100, !prof !248

55:                                               ; preds = %52
  %56 = load i64, ptr %40, align 8
  %57 = and i64 %56, 524288
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %100

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !79
  %62 = icmp eq ptr %61, null
  br i1 %62, label %100, label %63

63:                                               ; preds = %59
  %64 = tail call i32 @host_integerp(ptr noundef nonnull %61, i32 noundef 1) #22
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %100, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %60, align 8, !tbaa !79
  %68 = tail call i64 @tree_low_cst(ptr noundef %67, i32 noundef 1) #22
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %100, label %70

70:                                               ; preds = %66
  %71 = tail call fastcc zeroext i8 @type_internals_preclude_sra_p(ptr noundef nonnull %46)
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %70
  %74 = load i32, ptr @sra_mode, align 4, !tbaa !83
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 16
  %78 = load ptr, ptr %77, align 8, !tbaa !79
  %79 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 44), align 16, !tbaa !68
  %80 = getelementptr inbounds %struct.tree_type, ptr %79, i64 0, i32 16
  %81 = load ptr, ptr %80, align 8, !tbaa !79
  %82 = icmp eq ptr %78, %81
  br i1 %82, label %100, label %83

83:                                               ; preds = %76, %73
  %84 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !68
  %85 = getelementptr inbounds %struct.tree_decl_minimal, ptr %40, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !79
  %87 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %84, i32 noundef %86) #22
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %89 = icmp eq ptr %88, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %83
  %91 = load i32, ptr @dump_flags, align 4, !tbaa !83
  %92 = and i32 %91, 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %90
  %95 = load i32, ptr %85, align 4, !tbaa !79
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %88, ptr noundef nonnull @.str.13, i32 noundef %95)
  %97 = load ptr, ptr @dump_file, align 8, !tbaa !68
  tail call void @print_generic_expr(ptr noundef %97, ptr noundef nonnull %40, i32 noundef 0) #22
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %99 = tail call i32 @fputc(i32 10, ptr %98)
  br label %100

100:                                              ; preds = %76, %44, %94, %90, %83, %70, %66, %63, %59, %55, %52, %38
  %101 = phi i8 [ %39, %52 ], [ %39, %55 ], [ %39, %66 ], [ %39, %70 ], [ %39, %63 ], [ %39, %59 ], [ %39, %38 ], [ 1, %94 ], [ 1, %90 ], [ 1, %83 ], [ %39, %44 ], [ %39, %76 ]
  br label %102

102:                                              ; preds = %107, %100
  %103 = phi ptr [ %41, %100 ], [ %105, %107 ]
  %104 = phi ptr [ undef, %100 ], [ %110, %107 ]
  %105 = getelementptr inbounds ptr, ptr %103, i64 1
  %106 = icmp ult ptr %105, %22
  br i1 %106, label %107, label %111, !prof !249

107:                                              ; preds = %102
  %108 = load ptr, ptr %105, align 8, !tbaa !68
  %109 = icmp ult ptr %108, inttoptr (i64 2 to ptr)
  %110 = select i1 %109, ptr %104, ptr %108, !prof !250
  br i1 %109, label %102, label %111, !prof !250

111:                                              ; preds = %107, %102
  %112 = phi ptr [ null, %102 ], [ %110, %107 ]
  %113 = icmp ult ptr %105, %22
  br i1 %113, label %38, label %114, !prof !251, !llvm.loop !252

114:                                              ; preds = %111
  %115 = icmp eq i8 %101, 0
  br i1 %115, label %829, label %116, !prof !244

116:                                              ; preds = %114
  %117 = tail call fastcc zeroext i8 @scan_function.specialized.1(i8 noundef zeroext 1)
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %829, label %119

119:                                              ; preds = %116
  %120 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %121 = load ptr, ptr @cfun, align 8, !tbaa !68
  %122 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %121) #22
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr @ix86_cost, align 8, !tbaa !68
  %126 = getelementptr inbounds %struct.processor_costs, ptr %125, i64 0, i32 10
  %127 = load i32, ptr %126, align 4, !tbaa !253
  %128 = shl nsw i32 %127, 5
  br label %129

129:                                              ; preds = %124, %119
  %130 = phi i32 [ %128, %124 ], [ 96, %119 ]
  %131 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !68
  %132 = load ptr, ptr %131, align 8, !tbaa !255
  %133 = icmp eq ptr %132, null
  %134 = select i1 %133, ptr @bitmap_zero_bits, ptr %132
  %135 = getelementptr inbounds %struct.bitmap_element_def, ptr %134, i64 0, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !257
  %137 = shl i32 %136, 7
  %138 = getelementptr inbounds %struct.bitmap_element_def, ptr %134, i64 0, i32 3
  %139 = load i64, ptr %138, align 8, !tbaa !124
  %140 = icmp eq i64 %139, 0
  %141 = zext i1 %140 to i32
  %142 = or disjoint i32 %137, %141
  br label %143

143:                                              ; preds = %243, %129
  %144 = phi i64 [ %139, %129 ], [ %244, %243 ]
  %145 = phi i32 [ 0, %129 ], [ %200, %243 ]
  %146 = phi ptr [ %134, %129 ], [ %201, %243 ]
  %147 = phi i32 [ %142, %129 ], [ %245, %243 ]
  %148 = icmp eq i64 %144, 0
  br i1 %148, label %163, label %149

149:                                              ; preds = %177, %143
  %150 = phi i64 [ %144, %143 ], [ %182, %177 ]
  %151 = phi i32 [ %145, %143 ], [ %178, %177 ]
  %152 = phi ptr [ %146, %143 ], [ %169, %177 ]
  %153 = phi i32 [ %147, %143 ], [ %179, %177 ]
  %154 = and i64 %150, 1
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %198

156:                                              ; preds = %149, %156
  %157 = phi i32 [ %160, %156 ], [ %153, %149 ]
  %158 = phi i64 [ %159, %156 ], [ %150, %149 ]
  %159 = lshr exact i64 %158, 1
  %160 = add i32 %157, 1
  %161 = and i64 %158, 2
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %156, label %198, !llvm.loop !259

163:                                              ; preds = %143
  %164 = add i32 %147, 63
  %165 = and i32 %164, -64
  %166 = add i32 %145, 1
  br label %167

167:                                              ; preds = %194, %163
  %168 = phi i64 [ %144, %163 ], [ %189, %194 ]
  %169 = phi ptr [ %146, %163 ], [ %192, %194 ]
  %170 = phi i32 [ %165, %163 ], [ %197, %194 ]
  %171 = phi i32 [ %166, %163 ], [ 0, %194 ]
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %188, label %173

173:                                              ; preds = %167
  %174 = add i32 %170, 128
  %175 = shl i32 %171, 6
  %176 = sub i32 %174, %175
  br label %177

177:                                              ; preds = %173, %184
  %178 = phi i32 [ %186, %184 ], [ %171, %173 ]
  %179 = phi i32 [ %185, %184 ], [ %170, %173 ]
  %180 = zext i32 %178 to i64
  %181 = getelementptr inbounds %struct.bitmap_element_def, ptr %169, i64 0, i32 3, i64 %180
  %182 = load i64, ptr %181, align 8, !tbaa !124
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %149

184:                                              ; preds = %177
  %185 = add i32 %179, 64
  %186 = add i32 %178, 1
  %187 = icmp eq i32 %186, 2
  br i1 %187, label %188, label %177, !llvm.loop !260

188:                                              ; preds = %184, %167
  %189 = phi i64 [ %168, %167 ], [ %182, %184 ]
  %190 = phi i32 [ %170, %167 ], [ %176, %184 ]
  %191 = phi i32 [ %171, %167 ], [ 2, %184 ]
  %192 = load ptr, ptr %169, align 8, !tbaa !261
  %193 = icmp eq ptr %192, null
  br i1 %193, label %198, label %194

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.bitmap_element_def, ptr %192, i64 0, i32 2
  %196 = load i32, ptr %195, align 8, !tbaa !257
  %197 = shl i32 %196, 7
  br label %167, !llvm.loop !262

198:                                              ; preds = %188, %156, %149
  %199 = phi i64 [ %150, %149 ], [ %159, %156 ], [ %189, %188 ]
  %200 = phi i32 [ %151, %149 ], [ %151, %156 ], [ %191, %188 ]
  %201 = phi ptr [ %152, %149 ], [ %152, %156 ], [ %192, %188 ]
  %202 = phi i32 [ %153, %149 ], [ %160, %156 ], [ %190, %188 ]
  %203 = phi i1 [ false, %149 ], [ false, %156 ], [ true, %188 ]
  br i1 %203, label %246, label %204

204:                                              ; preds = %198
  %205 = load ptr, ptr @should_scalarize_away_bitmap, align 8, !tbaa !68
  %206 = tail call i32 @bitmap_bit_p(ptr noundef %205, i32 noundef %202) #22
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %243, label %208

208:                                              ; preds = %204
  %209 = load ptr, ptr @cannot_scalarize_away_bitmap, align 8, !tbaa !68
  %210 = tail call i32 @bitmap_bit_p(ptr noundef %209, i32 noundef %202) #22
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %243

212:                                              ; preds = %208
  %213 = tail call ptr @referenced_var_lookup(i32 noundef %202) #22
  %214 = load i64, ptr %213, align 8
  %215 = and i64 %214, 65535
  %216 = icmp eq i64 %215, 32
  br i1 %216, label %217, label %243

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.tree_common, ptr %213, i64 0, i32 2
  %219 = load ptr, ptr %218, align 8, !tbaa !79
  %220 = getelementptr inbounds %struct.tree_type, ptr %219, i64 0, i32 2
  %221 = load ptr, ptr %220, align 8, !tbaa !79
  %222 = tail call i64 @tree_low_cst(ptr noundef %221, i32 noundef 1) #22
  %223 = trunc i64 %222 to i32
  %224 = icmp ult i32 %130, %223
  br i1 %224, label %243, label %225

225:                                              ; preds = %217
  %226 = load ptr, ptr %218, align 8, !tbaa !79
  %227 = tail call fastcc zeroext i8 @type_consists_of_records_p(ptr noundef %226)
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %243, label %229

229:                                              ; preds = %225
  tail call fastcc void @completely_scalarize_record(ptr noundef nonnull %213, ptr noundef nonnull %213, i64 noundef 0)
  %230 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %231 = icmp eq ptr %230, null
  br i1 %231, label %243, label %232

232:                                              ; preds = %229
  %233 = load i32, ptr @dump_flags, align 4, !tbaa !83
  %234 = and i32 %233, 8
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %243, label %236

236:                                              ; preds = %232
  %237 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 34, i64 1, ptr nonnull %230)
  %238 = load ptr, ptr @dump_file, align 8, !tbaa !68
  tail call void @print_generic_expr(ptr noundef %238, ptr noundef nonnull %213, i32 noundef 0) #22
  %239 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %240 = getelementptr inbounds %struct.tree_decl_minimal, ptr %213, i64 0, i32 2
  %241 = load i32, ptr %240, align 4, !tbaa !79
  %242 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %239, ptr noundef nonnull @.str.26, i32 noundef %241)
  br label %243

243:                                              ; preds = %236, %232, %229, %225, %217, %212, %208, %204
  %244 = lshr i64 %199, 1
  %245 = add i32 %202, 1
  br label %143, !llvm.loop !263

246:                                              ; preds = %198
  %247 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !68
  tail call void @bitmap_copy(ptr noundef %120, ptr noundef %247) #22
  %248 = load ptr, ptr %120, align 8, !tbaa !255
  %249 = icmp eq ptr %248, null
  %250 = select i1 %249, ptr @bitmap_zero_bits, ptr %248
  %251 = getelementptr inbounds %struct.bitmap_element_def, ptr %250, i64 0, i32 2
  %252 = load i32, ptr %251, align 8, !tbaa !257
  %253 = shl i32 %252, 7
  %254 = getelementptr inbounds %struct.bitmap_element_def, ptr %250, i64 0, i32 3
  %255 = load i64, ptr %254, align 8, !tbaa !124
  %256 = icmp eq i64 %255, 0
  %257 = zext i1 %256 to i32
  %258 = or disjoint i32 %253, %257
  br label %259

259:                                              ; preds = %558, %246
  %260 = phi i64 [ %255, %246 ], [ %559, %558 ]
  %261 = phi i32 [ 0, %246 ], [ %316, %558 ]
  %262 = phi ptr [ %250, %246 ], [ %317, %558 ]
  %263 = phi i32 [ %258, %246 ], [ %560, %558 ]
  %264 = icmp eq i64 %260, 0
  br i1 %264, label %279, label %265

265:                                              ; preds = %293, %259
  %266 = phi i64 [ %260, %259 ], [ %298, %293 ]
  %267 = phi i32 [ %261, %259 ], [ %294, %293 ]
  %268 = phi ptr [ %262, %259 ], [ %285, %293 ]
  %269 = phi i32 [ %263, %259 ], [ %295, %293 ]
  %270 = and i64 %266, 1
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %314

272:                                              ; preds = %265, %272
  %273 = phi i32 [ %276, %272 ], [ %269, %265 ]
  %274 = phi i64 [ %275, %272 ], [ %266, %265 ]
  %275 = lshr exact i64 %274, 1
  %276 = add i32 %273, 1
  %277 = and i64 %274, 2
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %272, label %314, !llvm.loop !259

279:                                              ; preds = %259
  %280 = add i32 %263, 63
  %281 = and i32 %280, -64
  %282 = add i32 %261, 1
  br label %283

283:                                              ; preds = %310, %279
  %284 = phi i64 [ %260, %279 ], [ %305, %310 ]
  %285 = phi ptr [ %262, %279 ], [ %308, %310 ]
  %286 = phi i32 [ %281, %279 ], [ %313, %310 ]
  %287 = phi i32 [ %282, %279 ], [ 0, %310 ]
  %288 = icmp eq i32 %287, 2
  br i1 %288, label %304, label %289

289:                                              ; preds = %283
  %290 = add i32 %286, 128
  %291 = shl i32 %287, 6
  %292 = sub i32 %290, %291
  br label %293

293:                                              ; preds = %289, %300
  %294 = phi i32 [ %302, %300 ], [ %287, %289 ]
  %295 = phi i32 [ %301, %300 ], [ %286, %289 ]
  %296 = zext i32 %294 to i64
  %297 = getelementptr inbounds %struct.bitmap_element_def, ptr %285, i64 0, i32 3, i64 %296
  %298 = load i64, ptr %297, align 8, !tbaa !124
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %265

300:                                              ; preds = %293
  %301 = add i32 %295, 64
  %302 = add i32 %294, 1
  %303 = icmp eq i32 %302, 2
  br i1 %303, label %304, label %293, !llvm.loop !260

304:                                              ; preds = %300, %283
  %305 = phi i64 [ %284, %283 ], [ %298, %300 ]
  %306 = phi i32 [ %286, %283 ], [ %292, %300 ]
  %307 = phi i32 [ %287, %283 ], [ 2, %300 ]
  %308 = load ptr, ptr %285, align 8, !tbaa !261
  %309 = icmp eq ptr %308, null
  br i1 %309, label %314, label %310

310:                                              ; preds = %304
  %311 = getelementptr inbounds %struct.bitmap_element_def, ptr %308, i64 0, i32 2
  %312 = load i32, ptr %311, align 8, !tbaa !257
  %313 = shl i32 %312, 7
  br label %283, !llvm.loop !262

314:                                              ; preds = %304, %272, %265
  %315 = phi i64 [ %266, %265 ], [ %275, %272 ], [ %305, %304 ]
  %316 = phi i32 [ %267, %265 ], [ %267, %272 ], [ %307, %304 ]
  %317 = phi ptr [ %268, %265 ], [ %268, %272 ], [ %308, %304 ]
  %318 = phi i32 [ %269, %265 ], [ %276, %272 ], [ %306, %304 ]
  %319 = phi i1 [ false, %265 ], [ false, %272 ], [ true, %304 ]
  br i1 %319, label %320, label %323

320:                                              ; preds = %314
  %321 = load ptr, ptr @work_queue_head, align 8, !tbaa !68
  %322 = icmp eq ptr %321, null
  br i1 %322, label %602, label %564

323:                                              ; preds = %314
  %324 = tail call ptr @referenced_var_lookup(i32 noundef %318) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  %325 = load ptr, ptr @base_access_vec, align 8, !tbaa !68
  %326 = tail call ptr @pointer_map_contains(ptr noundef %325, ptr noundef %324) #22
  %327 = icmp eq ptr %326, null
  br i1 %327, label %330, label %328

328:                                              ; preds = %323
  %329 = load ptr, ptr %326, align 8, !tbaa !68
  br label %330

330:                                              ; preds = %328, %323
  %331 = phi ptr [ %329, %328 ], [ null, %323 ]
  %332 = icmp eq ptr %331, null
  br i1 %332, label %547, label %333

333:                                              ; preds = %330
  %334 = load i32, ptr %331, align 8, !tbaa !152
  %335 = getelementptr inbounds %struct.VEC_access_p_base, ptr %331, i64 0, i32 2
  %336 = sext i32 %334 to i64
  tail call void @spec_qsort(ptr noundef nonnull %335, i64 noundef %336, i64 noundef 8, ptr noundef nonnull @compare_access_positions) #22
  br label %337

337:                                              ; preds = %535, %333
  %338 = phi ptr [ %3, %333 ], [ %536, %535 ]
  %339 = phi i8 [ 1, %333 ], [ %537, %535 ]
  %340 = phi i64 [ -1, %333 ], [ %538, %535 ]
  %341 = phi i64 [ 0, %333 ], [ %539, %535 ]
  %342 = phi i32 [ 0, %333 ], [ %541, %535 ]
  %343 = icmp slt i32 %342, %334
  br i1 %343, label %344, label %542

344:                                              ; preds = %337
  %345 = zext i32 %342 to i64
  %346 = getelementptr inbounds %struct.VEC_access_p_base, ptr %331, i64 0, i32 2, i64 %345
  %347 = load ptr, ptr %346, align 8, !tbaa !68
  %348 = getelementptr inbounds %struct.access, ptr %347, i64 0, i32 14
  %349 = load i16, ptr %348, align 8
  %350 = trunc i16 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  %353 = lshr i8 %350, 1
  %354 = and i8 %353, 1
  %355 = lshr i16 %349, 9
  %356 = trunc i16 %355 to i8
  %357 = and i8 %356, 1
  %358 = getelementptr inbounds %struct.access, ptr %347, i64 0, i32 4
  %359 = load ptr, ptr %358, align 8, !tbaa !206
  %360 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %359) #22
  %361 = load i16, ptr %348, align 8
  %362 = trunc i16 %361 to i8
  %363 = lshr i8 %362, 7
  %364 = icmp eq i8 %339, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %344
  %366 = load i64, ptr %347, align 8, !tbaa !159
  %367 = icmp slt i64 %366, %341
  br i1 %367, label %373, label %368

368:                                              ; preds = %365, %344
  %369 = load i64, ptr %347, align 8, !tbaa !159
  %370 = getelementptr inbounds %struct.access, ptr %347, i64 0, i32 1
  %371 = load i64, ptr %370, align 8, !tbaa !160
  %372 = add nsw i64 %371, %369
  br label %388

373:                                              ; preds = %365
  %374 = icmp sgt i64 %366, %340
  br i1 %374, label %375, label %380

375:                                              ; preds = %373
  %376 = getelementptr inbounds %struct.access, ptr %347, i64 0, i32 1
  %377 = load i64, ptr %376, align 8, !tbaa !160
  %378 = add nsw i64 %377, %366
  %379 = icmp sgt i64 %378, %341
  br i1 %379, label %535, label %380

380:                                              ; preds = %375, %373
  %381 = icmp slt i64 %366, %340
  br i1 %381, label %387, label %382

382:                                              ; preds = %380
  %383 = getelementptr inbounds %struct.access, ptr %347, i64 0, i32 1
  %384 = load i64, ptr %383, align 8, !tbaa !160
  %385 = add nsw i64 %384, %366
  %386 = icmp sgt i64 %385, %341
  br i1 %386, label %387, label %388

387:                                              ; preds = %382, %380
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1602, ptr noundef nonnull @.str.4) #22
  br label %388

388:                                              ; preds = %387, %382, %368
  %389 = phi i8 [ 0, %368 ], [ %339, %382 ], [ %339, %387 ]
  %390 = phi i64 [ %369, %368 ], [ %340, %382 ], [ %340, %387 ]
  %391 = phi i64 [ %372, %368 ], [ %341, %382 ], [ %341, %387 ]
  %392 = add nsw i32 %342, 1
  %393 = getelementptr inbounds %struct.access, ptr %347, i64 0, i32 1
  %394 = getelementptr inbounds %struct.access, ptr %347, i64 0, i32 10
  %395 = getelementptr inbounds %struct.access, ptr %347, i64 0, i32 11
  %396 = icmp eq i8 %360, 0
  br label %397

397:                                              ; preds = %490, %388
  %398 = phi i32 [ %392, %388 ], [ %492, %490 ]
  %399 = phi i8 [ %351, %388 ], [ %493, %490 ]
  %400 = phi i8 [ %352, %388 ], [ %494, %490 ]
  %401 = phi i8 [ 0, %388 ], [ %495, %490 ]
  %402 = phi i8 [ %354, %388 ], [ %496, %490 ]
  %403 = phi i8 [ %357, %388 ], [ %497, %490 ]
  %404 = phi i8 [ %363, %388 ], [ %498, %490 ]
  %405 = icmp slt i32 %398, %334
  br i1 %405, label %406, label %499

406:                                              ; preds = %397
  %407 = zext i32 %398 to i64
  %408 = getelementptr inbounds %struct.VEC_access_p_base, ptr %331, i64 0, i32 2, i64 %407
  %409 = load ptr, ptr %408, align 8, !tbaa !68
  %410 = load i64, ptr %409, align 8, !tbaa !159
  %411 = load i64, ptr %347, align 8, !tbaa !159
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %413, label %490

413:                                              ; preds = %406
  %414 = getelementptr inbounds %struct.access, ptr %409, i64 0, i32 1
  %415 = load i64, ptr %414, align 8, !tbaa !160
  %416 = load i64, ptr %393, align 8, !tbaa !160
  %417 = icmp eq i64 %415, %416
  br i1 %417, label %418, label %490

418:                                              ; preds = %413
  %419 = getelementptr inbounds %struct.access, ptr %409, i64 0, i32 14
  %420 = load i16, ptr %419, align 8
  %421 = and i16 %420, 1
  %422 = icmp eq i16 %421, 0
  %423 = icmp eq i8 %400, 0
  %424 = select i1 %423, i8 %401, i8 1
  %425 = select i1 %422, i8 %399, i8 1
  %426 = select i1 %422, i8 1, i8 %400
  %427 = select i1 %422, i8 %424, i8 %401
  %428 = lshr i16 %420, 9
  %429 = trunc i16 %428 to i8
  %430 = and i8 %429, 1
  %431 = or i8 %430, %403
  %432 = trunc i16 %420 to i8
  %433 = lshr i8 %432, 7
  %434 = or i8 %433, %404
  %435 = lshr i8 %432, 1
  %436 = and i8 %435, 1
  %437 = or i8 %436, %402
  %438 = getelementptr inbounds %struct.access, ptr %409, i64 0, i32 10
  %439 = load ptr, ptr %438, align 8, !tbaa !264
  %440 = icmp eq ptr %439, null
  br i1 %440, label %441, label %446

441:                                              ; preds = %418
  %442 = getelementptr inbounds %struct.access, ptr %409, i64 0, i32 11
  %443 = load ptr, ptr %442, align 8, !tbaa !265
  %444 = icmp eq ptr %443, null
  br i1 %444, label %480, label %445

445:                                              ; preds = %441
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 506, ptr noundef nonnull @.str.4) #22
  br label %480

446:                                              ; preds = %418
  %447 = load ptr, ptr %394, align 8, !tbaa !264
  %448 = icmp eq ptr %447, null
  br i1 %448, label %468, label %449

449:                                              ; preds = %446
  %450 = load ptr, ptr %395, align 8, !tbaa !265
  %451 = getelementptr inbounds %struct.assign_link, ptr %450, i64 0, i32 2
  %452 = load ptr, ptr %451, align 8, !tbaa !266
  %453 = icmp eq ptr %452, null
  br i1 %453, label %455, label %454

454:                                              ; preds = %449
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 512, ptr noundef nonnull @.str.4) #22
  br label %455

455:                                              ; preds = %454, %449
  %456 = getelementptr inbounds %struct.access, ptr %409, i64 0, i32 11
  %457 = load ptr, ptr %456, align 8, !tbaa !265
  %458 = icmp eq ptr %457, null
  br i1 %458, label %464, label %459

459:                                              ; preds = %455
  %460 = getelementptr inbounds %struct.assign_link, ptr %457, i64 0, i32 2
  %461 = load ptr, ptr %460, align 8, !tbaa !266
  %462 = icmp eq ptr %461, null
  br i1 %462, label %464, label %463

463:                                              ; preds = %459
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 513, ptr noundef nonnull @.str.4) #22
  br label %464

464:                                              ; preds = %463, %459, %455
  %465 = load ptr, ptr %438, align 8, !tbaa !264
  %466 = load ptr, ptr %395, align 8, !tbaa !265
  %467 = getelementptr inbounds %struct.assign_link, ptr %466, i64 0, i32 2
  store ptr %465, ptr %467, align 8, !tbaa !266
  br label %476

468:                                              ; preds = %446
  %469 = getelementptr inbounds %struct.access, ptr %347, i64 0, i32 11
  %470 = load ptr, ptr %469, align 8, !tbaa !265
  %471 = icmp eq ptr %470, null
  br i1 %471, label %473, label %472

472:                                              ; preds = %468
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 520, ptr noundef nonnull @.str.4) #22
  br label %473

473:                                              ; preds = %472, %468
  %474 = load ptr, ptr %438, align 8, !tbaa !264
  store ptr %474, ptr %394, align 8, !tbaa !264
  %475 = getelementptr inbounds %struct.access, ptr %409, i64 0, i32 11
  br label %476

476:                                              ; preds = %473, %464
  %477 = phi ptr [ %475, %473 ], [ %456, %464 ]
  %478 = phi ptr [ %469, %473 ], [ %395, %464 ]
  %479 = load ptr, ptr %477, align 8, !tbaa !265
  store ptr %479, ptr %478, align 8, !tbaa !265
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %438, i8 0, i64 16, i1 false)
  br label %480

480:                                              ; preds = %476, %445, %441
  br i1 %396, label %481, label %487

481:                                              ; preds = %480
  %482 = getelementptr inbounds %struct.access, ptr %409, i64 0, i32 4
  %483 = load ptr, ptr %482, align 8, !tbaa !206
  %484 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %483) #22
  %485 = icmp eq i8 %484, 0
  br i1 %485, label %487, label %486

486:                                              ; preds = %481
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1627, ptr noundef nonnull @.str.4) #22
  br label %487

487:                                              ; preds = %486, %481, %480
  %488 = getelementptr inbounds %struct.access, ptr %409, i64 0, i32 7
  store ptr %347, ptr %488, align 8, !tbaa !154
  %489 = add nsw i32 %398, 1
  br label %490

490:                                              ; preds = %487, %413, %406
  %491 = phi i1 [ true, %487 ], [ false, %413 ], [ false, %406 ]
  %492 = phi i32 [ %489, %487 ], [ %398, %413 ], [ %398, %406 ]
  %493 = phi i8 [ %425, %487 ], [ %399, %413 ], [ %399, %406 ]
  %494 = phi i8 [ %426, %487 ], [ %400, %413 ], [ %400, %406 ]
  %495 = phi i8 [ %427, %487 ], [ %401, %413 ], [ %401, %406 ]
  %496 = phi i8 [ %437, %487 ], [ %402, %413 ], [ %402, %406 ]
  %497 = phi i8 [ %431, %487 ], [ %403, %413 ], [ %403, %406 ]
  %498 = phi i8 [ %434, %487 ], [ %404, %413 ], [ %404, %406 ]
  br i1 %491, label %397, label %499

499:                                              ; preds = %490, %397
  %500 = phi i32 [ %398, %397 ], [ %492, %490 ]
  %501 = phi i8 [ %399, %397 ], [ %493, %490 ]
  %502 = phi i8 [ %400, %397 ], [ %494, %490 ]
  %503 = phi i8 [ %401, %397 ], [ %495, %490 ]
  %504 = phi i8 [ %402, %397 ], [ %496, %490 ]
  %505 = phi i8 [ %403, %397 ], [ %497, %490 ]
  %506 = phi i8 [ %404, %397 ], [ %498, %490 ]
  %507 = getelementptr inbounds %struct.access, ptr %347, i64 0, i32 7
  store ptr %347, ptr %507, align 8, !tbaa !154
  %508 = load i16, ptr %348, align 8
  %509 = shl nuw nsw i8 %501, 3
  %510 = and i8 %509, 8
  %511 = and i16 %508, -697
  %512 = shl nuw nsw i8 %502, 4
  %513 = and i8 %512, 16
  %514 = icmp ne i8 %503, 0
  %515 = icmp ne i8 %504, 0
  %516 = select i1 %514, i1 true, i1 %515
  %517 = select i1 %516, i16 32, i16 0
  %518 = and i8 %505, 1
  %519 = zext nneg i8 %518 to i16
  %520 = shl nuw nsw i16 %519, 9
  %521 = shl nuw i8 %506, 7
  %522 = zext i8 %521 to i16
  %523 = or disjoint i8 %513, %510
  %524 = zext nneg i8 %523 to i16
  %525 = or disjoint i16 %517, %524
  %526 = or disjoint i16 %525, %520
  %527 = or disjoint i16 %526, %522
  %528 = or disjoint i16 %527, %511
  store i16 %528, ptr %348, align 8
  %529 = getelementptr inbounds %struct.access, ptr %347, i64 0, i32 10
  %530 = load ptr, ptr %529, align 8, !tbaa !264
  %531 = icmp eq ptr %530, null
  br i1 %531, label %533, label %532

532:                                              ; preds = %499
  tail call fastcc void @add_access_to_work_queue(ptr noundef %347)
  br label %533

533:                                              ; preds = %532, %499
  store ptr %347, ptr %338, align 8, !tbaa !68
  %534 = getelementptr inbounds %struct.access, ptr %347, i64 0, i32 6
  br label %535

535:                                              ; preds = %533, %375
  %536 = phi ptr [ %534, %533 ], [ %338, %375 ]
  %537 = phi i8 [ %389, %533 ], [ %339, %375 ]
  %538 = phi i64 [ %390, %533 ], [ %340, %375 ]
  %539 = phi i64 [ %391, %533 ], [ %341, %375 ]
  %540 = phi i1 [ true, %533 ], [ false, %375 ]
  %541 = phi i32 [ %500, %533 ], [ %342, %375 ]
  br i1 %540, label %337, label %547, !llvm.loop !268

542:                                              ; preds = %337
  %543 = load ptr, ptr %3, align 8, !tbaa !68
  %544 = load ptr, ptr %335, align 8, !tbaa !68
  %545 = icmp eq ptr %543, %544
  br i1 %545, label %547, label %546

546:                                              ; preds = %542
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1647, ptr noundef nonnull @.str.4) #22
  br label %547

547:                                              ; preds = %535, %542, %546, %330
  %548 = phi ptr [ null, %330 ], [ %543, %546 ], [ %543, %542 ], [ null, %535 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  %549 = icmp eq ptr %548, null
  br i1 %549, label %557, label %550

550:                                              ; preds = %547
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr %548, ptr %2, align 8, !tbaa !68
  br label %551

551:                                              ; preds = %550, %551
  %552 = phi ptr [ %553, %551 ], [ %548, %550 ]
  call fastcc void @build_access_subtree(ptr noundef nonnull %2)
  %553 = load ptr, ptr %2, align 8, !tbaa !68
  %554 = getelementptr inbounds %struct.access, ptr %552, i64 0, i32 6
  store ptr %553, ptr %554, align 8, !tbaa !182
  %555 = icmp eq ptr %553, null
  br i1 %555, label %556, label %551, !llvm.loop !269

556:                                              ; preds = %551
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  br label %558

557:                                              ; preds = %547
  tail call fastcc void @disqualify_candidate(ptr noundef %324, ptr noundef nonnull @.str.27)
  br label %558

558:                                              ; preds = %557, %556
  %559 = lshr i64 %315, 1
  %560 = add i32 %318, 1
  br label %259, !llvm.loop !270

561:                                              ; preds = %598, %575
  %562 = load ptr, ptr @work_queue_head, align 8, !tbaa !68
  %563 = icmp eq ptr %562, null
  br i1 %563, label %602, label %564, !llvm.loop !271

564:                                              ; preds = %320, %561
  %565 = phi ptr [ %562, %561 ], [ %321, %320 ]
  %566 = getelementptr inbounds %struct.access, ptr %565, i64 0, i32 12
  %567 = load ptr, ptr %566, align 8, !tbaa !272
  store ptr %567, ptr @work_queue_head, align 8, !tbaa !68
  store ptr null, ptr %566, align 8, !tbaa !272
  %568 = getelementptr inbounds %struct.access, ptr %565, i64 0, i32 14
  %569 = load i16, ptr %568, align 8
  %570 = and i16 %569, -5
  store i16 %570, ptr %568, align 8
  %571 = getelementptr inbounds %struct.access, ptr %565, i64 0, i32 10
  %572 = load ptr, ptr %571, align 8, !tbaa !264
  %573 = icmp eq ptr %572, null
  br i1 %573, label %574, label %575

574:                                              ; preds = %564
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2020, ptr noundef nonnull @.str.4) #22
  br label %575

575:                                              ; preds = %574, %564
  %576 = load ptr, ptr %571, align 8, !tbaa !68
  %577 = icmp eq ptr %576, null
  br i1 %577, label %561, label %578

578:                                              ; preds = %575, %598
  %579 = phi ptr [ %600, %598 ], [ %576, %575 ]
  %580 = load ptr, ptr %579, align 8, !tbaa !273
  %581 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !68
  %582 = getelementptr inbounds %struct.access, ptr %580, i64 0, i32 2
  %583 = load ptr, ptr %582, align 8, !tbaa !185
  %584 = getelementptr inbounds %struct.tree_decl_minimal, ptr %583, i64 0, i32 2
  %585 = load i32, ptr %584, align 4, !tbaa !79
  %586 = tail call i32 @bitmap_bit_p(ptr noundef %581, i32 noundef %585) #22
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %598, label %588

588:                                              ; preds = %578
  %589 = getelementptr inbounds %struct.access, ptr %580, i64 0, i32 7
  %590 = load ptr, ptr %589, align 8, !tbaa !154
  %591 = tail call fastcc zeroext i8 @propagate_subaccesses_across_link(ptr noundef %590, ptr noundef nonnull %565), !range !114
  %592 = icmp eq i8 %591, 0
  br i1 %592, label %598, label %593

593:                                              ; preds = %588
  %594 = getelementptr inbounds %struct.access, ptr %590, i64 0, i32 10
  %595 = load ptr, ptr %594, align 8, !tbaa !264
  %596 = icmp eq ptr %595, null
  br i1 %596, label %598, label %597

597:                                              ; preds = %593
  tail call fastcc void @add_access_to_work_queue(ptr noundef %590)
  br label %598

598:                                              ; preds = %597, %593, %588, %578
  %599 = getelementptr inbounds %struct.assign_link, ptr %579, i64 0, i32 2
  %600 = load ptr, ptr %599, align 8, !tbaa !68
  %601 = icmp eq ptr %600, null
  br i1 %601, label %561, label %578, !llvm.loop !274

602:                                              ; preds = %561, %320
  %603 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !68
  tail call void @bitmap_copy(ptr noundef nonnull %120, ptr noundef %603) #22
  %604 = load ptr, ptr %120, align 8, !tbaa !255
  %605 = icmp eq ptr %604, null
  %606 = select i1 %605, ptr @bitmap_zero_bits, ptr %604
  %607 = getelementptr inbounds %struct.bitmap_element_def, ptr %606, i64 0, i32 2
  %608 = load i32, ptr %607, align 8, !tbaa !257
  %609 = shl i32 %608, 7
  %610 = getelementptr inbounds %struct.bitmap_element_def, ptr %606, i64 0, i32 3
  %611 = load i64, ptr %610, align 8, !tbaa !124
  %612 = icmp eq i64 %611, 0
  %613 = zext i1 %612 to i32
  %614 = or disjoint i32 %609, %613
  br label %615

615:                                              ; preds = %731, %602
  %616 = phi i64 [ %611, %602 ], [ %733, %731 ]
  %617 = phi i32 [ 0, %602 ], [ %673, %731 ]
  %618 = phi ptr [ %606, %602 ], [ %674, %731 ]
  %619 = phi i32 [ %614, %602 ], [ %734, %731 ]
  %620 = phi i32 [ 0, %602 ], [ %732, %731 ]
  %621 = icmp eq i64 %616, 0
  br i1 %621, label %636, label %622

622:                                              ; preds = %650, %615
  %623 = phi i64 [ %616, %615 ], [ %655, %650 ]
  %624 = phi i32 [ %617, %615 ], [ %651, %650 ]
  %625 = phi ptr [ %618, %615 ], [ %642, %650 ]
  %626 = phi i32 [ %619, %615 ], [ %652, %650 ]
  %627 = and i64 %623, 1
  %628 = icmp eq i64 %627, 0
  br i1 %628, label %629, label %671

629:                                              ; preds = %622, %629
  %630 = phi i32 [ %633, %629 ], [ %626, %622 ]
  %631 = phi i64 [ %632, %629 ], [ %623, %622 ]
  %632 = lshr exact i64 %631, 1
  %633 = add i32 %630, 1
  %634 = and i64 %631, 2
  %635 = icmp eq i64 %634, 0
  br i1 %635, label %629, label %671, !llvm.loop !259

636:                                              ; preds = %615
  %637 = add i32 %619, 63
  %638 = and i32 %637, -64
  %639 = add i32 %617, 1
  br label %640

640:                                              ; preds = %667, %636
  %641 = phi i64 [ %616, %636 ], [ %662, %667 ]
  %642 = phi ptr [ %618, %636 ], [ %665, %667 ]
  %643 = phi i32 [ %638, %636 ], [ %670, %667 ]
  %644 = phi i32 [ %639, %636 ], [ 0, %667 ]
  %645 = icmp eq i32 %644, 2
  br i1 %645, label %661, label %646

646:                                              ; preds = %640
  %647 = add i32 %643, 128
  %648 = shl i32 %644, 6
  %649 = sub i32 %647, %648
  br label %650

650:                                              ; preds = %646, %657
  %651 = phi i32 [ %659, %657 ], [ %644, %646 ]
  %652 = phi i32 [ %658, %657 ], [ %643, %646 ]
  %653 = zext i32 %651 to i64
  %654 = getelementptr inbounds %struct.bitmap_element_def, ptr %642, i64 0, i32 3, i64 %653
  %655 = load i64, ptr %654, align 8, !tbaa !124
  %656 = icmp eq i64 %655, 0
  br i1 %656, label %657, label %622

657:                                              ; preds = %650
  %658 = add i32 %652, 64
  %659 = add i32 %651, 1
  %660 = icmp eq i32 %659, 2
  br i1 %660, label %661, label %650, !llvm.loop !260

661:                                              ; preds = %657, %640
  %662 = phi i64 [ %641, %640 ], [ %655, %657 ]
  %663 = phi i32 [ %643, %640 ], [ %649, %657 ]
  %664 = phi i32 [ %644, %640 ], [ 2, %657 ]
  %665 = load ptr, ptr %642, align 8, !tbaa !261
  %666 = icmp eq ptr %665, null
  br i1 %666, label %671, label %667

667:                                              ; preds = %661
  %668 = getelementptr inbounds %struct.bitmap_element_def, ptr %665, i64 0, i32 2
  %669 = load i32, ptr %668, align 8, !tbaa !257
  %670 = shl i32 %669, 7
  br label %640, !llvm.loop !262

671:                                              ; preds = %661, %629, %622
  %672 = phi i64 [ %623, %622 ], [ %632, %629 ], [ %662, %661 ]
  %673 = phi i32 [ %624, %622 ], [ %624, %629 ], [ %664, %661 ]
  %674 = phi ptr [ %625, %622 ], [ %625, %629 ], [ %665, %661 ]
  %675 = phi i32 [ %626, %622 ], [ %633, %629 ], [ %663, %661 ]
  %676 = phi i1 [ false, %622 ], [ false, %629 ], [ true, %661 ]
  br i1 %676, label %735, label %677

677:                                              ; preds = %671
  %678 = tail call ptr @referenced_var_lookup(i32 noundef %675) #22
  %679 = load ptr, ptr @base_access_vec, align 8, !tbaa !68
  %680 = tail call ptr @pointer_map_contains(ptr noundef %679, ptr noundef %678) #22
  %681 = icmp eq ptr %680, null
  br i1 %681, label %684, label %682

682:                                              ; preds = %677
  %683 = load ptr, ptr %680, align 8, !tbaa !68
  br label %684

684:                                              ; preds = %682, %677
  %685 = phi ptr [ %683, %682 ], [ null, %677 ]
  %686 = icmp eq ptr %685, null
  br i1 %686, label %690, label %687

687:                                              ; preds = %684
  %688 = getelementptr inbounds %struct.VEC_access_p_base, ptr %685, i64 0, i32 2, i64 0
  %689 = load ptr, ptr %688, align 8, !tbaa !68
  br label %690

690:                                              ; preds = %687, %684
  %691 = phi ptr [ %689, %687 ], [ null, %684 ]
  %692 = icmp eq ptr %691, null
  br i1 %692, label %702, label %693

693:                                              ; preds = %690, %693
  %694 = phi i8 [ %698, %693 ], [ 0, %690 ]
  %695 = phi ptr [ %700, %693 ], [ %691, %690 ]
  %696 = tail call fastcc zeroext i8 @analyze_access_subtree(ptr noundef nonnull %695, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0), !range !114
  %697 = icmp eq i8 %696, 0
  %698 = select i1 %697, i8 %694, i8 1
  %699 = getelementptr inbounds %struct.access, ptr %695, i64 0, i32 6
  %700 = load ptr, ptr %699, align 8, !tbaa !182
  %701 = icmp eq ptr %700, null
  br i1 %701, label %702, label %693, !llvm.loop !275

702:                                              ; preds = %693, %690
  %703 = phi i8 [ 0, %690 ], [ %698, %693 ]
  %704 = icmp eq i8 %703, 0
  br i1 %704, label %730, label %705

705:                                              ; preds = %702
  %706 = add nsw i32 %620, 1
  %707 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %708 = icmp eq ptr %707, null
  br i1 %708, label %731, label %709

709:                                              ; preds = %705
  %710 = load i32, ptr @dump_flags, align 4, !tbaa !83
  %711 = and i32 %710, 8
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %731, label %713

713:                                              ; preds = %709
  %714 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 18, i64 1, ptr nonnull %707)
  %715 = load ptr, ptr @dump_file, align 8, !tbaa !68
  tail call void @print_generic_expr(ptr noundef %715, ptr noundef %678, i32 noundef 0) #22
  %716 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %717 = getelementptr inbounds %struct.tree_decl_minimal, ptr %678, i64 0, i32 2
  %718 = load i32, ptr %717, align 4, !tbaa !79
  %719 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %716, ptr noundef nonnull @.str.26, i32 noundef %718)
  %720 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %721 = icmp eq ptr %691, null
  br i1 %721, label %727, label %722

722:                                              ; preds = %713, %722
  %723 = phi ptr [ %725, %722 ], [ %691, %713 ]
  tail call fastcc void @dump_access_tree_1(ptr noundef %720, ptr noundef nonnull %723, i32 noundef 0)
  %724 = getelementptr inbounds %struct.access, ptr %723, i64 0, i32 6
  %725 = load ptr, ptr %724, align 8, !tbaa !182
  %726 = icmp eq ptr %725, null
  br i1 %726, label %727, label %722, !llvm.loop !276

727:                                              ; preds = %722, %713
  %728 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %729 = tail call i32 @fputc(i32 10, ptr %728)
  br label %731

730:                                              ; preds = %702
  tail call fastcc void @disqualify_candidate(ptr noundef %678, ptr noundef nonnull @.str.29)
  br label %731

731:                                              ; preds = %730, %727, %709, %705
  %732 = phi i32 [ %706, %727 ], [ %706, %709 ], [ %706, %705 ], [ %620, %730 ]
  %733 = lshr i64 %672, 1
  %734 = add i32 %675, 1
  br label %615, !llvm.loop !277

735:                                              ; preds = %671
  tail call void @bitmap_obstack_free(ptr noundef nonnull %120) #22
  %736 = icmp eq i32 %620, 0
  br i1 %736, label %829, label %737

737:                                              ; preds = %735
  %738 = load ptr, ptr @cfun, align 8, !tbaa !68
  tail call void @statistics_counter_event(ptr noundef %738, ptr noundef nonnull @.str.30, i32 noundef %620) #22
  tail call fastcc void @scan_function(ptr noundef nonnull @sra_modify_expr, ptr noundef nonnull @sra_modify_assign, ptr noundef null, i8 noundef zeroext 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  %739 = load ptr, ptr @current_function_decl, align 8, !tbaa !68
  %740 = getelementptr inbounds %struct.tree_decl_non_common, ptr %739, i64 0, i32 2
  %741 = load ptr, ptr %740, align 8, !tbaa !79
  %742 = icmp eq ptr %741, null
  br i1 %742, label %796, label %743

743:                                              ; preds = %737
  %744 = getelementptr inbounds i8, ptr %1, i64 8
  %745 = getelementptr inbounds i8, ptr %1, i64 16
  br label %746

746:                                              ; preds = %743, %791
  %747 = phi ptr [ %741, %743 ], [ %794, %791 ]
  %748 = phi ptr [ null, %743 ], [ %792, %791 ]
  %749 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !68
  %750 = getelementptr inbounds %struct.tree_decl_minimal, ptr %747, i64 0, i32 2
  %751 = load i32, ptr %750, align 4, !tbaa !79
  %752 = call i32 @bitmap_bit_p(ptr noundef %749, i32 noundef %751) #22
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %791, label %754

754:                                              ; preds = %746
  %755 = load ptr, ptr @base_access_vec, align 8, !tbaa !68
  %756 = call ptr @pointer_map_contains(ptr noundef %755, ptr noundef nonnull %747) #22
  %757 = icmp eq ptr %756, null
  br i1 %757, label %760, label %758

758:                                              ; preds = %754
  %759 = load ptr, ptr %756, align 8, !tbaa !68
  br label %760

760:                                              ; preds = %758, %754
  %761 = phi ptr [ %759, %758 ], [ null, %754 ]
  %762 = icmp eq ptr %761, null
  br i1 %762, label %791, label %763

763:                                              ; preds = %760
  %764 = icmp eq ptr %748, null
  br i1 %764, label %765, label %781

765:                                              ; preds = %763
  %766 = call ptr @gimple_seq_alloc() #22
  %767 = icmp eq ptr %766, null
  br i1 %767, label %770, label %768

768:                                              ; preds = %765
  %769 = load ptr, ptr %766, align 8, !tbaa !226, !noalias !278
  br label %770

770:                                              ; preds = %768, %765
  %771 = phi ptr [ %769, %768 ], [ null, %765 ]
  %772 = icmp eq ptr %771, null
  br i1 %772, label %779, label %773

773:                                              ; preds = %770
  %774 = load ptr, ptr %771, align 8, !tbaa !228, !noalias !278
  %775 = icmp eq ptr %774, null
  br i1 %775, label %779, label %776

776:                                              ; preds = %773
  %777 = getelementptr inbounds %struct.gimple_statement_base, ptr %774, i64 0, i32 4
  %778 = load ptr, ptr %777, align 8, !tbaa !79, !noalias !278
  br label %779

779:                                              ; preds = %776, %773, %770
  %780 = phi ptr [ %778, %776 ], [ null, %773 ], [ null, %770 ]
  store ptr %771, ptr %1, align 8, !tbaa.struct !281
  store ptr %766, ptr %744, align 8, !tbaa.struct !282
  store ptr %780, ptr %745, align 8, !tbaa.struct !283
  br label %781

781:                                              ; preds = %779, %763
  %782 = phi ptr [ %748, %763 ], [ %766, %779 ]
  %783 = getelementptr inbounds %struct.VEC_access_p_base, ptr %761, i64 0, i32 2, i64 0
  %784 = load ptr, ptr %783, align 8, !tbaa !68
  %785 = icmp eq ptr %784, null
  br i1 %785, label %791, label %786

786:                                              ; preds = %781, %786
  %787 = phi ptr [ %789, %786 ], [ %784, %781 ]
  call fastcc void @generate_subtree_copies(ptr noundef nonnull %787, ptr noundef nonnull %747, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %788 = getelementptr inbounds %struct.access, ptr %787, i64 0, i32 6
  %789 = load ptr, ptr %788, align 8, !tbaa !68
  %790 = icmp eq ptr %789, null
  br i1 %790, label %791, label %786, !llvm.loop !284

791:                                              ; preds = %786, %781, %760, %746
  %792 = phi ptr [ %748, %746 ], [ %748, %760 ], [ %782, %781 ], [ %782, %786 ]
  %793 = getelementptr inbounds %struct.tree_common, ptr %747, i64 0, i32 1
  %794 = load ptr, ptr %793, align 8, !tbaa !79
  %795 = icmp eq ptr %794, null
  br i1 %795, label %796, label %746, !llvm.loop !285

796:                                              ; preds = %791, %737
  %797 = phi ptr [ null, %737 ], [ %792, %791 ]
  %798 = icmp eq ptr %797, null
  br i1 %798, label %816, label %799

799:                                              ; preds = %796
  %800 = load ptr, ptr @cfun, align 8, !tbaa !68
  %801 = getelementptr inbounds %struct.function, ptr %800, i64 0, i32 1
  %802 = load ptr, ptr %801, align 8, !tbaa !148
  %803 = load ptr, ptr %802, align 8, !tbaa !164
  %804 = getelementptr inbounds %struct.basic_block_def, ptr %803, i64 0, i32 1
  %805 = load ptr, ptr %804, align 8, !tbaa !286
  %806 = icmp eq ptr %805, null
  br i1 %806, label %810, label %807

807:                                              ; preds = %799
  %808 = load i32, ptr %805, align 8, !tbaa !174
  %809 = icmp eq i32 %808, 1
  br i1 %809, label %811, label %810

810:                                              ; preds = %807, %799
  call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 645, ptr noundef nonnull @.str.4) #22
  br label %811

811:                                              ; preds = %810, %807
  %812 = load ptr, ptr %804, align 8, !tbaa !286
  %813 = getelementptr inbounds %struct.VEC_edge_base, ptr %812, i64 0, i32 2, i64 0
  %814 = load ptr, ptr %813, align 8, !tbaa !68
  %815 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %814, ptr noundef nonnull %797) #22
  br label %816

816:                                              ; preds = %796, %811
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  %817 = load ptr, ptr @cfun, align 8, !tbaa !68
  %818 = load i32, ptr @sra_stats, align 4, !tbaa !287
  call void @statistics_counter_event(ptr noundef %817, ptr noundef nonnull @.str.5, i32 noundef %818) #22
  %819 = load ptr, ptr @cfun, align 8, !tbaa !68
  %820 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !288
  call void @statistics_counter_event(ptr noundef %819, ptr noundef nonnull @.str.6, i32 noundef %820) #22
  %821 = load ptr, ptr @cfun, align 8, !tbaa !68
  %822 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 2), align 4, !tbaa !289
  call void @statistics_counter_event(ptr noundef %821, ptr noundef nonnull @.str.7, i32 noundef %822) #22
  %823 = load ptr, ptr @cfun, align 8, !tbaa !68
  %824 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 3), align 4, !tbaa !290
  call void @statistics_counter_event(ptr noundef %823, ptr noundef nonnull @.str.8, i32 noundef %824) #22
  %825 = load ptr, ptr @cfun, align 8, !tbaa !68
  %826 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 4), align 4, !tbaa !291
  call void @statistics_counter_event(ptr noundef %825, ptr noundef nonnull @.str.9, i32 noundef %826) #22
  %827 = load ptr, ptr @cfun, align 8, !tbaa !68
  %828 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 5), align 4, !tbaa !292
  call void @statistics_counter_event(ptr noundef %827, ptr noundef nonnull @.str.10, i32 noundef %828) #22
  br label %829

829:                                              ; preds = %35, %735, %116, %114, %816
  %830 = phi i32 [ 2048, %816 ], [ 0, %116 ], [ 0, %114 ], [ 0, %735 ], [ 0, %35 ]
  call fastcc void @sra_deinitialize()
  ret i32 %830
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sra_initialize() unnamed_addr #11 !prof !293 !PGOFuncName !294 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %1, ptr @candidate_bitmap, align 8, !tbaa !68
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %2, ptr @should_scalarize_away_bitmap, align 8, !tbaa !68
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %3, ptr @cannot_scalarize_away_bitmap, align 8, !tbaa !68
  %4 = tail call i32 @_obstack_begin(ptr noundef nonnull @name_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #22
  %5 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.11, i64 noundef 120, i64 noundef 16) #22
  store ptr %5, ptr @access_pool, align 8, !tbaa !68
  %6 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.12, i64 noundef 24, i64 noundef 16) #22
  store ptr %6, ptr @link_pool, align 8, !tbaa !68
  %7 = tail call ptr @pointer_map_create() #22
  store ptr %7, ptr @base_access_vec, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) @sra_stats, i8 0, i64 40, i1 false)
  store i1 false, ptr @encountered_apply_args, align 1
  store i1 false, ptr @encountered_recursive_call, align 1
  store i1 false, ptr @encountered_unchangable_recursive_call, align 1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @scan_function(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4) unnamed_addr #9 !prof !67 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  %9 = load ptr, ptr @cfun, align 8, !tbaa !68
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !148
  %12 = load ptr, ptr %11, align 8, !tbaa !164
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !167
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !169
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %417, label %18

18:                                               ; preds = %5
  %19 = icmp ne ptr %2, null
  %20 = getelementptr inbounds i8, ptr %6, i64 8
  %21 = getelementptr inbounds i8, ptr %6, i64 16
  %22 = icmp ne i8 %3, 0
  %23 = icmp eq i8 %3, 0
  %24 = icmp eq i8 %3, 0
  %25 = icmp ne i8 %3, 0
  %26 = icmp eq i8 %3, 0
  br label %27

27:                                               ; preds = %18, %408
  %28 = phi ptr [ %14, %18 ], [ %410, %408 ]
  %29 = phi i8 [ 0, %18 ], [ %400, %408 ]
  br i1 %19, label %30, label %43

30:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %28) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !281
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  %31 = load ptr, ptr %6, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %30, %33
  %34 = phi ptr [ %41, %33 ], [ %31, %30 ]
  %35 = phi i8 [ %38, %33 ], [ %29, %30 ]
  %36 = load ptr, ptr %34, align 8, !tbaa !228
  %37 = call zeroext i8 %2(ptr noundef %36, ptr noundef %4) #22, !callees !295
  %38 = or i8 %37, %35
  %39 = load ptr, ptr %6, align 8, !tbaa !296
  %40 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !230
  store ptr %41, ptr %6, align 8, !tbaa !296
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %33, !llvm.loop !298

43:                                               ; preds = %33, %30, %27
  %44 = phi i8 [ %29, %27 ], [ %29, %30 ], [ %38, %33 ]
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 13
  %46 = load i32, ptr %45, align 8, !tbaa !220, !noalias !299
  %47 = and i32 %46, 512
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !79, !noalias !299
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %51, align 8, !tbaa !224, !noalias !299
  br label %55

55:                                               ; preds = %53, %49, %43
  %56 = phi ptr [ %54, %53 ], [ null, %49 ], [ null, %43 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %56, align 8, !tbaa !226, !noalias !299
  br label %60

60:                                               ; preds = %55, %58
  %61 = phi ptr [ %59, %58 ], [ null, %55 ]
  store ptr %61, ptr %6, align 8, !tbaa.struct !281
  store ptr %56, ptr %20, align 8, !tbaa.struct !282
  store ptr %28, ptr %21, align 8, !tbaa.struct !283
  %62 = icmp eq ptr %61, null
  br i1 %62, label %398, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  br label %68

68:                                               ; preds = %63, %393
  %69 = phi ptr [ %61, %63 ], [ %396, %393 ]
  %70 = phi i8 [ %44, %63 ], [ %395, %393 ]
  %71 = phi i8 [ 0, %63 ], [ %394, %393 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  %72 = load ptr, ptr %69, align 8, !tbaa !228
  store ptr %72, ptr %8, align 8, !tbaa !68
  %73 = load ptr, ptr @final_bbs, align 8
  %74 = icmp ne ptr %73, null
  %75 = select i1 %22, i1 %74, i1 false
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = call zeroext i8 @stmt_can_throw_external(ptr noundef %72) #22
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr @final_bbs, align 8, !tbaa !68
  %81 = load i32, ptr %64, align 8, !tbaa !172
  %82 = call zeroext i8 @bitmap_set_bit(ptr noundef %80, i32 noundef %81) #22
  br label %83

83:                                               ; preds = %79, %76, %68
  %84 = load ptr, ptr %8, align 8, !tbaa !68
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 255
  %87 = trunc i32 %85 to i8
  switch i8 %87, label %370 [
    i8 9, label %93
    i8 6, label %121
    i8 8, label %88
    i8 7, label %282
  ]

88:                                               ; preds = %83
  %89 = load ptr, ptr %8, align 8, !tbaa !68
  %90 = getelementptr inbounds %struct.gimple_statement_base, ptr %89, i64 0, i32 3
  %91 = load i32, ptr %90, align 4, !tbaa !79
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %165, label %132

93:                                               ; preds = %83
  %94 = add nsw i32 %86, -10
  %95 = icmp ult i32 %94, -9
  br i1 %95, label %107, label %96

96:                                               ; preds = %93
  %97 = zext nneg i32 %86 to i64
  %98 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !83
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !124
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %105

105:                                              ; preds = %104, %96
  %106 = getelementptr inbounds i8, ptr %84, i64 %102
  br label %107

107:                                              ; preds = %93, %105
  %108 = phi ptr [ %106, %105 ], [ null, %93 ]
  %109 = load ptr, ptr %108, align 8, !tbaa !68
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = call zeroext i8 %0(ptr noundef nonnull %108, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %4) #22, !callees !302
  br label %113

113:                                              ; preds = %111, %107
  %114 = phi i8 [ %112, %111 ], [ 0, %107 ]
  %115 = load ptr, ptr @final_bbs, align 8
  %116 = icmp ne ptr %115, null
  %117 = select i1 %22, i1 %116, i1 false
  br i1 %117, label %118, label %370

118:                                              ; preds = %113
  %119 = load i32, ptr %67, align 8, !tbaa !172
  %120 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %115, i32 noundef %119) #22
  br label %370

121:                                              ; preds = %83
  %122 = call i32 %1(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef %4) #22, !callees !303
  %123 = icmp eq i32 %122, 1
  %124 = zext i1 %123 to i8
  %125 = icmp eq i32 %122, 2
  %126 = icmp ne i32 %122, 2
  %127 = select i1 %19, i1 %126, i1 false
  br i1 %127, label %128, label %370

128:                                              ; preds = %121
  %129 = load ptr, ptr %8, align 8, !tbaa !68
  %130 = call zeroext i8 %2(ptr noundef %129, ptr noundef %4) #22, !callees !295
  %131 = or i8 %130, %124
  br label %370

132:                                              ; preds = %88, %154
  %133 = phi i64 [ %158, %154 ], [ 0, %88 ]
  %134 = phi ptr [ %159, %154 ], [ %89, %88 ]
  %135 = phi i8 [ %157, %154 ], [ 0, %88 ]
  %136 = add nuw i64 %133, 3
  %137 = load i32, ptr %134, align 8
  %138 = and i32 %137, 255
  %139 = add nsw i32 %138, -10
  %140 = icmp ult i32 %139, -9
  br i1 %140, label %154, label %141

141:                                              ; preds = %132
  %142 = zext nneg i32 %138 to i64
  %143 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !83
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %145
  %147 = load i64, ptr %146, align 8, !tbaa !124
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %150

150:                                              ; preds = %149, %141
  %151 = getelementptr inbounds i8, ptr %134, i64 %147
  %152 = and i64 %136, 4294967295
  %153 = getelementptr inbounds ptr, ptr %151, i64 %152
  br label %154

154:                                              ; preds = %132, %150
  %155 = phi ptr [ %153, %150 ], [ null, %132 ]
  %156 = call zeroext i8 %0(ptr noundef %155, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %4) #22, !callees !302
  %157 = or i8 %156, %135
  %158 = add nuw nsw i64 %133, 1
  %159 = load ptr, ptr %8, align 8, !tbaa !68
  %160 = getelementptr inbounds %struct.gimple_statement_base, ptr %159, i64 0, i32 3
  %161 = load i32, ptr %160, align 4, !tbaa !79
  %162 = add i32 %161, -3
  %163 = zext i32 %162 to i64
  %164 = icmp ult i64 %158, %163
  br i1 %164, label %132, label %165, !llvm.loop !304

165:                                              ; preds = %154, %88
  %166 = phi i8 [ 0, %88 ], [ %157, %154 ]
  %167 = phi ptr [ %89, %88 ], [ %159, %154 ]
  %168 = load i32, ptr @sra_mode, align 4
  %169 = icmp eq i32 %168, 0
  %170 = select i1 %22, i1 %169, i1 false
  br i1 %170, label %171, label %230

171:                                              ; preds = %165
  %172 = load i32, ptr %167, align 8
  %173 = and i32 %172, 255
  %174 = add nsw i32 %173, -10
  %175 = icmp ult i32 %174, -9
  br i1 %175, label %189, label %176

176:                                              ; preds = %171
  %177 = zext nneg i32 %173 to i64
  %178 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %177
  %179 = load i32, ptr %178, align 4, !tbaa !83
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %180
  %182 = load i64, ptr %181, align 8, !tbaa !124
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %185

185:                                              ; preds = %184, %176
  %186 = getelementptr inbounds i8, ptr %167, i64 %182
  %187 = getelementptr inbounds ptr, ptr %186, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !68
  br label %189

189:                                              ; preds = %185, %171
  %190 = phi ptr [ %188, %185 ], [ null, %171 ]
  %191 = load i64, ptr %190, align 8
  %192 = and i64 %191, 65535
  %193 = icmp eq i64 %192, 121
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.tree_exp, ptr %190, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !79
  br label %197

197:                                              ; preds = %189, %194
  %198 = phi ptr [ %196, %194 ], [ null, %189 ]
  %199 = load ptr, ptr %8, align 8, !tbaa !68
  %200 = call i32 @gimple_call_flags(ptr noundef %199) #22
  %201 = icmp eq ptr %198, null
  br i1 %201, label %221, label %202

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.tree_function_decl, ptr %198, i64 0, i32 5
  %204 = load i32, ptr %203, align 8
  %205 = and i32 %204, 8191
  %206 = icmp eq i32 %205, 6561
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  store i1 true, ptr @encountered_apply_args, align 1
  br label %208

208:                                              ; preds = %207, %202
  %209 = call ptr @cgraph_get_node(ptr noundef nonnull %198) #22
  %210 = load ptr, ptr @current_function_decl, align 8, !tbaa !68
  %211 = call ptr @cgraph_get_node(ptr noundef %210) #22
  %212 = icmp eq ptr %209, %211
  br i1 %212, label %213, label %221

213:                                              ; preds = %208
  store i1 true, ptr @encountered_recursive_call, align 1
  %214 = load ptr, ptr %8, align 8, !tbaa !68
  %215 = getelementptr inbounds %struct.gimple_statement_base, ptr %214, i64 0, i32 3
  %216 = load i32, ptr %215, align 4, !tbaa !79
  %217 = add i32 %216, -3
  %218 = load i32, ptr @func_param_count, align 4, !tbaa !83
  %219 = icmp ult i32 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %213
  store i1 true, ptr @encountered_unchangable_recursive_call, align 1
  br label %221

221:                                              ; preds = %208, %220, %213, %197
  %222 = load ptr, ptr @final_bbs, align 8, !tbaa !68
  %223 = icmp ne ptr %222, null
  %224 = and i32 %200, 3
  %225 = icmp eq i32 %224, 0
  %226 = select i1 %223, i1 %225, i1 false
  br i1 %226, label %227, label %230

227:                                              ; preds = %221
  %228 = load i32, ptr %66, align 8, !tbaa !172
  %229 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %222, i32 noundef %228) #22
  br label %230

230:                                              ; preds = %221, %227, %165
  %231 = load ptr, ptr %8, align 8, !tbaa !68
  %232 = load i32, ptr %231, align 8
  %233 = and i32 %232, 255
  %234 = add nsw i32 %233, -10
  %235 = icmp ult i32 %234, -9
  br i1 %235, label %248, label %236

236:                                              ; preds = %230
  %237 = zext nneg i32 %233 to i64
  %238 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %237
  %239 = load i32, ptr %238, align 4, !tbaa !83
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %240
  %242 = load i64, ptr %241, align 8, !tbaa !124
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %236
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %245

245:                                              ; preds = %244, %236
  %246 = getelementptr inbounds i8, ptr %231, i64 %242
  %247 = load ptr, ptr %246, align 8, !tbaa !68
  br label %248

248:                                              ; preds = %230, %245
  %249 = phi ptr [ %247, %245 ], [ null, %230 ]
  %250 = icmp eq ptr %249, null
  br i1 %250, label %370, label %251

251:                                              ; preds = %248
  %252 = load ptr, ptr %8, align 8, !tbaa !68
  %253 = load i32, ptr %252, align 8
  %254 = and i32 %253, 255
  %255 = add nsw i32 %254, -10
  %256 = icmp ult i32 %255, -9
  br i1 %256, label %268, label %257

257:                                              ; preds = %251
  %258 = zext nneg i32 %254 to i64
  %259 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !83
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %261
  %263 = load i64, ptr %262, align 8, !tbaa !124
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %257
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %266

266:                                              ; preds = %265, %257
  %267 = getelementptr inbounds i8, ptr %252, i64 %263
  br label %268

268:                                              ; preds = %251, %266
  %269 = phi ptr [ %267, %266 ], [ null, %251 ]
  br i1 %24, label %275, label %270

270:                                              ; preds = %268
  %271 = load ptr, ptr %8, align 8, !tbaa !68
  %272 = load ptr, ptr %269, align 8, !tbaa !68
  %273 = call fastcc zeroext i8 @disqualify_ops_if_throwing_stmt(ptr noundef %271, ptr noundef %272, ptr noundef null), !range !114
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %275, label %370

275:                                              ; preds = %270, %268
  %276 = call zeroext i8 %0(ptr noundef %269, ptr noundef nonnull %6, i8 noundef zeroext 1, ptr noundef %4) #22, !callees !302
  %277 = or i8 %276, %166
  br i1 %19, label %278, label %370

278:                                              ; preds = %275
  %279 = load ptr, ptr %8, align 8, !tbaa !68
  %280 = call zeroext i8 %2(ptr noundef %279, ptr noundef %4) #22, !callees !295
  %281 = or i8 %280, %277
  br label %370

282:                                              ; preds = %83
  br i1 %23, label %290, label %283

283:                                              ; preds = %282
  %284 = call zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef nonnull %84, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull @asm_visit_addr) #22
  %285 = load ptr, ptr @final_bbs, align 8, !tbaa !68
  %286 = icmp eq ptr %285, null
  br i1 %286, label %290, label %287

287:                                              ; preds = %283
  %288 = load i32, ptr %65, align 8, !tbaa !172
  %289 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %285, i32 noundef %288) #22
  br label %290

290:                                              ; preds = %283, %287, %282
  %291 = load ptr, ptr %8, align 8, !tbaa !68
  %292 = getelementptr inbounds %struct.gimple_statement_asm, ptr %291, i64 0, i32 2
  %293 = load i8, ptr %292, align 8, !tbaa !79
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %322, %290
  %296 = phi i8 [ 0, %290 ], [ %326, %322 ]
  %297 = load ptr, ptr %8, align 8, !tbaa !68
  %298 = getelementptr inbounds %struct.gimple_statement_asm, ptr %297, i64 0, i32 3
  %299 = load i8, ptr %298, align 1, !tbaa !79
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %370, label %333

301:                                              ; preds = %290, %322
  %302 = phi i64 [ %327, %322 ], [ 0, %290 ]
  %303 = phi ptr [ %328, %322 ], [ %291, %290 ]
  %304 = phi i8 [ %326, %322 ], [ 0, %290 ]
  %305 = load i32, ptr %303, align 8
  %306 = and i32 %305, 255
  %307 = add nsw i32 %306, -10
  %308 = icmp ult i32 %307, -9
  br i1 %308, label %322, label %309

309:                                              ; preds = %301
  %310 = zext nneg i32 %306 to i64
  %311 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !83
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %313
  %315 = load i64, ptr %314, align 8, !tbaa !124
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %309
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %318

318:                                              ; preds = %317, %309
  %319 = getelementptr inbounds i8, ptr %303, i64 %315
  %320 = getelementptr inbounds ptr, ptr %319, i64 %302
  %321 = load ptr, ptr %320, align 8, !tbaa !68
  br label %322

322:                                              ; preds = %301, %318
  %323 = phi ptr [ %321, %318 ], [ null, %301 ]
  %324 = getelementptr inbounds %struct.tree_list, ptr %323, i64 0, i32 2
  %325 = call zeroext i8 %0(ptr noundef nonnull %324, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %4) #22, !callees !302
  %326 = or i8 %325, %304
  %327 = add nuw nsw i64 %302, 1
  %328 = load ptr, ptr %8, align 8, !tbaa !68
  %329 = getelementptr inbounds %struct.gimple_statement_asm, ptr %328, i64 0, i32 2
  %330 = load i8, ptr %329, align 8, !tbaa !79
  %331 = zext i8 %330 to i64
  %332 = icmp ult i64 %327, %331
  br i1 %332, label %301, label %295, !llvm.loop !305

333:                                              ; preds = %295, %359
  %334 = phi ptr [ %365, %359 ], [ %297, %295 ]
  %335 = phi i32 [ %364, %359 ], [ 0, %295 ]
  %336 = phi i8 [ %363, %359 ], [ %296, %295 ]
  %337 = getelementptr inbounds %struct.gimple_statement_asm, ptr %334, i64 0, i32 2
  %338 = load i8, ptr %337, align 8, !tbaa !79
  %339 = zext i8 %338 to i32
  %340 = add nuw i32 %335, %339
  %341 = load i32, ptr %334, align 8
  %342 = and i32 %341, 255
  %343 = add nsw i32 %342, -10
  %344 = icmp ult i32 %343, -9
  br i1 %344, label %359, label %345

345:                                              ; preds = %333
  %346 = zext nneg i32 %342 to i64
  %347 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %346
  %348 = load i32, ptr %347, align 4, !tbaa !83
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %349
  %351 = load i64, ptr %350, align 8, !tbaa !124
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %345
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %354

354:                                              ; preds = %353, %345
  %355 = getelementptr inbounds i8, ptr %334, i64 %351
  %356 = zext i32 %340 to i64
  %357 = getelementptr inbounds ptr, ptr %355, i64 %356
  %358 = load ptr, ptr %357, align 8, !tbaa !68
  br label %359

359:                                              ; preds = %333, %354
  %360 = phi ptr [ %358, %354 ], [ null, %333 ]
  %361 = getelementptr inbounds %struct.tree_list, ptr %360, i64 0, i32 2
  %362 = call zeroext i8 %0(ptr noundef nonnull %361, ptr noundef nonnull %6, i8 noundef zeroext 1, ptr noundef %4) #22, !callees !302
  %363 = or i8 %362, %336
  %364 = add nuw nsw i32 %335, 1
  %365 = load ptr, ptr %8, align 8, !tbaa !68
  %366 = getelementptr inbounds %struct.gimple_statement_asm, ptr %365, i64 0, i32 3
  %367 = load i8, ptr %366, align 1, !tbaa !79
  %368 = zext i8 %367 to i32
  %369 = icmp ult i32 %364, %368
  br i1 %369, label %333, label %370, !llvm.loop !306

370:                                              ; preds = %359, %295, %275, %270, %278, %83, %248, %121, %128, %113, %118
  %371 = phi i1 [ false, %83 ], [ false, %248 ], [ %125, %128 ], [ %125, %121 ], [ false, %118 ], [ false, %113 ], [ false, %278 ], [ false, %270 ], [ false, %275 ], [ false, %295 ], [ false, %359 ]
  %372 = phi i8 [ 0, %83 ], [ %166, %248 ], [ %131, %128 ], [ %124, %121 ], [ %114, %118 ], [ %114, %113 ], [ %281, %278 ], [ %166, %270 ], [ %277, %275 ], [ %296, %295 ], [ %363, %359 ]
  %373 = icmp eq i8 %372, 0
  %374 = or i1 %373, %25
  %375 = select i1 %373, i8 %70, i8 1
  br i1 %374, label %386, label %376

376:                                              ; preds = %370
  %377 = load ptr, ptr %8, align 8, !tbaa !68
  %378 = load i32, ptr %377, align 8
  %379 = and i32 %378, 255
  %380 = add nsw i32 %379, -10
  %381 = icmp ult i32 %380, -9
  br i1 %381, label %383, label %382

382:                                              ; preds = %376
  call void @gimple_set_modified(ptr noundef nonnull %377, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %377) #22
  br label %383

383:                                              ; preds = %376, %382
  %384 = load ptr, ptr %8, align 8, !tbaa !68
  %385 = call zeroext i8 @maybe_clean_eh_stmt(ptr noundef %384) #22
  br label %386

386:                                              ; preds = %370, %383
  %387 = phi i8 [ 1, %383 ], [ %71, %370 ]
  %388 = phi i8 [ 1, %383 ], [ %375, %370 ]
  br i1 %371, label %393, label %389

389:                                              ; preds = %386
  %390 = load ptr, ptr %6, align 8, !tbaa !296
  %391 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %390, i64 0, i32 2
  %392 = load ptr, ptr %391, align 8, !tbaa !230
  store ptr %392, ptr %6, align 8, !tbaa !296
  br label %393

393:                                              ; preds = %386, %389
  %394 = phi i8 [ %387, %389 ], [ 1, %386 ]
  %395 = phi i8 [ 1, %389 ], [ %388, %386 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  %396 = load ptr, ptr %6, align 8
  %397 = icmp eq ptr %396, null
  br i1 %397, label %398, label %68, !llvm.loop !307

398:                                              ; preds = %393, %60
  %399 = phi i8 [ 0, %60 ], [ %394, %393 ]
  %400 = phi i8 [ %44, %60 ], [ %395, %393 ]
  %401 = icmp ne i8 %399, 0
  %402 = select i1 %26, i1 %401, i1 false
  %403 = load i32, ptr @sra_mode, align 4
  %404 = icmp eq i32 %403, 0
  %405 = select i1 %402, i1 %404, i1 false
  br i1 %405, label %406, label %408

406:                                              ; preds = %398
  %407 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %28) #22
  br label %408

408:                                              ; preds = %406, %398
  %409 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 6
  %410 = load ptr, ptr %409, align 8, !tbaa !167
  %411 = load ptr, ptr @cfun, align 8, !tbaa !68
  %412 = getelementptr inbounds %struct.function, ptr %411, i64 0, i32 1
  %413 = load ptr, ptr %412, align 8, !tbaa !148
  %414 = getelementptr inbounds %struct.control_flow_graph, ptr %413, i64 0, i32 1
  %415 = load ptr, ptr %414, align 8, !tbaa !169
  %416 = icmp eq ptr %410, %415
  br i1 %416, label %417, label %27, !llvm.loop !308

417:                                              ; preds = %408, %5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @build_access_from_expr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture readnone %3) unnamed_addr #9 !prof !67 {
  %5 = load ptr, ptr %1, align 1
  %6 = load ptr, ptr %5, align 8, !tbaa !228
  %7 = tail call fastcc ptr @build_access_from_expr_1(ptr noundef %0, ptr noundef %6, i8 noundef zeroext %2)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @cannot_scalarize_away_bitmap, align 8, !tbaa !68
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.access, ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !185
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !79
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %10, i32 noundef %16) #22
  br label %18

18:                                               ; preds = %4, %9, %12
  %19 = phi i8 [ 1, %12 ], [ 1, %9 ], [ 0, %4 ]
  ret i8 %19
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @build_accesses_from_assign(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #9 !prof !67 {
  %4 = load ptr, ptr %0, align 8, !tbaa !68
  %5 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %4) #22
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %121, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 8
  %9 = and i32 %8, 255
  %10 = add nsw i32 %9, -10
  %11 = icmp ult i32 %10, -9
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = zext nneg i32 %9 to i64
  %14 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !83
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !124
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %21

21:                                               ; preds = %20, %12
  %22 = getelementptr inbounds i8, ptr %4, i64 %18
  br label %23

23:                                               ; preds = %7, %21
  %24 = phi ptr [ %22, %21 ], [ null, %7 ]
  %25 = load i32, ptr %4, align 8
  %26 = and i32 %25, 255
  %27 = add nsw i32 %26, -10
  %28 = icmp ult i32 %27, -9
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = zext nneg i32 %26 to i64
  %31 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !83
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !124
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %38

38:                                               ; preds = %37, %29
  %39 = getelementptr inbounds i8, ptr %4, i64 %35
  %40 = getelementptr inbounds ptr, ptr %39, i64 1
  br label %41

41:                                               ; preds = %23, %38
  %42 = phi ptr [ %40, %38 ], [ null, %23 ]
  %43 = load ptr, ptr %24, align 8, !tbaa !68
  %44 = load ptr, ptr %42, align 8, !tbaa !68
  %45 = tail call fastcc zeroext i8 @disqualify_ops_if_throwing_stmt(ptr noundef nonnull %4, ptr noundef %43, ptr noundef %44), !range !114
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %121

47:                                               ; preds = %41
  %48 = tail call fastcc ptr @build_access_from_expr_1(ptr noundef nonnull %42, ptr noundef nonnull %4, i8 noundef zeroext 0)
  %49 = tail call fastcc ptr @build_access_from_expr_1(ptr noundef nonnull %24, ptr noundef nonnull %4, i8 noundef zeroext 1)
  %50 = load ptr, ptr @should_scalarize_away_bitmap, align 8, !tbaa !68
  %51 = icmp eq ptr %50, null
  br i1 %51, label %74, label %52

52:                                               ; preds = %47
  %53 = load i32, ptr %4, align 8
  %54 = and i32 %53, 254
  %55 = add nsw i32 %54, -10
  %56 = icmp ult i32 %55, -4
  %57 = and i32 %53, 16384
  %58 = icmp eq i32 %57, 0
  %59 = or i1 %58, %56
  %60 = icmp ne ptr %48, null
  %61 = and i1 %60, %59
  br i1 %61, label %62, label %74

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.access, ptr %48, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !206
  %65 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %64) #22
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load ptr, ptr @should_scalarize_away_bitmap, align 8, !tbaa !68
  %69 = getelementptr inbounds %struct.access, ptr %48, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !185
  %71 = getelementptr inbounds %struct.tree_decl_minimal, ptr %70, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !79
  %73 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %68, i32 noundef %72) #22
  br label %74

74:                                               ; preds = %67, %62, %52, %47
  %75 = icmp ne ptr %49, null
  %76 = icmp ne ptr %48, null
  %77 = and i1 %76, %75
  br i1 %77, label %78, label %118

78:                                               ; preds = %74
  %79 = load i32, ptr @sra_mode, align 4
  %80 = add i32 %79, -1
  %81 = icmp ult i32 %80, 2
  br i1 %81, label %82, label %118

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.access, ptr %49, i64 0, i32 14
  %84 = load i16, ptr %83, align 8
  %85 = and i16 %84, 128
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.access, ptr %48, i64 0, i32 14
  %89 = load i16, ptr %88, align 8
  %90 = and i16 %89, 128
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %118

92:                                               ; preds = %87
  %93 = load ptr, ptr %24, align 8, !tbaa !68
  %94 = getelementptr inbounds %struct.tree_common, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !79
  %96 = load i64, ptr %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = and i32 %97, 65535
  %99 = add nsw i32 %98, -15
  %100 = icmp ult i32 %99, 4
  br i1 %100, label %101, label %118

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.access, ptr %49, i64 0, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !160
  %104 = getelementptr inbounds %struct.access, ptr %48, i64 0, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !160
  %106 = icmp eq i64 %103, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.access, ptr %49, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !206
  %110 = getelementptr inbounds %struct.access, ptr %48, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !206
  %112 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %109, ptr noundef %111) #22
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %107
  %115 = load ptr, ptr @link_pool, align 8, !tbaa !68
  %116 = tail call ptr @pool_alloc(ptr noundef %115) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %116, i8 0, i64 24, i1 false)
  store ptr %49, ptr %116, align 8, !tbaa !273
  %117 = getelementptr inbounds %struct.assign_link, ptr %116, i64 0, i32 1
  store ptr %48, ptr %117, align 8, !tbaa !309
  tail call fastcc void @add_link_to_rhs(ptr noundef nonnull %48, ptr noundef nonnull %116)
  br label %118

118:                                              ; preds = %92, %78, %114, %107, %101, %87, %82, %74
  %119 = or i1 %76, %75
  %120 = zext i1 %119 to i32
  br label %121

121:                                              ; preds = %41, %3, %118
  %122 = phi i32 [ %120, %118 ], [ 0, %3 ], [ 0, %41 ]
  ret i32 %122
}

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @sra_modify_expr(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture readnone %3) #9 !prof !67 {
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 42
  %10 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %11 = select i1 %9, ptr %6, ptr null
  %12 = select i1 %9, ptr %10, ptr %0
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -43
  %18 = icmp ult i32 %17, 2
  %19 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %20 = select i1 %18, ptr %19, ptr %12
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = tail call fastcc ptr @get_access_for_expr(ptr noundef %21)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %101, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.access, ptr %22, i64 0, i32 14
  %26 = load i16, ptr %25, align 8
  %27 = and i16 %26, 1024
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %72, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %20, align 8, !tbaa !68
  %31 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !79
  %33 = tail call fastcc ptr @get_access_replacement(ptr noundef nonnull %22)
  %34 = getelementptr inbounds %struct.access, ptr %22, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !206
  %36 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %32, ptr noundef %35) #22
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %39 = getelementptr inbounds %struct.access, ptr %22, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !185
  store ptr %40, ptr %5, align 8, !tbaa !68
  %41 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !79
  %43 = load i64, ptr %22, align 8, !tbaa !159
  %44 = load ptr, ptr %34, align 8, !tbaa !206
  %45 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %5, ptr noundef %42, i64 noundef %43, ptr noundef %44, i8 noundef zeroext 0)
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2333, ptr noundef nonnull @.str.4) #22
  br label %48

48:                                               ; preds = %38, %47
  %49 = icmp eq i8 %2, 0
  %50 = load i16, ptr %25, align 8
  %51 = and i16 %50, 512
  %52 = icmp eq i16 %51, 0
  br i1 %49, label %60, label %53

53:                                               ; preds = %48
  br i1 %52, label %57, label %54

54:                                               ; preds = %53
  %55 = load ptr, ptr %5, align 8, !tbaa !68
  %56 = call ptr @force_gimple_operand_gsi(ptr noundef %1, ptr noundef %55, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 0) #22
  store ptr %56, ptr %5, align 8, !tbaa !68
  br label %57

57:                                               ; preds = %54, %53
  %58 = load ptr, ptr %5, align 8, !tbaa !68
  %59 = call ptr @gimple_build_assign_stat(ptr noundef %33, ptr noundef %58) #22
  call void @gsi_insert_after(ptr noundef %1, ptr noundef %59, i32 noundef 0) #22
  br label %67

60:                                               ; preds = %48
  br i1 %52, label %63, label %61

61:                                               ; preds = %60
  %62 = call ptr @force_gimple_operand_gsi(ptr noundef %1, ptr noundef %33, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #22
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi ptr [ %62, %61 ], [ %33, %60 ]
  %65 = load ptr, ptr %5, align 8, !tbaa !68
  %66 = call ptr @gimple_build_assign_stat(ptr noundef %65, ptr noundef %64) #22
  call void @gsi_insert_before(ptr noundef %1, ptr noundef %66, i32 noundef 1) #22
  br label %67

67:                                               ; preds = %63, %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  br label %69

68:                                               ; preds = %29
  store ptr %33, ptr %20, align 8, !tbaa !68
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !288
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !288
  br label %72

72:                                               ; preds = %69, %24
  %73 = getelementptr inbounds %struct.access, ptr %22, i64 0, i32 8
  %74 = load ptr, ptr %73, align 8, !tbaa !310
  %75 = icmp eq ptr %74, null
  br i1 %75, label %101, label %76

76:                                               ; preds = %72
  %77 = icmp eq ptr %11, null
  br i1 %77, label %95, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !79
  %81 = call i32 @host_integerp(ptr noundef %80, i32 noundef 1) #22
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !79
  %86 = call i32 @host_integerp(ptr noundef %85, i32 noundef 1) #22
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr %79, align 8, !tbaa !79
  %90 = call i64 @tree_low_cst(ptr noundef %89, i32 noundef 1) #22
  %91 = load i64, ptr %22, align 8, !tbaa !159
  %92 = load ptr, ptr %84, align 8, !tbaa !79
  %93 = call i64 @tree_low_cst(ptr noundef %92, i32 noundef 1) #22
  %94 = add nsw i64 %93, %91
  br label %95

95:                                               ; preds = %76, %78, %83, %88
  %96 = phi i64 [ %94, %88 ], [ 0, %83 ], [ 0, %78 ], [ 0, %76 ]
  %97 = phi i64 [ %90, %88 ], [ 0, %83 ], [ 0, %78 ], [ 0, %76 ]
  %98 = load ptr, ptr %73, align 8, !tbaa !310
  %99 = getelementptr inbounds %struct.access, ptr %22, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !185
  call fastcc void @generate_subtree_copies(ptr noundef %98, ptr noundef %100, i64 noundef 0, i64 noundef %96, i64 noundef %97, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %2)
  br label %101

101:                                              ; preds = %72, %95, %4
  %102 = phi i8 [ 0, %4 ], [ 1, %95 ], [ 1, %72 ]
  ret i8 %102
}

; Function Attrs: cold nounwind uwtable
define internal i32 @sra_modify_assign(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #9 !prof !67 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca i32, align 4
  %9 = load ptr, ptr %0, align 8, !tbaa !68
  %10 = getelementptr inbounds %struct.gimple_statement_base, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !281
  %12 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %9) #22
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %573, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %0, align 8, !tbaa !68
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 255
  %18 = add nsw i32 %17, -10
  %19 = icmp ult i32 %18, -9
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = zext nneg i32 %17 to i64
  %22 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !83
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !124
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %29

29:                                               ; preds = %28, %20
  %30 = getelementptr inbounds i8, ptr %15, i64 %26
  %31 = load ptr, ptr %30, align 8, !tbaa !68
  br label %32

32:                                               ; preds = %14, %29
  %33 = phi ptr [ %31, %29 ], [ null, %14 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !68
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 255
  %37 = add nsw i32 %36, -1
  %38 = icmp ult i32 %37, 9
  tail call void @llvm.assume(i1 %38)
  %39 = zext nneg i32 %36 to i64
  %40 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !83
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !124
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %47

47:                                               ; preds = %46, %32
  %48 = getelementptr inbounds i8, ptr %34, i64 %44
  %49 = getelementptr inbounds ptr, ptr %48, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !68
  %51 = load i64, ptr %50, align 8
  %52 = trunc i64 %51 to i16
  switch i16 %52, label %137 [
    i16 51, label %53
    i16 43, label %151
  ]

53:                                               ; preds = %47
  %54 = load ptr, ptr %0, align 8, !tbaa !68
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 255
  %57 = add nsw i32 %56, -10
  %58 = icmp ult i32 %57, -9
  br i1 %58, label %71, label %59

59:                                               ; preds = %53
  %60 = zext nneg i32 %56 to i64
  %61 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !83
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !124
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %68

68:                                               ; preds = %67, %59
  %69 = getelementptr inbounds i8, ptr %54, i64 %65
  %70 = load ptr, ptr %69, align 8, !tbaa !68
  br label %71

71:                                               ; preds = %68, %53
  %72 = phi ptr [ %70, %68 ], [ null, %53 ]
  %73 = tail call fastcc ptr @get_access_for_expr(ptr noundef %72)
  %74 = icmp eq ptr %73, null
  br i1 %74, label %573, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %0, align 8, !tbaa !68
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 255
  %79 = add nsw i32 %78, -1
  %80 = icmp ult i32 %79, 9
  tail call void @llvm.assume(i1 %80)
  %81 = zext nneg i32 %78 to i64
  %82 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !83
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %84
  %86 = load i64, ptr %85, align 8, !tbaa !124
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %89

89:                                               ; preds = %88, %75
  %90 = getelementptr inbounds i8, ptr %76, i64 %86
  %91 = getelementptr inbounds ptr, ptr %90, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !68
  %93 = getelementptr inbounds %struct.tree_constructor, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !79
  %95 = icmp eq ptr %94, null
  br i1 %95, label %116, label %96

96:                                               ; preds = %89
  %97 = load ptr, ptr %0, align 8, !tbaa !68
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 255
  %100 = add nsw i32 %99, -1
  %101 = icmp ult i32 %100, 9
  tail call void @llvm.assume(i1 %101)
  %102 = zext nneg i32 %99 to i64
  %103 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !83
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !124
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %110

110:                                              ; preds = %109, %96
  %111 = getelementptr inbounds i8, ptr %97, i64 %107
  %112 = getelementptr inbounds ptr, ptr %111, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !68
  %114 = getelementptr inbounds %struct.tree_constructor, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !79
  br label %116

116:                                              ; preds = %110, %89
  %117 = phi ptr [ %115, %110 ], [ null, %89 ]
  %118 = icmp eq ptr %117, null
  br i1 %118, label %129, label %119

119:                                              ; preds = %116
  %120 = load i32, ptr %117, align 8, !tbaa !311
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.access, ptr %73, i64 0, i32 8
  %124 = load ptr, ptr %123, align 8, !tbaa !310
  %125 = icmp eq ptr %124, null
  br i1 %125, label %573, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.access, ptr %73, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !185
  tail call fastcc void @generate_subtree_copies(ptr noundef nonnull %124, ptr noundef %128, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1)
  br label %573

129:                                              ; preds = %116, %119
  %130 = getelementptr inbounds %struct.access, ptr %73, i64 0, i32 14
  %131 = load i16, ptr %130, align 8
  %132 = and i16 %131, 64
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %129
  tail call fastcc void @init_subtree_with_zero(ptr noundef nonnull %73, ptr noundef %1, i8 noundef zeroext 0)
  %135 = load ptr, ptr %0, align 8, !tbaa !68
  tail call void @unlink_stmt_vdef(ptr noundef %135) #22
  tail call void @gsi_remove(ptr noundef %1, i8 noundef zeroext 1) #22
  br label %573

136:                                              ; preds = %129
  tail call fastcc void @init_subtree_with_zero(ptr noundef nonnull %73, ptr noundef %1, i8 noundef zeroext 1)
  br label %573

137:                                              ; preds = %47
  %138 = trunc i64 %51 to i32
  %139 = and i32 %138, 65535
  %140 = load i64, ptr %33, align 8
  %141 = trunc i64 %140 to i32
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %139, 44
  %144 = add nsw i32 %142, -43
  %145 = icmp ult i32 %144, 2
  %146 = or i1 %143, %145
  %147 = icmp eq i32 %139, 42
  %148 = or i1 %147, %146
  %149 = icmp eq i32 %142, 42
  %150 = or i1 %149, %148
  br i1 %150, label %151, label %193

151:                                              ; preds = %47, %137
  %152 = load ptr, ptr %0, align 8, !tbaa !68
  %153 = load i32, ptr %152, align 8
  %154 = and i32 %153, 255
  %155 = add nsw i32 %154, -10
  %156 = icmp ult i32 %155, -9
  br i1 %156, label %169, label %157

157:                                              ; preds = %151
  %158 = zext nneg i32 %154 to i64
  %159 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !83
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %161
  %163 = load i64, ptr %162, align 8, !tbaa !124
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %166

166:                                              ; preds = %165, %157
  %167 = getelementptr inbounds i8, ptr %152, i64 %163
  %168 = getelementptr inbounds ptr, ptr %167, i64 1
  br label %169

169:                                              ; preds = %151, %166
  %170 = phi ptr [ %168, %166 ], [ null, %151 ]
  %171 = tail call zeroext i8 @sra_modify_expr(ptr noundef %170, ptr noundef %1, i8 noundef zeroext 0, ptr poison), !range !114
  %172 = load ptr, ptr %0, align 8, !tbaa !68
  %173 = load i32, ptr %172, align 8
  %174 = and i32 %173, 255
  %175 = add nsw i32 %174, -10
  %176 = icmp ult i32 %175, -9
  br i1 %176, label %188, label %177

177:                                              ; preds = %169
  %178 = zext nneg i32 %174 to i64
  %179 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !83
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %181
  %183 = load i64, ptr %182, align 8, !tbaa !124
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %186

186:                                              ; preds = %185, %177
  %187 = getelementptr inbounds i8, ptr %172, i64 %183
  br label %188

188:                                              ; preds = %169, %186
  %189 = phi ptr [ %187, %186 ], [ null, %169 ]
  %190 = tail call zeroext i8 @sra_modify_expr(ptr noundef %189, ptr noundef %1, i8 noundef zeroext 1, ptr poison), !range !114
  %191 = or i8 %190, %171
  %192 = zext nneg i8 %191 to i32
  br label %573

193:                                              ; preds = %137
  %194 = tail call fastcc ptr @get_access_for_expr(ptr noundef nonnull %33)
  %195 = tail call fastcc ptr @get_access_for_expr(ptr noundef nonnull %50)
  %196 = icmp ne ptr %194, null
  %197 = icmp ne ptr %195, null
  %198 = select i1 %196, i1 true, i1 %197
  br i1 %198, label %199, label %573

199:                                              ; preds = %193
  br i1 %196, label %200, label %244

200:                                              ; preds = %199
  %201 = getelementptr inbounds %struct.access, ptr %194, i64 0, i32 14
  %202 = load i16, ptr %201, align 8
  %203 = and i16 %202, 1024
  %204 = icmp eq i16 %203, 0
  br i1 %204, label %244, label %205

205:                                              ; preds = %200
  %206 = tail call fastcc ptr @get_access_replacement(ptr noundef nonnull %194)
  %207 = load ptr, ptr %0, align 8, !tbaa !68
  %208 = load i32, ptr %207, align 8
  %209 = and i32 %208, 255
  %210 = add nsw i32 %209, -10
  %211 = icmp ult i32 %210, -9
  br i1 %211, label %216, label %212

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.gimple_statement_base, ptr %207, i64 0, i32 3
  %214 = load i32, ptr %213, align 4, !tbaa !79
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %212, %205
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1665, ptr noundef nonnull @.str.4) #22
  br label %217

217:                                              ; preds = %216, %212
  %218 = load i32, ptr %207, align 8
  %219 = and i32 %218, 255
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !83
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %223
  %225 = load i64, ptr %224, align 8, !tbaa !124
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %217
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %228

228:                                              ; preds = %227, %217
  %229 = getelementptr inbounds i8, ptr %207, i64 %225
  store ptr %206, ptr %229, align 8, !tbaa !68
  %230 = icmp eq ptr %206, null
  br i1 %230, label %237, label %231

231:                                              ; preds = %228
  %232 = load i64, ptr %206, align 8
  %233 = and i64 %232, 65535
  %234 = icmp eq i64 %233, 141
  br i1 %234, label %235, label %237

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.tree_ssa_name, ptr %206, i64 0, i32 2
  store ptr %207, ptr %236, align 8, !tbaa !79
  br label %237

237:                                              ; preds = %228, %231, %235
  %238 = load i16, ptr %201, align 8
  %239 = lshr i16 %238, 9
  %240 = trunc i16 %239 to i8
  %241 = and i8 %240, 1
  %242 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !288
  %243 = add nsw i32 %242, 1
  store i32 %243, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !288
  br label %244

244:                                              ; preds = %237, %200, %199
  %245 = phi ptr [ %206, %237 ], [ %33, %200 ], [ %33, %199 ]
  %246 = phi i8 [ 1, %237 ], [ 0, %200 ], [ 0, %199 ]
  %247 = phi i8 [ %241, %237 ], [ 0, %200 ], [ 0, %199 ]
  br i1 %197, label %248, label %261

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.access, ptr %195, i64 0, i32 14
  %250 = load i16, ptr %249, align 8
  %251 = and i16 %250, 1024
  %252 = icmp eq i16 %251, 0
  br i1 %252, label %261, label %253

253:                                              ; preds = %248
  %254 = tail call fastcc ptr @get_access_replacement(ptr noundef nonnull %195)
  %255 = load i16, ptr %249, align 8
  %256 = and i16 %255, 512
  %257 = icmp eq i16 %256, 0
  %258 = select i1 %257, i8 %247, i8 1
  %259 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !288
  %260 = add nsw i32 %259, 1
  store i32 %260, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !288
  br label %261

261:                                              ; preds = %253, %248, %244
  %262 = phi ptr [ %254, %253 ], [ %50, %248 ], [ %50, %244 ]
  %263 = phi i8 [ 1, %253 ], [ %246, %248 ], [ %246, %244 ]
  %264 = phi i8 [ %258, %253 ], [ %247, %248 ], [ %247, %244 ]
  %265 = icmp eq i8 %263, 0
  br i1 %265, label %370, label %266

266:                                              ; preds = %261
  %267 = getelementptr inbounds %struct.tree_common, ptr %245, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !79
  %269 = getelementptr inbounds %struct.tree_common, ptr %262, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !79
  %271 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %268, ptr noundef %270) #22
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %273, label %370

273:                                              ; preds = %266
  %274 = load ptr, ptr %267, align 8, !tbaa !79
  %275 = load i64, ptr %274, align 8
  %276 = trunc i64 %275 to i32
  %277 = and i32 %276, 65535
  %278 = add nsw i32 %277, -15
  %279 = icmp ult i32 %278, 4
  br i1 %279, label %280, label %328

280:                                              ; preds = %273
  %281 = icmp eq ptr %194, null
  br i1 %281, label %287, label %282

282:                                              ; preds = %280
  %283 = getelementptr inbounds %struct.access, ptr %194, i64 0, i32 8
  %284 = load ptr, ptr %283, align 8, !tbaa !310
  %285 = icmp ne ptr %284, null
  %286 = zext i1 %285 to i8
  br label %287

287:                                              ; preds = %280, %282
  %288 = phi i8 [ 0, %280 ], [ %286, %282 ]
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %290, label %328

290:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store ptr %245, ptr %5, align 8, !tbaa !68
  %291 = load ptr, ptr %269, align 8, !tbaa !79
  %292 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %5, ptr noundef nonnull %274, i64 noundef 0, ptr noundef %291, i8 noundef zeroext 0)
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %326, label %294

294:                                              ; preds = %290
  %295 = load ptr, ptr %5, align 8, !tbaa !68
  %296 = load ptr, ptr %0, align 8, !tbaa !68
  %297 = load i32, ptr %296, align 8
  %298 = and i32 %297, 255
  %299 = add nsw i32 %298, -10
  %300 = icmp ult i32 %299, -9
  br i1 %300, label %305, label %301

301:                                              ; preds = %294
  %302 = getelementptr inbounds %struct.gimple_statement_base, ptr %296, i64 0, i32 3
  %303 = load i32, ptr %302, align 4, !tbaa !79
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %301, %294
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1665, ptr noundef nonnull @.str.4) #22
  br label %306

306:                                              ; preds = %305, %301
  %307 = load i32, ptr %296, align 8
  %308 = and i32 %307, 255
  %309 = zext nneg i32 %308 to i64
  %310 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %309
  %311 = load i32, ptr %310, align 4, !tbaa !83
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %312
  %314 = load i64, ptr %313, align 8, !tbaa !124
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %306
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %317

317:                                              ; preds = %316, %306
  %318 = getelementptr inbounds i8, ptr %296, i64 %314
  store ptr %295, ptr %318, align 8, !tbaa !68
  %319 = icmp eq ptr %295, null
  br i1 %319, label %326, label %320

320:                                              ; preds = %317
  %321 = load i64, ptr %295, align 8
  %322 = and i64 %321, 65535
  %323 = icmp eq i64 %322, 141
  br i1 %323, label %324, label %326

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.tree_ssa_name, ptr %295, i64 0, i32 2
  store ptr %296, ptr %325, align 8, !tbaa !79
  br label %326

326:                                              ; preds = %324, %320, %317, %290
  %327 = phi ptr [ %245, %290 ], [ %295, %317 ], [ %295, %320 ], [ %295, %324 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  br label %350

328:                                              ; preds = %273, %287
  %329 = load ptr, ptr %269, align 8, !tbaa !79
  %330 = load i64, ptr %329, align 8
  %331 = trunc i64 %330 to i32
  %332 = and i32 %331, 65535
  %333 = add nsw i32 %332, -15
  %334 = icmp ult i32 %333, 4
  br i1 %334, label %335, label %350

335:                                              ; preds = %328
  %336 = icmp eq ptr %195, null
  br i1 %336, label %342, label %337

337:                                              ; preds = %335
  %338 = getelementptr inbounds %struct.access, ptr %195, i64 0, i32 8
  %339 = load ptr, ptr %338, align 8, !tbaa !310
  %340 = icmp ne ptr %339, null
  %341 = zext i1 %340 to i8
  br label %342

342:                                              ; preds = %335, %337
  %343 = phi i8 [ 0, %335 ], [ %341, %337 ]
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %345, label %350

345:                                              ; preds = %342
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  store ptr %262, ptr %6, align 8, !tbaa !68
  %346 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %6, ptr noundef nonnull %329, i64 noundef 0, ptr noundef nonnull %274, i8 noundef zeroext 0)
  %347 = icmp eq i8 %346, 0
  %348 = load ptr, ptr %6, align 8
  %349 = select i1 %347, ptr %262, ptr %348
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  br label %350

350:                                              ; preds = %328, %342, %345, %326
  %351 = phi ptr [ %245, %342 ], [ %245, %345 ], [ %327, %326 ], [ %245, %328 ]
  %352 = phi ptr [ %262, %342 ], [ %349, %345 ], [ %262, %326 ], [ %262, %328 ]
  %353 = getelementptr inbounds %struct.tree_common, ptr %351, i64 0, i32 2
  %354 = load ptr, ptr %353, align 8, !tbaa !79
  %355 = getelementptr inbounds %struct.tree_common, ptr %352, i64 0, i32 2
  %356 = load ptr, ptr %355, align 8, !tbaa !79
  %357 = call zeroext i8 @useless_type_conversion_p(ptr noundef %354, ptr noundef %356) #22
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %359, label %370

359:                                              ; preds = %350
  %360 = load ptr, ptr %353, align 8, !tbaa !79
  %361 = call ptr @fold_build1_stat_loc(i32 noundef %11, i32 noundef 118, ptr noundef %360, ptr noundef %352) #22
  %362 = load ptr, ptr %353, align 8, !tbaa !79
  %363 = call zeroext i8 @is_gimple_reg_type(ptr noundef %362) #22
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %370, label %365

365:                                              ; preds = %359
  %366 = load i64, ptr %351, align 8
  %367 = and i64 %366, 65535
  %368 = icmp eq i64 %367, 141
  %369 = select i1 %368, i8 %264, i8 1
  br label %370

370:                                              ; preds = %365, %266, %359, %350, %261
  %371 = phi ptr [ %245, %266 ], [ %351, %350 ], [ %351, %359 ], [ %245, %261 ], [ %351, %365 ]
  %372 = phi ptr [ %262, %266 ], [ %352, %350 ], [ %361, %359 ], [ %262, %261 ], [ %361, %365 ]
  %373 = phi i8 [ %264, %266 ], [ %264, %350 ], [ %264, %359 ], [ %264, %261 ], [ %369, %365 ]
  %374 = load ptr, ptr %0, align 8, !tbaa !68
  %375 = load i32, ptr %374, align 8
  %376 = and i32 %375, 254
  %377 = add nsw i32 %376, -10
  %378 = icmp ult i32 %377, -4
  %379 = and i32 %375, 16384
  %380 = icmp eq i32 %379, 0
  %381 = or i1 %380, %378
  br i1 %381, label %382, label %430

382:                                              ; preds = %370, %389
  %383 = phi ptr [ %391, %389 ], [ %372, %370 ]
  %384 = load i64, ptr %383, align 8
  %385 = trunc i64 %384 to i16
  switch i16 %385, label %392 [
    i16 42, label %386
    i16 41, label %386
    i16 45, label %386
    i16 46, label %386
    i16 118, label %386
    i16 43, label %386
    i16 44, label %386
  ]

386:                                              ; preds = %382, %382, %382, %382, %382, %382, %382
  %387 = and i64 %384, 65535
  %388 = icmp eq i64 %387, 118
  br i1 %388, label %430, label %389

389:                                              ; preds = %386
  %390 = getelementptr inbounds %struct.tree_exp, ptr %383, i64 0, i32 3
  %391 = load ptr, ptr %390, align 8, !tbaa !79
  br label %382, !llvm.loop !313

392:                                              ; preds = %382, %399
  %393 = phi ptr [ %401, %399 ], [ %371, %382 ]
  %394 = load i64, ptr %393, align 8
  %395 = trunc i64 %394 to i16
  switch i16 %395, label %402 [
    i16 42, label %396
    i16 41, label %396
    i16 45, label %396
    i16 46, label %396
    i16 118, label %396
    i16 43, label %396
    i16 44, label %396
  ]

396:                                              ; preds = %392, %392, %392, %392, %392, %392, %392
  %397 = and i64 %394, 65535
  %398 = icmp eq i64 %397, 118
  br i1 %398, label %430, label %399

399:                                              ; preds = %396
  %400 = getelementptr inbounds %struct.tree_exp, ptr %393, i64 0, i32 3
  %401 = load ptr, ptr %400, align 8, !tbaa !79
  br label %392, !llvm.loop !313

402:                                              ; preds = %392
  %403 = icmp eq ptr %195, null
  br i1 %403, label %409, label %404

404:                                              ; preds = %402
  %405 = getelementptr inbounds %struct.access, ptr %195, i64 0, i32 8
  %406 = load ptr, ptr %405, align 8, !tbaa !310
  %407 = icmp ne ptr %406, null
  %408 = zext i1 %407 to i8
  br label %409

409:                                              ; preds = %402, %404
  %410 = phi i8 [ 0, %402 ], [ %408, %404 ]
  %411 = icmp eq i8 %410, 0
  br i1 %411, label %416, label %412

412:                                              ; preds = %409
  %413 = load i64, ptr %195, align 8, !tbaa !159
  %414 = call fastcc zeroext i8 @ref_expr_for_all_replacements_p(ptr noundef nonnull %195, ptr noundef %371, i64 noundef %413), !range !114
  %415 = icmp eq i8 %414, 0
  br i1 %415, label %430, label %416

416:                                              ; preds = %412, %409
  %417 = icmp eq ptr %194, null
  br i1 %417, label %423, label %418

418:                                              ; preds = %416
  %419 = getelementptr inbounds %struct.access, ptr %194, i64 0, i32 8
  %420 = load ptr, ptr %419, align 8, !tbaa !310
  %421 = icmp ne ptr %420, null
  %422 = zext i1 %421 to i8
  br label %423

423:                                              ; preds = %416, %418
  %424 = phi i8 [ 0, %416 ], [ %422, %418 ]
  %425 = icmp eq i8 %424, 0
  br i1 %425, label %455, label %426

426:                                              ; preds = %423
  %427 = load i64, ptr %194, align 8, !tbaa !159
  %428 = call fastcc zeroext i8 @ref_expr_for_all_replacements_p(ptr noundef nonnull %194, ptr noundef %372, i64 noundef %427), !range !114
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %430, label %455

430:                                              ; preds = %386, %396, %426, %412, %370
  %431 = icmp eq ptr %195, null
  br i1 %431, label %441, label %432

432:                                              ; preds = %430
  %433 = getelementptr inbounds %struct.access, ptr %195, i64 0, i32 8
  %434 = load ptr, ptr %433, align 8, !tbaa !310
  %435 = icmp eq ptr %434, null
  br i1 %435, label %441, label %436

436:                                              ; preds = %432
  %437 = getelementptr inbounds %struct.access, ptr %195, i64 0, i32 8
  %438 = load ptr, ptr %437, align 8, !tbaa !310
  %439 = getelementptr inbounds %struct.access, ptr %195, i64 0, i32 2
  %440 = load ptr, ptr %439, align 8, !tbaa !185
  call fastcc void @generate_subtree_copies(ptr noundef %438, ptr noundef %440, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %441

441:                                              ; preds = %430, %436, %432
  %442 = icmp eq ptr %194, null
  br i1 %442, label %452, label %443

443:                                              ; preds = %441
  %444 = getelementptr inbounds %struct.access, ptr %194, i64 0, i32 8
  %445 = load ptr, ptr %444, align 8, !tbaa !310
  %446 = icmp eq ptr %445, null
  br i1 %446, label %452, label %447

447:                                              ; preds = %443
  %448 = getelementptr inbounds %struct.access, ptr %194, i64 0, i32 8
  %449 = load ptr, ptr %448, align 8, !tbaa !310
  %450 = getelementptr inbounds %struct.access, ptr %194, i64 0, i32 2
  %451 = load ptr, ptr %450, align 8, !tbaa !185
  call fastcc void @generate_subtree_copies(ptr noundef %449, ptr noundef %451, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1)
  br label %452

452:                                              ; preds = %441, %447, %443
  %453 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 5), align 4, !tbaa !292
  %454 = add nsw i32 %453, 1
  store i32 %454, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 5), align 4, !tbaa !292
  br label %537

455:                                              ; preds = %426, %423
  br i1 %417, label %461, label %456

456:                                              ; preds = %455
  %457 = getelementptr inbounds %struct.access, ptr %194, i64 0, i32 8
  %458 = load ptr, ptr %457, align 8, !tbaa !310
  %459 = icmp ne ptr %458, null
  %460 = zext i1 %459 to i8
  br label %461

461:                                              ; preds = %455, %456
  %462 = phi i8 [ 0, %455 ], [ %460, %456 ]
  %463 = icmp eq i8 %462, 0
  br i1 %463, label %496, label %464

464:                                              ; preds = %461
  br i1 %403, label %527, label %465

465:                                              ; preds = %464
  %466 = getelementptr inbounds %struct.access, ptr %195, i64 0, i32 8
  %467 = load ptr, ptr %466, align 8, !tbaa !310
  %468 = icmp eq ptr %467, null
  br i1 %468, label %496, label %469

469:                                              ; preds = %465
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !281
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  %470 = getelementptr inbounds %struct.access, ptr %194, i64 0, i32 14
  %471 = load i16, ptr %470, align 8
  %472 = and i16 %471, 80
  %473 = icmp eq i16 %472, 16
  br i1 %473, label %474, label %476

474:                                              ; preds = %469
  %475 = call fastcc i32 @handle_unscalarized_data_in_subtree(ptr noundef nonnull %195, ptr noundef %371, ptr noundef %1), !range !314
  br label %476

476:                                              ; preds = %469, %474
  %477 = phi i32 [ %475, %474 ], [ 0, %469 ]
  store i32 %477, ptr %8, align 4, !tbaa !83
  %478 = getelementptr inbounds %struct.access, ptr %194, i64 0, i32 8
  %479 = load ptr, ptr %478, align 8, !tbaa !310
  %480 = load i64, ptr %194, align 8, !tbaa !159
  %481 = load i64, ptr %195, align 8, !tbaa !159
  call fastcc void @load_assign_lhs_subreplacements(ptr noundef %479, ptr noundef nonnull %195, i64 noundef %480, i64 noundef %481, ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %8, ptr noundef %371)
  %482 = load i32, ptr %8, align 4, !tbaa !83
  %483 = icmp eq i32 %482, 1
  br i1 %483, label %536, label %484

484:                                              ; preds = %476
  %485 = load ptr, ptr %0, align 8, !tbaa !68
  %486 = load ptr, ptr %1, align 1
  %487 = load ptr, ptr %486, align 8, !tbaa !228
  %488 = icmp eq ptr %485, %487
  br i1 %488, label %489, label %492

489:                                              ; preds = %484
  %490 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %486, i64 0, i32 2
  %491 = load ptr, ptr %490, align 8, !tbaa !230
  store ptr %491, ptr %1, align 8, !tbaa !296
  br label %492

492:                                              ; preds = %489, %484
  %493 = load ptr, ptr %0, align 8, !tbaa !68
  call void @unlink_stmt_vdef(ptr noundef %493) #22
  call void @gsi_remove(ptr noundef nonnull %7, i8 noundef zeroext 1) #22
  %494 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 4), align 4, !tbaa !291
  %495 = add nsw i32 %494, 1
  store i32 %495, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 4), align 4, !tbaa !291
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  br label %573

496:                                              ; preds = %465, %461
  br i1 %403, label %527, label %497

497:                                              ; preds = %496
  %498 = getelementptr inbounds %struct.access, ptr %195, i64 0, i32 8
  %499 = load ptr, ptr %498, align 8, !tbaa !310
  %500 = icmp eq ptr %499, null
  br i1 %500, label %527, label %501

501:                                              ; preds = %497
  %502 = getelementptr inbounds %struct.access, ptr %195, i64 0, i32 14
  %503 = load i16, ptr %502, align 8
  %504 = and i16 %503, 256
  %505 = icmp eq i16 %504, 0
  br i1 %505, label %506, label %523

506:                                              ; preds = %501
  %507 = load i64, ptr %371, align 8
  %508 = and i64 %507, 65535
  %509 = icmp eq i64 %508, 141
  br i1 %509, label %523, label %510

510:                                              ; preds = %506
  %511 = getelementptr inbounds %struct.access, ptr %195, i64 0, i32 8
  %512 = load ptr, ptr %511, align 8, !tbaa !310
  %513 = load i64, ptr %195, align 8, !tbaa !159
  call fastcc void @generate_subtree_copies(ptr noundef %512, ptr noundef nonnull %371, i64 noundef %513, i64 noundef 0, i64 noundef 0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %514 = load ptr, ptr %0, align 8, !tbaa !68
  %515 = load ptr, ptr %1, align 1
  %516 = load ptr, ptr %515, align 8, !tbaa !228
  %517 = icmp eq ptr %514, %516
  br i1 %517, label %519, label %518

518:                                              ; preds = %510
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2718, ptr noundef nonnull @.str.4) #22
  br label %519

519:                                              ; preds = %510, %518
  %520 = load ptr, ptr %0, align 8, !tbaa !68
  call void @unlink_stmt_vdef(ptr noundef %520) #22
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #22
  %521 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 4), align 4, !tbaa !291
  %522 = add nsw i32 %521, 1
  store i32 %522, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 4), align 4, !tbaa !291
  br label %573

523:                                              ; preds = %506, %501
  %524 = getelementptr inbounds %struct.access, ptr %195, i64 0, i32 8
  %525 = load ptr, ptr %524, align 8, !tbaa !310
  %526 = load i64, ptr %195, align 8, !tbaa !159
  call fastcc void @generate_subtree_copies(ptr noundef %525, ptr noundef %371, i64 noundef %526, i64 noundef 0, i64 noundef 0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1)
  br label %537

527:                                              ; preds = %464, %496, %497
  br i1 %417, label %537, label %528

528:                                              ; preds = %527
  %529 = getelementptr inbounds %struct.access, ptr %194, i64 0, i32 8
  %530 = load ptr, ptr %529, align 8, !tbaa !310
  %531 = icmp eq ptr %530, null
  br i1 %531, label %537, label %532

532:                                              ; preds = %528
  %533 = getelementptr inbounds %struct.access, ptr %194, i64 0, i32 8
  %534 = load ptr, ptr %533, align 8, !tbaa !310
  %535 = load i64, ptr %194, align 8, !tbaa !159
  call fastcc void @generate_subtree_copies(ptr noundef %534, ptr noundef %372, i64 noundef %535, i64 noundef 0, i64 noundef 0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1)
  br label %537

536:                                              ; preds = %476
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  br label %537

537:                                              ; preds = %527, %536, %528, %532, %523, %452
  %538 = icmp eq i8 %373, 0
  br i1 %538, label %541, label %539

539:                                              ; preds = %537
  %540 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %372, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #22
  br label %541

541:                                              ; preds = %539, %537
  %542 = phi ptr [ %540, %539 ], [ %372, %537 ]
  %543 = load ptr, ptr %0, align 8, !tbaa !68
  %544 = load i32, ptr %543, align 8
  %545 = and i32 %544, 255
  %546 = add nsw i32 %545, -10
  %547 = icmp ult i32 %546, -9
  br i1 %547, label %561, label %548

548:                                              ; preds = %541
  %549 = zext nneg i32 %545 to i64
  %550 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %549
  %551 = load i32, ptr %550, align 4, !tbaa !83
  %552 = zext i32 %551 to i64
  %553 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %552
  %554 = load i64, ptr %553, align 8, !tbaa !124
  %555 = icmp eq i64 %554, 0
  br i1 %555, label %556, label %557

556:                                              ; preds = %548
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %557

557:                                              ; preds = %556, %548
  %558 = getelementptr inbounds i8, ptr %543, i64 %554
  %559 = getelementptr inbounds ptr, ptr %558, i64 1
  %560 = load ptr, ptr %559, align 8, !tbaa !68
  br label %561

561:                                              ; preds = %541, %557
  %562 = phi ptr [ %560, %557 ], [ null, %541 ]
  %563 = icmp eq ptr %562, %542
  br i1 %563, label %570, label %564

564:                                              ; preds = %561
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %4, ptr noundef %542) #22
  %565 = load ptr, ptr %0, align 8, !tbaa !68
  %566 = load ptr, ptr %4, align 8
  %567 = load ptr, ptr %566, align 8, !tbaa !228
  %568 = icmp eq ptr %565, %567
  br i1 %568, label %570, label %569

569:                                              ; preds = %564
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2742, ptr noundef nonnull @.str.4) #22
  br label %570

570:                                              ; preds = %569, %564, %561
  %571 = icmp ne i8 %263, 0
  %572 = zext i1 %571 to i32
  br label %573

573:                                              ; preds = %136, %134, %126, %122, %71, %492, %193, %3, %570, %519, %188
  %574 = phi i32 [ %192, %188 ], [ %572, %570 ], [ 2, %492 ], [ 2, %519 ], [ 0, %3 ], [ 0, %193 ], [ 2, %134 ], [ 1, %136 ], [ 0, %71 ], [ 1, %126 ], [ 1, %122 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret i32 %574
}

declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @sra_deinitialize() unnamed_addr #11 !prof !315 !PGOFuncName !316 {
  %1 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !68
  tail call void @bitmap_obstack_free(ptr noundef %1) #22
  store ptr null, ptr @candidate_bitmap, align 8, !tbaa !68
  %2 = load ptr, ptr @should_scalarize_away_bitmap, align 8, !tbaa !68
  tail call void @bitmap_obstack_free(ptr noundef %2) #22
  store ptr null, ptr @should_scalarize_away_bitmap, align 8, !tbaa !68
  %3 = load ptr, ptr @cannot_scalarize_away_bitmap, align 8, !tbaa !68
  tail call void @bitmap_obstack_free(ptr noundef %3) #22
  store ptr null, ptr @cannot_scalarize_away_bitmap, align 8, !tbaa !68
  %4 = load ptr, ptr @access_pool, align 8, !tbaa !68
  tail call void @free_alloc_pool(ptr noundef %4) #22
  %5 = load ptr, ptr @link_pool, align 8, !tbaa !68
  tail call void @free_alloc_pool(ptr noundef %5) #22
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 1), align 8, !tbaa !317
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 0, %7
  store i64 %8, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !319
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %17, !prof !320

10:                                               ; preds = %0
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !321
  %12 = ptrtoint ptr %11 to i64
  %13 = sub i64 %12, %7
  %14 = icmp sgt i64 %13, %8
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, ptr %6, i64 %8
  store ptr %16, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 2), align 8, !tbaa !322
  store ptr %16, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  br label %19

17:                                               ; preds = %10, %0
  %18 = getelementptr inbounds i8, ptr %6, i64 %8
  tail call void @obstack_free(ptr noundef nonnull @name_obstack, ptr noundef %18) #22
  br label %19

19:                                               ; preds = %17, %15
  %20 = load ptr, ptr @base_access_vec, align 8, !tbaa !68
  tail call void @pointer_map_traverse(ptr noundef %20, ptr noundef nonnull @delete_base_accesses, ptr noundef null) #22
  %21 = load ptr, ptr @base_access_vec, align 8, !tbaa !68
  tail call void @pointer_map_destroy(ptr noundef %21) #22
  ret void
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #12

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @pointer_map_create() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

declare zeroext i8 @needs_to_live_in_memory(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @type_internals_preclude_sra_p(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !67 {
  br label %2

2:                                                ; preds = %48, %1
  %3 = phi ptr [ %0, %1 ], [ %50, %48 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %56 [
    i16 16, label %6
    i16 17, label %6
    i16 18, label %6
    i16 15, label %48
  ]

6:                                                ; preds = %2, %2, %2
  %7 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = icmp eq ptr %8, null
  br i1 %9, label %56, label %10

10:                                               ; preds = %6, %44
  %11 = phi ptr [ %46, %44 ], [ %8, %6 ]
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 31
  br i1 %14, label %15, label %44

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !79
  %18 = and i64 %12, 524288
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_field_decl, ptr %11, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !79
  %23 = icmp eq ptr %22, null
  br i1 %23, label %56, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !79
  %27 = icmp eq ptr %26, null
  br i1 %27, label %56, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @host_integerp(ptr noundef nonnull %22, i32 noundef 1) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %25, align 8, !tbaa !79
  %33 = tail call i32 @host_integerp(ptr noundef %32, i32 noundef 1) #22
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %31
  %36 = load i64, ptr %17, align 8
  %37 = trunc i64 %36 to i32
  %38 = and i32 %37, 65535
  %39 = add nsw i32 %38, -15
  %40 = icmp ult i32 %39, 4
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = tail call fastcc zeroext i8 @type_internals_preclude_sra_p(ptr noundef nonnull %17)
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41, %35, %10
  %45 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !79
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %10, !llvm.loop !324

48:                                               ; preds = %2
  %49 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !79
  %51 = load i64, ptr %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = and i32 %52, 65535
  %54 = add nsw i32 %53, -15
  %55 = icmp ult i32 %54, 4
  br i1 %55, label %2, label %56

56:                                               ; preds = %41, %15, %20, %24, %28, %31, %44, %6, %48, %2
  %57 = phi i8 [ 0, %48 ], [ 0, %2 ], [ 0, %6 ], [ 0, %44 ], [ 1, %31 ], [ 1, %28 ], [ 1, %24 ], [ 1, %20 ], [ 1, %15 ], [ 1, %41 ]
  ret i8 %57
}

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

declare zeroext i8 @stmt_can_throw_external(ptr noundef) local_unnamed_addr #3

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_get_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @disqualify_ops_if_throwing_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !67 {
  %4 = load i32, ptr @sra_mode, align 4
  %5 = add i32 %4, -1
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @stmt_can_throw_internal(ptr noundef %0) #22
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %0) #22
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %7
  tail call fastcc void @disqualify_base_of_expr(ptr noundef %1, ptr noundef nonnull @.str.16)
  %14 = icmp eq ptr %2, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  tail call fastcc void @disqualify_base_of_expr(ptr noundef nonnull %2, ptr noundef nonnull @.str.17)
  br label %16

16:                                               ; preds = %10, %3, %13, %15
  %17 = phi i8 [ 1, %15 ], [ 1, %13 ], [ 0, %3 ], [ 0, %10 ]
  ret i8 %17
}

declare zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @asm_visit_addr(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #9 !prof !67 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !83
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call fastcc void @disqualify_candidate(ptr noundef nonnull %1, ptr noundef nonnull @.str.20)
  br label %10

10:                                               ; preds = %9, %3
  ret i8 0
}

declare zeroext i8 @maybe_clean_eh_stmt(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_can_throw_internal(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @disqualify_base_of_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !67 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi ptr [ %0, %2 ], [ %12, %10 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %7 [
    i16 42, label %10
    i16 41, label %10
    i16 45, label %10
    i16 46, label %10
    i16 118, label %10
    i16 43, label %10
    i16 44, label %10
  ]

7:                                                ; preds = %3
  %8 = load i32, ptr @sra_mode, align 4, !tbaa !83
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %32

10:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  %11 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  br label %3, !llvm.loop !325

13:                                               ; preds = %7
  %14 = trunc i64 %5 to i32
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -47
  %17 = icmp ult i32 %16, 3
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !79
  br label %21

21:                                               ; preds = %13, %18
  %22 = phi ptr [ %20, %18 ], [ %4, %13 ]
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 141
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = and i64 %23, 4294967296
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %22, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !79
  br label %32

32:                                               ; preds = %29, %26, %21, %7
  %33 = phi ptr [ %4, %7 ], [ %31, %29 ], [ null, %26 ], [ %22, %21 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i64, ptr %33, align 8
  %37 = and i64 %36, 65535
  %38 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !83
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  tail call fastcc void @disqualify_candidate(ptr noundef nonnull %33, ptr noundef %1)
  br label %42

42:                                               ; preds = %41, %35, %32
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @disqualify_candidate(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !67 {
  %3 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !79
  %6 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %3, i32 noundef %5) #22
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !83
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 16, i64 1, ptr nonnull %7)
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !68
  tail call void @print_generic_expr(ptr noundef %15, ptr noundef %0, i32 noundef 0) #22
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.19, ptr noundef %1)
  br label %18

18:                                               ; preds = %13, %9, %2
  ret void
}

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @build_access_from_expr_1(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #9 !prof !67 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !68
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -42
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  br label %16

16:                                               ; preds = %3, %13
  %17 = phi ptr [ %15, %13 ], [ %7, %3 ]
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 118
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi ptr [ %23, %21 ], [ %17, %16 ]
  br label %26

26:                                               ; preds = %33, %24
  %27 = phi ptr [ %25, %24 ], [ %35, %33 ]
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %37 [
    i16 42, label %30
    i16 41, label %30
    i16 45, label %30
    i16 46, label %30
    i16 118, label %30
    i16 43, label %30
    i16 44, label %30
  ]

30:                                               ; preds = %26, %26, %26, %26, %26, %26, %26
  %31 = and i64 %28, 65535
  %32 = icmp eq i64 %31, 118
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !79
  br label %26, !llvm.loop !313

36:                                               ; preds = %30
  tail call fastcc void @disqualify_base_of_expr(ptr noundef %25, ptr noundef nonnull @.str.21)
  br label %140

37:                                               ; preds = %26
  %38 = load i64, ptr %25, align 8
  %39 = trunc i64 %38 to i16
  switch i16 %39, label %130 [
    i16 47, label %40
    i16 32, label %43
    i16 34, label %43
    i16 36, label %43
    i16 41, label %43
    i16 45, label %43
    i16 46, label %43
  ]

40:                                               ; preds = %37
  %41 = load i32, ptr @sra_mode, align 4, !tbaa !83
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %140

43:                                               ; preds = %40, %37, %37, %37, %37, %37, %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %44 = call ptr @get_ref_base_and_extent(ptr noundef nonnull %25, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %45 = load i32, ptr @sra_mode, align 4, !tbaa !83
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = load i64, ptr %44, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  %51 = add nsw i32 %50, -47
  %52 = icmp ult i32 %51, 3
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.tree_exp, ptr %44, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !79
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 141
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = and i64 %56, 4294967296
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.tree_ssa_name, ptr %55, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !79
  br label %65

65:                                               ; preds = %62, %59, %53
  %66 = phi ptr [ %64, %62 ], [ null, %59 ], [ %55, %53 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %128, label %68

68:                                               ; preds = %65, %47, %43
  %69 = phi ptr [ %66, %65 ], [ %44, %47 ], [ %44, %43 ]
  %70 = phi i1 [ false, %65 ], [ true, %47 ], [ true, %43 ]
  %71 = load i64, ptr %69, align 8
  %72 = and i64 %71, 65535
  %73 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !83
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %128

76:                                               ; preds = %68
  %77 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !68
  %78 = getelementptr inbounds %struct.tree_decl_minimal, ptr %69, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !79
  %80 = call i32 @bitmap_bit_p(ptr noundef %77, i32 noundef %79) #22
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %128, label %82

82:                                               ; preds = %76
  %83 = load i32, ptr @sra_mode, align 4, !tbaa !83
  %84 = icmp eq i32 %83, 0
  %85 = load i64, ptr %5, align 8, !tbaa !124
  br i1 %84, label %86, label %101

86:                                               ; preds = %82
  %87 = icmp sgt i64 %85, -1
  %88 = load i64, ptr %6, align 8
  %89 = icmp eq i64 %85, %88
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  call fastcc void @disqualify_candidate(ptr noundef nonnull %69, ptr noundef nonnull @.str.22)
  br label %128

92:                                               ; preds = %86
  %93 = load i64, ptr %4, align 8, !tbaa !124
  %94 = or i64 %93, %85
  %95 = and i64 %94, 7
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  call fastcc void @disqualify_candidate(ptr noundef nonnull %69, ptr noundef nonnull @.str.23)
  br label %128

98:                                               ; preds = %92
  br i1 %70, label %110, label %99

99:                                               ; preds = %98
  %100 = add nsw i64 %93, %85
  call fastcc void @mark_parm_dereference(ptr noundef nonnull %69, i64 noundef %100, ptr noundef %1)
  br label %110

101:                                              ; preds = %82
  %102 = load i64, ptr %6, align 8, !tbaa !124
  %103 = icmp eq i64 %85, %102
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  store i64 %102, ptr %5, align 8, !tbaa !124
  br label %105

105:                                              ; preds = %104, %101
  %106 = phi i16 [ 128, %104 ], [ 0, %101 ]
  %107 = load i64, ptr %5, align 8, !tbaa !124
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  call fastcc void @disqualify_candidate(ptr noundef nonnull %69, ptr noundef nonnull @.str.24)
  br label %128

110:                                              ; preds = %105, %99, %98
  %111 = phi i16 [ 0, %99 ], [ 0, %98 ], [ %106, %105 ]
  %112 = load i64, ptr %4, align 8, !tbaa !124
  %113 = load i64, ptr %5, align 8, !tbaa !124
  %114 = call fastcc ptr @create_access_1(ptr noundef nonnull %69, i64 noundef %112, i64 noundef %113)
  %115 = getelementptr inbounds %struct.access, ptr %114, i64 0, i32 3
  store ptr %25, ptr %115, align 8, !tbaa !186
  %116 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !79
  %118 = getelementptr inbounds %struct.access, ptr %114, i64 0, i32 4
  store ptr %117, ptr %118, align 8, !tbaa !206
  %119 = getelementptr inbounds %struct.access, ptr %114, i64 0, i32 14
  %120 = load i16, ptr %119, align 8
  %121 = and i8 %2, 1
  %122 = zext nneg i8 %121 to i16
  %123 = and i16 %120, -130
  %124 = and i16 %111, 128
  %125 = or disjoint i16 %124, %122
  %126 = or disjoint i16 %125, %123
  store i16 %126, ptr %119, align 8
  %127 = getelementptr inbounds %struct.access, ptr %114, i64 0, i32 5
  store ptr %1, ptr %127, align 8, !tbaa !158
  br label %128

128:                                              ; preds = %65, %68, %76, %91, %97, %109, %110
  %129 = phi ptr [ null, %91 ], [ null, %97 ], [ %114, %110 ], [ null, %109 ], [ null, %76 ], [ null, %68 ], [ null, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %130

130:                                              ; preds = %37, %128
  %131 = phi ptr [ null, %37 ], [ %129, %128 ]
  %132 = icmp ne i8 %2, 0
  %133 = icmp ne ptr %131, null
  %134 = and i1 %132, %133
  %135 = and i1 %12, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.access, ptr %131, i64 0, i32 14
  %138 = load i16, ptr %137, align 8
  %139 = or i16 %138, 512
  store i16 %139, ptr %137, align 8
  br label %140

140:                                              ; preds = %130, %136, %40, %36
  %141 = phi ptr [ null, %36 ], [ null, %40 ], [ %131, %136 ], [ %131, %130 ]
  ret ptr %141
}

declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @mark_parm_dereference(ptr noundef readnone %0, i64 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !prof !67 {
  %4 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = load ptr, ptr @final_bbs, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !172
  %9 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %8) #22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %3
  %12 = load ptr, ptr @current_function_decl, align 8, !tbaa !68
  %13 = getelementptr inbounds %struct.tree_decl_non_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !79
  %15 = icmp ne ptr %14, null
  %16 = icmp ne ptr %14, %0
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %11, %18
  %19 = phi ptr [ %23, %18 ], [ %14, %11 ]
  %20 = phi i32 [ %21, %18 ], [ 0, %11 ]
  %21 = add nuw nsw i32 %20, 1
  %22 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  %24 = icmp ne ptr %23, null
  %25 = icmp ne ptr %23, %0
  %26 = and i1 %24, %25
  br i1 %26, label %18, label %27, !llvm.loop !326

27:                                               ; preds = %18, %11
  %28 = phi i32 [ 0, %11 ], [ %21, %18 ]
  %29 = load i32, ptr @func_param_count, align 4, !tbaa !83
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 698, ptr noundef nonnull @.str.4) #22
  br label %32

32:                                               ; preds = %27, %31
  %33 = load i32, ptr %7, align 8, !tbaa !172
  %34 = load i32, ptr @func_param_count, align 4, !tbaa !83
  %35 = mul nsw i32 %34, %33
  %36 = add nsw i32 %35, %28
  %37 = load ptr, ptr @bb_dereferences, align 8, !tbaa !68
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i64, ptr %37, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !124
  %41 = icmp slt i64 %40, %1
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i64 %1, ptr %39, align 8, !tbaa !124
  br label %43

43:                                               ; preds = %32, %42, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @create_access_1(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #9 !prof !67 {
  %4 = load ptr, ptr @access_pool, align 8, !tbaa !68
  %5 = tail call ptr @pool_alloc(ptr noundef %4) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %5, i8 0, i64 120, i1 false)
  %6 = getelementptr inbounds %struct.access, ptr %5, i64 0, i32 2
  store ptr %0, ptr %6, align 8, !tbaa !185
  store i64 %1, ptr %5, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.access, ptr %5, i64 0, i32 1
  store i64 %2, ptr %7, align 8, !tbaa !160
  %8 = load ptr, ptr @base_access_vec, align 8, !tbaa !68
  %9 = tail call ptr @pointer_map_contains(ptr noundef %8, ptr noundef %0) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %9, align 8, !tbaa !68
  br label %15

13:                                               ; preds = %3
  %14 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 32) #22
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %14, %13 ], [ %12, %11 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.VEC_access_p_base, ptr %16, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !327
  %21 = load i32, ptr %16, align 8, !tbaa !152
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15, %18
  %24 = tail call ptr @vec_heap_p_reserve(ptr noundef %16, i32 noundef 1) #22
  br label %25

25:                                               ; preds = %18, %23
  %26 = phi ptr [ %24, %23 ], [ %16, %18 ]
  %27 = load i32, ptr %26, align 8, !tbaa !152
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !152
  %29 = zext i32 %27 to i64
  %30 = getelementptr inbounds %struct.VEC_access_p_base, ptr %26, i64 0, i32 2, i64 %29
  store ptr %5, ptr %30, align 8, !tbaa !68
  %31 = load ptr, ptr @base_access_vec, align 8, !tbaa !68
  %32 = tail call ptr @pointer_map_insert(ptr noundef %31, ptr noundef %0) #22
  store ptr %26, ptr %32, align 8, !tbaa !68
  ret ptr %5
}

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_link_to_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !67 {
  %3 = getelementptr inbounds %struct.assign_link, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !309
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 485, ptr noundef nonnull @.str.4) #22
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !264
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !265
  br i1 %10, label %13, label %16

13:                                               ; preds = %7
  %14 = icmp eq ptr %12, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 489, ptr noundef nonnull @.str.4) #22
  br label %18

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.assign_link, ptr %12, i64 0, i32 2
  br label %18

18:                                               ; preds = %15, %13, %16
  %19 = phi ptr [ %17, %16 ], [ %8, %13 ], [ %8, %15 ]
  store ptr %1, ptr %19, align 8, !tbaa !68
  %20 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 11
  store ptr %1, ptr %20, align 8, !tbaa !265
  %21 = getelementptr inbounds %struct.assign_link, ptr %1, i64 0, i32 2
  store ptr null, ptr %21, align 8, !tbaa !266
  ret void
}

declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #3

declare ptr @referenced_var_lookup(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @type_consists_of_records_p(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !67 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 16
  br i1 %4, label %5, label %40

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %5, %32
  %10 = phi ptr [ %35, %32 ], [ %7, %5 ]
  %11 = phi i8 [ %33, %32 ], [ 0, %5 ]
  %12 = load i64, ptr %10, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 31
  br i1 %14, label %15, label %32

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !79
  %18 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %17) #22
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = tail call fastcc zeroext i8 @type_consists_of_records_p(ptr noundef %17)
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %15
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !79
  %26 = tail call i64 @tree_low_cst(ptr noundef %25, i32 noundef 1) #22
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i8
  br label %29

29:                                               ; preds = %20, %23
  %30 = phi i8 [ %28, %23 ], [ %11, %20 ]
  %31 = phi i1 [ true, %23 ], [ false, %20 ]
  br i1 %31, label %32, label %40

32:                                               ; preds = %9, %29
  %33 = phi i8 [ %30, %29 ], [ %11, %9 ]
  %34 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !79
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %9, !llvm.loop !328

37:                                               ; preds = %32
  %38 = icmp eq i8 %33, 0
  %39 = zext i1 %38 to i8
  br label %40

40:                                               ; preds = %29, %5, %37, %1
  %41 = phi i8 [ 0, %1 ], [ 1, %5 ], [ %39, %37 ], [ 0, %29 ]
  ret i8 %41
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @completely_scalarize_record(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #9 !prof !67 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %3, %40
  %11 = phi ptr [ %42, %40 ], [ %8, %3 ]
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 31
  br i1 %14, label %15, label %40

15:                                               ; preds = %10
  %16 = call i64 @int_bit_position(ptr noundef nonnull %11) #22
  %17 = add nsw i64 %16, %2
  %18 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  %20 = call zeroext i8 @is_gimple_reg_type(ptr noundef %19) #22
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !79
  %26 = call i64 @tree_low_cst(ptr noundef %25, i32 noundef 1) #22
  store ptr %0, ptr %4, align 8, !tbaa !68
  %27 = load ptr, ptr %23, align 8, !tbaa !79
  %28 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %4, ptr noundef %27, i64 noundef %17, ptr noundef %19, i8 noundef zeroext 0)
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 863, ptr noundef nonnull @.str.4) #22
  br label %31

31:                                               ; preds = %22, %30
  %32 = call fastcc ptr @create_access_1(ptr noundef %0, i64 noundef %17, i64 noundef %26)
  %33 = load ptr, ptr %4, align 8, !tbaa !68
  %34 = getelementptr inbounds %struct.access, ptr %32, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !186
  %35 = getelementptr inbounds %struct.access, ptr %32, i64 0, i32 4
  store ptr %19, ptr %35, align 8, !tbaa !206
  %36 = getelementptr inbounds %struct.access, ptr %32, i64 0, i32 14
  %37 = load i16, ptr %36, align 8
  %38 = or i16 %37, 2
  store i16 %38, ptr %36, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %40

39:                                               ; preds = %15
  call fastcc void @completely_scalarize_record(ptr noundef %0, ptr noundef nonnull %11, i64 noundef %17)
  br label %40

40:                                               ; preds = %31, %39, %10
  %41 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !79
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %10, !llvm.loop !329

44:                                               ; preds = %40, %3
  ret void
}

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @compare_access_positions(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !67 {
  %3 = load ptr, ptr %0, align 8, !tbaa !68
  %4 = load ptr, ptr %1, align 8, !tbaa !68
  %5 = load i64, ptr %3, align 8, !tbaa !159
  %6 = load i64, ptr %4, align 8, !tbaa !159
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = icmp slt i64 %5, %6
  %10 = select i1 %9, i32 -1, i32 1
  br label %115

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.access, ptr %3, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !160
  %14 = getelementptr inbounds %struct.access, ptr %4, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !160
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %112

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.access, ptr %3, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !206
  %20 = getelementptr inbounds %struct.access, ptr %4, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !206
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %115, label %23

23:                                               ; preds = %17
  %24 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %19) #22
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load ptr, ptr %20, align 8, !tbaa !206
  %28 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %27) #22
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %115

30:                                               ; preds = %26, %23
  %31 = load ptr, ptr %18, align 8, !tbaa !206
  %32 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %31) #22
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %20, align 8, !tbaa !206
  %36 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %35) #22
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %115, label %38

38:                                               ; preds = %34, %30
  %39 = load ptr, ptr %18, align 8, !tbaa !206
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = and i32 %41, 65535
  %43 = add nsw i32 %42, -13
  %44 = icmp ult i32 %43, 2
  br i1 %44, label %53, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %20, align 8, !tbaa !206
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = and i32 %48, 65535
  %50 = add nsw i32 %49, -13
  %51 = icmp ult i32 %50, 2
  br i1 %51, label %115, label %52

52:                                               ; preds = %45
  br i1 %44, label %53, label %60

53:                                               ; preds = %38, %52
  %54 = load ptr, ptr %20, align 8, !tbaa !206
  %55 = load i64, ptr %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = and i32 %56, 65535
  %58 = add nsw i32 %57, -13
  %59 = icmp ult i32 %58, 2
  br i1 %59, label %60, label %115

60:                                               ; preds = %53, %52
  %61 = add nsw i32 %42, -6
  %62 = icmp ult i32 %61, 3
  br i1 %62, label %63, label %89

63:                                               ; preds = %60
  %64 = load ptr, ptr %20, align 8, !tbaa !206
  %65 = load i64, ptr %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = and i32 %66, 65535
  %68 = add nsw i32 %67, -6
  %69 = icmp ult i32 %68, 3
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 1023
  %74 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 1023
  %77 = sub nsw i32 %73, %76
  br label %115

78:                                               ; preds = %63
  br i1 %62, label %79, label %89

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !79
  %82 = getelementptr inbounds %struct.tree_int_cst, ptr %81, i64 0, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !79
  %84 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 1023
  %87 = zext nneg i32 %86 to i64
  %88 = icmp eq i64 %83, %87
  br i1 %88, label %89, label %115

89:                                               ; preds = %60, %78, %79
  %90 = load ptr, ptr %20, align 8, !tbaa !206
  %91 = load i64, ptr %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = and i32 %92, 65535
  %94 = add nsw i32 %93, -6
  %95 = icmp ult i32 %94, 3
  br i1 %95, label %96, label %106

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.tree_type, ptr %90, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !79
  %99 = getelementptr inbounds %struct.tree_int_cst, ptr %98, i64 0, i32 1
  %100 = load i64, ptr %99, align 8, !tbaa !79
  %101 = getelementptr inbounds %struct.tree_type, ptr %90, i64 0, i32 6
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 1023
  %104 = zext nneg i32 %103 to i64
  %105 = icmp eq i64 %100, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %89, %96
  %107 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 5
  %108 = load i32, ptr %107, align 8, !tbaa !79
  %109 = getelementptr inbounds %struct.tree_type, ptr %90, i64 0, i32 5
  %110 = load i32, ptr %109, align 8, !tbaa !79
  %111 = sub i32 %108, %110
  br label %115

112:                                              ; preds = %11
  %113 = icmp sgt i64 %13, %15
  %114 = select i1 %113, i32 -1, i32 1
  br label %115

115:                                              ; preds = %96, %79, %53, %45, %34, %26, %17, %112, %106, %70, %8
  %116 = phi i32 [ %10, %8 ], [ %77, %70 ], [ %111, %106 ], [ %114, %112 ], [ 0, %17 ], [ 1, %26 ], [ -1, %34 ], [ 1, %45 ], [ -1, %53 ], [ 1, %79 ], [ -1, %96 ]
  ret i32 %116
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_access_to_work_queue(ptr noundef %0) unnamed_addr #9 !prof !67 {
  %2 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !272
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 535, ptr noundef nonnull @.str.4) #22
  br label %11

11:                                               ; preds = %6, %10
  %12 = load ptr, ptr @work_queue_head, align 8, !tbaa !68
  store ptr %12, ptr %7, align 8, !tbaa !272
  %13 = load i16, ptr %2, align 8
  %14 = or i16 %13, 4
  store i16 %14, ptr %2, align 8
  store ptr %0, ptr @work_queue_head, align 8, !tbaa !68
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @build_access_subtree(ptr nocapture noundef %0) unnamed_addr #15 !prof !67 {
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  %3 = load i64, ptr %2, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.access, ptr %2, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !160
  %6 = add nsw i64 %5, %3
  %7 = getelementptr inbounds %struct.access, ptr %2, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !182
  store ptr %8, ptr %0, align 8, !tbaa !68
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.access, ptr %2, i64 0, i32 8
  br label %12

12:                                               ; preds = %10, %20
  %13 = phi ptr [ %8, %10 ], [ %25, %20 ]
  %14 = phi ptr [ null, %10 ], [ %24, %20 ]
  %15 = load i64, ptr %13, align 8, !tbaa !159
  %16 = getelementptr inbounds %struct.access, ptr %13, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !160
  %18 = add nsw i64 %17, %15
  %19 = icmp sgt i64 %18, %6
  br i1 %19, label %27, label %20

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, null
  %22 = getelementptr inbounds %struct.access, ptr %14, i64 0, i32 9
  %23 = select i1 %21, ptr %11, ptr %22
  store ptr %13, ptr %23, align 8, !tbaa !68
  %24 = load ptr, ptr %0, align 8, !tbaa !68
  tail call fastcc void @build_access_subtree(ptr noundef nonnull %0)
  %25 = load ptr, ptr %0, align 8, !tbaa !68
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %12, !llvm.loop !330

27:                                               ; preds = %12, %20, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @propagate_subaccesses_across_link(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !67 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load i64, ptr %0, align 8, !tbaa !159
  %6 = load i64, ptr %1, align 8, !tbaa !159
  %7 = sub nsw i64 %5, %6
  %8 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !206
  %10 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %9) #22
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %177

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 128
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %177

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 14
  %19 = load i16, ptr %18, align 8
  %20 = and i16 %19, 128
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %177

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !310
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !310
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !206
  %33 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %32) #22
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %36 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !185
  store ptr %37, ptr %4, align 8, !tbaa !68
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !79
  %40 = load i64, ptr %0, align 8, !tbaa !159
  %41 = load ptr, ptr %31, align 8, !tbaa !206
  %42 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %4, ptr noundef %39, i64 noundef %40, ptr noundef %41, i8 noundef zeroext 0)
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %35
  %45 = load ptr, ptr %4, align 8, !tbaa !68
  %46 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 3
  store ptr %45, ptr %46, align 8, !tbaa !186
  %47 = load ptr, ptr %31, align 8, !tbaa !206
  store ptr %47, ptr %8, align 8, !tbaa !206
  br label %48

48:                                               ; preds = %44, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %177

49:                                               ; preds = %30, %26, %22
  %50 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !68
  %52 = icmp eq ptr %51, null
  br i1 %52, label %177, label %53

53:                                               ; preds = %49, %172
  %54 = phi ptr [ %175, %172 ], [ %51, %49 ]
  %55 = phi i8 [ %173, %172 ], [ 0, %49 ]
  %56 = load i64, ptr %54, align 8, !tbaa !159
  %57 = add nsw i64 %56, %7
  %58 = getelementptr inbounds %struct.access, ptr %54, i64 0, i32 14
  %59 = load i16, ptr %58, align 8
  %60 = and i16 %59, 128
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %172

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.access, ptr %54, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !160
  %65 = load ptr, ptr %23, align 8, !tbaa !68
  %66 = icmp eq ptr %65, null
  br i1 %66, label %89, label %67

67:                                               ; preds = %62
  %68 = add nsw i64 %64, %57
  br label %69

69:                                               ; preds = %67, %85
  %70 = phi i1 [ %66, %67 ], [ %88, %85 ]
  %71 = phi ptr [ %65, %67 ], [ %87, %85 ]
  %72 = load i64, ptr %71, align 8, !tbaa !159
  %73 = icmp eq i64 %72, %57
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.access, ptr %71, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !160
  %77 = icmp eq i64 %76, %64
  br i1 %77, label %89, label %78

78:                                               ; preds = %74, %69
  %79 = icmp slt i64 %72, %68
  br i1 %79, label %80, label %85

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.access, ptr %71, i64 0, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !160
  %83 = add nsw i64 %82, %72
  %84 = icmp sgt i64 %83, %57
  br i1 %84, label %89, label %85

85:                                               ; preds = %80, %78
  %86 = getelementptr inbounds %struct.access, ptr %71, i64 0, i32 9
  %87 = load ptr, ptr %86, align 8, !tbaa !68
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %69, !llvm.loop !331

89:                                               ; preds = %85, %74, %80, %62
  %90 = phi i1 [ %66, %62 ], [ %88, %85 ], [ %70, %74 ], [ %70, %80 ]
  %91 = phi ptr [ null, %62 ], [ null, %85 ], [ %71, %74 ], [ null, %80 ]
  br i1 %90, label %107, label %92

92:                                               ; preds = %89
  %93 = icmp eq ptr %91, null
  br i1 %93, label %172, label %94

94:                                               ; preds = %92
  %95 = or i16 %59, 32
  store i16 %95, ptr %58, align 8
  %96 = getelementptr inbounds %struct.access, ptr %91, i64 0, i32 14
  %97 = load i16, ptr %96, align 8
  %98 = shl i16 %97, 1
  %99 = and i16 %98, 32
  %100 = or i16 %99, %97
  store i16 %100, ptr %96, align 8
  %101 = getelementptr inbounds %struct.access, ptr %54, i64 0, i32 8
  %102 = load ptr, ptr %101, align 8, !tbaa !310
  %103 = icmp eq ptr %102, null
  br i1 %103, label %172, label %104

104:                                              ; preds = %94
  %105 = call fastcc zeroext i8 @propagate_subaccesses_across_link(ptr noundef nonnull %91, ptr noundef nonnull %54), !range !114
  %106 = or i8 %105, %55
  br label %172

107:                                              ; preds = %89
  %108 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !185
  %110 = getelementptr inbounds %struct.tree_common, ptr %109, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !79
  %112 = getelementptr inbounds %struct.access, ptr %54, i64 0, i32 4
  %113 = load ptr, ptr %112, align 8, !tbaa !206
  %114 = call fastcc zeroext i8 @build_ref_for_offset_1(ptr noundef null, ptr noundef %111, i64 noundef %57, ptr noundef %113)
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %172, label %116

116:                                              ; preds = %107
  %117 = load i16, ptr %58, align 8
  %118 = or i16 %117, 32
  store i16 %118, ptr %58, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %119 = load ptr, ptr %108, align 8, !tbaa !185
  store ptr %119, ptr %3, align 8, !tbaa !68
  %120 = and i16 %117, 128
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1912, ptr noundef nonnull @.str.4) #22
  br label %123

123:                                              ; preds = %122, %116
  %124 = load ptr, ptr %3, align 8, !tbaa !68
  %125 = getelementptr inbounds %struct.tree_common, ptr %124, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !79
  %127 = load ptr, ptr %112, align 8, !tbaa !206
  %128 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %3, ptr noundef %126, i64 noundef %57, ptr noundef %127, i8 noundef zeroext 0)
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %164, label %130

130:                                              ; preds = %123
  %131 = load ptr, ptr @access_pool, align 8, !tbaa !68
  %132 = call ptr @pool_alloc(ptr noundef %131) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %132, i8 0, i64 120, i1 false)
  %133 = load ptr, ptr %108, align 8, !tbaa !185
  %134 = getelementptr inbounds %struct.access, ptr %132, i64 0, i32 2
  store ptr %133, ptr %134, align 8, !tbaa !185
  %135 = load ptr, ptr %3, align 8, !tbaa !68
  %136 = getelementptr inbounds %struct.access, ptr %132, i64 0, i32 3
  store ptr %135, ptr %136, align 8, !tbaa !186
  store i64 %57, ptr %132, align 8, !tbaa !159
  %137 = load i64, ptr %63, align 8, !tbaa !160
  %138 = getelementptr inbounds %struct.access, ptr %132, i64 0, i32 1
  store i64 %137, ptr %138, align 8, !tbaa !160
  %139 = load ptr, ptr %112, align 8, !tbaa !206
  %140 = getelementptr inbounds %struct.access, ptr %132, i64 0, i32 4
  store ptr %139, ptr %140, align 8, !tbaa !206
  %141 = getelementptr inbounds %struct.access, ptr %132, i64 0, i32 14
  %142 = load i16, ptr %141, align 8
  %143 = and i16 %142, -25
  %144 = or disjoint i16 %143, 8
  store i16 %144, ptr %141, align 8
  %145 = load ptr, ptr %23, align 8, !tbaa !68
  %146 = icmp eq ptr %145, null
  br i1 %146, label %160, label %147

147:                                              ; preds = %130
  %148 = load i64, ptr %145, align 8, !tbaa !159
  %149 = icmp slt i64 %148, %57
  br i1 %149, label %153, label %160

150:                                              ; preds = %153
  %151 = load i64, ptr %156, align 8, !tbaa !159
  %152 = icmp slt i64 %151, %57
  br i1 %152, label %153, label %158, !llvm.loop !332

153:                                              ; preds = %147, %150
  %154 = phi ptr [ %156, %150 ], [ %145, %147 ]
  %155 = getelementptr inbounds %struct.access, ptr %154, i64 0, i32 9
  %156 = load ptr, ptr %155, align 8, !tbaa !68
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %150, !llvm.loop !332

158:                                              ; preds = %153, %150
  %159 = getelementptr inbounds %struct.access, ptr %154, i64 0, i32 9
  br label %160

160:                                              ; preds = %158, %147, %130
  %161 = phi ptr [ %23, %130 ], [ %23, %147 ], [ %159, %158 ]
  %162 = phi ptr [ %145, %130 ], [ %145, %147 ], [ %156, %158 ]
  %163 = getelementptr inbounds %struct.access, ptr %132, i64 0, i32 9
  store ptr %162, ptr %163, align 8, !tbaa !156
  store ptr %132, ptr %161, align 8, !tbaa !68
  br label %164

164:                                              ; preds = %123, %160
  %165 = phi ptr [ %132, %160 ], [ null, %123 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  %166 = icmp eq ptr %165, null
  br i1 %166, label %172, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr %50, align 8, !tbaa !310
  %169 = icmp eq ptr %168, null
  br i1 %169, label %172, label %170

170:                                              ; preds = %167
  %171 = call fastcc zeroext i8 @propagate_subaccesses_across_link(ptr noundef nonnull %165, ptr noundef nonnull %54), !range !114
  br label %172

172:                                              ; preds = %164, %170, %167, %107, %92, %104, %94, %53
  %173 = phi i8 [ %55, %53 ], [ %106, %104 ], [ %55, %94 ], [ %55, %92 ], [ %55, %107 ], [ 1, %170 ], [ 1, %167 ], [ %55, %164 ]
  %174 = getelementptr inbounds %struct.access, ptr %54, i64 0, i32 9
  %175 = load ptr, ptr %174, align 8, !tbaa !68
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %53, !llvm.loop !333

177:                                              ; preds = %172, %49, %2, %12, %17, %48
  %178 = phi i8 [ 0, %48 ], [ 0, %17 ], [ 0, %12 ], [ 0, %2 ], [ 0, %49 ], [ %173, %172 ]
  ret i8 %178
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @analyze_access_subtree(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #9 !prof !67 {
  %5 = load i64, ptr %0, align 8, !tbaa !159
  %6 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !160
  %8 = add nsw i64 %7, %5
  %9 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !206
  %11 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %10) #22
  %12 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %13 = load i16, ptr %12, align 8
  %14 = lshr i16 %13, 4
  %15 = and i16 %14, 1
  %16 = icmp eq i8 %2, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = or i16 %13, 16
  store i16 %18, ptr %12, align 8
  br label %21

19:                                               ; preds = %4
  %20 = trunc i16 %15 to i8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i8 [ 1, %17 ], [ %20, %19 ]
  %23 = icmp eq i8 %3, 0
  %24 = load i16, ptr %12, align 8
  br i1 %23, label %27, label %25

25:                                               ; preds = %21
  %26 = or i16 %24, 8
  store i16 %26, ptr %12, align 8
  br label %31

27:                                               ; preds = %21
  %28 = trunc i16 %24 to i8
  %29 = lshr i8 %28, 3
  %30 = and i8 %29, 1
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i8 [ 1, %25 ], [ %30, %27 ]
  %33 = load i16, ptr %12, align 8
  %34 = and i16 %33, 128
  %35 = icmp eq i16 %34, 0
  %36 = select i1 %35, i8 %1, i8 0
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 3
  br label %40

40:                                               ; preds = %52, %38
  %41 = phi ptr [ %39, %38 ], [ %53, %52 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !79
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %43 to i16
  switch i16 %44, label %54 [
    i16 42, label %45
    i16 41, label %45
    i16 45, label %45
    i16 46, label %45
    i16 118, label %45
    i16 43, label %45
    i16 44, label %45
  ]

45:                                               ; preds = %40, %40, %40, %40, %40, %40, %40
  %46 = and i64 %43, 65535
  %47 = icmp eq i64 %46, 45
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %42) #22
  %50 = tail call i32 @host_integerp(ptr noundef %49, i32 noundef 0) #22
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48, %45
  %53 = getelementptr inbounds %struct.tree_exp, ptr %42, i64 0, i32 3
  br label %40, !llvm.loop !334

54:                                               ; preds = %48, %40, %31
  %55 = phi i8 [ %36, %31 ], [ 0, %48 ], [ %36, %40 ]
  %56 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 8
  %57 = load ptr, ptr %56, align 8, !tbaa !68
  %58 = icmp eq ptr %57, null
  br i1 %58, label %93, label %59

59:                                               ; preds = %54, %72
  %60 = phi ptr [ %88, %72 ], [ %57, %54 ]
  %61 = phi i8 [ %76, %72 ], [ 0, %54 ]
  %62 = phi i8 [ %86, %72 ], [ 0, %54 ]
  %63 = phi i64 [ %73, %72 ], [ %5, %54 ]
  %64 = icmp eq i8 %62, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i64, ptr %60, align 8, !tbaa !159
  %67 = icmp slt i64 %66, %63
  br i1 %67, label %72, label %68

68:                                               ; preds = %65, %59
  %69 = getelementptr inbounds %struct.access, ptr %60, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !160
  %71 = add nsw i64 %70, %63
  br label %72

72:                                               ; preds = %65, %68
  %73 = phi i64 [ %71, %68 ], [ %63, %65 ]
  %74 = phi i8 [ %62, %68 ], [ 1, %65 ]
  %75 = tail call fastcc zeroext i8 @analyze_access_subtree(ptr noundef nonnull %60, i8 noundef zeroext %55, i8 noundef zeroext %22, i8 noundef zeroext %32), !range !114
  %76 = or i8 %75, %61
  %77 = getelementptr inbounds %struct.access, ptr %60, i64 0, i32 14
  %78 = load i16, ptr %77, align 8
  %79 = load i16, ptr %12, align 8
  %80 = and i16 %78, 256
  %81 = or i16 %80, %79
  store i16 %81, ptr %12, align 8
  %82 = load i16, ptr %77, align 8
  %83 = and i16 %82, 64
  %84 = icmp eq i16 %83, 0
  %85 = zext i1 %84 to i8
  %86 = or i8 %74, %85
  %87 = getelementptr inbounds %struct.access, ptr %60, i64 0, i32 9
  %88 = load ptr, ptr %87, align 8, !tbaa !68
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %59, !llvm.loop !335

90:                                               ; preds = %72
  %91 = icmp eq i8 %76, 0
  %92 = icmp ne i8 %86, 0
  br label %93

93:                                               ; preds = %90, %54
  %94 = phi i64 [ %5, %54 ], [ %73, %90 ]
  %95 = phi i1 [ false, %54 ], [ %92, %90 ]
  %96 = phi i1 [ true, %54 ], [ %91, %90 ]
  %97 = icmp ne i8 %55, 0
  %98 = icmp ne i8 %11, 0
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %100, label %143

100:                                              ; preds = %93
  %101 = load ptr, ptr %56, align 8, !tbaa !310
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %143

103:                                              ; preds = %100
  %104 = load i16, ptr %12, align 8
  %105 = and i16 %104, 32
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = icmp eq i16 %15, 0
  %109 = and i16 %104, 8
  %110 = icmp eq i16 %109, 0
  %111 = or i1 %108, %110
  br i1 %111, label %143, label %112

112:                                              ; preds = %107, %103
  %113 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !185
  %115 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !79
  %117 = load i64, ptr %0, align 8, !tbaa !159
  %118 = load ptr, ptr %9, align 8, !tbaa !206
  %119 = tail call fastcc zeroext i8 @build_ref_for_offset_1(ptr noundef null, ptr noundef %116, i64 noundef %117, ptr noundef %118)
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %143, label %121

121:                                              ; preds = %112
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %123 = icmp eq ptr %122, null
  br i1 %123, label %140, label %124

124:                                              ; preds = %121
  %125 = load i32, ptr @dump_flags, align 4, !tbaa !83
  %126 = and i32 %125, 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %124
  %129 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 8, i64 1, ptr nonnull %122)
  %130 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %131 = load ptr, ptr %113, align 8, !tbaa !185
  tail call void @print_generic_expr(ptr noundef %130, ptr noundef %131, i32 noundef 0) #22
  %132 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %133 = load i64, ptr %0, align 8, !tbaa !159
  %134 = trunc i64 %133 to i32
  %135 = load i64, ptr %6, align 8, !tbaa !160
  %136 = trunc i64 %135 to i32
  %137 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.32, i32 noundef %134, i32 noundef %136)
  %138 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %139 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 17, i64 1, ptr %138)
  br label %140

140:                                              ; preds = %128, %124, %121
  %141 = load i16, ptr %12, align 8
  %142 = or i16 %141, 1024
  store i16 %142, ptr %12, align 8
  br label %146

143:                                              ; preds = %112, %107, %100, %93
  %144 = icmp slt i64 %94, %8
  %145 = select i1 %144, i1 true, i1 %95
  br label %146

146:                                              ; preds = %143, %140
  %147 = phi i1 [ false, %140 ], [ %145, %143 ]
  %148 = phi i1 [ false, %140 ], [ %96, %143 ]
  %149 = select i1 %148, i1 true, i1 %147
  %150 = load i16, ptr %12, align 8
  br i1 %149, label %153, label %151

151:                                              ; preds = %146
  %152 = or i16 %150, 64
  store i16 %152, ptr %12, align 8
  br label %167

153:                                              ; preds = %146
  %154 = and i16 %150, 8
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !185
  %159 = load i64, ptr %158, align 8
  %160 = and i64 %159, 65535
  %161 = icmp eq i64 %160, 34
  br i1 %161, label %162, label %164

162:                                              ; preds = %156, %153
  %163 = or i16 %150, 256
  store i16 %163, ptr %12, align 8
  br label %164

164:                                              ; preds = %162, %156
  %165 = xor i1 %148, true
  %166 = zext i1 %165 to i8
  br label %167

167:                                              ; preds = %164, %151
  %168 = phi i8 [ 1, %151 ], [ %166, %164 ]
  ret i8 %168
}

declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_access_tree_1(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 !prof !67 {
  %4 = icmp sgt i32 %2, 0
  br label %5

5:                                                ; preds = %19, %3
  %6 = phi ptr [ %1, %3 ], [ %21, %19 ]
  br i1 %4, label %7, label %13

7:                                                ; preds = %5, %7
  %8 = phi i32 [ %11, %7 ], [ 0, %5 ]
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %10 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %9)
  %11 = add nuw nsw i32 %8, 1
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %13, label %7, !llvm.loop !336

13:                                               ; preds = %7, %5
  tail call fastcc void @dump_access(ptr noundef %0, ptr noundef %6)
  %14 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !310
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = add nsw i32 %2, 1
  tail call fastcc void @dump_access_tree_1(ptr noundef %0, ptr noundef nonnull %15, i32 noundef %18)
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !156
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %5, !llvm.loop !337

23:                                               ; preds = %19
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_access(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !67 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 9, i64 1, ptr %0)
  %4 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !185
  %6 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !79
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %7)
  %9 = load ptr, ptr %4, align 8, !tbaa !185
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %9, i32 noundef 0) #22
  %10 = load i64, ptr %1, align 8, !tbaa !159
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.37, i64 noundef %10)
  %12 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !160
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, i64 noundef %13)
  %15 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 9, i64 1, ptr %0)
  %16 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !186
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %17, i32 noundef 0) #22
  %18 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 9, i64 1, ptr %0)
  %19 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !206
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %20, i32 noundef 0) #22
  %21 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 14
  %22 = load i16, ptr %21, align 8
  %23 = lshr i16 %22, 3
  %24 = and i16 %23, 1
  %25 = zext nneg i16 %24 to i32
  %26 = lshr i16 %22, 1
  %27 = and i16 %26, 1
  %28 = zext nneg i16 %27 to i32
  %29 = lshr i16 %22, 4
  %30 = and i16 %29, 1
  %31 = zext nneg i16 %30 to i32
  %32 = lshr i16 %22, 5
  %33 = and i16 %32, 1
  %34 = zext nneg i16 %33 to i32
  %35 = lshr i16 %22, 6
  %36 = and i16 %35, 1
  %37 = zext nneg i16 %36 to i32
  %38 = lshr i16 %22, 7
  %39 = and i16 %38, 1
  %40 = zext nneg i16 %39 to i32
  %41 = lshr i16 %22, 8
  %42 = and i16 %41, 1
  %43 = zext nneg i16 %42 to i32
  %44 = lshr i16 %22, 9
  %45 = and i16 %44, 1
  %46 = zext nneg i16 %45 to i32
  %47 = lshr i16 %22, 10
  %48 = and i16 %47, 1
  %49 = zext nneg i16 %48 to i32
  %50 = lshr i16 %22, 11
  %51 = and i16 %50, 1
  %52 = zext nneg i16 %51 to i32
  %53 = lshr i16 %22, 13
  %54 = and i16 %53, 1
  %55 = zext nneg i16 %54 to i32
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %25, i32 noundef %28, i32 noundef %31, i32 noundef %34, i32 noundef %37, i32 noundef %40, i32 noundef %43, i32 noundef %46, i32 noundef %49, i32 noundef %52, i32 noundef %55)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_access_for_expr(ptr noundef %0) unnamed_addr #9 !prof !67 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 118
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ %0, %1 ]
  %13 = call ptr @get_ref_base_and_extent(ptr noundef %12, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %14 = load i64, ptr %4, align 8, !tbaa !124
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %82, label %16

16:                                               ; preds = %11
  %17 = load i64, ptr %13, align 8
  %18 = and i64 %17, 65535
  %19 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !83
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %82

22:                                               ; preds = %16
  %23 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !68
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %13, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !79
  %26 = call i32 @bitmap_bit_p(ptr noundef %23, i32 noundef %25) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %82, label %28

28:                                               ; preds = %22
  %29 = load i64, ptr %2, align 8, !tbaa !124
  %30 = load i64, ptr %4, align 8, !tbaa !124
  %31 = load ptr, ptr @base_access_vec, align 8, !tbaa !68
  %32 = call ptr @pointer_map_contains(ptr noundef %31, ptr noundef nonnull %13) #22
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %32, align 8, !tbaa !68
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi ptr [ %35, %34 ], [ null, %28 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.VEC_access_p_base, ptr %37, i64 0, i32 2, i64 0
  %41 = load ptr, ptr %40, align 8, !tbaa !68
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi ptr [ %41, %39 ], [ null, %36 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %82, label %45

45:                                               ; preds = %42, %52
  %46 = phi ptr [ %54, %52 ], [ %43, %42 ]
  %47 = load i64, ptr %46, align 8, !tbaa !159
  %48 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !160
  %50 = add nsw i64 %49, %47
  %51 = icmp sgt i64 %50, %29
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !182
  %55 = icmp eq ptr %54, null
  br i1 %55, label %82, label %45, !llvm.loop !338

56:                                               ; preds = %45, %79
  %57 = phi ptr [ %80, %79 ], [ %46, %45 ]
  %58 = load i64, ptr %57, align 8, !tbaa !159
  %59 = icmp eq i64 %58, %29
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.access, ptr %57, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !160
  %63 = icmp eq i64 %62, %30
  br i1 %63, label %82, label %64

64:                                               ; preds = %60, %56
  %65 = getelementptr inbounds %struct.access, ptr %57, i64 0, i32 8
  %66 = load ptr, ptr %65, align 8, !tbaa !68
  %67 = icmp eq ptr %66, null
  br i1 %67, label %79, label %68

68:                                               ; preds = %64, %75
  %69 = phi ptr [ %77, %75 ], [ %66, %64 ]
  %70 = load i64, ptr %69, align 8, !tbaa !159
  %71 = getelementptr inbounds %struct.access, ptr %69, i64 0, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !160
  %73 = add nsw i64 %72, %70
  %74 = icmp sgt i64 %73, %29
  br i1 %74, label %79, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.access, ptr %69, i64 0, i32 9
  %77 = load ptr, ptr %76, align 8, !tbaa !68
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %68, !llvm.loop !339

79:                                               ; preds = %75, %68, %64
  %80 = phi ptr [ %66, %64 ], [ %77, %75 ], [ %69, %68 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %56, !llvm.loop !340

82:                                               ; preds = %52, %60, %79, %42, %22, %11, %16
  %83 = phi ptr [ null, %16 ], [ null, %11 ], [ null, %22 ], [ null, %42 ], [ %57, %60 ], [ %80, %79 ], [ null, %52 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret ptr %83
}

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @get_access_replacement(ptr nocapture noundef %0) unnamed_addr #2 !prof !67 {
  %2 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 1024
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1709, ptr noundef nonnull @.str.4) #22
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !341
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %129

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !206
  %14 = tail call ptr @create_tmp_var(ptr noundef %13, ptr noundef nonnull @.str.43) #22
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %21 [
    i16 32, label %17
    i16 34, label %19
  ]

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tree_var_decl, ptr %14, i64 0, i32 1
  br label %26

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.tree_parm_decl, ptr %14, i64 0, i32 2
  br label %26

21:                                               ; preds = %11
  %22 = and i64 %15, 65535
  %23 = icmp eq i64 %22, 36
  %24 = getelementptr inbounds %struct.tree_result_decl, ptr %14, i64 0, i32 1
  %25 = select i1 %23, ptr %24, ptr null
  br label %26

26:                                               ; preds = %21, %19, %17
  %27 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %25, %21 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.45, i32 noundef 144, ptr noundef nonnull @.str.4) #22
  br label %30

30:                                               ; preds = %29, %26
  %31 = load ptr, ptr %27, align 8, !tbaa !68
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = tail call ptr @create_var_ann(ptr noundef nonnull %14) #22
  br label %35

35:                                               ; preds = %33, %30
  %36 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %14) #22
  tail call void @mark_sym_for_renaming(ptr noundef nonnull %14) #22
  %37 = load i16, ptr %2, align 8
  %38 = and i16 %37, 512
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load ptr, ptr %12, align 8, !tbaa !206
  %42 = load i64, ptr %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = and i32 %43, 65535
  %45 = add nsw i32 %44, -13
  %46 = icmp ult i32 %45, 2
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 2
  %49 = load i64, ptr %48, align 8
  %50 = or i64 %49, 134217728
  store i64 %50, ptr %48, align 8
  br label %51

51:                                               ; preds = %47, %40, %35
  %52 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !185
  %54 = getelementptr inbounds %struct.tree_decl_minimal, ptr %53, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !79
  %56 = getelementptr inbounds %struct.tree_decl_minimal, ptr %14, i64 0, i32 1
  store i32 %55, ptr %56, align 8, !tbaa !79
  %57 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 2
  %58 = load i64, ptr %57, align 8
  %59 = or i64 %58, 4096
  store i64 %59, ptr %57, align 8
  %60 = load ptr, ptr %52, align 8, !tbaa !185
  %61 = getelementptr inbounds %struct.tree_decl_common, ptr %60, i64 0, i32 2
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 1024
  %64 = and i64 %59, -1025
  %65 = or disjoint i64 %63, %64
  store i64 %65, ptr %57, align 8
  %66 = load ptr, ptr %52, align 8, !tbaa !185
  %67 = getelementptr inbounds %struct.tree_decl_minimal, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !79
  %69 = icmp eq ptr %68, null
  br i1 %69, label %105, label %70

70:                                               ; preds = %51
  %71 = getelementptr inbounds %struct.tree_decl_common, ptr %66, i64 0, i32 2
  %72 = load i64, ptr %71, align 8
  %73 = and i64 %72, 5120
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %105

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !186
  %78 = tail call fastcc ptr @make_fancy_name(ptr noundef %77)
  %79 = tail call ptr @get_identifier(ptr noundef %78) #22
  %80 = getelementptr inbounds %struct.tree_decl_minimal, ptr %14, i64 0, i32 3
  store ptr %79, ptr %80, align 8, !tbaa !79
  %81 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 1), align 8, !tbaa !317
  %82 = ptrtoint ptr %78 to i64
  %83 = ptrtoint ptr %81 to i64
  %84 = sub i64 %82, %83
  store i64 %84, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !319
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %75
  %87 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !321
  %88 = ptrtoint ptr %87 to i64
  %89 = sub i64 %88, %83
  %90 = icmp slt i64 %84, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = getelementptr inbounds i8, ptr %81, i64 %84
  store ptr %92, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 2), align 8, !tbaa !322
  store ptr %92, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  br label %95

93:                                               ; preds = %86, %75
  %94 = getelementptr inbounds i8, ptr %81, i64 %84
  tail call void @obstack_free(ptr noundef nonnull @name_obstack, ptr noundef %94) #22
  br label %95

95:                                               ; preds = %93, %91
  %96 = load ptr, ptr %76, align 8, !tbaa !186
  tail call void @decl_debug_expr_insert(ptr noundef nonnull %14, ptr noundef %96) #22
  %97 = load i64, ptr %57, align 8
  %98 = or i64 %97, 16384
  store i64 %98, ptr %57, align 8
  %99 = load ptr, ptr %52, align 8, !tbaa !185
  %100 = load i64, ptr %99, align 8
  %101 = and i64 %100, 8388608
  %102 = load i64, ptr %14, align 8
  %103 = and i64 %102, -8388609
  %104 = or disjoint i64 %103, %101
  br label %108

105:                                              ; preds = %70, %51
  %106 = load i64, ptr %14, align 8
  %107 = or i64 %106, 8388608
  br label %108

108:                                              ; preds = %105, %95
  %109 = phi i64 [ %104, %95 ], [ %107, %105 ]
  store i64 %109, ptr %14, align 8
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %111 = icmp eq ptr %110, null
  br i1 %111, label %126, label %112

112:                                              ; preds = %108
  %113 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 26, i64 1, ptr nonnull %110)
  %114 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %115 = load ptr, ptr %52, align 8, !tbaa !185
  tail call void @print_generic_expr(ptr noundef %114, ptr noundef %115, i32 noundef 0) #22
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %117 = load i64, ptr %0, align 8, !tbaa !159
  %118 = trunc i64 %117 to i32
  %119 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !160
  %121 = trunc i64 %120 to i32
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef nonnull @.str.32, i32 noundef %118, i32 noundef %121)
  %123 = load ptr, ptr @dump_file, align 8, !tbaa !68
  tail call void @print_generic_expr(ptr noundef %123, ptr noundef nonnull %14, i32 noundef 0) #22
  %124 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %125 = tail call i32 @fputc(i32 10, ptr %124)
  br label %126

126:                                              ; preds = %108, %112
  %127 = load i32, ptr @sra_stats, align 4, !tbaa !287
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr @sra_stats, align 4, !tbaa !287
  store ptr %14, ptr %8, align 8, !tbaa !341
  br label %129

129:                                              ; preds = %126, %7
  %130 = load ptr, ptr %8, align 8, !tbaa !341
  ret ptr %130
}

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @generate_subtree_copies(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #9 !prof !67 {
  %9 = alloca ptr, align 8
  %10 = icmp eq i64 %4, 0
  %11 = add nsw i64 %4, %3
  %12 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %13 = icmp eq i8 %6, 0
  %14 = icmp eq i8 %7, 0
  br label %15

15:                                               ; preds = %92, %8
  %16 = phi ptr [ %0, %8 ], [ %94, %92 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  store ptr %1, ptr %9, align 8, !tbaa !68
  br i1 %10, label %20, label %17

17:                                               ; preds = %15
  %18 = load i64, ptr %16, align 8, !tbaa !159
  %19 = icmp slt i64 %18, %11
  br i1 %19, label %20, label %92

20:                                               ; preds = %17, %15
  %21 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 14
  %22 = load i16, ptr %21, align 8
  %23 = and i16 %22, 1024
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %84, label %25

25:                                               ; preds = %20
  br i1 %10, label %32, label %26

26:                                               ; preds = %25
  %27 = load i64, ptr %16, align 8, !tbaa !159
  %28 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !160
  %30 = add nsw i64 %29, %27
  %31 = icmp sgt i64 %30, %3
  br i1 %31, label %32, label %84

32:                                               ; preds = %26, %25
  %33 = call fastcc ptr @get_access_replacement(ptr noundef %16)
  %34 = load ptr, ptr %12, align 8, !tbaa !79
  %35 = load i64, ptr %16, align 8, !tbaa !159
  %36 = sub nsw i64 %35, %2
  %37 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !206
  %39 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %9, ptr noundef %34, i64 noundef %36, ptr noundef %38, i8 noundef zeroext 0)
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2190, ptr noundef nonnull @.str.4) #22
  br label %42

42:                                               ; preds = %32, %41
  br i1 %13, label %56, label %43

43:                                               ; preds = %42
  %44 = load i16, ptr %21, align 8
  %45 = and i16 %44, 512
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = icmp eq i8 %7, 0
  %49 = zext i1 %48 to i8
  %50 = zext i1 %48 to i32
  %51 = load ptr, ptr %9, align 8, !tbaa !68
  %52 = call ptr @force_gimple_operand_gsi(ptr noundef %5, ptr noundef %51, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext %49, i32 noundef %50) #22
  store ptr %52, ptr %9, align 8, !tbaa !68
  br label %53

53:                                               ; preds = %47, %43
  %54 = load ptr, ptr %9, align 8, !tbaa !68
  %55 = call ptr @gimple_build_assign_stat(ptr noundef %33, ptr noundef %54) #22
  br label %71

56:                                               ; preds = %42
  %57 = load i64, ptr %33, align 8
  %58 = or i64 %57, 8388608
  store i64 %58, ptr %33, align 8
  %59 = load i16, ptr %21, align 8
  %60 = and i16 %59, 512
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %56
  %63 = icmp eq i8 %7, 0
  %64 = zext i1 %63 to i8
  %65 = zext i1 %63 to i32
  %66 = call ptr @force_gimple_operand_gsi(ptr noundef %5, ptr noundef nonnull %33, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext %64, i32 noundef %65) #22
  br label %67

67:                                               ; preds = %62, %56
  %68 = phi ptr [ %66, %62 ], [ %33, %56 ]
  %69 = load ptr, ptr %9, align 8, !tbaa !68
  %70 = call ptr @gimple_build_assign_stat(ptr noundef %69, ptr noundef %68) #22
  br label %71

71:                                               ; preds = %67, %53
  %72 = phi ptr [ %55, %53 ], [ %70, %67 ]
  br i1 %14, label %74, label %73

73:                                               ; preds = %71
  call void @gsi_insert_after(ptr noundef %5, ptr noundef %72, i32 noundef 0) #22
  br label %75

74:                                               ; preds = %71
  call void @gsi_insert_before(ptr noundef %5, ptr noundef %72, i32 noundef 1) #22
  br label %75

75:                                               ; preds = %74, %73
  %76 = load i32, ptr %72, align 8
  %77 = and i32 %76, 255
  %78 = add nsw i32 %77, -10
  %79 = icmp ult i32 %78, -9
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  call void @gimple_set_modified(ptr noundef nonnull %72, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %72) #22
  br label %81

81:                                               ; preds = %75, %80
  %82 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 2), align 4, !tbaa !289
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 2), align 4, !tbaa !289
  br label %84

84:                                               ; preds = %81, %26, %20
  %85 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 8
  %86 = load ptr, ptr %85, align 8, !tbaa !310
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  call fastcc void @generate_subtree_copies(ptr noundef nonnull %86, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7)
  br label %89

89:                                               ; preds = %88, %84
  %90 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !156
  br label %92

92:                                               ; preds = %17, %89
  %93 = phi i1 [ false, %89 ], [ true, %17 ]
  %94 = phi ptr [ %91, %89 ], [ %16, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  %95 = icmp eq ptr %94, null
  %96 = select i1 %93, i1 true, i1 %95
  br i1 %96, label %97, label %15, !llvm.loop !342

97:                                               ; preds = %92
  ret void
}

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @make_fancy_name(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !67 {
  tail call fastcc void @make_fancy_name_1(ptr noundef %0)
  %2 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  %3 = getelementptr inbounds i8, ptr %2, i64 1
  %4 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !321
  %5 = icmp ugt ptr %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull @name_obstack, i32 noundef 1) #22
  br label %7

7:                                                ; preds = %1, %6
  %8 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %9, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  store i8 0, ptr %8, align 1, !tbaa !79
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 2), align 8, !tbaa !322
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 10), align 8
  %15 = or i8 %14, 2
  store i8 %15, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 10), align 8
  br label %16

16:                                               ; preds = %7, %13
  %17 = ptrtoint ptr %11 to i64
  store i64 %17, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !319
  %18 = ptrtoint ptr %10 to i64
  %19 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 6), align 8, !tbaa !343
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = xor i32 %19, -1
  %23 = sext i32 %22 to i64
  %24 = and i64 %21, %23
  %25 = inttoptr i64 %24 to ptr
  store ptr %25, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  %26 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 1), align 8, !tbaa !317
  %27 = ptrtoint ptr %26 to i64
  %28 = sub i64 %24, %27
  %29 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !321
  %30 = ptrtoint ptr %29 to i64
  %31 = sub i64 %30, %27
  %32 = icmp sgt i64 %28, %31
  %33 = select i1 %32, ptr %29, ptr %25
  store ptr %33, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8
  store ptr %33, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 2), align 8, !tbaa !322
  ret ptr %11
}

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @decl_debug_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_var_ann(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @make_fancy_name_1(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !67 {
  %2 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #22
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !83
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call fastcc void @make_fancy_decl_name(ptr noundef nonnull %0)
  br label %58

9:                                                ; preds = %1
  %10 = trunc i64 %3 to i16
  switch i16 %10, label %58 [
    i16 41, label %11
    i16 45, label %24
    i16 42, label %57
    i16 43, label %57
    i16 44, label %57
  ]

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  tail call fastcc void @make_fancy_name_1(ptr noundef %13)
  %14 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  %16 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !321
  %17 = icmp ugt ptr %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  tail call void @_obstack_newchunk(ptr noundef nonnull @name_obstack, i32 noundef 1) #22
  br label %19

19:                                               ; preds = %11, %18
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %21, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  store i8 36, ptr %20, align 1, !tbaa !79
  %22 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  tail call fastcc void @make_fancy_decl_name(ptr noundef %23)
  br label %58

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !79
  tail call fastcc void @make_fancy_name_1(ptr noundef %26)
  %27 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  %29 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !321
  %30 = icmp ugt ptr %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  tail call void @_obstack_newchunk(ptr noundef nonnull @name_obstack, i32 noundef 1) #22
  br label %32

32:                                               ; preds = %24, %31
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %34, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  store i8 36, ptr %33, align 1, !tbaa !79
  %35 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !79
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 23
  br i1 %39, label %40, label %58

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.tree_int_cst, ptr %36, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !79
  %43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.46, i64 noundef %42)
  %44 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2)
  store i64 %44, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !319
  %45 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  %46 = getelementptr inbounds i8, ptr %45, i64 %44
  %47 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !321
  %48 = icmp ugt ptr %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = trunc i64 %44 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull @name_obstack, i32 noundef %50) #22
  br label %51

51:                                               ; preds = %40, %49
  %52 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  %53 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !319
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %52, ptr nonnull align 16 %2, i64 %53, i1 false)
  %54 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !319
  %55 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  %56 = getelementptr inbounds i8, ptr %55, i64 %54
  store ptr %56, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  br label %58

57:                                               ; preds = %9, %9, %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1358, ptr noundef nonnull @.str.4) #22
  br label %58

58:                                               ; preds = %19, %51, %57, %32, %9, %8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #22
  ret void
}

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @make_fancy_decl_name(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !67 {
  %2 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #22
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_identifier, ptr %4, i64 0, i32 1
  %8 = getelementptr inbounds %struct.tree_identifier, ptr %4, i64 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !79
  %10 = zext i32 %9 to i64
  store i64 %10, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !319
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  %12 = getelementptr inbounds i8, ptr %11, i64 %10
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !321
  %14 = icmp ugt ptr %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  tail call void @_obstack_newchunk(ptr noundef nonnull @name_obstack, i32 noundef %9) #22
  br label %16

16:                                               ; preds = %6, %15
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  %18 = load ptr, ptr %7, align 8, !tbaa !79
  %19 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !319
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %18, i64 %19, i1 false)
  br label %34

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !79
  %23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef %22)
  %24 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2)
  store i64 %24, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !319
  %25 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  %26 = getelementptr inbounds i8, ptr %25, i64 %24
  %27 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !321
  %28 = icmp ugt ptr %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = trunc i64 %24 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull @name_obstack, i32 noundef %30) #22
  br label %31

31:                                               ; preds = %20, %29
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  %33 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !319
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %32, ptr nonnull align 16 %2, i64 %33, i1 false)
  br label %34

34:                                               ; preds = %31, %16
  %35 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !319
  %36 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  %37 = getelementptr inbounds i8, ptr %36, i64 %35
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #22
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @ref_expr_for_all_replacements_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #9 !prof !67 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  br label %5

5:                                                ; preds = %26, %3
  %6 = phi ptr [ %0, %3 ], [ %28, %26 ]
  %7 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 14
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 1024
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %4, align 8, !tbaa !79
  %13 = load i64, ptr %6, align 8, !tbaa !159
  %14 = sub nsw i64 %13, %2
  %15 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !206
  %17 = tail call fastcc zeroext i8 @build_ref_for_offset_1(ptr noundef null, ptr noundef %12, i64 noundef %14, ptr noundef %16)
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %11, %5
  %20 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !310
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = tail call fastcc zeroext i8 @ref_expr_for_all_replacements_p(ptr noundef nonnull %21, ptr noundef %1, i64 noundef %2), !range !114
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19, %23
  %27 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !156
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %5, !llvm.loop !344

30:                                               ; preds = %23, %11, %26
  %31 = phi i8 [ 1, %26 ], [ 0, %11 ], [ 0, %23 ]
  ret i8 %31
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @handle_unscalarized_data_in_subtree(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !67 {
  %4 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 256
  %7 = icmp eq i16 %6, 0
  %8 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !310
  br i1 %7, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !185
  tail call fastcc void @generate_subtree_copies(ptr noundef %9, ptr noundef %12, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %15

13:                                               ; preds = %3
  %14 = load i64, ptr %0, align 8, !tbaa !159
  tail call fastcc void @generate_subtree_copies(ptr noundef %9, ptr noundef %1, i64 noundef %14, i64 noundef 0, i64 noundef 0, ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ 1, %10 ], [ 2, %13 ]
  ret i32 %16
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @load_assign_lhs_subreplacements(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef %6, ptr noundef %7) unnamed_addr #9 !prof !67 {
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !186
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !83
  %16 = add i32 %15, -4
  %17 = icmp ult i32 %16, 7
  br i1 %17, label %18, label %21

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !79
  br label %21

21:                                               ; preds = %8, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %8 ]
  %23 = icmp eq ptr %1, null
  br label %24

24:                                               ; preds = %133, %21
  %25 = phi ptr [ %0, %21 ], [ %135, %133 ]
  %26 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 14
  %27 = load i16, ptr %26, align 8
  %28 = and i16 %27, 1024
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %120, label %30

30:                                               ; preds = %24
  %31 = load i64, ptr %25, align 8, !tbaa !159
  %32 = sub nsw i64 %31, %2
  %33 = add nsw i64 %32, %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  %34 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !160
  br i1 %23, label %79, label %36

36:                                               ; preds = %30, %59
  %37 = phi ptr [ %60, %59 ], [ %1, %30 ]
  %38 = load i64, ptr %37, align 8, !tbaa !159
  %39 = icmp eq i64 %38, %33
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.access, ptr %37, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !160
  %43 = icmp eq i64 %42, %35
  br i1 %43, label %62, label %44

44:                                               ; preds = %40, %36
  %45 = getelementptr inbounds %struct.access, ptr %37, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !68
  %47 = icmp eq ptr %46, null
  br i1 %47, label %59, label %48

48:                                               ; preds = %44, %55
  %49 = phi ptr [ %57, %55 ], [ %46, %44 ]
  %50 = load i64, ptr %49, align 8, !tbaa !159
  %51 = getelementptr inbounds %struct.access, ptr %49, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !160
  %53 = add nsw i64 %52, %50
  %54 = icmp sgt i64 %53, %33
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.access, ptr %49, i64 0, i32 9
  %57 = load ptr, ptr %56, align 8, !tbaa !68
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %48, !llvm.loop !339

59:                                               ; preds = %55, %48, %44
  %60 = phi ptr [ %46, %44 ], [ %57, %55 ], [ %49, %48 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %79, label %36, !llvm.loop !340

62:                                               ; preds = %40
  %63 = getelementptr inbounds %struct.access, ptr %37, i64 0, i32 14
  %64 = load i16, ptr %63, align 8
  %65 = and i16 %64, 1024
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %62
  %68 = call fastcc ptr @get_access_replacement(ptr noundef nonnull %37)
  store ptr %68, ptr %9, align 8, !tbaa !68
  %69 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !206
  %71 = getelementptr inbounds %struct.access, ptr %37, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !206
  %73 = call zeroext i8 @useless_type_conversion_p(ptr noundef %70, ptr noundef %72) #22
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %108

75:                                               ; preds = %67
  %76 = load ptr, ptr %69, align 8, !tbaa !206
  %77 = load ptr, ptr %9, align 8, !tbaa !68
  %78 = call ptr @fold_build1_stat_loc(i32 noundef %22, i32 noundef 118, ptr noundef %76, ptr noundef %77) #22
  store ptr %78, ptr %9, align 8, !tbaa !68
  br label %108

79:                                               ; preds = %59, %30, %62
  %80 = load i32, ptr %6, align 4, !tbaa !83
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call fastcc i32 @handle_unscalarized_data_in_subtree(ptr noundef %1, ptr noundef %7, ptr noundef %4), !range !314
  store i32 %83, ptr %6, align 4, !tbaa !83
  br label %84

84:                                               ; preds = %82, %79
  %85 = load i32, ptr %6, align 4, !tbaa !83
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !185
  store ptr %89, ptr %9, align 8, !tbaa !68
  %90 = getelementptr inbounds %struct.tree_common, ptr %89, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !79
  %92 = load i64, ptr %25, align 8, !tbaa !159
  %93 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !206
  %95 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %9, ptr noundef %91, i64 noundef %92, ptr noundef %94, i8 noundef zeroext 0)
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %87
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2462, ptr noundef nonnull @.str.4) #22
  br label %108

98:                                               ; preds = %84
  %99 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !185
  store ptr %100, ptr %9, align 8, !tbaa !68
  %101 = getelementptr inbounds %struct.tree_common, ptr %100, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !79
  %103 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !206
  %105 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %9, ptr noundef %102, i64 noundef %33, ptr noundef %104, i8 noundef zeroext 0)
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2472, ptr noundef nonnull @.str.4) #22
  br label %108

108:                                              ; preds = %107, %98, %97, %87, %67, %75
  %109 = call fastcc ptr @get_access_replacement(ptr noundef nonnull %25)
  %110 = load ptr, ptr %9, align 8, !tbaa !68
  %111 = call ptr @gimple_build_assign_stat(ptr noundef %109, ptr noundef %110) #22
  call void @gsi_insert_after(ptr noundef %5, ptr noundef %111, i32 noundef 0) #22
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 255
  %114 = add nsw i32 %113, -10
  %115 = icmp ult i32 %114, -9
  br i1 %115, label %117, label %116

116:                                              ; preds = %108
  call void @gimple_set_modified(ptr noundef nonnull %111, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %111) #22
  br label %117

117:                                              ; preds = %108, %116
  %118 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 3), align 4, !tbaa !290
  %119 = add nsw i32 %118, 1
  store i32 %119, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 3), align 4, !tbaa !290
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  br label %128

120:                                              ; preds = %24
  %121 = load i32, ptr %6, align 4, !tbaa !83
  %122 = icmp eq i32 %121, 0
  %123 = and i16 %27, 80
  %124 = icmp eq i16 %123, 16
  %125 = and i1 %124, %122
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = call fastcc i32 @handle_unscalarized_data_in_subtree(ptr noundef %1, ptr noundef %7, ptr noundef %4), !range !314
  store i32 %127, ptr %6, align 4, !tbaa !83
  br label %128

128:                                              ; preds = %120, %126, %117
  %129 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 8
  %130 = load ptr, ptr %129, align 8, !tbaa !310
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  call fastcc void @load_assign_lhs_subreplacements(ptr noundef nonnull %130, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br label %133

133:                                              ; preds = %132, %128
  %134 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 9
  %135 = load ptr, ptr %134, align 8, !tbaa !156
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %24, !llvm.loop !345

137:                                              ; preds = %133
  ret void
}

declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @init_subtree_with_zero(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #9 !prof !67 {
  %4 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @get_access_replacement(ptr noundef %0)
  %10 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !206
  %12 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !68
  %13 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %11, ptr noundef %12) #22
  %14 = tail call ptr @gimple_build_assign_stat(ptr noundef %9, ptr noundef %13) #22
  %15 = icmp eq i8 %2, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  tail call void @gsi_insert_after(ptr noundef %1, ptr noundef %14, i32 noundef 0) #22
  br label %18

17:                                               ; preds = %8
  tail call void @gsi_insert_before(ptr noundef %1, ptr noundef %14, i32 noundef 1) #22
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i32, ptr %14, align 8
  %20 = and i32 %19, 255
  %21 = add nsw i32 %20, -10
  %22 = icmp ult i32 %21, -9
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void @gimple_set_modified(ptr noundef nonnull %14, i8 noundef zeroext 1) #22
  tail call void @update_stmt_operands(ptr noundef nonnull %14) #22
  br label %24

24:                                               ; preds = %23, %18, %3
  %25 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !68
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %31, %28 ], [ %26, %24 ]
  tail call fastcc void @init_subtree_with_zero(ptr noundef nonnull %29, ptr noundef %1, i8 noundef zeroext %2)
  %30 = getelementptr inbounds %struct.access, ptr %29, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !68
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %28, !llvm.loop !346

33:                                               ; preds = %28, %24
  ret void
}

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_seq_alloc() local_unnamed_addr #3

declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

declare void @pointer_map_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define internal noundef zeroext i8 @delete_base_accesses(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #17 !prof !67 {
  %4 = load ptr, ptr %1, align 8, !tbaa !68
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef %4)
  br label %7

7:                                                ; preds = %3, %6
  ret i8 1
}

declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @ipa_dump_param_adjustments(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @cgraph_node_can_be_local_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @is_unused_scalar_param(ptr noundef %0) unnamed_addr #9 !prof !293 !PGOFuncName !347 {
  %2 = tail call zeroext i8 @is_gimple_reg(ptr noundef %0) #22
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %20, label %4, !prof !112

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !68
  %6 = tail call ptr @gimple_default_def(ptr noundef %5, ptr noundef %0) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8, !prof !112

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 5
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 5, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !119
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %20, label %13, !prof !112

13:                                               ; preds = %8
  %14 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !83
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !99

16:                                               ; preds = %13
  %17 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %9) #22
  %18 = icmp ne i8 %17, 0
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %16, %13, %8, %4, %1
  %21 = phi i8 [ 0, %1 ], [ 1, %4 ], [ %19, %16 ], [ 1, %8 ], [ 0, %13 ]
  ret i8 %21
}

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !348 !PGOFuncName !349 {
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !350
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #22
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %77, !prof !122

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %15) #22
  %17 = icmp eq i8 %16, 0
  %18 = xor i1 %9, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !79
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 4, i64 0
  br label %25

25:                                               ; preds = %19, %13, %23
  %26 = phi i32 [ %21, %23 ], [ 0, %13 ], [ %21, %19 ]
  %27 = phi i32 [ 1, %23 ], [ 0, %13 ], [ 0, %19 ]
  %28 = phi ptr [ %4, %23 ], [ null, %13 ], [ %4, %19 ]
  %29 = phi i1 [ true, %23 ], [ false, %13 ], [ false, %19 ]
  %30 = phi i8 [ 0, %23 ], [ 1, %13 ], [ 1, %19 ]
  %31 = phi ptr [ %24, %23 ], [ null, %13 ], [ null, %19 ]
  br i1 %29, label %32, label %188

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 1
  br label %34

34:                                               ; preds = %32, %72
  %35 = phi ptr [ %31, %32 ], [ %75, %72 ]
  %36 = phi ptr [ %0, %32 ], [ %62, %72 ]
  %37 = phi i8 [ %30, %32 ], [ %74, %72 ]
  %38 = phi i32 [ %27, %32 ], [ %73, %72 ]
  %39 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !350
  %41 = load ptr, ptr %40, align 8, !tbaa !68
  %42 = icmp ne ptr %41, %7
  %43 = icmp eq ptr %35, %0
  %44 = or i1 %42, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !119
  %48 = icmp eq ptr %47, %35
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %35, align 8, !tbaa !142
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !119
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %50, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !119
  %56 = load ptr, ptr %53, align 8, !tbaa !119
  store ptr %50, ptr %56, align 8, !tbaa !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  br label %57

57:                                               ; preds = %52, %49
  store ptr %36, ptr %35, align 8, !tbaa !142
  %58 = load ptr, ptr %46, align 8, !tbaa !119
  %59 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !119
  %60 = load ptr, ptr %46, align 8, !tbaa !119
  store ptr %35, ptr %60, align 8, !tbaa !142
  store ptr %35, ptr %46, align 8, !tbaa !119
  br label %61

61:                                               ; preds = %34, %45, %57
  %62 = phi ptr [ %36, %34 ], [ %35, %57 ], [ %35, %45 ]
  %63 = icmp slt i32 %38, %26
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = add nsw i32 %38, 1
  %66 = load i32, ptr %33, align 8, !tbaa !79
  %67 = icmp ult i32 %66, %38
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 3103, ptr noundef nonnull @.str.4) #22
  br label %69

69:                                               ; preds = %68, %64
  %70 = zext i32 %38 to i64
  %71 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 4, i64 %70
  br label %72

72:                                               ; preds = %61, %69
  %73 = phi i32 [ %65, %69 ], [ %38, %61 ]
  %74 = phi i8 [ %37, %69 ], [ 1, %61 ]
  %75 = phi ptr [ %71, %69 ], [ null, %61 ]
  %76 = icmp eq i8 %74, 0
  br i1 %76, label %34, label %188, !llvm.loop !351

77:                                               ; preds = %2
  br i1 %9, label %147, label %78, !prof !122

78:                                               ; preds = %77
  %79 = load i32, ptr %4, align 8
  %80 = and i32 %79, 255
  %81 = add nsw i32 %80, -10
  %82 = icmp ult i32 %81, -9
  br i1 %82, label %86, label %83, !prof !122

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !79
  br label %86

86:                                               ; preds = %83, %78
  %87 = phi ptr [ %85, %83 ], [ null, %78 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %99, label %89, !prof !122

89:                                               ; preds = %86
  %90 = and i32 %79, 254
  %91 = add nsw i32 %90, -10
  %92 = icmp ult i32 %91, -4
  br i1 %92, label %99, label %93, !prof !122

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !79
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97, !prof !126

97:                                               ; preds = %93
  %98 = load ptr, ptr %87, align 8, !tbaa !352
  br label %99

99:                                               ; preds = %97, %93, %89, %86
  %100 = phi ptr [ %87, %86 ], [ %87, %89 ], [ %87, %93 ], [ %98, %97 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102, !prof !122

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.use_optype_d, ptr %100, i64 0, i32 1
  %104 = load ptr, ptr %100, align 8, !tbaa !352
  br label %105

105:                                              ; preds = %99, %102
  %106 = phi ptr [ %104, %102 ], [ %100, %99 ]
  %107 = phi i8 [ 0, %102 ], [ 1, %99 ]
  %108 = phi ptr [ %103, %102 ], [ null, %99 ]
  br i1 %101, label %188, label %109, !prof !113

109:                                              ; preds = %105, %142
  %110 = phi ptr [ %145, %142 ], [ %108, %105 ]
  %111 = phi ptr [ %137, %142 ], [ %0, %105 ]
  %112 = phi i8 [ %144, %142 ], [ %107, %105 ]
  %113 = phi ptr [ %143, %142 ], [ %106, %105 ]
  %114 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !350
  %116 = load ptr, ptr %115, align 8, !tbaa !68
  %117 = icmp ne ptr %116, %7
  %118 = icmp eq ptr %110, %0
  %119 = or i1 %117, %118
  br i1 %119, label %136, label %120, !prof !354

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !119
  %123 = icmp eq ptr %122, %110
  br i1 %123, label %136, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %110, align 8, !tbaa !142
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !119
  %130 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %125, i64 0, i32 1
  store ptr %129, ptr %130, align 8, !tbaa !119
  %131 = load ptr, ptr %128, align 8, !tbaa !119
  store ptr %125, ptr %131, align 8, !tbaa !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  br label %132

132:                                              ; preds = %127, %124
  store ptr %111, ptr %110, align 8, !tbaa !142
  %133 = load ptr, ptr %121, align 8, !tbaa !119
  %134 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !119
  %135 = load ptr, ptr %121, align 8, !tbaa !119
  store ptr %110, ptr %135, align 8, !tbaa !142
  store ptr %110, ptr %121, align 8, !tbaa !119
  br label %136

136:                                              ; preds = %132, %120, %109
  %137 = phi ptr [ %111, %109 ], [ %110, %132 ], [ %110, %120 ]
  %138 = icmp eq ptr %113, null
  br i1 %138, label %142, label %139, !prof !355

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.use_optype_d, ptr %113, i64 0, i32 1
  %141 = load ptr, ptr %113, align 8, !tbaa !352
  br label %142

142:                                              ; preds = %136, %139
  %143 = phi ptr [ %141, %139 ], [ %113, %136 ]
  %144 = phi i8 [ %112, %139 ], [ 1, %136 ]
  %145 = phi ptr [ %140, %139 ], [ null, %136 ]
  %146 = icmp eq i8 %144, 0
  br i1 %146, label %109, label %188, !prof !356, !llvm.loop !357

147:                                              ; preds = %77
  %148 = and i32 %10, 254
  %149 = add nsw i32 %148, -10
  %150 = icmp ult i32 %149, -4
  br i1 %150, label %162, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !79
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !358
  %158 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %159 = icmp eq ptr %157, %158
  %160 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1
  %161 = select i1 %159, ptr %160, ptr null
  br label %162

162:                                              ; preds = %147, %151, %155
  %163 = phi ptr [ null, %147 ], [ null, %151 ], [ %161, %155 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %188, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !350
  %168 = load ptr, ptr %167, align 8, !tbaa !68
  %169 = icmp ne ptr %168, %7
  %170 = icmp eq ptr %163, %0
  %171 = or i1 %170, %169
  br i1 %171, label %188, label %172

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !119
  %175 = icmp eq ptr %174, %163
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %163, align 8, !tbaa !142
  %178 = icmp eq ptr %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !119
  %182 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %177, i64 0, i32 1
  store ptr %181, ptr %182, align 8, !tbaa !119
  %183 = load ptr, ptr %180, align 8, !tbaa !119
  store ptr %177, ptr %183, align 8, !tbaa !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  br label %184

184:                                              ; preds = %179, %176
  store ptr %0, ptr %163, align 8, !tbaa !142
  %185 = load ptr, ptr %173, align 8, !tbaa !119
  %186 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !119
  %187 = load ptr, ptr %173, align 8, !tbaa !119
  store ptr %163, ptr %187, align 8, !tbaa !142
  store ptr %163, ptr %173, align 8, !tbaa !119
  br label %188

188:                                              ; preds = %142, %72, %105, %25, %184, %172, %165, %162
  %189 = phi ptr [ %0, %165 ], [ %0, %162 ], [ %163, %184 ], [ %163, %172 ], [ %0, %25 ], [ %0, %105 ], [ %62, %72 ], [ %137, %142 ]
  %190 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !142
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193, !prof !141

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !119
  %196 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %191, i64 0, i32 1
  store ptr %195, ptr %196, align 8, !tbaa !119
  %197 = load ptr, ptr %194, align 8, !tbaa !119
  store ptr %191, ptr %197, align 8, !tbaa !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %190, i8 0, i64 16, i1 false)
  br label %198

198:                                              ; preds = %193, %188
  store ptr %189, ptr %190, align 8, !tbaa !142
  %199 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %189, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !119
  %201 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  store ptr %200, ptr %201, align 8, !tbaa !119
  %202 = load ptr, ptr %199, align 8, !tbaa !119
  store ptr %190, ptr %202, align 8, !tbaa !142
  store ptr %190, ptr %199, align 8, !tbaa !119
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_dereferences_table(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !prof !67 {
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef %1)
  %6 = load ptr, ptr @cfun, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !148
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !169
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %52, label %13

13:                                               ; preds = %3, %42
  %14 = phi ptr [ %45, %42 ], [ %9, %3 ]
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !172
  %17 = load ptr, ptr @final_bbs, align 8, !tbaa !68
  %18 = tail call i32 @bitmap_bit_p(ptr noundef %17, i32 noundef %16) #22
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.65, i32 noundef %16, i32 noundef %18)
  %20 = load ptr, ptr @cfun, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !148
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !169
  %25 = icmp ne ptr %14, %24
  %26 = load i32, ptr @func_param_count, align 4
  %27 = icmp sgt i32 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %42

29:                                               ; preds = %13, %29
  %30 = phi i32 [ %40, %29 ], [ %26, %13 ]
  %31 = phi i32 [ %39, %29 ], [ 0, %13 ]
  %32 = load i32, ptr %15, align 8, !tbaa !172
  %33 = mul nsw i32 %32, %30
  %34 = add nsw i32 %33, %31
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, ptr %2, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !124
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.66, i64 noundef %37)
  %39 = add nuw nsw i32 %31, 1
  %40 = load i32, ptr @func_param_count, align 4, !tbaa !83
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %29, label %42, !llvm.loop !359

42:                                               ; preds = %29, %13
  %43 = tail call i32 @fputc(i32 10, ptr %0)
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !68
  %46 = load ptr, ptr @cfun, align 8, !tbaa !68
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !148
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !169
  %51 = icmp eq ptr %45, %50
  br i1 %51, label %52, label %13, !llvm.loop !360

52:                                               ; preds = %42, %3
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %54 = tail call i32 @fputc(i32 10, ptr %53)
  ret void
}

declare void @ao_ref_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @walk_aliased_vdefs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i8 @mark_maybe_modified(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #18 !prof !67 {
  %4 = getelementptr inbounds %struct.access, ptr %2, i64 0, i32 14
  %5 = load i16, ptr %4, align 8
  %6 = or i16 %5, 2048
  store i16 %6, ptr %4, align 8
  ret i8 1
}

declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #3

declare ptr @ipa_get_vector_of_formal_parms(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @ipa_modify_formal_parameters(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @sra_ipa_modify_expr(ptr nocapture noundef %0, ptr nocapture readnone %1, i8 noundef zeroext %2, ptr noundef readonly %3) #9 !prof !67 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %8 = icmp eq ptr %3, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %3, align 8, !tbaa !198
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi i32 [ %10, %9 ], [ 0, %4 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !68
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -42
  %18 = icmp ult i32 %17, 3
  %19 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %20 = select i1 %18, ptr %19, ptr %0
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = call ptr @get_ref_base_and_extent(ptr noundef %21, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #22
  %23 = icmp eq ptr %22, null
  %24 = load i64, ptr %6, align 8
  %25 = icmp eq i64 %24, -1
  %26 = select i1 %23, i1 true, i1 %25
  %27 = load i64, ptr %7, align 8
  %28 = icmp eq i64 %27, -1
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %136, label %30

30:                                               ; preds = %11
  %31 = load i64, ptr %22, align 8
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -47
  %35 = icmp ult i32 %34, 3
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.tree_exp, ptr %22, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !79
  br label %39

39:                                               ; preds = %30, %36
  %40 = phi ptr [ %38, %36 ], [ %22, %30 ]
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 141
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = and i64 %41, 4294967296
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.tree_ssa_name, ptr %40, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !79
  br label %50

50:                                               ; preds = %39, %44, %47
  %51 = phi ptr [ %49, %47 ], [ null, %44 ], [ %40, %39 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %136, label %53

53:                                               ; preds = %50
  %54 = load i64, ptr %51, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 34
  br i1 %56, label %57, label %136

57:                                               ; preds = %53
  %58 = icmp sgt i32 %12, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %57
  %60 = load i64, ptr %5, align 8
  %61 = zext nneg i32 %12 to i64
  br label %62

62:                                               ; preds = %59, %76
  %63 = phi i64 [ 0, %59 ], [ %77, %76 ]
  %64 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %3, i64 0, i32 2, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !205
  %66 = icmp eq ptr %65, %51
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %3, i64 0, i32 2, i64 %63, i32 5
  %69 = load i64, ptr %68, align 8, !tbaa !208
  %70 = icmp eq i64 %69, %60
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %3, i64 0, i32 2, i64 %63, i32 7
  %73 = load i8, ptr %72, align 4
  %74 = and i8 %73, 2
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %62, %71
  %77 = add nuw nsw i64 %63, 1
  %78 = icmp eq i64 %77, %61
  br i1 %78, label %79, label %62, !llvm.loop !361

79:                                               ; preds = %76, %71, %67, %57
  %80 = phi ptr [ null, %57 ], [ null, %76 ], [ %64, %71 ], [ %64, %67 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %136, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %80, i64 0, i32 7
  %84 = load i8, ptr %83, align 4
  %85 = and i8 %84, 3
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %136

87:                                               ; preds = %82
  %88 = and i8 %84, 4
  %89 = icmp eq i8 %88, 0
  %90 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %80, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !362
  br i1 %89, label %101, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.tree_common, ptr %91, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !79
  %95 = getelementptr inbounds %struct.tree_common, ptr %94, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !79
  %97 = call ptr @build1_stat(i32 noundef 47, ptr noundef %96, ptr noundef %91) #22
  %98 = call ptr @gimple_fold_indirect_ref(ptr noundef %97) #22
  %99 = icmp eq ptr %98, null
  %100 = select i1 %99, ptr %97, ptr %98
  br label %101

101:                                              ; preds = %87, %92
  %102 = phi ptr [ %100, %92 ], [ %91, %87 ]
  %103 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %104 = icmp eq ptr %103, null
  br i1 %104, label %118, label %105

105:                                              ; preds = %101
  %106 = load i32, ptr @dump_flags, align 4, !tbaa !83
  %107 = and i32 %106, 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %105
  %110 = call i64 @fwrite(ptr nonnull @.str.70, i64 22, i64 1, ptr nonnull %103)
  %111 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %112 = load ptr, ptr %20, align 8, !tbaa !68
  call void @print_generic_expr(ptr noundef %111, ptr noundef %112, i32 noundef 0) #22
  %113 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %114 = call i64 @fwrite(ptr nonnull @.str.71, i64 6, i64 1, ptr %113)
  %115 = load ptr, ptr @dump_file, align 8, !tbaa !68
  call void @print_generic_expr(ptr noundef %115, ptr noundef %102, i32 noundef 0) #22
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %117 = call i32 @fputc(i32 10, ptr %116)
  br label %118

118:                                              ; preds = %109, %105, %101
  %119 = icmp eq i8 %2, 0
  %120 = or i1 %119, %18
  br i1 %120, label %121, label %134

121:                                              ; preds = %118
  %122 = load ptr, ptr %20, align 8, !tbaa !68
  %123 = getelementptr inbounds %struct.tree_common, ptr %122, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !79
  %125 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %80, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !207
  %127 = call zeroext i8 @useless_type_conversion_p(ptr noundef %124, ptr noundef %126) #22
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = load ptr, ptr %20, align 8, !tbaa !68
  %131 = getelementptr inbounds %struct.tree_common, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !79
  %133 = call ptr @build1_stat(i32 noundef 118, ptr noundef %132, ptr noundef %102) #22
  br label %134

134:                                              ; preds = %118, %121, %129
  %135 = phi ptr [ %133, %129 ], [ %102, %121 ], [ %102, %118 ]
  store ptr %135, ptr %20, align 8, !tbaa !68
  br label %136

136:                                              ; preds = %79, %82, %50, %53, %11, %134
  %137 = phi i8 [ 1, %134 ], [ 0, %11 ], [ 0, %53 ], [ 0, %50 ], [ 0, %82 ], [ 0, %79 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret i8 %137
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @sra_ipa_modify_assign(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #9 !prof !67 {
  %4 = load ptr, ptr %0, align 8, !tbaa !68
  %5 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %4) #22
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %103, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 8
  %9 = and i32 %8, 255
  %10 = add nsw i32 %9, -10
  %11 = icmp ult i32 %10, -9
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = zext nneg i32 %9 to i64
  %14 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !83
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !124
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %21

21:                                               ; preds = %20, %12
  %22 = getelementptr inbounds i8, ptr %4, i64 %18
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  br label %24

24:                                               ; preds = %7, %21
  %25 = phi ptr [ %23, %21 ], [ null, %7 ]
  %26 = load i32, ptr %4, align 8
  %27 = and i32 %26, 255
  %28 = add nsw i32 %27, -10
  %29 = icmp ult i32 %28, -9
  br i1 %29, label %41, label %30

30:                                               ; preds = %24
  %31 = zext nneg i32 %27 to i64
  %32 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !83
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !124
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %39

39:                                               ; preds = %38, %30
  %40 = getelementptr inbounds i8, ptr %4, i64 %36
  br label %41

41:                                               ; preds = %24, %39
  %42 = phi ptr [ %40, %39 ], [ null, %24 ]
  %43 = tail call zeroext i8 @sra_ipa_modify_expr(ptr noundef %25, ptr poison, i8 noundef zeroext 1, ptr noundef %2), !range !114
  %44 = tail call zeroext i8 @sra_ipa_modify_expr(ptr noundef %42, ptr poison, i8 noundef zeroext 1, ptr noundef %2), !range !114
  %45 = or i8 %44, %43
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %103, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %42, align 8, !tbaa !68
  %49 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !79
  %51 = load ptr, ptr %25, align 8, !tbaa !68
  %52 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !79
  %54 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %50, ptr noundef %53) #22
  %55 = icmp eq i8 %54, 0
  %56 = load ptr, ptr %25, align 8, !tbaa !68
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 65535
  br i1 %55, label %59, label %82

59:                                               ; preds = %47
  %60 = icmp eq i64 %58, 51
  br i1 %60, label %61, label %75

61:                                               ; preds = %59
  %62 = load ptr, ptr %42, align 8, !tbaa !68
  %63 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !79
  %65 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %64) #22
  %66 = icmp eq i8 %65, 0
  %67 = load ptr, ptr %42, align 8, !tbaa !68
  %68 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !79
  br i1 %66, label %73, label %70

70:                                               ; preds = %61
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !68
  %72 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %69, ptr noundef %71) #22
  store ptr %72, ptr %25, align 8, !tbaa !68
  br label %98

73:                                               ; preds = %61
  %74 = tail call ptr @build_constructor(ptr noundef %69, ptr noundef null) #22
  store ptr %74, ptr %25, align 8, !tbaa !68
  br label %98

75:                                               ; preds = %59
  %76 = getelementptr inbounds %struct.gimple_statement_base, ptr %4, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !79
  %78 = load ptr, ptr %42, align 8, !tbaa !68
  %79 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !79
  %81 = tail call ptr @fold_build1_stat_loc(i32 noundef %77, i32 noundef 118, ptr noundef %80, ptr noundef nonnull %56) #22
  br label %98

82:                                               ; preds = %47
  %83 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %58
  %84 = load i32, ptr %83, align 4, !tbaa !83
  %85 = icmp eq i32 %84, 4
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = load ptr, ptr %42, align 8, !tbaa !68
  %88 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !79
  %90 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %89) #22
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load ptr, ptr %42, align 8, !tbaa !68
  %94 = tail call zeroext i8 @is_gimple_reg(ptr noundef %93) #22
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load ptr, ptr %25, align 8, !tbaa !68
  br label %98

98:                                               ; preds = %82, %86, %92, %96, %75, %73, %70
  %99 = phi ptr [ null, %92 ], [ %97, %96 ], [ null, %86 ], [ null, %82 ], [ null, %70 ], [ null, %73 ], [ %81, %75 ]
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = tail call ptr @force_gimple_operand_gsi(ptr noundef %1, ptr noundef nonnull %99, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #22
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %1, ptr noundef %102) #22
  br label %103

103:                                              ; preds = %41, %98, %101, %3
  %104 = phi i32 [ 0, %3 ], [ 1, %101 ], [ 1, %98 ], [ 0, %41 ]
  ret i32 %104
}

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @replace_removed_params_ssa_names(ptr noundef %0, ptr noundef %1) #9 !prof !67 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 255
  %5 = trunc i32 %3 to i8
  switch i8 %5, label %33 [
    i8 16, label %6
    i8 6, label %9
    i8 8, label %21
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  br label %34

9:                                                ; preds = %2
  %10 = zext nneg i32 %4 to i64
  %11 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !83
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !124
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %18

18:                                               ; preds = %17, %9
  %19 = getelementptr inbounds i8, ptr %0, i64 %15
  %20 = load ptr, ptr %19, align 8, !tbaa !68
  br label %34

21:                                               ; preds = %2
  %22 = zext nneg i32 %4 to i64
  %23 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !83
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %25
  %27 = load i64, ptr %26, align 8, !tbaa !124
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %30

30:                                               ; preds = %29, %21
  %31 = getelementptr inbounds i8, ptr %0, i64 %27
  %32 = load ptr, ptr %31, align 8, !tbaa !68
  br label %34

33:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3773, ptr noundef nonnull @.str.4) #22
  br label %34

34:                                               ; preds = %30, %18, %33, %6
  %35 = phi ptr [ %8, %6 ], [ undef, %33 ], [ %20, %18 ], [ %32, %30 ]
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %207

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !79
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 34
  br i1 %44, label %45, label %207

45:                                               ; preds = %39
  %46 = icmp eq ptr %1, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %1, align 8, !tbaa !198
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %48, %47 ], [ 0, %45 ]
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = zext nneg i32 %50 to i64
  br label %57

54:                                               ; preds = %69
  %55 = add nuw nsw i64 %58, 1
  %56 = icmp eq i64 %55, %53
  br i1 %56, label %72, label %57, !llvm.loop !363

57:                                               ; preds = %52, %54
  %58 = phi i64 [ 0, %52 ], [ %55, %54 ]
  %59 = phi ptr [ undef, %52 ], [ %70, %54 ]
  %60 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %58, i32 7
  %61 = load i8, ptr %60, align 4
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %58
  %66 = load ptr, ptr %65, align 8, !tbaa !205
  %67 = icmp eq ptr %66, %41
  br i1 %67, label %69, label %68

68:                                               ; preds = %64, %57
  br label %69

69:                                               ; preds = %68, %64
  %70 = phi ptr [ %59, %68 ], [ %65, %64 ]
  %71 = phi i1 [ true, %68 ], [ false, %64 ]
  br i1 %71, label %54, label %72

72:                                               ; preds = %69, %54, %49
  %73 = phi ptr [ null, %49 ], [ %70, %69 ], [ null, %54 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %207, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %73, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !364
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %137

79:                                               ; preds = %75
  %80 = load ptr, ptr %73, align 8, !tbaa !205
  %81 = tail call fastcc ptr @make_fancy_name(ptr noundef %80)
  %82 = load ptr, ptr %73, align 8, !tbaa !205
  %83 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !79
  %85 = tail call ptr @create_tmp_var(ptr noundef %84, ptr noundef nonnull @.str.73) #22
  %86 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !79
  %88 = load i64, ptr %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = and i32 %89, 65535
  %91 = add nsw i32 %90, -13
  %92 = icmp ult i32 %91, 2
  br i1 %92, label %93, label %97

93:                                               ; preds = %79
  %94 = getelementptr inbounds %struct.tree_decl_common, ptr %85, i64 0, i32 2
  %95 = load i64, ptr %94, align 8
  %96 = or i64 %95, 134217728
  store i64 %96, ptr %94, align 8
  br label %97

97:                                               ; preds = %93, %79
  %98 = tail call ptr @get_identifier(ptr noundef %81) #22
  %99 = getelementptr inbounds %struct.tree_decl_minimal, ptr %85, i64 0, i32 3
  store ptr %98, ptr %99, align 8, !tbaa !79
  %100 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 1), align 8, !tbaa !317
  %101 = ptrtoint ptr %81 to i64
  %102 = ptrtoint ptr %100 to i64
  %103 = sub i64 %101, %102
  store i64 %103, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !319
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %97
  %106 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !321
  %107 = ptrtoint ptr %106 to i64
  %108 = sub i64 %107, %102
  %109 = icmp slt i64 %103, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = getelementptr inbounds i8, ptr %100, i64 %103
  store ptr %111, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 2), align 8, !tbaa !322
  store ptr %111, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !323
  br label %114

112:                                              ; preds = %105, %97
  %113 = getelementptr inbounds i8, ptr %100, i64 %103
  tail call void @obstack_free(ptr noundef nonnull @name_obstack, ptr noundef %113) #22
  br label %114

114:                                              ; preds = %112, %110
  %115 = load i64, ptr %85, align 8
  %116 = trunc i64 %115 to i16
  switch i16 %116, label %121 [
    i16 32, label %117
    i16 34, label %119
  ]

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.tree_var_decl, ptr %85, i64 0, i32 1
  br label %126

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.tree_parm_decl, ptr %85, i64 0, i32 2
  br label %126

121:                                              ; preds = %114
  %122 = and i64 %115, 65535
  %123 = icmp eq i64 %122, 36
  %124 = getelementptr inbounds %struct.tree_result_decl, ptr %85, i64 0, i32 1
  %125 = select i1 %123, ptr %124, ptr null
  br label %126

126:                                              ; preds = %121, %119, %117
  %127 = phi ptr [ %118, %117 ], [ %120, %119 ], [ %125, %121 ]
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  tail call void @fancy_abort(ptr noundef nonnull @.str.45, i32 noundef 144, ptr noundef nonnull @.str.4) #22
  br label %130

130:                                              ; preds = %129, %126
  %131 = load ptr, ptr %127, align 8, !tbaa !68
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = tail call ptr @create_var_ann(ptr noundef nonnull %85) #22
  br label %135

135:                                              ; preds = %133, %130
  %136 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %85) #22
  store ptr %85, ptr %76, align 8, !tbaa !364
  br label %137

137:                                              ; preds = %75, %135
  %138 = phi ptr [ %85, %135 ], [ %77, %75 ]
  %139 = load ptr, ptr @cfun, align 8, !tbaa !68
  %140 = tail call ptr @make_ssa_name_fn(ptr noundef %139, ptr noundef nonnull %138, ptr noundef nonnull %0) #22
  %141 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %142 = icmp eq ptr %141, null
  br i1 %142, label %151, label %143

143:                                              ; preds = %137
  %144 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 41, i64 1, ptr nonnull %141)
  %145 = load ptr, ptr @dump_file, align 8, !tbaa !68
  tail call void @print_generic_expr(ptr noundef %145, ptr noundef nonnull %35, i32 noundef 0) #22
  %146 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %147 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 6, i64 1, ptr %146)
  %148 = load ptr, ptr @dump_file, align 8, !tbaa !68
  tail call void @print_generic_expr(ptr noundef %148, ptr noundef %140, i32 noundef 0) #22
  %149 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %150 = tail call i32 @fputc(i32 10, ptr %149)
  br label %151

151:                                              ; preds = %143, %137
  %152 = load i32, ptr %0, align 8
  %153 = trunc i32 %152 to i8
  switch i8 %153, label %204 [
    i8 6, label %154
    i8 8, label %179
  ]

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %156 = load i32, ptr %155, align 4, !tbaa !79
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1665, ptr noundef nonnull @.str.4) #22
  br label %159

159:                                              ; preds = %158, %154
  %160 = load i32, ptr %0, align 8
  %161 = and i32 %160, 255
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !83
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %165
  %167 = load i64, ptr %166, align 8, !tbaa !124
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %159
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %170

170:                                              ; preds = %169, %159
  %171 = getelementptr inbounds i8, ptr %0, i64 %167
  store ptr %140, ptr %171, align 8, !tbaa !68
  %172 = icmp eq ptr %140, null
  br i1 %172, label %206, label %173

173:                                              ; preds = %170
  %174 = load i64, ptr %140, align 8
  %175 = and i64 %174, 65535
  %176 = icmp eq i64 %175, 141
  br i1 %176, label %177, label %206

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.tree_ssa_name, ptr %140, i64 0, i32 2
  store ptr %0, ptr %178, align 8, !tbaa !79
  br label %206

179:                                              ; preds = %151
  %180 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %181 = load i32, ptr %180, align 4, !tbaa !79
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1665, ptr noundef nonnull @.str.4) #22
  br label %184

184:                                              ; preds = %183, %179
  %185 = load i32, ptr %0, align 8
  %186 = and i32 %185, 255
  %187 = zext nneg i32 %186 to i64
  %188 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !83
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %190
  %192 = load i64, ptr %191, align 8, !tbaa !124
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %184
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %195

195:                                              ; preds = %194, %184
  %196 = getelementptr inbounds i8, ptr %0, i64 %192
  store ptr %140, ptr %196, align 8, !tbaa !68
  %197 = icmp eq ptr %140, null
  br i1 %197, label %206, label %198

198:                                              ; preds = %195
  %199 = load i64, ptr %140, align 8
  %200 = and i64 %199, 65535
  %201 = icmp eq i64 %200, 141
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.tree_ssa_name, ptr %140, i64 0, i32 2
  store ptr %0, ptr %203, align 8, !tbaa !79
  br label %206

204:                                              ; preds = %151
  %205 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  store ptr %140, ptr %205, align 8, !tbaa !79
  br label %206

206:                                              ; preds = %202, %198, %195, %177, %173, %170, %204
  tail call void @replace_uses_by(ptr noundef nonnull %35, ptr noundef %140) #22
  br label %207

207:                                              ; preds = %72, %39, %34, %206
  %208 = phi i8 [ 1, %206 ], [ 0, %34 ], [ 0, %39 ], [ 0, %72 ]
  ret i8 %208
}

declare void @cgraph_make_node_local(ptr noundef) local_unnamed_addr #3

declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_fold_indirect_ref(ptr noundef) local_unnamed_addr #3

declare ptr @build_constructor(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @replace_uses_by(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @push_cfun(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #3

declare void @ipa_modify_call_arguments(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pop_cfun() local_unnamed_addr #3

declare i32 @compute_inline_parameters(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @scan_function.specialized.1(i8 noundef zeroext %0) unnamed_addr #9 !prof !67 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !148
  %7 = load ptr, ptr %6, align 8, !tbaa !164
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !167
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !169
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %350, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds i8, ptr %2, i64 8
  %15 = getelementptr inbounds i8, ptr %2, i64 16
  %16 = icmp ne i8 %0, 0
  %17 = icmp eq i8 %0, 0
  %18 = icmp eq i8 %0, 0
  %19 = icmp eq i8 %0, 0
  %20 = icmp eq i8 %0, 0
  br label %21

21:                                               ; preds = %13, %341
  %22 = phi ptr [ %9, %13 ], [ %343, %341 ]
  %23 = phi i8 [ 0, %13 ], [ %333, %341 ]
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !220, !noalias !365
  %26 = and i32 %25, 512
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !79, !noalias !365
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %30, align 8, !tbaa !224, !noalias !365
  br label %34

34:                                               ; preds = %32, %28, %21
  %35 = phi ptr [ %33, %32 ], [ null, %28 ], [ null, %21 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %35, align 8, !tbaa !226, !noalias !365
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi ptr [ %38, %37 ], [ null, %34 ]
  store ptr %40, ptr %2, align 8, !tbaa.struct !281
  store ptr %35, ptr %14, align 8, !tbaa.struct !282
  store ptr %22, ptr %15, align 8, !tbaa.struct !283
  %41 = icmp eq ptr %40, null
  br i1 %41, label %331, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  br label %47

47:                                               ; preds = %42, %326
  %48 = phi i8 [ 0, %42 ], [ %327, %326 ]
  %49 = phi ptr [ %40, %42 ], [ %329, %326 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %50 = load ptr, ptr %49, align 8, !tbaa !228
  store ptr %50, ptr %3, align 8, !tbaa !68
  %51 = load ptr, ptr @final_bbs, align 8
  %52 = icmp ne ptr %51, null
  %53 = select i1 %16, i1 %52, i1 false
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = tail call zeroext i8 @stmt_can_throw_external(ptr noundef %50) #22
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr @final_bbs, align 8, !tbaa !68
  %59 = load i32, ptr %43, align 8, !tbaa !172
  %60 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %58, i32 noundef %59) #22
  br label %61

61:                                               ; preds = %57, %54, %47
  %62 = load i32, ptr %50, align 8
  %63 = trunc i32 %62 to i8
  switch i8 %63, label %314 [
    i8 9, label %68
    i8 6, label %94
    i8 8, label %64
    i8 7, label %234
  ]

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.gimple_statement_base, ptr %50, i64 0, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !79
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %127, label %97

68:                                               ; preds = %61
  %69 = and i32 %62, 255
  %70 = add nsw i32 %69, -1
  %71 = icmp ult i32 %70, 9
  tail call void @llvm.assume(i1 %71)
  %72 = zext nneg i32 %69 to i64
  %73 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !83
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !124
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %80

80:                                               ; preds = %79, %68
  %81 = getelementptr inbounds i8, ptr %50, i64 %77
  %82 = load ptr, ptr %81, align 8, !tbaa !68
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = call fastcc zeroext i8 @build_access_from_expr(ptr noundef nonnull %81, ptr noundef nonnull %2, i8 noundef zeroext 0, ptr poison), !range !114
  br label %86

86:                                               ; preds = %84, %80
  %87 = phi i8 [ %85, %84 ], [ 0, %80 ]
  %88 = load ptr, ptr @final_bbs, align 8
  %89 = icmp ne ptr %88, null
  %90 = select i1 %16, i1 %89, i1 false
  br i1 %90, label %91, label %314

91:                                               ; preds = %86
  %92 = load i32, ptr %46, align 8, !tbaa !172
  %93 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %88, i32 noundef %92) #22
  br label %314

94:                                               ; preds = %61
  %95 = call fastcc i32 @build_accesses_from_assign(ptr noundef nonnull %3, ptr nonnull poison, ptr poison), !range !368
  %96 = trunc i32 %95 to i8
  br label %314

97:                                               ; preds = %64, %118
  %98 = phi i64 [ %122, %118 ], [ 0, %64 ]
  %99 = phi i8 [ %121, %118 ], [ 0, %64 ]
  %100 = add nuw i64 %98, 3
  %101 = load i32, ptr %50, align 8
  %102 = and i32 %101, 255
  %103 = add nsw i32 %102, -10
  %104 = icmp ult i32 %103, -9
  br i1 %104, label %118, label %105

105:                                              ; preds = %97
  %106 = zext nneg i32 %102 to i64
  %107 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !83
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !124
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %114

114:                                              ; preds = %113, %105
  %115 = getelementptr inbounds i8, ptr %50, i64 %111
  %116 = and i64 %100, 4294967295
  %117 = getelementptr inbounds ptr, ptr %115, i64 %116
  br label %118

118:                                              ; preds = %97, %114
  %119 = phi ptr [ %117, %114 ], [ null, %97 ]
  %120 = call fastcc zeroext i8 @build_access_from_expr(ptr noundef %119, ptr noundef nonnull %2, i8 noundef zeroext 0, ptr poison), !range !114
  %121 = or i8 %120, %99
  %122 = add nuw nsw i64 %98, 1
  %123 = load i32, ptr %65, align 4, !tbaa !79
  %124 = add i32 %123, -3
  %125 = zext i32 %124 to i64
  %126 = icmp ult i64 %122, %125
  br i1 %126, label %97, label %127, !llvm.loop !304

127:                                              ; preds = %118, %64
  %128 = phi i8 [ 0, %64 ], [ %121, %118 ]
  %129 = getelementptr inbounds %struct.gimple_statement_base, ptr %50, i64 0, i32 3
  %130 = load i32, ptr @sra_mode, align 4
  %131 = icmp eq i32 %130, 0
  %132 = select i1 %16, i1 %131, i1 false
  br i1 %132, label %133, label %189

133:                                              ; preds = %127
  %134 = load i32, ptr %50, align 8
  %135 = and i32 %134, 255
  %136 = add nsw i32 %135, -10
  %137 = icmp ult i32 %136, -9
  br i1 %137, label %151, label %138

138:                                              ; preds = %133
  %139 = zext nneg i32 %135 to i64
  %140 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !83
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %142
  %144 = load i64, ptr %143, align 8, !tbaa !124
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %147

147:                                              ; preds = %146, %138
  %148 = getelementptr inbounds i8, ptr %50, i64 %144
  %149 = getelementptr inbounds ptr, ptr %148, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !68
  br label %151

151:                                              ; preds = %147, %133
  %152 = phi ptr [ %150, %147 ], [ null, %133 ]
  %153 = load i64, ptr %152, align 8
  %154 = and i64 %153, 65535
  %155 = icmp eq i64 %154, 121
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.tree_exp, ptr %152, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !79
  br label %159

159:                                              ; preds = %151, %156
  %160 = phi ptr [ %158, %156 ], [ null, %151 ]
  %161 = tail call i32 @gimple_call_flags(ptr noundef nonnull %50) #22
  %162 = icmp eq ptr %160, null
  br i1 %162, label %180, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.tree_function_decl, ptr %160, i64 0, i32 5
  %165 = load i32, ptr %164, align 8
  %166 = and i32 %165, 8191
  %167 = icmp eq i32 %166, 6561
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store i1 true, ptr @encountered_apply_args, align 1
  br label %169

169:                                              ; preds = %168, %163
  %170 = tail call ptr @cgraph_get_node(ptr noundef nonnull %160) #22
  %171 = load ptr, ptr @current_function_decl, align 8, !tbaa !68
  %172 = tail call ptr @cgraph_get_node(ptr noundef %171) #22
  %173 = icmp eq ptr %170, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  store i1 true, ptr @encountered_recursive_call, align 1
  %175 = load i32, ptr %129, align 4, !tbaa !79
  %176 = add i32 %175, -3
  %177 = load i32, ptr @func_param_count, align 4, !tbaa !83
  %178 = icmp ult i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  store i1 true, ptr @encountered_unchangable_recursive_call, align 1
  br label %180

180:                                              ; preds = %179, %174, %169, %159
  %181 = load ptr, ptr @final_bbs, align 8, !tbaa !68
  %182 = icmp ne ptr %181, null
  %183 = and i32 %161, 3
  %184 = icmp eq i32 %183, 0
  %185 = select i1 %182, i1 %184, i1 false
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = load i32, ptr %45, align 8, !tbaa !172
  %188 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %181, i32 noundef %187) #22
  br label %189

189:                                              ; preds = %180, %186, %127
  %190 = load i32, ptr %50, align 8
  %191 = and i32 %190, 255
  %192 = add nsw i32 %191, -10
  %193 = icmp ult i32 %192, -9
  br i1 %193, label %206, label %194

194:                                              ; preds = %189
  %195 = zext nneg i32 %191 to i64
  %196 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %195
  %197 = load i32, ptr %196, align 4, !tbaa !83
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %198
  %200 = load i64, ptr %199, align 8, !tbaa !124
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %203

203:                                              ; preds = %202, %194
  %204 = getelementptr inbounds i8, ptr %50, i64 %200
  %205 = load ptr, ptr %204, align 8, !tbaa !68
  br label %206

206:                                              ; preds = %189, %203
  %207 = phi ptr [ %205, %203 ], [ null, %189 ]
  %208 = icmp eq ptr %207, null
  br i1 %208, label %314, label %209

209:                                              ; preds = %206
  %210 = load i32, ptr %50, align 8
  %211 = and i32 %210, 255
  %212 = add nsw i32 %211, -10
  %213 = icmp ult i32 %212, -9
  br i1 %213, label %225, label %214

214:                                              ; preds = %209
  %215 = zext nneg i32 %211 to i64
  %216 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !83
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %218
  %220 = load i64, ptr %219, align 8, !tbaa !124
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %214
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %223

223:                                              ; preds = %222, %214
  %224 = getelementptr inbounds i8, ptr %50, i64 %220
  br label %225

225:                                              ; preds = %209, %223
  %226 = phi ptr [ %224, %223 ], [ null, %209 ]
  br i1 %18, label %231, label %227

227:                                              ; preds = %225
  %228 = load ptr, ptr %226, align 8, !tbaa !68
  %229 = tail call fastcc zeroext i8 @disqualify_ops_if_throwing_stmt(ptr noundef nonnull %50, ptr noundef %228, ptr noundef null), !range !114
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %314

231:                                              ; preds = %227, %225
  %232 = call fastcc zeroext i8 @build_access_from_expr(ptr noundef %226, ptr noundef nonnull %2, i8 noundef zeroext 1, ptr poison), !range !114
  %233 = or i8 %232, %128
  br label %314

234:                                              ; preds = %61
  br i1 %17, label %242, label %235

235:                                              ; preds = %234
  %236 = tail call zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef nonnull %50, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull @asm_visit_addr) #22
  %237 = load ptr, ptr @final_bbs, align 8, !tbaa !68
  %238 = icmp eq ptr %237, null
  br i1 %238, label %242, label %239

239:                                              ; preds = %235
  %240 = load i32, ptr %44, align 8, !tbaa !172
  %241 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %237, i32 noundef %240) #22
  br label %242

242:                                              ; preds = %239, %235, %234
  %243 = getelementptr inbounds %struct.gimple_statement_asm, ptr %50, i64 0, i32 2
  %244 = load i8, ptr %243, align 8, !tbaa !79
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %272, %242
  %247 = phi i8 [ 0, %242 ], [ %276, %272 ]
  %248 = getelementptr inbounds %struct.gimple_statement_asm, ptr %50, i64 0, i32 2
  %249 = getelementptr inbounds %struct.gimple_statement_asm, ptr %50, i64 0, i32 3
  %250 = load i8, ptr %249, align 1, !tbaa !79
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %314, label %281

252:                                              ; preds = %242, %272
  %253 = phi i64 [ %277, %272 ], [ 0, %242 ]
  %254 = phi i8 [ %276, %272 ], [ 0, %242 ]
  %255 = load i32, ptr %50, align 8
  %256 = and i32 %255, 255
  %257 = add nsw i32 %256, -10
  %258 = icmp ult i32 %257, -9
  br i1 %258, label %272, label %259

259:                                              ; preds = %252
  %260 = zext nneg i32 %256 to i64
  %261 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !83
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %263
  %265 = load i64, ptr %264, align 8, !tbaa !124
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %259
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %268

268:                                              ; preds = %267, %259
  %269 = getelementptr inbounds i8, ptr %50, i64 %265
  %270 = getelementptr inbounds ptr, ptr %269, i64 %253
  %271 = load ptr, ptr %270, align 8, !tbaa !68
  br label %272

272:                                              ; preds = %252, %268
  %273 = phi ptr [ %271, %268 ], [ null, %252 ]
  %274 = getelementptr inbounds %struct.tree_list, ptr %273, i64 0, i32 2
  %275 = call fastcc zeroext i8 @build_access_from_expr(ptr noundef nonnull %274, ptr noundef nonnull %2, i8 noundef zeroext 0, ptr poison), !range !114
  %276 = or i8 %275, %254
  %277 = add nuw nsw i64 %253, 1
  %278 = load i8, ptr %243, align 8, !tbaa !79
  %279 = zext i8 %278 to i64
  %280 = icmp ult i64 %277, %279
  br i1 %280, label %252, label %246, !llvm.loop !305

281:                                              ; preds = %246, %305
  %282 = phi i32 [ %310, %305 ], [ 0, %246 ]
  %283 = phi i8 [ %309, %305 ], [ %247, %246 ]
  %284 = load i8, ptr %248, align 8, !tbaa !79
  %285 = zext i8 %284 to i32
  %286 = add nuw i32 %282, %285
  %287 = load i32, ptr %50, align 8
  %288 = and i32 %287, 255
  %289 = add nsw i32 %288, -10
  %290 = icmp ult i32 %289, -9
  br i1 %290, label %305, label %291

291:                                              ; preds = %281
  %292 = zext nneg i32 %288 to i64
  %293 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %292
  %294 = load i32, ptr %293, align 4, !tbaa !83
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %295
  %297 = load i64, ptr %296, align 8, !tbaa !124
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %291
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %300

300:                                              ; preds = %299, %291
  %301 = getelementptr inbounds i8, ptr %50, i64 %297
  %302 = zext i32 %286 to i64
  %303 = getelementptr inbounds ptr, ptr %301, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !68
  br label %305

305:                                              ; preds = %281, %300
  %306 = phi ptr [ %304, %300 ], [ null, %281 ]
  %307 = getelementptr inbounds %struct.tree_list, ptr %306, i64 0, i32 2
  %308 = call fastcc zeroext i8 @build_access_from_expr(ptr noundef nonnull %307, ptr noundef nonnull %2, i8 noundef zeroext 1, ptr poison), !range !114
  %309 = or i8 %308, %283
  %310 = add nuw nsw i32 %282, 1
  %311 = load i8, ptr %249, align 1, !tbaa !79
  %312 = zext i8 %311 to i32
  %313 = icmp ult i32 %310, %312
  br i1 %313, label %281, label %314, !llvm.loop !306

314:                                              ; preds = %305, %246, %227, %231, %94, %206, %91, %86, %61
  %315 = phi i8 [ 0, %61 ], [ %128, %206 ], [ %96, %94 ], [ %87, %91 ], [ %87, %86 ], [ %128, %227 ], [ %233, %231 ], [ %247, %246 ], [ %309, %305 ]
  %316 = icmp ne i8 %315, 0
  %317 = and i1 %19, %316
  br i1 %317, label %318, label %326

318:                                              ; preds = %314
  %319 = load i32, ptr %50, align 8
  %320 = and i32 %319, 255
  %321 = add nsw i32 %320, -10
  %322 = icmp ult i32 %321, -9
  br i1 %322, label %324, label %323

323:                                              ; preds = %318
  tail call void @gimple_set_modified(ptr noundef nonnull %50, i8 noundef zeroext 1) #22
  tail call void @update_stmt_operands(ptr noundef nonnull %50) #22
  br label %324

324:                                              ; preds = %318, %323
  %325 = tail call zeroext i8 @maybe_clean_eh_stmt(ptr noundef nonnull %50) #22
  br label %326

326:                                              ; preds = %314, %324
  %327 = phi i8 [ 1, %324 ], [ %48, %314 ]
  %328 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %49, i64 0, i32 2
  %329 = load ptr, ptr %328, align 8, !tbaa !230
  store ptr %329, ptr %2, align 8, !tbaa !296
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  %330 = icmp eq ptr %329, null
  br i1 %330, label %331, label %47, !llvm.loop !307

331:                                              ; preds = %326, %39
  %332 = phi i8 [ 0, %39 ], [ %327, %326 ]
  %333 = phi i8 [ %23, %39 ], [ 1, %326 ]
  %334 = icmp ne i8 %332, 0
  %335 = select i1 %20, i1 %334, i1 false
  %336 = load i32, ptr @sra_mode, align 4
  %337 = icmp eq i32 %336, 0
  %338 = select i1 %335, i1 %337, i1 false
  br i1 %338, label %339, label %341

339:                                              ; preds = %331
  %340 = tail call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %22) #22
  br label %341

341:                                              ; preds = %339, %331
  %342 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %343 = load ptr, ptr %342, align 8, !tbaa !167
  %344 = load ptr, ptr @cfun, align 8, !tbaa !68
  %345 = getelementptr inbounds %struct.function, ptr %344, i64 0, i32 1
  %346 = load ptr, ptr %345, align 8, !tbaa !148
  %347 = getelementptr inbounds %struct.control_flow_graph, ptr %346, i64 0, i32 1
  %348 = load ptr, ptr %347, align 8, !tbaa !169
  %349 = icmp eq ptr %343, %348
  br i1 %349, label %350, label %21, !llvm.loop !308

350:                                              ; preds = %341, %1
  %351 = phi i8 [ 0, %1 ], [ %333, %341 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret i8 %351
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

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
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!66}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!35 = !{ptr @early_intra_sra, ptr @perform_intra_sra, i64 40}
!36 = !{ptr @late_intra_sra, ptr @perform_intra_sra, i64 38}
!37 = !{ptr @ipa_early_sra, ptr @cgraph_node, i64 40}
!38 = !{ptr @ipa_early_sra, ptr @cgraph_node_can_be_local_p, i64 40}
!39 = !{ptr @ipa_early_sra, ptr @sra_initialize, i64 2}
!40 = !{ptr @ipa_early_sra, ptr @is_unused_scalar_param, i64 2}
!41 = !{ptr @ipa_early_sra, ptr @is_gimple_reg, i64 2}
!42 = !{ptr @ipa_early_sra, ptr @gimple_default_def, i64 2}
!43 = !{ptr @ipa_early_sra, ptr @link_use_stmts_after, i64 4}
!44 = !{ptr @ipa_early_sra, ptr @gimple_get_lhs, i64 4}
!45 = !{ptr @ipa_early_sra, ptr @gimple_assign_single_p, i64 4}
!46 = !{ptr @ipa_early_sra, ptr @sra_deinitialize, i64 2}
!47 = !{ptr @perform_intra_sra, ptr @bitmap_obstack_alloc_stat, i64 234}
!48 = !{ptr @perform_intra_sra, ptr @_obstack_begin, i64 78}
!49 = !{ptr @perform_intra_sra, ptr @create_alloc_pool, i64 156}
!50 = !{ptr @perform_intra_sra, ptr @pointer_map_create, i64 78}
!51 = !{ptr @perform_intra_sra, ptr @htab_size, i64 78}
!52 = !{ptr @perform_intra_sra, ptr @needs_to_live_in_memory, i64 169}
!53 = !{ptr @perform_intra_sra, ptr @sra_deinitialize, i64 78}
!54 = !{ptr @sra_initialize, ptr @bitmap_obstack_alloc_stat, i64 6}
!55 = !{ptr @sra_initialize, ptr @_obstack_begin, i64 2}
!56 = !{ptr @sra_initialize, ptr @create_alloc_pool, i64 4}
!57 = !{ptr @sra_initialize, ptr @pointer_map_create, i64 2}
!58 = !{ptr @sra_deinitialize, ptr @bitmap_obstack_free, i64 240}
!59 = !{ptr @sra_deinitialize, ptr @free_alloc_pool, i64 160}
!60 = !{ptr @sra_deinitialize, ptr @obstack_free, i64 80}
!61 = !{ptr @sra_deinitialize, ptr @pointer_map_traverse, i64 80}
!62 = !{ptr @sra_deinitialize, ptr @pointer_map_destroy, i64 80}
!63 = !{ptr @is_unused_scalar_param, ptr @is_gimple_reg, i64 2}
!64 = !{ptr @is_unused_scalar_param, ptr @gimple_default_def, i64 2}
!65 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 4}
!66 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!67 = !{!"function_entry_count", i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"any pointer", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C/C++ TBAA"}
!72 = !{!73, !69, i64 8}
!73 = !{!"_IO_FILE", !74, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !69, i64 48, !69, i64 56, !69, i64 64, !69, i64 72, !69, i64 80, !69, i64 88, !69, i64 96, !69, i64 104, !74, i64 112, !74, i64 116, !75, i64 120, !76, i64 128, !70, i64 130, !70, i64 131, !69, i64 136, !75, i64 144, !69, i64 152, !69, i64 160, !69, i64 168, !69, i64 176, !75, i64 184, !74, i64 192, !70, i64 196}
!74 = !{!"int", !70, i64 0}
!75 = !{!"long", !70, i64 0}
!76 = !{!"short", !70, i64 0}
!77 = !{!73, !69, i64 16}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{!70, !70, i64 0}
!80 = !{!73, !69, i64 40}
!81 = !{!73, !69, i64 48}
!82 = !{!73, !74, i64 0}
!83 = !{!74, !74, i64 0}
!84 = distinct !{!84, !85, !86}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = distinct !{!87, !85, !86}
!88 = !{!"function_entry_count", i64 78}
!89 = !{!"tree-sra.c;gate_intra_sra"}
!90 = !{!"function_entry_count", i64 40}
!91 = !{!"tree-sra.c;early_intra_sra"}
!92 = !{i32 0, i32 2049}
!93 = !{!"function_entry_count", i64 38}
!94 = !{!"tree-sra.c;late_intra_sra"}
!95 = !{!"tree-sra.c;ipa_early_sra_gate"}
!96 = !{!"tree-sra.c;ipa_early_sra"}
!97 = !{!"branch_weights", i32 38, i32 2}
!98 = !{!"branch_weights", i32 38, i32 0}
!99 = !{!"branch_weights", i32 2, i32 0}
!100 = !{!101, !69, i64 0}
!101 = !{!"cgraph_node", !69, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !69, i64 48, !69, i64 56, !69, i64 64, !69, i64 72, !69, i64 80, !69, i64 88, !69, i64 96, !69, i64 104, !69, i64 112, !69, i64 120, !69, i64 128, !69, i64 136, !102, i64 144, !104, i64 184, !105, i64 224, !106, i64 232, !107, i64 256, !75, i64 288, !74, i64 296, !74, i64 300, !74, i64 304, !74, i64 308, !74, i64 308, !74, i64 308, !74, i64 308, !74, i64 308, !74, i64 308, !74, i64 308, !74, i64 308, !74, i64 309, !74, i64 309}
!102 = !{!"cgraph_local_info", !69, i64 0, !103, i64 8, !74, i64 32, !74, i64 32, !74, i64 32, !74, i64 32, !74, i64 32, !74, i64 32, !74, i64 32, !74, i64 32}
!103 = !{!"inline_summary", !75, i64 0, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20}
!104 = !{!"cgraph_global_info", !75, i64 0, !75, i64 8, !69, i64 16, !74, i64 24, !74, i64 28, !74, i64 32, !70, i64 36}
!105 = !{!"cgraph_rtl_info", !74, i64 0}
!106 = !{!"cgraph_clone_info", !69, i64 0, !69, i64 8, !69, i64 16}
!107 = !{!"cgraph_thunk_info", !75, i64 0, !75, i64 8, !69, i64 16, !70, i64 24, !70, i64 25, !70, i64 26}
!108 = !{!101, !74, i64 212}
!109 = !{!110, !74, i64 8}
!110 = !{!"param_info", !69, i64 0, !74, i64 8, !70, i64 12, !74, i64 16, !74, i64 20, !69, i64 24}
!111 = !{!101, !69, i64 16}
!112 = !{!"branch_weights", i32 0, i32 2}
!113 = !{!"branch_weights", i32 1, i32 127}
!114 = !{i8 0, i8 2}
!115 = !{!"branch_weights", i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0}
!116 = !{!117, !69, i64 8}
!117 = !{!"immediate_use_iterator_d", !69, i64 0, !69, i64 8, !118, i64 16, !69, i64 48}
!118 = !{!"ssa_use_operand_d", !69, i64 0, !69, i64 8, !70, i64 16, !69, i64 24}
!119 = !{!118, !69, i64 8}
!120 = !{!117, !69, i64 0}
!121 = !{!"branch_weights", i32 0, i32 1}
!122 = !{!"branch_weights", i32 0, i32 4}
!123 = !{!"branch_weights", i32 0, i32 3, i32 1}
!124 = !{!75, !75, i64 0}
!125 = !{!"branch_weights", i32 4, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 0}
!126 = !{!"branch_weights", i32 1, i32 3}
!127 = distinct !{!127, !85, !86}
!128 = !{!"branch_weights", i32 0, i32 3}
!129 = !{!"branch_weights", i32 3, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 0}
!130 = !{!"branch_weights", i32 1, i32 2}
!131 = distinct !{!131, !85, !86}
!132 = !{!"branch_weights", i32 1, i32 0}
!133 = !{!"branch_weights", i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!134 = distinct !{!134, !85, !86}
!135 = !{!"branch_weights", i32 257, i32 127}
!136 = distinct !{!136, !85, !86}
!137 = !{!117, !69, i64 48}
!138 = !{!"branch_weights", i32 4, i32 0}
!139 = !{!"branch_weights", i32 127, i32 1}
!140 = distinct !{!140, !85, !86}
!141 = !{!"branch_weights", i32 2, i32 2}
!142 = !{!118, !69, i64 0}
!143 = distinct !{!143, !85, !86}
!144 = distinct !{!144, !85, !86}
!145 = !{!146, !69, i64 56}
!146 = !{!"cgraph_edge", !75, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !69, i64 48, !69, i64 56, !69, i64 64, !74, i64 72, !74, i64 76, !74, i64 80, !74, i64 84, !76, i64 88, !74, i64 90, !74, i64 90, !74, i64 90}
!147 = distinct !{!147, !85, !86}
!148 = !{!149, !69, i64 8}
!149 = !{!"function", !69, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !69, i64 48, !69, i64 56, !69, i64 64, !69, i64 72, !69, i64 80, !69, i64 88, !69, i64 96, !74, i64 104, !74, i64 108, !74, i64 112, !74, i64 116, !74, i64 120, !74, i64 124, !69, i64 128, !74, i64 136, !74, i64 137, !74, i64 138, !74, i64 138, !74, i64 138, !74, i64 138, !74, i64 138, !74, i64 138, !74, i64 138, !74, i64 139, !74, i64 139, !74, i64 139, !74, i64 139, !74, i64 139, !74, i64 139, !74, i64 139}
!150 = !{!151, !74, i64 32}
!151 = !{!"control_flow_graph", !69, i64 0, !69, i64 8, !69, i64 16, !74, i64 24, !74, i64 28, !74, i64 32, !69, i64 40, !74, i64 48, !70, i64 52, !70, i64 60, !74, i64 68, !74, i64 72}
!152 = !{!153, !74, i64 0}
!153 = !{!"VEC_access_p_base", !74, i64 0, !74, i64 4, !70, i64 8}
!154 = !{!155, !69, i64 56}
!155 = !{!"access", !75, i64 0, !75, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !69, i64 48, !69, i64 56, !69, i64 64, !69, i64 72, !69, i64 80, !69, i64 88, !69, i64 96, !69, i64 104, !74, i64 112, !74, i64 112, !74, i64 112, !74, i64 112, !74, i64 112, !74, i64 112, !74, i64 112, !74, i64 112, !74, i64 113, !74, i64 113, !74, i64 113, !74, i64 113, !74, i64 113, !74, i64 113}
!156 = !{!155, !69, i64 72}
!157 = distinct !{!157, !85, !86}
!158 = !{!155, !69, i64 40}
!159 = !{!155, !75, i64 0}
!160 = !{!155, !75, i64 8}
!161 = distinct !{!161, !85, !86}
!162 = distinct !{!162, !85, !86}
!163 = distinct !{!163, !85, !86}
!164 = !{!151, !69, i64 0}
!165 = !{!166, !74, i64 0}
!166 = !{!"VEC_basic_block_base", !74, i64 0, !74, i64 4, !70, i64 8}
!167 = !{!168, !69, i64 56}
!168 = !{!"basic_block_def", !69, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !70, i64 32, !69, i64 48, !69, i64 56, !70, i64 64, !75, i64 72, !74, i64 80, !74, i64 84, !74, i64 88, !74, i64 92, !74, i64 96}
!169 = !{!151, !69, i64 8}
!170 = !{!168, !69, i64 16}
!171 = distinct !{!171, !85, !86}
!172 = !{!168, !74, i64 80}
!173 = distinct !{!173, !85, !86}
!174 = !{!175, !74, i64 0}
!175 = !{!"VEC_edge_base", !74, i64 0, !74, i64 4, !70, i64 8}
!176 = !{!177, !69, i64 0}
!177 = !{!"edge_def", !69, i64 0, !69, i64 8, !70, i64 16, !69, i64 24, !69, i64 32, !74, i64 40, !74, i64 44, !74, i64 48, !74, i64 52, !75, i64 56}
!178 = !{!177, !69, i64 8}
!179 = distinct !{!179, !85, !86}
!180 = distinct !{!180, !85, !86}
!181 = distinct !{!181, !85, !86}
!182 = !{!155, !69, i64 48}
!183 = distinct !{!183, !85, !86}
!184 = distinct !{!184, !85, !86}
!185 = !{!155, !69, i64 16}
!186 = !{!155, !69, i64 24}
!187 = distinct !{!187, !85, !86}
!188 = distinct !{!188, !85, !86}
!189 = distinct !{!189, !85, !86}
!190 = !{!191, !74, i64 28}
!191 = !{!"", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20, !74, i64 24, !74, i64 28, !74, i64 32, !74, i64 36}
!192 = distinct !{!192, !85, !86}
!193 = distinct !{!193, !85, !86}
!194 = !{!191, !74, i64 32}
!195 = !{!191, !74, i64 36}
!196 = !{!191, !74, i64 24}
!197 = distinct !{!197, !85, !86}
!198 = !{!199, !74, i64 0}
!199 = !{!"VEC_ipa_parm_adjustment_t_base", !74, i64 0, !74, i64 4, !70, i64 8}
!200 = !{!201, !74, i64 0}
!201 = !{!"VEC_tree_base", !74, i64 0, !74, i64 4, !70, i64 8}
!202 = distinct !{!202, !85, !86}
!203 = !{!204, !74, i64 48}
!204 = !{!"ipa_parm_adjustment", !69, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !75, i64 40, !74, i64 48, !74, i64 52, !74, i64 52, !74, i64 52}
!205 = !{!204, !69, i64 0}
!206 = !{!155, !69, i64 32}
!207 = !{!204, !69, i64 8}
!208 = !{!204, !75, i64 40}
!209 = distinct !{!209, !85, !86}
!210 = distinct !{!210, !85, !86}
!211 = distinct !{!211, !85, !86}
!212 = distinct !{!212, !85, !86}
!213 = distinct !{!213, !85, !86}
!214 = !{!146, !69, i64 8}
!215 = !{!101, !74, i64 296}
!216 = !{!146, !69, i64 16}
!217 = distinct !{!217, !85, !86}
!218 = distinct !{!218, !85, !86}
!219 = distinct !{!219, !85, !86}
!220 = !{!168, !74, i64 96}
!221 = !{!222}
!222 = distinct !{!222, !223, !"gsi_start_bb: argument 0"}
!223 = distinct !{!223, !"gsi_start_bb"}
!224 = !{!225, !69, i64 0}
!225 = !{!"gimple_bb_info", !69, i64 0, !69, i64 8}
!226 = !{!227, !69, i64 0}
!227 = !{!"gimple_seq_d", !69, i64 0, !69, i64 8, !69, i64 16}
!228 = !{!229, !69, i64 0}
!229 = !{!"gimple_seq_node_d", !69, i64 0, !69, i64 8, !69, i64 16}
!230 = !{!229, !69, i64 16}
!231 = distinct !{!231, !85, !86}
!232 = !{!"tree-sra.c;perform_intra_sra"}
!233 = !{!149, !69, i64 24}
!234 = !{!"branch_weights", i32 0, i32 78}
!235 = !{!236, !69, i64 0}
!236 = !{!"gimple_df", !69, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !237, i64 32, !237, i64 48, !69, i64 64, !69, i64 72, !69, i64 80, !69, i64 88, !74, i64 96, !238, i64 104}
!237 = !{!"pt_solution", !74, i64 0, !74, i64 0, !74, i64 0, !74, i64 0, !74, i64 0, !74, i64 0, !69, i64 8}
!238 = !{!"ssa_operands", !69, i64 0, !74, i64 8, !74, i64 12, !70, i64 16, !69, i64 24, !69, i64 32}
!239 = !{!240, !69, i64 24}
!240 = !{!"htab", !69, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !75, i64 32, !75, i64 40, !75, i64 48, !74, i64 56, !74, i64 60, !69, i64 64, !69, i64 72, !69, i64 80, !69, i64 88, !69, i64 96, !74, i64 104}
!241 = !{!"branch_weights", i32 117, i32 78}
!242 = !{!"branch_weights", i32 117, i32 0}
!243 = distinct !{!243, !85, !86}
!244 = !{!"branch_weights", i32 78, i32 0}
!245 = !{!"branch_weights", i32 155, i32 1}
!246 = !{!"branch_weights", i32 0, i32 215859, i32 78}
!247 = !{!"branch_weights", i32 169, i32 215768}
!248 = !{!"branch_weights", i32 0, i32 169}
!249 = !{!"branch_weights", i32 473107, i32 78}
!250 = !{!"branch_weights", i32 257248, i32 215859}
!251 = !{!"branch_weights", i32 431719, i32 155}
!252 = distinct !{!252, !85, !86}
!253 = !{!254, !74, i64 72}
!254 = !{!"processor_costs", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12, !70, i64 16, !74, i64 36, !70, i64 40, !74, i64 60, !74, i64 64, !74, i64 68, !74, i64 72, !74, i64 76, !70, i64 80, !70, i64 92, !74, i64 104, !70, i64 108, !70, i64 120, !74, i64 132, !70, i64 136, !70, i64 144, !74, i64 152, !70, i64 156, !70, i64 168, !74, i64 180, !74, i64 184, !74, i64 188, !74, i64 192, !74, i64 196, !74, i64 200, !74, i64 204, !74, i64 208, !74, i64 212, !74, i64 216, !74, i64 220, !74, i64 224, !70, i64 228, !70, i64 300, !74, i64 372, !74, i64 376, !74, i64 380, !74, i64 384, !74, i64 388, !74, i64 392, !74, i64 396, !74, i64 400, !74, i64 404, !74, i64 408, !74, i64 412}
!255 = !{!256, !69, i64 0}
!256 = !{!"bitmap_head_def", !69, i64 0, !69, i64 8, !74, i64 16, !69, i64 24}
!257 = !{!258, !74, i64 16}
!258 = !{!"bitmap_element_def", !69, i64 0, !69, i64 8, !74, i64 16, !70, i64 24}
!259 = distinct !{!259, !85, !86}
!260 = distinct !{!260, !85, !86}
!261 = !{!258, !69, i64 0}
!262 = distinct !{!262, !86}
!263 = distinct !{!263, !85, !86}
!264 = !{!155, !69, i64 80}
!265 = !{!155, !69, i64 88}
!266 = !{!267, !69, i64 16}
!267 = !{!"assign_link", !69, i64 0, !69, i64 8, !69, i64 16}
!268 = distinct !{!268, !85, !86}
!269 = distinct !{!269, !85, !86}
!270 = distinct !{!270, !85, !86}
!271 = distinct !{!271, !85, !86}
!272 = !{!155, !69, i64 96}
!273 = !{!267, !69, i64 0}
!274 = distinct !{!274, !85, !86}
!275 = distinct !{!275, !85, !86}
!276 = distinct !{!276, !85, !86}
!277 = distinct !{!277, !85, !86}
!278 = !{!279}
!279 = distinct !{!279, !280, !"gsi_start: argument 0"}
!280 = distinct !{!280, !"gsi_start"}
!281 = !{i64 0, i64 8, !68, i64 8, i64 8, !68, i64 16, i64 8, !68}
!282 = !{i64 0, i64 8, !68, i64 8, i64 8, !68}
!283 = !{i64 0, i64 8, !68}
!284 = distinct !{!284, !85, !86}
!285 = distinct !{!285, !85, !86}
!286 = !{!168, !69, i64 8}
!287 = !{!191, !74, i64 0}
!288 = !{!191, !74, i64 4}
!289 = !{!191, !74, i64 8}
!290 = !{!191, !74, i64 12}
!291 = !{!191, !74, i64 16}
!292 = !{!191, !74, i64 20}
!293 = !{!"function_entry_count", i64 2}
!294 = !{!"tree-sra.c;sra_initialize"}
!295 = !{ptr @replace_removed_params_ssa_names}
!296 = !{!297, !69, i64 0}
!297 = !{!"", !69, i64 0, !69, i64 8, !69, i64 16}
!298 = distinct !{!298, !85, !86}
!299 = !{!300}
!300 = distinct !{!300, !301, !"gsi_start_bb: argument 0"}
!301 = distinct !{!301, !"gsi_start_bb"}
!302 = !{ptr @sra_ipa_modify_expr, ptr @sra_modify_expr}
!303 = !{ptr @sra_ipa_modify_assign, ptr @sra_modify_assign}
!304 = distinct !{!304, !85, !86}
!305 = distinct !{!305, !85, !86}
!306 = distinct !{!306, !85, !86}
!307 = distinct !{!307, !85, !86}
!308 = distinct !{!308, !85, !86}
!309 = !{!267, !69, i64 8}
!310 = !{!155, !69, i64 64}
!311 = !{!312, !74, i64 0}
!312 = !{!"VEC_constructor_elt_base", !74, i64 0, !74, i64 4, !70, i64 8}
!313 = distinct !{!313, !85, !86}
!314 = !{i32 1, i32 3}
!315 = !{!"function_entry_count", i64 80}
!316 = !{!"tree-sra.c;sra_deinitialize"}
!317 = !{!318, !69, i64 8}
!318 = !{!"obstack", !75, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !75, i64 40, !74, i64 48, !69, i64 56, !69, i64 64, !69, i64 72, !74, i64 80, !74, i64 80, !74, i64 80}
!319 = !{!318, !75, i64 40}
!320 = !{!"branch_weights", i32 0, i32 80}
!321 = !{!318, !69, i64 32}
!322 = !{!318, !69, i64 16}
!323 = !{!318, !69, i64 24}
!324 = distinct !{!324, !85, !86}
!325 = distinct !{!325, !85, !86}
!326 = distinct !{!326, !85, !86}
!327 = !{!153, !74, i64 4}
!328 = distinct !{!328, !85, !86}
!329 = distinct !{!329, !85, !86}
!330 = distinct !{!330, !85, !86}
!331 = distinct !{!331, !85, !86}
!332 = distinct !{!332, !85, !86}
!333 = distinct !{!333, !85, !86}
!334 = distinct !{!334, !85, !86}
!335 = distinct !{!335, !85, !86}
!336 = distinct !{!336, !85, !86}
!337 = distinct !{!337, !85, !86}
!338 = distinct !{!338, !85, !86}
!339 = distinct !{!339, !85, !86}
!340 = distinct !{!340, !85, !86}
!341 = !{!155, !69, i64 104}
!342 = distinct !{!342, !85, !86}
!343 = !{!318, !74, i64 48}
!344 = distinct !{!344, !85, !86}
!345 = distinct !{!345, !85, !86}
!346 = distinct !{!346, !85, !86}
!347 = !{!"tree-sra.c;is_unused_scalar_param"}
!348 = !{!"function_entry_count", i64 4}
!349 = !{!"tree-sra.c;link_use_stmts_after"}
!350 = !{!118, !69, i64 24}
!351 = distinct !{!351, !85, !86}
!352 = !{!353, !69, i64 0}
!353 = !{!"use_optype_d", !69, i64 0, !118, i64 8}
!354 = !{!"branch_weights", i32 6, i32 0}
!355 = !{!"branch_weights", i32 4, i32 2}
!356 = !{!"branch_weights", i32 65, i32 127}
!357 = distinct !{!357, !85, !86}
!358 = !{!353, !69, i64 32}
!359 = distinct !{!359, !85, !86}
!360 = distinct !{!360, !85, !86}
!361 = distinct !{!361, !85, !86}
!362 = !{!204, !69, i64 16}
!363 = distinct !{!363, !85, !86}
!364 = !{!204, !69, i64 24}
!365 = !{!366}
!366 = distinct !{!366, !367, !"gsi_start_bb: argument 0"}
!367 = distinct !{!367, !"gsi_start_bb"}
!368 = !{i32 0, i32 2}
