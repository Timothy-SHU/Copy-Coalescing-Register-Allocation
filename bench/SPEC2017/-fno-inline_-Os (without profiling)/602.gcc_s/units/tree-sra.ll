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
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.referenced_var_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.assign_link = type { ptr, ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.processor_costs = type { i32, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, [3 x i32], [3 x i32], i32, [2 x i32], [2 x i32], i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.stringop_algs], [2 x %struct.stringop_algs], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stringop_algs = type { i32, [4 x %struct.stringop_strategy] }
%struct.stringop_strategy = type { i32, i32 }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.VEC_access_p_base = type { i32, i32, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ao_ref_s = type { ptr, ptr, i64, i64, i64, i32, i32 }
%struct.ipa_parm_adjustment = type { ptr, ptr, ptr, ptr, ptr, i64, i32, i8 }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_ipa_parm_adjustment_t_base = type { i32, i32, [1 x %struct.ipa_parm_adjustment] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }

@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str = private unnamed_addr constant [11 x i8] c"tree-sra.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@pass_sra_early = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @gate_intra_sra, ptr @early_intra_sra, ptr null, ptr null, i32 0, i32 63, i32 40, i32 0, i32 0, i32 0, i32 2055 } }, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"esra\00", align 1
@flag_tree_sra = external local_unnamed_addr global i32, align 4
@sra_mode = internal unnamed_addr global i32 0, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Scalar replacements created\00", align 1
@sra_stats = internal unnamed_addr global %struct.anon zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Modified expressions\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Subtree copy stmts\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Subreplacement stmts\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Deleted stmts\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Separate LHS and RHS handling\00", align 1
@candidate_bitmap = internal unnamed_addr global ptr null, align 8
@should_scalarize_away_bitmap = internal unnamed_addr global ptr null, align 8
@cannot_scalarize_away_bitmap = internal unnamed_addr global ptr null, align 8
@name_obstack = internal global %struct.obstack zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"SRA accesses\00", align 1
@access_pool = internal unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"SRA links\00", align 1
@link_pool = internal unnamed_addr global ptr null, align 8
@base_access_vec = internal unnamed_addr global ptr null, align 8
@encountered_apply_args = internal unnamed_addr global i1 false, align 1
@encountered_recursive_call = internal unnamed_addr global i1 false, align 1
@encountered_unchangable_recursive_call = internal unnamed_addr global i1 false, align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"Candidate (%d): \00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@final_bbs = internal unnamed_addr global ptr null, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@func_param_count = internal unnamed_addr global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"LHS of a throwing stmt.\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"RHS of a throwing stmt.\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"! Disqualifying \00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c" - %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"Non-scalarizable GIMPLE_ASM operand.\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"V_C_E under a different handled component.\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Encountered a variable sized access.\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"Encountered an acces not aligned to a byte.\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"Encountered an unconstrained access.\00", align 1
@bb_dereferences = internal unnamed_addr global ptr null, align 8
@ix86_cost = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [35 x i8] c"Will attempt to totally scalarize \00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c" (UID: %u): \0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"No or inhibitingly overlapping accesses.\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"\0AAccess trees for \00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"No scalar replacements to be created.\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Scalarized aggregates\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@work_queue_head = internal unnamed_addr global ptr null, align 8
@.str.29 = private unnamed_addr constant [9 x i8] c"Marking \00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c" offset: %u, size: %u: \00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c" to be replaced.\0A\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"* \00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"access { \00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"base = (%d)'\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"', offset = %ld\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c", size = %ld\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c", expr = \00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c", type = \00", align 1
@.str.39 = private unnamed_addr constant [264 x i8] c", grp_write = %d, total_scalarization = %d, grp_read = %d, grp_hint = %d, grp_covered = %d, grp_unscalarizable_region = %d, grp_unscalarized_data = %d, grp_partial_lhs = %d, grp_to_be_replaced = %d, grp_maybe_modified = %d, grp_not_necessarilly_dereferenced = %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"SR\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"Created a replacement for \00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"D%u\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@pass_sra = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.47, ptr @gate_intra_sra, ptr @late_intra_sra, ptr null, ptr null, i32 0, i32 63, i32 40, i32 0, i32 0, i32 2097152, i32 2055 } }, align 8
@.str.47 = private unnamed_addr constant [4 x i8] c"sra\00", align 1
@pass_early_ipa_sra = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.48, ptr @ipa_early_sra_gate, ptr @ipa_early_sra, ptr null, ptr null, i32 0, i32 20, i32 0, i32 0, i32 0, i32 0, i32 129 } }, align 8
@.str.48 = private unnamed_addr constant [9 x i8] c"eipa_sra\00", align 1
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @build_ref_for_offset(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 8, !tbaa !6
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !10
  %13 = add i32 %12, -4
  %14 = icmp ult i32 %13, 7
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !12
  br label %18

18:                                               ; preds = %15, %7
  %19 = phi i32 [ 0, %7 ], [ %17, %15 ]
  %20 = tail call ptr @unshare_expr(ptr noundef nonnull %8) #23
  store ptr %20, ptr %0, align 8, !tbaa !6
  br label %21

21:                                               ; preds = %5, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %5 ]
  %23 = icmp eq i8 %4, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i64, ptr %1, align 8
  %26 = trunc i64 %25 to i16
  switch i16 %26, label %33 [
    i16 10, label %27
    i16 12, label %27
  ]

27:                                               ; preds = %24, %24
  %28 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !12
  br i1 %6, label %33, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %0, align 8, !tbaa !6
  %32 = tail call ptr @fold_build1_stat_loc(i32 noundef %22, i32 noundef 47, ptr noundef %29, ptr noundef %31) #23
  store ptr %32, ptr %0, align 8, !tbaa !6
  br label %33

33:                                               ; preds = %24, %27, %30, %21
  %34 = phi ptr [ %29, %30 ], [ %29, %27 ], [ %1, %21 ], [ %1, %24 ]
  %35 = tail call fastcc zeroext i8 @build_ref_for_offset_1(ptr noundef %0, ptr noundef %34, i64 noundef %2, ptr noundef %3) #24
  ret i8 %35
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @build_ref_for_offset_1(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = icmp ne ptr %3, null
  %7 = icmp eq ptr %0, null
  br label %8

8:                                                ; preds = %112, %4
  %9 = phi i64 [ %2, %4 ], [ %113, %112 ]
  %10 = phi ptr [ %1, %4 ], [ %114, %112 ]
  %11 = icmp eq i64 %9, 0
  %12 = and i1 %6, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = tail call zeroext i8 @types_compatible_p(ptr noundef nonnull %3, ptr noundef %10) #23
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %115

16:                                               ; preds = %13, %8
  %17 = load i64, ptr %10, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %108 [
    i16 17, label %19
    i16 18, label %19
    i16 16, label %19
    i16 15, label %75
  ]

19:                                               ; preds = %16, %16, %16
  %20 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %115, label %23

23:                                               ; preds = %19, %71
  %24 = phi ptr [ %73, %71 ], [ %21, %19 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 31
  br i1 %27, label %28, label %69

28:                                               ; preds = %23
  %29 = call i64 @int_bit_position(ptr noundef nonnull %24) #23
  %30 = load i64, ptr %10, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 16
  %33 = icmp eq i64 %29, 0
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1405, ptr noundef nonnull @.str.1) #23
  br label %36

36:                                               ; preds = %28, %35
  %37 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !12
  %39 = icmp eq ptr %38, null
  br i1 %39, label %69, label %40

40:                                               ; preds = %36
  %41 = call i32 @host_integerp(ptr noundef nonnull %38, i32 noundef 1) #23
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %69, label %43

43:                                               ; preds = %40
  %44 = call i64 @tree_low_cst(ptr noundef nonnull %38, i32 noundef 1) #23
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = icmp eq i64 %29, %9
  br i1 %47, label %53, label %69

48:                                               ; preds = %43
  %49 = icmp sle i64 %29, %9
  %50 = add nsw i64 %44, %29
  %51 = icmp sgt i64 %50, %9
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %69

53:                                               ; preds = %48, %46
  br i1 %7, label %59, label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !12
  %57 = load ptr, ptr %0, align 8, !tbaa !6
  %58 = call ptr @build3_stat(i32 noundef 41, ptr noundef %56, ptr noundef %57, ptr noundef nonnull %24, ptr noundef null) #23
  store ptr %58, ptr %5, align 8, !tbaa !6
  br label %59

59:                                               ; preds = %53, %54
  %60 = phi ptr [ %5, %54 ], [ null, %53 ]
  %61 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !12
  %63 = sub nsw i64 %9, %29
  %64 = call fastcc zeroext i8 @build_ref_for_offset_1(ptr noundef %60, ptr noundef %62, i64 noundef %63, ptr noundef %3) #24
  %65 = icmp eq i8 %64, 0
  %66 = or i1 %7, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %59
  %68 = load ptr, ptr %5, align 8, !tbaa !6
  store ptr %68, ptr %0, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  br label %115

69:                                               ; preds = %23, %40, %36, %46, %48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  br label %71

70:                                               ; preds = %59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  br i1 %65, label %71, label %115

71:                                               ; preds = %70, %69
  %72 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !12
  %74 = icmp eq ptr %73, null
  br i1 %74, label %115, label %23, !llvm.loop !13

75:                                               ; preds = %16
  %76 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !12
  %78 = getelementptr inbounds %struct.tree_type, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !12
  %80 = icmp eq ptr %79, null
  br i1 %80, label %115, label %81

81:                                               ; preds = %75
  %82 = tail call i32 @host_integerp(ptr noundef nonnull %79, i32 noundef 1) #23
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %115, label %84

84:                                               ; preds = %81
  %85 = tail call i64 @tree_low_cst(ptr noundef nonnull %79, i32 noundef 1) #23
  %86 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !12
  %88 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 13
  %89 = load ptr, ptr %88, align 8, !tbaa !12
  %90 = load i64, ptr %89, align 8
  %91 = and i64 %90, 65535
  %92 = icmp ne i64 %91, 23
  %93 = icmp eq i64 %85, 0
  %94 = select i1 %92, i1 true, i1 %93
  br i1 %94, label %115, label %95

95:                                               ; preds = %84
  br i1 %7, label %112, label %96

96:                                               ; preds = %95
  %97 = sdiv i64 %9, %85
  %98 = tail call ptr @build_int_cst(ptr noundef nonnull %87, i64 noundef %97) #23
  %99 = tail call i32 @integer_zerop(ptr noundef nonnull %89) #23
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef %98, ptr noundef nonnull %89, i32 noundef 0) #23
  br label %103

103:                                              ; preds = %101, %96
  %104 = phi ptr [ %98, %96 ], [ %102, %101 ]
  %105 = load ptr, ptr %76, align 8, !tbaa !12
  %106 = load ptr, ptr %0, align 8, !tbaa !6
  %107 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %105, ptr noundef %106, ptr noundef %104, ptr noundef null, ptr noundef null) #23
  store ptr %107, ptr %0, align 8, !tbaa !6
  br label %112

108:                                              ; preds = %16
  %109 = xor i1 %6, true
  %110 = and i1 %11, %109
  %111 = zext i1 %110 to i8
  br label %115

112:                                              ; preds = %95, %103
  %113 = srem i64 %9, %85
  %114 = load ptr, ptr %76, align 8, !tbaa !12
  br label %8

115:                                              ; preds = %84, %75, %81, %13, %70, %71, %19, %67, %108
  %116 = phi i8 [ 1, %67 ], [ %111, %108 ], [ 0, %19 ], [ 1, %70 ], [ 0, %71 ], [ 1, %13 ], [ 0, %81 ], [ 0, %75 ], [ 0, %84 ]
  ret i8 %116
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @int_bit_position(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_intra_sra() #3 {
  %1 = load i32, ptr @flag_tree_sra, align 4, !tbaa !10
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @early_intra_sra() #0 {
  store i32 1, ptr @sra_mode, align 4, !tbaa !10
  %1 = tail call fastcc i32 @perform_intra_sra() #24, !range !15
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @perform_intra_sra() unnamed_addr #0 {
  tail call fastcc void @sra_initialize() #24
  %1 = tail call fastcc zeroext i8 @find_var_candidates() #24, !range !16
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = tail call fastcc zeroext i8 @scan_function(ptr noundef nonnull @build_access_from_expr, ptr noundef nonnull @build_accesses_from_assign, ptr noundef null, i8 noundef zeroext 1, ptr noundef null) #24
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @analyze_all_variable_accesses() #24, !range !16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc zeroext i8 @scan_function(ptr noundef nonnull @sra_modify_expr, ptr noundef nonnull @sra_modify_assign, ptr noundef null, i8 noundef zeroext 0, ptr noundef null) #24
  tail call fastcc void @initialize_parameter_reductions() #24
  %11 = load ptr, ptr @cfun, align 8, !tbaa !6
  %12 = load i32, ptr @sra_stats, align 4, !tbaa !17
  tail call void @statistics_counter_event(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef %12) #23
  %13 = load ptr, ptr @cfun, align 8, !tbaa !6
  %14 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !19
  tail call void @statistics_counter_event(ptr noundef %13, ptr noundef nonnull @.str.4, i32 noundef %14) #23
  %15 = load ptr, ptr @cfun, align 8, !tbaa !6
  %16 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 2), align 4, !tbaa !20
  tail call void @statistics_counter_event(ptr noundef %15, ptr noundef nonnull @.str.5, i32 noundef %16) #23
  %17 = load ptr, ptr @cfun, align 8, !tbaa !6
  %18 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 3), align 4, !tbaa !21
  tail call void @statistics_counter_event(ptr noundef %17, ptr noundef nonnull @.str.6, i32 noundef %18) #23
  %19 = load ptr, ptr @cfun, align 8, !tbaa !6
  %20 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 4), align 4, !tbaa !22
  tail call void @statistics_counter_event(ptr noundef %19, ptr noundef nonnull @.str.7, i32 noundef %20) #23
  %21 = load ptr, ptr @cfun, align 8, !tbaa !6
  %22 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 5), align 4, !tbaa !23
  tail call void @statistics_counter_event(ptr noundef %21, ptr noundef nonnull @.str.8, i32 noundef %22) #23
  br label %23

23:                                               ; preds = %6, %3, %0, %9
  %24 = phi i32 [ 2048, %9 ], [ 0, %6 ], [ 0, %3 ], [ 0, %0 ]
  tail call fastcc void @sra_deinitialize() #24
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sra_initialize() unnamed_addr #0 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %1, ptr @candidate_bitmap, align 8, !tbaa !6
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %2, ptr @should_scalarize_away_bitmap, align 8, !tbaa !6
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %3, ptr @cannot_scalarize_away_bitmap, align 8, !tbaa !6
  %4 = tail call i32 @_obstack_begin(ptr noundef nonnull @name_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #23
  %5 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.9, i64 noundef 120, i64 noundef 16) #23
  store ptr %5, ptr @access_pool, align 8, !tbaa !6
  %6 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.10, i64 noundef 24, i64 noundef 16) #23
  store ptr %6, ptr @link_pool, align 8, !tbaa !6
  %7 = tail call ptr @pointer_map_create() #23
  store ptr %7, ptr @base_access_vec, align 8, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) @sra_stats, i8 0, i64 40, i1 false)
  store i1 false, ptr @encountered_apply_args, align 1
  store i1 false, ptr @encountered_recursive_call, align 1
  store i1 false, ptr @encountered_unchangable_recursive_call, align 1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_var_candidates() unnamed_addr #0 {
  %1 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #25
  %2 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #24
  %3 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #24, !range !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %67

5:                                                ; preds = %0, %62
  %6 = phi i8 [ %63, %62 ], [ 0, %0 ]
  %7 = phi ptr [ %64, %62 ], [ %2, %0 ]
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %62 [
    i16 32, label %10
    i16 34, label %10
  ]

10:                                               ; preds = %5, %5
  %11 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -15
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %18, label %62

18:                                               ; preds = %10
  %19 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %7) #23
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %18
  %22 = load i64, ptr %7, align 8
  %23 = and i64 %22, 524288
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %62, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @host_integerp(ptr noundef nonnull %27, i32 noundef 1) #23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %62, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %26, align 8, !tbaa !12
  %34 = tail call i64 @tree_low_cst(ptr noundef %33, i32 noundef 1) #23
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %32
  %37 = tail call fastcc zeroext i8 @type_internals_preclude_sra_p(ptr noundef nonnull %12) #24
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %36
  %40 = load i32, ptr @sra_mode, align 4, !tbaa !10
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = tail call fastcc zeroext i8 @is_va_list_type(ptr noundef nonnull %12) #24, !range !16
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %42, %39
  %46 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !12
  %49 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %46, i32 noundef %48) #23
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %45
  %53 = load i32, ptr @dump_flags, align 4, !tbaa !10
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %47, align 4, !tbaa !12
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %50, ptr noundef nonnull @.str.11, i32 noundef %57) #24
  %59 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %59, ptr noundef nonnull %7, i32 noundef 0) #23
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %61 = tail call i32 @fputc(i32 10, ptr %60)
  br label %62

62:                                               ; preds = %10, %45, %52, %56, %5, %18, %21, %25, %29, %32, %36, %42
  %63 = phi i8 [ %6, %18 ], [ %6, %21 ], [ %6, %32 ], [ %6, %36 ], [ %6, %42 ], [ %6, %29 ], [ %6, %25 ], [ %6, %5 ], [ %6, %10 ], [ 1, %56 ], [ 1, %52 ], [ 1, %45 ]
  %64 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #24
  %65 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #24, !range !16
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %5, label %67, !llvm.loop !24

67:                                               ; preds = %62, %0
  %68 = phi i8 [ 0, %0 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #25
  ret i8 %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @scan_function(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #25
  %10 = load ptr, ptr @cfun, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !25
  %13 = load ptr, ptr %12, align 8, !tbaa !27
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !29
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !32
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %228, label %19

19:                                               ; preds = %5
  %20 = icmp ne ptr %2, null
  %21 = icmp ne i8 %3, 0
  %22 = icmp eq i8 %3, 0
  br label %23

23:                                               ; preds = %19, %218
  %24 = phi ptr [ %15, %19 ], [ %221, %218 ]
  %25 = phi i8 [ 0, %19 ], [ %219, %218 ]
  br i1 %20, label %26, label %36

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #25
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %24) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #25
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #24, !range !16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26, %29
  %30 = phi i8 [ %33, %29 ], [ %25, %26 ]
  %31 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #24
  %32 = call zeroext i8 %2(ptr noundef %31, ptr noundef %4) #23, !callees !34
  %33 = or i8 %32, %30
  call fastcc void @gsi_next(ptr noundef nonnull %6) #24
  %34 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #24, !range !16
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %29, label %36, !llvm.loop !35

36:                                               ; preds = %29, %26, %23
  %37 = phi i8 [ %25, %23 ], [ %25, %26 ], [ %33, %29 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %24) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #25
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #24, !range !16
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %218

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  br label %42

42:                                               ; preds = %40, %205
  %43 = phi i8 [ %37, %40 ], [ %207, %205 ]
  %44 = phi i8 [ 0, %40 ], [ %206, %205 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  %45 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #24
  store ptr %45, ptr %9, align 8, !tbaa !6
  %46 = load ptr, ptr @final_bbs, align 8
  %47 = icmp ne ptr %46, null
  %48 = select i1 %21, i1 %47, i1 false
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = call zeroext i8 @stmt_can_throw_external(ptr noundef %45) #23
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr @final_bbs, align 8, !tbaa !6
  %54 = load i32, ptr %41, align 8, !tbaa !36
  %55 = call zeroext i8 @bitmap_set_bit(ptr noundef %53, i32 noundef %54) #23
  br label %56

56:                                               ; preds = %52, %49, %42
  %57 = load ptr, ptr %9, align 8, !tbaa !6
  %58 = call fastcc i32 @gimple_code(ptr noundef %57) #24, !range !37
  %59 = trunc i32 %58 to i8
  switch i8 %59, label %203 [
    i8 9, label %63
    i8 6, label %77
    i8 8, label %60
    i8 7, label %146
  ]

60:                                               ; preds = %56
  %61 = call fastcc i32 @gimple_call_num_args(ptr noundef %57) #24
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %95, label %84

63:                                               ; preds = %56
  %64 = call fastcc ptr @gimple_return_retval_ptr(ptr noundef %57) #24
  %65 = load ptr, ptr %64, align 8, !tbaa !6
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = call zeroext i8 %0(ptr noundef nonnull %64, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %4) #23, !callees !38
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi i8 [ %68, %67 ], [ 0, %63 ]
  %71 = load ptr, ptr @final_bbs, align 8
  %72 = icmp ne ptr %71, null
  %73 = select i1 %21, i1 %72, i1 false
  br i1 %73, label %74, label %192

74:                                               ; preds = %69
  %75 = load i32, ptr %41, align 8, !tbaa !36
  %76 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %71, i32 noundef %75) #23
  br label %203

77:                                               ; preds = %56
  %78 = call i32 %1(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef %4) #23, !callees !39
  %79 = icmp eq i32 %78, 1
  %80 = zext i1 %79 to i8
  %81 = icmp eq i32 %78, 2
  %82 = icmp ne i32 %78, 2
  %83 = select i1 %20, i1 %82, i1 false
  br i1 %83, label %187, label %192

84:                                               ; preds = %60, %84
  %85 = phi ptr [ %92, %84 ], [ %57, %60 ]
  %86 = phi i32 [ %91, %84 ], [ 0, %60 ]
  %87 = phi i8 [ %90, %84 ], [ 0, %60 ]
  %88 = call fastcc ptr @gimple_call_arg_ptr(ptr noundef %85, i32 noundef %86) #24
  %89 = call zeroext i8 %0(ptr noundef %88, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %4) #23, !callees !38
  %90 = or i8 %89, %87
  %91 = add nuw i32 %86, 1
  %92 = load ptr, ptr %9, align 8, !tbaa !6
  %93 = call fastcc i32 @gimple_call_num_args(ptr noundef %92) #24
  %94 = icmp ult i32 %91, %93
  br i1 %94, label %84, label %95, !llvm.loop !40

95:                                               ; preds = %84, %60
  %96 = phi i8 [ 0, %60 ], [ %90, %84 ]
  %97 = phi ptr [ %57, %60 ], [ %92, %84 ]
  %98 = load i32, ptr @sra_mode, align 4
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %21, i1 %99, i1 false
  br i1 %100, label %101, label %131

101:                                              ; preds = %95
  %102 = call fastcc ptr @gimple_call_fndecl(ptr noundef %97) #24
  %103 = load ptr, ptr %9, align 8, !tbaa !6
  %104 = call i32 @gimple_call_flags(ptr noundef %103) #23
  %105 = icmp eq ptr %102, null
  br i1 %105, label %122, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.tree_function_decl, ptr %102, i64 0, i32 5
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, 8191
  %110 = icmp eq i32 %109, 6561
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i1 true, ptr @encountered_apply_args, align 1
  br label %112

112:                                              ; preds = %111, %106
  %113 = call ptr @cgraph_get_node(ptr noundef nonnull %102) #23
  %114 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %115 = call ptr @cgraph_get_node(ptr noundef %114) #23
  %116 = icmp eq ptr %113, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  store i1 true, ptr @encountered_recursive_call, align 1
  %118 = load ptr, ptr %9, align 8, !tbaa !6
  %119 = call fastcc zeroext i8 @callsite_has_enough_arguments_p(ptr noundef %118) #24, !range !16
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i1 true, ptr @encountered_unchangable_recursive_call, align 1
  br label %122

122:                                              ; preds = %112, %121, %117, %101
  %123 = load ptr, ptr @final_bbs, align 8, !tbaa !6
  %124 = icmp ne ptr %123, null
  %125 = and i32 %104, 3
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %124, i1 %126, i1 false
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32, ptr %41, align 8, !tbaa !36
  %130 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %123, i32 noundef %129) #23
  br label %131

131:                                              ; preds = %122, %128, %95
  %132 = load ptr, ptr %9, align 8, !tbaa !6
  %133 = call fastcc ptr @gimple_call_lhs(ptr noundef %132) #24
  %134 = icmp eq ptr %133, null
  br i1 %134, label %192, label %135

135:                                              ; preds = %131
  %136 = load ptr, ptr %9, align 8, !tbaa !6
  %137 = call fastcc ptr @gimple_call_lhs_ptr(ptr noundef %136) #24
  br i1 %22, label %143, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr %9, align 8, !tbaa !6
  %140 = load ptr, ptr %137, align 8, !tbaa !6
  %141 = call fastcc zeroext i8 @disqualify_ops_if_throwing_stmt(ptr noundef %139, ptr noundef %140, ptr noundef null) #24, !range !16
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %203

143:                                              ; preds = %138, %135
  %144 = call zeroext i8 %0(ptr noundef %137, ptr noundef nonnull %6, i8 noundef zeroext 1, ptr noundef %4) #23, !callees !38
  %145 = or i8 %144, %96
  br i1 %20, label %187, label %192

146:                                              ; preds = %56
  br i1 %22, label %154, label %147

147:                                              ; preds = %146
  %148 = call zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef %57, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull @asm_visit_addr) #23
  %149 = load ptr, ptr @final_bbs, align 8, !tbaa !6
  %150 = icmp eq ptr %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = load i32, ptr %41, align 8, !tbaa !36
  %153 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %149, i32 noundef %152) #23
  br label %154

154:                                              ; preds = %147, %151, %146
  %155 = load ptr, ptr %9, align 8, !tbaa !6
  %156 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %155) #24, !range !37
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %163, %154
  %159 = phi ptr [ %155, %154 ], [ %172, %163 ]
  %160 = phi i8 [ 0, %154 ], [ %170, %163 ]
  %161 = call fastcc i32 @gimple_asm_noutputs(ptr noundef %159) #24, !range !37
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %192, label %175

163:                                              ; preds = %154, %163
  %164 = phi ptr [ %172, %163 ], [ %155, %154 ]
  %165 = phi i32 [ %171, %163 ], [ 0, %154 ]
  %166 = phi i8 [ %170, %163 ], [ 0, %154 ]
  %167 = call fastcc ptr @gimple_asm_input_op(ptr noundef %164, i32 noundef %165) #24
  %168 = getelementptr inbounds %struct.tree_list, ptr %167, i64 0, i32 2
  %169 = call zeroext i8 %0(ptr noundef nonnull %168, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %4) #23, !callees !38
  %170 = or i8 %169, %166
  %171 = add nuw nsw i32 %165, 1
  %172 = load ptr, ptr %9, align 8, !tbaa !6
  %173 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %172) #24, !range !37
  %174 = icmp ult i32 %171, %173
  br i1 %174, label %163, label %158, !llvm.loop !41

175:                                              ; preds = %158, %175
  %176 = phi ptr [ %184, %175 ], [ %159, %158 ]
  %177 = phi i32 [ %183, %175 ], [ 0, %158 ]
  %178 = phi i8 [ %182, %175 ], [ %160, %158 ]
  %179 = call fastcc ptr @gimple_asm_output_op(ptr noundef %176, i32 noundef %177) #24
  %180 = getelementptr inbounds %struct.tree_list, ptr %179, i64 0, i32 2
  %181 = call zeroext i8 %0(ptr noundef nonnull %180, ptr noundef nonnull %6, i8 noundef zeroext 1, ptr noundef %4) #23, !callees !38
  %182 = or i8 %181, %178
  %183 = add nuw nsw i32 %177, 1
  %184 = load ptr, ptr %9, align 8, !tbaa !6
  %185 = call fastcc i32 @gimple_asm_noutputs(ptr noundef %184) #24, !range !37
  %186 = icmp ult i32 %183, %185
  br i1 %186, label %175, label %192, !llvm.loop !42

187:                                              ; preds = %143, %77
  %188 = phi i8 [ %80, %77 ], [ %145, %143 ]
  %189 = load ptr, ptr %9, align 8, !tbaa !6
  %190 = call zeroext i8 %2(ptr noundef %189, ptr noundef %4) #23
  %191 = or i8 %190, %188
  br label %192

192:                                              ; preds = %175, %187, %158, %143, %131, %77, %69
  %193 = phi i1 [ false, %131 ], [ %81, %77 ], [ false, %69 ], [ false, %143 ], [ false, %158 ], [ false, %187 ], [ false, %175 ]
  %194 = phi i8 [ %96, %131 ], [ %80, %77 ], [ %70, %69 ], [ %145, %143 ], [ %160, %158 ], [ %191, %187 ], [ %182, %175 ]
  %195 = icmp eq i8 %194, 0
  %196 = or i1 %195, %21
  br i1 %196, label %201, label %197

197:                                              ; preds = %192
  %198 = load ptr, ptr %9, align 8, !tbaa !6
  call fastcc void @update_stmt(ptr noundef %198) #24
  %199 = load ptr, ptr %9, align 8, !tbaa !6
  %200 = call zeroext i8 @maybe_clean_eh_stmt(ptr noundef %199) #23
  br i1 %193, label %205, label %203

201:                                              ; preds = %192
  %202 = select i1 %195, i8 %43, i8 1
  br i1 %193, label %205, label %203

203:                                              ; preds = %138, %74, %56, %197, %201
  %204 = phi i8 [ %44, %201 ], [ 1, %197 ], [ %44, %56 ], [ %44, %74 ], [ %44, %138 ]
  call fastcc void @gsi_next(ptr noundef nonnull %6) #24
  br label %205

