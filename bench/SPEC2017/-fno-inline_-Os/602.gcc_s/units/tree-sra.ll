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
define dso_local zeroext i8 @build_ref_for_offset(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 !prof !627 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %21, label %7, !prof !628

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 8, !tbaa !629
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !633
  %13 = add i32 %12, -4
  %14 = icmp ult i32 %13, 7
  br i1 %14, label %15, label %18, !prof !635

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !636
  br label %18

18:                                               ; preds = %15, %7
  %19 = phi i32 [ 0, %7 ], [ %17, %15 ]
  %20 = tail call ptr @unshare_expr(ptr noundef nonnull %8) #23
  store ptr %20, ptr %0, align 8, !tbaa !629
  br label %21

21:                                               ; preds = %5, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %5 ]
  %23 = icmp eq i8 %4, 0
  br i1 %23, label %33, label %24, !prof !637

24:                                               ; preds = %21
  %25 = load i64, ptr %1, align 8
  %26 = trunc i64 %25 to i16
  switch i16 %26, label %33 [
    i16 10, label %27
    i16 12, label %27
  ], !prof !638

27:                                               ; preds = %24, %24
  %28 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !636
  br i1 %6, label %33, label %30, !prof !639

30:                                               ; preds = %27
  %31 = load ptr, ptr %0, align 8, !tbaa !629
  %32 = tail call ptr @fold_build1_stat_loc(i32 noundef %22, i32 noundef 47, ptr noundef %29, ptr noundef %31) #23
  store ptr %32, ptr %0, align 8, !tbaa !629
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
define internal fastcc zeroext i8 @build_ref_for_offset_1(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !640 !PGOFuncName !641 {
  %5 = alloca ptr, align 8
  %6 = icmp ne ptr %3, null
  %7 = icmp eq ptr %0, null
  br label %8

8:                                                ; preds = %112, %4
  %9 = phi i64 [ %2, %4 ], [ %113, %112 ]
  %10 = phi ptr [ %1, %4 ], [ %114, %112 ]
  %11 = icmp eq i64 %9, 0
  %12 = and i1 %6, %11
  br i1 %12, label %13, label %16, !prof !642

13:                                               ; preds = %8
  %14 = tail call zeroext i8 @types_compatible_p(ptr noundef nonnull %3, ptr noundef %10) #23
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %115, !prof !643

16:                                               ; preds = %13, %8
  %17 = load i64, ptr %10, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %108 [
    i16 17, label %19
    i16 18, label %19
    i16 16, label %19
    i16 15, label %75
  ], !prof !644

19:                                               ; preds = %16, %16, %16
  %20 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !636
  %22 = icmp eq ptr %21, null
  br i1 %22, label %115, label %23, !prof !645

23:                                               ; preds = %19, %71
  %24 = phi ptr [ %73, %71 ], [ %21, %19 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 31
  br i1 %27, label %28, label %69, !prof !646

28:                                               ; preds = %23
  %29 = call i64 @int_bit_position(ptr noundef nonnull %24) #23
  %30 = load i64, ptr %10, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 16
  %33 = icmp eq i64 %29, 0
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %36, label %35, !prof !647

35:                                               ; preds = %28
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1405, ptr noundef nonnull @.str.1) #23
  br label %36

36:                                               ; preds = %28, %35
  %37 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !636
  %39 = icmp eq ptr %38, null
  br i1 %39, label %69, label %40, !prof !648

40:                                               ; preds = %36
  %41 = call i32 @host_integerp(ptr noundef nonnull %38, i32 noundef 1) #23
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %69, label %43, !prof !648

43:                                               ; preds = %40
  %44 = call i64 @tree_low_cst(ptr noundef nonnull %38, i32 noundef 1) #23
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48, !prof !648

46:                                               ; preds = %43
  %47 = icmp eq i64 %29, %9
  br i1 %47, label %53, label %69

48:                                               ; preds = %43
  %49 = icmp sle i64 %29, %9
  %50 = add nsw i64 %44, %29
  %51 = icmp sgt i64 %50, %9
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %69, !prof !649

53:                                               ; preds = %48, %46
  br i1 %7, label %59, label %54, !prof !650

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !636
  %57 = load ptr, ptr %0, align 8, !tbaa !629
  %58 = call ptr @build3_stat(i32 noundef 41, ptr noundef %56, ptr noundef %57, ptr noundef nonnull %24, ptr noundef null) #23
  store ptr %58, ptr %5, align 8, !tbaa !629
  br label %59

59:                                               ; preds = %53, %54
  %60 = phi ptr [ %5, %54 ], [ null, %53 ]
  %61 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !636
  %63 = sub nsw i64 %9, %29
  %64 = call fastcc zeroext i8 @build_ref_for_offset_1(ptr noundef %60, ptr noundef %62, i64 noundef %63, ptr noundef %3) #24
  %65 = icmp eq i8 %64, 0
  %66 = or i1 %7, %65
  br i1 %66, label %70, label %67, !prof !651

67:                                               ; preds = %59
  %68 = load ptr, ptr %5, align 8, !tbaa !629
  store ptr %68, ptr %0, align 8, !tbaa !629
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
  %73 = load ptr, ptr %72, align 8, !tbaa !636
  %74 = icmp eq ptr %73, null
  br i1 %74, label %115, label %23, !prof !652, !llvm.loop !653

75:                                               ; preds = %16
  %76 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !636
  %78 = getelementptr inbounds %struct.tree_type, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !636
  %80 = icmp eq ptr %79, null
  br i1 %80, label %115, label %81, !prof !655

81:                                               ; preds = %75
  %82 = tail call i32 @host_integerp(ptr noundef nonnull %79, i32 noundef 1) #23
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %115, label %84, !prof !655

84:                                               ; preds = %81
  %85 = tail call i64 @tree_low_cst(ptr noundef nonnull %79, i32 noundef 1) #23
  %86 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !636
  %88 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 13
  %89 = load ptr, ptr %88, align 8, !tbaa !636
  %90 = load i64, ptr %89, align 8
  %91 = and i64 %90, 65535
  %92 = icmp ne i64 %91, 23
  %93 = icmp eq i64 %85, 0
  %94 = select i1 %92, i1 true, i1 %93
  br i1 %94, label %115, label %95, !prof !656

95:                                               ; preds = %84
  br i1 %7, label %112, label %96, !prof !657

96:                                               ; preds = %95
  %97 = sdiv i64 %9, %85
  %98 = tail call ptr @build_int_cst(ptr noundef nonnull %87, i64 noundef %97) #23
  %99 = tail call i32 @integer_zerop(ptr noundef nonnull %89) #23
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103, !prof !658

101:                                              ; preds = %96
  %102 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef %98, ptr noundef nonnull %89, i32 noundef 0) #23
  br label %103

103:                                              ; preds = %101, %96
  %104 = phi ptr [ %98, %96 ], [ %102, %101 ]
  %105 = load ptr, ptr %76, align 8, !tbaa !636
  %106 = load ptr, ptr %0, align 8, !tbaa !629
  %107 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %105, ptr noundef %106, ptr noundef %104, ptr noundef null, ptr noundef null) #23
  store ptr %107, ptr %0, align 8, !tbaa !629
  br label %112

108:                                              ; preds = %16
  %109 = xor i1 %6, true
  %110 = and i1 %11, %109
  %111 = zext i1 %110 to i8
  br label %115

112:                                              ; preds = %95, %103
  %113 = srem i64 %9, %85
  %114 = load ptr, ptr %76, align 8, !tbaa !636
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
define internal zeroext i8 @gate_intra_sra() #3 !prof !659 !PGOFuncName !660 {
  %1 = load i32, ptr @flag_tree_sra, align 4, !tbaa !633
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @early_intra_sra() #0 !prof !661 !PGOFuncName !662 {
  store i32 1, ptr @sra_mode, align 4, !tbaa !633
  %1 = tail call fastcc i32 @perform_intra_sra() #24, !range !663
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @perform_intra_sra() unnamed_addr #0 !prof !659 !PGOFuncName !664 {
  tail call fastcc void @sra_initialize() #24
  %1 = tail call fastcc zeroext i8 @find_var_candidates() #24, !range !665
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %23, label %3, !prof !666

3:                                                ; preds = %0
  %4 = tail call fastcc zeroext i8 @scan_function(ptr noundef nonnull @build_access_from_expr, ptr noundef nonnull @build_accesses_from_assign, ptr noundef null, i8 noundef zeroext 1, ptr noundef null) #24
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %23, label %6, !prof !667

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @analyze_all_variable_accesses() #24, !range !665
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %23, label %9, !prof !668

9:                                                ; preds = %6
  %10 = tail call fastcc zeroext i8 @scan_function(ptr noundef nonnull @sra_modify_expr, ptr noundef nonnull @sra_modify_assign, ptr noundef null, i8 noundef zeroext 0, ptr noundef null) #24
  tail call fastcc void @initialize_parameter_reductions() #24
  %11 = load ptr, ptr @cfun, align 8, !tbaa !629
  %12 = load i32, ptr @sra_stats, align 4, !tbaa !669
  tail call void @statistics_counter_event(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef %12) #23
  %13 = load ptr, ptr @cfun, align 8, !tbaa !629
  %14 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !671
  tail call void @statistics_counter_event(ptr noundef %13, ptr noundef nonnull @.str.4, i32 noundef %14) #23
  %15 = load ptr, ptr @cfun, align 8, !tbaa !629
  %16 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 2), align 4, !tbaa !672
  tail call void @statistics_counter_event(ptr noundef %15, ptr noundef nonnull @.str.5, i32 noundef %16) #23
  %17 = load ptr, ptr @cfun, align 8, !tbaa !629
  %18 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 3), align 4, !tbaa !673
  tail call void @statistics_counter_event(ptr noundef %17, ptr noundef nonnull @.str.6, i32 noundef %18) #23
  %19 = load ptr, ptr @cfun, align 8, !tbaa !629
  %20 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 4), align 4, !tbaa !674
  tail call void @statistics_counter_event(ptr noundef %19, ptr noundef nonnull @.str.7, i32 noundef %20) #23
  %21 = load ptr, ptr @cfun, align 8, !tbaa !629
  %22 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 5), align 4, !tbaa !675
  tail call void @statistics_counter_event(ptr noundef %21, ptr noundef nonnull @.str.8, i32 noundef %22) #23
  br label %23

23:                                               ; preds = %6, %3, %0, %9
  %24 = phi i32 [ 2048, %9 ], [ 0, %6 ], [ 0, %3 ], [ 0, %0 ]
  tail call fastcc void @sra_deinitialize() #24
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sra_initialize() unnamed_addr #0 !prof !676 !PGOFuncName !677 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %1, ptr @candidate_bitmap, align 8, !tbaa !629
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %2, ptr @should_scalarize_away_bitmap, align 8, !tbaa !629
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %3, ptr @cannot_scalarize_away_bitmap, align 8, !tbaa !629
  %4 = tail call i32 @_obstack_begin(ptr noundef nonnull @name_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #23
  %5 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.9, i64 noundef 120, i64 noundef 16) #23
  store ptr %5, ptr @access_pool, align 8, !tbaa !629
  %6 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.10, i64 noundef 24, i64 noundef 16) #23
  store ptr %6, ptr @link_pool, align 8, !tbaa !629
  %7 = tail call ptr @pointer_map_create() #23
  store ptr %7, ptr @base_access_vec, align 8, !tbaa !629
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) @sra_stats, i8 0, i64 40, i1 false)
  store i1 false, ptr @encountered_apply_args, align 1
  store i1 false, ptr @encountered_recursive_call, align 1
  store i1 false, ptr @encountered_unchangable_recursive_call, align 1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_var_candidates() unnamed_addr #0 !prof !659 !PGOFuncName !678 {
  %1 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #25
  %2 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #24
  %3 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #24, !range !665
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %67, !prof !679

5:                                                ; preds = %0, %62
  %6 = phi i8 [ %63, %62 ], [ 0, %0 ]
  %7 = phi ptr [ %64, %62 ], [ %2, %0 ]
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %62 [
    i16 32, label %10
    i16 34, label %10
  ], !prof !680

10:                                               ; preds = %5, %5
  %11 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !636
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -15
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %18, label %62, !prof !681

18:                                               ; preds = %10
  %19 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %7) #23
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %62, !prof !682

21:                                               ; preds = %18
  %22 = load i64, ptr %7, align 8
  %23 = and i64 %22, 524288
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %62, !prof !683

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !636
  %28 = icmp eq ptr %27, null
  br i1 %28, label %62, label %29, !prof !684

29:                                               ; preds = %25
  %30 = tail call i32 @host_integerp(ptr noundef nonnull %27, i32 noundef 1) #23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %62, label %32, !prof !684

32:                                               ; preds = %29
  %33 = load ptr, ptr %26, align 8, !tbaa !636
  %34 = tail call i64 @tree_low_cst(ptr noundef %33, i32 noundef 1) #23
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %62, label %36, !prof !684

36:                                               ; preds = %32
  %37 = tail call fastcc zeroext i8 @type_internals_preclude_sra_p(ptr noundef nonnull %12) #24
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %62, !prof !683

39:                                               ; preds = %36
  %40 = load i32, ptr @sra_mode, align 4, !tbaa !633
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %45, !prof !685

42:                                               ; preds = %39
  %43 = tail call fastcc zeroext i8 @is_va_list_type(ptr noundef nonnull %12) #24, !range !665
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %62, !prof !686

45:                                               ; preds = %42, %39
  %46 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !629
  %47 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !636
  %49 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %46, i32 noundef %48) #23
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %52, !prof !683

52:                                               ; preds = %45
  %53 = load i32, ptr @dump_flags, align 4, !tbaa !633
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %47, align 4, !tbaa !636
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %50, ptr noundef nonnull @.str.11, i32 noundef %57) #24
  %59 = load ptr, ptr @dump_file, align 8, !tbaa !629
  tail call void @print_generic_expr(ptr noundef %59, ptr noundef nonnull %7, i32 noundef 0) #23
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %61 = tail call i32 @fputc(i32 10, ptr %60)
  br label %62

62:                                               ; preds = %10, %45, %52, %56, %5, %18, %21, %25, %29, %32, %36, %42
  %63 = phi i8 [ %6, %18 ], [ %6, %21 ], [ %6, %32 ], [ %6, %36 ], [ %6, %42 ], [ %6, %29 ], [ %6, %25 ], [ %6, %5 ], [ %6, %10 ], [ 1, %56 ], [ 1, %52 ], [ 1, %45 ]
  %64 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #24
  %65 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #24, !range !665
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %5, label %67, !prof !687, !llvm.loop !688

67:                                               ; preds = %62, %0
  %68 = phi i8 [ 0, %0 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #25
  ret i8 %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @scan_function(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 !prof !689 !PGOFuncName !690 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #25
  %10 = load ptr, ptr @cfun, align 8, !tbaa !629
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !691
  %13 = load ptr, ptr %12, align 8, !tbaa !693
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !695
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !698
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %230, label %19, !prof !699

19:                                               ; preds = %5
  %20 = icmp ne ptr %2, null
  %21 = icmp ne i8 %3, 0
  %22 = icmp eq i8 %3, 0
  br label %23

23:                                               ; preds = %19, %220
  %24 = phi ptr [ %15, %19 ], [ %223, %220 ]
  %25 = phi i8 [ 0, %19 ], [ %221, %220 ]
  br i1 %20, label %26, label %36, !prof !700

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #25
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %24) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !701
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #25
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #24, !range !665
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %36, !prof !702

29:                                               ; preds = %26, %29
  %30 = phi i8 [ %33, %29 ], [ %25, %26 ]
  %31 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #24
  %32 = call zeroext i8 %2(ptr noundef %31, ptr noundef %4) #23, !callees !703
  %33 = or i8 %32, %30
  call fastcc void @gsi_next(ptr noundef nonnull %6) #24
  %34 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #24, !range !665
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %29, label %36, !prof !704, !llvm.loop !705

36:                                               ; preds = %29, %26, %23
  %37 = phi i8 [ %25, %23 ], [ %25, %26 ], [ %33, %29 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %24) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !701
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #25
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #24, !range !665
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %220, !prof !706

40:                                               ; preds = %36, %207
  %41 = phi i8 [ %209, %207 ], [ %37, %36 ]
  %42 = phi i8 [ %208, %207 ], [ 0, %36 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  %43 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #24
  store ptr %43, ptr %9, align 8, !tbaa !629
  %44 = load ptr, ptr @final_bbs, align 8
  %45 = icmp ne ptr %44, null
  %46 = select i1 %21, i1 %45, i1 false
  br i1 %46, label %47, label %55, !prof !707

47:                                               ; preds = %40
  %48 = call zeroext i8 @stmt_can_throw_external(ptr noundef %43) #23
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %55, label %50, !prof !708

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %52 = load ptr, ptr @final_bbs, align 8, !tbaa !629
  %53 = load i32, ptr %51, align 8, !tbaa !709
  %54 = call zeroext i8 @bitmap_set_bit(ptr noundef %52, i32 noundef %53) #23
  br label %55

55:                                               ; preds = %50, %47, %40
  %56 = load ptr, ptr %9, align 8, !tbaa !629
  %57 = call fastcc i32 @gimple_code(ptr noundef %56) #24, !range !710
  %58 = trunc i32 %57 to i8
  switch i8 %58, label %205 [
    i8 9, label %62
    i8 6, label %77
    i8 8, label %59
    i8 7, label %147
  ], !prof !711

59:                                               ; preds = %55
  %60 = call fastcc i32 @gimple_call_num_args(ptr noundef %56) #24
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %95, label %84, !prof !712

62:                                               ; preds = %55
  %63 = call fastcc ptr @gimple_return_retval_ptr(ptr noundef %56) #24
  %64 = load ptr, ptr %63, align 8, !tbaa !629
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66, !prof !713

66:                                               ; preds = %62
  %67 = call zeroext i8 %0(ptr noundef nonnull %63, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %4) #23, !callees !714
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi i8 [ %67, %66 ], [ 0, %62 ]
  %70 = load ptr, ptr @final_bbs, align 8
  %71 = icmp ne ptr %70, null
  %72 = select i1 %21, i1 %71, i1 false
  br i1 %72, label %73, label %194, !prof !715

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %75 = load i32, ptr %74, align 8, !tbaa !709
  %76 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %70, i32 noundef %75) #23
  br label %205

77:                                               ; preds = %55
  %78 = call i32 %1(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef %4) #23, !callees !716
  %79 = icmp eq i32 %78, 1
  %80 = zext i1 %79 to i8
  %81 = icmp eq i32 %78, 2
  %82 = icmp ne i32 %78, 2
  %83 = select i1 %20, i1 %82, i1 false
  br i1 %83, label %189, label %194, !prof !717

84:                                               ; preds = %59, %84
  %85 = phi ptr [ %92, %84 ], [ %56, %59 ]
  %86 = phi i32 [ %91, %84 ], [ 0, %59 ]
  %87 = phi i8 [ %90, %84 ], [ 0, %59 ]
  %88 = call fastcc ptr @gimple_call_arg_ptr(ptr noundef %85, i32 noundef %86) #24
  %89 = call zeroext i8 %0(ptr noundef %88, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %4) #23, !callees !714
  %90 = or i8 %89, %87
  %91 = add nuw i32 %86, 1
  %92 = load ptr, ptr %9, align 8, !tbaa !629
  %93 = call fastcc i32 @gimple_call_num_args(ptr noundef %92) #24
  %94 = icmp ult i32 %91, %93
  br i1 %94, label %84, label %95, !prof !718, !llvm.loop !719

95:                                               ; preds = %84, %59
  %96 = phi i8 [ 0, %59 ], [ %90, %84 ]
  %97 = phi ptr [ %56, %59 ], [ %92, %84 ]
  %98 = load i32, ptr @sra_mode, align 4
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %21, i1 %99, i1 false
  br i1 %100, label %101, label %132, !prof !720

101:                                              ; preds = %95
  %102 = call fastcc ptr @gimple_call_fndecl(ptr noundef %97) #24
  %103 = load ptr, ptr %9, align 8, !tbaa !629
  %104 = call i32 @gimple_call_flags(ptr noundef %103) #23
  %105 = icmp eq ptr %102, null
  br i1 %105, label %122, label %106, !prof !721

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.tree_function_decl, ptr %102, i64 0, i32 5
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, 8191
  %110 = icmp eq i32 %109, 6561
  br i1 %110, label %111, label %112, !prof !722

111:                                              ; preds = %106
  store i1 true, ptr @encountered_apply_args, align 1
  br label %112

112:                                              ; preds = %111, %106
  %113 = call ptr @cgraph_get_node(ptr noundef nonnull %102) #23
  %114 = load ptr, ptr @current_function_decl, align 8, !tbaa !629
  %115 = call ptr @cgraph_get_node(ptr noundef %114) #23
  %116 = icmp eq ptr %113, %115
  br i1 %116, label %117, label %122, !prof !723

117:                                              ; preds = %112
  store i1 true, ptr @encountered_recursive_call, align 1
  %118 = load ptr, ptr %9, align 8, !tbaa !629
  %119 = call fastcc zeroext i8 @callsite_has_enough_arguments_p(ptr noundef %118) #24, !range !665
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %122, !prof !724

121:                                              ; preds = %117
  store i1 true, ptr @encountered_unchangable_recursive_call, align 1
  br label %122

122:                                              ; preds = %112, %121, %117, %101
  %123 = load ptr, ptr @final_bbs, align 8, !tbaa !629
  %124 = icmp ne ptr %123, null
  %125 = and i32 %104, 3
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %124, i1 %126, i1 false
  br i1 %127, label %128, label %132, !prof !725

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %130 = load i32, ptr %129, align 8, !tbaa !709
  %131 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %123, i32 noundef %130) #23
  br label %132

132:                                              ; preds = %122, %128, %95
  %133 = load ptr, ptr %9, align 8, !tbaa !629
  %134 = call fastcc ptr @gimple_call_lhs(ptr noundef %133) #24
  %135 = icmp eq ptr %134, null
  br i1 %135, label %194, label %136, !prof !726

136:                                              ; preds = %132
  %137 = load ptr, ptr %9, align 8, !tbaa !629
  %138 = call fastcc ptr @gimple_call_lhs_ptr(ptr noundef %137) #24
  br i1 %22, label %144, label %139, !prof !727

139:                                              ; preds = %136
  %140 = load ptr, ptr %9, align 8, !tbaa !629
  %141 = load ptr, ptr %138, align 8, !tbaa !629
  %142 = call fastcc zeroext i8 @disqualify_ops_if_throwing_stmt(ptr noundef %140, ptr noundef %141, ptr noundef null) #24, !range !665
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %205, !prof !728

144:                                              ; preds = %139, %136
  %145 = call zeroext i8 %0(ptr noundef %138, ptr noundef nonnull %6, i8 noundef zeroext 1, ptr noundef %4) #23, !callees !714
  %146 = or i8 %145, %96
  br i1 %20, label %189, label %194, !prof !729

147:                                              ; preds = %55
  br i1 %22, label %156, label %148

148:                                              ; preds = %147
  %149 = call zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef %56, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull @asm_visit_addr) #23
  %150 = load ptr, ptr @final_bbs, align 8, !tbaa !629
  %151 = icmp eq ptr %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %154 = load i32, ptr %153, align 8, !tbaa !709
  %155 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %150, i32 noundef %154) #23
  br label %156

156:                                              ; preds = %148, %152, %147
  %157 = load ptr, ptr %9, align 8, !tbaa !629
  %158 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %157) #24, !range !710
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %165, %156
  %161 = phi ptr [ %157, %156 ], [ %174, %165 ]
  %162 = phi i8 [ 0, %156 ], [ %172, %165 ]
  %163 = call fastcc i32 @gimple_asm_noutputs(ptr noundef %161) #24, !range !710
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %194, label %177

165:                                              ; preds = %156, %165
  %166 = phi ptr [ %174, %165 ], [ %157, %156 ]
  %167 = phi i32 [ %173, %165 ], [ 0, %156 ]
  %168 = phi i8 [ %172, %165 ], [ 0, %156 ]
  %169 = call fastcc ptr @gimple_asm_input_op(ptr noundef %166, i32 noundef %167) #24
  %170 = getelementptr inbounds %struct.tree_list, ptr %169, i64 0, i32 2
  %171 = call zeroext i8 %0(ptr noundef nonnull %170, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %4) #23, !callees !714
  %172 = or i8 %171, %168
  %173 = add nuw nsw i32 %167, 1
  %174 = load ptr, ptr %9, align 8, !tbaa !629
  %175 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %174) #24, !range !710
  %176 = icmp ult i32 %173, %175
  br i1 %176, label %165, label %160, !llvm.loop !730

177:                                              ; preds = %160, %177
  %178 = phi ptr [ %186, %177 ], [ %161, %160 ]
  %179 = phi i32 [ %185, %177 ], [ 0, %160 ]
  %180 = phi i8 [ %184, %177 ], [ %162, %160 ]
  %181 = call fastcc ptr @gimple_asm_output_op(ptr noundef %178, i32 noundef %179) #24
  %182 = getelementptr inbounds %struct.tree_list, ptr %181, i64 0, i32 2
  %183 = call zeroext i8 %0(ptr noundef nonnull %182, ptr noundef nonnull %6, i8 noundef zeroext 1, ptr noundef %4) #23, !callees !714
  %184 = or i8 %183, %180
  %185 = add nuw nsw i32 %179, 1
  %186 = load ptr, ptr %9, align 8, !tbaa !629
  %187 = call fastcc i32 @gimple_asm_noutputs(ptr noundef %186) #24, !range !710
  %188 = icmp ult i32 %185, %187
  br i1 %188, label %177, label %194, !llvm.loop !731

189:                                              ; preds = %144, %77
  %190 = phi i8 [ %80, %77 ], [ %146, %144 ]
  %191 = load ptr, ptr %9, align 8, !tbaa !629
  %192 = call zeroext i8 %2(ptr noundef %191, ptr noundef %4) #23
  %193 = or i8 %192, %190
  br label %194

194:                                              ; preds = %177, %189, %160, %144, %132, %77, %68
  %195 = phi i1 [ false, %132 ], [ %81, %77 ], [ false, %68 ], [ false, %144 ], [ false, %160 ], [ false, %189 ], [ false, %177 ]
  %196 = phi i8 [ %96, %132 ], [ %80, %77 ], [ %69, %68 ], [ %146, %144 ], [ %162, %160 ], [ %193, %189 ], [ %184, %177 ]
  %197 = icmp eq i8 %196, 0
  %198 = or i1 %197, %21
  br i1 %198, label %203, label %199, !prof !732

199:                                              ; preds = %194
  %200 = load ptr, ptr %9, align 8, !tbaa !629
  call fastcc void @update_stmt(ptr noundef %200) #24
  %201 = load ptr, ptr %9, align 8, !tbaa !629
  %202 = call zeroext i8 @maybe_clean_eh_stmt(ptr noundef %201) #23
  br i1 %195, label %207, label %205, !prof !733

203:                                              ; preds = %194
  %204 = select i1 %197, i8 %41, i8 1, !prof !734
  br i1 %195, label %207, label %205, !prof !735

205:                                              ; preds = %139, %73, %55, %199, %203
  %206 = phi i8 [ %42, %203 ], [ 1, %199 ], [ %42, %55 ], [ %42, %73 ], [ %42, %139 ]
  call fastcc void @gsi_next(ptr noundef nonnull %6) #24
  br label %207

207:                                              ; preds = %199, %203, %205
  %208 = phi i8 [ %206, %205 ], [ 1, %203 ], [ 1, %199 ]
  %209 = phi i8 [ 1, %205 ], [ %204, %203 ], [ 1, %199 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  %210 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #24, !range !665
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %40, label %212, !prof !736, !llvm.loop !737

212:                                              ; preds = %207
  %213 = icmp ne i8 %208, 0
  %214 = select i1 %22, i1 %213, i1 false
  %215 = load i32, ptr @sra_mode, align 4
  %216 = icmp eq i32 %215, 0
  %217 = select i1 %214, i1 %216, i1 false
  br i1 %217, label %218, label %220, !prof !738

218:                                              ; preds = %212
  %219 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %24) #23
  br label %220

220:                                              ; preds = %36, %218, %212
  %221 = phi i8 [ %209, %218 ], [ %209, %212 ], [ %37, %36 ]
  %222 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %223 = load ptr, ptr %222, align 8, !tbaa !695
  %224 = load ptr, ptr @cfun, align 8, !tbaa !629
  %225 = getelementptr inbounds %struct.function, ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !691
  %227 = getelementptr inbounds %struct.control_flow_graph, ptr %226, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !698
  %229 = icmp eq ptr %223, %228
  br i1 %229, label %230, label %23, !prof !739, !llvm.loop !740

230:                                              ; preds = %220, %5
  %231 = phi i8 [ 0, %5 ], [ %221, %220 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #25
  ret i8 %231
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @build_access_from_expr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture readnone %3) #0 !prof !741 !PGOFuncName !742 {
  %5 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #24
  %6 = tail call fastcc ptr @build_access_from_expr_1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext %2) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8, !prof !743

8:                                                ; preds = %4
  %9 = load ptr, ptr @cannot_scalarize_away_bitmap, align 8, !tbaa !629
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !prof !744

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !745
  %14 = getelementptr inbounds %struct.tree_decl_minimal, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !636
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %9, i32 noundef %15) #23
  br label %17

17:                                               ; preds = %4, %8, %11
  %18 = phi i8 [ 1, %11 ], [ 1, %8 ], [ 0, %4 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @build_accesses_from_assign(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !prof !747 !PGOFuncName !748 {
  %4 = load ptr, ptr %0, align 8, !tbaa !629
  %5 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %4) #23
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %84, label %7, !prof !749

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %4) #24
  %9 = tail call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %4) #24
  %10 = load ptr, ptr %8, align 8, !tbaa !629
  %11 = load ptr, ptr %9, align 8, !tbaa !629
  %12 = tail call fastcc zeroext i8 @disqualify_ops_if_throwing_stmt(ptr noundef %4, ptr noundef %10, ptr noundef %11) #24, !range !665
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %84, !prof !750

14:                                               ; preds = %7
  %15 = tail call fastcc ptr @build_access_from_expr_1(ptr noundef nonnull %9, ptr noundef %4, i8 noundef zeroext 0) #24
  %16 = tail call fastcc ptr @build_access_from_expr_1(ptr noundef nonnull %8, ptr noundef %4, i8 noundef zeroext 1) #24
  %17 = load ptr, ptr @should_scalarize_away_bitmap, align 8, !tbaa !629
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19, !prof !751

19:                                               ; preds = %14
  %20 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %4) #24, !range !665
  %21 = icmp eq i8 %20, 0
  %22 = icmp ne ptr %15, null
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %36, !prof !752

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !753
  %27 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %26) #23
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %36, !prof !754

29:                                               ; preds = %24
  %30 = load ptr, ptr @should_scalarize_away_bitmap, align 8, !tbaa !629
  %31 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !745
  %33 = getelementptr inbounds %struct.tree_decl_minimal, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !636
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %30, i32 noundef %34) #23
  br label %36

36:                                               ; preds = %29, %24, %19, %14
  %37 = icmp ne ptr %16, null
  %38 = icmp ne ptr %15, null
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %81, !prof !755

40:                                               ; preds = %36
  %41 = load i32, ptr @sra_mode, align 4
  %42 = add i32 %41, -1
  %43 = icmp ult i32 %42, 2
  br i1 %43, label %44, label %81, !prof !756

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 14
  %46 = load i16, ptr %45, align 8
  %47 = and i16 %46, 128
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %81, !prof !757

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 14
  %51 = load i16, ptr %50, align 8
  %52 = and i16 %51, 128
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %81, !prof !757

54:                                               ; preds = %49
  %55 = load ptr, ptr %8, align 8, !tbaa !629
  %56 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !636
  %58 = load i64, ptr %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = and i32 %59, 65535
  %61 = add nsw i32 %60, -15
  %62 = icmp ult i32 %61, 4
  br i1 %62, label %63, label %81, !prof !758

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !759
  %66 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !759
  %68 = icmp eq i64 %65, %67
  br i1 %68, label %69, label %81, !prof !757

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !753
  %72 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !753
  %74 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %71, ptr noundef %73) #23
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %81, label %76, !prof !760

76:                                               ; preds = %69
  %77 = load ptr, ptr @link_pool, align 8, !tbaa !629
  %78 = tail call ptr @pool_alloc(ptr noundef %77) #23
  %79 = getelementptr inbounds i8, ptr %78, i64 16
  store i64 0, ptr %79, align 8
  store ptr %16, ptr %78, align 8, !tbaa !761
  %80 = getelementptr inbounds %struct.assign_link, ptr %78, i64 0, i32 1
  store ptr %15, ptr %80, align 8, !tbaa !763
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
define internal fastcc noundef zeroext i8 @analyze_all_variable_accesses() unnamed_addr #0 !prof !764 !PGOFuncName !765 {
  %1 = alloca %struct.bitmap_iterator, align 8
  %2 = alloca i32, align 4
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  %4 = load ptr, ptr @cfun, align 8, !tbaa !629
  %5 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %4) #23
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7, !prof !667

7:                                                ; preds = %0
  %8 = load ptr, ptr @ix86_cost, align 8, !tbaa !629
  %9 = getelementptr inbounds %struct.processor_costs, ptr %8, i64 0, i32 10
  %10 = load i32, ptr %9, align 4, !tbaa !766
  %11 = shl nsw i32 %10, 5
  br label %12

12:                                               ; preds = %0, %7
  %13 = phi i32 [ %11, %7 ], [ 96, %0 ]
  %14 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !629
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %14, ptr noundef nonnull %2) #24
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #24, !range !665
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %62, label %17, !prof !768

17:                                               ; preds = %12, %57
  %18 = load ptr, ptr @should_scalarize_away_bitmap, align 8, !tbaa !629
  %19 = load i32, ptr %2, align 4, !tbaa !633
  %20 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %19) #23
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %57, label %22, !prof !769

22:                                               ; preds = %17
  %23 = load ptr, ptr @cannot_scalarize_away_bitmap, align 8, !tbaa !629
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %23, i32 noundef %19) #23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %57, !prof !770

26:                                               ; preds = %22
  %27 = tail call ptr @referenced_var_lookup(i32 noundef %19) #23
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 32
  br i1 %30, label %31, label %57, !prof !771

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !636
  %34 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !636
  %36 = tail call i64 @tree_low_cst(ptr noundef %35, i32 noundef 1) #23
  %37 = trunc i64 %36 to i32
  %38 = icmp ult i32 %13, %37
  br i1 %38, label %57, label %39, !prof !772

39:                                               ; preds = %31
  %40 = load ptr, ptr %32, align 8, !tbaa !636
  %41 = tail call fastcc zeroext i8 @type_consists_of_records_p(ptr noundef %40) #24
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %57, label %43, !prof !773

43:                                               ; preds = %39
  tail call fastcc void @completely_scalarize_record(ptr noundef nonnull %27, ptr noundef nonnull %27, i64 noundef 0) #24
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %45 = icmp eq ptr %44, null
  br i1 %45, label %57, label %46, !prof !774

46:                                               ; preds = %43
  %47 = load i32, ptr @dump_flags, align 4, !tbaa !633
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 34, i64 1, ptr nonnull %44)
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !629
  tail call void @print_generic_expr(ptr noundef %52, ptr noundef nonnull %27, i32 noundef 0) #23
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %54 = getelementptr inbounds %struct.tree_decl_minimal, ptr %27, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !636
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.24, i32 noundef %55) #24
  br label %57

57:                                               ; preds = %26, %31, %39, %50, %46, %43, %17, %22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #24
  %58 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #24, !range !665
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %17, !prof !775, !llvm.loop !776

60:                                               ; preds = %57
  %61 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !629
  br label %62

62:                                               ; preds = %60, %12
  %63 = phi ptr [ %61, %60 ], [ %14, %12 ]
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %63) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2) #24
  %64 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #24, !range !665
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %76, label %66, !prof !768

66:                                               ; preds = %62, %73
  %67 = load i32, ptr %2, align 4, !tbaa !633
  %68 = tail call ptr @referenced_var_lookup(i32 noundef %67) #23
  %69 = tail call fastcc ptr @sort_and_splice_var_accesses(ptr noundef %68) #24
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71, !prof !777

71:                                               ; preds = %66
  tail call fastcc void @build_access_trees(ptr noundef nonnull %69) #24
  br label %73

72:                                               ; preds = %66
  tail call fastcc void @disqualify_candidate(ptr noundef %68, ptr noundef nonnull @.str.25) #24
  br label %73

73:                                               ; preds = %72, %71
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #24
  %74 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #24, !range !665
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %66, !prof !775, !llvm.loop !778

76:                                               ; preds = %73, %62
  tail call fastcc void @propagate_all_subaccesses() #24
  %77 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !629
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %77) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2) #24
  %78 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #24, !range !665
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %81, !prof !768

80:                                               ; preds = %76
  tail call void @bitmap_obstack_free(ptr noundef %3) #23
  br label %115

81:                                               ; preds = %76, %107
  %82 = phi i32 [ %108, %107 ], [ 0, %76 ]
  %83 = load i32, ptr %2, align 4, !tbaa !633
  %84 = tail call ptr @referenced_var_lookup(i32 noundef %83) #23
  %85 = tail call fastcc ptr @get_first_repr_for_decl(ptr noundef %84) #24
  %86 = tail call fastcc zeroext i8 @analyze_access_trees(ptr noundef %85) #24, !range !665
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %106, label %88, !prof !779

88:                                               ; preds = %81
  %89 = add nsw i32 %82, 1
  %90 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %91 = icmp eq ptr %90, null
  br i1 %91, label %107, label %92, !prof !780

92:                                               ; preds = %88
  %93 = load i32, ptr @dump_flags, align 4, !tbaa !633
  %94 = and i32 %93, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %92
  %97 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 18, i64 1, ptr nonnull %90)
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !629
  tail call void @print_generic_expr(ptr noundef %98, ptr noundef %84, i32 noundef 0) #23
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %100 = getelementptr inbounds %struct.tree_decl_minimal, ptr %84, i64 0, i32 2
  %101 = load i32, ptr %100, align 4, !tbaa !636
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.24, i32 noundef %101) #24
  %103 = load ptr, ptr @dump_file, align 8, !tbaa !629
  tail call fastcc void @dump_access_tree(ptr noundef %103, ptr noundef %85) #24
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %105 = tail call i32 @fputc(i32 10, ptr %104)
  br label %107

106:                                              ; preds = %81
  tail call fastcc void @disqualify_candidate(ptr noundef %84, ptr noundef nonnull @.str.27) #24
  br label %107

107:                                              ; preds = %88, %92, %96, %106
  %108 = phi i32 [ %89, %96 ], [ %89, %92 ], [ %89, %88 ], [ %82, %106 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #24
  %109 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #24, !range !665
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %81, !prof !781, !llvm.loop !782

111:                                              ; preds = %107
  tail call void @bitmap_obstack_free(ptr noundef %3) #23
  %112 = icmp eq i32 %108, 0
  br i1 %112, label %115, label %113, !prof !783

113:                                              ; preds = %111
  %114 = load ptr, ptr @cfun, align 8, !tbaa !629
  tail call void @statistics_counter_event(ptr noundef %114, ptr noundef nonnull @.str.28, i32 noundef %108) #23
  br label %115

115:                                              ; preds = %80, %111, %113
  %116 = phi i8 [ 1, %113 ], [ 0, %111 ], [ 0, %80 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #25
  ret i8 %116
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @sra_modify_expr(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture readnone %3) #0 !prof !784 !PGOFuncName !785 {
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !629
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 42
  %10 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %11 = select i1 %9, ptr %6, ptr null, !prof !786
  %12 = select i1 %9, ptr %10, ptr %0, !prof !786
  %13 = load ptr, ptr %12, align 8, !tbaa !629
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -43
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %19, label %22, !prof !787

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !629
  br label %22

22:                                               ; preds = %4, %19
  %23 = phi ptr [ %21, %19 ], [ %13, %4 ]
  %24 = phi ptr [ %20, %19 ], [ %12, %4 ]
  %25 = tail call fastcc ptr @get_access_for_expr(ptr noundef %23) #24
  %26 = icmp eq ptr %25, null
  br i1 %26, label %104, label %27, !prof !788

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 14
  %29 = load i16, ptr %28, align 8
  %30 = and i16 %29, 1024
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %75, label %32, !prof !789

32:                                               ; preds = %27
  %33 = load ptr, ptr %24, align 8, !tbaa !629
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !636
  %36 = tail call fastcc ptr @get_access_replacement(ptr noundef nonnull %25) #24
  %37 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !753
  %39 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %35, ptr noundef %38) #23
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %71, !prof !790

41:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %42 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !745
  store ptr %43, ptr %5, align 8, !tbaa !629
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !636
  %46 = load i64, ptr %25, align 8, !tbaa !791
  %47 = load ptr, ptr %37, align 8, !tbaa !753
  %48 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %5, ptr noundef %45, i64 noundef %46, ptr noundef %47, i8 noundef zeroext 0) #24
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %51, !prof !792

50:                                               ; preds = %41
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2333, ptr noundef nonnull @.str.1) #23
  br label %51

51:                                               ; preds = %41, %50
  %52 = icmp eq i8 %2, 0
  %53 = load i16, ptr %28, align 8
  %54 = and i16 %53, 512
  %55 = icmp eq i16 %54, 0
  br i1 %52, label %63, label %56, !prof !790

56:                                               ; preds = %51
  %57 = load ptr, ptr %5, align 8, !tbaa !629
  br i1 %55, label %60, label %58

58:                                               ; preds = %56
  %59 = call ptr @force_gimple_operand_gsi(ptr noundef %1, ptr noundef %57, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 0) #23
  store ptr %59, ptr %5, align 8, !tbaa !629
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi ptr [ %59, %58 ], [ %57, %56 ]
  %62 = call ptr @gimple_build_assign_stat(ptr noundef %36, ptr noundef %61) #23
  call void @gsi_insert_after(ptr noundef %1, ptr noundef %62, i32 noundef 0) #23
  br label %70

63:                                               ; preds = %51
  br i1 %55, label %66, label %64, !prof !790

64:                                               ; preds = %63
  %65 = call ptr @force_gimple_operand_gsi(ptr noundef %1, ptr noundef %36, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #23
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi ptr [ %65, %64 ], [ %36, %63 ]
  %68 = load ptr, ptr %5, align 8, !tbaa !629
  %69 = call ptr @gimple_build_assign_stat(ptr noundef %68, ptr noundef %67) #23
  call void @gsi_insert_before(ptr noundef %1, ptr noundef %69, i32 noundef 1) #23
  br label %70

70:                                               ; preds = %66, %60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  br label %72

71:                                               ; preds = %32
  store ptr %36, ptr %24, align 8, !tbaa !629
  br label %72

72:                                               ; preds = %71, %70
  %73 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !671
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !671
  br label %75

75:                                               ; preds = %72, %27
  %76 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !793
  %78 = icmp eq ptr %77, null
  br i1 %78, label %104, label %79, !prof !794

79:                                               ; preds = %75
  %80 = icmp eq ptr %11, null
  br i1 %80, label %98, label %81, !prof !795

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !636
  %84 = call i32 @host_integerp(ptr noundef %83, i32 noundef 1) #23
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1, i32 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !636
  %89 = call i32 @host_integerp(ptr noundef %88, i32 noundef 1) #23
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr %82, align 8, !tbaa !636
  %93 = call i64 @tree_low_cst(ptr noundef %92, i32 noundef 1) #23
  %94 = load i64, ptr %25, align 8, !tbaa !791
  %95 = load ptr, ptr %87, align 8, !tbaa !636
  %96 = call i64 @tree_low_cst(ptr noundef %95, i32 noundef 1) #23
  %97 = add nsw i64 %96, %94
  br label %98

98:                                               ; preds = %79, %81, %86, %91
  %99 = phi i64 [ %97, %91 ], [ 0, %86 ], [ 0, %81 ], [ 0, %79 ]
  %100 = phi i64 [ %93, %91 ], [ 0, %86 ], [ 0, %81 ], [ 0, %79 ]
  %101 = load ptr, ptr %76, align 8, !tbaa !793
  %102 = getelementptr inbounds %struct.access, ptr %25, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !745
  call fastcc void @generate_subtree_copies(ptr noundef %101, ptr noundef %103, i64 noundef 0, i64 noundef %99, i64 noundef %100, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %2) #24
  br label %104

104:                                              ; preds = %75, %98, %22
  %105 = phi i8 [ 0, %22 ], [ 1, %98 ], [ 1, %75 ]
  ret i8 %105
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @sra_modify_assign(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 !prof !796 !PGOFuncName !797 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca i32, align 4
  %9 = load ptr, ptr %0, align 8, !tbaa !629
  %10 = tail call fastcc i32 @gimple_location(ptr noundef %9) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !701
  %11 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %9) #23
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %275, label %13, !prof !798

13:                                               ; preds = %3
  %14 = load ptr, ptr %0, align 8, !tbaa !629
  %15 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %14) #24
  %16 = load ptr, ptr %0, align 8, !tbaa !629
  %17 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %16) #24
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %22 [
    i16 51, label %20
    i16 43, label %36
  ], !prof !799

20:                                               ; preds = %13
  %21 = tail call fastcc i32 @sra_modify_constructor_assign(ptr noundef nonnull %0, ptr noundef nonnull %1) #24, !range !800
  br label %275

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
  br i1 %35, label %36, label %45, !prof !801

36:                                               ; preds = %13, %22
  %37 = load ptr, ptr %0, align 8, !tbaa !629
  %38 = tail call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %37) #24
  %39 = tail call zeroext i8 @sra_modify_expr(ptr noundef %38, ptr noundef nonnull %1, i8 noundef zeroext 0, ptr poison) #24, !range !665
  %40 = load ptr, ptr %0, align 8, !tbaa !629
  %41 = tail call fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %40) #24
  %42 = tail call zeroext i8 @sra_modify_expr(ptr noundef %41, ptr noundef nonnull %1, i8 noundef zeroext 1, ptr poison) #24, !range !665
  %43 = or i8 %42, %39
  %44 = zext nneg i8 %43 to i32
  br label %275

45:                                               ; preds = %22
  %46 = tail call fastcc ptr @get_access_for_expr(ptr noundef nonnull %15) #24
  %47 = tail call fastcc ptr @get_access_for_expr(ptr noundef nonnull %17) #24
  %48 = icmp ne ptr %46, null
  %49 = icmp ne ptr %47, null
  %50 = or i1 %48, %49
  br i1 %50, label %51, label %275, !prof !802

51:                                               ; preds = %45
  br i1 %48, label %52, label %68, !prof !803

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 14
  %54 = load i16, ptr %53, align 8
  %55 = and i16 %54, 1024
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %68, label %57, !prof !804

57:                                               ; preds = %52
  %58 = tail call fastcc ptr @get_access_replacement(ptr noundef nonnull %46) #24
  %59 = load ptr, ptr %0, align 8, !tbaa !629
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %59, ptr noundef %58) #24
  %60 = load i16, ptr %53, align 8
  %61 = and i16 %60, 512
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %64, label %63, !prof !805

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %57
  %65 = phi i8 [ 1, %63 ], [ 0, %57 ]
  %66 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !671
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !671
  br label %68

68:                                               ; preds = %64, %52, %51
  %69 = phi ptr [ %58, %64 ], [ %15, %52 ], [ %15, %51 ]
  %70 = phi i1 [ false, %64 ], [ true, %52 ], [ true, %51 ]
  %71 = phi i8 [ %65, %64 ], [ 0, %52 ], [ 0, %51 ]
  br i1 %49, label %72, label %87, !prof !806

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.access, ptr %47, i64 0, i32 14
  %74 = load i16, ptr %73, align 8
  %75 = and i16 %74, 1024
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %87, label %77, !prof !807

77:                                               ; preds = %72
  %78 = tail call fastcc ptr @get_access_replacement(ptr noundef nonnull %47) #24
  %79 = load i16, ptr %73, align 8
  %80 = and i16 %79, 512
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %83, label %82, !prof !808

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %77, %82
  %84 = phi i8 [ 1, %82 ], [ %71, %77 ]
  %85 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !671
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 1), align 4, !tbaa !671
  br label %88

87:                                               ; preds = %72, %68
  br i1 %70, label %151, label %88, !prof !809

88:                                               ; preds = %83, %87
  %89 = phi i8 [ %84, %83 ], [ %71, %87 ]
  %90 = phi ptr [ %78, %83 ], [ %17, %87 ]
  %91 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !636
  %93 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !636
  %95 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %92, ptr noundef %94) #23
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %151, !prof !810

97:                                               ; preds = %88
  %98 = load ptr, ptr %91, align 8, !tbaa !636
  %99 = load i64, ptr %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = and i32 %100, 65535
  %102 = add nsw i32 %101, -15
  %103 = icmp ult i32 %102, 4
  br i1 %103, label %104, label %116, !prof !811

104:                                              ; preds = %97
  %105 = tail call fastcc zeroext i8 @access_has_children_p(ptr noundef %46) #24, !range !665
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %116, !prof !812

107:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr %69, ptr %5, align 8, !tbaa !629
  %108 = load ptr, ptr %93, align 8, !tbaa !636
  %109 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %5, ptr noundef nonnull %98, i64 noundef 0, ptr noundef %108, i8 noundef zeroext 0) #24
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %114, label %111, !prof !813

111:                                              ; preds = %107
  %112 = load ptr, ptr %5, align 8, !tbaa !629
  %113 = load ptr, ptr %0, align 8, !tbaa !629
  call fastcc void @gimple_assign_set_lhs(ptr noundef %113, ptr noundef %112) #24
  br label %114

114:                                              ; preds = %111, %107
  %115 = phi ptr [ %112, %111 ], [ %69, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  br label %131

116:                                              ; preds = %97, %104
  %117 = load ptr, ptr %93, align 8, !tbaa !636
  %118 = load i64, ptr %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = and i32 %119, 65535
  %121 = add nsw i32 %120, -15
  %122 = icmp ult i32 %121, 4
  br i1 %122, label %123, label %131, !prof !814

123:                                              ; preds = %116
  %124 = tail call fastcc zeroext i8 @access_has_children_p(ptr noundef %47) #24, !range !665
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %131, !prof !815

126:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  store ptr %90, ptr %6, align 8, !tbaa !629
  %127 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %6, ptr noundef nonnull %117, i64 noundef 0, ptr noundef nonnull %98, i8 noundef zeroext 0) #24
  %128 = icmp eq i8 %127, 0
  %129 = load ptr, ptr %6, align 8
  %130 = select i1 %128, ptr %90, ptr %129, !prof !816
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  br label %131

131:                                              ; preds = %116, %123, %126, %114
  %132 = phi ptr [ %69, %123 ], [ %69, %126 ], [ %115, %114 ], [ %69, %116 ]
  %133 = phi ptr [ %90, %123 ], [ %130, %126 ], [ %90, %114 ], [ %90, %116 ]
  %134 = getelementptr inbounds %struct.tree_common, ptr %132, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !636
  %136 = getelementptr inbounds %struct.tree_common, ptr %133, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !636
  %138 = call zeroext i8 @useless_type_conversion_p(ptr noundef %135, ptr noundef %137) #23
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %151, !prof !817

140:                                              ; preds = %131
  %141 = load ptr, ptr %134, align 8, !tbaa !636
  %142 = call ptr @fold_build1_stat_loc(i32 noundef %10, i32 noundef 118, ptr noundef %141, ptr noundef nonnull %133) #23
  %143 = load ptr, ptr %134, align 8, !tbaa !636
  %144 = call zeroext i8 @is_gimple_reg_type(ptr noundef %143) #23
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %140
  %147 = load i64, ptr %132, align 8
  %148 = and i64 %147, 65535
  %149 = icmp eq i64 %148, 141
  %150 = select i1 %149, i8 %89, i8 1
  br label %151

151:                                              ; preds = %146, %88, %140, %131, %87
  %152 = phi i32 [ 1, %88 ], [ 1, %131 ], [ 1, %140 ], [ 0, %87 ], [ 1, %146 ]
  %153 = phi ptr [ %69, %88 ], [ %132, %131 ], [ %132, %140 ], [ %69, %87 ], [ %132, %146 ]
  %154 = phi ptr [ %90, %88 ], [ %133, %131 ], [ %142, %140 ], [ %17, %87 ], [ %142, %146 ]
  %155 = phi i8 [ %89, %88 ], [ %89, %131 ], [ %89, %140 ], [ %71, %87 ], [ %150, %146 ]
  %156 = load ptr, ptr %0, align 8, !tbaa !629
  %157 = call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %156) #24, !range !665
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %179, !prof !818

159:                                              ; preds = %151
  %160 = call fastcc zeroext i8 @contains_view_convert_expr_p(ptr noundef %154) #24, !range !665
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %179, !prof !818

162:                                              ; preds = %159
  %163 = call fastcc zeroext i8 @contains_view_convert_expr_p(ptr noundef %153) #24, !range !665
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %179, !prof !818

165:                                              ; preds = %162
  %166 = call fastcc zeroext i8 @access_has_children_p(ptr noundef %47) #24, !range !665
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %172, label %168, !prof !819

168:                                              ; preds = %165
  %169 = load i64, ptr %47, align 8, !tbaa !791
  %170 = call fastcc zeroext i8 @ref_expr_for_all_replacements_p(ptr noundef nonnull %47, ptr noundef %153, i64 noundef %169) #24, !range !665
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %179, label %172, !prof !820

172:                                              ; preds = %168, %165
  %173 = call fastcc zeroext i8 @access_has_children_p(ptr noundef %46) #24, !range !665
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %198, label %175, !prof !821

175:                                              ; preds = %172
  %176 = load i64, ptr %46, align 8, !tbaa !791
  %177 = call fastcc zeroext i8 @ref_expr_for_all_replacements_p(ptr noundef nonnull %46, ptr noundef %154, i64 noundef %176) #24, !range !665
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %198, !prof !822

179:                                              ; preds = %175, %168, %162, %159, %151
  %180 = call fastcc zeroext i8 @access_has_children_p(ptr noundef %47) #24, !range !665
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %187, label %182, !prof !823

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.access, ptr %47, i64 0, i32 8
  %184 = load ptr, ptr %183, align 8, !tbaa !793
  %185 = getelementptr inbounds %struct.access, ptr %47, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !745
  call fastcc void @generate_subtree_copies(ptr noundef %184, ptr noundef %186, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #24
  br label %187

187:                                              ; preds = %182, %179
  %188 = call fastcc zeroext i8 @access_has_children_p(ptr noundef %46) #24, !range !665
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %195, label %190, !prof !823

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 8
  %192 = load ptr, ptr %191, align 8, !tbaa !793
  %193 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !745
  call fastcc void @generate_subtree_copies(ptr noundef %192, ptr noundef %194, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #24
  br label %195

195:                                              ; preds = %190, %187
  %196 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 5), align 4, !tbaa !675
  %197 = add nsw i32 %196, 1
  store i32 %197, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 5), align 4, !tbaa !675
  br label %261

198:                                              ; preds = %175, %172
  %199 = call fastcc zeroext i8 @access_has_children_p(ptr noundef %46) #24, !range !665
  %200 = icmp eq i8 %199, 0
  %201 = call fastcc zeroext i8 @access_has_children_p(ptr noundef %47) #24, !range !665
  %202 = icmp eq i8 %201, 0
  br i1 %200, label %229, label %203, !prof !824

203:                                              ; preds = %198
  br i1 %202, label %256, label %204, !prof !825

204:                                              ; preds = %203
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !701
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #25
  %205 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 14
  %206 = load i16, ptr %205, align 8
  %207 = and i16 %206, 80
  %208 = icmp eq i16 %207, 16
  br i1 %208, label %209, label %211, !prof !826

209:                                              ; preds = %204
  %210 = call fastcc i32 @handle_unscalarized_data_in_subtree(ptr noundef %47, ptr noundef %153, ptr noundef nonnull %1) #24, !range !827
  br label %211

211:                                              ; preds = %204, %209
  %212 = phi i32 [ %210, %209 ], [ 0, %204 ]
  store i32 %212, ptr %8, align 4, !tbaa !633
  %213 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 8
  %214 = load ptr, ptr %213, align 8, !tbaa !793
  %215 = load i64, ptr %46, align 8, !tbaa !791
  %216 = load i64, ptr %47, align 8, !tbaa !791
  call fastcc void @load_assign_lhs_subreplacements(ptr noundef %214, ptr noundef nonnull %47, i64 noundef %215, i64 noundef %216, ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef nonnull %8, ptr noundef %153) #24
  %217 = load i32, ptr %8, align 4, !tbaa !633
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %260, label %219, !prof !828

219:                                              ; preds = %211
  %220 = load ptr, ptr %0, align 8, !tbaa !629
  %221 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24
  %222 = icmp eq ptr %220, %221
  br i1 %222, label %223, label %225, !prof !829

223:                                              ; preds = %219
  call fastcc void @gsi_next(ptr noundef nonnull %1) #24
  %224 = load ptr, ptr %0, align 8, !tbaa !629
  br label %225

225:                                              ; preds = %223, %219
  %226 = phi ptr [ %224, %223 ], [ %220, %219 ]
  call void @unlink_stmt_vdef(ptr noundef %226) #23
  call void @gsi_remove(ptr noundef nonnull %7, i8 noundef zeroext 1) #23
  %227 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 4), align 4, !tbaa !674
  %228 = add nsw i32 %227, 1
  store i32 %228, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 4), align 4, !tbaa !674
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #25
  br label %275

229:                                              ; preds = %198
  br i1 %202, label %261, label %230, !prof !830

230:                                              ; preds = %229
  %231 = getelementptr inbounds %struct.access, ptr %47, i64 0, i32 14
  %232 = load i16, ptr %231, align 8
  %233 = and i16 %232, 256
  %234 = icmp eq i16 %233, 0
  br i1 %234, label %235, label %252, !prof !831

235:                                              ; preds = %230
  %236 = load i64, ptr %153, align 8
  %237 = and i64 %236, 65535
  %238 = icmp eq i64 %237, 141
  br i1 %238, label %252, label %239, !prof !832

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.access, ptr %47, i64 0, i32 8
  %241 = load ptr, ptr %240, align 8, !tbaa !793
  %242 = load i64, ptr %47, align 8, !tbaa !791
  call fastcc void @generate_subtree_copies(ptr noundef %241, ptr noundef nonnull %153, i64 noundef %242, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #24
  %243 = load ptr, ptr %0, align 8, !tbaa !629
  %244 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24
  %245 = icmp eq ptr %243, %244
  br i1 %245, label %248, label %246, !prof !833

246:                                              ; preds = %239
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2718, ptr noundef nonnull @.str.1) #23
  %247 = load ptr, ptr %0, align 8, !tbaa !629
  br label %248

248:                                              ; preds = %239, %246
  %249 = phi ptr [ %243, %239 ], [ %247, %246 ]
  call void @unlink_stmt_vdef(ptr noundef %249) #23
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #23
  %250 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 4), align 4, !tbaa !674
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 4), align 4, !tbaa !674
  br label %275

252:                                              ; preds = %235, %230
  %253 = getelementptr inbounds %struct.access, ptr %47, i64 0, i32 8
  %254 = load ptr, ptr %253, align 8, !tbaa !793
  %255 = load i64, ptr %47, align 8, !tbaa !791
  call fastcc void @generate_subtree_copies(ptr noundef %254, ptr noundef %153, i64 noundef %255, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 1) #24
  br label %261

256:                                              ; preds = %203
  %257 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 8
  %258 = load ptr, ptr %257, align 8, !tbaa !793
  %259 = load i64, ptr %46, align 8, !tbaa !791
  call fastcc void @generate_subtree_copies(ptr noundef %258, ptr noundef %154, i64 noundef %259, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #24
  br label %261

260:                                              ; preds = %211
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #25
  br label %261

261:                                              ; preds = %229, %260, %256, %252, %195
  %262 = icmp eq i8 %155, 0
  br i1 %262, label %265, label %263, !prof !834

263:                                              ; preds = %261
  %264 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %154, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #23
  br label %265

265:                                              ; preds = %263, %261
  %266 = phi ptr [ %264, %263 ], [ %154, %261 ]
  %267 = load ptr, ptr %0, align 8, !tbaa !629
  %268 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %267) #24
  %269 = icmp eq ptr %268, %266
  br i1 %269, label %275, label %270, !prof !835

270:                                              ; preds = %265
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %4, ptr noundef %266) #23
  %271 = load ptr, ptr %0, align 8, !tbaa !629
  %272 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24
  %273 = icmp eq ptr %271, %272
  br i1 %273, label %275, label %274, !prof !836

274:                                              ; preds = %270
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2742, ptr noundef nonnull @.str.1) #23
  br label %275

275:                                              ; preds = %265, %270, %274, %225, %45, %3, %248, %36, %20
  %276 = phi i32 [ %21, %20 ], [ %44, %36 ], [ 2, %225 ], [ 2, %248 ], [ 0, %3 ], [ 0, %45 ], [ %152, %274 ], [ %152, %270 ], [ %152, %265 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  ret i32 %276
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_parameter_reductions() unnamed_addr #0 !prof !837 !PGOFuncName !838 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #25
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !629
  %4 = getelementptr inbounds %struct.tree_decl_non_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !636
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7, !prof !839

7:                                                ; preds = %0, %31
  %8 = phi ptr [ %34, %31 ], [ %5, %0 ]
  %9 = phi ptr [ %32, %31 ], [ null, %0 ]
  %10 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !629
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !636
  %13 = call i32 @bitmap_bit_p(ptr noundef %10, i32 noundef %12) #23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15, !prof !840

15:                                               ; preds = %7
  %16 = call fastcc ptr @get_base_access_vector(ptr noundef nonnull %8) #24
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !841

18:                                               ; preds = %15
  %19 = icmp eq ptr %9, null
  br i1 %19, label %20, label %22, !prof !842

20:                                               ; preds = %18
  %21 = call ptr @gimple_seq_alloc() #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %21) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !701
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %9, %18 ], [ %21, %20 ]
  %24 = call fastcc ptr @VEC_access_p_base_index(ptr noundef nonnull %16, i32 noundef 0) #24
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26, !prof !843

26:                                               ; preds = %22, %26
  %27 = phi ptr [ %29, %26 ], [ %24, %22 ]
  call fastcc void @generate_subtree_copies(ptr noundef nonnull %27, ptr noundef nonnull %8, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #24
  %28 = getelementptr inbounds %struct.access, ptr %27, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !844
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %26, !prof !845, !llvm.loop !846

31:                                               ; preds = %26, %22, %15, %7
  %32 = phi ptr [ %9, %7 ], [ %9, %15 ], [ %23, %22 ], [ %23, %26 ]
  %33 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !636
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %7, !prof !847, !llvm.loop !848

36:                                               ; preds = %31
  %37 = icmp eq ptr %32, null
  br i1 %37, label %45, label %38, !prof !849

38:                                               ; preds = %36
  %39 = load ptr, ptr @cfun, align 8, !tbaa !629
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !691
  %42 = load ptr, ptr %41, align 8, !tbaa !693
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
define internal fastcc void @sra_deinitialize() unnamed_addr #0 !prof !676 !PGOFuncName !850 {
  %1 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !629
  tail call void @bitmap_obstack_free(ptr noundef %1) #23
  store ptr null, ptr @candidate_bitmap, align 8, !tbaa !629
  %2 = load ptr, ptr @should_scalarize_away_bitmap, align 8, !tbaa !629
  tail call void @bitmap_obstack_free(ptr noundef %2) #23
  store ptr null, ptr @should_scalarize_away_bitmap, align 8, !tbaa !629
  %3 = load ptr, ptr @cannot_scalarize_away_bitmap, align 8, !tbaa !629
  tail call void @bitmap_obstack_free(ptr noundef %3) #23
  store ptr null, ptr @cannot_scalarize_away_bitmap, align 8, !tbaa !629
  %4 = load ptr, ptr @access_pool, align 8, !tbaa !629
  tail call void @free_alloc_pool(ptr noundef %4) #23
  %5 = load ptr, ptr @link_pool, align 8, !tbaa !629
  tail call void @free_alloc_pool(ptr noundef %5) #23
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 1), align 8, !tbaa !851
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 0, %7
  store i64 %8, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !853
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %17, !prof !854

10:                                               ; preds = %0
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !855
  %12 = ptrtoint ptr %11 to i64
  %13 = sub i64 %12, %7
  %14 = icmp sgt i64 %13, %8
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, ptr %6, i64 %8
  store ptr %16, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 2), align 8, !tbaa !856
  store ptr %16, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  br label %19

17:                                               ; preds = %10, %0
  %18 = getelementptr inbounds i8, ptr %6, i64 %8
  tail call void @obstack_free(ptr noundef nonnull @name_obstack, ptr noundef %18) #23
  br label %19

19:                                               ; preds = %17, %15
  %20 = load ptr, ptr @base_access_vec, align 8, !tbaa !629
  tail call void @pointer_map_traverse(ptr noundef %20, ptr noundef nonnull @delete_base_accesses, ptr noundef null) #23
  %21 = load ptr, ptr @base_access_vec, align 8, !tbaa !629
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
define internal fastcc ptr @first_referenced_var(ptr nocapture noundef %0) unnamed_addr #0 !prof !659 !PGOFuncName !858 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !629
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #24
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %0, ptr noundef %3) #24
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !859 !PGOFuncName !860 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #24, !range !665
  ret i8 %2
}

; Function Attrs: optsize
declare zeroext i8 @needs_to_live_in_memory(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @type_internals_preclude_sra_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !861 !PGOFuncName !862 {
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
  ], !prof !863

7:                                                ; preds = %3, %3, %3
  %8 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !636
  %10 = icmp eq ptr %9, null
  br i1 %10, label %57, label %11, !prof !864

11:                                               ; preds = %7, %45
  %12 = phi ptr [ %47, %45 ], [ %9, %7 ]
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 31
  br i1 %15, label %16, label %45, !prof !865

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !636
  %19 = and i64 %13, 524288
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %57, !prof !865

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_field_decl, ptr %12, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !636
  %24 = icmp eq ptr %23, null
  br i1 %24, label %57, label %25, !prof !866

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !636
  %28 = icmp eq ptr %27, null
  br i1 %28, label %57, label %29, !prof !866

29:                                               ; preds = %25
  %30 = tail call i32 @host_integerp(ptr noundef nonnull %23, i32 noundef 1) #23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %57, label %32, !prof !866

32:                                               ; preds = %29
  %33 = load ptr, ptr %26, align 8, !tbaa !636
  %34 = tail call i32 @host_integerp(ptr noundef %33, i32 noundef 1) #23
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %57, label %36, !prof !866

36:                                               ; preds = %32
  %37 = load i64, ptr %18, align 8
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, 65535
  %40 = add nsw i32 %39, -15
  %41 = icmp ult i32 %40, 4
  br i1 %41, label %42, label %45, !prof !867

42:                                               ; preds = %36
  %43 = tail call fastcc zeroext i8 @type_internals_preclude_sra_p(ptr noundef nonnull %18) #24
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %57, !prof !868

45:                                               ; preds = %42, %36, %11
  %46 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !636
  %48 = icmp eq ptr %47, null
  br i1 %48, label %57, label %11, !prof !869, !llvm.loop !870

49:                                               ; preds = %3
  %50 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !636
  %52 = load i64, ptr %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 65535
  %55 = add nsw i32 %54, -15
  %56 = icmp ult i32 %55, 4
  br i1 %56, label %3, label %57, !prof !871

57:                                               ; preds = %49, %3, %42, %16, %21, %25, %29, %32, %45, %7
  %58 = phi i8 [ 0, %7 ], [ 1, %42 ], [ 1, %16 ], [ 1, %21 ], [ 1, %25 ], [ 1, %29 ], [ 1, %32 ], [ 0, %45 ], [ 0, %3 ], [ 0, %49 ]
  ret i8 %58
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @is_va_list_type(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !872 !PGOFuncName !873 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !636
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 44), align 16, !tbaa !629
  %5 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !636
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
define internal fastcc ptr @next_referenced_var(ptr nocapture noundef %0) unnamed_addr #9 !prof !874 !PGOFuncName !875 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !659 !PGOFuncName !876 {
  store ptr %1, ptr %0, align 8, !tbaa !877
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !879
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !881
  %6 = tail call i64 @htab_size(ptr noundef %1) #23
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !882
  %9 = load ptr, ptr %5, align 8, !tbaa !881
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !629
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !881
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !prof !883, !llvm.loop !884

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22, !prof !885

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !629
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !659 !PGOFuncName !886 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !887
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !888

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !889
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !859 !PGOFuncName !893 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !881
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !882
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #9 !prof !874 !PGOFuncName !894 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !882
  %5 = load ptr, ptr %2, align 8, !tbaa !881
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !881
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13, !prof !895

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !629
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
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !896 !PGOFuncName !897 {
  %2 = load ptr, ptr %0, align 8, !tbaa !877
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !898 !PGOFuncName !899 {
  %2 = load ptr, ptr %0, align 8, !tbaa !877
  %3 = load ptr, ptr %2, align 8, !tbaa !900
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #11 !prof !902 !PGOFuncName !903 {
  %2 = load ptr, ptr %0, align 8, !tbaa !877
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !904
  store ptr %4, ptr %0, align 8, !tbaa !877
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 !prof !905 !PGOFuncName !906 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #24
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #24
  store ptr %4, ptr %0, align 8, !tbaa !877
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !881
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !882
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @stmt_can_throw_external(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !907 !PGOFuncName !908 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval_ptr(ptr noundef %0) unnamed_addr #0 !prof !909 !PGOFuncName !910 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !911 !PGOFuncName !912 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #24
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !913 !PGOFuncName !914 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %3) #24
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !915 !PGOFuncName !916 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #24
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !917

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !636
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
define internal fastcc zeroext i8 @callsite_has_enough_arguments_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !918 !PGOFuncName !919 {
  %2 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #24
  %3 = load i32, ptr @func_param_count, align 4, !tbaa !633
  %4 = icmp uge i32 %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !920 !PGOFuncName !921 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs_ptr(ptr noundef %0) unnamed_addr #0 !prof !922 !PGOFuncName !923 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @disqualify_ops_if_throwing_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !924 !PGOFuncName !925 {
  %4 = load i32, ptr @sra_mode, align 4
  %5 = add i32 %4, -1
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %16, !prof !926

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @stmt_can_throw_internal(ptr noundef %0) #23
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13, !prof !927

10:                                               ; preds = %7
  %11 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %0) #23
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13, !prof !927

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
define internal noundef zeroext i8 @asm_visit_addr(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 !prof !928 !PGOFuncName !929 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !633
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call fastcc void @disqualify_candidate(ptr noundef nonnull %1, ptr noundef nonnull @.str.18) #24
  br label %10

10:                                               ; preds = %9, %3
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !928 !PGOFuncName !930 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !636
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !928 !PGOFuncName !931 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !636
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
define internal fastcc i32 @gimple_asm_noutputs(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !928 !PGOFuncName !932 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !636
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !928 !PGOFuncName !933 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !636
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 2655, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !636
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %12) #24
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !934 !PGOFuncName !935 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !665
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !936

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
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !905 !PGOFuncName !937 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !938
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !939

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !636
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !940

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !941
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 !prof !943 !PGOFuncName !944 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !945

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !946
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !948 !PGOFuncName !949 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !665
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !950

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
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !951 !PGOFuncName !952 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !710
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !953 !PGOFuncName !954 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #24
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !955
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !956

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !953 !PGOFuncName !957 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !710
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #24
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #12 !prof !953 !PGOFuncName !958 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !633
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !959 !PGOFuncName !960 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !636
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !915 !PGOFuncName !961 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !962 !PGOFuncName !963 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !665
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !964

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #24
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !629
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
define internal fastcc void @disqualify_base_of_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !928 !PGOFuncName !965 {
  %3 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #24, !range !665
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %0, %2 ]
  %7 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !636
  %9 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %8) #24, !range !665
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %5, !llvm.loop !966

11:                                               ; preds = %5, %2
  %12 = phi ptr [ %0, %2 ], [ %8, %5 ]
  %13 = load i32, ptr @sra_mode, align 4, !tbaa !633
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
  %23 = load ptr, ptr %22, align 8, !tbaa !636
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
  %34 = load i32, ptr %33, align 4, !tbaa !633
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  tail call fastcc void @disqualify_candidate(ptr noundef nonnull %28, ptr noundef %1) #24
  br label %37

37:                                               ; preds = %36, %30, %27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !967 !PGOFuncName !968 {
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
  ], !prof !969

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_ssa_base_param(ptr noundef readonly %0) unnamed_addr #6 !prof !970 !PGOFuncName !971 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %11, !prof !972

5:                                                ; preds = %1
  %6 = and i64 %2, 4294967296
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8, !prof !973

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !636
  br label %11

11:                                               ; preds = %1, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ %0, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @disqualify_candidate(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !974 !PGOFuncName !975 {
  %3 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !629
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !636
  %6 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %3, i32 noundef %5) #23
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9, !prof !976

9:                                                ; preds = %2
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !633
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 16, i64 1, ptr nonnull %7)
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !629
  tail call void @print_generic_expr(ptr noundef %15, ptr noundef nonnull %0, i32 noundef 0) #23
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !629
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
define internal fastcc noundef ptr @build_access_from_expr_1(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !977 !PGOFuncName !978 {
  %4 = load ptr, ptr %0, align 8, !tbaa !629
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -42
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %14, !prof !979

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !636
  %13 = load i64, ptr %12, align 8
  br label %14

14:                                               ; preds = %3, %10
  %15 = phi i64 [ %13, %10 ], [ %5, %3 ]
  %16 = phi ptr [ %12, %10 ], [ %4, %3 ]
  %17 = and i64 %15, 65535
  %18 = icmp eq i64 %17, 118
  br i1 %18, label %19, label %22, !prof !980

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !636
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi ptr [ %21, %19 ], [ %16, %14 ]
  %24 = tail call fastcc zeroext i8 @contains_view_convert_expr_p(ptr noundef %23) #24, !range !665
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26, !prof !981

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
  ], !prof !982

30:                                               ; preds = %27
  %31 = load i32, ptr @sra_mode, align 4, !tbaa !633
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43, !prof !983

33:                                               ; preds = %27, %27, %27, %27, %27, %27, %30
  %34 = tail call fastcc ptr @create_access(ptr noundef nonnull %23, ptr noundef %1, i8 noundef zeroext %2) #24
  %35 = icmp ne i8 %2, 0
  %36 = and i1 %35, %9
  br i1 %36, label %37, label %43, !prof !984

37:                                               ; preds = %33
  %38 = icmp eq ptr %34, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.access, ptr %34, i64 0, i32 14
  %41 = load i16, ptr %40, align 8
  %42 = or i16 %41, 512
  store i16 %42, ptr %40, align 8
  br label %43

43:                                               ; preds = %27, %33, %37, %39, %30, %26
  %44 = phi ptr [ null, %26 ], [ null, %30 ], [ %34, %39 ], [ null, %37 ], [ %34, %33 ], [ null, %27 ]
  ret ptr %44
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @contains_view_convert_expr_p(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !985 !PGOFuncName !986 {
  %2 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #24, !range !665
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %4, !prof !987

4:                                                ; preds = %1, %9
  %5 = phi ptr [ %11, %9 ], [ %0, %1 ]
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 118
  br i1 %8, label %14, label %9, !prof !988

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !636
  %12 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %11) #24, !range !665
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %4, !prof !989, !llvm.loop !990

14:                                               ; preds = %4, %9, %1
  %15 = phi i8 [ 0, %1 ], [ 0, %9 ], [ 1, %4 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_access(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !991 !PGOFuncName !992 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  %7 = call ptr @get_ref_base_and_extent(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  %8 = load i32, ptr @sra_mode, align 4, !tbaa !633
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21, !prof !993

10:                                               ; preds = %3
  %11 = load i64, ptr %7, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -47
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %16, label %21, !prof !994

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !636
  %19 = call fastcc ptr @get_ssa_base_param(ptr noundef %18) #24
  %20 = icmp eq ptr %19, null
  br i1 %20, label %82, label %21, !prof !995

21:                                               ; preds = %10, %3, %16
  %22 = phi ptr [ %19, %16 ], [ %7, %10 ], [ %7, %3 ]
  %23 = phi i1 [ false, %16 ], [ true, %10 ], [ true, %3 ]
  %24 = load i64, ptr %22, align 8
  %25 = and i64 %24, 65535
  %26 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !633
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %82, !prof !996

29:                                               ; preds = %21
  %30 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !629
  %31 = getelementptr inbounds %struct.tree_decl_minimal, ptr %22, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !636
  %33 = call i32 @bitmap_bit_p(ptr noundef %30, i32 noundef %32) #23
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %82, label %35, !prof !997

35:                                               ; preds = %29
  %36 = load i32, ptr @sra_mode, align 4, !tbaa !633
  %37 = icmp eq i32 %36, 0
  %38 = load i64, ptr %5, align 8, !tbaa !955
  br i1 %37, label %39, label %55, !prof !998

39:                                               ; preds = %35
  %40 = icmp sgt i64 %38, -1
  %41 = load i64, ptr %6, align 8
  %42 = icmp eq i64 %38, %41
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %45, label %44, !prof !999

44:                                               ; preds = %39
  call fastcc void @disqualify_candidate(ptr noundef nonnull %22, ptr noundef nonnull @.str.20) #24
  br label %82

45:                                               ; preds = %39
  %46 = load i64, ptr %4, align 8, !tbaa !955
  %47 = or i64 %46, %38
  %48 = and i64 %47, 7
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %51, label %50, !prof !1000

50:                                               ; preds = %45
  call fastcc void @disqualify_candidate(ptr noundef nonnull %22, ptr noundef nonnull @.str.21) #24
  br label %82

51:                                               ; preds = %45
  br i1 %23, label %64, label %52, !prof !1001

52:                                               ; preds = %51
  %53 = add nsw i64 %46, %38
  call fastcc void @mark_parm_dereference(ptr noundef nonnull %22, i64 noundef %53, ptr noundef %1) #24
  %54 = load i64, ptr %5, align 8, !tbaa !955
  br label %64

55:                                               ; preds = %35
  %56 = load i64, ptr %6, align 8, !tbaa !955
  %57 = icmp eq i64 %38, %56
  br i1 %57, label %59, label %58, !prof !1002

58:                                               ; preds = %55
  store i64 %56, ptr %5, align 8, !tbaa !955
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi i64 [ %56, %58 ], [ %38, %55 ]
  %61 = phi i16 [ 128, %58 ], [ 0, %55 ]
  %62 = icmp slt i64 %60, 0
  br i1 %62, label %63, label %64, !prof !1003

63:                                               ; preds = %59
  call fastcc void @disqualify_candidate(ptr noundef nonnull %22, ptr noundef nonnull @.str.22) #24
  br label %82

64:                                               ; preds = %59, %51, %52
  %65 = phi i64 [ %54, %52 ], [ %38, %51 ], [ %60, %59 ]
  %66 = phi i16 [ 0, %52 ], [ 0, %51 ], [ %61, %59 ]
  %67 = load i64, ptr %4, align 8, !tbaa !955
  %68 = call fastcc ptr @create_access_1(ptr noundef nonnull %22, i64 noundef %67, i64 noundef %65) #24
  %69 = getelementptr inbounds %struct.access, ptr %68, i64 0, i32 3
  store ptr %0, ptr %69, align 8, !tbaa !1004
  %70 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !636
  %72 = getelementptr inbounds %struct.access, ptr %68, i64 0, i32 4
  store ptr %71, ptr %72, align 8, !tbaa !753
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
  store ptr %1, ptr %81, align 8, !tbaa !1005
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
define internal fastcc void @mark_parm_dereference(ptr noundef readnone %0, i64 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !1006 !PGOFuncName !1007 {
  %4 = tail call fastcc ptr @gimple_bb(ptr noundef %2) #24
  %5 = load ptr, ptr @final_bbs, align 8, !tbaa !629
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !709
  %8 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %7) #23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %43, !prof !1008

10:                                               ; preds = %3
  %11 = load ptr, ptr @current_function_decl, align 8, !tbaa !629
  %12 = getelementptr inbounds %struct.tree_decl_non_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !636
  %14 = icmp ne ptr %13, null
  %15 = icmp ne ptr %13, %0
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %26, !prof !1009

17:                                               ; preds = %10, %17
  %18 = phi ptr [ %22, %17 ], [ %13, %10 ]
  %19 = phi i32 [ %20, %17 ], [ 0, %10 ]
  %20 = add nuw nsw i32 %19, 1
  %21 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !636
  %23 = icmp ne ptr %22, null
  %24 = icmp ne ptr %22, %0
  %25 = and i1 %23, %24
  br i1 %25, label %17, label %26, !prof !1010, !llvm.loop !1011

26:                                               ; preds = %17, %10
  %27 = phi i32 [ 0, %10 ], [ %20, %17 ]
  %28 = load i32, ptr @func_param_count, align 4, !tbaa !633
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %32, label %30, !prof !1012

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 698, ptr noundef nonnull @.str.1) #23
  %31 = load i32, ptr @func_param_count, align 4, !tbaa !633
  br label %32

32:                                               ; preds = %26, %30
  %33 = phi i32 [ %28, %26 ], [ %31, %30 ]
  %34 = load i32, ptr %6, align 8, !tbaa !709
  %35 = mul nsw i32 %33, %34
  %36 = add nsw i32 %35, %27
  %37 = load ptr, ptr @bb_dereferences, align 8, !tbaa !629
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i64, ptr %37, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !955
  %41 = icmp slt i64 %40, %1
  br i1 %41, label %42, label %43, !prof !1013

42:                                               ; preds = %32
  store i64 %1, ptr %39, align 8, !tbaa !955
  br label %43

43:                                               ; preds = %32, %42, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_access_1(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !prof !1014 !PGOFuncName !1015 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = load ptr, ptr @access_pool, align 8, !tbaa !629
  %6 = tail call ptr @pool_alloc(ptr noundef %5) #23
  %7 = getelementptr inbounds i8, ptr %6, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %7, i8 0, i64 96, i1 false)
  %8 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 2
  store ptr %0, ptr %8, align 8, !tbaa !745
  store i64 %1, ptr %6, align 8, !tbaa !791
  %9 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 1
  store i64 %2, ptr %9, align 8, !tbaa !759
  %10 = load ptr, ptr @base_access_vec, align 8, !tbaa !629
  %11 = tail call ptr @pointer_map_contains(ptr noundef %10, ptr noundef %0) #23
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !1016

13:                                               ; preds = %3
  %14 = load ptr, ptr %11, align 8, !tbaa !629
  br label %17

15:                                               ; preds = %3
  %16 = tail call fastcc ptr @VEC_access_p_heap_alloc(i32 noundef 32) #24
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %16, %15 ], [ %14, %13 ]
  store ptr %18, ptr %4, align 8, !tbaa !629
  call fastcc void @VEC_access_p_heap_safe_push(ptr noundef nonnull %4, ptr noundef nonnull %6) #24
  %19 = load ptr, ptr %4, align 8, !tbaa !629
  %20 = load ptr, ptr @base_access_vec, align 8, !tbaa !629
  %21 = tail call ptr @pointer_map_insert(ptr noundef %20, ptr noundef %0) #23
  store ptr %19, ptr %21, align 8, !tbaa !629
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1006 !PGOFuncName !1017 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !636
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_access_p_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1018 !PGOFuncName !1019 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_access_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1014 !PGOFuncName !1020 {
  tail call fastcc void @VEC_access_p_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !629
  tail call fastcc void @VEC_access_p_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_access_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1014 !PGOFuncName !1021 {
  %2 = load ptr, ptr %0, align 8, !tbaa !629
  %3 = tail call fastcc i32 @VEC_access_p_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1022

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !629
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_access_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #14 !prof !1023 !PGOFuncName !1024 {
  %3 = load i32, ptr %0, align 8, !tbaa !1025
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1025
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_access_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !629
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_access_p_base_space(ptr noundef readonly %0) unnamed_addr #6 !prof !1014 !PGOFuncName !1027 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1028

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_access_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1029
  %6 = load i32, ptr %0, align 8, !tbaa !1025
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
define internal fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %0) unnamed_addr #0 !prof !1030 !PGOFuncName !1031 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %0) unnamed_addr #0 !prof !1030 !PGOFuncName !1032 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #24
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1033 !PGOFuncName !1034 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #24, !range !665
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !1035

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
define internal fastcc void @add_link_to_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1036 !PGOFuncName !1037 {
  %3 = getelementptr inbounds %struct.assign_link, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !763
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %7, label %6, !prof !757

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 485, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !1038
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !1039
  br i1 %10, label %13, label %16, !prof !757

13:                                               ; preds = %7
  %14 = icmp eq ptr %12, null
  br i1 %14, label %18, label %15, !prof !757

15:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 489, ptr noundef nonnull @.str.1) #23
  br label %18

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.assign_link, ptr %12, i64 0, i32 2
  br label %18

18:                                               ; preds = %15, %13, %16
  %19 = phi ptr [ %17, %16 ], [ %8, %13 ], [ %8, %15 ]
  store ptr %1, ptr %19, align 8, !tbaa !629
  %20 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 11
  store ptr %1, ptr %20, align 8, !tbaa !1039
  %21 = getelementptr inbounds %struct.assign_link, ptr %1, i64 0, i32 2
  store ptr null, ptr %21, align 8, !tbaa !1040
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1041 !PGOFuncName !1042 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !710
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !prof !1043 !PGOFuncName !1044 {
  %4 = load ptr, ptr %1, align 8, !tbaa !1045
  store ptr %4, ptr %0, align 8, !tbaa !1047
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !1049
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !1050

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !1047
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !1051
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !1053
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !955
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !1054
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !633
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !1055 !PGOFuncName !1056 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1054
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !1057

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !1058

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !633
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !1059, !llvm.loop !1060

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !633
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !633
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !1053
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !1047
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !1053
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !1061

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !955
  store i64 %35, ptr %3, align 8, !tbaa !1054
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !1062

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !633
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !633
  %40 = load i32, ptr %23, align 8, !tbaa !1053
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !1053
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !1063, !llvm.loop !1064

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !1065
  store ptr %44, ptr %0, align 8, !tbaa !1047
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !1066

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !1051
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !633
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !1054
  store i32 %16, ptr %1, align 4, !tbaa !633
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: optsize
declare ptr @referenced_var_lookup(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @type_consists_of_records_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !974 !PGOFuncName !1067 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 16
  br i1 %4, label %5, label %37, !prof !1068

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !636
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9, !prof !1069

9:                                                ; preds = %5, %29
  %10 = phi ptr [ %32, %29 ], [ %7, %5 ]
  %11 = phi i8 [ %30, %29 ], [ 0, %5 ]
  %12 = load i64, ptr %10, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 31
  br i1 %14, label %15, label %29, !prof !1070

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !636
  %18 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %17) #23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23, !prof !1071

20:                                               ; preds = %15
  %21 = tail call fastcc zeroext i8 @type_consists_of_records_p(ptr noundef %17) #24
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %37, label %23, !prof !1072

23:                                               ; preds = %15, %20
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !636
  %26 = tail call i64 @tree_low_cst(ptr noundef %25, i32 noundef 1) #23
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i8
  br label %29

29:                                               ; preds = %23, %9
  %30 = phi i8 [ %11, %9 ], [ %28, %23 ]
  %31 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !636
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %9, !prof !1073, !llvm.loop !1074

34:                                               ; preds = %29
  %35 = icmp eq i8 %30, 0
  %36 = zext i1 %35 to i8
  br label %37

37:                                               ; preds = %20, %5, %34, %1
  %38 = phi i8 [ 0, %1 ], [ 1, %5 ], [ %36, %34 ], [ 0, %20 ]
  ret i8 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @completely_scalarize_record(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 !prof !1075 !PGOFuncName !1076 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !636
  %7 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !636
  %9 = icmp eq ptr %8, null
  br i1 %9, label %45, label %10, !prof !1069

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  br label %12

12:                                               ; preds = %10, %41
  %13 = phi ptr [ %8, %10 ], [ %43, %41 ]
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 31
  br i1 %16, label %17, label %41, !prof !1077

17:                                               ; preds = %12
  %18 = call i64 @int_bit_position(ptr noundef nonnull %13) #23
  %19 = add nsw i64 %18, %2
  %20 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !636
  %22 = call zeroext i8 @is_gimple_reg_type(ptr noundef %21) #23
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %40, label %24, !prof !1078

24:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !636
  %27 = call i64 @tree_low_cst(ptr noundef %26, i32 noundef 1) #23
  store ptr %0, ptr %4, align 8, !tbaa !629
  %28 = load ptr, ptr %11, align 8, !tbaa !636
  %29 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %4, ptr noundef %28, i64 noundef %19, ptr noundef %21, i8 noundef zeroext 0) #24
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32, !prof !1079

31:                                               ; preds = %24
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 863, ptr noundef nonnull @.str.1) #23
  br label %32

32:                                               ; preds = %24, %31
  %33 = call fastcc ptr @create_access_1(ptr noundef nonnull %0, i64 noundef %19, i64 noundef %27) #24
  %34 = load ptr, ptr %4, align 8, !tbaa !629
  %35 = getelementptr inbounds %struct.access, ptr %33, i64 0, i32 3
  store ptr %34, ptr %35, align 8, !tbaa !1004
  %36 = getelementptr inbounds %struct.access, ptr %33, i64 0, i32 4
  store ptr %21, ptr %36, align 8, !tbaa !753
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
  %43 = load ptr, ptr %42, align 8, !tbaa !636
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %12, !prof !1080, !llvm.loop !1081

45:                                               ; preds = %41, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #14 !prof !1082 !PGOFuncName !1083 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1054
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !1054
  %6 = load i32, ptr %1, align 4, !tbaa !633
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !633
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @sort_and_splice_var_accesses(ptr noundef %0) unnamed_addr #0 !prof !1084 !PGOFuncName !1085 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  %3 = tail call fastcc ptr @get_base_access_vector(ptr noundef %0) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %153, label %5, !prof !777

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @VEC_access_p_base_length(ptr noundef nonnull %3) #24
  %7 = tail call fastcc ptr @VEC_access_p_base_address(ptr noundef nonnull %3) #24
  %8 = sext i32 %6 to i64
  tail call void @spec_qsort(ptr noundef nonnull %7, i64 noundef %8, i64 noundef 8, ptr noundef nonnull @compare_access_positions) #23
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %10, label %151, !prof !1086

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
  %28 = load ptr, ptr %27, align 8, !tbaa !753
  %29 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %28) #23
  %30 = load i16, ptr %17, align 8
  %31 = trunc i16 %30 to i8
  %32 = lshr i8 %31, 7
  %33 = load i64, ptr %16, align 8, !tbaa !791
  %34 = icmp slt i64 %33, %12
  %35 = select i1 %14, i1 %34, i1 false
  br i1 %35, label %40, label %36, !prof !1087

36:                                               ; preds = %10
  %37 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !759
  %39 = add nsw i64 %38, %33
  br label %55

40:                                               ; preds = %10
  %41 = icmp sgt i64 %33, %13
  br i1 %41, label %42, label %47, !prof !1088

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !759
  %45 = add nsw i64 %44, %33
  %46 = icmp sgt i64 %45, %12
  br i1 %46, label %153, label %47, !prof !1089

47:                                               ; preds = %42, %40
  %48 = icmp slt i64 %33, %13
  br i1 %48, label %54, label %49, !prof !1090

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !759
  %52 = add nsw i64 %51, %33
  %53 = icmp sgt i64 %52, %12
  br i1 %53, label %54, label %55, !prof !1090

54:                                               ; preds = %49, %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1602, ptr noundef nonnull @.str.1) #23
  br label %55

55:                                               ; preds = %49, %54, %36
  %56 = phi i64 [ %33, %36 ], [ %13, %49 ], [ %13, %54 ]
  %57 = phi i64 [ %39, %36 ], [ %12, %49 ], [ %12, %54 ]
  %58 = add nsw i32 %11, 1
  %59 = icmp slt i32 %58, %6
  br i1 %59, label %60, label %110, !prof !1086

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
  %72 = load i64, ptr %71, align 8, !tbaa !791
  %73 = load i64, ptr %16, align 8, !tbaa !791
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %110, !prof !1091

75:                                               ; preds = %63
  %76 = getelementptr inbounds %struct.access, ptr %71, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !759
  %78 = load i64, ptr %61, align 8, !tbaa !759
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %110, !prof !1092

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.access, ptr %71, i64 0, i32 14
  %82 = load i16, ptr %81, align 8
  %83 = and i16 %82, 1
  %84 = icmp eq i16 %83, 0
  %85 = icmp eq i8 %69, 0
  %86 = select i1 %85, i8 %68, i8 1
  %87 = select i1 %84, i8 %70, i8 1, !prof !1093
  %88 = select i1 %84, i8 1, i8 %69, !prof !1093
  %89 = select i1 %84, i8 %86, i8 %68, !prof !1093
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
  br i1 %62, label %100, label %106, !prof !1094

100:                                              ; preds = %80
  %101 = getelementptr inbounds %struct.access, ptr %71, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !753
  %103 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %102) #23
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %106, label %105, !prof !1095

105:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1627, ptr noundef nonnull @.str.1) #23
  br label %106

106:                                              ; preds = %105, %100, %80
  %107 = getelementptr inbounds %struct.access, ptr %71, i64 0, i32 7
  store ptr %16, ptr %107, align 8, !tbaa !1096
  %108 = add i32 %64, 1
  %109 = icmp eq i32 %108, %6
  br i1 %109, label %110, label %63, !prof !1097

110:                                              ; preds = %106, %75, %63, %55
  %111 = phi i8 [ %20, %55 ], [ %70, %63 ], [ %70, %75 ], [ %87, %106 ]
  %112 = phi i8 [ %21, %55 ], [ %69, %63 ], [ %69, %75 ], [ %88, %106 ]
  %113 = phi i8 [ 0, %55 ], [ %68, %63 ], [ %68, %75 ], [ %89, %106 ]
  %114 = phi i8 [ %23, %55 ], [ %67, %63 ], [ %67, %75 ], [ %99, %106 ]
  %115 = phi i8 [ %26, %55 ], [ %66, %63 ], [ %66, %75 ], [ %93, %106 ]
  %116 = phi i8 [ %32, %55 ], [ %65, %63 ], [ %65, %75 ], [ %96, %106 ]
  %117 = phi i32 [ %58, %55 ], [ %64, %63 ], [ %64, %75 ], [ %6, %106 ]
  %118 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 7
  store ptr %16, ptr %118, align 8, !tbaa !1096
  %119 = load i16, ptr %17, align 8
  %120 = shl nuw nsw i8 %111, 3
  %121 = and i8 %120, 8
  %122 = and i16 %119, -697
  %123 = shl nuw nsw i8 %112, 4
  %124 = and i8 %123, 16
  %125 = icmp ne i8 %113, 0
  %126 = icmp ne i8 %114, 0
  %127 = select i1 %125, i1 true, i1 %126, !prof !1098
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
  %141 = load ptr, ptr %140, align 8, !tbaa !1038
  %142 = icmp eq ptr %141, null
  br i1 %142, label %144, label %143, !prof !1099

143:                                              ; preds = %110
  tail call fastcc void @add_access_to_work_queue(ptr noundef nonnull %16) #24
  br label %144

144:                                              ; preds = %110, %143
  store ptr %16, ptr %15, align 8, !tbaa !629
  %145 = getelementptr inbounds %struct.access, ptr %16, i64 0, i32 6
  %146 = icmp slt i32 %117, %6
  br i1 %146, label %10, label %147, !prof !1100, !llvm.loop !1101

147:                                              ; preds = %144
  %148 = load ptr, ptr %2, align 8, !tbaa !629
  %149 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef nonnull %3, i32 noundef 0) #24
  %150 = icmp eq ptr %148, %149
  br i1 %150, label %153, label %151, !prof !1102

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
define internal fastcc void @build_access_trees(ptr noundef %0) unnamed_addr #15 !prof !1103 !PGOFuncName !1104 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !629
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4, !prof !1105

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %1 ]
  call fastcc void @build_access_subtree(ptr noundef nonnull %2) #24
  %6 = load ptr, ptr %2, align 8, !tbaa !629
  %7 = getelementptr inbounds %struct.access, ptr %5, i64 0, i32 6
  store ptr %6, ptr %7, align 8, !tbaa !844
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %4, !prof !1106, !llvm.loop !1107

9:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_all_subaccesses() unnamed_addr #0 !prof !764 !PGOFuncName !1108 {
  %1 = load ptr, ptr @work_queue_head, align 8, !tbaa !629
  %2 = icmp eq ptr %1, null
  br i1 %2, label %40, label %6, !prof !1109

3:                                                ; preds = %36, %11
  %4 = load ptr, ptr @work_queue_head, align 8, !tbaa !629
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6, !prof !1110, !llvm.loop !1111

6:                                                ; preds = %0, %3
  %7 = tail call fastcc ptr @pop_access_from_work_queue() #24
  %8 = getelementptr inbounds %struct.access, ptr %7, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !629
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14, !prof !1112

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2020, ptr noundef nonnull @.str.1) #23
  %12 = load ptr, ptr %8, align 8, !tbaa !629
  %13 = icmp eq ptr %12, null
  br i1 %13, label %3, label %14, !prof !1102

14:                                               ; preds = %6, %11
  %15 = phi ptr [ %9, %6 ], [ %12, %11 ]
  br label %16

16:                                               ; preds = %14, %36
  %17 = phi ptr [ %38, %36 ], [ %15, %14 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !761
  %19 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !629
  %20 = getelementptr inbounds %struct.access, ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !745
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !636
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %19, i32 noundef %23) #23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26, !prof !760

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.access, ptr %18, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !1096
  %29 = tail call fastcc zeroext i8 @propagate_subaccesses_across_link(ptr noundef %28, ptr noundef %7) #24, !range !665
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31, !prof !1113

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.access, ptr %28, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !1038
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !1114

35:                                               ; preds = %31
  tail call fastcc void @add_access_to_work_queue(ptr noundef nonnull %28) #24
  br label %36

36:                                               ; preds = %26, %31, %35, %16
  %37 = getelementptr inbounds %struct.assign_link, ptr %17, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !629
  %39 = icmp eq ptr %38, null
  br i1 %39, label %3, label %16, !prof !1115, !llvm.loop !1116

40:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_first_repr_for_decl(ptr noundef %0) unnamed_addr #0 !prof !1117 !PGOFuncName !1118 {
  %2 = tail call fastcc ptr @get_base_access_vector(ptr noundef %0) #24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !1119

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef nonnull %2, i32 noundef 0) #24
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @analyze_access_trees(ptr noundef %0) unnamed_addr #0 !prof !1103 !PGOFuncName !1120 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !1105

3:                                                ; preds = %1, %3
  %4 = phi i8 [ %8, %3 ], [ 0, %1 ]
  %5 = phi ptr [ %10, %3 ], [ %0, %1 ]
  %6 = tail call fastcc zeroext i8 @analyze_access_subtree(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #24, !range !665
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i8 %4, i8 1, !prof !1121
  %9 = getelementptr inbounds %struct.access, ptr %5, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !844
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %3, !prof !1106, !llvm.loop !1122

12:                                               ; preds = %3, %1
  %13 = phi i8 [ 0, %1 ], [ %8, %3 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_access_tree(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 !prof !928 !PGOFuncName !1123 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  tail call fastcc void @dump_access_tree_1(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0) #24
  %6 = getelementptr inbounds %struct.access, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !844
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !1124

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_base_access_vector(ptr noundef %0) unnamed_addr #0 !prof !1125 !PGOFuncName !1126 {
  %2 = load ptr, ptr @base_access_vec, align 8, !tbaa !629
  %3 = tail call ptr @pointer_map_contains(ptr noundef %2, ptr noundef %0) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1127

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !629
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_access_p_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !1128 !PGOFuncName !1129 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1130

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1025
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_access_p_base_address(ptr noundef readnone %0) unnamed_addr #12 !prof !1131 !PGOFuncName !1132 {
  %2 = getelementptr inbounds %struct.VEC_access_p_base, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @compare_access_positions(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !1133 !PGOFuncName !1134 {
  %3 = load ptr, ptr %0, align 8, !tbaa !629
  %4 = load ptr, ptr %1, align 8, !tbaa !629
  %5 = load i64, ptr %3, align 8, !tbaa !791
  %6 = load i64, ptr %4, align 8, !tbaa !791
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %11, label %8, !prof !1135

8:                                                ; preds = %2
  %9 = icmp slt i64 %5, %6
  %10 = select i1 %9, i32 -1, i32 1
  br label %99

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.access, ptr %3, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !759
  %14 = getelementptr inbounds %struct.access, ptr %4, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !759
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %96, !prof !1136

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.access, ptr %3, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !753
  %20 = getelementptr inbounds %struct.access, ptr %4, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !753
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %99, label %23, !prof !1137

23:                                               ; preds = %17
  %24 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %19) #23
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30, !prof !1138

26:                                               ; preds = %23
  %27 = load ptr, ptr %20, align 8, !tbaa !753
  %28 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %27) #23
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %99, !prof !1139

30:                                               ; preds = %26, %23
  %31 = load ptr, ptr %18, align 8, !tbaa !753
  %32 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %31) #23
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34, !prof !1140

34:                                               ; preds = %30
  %35 = load ptr, ptr %20, align 8, !tbaa !753
  %36 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %35) #23
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %99, label %38, !prof !1141

38:                                               ; preds = %34, %30
  %39 = load ptr, ptr %18, align 8, !tbaa !753
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = and i32 %41, 65535
  %43 = add nsw i32 %42, -13
  %44 = icmp ult i32 %43, 2
  %45 = load ptr, ptr %20, align 8, !tbaa !753
  %46 = load i64, ptr %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = and i32 %47, 65535
  %49 = add nsw i32 %48, -13
  %50 = icmp ult i32 %49, 2
  br i1 %44, label %52, label %51, !prof !1142

51:                                               ; preds = %38
  br i1 %50, label %99, label %53, !prof !1142

52:                                               ; preds = %38
  br i1 %50, label %77, label %99

53:                                               ; preds = %51
  %54 = add nsw i32 %42, -6
  %55 = icmp ult i32 %54, 3
  br i1 %55, label %56, label %77, !prof !1143

56:                                               ; preds = %53
  %57 = add nsw i32 %48, -6
  %58 = icmp ult i32 %57, 3
  br i1 %58, label %59, label %67, !prof !1144

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
  %69 = load ptr, ptr %68, align 8, !tbaa !636
  %70 = getelementptr inbounds %struct.tree_int_cst, ptr %69, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !636
  %72 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 1023
  %75 = zext nneg i32 %74 to i64
  %76 = icmp eq i64 %71, %75
  br i1 %76, label %77, label %99, !prof !1145

77:                                               ; preds = %52, %53, %67
  %78 = add nsw i32 %48, -6
  %79 = icmp ult i32 %78, 3
  br i1 %79, label %80, label %90, !prof !1146

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !636
  %83 = getelementptr inbounds %struct.tree_int_cst, ptr %82, i64 0, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !636
  %85 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 1023
  %88 = zext nneg i32 %87 to i64
  %89 = icmp eq i64 %84, %88
  br i1 %89, label %90, label %99, !prof !1147

90:                                               ; preds = %77, %80
  %91 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 5
  %92 = load i32, ptr %91, align 8, !tbaa !636
  %93 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 5
  %94 = load i32, ptr %93, align 8, !tbaa !636
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
define internal fastcc ptr @VEC_access_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !1148 !PGOFuncName !1149 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_access_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !629
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @relink_to_new_repr(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !1150 !PGOFuncName !1151 {
  %3 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !1038
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11, !prof !1152

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !1039
  %9 = icmp eq ptr %8, null
  br i1 %9, label %47, label %10, !prof !1153

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 506, ptr noundef nonnull @.str.1) #23
  br label %47

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !1038
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !1039
  br i1 %14, label %37, label %17, !prof !1154

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.assign_link, ptr %16, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !1040
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !1155

21:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 512, ptr noundef nonnull @.str.1) #23
  br label %22

22:                                               ; preds = %17, %21
  %23 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !1039
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26, !prof !1156

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.assign_link, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !1040
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30, !prof !1155

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 513, ptr noundef nonnull @.str.1) #23
  %31 = load ptr, ptr %23, align 8, !tbaa !1039
  br label %32

32:                                               ; preds = %22, %26, %30
  %33 = phi ptr [ null, %22 ], [ %24, %26 ], [ %31, %30 ]
  %34 = load ptr, ptr %3, align 8, !tbaa !1038
  %35 = load ptr, ptr %15, align 8, !tbaa !1039
  %36 = getelementptr inbounds %struct.assign_link, ptr %35, i64 0, i32 2
  store ptr %34, ptr %36, align 8, !tbaa !1040
  br label %45

37:                                               ; preds = %11
  %38 = icmp eq ptr %16, null
  br i1 %38, label %41, label %39, !prof !1157

39:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 520, ptr noundef nonnull @.str.1) #23
  %40 = load ptr, ptr %3, align 8, !tbaa !1038
  br label %41

41:                                               ; preds = %37, %39
  %42 = phi ptr [ %4, %37 ], [ %40, %39 ]
  store ptr %42, ptr %12, align 8, !tbaa !1038
  %43 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 11
  %44 = load ptr, ptr %43, align 8, !tbaa !1039
  br label %45

45:                                               ; preds = %41, %32
  %46 = phi ptr [ %44, %41 ], [ %33, %32 ]
  store ptr %46, ptr %15, align 8, !tbaa !1039
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %47

47:                                               ; preds = %10, %6, %45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_access_to_work_queue(ptr noundef %0) unnamed_addr #0 !prof !1158 !PGOFuncName !1159 {
  %2 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %16, !prof !1160

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !1161
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1162

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 535, ptr noundef nonnull @.str.1) #23
  %11 = load i16, ptr %2, align 8
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi i16 [ %3, %6 ], [ %11, %10 ]
  %14 = load ptr, ptr @work_queue_head, align 8, !tbaa !629
  store ptr %14, ptr %7, align 8, !tbaa !1161
  %15 = or i16 %13, 4
  store i16 %15, ptr %2, align 8
  store ptr %0, ptr @work_queue_head, align 8, !tbaa !629
  br label %16

16:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @build_access_subtree(ptr nocapture noundef %0) unnamed_addr #15 !prof !1163 !PGOFuncName !1164 {
  %2 = load ptr, ptr %0, align 8, !tbaa !629
  %3 = load i64, ptr %2, align 8, !tbaa !791
  %4 = getelementptr inbounds %struct.access, ptr %2, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !759
  %6 = add nsw i64 %5, %3
  %7 = getelementptr inbounds %struct.access, ptr %2, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !844
  store ptr %8, ptr %0, align 8, !tbaa !629
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10, !prof !1165

10:                                               ; preds = %1, %18
  %11 = phi ptr [ %23, %18 ], [ null, %1 ]
  %12 = phi ptr [ %24, %18 ], [ %8, %1 ]
  %13 = load i64, ptr %12, align 8, !tbaa !791
  %14 = getelementptr inbounds %struct.access, ptr %12, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !759
  %16 = add nsw i64 %15, %13
  %17 = icmp sgt i64 %16, %6
  br i1 %17, label %26, label %18, !prof !1166

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.access, ptr %2, i64 0, i32 8
  %20 = icmp eq ptr %11, null
  %21 = getelementptr inbounds %struct.access, ptr %11, i64 0, i32 9
  %22 = select i1 %20, ptr %19, ptr %21, !prof !1167
  store ptr %12, ptr %22, align 8, !tbaa !629
  %23 = load ptr, ptr %0, align 8, !tbaa !629
  tail call fastcc void @build_access_subtree(ptr noundef nonnull %0) #24
  %24 = load ptr, ptr %0, align 8, !tbaa !629
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %10, !prof !1168, !llvm.loop !1169

26:                                               ; preds = %10, %18, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @pop_access_from_work_queue() unnamed_addr #16 !prof !1170 !PGOFuncName !1171 {
  %1 = load ptr, ptr @work_queue_head, align 8, !tbaa !629
  %2 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !1161
  store ptr %3, ptr @work_queue_head, align 8, !tbaa !629
  store ptr null, ptr %2, align 8, !tbaa !1161
  %4 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 14
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, -5
  store i16 %6, ptr %4, align 8
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @propagate_subaccesses_across_link(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1172 !PGOFuncName !1173 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load i64, ptr %0, align 8, !tbaa !791
  %6 = load i64, ptr %1, align 8, !tbaa !791
  %7 = sub nsw i64 %5, %6
  %8 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !753
  %10 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %9) #23
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %107, !prof !1174

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 128
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %107, !prof !1175

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 14
  %19 = load i16, ptr %18, align 8
  %20 = and i16 %19, 128
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %107, !prof !1175

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !793
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %49, !prof !1176

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !793
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %49, !prof !1177

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !753
  %33 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %32) #23
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %49, label %35, !prof !1178

35:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %36 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !745
  store ptr %37, ptr %3, align 8, !tbaa !629
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !636
  %40 = load i64, ptr %0, align 8, !tbaa !791
  %41 = load ptr, ptr %31, align 8, !tbaa !753
  %42 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %3, ptr noundef %39, i64 noundef %40, ptr noundef %41, i8 noundef zeroext 0) #24
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44, !prof !1179

44:                                               ; preds = %35
  %45 = load ptr, ptr %3, align 8, !tbaa !629
  %46 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 3
  store ptr %45, ptr %46, align 8, !tbaa !1004
  %47 = load ptr, ptr %31, align 8, !tbaa !753
  store ptr %47, ptr %8, align 8, !tbaa !753
  br label %48

48:                                               ; preds = %44, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  br label %107

49:                                               ; preds = %30, %26, %22
  %50 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !629
  %52 = icmp eq ptr %51, null
  br i1 %52, label %107, label %53, !prof !1180

53:                                               ; preds = %49, %102
  %54 = phi ptr [ %105, %102 ], [ %51, %49 ]
  %55 = phi i8 [ %103, %102 ], [ 0, %49 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !629
  %56 = load i64, ptr %54, align 8, !tbaa !791
  %57 = add nsw i64 %56, %7
  %58 = getelementptr inbounds %struct.access, ptr %54, i64 0, i32 14
  %59 = load i16, ptr %58, align 8
  %60 = and i16 %59, 128
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %102, !prof !1181

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.access, ptr %54, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !759
  %65 = call fastcc zeroext i8 @child_would_conflict_in_lacc(ptr noundef nonnull %0, i64 noundef %57, i64 noundef %64, ptr noundef nonnull %4) #24, !range !665
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %83, label %67, !prof !1182

67:                                               ; preds = %62
  %68 = load ptr, ptr %4, align 8, !tbaa !629
  %69 = icmp eq ptr %68, null
  br i1 %69, label %102, label %70, !prof !1183

70:                                               ; preds = %67
  %71 = or i16 %59, 32
  store i16 %71, ptr %58, align 8
  %72 = getelementptr inbounds %struct.access, ptr %68, i64 0, i32 14
  %73 = load i16, ptr %72, align 8
  %74 = shl i16 %73, 1
  %75 = and i16 %74, 32
  %76 = or i16 %75, %73
  store i16 %76, ptr %72, align 8
  %77 = getelementptr inbounds %struct.access, ptr %54, i64 0, i32 8
  %78 = load ptr, ptr %77, align 8, !tbaa !793
  %79 = icmp eq ptr %78, null
  br i1 %79, label %102, label %80, !prof !1184

80:                                               ; preds = %70
  %81 = tail call fastcc zeroext i8 @propagate_subaccesses_across_link(ptr noundef nonnull %68, ptr noundef nonnull %54) #24, !range !665
  %82 = or i8 %81, %55
  br label %102

83:                                               ; preds = %62
  %84 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !745
  %86 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !636
  %88 = getelementptr inbounds %struct.access, ptr %54, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !753
  %90 = tail call zeroext i8 @build_ref_for_offset(ptr noundef null, ptr noundef %87, i64 noundef %57, ptr noundef %89, i8 noundef zeroext 0) #24
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %102, label %92, !prof !1185

92:                                               ; preds = %83
  %93 = load i16, ptr %58, align 8
  %94 = or i16 %93, 32
  store i16 %94, ptr %58, align 8
  %95 = tail call fastcc ptr @create_artificial_child_access(ptr noundef nonnull %0, ptr noundef nonnull %54, i64 noundef %57) #24
  %96 = icmp eq ptr %95, null
  br i1 %96, label %102, label %97, !prof !1185

97:                                               ; preds = %92
  %98 = load ptr, ptr %50, align 8, !tbaa !793
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100, !prof !1185

100:                                              ; preds = %97
  %101 = tail call fastcc zeroext i8 @propagate_subaccesses_across_link(ptr noundef nonnull %95, ptr noundef nonnull %54) #24, !range !665
  br label %102

102:                                              ; preds = %92, %100, %97, %83, %67, %80, %70, %53
  %103 = phi i8 [ %55, %53 ], [ %82, %80 ], [ %55, %70 ], [ %55, %67 ], [ %55, %83 ], [ 1, %100 ], [ 1, %97 ], [ %55, %92 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  %104 = getelementptr inbounds %struct.access, ptr %54, i64 0, i32 9
  %105 = load ptr, ptr %104, align 8, !tbaa !629
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %53, !prof !1186, !llvm.loop !1187

107:                                              ; preds = %102, %49, %2, %12, %17, %48
  %108 = phi i8 [ 0, %48 ], [ 0, %17 ], [ 0, %12 ], [ 0, %2 ], [ 0, %49 ], [ %103, %102 ]
  ret i8 %108
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @child_would_conflict_in_lacc(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #9 !prof !1188 !PGOFuncName !1189 {
  %5 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !629
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8, !prof !1190

8:                                                ; preds = %4
  %9 = add nsw i64 %2, %1
  br label %10

10:                                               ; preds = %8, %26
  %11 = phi ptr [ %6, %8 ], [ %28, %26 ]
  %12 = load i64, ptr %11, align 8, !tbaa !791
  %13 = icmp eq i64 %12, %1
  br i1 %13, label %14, label %19, !prof !1191

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.access, ptr %11, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !759
  %17 = icmp eq i64 %16, %2
  br i1 %17, label %18, label %19, !prof !1184

18:                                               ; preds = %14
  store ptr %11, ptr %3, align 8, !tbaa !629
  br label %30

19:                                               ; preds = %14, %10
  %20 = icmp slt i64 %12, %9
  br i1 %20, label %21, label %26, !prof !1192

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.access, ptr %11, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !759
  %24 = add nsw i64 %23, %12
  %25 = icmp sgt i64 %24, %1
  br i1 %25, label %30, label %26, !prof !1193

26:                                               ; preds = %19, %21
  %27 = getelementptr inbounds %struct.access, ptr %11, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !629
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %10, !prof !1194, !llvm.loop !1195

30:                                               ; preds = %21, %26, %4, %18
  %31 = phi i8 [ 1, %18 ], [ 0, %4 ], [ 1, %21 ], [ 0, %26 ]
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_artificial_child_access(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 !prof !1196 !PGOFuncName !1197 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !745
  store ptr %6, ptr %4, align 8, !tbaa !629
  %7 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 14
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 128
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %12, label %11, !prof !1198

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1912, ptr noundef nonnull @.str.1) #23
  br label %12

12:                                               ; preds = %3, %11
  %13 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !636
  %15 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !753
  %17 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %4, ptr noundef %14, i64 noundef %2, ptr noundef %16, i8 noundef zeroext 0) #24
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %53, label %19, !prof !1185

19:                                               ; preds = %12
  %20 = load ptr, ptr @access_pool, align 8, !tbaa !629
  %21 = call ptr @pool_alloc(ptr noundef %20) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %21, i8 0, i64 120, i1 false)
  %22 = load ptr, ptr %5, align 8, !tbaa !745
  %23 = getelementptr inbounds %struct.access, ptr %21, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !745
  %24 = load ptr, ptr %4, align 8, !tbaa !629
  %25 = getelementptr inbounds %struct.access, ptr %21, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !1004
  store i64 %2, ptr %21, align 8, !tbaa !791
  %26 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !759
  %28 = getelementptr inbounds %struct.access, ptr %21, i64 0, i32 1
  store i64 %27, ptr %28, align 8, !tbaa !759
  %29 = load ptr, ptr %15, align 8, !tbaa !753
  %30 = getelementptr inbounds %struct.access, ptr %21, i64 0, i32 4
  store ptr %29, ptr %30, align 8, !tbaa !753
  %31 = getelementptr inbounds %struct.access, ptr %21, i64 0, i32 14
  store i16 8, ptr %31, align 8
  %32 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !629
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35, !prof !1199

35:                                               ; preds = %19
  %36 = load i64, ptr %33, align 8, !tbaa !791
  %37 = icmp slt i64 %36, %2
  br i1 %37, label %41, label %49, !prof !1200

38:                                               ; preds = %41
  %39 = load i64, ptr %44, align 8, !tbaa !791
  %40 = icmp slt i64 %39, %2
  br i1 %40, label %41, label %46, !prof !1201, !llvm.loop !1202

41:                                               ; preds = %35, %38
  %42 = phi ptr [ %44, %38 ], [ %33, %35 ]
  %43 = getelementptr inbounds %struct.access, ptr %42, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !629
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %38, !prof !1203, !llvm.loop !1202

46:                                               ; preds = %38, %41
  %47 = phi ptr [ %44, %38 ], [ null, %41 ]
  %48 = getelementptr inbounds %struct.access, ptr %42, i64 0, i32 9
  br label %49

49:                                               ; preds = %46, %35, %19
  %50 = phi ptr [ %32, %19 ], [ %32, %35 ], [ %48, %46 ]
  %51 = phi ptr [ null, %19 ], [ %33, %35 ], [ %47, %46 ]
  %52 = getelementptr inbounds %struct.access, ptr %21, i64 0, i32 9
  store ptr %51, ptr %52, align 8, !tbaa !1204
  store ptr %21, ptr %50, align 8, !tbaa !629
  br label %53

53:                                               ; preds = %12, %49
  %54 = phi ptr [ %21, %49 ], [ null, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret ptr %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @analyze_access_subtree(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !1205 !PGOFuncName !1206 {
  %5 = load i64, ptr %0, align 8, !tbaa !791
  %6 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !759
  %8 = add nsw i64 %7, %5
  %9 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !753
  %11 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %10) #23
  %12 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %13 = load i16, ptr %12, align 8
  %14 = lshr i16 %13, 4
  %15 = and i16 %14, 1
  %16 = icmp eq i8 %2, 0
  br i1 %16, label %19, label %17, !prof !1207

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
  br i1 %24, label %27, label %25, !prof !1208

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
  br i1 %37, label %44, label %38, !prof !1209

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !1004
  %41 = tail call fastcc zeroext i8 @expr_with_var_bounded_array_refs_p(ptr noundef %40) #24, !range !665
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43, !prof !1210

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %38, %31
  %45 = phi i8 [ 0, %43 ], [ %1, %38 ], [ 0, %31 ]
  %46 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !629
  %48 = icmp eq ptr %47, null
  br i1 %48, label %83, label %49, !prof !1211

49:                                               ; preds = %44, %62
  %50 = phi ptr [ %78, %62 ], [ %47, %44 ]
  %51 = phi i8 [ %66, %62 ], [ 0, %44 ]
  %52 = phi i8 [ %76, %62 ], [ 0, %44 ]
  %53 = phi i64 [ %63, %62 ], [ %5, %44 ]
  %54 = icmp eq i8 %52, 0
  br i1 %54, label %55, label %58, !prof !1212

55:                                               ; preds = %49
  %56 = load i64, ptr %50, align 8, !tbaa !791
  %57 = icmp slt i64 %56, %53
  br i1 %57, label %62, label %58, !prof !1213

58:                                               ; preds = %55, %49
  %59 = getelementptr inbounds %struct.access, ptr %50, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !759
  %61 = add nsw i64 %60, %53
  br label %62

62:                                               ; preds = %55, %58
  %63 = phi i64 [ %61, %58 ], [ %53, %55 ]
  %64 = phi i8 [ %52, %58 ], [ 1, %55 ]
  %65 = tail call fastcc zeroext i8 @analyze_access_subtree(ptr noundef nonnull %50, i8 noundef zeroext %45, i8 noundef zeroext %23, i8 noundef zeroext %33) #24, !range !665
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
  %78 = load ptr, ptr %77, align 8, !tbaa !629
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %49, !prof !1214, !llvm.loop !1215

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
  br i1 %89, label %90, label %133, !prof !1216

90:                                               ; preds = %83
  %91 = load ptr, ptr %46, align 8, !tbaa !793
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %133, !prof !1217

93:                                               ; preds = %90
  %94 = load i16, ptr %12, align 8
  %95 = and i16 %94, 32
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %97, label %102, !prof !1218

97:                                               ; preds = %93
  %98 = icmp eq i16 %15, 0
  %99 = and i16 %94, 8
  %100 = icmp eq i16 %99, 0
  %101 = or i1 %98, %100
  br i1 %101, label %133, label %102, !prof !1219

102:                                              ; preds = %97, %93
  %103 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !745
  %105 = getelementptr inbounds %struct.tree_common, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !636
  %107 = load i64, ptr %0, align 8, !tbaa !791
  %108 = load ptr, ptr %9, align 8, !tbaa !753
  %109 = tail call zeroext i8 @build_ref_for_offset(ptr noundef null, ptr noundef %106, i64 noundef %107, ptr noundef %108, i8 noundef zeroext 0) #24
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %133, label %111, !prof !1220

111:                                              ; preds = %102
  %112 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %113 = icmp eq ptr %112, null
  br i1 %113, label %130, label %114, !prof !1221

114:                                              ; preds = %111
  %115 = load i32, ptr @dump_flags, align 4, !tbaa !633
  %116 = and i32 %115, 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %114
  %119 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 8, i64 1, ptr nonnull %112)
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %121 = load ptr, ptr %103, align 8, !tbaa !745
  tail call void @print_generic_expr(ptr noundef %120, ptr noundef %121, i32 noundef 0) #23
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %123 = load i64, ptr %0, align 8, !tbaa !791
  %124 = trunc i64 %123 to i32
  %125 = load i64, ptr %6, align 8, !tbaa !759
  %126 = trunc i64 %125 to i32
  %127 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef nonnull @.str.30, i32 noundef %124, i32 noundef %126) #24
  %128 = load ptr, ptr @dump_file, align 8, !tbaa !629
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
  br i1 %139, label %143, label %141, !prof !1222

141:                                              ; preds = %136
  %142 = or i16 %140, 64
  store i16 %142, ptr %12, align 8
  br label %157

143:                                              ; preds = %136
  %144 = and i16 %140, 8
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %146, label %152, !prof !1223

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !745
  %149 = load i64, ptr %148, align 8
  %150 = and i64 %149, 65535
  %151 = icmp eq i64 %150, 34
  br i1 %151, label %152, label %154, !prof !1224

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
define internal fastcc noundef zeroext i8 @expr_with_var_bounded_array_refs_p(ptr noundef %0) unnamed_addr #0 !prof !1225 !PGOFuncName !1226 {
  %2 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #24, !range !665
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %18, label %4, !prof !1227

4:                                                ; preds = %1, %13
  %5 = phi ptr [ %15, %13 ], [ %0, %1 ]
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 45
  br i1 %8, label %9, label %13, !prof !1228

9:                                                ; preds = %4
  %10 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %5) #23
  %11 = tail call i32 @host_integerp(ptr noundef %10, i32 noundef 0) #23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !1229

13:                                               ; preds = %9, %4
  %14 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !636
  %16 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %15) #24, !range !665
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %4, !prof !1230, !llvm.loop !1231

18:                                               ; preds = %9, %13, %1
  %19 = phi i8 [ 0, %1 ], [ 0, %13 ], [ 1, %9 ]
  ret i8 %19
}

; Function Attrs: optsize
declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_access_tree_1(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !928 !PGOFuncName !1232 {
  %4 = icmp sgt i32 %2, 0
  %5 = add nsw i32 %2, 1
  br label %6

6:                                                ; preds = %19, %3
  %7 = phi ptr [ %1, %3 ], [ %21, %19 ]
  br i1 %4, label %8, label %14

8:                                                ; preds = %6, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %6 ]
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %11 = tail call i32 @fputs(ptr noundef nonnull @.str.32, ptr noundef %10) #24
  %12 = add nuw nsw i32 %9, 1
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %8, !llvm.loop !1233

14:                                               ; preds = %8, %6
  tail call fastcc void @dump_access(ptr noundef %0, ptr noundef %7) #24
  %15 = getelementptr inbounds %struct.access, ptr %7, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !793
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call fastcc void @dump_access_tree_1(ptr noundef %0, ptr noundef nonnull %16, i32 noundef %5) #24
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.access, ptr %7, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !1204
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %6, !llvm.loop !1234

23:                                               ; preds = %19
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_access(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !928 !PGOFuncName !1235 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 9, i64 1, ptr %0)
  %4 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !745
  %6 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !636
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %7) #24
  %9 = load ptr, ptr %4, align 8, !tbaa !745
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %9, i32 noundef 0) #23
  %10 = load i64, ptr %1, align 8, !tbaa !791
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, i64 noundef %10) #24
  %12 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !759
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.36, i64 noundef %13) #24
  %15 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 9, i64 1, ptr %0)
  %16 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !1004
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %17, i32 noundef 0) #23
  %18 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 9, i64 1, ptr %0)
  %19 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !753
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
define internal fastcc noundef ptr @get_access_for_expr(ptr noundef %0) unnamed_addr #0 !prof !1236 !PGOFuncName !1237 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 118
  br i1 %7, label %8, label %11, !prof !1238

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !636
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ %0, %1 ]
  %13 = call ptr @get_ref_base_and_extent(ptr noundef %12, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %14 = load i64, ptr %4, align 8, !tbaa !955
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %32, label %16, !prof !1239

16:                                               ; preds = %11
  %17 = load i64, ptr %13, align 8
  %18 = and i64 %17, 65535
  %19 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !633
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %32, !prof !1240

22:                                               ; preds = %16
  %23 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !629
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %13, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !636
  %26 = call i32 @bitmap_bit_p(ptr noundef %23, i32 noundef %25) #23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !1241

28:                                               ; preds = %22
  %29 = load i64, ptr %2, align 8, !tbaa !955
  %30 = load i64, ptr %4, align 8, !tbaa !955
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
define internal fastcc ptr @get_access_replacement(ptr nocapture noundef %0) unnamed_addr #0 !prof !1242 !PGOFuncName !1243 {
  %2 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 1024
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %7, !prof !1244

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1709, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !1245
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13, !prof !1246

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @create_access_replacement(ptr noundef nonnull %0) #24
  store ptr %12, ptr %8, align 8, !tbaa !1245
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
define internal fastcc void @generate_subtree_copies(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 !prof !1247 !PGOFuncName !1248 {
  %9 = alloca ptr, align 8
  %10 = icmp eq i64 %4, 0
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = icmp eq i8 %6, 0
  %13 = icmp eq i8 %7, 0
  br label %14

14:                                               ; preds = %86, %8
  %15 = phi ptr [ %0, %8 ], [ %88, %86 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  store ptr %1, ptr %9, align 8, !tbaa !629
  br i1 %10, label %21, label %16, !prof !1249

16:                                               ; preds = %14
  %17 = add nsw i64 %4, %3
  %18 = load i64, ptr %15, align 8, !tbaa !791
  %19 = icmp slt i64 %18, %17
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  br label %90

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 14
  %23 = load i16, ptr %22, align 8
  %24 = and i16 %23, 1024
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %81, label %36, !prof !1250

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 14
  %28 = load i16, ptr %27, align 8
  %29 = and i16 %28, 1024
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %81, label %31, !prof !1250

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !759
  %34 = add nsw i64 %33, %18
  %35 = icmp sgt i64 %34, %3
  br i1 %35, label %36, label %81

36:                                               ; preds = %21, %31
  %37 = phi ptr [ %27, %31 ], [ %22, %21 ]
  %38 = call fastcc ptr @get_access_replacement(ptr noundef nonnull %15) #24
  %39 = load ptr, ptr %11, align 8, !tbaa !636
  %40 = load i64, ptr %15, align 8, !tbaa !791
  %41 = sub nsw i64 %40, %2
  %42 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !753
  %44 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %9, ptr noundef %39, i64 noundef %41, ptr noundef %43, i8 noundef zeroext 0) #24
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47, !prof !1251

46:                                               ; preds = %36
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2190, ptr noundef nonnull @.str.1) #23
  br label %47

47:                                               ; preds = %36, %46
  br i1 %12, label %60, label %48, !prof !1252

48:                                               ; preds = %47
  %49 = load i16, ptr %37, align 8
  %50 = and i16 %49, 512
  %51 = icmp eq i16 %50, 0
  %52 = load ptr, ptr %9, align 8, !tbaa !629
  br i1 %51, label %57, label %53, !prof !1253

53:                                               ; preds = %48
  %54 = zext i1 %13 to i8
  %55 = zext i1 %13 to i32
  %56 = call ptr @force_gimple_operand_gsi(ptr noundef %5, ptr noundef %52, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext %54, i32 noundef %55) #23
  store ptr %56, ptr %9, align 8, !tbaa !629
  br label %57

57:                                               ; preds = %53, %48
  %58 = phi ptr [ %56, %53 ], [ %52, %48 ]
  %59 = call ptr @gimple_build_assign_stat(ptr noundef %38, ptr noundef %58) #23
  br label %74

60:                                               ; preds = %47
  %61 = load i64, ptr %38, align 8
  %62 = or i64 %61, 8388608
  store i64 %62, ptr %38, align 8
  %63 = load i16, ptr %37, align 8
  %64 = and i16 %63, 512
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %70, label %66, !prof !1254

66:                                               ; preds = %60
  %67 = zext i1 %13 to i8
  %68 = zext i1 %13 to i32
  %69 = call ptr @force_gimple_operand_gsi(ptr noundef %5, ptr noundef nonnull %38, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext %67, i32 noundef %68) #23
  br label %70

70:                                               ; preds = %66, %60
  %71 = phi ptr [ %69, %66 ], [ %38, %60 ]
  %72 = load ptr, ptr %9, align 8, !tbaa !629
  %73 = call ptr @gimple_build_assign_stat(ptr noundef %72, ptr noundef %71) #23
  br label %74

74:                                               ; preds = %70, %57
  %75 = phi ptr [ %59, %57 ], [ %73, %70 ]
  br i1 %13, label %77, label %76, !prof !1255

76:                                               ; preds = %74
  call void @gsi_insert_after(ptr noundef %5, ptr noundef %75, i32 noundef 0) #23
  br label %78

77:                                               ; preds = %74
  call void @gsi_insert_before(ptr noundef %5, ptr noundef %75, i32 noundef 1) #23
  br label %78

78:                                               ; preds = %77, %76
  call fastcc void @update_stmt(ptr noundef %75) #24
  %79 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 2), align 4, !tbaa !672
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 2), align 4, !tbaa !672
  br label %81

81:                                               ; preds = %26, %78, %31, %21
  %82 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 8
  %83 = load ptr, ptr %82, align 8, !tbaa !793
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85, !prof !1256

85:                                               ; preds = %81
  call fastcc void @generate_subtree_copies(ptr noundef nonnull %83, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7) #24
  br label %86

86:                                               ; preds = %81, %85
  %87 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 9
  %88 = load ptr, ptr %87, align 8, !tbaa !1204
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %14, !prof !1257, !llvm.loop !1258

90:                                               ; preds = %86, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_var_base_offset_size_access(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !prof !1259 !PGOFuncName !1260 {
  %4 = tail call fastcc ptr @get_first_repr_for_decl(ptr noundef %0) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6, !prof !1261

6:                                                ; preds = %3, %13
  %7 = phi ptr [ %15, %13 ], [ %4, %3 ]
  %8 = load i64, ptr %7, align 8, !tbaa !791
  %9 = getelementptr inbounds %struct.access, ptr %7, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !759
  %11 = add nsw i64 %10, %8
  %12 = icmp sgt i64 %11, %1
  br i1 %12, label %17, label %13, !prof !1262

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.access, ptr %7, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !844
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %6, !prof !1263, !llvm.loop !1264

17:                                               ; preds = %6
  %18 = tail call fastcc ptr @find_access_in_subtree(ptr noundef nonnull %7, i64 noundef %1, i64 noundef %2) #24
  br label %19

19:                                               ; preds = %13, %3, %17
  %20 = phi ptr [ %18, %17 ], [ null, %3 ], [ null, %13 ]
  ret ptr %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @find_access_in_subtree(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #13 !prof !1265 !PGOFuncName !1266 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5, !prof !1267

5:                                                ; preds = %17, %3
  %6 = phi ptr [ %0, %3 ], [ %18, %17 ]
  %7 = load i64, ptr %6, align 8, !tbaa !791
  %8 = icmp eq i64 %7, %1
  br i1 %8, label %9, label %13, !prof !1268

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !759
  %12 = icmp eq i64 %11, %2
  br i1 %12, label %28, label %13, !prof !1269

13:                                               ; preds = %5, %9
  %14 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !629
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17, !prof !1267

17:                                               ; preds = %13, %24
  %18 = phi ptr [ %26, %24 ], [ %15, %13 ]
  %19 = load i64, ptr %18, align 8, !tbaa !791
  %20 = getelementptr inbounds %struct.access, ptr %18, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !759
  %22 = add nsw i64 %21, %19
  %23 = icmp sgt i64 %22, %1
  br i1 %23, label %5, label %24, !prof !1270, !llvm.loop !1271

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.access, ptr %18, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !629
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %17, !prof !1272, !llvm.loop !1273

28:                                               ; preds = %13, %9, %24, %3
  %29 = phi ptr [ null, %3 ], [ null, %24 ], [ null, %13 ], [ %6, %9 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_access_replacement(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1274 !PGOFuncName !1275 {
  %2 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !753
  %4 = tail call ptr @create_tmp_var(ptr noundef %3, ptr noundef nonnull @.str.41) #23
  tail call fastcc void @get_var_ann(ptr noundef %4) #24
  %5 = tail call zeroext i8 @add_referenced_var(ptr noundef %4) #23
  tail call void @mark_sym_for_renaming(ptr noundef %4) #23
  %6 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 512
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %21, !prof !1276

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !tbaa !753
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -13
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %21, !prof !1277

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = or i64 %19, 134217728
  store i64 %20, ptr %18, align 8
  br label %21

21:                                               ; preds = %10, %17, %1
  %22 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !745
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !636
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 1
  store i32 %25, ptr %26, align 8, !tbaa !636
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = or i64 %28, 4096
  store i64 %29, ptr %27, align 8
  %30 = load ptr, ptr %22, align 8, !tbaa !745
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 1024
  %34 = and i64 %29, -1025
  %35 = or disjoint i64 %33, %34
  store i64 %35, ptr %27, align 8
  %36 = load ptr, ptr %22, align 8, !tbaa !745
  %37 = getelementptr inbounds %struct.tree_decl_minimal, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !636
  %39 = icmp eq ptr %38, null
  br i1 %39, label %75, label %40, !prof !1278

40:                                               ; preds = %21
  %41 = getelementptr inbounds %struct.tree_decl_common, ptr %36, i64 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 5120
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %75, !prof !1279

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !1004
  %48 = tail call fastcc ptr @make_fancy_name(ptr noundef %47) #24
  %49 = tail call ptr @get_identifier(ptr noundef %48) #23
  %50 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !636
  %51 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 1), align 8, !tbaa !851
  %52 = ptrtoint ptr %48 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  store i64 %54, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !853
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %63, !prof !1280

56:                                               ; preds = %45
  %57 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !855
  %58 = ptrtoint ptr %57 to i64
  %59 = sub i64 %58, %53
  %60 = icmp slt i64 %54, %59
  br i1 %60, label %61, label %63, !prof !1280

61:                                               ; preds = %56
  %62 = getelementptr inbounds i8, ptr %51, i64 %54
  store ptr %62, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 2), align 8, !tbaa !856
  store ptr %62, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  br label %65

63:                                               ; preds = %56, %45
  %64 = getelementptr inbounds i8, ptr %51, i64 %54
  tail call void @obstack_free(ptr noundef nonnull @name_obstack, ptr noundef %64) #23
  br label %65

65:                                               ; preds = %63, %61
  %66 = load ptr, ptr %46, align 8, !tbaa !1004
  tail call void @decl_debug_expr_insert(ptr noundef nonnull %4, ptr noundef %66) #23
  %67 = load i64, ptr %27, align 8
  %68 = or i64 %67, 16384
  store i64 %68, ptr %27, align 8
  %69 = load ptr, ptr %22, align 8, !tbaa !745
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
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %81 = icmp eq ptr %80, null
  br i1 %81, label %96, label %82, !prof !1276

82:                                               ; preds = %78
  %83 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 26, i64 1, ptr nonnull %80)
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %85 = load ptr, ptr %22, align 8, !tbaa !745
  tail call void @print_generic_expr(ptr noundef %84, ptr noundef %85, i32 noundef 0) #23
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %87 = load i64, ptr %0, align 8, !tbaa !791
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 1
  %90 = load i64, ptr %89, align 8, !tbaa !759
  %91 = trunc i64 %90 to i32
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.30, i32 noundef %88, i32 noundef %91) #24
  %93 = load ptr, ptr @dump_file, align 8, !tbaa !629
  tail call void @print_generic_expr(ptr noundef %93, ptr noundef nonnull %4, i32 noundef 0) #23
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %95 = tail call i32 @fputc(i32 10, ptr %94)
  br label %96

96:                                               ; preds = %82, %78
  %97 = load i32, ptr @sra_stats, align 4, !tbaa !669
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr @sra_stats, align 4, !tbaa !669
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_var_ann(ptr noundef %0) unnamed_addr #0 !prof !1281 !PGOFuncName !1282 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ], !prof !1283

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
  %15 = load ptr, ptr %14, align 8, !tbaa !629
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !1284

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
define internal fastcc ptr @make_fancy_name(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1285 !PGOFuncName !1286 {
  tail call fastcc void @make_fancy_name_1(ptr noundef %0) #24
  %2 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  %3 = getelementptr inbounds i8, ptr %2, i64 1
  %4 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !855
  %5 = icmp ugt ptr %3, %4
  br i1 %5, label %6, label %8, !prof !1287

6:                                                ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull @name_obstack, i32 noundef 1) #23
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi ptr [ %2, %1 ], [ %7, %6 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %10, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  store i8 0, ptr %9, align 1, !tbaa !636
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 2), align 8, !tbaa !856
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %17, !prof !1287

14:                                               ; preds = %8
  %15 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 10), align 8
  %16 = or i8 %15, 2
  store i8 %16, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 10), align 8
  br label %17

17:                                               ; preds = %8, %14
  %18 = ptrtoint ptr %12 to i64
  store i64 %18, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !853
  %19 = ptrtoint ptr %11 to i64
  %20 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 6), align 8, !tbaa !1288
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = xor i32 %20, -1
  %24 = sext i32 %23 to i64
  %25 = and i64 %22, %24
  %26 = inttoptr i64 %25 to ptr
  store ptr %26, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  %27 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 1), align 8, !tbaa !851
  %28 = ptrtoint ptr %27 to i64
  %29 = sub i64 %25, %28
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !855
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %31, %28
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %35, !prof !1287

34:                                               ; preds = %17
  store ptr %30, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  br label %35

35:                                               ; preds = %17, %34
  %36 = phi ptr [ %26, %17 ], [ %30, %34 ]
  store ptr %36, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 2), align 8, !tbaa !856
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
define internal fastcc void @make_fancy_name_1(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1289 !PGOFuncName !1290 {
  %2 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #25
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !633
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %9, !prof !1291

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
  ], !prof !1292

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !636
  tail call fastcc void @make_fancy_name_1(ptr noundef %13) #24
  %14 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  %16 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !855
  %17 = icmp ugt ptr %15, %16
  br i1 %17, label %18, label %20, !prof !1293

18:                                               ; preds = %11
  tail call void @_obstack_newchunk(ptr noundef nonnull @name_obstack, i32 noundef 1) #23
  %19 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi ptr [ %14, %11 ], [ %19, %18 ]
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %22, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  store i8 36, ptr %21, align 1, !tbaa !636
  %23 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !636
  tail call fastcc void @make_fancy_decl_name(ptr noundef %24) #24
  br label %62

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !636
  tail call fastcc void @make_fancy_name_1(ptr noundef %27) #24
  %28 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !855
  %31 = icmp ugt ptr %29, %30
  br i1 %31, label %32, label %34, !prof !1294

32:                                               ; preds = %25
  tail call void @_obstack_newchunk(ptr noundef nonnull @name_obstack, i32 noundef 1) #23
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  br label %34

34:                                               ; preds = %25, %32
  %35 = phi ptr [ %28, %25 ], [ %33, %32 ]
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %36, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  store i8 36, ptr %35, align 1, !tbaa !636
  %37 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !636
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 23
  br i1 %41, label %42, label %62, !prof !1295

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.tree_int_cst, ptr %38, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !636
  %45 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %44) #24
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24
  store i64 %46, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !853
  %47 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  %48 = getelementptr inbounds i8, ptr %47, i64 %46
  %49 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !855
  %50 = icmp ugt ptr %48, %49
  br i1 %50, label %51, label %55, !prof !1296

51:                                               ; preds = %42
  %52 = trunc i64 %46 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull @name_obstack, i32 noundef %52) #23
  %53 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  %54 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !853
  br label %55

55:                                               ; preds = %42, %51
  %56 = phi i64 [ %46, %42 ], [ %54, %51 ]
  %57 = phi ptr [ %47, %42 ], [ %53, %51 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %57, ptr nonnull align 16 %2, i64 %56, i1 false)
  %58 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !853
  %59 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  %60 = getelementptr inbounds i8, ptr %59, i64 %58
  store ptr %60, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
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
define internal fastcc void @make_fancy_decl_name(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1297 !PGOFuncName !1298 {
  %2 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #25
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !636
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6, !prof !1299

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_identifier, ptr %4, i64 0, i32 1
  %8 = getelementptr inbounds %struct.tree_identifier, ptr %4, i64 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !636
  %10 = zext i32 %9 to i64
  store i64 %10, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !853
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  %12 = getelementptr inbounds i8, ptr %11, i64 %10
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !855
  %14 = icmp ugt ptr %12, %13
  br i1 %14, label %15, label %18, !prof !1299

15:                                               ; preds = %6
  tail call void @_obstack_newchunk(ptr noundef nonnull @name_obstack, i32 noundef %9) #23
  %16 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  %17 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !853
  br label %18

18:                                               ; preds = %6, %15
  %19 = phi i64 [ %10, %6 ], [ %17, %15 ]
  %20 = phi ptr [ %11, %6 ], [ %16, %15 ]
  %21 = load ptr, ptr %7, align 8, !tbaa !636
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %21, i64 %19, i1 false)
  br label %38

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !636
  %25 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %24) #24
  %26 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24
  store i64 %26, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !853
  %27 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  %28 = getelementptr inbounds i8, ptr %27, i64 %26
  %29 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !855
  %30 = icmp ugt ptr %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = trunc i64 %26 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull @name_obstack, i32 noundef %32) #23
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  %34 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !853
  br label %35

35:                                               ; preds = %22, %31
  %36 = phi i64 [ %26, %22 ], [ %34, %31 ]
  %37 = phi ptr [ %27, %22 ], [ %33, %31 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr nonnull align 16 %2, i64 %36, i1 false)
  br label %38

38:                                               ; preds = %35, %18
  %39 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !853
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  %41 = getelementptr inbounds i8, ptr %40, i64 %39
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #25
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1300 !PGOFuncName !1301 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !636
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !1302 !PGOFuncName !1303 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !1304 !PGOFuncName !1305 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @sra_modify_constructor_assign(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !928 !PGOFuncName !1306 {
  %3 = load ptr, ptr %0, align 8, !tbaa !629
  %4 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %3) #24
  %5 = tail call fastcc ptr @get_access_for_expr(ptr noundef %4) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !629
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %8) #24
  %10 = getelementptr inbounds %struct.tree_constructor, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !636
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %0, align 8, !tbaa !629
  %15 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #24
  %16 = getelementptr inbounds %struct.tree_constructor, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !636
  br label %18

18:                                               ; preds = %7, %13
  %19 = phi ptr [ %17, %13 ], [ null, %7 ]
  %20 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %19) #24
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = tail call fastcc zeroext i8 @access_has_children_p(ptr noundef nonnull %5) #24, !range !665
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.access, ptr %5, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !793
  %28 = getelementptr inbounds %struct.access, ptr %5, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !745
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
  %36 = load ptr, ptr %0, align 8, !tbaa !629
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
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1307 !PGOFuncName !1308 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #24
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4, !prof !1309

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10, !prof !1310

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !636
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @access_has_children_p(ptr noundef readonly %0) unnamed_addr #6 !prof !1311 !PGOFuncName !1312 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3, !prof !1313

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !793
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %3 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ref_expr_for_all_replacements_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 !prof !1314 !PGOFuncName !1315 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  br label %5

5:                                                ; preds = %26, %3
  %6 = phi ptr [ %0, %3 ], [ %28, %26 ]
  %7 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 14
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 1024
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %19, label %11, !prof !1316

11:                                               ; preds = %5
  %12 = load ptr, ptr %4, align 8, !tbaa !636
  %13 = load i64, ptr %6, align 8, !tbaa !791
  %14 = sub nsw i64 %13, %2
  %15 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !753
  %17 = tail call zeroext i8 @build_ref_for_offset(ptr noundef null, ptr noundef %12, i64 noundef %14, ptr noundef %16, i8 noundef zeroext 0) #24
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %30, label %19, !prof !1317

19:                                               ; preds = %11, %5
  %20 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !793
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23, !prof !1318

23:                                               ; preds = %19
  %24 = tail call fastcc zeroext i8 @ref_expr_for_all_replacements_p(ptr noundef nonnull %21, ptr noundef %1, i64 noundef %2) #24, !range !665
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26, !prof !1319

26:                                               ; preds = %23, %19
  %27 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !1204
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %5, !prof !1320, !llvm.loop !1321

30:                                               ; preds = %26, %23, %11
  %31 = phi i8 [ 0, %11 ], [ 0, %23 ], [ 1, %26 ]
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @handle_unscalarized_data_in_subtree(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1322 !PGOFuncName !1323 {
  %4 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 256
  %7 = icmp eq i16 %6, 0
  %8 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !793
  br i1 %7, label %13, label %10, !prof !1324

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !745
  tail call fastcc void @generate_subtree_copies(ptr noundef %9, ptr noundef %12, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #24
  br label %15

13:                                               ; preds = %3
  %14 = load i64, ptr %0, align 8, !tbaa !791
  tail call fastcc void @generate_subtree_copies(ptr noundef %9, ptr noundef %1, i64 noundef %14, i64 noundef 0, i64 noundef 0, ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #24
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ 1, %10 ], [ 2, %13 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @load_assign_lhs_subreplacements(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef %6, ptr noundef %7) unnamed_addr #0 !prof !1325 !PGOFuncName !1326 {
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !1004
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !633
  %16 = add i32 %15, -4
  %17 = icmp ult i32 %16, 7
  br i1 %17, label %18, label %21, !prof !1327

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !636
  br label %21

21:                                               ; preds = %8, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %8 ]
  br label %23

23:                                               ; preds = %105, %21
  %24 = phi ptr [ %0, %21 ], [ %107, %105 ]
  %25 = getelementptr inbounds %struct.access, ptr %24, i64 0, i32 14
  %26 = load i16, ptr %25, align 8
  %27 = and i16 %26, 1024
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %89, label %29, !prof !1328

29:                                               ; preds = %23
  %30 = load i64, ptr %24, align 8, !tbaa !791
  %31 = sub nsw i64 %30, %2
  %32 = add nsw i64 %31, %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  %33 = getelementptr inbounds %struct.access, ptr %24, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !759
  %35 = call fastcc ptr @find_access_in_subtree(ptr noundef %1, i64 noundef %32, i64 noundef %34) #24
  %36 = icmp eq ptr %35, null
  br i1 %36, label %54, label %37, !prof !1329

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.access, ptr %35, i64 0, i32 14
  %39 = load i16, ptr %38, align 8
  %40 = and i16 %39, 1024
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %54, label %42, !prof !1330

42:                                               ; preds = %37
  %43 = call fastcc ptr @get_access_replacement(ptr noundef nonnull %35) #24
  store ptr %43, ptr %9, align 8, !tbaa !629
  %44 = getelementptr inbounds %struct.access, ptr %24, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !753
  %46 = getelementptr inbounds %struct.access, ptr %35, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !753
  %48 = call zeroext i8 @useless_type_conversion_p(ptr noundef %45, ptr noundef %47) #23
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %83, !prof !1330

50:                                               ; preds = %42
  %51 = load ptr, ptr %44, align 8, !tbaa !753
  %52 = load ptr, ptr %9, align 8, !tbaa !629
  %53 = call ptr @fold_build1_stat_loc(i32 noundef %22, i32 noundef 118, ptr noundef %51, ptr noundef %52) #23
  store ptr %53, ptr %9, align 8, !tbaa !629
  br label %83

54:                                               ; preds = %37, %29
  %55 = load i32, ptr %6, align 4, !tbaa !633
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59, !prof !1331

57:                                               ; preds = %54
  %58 = call fastcc i32 @handle_unscalarized_data_in_subtree(ptr noundef %1, ptr noundef %7, ptr noundef %4) #24, !range !827
  store i32 %58, ptr %6, align 4, !tbaa !633
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi i32 [ %58, %57 ], [ %55, %54 ]
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %73, !prof !1179

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.access, ptr %24, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !745
  store ptr %64, ptr %9, align 8, !tbaa !629
  %65 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !636
  %67 = load i64, ptr %24, align 8, !tbaa !791
  %68 = getelementptr inbounds %struct.access, ptr %24, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !753
  %70 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %9, ptr noundef %66, i64 noundef %67, ptr noundef %69, i8 noundef zeroext 0) #24
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %62
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2462, ptr noundef nonnull @.str.1) #23
  br label %83

73:                                               ; preds = %59
  %74 = getelementptr inbounds %struct.access, ptr %1, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !745
  store ptr %75, ptr %9, align 8, !tbaa !629
  %76 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !636
  %78 = getelementptr inbounds %struct.access, ptr %24, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !753
  %80 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %9, ptr noundef %77, i64 noundef %32, ptr noundef %79, i8 noundef zeroext 0) #24
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %83, !prof !1179

82:                                               ; preds = %73
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2472, ptr noundef nonnull @.str.1) #23
  br label %83

83:                                               ; preds = %82, %73, %72, %62, %42, %50
  %84 = call fastcc ptr @get_access_replacement(ptr noundef nonnull %24) #24
  %85 = load ptr, ptr %9, align 8, !tbaa !629
  %86 = call ptr @gimple_build_assign_stat(ptr noundef %84, ptr noundef %85) #23
  call void @gsi_insert_after(ptr noundef %5, ptr noundef %86, i32 noundef 0) #23
  call fastcc void @update_stmt(ptr noundef %86) #24
  %87 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 3), align 4, !tbaa !673
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 3), align 4, !tbaa !673
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  br label %100

89:                                               ; preds = %23
  %90 = load i32, ptr %6, align 4, !tbaa !633
  %91 = icmp ne i32 %90, 0
  %92 = and i16 %26, 16
  %93 = icmp eq i16 %92, 0
  %94 = or i1 %93, %91
  br i1 %94, label %100, label %95, !prof !1332

95:                                               ; preds = %89
  %96 = and i16 %26, 64
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call fastcc i32 @handle_unscalarized_data_in_subtree(ptr noundef %1, ptr noundef %7, ptr noundef %4) #24, !range !827
  store i32 %99, ptr %6, align 4, !tbaa !633
  br label %100

100:                                              ; preds = %89, %95, %98, %83
  %101 = getelementptr inbounds %struct.access, ptr %24, i64 0, i32 8
  %102 = load ptr, ptr %101, align 8, !tbaa !793
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104, !prof !1333

104:                                              ; preds = %100
  call fastcc void @load_assign_lhs_subreplacements(ptr noundef nonnull %102, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #24
  br label %105

105:                                              ; preds = %104, %100
  %106 = getelementptr inbounds %struct.access, ptr %24, i64 0, i32 9
  %107 = load ptr, ptr %106, align 8, !tbaa !1204
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %23, !prof !1334, !llvm.loop !1335

109:                                              ; preds = %105
  ret void
}

; Function Attrs: optsize
declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !928 !PGOFuncName !1336 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1337
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_subtree_with_zero(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !928 !PGOFuncName !1339 {
  %4 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @get_access_replacement(ptr noundef nonnull %0) #24
  %10 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !753
  %12 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !629
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
  %21 = load ptr, ptr %20, align 8, !tbaa !629
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %19 ]
  tail call fastcc void @init_subtree_with_zero(ptr noundef nonnull %24, ptr noundef %1, i8 noundef zeroext %2) #24
  %25 = getelementptr inbounds %struct.access, ptr %24, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !629
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !1340

28:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1341 !PGOFuncName !1342 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !665
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !1343

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #24
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !1344

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1665, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #24
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !629
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_seq_alloc() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 !prof !1345 !PGOFuncName !1346 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #24
  store ptr %3, ptr %0, align 8, !tbaa !877
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !881
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !1347

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !900
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #24
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !882
  ret void
}

; Function Attrs: optsize
declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1345 !PGOFuncName !1348 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #24, !range !665
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !1349

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 645, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1350
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #24
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !1345 !PGOFuncName !1351 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1350
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #24
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !1352 !PGOFuncName !1353 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !629
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !1354 !PGOFuncName !1355 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1356

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1357
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
define internal noundef zeroext i8 @delete_base_accesses(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #18 !prof !1359 !PGOFuncName !1360 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = load ptr, ptr %1, align 8, !tbaa !629
  store ptr %5, ptr %4, align 8, !tbaa !629
  call fastcc void @VEC_access_p_heap_free(ptr noundef nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret i8 1
}

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_access_p_heap_free(ptr nocapture noundef %0) unnamed_addr #18 !prof !1018 !PGOFuncName !1361 {
  %2 = load ptr, ptr %0, align 8, !tbaa !629
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1362

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !629
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @late_intra_sra() #0 !prof !1363 !PGOFuncName !1364 {
  store i32 2, ptr @sra_mode, align 4, !tbaa !633
  %1 = tail call fastcc i32 @perform_intra_sra() #24, !range !663
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @ipa_early_sra_gate() #3 !prof !661 !PGOFuncName !1365 {
  %1 = load i32, ptr @flag_ipa_sra, align 4, !tbaa !633
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ipa_early_sra() #0 !prof !661 !PGOFuncName !1366 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !629
  %3 = tail call ptr @cgraph_node(ptr noundef %2) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %4 = tail call fastcc zeroext i8 @ipa_sra_preliminary_function_checks(ptr noundef %3) #24, !range !665
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %70, label %6, !prof !1367

6:                                                ; preds = %0
  tail call fastcc void @sra_initialize() #24
  store i32 0, ptr @sra_mode, align 4, !tbaa !633
  %7 = tail call fastcc zeroext i8 @find_param_candidates() #24, !range !665
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14, !prof !1368

9:                                                ; preds = %6
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %11 = icmp eq ptr %10, null
  br i1 %11, label %68, label %12, !prof !1369

12:                                               ; preds = %9
  %13 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 36, i64 1, ptr nonnull %10)
  br label %68

14:                                               ; preds = %6
  %15 = tail call fastcc zeroext i8 @all_callers_have_enough_arguments_p(ptr noundef %3) #24, !range !665
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %22, !prof !1370

17:                                               ; preds = %14
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %19 = icmp eq ptr %18, null
  br i1 %19, label %68, label %20

20:                                               ; preds = %17
  %21 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 57, i64 1, ptr nonnull %18)
  br label %68

22:                                               ; preds = %14
  %23 = load i32, ptr @func_param_count, align 4, !tbaa !633
  %24 = load ptr, ptr @cfun, align 8, !tbaa !629
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !691
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !1371
  %29 = mul nsw i32 %28, %23
  %30 = sext i32 %29 to i64
  %31 = tail call ptr @xcalloc(i64 noundef %30, i64 noundef 8) #23
  store ptr %31, ptr @bb_dereferences, align 8, !tbaa !629
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %32, ptr @final_bbs, align 8, !tbaa !629
  %33 = tail call fastcc zeroext i8 @scan_function(ptr noundef nonnull @build_access_from_expr, ptr noundef nonnull @build_accesses_from_assign, ptr noundef null, i8 noundef zeroext 1, ptr noundef null) #24
  %34 = load i1, ptr @encountered_apply_args, align 1
  br i1 %34, label %35, label %40, !prof !1370

35:                                               ; preds = %22
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %37 = icmp eq ptr %36, null
  br i1 %37, label %64, label %38

38:                                               ; preds = %35
  %39 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 40, i64 1, ptr nonnull %36)
  br label %64

40:                                               ; preds = %22
  %41 = load i1, ptr @encountered_unchangable_recursive_call, align 1
  br i1 %41, label %42, label %47, !prof !1370

42:                                               ; preds = %40
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45

45:                                               ; preds = %42
  %46 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 61, i64 1, ptr nonnull %43)
  br label %64

47:                                               ; preds = %40
  %48 = tail call fastcc ptr @analyze_all_param_acesses() #24
  store ptr %48, ptr %1, align 8, !tbaa !629
  %49 = icmp eq ptr %48, null
  br i1 %49, label %64, label %50, !prof !1372

50:                                               ; preds = %47
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53, !prof !1373

53:                                               ; preds = %50
  %54 = load ptr, ptr @current_function_decl, align 8, !tbaa !629
  tail call void @ipa_dump_param_adjustments(ptr noundef nonnull %51, ptr noundef nonnull %48, ptr noundef %54) #23
  br label %55

55:                                               ; preds = %53, %50
  tail call fastcc void @modify_function(ptr noundef %3, ptr noundef nonnull %48) #24
  call fastcc void @VEC_ipa_parm_adjustment_t_heap_free(ptr noundef nonnull %1) #24
  %56 = load ptr, ptr @cfun, align 8, !tbaa !629
  %57 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 6), align 4, !tbaa !1374
  tail call void @statistics_counter_event(ptr noundef %56, ptr noundef nonnull @.str.53, i32 noundef %57) #23
  %58 = load ptr, ptr @cfun, align 8, !tbaa !629
  %59 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 7), align 4, !tbaa !1375
  tail call void @statistics_counter_event(ptr noundef %58, ptr noundef nonnull @.str.54, i32 noundef %59) #23
  %60 = load ptr, ptr @cfun, align 8, !tbaa !629
  %61 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 8), align 4, !tbaa !1376
  tail call void @statistics_counter_event(ptr noundef %60, ptr noundef nonnull @.str.55, i32 noundef %61) #23
  %62 = load ptr, ptr @cfun, align 8, !tbaa !629
  %63 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 9), align 4, !tbaa !1377
  tail call void @statistics_counter_event(ptr noundef %62, ptr noundef nonnull @.str.56, i32 noundef %63) #23
  br label %64

64:                                               ; preds = %47, %42, %45, %35, %38, %55
  %65 = phi i32 [ 0, %38 ], [ 0, %35 ], [ 0, %45 ], [ 0, %42 ], [ 2048, %55 ], [ 0, %47 ]
  %66 = load ptr, ptr @final_bbs, align 8, !tbaa !629
  tail call void @bitmap_obstack_free(ptr noundef %66) #23
  store ptr null, ptr @final_bbs, align 8, !tbaa !629
  %67 = load ptr, ptr @bb_dereferences, align 8, !tbaa !629
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
define internal fastcc noundef zeroext i8 @ipa_sra_preliminary_function_checks(ptr noundef %0) unnamed_addr #0 !prof !661 !PGOFuncName !1378 {
  %2 = tail call zeroext i8 @cgraph_node_can_be_local_p(ptr noundef %0) #23
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %9, !prof !1379

4:                                                ; preds = %1
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %6 = icmp eq ptr %5, null
  br i1 %6, label %63, label %7, !prof !1380

7:                                                ; preds = %4
  %8 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 45, i64 1, ptr nonnull %5)
  br label %63

9:                                                ; preds = %1
  %10 = load ptr, ptr @current_function_decl, align 8, !tbaa !629
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 512
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %20, label %15, !prof !1381

15:                                               ; preds = %9
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %17 = icmp eq ptr %16, null
  br i1 %17, label %63, label %18

18:                                               ; preds = %15
  %19 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 30, i64 1, ptr nonnull %16)
  br label %63

20:                                               ; preds = %9
  %21 = load ptr, ptr %0, align 8, !tbaa !1382
  %22 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31, !prof !1381

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %21, i64 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 33554432
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %43, label %31, !prof !1381

31:                                               ; preds = %26, %20
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !1390
  %34 = load ptr, ptr @compiler_params, align 8, !tbaa !629
  %35 = getelementptr inbounds %struct.param_info, ptr %34, i64 3, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !1391
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %40 = icmp eq ptr %39, null
  br i1 %40, label %63, label %41

41:                                               ; preds = %38
  %42 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 41, i64 1, ptr nonnull %39)
  br label %63

43:                                               ; preds = %31, %26
  %44 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !1393
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %52, !prof !1394

47:                                               ; preds = %43
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %49 = icmp eq ptr %48, null
  br i1 %49, label %63, label %50

50:                                               ; preds = %47
  %51 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 50, i64 1, ptr nonnull %48)
  br label %63

52:                                               ; preds = %43
  %53 = load ptr, ptr @cfun, align 8, !tbaa !629
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 20
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 4194304
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58, !prof !1395

58:                                               ; preds = %52
  %59 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61, !prof !1396

61:                                               ; preds = %58
  %62 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 23, i64 1, ptr nonnull %59)
  br label %63

63:                                               ; preds = %52, %58, %61, %47, %50, %38, %41, %15, %18, %4, %7
  %64 = phi i8 [ 0, %7 ], [ 0, %4 ], [ 0, %18 ], [ 0, %15 ], [ 0, %41 ], [ 0, %38 ], [ 0, %50 ], [ 0, %47 ], [ 0, %61 ], [ 0, %58 ], [ 1, %52 ]
  ret i8 %64
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_param_candidates() unnamed_addr #0 !prof !1397 !PGOFuncName !1398 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !629
  %2 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !636
  %4 = icmp eq ptr %3, null
  br i1 %4, label %85, label %5, !prof !1399

5:                                                ; preds = %0, %80
  %6 = phi ptr [ %83, %80 ], [ %3, %0 ]
  %7 = phi i8 [ %81, %80 ], [ 0, %0 ]
  %8 = phi i32 [ %11, %80 ], [ 0, %0 ]
  %9 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !636
  %11 = add nuw nsw i32 %8, 1
  %12 = load i64, ptr %6, align 8
  %13 = and i64 %12, 786432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %80, !prof !1400

15:                                               ; preds = %5
  %16 = tail call fastcc zeroext i8 @is_va_list_type(ptr noundef %10) #24, !range !665
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %80, !prof !1401

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @is_unused_scalar_param(ptr noundef nonnull %6) #24, !range !665
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %80, !prof !1402

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
  ], !prof !1403

24:                                               ; preds = %21, %21
  %25 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !636
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = icmp ne i64 %28, 20
  %30 = and i64 %27, 524288
  %31 = icmp eq i64 %30, 0
  %32 = and i1 %29, %31
  br i1 %32, label %33, label %80, !prof !1404

33:                                               ; preds = %24
  %34 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %6) #23
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %80, label %36, !prof !1405

36:                                               ; preds = %33
  %37 = tail call fastcc zeroext i8 @is_va_list_type(ptr noundef nonnull %26) #24, !range !665
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %80, !prof !1406

39:                                               ; preds = %36
  %40 = tail call fastcc zeroext i8 @ptr_parm_has_direct_uses(ptr noundef nonnull %6) #24, !range !665
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %80, !prof !1407

42:                                               ; preds = %21, %21, %21, %21, %39
  %43 = phi ptr [ %26, %39 ], [ %10, %21 ], [ %10, %21 ], [ %10, %21 ], [ %10, %21 ]
  %44 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !636
  %46 = icmp eq ptr %45, null
  br i1 %46, label %80, label %47, !prof !1408

47:                                               ; preds = %42
  %48 = tail call i32 @host_integerp(ptr noundef nonnull %45, i32 noundef 1) #23
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %80, label %50, !prof !1408

50:                                               ; preds = %47
  %51 = load ptr, ptr %44, align 8, !tbaa !636
  %52 = tail call i64 @tree_low_cst(ptr noundef %51, i32 noundef 1) #23
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %80, label %54, !prof !1408

54:                                               ; preds = %50
  %55 = load i64, ptr %43, align 8
  %56 = trunc i64 %55 to i32
  %57 = and i32 %56, 65535
  %58 = add nsw i32 %57, -15
  %59 = icmp ult i32 %58, 4
  br i1 %59, label %60, label %63, !prof !1409

60:                                               ; preds = %54
  %61 = tail call fastcc zeroext i8 @type_internals_preclude_sra_p(ptr noundef nonnull %43) #24
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %80, !prof !1410

63:                                               ; preds = %54, %60
  %64 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !629
  %65 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !636
  %67 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %64, i32 noundef %66) #23
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %69 = icmp eq ptr %68, null
  br i1 %69, label %80, label %70, !prof !1411

70:                                               ; preds = %63
  %71 = load i32, ptr @dump_flags, align 4, !tbaa !633
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %65, align 4, !tbaa !636
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %68, ptr noundef nonnull @.str.11, i32 noundef %75) #24
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !629
  tail call void @print_generic_expr(ptr noundef %77, ptr noundef nonnull %6, i32 noundef 0) #23
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %79 = tail call i32 @fputc(i32 10, ptr %78)
  br label %80

80:                                               ; preds = %63, %70, %74, %42, %47, %50, %60, %21, %24, %33, %36, %39, %18, %5, %15
  %81 = phi i8 [ %7, %15 ], [ %7, %5 ], [ 1, %18 ], [ %7, %39 ], [ %7, %36 ], [ %7, %33 ], [ %7, %24 ], [ %7, %21 ], [ %7, %60 ], [ %7, %50 ], [ %7, %47 ], [ %7, %42 ], [ 1, %74 ], [ 1, %70 ], [ 1, %63 ]
  %82 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !636
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %5, !prof !1412, !llvm.loop !1413

85:                                               ; preds = %80, %0
  %86 = phi i32 [ 0, %0 ], [ %11, %80 ]
  %87 = phi i8 [ 0, %0 ], [ %81, %80 ]
  store i32 %86, ptr @func_param_count, align 4, !tbaa !633
  ret i8 %87
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @all_callers_have_enough_arguments_p(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !1414 !PGOFuncName !1415 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !629
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %9, !prof !1416

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !629
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9, !prof !1417, !llvm.loop !1418

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !1419
  %13 = tail call fastcc zeroext i8 @callsite_has_enough_arguments_p(ptr noundef %12) #24, !range !665
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %5, !prof !1422

15:                                               ; preds = %9, %5, %1
  %16 = phi i8 [ 1, %1 ], [ 1, %5 ], [ 0, %9 ]
  ret i8 %16
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @analyze_all_param_acesses() unnamed_addr #0 !prof !1414 !PGOFuncName !1423 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = call fastcc i32 @splice_all_param_accesses(ptr noundef nonnull %1) #24
  switch i32 %2, label %5 [
    i32 0, label %74
    i32 4, label %3
  ], !prof !1424

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !629
  tail call fastcc void @analyze_caller_dereference_legality(ptr noundef %4) #24
  tail call fastcc void @analyze_modified_params(ptr noundef %4) #24
  br label %5

5:                                                ; preds = %0, %3
  %6 = load i32, ptr @func_param_count, align 4, !tbaa !633
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %62, !prof !1425

8:                                                ; preds = %5
  %9 = load ptr, ptr %1, align 8
  br label %10

10:                                               ; preds = %8, %51
  %11 = phi i8 [ 0, %8 ], [ %53, %51 ]
  %12 = phi i32 [ 0, %8 ], [ %52, %51 ]
  %13 = phi i32 [ 0, %8 ], [ %54, %51 ]
  %14 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef %9, i32 noundef %13) #24
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16, !prof !1426

16:                                               ; preds = %10
  %17 = tail call fastcc zeroext i8 @no_accesses_p(ptr noundef nonnull %14) #24, !range !665
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %45, !prof !1427

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.access, ptr %14, i64 0, i32 14
  %21 = load i16, ptr %20, align 8
  %22 = and i16 %21, 4096
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %32, label %24, !prof !1428

24:                                               ; preds = %19
  %25 = add nsw i32 %12, 1
  %26 = and i16 %21, 10240
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %29, label %28, !prof !1429

28:                                               ; preds = %24
  tail call fastcc void @VEC_access_p_base_replace(ptr noundef %9, i32 noundef %13) #24
  br label %51

29:                                               ; preds = %24
  %30 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 7), align 4, !tbaa !1375
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 7), align 4, !tbaa !1375
  br label %51

32:                                               ; preds = %19
  %33 = tail call fastcc i32 @decide_one_param_reduction(ptr noundef nonnull %14) #24
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37, !prof !1430

35:                                               ; preds = %32
  tail call fastcc void @VEC_access_p_base_replace(ptr noundef %9, i32 noundef %13) #24
  %36 = add nsw i32 %12, 1
  br label %51

37:                                               ; preds = %32
  %38 = add nsw i32 %33, %12
  %39 = load <2 x i32>, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 8), align 4, !tbaa !633
  %40 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %33, i64 1
  %41 = add nsw <2 x i32> %39, %40
  store <2 x i32> %41, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 8), align 4, !tbaa !633
  br label %51

42:                                               ; preds = %10
  %43 = tail call fastcc zeroext i8 @no_accesses_p(ptr noundef %14) #24, !range !665
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45, !prof !1431

45:                                               ; preds = %16, %42
  %46 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 6), align 4, !tbaa !1374
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr getelementptr inbounds (%struct.anon, ptr @sra_stats, i64 0, i32 6), align 4, !tbaa !1374
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i8 [ 1, %45 ], [ %11, %42 ]
  %50 = add nsw i32 %12, 1
  br label %51

51:                                               ; preds = %35, %37, %29, %28, %48
  %52 = phi i32 [ %50, %48 ], [ %25, %28 ], [ %25, %29 ], [ %36, %35 ], [ %38, %37 ]
  %53 = phi i8 [ %49, %48 ], [ %11, %28 ], [ 1, %29 ], [ %11, %35 ], [ 1, %37 ]
  %54 = add nuw nsw i32 %13, 1
  %55 = load i32, ptr @func_param_count, align 4, !tbaa !633
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %10, label %57, !prof !1432, !llvm.loop !1433

57:                                               ; preds = %51
  %58 = icmp eq i8 %53, 0
  %59 = load ptr, ptr @dump_file, align 8
  %60 = icmp ne ptr %59, null
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %65, label %68, !prof !1434

62:                                               ; preds = %5
  %63 = load ptr, ptr @dump_file, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65, !prof !1435

65:                                               ; preds = %62, %57
  %66 = phi ptr [ %63, %62 ], [ %59, %57 ]
  %67 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 33, i64 1, ptr nonnull %66)
  br label %72

68:                                               ; preds = %57
  br i1 %58, label %72, label %69, !prof !1436

69:                                               ; preds = %68
  %70 = load ptr, ptr %1, align 8, !tbaa !629
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
define internal fastcc void @modify_function(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1437 !PGOFuncName !1438 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !629
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !1439

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !1382
  tail call void @ipa_modify_formal_parameters(ptr noundef %8, ptr noundef %1, ptr noundef nonnull @.str.69) #23
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !629
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !prof !1440, !llvm.loop !1441

12:                                               ; preds = %6, %2
  %13 = load ptr, ptr @current_function_decl, align 8, !tbaa !629
  tail call fastcc void @create_abstract_origin(ptr noundef %13) #24
  %14 = load ptr, ptr @current_function_decl, align 8, !tbaa !629
  tail call void @ipa_modify_formal_parameters(ptr noundef %14, ptr noundef %1, ptr noundef nonnull @.str.69) #23
  %15 = tail call fastcc zeroext i8 @scan_function(ptr noundef nonnull @sra_ipa_modify_expr, ptr noundef nonnull @sra_ipa_modify_assign, ptr noundef nonnull @replace_removed_params_ssa_names, i8 noundef zeroext 0, ptr noundef %1) #24
  tail call fastcc void @sra_ipa_reset_debug_stmts(ptr noundef %1) #24
  tail call fastcc void @convert_callers(ptr noundef %0, ptr noundef %1) #24
  tail call void @cgraph_make_node_local(ptr noundef %0) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ipa_parm_adjustment_t_heap_free(ptr nocapture noundef %0) unnamed_addr #18 !prof !1437 !PGOFuncName !1442 {
  %2 = load ptr, ptr %0, align 8, !tbaa !629
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1443

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !629
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @cgraph_node_can_be_local_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_unused_scalar_param(ptr noundef %0) unnamed_addr #0 !prof !1444 !PGOFuncName !1445 {
  %2 = tail call zeroext i8 @is_gimple_reg(ptr noundef %0) #23
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %12, label %4, !prof !1446

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !629
  %6 = tail call ptr @gimple_default_def(ptr noundef %5, ptr noundef %0) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !1447

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
define internal fastcc noundef zeroext i8 @ptr_parm_has_direct_uses(ptr noundef %0) unnamed_addr #0 !prof !1448 !PGOFuncName !1449 {
  %2 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #25
  %3 = load ptr, ptr @cfun, align 8, !tbaa !629
  %4 = tail call ptr @gimple_default_def(ptr noundef %3, ptr noundef %0) #23
  %5 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %2, ptr noundef %4) #24
  %6 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #24, !range !665
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %117, !prof !1450

8:                                                ; preds = %1, %113
  %9 = phi ptr [ %114, %113 ], [ %5, %1 ]
  %10 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %9) #24, !range !665
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %113, !prof !1451

12:                                               ; preds = %8
  %13 = call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %9) #24, !range !665
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %37, label %15, !prof !1452

15:                                               ; preds = %12
  %16 = call ptr @gimple_get_lhs(ptr noundef %9) #23
  %17 = call fastcc zeroext i8 @handled_component_p(ptr noundef %16) #24, !range !665
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19, !prof !1453

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %22, %19 ], [ %16, %15 ]
  %21 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !636
  %23 = call fastcc zeroext i8 @handled_component_p(ptr noundef %22) #24, !range !665
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %19, !prof !1454, !llvm.loop !1455

25:                                               ; preds = %19, %15
  %26 = phi ptr [ %16, %15 ], [ %22, %19 ]
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -47
  %31 = icmp ult i32 %30, 3
  br i1 %31, label %32, label %37, !prof !1456

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !636
  %35 = icmp eq ptr %34, %4
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %32, %25, %12
  %38 = phi i32 [ 0, %12 ], [ 0, %25 ], [ %36, %32 ]
  %39 = call zeroext i8 @gimple_assign_single_p(ptr noundef %9) #23
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %64, label %41, !prof !1457

41:                                               ; preds = %37
  %42 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %9) #24
  %43 = call fastcc zeroext i8 @handled_component_p(ptr noundef %42) #24, !range !665
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %51, label %45, !prof !1458

45:                                               ; preds = %41, %45
  %46 = phi ptr [ %48, %45 ], [ %42, %41 ]
  %47 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !636
  %49 = call fastcc zeroext i8 @handled_component_p(ptr noundef %48) #24, !range !665
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %45, !prof !1459, !llvm.loop !1460

51:                                               ; preds = %45, %41
  %52 = phi ptr [ %42, %41 ], [ %48, %45 ]
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = and i32 %54, 65535
  %56 = add nsw i32 %55, -47
  %57 = icmp ult i32 %56, 3
  br i1 %57, label %58, label %100, !prof !1461

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.tree_exp, ptr %52, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !636
  %61 = icmp eq ptr %60, %4
  %62 = zext i1 %61 to i32
  %63 = add nuw nsw i32 %38, %62
  br label %100

64:                                               ; preds = %37
  %65 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %9) #24, !range !665
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %100, label %67, !prof !1462

67:                                               ; preds = %64
  %68 = call fastcc i32 @gimple_call_num_args(ptr noundef %9) #24
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %100, label %70, !prof !1463

70:                                               ; preds = %67, %95
  %71 = phi i32 [ %97, %95 ], [ 0, %67 ]
  %72 = phi i32 [ %96, %95 ], [ %38, %67 ]
  %73 = call fastcc ptr @gimple_call_arg(ptr noundef %9, i32 noundef %71) #24
  %74 = call fastcc zeroext i8 @handled_component_p(ptr noundef %73) #24, !range !665
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %82, label %76, !prof !1464

76:                                               ; preds = %70, %76
  %77 = phi ptr [ %79, %76 ], [ %73, %70 ]
  %78 = getelementptr inbounds %struct.tree_exp, ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !636
  %80 = call fastcc zeroext i8 @handled_component_p(ptr noundef %79) #24, !range !665
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %76, !prof !1440, !llvm.loop !1465

82:                                               ; preds = %76, %70
  %83 = phi ptr [ %73, %70 ], [ %79, %76 ]
  %84 = load i64, ptr %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = and i32 %85, 65535
  %87 = add nsw i32 %86, -47
  %88 = icmp ult i32 %87, 3
  br i1 %88, label %89, label %95, !prof !1466

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.tree_exp, ptr %83, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !636
  %92 = icmp eq ptr %91, %4
  %93 = zext i1 %92 to i32
  %94 = add nsw i32 %72, %93
  br label %95

95:                                               ; preds = %89, %82
  %96 = phi i32 [ %72, %82 ], [ %94, %89 ]
  %97 = add nuw i32 %71, 1
  %98 = call fastcc i32 @gimple_call_num_args(ptr noundef %9) #24
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %70, label %100, !prof !1467, !llvm.loop !1468

100:                                              ; preds = %95, %67, %58, %51, %64
  %101 = phi i32 [ %38, %64 ], [ %38, %51 ], [ %63, %58 ], [ %38, %67 ], [ %96, %95 ]
  call fastcc void @first_imm_use_on_stmt(ptr noundef nonnull %2) #24
  %102 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %2) #24, !range !665
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %109, !prof !1469

104:                                              ; preds = %100, %104
  %105 = phi i32 [ %106, %104 ], [ %101, %100 ]
  %106 = add nsw i32 %105, -1
  call fastcc void @next_imm_use_on_stmt(ptr noundef nonnull %2) #24
  %107 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %2) #24, !range !665
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %104, label %109, !prof !1470, !llvm.loop !1471

109:                                              ; preds = %104, %100
  %110 = phi i32 [ %101, %100 ], [ %106, %104 ]
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112, !prof !1472

112:                                              ; preds = %109
  call fastcc void @end_imm_use_stmt_traverse(ptr noundef nonnull %2) #24
  br label %117

113:                                              ; preds = %8, %109
  %114 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %2) #24
  %115 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #24, !range !665
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %8, label %117, !prof !1473, !llvm.loop !1474

117:                                              ; preds = %113, %1, %112
  %118 = phi i8 [ 1, %112 ], [ 0, %1 ], [ 0, %113 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #25
  ret i8 %118
}

; Function Attrs: optsize
declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #0 !prof !1475 !PGOFuncName !1476 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1477
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6, !prof !1479

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !633
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !1480

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
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1481 !PGOFuncName !1482 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !1483
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1477
  store ptr %6, ptr %0, align 8, !tbaa !1485
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #24, !range !665
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14, !prof !1486

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #24
  %11 = load ptr, ptr %0, align 8, !tbaa !1485
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !636
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1487 !PGOFuncName !1488 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1485
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1483
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1489 !PGOFuncName !1490 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !710
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #0 !prof !1489 !PGOFuncName !1491 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #24, !range !665
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11, !prof !1492

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #24, !range !665
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !1493

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
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1494 !PGOFuncName !1495 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !710
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1496 !PGOFuncName !1497 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #24
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #11 !prof !1489 !PGOFuncName !1498 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1485
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1477
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !1499
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #6 !prof !1500 !PGOFuncName !1501 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1485
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #11 !prof !1502 !PGOFuncName !1503 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1499
  store ptr %3, ptr %0, align 8, !tbaa !1485
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #24, !range !665
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !1504

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1477
  store ptr %8, ptr %2, align 8, !tbaa !1499
  br label %9

9:                                                ; preds = %1, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @end_imm_use_stmt_traverse(ptr nocapture noundef %0) unnamed_addr #19 !prof !1505 !PGOFuncName !1506 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 !prof !1507 !PGOFuncName !1508 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1509
  store ptr %4, ptr %0, align 8, !tbaa !1485
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #24, !range !665
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !1510

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !1511
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !1512

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #24
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #24
  %12 = load ptr, ptr %0, align 8, !tbaa !1485
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !636
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1489 !PGOFuncName !1513 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !636
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #24
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #25
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #23
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #24, !range !710
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28, !prof !1514

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #24
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #24
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53, !prof !1253

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #24
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23, !prof !1515

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #24
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #24
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #24
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !prof !1516, !llvm.loop !1517

28:                                               ; preds = %2
  br i1 %8, label %45, label %29, !prof !1518

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #24
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #24
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53, !prof !1519

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #24
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40, !prof !1520

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #24
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #24
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #24
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !prof !1521, !llvm.loop !1522

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
  %56 = load ptr, ptr %55, align 8, !tbaa !1511
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58, !prof !1523

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #24
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !1524 !PGOFuncName !1525 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1526
  %4 = load ptr, ptr %3, align 8, !tbaa !629
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1527 !PGOFuncName !1528 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #24
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #24
  store i8 0, ptr %0, align 8, !tbaa !1529
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !1531

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 918, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #23
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !1531

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !1529
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !1532
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #24
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !1533
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !1534
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #24
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1524 !PGOFuncName !1535 {
  %2 = load i8, ptr %0, align 8, !tbaa !1529
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #19 !prof !1502 !PGOFuncName !1536 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5, !prof !1537

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1477
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9, !prof !1538

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #24
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #24
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !1524 !PGOFuncName !1539 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1540
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !1541

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !1542
  store ptr %7, ptr %2, align 8, !tbaa !1540
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !1544
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !1533
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !1545

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !1532
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !1544
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #24
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !1529
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1546 !PGOFuncName !1547 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6, !prof !1548

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 771, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #24
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !1534
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #24
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #7 !prof !928 !PGOFuncName !1549 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #24, !range !665
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !636
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !1550
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
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #19 !prof !1551 !PGOFuncName !1552 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1553
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !1554

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1477
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !1477
  store ptr %2, ptr %6, align 8, !tbaa !1553
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #19 !prof !1551 !PGOFuncName !1555 {
  store ptr %1, ptr %0, align 8, !tbaa !1553
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1477
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !1477
  store ptr %0, ptr %4, align 8, !tbaa !1553
  store ptr %0, ptr %3, align 8, !tbaa !1477
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1556 !PGOFuncName !1557 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !636
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #20 !prof !1527 !PGOFuncName !1558 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !1529
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1527 !PGOFuncName !1559 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !636
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1560 !PGOFuncName !1561 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #24
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1560 !PGOFuncName !1562 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !636
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !1563

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3103, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1546 !PGOFuncName !1564 {
  %4 = and i32 %2, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !1565

6:                                                ; preds = %3
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.43, i32 noundef 747, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %3, %6, %9
  %11 = and i32 %2, 10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !1565

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !1566
  br label %24

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #24
  %17 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !1566
  %18 = icmp eq ptr %16, null
  br i1 %18, label %24, label %19, !prof !1567

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #24
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %16, align 8, !tbaa !1568
  store ptr %23, ptr %17, align 8, !tbaa !1566
  br label %24

24:                                               ; preds = %13, %22, %19, %15
  %25 = and i32 %2, 5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29, !prof !1518

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %28, align 8, !tbaa !1540
  br label %40

29:                                               ; preds = %24
  %30 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #24
  %31 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %30, ptr %31, align 8, !tbaa !1540
  %32 = icmp ne i32 %4, 0
  %33 = icmp eq ptr %30, null
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %40, label %35, !prof !1570

35:                                               ; preds = %29
  %36 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #24
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !1571

38:                                               ; preds = %35
  %39 = load ptr, ptr %30, align 8, !tbaa !1542
  store ptr %39, ptr %31, align 8, !tbaa !1540
  br label %40

40:                                               ; preds = %27, %38, %35, %29
  store i8 0, ptr %0, align 8, !tbaa !1529
  %41 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !928 !PGOFuncName !1572 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !665
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !636
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !928 !PGOFuncName !1573 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #24, !range !665
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !636
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1546 !PGOFuncName !1574 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !665
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1518

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !636
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1575 !PGOFuncName !1576 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #24, !range !665
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1577

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !636
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1578 !PGOFuncName !1579 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !710
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @splice_all_param_accesses(ptr nocapture noundef %0) unnamed_addr #0 !prof !1414 !PGOFuncName !1580 {
  %2 = alloca i8, align 1
  %3 = load i32, ptr @func_param_count, align 4, !tbaa !633
  %4 = tail call fastcc ptr @VEC_access_p_heap_alloc(i32 noundef %3) #24
  store ptr %4, ptr %0, align 8, !tbaa !629
  %5 = load ptr, ptr @current_function_decl, align 8, !tbaa !629
  %6 = getelementptr inbounds %struct.tree_decl_non_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !636
  %8 = icmp eq ptr %7, null
  br i1 %8, label %78, label %9, !prof !1416

9:                                                ; preds = %1, %71
  %10 = phi ptr [ %74, %71 ], [ %7, %1 ]
  %11 = phi i32 [ %72, %71 ], [ 0, %1 ]
  %12 = tail call fastcc zeroext i8 @is_unused_scalar_param(ptr noundef nonnull %10) #24, !range !665
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14, !prof !1581

14:                                               ; preds = %9
  %15 = load ptr, ptr %0, align 8, !tbaa !629
  tail call fastcc void @VEC_access_p_base_quick_push(ptr noundef %15, ptr noundef nonnull @no_accesses_representant) #24
  %16 = tail call i32 @llvm.umax.i32(i32 %11, i32 1)
  br label %71

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !636
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %38 [
    i16 10, label %22
    i16 12, label %22
  ], !prof !1582

22:                                               ; preds = %17, %17
  %23 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !636
  %25 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %24) #23
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %38, label %27, !prof !1583

27:                                               ; preds = %22
  %28 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !629
  %29 = getelementptr inbounds %struct.tree_decl_minimal, ptr %10, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !636
  %31 = tail call i32 @bitmap_bit_p(ptr noundef %28, i32 noundef %30) #23
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33, !prof !1584

33:                                               ; preds = %27
  %34 = tail call fastcc ptr @unmodified_by_ref_scalar_representative(ptr noundef nonnull %10) #24
  %35 = load ptr, ptr %0, align 8, !tbaa !629
  tail call fastcc void @VEC_access_p_base_quick_push(ptr noundef %35, ptr noundef %34) #24
  %36 = icmp eq ptr %34, null
  %37 = select i1 %36, i32 %11, i32 4, !prof !1585
  br label %71

38:                                               ; preds = %17, %27, %22
  %39 = load ptr, ptr @candidate_bitmap, align 8, !tbaa !629
  %40 = getelementptr inbounds %struct.tree_decl_minimal, ptr %10, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !636
  %42 = tail call i32 @bitmap_bit_p(ptr noundef %39, i32 noundef %41) #23
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %69, label %44, !prof !1586

44:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #25
  store i8 0, ptr %2, align 1, !tbaa !636
  %45 = call fastcc ptr @splice_param_accesses(ptr noundef nonnull %10, ptr noundef nonnull %2) #24
  %46 = load ptr, ptr %0, align 8, !tbaa !629
  tail call fastcc void @VEC_access_p_base_quick_push(ptr noundef %46, ptr noundef %45) #24
  %47 = icmp eq ptr %45, null
  br i1 %47, label %62, label %48, !prof !1587

48:                                               ; preds = %44
  %49 = tail call fastcc zeroext i8 @no_accesses_p(ptr noundef nonnull %45) #24, !range !665
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %65, !prof !1588

51:                                               ; preds = %48
  %52 = load ptr, ptr %18, align 8, !tbaa !636
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i16
  switch i16 %54, label %60 [
    i16 10, label %55
    i16 12, label %55
  ], !prof !1589

55:                                               ; preds = %51, %51
  %56 = load i8, ptr %2, align 1, !tbaa !636
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %67, !prof !1590

58:                                               ; preds = %55
  %59 = tail call i32 @llvm.umax.i32(i32 %11, i32 3)
  br label %67

60:                                               ; preds = %51
  %61 = tail call i32 @llvm.umax.i32(i32 %11, i32 2)
  br label %67

62:                                               ; preds = %44
  %63 = tail call fastcc zeroext i8 @no_accesses_p(ptr noundef %45) #24, !range !665
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %67, label %65, !prof !1591

65:                                               ; preds = %48, %62
  %66 = tail call i32 @llvm.umax.i32(i32 %11, i32 1)
  br label %67

67:                                               ; preds = %55, %65, %62, %60, %58
  %68 = phi i32 [ %66, %65 ], [ %11, %62 ], [ %59, %58 ], [ %61, %60 ], [ 4, %55 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #25
  br label %71

69:                                               ; preds = %38
  %70 = load ptr, ptr %0, align 8, !tbaa !629
  tail call fastcc void @VEC_access_p_base_quick_push(ptr noundef %70, ptr noundef null) #24
  br label %71

71:                                               ; preds = %33, %14, %67, %69
  %72 = phi i32 [ %16, %14 ], [ %68, %67 ], [ %11, %69 ], [ %37, %33 ]
  %73 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !636
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %9, !prof !1592, !llvm.loop !1593

76:                                               ; preds = %71
  %77 = icmp eq i32 %72, 0
  br i1 %77, label %78, label %79, !prof !1594

78:                                               ; preds = %1, %76
  tail call fastcc void @VEC_access_p_heap_free(ptr noundef nonnull %0) #24
  store ptr null, ptr %0, align 8, !tbaa !629
  br label %79

79:                                               ; preds = %76, %78
  %80 = phi i32 [ %72, %76 ], [ 0, %78 ]
  ret i32 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_caller_dereference_legality(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1595 !PGOFuncName !1596 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4, !prof !1597

4:                                                ; preds = %1
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !633
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @bb_dereferences, align 8, !tbaa !629
  tail call fastcc void @dump_dereferences_table(ptr noundef nonnull %2, ptr noundef nonnull @.str.63, ptr noundef %9) #24
  br label %10

10:                                               ; preds = %8, %4, %1
  tail call fastcc void @propagate_dereference_distances() #24
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13, !prof !1597

13:                                               ; preds = %10
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !633
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @bb_dereferences, align 8, !tbaa !629
  tail call fastcc void @dump_dereferences_table(ptr noundef nonnull %11, ptr noundef nonnull @.str.64, ptr noundef %18) #24
  br label %19

19:                                               ; preds = %17, %13, %10
  %20 = load i32, ptr @func_param_count, align 4, !tbaa !633
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %61, !prof !1598

22:                                               ; preds = %19
  %23 = load ptr, ptr @cfun, align 8, !tbaa !629
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr @bb_dereferences, align 8
  br label %26

26:                                               ; preds = %22, %58
  %27 = phi i32 [ 0, %22 ], [ %59, %58 ]
  %28 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef %0, i32 noundef %27) #24
  %29 = load ptr, ptr %24, align 8, !tbaa !691
  %30 = load ptr, ptr %29, align 8, !tbaa !693
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !709
  %33 = mul nsw i32 %32, %20
  %34 = add nsw i32 %33, %27
  %35 = icmp eq ptr %28, null
  br i1 %35, label %58, label %36, !prof !1599

36:                                               ; preds = %26
  %37 = tail call fastcc zeroext i8 @no_accesses_p(ptr noundef nonnull %28) #24, !range !665
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %58, !prof !1600

39:                                               ; preds = %36
  %40 = sext i32 %34 to i64
  %41 = getelementptr inbounds i64, ptr %25, i64 %40
  br label %42

42:                                               ; preds = %39, %54
  %43 = phi ptr [ %56, %54 ], [ %28, %39 ]
  %44 = load i64, ptr %43, align 8, !tbaa !791
  %45 = getelementptr inbounds %struct.access, ptr %43, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !759
  %47 = add nsw i64 %46, %44
  %48 = load i64, ptr %41, align 8, !tbaa !955
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %54, !prof !1601

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.access, ptr %43, i64 0, i32 14
  %52 = load i16, ptr %51, align 8
  %53 = or i16 %52, 8192
  store i16 %53, ptr %51, align 8
  br label %54

54:                                               ; preds = %50, %42
  %55 = getelementptr inbounds %struct.access, ptr %43, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !844
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %42, !prof !1602, !llvm.loop !1603

58:                                               ; preds = %54, %26, %36
  %59 = add nuw nsw i32 %27, 1
  %60 = icmp eq i32 %59, %20
  br i1 %60, label %61, label %26, !prof !1604, !llvm.loop !1605

61:                                               ; preds = %58, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_modified_params(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1595 !PGOFuncName !1606 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = load i32, ptr @func_param_count, align 4, !tbaa !633
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %56, !prof !1598

6:                                                ; preds = %1, %52
  %7 = phi i32 [ %53, %52 ], [ %4, %1 ]
  %8 = phi i32 [ %54, %52 ], [ 0, %1 ]
  %9 = call fastcc ptr @VEC_access_p_base_index(ptr noundef %0, i32 noundef %8) #24
  %10 = icmp eq ptr %9, null
  br i1 %10, label %52, label %11, !prof !1607

11:                                               ; preds = %6, %46
  %12 = phi ptr [ %48, %46 ], [ %9, %6 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #25
  %13 = call fastcc zeroext i8 @no_accesses_p(ptr noundef nonnull %12) #24, !range !665
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %46, !prof !1608

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.access, ptr %12, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !745
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !636
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %46 [
    i16 10, label %22
    i16 12, label %22
  ], !prof !1609

22:                                               ; preds = %15, %15
  %23 = getelementptr inbounds %struct.access, ptr %12, i64 0, i32 14
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, 2048
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %46, !prof !1610

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.access, ptr %12, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !1004
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef %29) #23
  %30 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %30, ptr %2, align 8, !tbaa !629
  br label %31

31:                                               ; preds = %27, %40
  %32 = phi ptr [ %12, %27 ], [ %42, %40 ]
  %33 = getelementptr inbounds %struct.access, ptr %32, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !1005
  %35 = call fastcc ptr @gimple_vuse(ptr noundef %34) #24
  %36 = call i32 @walk_aliased_vdefs(ptr noundef nonnull %3, ptr noundef %35, ptr noundef nonnull @mark_maybe_modified, ptr noundef nonnull %12, ptr noundef nonnull %2) #23
  %37 = load i16, ptr %23, align 8
  %38 = and i16 %37, 2048
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %44, !prof !1611

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.access, ptr %32, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !1204
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %31, !prof !1612, !llvm.loop !1613

44:                                               ; preds = %31, %40
  %45 = load ptr, ptr %2, align 8, !tbaa !629
  call void @bitmap_obstack_free(ptr noundef %45) #23
  br label %46

46:                                               ; preds = %22, %15, %11, %44
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  %47 = getelementptr inbounds %struct.access, ptr %12, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !844
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %11, !prof !1614, !llvm.loop !1615

50:                                               ; preds = %46
  %51 = load i32, ptr @func_param_count, align 4, !tbaa !633
  br label %52

52:                                               ; preds = %50, %6
  %53 = phi i32 [ %51, %50 ], [ %7, %6 ]
  %54 = add nuw nsw i32 %8, 1
  %55 = icmp slt i32 %54, %53
  br i1 %55, label %6, label %56, !prof !1616, !llvm.loop !1617

56:                                               ; preds = %52, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @no_accesses_p(ptr noundef readnone %0) unnamed_addr #12 !prof !1618 !PGOFuncName !1619 {
  %2 = icmp eq ptr %0, @no_accesses_representant
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_access_p_base_replace(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 !prof !1620 !PGOFuncName !1621 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_access_p_base, ptr %0, i64 0, i32 2, i64 %3
  store ptr null, ptr %4, align 8, !tbaa !629
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @decide_one_param_reduction(ptr noundef readonly %0) unnamed_addr #0 !prof !1622 !PGOFuncName !1623 {
  %2 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !745
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !636
  %6 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !636
  %8 = tail call i64 @tree_low_cst(ptr noundef %7, i32 noundef 1) #23
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %12, label %11, !prof !1588

11:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3411, ptr noundef nonnull @.str.1) #23
  br label %12

12:                                               ; preds = %1, %11
  %13 = load ptr, ptr %4, align 8, !tbaa !636
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %23 [
    i16 10, label %16
    i16 12, label %16
  ], !prof !1589

16:                                               ; preds = %12, %12
  %17 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !636
  %19 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !636
  %21 = tail call i64 @tree_low_cst(ptr noundef %20, i32 noundef 1) #23
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %12, %16
  %24 = phi i32 [ %22, %16 ], [ %9, %12 ]
  %25 = phi i1 [ false, %16 ], [ true, %12 ]
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28, !prof !1588

28:                                               ; preds = %23
  %29 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 33, i64 1, ptr nonnull %26)
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !629
  tail call void @print_generic_expr(ptr noundef %30, ptr noundef nonnull %3, i32 noundef 0) #23
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %32 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !636
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.24, i32 noundef %33) #24
  br label %35

35:                                               ; preds = %28, %35
  %36 = phi ptr [ %39, %35 ], [ %0, %28 ]
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !629
  tail call fastcc void @dump_access(ptr noundef %37, ptr noundef nonnull %36) #24
  %38 = getelementptr inbounds %struct.access, ptr %36, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !844
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %35, !llvm.loop !1624

41:                                               ; preds = %35
  %42 = icmp eq ptr %0, null
  br i1 %42, label %69, label %43, !prof !1102

43:                                               ; preds = %23, %41
  br label %44

44:                                               ; preds = %43, %63
  %45 = phi i32 [ %53, %63 ], [ 0, %43 ]
  %46 = phi ptr [ %67, %63 ], [ %0, %43 ]
  %47 = phi i32 [ %65, %63 ], [ 0, %43 ]
  %48 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !745
  %50 = icmp eq ptr %3, %49
  br i1 %50, label %52, label %51, !prof !1625

51:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3439, ptr noundef nonnull @.str.1) #23
  br label %52

52:                                               ; preds = %44, %51
  %53 = add nuw nsw i32 %45, 1
  br i1 %25, label %59, label %54, !prof !1626

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 14
  %56 = load i16, ptr %55, align 8
  %57 = and i16 %56, 10240
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %63, !prof !1627

59:                                               ; preds = %54, %52
  %60 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !759
  %62 = trunc i64 %61 to i32
  br label %63

63:                                               ; preds = %54, %59
  %64 = phi i32 [ %62, %59 ], [ %9, %54 ]
  %65 = add i32 %64, %47
  %66 = getelementptr inbounds %struct.access, ptr %46, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !844
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %44, !prof !1628, !llvm.loop !1629

69:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3449, ptr noundef nonnull @.str.1) #23
  br label %70

70:                                               ; preds = %63, %69
  %71 = phi i32 [ 0, %69 ], [ %53, %63 ]
  %72 = phi i32 [ 0, %69 ], [ %65, %63 ]
  %73 = load ptr, ptr @cfun, align 8, !tbaa !629
  %74 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %73) #23
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %81, !prof !1588

76:                                               ; preds = %70
  %77 = load ptr, ptr @compiler_params, align 8, !tbaa !629
  %78 = getelementptr inbounds %struct.param_info, ptr %77, i64 118, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !1391
  %80 = mul nsw i32 %79, %9
  br label %81

81:                                               ; preds = %70, %76
  %82 = phi i32 [ %80, %76 ], [ %9, %70 ]
  %83 = icmp sge i32 %72, %24
  %84 = icmp sgt i32 %72, %82
  %85 = select i1 %83, i1 true, i1 %84
  br i1 %85, label %91, label %86, !prof !1630

86:                                               ; preds = %81
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89, !prof !1631

89:                                               ; preds = %86
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %87, ptr noundef nonnull @.str.68, i32 noundef %71) #24
  br label %91

91:                                               ; preds = %81, %86, %89
  %92 = phi i32 [ %71, %89 ], [ %71, %86 ], [ 0, %81 ]
  ret i32 %92
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @turn_representatives_into_adjustments(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1437 !PGOFuncName !1632 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %6, label %5, !prof !1373

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3572, ptr noundef nonnull @.str.1) #23
  br label %6

6:                                                ; preds = %2, %5
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !629
  %8 = tail call ptr @ipa_get_vector_of_formal_parms(ptr noundef %7) #23
  store ptr %8, ptr %3, align 8, !tbaa !629
  %9 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_heap_alloc(i32 noundef %1) #24
  %10 = load i32, ptr @func_param_count, align 4, !tbaa !633
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %78, !prof !1439

12:                                               ; preds = %6
  %13 = load ptr, ptr @current_function_decl, align 8, !tbaa !629
  %14 = getelementptr inbounds %struct.tree_decl_non_common, ptr %13, i64 0, i32 2
  br label %15

15:                                               ; preds = %12, %73
  %16 = phi ptr [ %75, %73 ], [ %14, %12 ]
  %17 = phi i32 [ %74, %73 ], [ 0, %12 ]
  %18 = load ptr, ptr %16, align 8, !tbaa !636
  %19 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef %0, i32 noundef %17) #24
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21, !prof !1633

21:                                               ; preds = %15
  %22 = tail call fastcc zeroext i8 @no_accesses_p(ptr noundef nonnull %19) #24, !range !665
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %32, label %24, !prof !1634

24:                                               ; preds = %21, %15
  %25 = phi i8 [ 2, %21 ], [ 1, %15 ]
  %26 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_base_quick_push(ptr noundef %9) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %26, i8 0, i64 56, i1 false)
  %27 = tail call fastcc i32 @get_param_index(ptr noundef %18, ptr noundef %8) #24
  %28 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %26, i64 0, i32 6
  store i32 %27, ptr %28, align 8, !tbaa !1635
  store ptr %18, ptr %26, align 8, !tbaa !1637
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
  %38 = load ptr, ptr %37, align 8, !tbaa !745
  %39 = icmp eq ptr %38, %18
  br i1 %39, label %42, label %40, !prof !1638

40:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3602, ptr noundef nonnull @.str.1) #23
  %41 = load ptr, ptr %37, align 8, !tbaa !745
  br label %42

42:                                               ; preds = %34, %40
  %43 = phi ptr [ %18, %34 ], [ %41, %40 ]
  %44 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %36, i64 0, i32 6
  store i32 %33, ptr %44, align 8, !tbaa !1635
  store ptr %43, ptr %36, align 8, !tbaa !1637
  %45 = getelementptr inbounds %struct.access, ptr %35, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !753
  %47 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %36, i64 0, i32 1
  store ptr %46, ptr %47, align 8, !tbaa !1639
  %48 = load i64, ptr %35, align 8, !tbaa !791
  %49 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %36, i64 0, i32 5
  store i64 %48, ptr %49, align 8, !tbaa !1640
  %50 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !636
  %52 = load i64, ptr %51, align 8
  %53 = trunc i64 %52 to i16
  switch i16 %53, label %64 [
    i16 10, label %54
    i16 12, label %54
  ], !prof !1641

54:                                               ; preds = %42, %42
  %55 = getelementptr inbounds %struct.access, ptr %35, i64 0, i32 14
  %56 = load i16, ptr %55, align 8
  %57 = freeze i16 %56
  %58 = and i16 %57, 2048
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %64, !prof !1642

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
  %71 = load ptr, ptr %70, align 8, !tbaa !844
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %34, !prof !1643, !llvm.loop !1644

73:                                               ; preds = %64, %24
  %74 = add nuw nsw i32 %17, 1
  %75 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  %76 = load i32, ptr @func_param_count, align 4, !tbaa !633
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %15, label %78, !prof !1645, !llvm.loop !1646

78:                                               ; preds = %73, %6
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @unmodified_by_ref_scalar_representative(ptr noundef %0) unnamed_addr #0 !prof !1647 !PGOFuncName !1648 {
  %2 = tail call fastcc ptr @get_base_access_vector(ptr noundef %0) #24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !1649

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3267, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef %2, i32 noundef 0) #24
  %7 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 14
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %34, !prof !1650

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 7
  store ptr %6, ptr %12, align 8, !tbaa !1096
  %13 = tail call fastcc i32 @VEC_access_p_base_length(ptr noundef %2) #24
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %31, !prof !1651

15:                                               ; preds = %11, %22
  %16 = phi i32 [ %27, %22 ], [ 1, %11 ]
  %17 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef %2, i32 noundef %16) #24
  %18 = getelementptr inbounds %struct.access, ptr %17, i64 0, i32 14
  %19 = load i16, ptr %18, align 8
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %34, !prof !1652

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.access, ptr %6, i64 0, i32 9
  %24 = getelementptr inbounds %struct.access, ptr %17, i64 0, i32 7
  store ptr %6, ptr %24, align 8, !tbaa !1096
  %25 = load ptr, ptr %23, align 8, !tbaa !1204
  %26 = getelementptr inbounds %struct.access, ptr %17, i64 0, i32 9
  store ptr %25, ptr %26, align 8, !tbaa !1204
  store ptr %17, ptr %23, align 8, !tbaa !1204
  %27 = add nuw nsw i32 %16, 1
  %28 = icmp eq i32 %27, %13
  br i1 %28, label %29, label %15, !prof !1653, !llvm.loop !1654

29:                                               ; preds = %22
  %30 = load i16, ptr %7, align 8
  br label %31

31:                                               ; preds = %29, %11
  %32 = phi i16 [ %30, %29 ], [ %8, %11 ]
  %33 = or i16 %32, 4112
  store i16 %33, ptr %7, align 8
  br label %34

34:                                               ; preds = %15, %5, %31
  %35 = phi ptr [ %6, %31 ], [ null, %5 ], [ null, %15 ]
  ret ptr %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @splice_param_accesses(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !1655 !PGOFuncName !1656 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  %4 = tail call fastcc ptr @get_base_access_vector(ptr noundef %0) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %96, label %6, !prof !1657

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @VEC_access_p_base_length(ptr noundef nonnull %4) #24
  %8 = tail call fastcc ptr @VEC_access_p_base_address(ptr noundef nonnull %4) #24
  %9 = sext i32 %7 to i64
  tail call void @spec_qsort(ptr noundef nonnull %8, i64 noundef %9, i64 noundef 8, ptr noundef nonnull @compare_access_positions) #23
  %10 = icmp slt i32 %7, 1
  br i1 %10, label %76, label %11, !prof !1658

11:                                               ; preds = %6, %69
  %12 = phi i32 [ %60, %69 ], [ 0, %6 ]
  %13 = phi ptr [ %70, %69 ], [ %3, %6 ]
  %14 = phi i32 [ %74, %69 ], [ 0, %6 ]
  %15 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef nonnull %4, i32 noundef %12) #24
  %16 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 14
  %17 = tail call fastcc zeroext i8 @access_precludes_ipa_sra_p(ptr noundef %15) #24, !range !665
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %96, !prof !1659

19:                                               ; preds = %11
  %20 = load i16, ptr %16, align 8
  %21 = trunc i16 %20 to i8
  %22 = and i8 %21, 1
  %23 = add nsw i32 %12, 1
  %24 = icmp slt i32 %23, %7
  br i1 %24, label %25, label %58, !prof !1660

25:                                               ; preds = %19
  %26 = load i64, ptr %15, align 8, !tbaa !791
  %27 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 1
  %28 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 9
  br label %29

29:                                               ; preds = %25, %47
  %30 = phi i32 [ %23, %25 ], [ %56, %47 ]
  %31 = phi i8 [ %22, %25 ], [ %52, %47 ]
  %32 = tail call fastcc ptr @VEC_access_p_base_index(ptr noundef nonnull %4, i32 noundef %30) #24
  %33 = load i64, ptr %32, align 8, !tbaa !791
  %34 = icmp eq i64 %33, %26
  br i1 %34, label %39, label %35, !prof !1661

35:                                               ; preds = %29
  %36 = load i64, ptr %27, align 8, !tbaa !759
  %37 = add nsw i64 %36, %26
  %38 = icmp sgt i64 %37, %33
  br i1 %38, label %96, label %58, !prof !1662

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.access, ptr %32, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !759
  %42 = load i64, ptr %27, align 8, !tbaa !759
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %96, !prof !1663

44:                                               ; preds = %39
  %45 = tail call fastcc zeroext i8 @access_precludes_ipa_sra_p(ptr noundef nonnull %32) #24, !range !665
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %96, !prof !1664

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.access, ptr %32, i64 0, i32 14
  %49 = load i16, ptr %48, align 8
  %50 = trunc i16 %49 to i8
  %51 = and i8 %50, 1
  %52 = or i8 %51, %31
  %53 = getelementptr inbounds %struct.access, ptr %32, i64 0, i32 7
  store ptr %15, ptr %53, align 8, !tbaa !1096
  %54 = load ptr, ptr %28, align 8, !tbaa !1204
  %55 = getelementptr inbounds %struct.access, ptr %32, i64 0, i32 9
  store ptr %54, ptr %55, align 8, !tbaa !1204
  store ptr %32, ptr %28, align 8, !tbaa !1204
  %56 = add nsw i32 %30, 1
  %57 = icmp eq i32 %56, %7
  br i1 %57, label %58, label %29, !prof !1665

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
  br i1 %67, label %68, label %69, !prof !1666

68:                                               ; preds = %58
  store i8 1, ptr %1, align 1, !tbaa !636
  br label %69

69:                                               ; preds = %58, %68
  store ptr %15, ptr %13, align 8, !tbaa !629
  %70 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 6
  %71 = getelementptr inbounds %struct.access, ptr %15, i64 0, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !759
  %73 = trunc i64 %72 to i32
  %74 = add i32 %14, %73
  %75 = icmp slt i32 %60, %7
  br i1 %75, label %11, label %76, !prof !1667, !llvm.loop !1668

76:                                               ; preds = %69, %6
  %77 = phi i32 [ 0, %6 ], [ %74, %69 ]
  %78 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !636
  %80 = load i64, ptr %79, align 8
  %81 = trunc i64 %80 to i16
  switch i16 %81, label %85 [
    i16 10, label %82
    i16 12, label %82
  ], !prof !1669

82:                                               ; preds = %76, %76
  %83 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !636
  br label %85

85:                                               ; preds = %76, %82
  %86 = phi ptr [ %84, %82 ], [ %79, %76 ]
  %87 = getelementptr inbounds %struct.tree_type, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !636
  %89 = tail call i64 @tree_low_cst(ptr noundef %88, i32 noundef 1) #23
  %90 = trunc i64 %89 to i32
  %91 = icmp slt i32 %77, %90
  br i1 %91, label %92, label %96, !prof !1670

92:                                               ; preds = %85
  br i1 %10, label %93, label %94, !prof !1671

93:                                               ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3395, ptr noundef nonnull @.str.1) #23
  br label %94

94:                                               ; preds = %92, %93
  %95 = load ptr, ptr %3, align 8, !tbaa !629
  br label %96

96:                                               ; preds = %35, %11, %44, %39, %85, %2, %94
  %97 = phi ptr [ %95, %94 ], [ @no_accesses_representant, %2 ], [ null, %85 ], [ null, %39 ], [ null, %44 ], [ null, %11 ], [ null, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  ret ptr %97
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @access_precludes_ipa_sra_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !1672 !PGOFuncName !1673 {
  %2 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 14
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %14, label %6, !prof !1674

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.access, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !1005
  %9 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %8) #24, !range !665
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15, !prof !1675

11:                                               ; preds = %6
  %12 = tail call fastcc i32 @gimple_code(ptr noundef %8) #24, !range !710
  %13 = icmp eq i32 %12, 7
  br i1 %13, label %15, label %14, !prof !1676

14:                                               ; preds = %11, %1
  br label %15

15:                                               ; preds = %6, %11, %14
  %16 = phi i8 [ 0, %14 ], [ 1, %11 ], [ 1, %6 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_dereferences_table(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !928 !PGOFuncName !1677 {
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef %1) #24
  %6 = load ptr, ptr @cfun, align 8, !tbaa !629
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !691
  %9 = load ptr, ptr %8, align 8, !tbaa !629
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !698
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %52, label %13

13:                                               ; preds = %3, %42
  %14 = phi ptr [ %45, %42 ], [ %9, %3 ]
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !709
  %17 = load ptr, ptr @final_bbs, align 8, !tbaa !629
  %18 = tail call i32 @bitmap_bit_p(ptr noundef %17, i32 noundef %16) #23
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.65, i32 noundef %16, i32 noundef %18) #24
  %20 = load ptr, ptr @cfun, align 8, !tbaa !629
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !691
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !698
  %25 = icmp ne ptr %14, %24
  %26 = load i32, ptr @func_param_count, align 4
  %27 = icmp sgt i32 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %42

29:                                               ; preds = %13, %29
  %30 = phi i32 [ %40, %29 ], [ %26, %13 ]
  %31 = phi i32 [ %39, %29 ], [ 0, %13 ]
  %32 = load i32, ptr %15, align 8, !tbaa !709
  %33 = mul nsw i32 %32, %30
  %34 = add nsw i32 %33, %31
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, ptr %2, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !955
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.66, i64 noundef %37) #24
  %39 = add nuw nsw i32 %31, 1
  %40 = load i32, ptr @func_param_count, align 4, !tbaa !633
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %29, label %42, !llvm.loop !1678

42:                                               ; preds = %29, %13
  %43 = tail call i32 @fputc(i32 10, ptr %0)
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !629
  %46 = load ptr, ptr @cfun, align 8, !tbaa !629
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !691
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !698
  %51 = icmp eq ptr %45, %50
  br i1 %51, label %52, label %13, !llvm.loop !1679

52:                                               ; preds = %42, %3
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %54 = tail call i32 @fputc(i32 10, ptr %53)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_dereference_distances() unnamed_addr #0 !prof !1595 !PGOFuncName !1680 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %4 = load ptr, ptr @cfun, align 8, !tbaa !629
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !691
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !1371
  %9 = tail call fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %8) #24
  store ptr %9, ptr %1, align 8, !tbaa !629
  %10 = load ptr, ptr @cfun, align 8, !tbaa !629
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !691
  %13 = load ptr, ptr %12, align 8, !tbaa !693
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %9, ptr noundef %13) #24
  %14 = load ptr, ptr @cfun, align 8, !tbaa !629
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !691
  %17 = load ptr, ptr %16, align 8, !tbaa !693
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !695
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !698
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %28, !prof !1681

23:                                               ; preds = %28, %0
  %24 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %9) #24
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %135, label %26, !prof !1681

26:                                               ; preds = %23
  %27 = getelementptr inbounds i8, ptr %2, i64 8
  br label %39

28:                                               ; preds = %0, %28
  %29 = phi ptr [ %32, %28 ], [ %19, %0 ]
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %9, ptr noundef %29) #24
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !1682
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !695
  %33 = load ptr, ptr @cfun, align 8, !tbaa !629
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !691
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !698
  %38 = icmp eq ptr %32, %37
  br i1 %38, label %23, label %28, !prof !1683, !llvm.loop !1684

39:                                               ; preds = %26, %132
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %40 = tail call fastcc ptr @VEC_basic_block_base_pop(ptr noundef %9) #24
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 2
  store ptr null, ptr %41, align 8, !tbaa !1682
  %42 = load ptr, ptr @final_bbs, align 8, !tbaa !629
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !709
  %45 = tail call i32 @bitmap_bit_p(ptr noundef %42, i32 noundef %44) #23
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %132, !prof !1685, !llvm.loop !1686

47:                                               ; preds = %39
  %48 = load i32, ptr @func_param_count, align 4, !tbaa !633
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %132, !prof !1687

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 1
  %52 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %51) #24
  br label %53

53:                                               ; preds = %50, %104
  %54 = phi i32 [ %48, %50 ], [ %107, %104 ]
  %55 = phi i8 [ 0, %50 ], [ %105, %104 ]
  %56 = phi i32 [ 0, %50 ], [ %106, %104 ]
  %57 = load i32, ptr %43, align 8, !tbaa !709
  %58 = mul nsw i32 %57, %54
  %59 = add nsw i32 %58, %56
  store i32 0, ptr %2, align 8, !tbaa.struct !1688
  store ptr %52, ptr %27, align 8, !tbaa.struct !1689
  %60 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %52, ptr noundef nonnull %3) #24, !range !665
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %104, label %62, !prof !1690

62:                                               ; preds = %53, %88
  %63 = phi i8 [ %90, %88 ], [ 1, %53 ]
  %64 = phi i64 [ %89, %88 ], [ 0, %53 ]
  %65 = load ptr, ptr %3, align 8, !tbaa !629
  %66 = load ptr, ptr %65, align 8, !tbaa !1691
  %67 = load ptr, ptr @cfun, align 8, !tbaa !629
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !691
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !698
  %72 = icmp eq ptr %66, %71
  br i1 %72, label %88, label %73, !prof !1693

73:                                               ; preds = %62
  %74 = load i32, ptr @func_param_count, align 4, !tbaa !633
  %75 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !1694
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 9
  %78 = load i32, ptr %77, align 8, !tbaa !709
  %79 = mul nsw i32 %74, %78
  %80 = add nsw i32 %79, %56
  %81 = icmp eq i8 %63, 0
  %82 = load ptr, ptr @bb_dereferences, align 8, !tbaa !629
  %83 = sext i32 %80 to i64
  %84 = getelementptr inbounds i64, ptr %82, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !955
  br i1 %81, label %86, label %88, !prof !1695

86:                                               ; preds = %73
  %87 = tail call i64 @llvm.smin.i64(i64 %85, i64 %64)
  br label %88

88:                                               ; preds = %73, %86, %62
  %89 = phi i64 [ %64, %62 ], [ %87, %86 ], [ %85, %73 ]
  %90 = phi i8 [ %63, %62 ], [ 0, %86 ], [ 0, %73 ]
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %91 = load i32, ptr %2, align 8
  %92 = load ptr, ptr %27, align 8
  %93 = call fastcc zeroext i8 @ei_cond(i32 %91, ptr %92, ptr noundef nonnull %3) #24, !range !665
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %62, !prof !1696, !llvm.loop !1697

95:                                               ; preds = %88
  %96 = icmp eq i8 %90, 0
  br i1 %96, label %97, label %104, !prof !1102

97:                                               ; preds = %95
  %98 = load ptr, ptr @bb_dereferences, align 8, !tbaa !629
  %99 = sext i32 %59 to i64
  %100 = getelementptr inbounds i64, ptr %98, i64 %99
  %101 = load i64, ptr %100, align 8, !tbaa !955
  %102 = icmp slt i64 %101, %89
  br i1 %102, label %103, label %104, !prof !1698

103:                                              ; preds = %97
  store i64 %89, ptr %100, align 8, !tbaa !955
  br label %104

104:                                              ; preds = %53, %103, %97, %95
  %105 = phi i8 [ %55, %95 ], [ 1, %103 ], [ %55, %97 ], [ %55, %53 ]
  %106 = add nuw nsw i32 %56, 1
  %107 = load i32, ptr @func_param_count, align 4, !tbaa !633
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %53, label %109, !prof !1699, !llvm.loop !1700

109:                                              ; preds = %104
  %110 = icmp eq i8 %105, 0
  br i1 %110, label %132, label %111, !prof !1701

111:                                              ; preds = %109
  %112 = load ptr, ptr @final_bbs, align 8, !tbaa !629
  %113 = load i32, ptr %43, align 8, !tbaa !709
  %114 = tail call i32 @bitmap_bit_p(ptr noundef %112, i32 noundef %113) #23
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %132, !prof !1702

116:                                              ; preds = %111
  %117 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %40) #24
  store i32 0, ptr %2, align 8, !tbaa.struct !1688
  store ptr %117, ptr %27, align 8, !tbaa.struct !1689
  %118 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %117, ptr noundef nonnull %3) #24, !range !665
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %132, label %120, !prof !1703

120:                                              ; preds = %116, %127
  %121 = load ptr, ptr %3, align 8, !tbaa !629
  %122 = load ptr, ptr %121, align 8, !tbaa !1691
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !1682
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %127, !prof !1704

126:                                              ; preds = %120
  store ptr %122, ptr %123, align 8, !tbaa !1682
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %9, ptr noundef nonnull %122) #24
  br label %127

127:                                              ; preds = %120, %126
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %128 = load i32, ptr %2, align 8
  %129 = load ptr, ptr %27, align 8
  %130 = call fastcc zeroext i8 @ei_cond(i32 %128, ptr %129, ptr noundef nonnull %3) #24, !range !665
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %120, !prof !1705, !llvm.loop !1706

132:                                              ; preds = %127, %47, %116, %109, %111, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #25
  %133 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %9) #24
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %39, !prof !1707

135:                                              ; preds = %132, %23
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %1) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1595 !PGOFuncName !1708 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #14 !prof !1709 !PGOFuncName !1710 {
  %3 = load i32, ptr %0, align 8, !tbaa !1711
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1711
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !629
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !1713 !PGOFuncName !1714 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1715

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1711
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_basic_block_base_pop(ptr nocapture noundef %0) unnamed_addr #14 !prof !1709 !PGOFuncName !1716 {
  %2 = load i32, ptr %0, align 8, !tbaa !1711
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !1711
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !629
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #12 !prof !1717 !PGOFuncName !1718 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1719 !PGOFuncName !1720 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #24, !range !665
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !1721

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #24
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !629
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !1722 !PGOFuncName !1723 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !1724

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #24
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #24
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !1725

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !1726
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !1726
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #18 !prof !1595 !PGOFuncName !1728 {
  %2 = load ptr, ptr %0, align 8, !tbaa !629
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1729

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !629
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !1719 !PGOFuncName !1730 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1731

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1722 !PGOFuncName !1732 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1724

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #24
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1733 !PGOFuncName !1734 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1735

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.46, i32 noundef 687, ptr noundef nonnull @.str.1) #23
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !629
  ret ptr %5
}

; Function Attrs: optsize
declare void @ao_ref_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @walk_aliased_vdefs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i8 @mark_maybe_modified(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #14 !prof !1736 !PGOFuncName !1737 {
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
define internal fastcc ptr @VEC_ipa_parm_adjustment_t_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1437 !PGOFuncName !1738 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 56) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @VEC_ipa_parm_adjustment_t_base_quick_push(ptr noundef %0) unnamed_addr #14 !prof !1739 !PGOFuncName !1740 {
  %2 = load i32, ptr %0, align 8, !tbaa !1741
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !1741
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @get_param_index(ptr noundef readnone %0, ptr noundef readonly %1) unnamed_addr #0 !prof !1743 !PGOFuncName !1744 {
  %3 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %1) #24
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %12, !prof !1745

5:                                                ; preds = %2, %9
  %6 = phi i32 [ %10, %9 ], [ 0, %2 ]
  %7 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %6) #24
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %13, label %9, !prof !1746

9:                                                ; preds = %5
  %10 = add nuw nsw i32 %6, 1
  %11 = icmp eq i32 %10, %3
  br i1 %11, label %12, label %5, !prof !1747, !llvm.loop !1748

12:                                               ; preds = %9, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3552, ptr noundef nonnull @.str.1) #23
  br label %13

13:                                               ; preds = %5, %12
  %14 = phi i32 [ 0, %12 ], [ %6, %5 ]
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #18 !prof !1437 !PGOFuncName !1749 {
  %2 = load ptr, ptr %0, align 8, !tbaa !629
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1443

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !629
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !1743 !PGOFuncName !1750 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1751

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1752
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !1754 !PGOFuncName !1755 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !629
  ret ptr %5
}

; Function Attrs: optsize
declare void @ipa_modify_formal_parameters(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_abstract_origin(ptr noundef %0) unnamed_addr #0 !prof !1437 !PGOFuncName !1756 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !636
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %15, !prof !1373

5:                                                ; preds = %1
  %6 = tail call ptr @copy_node_stat(ptr noundef nonnull %0) #23
  %7 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = or i64 %8, 2048
  store i64 %9, ptr %7, align 8
  %10 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %6, i64 0, i32 1
  store ptr null, ptr %10, align 8, !tbaa !636
  tail call void @set_decl_rtl(ptr noundef %6, ptr noundef null) #23
  %11 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !636
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = or i64 %13, 4096
  store i64 %14, ptr %12, align 8
  store ptr %6, ptr %2, align 8, !tbaa !636
  br label %15

15:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @sra_ipa_modify_expr(ptr nocapture noundef %0, ptr nocapture readnone %1, i8 noundef zeroext %2, ptr noundef readonly %3) #0 !prof !1757 !PGOFuncName !1758 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  %8 = tail call fastcc i32 @VEC_ipa_parm_adjustment_t_base_length(ptr noundef %3) #24
  %9 = load ptr, ptr %0, align 8, !tbaa !629
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -42
  %14 = icmp ult i32 %13, 3
  %15 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %16 = select i1 %14, ptr %15, ptr %0, !prof !1759
  %17 = load ptr, ptr %16, align 8, !tbaa !629
  %18 = call ptr @get_ref_base_and_extent(ptr noundef %17, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #23
  %19 = icmp eq ptr %18, null
  %20 = load i64, ptr %6, align 8
  %21 = icmp eq i64 %20, -1
  %22 = select i1 %19, i1 true, i1 %21
  %23 = load i64, ptr %7, align 8
  %24 = icmp eq i64 %23, -1
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %116, label %26, !prof !1760

26:                                               ; preds = %4
  %27 = load i64, ptr %18, align 8
  %28 = trunc i64 %27 to i32
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -47
  %31 = icmp ult i32 %30, 3
  br i1 %31, label %32, label %35, !prof !1761

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !636
  br label %35

35:                                               ; preds = %26, %32
  %36 = phi ptr [ %34, %32 ], [ %18, %26 ]
  %37 = call fastcc ptr @get_ssa_base_param(ptr noundef %36) #24
  %38 = icmp eq ptr %37, null
  br i1 %38, label %116, label %39, !prof !1762

39:                                               ; preds = %35
  %40 = load i64, ptr %37, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 34
  %43 = icmp sgt i32 %8, 0
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %116, !prof !1763

45:                                               ; preds = %39
  %46 = load i64, ptr %5, align 8
  br label %47

47:                                               ; preds = %45, %61
  %48 = phi i32 [ 0, %45 ], [ %62, %61 ]
  %49 = call fastcc ptr @VEC_ipa_parm_adjustment_t_base_index(ptr noundef %3, i32 noundef %48) #24
  %50 = load ptr, ptr %49, align 8, !tbaa !1637
  %51 = icmp eq ptr %50, %37
  br i1 %51, label %52, label %61, !prof !1764

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %49, i64 0, i32 5
  %54 = load i64, ptr %53, align 8, !tbaa !1640
  %55 = icmp ne i64 %54, %46
  %56 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %49, i64 0, i32 7
  %57 = load i8, ptr %56, align 4
  %58 = and i8 %57, 2
  %59 = icmp eq i8 %58, 0
  %60 = select i1 %55, i1 %59, i1 false
  br i1 %60, label %61, label %64, !prof !1765

61:                                               ; preds = %52, %47
  %62 = add nuw nsw i32 %48, 1
  %63 = icmp eq i32 %62, %8
  br i1 %63, label %116, label %47, !prof !1766, !llvm.loop !1767

64:                                               ; preds = %52
  %65 = and i8 %57, 3
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %116, !prof !1768

67:                                               ; preds = %64
  %68 = and i8 %57, 4
  %69 = icmp eq i8 %68, 0
  %70 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %49, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !1769
  br i1 %69, label %81, label %72, !prof !1770

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !636
  %75 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !636
  %77 = call ptr @build1_stat(i32 noundef 47, ptr noundef %76, ptr noundef %71) #23
  %78 = call ptr @gimple_fold_indirect_ref(ptr noundef %77) #23
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80, !prof !1771

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %67, %72, %80
  %82 = phi ptr [ %78, %80 ], [ %77, %72 ], [ %71, %67 ]
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %84 = icmp eq ptr %83, null
  br i1 %84, label %98, label %85, !prof !1772

85:                                               ; preds = %81
  %86 = load i32, ptr @dump_flags, align 4, !tbaa !633
  %87 = and i32 %86, 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %85
  %90 = call i64 @fwrite(ptr nonnull @.str.70, i64 22, i64 1, ptr nonnull %83)
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %92 = load ptr, ptr %16, align 8, !tbaa !629
  call void @print_generic_expr(ptr noundef %91, ptr noundef %92, i32 noundef 0) #23
  %93 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %94 = call i64 @fwrite(ptr nonnull @.str.71, i64 6, i64 1, ptr %93)
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !629
  call void @print_generic_expr(ptr noundef %95, ptr noundef %82, i32 noundef 0) #23
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %97 = call i32 @fputc(i32 10, ptr %96)
  br label %98

98:                                               ; preds = %89, %85, %81
  %99 = icmp eq i8 %2, 0
  %100 = or i1 %99, %14
  br i1 %100, label %101, label %114, !prof !1773

101:                                              ; preds = %98
  %102 = load ptr, ptr %16, align 8, !tbaa !629
  %103 = getelementptr inbounds %struct.tree_common, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !636
  %105 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %49, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !1639
  %107 = call zeroext i8 @useless_type_conversion_p(ptr noundef %104, ptr noundef %106) #23
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = load ptr, ptr %16, align 8, !tbaa !629
  %111 = getelementptr inbounds %struct.tree_common, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !636
  %113 = call ptr @build1_stat(i32 noundef 118, ptr noundef %112, ptr noundef %82) #23
  br label %114

114:                                              ; preds = %98, %101, %109
  %115 = phi ptr [ %113, %109 ], [ %82, %101 ], [ %82, %98 ]
  store ptr %115, ptr %16, align 8, !tbaa !629
  br label %116

116:                                              ; preds = %61, %64, %35, %39, %4, %114
  %117 = phi i8 [ 1, %114 ], [ 0, %4 ], [ 0, %39 ], [ 0, %35 ], [ 0, %64 ], [ 0, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret i8 %117
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sra_ipa_modify_assign(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 !prof !1774 !PGOFuncName !1775 {
  %4 = load ptr, ptr %0, align 8, !tbaa !629
  %5 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %4) #23
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %69, label %7, !prof !1776

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %4) #24
  %9 = tail call fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %4) #24
  %10 = tail call zeroext i8 @sra_ipa_modify_expr(ptr noundef %8, ptr poison, i8 noundef zeroext 1, ptr noundef %2) #24, !range !665
  %11 = tail call zeroext i8 @sra_ipa_modify_expr(ptr noundef %9, ptr poison, i8 noundef zeroext 1, ptr noundef %2) #24, !range !665
  %12 = or i8 %11, %10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %69, label %14, !prof !1777

14:                                               ; preds = %7
  %15 = load ptr, ptr %9, align 8, !tbaa !629
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !636
  %18 = load ptr, ptr %8, align 8, !tbaa !629
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !636
  %21 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %17, ptr noundef %20) #23
  %22 = icmp eq i8 %21, 0
  %23 = load ptr, ptr %8, align 8, !tbaa !629
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  br i1 %22, label %26, label %48, !prof !1778

26:                                               ; preds = %14
  %27 = icmp eq i64 %25, 51
  br i1 %27, label %28, label %42, !prof !813

28:                                               ; preds = %26
  %29 = load ptr, ptr %9, align 8, !tbaa !629
  %30 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !636
  %32 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %31) #23
  %33 = icmp eq i8 %32, 0
  %34 = load ptr, ptr %9, align 8, !tbaa !629
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !636
  br i1 %33, label %40, label %37

37:                                               ; preds = %28
  %38 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !629
  %39 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %36, ptr noundef %38) #23
  store ptr %39, ptr %8, align 8, !tbaa !629
  br label %69

40:                                               ; preds = %28
  %41 = tail call ptr @build_constructor(ptr noundef %36, ptr noundef null) #23
  store ptr %41, ptr %8, align 8, !tbaa !629
  br label %69

42:                                               ; preds = %26
  %43 = tail call fastcc i32 @gimple_location(ptr noundef %4) #24
  %44 = load ptr, ptr %9, align 8, !tbaa !629
  %45 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !636
  %47 = tail call ptr @fold_build1_stat_loc(i32 noundef %43, i32 noundef 118, ptr noundef %46, ptr noundef nonnull %23) #23
  br label %64

48:                                               ; preds = %14
  %49 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %25
  %50 = load i32, ptr %49, align 4, !tbaa !633
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %52, label %69, !prof !1779

52:                                               ; preds = %48
  %53 = load ptr, ptr %9, align 8, !tbaa !629
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !636
  %56 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %55) #23
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %69, label %58, !prof !1780

58:                                               ; preds = %52
  %59 = load ptr, ptr %9, align 8, !tbaa !629
  %60 = tail call zeroext i8 @is_gimple_reg(ptr noundef %59) #23
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %69, !prof !1780

62:                                               ; preds = %58
  %63 = load ptr, ptr %8, align 8, !tbaa !629
  br label %64

64:                                               ; preds = %62, %42
  %65 = phi ptr [ %63, %62 ], [ %47, %42 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67, !prof !1781

67:                                               ; preds = %64
  %68 = tail call ptr @force_gimple_operand_gsi(ptr noundef %1, ptr noundef nonnull %65, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #23
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %1, ptr noundef %68) #23
  br label %69

69:                                               ; preds = %40, %37, %48, %52, %58, %7, %64, %67, %3
  %70 = phi i32 [ 0, %3 ], [ 1, %67 ], [ 1, %64 ], [ 0, %7 ], [ 1, %58 ], [ 1, %52 ], [ 1, %48 ], [ 1, %37 ], [ 1, %40 ]
  ret i32 %70
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @replace_removed_params_ssa_names(ptr noundef %0, ptr noundef %1) #0 !prof !1782 !PGOFuncName !1783 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !710
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %7, !prof !1784

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #24
  br label %18

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #24, !range !665
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10, !prof !1785

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #24
  br label %18

12:                                               ; preds = %7
  %13 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #24, !range !665
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15, !prof !1786

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
  br i1 %22, label %23, label %55, !prof !1787

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !636
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 34
  br i1 %28, label %29, label %55, !prof !1788

29:                                               ; preds = %23
  %30 = tail call fastcc ptr @get_adjustment_for_base(ptr noundef %1, ptr noundef nonnull %25) #24
  %31 = icmp eq ptr %30, null
  br i1 %31, label %55, label %32, !prof !1789

32:                                               ; preds = %29
  %33 = tail call fastcc ptr @get_replaced_param_substitute(ptr noundef nonnull %30) #24
  %34 = tail call fastcc ptr @make_ssa_name(ptr noundef %33, ptr noundef %0) #24
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37, !prof !1790

37:                                               ; preds = %32
  %38 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 41, i64 1, ptr nonnull %35)
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !629
  tail call void @print_generic_expr(ptr noundef %39, ptr noundef nonnull %19, i32 noundef 0) #23
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %41 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 6, i64 1, ptr %40)
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !629
  tail call void @print_generic_expr(ptr noundef %42, ptr noundef %34, i32 noundef 0) #23
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %44 = tail call i32 @fputc(i32 10, ptr %43)
  br label %45

45:                                               ; preds = %37, %32
  %46 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #24, !range !665
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %49, label %48, !prof !1791

48:                                               ; preds = %45
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %34) #24
  br label %54

49:                                               ; preds = %45
  %50 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #24, !range !665
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52, !prof !1792

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
define internal fastcc void @sra_ipa_reset_debug_stmts(ptr noundef readonly %0) unnamed_addr #0 !prof !1437 !PGOFuncName !1793 {
  %2 = alloca %struct.immediate_use_iterator_d, align 8
  %3 = tail call fastcc i32 @VEC_ipa_parm_adjustment_t_base_length(ptr noundef %0) #24
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %37, !prof !1439

5:                                                ; preds = %1, %34
  %6 = phi i32 [ %35, %34 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #25
  %7 = call fastcc ptr @VEC_ipa_parm_adjustment_t_base_index(ptr noundef %0, i32 noundef %6) #24
  %8 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %7, i64 0, i32 7
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %34, !prof !1794

12:                                               ; preds = %5
  %13 = load ptr, ptr %7, align 8, !tbaa !1637
  %14 = call zeroext i8 @is_gimple_reg(ptr noundef %13) #23
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %34, label %16, !prof !1795

16:                                               ; preds = %12
  %17 = load ptr, ptr @cfun, align 8, !tbaa !629
  %18 = load ptr, ptr %7, align 8, !tbaa !1637
  %19 = call ptr @gimple_default_def(ptr noundef %17, ptr noundef %18) #23
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21, !prof !1796

21:                                               ; preds = %16
  %22 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %2, ptr noundef nonnull %19) #24
  %23 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #24, !range !665
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %34, !prof !1671

25:                                               ; preds = %21, %30
  %26 = phi ptr [ %31, %30 ], [ %22, %21 ]
  %27 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %26) #24, !range !665
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3980, ptr noundef nonnull @.str.1) #23
  br label %30

30:                                               ; preds = %25, %29
  call fastcc void @gimple_debug_bind_reset_value(ptr noundef %26) #24
  call fastcc void @update_stmt(ptr noundef %26) #24
  %31 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %2) #24
  %32 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #24, !range !665
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %25, label %34, !prof !1797, !llvm.loop !1798

34:                                               ; preds = %30, %21, %16, %5, %12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #25
  %35 = add nuw nsw i32 %6, 1
  %36 = icmp eq i32 %35, %3
  br i1 %36, label %37, label %5, !prof !1799, !llvm.loop !1800

37:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @convert_callers(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1437 !PGOFuncName !1801 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !629
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !629
  %8 = icmp eq ptr %7, null
  br i1 %8, label %58, label %12, !prof !1802

9:                                                ; preds = %33
  %10 = load ptr, ptr %6, align 8, !tbaa !629
  %11 = icmp eq ptr %10, null
  br i1 %11, label %58, label %39, !prof !1567

12:                                               ; preds = %2, %33
  %13 = phi ptr [ %37, %33 ], [ %7, %2 ]
  %14 = getelementptr inbounds %struct.cgraph_edge, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1803
  %16 = load ptr, ptr %15, align 8, !tbaa !1382
  store ptr %16, ptr @current_function_decl, align 8, !tbaa !629
  %17 = getelementptr inbounds %struct.tree_function_decl, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !636
  tail call void @push_cfun(ptr noundef %18) #23
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21, !prof !1804

21:                                               ; preds = %12
  %22 = load ptr, ptr %14, align 8, !tbaa !1803
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 24
  %24 = load i32, ptr %23, align 8, !tbaa !1805
  %25 = getelementptr inbounds %struct.cgraph_edge, ptr %13, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !1806
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 24
  %28 = load i32, ptr %27, align 8, !tbaa !1805
  %29 = tail call ptr @cgraph_node_name(ptr noundef %22) #23
  %30 = load ptr, ptr %25, align 8, !tbaa !1806
  %31 = tail call ptr @cgraph_node_name(ptr noundef %30) #23
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %19, ptr noundef nonnull @.str.74, i32 noundef %24, i32 noundef %28, ptr noundef %29, ptr noundef %31) #24
  br label %33

33:                                               ; preds = %21, %12
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %13, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !1419
  tail call void @ipa_modify_call_arguments(ptr noundef nonnull %13, ptr noundef %35, ptr noundef %1) #23
  tail call void @pop_cfun() #23
  %36 = getelementptr inbounds %struct.cgraph_edge, ptr %13, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !629
  %38 = icmp eq ptr %37, null
  br i1 %38, label %9, label %12, !prof !1807, !llvm.loop !1808

39:                                               ; preds = %9, %54
  %40 = phi ptr [ %56, %54 ], [ %10, %9 ]
  %41 = getelementptr inbounds %struct.cgraph_edge, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !1803
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 24
  %44 = load i32, ptr %43, align 8, !tbaa !1805
  %45 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %44) #23
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54, !prof !1809

47:                                               ; preds = %39
  %48 = load ptr, ptr %41, align 8, !tbaa !1803
  %49 = tail call i32 @compute_inline_parameters(ptr noundef %48) #23
  %50 = load ptr, ptr %41, align 8, !tbaa !1803
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %50, i64 0, i32 24
  %52 = load i32, ptr %51, align 8, !tbaa !1805
  %53 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %52) #23
  br label %54

54:                                               ; preds = %39, %47
  %55 = getelementptr inbounds %struct.cgraph_edge, ptr %40, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !629
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %39, !prof !1807, !llvm.loop !1810

58:                                               ; preds = %54, %2, %9
  tail call void @bitmap_obstack_free(ptr noundef %5) #23
  store ptr %4, ptr @current_function_decl, align 8, !tbaa !629
  %59 = load i1, ptr @encountered_recursive_call, align 1
  br i1 %59, label %60, label %102, !prof !1811

60:                                               ; preds = %58
  %61 = load ptr, ptr @cfun, align 8, !tbaa !629
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !691
  %64 = load ptr, ptr %63, align 8, !tbaa !693
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !695
  %67 = getelementptr inbounds %struct.control_flow_graph, ptr %63, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !698
  %69 = icmp eq ptr %66, %68
  br i1 %69, label %102, label %70, !prof !1812

70:                                               ; preds = %60, %93
  %71 = phi ptr [ %95, %93 ], [ %66, %60 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %71) #24
  %72 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !665
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %93, !prof !1813

74:                                               ; preds = %70, %90
  %75 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24
  %76 = tail call fastcc i32 @gimple_code(ptr noundef %75) #24, !range !710
  %77 = icmp eq i32 %76, 8
  br i1 %77, label %78, label %90, !prof !1814

78:                                               ; preds = %74
  %79 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %75) #24
  %80 = icmp eq ptr %79, null
  br i1 %80, label %90, label %81, !prof !1815

81:                                               ; preds = %78
  %82 = tail call ptr @cgraph_get_node(ptr noundef nonnull %79) #23
  %83 = icmp eq ptr %82, %0
  br i1 %83, label %84, label %90, !prof !1816

84:                                               ; preds = %81
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !629
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87, !prof !1817

87:                                               ; preds = %84
  %88 = tail call i64 @fwrite(ptr nonnull @.str.75, i64 24, i64 1, ptr nonnull %85)
  br label %89

89:                                               ; preds = %87, %84
  tail call void @ipa_modify_call_arguments(ptr noundef null, ptr noundef %75, ptr noundef %1) #23
  br label %90

90:                                               ; preds = %78, %81, %89, %74
  call fastcc void @gsi_next(ptr noundef nonnull %3) #24
  %91 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !665
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %74, label %93, !prof !1818, !llvm.loop !1819

93:                                               ; preds = %90, %70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !695
  %96 = load ptr, ptr @cfun, align 8, !tbaa !629
  %97 = getelementptr inbounds %struct.function, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !691
  %99 = getelementptr inbounds %struct.control_flow_graph, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !698
  %101 = icmp eq ptr %95, %100
  br i1 %101, label %102, label %70, !prof !1820, !llvm.loop !1821

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
define internal fastcc i32 @VEC_ipa_parm_adjustment_t_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !1822 !PGOFuncName !1823 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1824

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1741
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_ipa_parm_adjustment_t_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #12 !prof !1825 !PGOFuncName !1826 {
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
define internal fastcc ptr @get_adjustment_for_base(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #13 !prof !1827 !PGOFuncName !1828 {
  %3 = tail call fastcc i32 @VEC_ipa_parm_adjustment_t_base_length(ptr noundef %0) #24
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18, !prof !1829

5:                                                ; preds = %2, %15
  %6 = phi i32 [ %16, %15 ], [ 0, %2 ]
  %7 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_base_index(ptr noundef %0, i32 noundef %6) #24
  %8 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %7, i64 0, i32 7
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15, !prof !1830

12:                                               ; preds = %5
  %13 = load ptr, ptr %7, align 8, !tbaa !1637
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %18, label %15, !prof !1831

15:                                               ; preds = %5, %12
  %16 = add nuw nsw i32 %6, 1
  %17 = icmp eq i32 %16, %3
  br i1 %17, label %18, label %5, !prof !1832, !llvm.loop !1833

18:                                               ; preds = %15, %12, %2
  %19 = phi ptr [ null, %2 ], [ %7, %12 ], [ null, %15 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_replaced_param_substitute(ptr nocapture noundef %0) unnamed_addr #0 !prof !1834 !PGOFuncName !1835 {
  %2 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1836
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %42, !prof !1837

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !1637
  %7 = tail call fastcc ptr @make_fancy_name(ptr noundef %6) #24
  %8 = load ptr, ptr %0, align 8, !tbaa !1637
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !636
  %11 = tail call ptr @create_tmp_var(ptr noundef %10, ptr noundef nonnull @.str.73) #23
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !636
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -13
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %19, label %23, !prof !1838

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = or i64 %21, 134217728
  store i64 %22, ptr %20, align 8
  br label %23

23:                                               ; preds = %5, %19
  %24 = tail call ptr @get_identifier(ptr noundef %7) #23
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %11, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !636
  %26 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 1), align 8, !tbaa !851
  %27 = ptrtoint ptr %7 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  store i64 %29, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 5), align 8, !tbaa !853
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %38, !prof !1839

31:                                               ; preds = %23
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 4), align 8, !tbaa !855
  %33 = ptrtoint ptr %32 to i64
  %34 = sub i64 %33, %28
  %35 = icmp slt i64 %29, %34
  br i1 %35, label %36, label %38, !prof !1839

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, ptr %26, i64 %29
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 2), align 8, !tbaa !856
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @name_obstack, i64 0, i32 3), align 8, !tbaa !857
  br label %40

38:                                               ; preds = %31, %23
  %39 = getelementptr inbounds i8, ptr %26, i64 %29
  tail call void @obstack_free(ptr noundef nonnull @name_obstack, ptr noundef %39) #23
  br label %40

40:                                               ; preds = %38, %36
  tail call fastcc void @get_var_ann(ptr noundef nonnull %11) #24
  %41 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %11) #23
  store ptr %11, ptr %2, align 8, !tbaa !1836
  br label %42

42:                                               ; preds = %1, %40
  %43 = phi ptr [ %11, %40 ], [ %3, %1 ]
  ret ptr %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1834 !PGOFuncName !1840 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !629
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #23
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1841 !PGOFuncName !1842 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #24
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4, !prof !813

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10, !prof !812

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !636
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_phi_set_result(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #20 !prof !1843 !PGOFuncName !1844 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !636
  ret void
}

; Function Attrs: optsize
declare void @replace_uses_by(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) unnamed_addr #0 !prof !928 !PGOFuncName !1845 {
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!626}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!36 = !{ptr @build_ref_for_offset, ptr @unshare_expr, i64 5939}
!37 = !{ptr @build_ref_for_offset, ptr @fold_build1_stat_loc, i64 2613}
!38 = !{ptr @build_ref_for_offset, ptr @build_ref_for_offset_1, i64 10230}
!39 = !{ptr @build_ref_for_offset_1, ptr @types_compatible_p, i64 16448}
!40 = !{ptr @build_ref_for_offset_1, ptr @int_bit_position, i64 71159}
!41 = !{ptr @build_ref_for_offset_1, ptr @fancy_abort, i64 1}
!42 = !{ptr @build_ref_for_offset_1, ptr @host_integerp, i64 71932}
!43 = !{ptr @build_ref_for_offset_1, ptr @tree_low_cst, i64 71930}
!44 = !{ptr @build_ref_for_offset_1, ptr @build3_stat, i64 13920}
!45 = !{ptr @build_ref_for_offset_1, ptr @build_ref_for_offset_1, i64 20275}
!46 = !{ptr @build_ref_for_offset_1, ptr @build_int_cst, i64 195}
!47 = !{ptr @build_ref_for_offset_1, ptr @integer_zerop, i64 195}
!48 = !{ptr @build_ref_for_offset_1, ptr @int_const_binop, i64 1}
!49 = !{ptr @build_ref_for_offset_1, ptr @build4_stat, i64 195}
!50 = !{ptr @early_intra_sra, ptr @perform_intra_sra, i64 8964}
!51 = !{ptr @perform_intra_sra, ptr @sra_initialize, i64 15616}
!52 = !{ptr @perform_intra_sra, ptr @find_var_candidates, i64 15616}
!53 = !{ptr @perform_intra_sra, ptr @scan_function, i64 1383}
!54 = !{ptr @perform_intra_sra, ptr @analyze_all_variable_accesses, i64 849}
!55 = !{ptr @perform_intra_sra, ptr @initialize_parameter_reductions, i64 533}
!56 = !{ptr @perform_intra_sra, ptr @statistics_counter_event, i64 3198}
!57 = !{ptr @perform_intra_sra, ptr @sra_deinitialize, i64 15616}
!58 = !{ptr @sra_initialize, ptr @bitmap_obstack_alloc_stat, i64 57222}
!59 = !{ptr @sra_initialize, ptr @_obstack_begin, i64 19074}
!60 = !{ptr @sra_initialize, ptr @create_alloc_pool, i64 38148}
!61 = !{ptr @sra_initialize, ptr @pointer_map_create, i64 19074}
!62 = !{ptr @find_var_candidates, ptr @first_referenced_var, i64 15616}
!63 = !{ptr @find_var_candidates, ptr @end_referenced_vars_p, i64 651212}
!64 = !{ptr @find_var_candidates, ptr @needs_to_live_in_memory, i64 19398}
!65 = !{ptr @find_var_candidates, ptr @host_integerp, i64 1837}
!66 = !{ptr @find_var_candidates, ptr @tree_low_cst, i64 1836}
!67 = !{ptr @find_var_candidates, ptr @type_internals_preclude_sra_p, i64 1835}
!68 = !{ptr @find_var_candidates, ptr @is_va_list_type, i64 1397}
!69 = !{ptr @find_var_candidates, ptr @bitmap_set_bit, i64 1833}
!70 = !{ptr @find_var_candidates, ptr @next_referenced_var, i64 635596}
!71 = !{ptr @scan_function, ptr @gsi_start_phis, i64 32791}
!72 = !{ptr @scan_function, ptr @gsi_end_p, i64 791971}
!73 = !{ptr @scan_function, ptr @gsi_stmt, i64 578844}
!74 = !{ptr @scan_function, ptr @gsi_next, i64 578650}
!75 = !{ptr @scan_function, ptr @gsi_start_bb, i64 180336}
!76 = !{ptr @scan_function, ptr @stmt_can_throw_external, i64 147330}
!77 = !{ptr @scan_function, ptr @bitmap_set_bit, i64 12921}
!78 = !{ptr @scan_function, ptr @gimple_code, i64 571472}
!79 = !{ptr @scan_function, ptr @gimple_call_num_args, i64 197350}
!80 = !{ptr @scan_function, ptr @gimple_return_retval_ptr, i64 3370}
!81 = !{ptr @scan_function, ptr @gimple_call_arg_ptr, i64 137951}
!82 = !{ptr @scan_function, ptr @gimple_call_fndecl, i64 12508}
!83 = !{ptr @scan_function, ptr @gimple_call_flags, i64 12508}
!84 = !{ptr @scan_function, ptr @cgraph_get_node, i64 24794}
!85 = !{ptr @scan_function, ptr @callsite_has_enough_arguments_p, i64 160}
!86 = !{ptr @scan_function, ptr @gimple_call_lhs, i64 59399}
!87 = !{ptr @scan_function, ptr @gimple_call_lhs_ptr, i64 37626}
!88 = !{ptr @scan_function, ptr @disqualify_ops_if_throwing_stmt, i64 24350}
!89 = !{ptr @scan_function, ptr @walk_stmt_load_store_addr_ops, i64 1}
!90 = !{ptr @scan_function, ptr @gimple_asm_ninputs, i64 21}
!91 = !{ptr @scan_function, ptr @gimple_asm_noutputs, i64 21}
!92 = !{ptr @scan_function, ptr @gimple_asm_input_op, i64 20}
!93 = !{ptr @scan_function, ptr @gimple_asm_output_op, i64 20}
!94 = !{ptr @scan_function, ptr @update_stmt, i64 10801}
!95 = !{ptr @scan_function, ptr @maybe_clean_eh_stmt, i64 10801}
!96 = !{ptr @scan_function, ptr @gimple_purge_dead_eh_edges, i64 4692}
!97 = !{ptr @build_access_from_expr, ptr @gsi_stmt, i64 113524}
!98 = !{ptr @build_access_from_expr, ptr @build_access_from_expr_1, i64 113524}
!99 = !{ptr @build_access_from_expr, ptr @bitmap_set_bit, i64 277}
!100 = !{ptr @build_accesses_from_assign, ptr @gimple_assign_single_p, i64 238626}
!101 = !{ptr @build_accesses_from_assign, ptr @gimple_assign_lhs_ptr, i64 168844}
!102 = !{ptr @build_accesses_from_assign, ptr @gimple_assign_rhs1_ptr, i64 168844}
!103 = !{ptr @build_accesses_from_assign, ptr @disqualify_ops_if_throwing_stmt, i64 168844}
!104 = !{ptr @build_accesses_from_assign, ptr @build_access_from_expr_1, i64 337686}
!105 = !{ptr @build_accesses_from_assign, ptr @gimple_has_volatile_ops, i64 168842}
!106 = !{ptr @build_accesses_from_assign, ptr @is_gimple_reg_type, i64 14543}
!107 = !{ptr @build_accesses_from_assign, ptr @bitmap_set_bit, i64 766}
!108 = !{ptr @build_accesses_from_assign, ptr @useless_type_conversion_p, i64 488}
!109 = !{ptr @build_accesses_from_assign, ptr @pool_alloc, i64 487}
!110 = !{ptr @build_accesses_from_assign, ptr @add_link_to_rhs, i64 487}
!111 = !{ptr @analyze_all_variable_accesses, ptr @bitmap_obstack_alloc_stat, i64 849}
!112 = !{ptr @analyze_all_variable_accesses, ptr @optimize_function_for_speed_p, i64 849}
!113 = !{ptr @analyze_all_variable_accesses, ptr @bmp_iter_set_init, i64 2547}
!114 = !{ptr @analyze_all_variable_accesses, ptr @bmp_iter_set, i64 7999}
!115 = !{ptr @analyze_all_variable_accesses, ptr @bitmap_bit_p, i64 2458}
!116 = !{ptr @analyze_all_variable_accesses, ptr @referenced_var_lookup, i64 4202}
!117 = !{ptr @analyze_all_variable_accesses, ptr @tree_low_cst, i64 549}
!118 = !{ptr @analyze_all_variable_accesses, ptr @type_consists_of_records_p, i64 546}
!119 = !{ptr @analyze_all_variable_accesses, ptr @completely_scalarize_record, i64 503}
!120 = !{ptr @analyze_all_variable_accesses, ptr @bmp_iter_next, i64 5452}
!121 = !{ptr @analyze_all_variable_accesses, ptr @bitmap_copy, i64 1698}
!122 = !{ptr @analyze_all_variable_accesses, ptr @sort_and_splice_var_accesses, i64 1837}
!123 = !{ptr @analyze_all_variable_accesses, ptr @build_access_trees, i64 1777}
!124 = !{ptr @analyze_all_variable_accesses, ptr @disqualify_candidate, i64 551}
!125 = !{ptr @analyze_all_variable_accesses, ptr @propagate_all_subaccesses, i64 849}
!126 = !{ptr @analyze_all_variable_accesses, ptr @bitmap_obstack_free, i64 849}
!127 = !{ptr @analyze_all_variable_accesses, ptr @get_first_repr_for_decl, i64 1778}
!128 = !{ptr @analyze_all_variable_accesses, ptr @analyze_access_trees, i64 1778}
!129 = !{ptr @analyze_all_variable_accesses, ptr @statistics_counter_event, i64 533}
!130 = !{ptr @sra_modify_expr, ptr @get_access_for_expr, i64 42267}
!131 = !{ptr @sra_modify_expr, ptr @get_access_replacement, i64 21}
!132 = !{ptr @sra_modify_expr, ptr @useless_type_conversion_p, i64 21}
!133 = !{ptr @sra_modify_expr, ptr @build_ref_for_offset, i64 20}
!134 = !{ptr @sra_modify_expr, ptr @fancy_abort, i64 1}
!135 = !{ptr @sra_modify_expr, ptr @gimple_build_assign_stat, i64 20}
!136 = !{ptr @sra_modify_expr, ptr @gsi_insert_after, i64 1}
!137 = !{ptr @sra_modify_expr, ptr @force_gimple_operand_gsi, i64 1}
!138 = !{ptr @sra_modify_expr, ptr @gsi_insert_before, i64 19}
!139 = !{ptr @sra_modify_expr, ptr @host_integerp, i64 2}
!140 = !{ptr @sra_modify_expr, ptr @generate_subtree_copies, i64 124}
!141 = !{ptr @sra_modify_assign, ptr @gimple_location, i64 80263}
!142 = !{ptr @sra_modify_assign, ptr @gimple_assign_single_p, i64 80263}
!143 = !{ptr @sra_modify_assign, ptr @gimple_assign_lhs, i64 58117}
!144 = !{ptr @sra_modify_assign, ptr @gimple_assign_rhs1, i64 64105}
!145 = !{ptr @sra_modify_assign, ptr @sra_modify_constructor_assign, i64 1}
!146 = !{ptr @sra_modify_assign, ptr @gimple_assign_rhs1_ptr, i64 987}
!147 = !{ptr @sra_modify_assign, ptr @sra_modify_expr, i64 1974}
!148 = !{ptr @sra_modify_assign, ptr @gimple_assign_lhs_ptr, i64 987}
!149 = !{ptr @sra_modify_assign, ptr @get_access_for_expr, i64 114258}
!150 = !{ptr @sra_modify_assign, ptr @get_access_replacement, i64 5979}
!151 = !{ptr @sra_modify_assign, ptr @gimple_assign_set_lhs, i64 2451}
!152 = !{ptr @sra_modify_assign, ptr @useless_type_conversion_p, i64 5752}
!153 = !{ptr @sra_modify_assign, ptr @access_has_children_p, i64 24776}
!154 = !{ptr @sra_modify_assign, ptr @build_ref_for_offset, i64 69}
!155 = !{ptr @sra_modify_assign, ptr @fold_build1_stat_loc, i64 1}
!156 = !{ptr @sra_modify_assign, ptr @is_gimple_reg_type, i64 1}
!157 = !{ptr @sra_modify_assign, ptr @gimple_has_volatile_ops, i64 6178}
!158 = !{ptr @sra_modify_assign, ptr @contains_view_convert_expr_p, i64 12353}
!159 = !{ptr @sra_modify_assign, ptr @ref_expr_for_all_replacements_p, i64 620}
!160 = !{ptr @sra_modify_assign, ptr @generate_subtree_copies, i64 285}
!161 = !{ptr @sra_modify_assign, ptr @handle_unscalarized_data_in_subtree, i64 81}
!162 = !{ptr @sra_modify_assign, ptr @load_assign_lhs_subreplacements, i64 169}
!163 = !{ptr @sra_modify_assign, ptr @gsi_stmt, i64 3792}
!164 = !{ptr @sra_modify_assign, ptr @gsi_next, i64 1}
!165 = !{ptr @sra_modify_assign, ptr @unlink_stmt_vdef, i64 190}
!166 = !{ptr @sra_modify_assign, ptr @gsi_remove, i64 190}
!167 = !{ptr @sra_modify_assign, ptr @fancy_abort, i64 2}
!168 = !{ptr @sra_modify_assign, ptr @force_gimple_operand_gsi, i64 1}
!169 = !{ptr @sra_modify_assign, ptr @gimple_assign_set_rhs_from_tree, i64 3602}
!170 = !{ptr @initialize_parameter_reductions, ptr @bitmap_bit_p, i64 1122}
!171 = !{ptr @initialize_parameter_reductions, ptr @get_base_access_vector, i64 42}
!172 = !{ptr @initialize_parameter_reductions, ptr @gimple_seq_alloc, i64 32}
!173 = !{ptr @initialize_parameter_reductions, ptr @gsi_start, i64 32}
!174 = !{ptr @initialize_parameter_reductions, ptr @VEC_access_p_base_index, i64 41}
!175 = !{ptr @initialize_parameter_reductions, ptr @generate_subtree_copies, i64 57}
!176 = !{ptr @initialize_parameter_reductions, ptr @single_succ_edge, i64 34}
!177 = !{ptr @initialize_parameter_reductions, ptr @gsi_insert_seq_on_edge_immediate, i64 34}
!178 = !{ptr @sra_deinitialize, ptr @bitmap_obstack_free, i64 57222}
!179 = !{ptr @sra_deinitialize, ptr @free_alloc_pool, i64 38148}
!180 = !{ptr @sra_deinitialize, ptr @obstack_free, i64 19074}
!181 = !{ptr @sra_deinitialize, ptr @pointer_map_traverse, i64 19074}
!182 = !{ptr @sra_deinitialize, ptr @pointer_map_destroy, i64 19074}
!183 = !{ptr @first_referenced_var, ptr @gimple_referenced_vars, i64 15616}
!184 = !{ptr @first_referenced_var, ptr @first_htab_element, i64 15616}
!185 = !{ptr @end_referenced_vars_p, ptr @end_htab_p, i64 651252}
!186 = !{ptr @type_internals_preclude_sra_p, ptr @host_integerp, i64 353047}
!187 = !{ptr @type_internals_preclude_sra_p, ptr @type_internals_preclude_sra_p, i64 12184}
!188 = !{ptr @next_referenced_var, ptr @next_htab_element, i64 635636}
!189 = !{ptr @first_htab_element, ptr @htab_size, i64 15616}
!190 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 180965}
!191 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 180965}
!192 = !{ptr @gimple_return_retval_ptr, ptr @gimple_op_ptr, i64 3370}
!193 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 211080}
!194 = !{ptr @gimple_call_arg_ptr, ptr @gimple_op_ptr, i64 137992}
!195 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 12666}
!196 = !{ptr @callsite_has_enough_arguments_p, ptr @gimple_call_num_args, i64 4664}
!197 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 67912}
!198 = !{ptr @gimple_call_lhs_ptr, ptr @gimple_op_ptr, i64 37637}
!199 = !{ptr @disqualify_ops_if_throwing_stmt, ptr @stmt_can_throw_internal, i64 114257}
!200 = !{ptr @disqualify_ops_if_throwing_stmt, ptr @stmt_ends_bb_p, i64 114256}
!201 = !{ptr @disqualify_ops_if_throwing_stmt, ptr @disqualify_base_of_expr, i64 3}
!202 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 12752}
!203 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 12751}
!204 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 12751}
!205 = !{ptr @gimple_op_ptr, ptr @gimple_has_ops, i64 615585}
!206 = !{ptr @gimple_op_ptr, ptr @gimple_ops, i64 615584}
!207 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 936895}
!208 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 905012}
!209 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!210 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 905012}
!211 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 905012}
!212 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 12666}
!213 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 286956}
!214 = !{ptr @gimple_op, ptr @gimple_ops, i64 286955}
!215 = !{ptr @disqualify_candidate, ptr @bitmap_clear_bit, i64 683}
!216 = !{ptr @build_access_from_expr_1, ptr @contains_view_convert_expr_p, i64 451212}
!217 = !{ptr @build_access_from_expr_1, ptr @disqualify_base_of_expr, i64 1}
!218 = !{ptr @build_access_from_expr_1, ptr @create_access, i64 152140}
!219 = !{ptr @contains_view_convert_expr_p, ptr @handled_component_p, i64 705154}
!220 = !{ptr @create_access, ptr @get_ref_base_and_extent, i64 152136}
!221 = !{ptr @create_access, ptr @get_ssa_base_param, i64 53444}
!222 = !{ptr @create_access, ptr @bitmap_bit_p, i64 65344}
!223 = !{ptr @create_access, ptr @disqualify_candidate, i64 138}
!224 = !{ptr @create_access, ptr @mark_parm_dereference, i64 10104}
!225 = !{ptr @create_access, ptr @create_access_1, i64 20515}
!226 = !{ptr @mark_parm_dereference, ptr @gimple_bb, i64 10109}
!227 = !{ptr @mark_parm_dereference, ptr @bitmap_bit_p, i64 10109}
!228 = !{ptr @mark_parm_dereference, ptr @fancy_abort, i64 1}
!229 = !{ptr @create_access_1, ptr @pool_alloc, i64 21512}
!230 = !{ptr @create_access_1, ptr @pointer_map_contains, i64 21512}
!231 = !{ptr @create_access_1, ptr @VEC_access_p_heap_alloc, i64 3209}
!232 = !{ptr @create_access_1, ptr @VEC_access_p_heap_safe_push, i64 21512}
!233 = !{ptr @create_access_1, ptr @pointer_map_insert, i64 21512}
!234 = !{ptr @VEC_access_p_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 4485}
!235 = !{ptr @VEC_access_p_heap_safe_push, ptr @VEC_access_p_heap_reserve, i64 21512}
!236 = !{ptr @VEC_access_p_heap_safe_push, ptr @VEC_access_p_base_quick_push, i64 21512}
!237 = !{ptr @VEC_access_p_heap_reserve, ptr @VEC_access_p_base_space, i64 21512}
!238 = !{ptr @VEC_access_p_heap_reserve, ptr @vec_heap_p_reserve, i64 149}
!239 = !{ptr @gimple_assign_lhs_ptr, ptr @gimple_op_ptr, i64 218293}
!240 = !{ptr @gimple_assign_rhs1_ptr, ptr @gimple_op_ptr, i64 218293}
!241 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 175021}
!242 = !{ptr @add_link_to_rhs, ptr @fancy_abort, i64 2}
!243 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 196334}
!244 = !{ptr @type_consists_of_records_p, ptr @is_gimple_reg_type, i64 1346}
!245 = !{ptr @type_consists_of_records_p, ptr @type_consists_of_records_p, i64 139}
!246 = !{ptr @type_consists_of_records_p, ptr @tree_low_cst, i64 1301}
!247 = !{ptr @completely_scalarize_record, ptr @int_bit_position, i64 1081}
!248 = !{ptr @completely_scalarize_record, ptr @is_gimple_reg_type, i64 1081}
!249 = !{ptr @completely_scalarize_record, ptr @tree_low_cst, i64 990}
!250 = !{ptr @completely_scalarize_record, ptr @build_ref_for_offset, i64 990}
!251 = !{ptr @completely_scalarize_record, ptr @fancy_abort, i64 1}
!252 = !{ptr @completely_scalarize_record, ptr @create_access_1, i64 990}
!253 = !{ptr @completely_scalarize_record, ptr @completely_scalarize_record, i64 92}
!254 = !{ptr @sort_and_splice_var_accesses, ptr @get_base_access_vector, i64 1838}
!255 = !{ptr @sort_and_splice_var_accesses, ptr @VEC_access_p_base_length, i64 1778}
!256 = !{ptr @sort_and_splice_var_accesses, ptr @VEC_access_p_base_address, i64 1778}
!257 = !{ptr @sort_and_splice_var_accesses, ptr @spec_qsort, i64 1778}
!258 = !{ptr @sort_and_splice_var_accesses, ptr @VEC_access_p_base_index, i64 16448}
!259 = !{ptr @sort_and_splice_var_accesses, ptr @is_gimple_reg_type, i64 4660}
!260 = !{ptr @sort_and_splice_var_accesses, ptr @fancy_abort, i64 4}
!261 = !{ptr @sort_and_splice_var_accesses, ptr @relink_to_new_repr, i64 7798}
!262 = !{ptr @sort_and_splice_var_accesses, ptr @add_access_to_work_queue, i64 440}
!263 = !{ptr @build_access_trees, ptr @build_access_subtree, i64 2317}
!264 = !{ptr @propagate_all_subaccesses, ptr @pop_access_from_work_queue, i64 440}
!265 = !{ptr @propagate_all_subaccesses, ptr @fancy_abort, i64 1}
!266 = !{ptr @propagate_all_subaccesses, ptr @bitmap_bit_p, i64 491}
!267 = !{ptr @propagate_all_subaccesses, ptr @propagate_subaccesses_across_link, i64 490}
!268 = !{ptr @propagate_all_subaccesses, ptr @add_access_to_work_queue, i64 2}
!269 = !{ptr @get_first_repr_for_decl, ptr @get_base_access_vector, i64 8570}
!270 = !{ptr @get_first_repr_for_decl, ptr @VEC_access_p_base_index, i64 8569}
!271 = !{ptr @analyze_access_trees, ptr @analyze_access_subtree, i64 2317}
!272 = !{ptr @get_base_access_vector, ptr @pointer_map_contains, i64 11821}
!273 = !{ptr @compare_access_positions, ptr @is_gimple_reg_type, i64 2391}
!274 = !{ptr @relink_to_new_repr, ptr @fancy_abort, i64 4}
!275 = !{ptr @add_access_to_work_queue, ptr @fancy_abort, i64 1}
!276 = !{ptr @build_access_subtree, ptr @build_access_subtree, i64 1435}
!277 = !{ptr @propagate_subaccesses_across_link, ptr @is_gimple_reg_type, i64 617}
!278 = !{ptr @propagate_subaccesses_across_link, ptr @build_ref_for_offset, i64 122}
!279 = !{ptr @propagate_subaccesses_across_link, ptr @child_would_conflict_in_lacc, i64 556}
!280 = !{ptr @propagate_subaccesses_across_link, ptr @propagate_subaccesses_across_link, i64 115}
!281 = !{ptr @propagate_subaccesses_across_link, ptr @create_artificial_child_access, i64 116}
!282 = !{ptr @create_artificial_child_access, ptr @fancy_abort, i64 1}
!283 = !{ptr @create_artificial_child_access, ptr @build_ref_for_offset, i64 118}
!284 = !{ptr @create_artificial_child_access, ptr @pool_alloc, i64 117}
!285 = !{ptr @analyze_access_subtree, ptr @is_gimple_reg_type, i64 4302}
!286 = !{ptr @analyze_access_subtree, ptr @expr_with_var_bounded_array_refs_p, i64 3354}
!287 = !{ptr @analyze_access_subtree, ptr @analyze_access_subtree, i64 1986}
!288 = !{ptr @analyze_access_subtree, ptr @build_ref_for_offset, i64 2429}
!289 = !{ptr @expr_with_var_bounded_array_refs_p, ptr @handled_component_p, i64 6456}
!290 = !{ptr @expr_with_var_bounded_array_refs_p, ptr @array_ref_low_bound, i64 640}
!291 = !{ptr @expr_with_var_bounded_array_refs_p, ptr @host_integerp, i64 640}
!292 = !{ptr @get_access_for_expr, ptr @get_ref_base_and_extent, i64 156539}
!293 = !{ptr @get_access_for_expr, ptr @bitmap_bit_p, i64 21823}
!294 = !{ptr @get_access_for_expr, ptr @get_var_base_offset_size_access, i64 6792}
!295 = !{ptr @get_access_replacement, ptr @fancy_abort, i64 1}
!296 = !{ptr @get_access_replacement, ptr @create_access_replacement, i64 2431}
!297 = !{ptr @generate_subtree_copies, ptr @get_access_replacement, i64 802}
!298 = !{ptr @generate_subtree_copies, ptr @build_ref_for_offset, i64 802}
!299 = !{ptr @generate_subtree_copies, ptr @fancy_abort, i64 1}
!300 = !{ptr @generate_subtree_copies, ptr @force_gimple_operand_gsi, i64 2}
!301 = !{ptr @generate_subtree_copies, ptr @gimple_build_assign_stat, i64 802}
!302 = !{ptr @generate_subtree_copies, ptr @gsi_insert_after, i64 413}
!303 = !{ptr @generate_subtree_copies, ptr @gsi_insert_before, i64 390}
!304 = !{ptr @generate_subtree_copies, ptr @update_stmt, i64 802}
!305 = !{ptr @generate_subtree_copies, ptr @generate_subtree_copies, i64 14}
!306 = !{ptr @get_var_base_offset_size_access, ptr @get_first_repr_for_decl, i64 6791}
!307 = !{ptr @get_var_base_offset_size_access, ptr @find_access_in_subtree, i64 6737}
!308 = !{ptr @create_access_replacement, ptr @create_tmp_var, i64 2431}
!309 = !{ptr @create_access_replacement, ptr @get_var_ann, i64 2431}
!310 = !{ptr @create_access_replacement, ptr @add_referenced_var, i64 2431}
!311 = !{ptr @create_access_replacement, ptr @mark_sym_for_renaming, i64 2431}
!312 = !{ptr @create_access_replacement, ptr @make_fancy_name, i64 1744}
!313 = !{ptr @create_access_replacement, ptr @get_identifier, i64 1744}
!314 = !{ptr @create_access_replacement, ptr @obstack_free, i64 2}
!315 = !{ptr @create_access_replacement, ptr @decl_debug_expr_insert, i64 1744}
!316 = !{ptr @create_access_replacement, ptr @fwrite, i64 1}
!317 = !{ptr @create_access_replacement, ptr @print_generic_expr, i64 2}
!318 = !{ptr @create_access_replacement, ptr @fprintf, i64 1}
!319 = !{ptr @create_access_replacement, ptr @fputc, i64 1}
!320 = !{ptr @get_var_ann, ptr @create_var_ann, i64 2444}
!321 = !{ptr @make_fancy_name, ptr @make_fancy_name_1, i64 1760}
!322 = !{ptr @make_fancy_name, ptr @_obstack_newchunk, i64 1}
!323 = !{ptr @make_fancy_name_1, ptr @make_fancy_decl_name, i64 3021}
!324 = !{ptr @make_fancy_name_1, ptr @make_fancy_name_1, i64 1832}
!325 = !{ptr @make_fancy_name_1, ptr @_obstack_newchunk, i64 3}
!326 = !{ptr @make_fancy_name_1, ptr @sprintf, i64 567}
!327 = !{ptr @make_fancy_name_1, ptr @strlen, i64 567}
!328 = !{ptr @make_fancy_name_1, ptr @fancy_abort, i64 3}
!329 = !{ptr @make_fancy_decl_name, ptr @_obstack_newchunk, i64 1}
!330 = !{ptr @make_fancy_decl_name, ptr @sprintf, i64 1}
!331 = !{ptr @make_fancy_decl_name, ptr @strlen, i64 1}
!332 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 119130}
!333 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 80455}
!334 = !{ptr @gimple_assign_set_lhs, ptr @gimple_set_op, i64 2464}
!335 = !{ptr @ref_expr_for_all_replacements_p, ptr @build_ref_for_offset, i64 1739}
!336 = !{ptr @ref_expr_for_all_replacements_p, ptr @ref_expr_for_all_replacements_p, i64 621}
!337 = !{ptr @handle_unscalarized_data_in_subtree, ptr @generate_subtree_copies, i64 84}
!338 = !{ptr @load_assign_lhs_subreplacements, ptr @find_access_in_subtree, i64 422}
!339 = !{ptr @load_assign_lhs_subreplacements, ptr @get_access_replacement, i64 837}
!340 = !{ptr @load_assign_lhs_subreplacements, ptr @useless_type_conversion_p, i64 415}
!341 = !{ptr @load_assign_lhs_subreplacements, ptr @fold_build1_stat_loc, i64 1}
!342 = !{ptr @load_assign_lhs_subreplacements, ptr @handle_unscalarized_data_in_subtree, i64 3}
!343 = !{ptr @load_assign_lhs_subreplacements, ptr @build_ref_for_offset, i64 7}
!344 = !{ptr @load_assign_lhs_subreplacements, ptr @fancy_abort, i64 1}
!345 = !{ptr @load_assign_lhs_subreplacements, ptr @gimple_build_assign_stat, i64 422}
!346 = !{ptr @load_assign_lhs_subreplacements, ptr @gsi_insert_after, i64 422}
!347 = !{ptr @load_assign_lhs_subreplacements, ptr @update_stmt, i64 422}
!348 = !{ptr @load_assign_lhs_subreplacements, ptr @load_assign_lhs_subreplacements, i64 1}
!349 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 2471}
!350 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 2470}
!351 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!352 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 2471}
!353 = !{ptr @gsi_start, ptr @gimple_seq_first, i64 33}
!354 = !{ptr @gsi_start, ptr @gimple_bb, i64 1}
!355 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 33}
!356 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!357 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 33}
!358 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 33}
!359 = !{ptr @delete_base_accesses, ptr @VEC_access_p_heap_free, i64 3208}
!360 = !{ptr @VEC_access_p_heap_free, ptr @free, i64 4484}
!361 = !{ptr @late_intra_sra, ptr @perform_intra_sra, i64 6652}
!362 = !{ptr @ipa_early_sra, ptr @cgraph_node, i64 8964}
!363 = !{ptr @ipa_early_sra, ptr @ipa_sra_preliminary_function_checks, i64 8964}
!364 = !{ptr @ipa_early_sra, ptr @sra_initialize, i64 3458}
!365 = !{ptr @ipa_early_sra, ptr @find_param_candidates, i64 3458}
!366 = !{ptr @ipa_early_sra, ptr @fwrite, i64 4}
!367 = !{ptr @ipa_early_sra, ptr @all_callers_have_enough_arguments_p, i64 1277}
!368 = !{ptr @ipa_early_sra, ptr @xcalloc, i64 1276}
!369 = !{ptr @ipa_early_sra, ptr @bitmap_obstack_alloc_stat, i64 1276}
!370 = !{ptr @ipa_early_sra, ptr @scan_function, i64 1276}
!371 = !{ptr @ipa_early_sra, ptr @analyze_all_param_acesses, i64 1274}
!372 = !{ptr @ipa_early_sra, ptr @ipa_dump_param_adjustments, i64 1}
!373 = !{ptr @ipa_early_sra, ptr @modify_function, i64 711}
!374 = !{ptr @ipa_early_sra, ptr @VEC_ipa_parm_adjustment_t_heap_free, i64 711}
!375 = !{ptr @ipa_early_sra, ptr @statistics_counter_event, i64 2844}
!376 = !{ptr @ipa_early_sra, ptr @bitmap_obstack_free, i64 1276}
!377 = !{ptr @ipa_early_sra, ptr @free, i64 1276}
!378 = !{ptr @ipa_early_sra, ptr @sra_deinitialize, i64 3458}
!379 = !{ptr @ipa_sra_preliminary_function_checks, ptr @cgraph_node_can_be_local_p, i64 8964}
!380 = !{ptr @ipa_sra_preliminary_function_checks, ptr @fwrite, i64 5}
!381 = !{ptr @find_param_candidates, ptr @is_va_list_type, i64 12466}
!382 = !{ptr @find_param_candidates, ptr @is_unused_scalar_param, i64 7115}
!383 = !{ptr @find_param_candidates, ptr @is_gimple_reg, i64 5329}
!384 = !{ptr @find_param_candidates, ptr @ptr_parm_has_direct_uses, i64 5322}
!385 = !{ptr @find_param_candidates, ptr @host_integerp, i64 1506}
!386 = !{ptr @find_param_candidates, ptr @tree_low_cst, i64 1505}
!387 = !{ptr @find_param_candidates, ptr @type_internals_preclude_sra_p, i64 1242}
!388 = !{ptr @find_param_candidates, ptr @bitmap_set_bit, i64 1503}
!389 = !{ptr @all_callers_have_enough_arguments_p, ptr @callsite_has_enough_arguments_p, i64 4500}
!390 = !{ptr @analyze_all_param_acesses, ptr @splice_all_param_accesses, i64 1277}
!391 = !{ptr @analyze_all_param_acesses, ptr @analyze_caller_dereference_legality, i64 764}
!392 = !{ptr @analyze_all_param_acesses, ptr @analyze_modified_params, i64 764}
!393 = !{ptr @analyze_all_param_acesses, ptr @VEC_access_p_base_index, i64 2061}
!394 = !{ptr @analyze_all_param_acesses, ptr @no_accesses_p, i64 2061}
!395 = !{ptr @analyze_all_param_acesses, ptr @VEC_access_p_base_replace, i64 261}
!396 = !{ptr @analyze_all_param_acesses, ptr @decide_one_param_reduction, i64 955}
!397 = !{ptr @analyze_all_param_acesses, ptr @fwrite, i64 1}
!398 = !{ptr @analyze_all_param_acesses, ptr @turn_representatives_into_adjustments, i64 712}
!399 = !{ptr @analyze_all_param_acesses, ptr @VEC_access_p_heap_free, i64 916}
!400 = !{ptr @modify_function, ptr @ipa_modify_formal_parameters, i64 714}
!401 = !{ptr @modify_function, ptr @create_abstract_origin, i64 713}
!402 = !{ptr @modify_function, ptr @scan_function, i64 713}
!403 = !{ptr @modify_function, ptr @sra_ipa_reset_debug_stmts, i64 713}
!404 = !{ptr @modify_function, ptr @convert_callers, i64 713}
!405 = !{ptr @modify_function, ptr @cgraph_make_node_local, i64 713}
!406 = !{ptr @VEC_ipa_parm_adjustment_t_heap_free, ptr @free, i64 712}
!407 = !{ptr @is_unused_scalar_param, ptr @is_gimple_reg, i64 10142}
!408 = !{ptr @is_unused_scalar_param, ptr @gimple_default_def, i64 10036}
!409 = !{ptr @is_unused_scalar_param, ptr @has_zero_uses, i64 9789}
!410 = !{ptr @ptr_parm_has_direct_uses, ptr @gimple_default_def, i64 5329}
!411 = !{ptr @ptr_parm_has_direct_uses, ptr @first_imm_use_stmt, i64 5329}
!412 = !{ptr @ptr_parm_has_direct_uses, ptr @end_imm_use_stmt_p, i64 22068}
!413 = !{ptr @ptr_parm_has_direct_uses, ptr @is_gimple_debug, i64 20830}
!414 = !{ptr @ptr_parm_has_direct_uses, ptr @gimple_has_lhs, i64 20829}
!415 = !{ptr @ptr_parm_has_direct_uses, ptr @gimple_get_lhs, i64 18795}
!416 = !{ptr @ptr_parm_has_direct_uses, ptr @handled_component_p, i64 81030}
!417 = !{ptr @ptr_parm_has_direct_uses, ptr @gimple_assign_single_p, i64 20829}
!418 = !{ptr @ptr_parm_has_direct_uses, ptr @gimple_assign_rhs1, i64 17265}
!419 = !{ptr @ptr_parm_has_direct_uses, ptr @is_gimple_call, i64 3564}
!420 = !{ptr @ptr_parm_has_direct_uses, ptr @gimple_call_num_args, i64 9509}
!421 = !{ptr @ptr_parm_has_direct_uses, ptr @gimple_call_arg, i64 7170}
!422 = !{ptr @ptr_parm_has_direct_uses, ptr @first_imm_use_on_stmt, i64 20829}
!423 = !{ptr @ptr_parm_has_direct_uses, ptr @end_imm_use_on_stmt_p, i64 41885}
!424 = !{ptr @ptr_parm_has_direct_uses, ptr @next_imm_use_on_stmt, i64 21056}
!425 = !{ptr @ptr_parm_has_direct_uses, ptr @end_imm_use_stmt_traverse, i64 4092}
!426 = !{ptr @ptr_parm_has_direct_uses, ptr @next_imm_use_stmt, i64 16739}
!427 = !{ptr @has_zero_uses, ptr @has_zero_uses_1, i64 1}
!428 = !{ptr @first_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 6288}
!429 = !{ptr @first_imm_use_stmt, ptr @link_use_stmts_after, i64 5328}
!430 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 19729}
!431 = !{ptr @gimple_has_lhs, ptr @is_gimple_assign, i64 19729}
!432 = !{ptr @gimple_has_lhs, ptr @is_gimple_call, i64 3113}
!433 = !{ptr @gimple_has_lhs, ptr @gimple_call_lhs, i64 2215}
!434 = !{ptr @is_gimple_call, ptr @gimple_code, i64 13428}
!435 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 6793}
!436 = !{ptr @next_imm_use_on_stmt, ptr @end_imm_use_on_stmt_p, i64 19944}
!437 = !{ptr @end_imm_use_stmt_traverse, ptr @delink_imm_use, i64 3875}
!438 = !{ptr @next_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 15854}
!439 = !{ptr @next_imm_use_stmt, ptr @delink_imm_use, i64 1454}
!440 = !{ptr @next_imm_use_stmt, ptr @link_use_stmts_after, i64 14399}
!441 = !{ptr @link_use_stmts_after, ptr @get_use_from_ptr, i64 46793}
!442 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 19729}
!443 = !{ptr @link_use_stmts_after, ptr @gimple_code, i64 19729}
!444 = !{ptr @link_use_stmts_after, ptr @op_iter_init_phiuse, i64 599}
!445 = !{ptr @link_use_stmts_after, ptr @op_iter_done, i64 46791}
!446 = !{ptr @link_use_stmts_after, ptr @move_use_after_head, i64 19941}
!447 = !{ptr @link_use_stmts_after, ptr @op_iter_next_use, i64 27063}
!448 = !{ptr @link_use_stmts_after, ptr @op_iter_init_use, i64 19129}
!449 = !{ptr @link_use_stmts_after, ptr @gimple_vuse_op, i64 1}
!450 = !{ptr @link_use_stmts_after, ptr @delink_imm_use, i64 14400}
!451 = !{ptr @link_use_stmts_after, ptr @link_imm_use_to_list, i64 19729}
!452 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 598}
!453 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 598}
!454 = !{ptr @op_iter_init_phiuse, ptr @fancy_abort, i64 1}
!455 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 598}
!456 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 597}
!457 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 597}
!458 = !{ptr @move_use_after_head, ptr @delink_imm_use, i64 133}
!459 = !{ptr @move_use_after_head, ptr @link_imm_use_to_list, i64 133}
!460 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 1910}
!461 = !{ptr @op_iter_init_use, ptr @fancy_abort, i64 2}
!462 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 19131}
!463 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 19131}
!464 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 1909}
!465 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!466 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 1}
!467 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 1}
!468 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 19130}
!469 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 19129}
!470 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 19131}
!471 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 21313}
!472 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 87052}
!473 = !{ptr @splice_all_param_accesses, ptr @VEC_access_p_heap_alloc, i64 1277}
!474 = !{ptr @splice_all_param_accesses, ptr @is_unused_scalar_param, i64 3022}
!475 = !{ptr @splice_all_param_accesses, ptr @VEC_access_p_base_quick_push, i64 3022}
!476 = !{ptr @splice_all_param_accesses, ptr @is_gimple_reg_type, i64 2366}
!477 = !{ptr @splice_all_param_accesses, ptr @bitmap_bit_p, i64 3117}
!478 = !{ptr @splice_all_param_accesses, ptr @unmodified_by_ref_scalar_representative, i64 264}
!479 = !{ptr @splice_all_param_accesses, ptr @splice_param_accesses, i64 1107}
!480 = !{ptr @splice_all_param_accesses, ptr @no_accesses_p, i64 1108}
!481 = !{ptr @splice_all_param_accesses, ptr @VEC_access_p_heap_free, i64 361}
!482 = !{ptr @analyze_caller_dereference_legality, ptr @propagate_dereference_distances, i64 765}
!483 = !{ptr @analyze_caller_dereference_legality, ptr @VEC_access_p_base_index, i64 1697}
!484 = !{ptr @analyze_caller_dereference_legality, ptr @no_accesses_p, i64 933}
!485 = !{ptr @analyze_modified_params, ptr @VEC_access_p_base_index, i64 1697}
!486 = !{ptr @analyze_modified_params, ptr @no_accesses_p, i64 1912}
!487 = !{ptr @analyze_modified_params, ptr @ao_ref_init, i64 1659}
!488 = !{ptr @analyze_modified_params, ptr @bitmap_obstack_alloc_stat, i64 1659}
!489 = !{ptr @analyze_modified_params, ptr @gimple_vuse, i64 2679}
!490 = !{ptr @analyze_modified_params, ptr @walk_aliased_vdefs, i64 2679}
!491 = !{ptr @analyze_modified_params, ptr @bitmap_obstack_free, i64 1659}
!492 = !{ptr @decide_one_param_reduction, ptr @tree_low_cst, i64 1896}
!493 = !{ptr @decide_one_param_reduction, ptr @fancy_abort, i64 3}
!494 = !{ptr @decide_one_param_reduction, ptr @fwrite, i64 1}
!495 = !{ptr @decide_one_param_reduction, ptr @print_generic_expr, i64 1}
!496 = !{ptr @decide_one_param_reduction, ptr @fprintf, i64 2}
!497 = !{ptr @decide_one_param_reduction, ptr @dump_access, i64 32}
!498 = !{ptr @decide_one_param_reduction, ptr @optimize_function_for_size_p, i64 958}
!499 = !{ptr @turn_representatives_into_adjustments, ptr @fancy_abort, i64 2}
!500 = !{ptr @turn_representatives_into_adjustments, ptr @ipa_get_vector_of_formal_parms, i64 713}
!501 = !{ptr @turn_representatives_into_adjustments, ptr @VEC_ipa_parm_adjustment_t_heap_alloc, i64 713}
!502 = !{ptr @turn_representatives_into_adjustments, ptr @VEC_access_p_base_index, i64 1630}
!503 = !{ptr @turn_representatives_into_adjustments, ptr @no_accesses_p, i64 837}
!504 = !{ptr @turn_representatives_into_adjustments, ptr @VEC_ipa_parm_adjustment_t_base_quick_push, i64 1906}
!505 = !{ptr @turn_representatives_into_adjustments, ptr @get_param_index, i64 1630}
!506 = !{ptr @turn_representatives_into_adjustments, ptr @VEC_tree_heap_free, i64 713}
!507 = !{ptr @unmodified_by_ref_scalar_representative, ptr @get_base_access_vector, i64 264}
!508 = !{ptr @unmodified_by_ref_scalar_representative, ptr @fancy_abort, i64 1}
!509 = !{ptr @unmodified_by_ref_scalar_representative, ptr @VEC_access_p_base_index, i64 543}
!510 = !{ptr @unmodified_by_ref_scalar_representative, ptr @VEC_access_p_base_length, i64 159}
!511 = !{ptr @splice_param_accesses, ptr @get_base_access_vector, i64 1108}
!512 = !{ptr @splice_param_accesses, ptr @VEC_access_p_base_length, i64 1107}
!513 = !{ptr @splice_param_accesses, ptr @VEC_access_p_base_address, i64 1107}
!514 = !{ptr @splice_param_accesses, ptr @spec_qsort, i64 1107}
!515 = !{ptr @splice_param_accesses, ptr @VEC_access_p_base_index, i64 10773}
!516 = !{ptr @splice_param_accesses, ptr @access_precludes_ipa_sra_p, i64 9353}
!517 = !{ptr @splice_param_accesses, ptr @tree_low_cst, i64 1061}
!518 = !{ptr @splice_param_accesses, ptr @fancy_abort, i64 1}
!519 = !{ptr @access_precludes_ipa_sra_p, ptr @is_gimple_call, i64 646}
!520 = !{ptr @access_precludes_ipa_sra_p, ptr @gimple_code, i64 638}
!521 = !{ptr @propagate_dereference_distances, ptr @VEC_basic_block_heap_alloc, i64 765}
!522 = !{ptr @propagate_dereference_distances, ptr @VEC_basic_block_base_quick_push, i64 34733}
!523 = !{ptr @propagate_dereference_distances, ptr @VEC_basic_block_base_length, i64 35496}
!524 = !{ptr @propagate_dereference_distances, ptr @VEC_basic_block_base_pop, i64 34731}
!525 = !{ptr @propagate_dereference_distances, ptr @bitmap_bit_p, i64 37191}
!526 = !{ptr @propagate_dereference_distances, ptr @ei_start_1, i64 29545}
!527 = !{ptr @propagate_dereference_distances, ptr @ei_cond, i64 188727}
!528 = !{ptr @propagate_dereference_distances, ptr @ei_next, i64 115592}
!529 = !{ptr @propagate_dereference_distances, ptr @VEC_basic_block_heap_free, i64 765}
!530 = !{ptr @VEC_basic_block_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 765}
!531 = !{ptr @ei_cond, ptr @ei_end_p, i64 188976}
!532 = !{ptr @ei_cond, ptr @ei_edge, i64 115745}
!533 = !{ptr @ei_next, ptr @ei_container, i64 231489}
!534 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 115745}
!535 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!536 = !{ptr @VEC_basic_block_heap_free, ptr @free, i64 764}
!537 = !{ptr @ei_end_p, ptr @ei_container, i64 377302}
!538 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 188976}
!539 = !{ptr @ei_edge, ptr @ei_container, i64 231489}
!540 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 115745}
!541 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!542 = !{ptr @VEC_ipa_parm_adjustment_t_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 713}
!543 = !{ptr @get_param_index, ptr @VEC_tree_base_length, i64 1631}
!544 = !{ptr @get_param_index, ptr @VEC_tree_base_index, i64 3225}
!545 = !{ptr @get_param_index, ptr @fancy_abort, i64 13}
!546 = !{ptr @VEC_tree_heap_free, ptr @free, i64 712}
!547 = !{ptr @create_abstract_origin, ptr @copy_node_stat, i64 712}
!548 = !{ptr @create_abstract_origin, ptr @set_decl_rtl, i64 712}
!549 = !{ptr @sra_ipa_modify_expr, ptr @VEC_ipa_parm_adjustment_t_base_length, i64 120667}
!550 = !{ptr @sra_ipa_modify_expr, ptr @get_ref_base_and_extent, i64 120667}
!551 = !{ptr @sra_ipa_modify_expr, ptr @get_ssa_base_param, i64 120277}
!552 = !{ptr @sra_ipa_modify_expr, ptr @VEC_ipa_parm_adjustment_t_base_index, i64 17492}
!553 = !{ptr @sra_ipa_modify_expr, ptr @build1_stat, i64 4801}
!554 = !{ptr @sra_ipa_modify_expr, ptr @gimple_fold_indirect_ref, i64 4801}
!555 = !{ptr @sra_ipa_modify_expr, ptr @fwrite, i64 2}
!556 = !{ptr @sra_ipa_modify_expr, ptr @print_generic_expr, i64 2}
!557 = !{ptr @sra_ipa_modify_expr, ptr @fputc, i64 1}
!558 = !{ptr @sra_ipa_modify_expr, ptr @useless_type_conversion_p, i64 1}
!559 = !{ptr @sra_ipa_modify_assign, ptr @gimple_assign_single_p, i64 61013}
!560 = !{ptr @sra_ipa_modify_assign, ptr @gimple_assign_rhs1_ptr, i64 48467}
!561 = !{ptr @sra_ipa_modify_assign, ptr @gimple_assign_lhs_ptr, i64 48467}
!562 = !{ptr @sra_ipa_modify_assign, ptr @sra_ipa_modify_expr, i64 96934}
!563 = !{ptr @sra_ipa_modify_assign, ptr @useless_type_conversion_p, i64 5007}
!564 = !{ptr @sra_ipa_modify_assign, ptr @is_gimple_reg_type, i64 4280}
!565 = !{ptr @sra_ipa_modify_assign, ptr @fold_convert_loc, i64 1}
!566 = !{ptr @sra_ipa_modify_assign, ptr @gimple_location, i64 7}
!567 = !{ptr @sra_ipa_modify_assign, ptr @fold_build1_stat_loc, i64 7}
!568 = !{ptr @sra_ipa_modify_assign, ptr @is_gimple_reg, i64 4278}
!569 = !{ptr @sra_ipa_modify_assign, ptr @force_gimple_operand_gsi, i64 8}
!570 = !{ptr @sra_ipa_modify_assign, ptr @gimple_assign_set_rhs_from_tree, i64 8}
!571 = !{ptr @replace_removed_params_ssa_names, ptr @gimple_code, i64 74667}
!572 = !{ptr @replace_removed_params_ssa_names, ptr @gimple_phi_result, i64 7374}
!573 = !{ptr @replace_removed_params_ssa_names, ptr @is_gimple_assign, i64 67323}
!574 = !{ptr @replace_removed_params_ssa_names, ptr @gimple_assign_lhs, i64 61011}
!575 = !{ptr @replace_removed_params_ssa_names, ptr @is_gimple_call, i64 6297}
!576 = !{ptr @replace_removed_params_ssa_names, ptr @gimple_call_lhs, i64 6281}
!577 = !{ptr @replace_removed_params_ssa_names, ptr @fancy_abort, i64 1}
!578 = !{ptr @replace_removed_params_ssa_names, ptr @get_adjustment_for_base, i64 194}
!579 = !{ptr @replace_removed_params_ssa_names, ptr @get_replaced_param_substitute, i64 30}
!580 = !{ptr @replace_removed_params_ssa_names, ptr @make_ssa_name, i64 30}
!581 = !{ptr @replace_removed_params_ssa_names, ptr @fwrite, i64 2}
!582 = !{ptr @replace_removed_params_ssa_names, ptr @print_generic_expr, i64 2}
!583 = !{ptr @replace_removed_params_ssa_names, ptr @fputc, i64 1}
!584 = !{ptr @replace_removed_params_ssa_names, ptr @gimple_assign_set_lhs, i64 14}
!585 = !{ptr @replace_removed_params_ssa_names, ptr @gimple_call_set_lhs, i64 7}
!586 = !{ptr @replace_removed_params_ssa_names, ptr @gimple_phi_set_result, i64 8}
!587 = !{ptr @replace_removed_params_ssa_names, ptr @replace_uses_by, i64 30}
!588 = !{ptr @sra_ipa_reset_debug_stmts, ptr @VEC_ipa_parm_adjustment_t_base_length, i64 713}
!589 = !{ptr @sra_ipa_reset_debug_stmts, ptr @VEC_ipa_parm_adjustment_t_base_index, i64 1906}
!590 = !{ptr @sra_ipa_reset_debug_stmts, ptr @is_gimple_reg, i64 1114}
!591 = !{ptr @sra_ipa_reset_debug_stmts, ptr @gimple_default_def, i64 1080}
!592 = !{ptr @sra_ipa_reset_debug_stmts, ptr @first_imm_use_stmt, i64 956}
!593 = !{ptr @sra_ipa_reset_debug_stmts, ptr @end_imm_use_stmt_p, i64 957}
!594 = !{ptr @sra_ipa_reset_debug_stmts, ptr @is_gimple_debug, i64 1}
!595 = !{ptr @sra_ipa_reset_debug_stmts, ptr @gimple_debug_bind_reset_value, i64 1}
!596 = !{ptr @sra_ipa_reset_debug_stmts, ptr @update_stmt, i64 1}
!597 = !{ptr @sra_ipa_reset_debug_stmts, ptr @next_imm_use_stmt, i64 1}
!598 = !{ptr @convert_callers, ptr @bitmap_obstack_alloc_stat, i64 713}
!599 = !{ptr @convert_callers, ptr @push_cfun, i64 2406}
!600 = !{ptr @convert_callers, ptr @cgraph_node_name, i64 2}
!601 = !{ptr @convert_callers, ptr @fprintf, i64 1}
!602 = !{ptr @convert_callers, ptr @ipa_modify_call_arguments, i64 2444}
!603 = !{ptr @convert_callers, ptr @pop_cfun, i64 2406}
!604 = !{ptr @convert_callers, ptr @bitmap_bit_p, i64 2406}
!605 = !{ptr @convert_callers, ptr @compute_inline_parameters, i64 1755}
!606 = !{ptr @convert_callers, ptr @bitmap_set_bit, i64 1755}
!607 = !{ptr @convert_callers, ptr @bitmap_obstack_free, i64 713}
!608 = !{ptr @convert_callers, ptr @gsi_start_bb, i64 576}
!609 = !{ptr @convert_callers, ptr @gsi_end_p, i64 2248}
!610 = !{ptr @convert_callers, ptr @gsi_stmt, i64 1672}
!611 = !{ptr @convert_callers, ptr @gimple_code, i64 1672}
!612 = !{ptr @convert_callers, ptr @gimple_call_fndecl, i64 155}
!613 = !{ptr @convert_callers, ptr @cgraph_get_node, i64 153}
!614 = !{ptr @convert_callers, ptr @fwrite, i64 1}
!615 = !{ptr @convert_callers, ptr @gsi_next, i64 1672}
!616 = !{ptr @get_adjustment_for_base, ptr @VEC_ipa_parm_adjustment_t_base_length, i64 193}
!617 = !{ptr @get_adjustment_for_base, ptr @VEC_ipa_parm_adjustment_t_base_index, i64 767}
!618 = !{ptr @get_replaced_param_substitute, ptr @make_fancy_name, i64 14}
!619 = !{ptr @get_replaced_param_substitute, ptr @create_tmp_var, i64 14}
!620 = !{ptr @get_replaced_param_substitute, ptr @get_identifier, i64 14}
!621 = !{ptr @get_replaced_param_substitute, ptr @obstack_free, i64 2}
!622 = !{ptr @get_replaced_param_substitute, ptr @get_var_ann, i64 14}
!623 = !{ptr @get_replaced_param_substitute, ptr @add_referenced_var, i64 14}
!624 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 29}
!625 = !{ptr @gimple_call_set_lhs, ptr @gimple_set_op, i64 7}
!626 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!627 = !{!"function_entry_count", i64 10230}
!628 = !{!"branch_weights", i32 4292, i32 5940}
!629 = !{!630, !630, i64 0}
!630 = !{!"any pointer", !631, i64 0}
!631 = !{!"omnipotent char", !632, i64 0}
!632 = !{!"Simple C/C++ TBAA"}
!633 = !{!634, !634, i64 0}
!634 = !{!"int", !631, i64 0}
!635 = !{!"branch_weights", i32 192721, i32 4309359}
!636 = !{!631, !631, i64 0}
!637 = !{!"branch_weights", i32 7231, i32 3001}
!638 = !{!"branch_weights", i32 150544, i32 1016846, i32 388}
!639 = !{!"branch_weights", i32 1, i32 2614}
!640 = !{!"function_entry_count", i64 23848}
!641 = !{!"tree-sra.c:build_ref_for_offset_1"}
!642 = !{!"branch_weights", i32 270701209, i32 134478541}
!643 = !{!"branch_weights", i32 6311, i32 10143}
!644 = !{!"branch_weights", i32 900, i32 1108, i32 1, i32 11701, i32 776}
!645 = !{!"branch_weights", i32 1, i32 797}
!646 = !{!"branch_weights", i32 47795, i32 1}
!647 = !{!"branch_weights", i32 179995971, i32 3765}
!648 = !{!"branch_weights", i32 1, i32 47795}
!649 = !{!"branch_weights", i32 582212250, i32 1461114546}
!650 = !{!"branch_weights", i32 4269, i32 9351}
!651 = !{!"branch_weights", i32 70602267, i32 93001173}
!652 = !{!"branch_weights", i32 797, i32 46998}
!653 = distinct !{!653, !654}
!654 = !{!"llvm.loop.mustprogress"}
!655 = !{!"branch_weights", i32 1, i32 776}
!656 = !{!"branch_weights", i32 1553, i32 602176}
!657 = !{!"branch_weights", i32 581, i32 196}
!658 = !{!"branch_weights", i32 1, i32 196}
!659 = !{!"function_entry_count", i64 15616}
!660 = !{!"tree-sra.c:gate_intra_sra"}
!661 = !{!"function_entry_count", i64 8964}
!662 = !{!"tree-sra.c:early_intra_sra"}
!663 = !{i32 0, i32 2049}
!664 = !{!"tree-sra.c:perform_intra_sra"}
!665 = !{i8 0, i8 2}
!666 = !{!"branch_weights", i32 14768, i32 850}
!667 = !{!"branch_weights", i32 1, i32 850}
!668 = !{!"branch_weights", i32 317, i32 534}
!669 = !{!670, !634, i64 0}
!670 = !{!"", !634, i64 0, !634, i64 4, !634, i64 8, !634, i64 12, !634, i64 16, !634, i64 20, !634, i64 24, !634, i64 28, !634, i64 32, !634, i64 36}
!671 = !{!670, !634, i64 4}
!672 = !{!670, !634, i64 8}
!673 = !{!670, !634, i64 12}
!674 = !{!670, !634, i64 16}
!675 = !{!670, !634, i64 20}
!676 = !{!"function_entry_count", i64 19074}
!677 = !{!"tree-sra.c:sra_initialize"}
!678 = !{!"tree-sra.c:find_var_candidates"}
!679 = !{!"branch_weights", i32 15616, i32 1}
!680 = !{!"branch_weights", i32 488133, i32 -2020943051, i32 112308311}
!681 = !{!"branch_weights", i32 129973989, i32 -167006521}
!682 = !{!"branch_weights", i32 1839, i32 17558}
!683 = !{!"branch_weights", i32 1839, i32 1}
!684 = !{!"branch_weights", i32 1, i32 1839}
!685 = !{!"branch_weights", i32 1402, i32 438}
!686 = !{!"branch_weights", i32 1402, i32 1}
!687 = !{!"branch_weights", i32 620021, i32 15616}
!688 = distinct !{!688, !654}
!689 = !{!"function_entry_count", i64 3372}
!690 = !{!"tree-sra.c:scan_function"}
!691 = !{!692, !630, i64 8}
!692 = !{!"function", !630, i64 0, !630, i64 8, !630, i64 16, !630, i64 24, !630, i64 32, !630, i64 40, !630, i64 48, !630, i64 56, !630, i64 64, !630, i64 72, !630, i64 80, !630, i64 88, !630, i64 96, !634, i64 104, !634, i64 108, !634, i64 112, !634, i64 116, !634, i64 120, !634, i64 124, !630, i64 128, !634, i64 136, !634, i64 137, !634, i64 138, !634, i64 138, !634, i64 138, !634, i64 138, !634, i64 138, !634, i64 138, !634, i64 138, !634, i64 139, !634, i64 139, !634, i64 139, !634, i64 139, !634, i64 139, !634, i64 139, !634, i64 139}
!693 = !{!694, !630, i64 0}
!694 = !{!"control_flow_graph", !630, i64 0, !630, i64 8, !630, i64 16, !634, i64 24, !634, i64 28, !634, i64 32, !630, i64 40, !634, i64 48, !631, i64 52, !631, i64 60, !634, i64 68, !634, i64 72}
!695 = !{!696, !630, i64 56}
!696 = !{!"basic_block_def", !630, i64 0, !630, i64 8, !630, i64 16, !630, i64 24, !631, i64 32, !630, i64 48, !630, i64 56, !631, i64 64, !697, i64 72, !634, i64 80, !634, i64 84, !634, i64 88, !634, i64 92, !634, i64 96}
!697 = !{!"long", !631, i64 0}
!698 = !{!694, !630, i64 8}
!699 = !{!"branch_weights", i32 1, i32 3372}
!700 = !{!"branch_weights", i32 32801, i32 147589}
!701 = !{i64 0, i64 8, !629, i64 8, i64 8, !629, i64 16, i64 8, !629}
!702 = !{!"branch_weights", i32 7374, i32 25427}
!703 = !{ptr @replace_removed_params_ssa_names}
!704 = !{!"branch_weights", i32 0, i32 7374}
!705 = distinct !{!705, !654}
!706 = !{!"branch_weights", i32 180388, i32 1}
!707 = !{!"branch_weights", i32 824009482, i32 -1922756651}
!708 = !{!"branch_weights", i32 147374, i32 1}
!709 = !{!696, !634, i64 80}
!710 = !{i32 0, i32 256}
!711 = !{!"branch_weights", i32 128953, i32 3371, i32 379903, i32 59417, i32 1}
!712 = !{!"branch_weights", i32 1, i32 59416}
!713 = !{!"branch_weights", i32 1440, i32 1932}
!714 = !{ptr @build_access_from_expr, ptr @sra_ipa_modify_expr, ptr @sra_modify_expr}
!715 = !{!"branch_weights", i32 2714902, i32 4457342}
!716 = !{ptr @build_accesses_from_assign, ptr @sra_ipa_modify_assign, ptr @sra_modify_assign}
!717 = !{!"branch_weights", i32 465338524, i32 -1862825501}
!718 = !{!"branch_weights", i32 78577, i32 59416}
!719 = distinct !{!719, !654}
!720 = !{!"branch_weights", i32 477170144, i32 1788913540}
!721 = !{!"branch_weights", i32 111, i32 12402}
!722 = !{!"branch_weights", i32 1189, i32 14758381}
!723 = !{!"branch_weights", i32 160, i32 12243}
!724 = !{!"branch_weights", i32 1, i32 160}
!725 = !{!"branch_weights", i32 145764800, i32 10810369}
!726 = !{!"branch_weights", i32 21780, i32 37638}
!727 = !{!"branch_weights", i32 13281, i32 24358}
!728 = !{!"branch_weights", i32 24358, i32 1}
!729 = !{!"branch_weights", i32 6282, i32 31357}
!730 = distinct !{!730, !654}
!731 = distinct !{!731, !654}
!732 = !{!"branch_weights", i32 2094918761, i32 52564887}
!733 = !{!"branch_weights", i32 941091, i32 2146542557}
!734 = !{!"branch_weights", i32 -541410185, i32 181988633}
!735 = !{!"branch_weights", i32 943881, i32 2146539767}
!736 = !{!"branch_weights", i32 391253, i32 180388}
!737 = distinct !{!737, !654}
!738 = !{!"branch_weights", i32 55871874, i32 2091611774}
!739 = !{!"branch_weights", i32 3372, i32 177017}
!740 = distinct !{!740, !654}
!741 = !{!"function_entry_count", i64 113524}
!742 = !{!"tree-sra.c:build_access_from_expr"}
!743 = !{!"branch_weights", i32 113248, i32 278}
!744 = !{!"branch_weights", i32 1, i32 278}
!745 = !{!746, !630, i64 16}
!746 = !{!"access", !697, i64 0, !697, i64 8, !630, i64 16, !630, i64 24, !630, i64 32, !630, i64 40, !630, i64 48, !630, i64 56, !630, i64 64, !630, i64 72, !630, i64 80, !630, i64 88, !630, i64 96, !630, i64 104, !634, i64 112, !634, i64 112, !634, i64 112, !634, i64 112, !634, i64 112, !634, i64 112, !634, i64 112, !634, i64 112, !634, i64 113, !634, i64 113, !634, i64 113, !634, i64 113, !634, i64 113, !634, i64 113}
!747 = !{!"function_entry_count", i64 238626}
!748 = !{!"tree-sra.c:build_accesses_from_assign"}
!749 = !{!"branch_weights", i32 69783, i32 168845}
!750 = !{!"branch_weights", i32 168845, i32 1}
!751 = !{!"branch_weights", i32 1, i32 168845}
!752 = !{!"branch_weights", i32 306939104, i32 -1038284936}
!753 = !{!746, !630, i64 32}
!754 = !{!"branch_weights", i32 766, i32 13778}
!755 = !{!"branch_weights", i32 2816788, i32 960111950}
!756 = !{!"branch_weights", i32 34443, i32 207}
!757 = !{!"branch_weights", i32 492, i32 1}
!758 = !{!"branch_weights", i32 971704, i32 492}
!759 = !{!746, !697, i64 8}
!760 = !{!"branch_weights", i32 1, i32 492}
!761 = !{!762, !630, i64 0}
!762 = !{!"assign_link", !630, i64 0, !630, i64 8, !630, i64 16}
!763 = !{!762, !630, i64 8}
!764 = !{!"function_entry_count", i64 849}
!765 = !{!"tree-sra.c:analyze_all_variable_accesses"}
!766 = !{!767, !634, i64 72}
!767 = !{!"processor_costs", !634, i64 0, !634, i64 4, !634, i64 8, !634, i64 12, !631, i64 16, !634, i64 36, !631, i64 40, !634, i64 60, !634, i64 64, !634, i64 68, !634, i64 72, !634, i64 76, !631, i64 80, !631, i64 92, !634, i64 104, !631, i64 108, !631, i64 120, !634, i64 132, !631, i64 136, !631, i64 144, !634, i64 152, !631, i64 156, !631, i64 168, !634, i64 180, !634, i64 184, !634, i64 188, !634, i64 192, !634, i64 196, !634, i64 200, !634, i64 204, !634, i64 208, !634, i64 212, !634, i64 216, !634, i64 220, !634, i64 224, !631, i64 228, !631, i64 300, !634, i64 372, !634, i64 376, !634, i64 380, !634, i64 384, !634, i64 388, !634, i64 392, !634, i64 396, !634, i64 400, !634, i64 404, !634, i64 408, !634, i64 412}
!768 = !{!"branch_weights", i32 1, i32 849}
!769 = !{!"branch_weights", i32 1218, i32 622}
!770 = !{!"branch_weights", i32 589, i32 34}
!771 = !{!"branch_weights", i32 552, i32 38}
!772 = !{!"branch_weights", i32 3, i32 550}
!773 = !{!"branch_weights", i32 44, i32 507}
!774 = !{!"branch_weights", i32 507, i32 1}
!775 = !{!"branch_weights", i32 849, i32 990}
!776 = distinct !{!776, !654}
!777 = !{!"branch_weights", i32 60, i32 1780}
!778 = distinct !{!778, !654}
!779 = !{!"branch_weights", i32 492, i32 1289}
!780 = !{!"branch_weights", i32 1289, i32 1}
!781 = !{!"branch_weights", i32 849, i32 931}
!782 = distinct !{!782, !654}
!783 = !{!"branch_weights", i32 798356760, i32 1349126888}
!784 = !{!"function_entry_count", i64 42267}
!785 = !{!"tree-sra.c:sra_modify_expr"}
!786 = !{!"branch_weights", i32 982, i32 41287}
!787 = !{!"branch_weights", i32 84537, i32 1786583824}
!788 = !{!"branch_weights", i32 42124, i32 145}
!789 = !{!"branch_weights", i32 125, i32 21}
!790 = !{!"branch_weights", i32 21, i32 1}
!791 = !{!746, !697, i64 0}
!792 = !{!"branch_weights", i32 1, i32 21}
!793 = !{!746, !630, i64 64}
!794 = !{!"branch_weights", i32 21, i32 125}
!795 = !{!"branch_weights", i32 125, i32 1}
!796 = !{!"function_entry_count", i64 80263}
!797 = !{!"tree-sra.c:sra_modify_assign"}
!798 = !{!"branch_weights", i32 22147, i32 58118}
!799 = !{!"branch_weights", i32 -917265372, i32 58119, i32 58118}
!800 = !{i32 0, i32 3}
!801 = !{!"branch_weights", i32 39291098, i32 -2018155896}
!802 = !{!"branch_weights", i32 335893218, i32 -1524781696}
!803 = !{!"branch_weights", i32 2778, i32 3401}
!804 = !{!"branch_weights", i32 335, i32 2444}
!805 = !{!"branch_weights", i32 2444, i32 1}
!806 = !{!"branch_weights", i32 3871, i32 2308}
!807 = !{!"branch_weights", i32 334, i32 3538}
!808 = !{!"branch_weights", i32 3538, i32 1}
!809 = !{!"branch_weights", i32 403987215, i32 1743496433}
!810 = !{!"branch_weights", i32 71, i32 5612}
!811 = !{!"branch_weights", i32 3290176, i32 18612224}
!812 = !{!"branch_weights", i32 8, i32 1}
!813 = !{!"branch_weights", i32 1, i32 8}
!814 = !{!"branch_weights", i32 16836, i32 64}
!815 = !{!"branch_weights", i32 64, i32 1}
!816 = !{!"branch_weights", i32 1, i32 64}
!817 = !{!"branch_weights", i32 1, i32 71}
!818 = !{!"branch_weights", i32 6178, i32 1}
!819 = !{!"branch_weights", i32 5858, i32 321}
!820 = !{!"branch_weights", i32 2, i32 320}
!821 = !{!"branch_weights", i32 5879, i32 299}
!822 = !{!"branch_weights", i32 2, i32 298}
!823 = !{!"branch_weights", i32 1, i32 3}
!824 = !{!"branch_weights", i32 5879, i32 298}
!825 = !{!"branch_weights", i32 129, i32 170}
!826 = !{!"branch_weights", i32 7802, i32 8443}
!827 = !{i32 1, i32 3}
!828 = !{!"branch_weights", i32 81, i32 90}
!829 = !{!"branch_weights", i32 1, i32 90}
!830 = !{!"branch_weights", i32 5858, i32 150}
!831 = !{!"branch_weights", i32 105, i32 46}
!832 = !{!"branch_weights", i32 1, i32 105}
!833 = !{!"branch_weights", i32 105, i32 1}
!834 = !{!"branch_weights", i32 5985, i32 1}
!835 = !{!"branch_weights", i32 2385, i32 3601}
!836 = !{!"branch_weights", i32 3601, i32 1}
!837 = !{!"function_entry_count", i64 533}
!838 = !{!"tree-sra.c:initialize_parameter_reductions"}
!839 = !{!"branch_weights", i32 1, i32 533}
!840 = !{!"branch_weights", i32 1083, i32 42}
!841 = !{!"branch_weights", i32 1, i32 42}
!842 = !{!"branch_weights", i32 34, i32 9}
!843 = !{!"branch_weights", i32 1, i32 167}
!844 = !{!746, !630, i64 48}
!845 = !{!"branch_weights", i32 167, i32 69}
!846 = distinct !{!846, !654}
!847 = !{!"branch_weights", i32 533, i32 591}
!848 = distinct !{!848, !654}
!849 = !{!"branch_weights", i32 2010752000, i32 136731648}
!850 = !{!"tree-sra.c:sra_deinitialize"}
!851 = !{!852, !630, i64 8}
!852 = !{!"obstack", !697, i64 0, !630, i64 8, !630, i64 16, !630, i64 24, !630, i64 32, !697, i64 40, !634, i64 48, !630, i64 56, !630, i64 64, !630, i64 72, !634, i64 80, !634, i64 80, !634, i64 80}
!853 = !{!852, !697, i64 40}
!854 = !{!"branch_weights", i32 1, i32 19075}
!855 = !{!852, !630, i64 32}
!856 = !{!852, !630, i64 16}
!857 = !{!852, !630, i64 24}
!858 = !{!"tree-sra.c:first_referenced_var"}
!859 = !{!"function_entry_count", i64 651252}
!860 = !{!"tree-sra.c:end_referenced_vars_p"}
!861 = !{!"function_entry_count", i64 15355}
!862 = !{!"tree-sra.c:type_internals_preclude_sra_p"}
!863 = !{!"branch_weights", i32 1, i32 11655, i32 1379, i32 1, i32 2324}
!864 = !{!"branch_weights", i32 1, i32 13032}
!865 = !{!"branch_weights", i32 171499, i32 1}
!866 = !{!"branch_weights", i32 1, i32 171499}
!867 = !{!"branch_weights", i32 187467948, i32 -1766296781}
!868 = !{!"branch_weights", i32 11834, i32 1}
!869 = !{!"branch_weights", i32 13032, i32 158467}
!870 = distinct !{!870, !654}
!871 = !{!"branch_weights", i32 985588396, i32 -150930778}
!872 = !{!"function_entry_count", i64 13876}
!873 = !{!"tree-sra.c:is_va_list_type"}
!874 = !{!"function_entry_count", i64 635636}
!875 = !{!"tree-sra.c:next_referenced_var"}
!876 = !{!"tree-sra.c:first_htab_element"}
!877 = !{!878, !630, i64 0}
!878 = !{!"", !630, i64 0, !630, i64 8, !630, i64 16}
!879 = !{!880, !630, i64 24}
!880 = !{!"htab", !630, i64 0, !630, i64 8, !630, i64 16, !630, i64 24, !697, i64 32, !697, i64 40, !697, i64 48, !634, i64 56, !634, i64 60, !630, i64 64, !630, i64 72, !630, i64 80, !630, i64 88, !630, i64 96, !634, i64 104}
!881 = !{!878, !630, i64 8}
!882 = !{!878, !630, i64 16}
!883 = !{!"branch_weights", i32 63566, i32 1}
!884 = distinct !{!884, !654}
!885 = !{!"branch_weights", i32 15617, i32 1}
!886 = !{!"tree-sra.c:gimple_referenced_vars"}
!887 = !{!692, !630, i64 24}
!888 = !{!"branch_weights", i32 1, i32 15617}
!889 = !{!890, !630, i64 0}
!890 = !{!"gimple_df", !630, i64 0, !630, i64 8, !630, i64 16, !630, i64 24, !891, i64 32, !891, i64 48, !630, i64 64, !630, i64 72, !630, i64 80, !630, i64 88, !634, i64 96, !892, i64 104}
!891 = !{!"pt_solution", !634, i64 0, !634, i64 0, !634, i64 0, !634, i64 0, !634, i64 0, !634, i64 0, !630, i64 8}
!892 = !{!"ssa_operands", !630, i64 0, !634, i64 8, !634, i64 12, !631, i64 16, !630, i64 24, !630, i64 32}
!893 = !{!"tree-sra.c:end_htab_p"}
!894 = !{!"tree-sra.c:next_htab_element"}
!895 = !{!"branch_weights", i32 1493928, i32 15617}
!896 = !{!"function_entry_count", i64 794454}
!897 = !{!"tree-sra.c:gsi_end_p"}
!898 = !{!"function_entry_count", i64 698006}
!899 = !{!"tree-sra.c:gsi_stmt"}
!900 = !{!901, !630, i64 0}
!901 = !{!"gimple_seq_node_d", !630, i64 0, !630, i64 8, !630, i64 16}
!902 = !{!"function_entry_count", i64 580496}
!903 = !{!"tree-sra.c:gsi_next"}
!904 = !{!901, !630, i64 16}
!905 = !{!"function_entry_count", i64 180965}
!906 = !{!"tree-sra.c:gsi_start_bb"}
!907 = !{!"function_entry_count", i64 3959733}
!908 = !{!"tree-sra.c:gimple_code"}
!909 = !{!"function_entry_count", i64 3370}
!910 = !{!"tree-sra.c:gimple_return_retval_ptr"}
!911 = !{!"function_entry_count", i64 211080}
!912 = !{!"tree-sra.c:gimple_call_num_args"}
!913 = !{!"function_entry_count", i64 137992}
!914 = !{!"tree-sra.c:gimple_call_arg_ptr"}
!915 = !{!"function_entry_count", i64 12666}
!916 = !{!"tree-sra.c:gimple_call_fndecl"}
!917 = !{!"branch_weights", i32 12556, i32 112}
!918 = !{!"function_entry_count", i64 4664}
!919 = !{!"tree-sra.c:callsite_has_enough_arguments_p"}
!920 = !{!"function_entry_count", i64 67912}
!921 = !{!"tree-sra.c:gimple_call_lhs"}
!922 = !{!"function_entry_count", i64 37637}
!923 = !{!"tree-sra.c:gimple_call_lhs_ptr"}
!924 = !{!"function_entry_count", i64 193201}
!925 = !{!"tree-sra.c:disqualify_ops_if_throwing_stmt"}
!926 = !{!"branch_weights", i32 -607499126, i32 -1747195048}
!927 = !{!"branch_weights", i32 114258, i32 1}
!928 = !{!"function_entry_count", i64 0}
!929 = !{!"tree-sra.c:asm_visit_addr"}
!930 = !{!"tree-sra.c:gimple_asm_ninputs"}
!931 = !{!"tree-sra.c:gimple_asm_input_op"}
!932 = !{!"tree-sra.c:gimple_asm_noutputs"}
!933 = !{!"tree-sra.c:gimple_asm_output_op"}
!934 = !{!"function_entry_count", i64 12752}
!935 = !{!"tree-sra.c:update_stmt"}
!936 = !{!"branch_weights", i32 1, i32 12753}
!937 = !{!"tree-sra.c:bb_seq"}
!938 = !{!696, !634, i64 96}
!939 = !{!"branch_weights", i32 180966, i32 1}
!940 = !{!"branch_weights", i32 1, i32 180966}
!941 = !{!942, !630, i64 0}
!942 = !{!"gimple_bb_info", !630, i64 0, !630, i64 8}
!943 = !{!"function_entry_count", i64 180998}
!944 = !{!"tree-sra.c:gimple_seq_first"}
!945 = !{!"branch_weights", i32 1, i32 180999}
!946 = !{!947, !630, i64 0}
!947 = !{!"gimple_seq_d", !630, i64 0, !630, i64 8, !630, i64 16}
!948 = !{!"function_entry_count", i64 615585}
!949 = !{!"tree-sra.c:gimple_op_ptr"}
!950 = !{!"branch_weights", i32 1, i32 615586}
!951 = !{!"function_entry_count", i64 936895}
!952 = !{!"tree-sra.c:gimple_has_ops"}
!953 = !{!"function_entry_count", i64 905012}
!954 = !{!"tree-sra.c:gimple_ops"}
!955 = !{!697, !697, i64 0}
!956 = !{!"branch_weights", i32 1, i32 905013}
!957 = !{!"tree-sra.c:gimple_statement_structure"}
!958 = !{!"tree-sra.c:gss_for_code"}
!959 = !{!"function_entry_count", i64 213551}
!960 = !{!"tree-sra.c:gimple_num_ops"}
!961 = !{!"tree-sra.c:gimple_call_fn"}
!962 = !{!"function_entry_count", i64 286956}
!963 = !{!"tree-sra.c:gimple_op"}
!964 = !{!"branch_weights", i32 1, i32 286957}
!965 = !{!"tree-sra.c:disqualify_base_of_expr"}
!966 = distinct !{!966, !654}
!967 = !{!"function_entry_count", i64 788366}
!968 = !{!"tree-sra.c:handled_component_p"}
!969 = !{!"branch_weights", i32 507872, i32 112, i32 212688, i32 67698, i32 1, i32 1, i32 1, i32 1}
!970 = !{!"function_entry_count", i64 173722}
!971 = !{!"tree-sra.c:get_ssa_base_param"}
!972 = !{!"branch_weights", i32 155098, i32 18626}
!973 = !{!"branch_weights", i32 133448, i32 21651}
!974 = !{!"function_entry_count", i64 683}
!975 = !{!"tree-sra.c:disqualify_candidate"}
!976 = !{!"branch_weights", i32 684, i32 1}
!977 = !{!"function_entry_count", i64 451212}
!978 = !{!"tree-sra.c:build_access_from_expr_1"}
!979 = !{!"branch_weights", i32 22441613, i32 -1625047567}
!980 = !{!"branch_weights", i32 1, i32 451213}
!981 = !{!"branch_weights", i32 451213, i32 1}
!982 = !{!"branch_weights", i32 291727, i32 12945, i32 19888, i32 301, i32 130, i32 93800, i32 32428, i32 1}
!983 = !{!"branch_weights", i32 5595, i32 7351}
!984 = !{!"branch_weights", i32 5991, i32 -1635395683}
!985 = !{!"function_entry_count", i64 463566}
!986 = !{!"tree-sra.c:contains_view_convert_expr_p"}
!987 = !{!"branch_weights", i32 221977, i32 241590}
!988 = !{!"branch_weights", i32 1, i32 241590}
!989 = !{!"branch_weights", i32 241590, i32 0}
!990 = distinct !{!990, !654}
!991 = !{!"function_entry_count", i64 152136}
!992 = !{!"tree-sra.c:create_access"}
!993 = !{!"branch_weights", i32 69551, i32 82587}
!994 = !{!"branch_weights", i32 -908567630, i32 1020577046}
!995 = !{!"branch_weights", i32 40105, i32 13339}
!996 = !{!"branch_weights", i32 65346, i32 46688}
!997 = !{!"branch_weights", i32 44693, i32 20654}
!998 = !{!"branch_weights", i32 10498, i32 10157}
!999 = !{!"branch_weights", i32 109221192, i32 1007809}
!1000 = !{!"branch_weights", i32 107599065, i32 425645}
!1001 = !{!"branch_weights", i32 256, i32 10110}
!1002 = !{!"branch_weights", i32 8696, i32 1462}
!1003 = !{!"branch_weights", i32 1, i32 10157}
!1004 = !{!746, !630, i64 24}
!1005 = !{!746, !630, i64 40}
!1006 = !{!"function_entry_count", i64 10109}
!1007 = !{!"tree-sra.c:mark_parm_dereference"}
!1008 = !{!"branch_weights", i32 9170, i32 941}
!1009 = !{!"branch_weights", i32 3297, i32 5873}
!1010 = !{!"branch_weights", i32 0, i32 3297}
!1011 = distinct !{!1011, !654}
!1012 = !{!"branch_weights", i32 9170, i32 1}
!1013 = !{!"branch_weights", i32 8354, i32 817}
!1014 = !{!"function_entry_count", i64 21512}
!1015 = !{!"tree-sra.c:create_access_1"}
!1016 = !{!"branch_weights", i32 3209, i32 18305}
!1017 = !{!"tree-sra.c:gimple_bb"}
!1018 = !{!"function_entry_count", i64 4485}
!1019 = !{!"tree-sra.c:VEC_access_p_heap_alloc"}
!1020 = !{!"tree-sra.c:VEC_access_p_heap_safe_push"}
!1021 = !{!"tree-sra.c:VEC_access_p_heap_reserve"}
!1022 = !{!"branch_weights", i32 149, i32 21365}
!1023 = !{!"function_entry_count", i64 24535}
!1024 = !{!"tree-sra.c:VEC_access_p_base_quick_push"}
!1025 = !{!1026, !634, i64 0}
!1026 = !{!"VEC_access_p_base", !634, i64 0, !634, i64 4, !631, i64 8}
!1027 = !{!"tree-sra.c:VEC_access_p_base_space"}
!1028 = !{!"branch_weights", i32 1, i32 21513}
!1029 = !{!1026, !634, i64 4}
!1030 = !{!"function_entry_count", i64 218293}
!1031 = !{!"tree-sra.c:gimple_assign_lhs_ptr"}
!1032 = !{!"tree-sra.c:gimple_assign_rhs1_ptr"}
!1033 = !{!"function_entry_count", i64 175021}
!1034 = !{!"tree-sra.c:gimple_has_volatile_ops"}
!1035 = !{!"branch_weights", i32 1, i32 175022}
!1036 = !{!"function_entry_count", i64 491}
!1037 = !{!"tree-sra.c:add_link_to_rhs"}
!1038 = !{!746, !630, i64 80}
!1039 = !{!746, !630, i64 88}
!1040 = !{!762, !630, i64 16}
!1041 = !{!"function_entry_count", i64 196334}
!1042 = !{!"tree-sra.c:gimple_has_mem_ops"}
!1043 = !{!"function_entry_count", i64 2547}
!1044 = !{!"tree-sra.c:bmp_iter_set_init"}
!1045 = !{!1046, !630, i64 0}
!1046 = !{!"bitmap_head_def", !630, i64 0, !630, i64 8, !634, i64 16, !630, i64 24}
!1047 = !{!1048, !630, i64 0}
!1048 = !{!"", !630, i64 0, !630, i64 8, !634, i64 16, !697, i64 24}
!1049 = !{!1048, !630, i64 8}
!1050 = !{!"branch_weights", i32 59, i32 2490}
!1051 = !{!1052, !634, i64 16}
!1052 = !{!"bitmap_element_def", !630, i64 0, !630, i64 8, !634, i64 16, !631, i64 24}
!1053 = !{!1048, !634, i64 16}
!1054 = !{!1048, !697, i64 24}
!1055 = !{!"function_entry_count", i64 8002}
!1056 = !{!"tree-sra.c:bmp_iter_set"}
!1057 = !{!"branch_weights", i32 4934, i32 3070}
!1058 = !{!"branch_weights", i32 5455, i32 1}
!1059 = !{!"branch_weights", i32 110029, i32 5455}
!1060 = distinct !{!1060, !654}
!1061 = !{!"branch_weights", i32 1, i32 3479}
!1062 = !{!"branch_weights", i32 2026, i32 2387}
!1063 = !{!"branch_weights", i32 3479, i32 933}
!1064 = distinct !{!1064, !654}
!1065 = !{!1052, !630, i64 0}
!1066 = !{!"branch_weights", i32 2548, i32 933}
!1067 = !{!"tree-sra.c:type_consists_of_records_p"}
!1068 = !{!"branch_weights", i32 641, i32 44}
!1069 = !{!"branch_weights", i32 1, i32 597}
!1070 = !{!"branch_weights", i32 1310, i32 1}
!1071 = !{!"branch_weights", i32 135, i32 1176}
!1072 = !{!"branch_weights", i32 44, i32 92}
!1073 = !{!"branch_weights", i32 597, i32 713}
!1074 = distinct !{!1074, !654}
!1075 = !{!"function_entry_count", i64 597}
!1076 = !{!"tree-sra.c:completely_scalarize_record"}
!1077 = !{!"branch_weights", i32 1084, i32 1}
!1078 = !{!"branch_weights", i32 92, i32 993}
!1079 = !{!"branch_weights", i32 1, i32 993}
!1080 = !{!"branch_weights", i32 597, i32 487}
!1081 = distinct !{!1081, !654}
!1082 = !{!"function_entry_count", i64 5455}
!1083 = !{!"tree-sra.c:bmp_iter_next"}
!1084 = !{!"function_entry_count", i64 1838}
!1085 = !{!"tree-sra.c:sort_and_splice_var_accesses"}
!1086 = !{!"branch_weights", i32 1779, i32 1}
!1087 = !{!"branch_weights", i32 4494408, i32 5581294}
!1088 = !{!"branch_weights", i32 1263, i32 606}
!1089 = !{!"branch_weights", i32 1, i32 1263}
!1090 = !{!"branch_weights", i32 1, i32 1868}
!1091 = !{!"branch_weights", i32 7576, i32 1795}
!1092 = !{!"branch_weights", i32 6965, i32 612}
!1093 = !{!"branch_weights", i32 4523, i32 2443}
!1094 = !{!"branch_weights", i32 430, i32 6536}
!1095 = !{!"branch_weights", i32 430, i32 1}
!1096 = !{!746, !630, i64 56}
!1097 = !{!"branch_weights", i32 1779, i32 7591}
!1098 = !{!"branch_weights", i32 1157, i32 3029}
!1099 = !{!"branch_weights", i32 3745, i32 441}
!1100 = !{!"branch_weights", i32 2406, i32 1779}
!1101 = distinct !{!1101, !654}
!1102 = !{!"branch_weights", i32 -2147483648, i32 0}
!1103 = !{!"function_entry_count", i64 1779}
!1104 = !{!"tree-sra.c:build_access_trees"}
!1105 = !{!"branch_weights", i32 1, i32 1779}
!1106 = !{!"branch_weights", i32 1779, i32 539}
!1107 = distinct !{!1107, !654}
!1108 = !{!"tree-sra.c:propagate_all_subaccesses"}
!1109 = !{!"branch_weights", i32 409, i32 441}
!1110 = !{!"branch_weights", i32 441, i32 0}
!1111 = distinct !{!1111, !654}
!1112 = !{!"branch_weights", i32 1, i32 441}
!1113 = !{!"branch_weights", i32 426, i32 67}
!1114 = !{!"branch_weights", i32 66, i32 2}
!1115 = !{!"branch_weights", i32 440, i32 52}
!1116 = distinct !{!1116, !654}
!1117 = !{!"function_entry_count", i64 8570}
!1118 = !{!"tree-sra.c:get_first_repr_for_decl"}
!1119 = !{!"branch_weights", i32 1, i32 8571}
!1120 = !{!"tree-sra.c:analyze_access_trees"}
!1121 = !{!"branch_weights", i32 566, i32 1753}
!1122 = distinct !{!1122, !654}
!1123 = !{!"tree-sra.c:dump_access_tree"}
!1124 = distinct !{!1124, !654}
!1125 = !{!"function_entry_count", i64 11821}
!1126 = !{!"tree-sra.c:get_base_access_vector"}
!1127 = !{!"branch_weights", i32 60, i32 11763}
!1128 = !{!"function_entry_count", i64 3046}
!1129 = !{!"tree-sra.c:VEC_access_p_base_length"}
!1130 = !{!"branch_weights", i32 1, i32 3047}
!1131 = !{!"function_entry_count", i64 2887}
!1132 = !{!"tree-sra.c:VEC_access_p_base_address"}
!1133 = !{!"function_entry_count", i64 35499}
!1134 = !{!"tree-sra.c:compare_access_positions"}
!1135 = !{!"branch_weights", i32 16650, i32 18851}
!1136 = !{!"branch_weights", i32 15184, i32 1467}
!1137 = !{!"branch_weights", i32 14163, i32 1022}
!1138 = !{!"branch_weights", i32 677, i32 346}
!1139 = !{!"branch_weights", i32 1, i32 677}
!1140 = !{!"branch_weights", i32 1, i32 346}
!1141 = !{!"branch_weights", i32 230, i32 117}
!1142 = !{!"branch_weights", i32 235, i32 13689}
!1143 = !{!"branch_weights", i32 1281690159, i32 865793489}
!1144 = !{!"branch_weights", i32 209692, i32 133308}
!1145 = !{!"branch_weights", i32 28, i32 1}
!1146 = !{!"branch_weights", i32 92645, i32 363888}
!1147 = !{!"branch_weights", i32 14, i32 1}
!1148 = !{!"function_entry_count", i64 41613}
!1149 = !{!"tree-sra.c:VEC_access_p_base_index"}
!1150 = !{!"function_entry_count", i64 6964}
!1151 = !{!"tree-sra.c:relink_to_new_repr"}
!1152 = !{!"branch_weights", i32 6568, i32 398}
!1153 = !{!"branch_weights", i32 6568, i32 1}
!1154 = !{!"branch_weights", i32 347, i32 52}
!1155 = !{!"branch_weights", i32 52, i32 1}
!1156 = !{!"branch_weights", i32 1, i32 52}
!1157 = !{!"branch_weights", i32 347, i32 1}
!1158 = !{!"function_entry_count", i64 441}
!1159 = !{!"tree-sra.c:add_access_to_work_queue"}
!1160 = !{!"branch_weights", i32 441, i32 2}
!1161 = !{!746, !630, i64 96}
!1162 = !{!"branch_weights", i32 441, i32 1}
!1163 = !{!"function_entry_count", i64 4184}
!1164 = !{!"tree-sra.c:build_access_subtree"}
!1165 = !{!"branch_weights", i32 1, i32 2438}
!1166 = !{!"branch_weights", i32 4185, i32 1868}
!1167 = !{!"branch_weights", i32 662, i32 1207}
!1168 = !{!"branch_weights", i32 2438, i32 1176}
!1169 = distinct !{!1169, !654}
!1170 = !{!"function_entry_count", i64 440}
!1171 = !{!"tree-sra.c:pop_access_from_work_queue"}
!1172 = !{!"function_entry_count", i64 609}
!1173 = !{!"tree-sra.c:propagate_subaccesses_across_link"}
!1174 = !{!"branch_weights", i32 192, i32 419}
!1175 = !{!"branch_weights", i32 192, i32 1}
!1176 = !{!"branch_weights", i32 9, i32 184}
!1177 = !{!"branch_weights", i32 9, i32 1}
!1178 = !{!"branch_weights", i32 4, i32 6}
!1179 = !{!"branch_weights", i32 1, i32 6}
!1180 = !{!"branch_weights", i32 1, i32 186}
!1181 = !{!"branch_weights", i32 564, i32 1}
!1182 = !{!"branch_weights", i32 119, i32 446}
!1183 = !{!"branch_weights", i32 1, i32 446}
!1184 = !{!"branch_weights", i32 446, i32 1}
!1185 = !{!"branch_weights", i32 1, i32 119}
!1186 = !{!"branch_weights", i32 186, i32 378}
!1187 = distinct !{!1187, !654}
!1188 = !{!"function_entry_count", i64 563}
!1189 = !{!"tree-sra.c:child_would_conflict_in_lacc"}
!1190 = !{!"branch_weights", i32 1, i32 237}
!1191 = !{!"branch_weights", i32 446, i32 687}
!1192 = !{!"branch_weights", i32 683, i32 5}
!1193 = !{!"branch_weights", i32 1, i32 683}
!1194 = !{!"branch_weights", i32 237, i32 2027}
!1195 = distinct !{!1195, !654}
!1196 = !{!"function_entry_count", i64 118}
!1197 = !{!"tree-sra.c:create_artificial_child_access"}
!1198 = !{!"branch_weights", i32 119, i32 1}
!1199 = !{!"branch_weights", i32 1, i32 229}
!1200 = !{!"branch_weights", i32 237, i32 1}
!1201 = !{!"branch_weights", i32 109, i32 237}
!1202 = distinct !{!1202, !654}
!1203 = !{!"branch_weights", i32 229, i32 125}
!1204 = !{!746, !630, i64 72}
!1205 = !{!"function_entry_count", i64 4302}
!1206 = !{!"tree-sra.c:analyze_access_subtree"}
!1207 = !{!"branch_weights", i32 3071, i32 1233}
!1208 = !{!"branch_weights", i32 2847, i32 1457}
!1209 = !{!"branch_weights", i32 948, i32 3356}
!1210 = !{!"branch_weights", i32 3356, i32 1}
!1211 = !{!"branch_weights", i32 2317, i32 1986}
!1212 = !{!"branch_weights", i32 1414, i32 573}
!1213 = !{!"branch_weights", i32 1, i32 1414}
!1214 = !{!"branch_weights", i32 1986, i32 0}
!1215 = distinct !{!1215, !654}
!1216 = !{!"branch_weights", i32 9262560, i32 5185968}
!1217 = !{!"branch_weights", i32 2760, i32 1}
!1218 = !{!"branch_weights", i32 1200, i32 1561}
!1219 = !{!"branch_weights", i32 304601, i32 807525}
!1220 = !{!"branch_weights", i32 1, i32 2433}
!1221 = !{!"branch_weights", i32 2433, i32 1}
!1222 = !{!"branch_weights", i32 4666300, i32 7716308}
!1223 = !{!"branch_weights", i32 138, i32 1484}
!1224 = !{!"branch_weights", i32 83, i32 56}
!1225 = !{!"function_entry_count", i64 3355}
!1226 = !{!"tree-sra.c:expr_with_var_bounded_array_refs_p"}
!1227 = !{!"branch_weights", i32 253, i32 3103}
!1228 = !{!"branch_weights", i32 640, i32 2464}
!1229 = !{!"branch_weights", i32 1, i32 640}
!1230 = !{!"branch_weights", i32 3103, i32 0}
!1231 = distinct !{!1231, !654}
!1232 = !{!"tree-sra.c:dump_access_tree_1"}
!1233 = distinct !{!1233, !654}
!1234 = distinct !{!1234, !654}
!1235 = !{!"tree-sra.c:dump_access"}
!1236 = !{!"function_entry_count", i64 156539}
!1237 = !{!"tree-sra.c:get_access_for_expr"}
!1238 = !{!"branch_weights", i32 1, i32 156540}
!1239 = !{!"branch_weights", i32 1056, i32 155485}
!1240 = !{!"branch_weights", i32 21823, i32 133663}
!1241 = !{!"branch_weights", i32 15032, i32 6792}
!1242 = !{!"function_entry_count", i64 8366}
!1243 = !{!"tree-sra.c:get_access_replacement"}
!1244 = !{!"branch_weights", i32 1, i32 8367}
!1245 = !{!746, !630, i64 104}
!1246 = !{!"branch_weights", i32 2432, i32 5936}
!1247 = !{!"function_entry_count", i64 572}
!1248 = !{!"tree-sra.c:generate_subtree_copies"}
!1249 = !{!"branch_weights", i32 1601, i32 1}
!1250 = !{!"branch_weights", i32 76, i32 1526}
!1251 = !{!"branch_weights", i32 1, i32 1526}
!1252 = !{!"branch_weights", i32 929, i32 598}
!1253 = !{!"branch_weights", i32 598, i32 1}
!1254 = !{!"branch_weights", i32 929, i32 1}
!1255 = !{!"branch_weights", i32 742, i32 785}
!1256 = !{!"branch_weights", i32 1576, i32 26}
!1257 = !{!"branch_weights", i32 1457580222, i32 689903426}
!1258 = distinct !{!1258, !654}
!1259 = !{!"function_entry_count", i64 6791}
!1260 = !{!"tree-sra.c:get_var_base_offset_size_access"}
!1261 = !{!"branch_weights", i32 1, i32 127}
!1262 = !{!"branch_weights", i32 6792, i32 50502}
!1263 = !{!"branch_weights", i32 127, i32 7333377}
!1264 = distinct !{!1264, !654}
!1265 = !{!"function_entry_count", i64 7214}
!1266 = !{!"tree-sra.c:find_access_in_subtree"}
!1267 = !{!"branch_weights", i32 1, i32 191}
!1268 = !{!"branch_weights", i32 8245, i32 1128}
!1269 = !{!"branch_weights", i32 7215, i32 2163}
!1270 = !{!"branch_weights", i32 2163, i32 1752}
!1271 = distinct !{!1271, !654}
!1272 = !{!"branch_weights", i32 191, i32 124897}
!1273 = distinct !{!1273, !654}
!1274 = !{!"function_entry_count", i64 2431}
!1275 = !{!"tree-sra.c:create_access_replacement"}
!1276 = !{!"branch_weights", i32 2432, i32 1}
!1277 = !{!"branch_weights", i32 4865, i32 5914624}
!1278 = !{!"branch_weights", i32 679, i32 1754}
!1279 = !{!"branch_weights", i32 3052009, i32 15731}
!1280 = !{!"branch_weights", i32 1747, i32 1}
!1281 = !{!"function_entry_count", i64 2445}
!1282 = !{!"tree-sra.c:get_var_ann"}
!1283 = !{!"branch_weights", i32 2446, i32 5985362, i32 1}
!1284 = !{!"branch_weights", i32 2446, i32 1}
!1285 = !{!"function_entry_count", i64 1760}
!1286 = !{!"tree-sra.c:make_fancy_name"}
!1287 = !{!"branch_weights", i32 1, i32 1761}
!1288 = !{!852, !634, i64 48}
!1289 = !{!"function_entry_count", i64 3596}
!1290 = !{!"tree-sra.c:make_fancy_name_1"}
!1291 = !{!"branch_weights", i32 1761, i32 1837}
!1292 = !{!"branch_weights", i32 1, i32 1265, i32 573, i32 1, i32 1, i32 1}
!1293 = !{!"branch_weights", i32 1, i32 1265}
!1294 = !{!"branch_weights", i32 1, i32 573}
!1295 = !{!"branch_weights", i32 570, i32 4}
!1296 = !{!"branch_weights", i32 1, i32 570}
!1297 = !{!"function_entry_count", i64 3024}
!1298 = !{!"tree-sra.c:make_fancy_decl_name"}
!1299 = !{!"branch_weights", i32 1, i32 3025}
!1300 = !{!"function_entry_count", i64 80270}
!1301 = !{!"tree-sra.c:gimple_location"}
!1302 = !{!"function_entry_count", i64 119130}
!1303 = !{!"tree-sra.c:gimple_assign_lhs"}
!1304 = !{!"function_entry_count", i64 80455}
!1305 = !{!"tree-sra.c:gimple_assign_rhs1"}
!1306 = !{!"tree-sra.c:sra_modify_constructor_assign"}
!1307 = !{!"function_entry_count", i64 2464}
!1308 = !{!"tree-sra.c:gimple_assign_set_lhs"}
!1309 = !{!"branch_weights", i32 1, i32 2465}
!1310 = !{!"branch_weights", i32 15, i32 2451}
!1311 = !{!"function_entry_count", i64 30762}
!1312 = !{!"tree-sra.c:access_has_children_p"}
!1313 = !{!"branch_weights", i32 14864, i32 15900}
!1314 = !{!"function_entry_count", i64 1239}
!1315 = !{!"tree-sra.c:ref_expr_for_all_replacements_p"}
!1316 = !{!"branch_weights", i32 766, i32 1742}
!1317 = !{!"branch_weights", i32 3, i32 1740}
!1318 = !{!"branch_weights", i32 1884, i32 622}
!1319 = !{!"branch_weights", i32 1, i32 622}
!1320 = !{!"branch_weights", i32 1238, i32 1268}
!1321 = distinct !{!1321, !654}
!1322 = !{!"function_entry_count", i64 84}
!1323 = !{!"tree-sra.c:handle_unscalarized_data_in_subtree"}
!1324 = !{!"branch_weights", i32 5, i32 81}
!1325 = !{!"function_entry_count", i64 169}
!1326 = !{!"tree-sra.c:load_assign_lhs_subreplacements"}
!1327 = !{!"branch_weights", i32 28900, i32 341}
!1328 = !{!"branch_weights", i32 130, i32 424}
!1329 = !{!"branch_weights", i32 6, i32 419}
!1330 = !{!"branch_weights", i32 1, i32 419}
!1331 = !{!"branch_weights", i32 3, i32 4}
!1332 = !{!"branch_weights", i32 15991, i32 122}
!1333 = !{!"branch_weights", i32 553, i32 1}
!1334 = !{!"branch_weights", i32 170, i32 384}
!1335 = distinct !{!1335, !654}
!1336 = !{!"tree-sra.c:VEC_constructor_elt_base_length"}
!1337 = !{!1338, !634, i64 0}
!1338 = !{!"VEC_constructor_elt_base", !634, i64 0, !634, i64 4, !631, i64 8}
!1339 = !{!"tree-sra.c:init_subtree_with_zero"}
!1340 = distinct !{!1340, !654}
!1341 = !{!"function_entry_count", i64 2471}
!1342 = !{!"tree-sra.c:gimple_set_op"}
!1343 = !{!"branch_weights", i32 1, i32 2472}
!1344 = !{!"branch_weights", i32 2472, i32 1}
!1345 = !{!"function_entry_count", i64 33}
!1346 = !{!"tree-sra.c:gsi_start"}
!1347 = !{!"branch_weights", i32 34, i32 1}
!1348 = !{!"tree-sra.c:single_succ_edge"}
!1349 = !{!"branch_weights", i32 1, i32 34}
!1350 = !{!696, !630, i64 8}
!1351 = !{!"tree-sra.c:single_succ_p"}
!1352 = !{!"function_entry_count", i64 115778}
!1353 = !{!"tree-sra.c:VEC_edge_base_index"}
!1354 = !{!"function_entry_count", i64 304754}
!1355 = !{!"tree-sra.c:VEC_edge_base_length"}
!1356 = !{!"branch_weights", i32 650, i32 304106}
!1357 = !{!1358, !634, i64 0}
!1358 = !{!"VEC_edge_base", !634, i64 0, !634, i64 4, !631, i64 8}
!1359 = !{!"function_entry_count", i64 3208}
!1360 = !{!"tree-sra.c:delete_base_accesses"}
!1361 = !{!"tree-sra.c:VEC_access_p_heap_free"}
!1362 = !{!"branch_weights", i32 1, i32 4486}
!1363 = !{!"function_entry_count", i64 6652}
!1364 = !{!"tree-sra.c:late_intra_sra"}
!1365 = !{!"tree-sra.c:ipa_early_sra_gate"}
!1366 = !{!"tree-sra.c:ipa_early_sra"}
!1367 = !{!"branch_weights", i32 5507, i32 3459}
!1368 = !{!"branch_weights", i32 2182, i32 1278}
!1369 = !{!"branch_weights", i32 2182, i32 1}
!1370 = !{!"branch_weights", i32 1, i32 1278}
!1371 = !{!694, !634, i64 32}
!1372 = !{!"branch_weights", i32 565, i32 714}
!1373 = !{!"branch_weights", i32 714, i32 1}
!1374 = !{!670, !634, i64 24}
!1375 = !{!670, !634, i64 28}
!1376 = !{!670, !634, i64 32}
!1377 = !{!670, !634, i64 36}
!1378 = !{!"tree-sra.c:ipa_sra_preliminary_function_checks"}
!1379 = !{!"branch_weights", i32 5505, i32 3461}
!1380 = !{!"branch_weights", i32 5505, i32 1}
!1381 = !{!"branch_weights", i32 3461, i32 1}
!1382 = !{!1383, !630, i64 0}
!1383 = !{!"cgraph_node", !630, i64 0, !630, i64 8, !630, i64 16, !630, i64 24, !630, i64 32, !630, i64 40, !630, i64 48, !630, i64 56, !630, i64 64, !630, i64 72, !630, i64 80, !630, i64 88, !630, i64 96, !630, i64 104, !630, i64 112, !630, i64 120, !630, i64 128, !630, i64 136, !1384, i64 144, !1386, i64 184, !1387, i64 224, !1388, i64 232, !1389, i64 256, !697, i64 288, !634, i64 296, !634, i64 300, !634, i64 304, !634, i64 308, !634, i64 308, !634, i64 308, !634, i64 308, !634, i64 308, !634, i64 308, !634, i64 308, !634, i64 308, !634, i64 309, !634, i64 309}
!1384 = !{!"cgraph_local_info", !630, i64 0, !1385, i64 8, !634, i64 32, !634, i64 32, !634, i64 32, !634, i64 32, !634, i64 32, !634, i64 32, !634, i64 32, !634, i64 32}
!1385 = !{!"inline_summary", !697, i64 0, !634, i64 8, !634, i64 12, !634, i64 16, !634, i64 20}
!1386 = !{!"cgraph_global_info", !697, i64 0, !697, i64 8, !630, i64 16, !634, i64 24, !634, i64 28, !634, i64 32, !631, i64 36}
!1387 = !{!"cgraph_rtl_info", !634, i64 0}
!1388 = !{!"cgraph_clone_info", !630, i64 0, !630, i64 8, !630, i64 16}
!1389 = !{!"cgraph_thunk_info", !697, i64 0, !697, i64 8, !630, i64 16, !631, i64 24, !631, i64 25, !631, i64 26}
!1390 = !{!1383, !634, i64 212}
!1391 = !{!1392, !634, i64 8}
!1392 = !{!"param_info", !630, i64 0, !634, i64 8, !631, i64 12, !634, i64 16, !634, i64 20, !630, i64 24}
!1393 = !{!1383, !630, i64 16}
!1394 = !{!"branch_weights", i32 1, i32 3461}
!1395 = !{!"branch_weights", i32 3459, i32 3}
!1396 = !{!"branch_weights", i32 3, i32 1}
!1397 = !{!"function_entry_count", i64 3458}
!1398 = !{!"tree-sra.c:find_param_candidates"}
!1399 = !{!"branch_weights", i32 1, i32 3458}
!1400 = !{!"branch_weights", i32 51322412, i32 330557}
!1401 = !{!"branch_weights", i32 7120, i32 23}
!1402 = !{!"branch_weights", i32 6989, i32 132}
!1403 = !{!"branch_weights", i32 1030757750, i32 -813783315, i32 650291, i32 649893, i32 33124485, i32 1298182, i32 648683}
!1404 = !{!"branch_weights", i32 28462225, i32 90711}
!1405 = !{!"branch_weights", i32 1, i32 5335}
!1406 = !{!"branch_weights", i32 5330, i32 6}
!1407 = !{!"branch_weights", i32 1455, i32 3876}
!1408 = !{!"branch_weights", i32 1, i32 1506}
!1409 = !{!"branch_weights", i32 -606971481, i32 780675963}
!1410 = !{!"branch_weights", i32 1242, i32 1}
!1411 = !{!"branch_weights", i32 1506, i32 1}
!1412 = !{!"branch_weights", i32 3458, i32 3728}
!1413 = distinct !{!1413, !654}
!1414 = !{!"function_entry_count", i64 1277}
!1415 = !{!"tree-sra.c:all_callers_have_enough_arguments_p"}
!1416 = !{!"branch_weights", i32 1, i32 1277}
!1417 = !{!"branch_weights", i32 1277, i32 3229}
!1418 = distinct !{!1418, !654}
!1419 = !{!1420, !630, i64 56}
!1420 = !{!"cgraph_edge", !697, i64 0, !630, i64 8, !630, i64 16, !630, i64 24, !630, i64 32, !630, i64 40, !630, i64 48, !630, i64 56, !630, i64 64, !634, i64 72, !634, i64 76, !634, i64 80, !634, i64 84, !1421, i64 88, !634, i64 90, !634, i64 90, !634, i64 90}
!1421 = !{!"short", !631, i64 0}
!1422 = !{!"branch_weights", i32 1, i32 4506}
!1423 = !{!"tree-sra.c:analyze_all_param_acesses"}
!1424 = !{!"branch_weights", i32 139384, i32 332316, i32 702422}
!1425 = !{!"branch_weights", i32 916, i32 1}
!1426 = !{!"branch_weights", i32 966, i32 1099}
!1427 = !{!"branch_weights", i32 968, i32 132}
!1428 = !{!"branch_weights", i32 959, i32 10}
!1429 = !{!"branch_weights", i32 42, i32 46}
!1430 = !{!"branch_weights", i32 257, i32 703}
!1431 = !{!"branch_weights", i32 2147248951, i32 234697}
!1432 = !{!"branch_weights", i32 1148, i32 916}
!1433 = distinct !{!1433, !654}
!1434 = !{!"branch_weights", i32 204, i32 187986}
!1435 = !{!"branch_weights", i32 187986, i32 204}
!1436 = !{!"branch_weights", i32 473580625, i32 1673903023}
!1437 = !{!"function_entry_count", i64 713}
!1438 = !{!"tree-sra.c:modify_function"}
!1439 = !{!"branch_weights", i32 713, i32 1}
!1440 = !{!"branch_weights", i32 1, i32 0}
!1441 = distinct !{!1441, !654}
!1442 = !{!"tree-sra.c:VEC_ipa_parm_adjustment_t_heap_free"}
!1443 = !{!"branch_weights", i32 1, i32 714}
!1444 = !{!"function_entry_count", i64 10142}
!1445 = !{!"tree-sra.c:is_unused_scalar_param"}
!1446 = !{!"branch_weights", i32 106, i32 10038}
!1447 = !{!"branch_weights", i32 247, i32 9792}
!1448 = !{!"function_entry_count", i64 5329}
!1449 = !{!"tree-sra.c:ptr_parm_has_direct_uses"}
!1450 = !{!"branch_weights", i32 1454, i32 1}
!1451 = !{!"branch_weights", i32 19730, i32 1}
!1452 = !{!"branch_weights", i32 1927, i32 17804}
!1453 = !{!"branch_weights", i32 15464, i32 2340}
!1454 = !{!"branch_weights", i32 2340, i32 0}
!1455 = distinct !{!1455, !654}
!1456 = !{!"branch_weights", i32 562761707, i32 -751182691}
!1457 = !{!"branch_weights", i32 3376, i32 16355}
!1458 = !{!"branch_weights", i32 1, i32 16354}
!1459 = !{!"branch_weights", i32 16354, i32 17112}
!1460 = distinct !{!1460, !654}
!1461 = !{!"branch_weights", i32 -1253599913, i32 591482175}
!1462 = !{!"branch_weights", i32 1161, i32 2216}
!1463 = !{!"branch_weights", i32 1, i32 2215}
!1464 = !{!"branch_weights", i32 6793, i32 1}
!1465 = distinct !{!1465, !654}
!1466 = !{!"branch_weights", i32 1442290, i32 -1846045740}
!1467 = !{!"branch_weights", i32 4579, i32 2215}
!1468 = distinct !{!1468, !654}
!1469 = !{!"branch_weights", i32 19729, i32 1}
!1470 = !{!"branch_weights", i32 216, i32 19729}
!1471 = distinct !{!1471, !654}
!1472 = !{!"branch_weights", i32 15855, i32 3876}
!1473 = !{!"branch_weights", i32 18276, i32 1454}
!1474 = distinct !{!1474, !654}
!1475 = !{!"function_entry_count", i64 9791}
!1476 = !{!"tree-sra.c:has_zero_uses"}
!1477 = !{!1478, !630, i64 8}
!1478 = !{!"ssa_use_operand_d", !630, i64 0, !630, i64 8, !631, i64 16, !630, i64 24}
!1479 = !{!"branch_weights", i32 17, i32 9776}
!1480 = !{!"branch_weights", i32 9776, i32 1}
!1481 = !{!"function_entry_count", i64 6288}
!1482 = !{!"tree-sra.c:first_imm_use_stmt"}
!1483 = !{!1484, !630, i64 8}
!1484 = !{!"immediate_use_iterator_d", !630, i64 0, !630, i64 8, !1478, i64 16, !630, i64 48}
!1485 = !{!1484, !630, i64 0}
!1486 = !{!"branch_weights", i32 5330, i32 960}
!1487 = !{!"function_entry_count", i64 44284}
!1488 = !{!"tree-sra.c:end_imm_use_stmt_p"}
!1489 = !{!"function_entry_count", i64 19729}
!1490 = !{!"tree-sra.c:is_gimple_debug"}
!1491 = !{!"tree-sra.c:gimple_has_lhs"}
!1492 = !{!"branch_weights", i32 3113, i32 16618}
!1493 = !{!"branch_weights", i32 898, i32 2216}
!1494 = !{!"function_entry_count", i64 13428}
!1495 = !{!"tree-sra.c:is_gimple_call"}
!1496 = !{!"function_entry_count", i64 6793}
!1497 = !{!"tree-sra.c:gimple_call_arg"}
!1498 = !{!"tree-sra.c:first_imm_use_on_stmt"}
!1499 = !{!1484, !630, i64 48}
!1500 = !{!"function_entry_count", i64 59617}
!1501 = !{!"tree-sra.c:end_imm_use_on_stmt_p"}
!1502 = !{!"function_entry_count", i64 19944}
!1503 = !{!"tree-sra.c:next_imm_use_on_stmt"}
!1504 = !{!"branch_weights", i32 216, i32 19730}
!1505 = !{!"function_entry_count", i64 3875}
!1506 = !{!"tree-sra.c:end_imm_use_stmt_traverse"}
!1507 = !{!"function_entry_count", i64 15854}
!1508 = !{!"tree-sra.c:next_imm_use_stmt"}
!1509 = !{!1484, !630, i64 24}
!1510 = !{!"branch_weights", i32 14401, i32 1455}
!1511 = !{!1484, !630, i64 16}
!1512 = !{!"branch_weights", i32 1, i32 1455}
!1513 = !{!"tree-sra.c:link_use_stmts_after"}
!1514 = !{!"branch_weights", i32 599, i32 19132}
!1515 = !{!"branch_weights", i32 801, i32 1110}
!1516 = !{!"branch_weights", i32 1312, i32 598}
!1517 = distinct !{!1517, !654}
!1518 = !{!"branch_weights", i32 1, i32 19132}
!1519 = !{!"branch_weights", i32 19131, i32 1}
!1520 = !{!"branch_weights", i32 19145, i32 6013}
!1521 = !{!"branch_weights", i32 6026, i32 19131}
!1522 = distinct !{!1522, !654}
!1523 = !{!"branch_weights", i32 5330, i32 14401}
!1524 = !{!"function_entry_count", i64 46794}
!1525 = !{!"tree-sra.c:get_use_from_ptr"}
!1526 = !{!1478, !630, i64 24}
!1527 = !{!"function_entry_count", i64 598}
!1528 = !{!"tree-sra.c:op_iter_init_phiuse"}
!1529 = !{!1530, !631, i64 0}
!1530 = !{!"ssa_operand_iterator_d", !631, i64 0, !634, i64 4, !630, i64 8, !630, i64 16, !634, i64 24, !634, i64 28, !630, i64 32}
!1531 = !{!"branch_weights", i32 1, i32 599}
!1532 = !{!1530, !630, i64 32}
!1533 = !{!1530, !634, i64 28}
!1534 = !{!1530, !634, i64 4}
!1535 = !{!"tree-sra.c:op_iter_done"}
!1536 = !{!"tree-sra.c:move_use_after_head"}
!1537 = !{!"branch_weights", i32 19730, i32 216}
!1538 = !{!"branch_weights", i32 83, i32 134}
!1539 = !{!"tree-sra.c:op_iter_next_use"}
!1540 = !{!1530, !630, i64 16}
!1541 = !{!"branch_weights", i32 21639, i32 25157}
!1542 = !{!1543, !630, i64 0}
!1543 = !{!"use_optype_d", !630, i64 0, !1478, i64 8}
!1544 = !{!1530, !634, i64 24}
!1545 = !{!"branch_weights", i32 1910, i32 19730}
!1546 = !{!"function_entry_count", i64 19131}
!1547 = !{!"tree-sra.c:op_iter_init_use"}
!1548 = !{!"branch_weights", i32 366033424, i32 38265}
!1549 = !{!"tree-sra.c:gimple_vuse_op"}
!1550 = !{!1543, !630, i64 32}
!1551 = !{!"function_entry_count", i64 19862}
!1552 = !{!"tree-sra.c:delink_imm_use"}
!1553 = !{!1478, !630, i64 0}
!1554 = !{!"branch_weights", i32 1, i32 19863}
!1555 = !{!"tree-sra.c:link_imm_use_to_list"}
!1556 = !{!"function_entry_count", i64 7971}
!1557 = !{!"tree-sra.c:gimple_phi_result"}
!1558 = !{!"tree-sra.c:clear_and_done_ssa_iter"}
!1559 = !{!"tree-sra.c:gimple_phi_num_args"}
!1560 = !{!"function_entry_count", i64 1909}
!1561 = !{!"tree-sra.c:gimple_phi_arg_imm_use_ptr"}
!1562 = !{!"tree-sra.c:gimple_phi_arg"}
!1563 = !{!"branch_weights", i32 1, i32 1910}
!1564 = !{!"tree-sra.c:op_iter_init"}
!1565 = !{!"branch_weights", i32 19132, i32 1}
!1566 = !{!1530, !630, i64 8}
!1567 = !{!"branch_weights", i32 0, i32 -2147483648}
!1568 = !{!1569, !630, i64 0}
!1569 = !{!"def_optype_d", !630, i64 0, !630, i64 8}
!1570 = !{!"branch_weights", i32 112240, i32 2147371408}
!1571 = !{!"branch_weights", i32 740, i32 18393}
!1572 = !{!"tree-sra.c:gimple_def_ops"}
!1573 = !{!"tree-sra.c:gimple_vdef"}
!1574 = !{!"tree-sra.c:gimple_use_ops"}
!1575 = !{!"function_entry_count", i64 21313}
!1576 = !{!"tree-sra.c:gimple_vuse"}
!1577 = !{!"branch_weights", i32 297, i32 21018}
!1578 = !{!"function_entry_count", i64 87052}
!1579 = !{!"tree-sra.c:is_gimple_assign"}
!1580 = !{!"tree-sra.c:splice_all_param_accesses"}
!1581 = !{!"branch_weights", i32 2893, i32 132}
!1582 = !{!"branch_weights", i32 276676, i32 1247936, i32 526}
!1583 = !{!"branch_weights", i32 1877, i32 492}
!1584 = !{!"branch_weights", i32 228, i32 265}
!1585 = !{!"branch_weights", i32 256, i32 10}
!1586 = !{!"branch_weights", i32 1521, i32 1109}
!1587 = !{!"branch_weights", i32 151, i32 959}
!1588 = !{!"branch_weights", i32 959, i32 1}
!1589 = !{!"branch_weights", i32 441, i32 20658, i32 21}
!1590 = !{!"branch_weights", i32 90, i32 850}
!1591 = !{!"branch_weights", i32 2147468930, i32 14718}
!1592 = !{!"branch_weights", i32 1277, i32 1747}
!1593 = distinct !{!1593, !654}
!1594 = !{!"branch_weights", i32 606604375, i32 1540879273}
!1595 = !{!"function_entry_count", i64 765}
!1596 = !{!"tree-sra.c:analyze_caller_dereference_legality"}
!1597 = !{!"branch_weights", i32 766, i32 1}
!1598 = !{!"branch_weights", i32 765, i32 1}
!1599 = !{!"branch_weights", i32 765, i32 935}
!1600 = !{!"branch_weights", i32 871, i32 65}
!1601 = !{!"branch_weights", i32 697, i32 1154}
!1602 = !{!"branch_weights", i32 871, i32 980}
!1603 = distinct !{!1603, !654}
!1604 = !{!"branch_weights", i32 765, i32 934}
!1605 = distinct !{!1605, !654}
!1606 = !{!"tree-sra.c:analyze_modified_params"}
!1607 = !{!"branch_weights", i32 1, i32 1698}
!1608 = !{!"branch_weights", i32 1850, i32 65}
!1609 = !{!"branch_weights", i32 49, i32 14752, i32 7}
!1610 = !{!"branch_weights", i32 1663, i32 182}
!1611 = !{!"branch_weights", i32 1458, i32 726}
!1612 = !{!"branch_weights", i32 938, i32 1245}
!1613 = distinct !{!1613, !654}
!1614 = !{!"branch_weights", i32 1698, i32 216}
!1615 = distinct !{!1615, !654}
!1616 = !{!"branch_weights", i32 934, i32 765}
!1617 = distinct !{!1617, !654}
!1618 = !{!"function_entry_count", i64 6987}
!1619 = !{!"tree-sra.c:no_accesses_p"}
!1620 = !{!"function_entry_count", i64 260}
!1621 = !{!"tree-sra.c:VEC_access_p_base_replace"}
!1622 = !{!"function_entry_count", i64 958}
!1623 = !{!"tree-sra.c:decide_one_param_reduction"}
!1624 = distinct !{!1624, !654}
!1625 = !{!"branch_weights", i32 2030, i32 1}
!1626 = !{!"branch_weights", i32 34, i32 1997}
!1627 = !{!"branch_weights", i32 657060, i32 1207074}
!1628 = !{!"branch_weights", i32 958, i32 1072}
!1629 = distinct !{!1629, !654}
!1630 = !{!"branch_weights", i32 244339, i32 665741}
!1631 = !{!"branch_weights", i32 703, i32 1}
!1632 = !{!"tree-sra.c:turn_representatives_into_adjustments"}
!1633 = !{!"branch_weights", i32 794, i32 839}
!1634 = !{!"branch_weights", i32 708, i32 132}
!1635 = !{!1636, !634, i64 48}
!1636 = !{!"ipa_parm_adjustment", !630, i64 0, !630, i64 8, !630, i64 16, !630, i64 24, !630, i64 32, !697, i64 40, !634, i64 48, !634, i64 52, !634, i64 52, !634, i64 52}
!1637 = !{!1636, !630, i64 0}
!1638 = !{!"branch_weights", i32 985, i32 1}
!1639 = !{!1636, !630, i64 8}
!1640 = !{!1636, !697, i64 40}
!1641 = !{!"branch_weights", i32 1156, i32 33320, i32 34}
!1642 = !{!"branch_weights", i32 544, i32 409}
!1643 = !{!"branch_weights", i32 708, i32 277}
!1644 = distinct !{!1644, !654}
!1645 = !{!"branch_weights", i32 919, i32 713}
!1646 = distinct !{!1646, !654}
!1647 = !{!"function_entry_count", i64 264}
!1648 = !{!"tree-sra.c:unmodified_by_ref_scalar_representative"}
!1649 = !{!"branch_weights", i32 1, i32 265}
!1650 = !{!"branch_weights", i32 160, i32 106}
!1651 = !{!"branch_weights", i32 159, i32 1}
!1652 = !{!"branch_weights", i32 124, i32 151}
!1653 = !{!"branch_weights", i32 159, i32 4225}
!1654 = distinct !{!1654, !654}
!1655 = !{!"function_entry_count", i64 1108}
!1656 = !{!"tree-sra.c:splice_param_accesses"}
!1657 = !{!"branch_weights", i32 1, i32 1109}
!1658 = !{!"branch_weights", i32 1, i32 1070}
!1659 = !{!"branch_weights", i32 2376, i32 2}
!1660 = !{!"branch_weights", i32 1070, i32 1}
!1661 = !{!"branch_weights", i32 6387, i32 1282}
!1662 = !{!"branch_weights", i32 14, i32 1269}
!1663 = !{!"branch_weights", i32 6369, i32 19}
!1664 = !{!"branch_weights", i32 6363, i32 7}
!1665 = !{!"branch_weights", i32 1070, i32 6598}
!1666 = !{!"branch_weights", i32 1891, i32 449}
!1667 = !{!"branch_weights", i32 1307, i32 1070}
!1668 = distinct !{!1668, !654}
!1669 = !{!"branch_weights", i32 1296, i32 38332, i32 36}
!1670 = !{!"branch_weights", i32 959, i32 113}
!1671 = !{!"branch_weights", i32 1, i32 959}
!1672 = !{!"function_entry_count", i64 8744}
!1673 = !{!"tree-sra.c:access_precludes_ipa_sra_p"}
!1674 = !{!"branch_weights", i32 8100, i32 646}
!1675 = !{!"branch_weights", i32 639, i32 8}
!1676 = !{!"branch_weights", i32 1, i32 639}
!1677 = !{!"tree-sra.c:dump_dereferences_table"}
!1678 = distinct !{!1678, !654}
!1679 = distinct !{!1679, !654}
!1680 = !{!"tree-sra.c:propagate_dereference_distances"}
!1681 = !{!"branch_weights", i32 1, i32 765}
!1682 = !{!696, !630, i64 16}
!1683 = !{!"branch_weights", i32 765, i32 33135}
!1684 = distinct !{!1684, !654}
!1685 = !{!"branch_weights", i32 27123, i32 7654}
!1686 = distinct !{!1686, !654}
!1687 = !{!"branch_weights", i32 27122, i32 1}
!1688 = !{i64 0, i64 4, !633, i64 8, i64 8, !629}
!1689 = !{i64 0, i64 8, !629}
!1690 = !{!"branch_weights", i32 1, i32 70769}
!1691 = !{!1692, !630, i64 0}
!1692 = !{!"edge_def", !630, i64 0, !630, i64 8, !631, i64 16, !630, i64 24, !630, i64 32, !634, i64 40, !634, i64 44, !634, i64 48, !634, i64 52, !697, i64 56}
!1693 = !{!"branch_weights", i32 1, i32 113548}
!1694 = !{!1692, !630, i64 8}
!1695 = !{!"branch_weights", i32 42779, i32 70770}
!1696 = !{!"branch_weights", i32 70769, i32 42779}
!1697 = distinct !{!1697, !654}
!1698 = !{!"branch_weights", i32 2540, i32 68231}
!1699 = !{!"branch_weights", i32 43648, i32 27122}
!1700 = distinct !{!1700, !654}
!1701 = !{!"branch_weights", i32 1952473795, i32 195009853}
!1702 = !{!"branch_weights", i32 2463, i32 1}
!1703 = !{!"branch_weights", i32 264, i32 2199}
!1704 = !{!"branch_weights", i32 112, i32 2088}
!1705 = !{!"branch_weights", i32 2199, i32 0}
!1706 = distinct !{!1706, !654}
!1707 = !{!"branch_weights", i32 765, i32 34011}
!1708 = !{!"tree-sra.c:VEC_basic_block_heap_alloc"}
!1709 = !{!"function_entry_count", i64 34775}
!1710 = !{!"tree-sra.c:VEC_basic_block_base_quick_push"}
!1711 = !{!1712, !634, i64 0}
!1712 = !{!"VEC_basic_block_base", !634, i64 0, !634, i64 4, !631, i64 8}
!1713 = !{!"function_entry_count", i64 35540}
!1714 = !{!"tree-sra.c:VEC_basic_block_base_length"}
!1715 = !{!"branch_weights", i32 1, i32 35541}
!1716 = !{!"tree-sra.c:VEC_basic_block_base_pop"}
!1717 = !{!"function_entry_count", i64 73231}
!1718 = !{!"tree-sra.c:ei_start_1"}
!1719 = !{!"function_entry_count", i64 188976}
!1720 = !{!"tree-sra.c:ei_cond"}
!1721 = !{!"branch_weights", i32 115746, i32 73232}
!1722 = !{!"function_entry_count", i64 115745}
!1723 = !{!"tree-sra.c:ei_next"}
!1724 = !{!"branch_weights", i32 1, i32 115746}
!1725 = !{!"branch_weights", i32 115746, i32 1}
!1726 = !{!1727, !634, i64 0}
!1727 = !{!"", !634, i64 0, !630, i64 8}
!1728 = !{!"tree-sra.c:VEC_basic_block_heap_free"}
!1729 = !{!"branch_weights", i32 1, i32 766}
!1730 = !{!"tree-sra.c:ei_end_p"}
!1731 = !{!"branch_weights", i32 650, i32 188328}
!1732 = !{!"tree-sra.c:ei_edge"}
!1733 = !{!"function_entry_count", i64 840283}
!1734 = !{!"tree-sra.c:ei_container"}
!1735 = !{!"branch_weights", i32 1, i32 840284}
!1736 = !{!"function_entry_count", i64 1466}
!1737 = !{!"tree-sra.c:mark_maybe_modified"}
!1738 = !{!"tree-sra.c:VEC_ipa_parm_adjustment_t_heap_alloc"}
!1739 = !{!"function_entry_count", i64 1908}
!1740 = !{!"tree-sra.c:VEC_ipa_parm_adjustment_t_base_quick_push"}
!1741 = !{!1742, !634, i64 0}
!1742 = !{!"VEC_ipa_parm_adjustment_t_base", !634, i64 0, !634, i64 4, !631, i64 8}
!1743 = !{!"function_entry_count", i64 1631}
!1744 = !{!"tree-sra.c:get_param_index"}
!1745 = !{!"branch_weights", i32 127, i32 1}
!1746 = !{!"branch_weights", i32 1632, i32 1621}
!1747 = !{!"branch_weights", i32 127, i32 416129}
!1748 = distinct !{!1748, !654}
!1749 = !{!"tree-sra.c:VEC_tree_heap_free"}
!1750 = !{!"tree-sra.c:VEC_tree_base_length"}
!1751 = !{!"branch_weights", i32 1, i32 1632}
!1752 = !{!1753, !634, i64 0}
!1753 = !{!"VEC_tree_base", !634, i64 0, !634, i64 4, !631, i64 8}
!1754 = !{!"function_entry_count", i64 3251}
!1755 = !{!"tree-sra.c:VEC_tree_base_index"}
!1756 = !{!"tree-sra.c:create_abstract_origin"}
!1757 = !{!"function_entry_count", i64 120667}
!1758 = !{!"tree-sra.c:sra_ipa_modify_expr"}
!1759 = !{!"branch_weights", i32 42004048, i32 -1071129379}
!1760 = !{!"branch_weights", i32 10831258, i32 -954468330}
!1761 = !{!"branch_weights", i32 978692010, i32 -2082403815}
!1762 = !{!"branch_weights", i32 93344, i32 26938}
!1763 = !{!"branch_weights", i32 13187244, i32 28702901}
!1764 = !{!"branch_weights", i32 8963, i32 7164}
!1765 = !{!"branch_weights", i32 4129024, i32 14094788}
!1766 = !{!"branch_weights", i32 1554, i32 14572}
!1767 = distinct !{!1767, !654}
!1768 = !{!"branch_weights", i32 25070049, i32 9650415}
!1769 = !{!1636, !630, i64 16}
!1770 = !{!"branch_weights", i32 579, i32 4429}
!1771 = !{!"branch_weights", i32 4429, i32 1}
!1772 = !{!"branch_weights", i32 5007, i32 1}
!1773 = !{!"branch_weights", i32 1, i32 5007}
!1774 = !{!"function_entry_count", i64 61013}
!1775 = !{!"tree-sra.c:sra_ipa_modify_assign"}
!1776 = !{!"branch_weights", i32 12546, i32 48469}
!1777 = !{!"branch_weights", i32 43463, i32 5007}
!1778 = !{!"branch_weights", i32 8, i32 5000}
!1779 = !{!"branch_weights", i32 4281, i32 720}
!1780 = !{!"branch_weights", i32 1, i32 4281}
!1781 = !{!"branch_weights", i32 29243344, i32 2118240304}
!1782 = !{!"function_entry_count", i64 74667}
!1783 = !{!"tree-sra.c:replace_removed_params_ssa_names"}
!1784 = !{!"branch_weights", i32 7374, i32 67295}
!1785 = !{!"branch_weights", i32 6282, i32 61014}
!1786 = !{!"branch_weights", i32 1, i32 6282}
!1787 = !{!"branch_weights", i32 68967, i32 5702}
!1788 = !{!"branch_weights", i32 194, i32 68774}
!1789 = !{!"branch_weights", i32 165, i32 30}
!1790 = !{!"branch_weights", i32 30, i32 1}
!1791 = !{!"branch_weights", i32 16, i32 15}
!1792 = !{!"branch_weights", i32 9, i32 8}
!1793 = !{!"tree-sra.c:sra_ipa_reset_debug_stmts"}
!1794 = !{!"branch_weights", i32 1116, i32 794}
!1795 = !{!"branch_weights", i32 34, i32 1083}
!1796 = !{!"branch_weights", i32 124, i32 960}
!1797 = !{!"branch_weights", i32 0, i32 1}
!1798 = distinct !{!1798, !654}
!1799 = !{!"branch_weights", i32 713, i32 1196}
!1800 = distinct !{!1800, !654}
!1801 = !{!"tree-sra.c:convert_callers"}
!1802 = !{!"branch_weights", i32 1, i32 713}
!1803 = !{!1420, !630, i64 8}
!1804 = !{!"branch_weights", i32 2409, i32 1}
!1805 = !{!1383, !634, i64 296}
!1806 = !{!1420, !630, i64 16}
!1807 = !{!"branch_weights", i32 713, i32 1696}
!1808 = distinct !{!1808, !654}
!1809 = !{!"branch_weights", i32 1758, i32 652}
!1810 = distinct !{!1810, !654}
!1811 = !{!"branch_weights", i32 37, i32 678}
!1812 = !{!"branch_weights", i32 1, i32 147}
!1813 = !{!"branch_weights", i32 577, i32 1}
!1814 = !{!"branch_weights", i32 156, i32 1522}
!1815 = !{!"branch_weights", i32 2, i32 155}
!1816 = !{!"branch_weights", i32 39, i32 117}
!1817 = !{!"branch_weights", i32 39, i32 1}
!1818 = !{!"branch_weights", i32 1100, i32 577}
!1819 = distinct !{!1819, !654}
!1820 = !{!"branch_weights", i32 147, i32 2165}
!1821 = distinct !{!1821, !654}
!1822 = !{!"function_entry_count", i64 121573}
!1823 = !{!"tree-sra.c:VEC_ipa_parm_adjustment_t_base_length"}
!1824 = !{!"branch_weights", i32 1, i32 121574}
!1825 = !{!"function_entry_count", i64 18781}
!1826 = !{!"tree-sra.c:VEC_ipa_parm_adjustment_t_base_index"}
!1827 = !{!"function_entry_count", i64 193}
!1828 = !{!"tree-sra.c:get_adjustment_for_base"}
!1829 = !{!"branch_weights", i32 164, i32 1}
!1830 = !{!"branch_weights", i32 271, i32 479}
!1831 = !{!"branch_weights", i32 30, i32 242}
!1832 = !{!"branch_weights", i32 164, i32 585}
!1833 = distinct !{!1833, !654}
!1834 = !{!"function_entry_count", i64 29}
!1835 = !{!"tree-sra.c:get_replaced_param_substitute"}
!1836 = !{!1636, !630, i64 24}
!1837 = !{!"branch_weights", i32 15, i32 16}
!1838 = !{!"branch_weights", i32 31, i32 225}
!1839 = !{!"branch_weights", i32 15, i32 1}
!1840 = !{!"tree-sra.c:make_ssa_name"}
!1841 = !{!"function_entry_count", i64 7}
!1842 = !{!"tree-sra.c:gimple_call_set_lhs"}
!1843 = !{!"function_entry_count", i64 8}
!1844 = !{!"tree-sra.c:gimple_phi_set_result"}
!1845 = !{!"tree-sra.c:gimple_debug_bind_reset_value"}