205:                                              ; preds = %197, %201, %203
  %206 = phi i8 [ %204, %203 ], [ 1, %201 ], [ 1, %197 ]
  %207 = phi i8 [ 1, %203 ], [ %202, %201 ], [ 1, %197 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  %208 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #24, !range !16
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %42, label %210, !llvm.loop !43

210:                                              ; preds = %205
  %211 = icmp ne i8 %206, 0
  %212 = select i1 %22, i1 %211, i1 false
  %213 = load i32, ptr @sra_mode, align 4
  %214 = icmp eq i32 %213, 0
  %215 = select i1 %212, i1 %214, i1 false
  br i1 %215, label %216, label %218

216:                                              ; preds = %210
  %217 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %24) #23
  br label %218

218:                                              ; preds = %36, %216, %210
  %219 = phi i8 [ %207, %216 ], [ %207, %210 ], [ %37, %36 ]
  %220 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %221 = load ptr, ptr %220, align 8, !tbaa !29
  %222 = load ptr, ptr @cfun, align 8, !tbaa !6
  %223 = getelementptr inbounds %struct.function, ptr %222, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !25
  %225 = getelementptr inbounds %struct.control_flow_graph, ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !32
  %227 = icmp eq ptr %221, %226
  br i1 %227, label %228, label %23, !llvm.loop !44

228:                                              ; preds = %218, %5
  %229 = phi i8 [ 0, %5 ], [ %219, %218 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #25
  ret i8 %229
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @build_access_from_expr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture readnone %3) #0 {
  %5 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #24
  %6 = tail call fastcc ptr @build_access_from_expr_1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext %2) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @cannot_scalarize_away_bitmap, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.tree_decl_minimal, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !12
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %9, i32 noundef %15) #23
  br label %17

17:                                               ; preds = %4, %8, %11
  %18 = phi i8 [ 1, %11 ], [ 1, %8 ], [ 0, %4 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @build_accesses_from_assign(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %4) #23
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %84, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %4) #24
  %9 = tail call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %4) #24
  %10 = load ptr, ptr %8, align 8, !tbaa !6
  %11 = load ptr, ptr %9, align 8, !tbaa !6
  %12 = tail call fastcc zeroext i8 @disqualify_ops_if_throwing_stmt(ptr noundef %4, ptr noundef %10, ptr noundef %11) #24, !range !16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %84

14:                                               ; preds = %7
  %15 = tail call fastcc ptr @build_access_from_expr_1(ptr noundef nonnull %9, ptr noundef %4, i8 noundef zeroext 0) #24
  %16 = tail call fastcc ptr @build_access_from_expr_1(ptr noundef nonnull %8, ptr noundef %4, i8 noundef zeroext 1) #24
  %17 = load ptr, ptr @should_scalarize_away_bitmap, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %14
  %20 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %4) #24, !range !16
  %21 = icmp eq i8 %20, 0
  %22 = icmp ne ptr %15, null
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %26) #23
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load ptr, ptr @should_scalarize_away_bitmap, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  %33 = getelementptr inbounds %struct.tree_decl_minimal, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !12
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %30, i32 noundef %34) #23
  br label %36

36:                                               ; preds = %29, %24, %19, %14
  %37 = icmp ne ptr %16, null
  %38 = icmp ne ptr %15, null
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %81

40:                                               ; preds = %36
  %41 = load i32, ptr @sra_mode, align 4
  %42 = add i32 %41, -1
  %43 = icmp ult i32 %42, 2
  br i1 %43, label %44, label %81

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 14
  %46 = load i16, ptr %45, align 8
  %47 = and i16 %46, 128
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 14
  %51 = load i16, ptr %50, align 8
  %52 = and i16 %51, 128
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %49
  %55 = load ptr, ptr %8, align 8, !tbaa !6
  %56 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !12
  %58 = load i64, ptr %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = and i32 %59, 65535
  %61 = add nsw i32 %60, -15
  %62 = icmp ult i32 %61, 4
  br i1 %62, label %63, label %81

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !48
  %66 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !48
  %68 = icmp eq i64 %65, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !47
  %72 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !47
  %74 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %71, ptr noundef %73) #23
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %69
  %77 = load ptr, ptr @link_pool, align 8, !tbaa !6
  %78 = tail call ptr @pool_alloc(ptr noundef %77) #23
  %79 = getelementptr inbounds i8, ptr %78, i64 16
  store i64 0, ptr %79, align 8
  store ptr %16, ptr %78, align 8, !tbaa !49
  %80 = getelementptr inbounds %struct.assign_link, ptr %78, i64 0, i32 1
  store ptr %15, ptr %80, align 8, !tbaa !51
  tail call fastcc void @add_link_to_rhs(ptr noundef nonnull %15, ptr noundef nonnull %78) #24
  br label %81

81:                                               ; preds = %54, %40, %76, %69, %63, %49, %44, %36
  %82 = or i1 %38, %37
  %83 = zext i1 %82 to i32
  br label %84

84:                                               ; preds = %7, %3, %81
  %85 = phi i32 [ %83, %81 ], [ 0, %3 ], [ 0, %7 ]
  ret i32 %85
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @analyze_all_variable_accesses() unnamed_addr #0 {
  %1 = alloca %struct.bitmap_iterator, align 8
  %2 = alloca i32, align 4
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  %4 = load ptr, ptr @cfun, align 8, !tbaa !6
  %5 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %4) #23
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %0
  %8 = load ptr, ptr @ix86_cost, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.processor_costs, ptr %8, i64 0, i32 10
  %10 = load i32, ptr %9, align 4, !tbaa !52
  %11 = shl nsw i32 %10, 5
  br label %12

12:                                               ; preds = %0, %7
  %13 = phi i32 [ %11, %7 ], [ 96, %0 ]
  %14 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !6
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %14, ptr noundef nonnull %2) #24
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #24, !range !16
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %62, label %17

17:                                               ; preds = %12, %57
  %18 = load ptr, ptr @should_scalarize_away_bitmap, align 8, !tbaa !6
  %19 = load i32, ptr %2, align 4, !tbaa !10
  %20 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %19) #23
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %57, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr @cannot_scalarize_away_bitmap, align 8, !tbaa !6
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %23, i32 noundef %19) #23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = tail call ptr @referenced_var_lookup(i32 noundef %19) #23
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 32
  br i1 %30, label %31, label %57

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !12
  %34 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !12
  %36 = tail call i64 @tree_low_cst(ptr noundef %35, i32 noundef 1) #23
  %37 = trunc i64 %36 to i32
  %38 = icmp ult i32 %13, %37
  br i1 %38, label %57, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %32, align 8, !tbaa !12
  %41 = tail call fastcc zeroext i8 @type_consists_of_records_p(ptr noundef %40) #24
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %39
  tail call fastcc void @completely_scalarize_record(ptr noundef nonnull %27, ptr noundef nonnull %27, i64 noundef 0) #24
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %45 = icmp eq ptr %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr @dump_flags, align 4, !tbaa !10
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 34, i64 1, ptr nonnull %44)
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %52, ptr noundef nonnull %27, i32 noundef 0) #23
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct.tree_decl_minimal, ptr %27, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !12
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.24, i32 noundef %55) #24
  br label %57

57:                                               ; preds = %26, %31, %39, %50, %46, %43, %17, %22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #24
  %58 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #24, !range !16
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %17, !llvm.loop !54

60:                                               ; preds = %57
  %61 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !6
  br label %62

62:                                               ; preds = %60, %12
  %63 = phi ptr [ %61, %60 ], [ %14, %12 ]
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %63) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2) #24
  %64 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #24, !range !16
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %62, %73
  %67 = load i32, ptr %2, align 4, !tbaa !10
  %68 = tail call ptr @referenced_var_lookup(i32 noundef %67) #23
  %69 = tail call fastcc ptr @sort_and_splice_var_accesses(ptr noundef %68) #24
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  tail call fastcc void @build_access_trees(ptr noundef nonnull %69) #24
  br label %73

72:                                               ; preds = %66
  tail call fastcc void @disqualify_candidate(ptr noundef %68, ptr noundef nonnull @.str.25) #24
  br label %73

73:                                               ; preds = %72, %71
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #24
  %74 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #24, !range !16
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %66, !llvm.loop !55

76:                                               ; preds = %73, %62
  tail call fastcc void @propagate_all_subaccesses() #24
  %77 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !6
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %77) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2) #24
  %78 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #24, !range !16
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  tail call void @bitmap_obstack_free(ptr noundef %3) #23
  br label %115

81:                                               ; preds = %76, %107
  %82 = phi i32 [ %108, %107 ], [ 0, %76 ]
  %83 = load i32, ptr %2, align 4, !tbaa !10
  %84 = tail call ptr @referenced_var_lookup(i32 noundef %83) #23
  %85 = tail call fastcc ptr @get_first_repr_for_decl(ptr noundef %84) #24
  %86 = tail call fastcc zeroext i8 @analyze_access_trees(ptr noundef %85) #24, !range !16
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %106, label %88

88:                                               ; preds = %81
  %89 = add nsw i32 %82, 1
  %90 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %91 = icmp eq ptr %90, null
  br i1 %91, label %107, label %92

92:                                               ; preds = %88
  %93 = load i32, ptr @dump_flags, align 4, !tbaa !10
  %94 = and i32 %93, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %92
  %97 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 18, i64 1, ptr nonnull %90)
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %98, ptr noundef %84, i32 noundef 0) #23
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %100 = getelementptr inbounds %struct.tree_decl_minimal, ptr %84, i64 0, i32 2
  %101 = load i32, ptr %100, align 4, !tbaa !12
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.24, i32 noundef %101) #24
  %103 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call fastcc void @dump_access_tree(ptr noundef %103, ptr noundef %85) #24
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %105 = tail call i32 @fputc(i32 10, ptr %104)
  br label %107

106:                                              ; preds = %81
  tail call fastcc void @disqualify_candidate(ptr noundef %84, ptr noundef nonnull @.str.27) #24
  br label %107

107:                                              ; preds = %88, %92, %96, %106
  %108 = phi i32 [ %89, %96 ], [ %89, %92 ], [ %89, %88 ], [ %82, %106 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #24
  %109 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #24, !range !16
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %81, !llvm.loop !56

111:                                              ; preds = %107
  tail call void @bitmap_obstack_free(ptr noundef %3) #23
  %112 = icmp eq i32 %108, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %111
  %114 = load ptr, ptr @cfun, align 8, !tbaa !6
  tail call void @statistics_counter_event(ptr noundef %114, ptr noundef nonnull @.str.28, i32 noundef %108) #23
  br label %115

115:                                              ; preds = %80, %111, %113
  %116 = phi i8 [ 1, %113 ], [ 0, %111 ], [ 0, %80 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #25
  ret i8 %116
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @sra_modify_expr(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture readnone %3) #0 {
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 42
  %10 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %11 = select i1 %9, ptr %6, ptr null
  %12 = select i1 %9, ptr %10, ptr %0
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -43
  %18 = icmp ult i32 %17, 2
  %19 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %20 = select i1 %18, ptr %19, ptr %12
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = tail call fastcc ptr @get_access_for_expr(ptr noundef %21) #24
  %23 = icmp eq ptr %22, null
  br i1 %23, label %101, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.access, ptr %22, i64 0, i32 14
  %26 = load i16, ptr %25, align 8
  %27 = and i16 %26, 1024
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %72, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %20, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !12
  %33 = tail call fastcc ptr @get_access_replacement(ptr noundef nonnull %22) #24
  %34 = getelementptr inbounds %struct.access, ptr %22, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  %36 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %32, ptr noundef %35) #23
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %39 = getelementptr inbounds %struct.access, ptr %22, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !45
  store ptr %40, ptr %5, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !12
  %43 = load i64, ptr %22, align 8, !tbaa !57
  %44 = load ptr, ptr %34, align 8, !tbaa !47
  %45 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %5, ptr noundef %42, i64 noundef %43, ptr noundef %44, i8 noundef zeroext 0) #24
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2333, ptr noundef nonnull @.str.1) #23
  br label %48

48:                                               ; preds = %38, %47
  %49 = icmp eq i8 %2, 0
  %50 = load i16, ptr %25, align 8
  %51 = and i16 %50, 512
  %52 = icmp eq i16 %51, 0
  br i1 %49, label %60, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr %5, align 8, !tbaa !6
  br i1 %52, label %57, label %55

55:                                               ; preds = %53
  %56 = call ptr @force_gimple_operand_gsi(ptr noundef %1, ptr noundef %54, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 0) #23
  store ptr %56, ptr %5, align 8, !tbaa !6
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi ptr [ %56, %55 ], [ %54, %53 ]
  %59 = call ptr @gimple_build_assign_stat(ptr noundef %33, ptr noundef %58) #23
  call void @gsi_insert_after(ptr noundef %1, ptr noundef %59, i32 noundef 0) #23
  br label %67

60:                                               ; preds = %48
  br i1 %52, label %63, label %61

61:                                               ; preds = %60
  %62 = call ptr @force_gimple_operand_gsi(ptr noundef %1, ptr noundef %33, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #23
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi ptr [ %62, %61 ], [ %33, %60 ]
  %65 = load ptr, ptr %5, align 8, !tbaa !6
  %66 = call ptr @gimple_build_assign_stat(ptr noundef %65, ptr noundef %64) #23
  call void @gsi_insert_before(ptr noundef %1, ptr noundef %66, i32 noundef 1) #23
  br label %67

67:                                               ; preds = %63, %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  br label %69

68:                                               ; preds = %29
  store ptr %33, ptr %20, align 8, !tbaa !6
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !19
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !19
  br label %72

72:                                               ; preds = %69, %24
  %73 = getelementptr inbounds %struct.access, ptr %22, i64 0, i32 8
  %74 = load ptr, ptr %73, align 8, !tbaa !58
  %75 = icmp eq ptr %74, null
  br i1 %75, label %101, label %76

76:                                               ; preds = %72
  %77 = icmp eq ptr %11, null
  br i1 %77, label %95, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !12
  %81 = call i32 @host_integerp(ptr noundef %80, i32 noundef 1) #23
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !12
  %86 = call i32 @host_integerp(ptr noundef %85, i32 noundef 1) #23
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr %79, align 8, !tbaa !12
  %90 = call i64 @tree_low_cst(ptr noundef %89, i32 noundef 1) #23
  %91 = load i64, ptr %22, align 8, !tbaa !57
  %92 = load ptr, ptr %84, align 8, !tbaa !12
  %93 = call i64 @tree_low_cst(ptr noundef %92, i32 noundef 1) #23
  %94 = add nsw i64 %93, %91
  br label %95

95:                                               ; preds = %76, %78, %83, %88
  %96 = phi i64 [ %94, %88 ], [ 0, %83 ], [ 0, %78 ], [ 0, %76 ]
  %97 = phi i64 [ %90, %88 ], [ 0, %83 ], [ 0, %78 ], [ 0, %76 ]
  %98 = load ptr, ptr %73, align 8, !tbaa !58
  %99 = getelementptr inbounds %struct.access, ptr %22, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !45
  call fastcc void @generate_subtree_copies(ptr noundef %98, ptr noundef %100, i64 noundef 0, i64 noundef %96, i64 noundef %97, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %2) #24
  br label %101

101:                                              ; preds = %72, %95, %4
  %102 = phi i8 [ 0, %4 ], [ 1, %95 ], [ 1, %72 ]
  ret i8 %102
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @sra_modify_assign(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca i32, align 4
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  %10 = tail call fastcc i32 @gimple_location(ptr noundef %9) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !33
  %11 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %9) #23
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %271, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %0, align 8, !tbaa !6
  %15 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %14) #24
  %16 = load ptr, ptr %0, align 8, !tbaa !6
  %17 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %16) #24
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %22 [
    i16 51, label %20
    i16 43, label %36
  ]

20:                                               ; preds = %13
  %21 = tail call fastcc i32 @sra_modify_constructor_assign(ptr noundef nonnull %0, ptr noundef nonnull %1) #24, !range !59
  br label %271

22:                                               ; preds = %13
  %23 = trunc i64 %18 to i32
  %24 = and i32 %23, 65535
  %25 = load i64, ptr %15, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %24, 44
  %29 = add nsw i32 %27, -43
  %30 = icmp ult i32 %29, 2
  %31 = or i1 %28, %30
  %32 = icmp eq i32 %24, 42
  %33 = or i1 %32, %31
  %34 = icmp eq i32 %27, 42
  %35 = or i1 %34, %33
  br i1 %35, label %36, label %45

36:                                               ; preds = %13, %22
  %37 = load ptr, ptr %0, align 8, !tbaa !6
  %38 = tail call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %37) #24
  %39 = tail call zeroext i8 @sra_modify_expr(ptr noundef %38, ptr noundef nonnull %1, i8 noundef zeroext 0, ptr poison) #24, !range !16
  %40 = load ptr, ptr %0, align 8, !tbaa !6
  %41 = tail call fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %40) #24
  %42 = tail call zeroext i8 @sra_modify_expr(ptr noundef %41, ptr noundef nonnull %1, i8 noundef zeroext 1, ptr poison) #24, !range !16
  %43 = or i8 %42, %39
  %44 = zext nneg i8 %43 to i32
  br label %271

45:                                               ; preds = %22
  %46 = tail call fastcc ptr @get_access_for_expr(ptr noundef nonnull %15) #24
  %47 = tail call fastcc ptr @get_access_for_expr(ptr noundef nonnull %17) #24
  %48 = icmp ne ptr %46, null
  %49 = icmp ne ptr %47, null
  %50 = or i1 %48, %49
  br i1 %50, label %51, label %271

51:                                               ; preds = %45
  br i1 %48, label %52, label %66

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 14
  %54 = load i16, ptr %53, align 8
  %55 = and i16 %54, 1024
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %52
  %58 = tail call fastcc ptr @get_access_replacement(ptr noundef nonnull %46) #24
  %59 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %59, ptr noundef %58) #24
  %60 = load i16, ptr %53, align 8
  %61 = lshr i16 %60, 9
  %62 = trunc i16 %61 to i8
  %63 = and i8 %62, 1
  %64 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !19
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !19
  br label %66

66:                                               ; preds = %57, %52, %51
  %67 = phi ptr [ %58, %57 ], [ %15, %52 ], [ %15, %51 ]
  %68 = phi i1 [ false, %57 ], [ true, %52 ], [ true, %51 ]
  %69 = phi i8 [ %63, %57 ], [ 0, %52 ], [ 0, %51 ]
  br i1 %49, label %70, label %83

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.access, ptr %47, i64 0, i32 14
  %72 = load i16, ptr %71, align 8
  %73 = and i16 %72, 1024
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %70
  %76 = tail call fastcc ptr @get_access_replacement(ptr noundef nonnull %47) #24
  %77 = load i16, ptr %71, align 8
  %78 = and i16 %77, 512
  %79 = icmp eq i16 %78, 0
  %80 = select i1 %79, i8 %69, i8 1
  %81 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !19
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !19
  br label %84

83:                                               ; preds = %70, %66
  br i1 %68, label %147, label %84

84:                                               ; preds = %75, %83
  %85 = phi i8 [ %80, %75 ], [ %69, %83 ]
  %86 = phi ptr [ %76, %75 ], [ %17, %83 ]
  %87 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !12
  %89 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !12
  %91 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %88, ptr noundef %90) #23
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %147

93:                                               ; preds = %84
  %94 = load ptr, ptr %87, align 8, !tbaa !12
  %95 = load i64, ptr %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = and i32 %96, 65535
  %98 = add nsw i32 %97, -15
  %99 = icmp ult i32 %98, 4
  br i1 %99, label %100, label %112

100:                                              ; preds = %93
  %101 = tail call fastcc zeroext i8 @access_has_children_p(ptr noundef %46) #24, !range !16
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr %67, ptr %5, align 8, !tbaa !6
  %104 = load ptr, ptr %89, align 8, !tbaa !12
  %105 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %5, ptr noundef nonnull %94, i64 noundef 0, ptr noundef %104, i8 noundef zeroext 0) #24
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %5, align 8, !tbaa !6
  %109 = load ptr, ptr %0, align 8, !tbaa !6
  call fastcc void @gimple_assign_set_lhs(ptr noundef %109, ptr noundef %108) #24
  br label %110

110:                                              ; preds = %107, %103
  %111 = phi ptr [ %108, %107 ], [ %67, %103 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  br label %127

112:                                              ; preds = %93, %100
  %113 = load ptr, ptr %89, align 8, !tbaa !12
  %114 = load i64, ptr %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = and i32 %115, 65535
  %117 = add nsw i32 %116, -15
  %118 = icmp ult i32 %117, 4
  br i1 %118, label %119, label %127

119:                                              ; preds = %112
  %120 = tail call fastcc zeroext i8 @access_has_children_p(ptr noundef %47) #24, !range !16
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  store ptr %86, ptr %6, align 8, !tbaa !6
  %123 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %6, ptr noundef nonnull %113, i64 noundef 0, ptr noundef nonnull %94, i8 noundef zeroext 0) #24
  %124 = icmp eq i8 %123, 0
  %125 = load ptr, ptr %6, align 8
  %126 = select i1 %124, ptr %86, ptr %125
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  br label %127

127:                                              ; preds = %112, %119, %122, %110
  %128 = phi ptr [ %67, %119 ], [ %67, %122 ], [ %111, %110 ], [ %67, %112 ]
  %129 = phi ptr [ %86, %119 ], [ %126, %122 ], [ %86, %110 ], [ %86, %112 ]
  %130 = getelementptr inbounds %struct.tree_common, ptr %128, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !12
  %132 = getelementptr inbounds %struct.tree_common, ptr %129, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !12
  %134 = call zeroext i8 @useless_type_conversion_p(ptr noundef %131, ptr noundef %133) #23
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %127
  %137 = load ptr, ptr %130, align 8, !tbaa !12
  %138 = call ptr @fold_build1_stat_loc(i32 noundef %10, i32 noundef 118, ptr noundef %137, ptr noundef nonnull %129) #23
  %139 = load ptr, ptr %130, align 8, !tbaa !12
  %140 = call zeroext i8 @is_gimple_reg_type(ptr noundef %139) #23
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %136
  %143 = load i64, ptr %128, align 8
  %144 = and i64 %143, 65535
  %145 = icmp eq i64 %144, 141
  %146 = select i1 %145, i8 %85, i8 1
  br label %147

147:                                              ; preds = %142, %84, %136, %127, %83
  %148 = phi i32 [ 1, %84 ], [ 1, %127 ], [ 1, %136 ], [ 0, %83 ], [ 1, %142 ]
  %149 = phi ptr [ %67, %84 ], [ %128, %127 ], [ %128, %136 ], [ %67, %83 ], [ %128, %142 ]
  %150 = phi ptr [ %86, %84 ], [ %129, %127 ], [ %138, %136 ], [ %17, %83 ], [ %138, %142 ]
  %151 = phi i8 [ %85, %84 ], [ %85, %127 ], [ %85, %136 ], [ %69, %83 ], [ %146, %142 ]
  %152 = load ptr, ptr %0, align 8, !tbaa !6
  %153 = call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %152) #24, !range !16
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %175

155:                                              ; preds = %147
  %156 = call fastcc zeroext i8 @contains_view_convert_expr_p(ptr noundef %150) #24, !range !16
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %155
  %159 = call fastcc zeroext i8 @contains_view_convert_expr_p(ptr noundef %149) #24, !range !16
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %158
  %162 = call fastcc zeroext i8 @access_has_children_p(ptr noundef %47) #24, !range !16
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %161
  %165 = load i64, ptr %47, align 8, !tbaa !57
  %166 = call fastcc zeroext i8 @ref_expr_for_all_replacements_p(ptr noundef nonnull %47, ptr noundef %149, i64 noundef %165) #24, !range !16
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %164, %161
  %169 = call fastcc zeroext i8 @access_has_children_p(ptr noundef %46) #24, !range !16
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %194, label %171

171:                                              ; preds = %168
  %172 = load i64, ptr %46, align 8, !tbaa !57
  %173 = call fastcc zeroext i8 @ref_expr_for_all_replacements_p(ptr noundef nonnull %46, ptr noundef %150, i64 noundef %172) #24, !range !16
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %194

175:                                              ; preds = %171, %164, %158, %155, %147
  %176 = call fastcc zeroext i8 @access_has_children_p(ptr noundef %47) #24, !range !16
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.access, ptr %47, i64 0, i32 8
  %180 = load ptr, ptr %179, align 8, !tbaa !58
  %181 = getelementptr inbounds %struct.access, ptr %47, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !45
  call fastcc void @generate_subtree_copies(ptr noundef %180, ptr noundef %182, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #24
  br label %183

183:                                              ; preds = %178, %175
  %184 = call fastcc zeroext i8 @access_has_children_p(ptr noundef %46) #24, !range !16
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 8
  %188 = load ptr, ptr %187, align 8, !tbaa !58
  %189 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !45
  call fastcc void @generate_subtree_copies(ptr noundef %188, ptr noundef %190, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #24
  br label %191

191:                                              ; preds = %186, %183
  %192 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 5), align 4, !tbaa !23
  %193 = add nsw i32 %192, 1
  store i32 %193, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 5), align 4, !tbaa !23
  br label %257

194:                                              ; preds = %171, %168
  %195 = call fastcc zeroext i8 @access_has_children_p(ptr noundef %46) #24, !range !16
  %196 = icmp eq i8 %195, 0
  %197 = call fastcc zeroext i8 @access_has_children_p(ptr noundef %47) #24, !range !16
  %198 = icmp eq i8 %197, 0
  br i1 %196, label %225, label %199

199:                                              ; preds = %194
  br i1 %198, label %252, label %200

200:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #25
  %201 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 14
  %202 = load i16, ptr %201, align 8
  %203 = and i16 %202, 80
  %204 = icmp eq i16 %203, 16
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = call fastcc i32 @handle_unscalarized_data_in_subtree(ptr noundef %47, ptr noundef %149, ptr noundef nonnull %1) #24, !range !60
  br label %207

207:                                              ; preds = %200, %205
  %208 = phi i32 [ %206, %205 ], [ 0, %200 ]
  store i32 %208, ptr %8, align 4, !tbaa !10
  %209 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 8
  %210 = load ptr, ptr %209, align 8, !tbaa !58
  %211 = load i64, ptr %46, align 8, !tbaa !57
  %212 = load i64, ptr %47, align 8, !tbaa !57
  call fastcc void @load_assign_lhs_subreplacements(ptr noundef %210, ptr noundef nonnull %47, i64 noundef %211, i64 noundef %212, ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef nonnull %8, ptr noundef %149) #24
  %213 = load i32, ptr %8, align 4, !tbaa !10
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %256, label %215

215:                                              ; preds = %207
  %216 = load ptr, ptr %0, align 8, !tbaa !6
  %217 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24
  %218 = icmp eq ptr %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  call fastcc void @gsi_next(ptr noundef nonnull %1) #24
  %220 = load ptr, ptr %0, align 8, !tbaa !6
  br label %221

221:                                              ; preds = %219, %215
  %222 = phi ptr [ %220, %219 ], [ %216, %215 ]
  call void @unlink_stmt_vdef(ptr noundef %222) #23
  call void @gsi_remove(ptr noundef nonnull %7, i8 noundef zeroext 1) #23
  %223 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 4), align 4, !tbaa !22
  %224 = add nsw i32 %223, 1
  store i32 %224, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 4), align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #25
  br label %271

225:                                              ; preds = %194
  br i1 %198, label %257, label %226

226:                                              ; preds = %225
  %227 = getelementptr inbounds %struct.access, ptr %47, i64 0, i32 14
  %228 = load i16, ptr %227, align 8
  %229 = and i16 %228, 256
  %230 = icmp eq i16 %229, 0
  br i1 %230, label %231, label %248

231:                                              ; preds = %226
  %232 = load i64, ptr %149, align 8
  %233 = and i64 %232, 65535
  %234 = icmp eq i64 %233, 141
  br i1 %234, label %248, label %235

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.access, ptr %47, i64 0, i32 8
  %237 = load ptr, ptr %236, align 8, !tbaa !58
  %238 = load i64, ptr %47, align 8, !tbaa !57
  call fastcc void @generate_subtree_copies(ptr noundef %237, ptr noundef nonnull %149, i64 noundef %238, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #24
  %239 = load ptr, ptr %0, align 8, !tbaa !6
  %240 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24
  %241 = icmp eq ptr %239, %240
  br i1 %241, label %244, label %242

242:                                              ; preds = %235
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2718, ptr noundef nonnull @.str.1) #23
  %243 = load ptr, ptr %0, align 8, !tbaa !6
  br label %244

244:                                              ; preds = %235, %242
  %245 = phi ptr [ %239, %235 ], [ %243, %242 ]
  call void @unlink_stmt_vdef(ptr noundef %245) #23
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #23
  %246 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 4), align 4, !tbaa !22
  %247 = add nsw i32 %246, 1
  store i32 %247, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 4), align 4, !tbaa !22
  br label %271

248:                                              ; preds = %231, %226
  %249 = getelementptr inbounds %struct.access, ptr %47, i64 0, i32 8
  %250 = load ptr, ptr %249, align 8, !tbaa !58
  %251 = load i64, ptr %47, align 8, !tbaa !57
  call fastcc void @generate_subtree_copies(ptr noundef %250, ptr noundef %149, i64 noundef %251, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 1) #24
  br label %257

252:                                              ; preds = %199
  %253 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 8
  %254 = load ptr, ptr %253, align 8, !tbaa !58
  %255 = load i64, ptr %46, align 8, !tbaa !57
  call fastcc void @generate_subtree_copies(ptr noundef %254, ptr noundef %150, i64 noundef %255, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #24
  br label %257

256:                                              ; preds = %207
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #25
  br label %257

257:                                              ; preds = %225, %256, %252, %248, %191
  %258 = icmp eq i8 %151, 0
  br i1 %258, label %261, label %259

259:                                              ; preds = %257
  %260 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %150, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #23
  br label %261

261:                                              ; preds = %259, %257
  %262 = phi ptr [ %260, %259 ], [ %150, %257 ]
  %263 = load ptr, ptr %0, align 8, !tbaa !6
  %264 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %263) #24
  %265 = icmp eq ptr %264, %262
  br i1 %265, label %271, label %266

266:                                              ; preds = %261
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %4, ptr noundef %262) #23
  %267 = load ptr, ptr %0, align 8, !tbaa !6
  %268 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24
  %269 = icmp eq ptr %267, %268
  br i1 %269, label %271, label %270

270:                                              ; preds = %266
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2742, ptr noundef nonnull @.str.1) #23
  br label %271

271:                                              ; preds = %261, %266, %270, %221, %45, %3, %244, %36, %20
  %272 = phi i32 [ %21, %20 ], [ %44, %36 ], [ 2, %221 ], [ 2, %244 ], [ 0, %3 ], [ 0, %45 ], [ %148, %270 ], [ %148, %266 ], [ %148, %261 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  ret i32 %272
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_parameter_reductions() unnamed_addr #0 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #25
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.tree_decl_non_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %0, %31
  %8 = phi ptr [ %34, %31 ], [ %5, %0 ]
  %9 = phi ptr [ %32, %31 ], [ null, %0 ]
  %10 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !12
  %13 = call i32 @bitmap_bit_p(ptr noundef %10, i32 noundef %12) #23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %7
  %16 = call fastcc ptr @get_base_access_vector(ptr noundef nonnull %8) #24
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = icmp eq ptr %9, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = call ptr @gimple_seq_alloc() #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %21) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %9, %18 ], [ %21, %20 ]
  %24 = call fastcc ptr @VEC_access_p_base_index(ptr noundef nonnull %16, i32 noundef 0) #24
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22, %26
  %27 = phi ptr [ %29, %26 ], [ %24, %22 ]
  call fastcc void @generate_subtree_copies(ptr noundef nonnull %27, ptr noundef nonnull %8, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #24
  %28 = getelementptr inbounds %struct.access, ptr %27, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !61
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %26, !llvm.loop !62

31:                                               ; preds = %26, %22, %15, %7
  %32 = phi ptr [ %9, %7 ], [ %9, %15 ], [ %23, %22 ], [ %23, %26 ]
  %33 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %7, !llvm.loop !63

36:                                               ; preds = %31
  %37 = icmp eq ptr %32, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr @cfun, align 8, !tbaa !6
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !25
  %42 = load ptr, ptr %41, align 8, !tbaa !27
  %43 = call fastcc ptr @single_succ_edge(ptr noundef %42) #24
  %44 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %43, ptr noundef nonnull %32) #23
  br label %45

45:                                               ; preds = %0, %38, %36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #25
  ret void
}

; Function Attrs: optsize
declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sra_deinitialize() unnamed_addr #0 {
  %1 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %1) #23
  store ptr null, ptr @candidate_bitmap, align 8, !tbaa !6
  %2 = load ptr, ptr @should_scalarize_away_bitmap, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %2) #23
  store ptr null, ptr @should_scalarize_away_bitmap, align 8, !tbaa !6
  %3 = load ptr, ptr @cannot_scalarize_away_bitmap, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %3) #23
  store ptr null, ptr @cannot_scalarize_away_bitmap, align 8, !tbaa !6
  %4 = load ptr, ptr @access_pool, align 8, !tbaa !6
  tail call void @free_alloc_pool(ptr noundef %4) #23
  %5 = load ptr, ptr @link_pool, align 8, !tbaa !6
  tail call void @free_alloc_pool(ptr noundef %5) #23
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 1), align 8, !tbaa !64
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 0, %7
  store i64 %8, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !66
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %0
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !67
  %12 = ptrtoint ptr %11 to i64
  %13 = sub i64 %12, %7
  %14 = icmp sgt i64 %13, %8
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, ptr %6, i64 %8
  store ptr %16, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 2), align 8, !tbaa !68
  store ptr %16, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  br label %19

17:                                               ; preds = %10, %0
  %18 = getelementptr inbounds i8, ptr %6, i64 %8
  tail call void @obstack_free(ptr noundef nonnull @name_obstack, ptr noundef %18) #23
  br label %19

19:                                               ; preds = %17, %15
  %20 = load ptr, ptr @base_access_vec, align 8, !tbaa !6
  tail call void @pointer_map_traverse(ptr noundef %20, ptr noundef nonnull @delete_base_accesses, ptr noundef null) #23
  %21 = load ptr, ptr @base_access_vec, align 8, !tbaa !6
  tail call void @pointer_map_destroy(ptr noundef %21) #23
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #4

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_referenced_var(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #24
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %0, ptr noundef %3) #24
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #24, !range !16
  ret i8 %2
}

; Function Attrs: optsize
declare zeroext i8 @needs_to_live_in_memory(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @type_internals_preclude_sra_p(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  br label %3

3:                                                ; preds = %49, %1
  %4 = phi i64 [ %2, %1 ], [ %52, %49 ]
  %5 = phi ptr [ %0, %1 ], [ %51, %49 ]
  %6 = trunc i64 %4 to i16
  switch i16 %6, label %57 [
    i16 16, label %7
    i16 17, label %7
    i16 18, label %7
    i16 15, label %49
  ]

7:                                                ; preds = %3, %3, %3
  %8 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %57, label %11

11:                                               ; preds = %7, %45
  %12 = phi ptr [ %47, %45 ], [ %9, %7 ]
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 31
  br i1 %15, label %16, label %45

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  %19 = and i64 %13, 524288
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_field_decl, ptr %12, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %57, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %57, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @host_integerp(ptr noundef nonnull %23, i32 noundef 1) #23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %26, align 8, !tbaa !12
  %34 = tail call i32 @host_integerp(ptr noundef %33, i32 noundef 1) #23
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %32
  %37 = load i64, ptr %18, align 8
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, 65535
  %40 = add nsw i32 %39, -15
  %41 = icmp ult i32 %40, 4
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = tail call fastcc zeroext i8 @type_internals_preclude_sra_p(ptr noundef nonnull %18) #24
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42, %36, %11
  %46 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !12
  %48 = icmp eq ptr %47, null
  br i1 %48, label %57, label %11, !llvm.loop !70

49:                                               ; preds = %3
  %50 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !12
  %52 = load i64, ptr %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 65535
  %55 = add nsw i32 %54, -15
  %56 = icmp ult i32 %55, 4
  br i1 %56, label %3, label %57

57:                                               ; preds = %49, %3, %42, %16, %21, %25, %29, %32, %45, %7
  %58 = phi i8 [ 0, %7 ], [ 1, %42 ], [ 1, %16 ], [ 1, %21 ], [ 1, %25 ], [ 1, %29 ], [ 1, %32 ], [ 0, %45 ], [ 0, %3 ], [ 0, %49 ]
  ret i8 %58
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @is_va_list_type(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 44), align 16, !tbaa !6
  %5 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = icmp eq ptr %3, %6
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_referenced_var(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  store ptr %1, ptr %0, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !75
  %6 = tail call i64 @htab_size(ptr noundef %1) #23
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !76
  %9 = load ptr, ptr %5, align 8, !tbaa !75
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !75
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !llvm.loop !77

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !6
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !79
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = load ptr, ptr %2, align 8, !tbaa !75
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !75
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !6
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  store ptr %4, ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #24
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #24
  store ptr %4, ptr %0, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !76
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @stmt_can_throw_external(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #24
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %3) #24
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #24
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cgraph_get_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @callsite_has_enough_arguments_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #24
  %3 = load i32, ptr @func_param_count, align 4, !tbaa !10
  %4 = icmp uge i32 %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @disqualify_ops_if_throwing_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr @sra_mode, align 4
  %5 = add i32 %4, -1
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @stmt_can_throw_internal(ptr noundef %0) #23
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %0) #23
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %7
  tail call fastcc void @disqualify_base_of_expr(ptr noundef %1, ptr noundef nonnull @.str.14) #24
  %14 = icmp eq ptr %2, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  tail call fastcc void @disqualify_base_of_expr(ptr noundef nonnull %2, ptr noundef nonnull @.str.15) #24
  br label %16

16:                                               ; preds = %10, %3, %13, %15
  %17 = phi i8 [ 1, %15 ], [ 1, %13 ], [ 0, %3 ], [ 0, %10 ]
  ret i8 %17
}

; Function Attrs: optsize
declare zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @asm_visit_addr(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !10
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call fastcc void @disqualify_candidate(ptr noundef nonnull %1, ptr noundef nonnull @.str.18) #24
  br label %10

10:                                               ; preds = %9, %3
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !12
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !12
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 2622, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %1) #24
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_noutputs(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !12
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !12
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 2655, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !12
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %12) #24
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #23
  tail call void @update_stmt_operands(ptr noundef %0) #23
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_eh_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !86
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !87
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
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #24
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !37
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #24
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !91
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !37
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #24
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #12 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !10
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !12
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #24
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: optsize
declare zeroext i8 @stmt_can_throw_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @disqualify_base_of_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #24, !range !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %0, %2 ]
  %7 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %8) #24, !range !16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %5, !llvm.loop !92

11:                                               ; preds = %5, %2
  %12 = phi ptr [ %0, %2 ], [ %8, %5 ]
  %13 = load i32, ptr @sra_mode, align 4, !tbaa !10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i64, ptr %12, align 8
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 65535
  %19 = add nsw i32 %18, -47
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !12
  br label %24

24:                                               ; preds = %15, %21
  %25 = phi ptr [ %23, %21 ], [ %12, %15 ]
  %26 = tail call fastcc ptr @get_ssa_base_param(ptr noundef %25) #24
  br label %27

27:                                               ; preds = %24, %11
  %28 = phi ptr [ %26, %24 ], [ %12, %11 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load i64, ptr %28, align 8
  %32 = and i64 %31, 65535
  %33 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !10
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  tail call fastcc void @disqualify_candidate(ptr noundef nonnull %28, ptr noundef %1) #24
  br label %37

37:                                               ; preds = %36, %30, %27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 42, label %5
    i16 41, label %5
    i16 45, label %5
    i16 46, label %5
    i16 118, label %5
    i16 43, label %5
    i16 44, label %5
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_ssa_base_param(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = and i64 %2, 4294967296
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  br label %11

11:                                               ; preds = %1, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ %0, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @disqualify_candidate(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !12
  %6 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %3, i32 noundef %5) #23
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !10
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 16, i64 1, ptr nonnull %7)
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %15, ptr noundef nonnull %0, i32 noundef 0) #23
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.17, ptr noundef %1) #24
  br label %18

18:                                               ; preds = %13, %9, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @build_access_from_expr_1(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -42
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  %13 = load i64, ptr %12, align 8
  br label %14

14:                                               ; preds = %3, %10
  %15 = phi i64 [ %13, %10 ], [ %5, %3 ]
  %16 = phi ptr [ %12, %10 ], [ %4, %3 ]
  %17 = and i64 %15, 65535
  %18 = icmp eq i64 %17, 118
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !12
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi ptr [ %21, %19 ], [ %16, %14 ]
  %24 = tail call fastcc zeroext i8 @contains_view_convert_expr_p(ptr noundef %23) #24, !range !16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call fastcc void @disqualify_base_of_expr(ptr noundef %23, ptr noundef nonnull @.str.19) #24
  br label %43

27:                                               ; preds = %22
  %28 = load i64, ptr %23, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %43 [
    i16 47, label %30
    i16 32, label %33
    i16 34, label %33
    i16 36, label %33
    i16 41, label %33
    i16 45, label %33
    i16 46, label %33
  ]

30:                                               ; preds = %27
  %31 = load i32, ptr @sra_mode, align 4, !tbaa !10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %27, %27, %27, %27, %27, %27, %30
  %34 = tail call fastcc ptr @create_access(ptr noundef nonnull %23, ptr noundef %1, i8 noundef zeroext %2) #24
  %35 = icmp ne i8 %2, 0
  %36 = icmp ne ptr %34, null
  %37 = and i1 %35, %36
  %38 = and i1 %9, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.access, ptr %34, i64 0, i32 14
  %41 = load i16, ptr %40, align 8
  %42 = or i16 %41, 512
  store i16 %42, ptr %40, align 8
  br label %43

43:                                               ; preds = %27, %33, %39, %30, %26
  %44 = phi ptr [ null, %26 ], [ null, %30 ], [ %34, %39 ], [ %34, %33 ], [ null, %27 ]
  ret ptr %44
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @contains_view_convert_expr_p(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #24, !range !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %9
  %5 = phi ptr [ %11, %9 ], [ %0, %1 ]
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 118
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %11) #24, !range !16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %4, !llvm.loop !93

14:                                               ; preds = %4, %9, %1
  %15 = phi i8 [ 0, %1 ], [ 0, %9 ], [ 1, %4 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_access(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  %7 = call ptr @get_ref_base_and_extent(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  %8 = load i32, ptr @sra_mode, align 4, !tbaa !10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = load i64, ptr %7, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -47
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  %19 = call fastcc ptr @get_ssa_base_param(ptr noundef %18) #24
  %20 = icmp eq ptr %19, null
  br i1 %20, label %82, label %21

21:                                               ; preds = %10, %3, %16
  %22 = phi ptr [ %19, %16 ], [ %7, %10 ], [ %7, %3 ]
  %23 = phi i1 [ false, %16 ], [ true, %10 ], [ true, %3 ]
  %24 = load i64, ptr %22, align 8
  %25 = and i64 %24, 65535
  %26 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !10
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %82

29:                                               ; preds = %21
  %30 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.tree_decl_minimal, ptr %22, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !12
  %33 = call i32 @bitmap_bit_p(ptr noundef %30, i32 noundef %32) #23
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %82, label %35

35:                                               ; preds = %29
  %36 = load i32, ptr @sra_mode, align 4, !tbaa !10
  %37 = icmp eq i32 %36, 0
  %38 = load i64, ptr %5, align 8, !tbaa !91
  br i1 %37, label %39, label %55

39:                                               ; preds = %35
  %40 = icmp sgt i64 %38, -1
  %41 = load i64, ptr %6, align 8
  %42 = icmp eq i64 %38, %41
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  call fastcc void @disqualify_candidate(ptr noundef nonnull %22, ptr noundef nonnull @.str.20) #24
  br label %82

45:                                               ; preds = %39
  %46 = load i64, ptr %4, align 8, !tbaa !91
  %47 = or i64 %46, %38
  %48 = and i64 %47, 7
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  call fastcc void @disqualify_candidate(ptr noundef nonnull %22, ptr noundef nonnull @.str.21) #24
  br label %82

51:                                               ; preds = %45
  br i1 %23, label %64, label %52

52:                                               ; preds = %51
  %53 = add nsw i64 %46, %38
  call fastcc void @mark_parm_dereference(ptr noundef nonnull %22, i64 noundef %53, ptr noundef %1) #24
  %54 = load i64, ptr %5, align 8, !tbaa !91
  br label %64

55:                                               ; preds = %35
  %56 = load i64, ptr %6, align 8, !tbaa !91
  %57 = icmp eq i64 %38, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store i64 %56, ptr %5, align 8, !tbaa !91
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi i64 [ %56, %58 ], [ %38, %55 ]
  %61 = phi i16 [ 128, %58 ], [ 0, %55 ]
  %62 = icmp slt i64 %60, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  call fastcc void @disqualify_candidate(ptr noundef nonnull %22, ptr noundef nonnull @.str.22) #24
  br label %82

64:                                               ; preds = %59, %51, %52
  %65 = phi i64 [ %54, %52 ], [ %38, %51 ], [ %60, %59 ]
  %66 = phi i16 [ 0, %52 ], [ 0, %51 ], [ %61, %59 ]
  %67 = load i64, ptr %4, align 8, !tbaa !91
  %68 = call fastcc ptr @create_access_1(ptr noundef nonnull %22, i64 noundef %67, i64 noundef %65) #24
  %69 = getelementptr inbounds %struct.access, ptr %68, i64 0, i32 3
  store ptr %0, ptr %69, align 8, !tbaa !94
  %70 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !12
  %72 = getelementptr inbounds %struct.access, ptr %68, i64 0, i32 4
  store ptr %71, ptr %72, align 8, !tbaa !47
  %73 = getelementptr inbounds %struct.access, ptr %68, i64 0, i32 14
  %74 = load i16, ptr %73, align 8
  %75 = and i8 %2, 1
  %76 = zext nneg i8 %75 to i16
  %77 = and i16 %74, -130
  %78 = and i16 %66, 128
  %79 = or disjoint i16 %78, %76
  %80 = or disjoint i16 %79, %77
  store i16 %80, ptr %73, align 8
  %81 = getelementptr inbounds %struct.access, ptr %68, i64 0, i32 5
  store ptr %1, ptr %81, align 8, !tbaa !95
  br label %82

82:                                               ; preds = %21, %29, %16, %64, %63, %50, %44
  %83 = phi ptr [ null, %44 ], [ null, %50 ], [ %68, %64 ], [ null, %63 ], [ null, %16 ], [ null, %29 ], [ null, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret ptr %83
}

; Function Attrs: optsize
declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_parm_dereference(ptr noundef readnone %0, i64 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @gimple_bb(ptr noundef %2) #24
  %5 = load ptr, ptr @final_bbs, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !36
  %8 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %7) #23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %3
  %11 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.tree_decl_non_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  %14 = icmp ne ptr %13, null
  %15 = icmp ne ptr %13, %0
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %10, %17
  %18 = phi ptr [ %22, %17 ], [ %13, %10 ]
  %19 = phi i32 [ %20, %17 ], [ 0, %10 ]
  %20 = add nuw nsw i32 %19, 1
  %21 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !12
  %23 = icmp ne ptr %22, null
  %24 = icmp ne ptr %22, %0
  %25 = and i1 %23, %24
  br i1 %25, label %17, label %26, !llvm.loop !96

26:                                               ; preds = %17, %10
  %27 = phi i32 [ 0, %10 ], [ %20, %17 ]
  %28 = load i32, ptr @func_param_count, align 4, !tbaa !10
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 698, ptr noundef nonnull @.str.1) #23
  %31 = load i32, ptr @func_param_count, align 4, !tbaa !10
  br label %32

32:                                               ; preds = %26, %30
  %33 = phi i32 [ %28, %26 ], [ %31, %30 ]
  %34 = load i32, ptr %6, align 8, !tbaa !36
  %35 = mul nsw i32 %33, %34
  %36 = add nsw i32 %35, %27
  %37 = load ptr, ptr @bb_dereferences, align 8, !tbaa !6
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i64, ptr %37, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !91
  %41 = icmp slt i64 %40, %1
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i64 %1, ptr %39, align 8, !tbaa !91
  br label %43

43:                                               ; preds = %32, %42, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_access_1(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = load ptr, ptr @access_pool, align 8, !tbaa !6
  %6 = tail call ptr @pool_alloc(ptr noundef %5) #23
  %7 = getelementptr inbounds i8, ptr %6, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %7, i8 0, i64 96, i1 false)
  %8 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 2
  store ptr %0, ptr %8, align 8, !tbaa !45
  store i64 %1, ptr %6, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 1
  store i64 %2, ptr %9, align 8, !tbaa !48
  %10 = load ptr, ptr @base_access_vec, align 8, !tbaa !6
  %11 = tail call ptr @pointer_map_contains(ptr noundef %10, ptr noundef %0) #23
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %11, align 8, !tbaa !6
  br label %17

15:                                               ; preds = %3
  %16 = tail call fastcc ptr @VEC_access_p_heap_alloc(i32 noundef 32) #24
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %16, %15 ], [ %14, %13 ]
  store ptr %18, ptr %4, align 8, !tbaa !6
  call fastcc void @VEC_access_p_heap_safe_push(ptr noundef nonnull %4, ptr noundef nonnull %6) #24
  %19 = load ptr, ptr %4, align 8, !tbaa !6
  %20 = load ptr, ptr @base_access_vec, align 8, !tbaa !6
  %21 = tail call ptr @pointer_map_insert(ptr noundef %20, ptr noundef %0) #23
  store ptr %19, ptr %21, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_access_p_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_access_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_access_p_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @VEC_access_p_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_access_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = tail call fastcc i32 @VEC_access_p_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_access_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #14 {
  %3 = load i32, ptr %0, align 8, !tbaa !97
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !97
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_access_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_access_p_base_space(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_access_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = load i32, ptr %0, align 8, !tbaa !97
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #24
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #24, !range !16
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

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_link_to_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.assign_link, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 485, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  br i1 %10, label %13, label %16

13:                                               ; preds = %7
  %14 = icmp eq ptr %12, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 489, ptr noundef nonnull @.str.1) #23
  br label %18

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.assign_link, ptr %12, i64 0, i32 2
  br label %18

18:                                               ; preds = %15, %13, %16
  %19 = phi ptr [ %17, %16 ], [ %8, %13 ], [ %8, %15 ]
  store ptr %1, ptr %19, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 11
  store ptr %1, ptr %20, align 8, !tbaa !101
  %21 = getelementptr inbounds %struct.assign_link, ptr %1, i64 0, i32 2
  store ptr null, ptr %21, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !37
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %4, ptr %0, align 8, !tbaa !105
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !107
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !105
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !108
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !110
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !91
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !111
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !111
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !10
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !112

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !10
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !10
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !110
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !105
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !110
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !91
  store i64 %35, ptr %3, align 8, !tbaa !111
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !10
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !10
  %40 = load i32, ptr %23, align 8, !tbaa !110
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !110
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !113

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !114
  store ptr %44, ptr %0, align 8, !tbaa !105
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !108
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !10
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !111
  store i32 %16, ptr %1, align 4, !tbaa !10
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: optsize
declare ptr @referenced_var_lookup(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @type_consists_of_records_p(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 16
  br i1 %4, label %5, label %37

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %5, %29
  %10 = phi ptr [ %32, %29 ], [ %7, %5 ]
  %11 = phi i8 [ %30, %29 ], [ 0, %5 ]
  %12 = load i64, ptr %10, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 31
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !12
  %18 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %17) #23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = tail call fastcc zeroext i8 @type_consists_of_records_p(ptr noundef %17) #24
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %15, %20
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !12
  %26 = tail call i64 @tree_low_cst(ptr noundef %25, i32 noundef 1) #23
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i8
  br label %29

29:                                               ; preds = %23, %9
  %30 = phi i8 [ %11, %9 ], [ %28, %23 ]
  %31 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %9, !llvm.loop !115

34:                                               ; preds = %29
  %35 = icmp eq i8 %30, 0
  %36 = zext i1 %35 to i8
  br label %37

37:                                               ; preds = %20, %5, %34, %1
  %38 = phi i8 [ 0, %1 ], [ 1, %5 ], [ %36, %34 ], [ 0, %20 ]
  ret i8 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @completely_scalarize_record(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %45, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  br label %12

12:                                               ; preds = %10, %41
  %13 = phi ptr [ %8, %10 ], [ %43, %41 ]
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 31
  br i1 %16, label %17, label %41

17:                                               ; preds = %12
  %18 = call i64 @int_bit_position(ptr noundef nonnull %13) #23
  %19 = add nsw i64 %18, %2
  %20 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !12
  %22 = call zeroext i8 @is_gimple_reg_type(ptr noundef %21) #23
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = call i64 @tree_low_cst(ptr noundef %26, i32 noundef 1) #23
  store ptr %0, ptr %4, align 8, !tbaa !6
  %28 = load ptr, ptr %11, align 8, !tbaa !12
  %29 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %4, ptr noundef %28, i64 noundef %19, ptr noundef %21, i8 noundef zeroext 0) #24
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 863, ptr noundef nonnull @.str.1) #23
  br label %32

32:                                               ; preds = %24, %31
  %33 = call fastcc ptr @create_access_1(ptr noundef nonnull %0, i64 noundef %19, i64 noundef %27) #24
  %34 = load ptr, ptr %4, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.access, ptr %33, i64 0, i32 3
  store ptr %34, ptr %35, align 8, !tbaa !94
  %36 = getelementptr inbounds %struct.access, ptr %33, i64 0, i32 4
  store ptr %21, ptr %36, align 8, !tbaa !47
  %37 = getelementptr inbounds %struct.access, ptr %33, i64 0, i32 14
  %38 = load i16, ptr %37, align 8
  %39 = or i16 %38, 2
  store i16 %39, ptr %37, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br label %41

40:                                               ; preds = %17
  call fastcc void @completely_scalarize_record(ptr noundef %0, ptr noundef nonnull %13, i64 noundef %19) #24
  br label %41

41:                                               ; preds = %32, %40, %12
  %42 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !12
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %12, !llvm.loop !116

45:                                               ; preds = %41, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !111
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !111
  %6 = load i32, ptr %1, align 4, !tbaa !10
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !10
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @sort_and_splice_var_accesses(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  %3 = tail call fastcc ptr @get_base_access_vector(ptr noundef %0) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %153, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @VEC_access_p_base_length(ptr noundef nonnull %3) #24
  %7 = tail call fastcc ptr @VEC_access_p_base_address(ptr noundef nonnull %3) #24
  %8 = sext i32 %6 to i64
  tail call void @spec_qsort(ptr noundef nonnull %7, i64 noundef %8, i64 noundef 8, ptr noundef nonnull @compare_access_positions) #23
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %10, label %151

10:                                               ; preds = %5, %144
  %11 = phi i32 [ %117, %144 ], [ 0, %5 ]
  %12 = phi i64 [ %57, %144 ], [ 0, %5 ]
  %13 = phi i64 [ %56, %144 ], [ -1, %5 ]
  %14 = phi i1 [ true, %144 ], [ false, %5 ]
  %15 = phi ptr [ %145, %144 ], [ %2, %5 ]
  %16 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef nonnull %3, i32 noundef %11) #24
  %17 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 14
  %18 = load i16, ptr %17, align 8
  %19 = trunc i16 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = lshr i8 %19, 1
  %23 = and i8 %22, 1
  %24 = lshr i16 %18, 9
  %25 = trunc i16 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  %29 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %28) #23
  %30 = load i16, ptr %17, align 8
  %31 = trunc i16 %30 to i8
  %32 = lshr i8 %31, 7
  %33 = load i64, ptr %16, align 8, !tbaa !57
  %34 = icmp slt i64 %33, %12
  %35 = select i1 %14, i1 %34, i1 false
  br i1 %35, label %40, label %36

36:                                               ; preds = %10
  %37 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !48
  %39 = add nsw i64 %38, %33
  br label %55

40:                                               ; preds = %10
  %41 = icmp sgt i64 %33, %13
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !48
  %45 = add nsw i64 %44, %33
  %46 = icmp sgt i64 %45, %12
  br i1 %46, label %153, label %47

47:                                               ; preds = %42, %40
  %48 = icmp slt i64 %33, %13
  br i1 %48, label %54, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !48
  %52 = add nsw i64 %51, %33
  %53 = icmp sgt i64 %52, %12
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1602, ptr noundef nonnull @.str.1) #23
  br label %55

55:                                               ; preds = %49, %54, %36
  %56 = phi i64 [ %33, %36 ], [ %13, %49 ], [ %13, %54 ]
  %57 = phi i64 [ %39, %36 ], [ %12, %49 ], [ %12, %54 ]
  %58 = add nsw i32 %11, 1
  %59 = icmp slt i32 %58, %6
  br i1 %59, label %60, label %110

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 1
  %62 = icmp eq i8 %29, 0
  br label %63

63:                                               ; preds = %60, %106
  %64 = phi i32 [ %58, %60 ], [ %108, %106 ]
  %65 = phi i8 [ %32, %60 ], [ %96, %106 ]
  %66 = phi i8 [ %26, %60 ], [ %93, %106 ]
  %67 = phi i8 [ %23, %60 ], [ %99, %106 ]
  %68 = phi i8 [ 0, %60 ], [ %89, %106 ]
  %69 = phi i8 [ %21, %60 ], [ %88, %106 ]
  %70 = phi i8 [ %20, %60 ], [ %87, %106 ]
  %71 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef nonnull %3, i32 noundef %64) #24
  %72 = load i64, ptr %71, align 8, !tbaa !57
  %73 = load i64, ptr %16, align 8, !tbaa !57
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %110

75:                                               ; preds = %63
  %76 = getelementptr inbounds %struct.access, ptr %71, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !48
  %78 = load i64, ptr %61, align 8, !tbaa !48
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %110

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.access, ptr %71, i64 0, i32 14
  %82 = load i16, ptr %81, align 8
  %83 = and i16 %82, 1
  %84 = icmp eq i16 %83, 0
  %85 = icmp eq i8 %69, 0
  %86 = select i1 %85, i8 %68, i8 1
  %87 = select i1 %84, i8 %70, i8 1
  %88 = select i1 %84, i8 1, i8 %69
  %89 = select i1 %84, i8 %86, i8 %68
  %90 = lshr i16 %82, 9
  %91 = trunc i16 %90 to i8
  %92 = and i8 %91, 1
  %93 = or i8 %92, %66
  %94 = trunc i16 %82 to i8
  %95 = lshr i8 %94, 7
  %96 = or i8 %95, %65
  %97 = lshr i8 %94, 1
  %98 = and i8 %97, 1
  %99 = or i8 %98, %67
  tail call fastcc void @relink_to_new_repr(ptr noundef nonnull %16, ptr noundef nonnull %71) #24
  br i1 %62, label %100, label %106

100:                                              ; preds = %80
  %101 = getelementptr inbounds %struct.access, ptr %71, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !47
  %103 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %102) #23
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1627, ptr noundef nonnull @.str.1) #23
  br label %106

106:                                              ; preds = %105, %100, %80
  %107 = getelementptr inbounds %struct.access, ptr %71, i64 0, i32 7
  store ptr %16, ptr %107, align 8, !tbaa !117
  %108 = add i32 %64, 1
  %109 = icmp eq i32 %108, %6
  br i1 %109, label %110, label %63

110:                                              ; preds = %106, %75, %63, %55
  %111 = phi i8 [ %20, %55 ], [ %70, %63 ], [ %70, %75 ], [ %87, %106 ]
  %112 = phi i8 [ %21, %55 ], [ %69, %63 ], [ %69, %75 ], [ %88, %106 ]
  %113 = phi i8 [ 0, %55 ], [ %68, %63 ], [ %68, %75 ], [ %89, %106 ]
  %114 = phi i8 [ %23, %55 ], [ %67, %63 ], [ %67, %75 ], [ %99, %106 ]
  %115 = phi i8 [ %26, %55 ], [ %66, %63 ], [ %66, %75 ], [ %93, %106 ]
  %116 = phi i8 [ %32, %55 ], [ %65, %63 ], [ %65, %75 ], [ %96, %106 ]
  %117 = phi i32 [ %58, %55 ], [ %64, %63 ], [ %64, %75 ], [ %6, %106 ]
  %118 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 7
  store ptr %16, ptr %118, align 8, !tbaa !117
  %119 = load i16, ptr %17, align 8
  %120 = shl nuw nsw i8 %111, 3
  %121 = and i8 %120, 8
  %122 = and i16 %119, -697
  %123 = shl nuw nsw i8 %112, 4
  %124 = and i8 %123, 16
  %125 = icmp ne i8 %113, 0
  %126 = icmp ne i8 %114, 0
  %127 = select i1 %125, i1 true, i1 %126
  %128 = select i1 %127, i16 32, i16 0
  %129 = and i8 %115, 1
  %130 = zext nneg i8 %129 to i16
  %131 = shl nuw nsw i16 %130, 9
  %132 = shl nuw i8 %116, 7
  %133 = zext i8 %132 to i16
  %134 = or disjoint i8 %124, %121
  %135 = zext nneg i8 %134 to i16
  %136 = or disjoint i16 %128, %135
  %137 = or disjoint i16 %136, %131
  %138 = or disjoint i16 %137, %133
  %139 = or disjoint i16 %138, %122
  store i16 %139, ptr %17, align 8
  %140 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 10
  %141 = load ptr, ptr %140, align 8, !tbaa !100
  %142 = icmp eq ptr %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %110
  tail call fastcc void @add_access_to_work_queue(ptr noundef nonnull %16) #24
  br label %144

144:                                              ; preds = %110, %143
  store ptr %16, ptr %15, align 8, !tbaa !6
  %145 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 6
  %146 = icmp slt i32 %117, %6
  br i1 %146, label %10, label %147, !llvm.loop !118

147:                                              ; preds = %144
  %148 = load ptr, ptr %2, align 8, !tbaa !6
  %149 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef nonnull %3, i32 noundef 0) #24
  %150 = icmp eq ptr %148, %149
  br i1 %150, label %153, label %151

151:                                              ; preds = %5, %147
  %152 = phi ptr [ %148, %147 ], [ undef, %5 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1647, ptr noundef nonnull @.str.1) #23
  br label %153

153:                                              ; preds = %42, %151, %147, %1
  %154 = phi ptr [ null, %1 ], [ %148, %147 ], [ %152, %151 ], [ null, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  ret ptr %154
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @build_access_trees(ptr noundef %0) unnamed_addr #15 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !6
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %1 ]
  call fastcc void @build_access_subtree(ptr noundef nonnull %2) #24
  %6 = load ptr, ptr %2, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.access, ptr %5, i64 0, i32 6
  store ptr %6, ptr %7, align 8, !tbaa !61
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %4, !llvm.loop !119

9:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_all_subaccesses() unnamed_addr #0 {
  %1 = load ptr, ptr @work_queue_head, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %40, label %6

3:                                                ; preds = %36, %11
  %4 = load ptr, ptr @work_queue_head, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6, !llvm.loop !120

6:                                                ; preds = %0, %3
  %7 = tail call fastcc ptr @pop_access_from_work_queue() #24
  %8 = getelementptr inbounds %struct.access, ptr %7, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2020, ptr noundef nonnull @.str.1) #23
  %12 = load ptr, ptr %8, align 8, !tbaa !6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %3, label %14

14:                                               ; preds = %6, %11
  %15 = phi ptr [ %9, %6 ], [ %12, %11 ]
  br label %16

16:                                               ; preds = %14, %36
  %17 = phi ptr [ %38, %36 ], [ %15, %14 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.access, ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !12
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %19, i32 noundef %23) #23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.access, ptr %18, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !117
  %29 = tail call fastcc zeroext i8 @propagate_subaccesses_across_link(ptr noundef %28, ptr noundef %7) #24, !range !16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.access, ptr %28, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !100
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call fastcc void @add_access_to_work_queue(ptr noundef nonnull %28) #24
  br label %36

36:                                               ; preds = %26, %31, %35, %16
  %37 = getelementptr inbounds %struct.assign_link, ptr %17, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %3, label %16, !llvm.loop !121

40:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_first_repr_for_decl(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @get_base_access_vector(ptr noundef %0) #24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef nonnull %2, i32 noundef 0) #24
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @analyze_access_trees(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %3
  %4 = phi i8 [ %8, %3 ], [ 0, %1 ]
  %5 = phi ptr [ %10, %3 ], [ %0, %1 ]
  %6 = tail call fastcc zeroext i8 @analyze_access_subtree(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #24, !range !16
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i8 %4, i8 1
  %9 = getelementptr inbounds %struct.access, ptr %5, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %3, !llvm.loop !122

12:                                               ; preds = %3, %1
  %13 = phi i8 [ 0, %1 ], [ %8, %3 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_access_tree(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  tail call fastcc void @dump_access_tree_1(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0) #24
  %6 = getelementptr inbounds %struct.access, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !123

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_base_access_vector(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @base_access_vec, align 8, !tbaa !6
  %3 = tail call ptr @pointer_map_contains(ptr noundef %2, ptr noundef %0) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_access_p_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !97
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_access_p_base_address(ptr noundef readnone %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.VEC_access_p_base, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @compare_access_positions(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = load ptr, ptr %1, align 8, !tbaa !6
  %5 = load i64, ptr %3, align 8, !tbaa !57
  %6 = load i64, ptr %4, align 8, !tbaa !57
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = icmp slt i64 %5, %6
  %10 = select i1 %9, i32 -1, i32 1
  br label %99

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.access, ptr %3, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.access, ptr %4, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !48
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %96

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.access, ptr %3, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.access, ptr %4, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %99, label %23

23:                                               ; preds = %17
  %24 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %19) #23
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load ptr, ptr %20, align 8, !tbaa !47
  %28 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %27) #23
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %99

30:                                               ; preds = %26, %23
  %31 = load ptr, ptr %18, align 8, !tbaa !47
  %32 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %31) #23
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %20, align 8, !tbaa !47
  %36 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %35) #23
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %99, label %38

38:                                               ; preds = %34, %30
  %39 = load ptr, ptr %18, align 8, !tbaa !47
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = and i32 %41, 65535
  %43 = add nsw i32 %42, -13
  %44 = icmp ult i32 %43, 2
  %45 = load ptr, ptr %20, align 8, !tbaa !47
  %46 = load i64, ptr %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = and i32 %47, 65535
  %49 = add nsw i32 %48, -13
  %50 = icmp ult i32 %49, 2
  br i1 %44, label %52, label %51

51:                                               ; preds = %38
  br i1 %50, label %99, label %53

52:                                               ; preds = %38
  br i1 %50, label %77, label %99

53:                                               ; preds = %51
  %54 = add nsw i32 %42, -6
  %55 = icmp ult i32 %54, 3
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = add nsw i32 %48, -6
  %58 = icmp ult i32 %57, 3
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 1023
  %63 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 1023
  %66 = sub nsw i32 %62, %65
  br label %99

67:                                               ; preds = %56
  %68 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !12
  %70 = getelementptr inbounds %struct.tree_int_cst, ptr %69, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !12
  %72 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 1023
  %75 = zext nneg i32 %74 to i64
  %76 = icmp eq i64 %71, %75
  br i1 %76, label %77, label %99

77:                                               ; preds = %52, %53, %67
  %78 = add nsw i32 %48, -6
  %79 = icmp ult i32 %78, 3
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !12
  %83 = getelementptr inbounds %struct.tree_int_cst, ptr %82, i64 0, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !12
  %85 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 1023
  %88 = zext nneg i32 %87 to i64
  %89 = icmp eq i64 %84, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %77, %80
  %91 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 5
  %92 = load i32, ptr %91, align 8, !tbaa !12
  %93 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 5
  %94 = load i32, ptr %93, align 8, !tbaa !12
  %95 = sub i32 %92, %94
  br label %99

96:                                               ; preds = %11
  %97 = icmp sgt i64 %13, %15
  %98 = select i1 %97, i32 -1, i32 1
  br label %99

99:                                               ; preds = %52, %51, %80, %67, %34, %26, %17, %96, %90, %59, %8
  %100 = phi i32 [ %10, %8 ], [ %66, %59 ], [ %95, %90 ], [ %98, %96 ], [ 0, %17 ], [ 1, %26 ], [ -1, %34 ], [ 1, %51 ], [ -1, %52 ], [ 1, %67 ], [ -1, %80 ]
  ret i32 %100
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_access_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_access_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @relink_to_new_repr(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = icmp eq ptr %8, null
  br i1 %9, label %47, label %10

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 506, ptr noundef nonnull @.str.1) #23
  br label %47

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  br i1 %14, label %37, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.assign_link, ptr %16, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !102
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 512, ptr noundef nonnull @.str.1) #23
  br label %22

22:                                               ; preds = %17, %21
  %23 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.assign_link, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !102
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 513, ptr noundef nonnull @.str.1) #23
  %31 = load ptr, ptr %23, align 8, !tbaa !101
  br label %32

32:                                               ; preds = %22, %26, %30
  %33 = phi ptr [ null, %22 ], [ %24, %26 ], [ %31, %30 ]
  %34 = load ptr, ptr %3, align 8, !tbaa !100
  %35 = load ptr, ptr %15, align 8, !tbaa !101
  %36 = getelementptr inbounds %struct.assign_link, ptr %35, i64 0, i32 2
  store ptr %34, ptr %36, align 8, !tbaa !102
  br label %45

37:                                               ; preds = %11
  %38 = icmp eq ptr %16, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 520, ptr noundef nonnull @.str.1) #23
  %40 = load ptr, ptr %3, align 8, !tbaa !100
  br label %41

41:                                               ; preds = %37, %39
  %42 = phi ptr [ %4, %37 ], [ %40, %39 ]
  store ptr %42, ptr %12, align 8, !tbaa !100
  %43 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 11
  %44 = load ptr, ptr %43, align 8, !tbaa !101
  br label %45

45:                                               ; preds = %41, %32
  %46 = phi ptr [ %44, %41 ], [ %33, %32 ]
  store ptr %46, ptr %15, align 8, !tbaa !101
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %47

47:                                               ; preds = %10, %6, %45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_access_to_work_queue(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 535, ptr noundef nonnull @.str.1) #23
  %11 = load i16, ptr %2, align 8
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi i16 [ %3, %6 ], [ %11, %10 ]
  %14 = load ptr, ptr @work_queue_head, align 8, !tbaa !6
  store ptr %14, ptr %7, align 8, !tbaa !124
  %15 = or i16 %13, 4
  store i16 %15, ptr %2, align 8
  store ptr %0, ptr @work_queue_head, align 8, !tbaa !6
  br label %16

16:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @build_access_subtree(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = load i64, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.access, ptr %2, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !48
  %6 = add nsw i64 %5, %3
  %7 = getelementptr inbounds %struct.access, ptr %2, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.access, ptr %2, i64 0, i32 8
  br label %12

12:                                               ; preds = %10, %20
  %13 = phi ptr [ null, %10 ], [ %24, %20 ]
  %14 = phi ptr [ %8, %10 ], [ %25, %20 ]
  %15 = load i64, ptr %14, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.access, ptr %14, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !48
  %18 = add nsw i64 %17, %15
  %19 = icmp sgt i64 %18, %6
  br i1 %19, label %27, label %20

20:                                               ; preds = %12
  %21 = icmp eq ptr %13, null
  %22 = getelementptr inbounds %struct.access, ptr %13, i64 0, i32 9
  %23 = select i1 %21, ptr %11, ptr %22
  store ptr %14, ptr %23, align 8, !tbaa !6
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @build_access_subtree(ptr noundef nonnull %0) #24
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %12, !llvm.loop !125

27:                                               ; preds = %12, %20, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @pop_access_from_work_queue() unnamed_addr #16 {
  %1 = load ptr, ptr @work_queue_head, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  store ptr %3, ptr @work_queue_head, align 8, !tbaa !6
  store ptr null, ptr %2, align 8, !tbaa !124
  %4 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 14
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, -5
  store i16 %6, ptr %4, align 8
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @propagate_subaccesses_across_link(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load i64, ptr %0, align 8, !tbaa !57
  %6 = load i64, ptr %1, align 8, !tbaa !57
  %7 = sub nsw i64 %5, %6
  %8 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %9) #23
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %108

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 128
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %108

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 14
  %19 = load i16, ptr %18, align 8
  %20 = and i16 %19, 128
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %108

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !58
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %32) #23
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %36 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  store ptr %37, ptr %3, align 8, !tbaa !6
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !12
  %40 = load i64, ptr %0, align 8, !tbaa !57
  %41 = load ptr, ptr %31, align 8, !tbaa !47
  %42 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %3, ptr noundef %39, i64 noundef %40, ptr noundef %41, i8 noundef zeroext 0) #24
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %35
  %45 = load ptr, ptr %3, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 3
  store ptr %45, ptr %46, align 8, !tbaa !94
  %47 = load ptr, ptr %31, align 8, !tbaa !47
  store ptr %47, ptr %8, align 8, !tbaa !47
  br label %48

48:                                               ; preds = %44, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  br label %108

49:                                               ; preds = %30, %26, %22
  %50 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %108, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  br label %55

55:                                               ; preds = %53, %103
  %56 = phi ptr [ %51, %53 ], [ %106, %103 ]
  %57 = phi i8 [ 0, %53 ], [ %104, %103 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !6
  %58 = load i64, ptr %56, align 8, !tbaa !57
  %59 = add nsw i64 %58, %7
  %60 = getelementptr inbounds %struct.access, ptr %56, i64 0, i32 14
  %61 = load i16, ptr %60, align 8
  %62 = and i16 %61, 128
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %103

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.access, ptr %56, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !48
  %67 = call fastcc zeroext i8 @child_would_conflict_in_lacc(ptr noundef nonnull %0, i64 noundef %59, i64 noundef %66, ptr noundef nonnull %4) #24, !range !16
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %4, align 8, !tbaa !6
  %71 = icmp eq ptr %70, null
  br i1 %71, label %103, label %72

72:                                               ; preds = %69
  %73 = or i16 %61, 32
  store i16 %73, ptr %60, align 8
  %74 = getelementptr inbounds %struct.access, ptr %70, i64 0, i32 14
  %75 = load i16, ptr %74, align 8
  %76 = shl i16 %75, 1
  %77 = and i16 %76, 32
  %78 = or i16 %77, %75
  store i16 %78, ptr %74, align 8
  %79 = getelementptr inbounds %struct.access, ptr %56, i64 0, i32 8
  %80 = load ptr, ptr %79, align 8, !tbaa !58
  %81 = icmp eq ptr %80, null
  br i1 %81, label %103, label %82

82:                                               ; preds = %72
  %83 = tail call fastcc zeroext i8 @propagate_subaccesses_across_link(ptr noundef nonnull %70, ptr noundef nonnull %56) #24, !range !16
  %84 = or i8 %83, %57
  br label %103

85:                                               ; preds = %64
  %86 = load ptr, ptr %54, align 8, !tbaa !45
  %87 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !12
  %89 = getelementptr inbounds %struct.access, ptr %56, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !47
  %91 = tail call zeroext i8 @build_ref_for_offset(ptr noundef null, ptr noundef %88, i64 noundef %59, ptr noundef %90, i8 noundef zeroext 0) #24
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %85
  %94 = load i16, ptr %60, align 8
  %95 = or i16 %94, 32
  store i16 %95, ptr %60, align 8
  %96 = tail call fastcc ptr @create_artificial_child_access(ptr noundef nonnull %0, ptr noundef nonnull %56, i64 noundef %59) #24
  %97 = icmp eq ptr %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load ptr, ptr %50, align 8, !tbaa !58
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = tail call fastcc zeroext i8 @propagate_subaccesses_across_link(ptr noundef nonnull %96, ptr noundef nonnull %56) #24, !range !16
  br label %103

103:                                              ; preds = %93, %101, %98, %85, %69, %82, %72, %55
  %104 = phi i8 [ %57, %55 ], [ %84, %82 ], [ %57, %72 ], [ %57, %69 ], [ %57, %85 ], [ 1, %101 ], [ 1, %98 ], [ %57, %93 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  %105 = getelementptr inbounds %struct.access, ptr %56, i64 0, i32 9
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %55, !llvm.loop !126

108:                                              ; preds = %103, %49, %2, %12, %17, %48
  %109 = phi i8 [ 0, %48 ], [ 0, %17 ], [ 0, %12 ], [ 0, %2 ], [ 0, %49 ], [ %104, %103 ]
  ret i8 %109
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @child_would_conflict_in_lacc(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #9 {
  %5 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = add nsw i64 %2, %1
  br label %10

10:                                               ; preds = %8, %26
  %11 = phi ptr [ %6, %8 ], [ %28, %26 ]
  %12 = load i64, ptr %11, align 8, !tbaa !57
  %13 = icmp eq i64 %12, %1
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.access, ptr %11, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !48
  %17 = icmp eq i64 %16, %2
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store ptr %11, ptr %3, align 8, !tbaa !6
  br label %30

19:                                               ; preds = %14, %10
  %20 = icmp slt i64 %12, %9
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.access, ptr %11, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !48
  %24 = add nsw i64 %23, %12
  %25 = icmp sgt i64 %24, %1
  br i1 %25, label %30, label %26

26:                                               ; preds = %19, %21
  %27 = getelementptr inbounds %struct.access, ptr %11, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %10, !llvm.loop !127

30:                                               ; preds = %21, %26, %4, %18
  %31 = phi i8 [ 1, %18 ], [ 0, %4 ], [ 1, %21 ], [ 0, %26 ]
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_artificial_child_access(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  store ptr %6, ptr %4, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 14
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 128
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1912, ptr noundef nonnull @.str.1) #23
  br label %12

12:                                               ; preds = %3, %11
  %13 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %4, ptr noundef %14, i64 noundef %2, ptr noundef %16, i8 noundef zeroext 0) #24
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %53, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr @access_pool, align 8, !tbaa !6
  %21 = call ptr @pool_alloc(ptr noundef %20) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %21, i8 0, i64 120, i1 false)
  %22 = load ptr, ptr %5, align 8, !tbaa !45
  %23 = getelementptr inbounds %struct.access, ptr %21, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !45
  %24 = load ptr, ptr %4, align 8, !tbaa !6
  %25 = getelementptr inbounds %struct.access, ptr %21, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !94
  store i64 %2, ptr %21, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !48
  %28 = getelementptr inbounds %struct.access, ptr %21, i64 0, i32 1
  store i64 %27, ptr %28, align 8, !tbaa !48
  %29 = load ptr, ptr %15, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.access, ptr %21, i64 0, i32 4
  store ptr %29, ptr %30, align 8, !tbaa !47
  %31 = getelementptr inbounds %struct.access, ptr %21, i64 0, i32 14
  store i16 8, ptr %31, align 8
  %32 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %19
  %36 = load i64, ptr %33, align 8, !tbaa !57
  %37 = icmp slt i64 %36, %2
  br i1 %37, label %41, label %49

38:                                               ; preds = %41
  %39 = load i64, ptr %44, align 8, !tbaa !57
  %40 = icmp slt i64 %39, %2
  br i1 %40, label %41, label %46, !llvm.loop !128

41:                                               ; preds = %35, %38
  %42 = phi ptr [ %44, %38 ], [ %33, %35 ]
  %43 = getelementptr inbounds %struct.access, ptr %42, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %38, !llvm.loop !128

46:                                               ; preds = %38, %41
  %47 = phi ptr [ %44, %38 ], [ null, %41 ]
  %48 = getelementptr inbounds %struct.access, ptr %42, i64 0, i32 9
  br label %49

49:                                               ; preds = %46, %35, %19
  %50 = phi ptr [ %32, %19 ], [ %32, %35 ], [ %48, %46 ]
  %51 = phi ptr [ null, %19 ], [ %33, %35 ], [ %47, %46 ]
  %52 = getelementptr inbounds %struct.access, ptr %21, i64 0, i32 9
  store ptr %51, ptr %52, align 8, !tbaa !129
  store ptr %21, ptr %50, align 8, !tbaa !6
  br label %53

53:                                               ; preds = %12, %49
  %54 = phi ptr [ %21, %49 ], [ null, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret ptr %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @analyze_access_subtree(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = load i64, ptr %0, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !48
  %8 = add nsw i64 %7, %5
  %9 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %10) #23
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
  %22 = phi i16 [ %18, %17 ], [ %13, %19 ]
  %23 = phi i8 [ 1, %17 ], [ %20, %19 ]
  %24 = icmp eq i8 %3, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = or i16 %22, 8
  store i16 %26, ptr %12, align 8
  br label %31

27:                                               ; preds = %21
  %28 = trunc i16 %22 to i8
  %29 = lshr i8 %28, 3
  %30 = and i8 %29, 1
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i16 [ %26, %25 ], [ %22, %27 ]
  %33 = phi i8 [ 1, %25 ], [ %30, %27 ]
  %34 = and i16 %32, 128
  %35 = icmp ne i16 %34, 0
  %36 = icmp eq i8 %1, 0
  %37 = or i1 %36, %35
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !94
  %41 = tail call fastcc zeroext i8 @expr_with_var_bounded_array_refs_p(ptr noundef %40) #24, !range !16
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %42, i8 %1, i8 0
  br label %44

44:                                               ; preds = %38, %31
  %45 = phi i8 [ 0, %31 ], [ %43, %38 ]
  %46 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %83, label %49

49:                                               ; preds = %44, %62
  %50 = phi ptr [ %78, %62 ], [ %47, %44 ]
  %51 = phi i8 [ %66, %62 ], [ 0, %44 ]
  %52 = phi i8 [ %76, %62 ], [ 0, %44 ]
  %53 = phi i64 [ %63, %62 ], [ %5, %44 ]
  %54 = icmp eq i8 %52, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i64, ptr %50, align 8, !tbaa !57
  %57 = icmp slt i64 %56, %53
  br i1 %57, label %62, label %58

58:                                               ; preds = %55, %49
  %59 = getelementptr inbounds %struct.access, ptr %50, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !48
  %61 = add nsw i64 %60, %53
  br label %62

62:                                               ; preds = %55, %58
  %63 = phi i64 [ %61, %58 ], [ %53, %55 ]
  %64 = phi i8 [ %52, %58 ], [ 1, %55 ]
  %65 = tail call fastcc zeroext i8 @analyze_access_subtree(ptr noundef nonnull %50, i8 noundef zeroext %45, i8 noundef zeroext %23, i8 noundef zeroext %33) #24, !range !16
  %66 = or i8 %65, %51
  %67 = getelementptr inbounds %struct.access, ptr %50, i64 0, i32 14
  %68 = load i16, ptr %67, align 8
  %69 = load i16, ptr %12, align 8
  %70 = and i16 %68, 256
  %71 = or i16 %70, %69
  store i16 %71, ptr %12, align 8
  %72 = load i16, ptr %67, align 8
  %73 = and i16 %72, 64
  %74 = icmp eq i16 %73, 0
  %75 = zext i1 %74 to i8
  %76 = or i8 %64, %75
  %77 = getelementptr inbounds %struct.access, ptr %50, i64 0, i32 9
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %49, !llvm.loop !130

80:                                               ; preds = %62
  %81 = icmp eq i8 %66, 0
  %82 = icmp ne i8 %76, 0
  br label %83

83:                                               ; preds = %80, %44
  %84 = phi i64 [ %5, %44 ], [ %63, %80 ]
  %85 = phi i1 [ false, %44 ], [ %82, %80 ]
  %86 = phi i1 [ true, %44 ], [ %81, %80 ]
  %87 = icmp ne i8 %45, 0
  %88 = icmp ne i8 %11, 0
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %90, label %133

90:                                               ; preds = %83
  %91 = load ptr, ptr %46, align 8, !tbaa !58
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %133

93:                                               ; preds = %90
  %94 = load i16, ptr %12, align 8
  %95 = and i16 %94, 32
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = icmp eq i16 %15, 0
  %99 = and i16 %94, 8
  %100 = icmp eq i16 %99, 0
  %101 = or i1 %98, %100
  br i1 %101, label %133, label %102

102:                                              ; preds = %97, %93
  %103 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !45
  %105 = getelementptr inbounds %struct.tree_common, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !12
  %107 = load i64, ptr %0, align 8, !tbaa !57
  %108 = load ptr, ptr %9, align 8, !tbaa !47
  %109 = tail call zeroext i8 @build_ref_for_offset(ptr noundef null, ptr noundef %106, i64 noundef %107, ptr noundef %108, i8 noundef zeroext 0) #24
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %133, label %111

111:                                              ; preds = %102
  %112 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %113 = icmp eq ptr %112, null
  br i1 %113, label %130, label %114

114:                                              ; preds = %111
  %115 = load i32, ptr @dump_flags, align 4, !tbaa !10
  %116 = and i32 %115, 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %114
  %119 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 8, i64 1, ptr nonnull %112)
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %121 = load ptr, ptr %103, align 8, !tbaa !45
  tail call void @print_generic_expr(ptr noundef %120, ptr noundef %121, i32 noundef 0) #23
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %123 = load i64, ptr %0, align 8, !tbaa !57
  %124 = trunc i64 %123 to i32
  %125 = load i64, ptr %6, align 8, !tbaa !48
  %126 = trunc i64 %125 to i32
  %127 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef nonnull @.str.30, i32 noundef %124, i32 noundef %126) #24
  %128 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %129 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 17, i64 1, ptr %128)
  br label %130

130:                                              ; preds = %118, %114, %111
  %131 = load i16, ptr %12, align 8
  %132 = or i16 %131, 1024
  store i16 %132, ptr %12, align 8
  br label %136

133:                                              ; preds = %102, %97, %90, %83
  %134 = icmp slt i64 %84, %8
  %135 = select i1 %134, i1 true, i1 %85
  br label %136

136:                                              ; preds = %133, %130
  %137 = phi i1 [ false, %130 ], [ %135, %133 ]
  %138 = phi i1 [ false, %130 ], [ %86, %133 ]
  %139 = select i1 %138, i1 true, i1 %137
  %140 = load i16, ptr %12, align 8
  br i1 %139, label %143, label %141

141:                                              ; preds = %136
  %142 = or i16 %140, 64
  store i16 %142, ptr %12, align 8
  br label %157

143:                                              ; preds = %136
  %144 = and i16 %140, 8
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !45
  %149 = load i64, ptr %148, align 8
  %150 = and i64 %149, 65535
  %151 = icmp eq i64 %150, 34
  br i1 %151, label %152, label %154

152:                                              ; preds = %146, %143
  %153 = or i16 %140, 256
  store i16 %153, ptr %12, align 8
  br label %154

154:                                              ; preds = %152, %146
  %155 = xor i1 %138, true
  %156 = zext i1 %155 to i8
  br label %157

157:                                              ; preds = %154, %141
  %158 = phi i8 [ 1, %141 ], [ %156, %154 ]
  ret i8 %158
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @expr_with_var_bounded_array_refs_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #24, !range !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1, %13
  %5 = phi ptr [ %15, %13 ], [ %0, %1 ]
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 45
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %5) #23
  %11 = tail call i32 @host_integerp(ptr noundef %10, i32 noundef 0) #23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9, %4
  %14 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !12
  %16 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %15) #24, !range !16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %4, !llvm.loop !131

18:                                               ; preds = %9, %13, %1
  %19 = phi i8 [ 0, %1 ], [ 0, %13 ], [ 1, %9 ]
  ret i8 %19
}

; Function Attrs: optsize
declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_access_tree_1(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 0
  %5 = add nsw i32 %2, 1
  br label %6

6:                                                ; preds = %19, %3
  %7 = phi ptr [ %1, %3 ], [ %21, %19 ]
  br i1 %4, label %8, label %14

8:                                                ; preds = %6, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %6 ]
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %11 = tail call i32 @fputs(ptr noundef nonnull @.str.32, ptr noundef %10) #24
  %12 = add nuw nsw i32 %9, 1
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %8, !llvm.loop !132

14:                                               ; preds = %8, %6
  tail call fastcc void @dump_access(ptr noundef %0, ptr noundef %7) #24
  %15 = getelementptr inbounds %struct.access, ptr %7, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call fastcc void @dump_access_tree_1(ptr noundef %0, ptr noundef nonnull %16, i32 noundef %5) #24
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.access, ptr %7, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !129
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %6, !llvm.loop !133

23:                                               ; preds = %19
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_access(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 9, i64 1, ptr %0)
  %4 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !12
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %7) #24
  %9 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %9, i32 noundef 0) #23
  %10 = load i64, ptr %1, align 8, !tbaa !57
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, i64 noundef %10) #24
  %12 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !48
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.36, i64 noundef %13) #24
  %15 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 9, i64 1, ptr %0)
  %16 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %17, i32 noundef 0) #23
  %18 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 9, i64 1, ptr %0)
  %19 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %20, i32 noundef 0) #23
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
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %25, i32 noundef %28, i32 noundef %31, i32 noundef %34, i32 noundef %37, i32 noundef %40, i32 noundef %43, i32 noundef %46, i32 noundef %49, i32 noundef %52, i32 noundef %55) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_access_for_expr(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 118
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ %0, %1 ]
  %13 = call ptr @get_ref_base_and_extent(ptr noundef %12, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %14 = load i64, ptr %4, align 8, !tbaa !91
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %32, label %16

16:                                               ; preds = %11
  %17 = load i64, ptr %13, align 8
  %18 = and i64 %17, 65535
  %19 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !10
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %13, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !12
  %26 = call i32 @bitmap_bit_p(ptr noundef %23, i32 noundef %25) #23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i64, ptr %2, align 8, !tbaa !91
  %30 = load i64, ptr %4, align 8, !tbaa !91
  %31 = call fastcc ptr @get_var_base_offset_size_access(ptr noundef nonnull %13, i64 noundef %29, i64 noundef %30) #24
  br label %32

32:                                               ; preds = %22, %11, %16, %28
  %33 = phi ptr [ %31, %28 ], [ null, %16 ], [ null, %11 ], [ null, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_access_replacement(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 1024
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1709, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !134
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @create_access_replacement(ptr noundef nonnull %0) #24
  store ptr %12, ptr %8, align 8, !tbaa !134
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %9, %7 ]
  ret ptr %14
}

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @generate_subtree_copies(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = icmp eq i64 %4, 0
  %11 = add nsw i64 %4, %3
  %12 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %13 = icmp eq i8 %6, 0
  %14 = icmp eq i8 %7, 0
  %15 = zext i1 %14 to i8
  %16 = zext i1 %14 to i32
  br label %17

17:                                               ; preds = %84, %8
  %18 = phi ptr [ %0, %8 ], [ %86, %84 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  store ptr %1, ptr %9, align 8, !tbaa !6
  br i1 %10, label %23, label %19

19:                                               ; preds = %17
  %20 = load i64, ptr %18, align 8, !tbaa !57
  %21 = icmp slt i64 %20, %11
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  br label %88

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.access, ptr %18, i64 0, i32 14
  %25 = load i16, ptr %24, align 8
  %26 = and i16 %25, 1024
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %79, label %38

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.access, ptr %18, i64 0, i32 14
  %30 = load i16, ptr %29, align 8
  %31 = and i16 %30, 1024
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %79, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.access, ptr %18, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !48
  %36 = add nsw i64 %35, %20
  %37 = icmp sgt i64 %36, %3
  br i1 %37, label %38, label %79

38:                                               ; preds = %23, %33
  %39 = phi ptr [ %29, %33 ], [ %24, %23 ]
  %40 = call fastcc ptr @get_access_replacement(ptr noundef nonnull %18) #24
  %41 = load ptr, ptr %12, align 8, !tbaa !12
  %42 = load i64, ptr %18, align 8, !tbaa !57
  %43 = sub nsw i64 %42, %2
  %44 = getelementptr inbounds %struct.access, ptr %18, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !47
  %46 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %9, ptr noundef %41, i64 noundef %43, ptr noundef %45, i8 noundef zeroext 0) #24
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2190, ptr noundef nonnull @.str.1) #23
  br label %49

49:                                               ; preds = %38, %48
  br i1 %13, label %60, label %50

50:                                               ; preds = %49
  %51 = load i16, ptr %39, align 8
  %52 = and i16 %51, 512
  %53 = icmp eq i16 %52, 0
  %54 = load ptr, ptr %9, align 8, !tbaa !6
  br i1 %53, label %57, label %55

55:                                               ; preds = %50
  %56 = call ptr @force_gimple_operand_gsi(ptr noundef %5, ptr noundef %54, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext %15, i32 noundef %16) #23
  store ptr %56, ptr %9, align 8, !tbaa !6
  br label %57

57:                                               ; preds = %55, %50
  %58 = phi ptr [ %56, %55 ], [ %54, %50 ]
  %59 = call ptr @gimple_build_assign_stat(ptr noundef %40, ptr noundef %58) #23
  br label %72

60:                                               ; preds = %49
  %61 = load i64, ptr %40, align 8
  %62 = or i64 %61, 8388608
  store i64 %62, ptr %40, align 8
  %63 = load i16, ptr %39, align 8
  %64 = and i16 %63, 512
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = call ptr @force_gimple_operand_gsi(ptr noundef %5, ptr noundef nonnull %40, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext %15, i32 noundef %16) #23
  br label %68

68:                                               ; preds = %66, %60
  %69 = phi ptr [ %67, %66 ], [ %40, %60 ]
  %70 = load ptr, ptr %9, align 8, !tbaa !6
  %71 = call ptr @gimple_build_assign_stat(ptr noundef %70, ptr noundef %69) #23
  br label %72

72:                                               ; preds = %68, %57
  %73 = phi ptr [ %59, %57 ], [ %71, %68 ]
  br i1 %14, label %75, label %74

74:                                               ; preds = %72
  call void @gsi_insert_after(ptr noundef %5, ptr noundef %73, i32 noundef 0) #23
  br label %76

75:                                               ; preds = %72
  call void @gsi_insert_before(ptr noundef %5, ptr noundef %73, i32 noundef 1) #23
  br label %76

76:                                               ; preds = %75, %74
  call fastcc void @update_stmt(ptr noundef %73) #24
  %77 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 2), align 4, !tbaa !20
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 2), align 4, !tbaa !20
  br label %79

79:                                               ; preds = %28, %76, %33, %23
  %80 = getelementptr inbounds %struct.access, ptr %18, i64 0, i32 8
  %81 = load ptr, ptr %80, align 8, !tbaa !58
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  call fastcc void @generate_subtree_copies(ptr noundef nonnull %81, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7) #24
  br label %84

84:                                               ; preds = %79, %83
  %85 = getelementptr inbounds %struct.access, ptr %18, i64 0, i32 9
  %86 = load ptr, ptr %85, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %17, !llvm.loop !135

88:                                               ; preds = %84, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_var_base_offset_size_access(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @get_first_repr_for_decl(ptr noundef %0) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3, %13
  %7 = phi ptr [ %15, %13 ], [ %4, %3 ]
  %8 = load i64, ptr %7, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.access, ptr %7, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !48
  %11 = add nsw i64 %10, %8
  %12 = icmp sgt i64 %11, %1
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.access, ptr %7, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !61
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %6, !llvm.loop !136

17:                                               ; preds = %6
  %18 = tail call fastcc ptr @find_access_in_subtree(ptr noundef nonnull %7, i64 noundef %1, i64 noundef %2) #24
  br label %19

19:                                               ; preds = %13, %3, %17
  %20 = phi ptr [ %18, %17 ], [ null, %3 ], [ null, %13 ]
  ret ptr %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @find_access_in_subtree(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #13 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %17, %3
  %6 = phi ptr [ %0, %3 ], [ %18, %17 ]
  %7 = load i64, ptr %6, align 8, !tbaa !57
  %8 = icmp eq i64 %7, %1
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !48
  %12 = icmp eq i64 %11, %2
  br i1 %12, label %28, label %13

13:                                               ; preds = %5, %9
  %14 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %13, %24
  %18 = phi ptr [ %26, %24 ], [ %15, %13 ]
  %19 = load i64, ptr %18, align 8, !tbaa !57
  %20 = getelementptr inbounds %struct.access, ptr %18, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !48
  %22 = add nsw i64 %21, %19
  %23 = icmp sgt i64 %22, %1
  br i1 %23, label %5, label %24, !llvm.loop !137

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.access, ptr %18, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %17, !llvm.loop !138

28:                                               ; preds = %13, %9, %24, %3
  %29 = phi ptr [ null, %3 ], [ null, %24 ], [ null, %13 ], [ %6, %9 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_access_replacement(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = tail call ptr @create_tmp_var(ptr noundef %3, ptr noundef nonnull @.str.41) #23
  tail call fastcc void @get_var_ann(ptr noundef %4) #24
  %5 = tail call zeroext i8 @add_referenced_var(ptr noundef %4) #23
  tail call void @mark_sym_for_renaming(ptr noundef %4) #23
  %6 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 512
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !tbaa !47
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -13
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = or i64 %19, 134217728
  store i64 %20, ptr %18, align 8
  br label %21

21:                                               ; preds = %10, %17, %1
  %22 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !12
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 1
  store i32 %25, ptr %26, align 8, !tbaa !12
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = or i64 %28, 4096
  store i64 %29, ptr %27, align 8
  %30 = load ptr, ptr %22, align 8, !tbaa !45
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 1024
  %34 = and i64 %29, -1025
  %35 = or disjoint i64 %33, %34
  store i64 %35, ptr %27, align 8
  %36 = load ptr, ptr %22, align 8, !tbaa !45
  %37 = getelementptr inbounds %struct.tree_decl_minimal, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !12
  %39 = icmp eq ptr %38, null
  br i1 %39, label %75, label %40

40:                                               ; preds = %21
  %41 = getelementptr inbounds %struct.tree_decl_common, ptr %36, i64 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 5120
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !94
  %48 = tail call fastcc ptr @make_fancy_name(ptr noundef %47) #24
  %49 = tail call ptr @get_identifier(ptr noundef %48) #23
  %50 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !12
  %51 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 1), align 8, !tbaa !64
  %52 = ptrtoint ptr %48 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  store i64 %54, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !66
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %45
  %57 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !67
  %58 = ptrtoint ptr %57 to i64
  %59 = sub i64 %58, %53
  %60 = icmp slt i64 %54, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = getelementptr inbounds i8, ptr %51, i64 %54
  store ptr %62, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 2), align 8, !tbaa !68
  store ptr %62, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  br label %65

63:                                               ; preds = %56, %45
  %64 = getelementptr inbounds i8, ptr %51, i64 %54
  tail call void @obstack_free(ptr noundef nonnull @name_obstack, ptr noundef %64) #23
  br label %65

65:                                               ; preds = %63, %61
  %66 = load ptr, ptr %46, align 8, !tbaa !94
  tail call void @decl_debug_expr_insert(ptr noundef nonnull %4, ptr noundef %66) #23
  %67 = load i64, ptr %27, align 8
  %68 = or i64 %67, 16384
  store i64 %68, ptr %27, align 8
  %69 = load ptr, ptr %22, align 8, !tbaa !45
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 8388608
  %72 = load i64, ptr %4, align 8
  %73 = and i64 %72, -8388609
  %74 = or disjoint i64 %73, %71
  br label %78

75:                                               ; preds = %40, %21
  %76 = load i64, ptr %4, align 8
  %77 = or i64 %76, 8388608
  br label %78

78:                                               ; preds = %75, %65
  %79 = phi i64 [ %74, %65 ], [ %77, %75 ]
  store i64 %79, ptr %4, align 8
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %81 = icmp eq ptr %80, null
  br i1 %81, label %96, label %82

82:                                               ; preds = %78
  %83 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 26, i64 1, ptr nonnull %80)
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %85 = load ptr, ptr %22, align 8, !tbaa !45
  tail call void @print_generic_expr(ptr noundef %84, ptr noundef %85, i32 noundef 0) #23
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %87 = load i64, ptr %0, align 8, !tbaa !57
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 1
  %90 = load i64, ptr %89, align 8, !tbaa !48
  %91 = trunc i64 %90 to i32
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.30, i32 noundef %88, i32 noundef %91) #24
  %93 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %93, ptr noundef nonnull %4, i32 noundef 0) #23
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %95 = tail call i32 @fputc(i32 10, ptr %94)
  br label %96

96:                                               ; preds = %82, %78
  %97 = load i32, ptr @sra_stats, align 4, !tbaa !17
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr @sra_stats, align 4, !tbaa !17
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_var_ann(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %13

8:                                                ; preds = %1
  %9 = and i64 %2, 65535
  %10 = icmp eq i64 %9, 36
  %11 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  br i1 %10, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 144, ptr noundef nonnull @.str.1) #23
  unreachable

13:                                               ; preds = %8, %6, %4
  %14 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call ptr @create_var_ann(ptr noundef nonnull %0) #23
  br label %19

19:                                               ; preds = %13, %17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_fancy_name(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  tail call fastcc void @make_fancy_name_1(ptr noundef %0) #24
  %2 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  %3 = getelementptr inbounds i8, ptr %2, i64 1
  %4 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !67
  %5 = icmp ugt ptr %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull @name_obstack, i32 noundef 1) #23
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi ptr [ %2, %1 ], [ %7, %6 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %10, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  store i8 0, ptr %9, align 1, !tbaa !12
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 2), align 8, !tbaa !68
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 10), align 8
  %16 = or i8 %15, 2
  store i8 %16, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 10), align 8
  br label %17

17:                                               ; preds = %8, %14
  %18 = ptrtoint ptr %12 to i64
  store i64 %18, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !66
  %19 = ptrtoint ptr %11 to i64
  %20 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 6), align 8, !tbaa !139
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = xor i32 %20, -1
  %24 = sext i32 %23 to i64
  %25 = and i64 %22, %24
  %26 = inttoptr i64 %25 to ptr
  %27 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 1), align 8, !tbaa !64
  %28 = ptrtoint ptr %27 to i64
  %29 = sub i64 %25, %28
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !67
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %31, %28
  %33 = icmp sgt i64 %29, %32
  %34 = select i1 %33, ptr %30, ptr %26
  store ptr %34, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8
  store ptr %34, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 2), align 8, !tbaa !68
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @decl_debug_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_var_ann(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_fancy_name_1(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #25
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !10
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call fastcc void @make_fancy_decl_name(ptr noundef nonnull %0) #24
  br label %62

9:                                                ; preds = %1
  %10 = trunc i64 %3 to i16
  switch i16 %10, label %62 [
    i16 41, label %11
    i16 45, label %25
    i16 42, label %61
    i16 43, label %61
    i16 44, label %61
  ]

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  tail call fastcc void @make_fancy_name_1(ptr noundef %13) #24
  %14 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  %16 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !67
  %17 = icmp ugt ptr %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  tail call void @_obstack_newchunk(ptr noundef nonnull @name_obstack, i32 noundef 1) #23
  %19 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi ptr [ %14, %11 ], [ %19, %18 ]
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %22, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  store i8 36, ptr %21, align 1, !tbaa !12
  %23 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !12
  tail call fastcc void @make_fancy_decl_name(ptr noundef %24) #24
  br label %62

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !12
  tail call fastcc void @make_fancy_name_1(ptr noundef %27) #24
  %28 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !67
  %31 = icmp ugt ptr %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  tail call void @_obstack_newchunk(ptr noundef nonnull @name_obstack, i32 noundef 1) #23
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  br label %34

34:                                               ; preds = %25, %32
  %35 = phi ptr [ %28, %25 ], [ %33, %32 ]
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %36, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  store i8 36, ptr %35, align 1, !tbaa !12
  %37 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !12
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 23
  br i1 %41, label %42, label %62

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.tree_int_cst, ptr %38, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !12
  %45 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %44) #24
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24
  store i64 %46, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !66
  %47 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  %48 = getelementptr inbounds i8, ptr %47, i64 %46
  %49 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !67
  %50 = icmp ugt ptr %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = trunc i64 %46 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull @name_obstack, i32 noundef %52) #23
  %53 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  %54 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !66
  br label %55

55:                                               ; preds = %42, %51
  %56 = phi i64 [ %46, %42 ], [ %54, %51 ]
  %57 = phi ptr [ %47, %42 ], [ %53, %51 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %57, ptr nonnull align 16 %2, i64 %56, i1 false)
  %58 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !66
  %59 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  %60 = getelementptr inbounds i8, ptr %59, i64 %58
  store ptr %60, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  br label %62

61:                                               ; preds = %9, %9, %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1358, ptr noundef nonnull @.str.1) #23
  br label %62

62:                                               ; preds = %20, %55, %61, %34, %9, %8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #25
  ret void
}

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_fancy_decl_name(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #25
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_identifier, ptr %4, i64 0, i32 1
  %8 = getelementptr inbounds %struct.tree_identifier, ptr %4, i64 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !12
  %10 = zext i32 %9 to i64
  store i64 %10, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !66
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  %12 = getelementptr inbounds i8, ptr %11, i64 %10
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !67
  %14 = icmp ugt ptr %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %6
  tail call void @_obstack_newchunk(ptr noundef nonnull @name_obstack, i32 noundef %9) #23
  %16 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  %17 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !66
  br label %18

18:                                               ; preds = %6, %15
  %19 = phi i64 [ %10, %6 ], [ %17, %15 ]
  %20 = phi ptr [ %11, %6 ], [ %16, %15 ]
  %21 = load ptr, ptr %7, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %21, i64 %19, i1 false)
  br label %38

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !12
  %25 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %24) #24
  %26 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24
  store i64 %26, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !66
  %27 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  %28 = getelementptr inbounds i8, ptr %27, i64 %26
  %29 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !67
  %30 = icmp ugt ptr %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = trunc i64 %26 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull @name_obstack, i32 noundef %32) #23
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  %34 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !66
  br label %35

35:                                               ; preds = %22, %31
  %36 = phi i64 [ %26, %22 ], [ %34, %31 ]
  %37 = phi ptr [ %27, %22 ], [ %33, %31 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr nonnull align 16 %2, i64 %36, i1 false)
  br label %38

38:                                               ; preds = %35, %18
  %39 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !66
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  %41 = getelementptr inbounds i8, ptr %40, i64 %39
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #25
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !12
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @sra_modify_constructor_assign(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %3) #24
  %5 = tail call fastcc ptr @get_access_for_expr(ptr noundef %4) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !6
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %8) #24
  %10 = getelementptr inbounds %struct.tree_constructor, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %0, align 8, !tbaa !6
  %15 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #24
  %16 = getelementptr inbounds %struct.tree_constructor, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !12
  br label %18

18:                                               ; preds = %7, %13
  %19 = phi ptr [ %17, %13 ], [ null, %7 ]
  %20 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %19) #24
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = tail call fastcc zeroext i8 @access_has_children_p(ptr noundef nonnull %5) #24, !range !16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.access, ptr %5, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  %28 = getelementptr inbounds %struct.access, ptr %5, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  tail call fastcc void @generate_subtree_copies(ptr noundef %27, ptr noundef %29, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #24
  br label %38

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.access, ptr %5, i64 0, i32 14
  %32 = load i16, ptr %31, align 8
  %33 = and i16 %32, 64
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  tail call fastcc void @init_subtree_with_zero(ptr noundef nonnull %5, ptr noundef %1, i8 noundef zeroext 0) #24
  %36 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @unlink_stmt_vdef(ptr noundef %36) #23
  tail call void @gsi_remove(ptr noundef %1, i8 noundef zeroext 1) #23
  br label %38

37:                                               ; preds = %30
  tail call fastcc void @init_subtree_with_zero(ptr noundef nonnull %5, ptr noundef %1, i8 noundef zeroext 1) #24
  br label %38

38:                                               ; preds = %22, %25, %2, %37, %35
  %39 = phi i32 [ 2, %35 ], [ 1, %37 ], [ 0, %2 ], [ 1, %25 ], [ 1, %22 ]
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #24
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !12
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @access_has_children_p(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %3 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ref_expr_for_all_replacements_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 {
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
  %12 = load ptr, ptr %4, align 8, !tbaa !12
  %13 = load i64, ptr %6, align 8, !tbaa !57
  %14 = sub nsw i64 %13, %2
  %15 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = tail call zeroext i8 @build_ref_for_offset(ptr noundef null, ptr noundef %12, i64 noundef %14, ptr noundef %16, i8 noundef zeroext 0) #24
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %11, %5
  %20 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = tail call fastcc zeroext i8 @ref_expr_for_all_replacements_p(ptr noundef nonnull %21, ptr noundef %1, i64 noundef %2) #24, !range !16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23, %19
  %27 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !129
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %5, !llvm.loop !140

30:                                               ; preds = %26, %23, %11
  %31 = phi i8 [ 0, %11 ], [ 0, %23 ], [ 1, %26 ]
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @handle_unscalarized_data_in_subtree(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 256
  %7 = icmp eq i16 %6, 0
  %8 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  br i1 %7, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  tail call fastcc void @generate_subtree_copies(ptr noundef %9, ptr noundef %12, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #24
  br label %15

13:                                               ; preds = %3
  %14 = load i64, ptr %0, align 8, !tbaa !57
  tail call fastcc void @generate_subtree_copies(ptr noundef %9, ptr noundef %1, i64 noundef %14, i64 noundef 0, i64 noundef 0, ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #24
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ 1, %10 ], [ 2, %13 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @load_assign_lhs_subreplacements(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !10
  %16 = add i32 %15, -4
  %17 = icmp ult i32 %16, 7
  br i1 %17, label %18, label %21

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !12
  br label %21

21:                                               ; preds = %8, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %8 ]
  %23 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 2
  br label %24

24:                                               ; preds = %102, %21
  %25 = phi ptr [ %0, %21 ], [ %104, %102 ]
  %26 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 14
  %27 = load i16, ptr %26, align 8
  %28 = and i16 %27, 1024
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %89, label %30

30:                                               ; preds = %24
  %31 = load i64, ptr %25, align 8, !tbaa !57
  %32 = sub nsw i64 %31, %2
  %33 = add nsw i64 %32, %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  %34 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !48
  %36 = call fastcc ptr @find_access_in_subtree(ptr noundef %1, i64 noundef %33, i64 noundef %35) #24
  %37 = icmp eq ptr %36, null
  br i1 %37, label %55, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.access, ptr %36, i64 0, i32 14
  %40 = load i16, ptr %39, align 8
  %41 = and i16 %40, 1024
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %38
  %44 = call fastcc ptr @get_access_replacement(ptr noundef nonnull %36) #24
  store ptr %44, ptr %9, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !47
  %47 = getelementptr inbounds %struct.access, ptr %36, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !47
  %49 = call zeroext i8 @useless_type_conversion_p(ptr noundef %46, ptr noundef %48) #23
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %83

51:                                               ; preds = %43
  %52 = load ptr, ptr %45, align 8, !tbaa !47
  %53 = load ptr, ptr %9, align 8, !tbaa !6
  %54 = call ptr @fold_build1_stat_loc(i32 noundef %22, i32 noundef 118, ptr noundef %52, ptr noundef %53) #23
  store ptr %54, ptr %9, align 8, !tbaa !6
  br label %83

55:                                               ; preds = %38, %30
  %56 = load i32, ptr %6, align 4, !tbaa !10
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call fastcc i32 @handle_unscalarized_data_in_subtree(ptr noundef %1, ptr noundef %7, ptr noundef %4) #24, !range !60
  store i32 %59, ptr %6, align 4, !tbaa !10
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i32 [ %59, %58 ], [ %56, %55 ]
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !45
  store ptr %65, ptr %9, align 8, !tbaa !6
  %66 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !12
  %68 = load i64, ptr %25, align 8, !tbaa !57
  %69 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !47
  %71 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %9, ptr noundef %67, i64 noundef %68, ptr noundef %70, i8 noundef zeroext 0) #24
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %63
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2462, ptr noundef nonnull @.str.1) #23
  br label %83

74:                                               ; preds = %60
  %75 = load ptr, ptr %23, align 8, !tbaa !45
  store ptr %75, ptr %9, align 8, !tbaa !6
  %76 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !12
  %78 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !47
  %80 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %9, ptr noundef %77, i64 noundef %33, ptr noundef %79, i8 noundef zeroext 0) #24
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2472, ptr noundef nonnull @.str.1) #23
  br label %83

83:                                               ; preds = %82, %74, %73, %63, %43, %51
  %84 = call fastcc ptr @get_access_replacement(ptr noundef nonnull %25) #24
  %85 = load ptr, ptr %9, align 8, !tbaa !6
  %86 = call ptr @gimple_build_assign_stat(ptr noundef %84, ptr noundef %85) #23
  call void @gsi_insert_after(ptr noundef %5, ptr noundef %86, i32 noundef 0) #23
  call fastcc void @update_stmt(ptr noundef %86) #24
  %87 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 3), align 4, !tbaa !21
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 3), align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  br label %97

89:                                               ; preds = %24
  %90 = load i32, ptr %6, align 4, !tbaa !10
  %91 = icmp eq i32 %90, 0
  %92 = and i16 %27, 80
  %93 = icmp eq i16 %92, 16
  %94 = and i1 %93, %91
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = call fastcc i32 @handle_unscalarized_data_in_subtree(ptr noundef %1, ptr noundef %7, ptr noundef %4) #24, !range !60
  store i32 %96, ptr %6, align 4, !tbaa !10
  br label %97

97:                                               ; preds = %89, %95, %83
  %98 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 8
  %99 = load ptr, ptr %98, align 8, !tbaa !58
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  call fastcc void @load_assign_lhs_subreplacements(ptr noundef nonnull %99, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #24
  br label %102

102:                                              ; preds = %101, %97
  %103 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 9
  %104 = load ptr, ptr %103, align 8, !tbaa !129
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %24, !llvm.loop !141

106:                                              ; preds = %102
  ret void
}

; Function Attrs: optsize
declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !142
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_subtree_with_zero(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @get_access_replacement(ptr noundef nonnull %0) #24
  %10 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !6
  %13 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %11, ptr noundef %12) #23
  %14 = tail call ptr @gimple_build_assign_stat(ptr noundef %9, ptr noundef %13) #23
  %15 = icmp eq i8 %2, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  tail call void @gsi_insert_after(ptr noundef %1, ptr noundef %14, i32 noundef 0) #23
  br label %18

17:                                               ; preds = %8
  tail call void @gsi_insert_before(ptr noundef %1, ptr noundef %14, i32 noundef 1) #23
  br label %18

18:                                               ; preds = %17, %16
  tail call fastcc void @update_stmt(ptr noundef %14) #24
  br label %19

19:                                               ; preds = %18, %3
  %20 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %19 ]
  tail call fastcc void @init_subtree_with_zero(ptr noundef nonnull %24, ptr noundef %1, i8 noundef zeroext %2) #24
  %25 = getelementptr inbounds %struct.access, ptr %24, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !144

28:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #24
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1665, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #24
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_seq_alloc() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #24
  store ptr %3, ptr %0, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !75
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !83
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #24
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !76
  ret void
}

; Function Attrs: optsize
declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #24, !range !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 645, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !145
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #24
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #24
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !146
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pointer_map_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal noundef zeroext i8 @delete_base_accesses(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #18 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %5, ptr %4, align 8, !tbaa !6
  call fastcc void @VEC_access_p_heap_free(ptr noundef nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret i8 1
}

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_access_p_heap_free(ptr nocapture noundef %0) unnamed_addr #18 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @late_intra_sra() #0 {
  store i32 2, ptr @sra_mode, align 4, !tbaa !10
  %1 = tail call fastcc i32 @perform_intra_sra() #24, !range !15
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @ipa_early_sra_gate() #3 {
  %1 = load i32, ptr @flag_ipa_sra, align 4, !tbaa !10
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ipa_early_sra() #0 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %3 = tail call ptr @cgraph_node(ptr noundef %2) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %4 = tail call fastcc zeroext i8 @ipa_sra_preliminary_function_checks(ptr noundef %3) #24, !range !16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %70, label %6

6:                                                ; preds = %0
  tail call fastcc void @sra_initialize() #24
  store i32 0, ptr @sra_mode, align 4, !tbaa !10
  %7 = tail call fastcc zeroext i8 @find_param_candidates() #24, !range !16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %68, label %12

12:                                               ; preds = %9
  %13 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 36, i64 1, ptr nonnull %10)
  br label %68

14:                                               ; preds = %6
  %15 = tail call fastcc zeroext i8 @all_callers_have_enough_arguments_p(ptr noundef %3) #24, !range !16
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %68, label %20

20:                                               ; preds = %17
  %21 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 57, i64 1, ptr nonnull %18)
  br label %68

22:                                               ; preds = %14
  %23 = load i32, ptr @func_param_count, align 4, !tbaa !10
  %24 = load ptr, ptr @cfun, align 8, !tbaa !6
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !25
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !148
  %29 = mul nsw i32 %28, %23
  %30 = sext i32 %29 to i64
  %31 = tail call ptr @xcalloc(i64 noundef %30, i64 noundef 8) #23
  store ptr %31, ptr @bb_dereferences, align 8, !tbaa !6
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %32, ptr @final_bbs, align 8, !tbaa !6
  %33 = tail call fastcc zeroext i8 @scan_function(ptr noundef nonnull @build_access_from_expr, ptr noundef nonnull @build_accesses_from_assign, ptr noundef null, i8 noundef zeroext 1, ptr noundef null) #24
  %34 = load i1, ptr @encountered_apply_args, align 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %64, label %38

38:                                               ; preds = %35
  %39 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 40, i64 1, ptr nonnull %36)
  br label %64

40:                                               ; preds = %22
  %41 = load i1, ptr @encountered_unchangable_recursive_call, align 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45

45:                                               ; preds = %42
  %46 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 61, i64 1, ptr nonnull %43)
  br label %64

47:                                               ; preds = %40
  %48 = tail call fastcc ptr @analyze_all_param_acesses() #24
  store ptr %48, ptr %1, align 8, !tbaa !6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  tail call void @ipa_dump_param_adjustments(ptr noundef nonnull %51, ptr noundef nonnull %48, ptr noundef %54) #23
  br label %55

55:                                               ; preds = %53, %50
  tail call fastcc void @modify_function(ptr noundef %3, ptr noundef nonnull %48) #24
  call fastcc void @VEC_ipa_parm_adjustment_t_heap_free(ptr noundef nonnull %1) #24
  %56 = load ptr, ptr @cfun, align 8, !tbaa !6
  %57 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 6), align 4, !tbaa !149
  tail call void @statistics_counter_event(ptr noundef %56, ptr noundef nonnull @.str.53, i32 noundef %57) #23
  %58 = load ptr, ptr @cfun, align 8, !tbaa !6
  %59 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 7), align 4, !tbaa !150
  tail call void @statistics_counter_event(ptr noundef %58, ptr noundef nonnull @.str.54, i32 noundef %59) #23
  %60 = load ptr, ptr @cfun, align 8, !tbaa !6
  %61 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 8), align 4, !tbaa !151
  tail call void @statistics_counter_event(ptr noundef %60, ptr noundef nonnull @.str.55, i32 noundef %61) #23
  %62 = load ptr, ptr @cfun, align 8, !tbaa !6
  %63 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 9), align 4, !tbaa !152
  tail call void @statistics_counter_event(ptr noundef %62, ptr noundef nonnull @.str.56, i32 noundef %63) #23
  br label %64

64:                                               ; preds = %47, %42, %45, %35, %38, %55
  %65 = phi i32 [ 0, %38 ], [ 0, %35 ], [ 0, %45 ], [ 0, %42 ], [ 2048, %55 ], [ 0, %47 ]
  %66 = load ptr, ptr @final_bbs, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %66) #23
  store ptr null, ptr @final_bbs, align 8, !tbaa !6
  %67 = load ptr, ptr @bb_dereferences, align 8, !tbaa !6
  tail call void @free(ptr noundef %67) #24
  br label %68

68:                                               ; preds = %17, %20, %9, %12, %64
  %69 = phi i32 [ %65, %64 ], [ 0, %20 ], [ 0, %17 ], [ 0, %12 ], [ 0, %9 ]
  tail call fastcc void @sra_deinitialize() #24
  br label %70

70:                                               ; preds = %0, %68
  %71 = phi i32 [ %69, %68 ], [ 0, %0 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret i32 %71
}

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ipa_sra_preliminary_function_checks(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call zeroext i8 @cgraph_node_can_be_local_p(ptr noundef %0) #23
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %63, label %7

7:                                                ; preds = %4
  %8 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 45, i64 1, ptr nonnull %5)
  br label %63

9:                                                ; preds = %1
  %10 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 512
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %63, label %18

18:                                               ; preds = %15
  %19 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 30, i64 1, ptr nonnull %16)
  br label %63

20:                                               ; preds = %9
  %21 = load ptr, ptr %0, align 8, !tbaa !153
  %22 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %21, i64 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 33554432
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %26, %20
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !161
  %34 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.param_info, ptr %34, i64 3, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !162
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %40 = icmp eq ptr %39, null
  br i1 %40, label %63, label %41

41:                                               ; preds = %38
  %42 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 41, i64 1, ptr nonnull %39)
  br label %63

43:                                               ; preds = %31, %26
  %44 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !164
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %63, label %50

50:                                               ; preds = %47
  %51 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 50, i64 1, ptr nonnull %48)
  br label %63

52:                                               ; preds = %43
  %53 = load ptr, ptr @cfun, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 20
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 4194304
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 23, i64 1, ptr nonnull %59)
  br label %63

63:                                               ; preds = %52, %58, %61, %47, %50, %38, %41, %15, %18, %4, %7
  %64 = phi i8 [ 0, %7 ], [ 0, %4 ], [ 0, %18 ], [ 0, %15 ], [ 0, %41 ], [ 0, %38 ], [ 0, %50 ], [ 0, %47 ], [ 0, %61 ], [ 0, %58 ], [ 1, %52 ]
  ret i8 %64
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_param_candidates() unnamed_addr #0 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %85, label %5

5:                                                ; preds = %0, %80
  %6 = phi ptr [ %83, %80 ], [ %3, %0 ]
  %7 = phi i8 [ %81, %80 ], [ 0, %0 ]
  %8 = phi i32 [ %11, %80 ], [ 0, %0 ]
  %9 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = add nuw nsw i32 %8, 1
  %12 = load i64, ptr %6, align 8
  %13 = and i64 %12, 786432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %80

15:                                               ; preds = %5
  %16 = tail call fastcc zeroext i8 @is_va_list_type(ptr noundef %10) #24, !range !16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %80

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @is_unused_scalar_param(ptr noundef nonnull %6) #24, !range !16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %80

21:                                               ; preds = %18
  %22 = load i64, ptr %10, align 8
  %23 = trunc i64 %22 to i16
  switch i16 %23, label %80 [
    i16 10, label %24
    i16 12, label %24
    i16 15, label %42
    i16 16, label %42
    i16 17, label %42
    i16 18, label %42
  ]

24:                                               ; preds = %21, %21
  %25 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = icmp ne i64 %28, 20
  %30 = and i64 %27, 524288
  %31 = icmp eq i64 %30, 0
  %32 = and i1 %29, %31
  br i1 %32, label %33, label %80

33:                                               ; preds = %24
  %34 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %6) #23
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %80, label %36

36:                                               ; preds = %33
  %37 = tail call fastcc zeroext i8 @is_va_list_type(ptr noundef nonnull %26) #24, !range !16
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %80

39:                                               ; preds = %36
  %40 = tail call fastcc zeroext i8 @ptr_parm_has_direct_uses(ptr noundef nonnull %6) #24, !range !16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %21, %21, %21, %21, %39
  %43 = phi ptr [ %26, %39 ], [ %10, %21 ], [ %10, %21 ], [ %10, %21 ], [ %10, %21 ]
  %44 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !12
  %46 = icmp eq ptr %45, null
  br i1 %46, label %80, label %47

47:                                               ; preds = %42
  %48 = tail call i32 @host_integerp(ptr noundef nonnull %45, i32 noundef 1) #23
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %80, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %44, align 8, !tbaa !12
  %52 = tail call i64 @tree_low_cst(ptr noundef %51, i32 noundef 1) #23
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %80, label %54

54:                                               ; preds = %50
  %55 = load i64, ptr %43, align 8
  %56 = trunc i64 %55 to i32
  %57 = and i32 %56, 65535
  %58 = add nsw i32 %57, -15
  %59 = icmp ult i32 %58, 4
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = tail call fastcc zeroext i8 @type_internals_preclude_sra_p(ptr noundef nonnull %43) #24
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %54, %60
  %64 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !12
  %67 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %64, i32 noundef %66) #23
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %69 = icmp eq ptr %68, null
  br i1 %69, label %80, label %70

70:                                               ; preds = %63
  %71 = load i32, ptr @dump_flags, align 4, !tbaa !10
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %65, align 4, !tbaa !12
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %68, ptr noundef nonnull @.str.11, i32 noundef %75) #24
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %77, ptr noundef nonnull %6, i32 noundef 0) #23
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %79 = tail call i32 @fputc(i32 10, ptr %78)
  br label %80

80:                                               ; preds = %63, %70, %74, %42, %47, %50, %60, %21, %24, %33, %36, %39, %18, %5, %15
  %81 = phi i8 [ %7, %15 ], [ %7, %5 ], [ 1, %18 ], [ %7, %39 ], [ %7, %36 ], [ %7, %33 ], [ %7, %24 ], [ %7, %21 ], [ %7, %60 ], [ %7, %50 ], [ %7, %47 ], [ %7, %42 ], [ 1, %74 ], [ 1, %70 ], [ 1, %63 ]
  %82 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !12
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %5, !llvm.loop !165

85:                                               ; preds = %80, %0
  %86 = phi i32 [ 0, %0 ], [ %11, %80 ]
  %87 = phi i8 [ 0, %0 ], [ %81, %80 ]
  store i32 %86, ptr @func_param_count, align 4, !tbaa !10
  ret i8 %87
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @all_callers_have_enough_arguments_p(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %9

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9, !llvm.loop !166

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !167
  %13 = tail call fastcc zeroext i8 @callsite_has_enough_arguments_p(ptr noundef %12) #24, !range !16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %5

15:                                               ; preds = %9, %5, %1
  %16 = phi i8 [ 1, %1 ], [ 1, %5 ], [ 0, %9 ]
  ret i8 %16
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @analyze_all_param_acesses() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = call fastcc i32 @splice_all_param_accesses(ptr noundef nonnull %1) #24
  switch i32 %2, label %5 [
    i32 0, label %74
    i32 4, label %3
  ]

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !6
  tail call fastcc void @analyze_caller_dereference_legality(ptr noundef %4) #24
  tail call fastcc void @analyze_modified_params(ptr noundef %4) #24
  br label %5

5:                                                ; preds = %0, %3
  %6 = load i32, ptr @func_param_count, align 4, !tbaa !10
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %62

8:                                                ; preds = %5
  %9 = load ptr, ptr %1, align 8
  br label %10

10:                                               ; preds = %8, %51
  %11 = phi i8 [ 0, %8 ], [ %53, %51 ]
  %12 = phi i32 [ 0, %8 ], [ %52, %51 ]
  %13 = phi i32 [ 0, %8 ], [ %54, %51 ]
  %14 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef %9, i32 noundef %13) #24
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %10
  %17 = tail call fastcc zeroext i8 @no_accesses_p(ptr noundef nonnull %14) #24, !range !16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.access, ptr %14, i64 0, i32 14
  %21 = load i16, ptr %20, align 8
  %22 = and i16 %21, 4096
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = add nsw i32 %12, 1
  %26 = and i16 %21, 10240
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call fastcc void @VEC_access_p_base_replace(ptr noundef %9, i32 noundef %13) #24
  br label %51

29:                                               ; preds = %24
  %30 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 7), align 4, !tbaa !150
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 7), align 4, !tbaa !150
  br label %51

32:                                               ; preds = %19
  %33 = tail call fastcc i32 @decide_one_param_reduction(ptr noundef nonnull %14) #24
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  tail call fastcc void @VEC_access_p_base_replace(ptr noundef %9, i32 noundef %13) #24
  %36 = add nsw i32 %12, 1
  br label %51

37:                                               ; preds = %32
  %38 = add nsw i32 %33, %12
  %39 = load <2 x i32>, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 8), align 4, !tbaa !10
  %40 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %33, i64 1
  %41 = add nsw <2 x i32> %39, %40
  store <2 x i32> %41, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 8), align 4, !tbaa !10
  br label %51

42:                                               ; preds = %10
  %43 = tail call fastcc zeroext i8 @no_accesses_p(ptr noundef %14) #24, !range !16
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %16, %42
  %46 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 6), align 4, !tbaa !149
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 6), align 4, !tbaa !149
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i8 [ 1, %45 ], [ %11, %42 ]
  %50 = add nsw i32 %12, 1
  br label %51

51:                                               ; preds = %35, %37, %29, %28, %48
  %52 = phi i32 [ %50, %48 ], [ %25, %28 ], [ %25, %29 ], [ %36, %35 ], [ %38, %37 ]
  %53 = phi i8 [ %49, %48 ], [ %11, %28 ], [ 1, %29 ], [ %11, %35 ], [ 1, %37 ]
  %54 = add nuw nsw i32 %13, 1
  %55 = load i32, ptr @func_param_count, align 4, !tbaa !10
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %10, label %57, !llvm.loop !170

57:                                               ; preds = %51
  %58 = icmp eq i8 %53, 0
  %59 = load ptr, ptr @dump_file, align 8
  %60 = icmp ne ptr %59, null
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %65, label %68

62:                                               ; preds = %5
  %63 = load ptr, ptr @dump_file, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %62, %57
  %66 = phi ptr [ %63, %62 ], [ %59, %57 ]
  %67 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 33, i64 1, ptr nonnull %66)
  br label %72

68:                                               ; preds = %57
  br i1 %58, label %72, label %69

69:                                               ; preds = %68
  %70 = load ptr, ptr %1, align 8, !tbaa !6
  %71 = tail call fastcc ptr @turn_representatives_into_adjustments(ptr noundef %70, i32 noundef %52) #24
  br label %72

72:                                               ; preds = %62, %65, %68, %69
  %73 = phi ptr [ %71, %69 ], [ null, %68 ], [ null, %65 ], [ null, %62 ]
  call fastcc void @VEC_access_p_heap_free(ptr noundef nonnull %1) #24
  br label %74

74:                                               ; preds = %0, %72
  %75 = phi ptr [ %73, %72 ], [ null, %0 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret ptr %75
}

; Function Attrs: optsize
declare void @ipa_dump_param_adjustments(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @modify_function(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  tail call void @ipa_modify_formal_parameters(ptr noundef %8, ptr noundef %1, ptr noundef nonnull @.str.69) #23
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !llvm.loop !171

12:                                               ; preds = %6, %2
  %13 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  tail call fastcc void @create_abstract_origin(ptr noundef %13) #24
  %14 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  tail call void @ipa_modify_formal_parameters(ptr noundef %14, ptr noundef %1, ptr noundef nonnull @.str.69) #23
  %15 = tail call fastcc zeroext i8 @scan_function(ptr noundef nonnull @sra_ipa_modify_expr, ptr noundef nonnull @sra_ipa_modify_assign, ptr noundef nonnull @replace_removed_params_ssa_names, i8 noundef zeroext 0, ptr noundef %1) #24
  tail call fastcc void @sra_ipa_reset_debug_stmts(ptr noundef %1) #24
  tail call fastcc void @convert_callers(ptr noundef %0, ptr noundef %1) #24
  tail call void @cgraph_make_node_local(ptr noundef %0) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ipa_parm_adjustment_t_heap_free(ptr nocapture noundef %0) unnamed_addr #18 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @cgraph_node_can_be_local_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_unused_scalar_param(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call zeroext i8 @is_gimple_reg(ptr noundef %0) #23
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !6
  %6 = tail call ptr @gimple_default_def(ptr noundef %5, ptr noundef %0) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i8 @has_zero_uses(ptr noundef nonnull %6) #24
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %4, %8, %1
  %13 = phi i8 [ 0, %1 ], [ 1, %4 ], [ %11, %8 ]
  ret i8 %13
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ptr_parm_has_direct_uses(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #25
  %3 = load ptr, ptr @cfun, align 8, !tbaa !6
  %4 = tail call ptr @gimple_default_def(ptr noundef %3, ptr noundef %0) #23
  %5 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %2, ptr noundef %4) #24
  %6 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #24, !range !16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %117

8:                                                ; preds = %1, %113
  %9 = phi ptr [ %114, %113 ], [ %5, %1 ]
  %10 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %9) #24, !range !16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %113

12:                                               ; preds = %8
  %13 = call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %9) #24, !range !16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %12
  %16 = call ptr @gimple_get_lhs(ptr noundef %9) #23
  %17 = call fastcc zeroext i8 @handled_component_p(ptr noundef %16) #24, !range !16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %22, %19 ], [ %16, %15 ]
  %21 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !12
  %23 = call fastcc zeroext i8 @handled_component_p(ptr noundef %22) #24, !range !16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %19, !llvm.loop !172

25:                                               ; preds = %19, %15
  %26 = phi ptr [ %16, %15 ], [ %22, %19 ]
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -47
  %31 = icmp ult i32 %30, 3
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !12
  %35 = icmp eq ptr %34, %4
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %32, %25, %12
  %38 = phi i32 [ 0, %12 ], [ 0, %25 ], [ %36, %32 ]
  %39 = call zeroext i8 @gimple_assign_single_p(ptr noundef %9) #23
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %37
  %42 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %9) #24
  %43 = call fastcc zeroext i8 @handled_component_p(ptr noundef %42) #24, !range !16
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41, %45
  %46 = phi ptr [ %48, %45 ], [ %42, %41 ]
  %47 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !12
  %49 = call fastcc zeroext i8 @handled_component_p(ptr noundef %48) #24, !range !16
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %45, !llvm.loop !173

51:                                               ; preds = %45, %41
  %52 = phi ptr [ %42, %41 ], [ %48, %45 ]
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = and i32 %54, 65535
  %56 = add nsw i32 %55, -47
  %57 = icmp ult i32 %56, 3
  br i1 %57, label %58, label %100

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.tree_exp, ptr %52, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !12
  %61 = icmp eq ptr %60, %4
  %62 = zext i1 %61 to i32
  %63 = add nuw nsw i32 %38, %62
  br label %100

64:                                               ; preds = %37
  %65 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %9) #24, !range !16
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %100, label %67

67:                                               ; preds = %64
  %68 = call fastcc i32 @gimple_call_num_args(ptr noundef %9) #24
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %100, label %70

70:                                               ; preds = %67, %95
  %71 = phi i32 [ %97, %95 ], [ 0, %67 ]
  %72 = phi i32 [ %96, %95 ], [ %38, %67 ]
  %73 = call fastcc ptr @gimple_call_arg(ptr noundef %9, i32 noundef %71) #24
  %74 = call fastcc zeroext i8 @handled_component_p(ptr noundef %73) #24, !range !16
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70, %76
  %77 = phi ptr [ %79, %76 ], [ %73, %70 ]
  %78 = getelementptr inbounds %struct.tree_exp, ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !12
  %80 = call fastcc zeroext i8 @handled_component_p(ptr noundef %79) #24, !range !16
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %76, !llvm.loop !174

82:                                               ; preds = %76, %70
  %83 = phi ptr [ %73, %70 ], [ %79, %76 ]
  %84 = load i64, ptr %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = and i32 %85, 65535
  %87 = add nsw i32 %86, -47
  %88 = icmp ult i32 %87, 3
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.tree_exp, ptr %83, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !12
  %92 = icmp eq ptr %91, %4
  %93 = zext i1 %92 to i32
  %94 = add nsw i32 %72, %93
  br label %95

95:                                               ; preds = %89, %82
  %96 = phi i32 [ %72, %82 ], [ %94, %89 ]
  %97 = add nuw i32 %71, 1
  %98 = call fastcc i32 @gimple_call_num_args(ptr noundef %9) #24
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %70, label %100, !llvm.loop !175

100:                                              ; preds = %95, %67, %58, %51, %64
  %101 = phi i32 [ %38, %64 ], [ %38, %51 ], [ %63, %58 ], [ %38, %67 ], [ %96, %95 ]
  call fastcc void @first_imm_use_on_stmt(ptr noundef nonnull %2) #24
  %102 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %2) #24, !range !16
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100, %104
  %105 = phi i32 [ %106, %104 ], [ %101, %100 ]
  %106 = add nsw i32 %105, -1
  call fastcc void @next_imm_use_on_stmt(ptr noundef nonnull %2) #24
  %107 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %2) #24, !range !16
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %104, label %109, !llvm.loop !176

109:                                              ; preds = %104, %100
  %110 = phi i32 [ %101, %100 ], [ %106, %104 ]
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  call fastcc void @end_imm_use_stmt_traverse(ptr noundef nonnull %2) #24
  br label %117

113:                                              ; preds = %8, %109
  %114 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %2) #24
  %115 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #24, !range !16
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %8, label %117, !llvm.loop !177

117:                                              ; preds = %113, %1, %112
  %118 = phi i8 [ 1, %112 ], [ 0, %1 ], [ 0, %113 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #25
  ret i8 %118
}

; Function Attrs: optsize
declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !178
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #23
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: optsize
declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !180
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !178
  store ptr %6, ptr %0, align 8, !tbaa !182
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #24, !range !16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #24
  %11 = load ptr, ptr %0, align 8, !tbaa !182
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !180
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !37
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #24, !range !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #24, !range !16
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #24
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %4, %7, %1
  %12 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !37
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #24
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !178
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !183
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !183
  store ptr %3, ptr %0, align 8, !tbaa !182
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #24, !range !16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !178
  store ptr %8, ptr %2, align 8, !tbaa !183
  br label %9

9:                                                ; preds = %1, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @end_imm_use_stmt_traverse(ptr nocapture noundef %0) unnamed_addr #19 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !184
  store ptr %4, ptr %0, align 8, !tbaa !182
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #24, !range !16
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !185
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #24
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #24
  %12 = load ptr, ptr %0, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !12
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #24
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #25
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #23
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #24, !range !37
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #24
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #24
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #24
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #24
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #24
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #24
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !llvm.loop !186

28:                                               ; preds = %2
  br i1 %8, label %45, label %29

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #24
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #24
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #24
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #24
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #24
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #24
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !llvm.loop !187

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #24
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #24
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #24
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !185
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #24
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !188
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #24
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #24
  store i8 0, ptr %0, align 8, !tbaa !189
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 918, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #23
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !189
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !191
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #24
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !192
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !193
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #24
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i8, ptr %0, align 8, !tbaa !189
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #19 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #24
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #24
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !194
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !195
  store ptr %7, ptr %2, align 8, !tbaa !194
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !197
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !192
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !191
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !197
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #24
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !189
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 771, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #24
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !193
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #24
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #24, !range !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !198
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #19 {
  %2 = load ptr, ptr %0, align 8, !tbaa !199
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !178
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !178
  store ptr %2, ptr %6, align 8, !tbaa !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #19 {
  store ptr %1, ptr %0, align 8, !tbaa !199
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !178
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !178
  store ptr %0, ptr %4, align 8, !tbaa !199
  store ptr %0, ptr %3, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #20 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !189
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !12
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #24
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !12
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3103, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 747, ptr noundef nonnull @.str.1) #23
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !200
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #24
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !200
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #24
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !201
  store ptr %22, ptr %16, align 8, !tbaa !200
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !194
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #24
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !194
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #24
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !195
  store ptr %36, ptr %29, align 8, !tbaa !194
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !189
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #24, !range !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #24, !range !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !37
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @splice_all_param_accesses(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = load i32, ptr @func_param_count, align 4, !tbaa !10
  %4 = tail call fastcc ptr @VEC_access_p_heap_alloc(i32 noundef %3) #24
  store ptr %4, ptr %0, align 8, !tbaa !6
  %5 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.tree_decl_non_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %81, label %9

9:                                                ; preds = %1, %74
  %10 = phi ptr [ %77, %74 ], [ %7, %1 ]
  %11 = phi i32 [ %75, %74 ], [ 0, %1 ]
  %12 = tail call fastcc zeroext i8 @is_unused_scalar_param(ptr noundef nonnull %10) #24, !range !16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @VEC_access_p_base_quick_push(ptr noundef %15, ptr noundef nonnull @no_accesses_representant) #24
  %16 = tail call i32 @llvm.umax.i32(i32 %11, i32 1)
  br label %74

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !12
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %38 [
    i16 10, label %22
    i16 12, label %22
  ]

22:                                               ; preds = %17, %17
  %23 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !12
  %25 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %24) #23
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !6
  %29 = getelementptr inbounds %struct.tree_decl_minimal, ptr %10, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !12
  %31 = tail call i32 @bitmap_bit_p(ptr noundef %28, i32 noundef %30) #23
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = tail call fastcc ptr @unmodified_by_ref_scalar_representative(ptr noundef nonnull %10) #24
  %35 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @VEC_access_p_base_quick_push(ptr noundef %35, ptr noundef %34) #24
  %36 = icmp eq ptr %34, null
  %37 = select i1 %36, i32 %11, i32 4
  br label %74

38:                                               ; preds = %17, %27, %22
  %39 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !6
  %40 = getelementptr inbounds %struct.tree_decl_minimal, ptr %10, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !12
  %42 = tail call i32 @bitmap_bit_p(ptr noundef %39, i32 noundef %41) #23
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %72, label %44

44:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #25
  store i8 0, ptr %2, align 1, !tbaa !12
  %45 = call fastcc ptr @splice_param_accesses(ptr noundef nonnull %10, ptr noundef nonnull %2) #24
  %46 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @VEC_access_p_base_quick_push(ptr noundef %46, ptr noundef %45) #24
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = tail call fastcc zeroext i8 @no_accesses_p(ptr noundef %45) #24, !range !16
  br label %64

50:                                               ; preds = %44
  %51 = tail call fastcc zeroext i8 @no_accesses_p(ptr noundef nonnull %45) #24, !range !16
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load ptr, ptr %18, align 8, !tbaa !12
  %55 = load i64, ptr %54, align 8
  %56 = trunc i64 %55 to i16
  switch i16 %56, label %62 [
    i16 10, label %57
    i16 12, label %57
  ]

57:                                               ; preds = %53, %53
  %58 = load i8, ptr %2, align 1, !tbaa !12
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = tail call i32 @llvm.umax.i32(i32 %11, i32 3)
  br label %70

62:                                               ; preds = %53
  %63 = tail call i32 @llvm.umax.i32(i32 %11, i32 2)
  br label %70

64:                                               ; preds = %48, %50
  %65 = phi i8 [ %49, %48 ], [ 1, %50 ]
  %66 = icmp ne i8 %65, 0
  %67 = icmp eq i32 %11, 0
  %68 = select i1 %66, i1 %67, i1 false
  %69 = select i1 %68, i32 1, i32 %11
  br label %70

70:                                               ; preds = %57, %64, %62, %60
  %71 = phi i32 [ %69, %64 ], [ %61, %60 ], [ %63, %62 ], [ 4, %57 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #25
  br label %74

72:                                               ; preds = %38
  %73 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @VEC_access_p_base_quick_push(ptr noundef %73, ptr noundef null) #24
  br label %74

74:                                               ; preds = %33, %14, %70, %72
  %75 = phi i32 [ %16, %14 ], [ %71, %70 ], [ %11, %72 ], [ %37, %33 ]
  %76 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !12
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %9, !llvm.loop !203

79:                                               ; preds = %74
  %80 = icmp eq i32 %75, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %1, %79
  tail call fastcc void @VEC_access_p_heap_free(ptr noundef nonnull %0) #24
  store ptr null, ptr %0, align 8, !tbaa !6
  br label %82

82:                                               ; preds = %79, %81
  %83 = phi i32 [ %75, %79 ], [ 0, %81 ]
  ret i32 %83
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_caller_dereference_legality(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !10
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @bb_dereferences, align 8, !tbaa !6
  tail call fastcc void @dump_dereferences_table(ptr noundef nonnull %2, ptr noundef nonnull @.str.63, ptr noundef %9) #24
  br label %10

10:                                               ; preds = %8, %4, %1
  tail call fastcc void @propagate_dereference_distances() #24
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !10
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @bb_dereferences, align 8, !tbaa !6
  tail call fastcc void @dump_dereferences_table(ptr noundef nonnull %11, ptr noundef nonnull @.str.64, ptr noundef %18) #24
  br label %19

19:                                               ; preds = %17, %13, %10
  %20 = load i32, ptr @func_param_count, align 4, !tbaa !10
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %19
  %23 = load ptr, ptr @cfun, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr @bb_dereferences, align 8
  br label %26

26:                                               ; preds = %22, %58
  %27 = phi i32 [ 0, %22 ], [ %59, %58 ]
  %28 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef %0, i32 noundef %27) #24
  %29 = load ptr, ptr %24, align 8, !tbaa !25
  %30 = load ptr, ptr %29, align 8, !tbaa !27
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !36
  %33 = mul nsw i32 %32, %20
  %34 = add nsw i32 %33, %27
  %35 = icmp eq ptr %28, null
  br i1 %35, label %58, label %36

36:                                               ; preds = %26
  %37 = tail call fastcc zeroext i8 @no_accesses_p(ptr noundef nonnull %28) #24, !range !16
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = sext i32 %34 to i64
  %41 = getelementptr inbounds i64, ptr %25, i64 %40
  br label %42

42:                                               ; preds = %39, %54
  %43 = phi ptr [ %56, %54 ], [ %28, %39 ]
  %44 = load i64, ptr %43, align 8, !tbaa !57
  %45 = getelementptr inbounds %struct.access, ptr %43, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !48
  %47 = add nsw i64 %46, %44
  %48 = load i64, ptr %41, align 8, !tbaa !91
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.access, ptr %43, i64 0, i32 14
  %52 = load i16, ptr %51, align 8
  %53 = or i16 %52, 8192
  store i16 %53, ptr %51, align 8
  br label %54

54:                                               ; preds = %50, %42
  %55 = getelementptr inbounds %struct.access, ptr %43, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !61
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %42, !llvm.loop !204

58:                                               ; preds = %54, %26, %36
  %59 = add nuw nsw i32 %27, 1
  %60 = icmp eq i32 %59, %20
  br i1 %60, label %61, label %26, !llvm.loop !205

61:                                               ; preds = %58, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_modified_params(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = load i32, ptr @func_param_count, align 4, !tbaa !10
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %56

6:                                                ; preds = %1, %52
  %7 = phi i32 [ %53, %52 ], [ %4, %1 ]
  %8 = phi i32 [ %54, %52 ], [ 0, %1 ]
  %9 = call fastcc ptr @VEC_access_p_base_index(ptr noundef %0, i32 noundef %8) #24
  %10 = icmp eq ptr %9, null
  br i1 %10, label %52, label %11

11:                                               ; preds = %6, %46
  %12 = phi ptr [ %48, %46 ], [ %9, %6 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #25
  %13 = call fastcc zeroext i8 @no_accesses_p(ptr noundef nonnull %12) #24, !range !16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.access, ptr %12, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !12
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %46 [
    i16 10, label %22
    i16 12, label %22
  ]

22:                                               ; preds = %15, %15
  %23 = getelementptr inbounds %struct.access, ptr %12, i64 0, i32 14
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, 2048
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.access, ptr %12, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !94
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef %29) #23
  %30 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %30, ptr %2, align 8, !tbaa !6
  br label %31

31:                                               ; preds = %27, %40
  %32 = phi ptr [ %12, %27 ], [ %42, %40 ]
  %33 = getelementptr inbounds %struct.access, ptr %32, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !95
  %35 = call fastcc ptr @gimple_vuse(ptr noundef %34) #24
  %36 = call i32 @walk_aliased_vdefs(ptr noundef nonnull %3, ptr noundef %35, ptr noundef nonnull @mark_maybe_modified, ptr noundef nonnull %12, ptr noundef nonnull %2) #23
  %37 = load i16, ptr %23, align 8
  %38 = and i16 %37, 2048
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.access, ptr %32, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !129
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %31, !llvm.loop !206

44:                                               ; preds = %31, %40
  %45 = load ptr, ptr %2, align 8, !tbaa !6
  call void @bitmap_obstack_free(ptr noundef %45) #23
  br label %46

46:                                               ; preds = %22, %15, %11, %44
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  %47 = getelementptr inbounds %struct.access, ptr %12, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !61
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %11, !llvm.loop !207

50:                                               ; preds = %46
  %51 = load i32, ptr @func_param_count, align 4, !tbaa !10
  br label %52

52:                                               ; preds = %50, %6
  %53 = phi i32 [ %51, %50 ], [ %7, %6 ]
  %54 = add nuw nsw i32 %8, 1
  %55 = icmp slt i32 %54, %53
  br i1 %55, label %6, label %56, !llvm.loop !208

56:                                               ; preds = %52, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @no_accesses_p(ptr noundef readnone %0) unnamed_addr #12 {
  %2 = icmp eq ptr %0, @no_accesses_representant
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_access_p_base_replace(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_access_p_base, ptr %0, i64 0, i32 2, i64 %3
  store ptr null, ptr %4, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @decide_one_param_reduction(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  %8 = tail call i64 @tree_low_cst(ptr noundef %7, i32 noundef 1) #23
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3411, ptr noundef nonnull @.str.1) #23
  br label %12

12:                                               ; preds = %1, %11
  %13 = load ptr, ptr %4, align 8, !tbaa !12
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %23 [
    i16 10, label %16
    i16 12, label %16
  ]

16:                                               ; preds = %12, %12
  %17 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  %19 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !12
  %21 = tail call i64 @tree_low_cst(ptr noundef %20, i32 noundef 1) #23
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %12, %16
  %24 = phi i32 [ %22, %16 ], [ %9, %12 ]
  %25 = phi i1 [ false, %16 ], [ true, %12 ]
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %23
  %29 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 33, i64 1, ptr nonnull %26)
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %30, ptr noundef nonnull %3, i32 noundef 0) #23
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !12
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.24, i32 noundef %33) #24
  br label %35

35:                                               ; preds = %28, %35
  %36 = phi ptr [ %39, %35 ], [ %0, %28 ]
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call fastcc void @dump_access(ptr noundef %37, ptr noundef nonnull %36) #24
  %38 = getelementptr inbounds %struct.access, ptr %36, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %35, !llvm.loop !209

41:                                               ; preds = %35
  %42 = icmp eq ptr %0, null
  br i1 %42, label %69, label %43

43:                                               ; preds = %23, %41
  br label %44

44:                                               ; preds = %43, %63
  %45 = phi i32 [ %53, %63 ], [ 0, %43 ]
  %46 = phi ptr [ %67, %63 ], [ %0, %43 ]
  %47 = phi i32 [ %65, %63 ], [ 0, %43 ]
  %48 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !45
  %50 = icmp eq ptr %3, %49
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3439, ptr noundef nonnull @.str.1) #23
  br label %52

52:                                               ; preds = %44, %51
  %53 = add nuw nsw i32 %45, 1
  br i1 %25, label %59, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 14
  %56 = load i16, ptr %55, align 8
  %57 = and i16 %56, 10240
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54, %52
  %60 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !48
  %62 = trunc i64 %61 to i32
  br label %63

63:                                               ; preds = %54, %59
  %64 = phi i32 [ %62, %59 ], [ %9, %54 ]
  %65 = add i32 %64, %47
  %66 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !61
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %44, !llvm.loop !210

69:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3449, ptr noundef nonnull @.str.1) #23
  br label %70

70:                                               ; preds = %63, %69
  %71 = phi i32 [ 0, %69 ], [ %53, %63 ]
  %72 = phi i32 [ 0, %69 ], [ %65, %63 ]
  %73 = load ptr, ptr @cfun, align 8, !tbaa !6
  %74 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %73) #23
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %78 = getelementptr inbounds %struct.param_info, ptr %77, i64 118, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !162
  %80 = mul nsw i32 %79, %9
  br label %81

81:                                               ; preds = %70, %76
  %82 = phi i32 [ %80, %76 ], [ %9, %70 ]
  %83 = icmp sge i32 %72, %24
  %84 = icmp sgt i32 %72, %82
  %85 = select i1 %83, i1 true, i1 %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %87, ptr noundef nonnull @.str.68, i32 noundef %71) #24
  br label %91

91:                                               ; preds = %81, %86, %89
  %92 = phi i32 [ %71, %89 ], [ %71, %86 ], [ 0, %81 ]
  ret i32 %92
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @turn_representatives_into_adjustments(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3572, ptr noundef nonnull @.str.1) #23
  br label %6

6:                                                ; preds = %2, %5
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %8 = tail call ptr @ipa_get_vector_of_formal_parms(ptr noundef %7) #23
  store ptr %8, ptr %3, align 8, !tbaa !6
  %9 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_heap_alloc(i32 noundef %1) #24
  %10 = load i32, ptr @func_param_count, align 4, !tbaa !10
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %78

12:                                               ; preds = %6
  %13 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.tree_decl_non_common, ptr %13, i64 0, i32 2
  br label %15

15:                                               ; preds = %12, %73
  %16 = phi ptr [ %75, %73 ], [ %14, %12 ]
  %17 = phi i32 [ %74, %73 ], [ 0, %12 ]
  %18 = load ptr, ptr %16, align 8, !tbaa !12
  %19 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef %0, i32 noundef %17) #24
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = tail call fastcc zeroext i8 @no_accesses_p(ptr noundef nonnull %19) #24, !range !16
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %21, %15
  %25 = phi i8 [ 2, %21 ], [ 1, %15 ]
  %26 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_base_quick_push(ptr noundef %9) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %26, i8 0, i64 56, i1 false)
  %27 = tail call fastcc i32 @get_param_index(ptr noundef %18, ptr noundef %8) #24
  %28 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %26, i64 0, i32 6
  store i32 %27, ptr %28, align 8, !tbaa !211
  store ptr %18, ptr %26, align 8, !tbaa !213
  %29 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %26, i64 0, i32 7
  %30 = load i8, ptr %29, align 4
  %31 = or i8 %30, %25
  store i8 %31, ptr %29, align 4
  br label %73

32:                                               ; preds = %21
  %33 = tail call fastcc i32 @get_param_index(ptr noundef %18, ptr noundef %8) #24
  br label %34

34:                                               ; preds = %32, %64
  %35 = phi ptr [ %19, %32 ], [ %71, %64 ]
  %36 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_base_quick_push(ptr noundef %9) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %36, i8 0, i64 56, i1 false)
  %37 = getelementptr inbounds %struct.access, ptr %35, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !45
  %39 = icmp eq ptr %38, %18
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3602, ptr noundef nonnull @.str.1) #23
  %41 = load ptr, ptr %37, align 8, !tbaa !45
  br label %42

42:                                               ; preds = %34, %40
  %43 = phi ptr [ %18, %34 ], [ %41, %40 ]
  %44 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %36, i64 0, i32 6
  store i32 %33, ptr %44, align 8, !tbaa !211
  store ptr %43, ptr %36, align 8, !tbaa !213
  %45 = getelementptr inbounds %struct.access, ptr %35, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !47
  %47 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %36, i64 0, i32 1
  store ptr %46, ptr %47, align 8, !tbaa !214
  %48 = load i64, ptr %35, align 8, !tbaa !57
  %49 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %36, i64 0, i32 5
  store i64 %48, ptr %49, align 8, !tbaa !215
  %50 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !12
  %52 = load i64, ptr %51, align 8
  %53 = trunc i64 %52 to i16
  switch i16 %53, label %64 [
    i16 10, label %54
    i16 12, label %54
  ]

54:                                               ; preds = %42, %42
  %55 = getelementptr inbounds %struct.access, ptr %35, i64 0, i32 14
  %56 = load i16, ptr %55, align 8
  %57 = freeze i16 %56
  %58 = and i16 %57, 2048
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = lshr i16 %57, 11
  %62 = trunc i16 %61 to i8
  %63 = and i8 %62, 4
  br label %64

64:                                               ; preds = %54, %42, %60
  %65 = phi i8 [ %63, %60 ], [ 0, %42 ], [ 4, %54 ]
  %66 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %36, i64 0, i32 7
  %67 = load i8, ptr %66, align 4
  %68 = and i8 %67, -5
  %69 = or disjoint i8 %68, %65
  store i8 %69, ptr %66, align 4
  %70 = getelementptr inbounds %struct.access, ptr %35, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !61
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %34, !llvm.loop !216

73:                                               ; preds = %64, %24
  %74 = add nuw nsw i32 %17, 1
  %75 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  %76 = load i32, ptr @func_param_count, align 4, !tbaa !10
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %15, label %78, !llvm.loop !217

78:                                               ; preds = %73, %6
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @unmodified_by_ref_scalar_representative(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @get_base_access_vector(ptr noundef %0) #24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3267, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef %2, i32 noundef 0) #24
  %7 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 14
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 7
  store ptr %6, ptr %12, align 8, !tbaa !117
  %13 = tail call fastcc i32 @VEC_access_p_base_length(ptr noundef %2) #24
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 9
  br label %17

17:                                               ; preds = %15, %24
  %18 = phi i32 [ 1, %15 ], [ %28, %24 ]
  %19 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef %2, i32 noundef %18) #24
  %20 = getelementptr inbounds %struct.access, ptr %19, i64 0, i32 14
  %21 = load i16, ptr %20, align 8
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.access, ptr %19, i64 0, i32 7
  store ptr %6, ptr %25, align 8, !tbaa !117
  %26 = load ptr, ptr %16, align 8, !tbaa !129
  %27 = getelementptr inbounds %struct.access, ptr %19, i64 0, i32 9
  store ptr %26, ptr %27, align 8, !tbaa !129
  store ptr %19, ptr %16, align 8, !tbaa !129
  %28 = add nuw nsw i32 %18, 1
  %29 = icmp eq i32 %28, %13
  br i1 %29, label %30, label %17, !llvm.loop !218

30:                                               ; preds = %24
  %31 = load i16, ptr %7, align 8
  br label %32

32:                                               ; preds = %30, %11
  %33 = phi i16 [ %31, %30 ], [ %8, %11 ]
  %34 = or i16 %33, 4112
  store i16 %34, ptr %7, align 8
  br label %35

35:                                               ; preds = %17, %5, %32
  %36 = phi ptr [ %6, %32 ], [ null, %5 ], [ null, %17 ]
  ret ptr %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @splice_param_accesses(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  %4 = tail call fastcc ptr @get_base_access_vector(ptr noundef %0) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %96, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @VEC_access_p_base_length(ptr noundef nonnull %4) #24
  %8 = tail call fastcc ptr @VEC_access_p_base_address(ptr noundef nonnull %4) #24
  %9 = sext i32 %7 to i64
  tail call void @spec_qsort(ptr noundef nonnull %8, i64 noundef %9, i64 noundef 8, ptr noundef nonnull @compare_access_positions) #23
  %10 = icmp slt i32 %7, 1
  br i1 %10, label %76, label %11

11:                                               ; preds = %6, %69
  %12 = phi i32 [ %60, %69 ], [ 0, %6 ]
  %13 = phi ptr [ %70, %69 ], [ %3, %6 ]
  %14 = phi i32 [ %74, %69 ], [ 0, %6 ]
  %15 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef nonnull %4, i32 noundef %12) #24
  %16 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 14
  %17 = tail call fastcc zeroext i8 @access_precludes_ipa_sra_p(ptr noundef %15) #24, !range !16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %96

19:                                               ; preds = %11
  %20 = load i16, ptr %16, align 8
  %21 = trunc i16 %20 to i8
  %22 = and i8 %21, 1
  %23 = add nsw i32 %12, 1
  %24 = icmp slt i32 %23, %7
  br i1 %24, label %25, label %58

25:                                               ; preds = %19
  %26 = load i64, ptr %15, align 8, !tbaa !57
  %27 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 1
  %28 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 9
  br label %29

29:                                               ; preds = %25, %47
  %30 = phi i32 [ %23, %25 ], [ %56, %47 ]
  %31 = phi i8 [ %22, %25 ], [ %52, %47 ]
  %32 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef nonnull %4, i32 noundef %30) #24
  %33 = load i64, ptr %32, align 8, !tbaa !57
  %34 = icmp eq i64 %33, %26
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load i64, ptr %27, align 8, !tbaa !48
  %37 = add nsw i64 %36, %26
  %38 = icmp sgt i64 %37, %33
  br i1 %38, label %96, label %58

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.access, ptr %32, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !48
  %42 = load i64, ptr %27, align 8, !tbaa !48
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %96

44:                                               ; preds = %39
  %45 = tail call fastcc zeroext i8 @access_precludes_ipa_sra_p(ptr noundef nonnull %32) #24, !range !16
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %96

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.access, ptr %32, i64 0, i32 14
  %49 = load i16, ptr %48, align 8
  %50 = trunc i16 %49 to i8
  %51 = and i8 %50, 1
  %52 = or i8 %51, %31
  %53 = getelementptr inbounds %struct.access, ptr %32, i64 0, i32 7
  store ptr %15, ptr %53, align 8, !tbaa !117
  %54 = load ptr, ptr %28, align 8, !tbaa !129
  %55 = getelementptr inbounds %struct.access, ptr %32, i64 0, i32 9
  store ptr %54, ptr %55, align 8, !tbaa !129
  store ptr %32, ptr %28, align 8, !tbaa !129
  %56 = add nsw i32 %30, 1
  %57 = icmp eq i32 %56, %7
  br i1 %57, label %58, label %29

58:                                               ; preds = %47, %19, %35
  %59 = phi i8 [ %31, %35 ], [ %22, %19 ], [ %52, %47 ]
  %60 = phi i32 [ %30, %35 ], [ %23, %19 ], [ %7, %47 ]
  %61 = load i16, ptr %16, align 8
  %62 = and i8 %59, 1
  %63 = zext nneg i8 %62 to i16
  %64 = shl nuw nsw i16 %63, 11
  %65 = and i16 %61, -2049
  %66 = or disjoint i16 %65, %64
  store i16 %66, ptr %16, align 8
  %67 = icmp eq i8 %59, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  store i8 1, ptr %1, align 1, !tbaa !12
  br label %69

69:                                               ; preds = %58, %68
  store ptr %15, ptr %13, align 8, !tbaa !6
  %70 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 6
  %71 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !48
  %73 = trunc i64 %72 to i32
  %74 = add i32 %14, %73
  %75 = icmp slt i32 %60, %7
  br i1 %75, label %11, label %76, !llvm.loop !219

76:                                               ; preds = %69, %6
  %77 = phi i32 [ 0, %6 ], [ %74, %69 ]
  %78 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !12
  %80 = load i64, ptr %79, align 8
  %81 = trunc i64 %80 to i16
  switch i16 %81, label %85 [
    i16 10, label %82
    i16 12, label %82
  ]

82:                                               ; preds = %76, %76
  %83 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !12
  br label %85

85:                                               ; preds = %76, %82
  %86 = phi ptr [ %84, %82 ], [ %79, %76 ]
  %87 = getelementptr inbounds %struct.tree_type, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !12
  %89 = tail call i64 @tree_low_cst(ptr noundef %88, i32 noundef 1) #23
  %90 = trunc i64 %89 to i32
  %91 = icmp slt i32 %77, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  br i1 %10, label %93, label %94

93:                                               ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3395, ptr noundef nonnull @.str.1) #23
  br label %94

94:                                               ; preds = %92, %93
  %95 = load ptr, ptr %3, align 8, !tbaa !6
  br label %96

96:                                               ; preds = %35, %11, %44, %39, %85, %2, %94
  %97 = phi ptr [ %95, %94 ], [ @no_accesses_representant, %2 ], [ null, %85 ], [ null, %39 ], [ null, %44 ], [ null, %11 ], [ null, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  ret ptr %97
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @access_precludes_ipa_sra_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %8) #24, !range !16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = tail call fastcc i32 @gimple_code(ptr noundef %8) #24, !range !37
  %13 = icmp eq i32 %12, 7
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %1
  br label %15

15:                                               ; preds = %6, %11, %14
  %16 = phi i8 [ 0, %14 ], [ 1, %11 ], [ 1, %6 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_dereferences_table(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef %1) #24
  %6 = load ptr, ptr @cfun, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !32
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %52, label %13

13:                                               ; preds = %3, %42
  %14 = phi ptr [ %45, %42 ], [ %9, %3 ]
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !36
  %17 = load ptr, ptr @final_bbs, align 8, !tbaa !6
  %18 = tail call i32 @bitmap_bit_p(ptr noundef %17, i32 noundef %16) #23
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.65, i32 noundef %16, i32 noundef %18) #24
  %20 = load ptr, ptr @cfun, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !25
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !32
  %25 = icmp ne ptr %14, %24
  %26 = load i32, ptr @func_param_count, align 4
  %27 = icmp sgt i32 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %42

29:                                               ; preds = %13, %29
  %30 = phi i32 [ %40, %29 ], [ %26, %13 ]
  %31 = phi i32 [ %39, %29 ], [ 0, %13 ]
  %32 = load i32, ptr %15, align 8, !tbaa !36
  %33 = mul nsw i32 %32, %30
  %34 = add nsw i32 %33, %31
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, ptr %2, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !91
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.66, i64 noundef %37) #24
  %39 = add nuw nsw i32 %31, 1
  %40 = load i32, ptr @func_param_count, align 4, !tbaa !10
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %29, label %42, !llvm.loop !220

42:                                               ; preds = %29, %13
  %43 = tail call i32 @fputc(i32 10, ptr %0)
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = load ptr, ptr @cfun, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !25
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !32
  %51 = icmp eq ptr %45, %50
  br i1 %51, label %52, label %13, !llvm.loop !221

52:                                               ; preds = %42, %3
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %54 = tail call i32 @fputc(i32 10, ptr %53)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_dereference_distances() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %4 = load ptr, ptr @cfun, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !148
  %9 = tail call fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %8) #24
  store ptr %9, ptr %1, align 8, !tbaa !6
  %10 = load ptr, ptr @cfun, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !25
  %13 = load ptr, ptr %12, align 8, !tbaa !27
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %9, ptr noundef %13) #24
  %14 = load ptr, ptr @cfun, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  %17 = load ptr, ptr %16, align 8, !tbaa !27
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !29
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !32
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %28, %0
  %24 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %9) #24
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %135, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds i8, ptr %2, i64 8
  br label %39

28:                                               ; preds = %0, %28
  %29 = phi ptr [ %32, %28 ], [ %19, %0 ]
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %9, ptr noundef %29) #24
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !222
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !29
  %33 = load ptr, ptr @cfun, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !25
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !32
  %38 = icmp eq ptr %32, %37
  br i1 %38, label %23, label %28, !llvm.loop !223

39:                                               ; preds = %26, %132
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %40 = tail call fastcc ptr @VEC_basic_block_base_pop(ptr noundef %9) #24
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 2
  store ptr null, ptr %41, align 8, !tbaa !222
  %42 = load ptr, ptr @final_bbs, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !36
  %45 = tail call i32 @bitmap_bit_p(ptr noundef %42, i32 noundef %44) #23
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %132, !llvm.loop !224

47:                                               ; preds = %39
  %48 = load i32, ptr @func_param_count, align 4, !tbaa !10
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %132

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 1
  %52 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %51) #24
  br label %53

53:                                               ; preds = %50, %104
  %54 = phi i32 [ %48, %50 ], [ %107, %104 ]
  %55 = phi i8 [ 0, %50 ], [ %105, %104 ]
  %56 = phi i32 [ 0, %50 ], [ %106, %104 ]
  %57 = load i32, ptr %43, align 8, !tbaa !36
  %58 = mul nsw i32 %57, %54
  %59 = add nsw i32 %58, %56
  store i32 0, ptr %2, align 8, !tbaa.struct !225
  store ptr %52, ptr %27, align 8, !tbaa.struct !226
  %60 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %52, ptr noundef nonnull %3) #24, !range !16
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %104, label %62

62:                                               ; preds = %53, %88
  %63 = phi i8 [ %90, %88 ], [ 1, %53 ]
  %64 = phi i64 [ %89, %88 ], [ 0, %53 ]
  %65 = load ptr, ptr %3, align 8, !tbaa !6
  %66 = load ptr, ptr %65, align 8, !tbaa !227
  %67 = load ptr, ptr @cfun, align 8, !tbaa !6
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !25
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !32
  %72 = icmp eq ptr %66, %71
  br i1 %72, label %88, label %73

73:                                               ; preds = %62
  %74 = load i32, ptr @func_param_count, align 4, !tbaa !10
  %75 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !229
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 9
  %78 = load i32, ptr %77, align 8, !tbaa !36
  %79 = mul nsw i32 %74, %78
  %80 = add nsw i32 %79, %56
  %81 = icmp eq i8 %63, 0
  %82 = load ptr, ptr @bb_dereferences, align 8, !tbaa !6
  %83 = sext i32 %80 to i64
  %84 = getelementptr inbounds i64, ptr %82, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !91
  br i1 %81, label %86, label %88

86:                                               ; preds = %73
  %87 = tail call i64 @llvm.smin.i64(i64 %85, i64 %64)
  br label %88

88:                                               ; preds = %73, %86, %62
  %89 = phi i64 [ %64, %62 ], [ %87, %86 ], [ %85, %73 ]
  %90 = phi i8 [ %63, %62 ], [ 0, %86 ], [ 0, %73 ]
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %91 = load i32, ptr %2, align 8
  %92 = load ptr, ptr %27, align 8
  %93 = call fastcc zeroext i8 @ei_cond(i32 %91, ptr %92, ptr noundef nonnull %3) #24, !range !16
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %62, !llvm.loop !230

95:                                               ; preds = %88
  %96 = icmp eq i8 %90, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %95
  %98 = load ptr, ptr @bb_dereferences, align 8, !tbaa !6
  %99 = sext i32 %59 to i64
  %100 = getelementptr inbounds i64, ptr %98, i64 %99
  %101 = load i64, ptr %100, align 8, !tbaa !91
  %102 = icmp slt i64 %101, %89
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i64 %89, ptr %100, align 8, !tbaa !91
  br label %104

104:                                              ; preds = %53, %103, %97, %95
  %105 = phi i8 [ %55, %95 ], [ 1, %103 ], [ %55, %97 ], [ %55, %53 ]
  %106 = add nuw nsw i32 %56, 1
  %107 = load i32, ptr @func_param_count, align 4, !tbaa !10
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %53, label %109, !llvm.loop !231

109:                                              ; preds = %104
  %110 = icmp eq i8 %105, 0
  br i1 %110, label %132, label %111

111:                                              ; preds = %109
  %112 = load ptr, ptr @final_bbs, align 8, !tbaa !6
  %113 = load i32, ptr %43, align 8, !tbaa !36
  %114 = tail call i32 @bitmap_bit_p(ptr noundef %112, i32 noundef %113) #23
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %111
  %117 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %40) #24
  store i32 0, ptr %2, align 8, !tbaa.struct !225
  store ptr %117, ptr %27, align 8, !tbaa.struct !226
  %118 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %117, ptr noundef nonnull %3) #24, !range !16
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %116, %127
  %121 = load ptr, ptr %3, align 8, !tbaa !6
  %122 = load ptr, ptr %121, align 8, !tbaa !227
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !222
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store ptr %122, ptr %123, align 8, !tbaa !222
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %9, ptr noundef nonnull %122) #24
  br label %127

127:                                              ; preds = %120, %126
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %128 = load i32, ptr %2, align 8
  %129 = load ptr, ptr %27, align 8
  %130 = call fastcc zeroext i8 @ei_cond(i32 %128, ptr %129, ptr noundef nonnull %3) #24, !range !16
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %120, !llvm.loop !232

132:                                              ; preds = %127, %47, %116, %109, %111, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #25
  %133 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %9) #24
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %39

135:                                              ; preds = %132, %23
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %1) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #14 {
  %3 = load i32, ptr %0, align 8, !tbaa !233
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !233
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !233
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_basic_block_base_pop(ptr nocapture noundef %0) unnamed_addr #14 {
  %2 = load i32, ptr %0, align 8, !tbaa !233
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !233
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #12 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #24, !range !16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #24
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !6
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #24
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #24
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !235
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !235
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #18 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #24
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #24
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 687, ptr noundef nonnull @.str.1) #23
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: optsize
declare void @ao_ref_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @walk_aliased_vdefs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i8 @mark_maybe_modified(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #14 {
  %4 = getelementptr inbounds %struct.access, ptr %2, i64 0, i32 14
  %5 = load i16, ptr %4, align 8
  %6 = or i16 %5, 2048
  store i16 %6, ptr %4, align 8
  ret i8 1
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ipa_get_vector_of_formal_parms(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ipa_parm_adjustment_t_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 56) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @VEC_ipa_parm_adjustment_t_base_quick_push(ptr noundef %0) unnamed_addr #14 {
  %2 = load i32, ptr %0, align 8, !tbaa !237
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !237
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @get_param_index(ptr noundef readnone %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %1) #24
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = phi i32 [ %10, %9 ], [ 0, %2 ]
  %7 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %6) #24
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = add nuw nsw i32 %6, 1
  %11 = icmp eq i32 %10, %3
  br i1 %11, label %12, label %5, !llvm.loop !239

12:                                               ; preds = %9, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3552, ptr noundef nonnull @.str.1) #23
  br label %13

13:                                               ; preds = %5, %12
  %14 = phi i32 [ 0, %12 ], [ %6, %5 ]
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #18 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !240
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: optsize
declare void @ipa_modify_formal_parameters(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_abstract_origin(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = tail call ptr @copy_node_stat(ptr noundef nonnull %0) #23
  %7 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = or i64 %8, 2048
  store i64 %9, ptr %7, align 8
  %10 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %6, i64 0, i32 1
  store ptr null, ptr %10, align 8, !tbaa !12
  tail call void @set_decl_rtl(ptr noundef %6, ptr noundef null) #23
  %11 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !12
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = or i64 %13, 4096
  store i64 %14, ptr %12, align 8
  store ptr %6, ptr %2, align 8, !tbaa !12
  br label %15

15:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @sra_ipa_modify_expr(ptr nocapture noundef %0, ptr nocapture readnone %1, i8 noundef zeroext %2, ptr noundef readonly %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  %8 = tail call fastcc i32 @VEC_ipa_parm_adjustment_t_base_length(ptr noundef %3) #24
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -42
  %14 = icmp ult i32 %13, 3
  %15 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %16 = select i1 %14, ptr %15, ptr %0
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = call ptr @get_ref_base_and_extent(ptr noundef %17, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #23
  %19 = icmp eq ptr %18, null
  %20 = load i64, ptr %6, align 8
  %21 = icmp eq i64 %20, -1
  %22 = select i1 %19, i1 true, i1 %21
  %23 = load i64, ptr %7, align 8
  %24 = icmp eq i64 %23, -1
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %116, label %26

26:                                               ; preds = %4
  %27 = load i64, ptr %18, align 8
  %28 = trunc i64 %27 to i32
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -47
  %31 = icmp ult i32 %30, 3
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !12
  br label %35

35:                                               ; preds = %26, %32
  %36 = phi ptr [ %34, %32 ], [ %18, %26 ]
  %37 = call fastcc ptr @get_ssa_base_param(ptr noundef %36) #24
  %38 = icmp eq ptr %37, null
  br i1 %38, label %116, label %39

39:                                               ; preds = %35
  %40 = load i64, ptr %37, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 34
  %43 = icmp sgt i32 %8, 0
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %116

45:                                               ; preds = %39
  %46 = load i64, ptr %5, align 8
  br label %47

47:                                               ; preds = %45, %61
  %48 = phi i32 [ 0, %45 ], [ %62, %61 ]
  %49 = call fastcc ptr @VEC_ipa_parm_adjustment_t_base_index(ptr noundef %3, i32 noundef %48) #24
  %50 = load ptr, ptr %49, align 8, !tbaa !213
  %51 = icmp eq ptr %50, %37
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %49, i64 0, i32 5
  %54 = load i64, ptr %53, align 8, !tbaa !215
  %55 = icmp ne i64 %54, %46
  %56 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %49, i64 0, i32 7
  %57 = load i8, ptr %56, align 4
  %58 = and i8 %57, 2
  %59 = icmp eq i8 %58, 0
  %60 = select i1 %55, i1 %59, i1 false
  br i1 %60, label %61, label %64

61:                                               ; preds = %52, %47
  %62 = add nuw nsw i32 %48, 1
  %63 = icmp eq i32 %62, %8
  br i1 %63, label %116, label %47, !llvm.loop !242

64:                                               ; preds = %52
  %65 = and i8 %57, 3
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %116

67:                                               ; preds = %64
  %68 = and i8 %57, 4
  %69 = icmp eq i8 %68, 0
  %70 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %49, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !243
  br i1 %69, label %81, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !12
  %75 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !12
  %77 = call ptr @build1_stat(i32 noundef 47, ptr noundef %76, ptr noundef %71) #23
  %78 = call ptr @gimple_fold_indirect_ref(ptr noundef %77) #23
  %79 = icmp eq ptr %78, null
  %80 = select i1 %79, ptr %77, ptr %78
  br label %81

81:                                               ; preds = %67, %72
  %82 = phi ptr [ %80, %72 ], [ %71, %67 ]
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %84 = icmp eq ptr %83, null
  br i1 %84, label %98, label %85

85:                                               ; preds = %81
  %86 = load i32, ptr @dump_flags, align 4, !tbaa !10
  %87 = and i32 %86, 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %85
  %90 = call i64 @fwrite(ptr nonnull @.str.70, i64 22, i64 1, ptr nonnull %83)
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %92 = load ptr, ptr %16, align 8, !tbaa !6
  call void @print_generic_expr(ptr noundef %91, ptr noundef %92, i32 noundef 0) #23
  %93 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %94 = call i64 @fwrite(ptr nonnull @.str.71, i64 6, i64 1, ptr %93)
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !6
  call void @print_generic_expr(ptr noundef %95, ptr noundef %82, i32 noundef 0) #23
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %97 = call i32 @fputc(i32 10, ptr %96)
  br label %98

98:                                               ; preds = %89, %85, %81
  %99 = icmp eq i8 %2, 0
  %100 = or i1 %99, %14
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = load ptr, ptr %16, align 8, !tbaa !6
  %103 = getelementptr inbounds %struct.tree_common, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !12
  %105 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %49, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !214
  %107 = call zeroext i8 @useless_type_conversion_p(ptr noundef %104, ptr noundef %106) #23
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = load ptr, ptr %16, align 8, !tbaa !6
  %111 = getelementptr inbounds %struct.tree_common, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !12
  %113 = call ptr @build1_stat(i32 noundef 118, ptr noundef %112, ptr noundef %82) #23
  br label %114

114:                                              ; preds = %98, %101, %109
  %115 = phi ptr [ %113, %109 ], [ %82, %101 ], [ %82, %98 ]
  store ptr %115, ptr %16, align 8, !tbaa !6
  br label %116

116:                                              ; preds = %61, %64, %35, %39, %4, %114
  %117 = phi i8 [ 1, %114 ], [ 0, %4 ], [ 0, %39 ], [ 0, %35 ], [ 0, %64 ], [ 0, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret i8 %117
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sra_ipa_modify_assign(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %4) #23
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %69, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %4) #24
  %9 = tail call fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %4) #24
  %10 = tail call zeroext i8 @sra_ipa_modify_expr(ptr noundef %8, ptr poison, i8 noundef zeroext 1, ptr noundef %2) #24, !range !16
  %11 = tail call zeroext i8 @sra_ipa_modify_expr(ptr noundef %9, ptr poison, i8 noundef zeroext 1, ptr noundef %2) #24, !range !16
  %12 = or i8 %11, %10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %69, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %9, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !12
  %18 = load ptr, ptr %8, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !12
  %21 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %17, ptr noundef %20) #23
  %22 = icmp eq i8 %21, 0
  %23 = load ptr, ptr %8, align 8, !tbaa !6
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  br i1 %22, label %26, label %48

26:                                               ; preds = %14
  %27 = icmp eq i64 %25, 51
  br i1 %27, label %28, label %42

28:                                               ; preds = %26
  %29 = load ptr, ptr %9, align 8, !tbaa !6
  %30 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !12
  %32 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %31) #23
  %33 = icmp eq i8 %32, 0
  %34 = load ptr, ptr %9, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !12
  br i1 %33, label %40, label %37

37:                                               ; preds = %28
  %38 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !6
  %39 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %36, ptr noundef %38) #23
  store ptr %39, ptr %8, align 8, !tbaa !6
  br label %69

40:                                               ; preds = %28
  %41 = tail call ptr @build_constructor(ptr noundef %36, ptr noundef null) #23
  store ptr %41, ptr %8, align 8, !tbaa !6
  br label %69

42:                                               ; preds = %26
  %43 = tail call fastcc i32 @gimple_location(ptr noundef %4) #24
  %44 = load ptr, ptr %9, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !12
  %47 = tail call ptr @fold_build1_stat_loc(i32 noundef %43, i32 noundef 118, ptr noundef %46, ptr noundef nonnull %23) #23
  br label %64

48:                                               ; preds = %14
  %49 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %25
  %50 = load i32, ptr %49, align 4, !tbaa !10
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load ptr, ptr %9, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !12
  %56 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %55) #23
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %9, align 8, !tbaa !6
  %60 = tail call zeroext i8 @is_gimple_reg(ptr noundef %59) #23
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load ptr, ptr %8, align 8, !tbaa !6
  br label %64

64:                                               ; preds = %62, %42
  %65 = phi ptr [ %63, %62 ], [ %47, %42 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = tail call ptr @force_gimple_operand_gsi(ptr noundef %1, ptr noundef nonnull %65, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #23
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %1, ptr noundef %68) #23
  br label %69

69:                                               ; preds = %40, %37, %48, %52, %58, %7, %64, %67, %3
  %70 = phi i32 [ 0, %3 ], [ 1, %67 ], [ 1, %64 ], [ 0, %7 ], [ 1, %58 ], [ 1, %52 ], [ 1, %48 ], [ 1, %37 ], [ 1, %40 ]
  ret i32 %70
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @replace_removed_params_ssa_names(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !37
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #24
  br label %18

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #24, !range !16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #24
  br label %18

12:                                               ; preds = %7
  %13 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #24, !range !16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #24
  br label %18

17:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3773, ptr noundef nonnull @.str.1) #23
  br label %18

18:                                               ; preds = %10, %17, %15, %5
  %19 = phi ptr [ %6, %5 ], [ %11, %10 ], [ %16, %15 ], [ undef, %17 ]
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 141
  br i1 %22, label %23, label %55

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !12
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 34
  br i1 %28, label %29, label %55

29:                                               ; preds = %23
  %30 = tail call fastcc ptr @get_adjustment_for_base(ptr noundef %1, ptr noundef nonnull %25) #24
  %31 = icmp eq ptr %30, null
  br i1 %31, label %55, label %32

32:                                               ; preds = %29
  %33 = tail call fastcc ptr @get_replaced_param_substitute(ptr noundef nonnull %30) #24
  %34 = tail call fastcc ptr @make_ssa_name(ptr noundef %33, ptr noundef %0) #24
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 41, i64 1, ptr nonnull %35)
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %39, ptr noundef nonnull %19, i32 noundef 0) #23
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %41 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 6, i64 1, ptr %40)
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %42, ptr noundef %34, i32 noundef 0) #23
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %44 = tail call i32 @fputc(i32 10, ptr %43)
  br label %45

45:                                               ; preds = %37, %32
  %46 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #24, !range !16
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %34) #24
  br label %54

49:                                               ; preds = %45
  %50 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #24, !range !16
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %34) #24
  br label %54

53:                                               ; preds = %49
  tail call fastcc void @gimple_phi_set_result(ptr noundef %0, ptr noundef %34) #24
  br label %54

54:                                               ; preds = %52, %53, %48
  tail call void @replace_uses_by(ptr noundef nonnull %19, ptr noundef %34) #23
  br label %55

55:                                               ; preds = %29, %23, %18, %54
  %56 = phi i8 [ 1, %54 ], [ 0, %18 ], [ 0, %23 ], [ 0, %29 ]
  ret i8 %56
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sra_ipa_reset_debug_stmts(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.immediate_use_iterator_d, align 8
  %3 = tail call fastcc i32 @VEC_ipa_parm_adjustment_t_base_length(ptr noundef %0) #24
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %37

5:                                                ; preds = %1, %34
  %6 = phi i32 [ %35, %34 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #25
  %7 = call fastcc ptr @VEC_ipa_parm_adjustment_t_base_index(ptr noundef %0, i32 noundef %6) #24
  %8 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %7, i64 0, i32 7
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %5
  %13 = load ptr, ptr %7, align 8, !tbaa !213
  %14 = call zeroext i8 @is_gimple_reg(ptr noundef %13) #23
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @cfun, align 8, !tbaa !6
  %18 = load ptr, ptr %7, align 8, !tbaa !213
  %19 = call ptr @gimple_default_def(ptr noundef %17, ptr noundef %18) #23
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %16
  %22 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %2, ptr noundef nonnull %19) #24
  %23 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #24, !range !16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21, %30
  %26 = phi ptr [ %31, %30 ], [ %22, %21 ]
  %27 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %26) #24, !range !16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3980, ptr noundef nonnull @.str.1) #23
  br label %30

30:                                               ; preds = %25, %29
  call fastcc void @gimple_debug_bind_reset_value(ptr noundef %26) #24
  call fastcc void @update_stmt(ptr noundef %26) #24
  %31 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %2) #24
  %32 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #24, !range !16
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %25, label %34, !llvm.loop !244

34:                                               ; preds = %30, %21, %16, %5, %12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #25
  %35 = add nuw nsw i32 %6, 1
  %36 = icmp eq i32 %35, %3
  br i1 %36, label %37, label %5, !llvm.loop !245

37:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @convert_callers(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %58, label %12

9:                                                ; preds = %33
  %10 = load ptr, ptr %6, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %58, label %39

12:                                               ; preds = %2, %33
  %13 = phi ptr [ %37, %33 ], [ %7, %2 ]
  %14 = getelementptr inbounds %struct.cgraph_edge, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !246
  %16 = load ptr, ptr %15, align 8, !tbaa !153
  store ptr %16, ptr @current_function_decl, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.tree_function_decl, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  tail call void @push_cfun(ptr noundef %18) #23
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %12
  %22 = load ptr, ptr %14, align 8, !tbaa !246
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 24
  %24 = load i32, ptr %23, align 8, !tbaa !247
  %25 = getelementptr inbounds %struct.cgraph_edge, ptr %13, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !248
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 24
  %28 = load i32, ptr %27, align 8, !tbaa !247
  %29 = tail call ptr @cgraph_node_name(ptr noundef %22) #23
  %30 = load ptr, ptr %25, align 8, !tbaa !248
  %31 = tail call ptr @cgraph_node_name(ptr noundef %30) #23
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %19, ptr noundef nonnull @.str.74, i32 noundef %24, i32 noundef %28, ptr noundef %29, ptr noundef %31) #24
  br label %33

33:                                               ; preds = %21, %12
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %13, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !167
  tail call void @ipa_modify_call_arguments(ptr noundef nonnull %13, ptr noundef %35, ptr noundef %1) #23
  tail call void @pop_cfun() #23
  %36 = getelementptr inbounds %struct.cgraph_edge, ptr %13, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %9, label %12, !llvm.loop !249

39:                                               ; preds = %9, %54
  %40 = phi ptr [ %56, %54 ], [ %10, %9 ]
  %41 = getelementptr inbounds %struct.cgraph_edge, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !246
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 24
  %44 = load i32, ptr %43, align 8, !tbaa !247
  %45 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %44) #23
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load ptr, ptr %41, align 8, !tbaa !246
  %49 = tail call i32 @compute_inline_parameters(ptr noundef %48) #23
  %50 = load ptr, ptr %41, align 8, !tbaa !246
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %50, i64 0, i32 24
  %52 = load i32, ptr %51, align 8, !tbaa !247
  %53 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %52) #23
  br label %54

54:                                               ; preds = %39, %47
  %55 = getelementptr inbounds %struct.cgraph_edge, ptr %40, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %39, !llvm.loop !250

58:                                               ; preds = %54, %2, %9
  tail call void @bitmap_obstack_free(ptr noundef %5) #23
  store ptr %4, ptr @current_function_decl, align 8, !tbaa !6
  %59 = load i1, ptr @encountered_recursive_call, align 1
  br i1 %59, label %60, label %102

60:                                               ; preds = %58
  %61 = load ptr, ptr @cfun, align 8, !tbaa !6
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !25
  %64 = load ptr, ptr %63, align 8, !tbaa !27
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !29
  %67 = getelementptr inbounds %struct.control_flow_graph, ptr %63, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !32
  %69 = icmp eq ptr %66, %68
  br i1 %69, label %102, label %70

70:                                               ; preds = %60, %93
  %71 = phi ptr [ %95, %93 ], [ %66, %60 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %71) #24
  %72 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !16
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %70, %90
  %75 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24
  %76 = tail call fastcc i32 @gimple_code(ptr noundef %75) #24, !range !37
  %77 = icmp eq i32 %76, 8
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %75) #24
  %80 = icmp eq ptr %79, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %78
  %82 = tail call ptr @cgraph_get_node(ptr noundef nonnull %79) #23
  %83 = icmp eq ptr %82, %0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = tail call i64 @fwrite(ptr nonnull @.str.75, i64 24, i64 1, ptr nonnull %85)
  br label %89

89:                                               ; preds = %87, %84
  tail call void @ipa_modify_call_arguments(ptr noundef null, ptr noundef %75, ptr noundef %1) #23
  br label %90

90:                                               ; preds = %78, %81, %89, %74
  call fastcc void @gsi_next(ptr noundef nonnull %3) #24
  %91 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !16
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %74, label %93, !llvm.loop !251

93:                                               ; preds = %90, %70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !29
  %96 = load ptr, ptr @cfun, align 8, !tbaa !6
  %97 = getelementptr inbounds %struct.function, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !25
  %99 = getelementptr inbounds %struct.control_flow_graph, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !32
  %101 = icmp eq ptr %95, %100
  br i1 %101, label %102, label %70, !llvm.loop !252

102:                                              ; preds = %93, %60, %58
  ret void
}

; Function Attrs: optsize
declare void @cgraph_make_node_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_parm_adjustment_t_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !237
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_ipa_parm_adjustment_t_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #12 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_fold_indirect_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_constructor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_adjustment_for_base(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #13 {
  %3 = tail call fastcc i32 @VEC_ipa_parm_adjustment_t_base_length(ptr noundef %0) #24
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2, %15
  %6 = phi i32 [ %16, %15 ], [ 0, %2 ]
  %7 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_base_index(ptr noundef %0, i32 noundef %6) #24
  %8 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %7, i64 0, i32 7
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = load ptr, ptr %7, align 8, !tbaa !213
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %5, %12
  %16 = add nuw nsw i32 %6, 1
  %17 = icmp eq i32 %16, %3
  br i1 %17, label %18, label %5, !llvm.loop !253

18:                                               ; preds = %15, %12, %2
  %19 = phi ptr [ null, %2 ], [ %7, %12 ], [ null, %15 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_replaced_param_substitute(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !254
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %42

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !213
  %7 = tail call fastcc ptr @make_fancy_name(ptr noundef %6) #24
  %8 = load ptr, ptr %0, align 8, !tbaa !213
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = tail call ptr @create_tmp_var(ptr noundef %10, ptr noundef nonnull @.str.73) #23
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -13
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = or i64 %21, 134217728
  store i64 %22, ptr %20, align 8
  br label %23

23:                                               ; preds = %5, %19
  %24 = tail call ptr @get_identifier(ptr noundef %7) #23
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %11, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !12
  %26 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 1), align 8, !tbaa !64
  %27 = ptrtoint ptr %7 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  store i64 %29, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !66
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !67
  %33 = ptrtoint ptr %32 to i64
  %34 = sub i64 %33, %28
  %35 = icmp slt i64 %29, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, ptr %26, i64 %29
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 2), align 8, !tbaa !68
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !69
  br label %40

38:                                               ; preds = %31, %23
  %39 = getelementptr inbounds i8, ptr %26, i64 %29
  tail call void @obstack_free(ptr noundef nonnull @name_obstack, ptr noundef %39) #23
  br label %40

40:                                               ; preds = %38, %36
  tail call fastcc void @get_var_ann(ptr noundef nonnull %11) #24
  %41 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %11) #23
  store ptr %11, ptr %2, align 8, !tbaa !254
  br label %42

42:                                               ; preds = %1, %40
  %43 = phi ptr [ %11, %40 ], [ %3, %1 ]
  ret ptr %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !6
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #23
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #24
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !12
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_phi_set_result(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #20 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare void @replace_uses_by(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef null) #24
  ret void
}

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ipa_modify_call_arguments(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @compute_inline_parameters(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind optsize }
attributes #24 = { optsize }
attributes #25 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{i32 0, i32 2049}
!16 = !{i8 0, i8 2}
!17 = !{!18, !11, i64 0}
!18 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36}
!19 = !{!18, !11, i64 4}
!20 = !{!18, !11, i64 8}
!21 = !{!18, !11, i64 12}
!22 = !{!18, !11, i64 16}
!23 = !{!18, !11, i64 20}
!24 = distinct !{!24, !14}
!25 = !{!26, !7, i64 8}
!26 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !7, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!27 = !{!28, !7, i64 0}
!28 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !7, i64 40, !11, i64 48, !8, i64 52, !8, i64 60, !11, i64 68, !11, i64 72}
!29 = !{!30, !7, i64 56}
!30 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !31, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!31 = !{!"long", !8, i64 0}
!32 = !{!28, !7, i64 8}
!33 = !{i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !6}
!34 = !{ptr @replace_removed_params_ssa_names}
!35 = distinct !{!35, !14}
!36 = !{!30, !11, i64 80}
!37 = !{i32 0, i32 256}
!38 = !{ptr @build_access_from_expr, ptr @sra_ipa_modify_expr, ptr @sra_modify_expr}
!39 = !{ptr @build_accesses_from_assign, ptr @sra_ipa_modify_assign, ptr @sra_modify_assign}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = !{!46, !7, i64 16}
!46 = !{!"access", !31, i64 0, !31, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !11, i64 112, !11, i64 112, !11, i64 112, !11, i64 112, !11, i64 112, !11, i64 112, !11, i64 112, !11, i64 112, !11, i64 113, !11, i64 113, !11, i64 113, !11, i64 113, !11, i64 113, !11, i64 113}
!47 = !{!46, !7, i64 32}
!48 = !{!46, !31, i64 8}
!49 = !{!50, !7, i64 0}
!50 = !{!"assign_link", !7, i64 0, !7, i64 8, !7, i64 16}
!51 = !{!50, !7, i64 8}
!52 = !{!53, !11, i64 72}
!53 = !{!"processor_costs", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !8, i64 16, !11, i64 36, !8, i64 40, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !8, i64 80, !8, i64 92, !11, i64 104, !8, i64 108, !8, i64 120, !11, i64 132, !8, i64 136, !8, i64 144, !11, i64 152, !8, i64 156, !8, i64 168, !11, i64 180, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !8, i64 228, !8, i64 300, !11, i64 372, !11, i64 376, !11, i64 380, !11, i64 384, !11, i64 388, !11, i64 392, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = !{!46, !31, i64 0}
!58 = !{!46, !7, i64 64}
!59 = !{i32 0, i32 3}
!60 = !{i32 1, i32 3}
!61 = !{!46, !7, i64 48}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = !{!65, !7, i64 8}
!65 = !{!"obstack", !31, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !31, i64 40, !11, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !11, i64 80, !11, i64 80, !11, i64 80}
!66 = !{!65, !31, i64 40}
!67 = !{!65, !7, i64 32}
!68 = !{!65, !7, i64 16}
!69 = !{!65, !7, i64 24}
!70 = distinct !{!70, !14}
!71 = !{!72, !7, i64 0}
!72 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!73 = !{!74, !7, i64 24}
!74 = !{!"htab", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !11, i64 56, !11, i64 60, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !11, i64 104}
!75 = !{!72, !7, i64 8}
!76 = !{!72, !7, i64 16}
!77 = distinct !{!77, !14}
!78 = !{!26, !7, i64 24}
!79 = !{!80, !7, i64 0}
!80 = !{!"gimple_df", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !81, i64 32, !81, i64 48, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !11, i64 96, !82, i64 104}
!81 = !{!"pt_solution", !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !7, i64 8}
!82 = !{!"ssa_operands", !7, i64 0, !11, i64 8, !11, i64 12, !8, i64 16, !7, i64 24, !7, i64 32}
!83 = !{!84, !7, i64 0}
!84 = !{!"gimple_seq_node_d", !7, i64 0, !7, i64 8, !7, i64 16}
!85 = !{!84, !7, i64 16}
!86 = !{!30, !11, i64 96}
!87 = !{!88, !7, i64 0}
!88 = !{!"gimple_bb_info", !7, i64 0, !7, i64 8}
!89 = !{!90, !7, i64 0}
!90 = !{!"gimple_seq_d", !7, i64 0, !7, i64 8, !7, i64 16}
!91 = !{!31, !31, i64 0}
!92 = distinct !{!92, !14}
!93 = distinct !{!93, !14}
!94 = !{!46, !7, i64 24}
!95 = !{!46, !7, i64 40}
!96 = distinct !{!96, !14}
!97 = !{!98, !11, i64 0}
!98 = !{!"VEC_access_p_base", !11, i64 0, !11, i64 4, !8, i64 8}
!99 = !{!98, !11, i64 4}
!100 = !{!46, !7, i64 80}
!101 = !{!46, !7, i64 88}
!102 = !{!50, !7, i64 16}
!103 = !{!104, !7, i64 0}
!104 = !{!"bitmap_head_def", !7, i64 0, !7, i64 8, !11, i64 16, !7, i64 24}
!105 = !{!106, !7, i64 0}
!106 = !{!"", !7, i64 0, !7, i64 8, !11, i64 16, !31, i64 24}
!107 = !{!106, !7, i64 8}
!108 = !{!109, !11, i64 16}
!109 = !{!"bitmap_element_def", !7, i64 0, !7, i64 8, !11, i64 16, !8, i64 24}
!110 = !{!106, !11, i64 16}
!111 = !{!106, !31, i64 24}
!112 = distinct !{!112, !14}
!113 = distinct !{!113, !14}
!114 = !{!109, !7, i64 0}
!115 = distinct !{!115, !14}
!116 = distinct !{!116, !14}
!117 = !{!46, !7, i64 56}
!118 = distinct !{!118, !14}
!119 = distinct !{!119, !14}
!120 = distinct !{!120, !14}
!121 = distinct !{!121, !14}
!122 = distinct !{!122, !14}
!123 = distinct !{!123, !14}
!124 = !{!46, !7, i64 96}
!125 = distinct !{!125, !14}
!126 = distinct !{!126, !14}
!127 = distinct !{!127, !14}
!128 = distinct !{!128, !14}
!129 = !{!46, !7, i64 72}
!130 = distinct !{!130, !14}
!131 = distinct !{!131, !14}
!132 = distinct !{!132, !14}
!133 = distinct !{!133, !14}
!134 = !{!46, !7, i64 104}
!135 = distinct !{!135, !14}
!136 = distinct !{!136, !14}
!137 = distinct !{!137, !14}
!138 = distinct !{!138, !14}
!139 = !{!65, !11, i64 48}
!140 = distinct !{!140, !14}
!141 = distinct !{!141, !14}
!142 = !{!143, !11, i64 0}
!143 = !{!"VEC_constructor_elt_base", !11, i64 0, !11, i64 4, !8, i64 8}
!144 = distinct !{!144, !14}
!145 = !{!30, !7, i64 8}
!146 = !{!147, !11, i64 0}
!147 = !{!"VEC_edge_base", !11, i64 0, !11, i64 4, !8, i64 8}
!148 = !{!28, !11, i64 32}
!149 = !{!18, !11, i64 24}
!150 = !{!18, !11, i64 28}
!151 = !{!18, !11, i64 32}
!152 = !{!18, !11, i64 36}
!153 = !{!154, !7, i64 0}
!154 = !{!"cgraph_node", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !155, i64 144, !157, i64 184, !158, i64 224, !159, i64 232, !160, i64 256, !31, i64 288, !11, i64 296, !11, i64 300, !11, i64 304, !11, i64 308, !11, i64 308, !11, i64 308, !11, i64 308, !11, i64 308, !11, i64 308, !11, i64 308, !11, i64 308, !11, i64 309, !11, i64 309}
!155 = !{!"cgraph_local_info", !7, i64 0, !156, i64 8, !11, i64 32, !11, i64 32, !11, i64 32, !11, i64 32, !11, i64 32, !11, i64 32, !11, i64 32, !11, i64 32}
!156 = !{!"inline_summary", !31, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!157 = !{!"cgraph_global_info", !31, i64 0, !31, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !8, i64 36}
!158 = !{!"cgraph_rtl_info", !11, i64 0}
!159 = !{!"cgraph_clone_info", !7, i64 0, !7, i64 8, !7, i64 16}
!160 = !{!"cgraph_thunk_info", !31, i64 0, !31, i64 8, !7, i64 16, !8, i64 24, !8, i64 25, !8, i64 26}
!161 = !{!154, !11, i64 212}
!162 = !{!163, !11, i64 8}
!163 = !{!"param_info", !7, i64 0, !11, i64 8, !8, i64 12, !11, i64 16, !11, i64 20, !7, i64 24}
!164 = !{!154, !7, i64 16}
!165 = distinct !{!165, !14}
!166 = distinct !{!166, !14}
!167 = !{!168, !7, i64 56}
!168 = !{!"cgraph_edge", !31, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !169, i64 88, !11, i64 90, !11, i64 90, !11, i64 90}
!169 = !{!"short", !8, i64 0}
!170 = distinct !{!170, !14}
!171 = distinct !{!171, !14}
!172 = distinct !{!172, !14}
!173 = distinct !{!173, !14}
!174 = distinct !{!174, !14}
!175 = distinct !{!175, !14}
!176 = distinct !{!176, !14}
!177 = distinct !{!177, !14}
!178 = !{!179, !7, i64 8}
!179 = !{!"ssa_use_operand_d", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24}
!180 = !{!181, !7, i64 8}
!181 = !{!"immediate_use_iterator_d", !7, i64 0, !7, i64 8, !179, i64 16, !7, i64 48}
!182 = !{!181, !7, i64 0}
!183 = !{!181, !7, i64 48}
!184 = !{!181, !7, i64 24}
!185 = !{!181, !7, i64 16}
!186 = distinct !{!186, !14}
!187 = distinct !{!187, !14}
!188 = !{!179, !7, i64 24}
!189 = !{!190, !8, i64 0}
!190 = !{!"ssa_operand_iterator_d", !8, i64 0, !11, i64 4, !7, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !7, i64 32}
!191 = !{!190, !7, i64 32}
!192 = !{!190, !11, i64 28}
!193 = !{!190, !11, i64 4}
!194 = !{!190, !7, i64 16}
!195 = !{!196, !7, i64 0}
!196 = !{!"use_optype_d", !7, i64 0, !179, i64 8}
!197 = !{!190, !11, i64 24}
!198 = !{!196, !7, i64 32}
!199 = !{!179, !7, i64 0}
!200 = !{!190, !7, i64 8}
!201 = !{!202, !7, i64 0}
!202 = !{!"def_optype_d", !7, i64 0, !7, i64 8}
!203 = distinct !{!203, !14}
!204 = distinct !{!204, !14}
!205 = distinct !{!205, !14}
!206 = distinct !{!206, !14}
!207 = distinct !{!207, !14}
!208 = distinct !{!208, !14}
!209 = distinct !{!209, !14}
!210 = distinct !{!210, !14}
!211 = !{!212, !11, i64 48}
!212 = !{!"ipa_parm_adjustment", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !31, i64 40, !11, i64 48, !11, i64 52, !11, i64 52, !11, i64 52}
!213 = !{!212, !7, i64 0}
!214 = !{!212, !7, i64 8}
!215 = !{!212, !31, i64 40}
!216 = distinct !{!216, !14}
!217 = distinct !{!217, !14}
!218 = distinct !{!218, !14}
!219 = distinct !{!219, !14}
!220 = distinct !{!220, !14}
!221 = distinct !{!221, !14}
!222 = !{!30, !7, i64 16}
!223 = distinct !{!223, !14}
!224 = distinct !{!224, !14}
!225 = !{i64 0, i64 4, !10, i64 8, i64 8, !6}
!226 = !{i64 0, i64 8, !6}
!227 = !{!228, !7, i64 0}
!228 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !31, i64 56}
!229 = !{!228, !7, i64 8}
!230 = distinct !{!230, !14}
!231 = distinct !{!231, !14}
!232 = distinct !{!232, !14}
!233 = !{!234, !11, i64 0}
!234 = !{!"VEC_basic_block_base", !11, i64 0, !11, i64 4, !8, i64 8}
!235 = !{!236, !11, i64 0}
!236 = !{!"", !11, i64 0, !7, i64 8}
!237 = !{!238, !11, i64 0}
!238 = !{!"VEC_ipa_parm_adjustment_t_base", !11, i64 0, !11, i64 4, !8, i64 8}
!239 = distinct !{!239, !14}
!240 = !{!241, !11, i64 0}
!241 = !{!"VEC_tree_base", !11, i64 0, !11, i64 4, !8, i64 8}
!242 = distinct !{!242, !14}
!243 = !{!212, !7, i64 16}
!244 = distinct !{!244, !14}
!245 = distinct !{!245, !14}
!246 = !{!168, !7, i64 8}
!247 = !{!154, !11, i64 296}
!248 = !{!168, !7, i64 16}
!249 = distinct !{!249, !14}
!250 = distinct !{!250, !14}
!251 = distinct !{!251, !14}
!252 = distinct !{!252, !14}
!253 = distinct !{!253, !14}
!254 = !{!212, !7, i64 24}
