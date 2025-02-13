; ModuleID = 'gimple.c'
source_filename = "gimple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
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
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_catch = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_eh_filter = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_eh_mnt = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_try = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_wce = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_eh_ctrl = type { %struct.gimple_statement_base, i32 }
%struct.gimple_statement_omp_critical = type { %struct.gimple_statement_omp, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_omp_for = type { %struct.gimple_statement_omp, ptr, i64, ptr, ptr }
%struct.gimple_statement_omp_parallel = type { %struct.gimple_statement_omp, ptr, ptr, ptr }
%struct.gimple_statement_omp_task = type { %struct.gimple_statement_omp_parallel, ptr, ptr, ptr }
%struct.gimple_statement_omp_continue = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_omp_sections = type { %struct.gimple_statement_omp, ptr, ptr }
%struct.gimple_statement_omp_single = type { %struct.gimple_statement_omp, ptr }
%struct.gimple_statement_omp_atomic_load = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_omp_atomic_store = type { %struct.gimple_statement_base, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.gimple_omp_for_iter = type { i32, ptr, ptr, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.sccs = type { i32, i32, i8, i32 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.type_pair_d = type { i32, i32, i32 }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.count_ptr_d = type { ptr, i32, i32 }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.tree_binfo = type { %struct.tree_common, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.VEC_tree_none }
%struct.VEC_tree_none = type { %struct.VEC_tree_base }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }

@gimple_ops_offset_ = dso_local local_unnamed_addr constant <{ i64, i64, i64, i64, i64, [18 x i64] }> <{ i64 0, i64 48, i64 0, i64 64, i64 80, [18 x i64] zeroinitializer }>, align 16
@gimple_code_name = dso_local local_unnamed_addr constant [35 x ptr] [ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], align 16
@.str = private unnamed_addr constant [18 x i8] c"gimple_error_mark\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"gimple_cond\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"gimple_debug\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"gimple_goto\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"gimple_label\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"gimple_switch\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"gimple_assign\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"gimple_asm\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"gimple_call\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"gimple_return\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"gimple_bind\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"gimple_catch\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"gimple_eh_filter\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"gimple_eh_must_not_throw\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"gimple_resx\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"gimple_eh_dispatch\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"gimple_phi\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"gimple_try\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"gimple_nop\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"gimple_omp_atomic_load\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"gimple_omp_atomic_store\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"gimple_omp_continue\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"gimple_omp_critical\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"gimple_omp_for\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"gimple_omp_master\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"gimple_omp_ordered\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"gimple_omp_parallel\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"gimple_omp_task\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"gimple_omp_return\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"gimple_omp_section\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"gimple_omp_sections\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"gimple_omp_sections_switch\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"gimple_omp_single\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"gimple_predict\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"gimple_with_cleanup_expr\00", align 1
@gss_for_code_ = dso_local local_unnamed_addr constant [35 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3, i32 4, i32 3, i32 3, i32 5, i32 8, i32 9, i32 10, i32 11, i32 11, i32 6, i32 7, i32 0, i32 21, i32 22, i32 20, i32 14, i32 15, i32 13, i32 13, i32 16, i32 17, i32 0, i32 13, i32 18, i32 0, i32 19, i32 0, i32 12], align 16
@gsstruct_code_size = internal unnamed_addr constant [23 x i64] [i64 32, i64 56, i64 64, i64 72, i64 88, i64 56, i64 96, i64 48, i64 48, i64 48, i64 40, i64 40, i64 40, i64 40, i64 48, i64 72, i64 64, i64 88, i64 56, i64 48, i64 48, i64 48, i64 40], align 16
@.str.36 = private unnamed_addr constant [9 x i8] c"gimple.c\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_seq_cache = internal global ptr null, align 8
@input_location = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.39 = private unnamed_addr constant [22 x i8] c"No gimple statistics\0A\00", align 1
@gimple_rhs_class_table = dso_local local_unnamed_addr constant [191 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00\00\00\00\03\03\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\01\01\02\01\01\01\01\01\01\01\02\00\00\01\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\03\00\00\03\00\01\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\03\00\03\00\03\03\03\00\00\00\00\00\00\00\00\00\00\00\02\02\02\03\01\01\01\01\01\01\02\02\02\02\01\01\01\01\01\01\01\00\00\00\00\00\00", align 16
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@gimple_types = internal unnamed_addr global ptr null, align 8
@type_hash_cache = internal unnamed_addr global ptr null, align 8
@next_dfs_num = internal unnamed_addr global i32 0, align 4
@gtc_visited = internal unnamed_addr global ptr null, align 8
@gtc_ob = internal global %struct.obstack zeroinitializer, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.41 = private unnamed_addr constant [85 x i8] c"GIMPLE type table: size %ld, %ld elements, %ld searches, %ld collisions (ratio: %f)\0A\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"GIMPLE type table is empty\0A\00", align 1
@.str.43 = private unnamed_addr constant [96 x i8] c"GIMPLE type comparison table: size %ld, %ld elements, %ld searches, %ld collisions (ratio: %f)\0A\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"GIMPLE type comparison table is empty\0A\00", align 1
@flag_lto_report = external local_unnamed_addr global i32, align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@gt_ggc_rd_gt_gimple_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @gimple_seq_cache, i64 1, i64 8, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@switch.table.gimple_has_substatements = private unnamed_addr constant [25 x i8] c"\01\01\01\00\00\00\00\01\00\00\00\00\01\01\01\01\01\01\00\01\01\00\01\00\01", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_alloc_stat(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !525 {
  %3 = tail call fastcc i64 @gimple_size(i32 noundef %0) #22
  %4 = icmp eq i32 %1, 0
  %5 = add i32 %1, -1
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 3
  %8 = select i1 %4, i64 0, i64 %7, !prof !526
  %9 = add i64 %3, %8
  %10 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %9) #23
  tail call fastcc void @gimple_set_code(ptr noundef %10, i32 noundef %0) #22
  tail call fastcc void @gimple_set_num_ops(ptr noundef %10, i32 noundef %1) #22
  %11 = load i32, ptr %10, align 8
  %12 = or i32 %11, 8192
  store i32 %12, ptr %10, align 8
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @gimple_size(i32 noundef %0) unnamed_addr #2 !prof !527 !PGOFuncName !528 {
  %2 = tail call fastcc i32 @gss_for_code(i32 noundef %0) #22
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [23 x i64], ptr @gsstruct_code_size, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !529
  ret i64 %5
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !prof !525 !PGOFuncName !533 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %1, 255
  %5 = and i32 %3, -256
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_num_ops(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #5 !prof !534 !PGOFuncName !535 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 4, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #2 !prof !537 !PGOFuncName !538 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !539
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_return(ptr noundef %0) local_unnamed_addr #0 !prof !541 {
  %2 = tail call fastcc ptr @gimple_build_with_ops_stat(i32 noundef 9, i32 noundef 0, i32 noundef 1) #22
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4, !prof !542

4:                                                ; preds = %1
  tail call fastcc void @gimple_return_set_retval(ptr noundef %2, ptr noundef nonnull %0) #22
  br label %5

5:                                                ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @gimple_build_with_ops_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !543 !PGOFuncName !544 {
  %4 = tail call ptr @gimple_alloc_stat(i32 noundef %0, i32 noundef %2) #22
  tail call fastcc void @gimple_set_subcode(ptr noundef %4, i32 noundef %1) #22
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_return_set_retval(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !545 !PGOFuncName !546 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_subcode(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !547 !PGOFuncName !548 {
  %3 = icmp ult i32 %1, 65536
  br i1 %3, label %5, label %4, !prof !549

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 166, ptr noundef nonnull @.str.37) #23
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr %0, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %6, 65535
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %0, align 8
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !550 !PGOFuncName !551 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #22, !range !552
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !553

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !554

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1665, ptr noundef nonnull @.str.37) #23
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #22
  %12 = zext i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !555
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !557 !PGOFuncName !558 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !560 !PGOFuncName !561 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !536
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !562 !PGOFuncName !563 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #22
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !529
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !564

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1622, ptr noundef nonnull @.str.37) #23
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !565 !PGOFuncName !566 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !567 !PGOFuncName !568 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #22
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_call_vec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !569 {
  %3 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %1) #22
  %4 = tail call fastcc ptr @gimple_build_call_1(ptr noundef %0, i32 noundef %3) #22
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %11, label %6, !prof !570

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %2 ]
  %8 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %7) #22
  tail call fastcc void @gimple_call_set_arg(ptr noundef %4, i32 noundef %7, ptr noundef %8) #22
  %9 = add nuw i32 %7, 1
  %10 = icmp eq i32 %9, %3
  br i1 %10, label %11, label %6, !prof !571, !llvm.loop !572

11:                                               ; preds = %6, %2
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !574 !PGOFuncName !575 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !576

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !577
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @gimple_build_call_1(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !579 !PGOFuncName !580 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_build_with_ops_stat(i32 noundef 8, i32 noundef 0, i32 noundef %3) #22
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 29
  br i1 %7, label %8, label %10, !prof !581

8:                                                ; preds = %2
  %9 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %0) #23
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ %0, %2 ]
  tail call fastcc void @gimple_set_op(ptr noundef %4, i32 noundef 1, ptr noundef %11) #22
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_arg(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !582 !PGOFuncName !583 {
  %4 = add i32 %1, 3
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %4, ptr noundef %2) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !584 !PGOFuncName !585 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !555
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_call(ptr noundef %0, i32 noundef %1, ...) local_unnamed_addr #0 !prof !586 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 29
  br i1 %6, label %11, label %7, !prof !587

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @is_gimple_call_addr(ptr noundef nonnull %0) #22, !range !552
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 243, ptr noundef nonnull @.str.37) #23
  br label %11

11:                                               ; preds = %2, %7, %10
  %12 = tail call fastcc ptr @gimple_build_call_1(ptr noundef nonnull %0, i32 noundef %1) #22
  call void @llvm.va_start(ptr nonnull %3)
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %33, label %14, !prof !588

14:                                               ; preds = %11, %28
  %15 = phi i32 [ %31, %28 ], [ 0, %11 ]
  %16 = load i32, ptr %3, align 16
  %17 = icmp ult i32 %16, 41
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3
  %20 = load ptr, ptr %19, align 16
  %21 = zext nneg i32 %16 to i64
  %22 = getelementptr i8, ptr %20, i64 %21
  %23 = add nuw nsw i32 %16, 8
  store i32 %23, ptr %3, align 16
  br label %28

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr i8, ptr %26, i64 8
  store ptr %27, ptr %25, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = phi ptr [ %22, %18 ], [ %26, %24 ]
  %30 = load ptr, ptr %29, align 8
  call fastcc void @gimple_call_set_arg(ptr noundef %12, i32 noundef %15, ptr noundef %30) #22
  %31 = add nuw i32 %15, 1
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %33, label %14, !prof !589, !llvm.loop !590

33:                                               ; preds = %28, %11
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @is_gimple_call_addr(ptr noundef %0) local_unnamed_addr #0 !prof !591 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 50
  br i1 %4, label %7, label %5, !prof !592

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %0) #22, !range !552
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %5 ]
  ret i8 %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_call_from_tree(ptr noundef %0) local_unnamed_addr #0 !prof !593 {
  %2 = tail call ptr @get_callee_fndecl(ptr noundef %0) #23
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 59
  br i1 %5, label %7, label %6, !prof !594

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 267, ptr noundef nonnull @.str.37) #23
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !536
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !536
  %12 = trunc i64 %11 to i32
  %13 = add i32 %12, -3
  %14 = icmp eq ptr %2, null
  br i1 %14, label %15, label %18, !prof !595

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !536
  br label %18

18:                                               ; preds = %7, %15
  %19 = phi ptr [ %17, %15 ], [ %2, %7 ]
  %20 = tail call fastcc ptr @gimple_build_call_1(ptr noundef %19, i32 noundef %13) #22
  %21 = icmp eq i32 %13, 0
  br i1 %21, label %33, label %22, !prof !596

22:                                               ; preds = %18
  %23 = zext i32 %13 to i64
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %31, %24 ]
  %26 = trunc i64 %25 to i32
  %27 = add nuw i64 %25, 3
  %28 = and i64 %27, 4294967295
  %29 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !536
  tail call fastcc void @gimple_call_set_arg(ptr noundef %20, i32 noundef %26, ptr noundef %30) #22
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %23
  br i1 %32, label %33, label %24, !prof !597, !llvm.loop !598

33:                                               ; preds = %24, %18
  %34 = tail call ptr @tree_block(ptr noundef nonnull %0) #23
  %35 = load ptr, ptr %34, align 8, !tbaa !555
  tail call fastcc void @gimple_set_block(ptr noundef %20, ptr noundef %35) #22
  %36 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !536
  tail call fastcc void @gimple_call_set_chain(ptr noundef %20, ptr noundef %37) #22
  %38 = load i64, ptr %0, align 8
  %39 = lshr i64 %38, 18
  %40 = trunc i64 %39 to i8
  %41 = and i8 %40, 1
  tail call fastcc void @gimple_call_set_tail(ptr noundef %20, i8 noundef zeroext %41) #22
  %42 = load i64, ptr %0, align 8
  %43 = trunc i64 %42 to i32
  %44 = lshr i32 %43, 26
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 1
  tail call fastcc void @gimple_call_set_cannot_inline(ptr noundef %20, i8 noundef zeroext %46) #22
  %47 = load i64, ptr %0, align 8
  %48 = trunc i64 %47 to i32
  %49 = lshr i32 %48, 28
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  tail call fastcc void @gimple_call_set_return_slot_opt(ptr noundef %20, i8 noundef zeroext %51) #22
  %52 = load i64, ptr %0, align 8
  %53 = trunc i64 %52 to i32
  %54 = lshr i32 %53, 29
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  tail call fastcc void @gimple_call_set_from_thunk(ptr noundef %20, i8 noundef zeroext %56) #22
  %57 = load i64, ptr %0, align 8
  %58 = trunc i64 %57 to i32
  %59 = lshr i32 %58, 27
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  tail call fastcc void @gimple_call_set_va_arg_pack(ptr noundef %20, i8 noundef zeroext %61) #22
  %62 = load i64, ptr %0, align 8
  %63 = lshr i64 %62, 23
  %64 = trunc i64 %63 to i8
  %65 = and i8 %64, 1
  tail call fastcc void @gimple_set_no_warning(ptr noundef %20, i8 noundef zeroext %65) #22
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_block(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !599 !PGOFuncName !600 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: optsize
declare ptr @tree_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_chain(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !599 !PGOFuncName !601 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 2, ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_set_tail(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #4 !prof !599 !PGOFuncName !602 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  br i1 %3, label %7, label %5, !prof !603

5:                                                ; preds = %2
  %6 = or i32 %4, 524288
  br label %9

7:                                                ; preds = %2
  %8 = and i32 %4, -524289
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %8, %7 ], [ %6, %5 ]
  store i32 %10, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_set_cannot_inline(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #4 !prof !599 !PGOFuncName !604 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  br i1 %3, label %7, label %5, !prof !603

5:                                                ; preds = %2
  %6 = or i32 %4, 65536
  br label %9

7:                                                ; preds = %2
  %8 = and i32 %4, -65537
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %8, %7 ], [ %6, %5 ]
  store i32 %10, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_set_return_slot_opt(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #4 !prof !599 !PGOFuncName !605 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  br i1 %3, label %7, label %5, !prof !606

5:                                                ; preds = %2
  %6 = or i32 %4, 262144
  br label %9

7:                                                ; preds = %2
  %8 = and i32 %4, -262145
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %8, %7 ], [ %6, %5 ]
  store i32 %10, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_set_from_thunk(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #4 !prof !599 !PGOFuncName !607 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  br i1 %3, label %7, label %5, !prof !603

5:                                                ; preds = %2
  %6 = or i32 %4, 131072
  br label %9

7:                                                ; preds = %2
  %8 = and i32 %4, -131073
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %8, %7 ], [ %6, %5 ]
  store i32 %10, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_set_va_arg_pack(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #4 !prof !599 !PGOFuncName !608 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  br i1 %3, label %7, label %5, !prof !603

5:                                                ; preds = %2
  %6 = or i32 %4, 1048576
  br label %9

7:                                                ; preds = %2
  %8 = and i32 %4, -1048577
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %8, %7 ], [ %6, %5 ]
  store i32 %10, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_no_warning(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #4 !prof !593 !PGOFuncName !609 {
  %3 = load i32, ptr %0, align 8
  %4 = and i8 %1, 1
  %5 = zext nneg i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 8
  %7 = and i32 %3, -257
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @extract_ops_from_tree(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !prof !610 {
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  store i32 %7, ptr %1, align 4, !tbaa !539
  %8 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %7) #22, !range !559
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %19 [
    i8 1, label %10
    i8 2, label %15
    i8 3, label %18
  ], !prof !611

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !536
  store ptr %12, ptr %2, align 8, !tbaa !555
  %13 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !536
  store ptr %14, ptr %3, align 8, !tbaa !555
  br label %20

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !536
  store ptr %17, ptr %2, align 8, !tbaa !555
  store ptr null, ptr %3, align 8, !tbaa !555
  br label %20

18:                                               ; preds = %4
  store ptr %0, ptr %2, align 8, !tbaa !555
  store ptr null, ptr %3, align 8, !tbaa !555
  br label %20

19:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 318, ptr noundef nonnull @.str.37) #23
  br label %20

20:                                               ; preds = %15, %19, %18, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #2 !prof !612 !PGOFuncName !613 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !536
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_assign_stat(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !614 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @extract_ops_from_tree(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %6 = load i32, ptr %3, align 4, !tbaa !539
  %7 = load ptr, ptr %4, align 8, !tbaa !555
  %8 = load ptr, ptr %5, align 8, !tbaa !555
  %9 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef %6, ptr noundef %0, ptr noundef %7, ptr noundef %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_assign_with_ops_stat(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !615 {
  %5 = tail call i32 @get_gimple_rhs_num_ops(i32 noundef %0) #22, !range !616
  %6 = add nuw nsw i32 %5, 1
  %7 = tail call fastcc ptr @gimple_build_with_ops_stat(i32 noundef 6, i32 noundef %0, i32 noundef %6) #22
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %7, ptr noundef %1) #22
  tail call fastcc void @gimple_assign_set_rhs1(ptr noundef %7, ptr noundef %2) #22
  %8 = icmp eq ptr %3, null
  br i1 %8, label %13, label %9, !prof !617

9:                                                ; preds = %4
  %10 = icmp ugt i32 %5, 1
  br i1 %10, label %12, label %11, !prof !618

11:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 360, ptr noundef nonnull @.str.37) #23
  br label %12

12:                                               ; preds = %9, %11
  tail call fastcc void @gimple_assign_set_rhs2(ptr noundef %7, ptr noundef nonnull %3) #22
  br label %13

13:                                               ; preds = %12, %4
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_gimple_rhs_num_ops(i32 noundef %0) local_unnamed_addr #0 !prof !619 {
  %2 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %0) #22, !range !559
  %3 = and i32 %2, 254
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %8, label %5, !prof !620

5:                                                ; preds = %1
  %6 = icmp eq i32 %2, 1
  br i1 %6, label %8, label %7, !prof !621

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 2378, ptr noundef nonnull @.str.37) #23
  br label %8

8:                                                ; preds = %5, %1, %7
  %9 = phi i32 [ 0, %7 ], [ 1, %1 ], [ 2, %5 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !622 !PGOFuncName !623 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #22
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4, !prof !624

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10, !prof !625

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !536
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !626 !PGOFuncName !627 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs2(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !628 !PGOFuncName !629 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 2, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimplify_assign(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !630 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !536
  %6 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %5, ptr noundef %0, ptr noundef %1) #23
  tail call void @gimplify_and_add(ptr noundef %6, ptr noundef %2) #23
  tail call void @ggc_free(ptr noundef %6) #23
  %7 = load ptr, ptr %2, align 8, !tbaa !555
  %8 = tail call fastcc ptr @gimple_seq_last_stmt(ptr noundef %7) #22
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimplify_and_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_seq_last_stmt(ptr noundef readonly %0) unnamed_addr #8 !prof !630 !PGOFuncName !631 {
  %2 = tail call fastcc ptr @gimple_seq_last(ptr noundef %0) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !632

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !633
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #6 !prof !635 !PGOFuncName !636 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !637

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !638
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_cond(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !640 {
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !539
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %11, label %10, !prof !641

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 398, ptr noundef nonnull @.str.37) #23
  br label %11

11:                                               ; preds = %5, %10
  %12 = tail call fastcc ptr @gimple_build_with_ops_stat(i32 noundef 1, i32 noundef %0, i32 noundef 4) #22
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %12, ptr noundef %1) #22
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %12, ptr noundef %2) #22
  tail call fastcc void @gimple_cond_set_true_label(ptr noundef %12, ptr noundef %3) #22
  tail call fastcc void @gimple_cond_set_false_label(ptr noundef %12, ptr noundef %4) #22
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !642 !PGOFuncName !643 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !642 !PGOFuncName !644 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_true_label(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !640 !PGOFuncName !645 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 2, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_false_label(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !640 !PGOFuncName !646 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 3, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_cond_get_ops_from_tree(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !prof !647 {
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !539
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %11, label %14, !prof !648

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !536
  br label %14

14:                                               ; preds = %4, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %4 ]
  %16 = icmp eq i32 %8, 5
  %17 = icmp eq i64 %6, 96
  %18 = or i1 %16, %17
  br i1 %18, label %31, label %19, !prof !649

19:                                               ; preds = %14
  %20 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #22, !range !552
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %31, !prof !650

22:                                               ; preds = %19
  %23 = load i64, ptr %0, align 8
  %24 = trunc i64 %23 to i16
  switch i16 %24, label %30 [
    i16 32, label %31
    i16 34, label %31
    i16 36, label %31
    i16 141, label %25
  ], !prof !651

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !536
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %30 [
    i16 32, label %31
    i16 34, label %31
    i16 36, label %31
  ], !prof !652

30:                                               ; preds = %25, %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 418, ptr noundef nonnull @.str.37) #23
  br label %31

31:                                               ; preds = %25, %25, %25, %22, %22, %22, %14, %19, %30
  tail call void @extract_ops_from_tree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  %32 = load i32, ptr %1, align 4, !tbaa !539
  %33 = icmp eq i32 %32, 96
  br i1 %33, label %34, label %40, !prof !653

34:                                               ; preds = %31
  store i32 101, ptr %1, align 4, !tbaa !539
  %35 = load ptr, ptr %2, align 8, !tbaa !555
  %36 = icmp eq ptr %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %3, align 8, !tbaa !555
  %39 = icmp eq ptr %38, null
  br i1 %39, label %54, label %51

40:                                               ; preds = %31
  %41 = sext i32 %32 to i64
  %42 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !539
  %44 = icmp eq i32 %43, 5
  br i1 %44, label %60, label %45, !prof !654

45:                                               ; preds = %40
  store i32 102, ptr %1, align 4, !tbaa !539
  %46 = load ptr, ptr %2, align 8, !tbaa !555
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48, !prof !655

48:                                               ; preds = %45
  %49 = load ptr, ptr %3, align 8, !tbaa !555
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51, !prof !656

51:                                               ; preds = %45, %48, %34, %37
  %52 = phi i32 [ 426, %37 ], [ 426, %34 ], [ 433, %48 ], [ 433, %45 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef %52, ptr noundef nonnull @.str.37) #23
  %53 = load ptr, ptr %2, align 8, !tbaa !555
  br label %54

54:                                               ; preds = %51, %48, %37
  %55 = phi ptr [ %35, %37 ], [ %46, %48 ], [ %53, %51 ]
  %56 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !536
  %58 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !555
  %59 = tail call ptr @fold_convert_loc(i32 noundef %15, ptr noundef %57, ptr noundef %58) #23
  store ptr %59, ptr %3, align 8, !tbaa !555
  br label %60

60:                                               ; preds = %54, %40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @is_gimple_min_invariant(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !657 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 121
  br i1 %4, label %5, label %7, !prof !658

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @is_gimple_invariant_address(ptr noundef nonnull %0) #22, !range !552
  br label %9

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @is_gimple_constant(ptr noundef nonnull %0) #22, !range !552
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i8 [ %6, %5 ], [ %8, %7 ]
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_cond_from_tree(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !659 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @gimple_cond_get_ops_from_tree(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %7 = load i32, ptr %4, align 4, !tbaa !539
  %8 = load ptr, ptr %5, align 8, !tbaa !555
  %9 = load ptr, ptr %6, align 8, !tbaa !555
  %10 = tail call ptr @gimple_build_cond(i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %1, ptr noundef %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_cond_set_condition_from_tree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !660 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @gimple_cond_get_ops_from_tree(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %6 = load i32, ptr %3, align 4, !tbaa !539
  %7 = load ptr, ptr %4, align 8, !tbaa !555
  %8 = load ptr, ptr %5, align 8, !tbaa !555
  tail call fastcc void @gimple_cond_set_condition(ptr noundef %0, i32 noundef %6, ptr noundef %7, ptr noundef %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_condition(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !660 !PGOFuncName !661 {
  tail call fastcc void @gimple_cond_set_code(ptr noundef %0, i32 noundef %1) #22
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #22
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !prof !660 !PGOFuncName !662 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_label(ptr noundef %0) local_unnamed_addr #0 !prof !663 {
  %2 = tail call fastcc ptr @gimple_build_with_ops_stat(i32 noundef 4, i32 noundef 0, i32 noundef 1) #22
  tail call fastcc void @gimple_label_set_label(ptr noundef %2, ptr noundef %0) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_label_set_label(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !663 !PGOFuncName !664 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_goto(ptr noundef %0) local_unnamed_addr #0 !prof !665 {
  %2 = tail call fastcc ptr @gimple_build_with_ops_stat(i32 noundef 3, i32 noundef 0, i32 noundef 1) #22
  tail call fastcc void @gimple_goto_set_dest(ptr noundef %2, ptr noundef %0) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_goto_set_dest(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !665 !PGOFuncName !666 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_nop() local_unnamed_addr #0 !prof !667 {
  %1 = tail call ptr @gimple_alloc_stat(i32 noundef 18, i32 noundef 0) #22
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_bind(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !668 {
  %4 = tail call ptr @gimple_alloc_stat(i32 noundef 10, i32 noundef 0) #22
  tail call fastcc void @gimple_bind_set_vars(ptr noundef %4, ptr noundef %0) #22
  %5 = icmp eq ptr %1, null
  br i1 %5, label %7, label %6, !prof !669

6:                                                ; preds = %3
  tail call fastcc void @gimple_bind_set_body(ptr noundef %4, ptr noundef nonnull %1) #22
  br label %7

7:                                                ; preds = %6, %3
  %8 = icmp eq ptr %2, null
  br i1 %8, label %10, label %9, !prof !670

9:                                                ; preds = %7
  tail call fastcc void @gimple_bind_set_block(ptr noundef %4, ptr noundef nonnull %2) #22
  br label %10

10:                                               ; preds = %9, %7
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_bind_set_vars(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !668 !PGOFuncName !671 {
  %3 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_bind_set_body(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !673 {
  %3 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_bind_set_block(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #0 !prof !674 !PGOFuncName !675 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4, !prof !676

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 4
  br i1 %7, label %9, label %8, !prof !677

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 2573, ptr noundef nonnull @.str.37) #23
  br label %9

9:                                                ; preds = %2, %4, %8
  %10 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !536
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_asm_vec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !672 {
  %6 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %1) #22
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %2) #22
  %8 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %3) #22
  %9 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %4) #22
  %10 = tail call fastcc ptr @gimple_build_asm_1(ptr noundef %0, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #22
  %11 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %1) #22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %16, %5
  %14 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %2) #22
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %25

16:                                               ; preds = %5, %16
  %17 = phi i32 [ %19, %16 ], [ 0, %5 ]
  %18 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %17) #22
  tail call fastcc void @gimple_asm_set_input_op(ptr noundef %10, i32 noundef %17, ptr noundef %18) #22
  %19 = add nuw i32 %17, 1
  %20 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %1) #22
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %16, label %13, !llvm.loop !678

22:                                               ; preds = %25, %13
  %23 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %3) #22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %34

25:                                               ; preds = %13, %25
  %26 = phi i32 [ %28, %25 ], [ 0, %13 ]
  %27 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %2, i32 noundef %26) #22
  tail call fastcc void @gimple_asm_set_output_op(ptr noundef %10, i32 noundef %26, ptr noundef %27) #22
  %28 = add nuw i32 %26, 1
  %29 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %2) #22
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %25, label %22, !llvm.loop !679

31:                                               ; preds = %34, %22
  %32 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %4) #22
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %40

34:                                               ; preds = %22, %34
  %35 = phi i32 [ %37, %34 ], [ 0, %22 ]
  %36 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %3, i32 noundef %35) #22
  tail call fastcc void @gimple_asm_set_clobber_op(ptr noundef %10, i32 noundef %35, ptr noundef %36) #22
  %37 = add nuw i32 %35, 1
  %38 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %3) #22
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %34, label %31, !llvm.loop !680

40:                                               ; preds = %31, %40
  %41 = phi i32 [ %43, %40 ], [ 0, %31 ]
  %42 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %4, i32 noundef %41) #22
  tail call fastcc void @gimple_asm_set_label_op(ptr noundef %10, i32 noundef %41, ptr noundef %42) #22
  %43 = add nuw i32 %41, 1
  %44 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %4) #22
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %40, label %46, !llvm.loop !681

46:                                               ; preds = %40, %31
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @gimple_build_asm_1(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !prof !672 !PGOFuncName !682 {
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %7 = icmp eq i32 %4, 0
  %8 = icmp eq i32 %2, 0
  %9 = or i1 %8, %7
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 528, ptr noundef nonnull @.str.37) #23
  br label %11

11:                                               ; preds = %5, %10
  %12 = trunc i64 %6 to i32
  %13 = add i32 %2, %1
  %14 = add i32 %13, %3
  %15 = add i32 %14, %4
  %16 = tail call fastcc ptr @gimple_build_with_ops_stat(i32 noundef 7, i32 noundef 0, i32 noundef %15) #22
  %17 = trunc i32 %1 to i8
  %18 = getelementptr inbounds %struct.gimple_statement_asm, ptr %16, i64 0, i32 2
  store i8 %17, ptr %18, align 8, !tbaa !536
  %19 = trunc i32 %2 to i8
  %20 = getelementptr inbounds %struct.gimple_statement_asm, ptr %16, i64 0, i32 3
  store i8 %19, ptr %20, align 1, !tbaa !536
  %21 = trunc i32 %3 to i8
  %22 = getelementptr inbounds %struct.gimple_statement_asm, ptr %16, i64 0, i32 4
  store i8 %21, ptr %22, align 2, !tbaa !536
  %23 = trunc i32 %4 to i8
  %24 = getelementptr inbounds %struct.gimple_statement_asm, ptr %16, i64 0, i32 5
  store i8 %23, ptr %24, align 1, !tbaa !536
  %25 = tail call ptr @ggc_alloc_string(ptr noundef %0, i32 noundef %12) #23
  %26 = getelementptr inbounds %struct.gimple_statement_asm, ptr %16, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !536
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_asm_set_input_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !672 !PGOFuncName !683 {
  %4 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %5 = load i8, ptr %4, align 8, !tbaa !536
  %6 = zext i8 %5 to i32
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 2643, ptr noundef nonnull @.str.37) #23
  br label %9

9:                                                ; preds = %3, %8
  %10 = load i64, ptr %2, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 2
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 2644, ptr noundef nonnull @.str.37) #23
  br label %14

14:                                               ; preds = %9, %13
  tail call fastcc void @gimple_set_op(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_asm_set_output_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !672 !PGOFuncName !684 {
  %4 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !536
  %6 = zext i8 %5 to i32
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 2676, ptr noundef nonnull @.str.37) #23
  br label %9

9:                                                ; preds = %3, %8
  %10 = load i64, ptr %2, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 2
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 2677, ptr noundef nonnull @.str.37) #23
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %16 = load i8, ptr %15, align 8, !tbaa !536
  %17 = zext i8 %16 to i32
  %18 = add i32 %17, %1
  tail call fastcc void @gimple_set_op(ptr noundef nonnull %0, i32 noundef %18, ptr noundef nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_asm_set_clobber_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !672 !PGOFuncName !685 {
  %4 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %5 = load i8, ptr %4, align 2, !tbaa !536
  %6 = zext i8 %5 to i32
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 2699, ptr noundef nonnull @.str.37) #23
  br label %9

9:                                                ; preds = %3, %8
  %10 = load i64, ptr %2, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 2
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 2700, ptr noundef nonnull @.str.37) #23
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %16 = load i8, ptr %15, align 8, !tbaa !536
  %17 = zext i8 %16 to i32
  %18 = add i32 %17, %1
  %19 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %20 = load i8, ptr %19, align 1, !tbaa !536
  %21 = zext i8 %20 to i32
  %22 = add i32 %18, %21
  tail call fastcc void @gimple_set_op(ptr noundef nonnull %0, i32 noundef %22, ptr noundef nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_asm_set_label_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !672 !PGOFuncName !686 {
  %4 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !536
  %6 = zext i8 %5 to i32
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 2720, ptr noundef nonnull @.str.37) #23
  br label %9

9:                                                ; preds = %3, %8
  %10 = load i64, ptr %2, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 2
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 2721, ptr noundef nonnull @.str.37) #23
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %16 = load i8, ptr %15, align 8, !tbaa !536
  %17 = zext i8 %16 to i32
  %18 = add i32 %17, %1
  %19 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %20 = load i8, ptr %19, align 2, !tbaa !536
  %21 = zext i8 %20 to i32
  %22 = add i32 %18, %21
  tail call fastcc void @gimple_set_op(ptr noundef nonnull %0, i32 noundef %22, ptr noundef nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_catch(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !672 {
  %3 = tail call ptr @gimple_alloc_stat(i32 noundef 11, i32 noundef 0) #22
  tail call fastcc void @gimple_catch_set_types(ptr noundef %3, ptr noundef %0) #22
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @gimple_catch_set_handler(ptr noundef %3, ptr noundef nonnull %1) #22
  br label %6

6:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_catch_set_types(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !687 {
  %3 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_catch_set_handler(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !688 {
  %3 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_eh_filter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !672 {
  %3 = tail call ptr @gimple_alloc_stat(i32 noundef 12, i32 noundef 0) #22
  tail call fastcc void @gimple_eh_filter_set_types(ptr noundef %3, ptr noundef %0) #22
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @gimple_eh_filter_set_failure(ptr noundef %3, ptr noundef nonnull %1) #22
  br label %6

6:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_eh_filter_set_types(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !689 {
  %3 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_eh_filter_set_failure(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !690 {
  %3 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_eh_must_not_throw(ptr noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = tail call ptr @gimple_alloc_stat(i32 noundef 13, i32 noundef 1) #22
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 29
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 625, ptr noundef nonnull @.str.37) #23
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call i32 @flags_from_decl_or_type(ptr noundef nonnull %0) #23
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 626, ptr noundef nonnull @.str.37) #23
  br label %12

12:                                               ; preds = %7, %11
  tail call fastcc void @gimple_eh_must_not_throw_set_fndecl(ptr noundef %2, ptr noundef nonnull %0) #22
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @flags_from_decl_or_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_eh_must_not_throw_set_fndecl(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !691 {
  %3 = getelementptr inbounds %struct.gimple_statement_eh_mnt, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_try(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !692 {
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %7, label %6, !prof !693

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 645, ptr noundef nonnull @.str.37) #23
  br label %7

7:                                                ; preds = %3, %6
  %8 = tail call ptr @gimple_alloc_stat(i32 noundef 17, i32 noundef 0) #22
  tail call fastcc void @gimple_set_subcode(ptr noundef %8, i32 noundef %2) #22
  %9 = icmp eq ptr %0, null
  br i1 %9, label %11, label %10, !prof !694

10:                                               ; preds = %7
  tail call fastcc void @gimple_try_set_eval(ptr noundef %8, ptr noundef nonnull %0) #22
  br label %11

11:                                               ; preds = %10, %7
  %12 = icmp eq ptr %1, null
  br i1 %12, label %14, label %13, !prof !694

13:                                               ; preds = %11
  tail call fastcc void @gimple_try_set_cleanup(ptr noundef %8, ptr noundef nonnull %1) #22
  br label %14

14:                                               ; preds = %13, %11
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_try_set_eval(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !692 !PGOFuncName !695 {
  %3 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_try_set_cleanup(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !692 !PGOFuncName !696 {
  %3 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_wce(ptr noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = tail call ptr @gimple_alloc_stat(i32 noundef 34, i32 noundef 0) #22
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @gimple_wce_set_cleanup(ptr noundef %2, ptr noundef nonnull %0) #22
  br label %5

5:                                                ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_wce_set_cleanup(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !697 {
  %3 = getelementptr inbounds %struct.gimple_statement_wce, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_resx(i32 noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = tail call fastcc ptr @gimple_build_with_ops_stat(i32 noundef 14, i32 noundef 0, i32 noundef 0) #22
  %3 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %2, i64 0, i32 1
  store i32 %0, ptr %3, align 8, !tbaa !536
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_switch_nlabels(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !698 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, i32 1, i32 2
  %6 = add i32 %5, %0
  %7 = tail call fastcc ptr @gimple_build_with_ops_stat(i32 noundef 5, i32 noundef 0, i32 noundef %6) #22
  tail call fastcc void @gimple_switch_set_index(ptr noundef %7, ptr noundef %1) #22
  br i1 %4, label %9, label %8, !prof !699

8:                                                ; preds = %3
  tail call fastcc void @gimple_switch_set_default_label(ptr noundef %7, ptr noundef nonnull %2) #22
  br label %9

9:                                                ; preds = %8, %3
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_switch_set_index(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !698 !PGOFuncName !700 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %10 [
    i16 32, label %16
    i16 34, label %16
    i16 36, label %16
    i16 141, label %5
  ], !prof !701

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !536
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %10 [
    i16 32, label %16
    i16 34, label %16
    i16 36, label %16
  ]

10:                                               ; preds = %5, %2
  %11 = and i64 %3, 65535
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !539
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %16, label %15, !prof !702

15:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 3203, ptr noundef nonnull @.str.37) #23
  br label %16

16:                                               ; preds = %5, %5, %5, %2, %2, %2, %10, %15
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_switch_set_default_label(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !698 !PGOFuncName !703 {
  tail call fastcc void @gimple_switch_set_label(ptr noundef %0, i32 noundef 0, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_switch_set_label(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !704 !PGOFuncName !705 {
  %4 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %5 = add i32 %1, 1
  %6 = icmp ugt i32 %4, %5
  br i1 %6, label %8, label %7, !prof !706

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 3225, ptr noundef nonnull @.str.37) #23
  br label %8

8:                                                ; preds = %3, %7
  %9 = icmp eq ptr %2, null
  br i1 %9, label %15, label %10, !prof !707

10:                                               ; preds = %8
  %11 = load i64, ptr %2, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 139
  br i1 %13, label %15, label %14, !prof !706

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 3226, ptr noundef nonnull @.str.37) #23
  br label %15

15:                                               ; preds = %8, %10, %14
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %5, ptr noundef %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_switch(i32 noundef %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 !prof !672 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #24
  %5 = tail call ptr @gimple_build_switch_nlabels(i32 noundef %0, ptr noundef %1, ptr noundef %2) #22
  call void @llvm.va_start(ptr nonnull %4)
  %6 = icmp ne ptr %2, null
  %7 = zext i1 %6 to i32
  %8 = icmp eq i32 %0, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %11 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  br label %12

12:                                               ; preds = %9, %25
  %13 = phi i32 [ 0, %9 ], [ %28, %25 ]
  %14 = add nuw i32 %13, %7
  %15 = load i32, ptr %4, align 16
  %16 = icmp ult i32 %15, 41
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load ptr, ptr %11, align 16
  %19 = zext nneg i32 %15 to i64
  %20 = getelementptr i8, ptr %18, i64 %19
  %21 = add nuw nsw i32 %15, 8
  store i32 %21, ptr %4, align 16
  br label %25

22:                                               ; preds = %12
  %23 = load ptr, ptr %10, align 8
  %24 = getelementptr i8, ptr %23, i64 8
  store ptr %24, ptr %10, align 8
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi ptr [ %20, %17 ], [ %23, %22 ]
  %27 = load ptr, ptr %26, align 8
  call fastcc void @gimple_switch_set_label(ptr noundef %5, i32 noundef %14, ptr noundef %27) #22
  %28 = add nuw i32 %13, 1
  %29 = icmp eq i32 %28, %0
  br i1 %29, label %30, label %12, !llvm.loop !708

30:                                               ; preds = %25, %3
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #24
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_switch_vec(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !698 {
  %4 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %2) #22
  %5 = tail call ptr @gimple_build_switch_nlabels(i32 noundef %4, ptr noundef %0, ptr noundef %1) #22
  %6 = icmp ne ptr %1, null
  %7 = zext i1 %6 to i32
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %15, label %9, !prof !709

9:                                                ; preds = %3, %9
  %10 = phi i32 [ %13, %9 ], [ 0, %3 ]
  %11 = add nuw i32 %10, %7
  %12 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %2, i32 noundef %10) #22
  tail call fastcc void @gimple_switch_set_label(ptr noundef %5, i32 noundef %11, ptr noundef %12) #22
  %13 = add nuw i32 %10, 1
  %14 = icmp eq i32 %13, %4
  br i1 %14, label %15, label %9, !prof !710, !llvm.loop !711

15:                                               ; preds = %9, %3
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_eh_dispatch(i32 noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = tail call fastcc ptr @gimple_build_with_ops_stat(i32 noundef 15, i32 noundef 0, i32 noundef 0) #22
  %3 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %2, i64 0, i32 1
  store i32 %0, ptr %3, align 8, !tbaa !536
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_debug_bind_stat(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 !prof !672 {
  %4 = tail call fastcc ptr @gimple_build_with_ops_stat(i32 noundef 2, i32 noundef 0, i32 noundef 2) #22
  tail call fastcc void @gimple_debug_bind_set_var(ptr noundef %4, ptr noundef %0) #22
  tail call fastcc void @gimple_debug_bind_set_value(ptr noundef %4, ptr noundef %1) #22
  %5 = icmp eq ptr %2, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @gimple_block(ptr noundef nonnull %2) #22
  tail call fastcc void @gimple_set_block(ptr noundef %4, ptr noundef %7) #22
  %8 = tail call fastcc i32 @gimple_location(ptr noundef nonnull %2) #22
  tail call fastcc void @gimple_set_location(ptr noundef %4, i32 noundef %8) #22
  br label %9

9:                                                ; preds = %6, %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_set_var(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !712 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_set_value(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !713 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_block(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !714 !PGOFuncName !715 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #5 !prof !714 !PGOFuncName !716 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !717 !PGOFuncName !718 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !536
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_omp_critical(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !672 {
  %3 = tail call ptr @gimple_alloc_stat(i32 noundef 22, i32 noundef 0) #22
  tail call fastcc void @gimple_omp_critical_set_name(ptr noundef %3, ptr noundef %1) #22
  %4 = icmp eq ptr %0, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @gimple_omp_set_body(ptr noundef %3, ptr noundef nonnull %0) #22
  br label %6

6:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_critical_set_name(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !719 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_set_body(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !720 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_omp_for(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !672 {
  %5 = tail call ptr @gimple_alloc_stat(i32 noundef 23, i32 noundef 0) #22
  %6 = icmp eq ptr %0, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @gimple_omp_set_body(ptr noundef %5, ptr noundef nonnull %0) #22
  br label %8

8:                                                ; preds = %7, %4
  tail call fastcc void @gimple_omp_for_set_clauses(ptr noundef %5, ptr noundef %1) #22
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %5, i64 0, i32 2
  store i64 %2, ptr %9, align 8, !tbaa !536
  %10 = mul i64 %2, 40
  %11 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %10) #23
  %12 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %5, i64 0, i32 3
  store ptr %11, ptr %12, align 8, !tbaa !536
  %13 = icmp eq ptr %3, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call fastcc void @gimple_omp_for_set_pre_body(ptr noundef nonnull %5, ptr noundef nonnull %3) #22
  br label %15

15:                                               ; preds = %14, %8
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_for_set_clauses(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !721 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_for_set_pre_body(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !722 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_omp_parallel(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !672 {
  %5 = tail call ptr @gimple_alloc_stat(i32 noundef 26, i32 noundef 0) #22
  %6 = icmp eq ptr %0, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @gimple_omp_set_body(ptr noundef %5, ptr noundef nonnull %0) #22
  br label %8

8:                                                ; preds = %7, %4
  tail call fastcc void @gimple_omp_parallel_set_clauses(ptr noundef %5, ptr noundef %1) #22
  tail call fastcc void @gimple_omp_parallel_set_child_fn(ptr noundef %5, ptr noundef %2) #22
  tail call fastcc void @gimple_omp_parallel_set_data_arg(ptr noundef %5, ptr noundef %3) #22
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_parallel_set_clauses(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !723 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_parallel_set_child_fn(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !724 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_parallel_set_data_arg(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !725 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_omp_task(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 !prof !672 {
  %8 = tail call ptr @gimple_alloc_stat(i32 noundef 27, i32 noundef 0) #22
  %9 = icmp eq ptr %0, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call fastcc void @gimple_omp_set_body(ptr noundef %8, ptr noundef nonnull %0) #22
  br label %11

11:                                               ; preds = %10, %7
  tail call fastcc void @gimple_omp_task_set_clauses(ptr noundef %8, ptr noundef %1) #22
  tail call fastcc void @gimple_omp_task_set_child_fn(ptr noundef %8, ptr noundef %2) #22
  tail call fastcc void @gimple_omp_task_set_data_arg(ptr noundef %8, ptr noundef %3) #22
  tail call fastcc void @gimple_omp_task_set_copy_fn(ptr noundef %8, ptr noundef %4) #22
  tail call fastcc void @gimple_omp_task_set_arg_size(ptr noundef %8, ptr noundef %5) #22
  tail call fastcc void @gimple_omp_task_set_arg_align(ptr noundef %8, ptr noundef %6) #22
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_task_set_clauses(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !726 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_task_set_child_fn(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !727 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_task_set_data_arg(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !728 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_task_set_copy_fn(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !729 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_task_set_arg_size(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !730 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_task_set_arg_align(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !731 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_omp_section(ptr noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = tail call ptr @gimple_alloc_stat(i32 noundef 29, i32 noundef 0) #22
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @gimple_omp_set_body(ptr noundef %2, ptr noundef nonnull %0) #22
  br label %5

5:                                                ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_omp_master(ptr noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = tail call ptr @gimple_alloc_stat(i32 noundef 24, i32 noundef 0) #22
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @gimple_omp_set_body(ptr noundef %2, ptr noundef nonnull %0) #22
  br label %5

5:                                                ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_omp_continue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !672 {
  %3 = tail call ptr @gimple_alloc_stat(i32 noundef 21, i32 noundef 0) #22
  tail call fastcc void @gimple_omp_continue_set_control_def(ptr noundef %3, ptr noundef %0) #22
  tail call fastcc void @gimple_omp_continue_set_control_use(ptr noundef %3, ptr noundef %1) #22
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_continue_set_control_def(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !732 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_continue_set_control_use(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !733 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_omp_ordered(ptr noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = tail call ptr @gimple_alloc_stat(i32 noundef 25, i32 noundef 0) #22
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @gimple_omp_set_body(ptr noundef %2, ptr noundef nonnull %0) #22
  br label %5

5:                                                ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_omp_return(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !672 {
  %2 = tail call ptr @gimple_alloc_stat(i32 noundef 28, i32 noundef 0) #22
  %3 = icmp eq i8 %0, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @gimple_omp_return_set_nowait(ptr noundef %2) #22
  br label %5

5:                                                ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_omp_return_set_nowait(ptr nocapture noundef %0) unnamed_addr #4 !prof !672 !PGOFuncName !734 {
  %2 = load i32, ptr %0, align 8
  %3 = or i32 %2, 65536
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_omp_sections(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !672 {
  %3 = tail call ptr @gimple_alloc_stat(i32 noundef 30, i32 noundef 0) #22
  %4 = icmp eq ptr %0, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @gimple_omp_set_body(ptr noundef %3, ptr noundef nonnull %0) #22
  br label %6

6:                                                ; preds = %5, %2
  tail call fastcc void @gimple_omp_sections_set_clauses(ptr noundef %3, ptr noundef %1) #22
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_sections_set_clauses(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !735 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_omp_sections_switch() local_unnamed_addr #0 !prof !672 {
  %1 = tail call ptr @gimple_alloc_stat(i32 noundef 31, i32 noundef 0) #22
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_omp_single(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !672 {
  %3 = tail call ptr @gimple_alloc_stat(i32 noundef 32, i32 noundef 0) #22
  %4 = icmp eq ptr %0, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @gimple_omp_set_body(ptr noundef %3, ptr noundef nonnull %0) #22
  br label %6

6:                                                ; preds = %5, %2
  tail call fastcc void @gimple_omp_single_set_clauses(ptr noundef %3, ptr noundef %1) #22
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_single_set_clauses(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !736 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_omp_atomic_load(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !672 {
  %3 = tail call ptr @gimple_alloc_stat(i32 noundef 19, i32 noundef 0) #22
  tail call fastcc void @gimple_omp_atomic_load_set_lhs(ptr noundef %3, ptr noundef %0) #22
  tail call fastcc void @gimple_omp_atomic_load_set_rhs(ptr noundef %3, ptr noundef %1) #22
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_atomic_load_set_lhs(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !737 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_atomic_load_set_rhs(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !738 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_omp_atomic_store(ptr noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = tail call ptr @gimple_alloc_stat(i32 noundef 20, i32 noundef 0) #22
  tail call fastcc void @gimple_omp_atomic_store_set_val(ptr noundef %2, ptr noundef %0) #22
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_atomic_store_set_val(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !739 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_atomic_store, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_build_predict(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !740 {
  %3 = tail call ptr @gimple_alloc_stat(i32 noundef 33, i32 noundef 0) #22
  tail call fastcc void @gimple_predict_set_predictor(ptr noundef %3, i32 noundef %0) #22
  tail call fastcc void @gimple_predict_set_outcome(ptr noundef %3, i32 noundef %1) #22
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_predict_set_predictor(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !prof !740 !PGOFuncName !741 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, -2147418113
  %6 = or i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_predict_set_outcome(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !prof !740 !PGOFuncName !742 {
  %3 = icmp eq i32 %1, 1
  %4 = load i32, ptr %0, align 8
  br i1 %3, label %5, label %7, !prof !743

5:                                                ; preds = %2
  %6 = or i32 %4, -2147483648
  br label %9

7:                                                ; preds = %2
  %8 = and i32 %4, 2147483647
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %8, %7 ], [ %6, %5 ]
  store i32 %10, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_seq_alloc() local_unnamed_addr #0 !prof !744 {
  %1 = load ptr, ptr @gimple_seq_cache, align 8, !tbaa !555
  %2 = icmp eq ptr %1, null
  br i1 %2, label %9, label %3, !prof !745

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !746
  store ptr %5, ptr @gimple_seq_cache, align 8, !tbaa !555
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %8, !prof !747

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 1055, ptr noundef nonnull @.str.37) #23
  br label %8

8:                                                ; preds = %3, %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %11

9:                                                ; preds = %0
  %10 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 24) #23
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi ptr [ %1, %8 ], [ %10, %9 ]
  ret ptr %12
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_seq_free(ptr noundef %0) local_unnamed_addr #0 !prof !748 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3, !prof !749

3:                                                ; preds = %1
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef nonnull %0) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !750

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 1078, ptr noundef nonnull @.str.37) #23
  br label %7

7:                                                ; preds = %3, %6
  %8 = tail call fastcc ptr @gimple_seq_last(ptr noundef nonnull %0) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !750

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 1079, ptr noundef nonnull @.str.37) #23
  br label %11

11:                                               ; preds = %7, %10
  %12 = load ptr, ptr @gimple_seq_cache, align 8, !tbaa !555
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %16, !prof !749

14:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 1083, ptr noundef nonnull @.str.37) #23
  %15 = load ptr, ptr @gimple_seq_cache, align 8, !tbaa !555
  br label %16

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !746
  store ptr %0, ptr @gimple_seq_cache, align 8, !tbaa !555
  br label %19

19:                                               ; preds = %1, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 !prof !751 !PGOFuncName !752 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !753

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !754
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_seq_add_stmt(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !755 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5, !prof !756

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !555
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !757

8:                                                ; preds = %5
  %9 = tail call ptr @gimple_seq_alloc() #22
  store ptr %9, ptr %0, align 8, !tbaa !555
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %9, %8 ], [ %6, %5 ]
  call fastcc void @gsi_last(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %11) #22
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 0) #23
  br label %12

12:                                               ; preds = %2, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 !prof !758 !PGOFuncName !759 {
  %3 = tail call fastcc ptr @gimple_seq_last(ptr noundef %1) #22
  store ptr %3, ptr %0, align 8, !tbaa !760
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !762
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !763

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !633
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !764

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #22
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !765
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !766 !PGOFuncName !767 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_seq_add_seq(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !768 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5, !prof !769

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !555
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !770

8:                                                ; preds = %5
  %9 = tail call ptr @gimple_seq_alloc() #22
  store ptr %9, ptr %0, align 8, !tbaa !555
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %9, %8 ], [ %6, %5 ]
  call fastcc void @gsi_last(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %11) #22
  call void @gsi_insert_seq_after(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 0) #23
  br label %12

12:                                               ; preds = %2, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @empty_body_p(ptr noundef %0) local_unnamed_addr #13 !prof !672 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #24
  %3 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %0) #22, !range !552
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #22
  %6 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #22, !range !552
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %5, %16
  %9 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #22
  %10 = tail call fastcc zeroext i8 @empty_stmt_p(ptr noundef %9) #22, !range !552
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #22
  %14 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %13) #22, !range !552
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %8, %12
  call fastcc void @gsi_next(ptr noundef nonnull %2) #22
  %17 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #22, !range !552
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %8, label %19, !llvm.loop !771

19:                                               ; preds = %12, %16, %5, %1
  %20 = phi i8 [ 1, %1 ], [ 1, %5 ], [ 0, %12 ], [ 1, %16 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #24
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !772 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !754
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 !prof !773 !PGOFuncName !774 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #22
  store ptr %3, ptr %0, align 8, !tbaa !760
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !762
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !775

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !633
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !776

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #22
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !765
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !777 !PGOFuncName !778 {
  %2 = load ptr, ptr %0, align 8, !tbaa !760
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @empty_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !672 !PGOFuncName !779 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 18, label %8
    i8 10, label %4
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_bind_body(ptr noundef %0) #22
  %6 = tail call zeroext i8 @empty_body_p(ptr noundef %5) #22, !range !552
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i8 [ %6, %4 ], [ 1, %1 ], [ 0, %7 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 !prof !780 !PGOFuncName !781 {
  %2 = load ptr, ptr %0, align 8, !tbaa !760
  %3 = load ptr, ptr %2, align 8, !tbaa !633
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !782 !PGOFuncName !783 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #11 !prof !784 !PGOFuncName !785 {
  %2 = load ptr, ptr %0, align 8, !tbaa !760
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !786
  store ptr %4, ptr %0, align 8, !tbaa !760
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_body(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !787 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_seq_copy(ptr noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %4 = tail call ptr @gimple_seq_alloc() #22
  store ptr %4, ptr %3, align 8, !tbaa !555
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #22
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #22, !range !552
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1, %7
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #22
  %9 = tail call ptr @gimple_copy(ptr noundef %8) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %9) #22
  call fastcc void @gsi_next(ptr noundef nonnull %2) #22
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #22, !range !552
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %7, label %12, !llvm.loop !788

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !tbaa !555
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi ptr [ %13, %12 ], [ %4, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #24
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_copy(ptr noundef %0) local_unnamed_addr #0 !prof !789 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %3 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %4 = tail call ptr @gimple_alloc_stat(i32 noundef %2, i32 noundef %3) #22
  %5 = tail call fastcc i64 @gimple_size(i32 noundef %2) #22
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %0, i64 %5, i1 false)
  %6 = tail call fastcc zeroext i8 @gimple_has_substatements(ptr noundef %0) #22, !range !552
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %93, label %8, !prof !790

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %92 [
    i8 10, label %11
    i8 11, label %17
    i8 12, label %22
    i8 17, label %27
    i8 23, label %32
    i8 26, label %58
    i8 27, label %65
    i8 22, label %78
    i8 30, label %81
    i8 32, label %86
    i8 29, label %86
    i8 24, label %86
    i8 25, label %86
    i8 34, label %89
  ]

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @gimple_bind_body(ptr noundef %0) #22
  %13 = tail call ptr @gimple_seq_copy(ptr noundef %12) #22
  tail call fastcc void @gimple_bind_set_body(ptr noundef %4, ptr noundef %13) #22
  %14 = tail call fastcc ptr @gimple_bind_vars(ptr noundef %0) #22
  %15 = tail call ptr @unshare_expr(ptr noundef %14) #23
  tail call fastcc void @gimple_bind_set_vars(ptr noundef %4, ptr noundef %15) #22
  %16 = tail call fastcc ptr @gimple_bind_block(ptr noundef %0) #22
  tail call fastcc void @gimple_bind_set_block(ptr noundef %4, ptr noundef %16) #22
  br label %93

17:                                               ; preds = %8
  %18 = tail call fastcc ptr @gimple_catch_handler(ptr noundef %0) #22
  %19 = tail call ptr @gimple_seq_copy(ptr noundef %18) #22
  tail call fastcc void @gimple_catch_set_handler(ptr noundef %4, ptr noundef %19) #22
  %20 = tail call fastcc ptr @gimple_catch_types(ptr noundef %0) #22
  %21 = tail call ptr @unshare_expr(ptr noundef %20) #23
  tail call fastcc void @gimple_catch_set_types(ptr noundef %4, ptr noundef %21) #22
  br label %93

22:                                               ; preds = %8
  %23 = tail call fastcc ptr @gimple_eh_filter_failure(ptr noundef %0) #22
  %24 = tail call ptr @gimple_seq_copy(ptr noundef %23) #22
  tail call fastcc void @gimple_eh_filter_set_failure(ptr noundef %4, ptr noundef %24) #22
  %25 = tail call fastcc ptr @gimple_eh_filter_types(ptr noundef %0) #22
  %26 = tail call ptr @unshare_expr(ptr noundef %25) #23
  tail call fastcc void @gimple_eh_filter_set_types(ptr noundef %4, ptr noundef %26) #22
  br label %93

27:                                               ; preds = %8
  %28 = tail call fastcc ptr @gimple_try_eval(ptr noundef %0) #22
  %29 = tail call ptr @gimple_seq_copy(ptr noundef %28) #22
  tail call fastcc void @gimple_try_set_eval(ptr noundef %4, ptr noundef %29) #22
  %30 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %0) #22
  %31 = tail call ptr @gimple_seq_copy(ptr noundef %30) #22
  tail call fastcc void @gimple_try_set_cleanup(ptr noundef %4, ptr noundef %31) #22
  br label %93

32:                                               ; preds = %8
  %33 = tail call fastcc ptr @gimple_omp_for_pre_body(ptr noundef %0) #22
  %34 = tail call ptr @gimple_seq_copy(ptr noundef %33) #22
  tail call fastcc void @gimple_omp_for_set_pre_body(ptr noundef %4, ptr noundef %34) #22
  %35 = tail call fastcc ptr @gimple_omp_for_clauses(ptr noundef %0) #22
  %36 = tail call ptr @unshare_expr(ptr noundef %35) #23
  tail call fastcc void @gimple_omp_for_set_clauses(ptr noundef %4, ptr noundef %36) #22
  %37 = tail call fastcc i64 @gimple_omp_for_collapse(ptr noundef %0) #22
  %38 = mul i64 %37, 40
  %39 = tail call ptr @ggc_alloc_stat(i64 noundef %38) #23
  %40 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %4, i64 0, i32 3
  store ptr %39, ptr %40, align 8, !tbaa !536
  %41 = tail call fastcc i64 @gimple_omp_for_collapse(ptr noundef %0) #22
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %86, label %43

43:                                               ; preds = %32, %43
  %44 = phi i64 [ %55, %43 ], [ 0, %32 ]
  %45 = phi i32 [ %54, %43 ], [ 0, %32 ]
  %46 = tail call fastcc i32 @gimple_omp_for_cond(ptr noundef %0, i64 noundef %44) #22
  tail call fastcc void @gimple_omp_for_set_cond(ptr noundef %4, i64 noundef %44, i32 noundef %46) #22
  %47 = tail call fastcc ptr @gimple_omp_for_index(ptr noundef %0, i64 noundef %44) #22
  tail call fastcc void @gimple_omp_for_set_index(ptr noundef %4, i64 noundef %44, ptr noundef %47) #22
  %48 = tail call fastcc ptr @gimple_omp_for_initial(ptr noundef %0, i64 noundef %44) #22
  %49 = tail call ptr @unshare_expr(ptr noundef %48) #23
  tail call fastcc void @gimple_omp_for_set_initial(ptr noundef %4, i64 noundef %44, ptr noundef %49) #22
  %50 = tail call fastcc ptr @gimple_omp_for_final(ptr noundef %0, i64 noundef %44) #22
  %51 = tail call ptr @unshare_expr(ptr noundef %50) #23
  tail call fastcc void @gimple_omp_for_set_final(ptr noundef %4, i64 noundef %44, ptr noundef %51) #22
  %52 = tail call fastcc ptr @gimple_omp_for_incr(ptr noundef %0, i64 noundef %44) #22
  %53 = tail call ptr @unshare_expr(ptr noundef %52) #23
  tail call fastcc void @gimple_omp_for_set_incr(ptr noundef %4, i64 noundef %44, ptr noundef %53) #22
  %54 = add i32 %45, 1
  %55 = zext i32 %54 to i64
  %56 = tail call fastcc i64 @gimple_omp_for_collapse(ptr noundef %0) #22
  %57 = icmp ugt i64 %56, %55
  br i1 %57, label %43, label %86, !llvm.loop !791

58:                                               ; preds = %8
  %59 = tail call fastcc ptr @gimple_omp_parallel_clauses(ptr noundef %0) #22
  %60 = tail call ptr @unshare_expr(ptr noundef %59) #23
  tail call fastcc void @gimple_omp_parallel_set_clauses(ptr noundef %4, ptr noundef %60) #22
  %61 = tail call fastcc ptr @gimple_omp_parallel_child_fn(ptr noundef %0) #22
  %62 = tail call ptr @unshare_expr(ptr noundef %61) #23
  tail call fastcc void @gimple_omp_parallel_set_child_fn(ptr noundef %4, ptr noundef %62) #22
  %63 = tail call fastcc ptr @gimple_omp_parallel_data_arg(ptr noundef %0) #22
  %64 = tail call ptr @unshare_expr(ptr noundef %63) #23
  tail call fastcc void @gimple_omp_parallel_set_data_arg(ptr noundef %4, ptr noundef %64) #22
  br label %86

65:                                               ; preds = %8
  %66 = tail call fastcc ptr @gimple_omp_task_clauses(ptr noundef %0) #22
  %67 = tail call ptr @unshare_expr(ptr noundef %66) #23
  tail call fastcc void @gimple_omp_task_set_clauses(ptr noundef %4, ptr noundef %67) #22
  %68 = tail call fastcc ptr @gimple_omp_task_child_fn(ptr noundef %0) #22
  %69 = tail call ptr @unshare_expr(ptr noundef %68) #23
  tail call fastcc void @gimple_omp_task_set_child_fn(ptr noundef %4, ptr noundef %69) #22
  %70 = tail call fastcc ptr @gimple_omp_task_data_arg(ptr noundef %0) #22
  %71 = tail call ptr @unshare_expr(ptr noundef %70) #23
  tail call fastcc void @gimple_omp_task_set_data_arg(ptr noundef %4, ptr noundef %71) #22
  %72 = tail call fastcc ptr @gimple_omp_task_copy_fn(ptr noundef %0) #22
  %73 = tail call ptr @unshare_expr(ptr noundef %72) #23
  tail call fastcc void @gimple_omp_task_set_copy_fn(ptr noundef %4, ptr noundef %73) #22
  %74 = tail call fastcc ptr @gimple_omp_task_arg_size(ptr noundef %0) #22
  %75 = tail call ptr @unshare_expr(ptr noundef %74) #23
  tail call fastcc void @gimple_omp_task_set_arg_size(ptr noundef %4, ptr noundef %75) #22
  %76 = tail call fastcc ptr @gimple_omp_task_arg_align(ptr noundef %0) #22
  %77 = tail call ptr @unshare_expr(ptr noundef %76) #23
  tail call fastcc void @gimple_omp_task_set_arg_align(ptr noundef %4, ptr noundef %77) #22
  br label %86

78:                                               ; preds = %8
  %79 = tail call fastcc ptr @gimple_omp_critical_name(ptr noundef %0) #22
  %80 = tail call ptr @unshare_expr(ptr noundef %79) #23
  tail call fastcc void @gimple_omp_critical_set_name(ptr noundef %4, ptr noundef %80) #22
  br label %86

81:                                               ; preds = %8
  %82 = tail call fastcc ptr @gimple_omp_sections_clauses(ptr noundef %0) #22
  %83 = tail call ptr @unshare_expr(ptr noundef %82) #23
  tail call fastcc void @gimple_omp_sections_set_clauses(ptr noundef %4, ptr noundef %83) #22
  %84 = tail call fastcc ptr @gimple_omp_sections_control(ptr noundef %0) #22
  %85 = tail call ptr @unshare_expr(ptr noundef %84) #23
  tail call fastcc void @gimple_omp_sections_set_control(ptr noundef %4, ptr noundef %85) #22
  br label %86

86:                                               ; preds = %43, %32, %81, %8, %8, %8, %8, %78, %65, %58
  %87 = tail call fastcc ptr @gimple_omp_body(ptr noundef %0) #22
  %88 = tail call ptr @gimple_seq_copy(ptr noundef %87) #22
  tail call fastcc void @gimple_omp_set_body(ptr noundef %4, ptr noundef %88) #22
  br label %93

89:                                               ; preds = %8
  %90 = tail call fastcc ptr @gimple_wce_cleanup(ptr noundef %0) #22
  %91 = tail call ptr @gimple_seq_copy(ptr noundef %90) #22
  tail call fastcc void @gimple_wce_set_cleanup(ptr noundef %4, ptr noundef %91) #22
  br label %93

92:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 2095, ptr noundef nonnull @.str.37) #23
  br label %93

93:                                               ; preds = %11, %17, %22, %27, %86, %89, %92, %1
  %94 = icmp eq i32 %3, 0
  br i1 %94, label %112, label %95, !prof !792

95:                                               ; preds = %93, %95
  %96 = phi i32 [ %99, %95 ], [ 0, %93 ]
  %97 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %96) #22
  %98 = tail call ptr @unshare_expr(ptr noundef %97) #23
  tail call fastcc void @gimple_set_op(ptr noundef %4, i32 noundef %96, ptr noundef %98) #22
  %99 = add nuw i32 %96, 1
  %100 = icmp eq i32 %99, %3
  br i1 %100, label %101, label %95, !prof !793, !llvm.loop !794

101:                                              ; preds = %95
  %102 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #22, !range !552
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %105, label %104, !prof !795

104:                                              ; preds = %101
  tail call fastcc void @gimple_set_def_ops(ptr noundef %4) #22
  tail call fastcc void @gimple_set_use_ops(ptr noundef %4) #22
  br label %105

105:                                              ; preds = %104, %101
  %106 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #22, !range !552
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %111, label %108, !prof !796

108:                                              ; preds = %105
  %109 = tail call fastcc ptr @gimple_vdef(ptr noundef %0) #22
  tail call fastcc void @gimple_set_vdef(ptr noundef %4, ptr noundef %109) #22
  %110 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #22
  tail call fastcc void @gimple_set_vuse(ptr noundef %4, ptr noundef %110) #22
  br label %111

111:                                              ; preds = %108, %105
  tail call void @gimple_set_modified(ptr noundef %4, i8 noundef zeroext 1) #22
  br label %112

112:                                              ; preds = %111, %93
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @walk_gimple_seq(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !773 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #24
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %0) #22
  %6 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #22, !range !552
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %20, !prof !797

8:                                                ; preds = %4, %17
  %9 = call ptr @walk_gimple_stmt(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !prof !798

11:                                               ; preds = %8
  %12 = icmp eq ptr %3, null
  br i1 %12, label %13, label %14, !prof !799

13:                                               ; preds = %11
  call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 1202, ptr noundef nonnull @.str.37) #23
  br label %14

14:                                               ; preds = %13, %11
  %15 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 7
  store ptr %9, ptr %15, align 8, !tbaa !800
  %16 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #22
  br label %24

17:                                               ; preds = %8
  call fastcc void @gsi_next(ptr noundef nonnull %5) #22
  %18 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #22, !range !552
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %8, label %20, !prof !802, !llvm.loop !803

20:                                               ; preds = %17, %4
  %21 = icmp eq ptr %3, null
  br i1 %21, label %24, label %22, !prof !804

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 7
  store ptr null, ptr %23, align 8, !tbaa !800
  br label %24

24:                                               ; preds = %14, %20, %22
  %25 = phi ptr [ %16, %14 ], [ null, %22 ], [ null, %20 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #24
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @walk_gimple_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !805 {
  %5 = alloca i8, align 1
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #22
  %7 = icmp eq ptr %3, null
  br i1 %7, label %17, label %8, !prof !806

8:                                                ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !807
  %9 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 6
  %10 = load i8, ptr %9, align 1, !tbaa !808
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12, !prof !809

12:                                               ; preds = %8
  %13 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef %6) #22, !range !552
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @gimple_location(ptr noundef %6) #22
  store i32 %16, ptr @input_location, align 4, !tbaa !539
  br label %17

17:                                               ; preds = %4, %15, %12, %8
  %18 = icmp eq ptr %1, null
  br i1 %18, label %29, label %19, !prof !806

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #24
  store i8 0, ptr %5, align 1, !tbaa !536
  %20 = call ptr %1(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %3) #23
  %21 = load i8, ptr %5, align 1, !tbaa !536
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %28, !prof !798

23:                                               ; preds = %19
  %24 = icmp eq ptr %20, null
  br i1 %24, label %26, label %25, !prof !810

25:                                               ; preds = %23
  call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 1592, ptr noundef nonnull @.str.37) #23
  br label %26

26:                                               ; preds = %25, %23
  %27 = call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #24
  br label %29

28:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #24
  br label %98

29:                                               ; preds = %26, %17
  %30 = phi ptr [ %6, %17 ], [ %27, %26 ]
  %31 = icmp eq ptr %2, null
  br i1 %31, label %35, label %32, !prof !810

32:                                               ; preds = %29
  %33 = call ptr @walk_gimple_op(ptr noundef %30, ptr noundef nonnull %2, ptr noundef %3) #22
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %98

35:                                               ; preds = %32, %29
  %36 = call fastcc i32 @gimple_code(ptr noundef %30) #22, !range !559
  %37 = trunc i32 %36 to i8
  switch i8 %37, label %94 [
    i8 10, label %38
    i8 11, label %45
    i8 12, label %52
    i8 17, label %59
    i8 23, label %73
    i8 22, label %80
    i8 24, label %80
    i8 25, label %80
    i8 29, label %80
    i8 26, label %80
    i8 27, label %80
    i8 30, label %80
    i8 32, label %80
    i8 34, label %87
  ], !prof !811

38:                                               ; preds = %35
  %39 = call fastcc ptr @gimple_bind_body(ptr noundef %30) #22
  %40 = call ptr @walk_gimple_seq(ptr noundef %39, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  %41 = icmp eq ptr %40, null
  br i1 %41, label %98, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !800
  br label %98

45:                                               ; preds = %35
  %46 = call fastcc ptr @gimple_catch_handler(ptr noundef %30) #22
  %47 = call ptr @walk_gimple_seq(ptr noundef %46, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  %48 = icmp eq ptr %47, null
  br i1 %48, label %98, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !800
  br label %98

52:                                               ; preds = %35
  %53 = call fastcc ptr @gimple_eh_filter_failure(ptr noundef %30) #22
  %54 = call ptr @walk_gimple_seq(ptr noundef %53, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  %55 = icmp eq ptr %54, null
  br i1 %55, label %98, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !800
  br label %98

59:                                               ; preds = %35
  %60 = call fastcc ptr @gimple_try_eval(ptr noundef %30) #22
  %61 = call ptr @walk_gimple_seq(ptr noundef %60, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !800
  br label %98

66:                                               ; preds = %59
  %67 = call fastcc ptr @gimple_try_cleanup(ptr noundef %30) #22
  %68 = call ptr @walk_gimple_seq(ptr noundef %67, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  %69 = icmp eq ptr %68, null
  br i1 %69, label %98, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !800
  br label %98

73:                                               ; preds = %35
  %74 = call fastcc ptr @gimple_omp_for_pre_body(ptr noundef %30) #22
  %75 = call ptr @walk_gimple_seq(ptr noundef %74, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !800
  br label %98

80:                                               ; preds = %73, %35, %35, %35, %35, %35, %35, %35, %35
  %81 = call fastcc ptr @gimple_omp_body(ptr noundef %30) #22
  %82 = call ptr @walk_gimple_seq(ptr noundef %81, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  %83 = icmp eq ptr %82, null
  br i1 %83, label %98, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 7
  %86 = load ptr, ptr %85, align 8, !tbaa !800
  br label %98

87:                                               ; preds = %35
  %88 = call fastcc ptr @gimple_wce_cleanup(ptr noundef %30) #22
  %89 = call ptr @walk_gimple_seq(ptr noundef %88, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 7
  %93 = load ptr, ptr %92, align 8, !tbaa !800
  br label %98

94:                                               ; preds = %35
  %95 = call fastcc zeroext i8 @gimple_has_substatements(ptr noundef %30) #22, !range !552
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %98, label %97, !prof !810

97:                                               ; preds = %94
  call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 1671, ptr noundef nonnull @.str.37) #23
  br label %98

98:                                               ; preds = %28, %38, %45, %52, %66, %80, %87, %94, %97, %32, %91, %84, %77, %70, %63, %56, %49, %42
  %99 = phi ptr [ %93, %91 ], [ %86, %84 ], [ %79, %77 ], [ %65, %63 ], [ %72, %70 ], [ %58, %56 ], [ %51, %49 ], [ %44, %42 ], [ %20, %28 ], [ %33, %32 ], [ null, %97 ], [ null, %94 ], [ null, %87 ], [ null, %80 ], [ null, %66 ], [ null, %52 ], [ null, %45 ], [ null, %38 ]
  ret ptr %99
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @walk_gimple_op(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !812 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %8, label %5, !prof !813

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !814
  br label %8

8:                                                ; preds = %3, %5
  %9 = phi ptr [ %7, %5 ], [ null, %3 ]
  %10 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %11 = trunc i32 %10 to i8
  switch i8 %11, label %198 [
    i8 6, label %12
    i8 8, label %54
    i8 11, label %85
    i8 12, label %89
    i8 7, label %93
    i8 21, label %96
    i8 22, label %104
    i8 23, label %108
    i8 26, label %138
    i8 27, label %150
    i8 30, label %174
    i8 32, label %182
    i8 19, label %186
    i8 20, label %194
    i8 18, label %216
    i8 14, label %216
    i8 28, label %216
    i8 33, label %216
  ], !prof !815

12:                                               ; preds = %8
  br i1 %4, label %23, label %13, !prof !816

13:                                               ; preds = %12
  %14 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #22
  %15 = tail call zeroext i8 @is_gimple_reg(ptr noundef %14) #22, !range !552
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17, !prof !817

17:                                               ; preds = %13
  %18 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #22, !range !552
  %19 = xor i8 %18, 1
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i8 [ 1, %13 ], [ %19, %17 ]
  %22 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 %21, ptr %22, align 8, !tbaa !818
  br label %23

23:                                               ; preds = %20, %12
  %24 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %25 = icmp ugt i32 %24, 1
  br i1 %25, label %30, label %35, !prof !819

26:                                               ; preds = %30
  %27 = add nuw i32 %31, 1
  %28 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %35, !prof !820, !llvm.loop !821

30:                                               ; preds = %23, %26
  %31 = phi i32 [ %27, %26 ], [ 1, %23 ]
  %32 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %31) #22
  %33 = tail call ptr @walk_tree_1(ptr noundef %32, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %34 = icmp eq ptr %33, null
  br i1 %34, label %26, label %217, !prof !822

35:                                               ; preds = %26, %23
  br i1 %4, label %47, label %36, !prof !823

36:                                               ; preds = %35
  %37 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #22
  %38 = tail call zeroext i8 @is_gimple_mem_rhs(ptr noundef %37) #22, !range !552
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40, !prof !824

40:                                               ; preds = %36
  %41 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #22, !range !552
  %42 = xor i8 %41, 1
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i8 [ 1, %36 ], [ %42, %40 ]
  %45 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 %44, ptr %45, align 8, !tbaa !818
  %46 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 1, ptr %46, align 1, !tbaa !825
  br label %47

47:                                               ; preds = %43, %35
  %48 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #22
  %49 = tail call ptr @walk_tree_1(ptr noundef %48, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %217, !prof !826

51:                                               ; preds = %47
  br i1 %4, label %216, label %52, !prof !823

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 1, ptr %53, align 8, !tbaa !818
  br label %214

54:                                               ; preds = %8
  br i1 %4, label %57, label %55, !prof !827

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %56, align 1, !tbaa !825
  br label %57

57:                                               ; preds = %55, %54
  %58 = tail call fastcc ptr @gimple_call_chain_ptr(ptr noundef %0) #22
  %59 = tail call ptr @walk_tree_1(ptr noundef %58, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %217, !prof !828

61:                                               ; preds = %57
  %62 = tail call fastcc ptr @gimple_call_fn_ptr(ptr noundef %0) #22
  %63 = tail call ptr @walk_tree_1(ptr noundef %62, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %217, !prof !828

65:                                               ; preds = %61
  %66 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #22
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %77, label %72, !prof !829

68:                                               ; preds = %72
  %69 = add nuw i32 %73, 1
  %70 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #22
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %77, !prof !830, !llvm.loop !831

72:                                               ; preds = %65, %68
  %73 = phi i32 [ %69, %68 ], [ 0, %65 ]
  %74 = tail call fastcc ptr @gimple_call_arg_ptr(ptr noundef %0, i32 noundef %73) #22
  %75 = tail call ptr @walk_tree_1(ptr noundef %74, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %76 = icmp eq ptr %75, null
  br i1 %76, label %68, label %217, !prof !832

77:                                               ; preds = %68, %65
  br i1 %4, label %80, label %78, !prof !833

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 1, ptr %79, align 1, !tbaa !825
  br label %80

80:                                               ; preds = %78, %77
  %81 = tail call fastcc ptr @gimple_call_lhs_ptr(ptr noundef %0) #22
  %82 = tail call ptr @walk_tree_1(ptr noundef %81, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %217, !prof !834

84:                                               ; preds = %80
  br i1 %4, label %216, label %214, !prof !833

85:                                               ; preds = %8
  %86 = tail call fastcc ptr @gimple_catch_types_ptr(ptr noundef %0) #22
  %87 = tail call ptr @walk_tree_1(ptr noundef nonnull %86, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %88 = icmp eq ptr %87, null
  br i1 %88, label %216, label %217

89:                                               ; preds = %8
  %90 = tail call fastcc ptr @gimple_eh_filter_types_ptr(ptr noundef %0) #22
  %91 = tail call ptr @walk_tree_1(ptr noundef nonnull %90, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %92 = icmp eq ptr %91, null
  br i1 %92, label %216, label %217

93:                                               ; preds = %8
  %94 = tail call fastcc ptr @walk_gimple_asm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  %95 = icmp eq ptr %94, null
  br i1 %95, label %216, label %217

96:                                               ; preds = %8
  %97 = tail call fastcc ptr @gimple_omp_continue_control_def_ptr(ptr noundef %0) #22
  %98 = tail call ptr @walk_tree_1(ptr noundef nonnull %97, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %217

100:                                              ; preds = %96
  %101 = tail call fastcc ptr @gimple_omp_continue_control_use_ptr(ptr noundef %0) #22
  %102 = tail call ptr @walk_tree_1(ptr noundef nonnull %101, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %103 = icmp eq ptr %102, null
  br i1 %103, label %216, label %217

104:                                              ; preds = %8
  %105 = tail call fastcc ptr @gimple_omp_critical_name_ptr(ptr noundef %0) #22
  %106 = tail call ptr @walk_tree_1(ptr noundef nonnull %105, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %107 = icmp eq ptr %106, null
  br i1 %107, label %216, label %217

108:                                              ; preds = %8
  %109 = tail call fastcc ptr @gimple_omp_for_clauses_ptr(ptr noundef %0) #22
  %110 = tail call ptr @walk_tree_1(ptr noundef nonnull %109, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %217

112:                                              ; preds = %108
  %113 = tail call fastcc i64 @gimple_omp_for_collapse(ptr noundef %0) #22
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %216, label %115

115:                                              ; preds = %112, %129
  %116 = phi i64 [ %133, %129 ], [ 0, %112 ]
  %117 = phi i32 [ %132, %129 ], [ 0, %112 ]
  %118 = tail call fastcc ptr @gimple_omp_for_index_ptr(ptr noundef %0, i64 noundef %116) #22
  %119 = tail call ptr @walk_tree_1(ptr noundef nonnull %118, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %217

121:                                              ; preds = %115
  %122 = tail call fastcc ptr @gimple_omp_for_initial_ptr(ptr noundef %0, i64 noundef %116) #22
  %123 = tail call ptr @walk_tree_1(ptr noundef nonnull %122, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %217

125:                                              ; preds = %121
  %126 = tail call fastcc ptr @gimple_omp_for_final_ptr(ptr noundef %0, i64 noundef %116) #22
  %127 = tail call ptr @walk_tree_1(ptr noundef nonnull %126, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %217

129:                                              ; preds = %125
  %130 = tail call fastcc ptr @gimple_omp_for_incr_ptr(ptr noundef %0, i64 noundef %116) #22
  %131 = tail call ptr @walk_tree_1(ptr noundef nonnull %130, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %132 = add i32 %117, 1
  %133 = zext i32 %132 to i64
  %134 = tail call fastcc i64 @gimple_omp_for_collapse(ptr noundef %0) #22
  %135 = icmp ugt i64 %134, %133
  br i1 %135, label %115, label %136, !llvm.loop !835

136:                                              ; preds = %129
  %137 = icmp eq ptr %131, null
  br i1 %137, label %216, label %217

138:                                              ; preds = %8
  %139 = tail call fastcc ptr @gimple_omp_parallel_clauses_ptr(ptr noundef %0) #22
  %140 = tail call ptr @walk_tree_1(ptr noundef nonnull %139, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %217

142:                                              ; preds = %138
  %143 = tail call fastcc ptr @gimple_omp_parallel_child_fn_ptr(ptr noundef %0) #22
  %144 = tail call ptr @walk_tree_1(ptr noundef nonnull %143, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %217

146:                                              ; preds = %142
  %147 = tail call fastcc ptr @gimple_omp_parallel_data_arg_ptr(ptr noundef %0) #22
  %148 = tail call ptr @walk_tree_1(ptr noundef nonnull %147, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %149 = icmp eq ptr %148, null
  br i1 %149, label %216, label %217

150:                                              ; preds = %8
  %151 = tail call fastcc ptr @gimple_omp_task_clauses_ptr(ptr noundef %0) #22
  %152 = tail call ptr @walk_tree_1(ptr noundef nonnull %151, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %217

154:                                              ; preds = %150
  %155 = tail call fastcc ptr @gimple_omp_task_child_fn_ptr(ptr noundef %0) #22
  %156 = tail call ptr @walk_tree_1(ptr noundef nonnull %155, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %217

158:                                              ; preds = %154
  %159 = tail call fastcc ptr @gimple_omp_task_data_arg_ptr(ptr noundef %0) #22
  %160 = tail call ptr @walk_tree_1(ptr noundef nonnull %159, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %217

162:                                              ; preds = %158
  %163 = tail call fastcc ptr @gimple_omp_task_copy_fn_ptr(ptr noundef %0) #22
  %164 = tail call ptr @walk_tree_1(ptr noundef nonnull %163, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %217

166:                                              ; preds = %162
  %167 = tail call fastcc ptr @gimple_omp_task_arg_size_ptr(ptr noundef %0) #22
  %168 = tail call ptr @walk_tree_1(ptr noundef nonnull %167, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %217

170:                                              ; preds = %166
  %171 = tail call fastcc ptr @gimple_omp_task_arg_align_ptr(ptr noundef %0) #22
  %172 = tail call ptr @walk_tree_1(ptr noundef nonnull %171, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %173 = icmp eq ptr %172, null
  br i1 %173, label %216, label %217

174:                                              ; preds = %8
  %175 = tail call fastcc ptr @gimple_omp_sections_clauses_ptr(ptr noundef %0) #22
  %176 = tail call ptr @walk_tree_1(ptr noundef nonnull %175, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %217

178:                                              ; preds = %174
  %179 = tail call fastcc ptr @gimple_omp_sections_control_ptr(ptr noundef %0) #22
  %180 = tail call ptr @walk_tree_1(ptr noundef nonnull %179, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %181 = icmp eq ptr %180, null
  br i1 %181, label %216, label %217

182:                                              ; preds = %8
  %183 = tail call fastcc ptr @gimple_omp_single_clauses_ptr(ptr noundef %0) #22
  %184 = tail call ptr @walk_tree_1(ptr noundef nonnull %183, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %185 = icmp eq ptr %184, null
  br i1 %185, label %216, label %217

186:                                              ; preds = %8
  %187 = tail call fastcc ptr @gimple_omp_atomic_load_lhs_ptr(ptr noundef %0) #22
  %188 = tail call ptr @walk_tree_1(ptr noundef nonnull %187, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %217

190:                                              ; preds = %186
  %191 = tail call fastcc ptr @gimple_omp_atomic_load_rhs_ptr(ptr noundef %0) #22
  %192 = tail call ptr @walk_tree_1(ptr noundef nonnull %191, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %193 = icmp eq ptr %192, null
  br i1 %193, label %216, label %217

194:                                              ; preds = %8
  %195 = tail call fastcc ptr @gimple_omp_atomic_store_val_ptr(ptr noundef %0) #22
  %196 = tail call ptr @walk_tree_1(ptr noundef nonnull %195, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %197 = icmp eq ptr %196, null
  br i1 %197, label %216, label %217

198:                                              ; preds = %8
  %199 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #22
  %200 = and i32 %199, -3
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %216, !prof !836

202:                                              ; preds = %198
  %203 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %216, label %209, !prof !837

205:                                              ; preds = %209
  %206 = add nuw i32 %210, 1
  %207 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %208 = icmp ult i32 %206, %207
  br i1 %208, label %209, label %216, !prof !838, !llvm.loop !839

209:                                              ; preds = %202, %205
  %210 = phi i32 [ %206, %205 ], [ 0, %202 ]
  %211 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %210) #22
  %212 = tail call ptr @walk_tree_1(ptr noundef %211, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #23
  %213 = icmp eq ptr %212, null
  br i1 %213, label %205, label %217, !prof !840

214:                                              ; preds = %84, %52
  %215 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %215, align 1, !tbaa !825
  br label %216

216:                                              ; preds = %205, %214, %112, %202, %198, %8, %8, %8, %8, %194, %190, %182, %178, %170, %146, %136, %104, %100, %93, %89, %85, %84, %51
  br label %217

217:                                              ; preds = %125, %121, %115, %72, %30, %209, %194, %190, %186, %182, %178, %174, %170, %166, %162, %158, %154, %150, %146, %142, %138, %136, %108, %104, %100, %96, %93, %89, %85, %80, %61, %57, %47, %216
  %218 = phi ptr [ null, %216 ], [ %49, %47 ], [ %59, %57 ], [ %63, %61 ], [ %82, %80 ], [ %87, %85 ], [ %91, %89 ], [ %94, %93 ], [ %98, %96 ], [ %102, %100 ], [ %106, %104 ], [ %110, %108 ], [ %131, %136 ], [ %140, %138 ], [ %144, %142 ], [ %148, %146 ], [ %152, %150 ], [ %156, %154 ], [ %160, %158 ], [ %164, %162 ], [ %168, %166 ], [ %172, %170 ], [ %176, %174 ], [ %180, %178 ], [ %184, %182 ], [ %188, %186 ], [ %192, %190 ], [ %196, %194 ], [ %212, %209 ], [ %33, %30 ], [ %75, %72 ], [ %127, %125 ], [ %123, %121 ], [ %119, %115 ]
  ret ptr %218
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @is_gimple_reg(ptr noundef %0) local_unnamed_addr #0 !prof !841 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %8, !prof !842

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !536
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %10 = tail call zeroext i8 @is_gimple_variable(ptr noundef %9) #22, !range !552
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %47, label %12, !prof !843

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !536
  %15 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %14) #22, !range !552
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %47, label %17, !prof !844

17:                                               ; preds = %12
  %18 = load i64, ptr %9, align 8
  %19 = and i64 %18, 524288
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %47, !prof !845

21:                                               ; preds = %17
  %22 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %9) #23
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %47, !prof !846

24:                                               ; preds = %21
  %25 = load i64, ptr %9, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 32
  br i1 %27, label %28, label %33, !prof !847

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %9, i64 0, i32 4
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %47, !prof !848

33:                                               ; preds = %28, %24
  %34 = load ptr, ptr %13, align 8, !tbaa !536
  %35 = load i64, ptr %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = and i32 %36, 65535
  %38 = add nsw i32 %37, -13
  %39 = icmp ult i32 %38, 2
  br i1 %39, label %40, label %47, !prof !849

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = lshr i32 %43, 27
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 1
  br label %47

47:                                               ; preds = %33, %28, %21, %17, %12, %8, %40
  %48 = phi i8 [ %46, %40 ], [ 0, %8 ], [ 0, %12 ], [ 0, %17 ], [ 0, %21 ], [ 0, %28 ], [ 1, %33 ]
  ret i8 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !850 !PGOFuncName !851 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @gimple_assign_single_p(ptr noundef %0) local_unnamed_addr #0 !prof !852 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %3 = icmp eq i32 %2, 6
  br i1 %3, label %4, label %9, !prof !853

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #22, !range !854
  %6 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %5) #22, !range !559
  %7 = icmp eq i32 %6, 3
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !855 !PGOFuncName !856 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #22, !range !552
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !857

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #22
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @is_gimple_mem_rhs(ptr noundef %0) local_unnamed_addr #0 !prof !858 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  %4 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %3) #22, !range !552
  %5 = icmp eq i8 %4, 0
  %6 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %0) #22, !range !552
  br i1 %5, label %7, label %11, !prof !859

7:                                                ; preds = %1
  %8 = icmp eq i8 %6, 0
  br i1 %8, label %9, label %11, !prof !860

9:                                                ; preds = %7
  %10 = tail call zeroext i8 @is_gimple_lvalue(ptr noundef nonnull %0) #22, !range !552
  br label %11

11:                                               ; preds = %1, %7, %9
  %12 = phi i8 [ 1, %7 ], [ %10, %9 ], [ %6, %1 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !861 !PGOFuncName !862 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_chain_ptr(ptr noundef %0) unnamed_addr #0 !prof !863 !PGOFuncName !864 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 2) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn_ptr(ptr noundef %0) unnamed_addr #0 !prof !863 !PGOFuncName !865 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #22
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !866 !PGOFuncName !867 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !868 !PGOFuncName !869 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %3) #22
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs_ptr(ptr noundef %0) unnamed_addr #0 !prof !870 !PGOFuncName !871 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #22
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_catch_types_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !872 {
  %2 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_eh_filter_types_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !873 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @walk_gimple_asm(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !672 !PGOFuncName !874 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #24
  %8 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %0) #22, !range !559
  %9 = shl nuw nsw i32 %8, 3
  %10 = zext nneg i32 %9 to i64
  %11 = alloca i8, i64 %10, align 16
  %12 = icmp eq ptr %2, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 1, ptr %14, align 1, !tbaa !825
  br label %15

15:                                               ; preds = %13, %3
  %16 = icmp eq i32 %8, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  %19 = zext nneg i32 %8 to i64
  br label %23

20:                                               ; preds = %41
  %21 = add nuw nsw i64 %24, 1
  %22 = icmp eq i64 %21, %19
  br i1 %22, label %45, label %23, !llvm.loop !875

23:                                               ; preds = %17, %20
  %24 = phi i64 [ 0, %17 ], [ %21, %20 ]
  %25 = trunc i64 %24 to i32
  %26 = call fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %25) #22
  %27 = getelementptr inbounds %struct.tree_list, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !536
  %29 = getelementptr inbounds %struct.tree_list, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !536
  %31 = getelementptr inbounds %struct.tree_string, ptr %30, i64 0, i32 2
  store ptr %31, ptr %4, align 8, !tbaa !555
  %32 = getelementptr inbounds ptr, ptr %11, i64 %24
  store ptr %31, ptr %32, align 8, !tbaa !555
  %33 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %4, i32 noundef %25, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #23
  br i1 %12, label %41, label %34

34:                                               ; preds = %23
  %35 = load i8, ptr %6, align 1, !tbaa !536
  %36 = icmp ne i8 %35, 0
  %37 = load i8, ptr %5, align 1
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %36, i1 true, i1 %38
  %40 = zext i1 %39 to i8
  store i8 %40, ptr %18, align 8, !tbaa !818
  br label %41

41:                                               ; preds = %34, %23
  %42 = getelementptr inbounds %struct.tree_list, ptr %26, i64 0, i32 2
  %43 = call ptr @walk_tree_1(ptr noundef nonnull %42, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null) #23
  %44 = icmp eq ptr %43, null
  br i1 %44, label %20, label %92

45:                                               ; preds = %20, %15
  %46 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %0) #22, !range !559
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %76, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  %50 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  br label %54

51:                                               ; preds = %72
  %52 = add nuw nsw i32 %55, 1
  %53 = icmp eq i32 %52, %46
  br i1 %53, label %76, label %54, !llvm.loop !876

54:                                               ; preds = %48, %51
  %55 = phi i32 [ 0, %48 ], [ %52, %51 ]
  %56 = call fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %55) #22
  %57 = getelementptr inbounds %struct.tree_list, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !536
  %59 = getelementptr inbounds %struct.tree_list, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !536
  %61 = getelementptr inbounds %struct.tree_string, ptr %60, i64 0, i32 2
  store ptr %61, ptr %4, align 8, !tbaa !555
  %62 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i32 noundef %8, i32 noundef 0, ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  br i1 %12, label %72, label %63

63:                                               ; preds = %54
  %64 = load i8, ptr %6, align 1, !tbaa !536
  %65 = icmp ne i8 %64, 0
  %66 = load i8, ptr %5, align 1
  %67 = icmp eq i8 %66, 0
  %68 = select i1 %65, i1 true, i1 %67
  %69 = zext i1 %68 to i8
  store i8 %69, ptr %49, align 8, !tbaa !818
  %70 = xor i1 %68, true
  %71 = zext i1 %70 to i8
  store i8 %71, ptr %50, align 1, !tbaa !825
  br label %72

72:                                               ; preds = %63, %54
  %73 = getelementptr inbounds %struct.tree_list, ptr %56, i64 0, i32 2
  %74 = call ptr @walk_tree_1(ptr noundef nonnull %73, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null) #23
  %75 = icmp eq ptr %74, null
  br i1 %75, label %51, label %92

76:                                               ; preds = %51, %45
  br i1 %12, label %80, label %77

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %78, align 1, !tbaa !825
  %79 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 1, ptr %79, align 8, !tbaa !818
  br label %80

80:                                               ; preds = %77, %76
  %81 = call fastcc i32 @gimple_asm_nlabels(ptr noundef %0) #22, !range !559
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %92, label %86

83:                                               ; preds = %86
  %84 = add nuw nsw i32 %87, 1
  %85 = icmp eq i32 %84, %81
  br i1 %85, label %92, label %86, !llvm.loop !877

86:                                               ; preds = %80, %83
  %87 = phi i32 [ %84, %83 ], [ 0, %80 ]
  %88 = call fastcc ptr @gimple_asm_label_op(ptr noundef %0, i32 noundef %87) #22
  %89 = getelementptr inbounds %struct.tree_list, ptr %88, i64 0, i32 2
  %90 = call ptr @walk_tree_1(ptr noundef nonnull %89, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null) #23
  %91 = icmp eq ptr %90, null
  br i1 %91, label %83, label %92

92:                                               ; preds = %41, %72, %86, %83, %80
  %93 = phi ptr [ null, %80 ], [ %90, %86 ], [ null, %83 ], [ %74, %72 ], [ %43, %41 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret ptr %93
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_continue_control_def_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !878 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_continue_control_use_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !879 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_critical_name_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !880 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_for_clauses_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !881 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @gimple_omp_for_collapse(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !882 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !536
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_omp_for_index_ptr(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !883 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !536
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 3464, ptr noundef nonnull @.str.37) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !536
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 1
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_omp_for_initial_ptr(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !884 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !536
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 3497, ptr noundef nonnull @.str.37) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !536
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 2
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_omp_for_final_ptr(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !885 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !536
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 3530, ptr noundef nonnull @.str.37) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !536
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 3
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_omp_for_incr_ptr(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !886 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !536
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 3563, ptr noundef nonnull @.str.37) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !536
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 4
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_parallel_clauses_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !887 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_parallel_child_fn_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !888 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_parallel_data_arg_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !889 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_task_clauses_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !890 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_task_child_fn_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !891 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_task_data_arg_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !892 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_task_copy_fn_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !893 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_task_arg_size_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !894 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_task_arg_align_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !895 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_sections_clauses_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !896 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_sections_control_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !897 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_single_clauses_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !898 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_atomic_load_lhs_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !899 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_atomic_load_rhs_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !900 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_atomic_store_val_ptr(ptr noundef readnone %0) unnamed_addr #2 !prof !672 !PGOFuncName !901 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_atomic_store, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !902 !PGOFuncName !903 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #22, !range !552
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !904

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #22
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !555
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_noutputs(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !905 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !536
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !906 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !536
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 2655, ptr noundef nonnull @.str.37) #23
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !536
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %12) #22
  ret ptr %13
}

; Function Attrs: optsize
declare zeroext i8 @parse_output_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !907 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !536
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !908 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !536
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 2622, ptr noundef nonnull @.str.37) #23
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %1) #22
  ret ptr %9
}

; Function Attrs: optsize
declare zeroext i8 @parse_input_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_nlabels(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !909 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 1, !tbaa !536
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_label_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !910 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 1, !tbaa !536
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 2710, ptr noundef nonnull @.str.37) #23
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !536
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %14 = load i8, ptr %13, align 2, !tbaa !536
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %12, %15
  %17 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %16) #22
  ret ptr %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !714 !PGOFuncName !911 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #22
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_catch_handler(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !912 {
  %2 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_eh_filter_failure(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !913 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_try_eval(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !914 {
  %2 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_try_cleanup(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !915 {
  %2 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_for_pre_body(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !916 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_body(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !917 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_wce_cleanup(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !918 {
  %2 = getelementptr inbounds %struct.gimple_statement_wce, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @gimple_has_substatements(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !919 !PGOFuncName !920 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %3 = trunc i32 %2 to i8
  %4 = add i8 %3, -10
  %5 = icmp ult i8 %4, 25
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = zext nneg i8 %4 to i64
  %8 = getelementptr inbounds [25 x i8], ptr @switch.table.gimple_has_substatements, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1
  br label %10

10:                                               ; preds = %1, %6
  %11 = phi i8 [ %9, %6 ], [ 0, %1 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_set_body(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !921 {
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !536
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9, !prof !922

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %11, label %8, !prof !923

8:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 1690, ptr noundef nonnull @.str.37) #23
  br label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !924
  br label %11

11:                                               ; preds = %8, %6, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @gimple_body(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !926 {
  %2 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !927

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !924
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @gimple_has_body_p(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !928 {
  %2 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  %4 = tail call ptr @gimple_body(ptr noundef %0) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13, !prof !929

6:                                                ; preds = %1
  %7 = icmp eq ptr %3, null
  br i1 %7, label %13, label %8, !prof !930

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !931
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %8, %1
  %14 = phi i8 [ 1, %1 ], [ 0, %6 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @gimple_call_flags(ptr noundef %0) local_unnamed_addr #0 !prof !932 {
  %2 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !933

4:                                                ; preds = %1
  %5 = tail call i32 @flags_from_decl_or_type(ptr noundef nonnull %2) #23
  br label %19

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #22
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !536
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !934

11:                                               ; preds = %6
  %12 = load i64, ptr %9, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 10
  br i1 %14, label %15, label %19, !prof !935

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !536
  %18 = tail call i32 @flags_from_decl_or_type(ptr noundef %17) #23
  br label %19

19:                                               ; preds = %6, %11, %15, %4
  %20 = phi i32 [ %5, %4 ], [ %18, %15 ], [ 0, %11 ], [ 0, %6 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !936 !PGOFuncName !937 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #22
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !938

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !536
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !939 !PGOFuncName !940 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @gimple_assign_copy_p(ptr noundef %0) local_unnamed_addr #0 !prof !941 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %3 = icmp eq i32 %2, 6
  br i1 %3, label %4, label %11, !prof !942

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #22, !range !854
  %6 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %5) #22, !range !559
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %11, !prof !943

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #22
  %10 = tail call zeroext i8 @is_gimple_val(ptr noundef %9) #22, !range !552
  br label %11

11:                                               ; preds = %8, %4, %1
  %12 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %10, %8 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !944 !PGOFuncName !945 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #22, !range !854
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #22, !range !559
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !946

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #22
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @is_gimple_val(ptr noundef %0) local_unnamed_addr #0 !prof !947 {
  %2 = tail call zeroext i8 @is_gimple_variable(ptr noundef %0) #22, !range !552
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %12, label %4, !prof !948

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !536
  %7 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %6) #22, !range !552
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9, !prof !949

9:                                                ; preds = %4
  %10 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %0) #22, !range !552
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12, !prof !950

12:                                               ; preds = %9, %4, %1
  %13 = tail call zeroext i8 @is_gimple_variable(ptr noundef %0) #22, !range !552
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17, !prof !951

15:                                               ; preds = %12
  %16 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %0) #22, !range !552
  br label %17

17:                                               ; preds = %12, %15, %9
  %18 = phi i8 [ 0, %9 ], [ 1, %12 ], [ %16, %15 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !944 !PGOFuncName !952 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !953

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1446, ptr noundef nonnull @.str.37) #23
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %0) local_unnamed_addr #0 !prof !954 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %3 = icmp eq i32 %2, 6
  br i1 %3, label %4, label %19, !prof !955

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #22, !range !854
  %6 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %5) #22, !range !559
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %19, !prof !956

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #22
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 141
  br i1 %12, label %13, label %19, !prof !957

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #22
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 141
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %13, %8, %4, %1
  %20 = phi i8 [ 0, %8 ], [ 0, %4 ], [ 0, %1 ], [ %18, %13 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @gimple_assign_unary_nop_p(ptr noundef %0) local_unnamed_addr #0 !prof !958 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %3 = icmp eq i32 %2, 6
  br i1 %3, label %4, label %56, !prof !959

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #22, !range !854
  %6 = icmp eq i32 %5, 116
  br i1 %6, label %13, label %7, !prof !960

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #22, !range !854
  %9 = icmp eq i32 %8, 113
  br i1 %9, label %13, label %10, !prof !961

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #22, !range !854
  %12 = icmp eq i32 %11, 117
  br i1 %12, label %13, label %56, !prof !961

13:                                               ; preds = %10, %7, %4
  %14 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #22
  %15 = load ptr, ptr @global_trees, align 16, !tbaa !555
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %56, label %17, !prof !962

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #22
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !536
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 14
  %24 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #22
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !536
  br i1 %23, label %27, label %29, !prof !962

27:                                               ; preds = %17
  %28 = tail call i32 @vector_type_mode(ptr noundef %26) #23
  br label %34

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.tree_type, ptr %26, i64 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i32 [ %28, %27 ], [ %33, %29 ]
  %36 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #22
  %37 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !536
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 14
  %42 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #22
  %43 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !536
  br i1 %41, label %45, label %47, !prof !962

45:                                               ; preds = %34
  %46 = tail call i32 @vector_type_mode(ptr noundef %44) #23
  br label %52

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  br label %52

52:                                               ; preds = %47, %45
  %53 = phi i32 [ %46, %45 ], [ %51, %47 ]
  %54 = icmp eq i32 %35, %53
  %55 = zext i1 %54 to i8
  br label %56

56:                                               ; preds = %52, %13, %10, %1
  %57 = phi i8 [ 0, %13 ], [ 0, %10 ], [ 0, %1 ], [ %55, %52 ]
  ret i8 %57
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_set_bb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !963 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !536
  %4 = load ptr, ptr @cfun, align 8, !tbaa !555
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !931
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8, !prof !964

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %0) #22, !range !559
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %41, !prof !965

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @gimple_label_label(ptr noundef nonnull %0) #22
  %13 = getelementptr inbounds %struct.tree_label_decl, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !536
  %15 = icmp eq i32 %14, -1
  %16 = load ptr, ptr @cfun, align 8, !tbaa !555
  br i1 %15, label %17, label %34, !prof !966

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !931
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !967
  %22 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %21) #22
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 11
  %24 = load i32, ptr %23, align 8, !tbaa !969
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !969
  store i32 %24, ptr %13, align 8, !tbaa !536
  %26 = icmp ugt i32 %22, %24
  br i1 %26, label %34, label %27, !prof !970

27:                                               ; preds = %17
  %28 = mul nsw i32 %24, 3
  %29 = sdiv i32 %28, 2
  %30 = add nsw i32 %29, 1
  %31 = load ptr, ptr %18, align 8, !tbaa !931
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 6
  tail call fastcc void @VEC_basic_block_gc_safe_grow_cleared(ptr noundef nonnull %32, i32 noundef %30) #22
  %33 = load ptr, ptr @cfun, align 8, !tbaa !555
  br label %34

34:                                               ; preds = %17, %27, %11
  %35 = phi ptr [ %16, %11 ], [ %33, %27 ], [ %16, %17 ]
  %36 = phi i32 [ %14, %11 ], [ %24, %27 ], [ %24, %17 ]
  %37 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !931
  %39 = getelementptr inbounds %struct.control_flow_graph, ptr %38, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !967
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %40, i32 noundef %36, ptr noundef %1) #22
  br label %41

41:                                               ; preds = %34, %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_label_label(ptr noundef %0) unnamed_addr #0 !prof !971 !PGOFuncName !972 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #22
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !973 !PGOFuncName !974 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !975

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !976
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_gc_safe_grow_cleared(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !978 !PGOFuncName !979 {
  %3 = load ptr, ptr %0, align 8, !tbaa !555
  %4 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %3) #22
  tail call fastcc void @VEC_basic_block_gc_safe_grow(ptr noundef nonnull %0, i32 noundef %1) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !555
  %6 = tail call fastcc ptr @VEC_basic_block_base_address(ptr noundef %5) #22
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = sub nsw i32 %1, %4
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 %11, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 !prof !971 !PGOFuncName !980 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !555
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_gc_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !978 !PGOFuncName !981 {
  %3 = load ptr, ptr %0, align 8, !tbaa !555
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !982

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !976
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_basic_block_gc_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #22
  %10 = load ptr, ptr %0, align 8, !tbaa !555, !nonnull !983, !noundef !983
  store i32 %1, ptr %10, align 8, !tbaa !976
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_basic_block_base_address(ptr noundef readnone %0) unnamed_addr #2 !prof !978 !PGOFuncName !984 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !982
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_gc_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !978 !PGOFuncName !985 {
  %3 = load ptr, ptr %0, align 8, !tbaa !555
  %4 = tail call fastcc i32 @VEC_basic_block_base_space(ptr noundef %3, i32 noundef %1) #22, !range !986
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !987

6:                                                ; preds = %2
  %7 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %3, i32 noundef %1) #23
  store ptr %7, ptr %0, align 8, !tbaa !555
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !978 !PGOFuncName !988 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !982

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !989
  %7 = load i32, ptr %0, align 8, !tbaa !976
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !990 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @extract_ops_from_tree(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %6 = load i32, ptr %3, align 4, !tbaa !539
  %7 = load ptr, ptr %4, align 8, !tbaa !555
  %8 = load ptr, ptr %5, align 8, !tbaa !555
  tail call void @gimple_assign_set_rhs_with_ops(ptr noundef %0, i32 noundef %6, ptr noundef %7, ptr noundef %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_assign_set_rhs_with_ops(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !991 {
  %5 = tail call i32 @get_gimple_rhs_num_ops(i32 noundef %1) #22, !range !616
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #22
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %6) #22
  %8 = add nuw nsw i32 %5, 1
  %9 = icmp ugt i32 %7, %5
  br i1 %9, label %16, label %10, !prof !992

10:                                               ; preds = %4
  %11 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %6) #22
  %12 = tail call fastcc i32 @gimple_code(ptr noundef %6) #22, !range !559
  %13 = tail call ptr @gimple_alloc_stat(i32 noundef %12, i32 noundef %8) #22
  %14 = tail call fastcc i32 @gimple_code(ptr noundef %6) #22, !range !559
  %15 = tail call fastcc i64 @gimple_size(i32 noundef %14) #22
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %6, i64 %15, i1 false)
  tail call void @gsi_replace(ptr noundef %0, ptr noundef %13, i8 noundef zeroext 1) #23
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %13, ptr noundef %11) #22
  br label %16

16:                                               ; preds = %10, %4
  %17 = phi ptr [ %13, %10 ], [ %6, %4 ]
  tail call fastcc void @gimple_set_num_ops(ptr noundef %17, i32 noundef %8) #22
  tail call fastcc void @gimple_set_subcode(ptr noundef %17, i32 noundef %1) #22
  tail call fastcc void @gimple_assign_set_rhs1(ptr noundef %17, ptr noundef %2) #22
  %18 = icmp ugt i32 %5, 1
  br i1 %18, label %19, label %20, !prof !993

19:                                               ; preds = %16
  tail call fastcc void @gimple_assign_set_rhs2(ptr noundef %17, ptr noundef %3) #22
  br label %20

20:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: optsize
declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_get_lhs(ptr noundef %0) local_unnamed_addr #0 !prof !994 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %8 [
    i8 6, label %4
    i8 8, label %6
  ], !prof !995

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #22
  br label %8

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #22
  br label %8

8:                                                ; preds = %1, %6, %4
  %9 = phi ptr [ %5, %4 ], [ %7, %6 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !996 !PGOFuncName !997 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_set_lhs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !998 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %7 [
    i8 6, label %5
    i8 8, label %6
  ], !prof !999

5:                                                ; preds = %2
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) #22
  br label %8

6:                                                ; preds = %2
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) #22
  br label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 1933, ptr noundef nonnull @.str.37) #23
  br label %8

8:                                                ; preds = %6, %7, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1000 !PGOFuncName !1001 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #22
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4, !prof !1002

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10, !prof !1003

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !536
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_replace_lhs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !672 {
  %3 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !539
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @gimple_get_lhs(ptr noundef %0) #22
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !536
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 1962, ptr noundef nonnull @.str.37) #23
  br label %11

11:                                               ; preds = %5, %10
  tail call void @insert_debug_temp_for_var_def(ptr noundef null, ptr noundef nonnull %6) #23
  br label %12

12:                                               ; preds = %11, %2
  tail call void @gimple_set_lhs(ptr noundef %0, ptr noundef %1) #22
  ret void
}

; Function Attrs: optsize
declare void @insert_debug_temp_for_var_def(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_vars(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1004 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_block(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1005 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_catch_types(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1006 {
  %2 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_eh_filter_types(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1007 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_for_clauses(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1008 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_cond(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !672 !PGOFuncName !1009 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !539
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 4076, ptr noundef nonnull @.str.37) #23
  br label %9

9:                                                ; preds = %3, %8
  %10 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !536
  %12 = icmp ugt i64 %11, %1
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 4077, ptr noundef nonnull @.str.37) #23
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !536
  %17 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %16, i64 %1
  store i32 %2, ptr %17, align 8, !tbaa !1010
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_omp_for_cond(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !1012 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !536
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 4088, ptr noundef nonnull @.str.37) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !536
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1
  %11 = load i32, ptr %10, align 8, !tbaa !1010
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_index(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !672 !PGOFuncName !1013 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !536
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 3475, ptr noundef nonnull @.str.37) #23
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !536
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !1014
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_index(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !1015 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !536
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 3453, ptr noundef nonnull @.str.37) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !536
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !1014
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_initial(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !1016 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !536
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 3486, ptr noundef nonnull @.str.37) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !536
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1017
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_initial(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !672 !PGOFuncName !1018 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !536
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 3508, ptr noundef nonnull @.str.37) #23
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !536
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 2
  store ptr %2, ptr %11, align 8, !tbaa !1017
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_final(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !1019 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !536
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 3519, ptr noundef nonnull @.str.37) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !536
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !1020
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_final(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !672 !PGOFuncName !1021 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !536
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 3541, ptr noundef nonnull @.str.37) #23
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !536
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 3
  store ptr %2, ptr %11, align 8, !tbaa !1020
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_incr(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !1022 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !536
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 3552, ptr noundef nonnull @.str.37) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !536
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !1023
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_incr(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !672 !PGOFuncName !1024 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !536
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 3574, ptr noundef nonnull @.str.37) #23
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !536
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 4
  store ptr %2, ptr %11, align 8, !tbaa !1023
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_parallel_clauses(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1025 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_parallel_child_fn(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1026 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_parallel_data_arg(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1027 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_clauses(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1028 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_child_fn(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1029 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_data_arg(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1030 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_copy_fn(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1031 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_arg_size(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1032 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_arg_align(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1033 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_critical_name(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1034 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_sections_clauses(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1035 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_sections_control(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1036 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !536
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_sections_set_control(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !1037 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !536
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_def_ops(ptr nocapture noundef %0) unnamed_addr #0 !prof !1038 !PGOFuncName !1039 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #22, !range !552
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !795

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1305, ptr noundef nonnull @.str.37) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !536
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_use_ops(ptr nocapture noundef %0) unnamed_addr #0 !prof !1038 !PGOFuncName !1040 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #22, !range !552
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !795

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1326, ptr noundef nonnull @.str.37) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1041 !PGOFuncName !1042 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vdef(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1043 !PGOFuncName !1044 {
  %3 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #22, !range !552
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !1045

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1416, ptr noundef nonnull @.str.37) #23
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1043 !PGOFuncName !1046 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #22, !range !552
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1045

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !536
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1043 !PGOFuncName !1047 {
  %3 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #22, !range !552
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !1045

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1407, ptr noundef nonnull @.str.37) #23
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !536
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1048 !PGOFuncName !1049 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #22, !range !552
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1050

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !536
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !1051 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #22, !range !552
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %29, label %5, !prof !1052

5:                                                ; preds = %2
  %6 = zext i8 %1 to i32
  %7 = load i32, ptr %0, align 8
  %8 = shl nuw nsw i32 %6, 13
  %9 = and i32 %8, 8192
  %10 = and i32 %7, -8193
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %0, align 8
  %12 = icmp eq i8 %1, 0
  br i1 %12, label %29, label %13, !prof !1053

13:                                               ; preds = %5
  %14 = load ptr, ptr @cfun, align 8, !tbaa !555
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !1054
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18, !prof !1055

18:                                               ; preds = %13
  %19 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef nonnull %0) #22, !range !552
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %29, label %21, !prof !1056

21:                                               ; preds = %18
  %22 = tail call fastcc zeroext i8 @gimple_call_noreturn_p(ptr noundef nonnull %0) #22, !range !552
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24, !prof !1057

24:                                               ; preds = %21
  %25 = load ptr, ptr @cfun, align 8, !tbaa !555
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !1054
  %28 = getelementptr inbounds %struct.gimple_df, ptr %27, i64 0, i32 1
  tail call fastcc void @VEC_gimple_gc_safe_push(ptr noundef nonnull %28, ptr noundef nonnull %0) #22
  br label %29

29:                                               ; preds = %5, %13, %18, %21, %24, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1058 !PGOFuncName !1059 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_call_noreturn_p(ptr noundef %0) unnamed_addr #0 !prof !1060 !PGOFuncName !1061 {
  %2 = tail call i32 @gimple_call_flags(ptr noundef %0) #22
  %3 = trunc i32 %2 to i8
  %4 = lshr i8 %3, 3
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1062 !PGOFuncName !1063 {
  tail call fastcc void @VEC_gimple_gc_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !555
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1062 !PGOFuncName !1064 {
  %2 = load ptr, ptr %0, align 8, !tbaa !555
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1065

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !555
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !prof !1062 !PGOFuncName !1066 {
  %3 = load i32, ptr %0, align 8, !tbaa !1067
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1067
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !555
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #6 !prof !1062 !PGOFuncName !1069 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1070

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1071
  %6 = load i32, ptr %0, align 8, !tbaa !1067
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @gimple_has_side_effects(ptr noundef %0) local_unnamed_addr #0 !prof !782 {
  %2 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #22, !range !552
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %67, !prof !1072

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #22, !range !552
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %67, !prof !1073

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #22, !range !552
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13, !prof !1074

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %67, label %56, !prof !1075

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #22
  %15 = tail call i32 @gimple_call_flags(ptr noundef %0) #22
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %67, label %18, !prof !1076

18:                                               ; preds = %13
  %19 = tail call i32 @gimple_call_flags(ptr noundef %0) #22
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %67, !prof !1077

22:                                               ; preds = %18
  %23 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25, !prof !1078

25:                                               ; preds = %22
  %26 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #22
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65536
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %33, label %30, !prof !1079

30:                                               ; preds = %25
  %31 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #22, !range !552
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %65, label %67

33:                                               ; preds = %25, %22
  %34 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #22
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65536
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %67, !prof !1080

38:                                               ; preds = %33
  %39 = icmp eq i32 %14, 0
  br i1 %39, label %67, label %43, !prof !1081

40:                                               ; preds = %43
  %41 = add nuw i32 %44, 1
  %42 = icmp eq i32 %41, %14
  br i1 %42, label %67, label %43, !prof !1082, !llvm.loop !1083

43:                                               ; preds = %38, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %38 ]
  %45 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %44) #22
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65536
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %40, label %49, !prof !1084

49:                                               ; preds = %43
  %50 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #22, !range !552
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %65, label %67

52:                                               ; preds = %56
  %53 = add nuw i32 %57, 1
  %54 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %67, !prof !1085, !llvm.loop !1086

56:                                               ; preds = %10, %52
  %57 = phi i32 [ %53, %52 ], [ 0, %10 ]
  %58 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %57) #22
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 65536
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %52, label %62, !prof !1087

62:                                               ; preds = %56
  %63 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #22, !range !552
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62, %49, %30
  %66 = phi i32 [ 2178, %30 ], [ 2188, %49 ], [ 2199, %62 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef %66, ptr noundef nonnull @.str.37) #23
  br label %67

67:                                               ; preds = %40, %52, %65, %38, %10, %62, %13, %18, %30, %33, %49, %4, %1
  %68 = phi i8 [ 0, %1 ], [ 1, %4 ], [ 1, %13 ], [ 1, %18 ], [ 1, %30 ], [ 1, %33 ], [ 1, %49 ], [ 1, %62 ], [ 0, %10 ], [ 0, %38 ], [ 1, %65 ], [ 0, %52 ], [ 0, %40 ]
  ret i8 %68
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !782 !PGOFuncName !1088 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #22, !range !552
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !1089

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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1090 !PGOFuncName !1091 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #22
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @gimple_rhs_has_side_effects(ptr noundef %0) local_unnamed_addr #0 !prof !1092 {
  %2 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #22, !range !552
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %38, label %4, !prof !1093

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #22
  %6 = tail call i32 @gimple_call_flags(ptr noundef %0) #22
  %7 = and i32 %6, 3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %88, label %9, !prof !1094

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #22
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65536
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %21, !prof !1095

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #22
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 524288
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21, !prof !1095

19:                                               ; preds = %14
  %20 = icmp eq i32 %5, 0
  br i1 %20, label %88, label %27, !prof !1096

21:                                               ; preds = %14, %9
  %22 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #22, !range !552
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %86, label %88

24:                                               ; preds = %33
  %25 = add nuw i32 %28, 1
  %26 = icmp eq i32 %25, %5
  br i1 %26, label %88, label %27, !prof !1097, !llvm.loop !1098

27:                                               ; preds = %19, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %19 ]
  %29 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %28) #22
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65536
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %88, !prof !1099

33:                                               ; preds = %27
  %34 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %28) #22
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 524288
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %24, label %88, !prof !1099

38:                                               ; preds = %1
  %39 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #22, !range !552
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %62, label %41, !prof !1100

41:                                               ; preds = %38
  %42 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %43 = icmp ugt i32 %42, 1
  br i1 %43, label %48, label %88, !prof !1101

44:                                               ; preds = %54
  %45 = add nuw i32 %49, 1
  %46 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %88, !prof !1102, !llvm.loop !1103

48:                                               ; preds = %41, %44
  %49 = phi i32 [ %45, %44 ], [ 1, %41 ]
  %50 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %49) #22
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65536
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %59, !prof !1104

54:                                               ; preds = %48
  %55 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %49) #22
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 524288
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %44, label %59, !prof !1104

59:                                               ; preds = %54, %48
  %60 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #22, !range !552
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %86, label %88

62:                                               ; preds = %38
  %63 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #22, !range !552
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %62
  %66 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %88, label %72

68:                                               ; preds = %78
  %69 = add nuw i32 %73, 1
  %70 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %88, !llvm.loop !1105

72:                                               ; preds = %65, %68
  %73 = phi i32 [ %69, %68 ], [ 0, %65 ]
  %74 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %73) #22
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65536
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %73) #22
  %80 = load i64, ptr %79, align 8
  %81 = and i64 %80, 524288
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %68, label %83

83:                                               ; preds = %78, %72
  %84 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #22, !range !552
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83, %59, %21
  %87 = phi i32 [ 2230, %21 ], [ 2248, %59 ], [ 2261, %83 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef %87, ptr noundef nonnull @.str.37) #23
  br label %88

88:                                               ; preds = %24, %27, %33, %44, %68, %86, %19, %41, %65, %83, %62, %59, %4, %21
  %89 = phi i8 [ 1, %4 ], [ 1, %21 ], [ 1, %59 ], [ 0, %62 ], [ 1, %83 ], [ 0, %65 ], [ 0, %41 ], [ 0, %19 ], [ 1, %86 ], [ 0, %68 ], [ 0, %44 ], [ 0, %24 ], [ 1, %27 ], [ 1, %33 ]
  ret i8 %89
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1106 !PGOFuncName !1107 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @gimple_could_trap_p(ptr noundef %0) local_unnamed_addr #0 !prof !1108 {
  %2 = tail call fastcc zeroext i8 @gimple_could_trap_p_1(ptr noundef %0, i8 noundef zeroext 1) #22
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_could_trap_p_1(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1109 !PGOFuncName !1110 {
  %3 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #22, !range !552
  %4 = icmp ne i8 %3, 0
  %5 = icmp eq i8 %1, 0
  %6 = and i1 %5, %4
  %7 = zext i1 %6 to i32
  %8 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %9 = icmp ugt i32 %8, %7
  br i1 %9, label %14, label %19, !prof !1111

10:                                               ; preds = %14
  %11 = add nuw i32 %15, 1
  %12 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %19, !prof !1112, !llvm.loop !1113

14:                                               ; preds = %2, %10
  %15 = phi i32 [ %11, %10 ], [ %7, %2 ]
  %16 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %15) #22
  %17 = tail call zeroext i8 @tree_could_trap_p(ptr noundef %16) #23
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %10, label %73, !prof !1114

19:                                               ; preds = %10, %2
  %20 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %21 = trunc i32 %20 to i8
  switch i8 %21, label %73 [
    i8 7, label %22
    i8 8, label %24
    i8 6, label %39
  ], !prof !1115

22:                                               ; preds = %19
  %23 = tail call fastcc zeroext i8 @gimple_asm_volatile_p(ptr noundef %0) #22, !range !552
  br label %73

24:                                               ; preds = %19
  %25 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %73, label %27, !prof !1116

27:                                               ; preds = %24
  %28 = load i64, ptr %25, align 8
  %29 = and i64 %28, 65535
  %30 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !539
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %73, !prof !1117

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %25, i64 0, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i8
  br label %73

39:                                               ; preds = %19
  %40 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #22
  %41 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #22, !range !854
  %42 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %41) #22, !range !559
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %46, !prof !1118

44:                                               ; preds = %39
  %45 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #22
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi ptr [ %45, %44 ], [ null, %39 ]
  %48 = load i64, ptr %40, align 8
  %49 = trunc i64 %48 to i16
  switch i16 %49, label %57 [
    i16 9, label %69
    i16 13, label %50
    i16 14, label %50
  ], !prof !1119

50:                                               ; preds = %46, %46
  %51 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !536
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 9
  %56 = zext i1 %55 to i8
  br label %69

57:                                               ; preds = %46
  %58 = trunc i64 %48 to i32
  %59 = and i32 %58, 65535
  %60 = add nsw i32 %59, -6
  %61 = icmp ult i32 %60, 3
  br i1 %61, label %62, label %69, !prof !1120

62:                                               ; preds = %57
  %63 = and i64 %48, 2097152
  %64 = icmp eq i64 %63, 0
  %65 = load i32, ptr @flag_trapv, align 4
  %66 = icmp ne i32 %65, 0
  %67 = select i1 %64, i1 %66, i1 false, !prof !1121
  %68 = zext i1 %67 to i8
  br label %69

69:                                               ; preds = %50, %46, %57, %62
  %70 = phi i8 [ 0, %62 ], [ 0, %57 ], [ %56, %50 ], [ 1, %46 ]
  %71 = phi i8 [ %68, %62 ], [ 0, %57 ], [ 0, %50 ], [ 0, %46 ]
  %72 = tail call zeroext i8 @operation_could_trap_p(i32 noundef %41, i8 noundef zeroext %70, i8 noundef zeroext %71, ptr noundef %47) #23
  br label %73

73:                                               ; preds = %14, %33, %19, %24, %27, %69, %22
  %74 = phi i8 [ %72, %69 ], [ %23, %22 ], [ 1, %27 ], [ 1, %24 ], [ 0, %19 ], [ %38, %33 ], [ 1, %14 ]
  ret i8 %74
}

; Function Attrs: optsize
declare zeroext i8 @tree_could_trap_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_asm_volatile_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1122 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 17
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 !prof !1123 !PGOFuncName !1124 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ], !prof !1125

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #22
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #22, !range !854
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13, !prof !1126

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #22
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !536
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #22
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !536
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !555
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !555
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !1127 !PGOFuncName !1128 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !1129

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #22
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i8 @operation_could_trap_p(i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 !prof !672 !PGOFuncName !1130 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #22
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !536
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !536
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !536
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @gimple_assign_rhs_could_trap_p(ptr noundef %0) local_unnamed_addr #0 !prof !1131 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #22, !range !552
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !1132

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 2333, ptr noundef nonnull @.str.37) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call fastcc zeroext i8 @gimple_could_trap_p_1(ptr noundef %0, i8 noundef zeroext 0) #22
  ret i8 %6
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_gimple_statistics() local_unnamed_addr #14 !prof !672 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !555
  %2 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %1) #25
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_gimple_operand(ptr noundef readonly %0) local_unnamed_addr #6 !prof !1133 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !1134

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 65535
  %7 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %6) #22, !range !559
  %8 = icmp eq i32 %7, 3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %3, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %3 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_gimple_reg_rhs(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !1135 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %4) #22, !range !559
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_gimple_reg_type(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !1136 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -19
  %6 = icmp ult i32 %5, -4
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_gimple_lvalue(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !1137 {
  %2 = tail call zeroext i8 @is_gimple_addressable(ptr noundef %0) #22, !range !552
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %12, !prof !1138

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 150
  br i1 %8, label %12, label %9, !prof !1139

9:                                                ; preds = %4
  %10 = icmp eq i32 %7, 42
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %9, %4, %1
  %13 = phi i8 [ 1, %4 ], [ 1, %1 ], [ %11, %9 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_gimple_addressable(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !1140 {
  %2 = tail call zeroext i8 @is_gimple_id(ptr noundef %0) #22, !range !552
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %16, !prof !1141

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #22, !range !552
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %16, !prof !1142

7:                                                ; preds = %4
  %8 = load i64, ptr %0, align 8
  %9 = trunc i64 %8 to i32
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -47
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %16, label %13, !prof !1143

13:                                               ; preds = %7
  %14 = icmp eq i32 %10, 49
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %7, %13, %4, %1
  %17 = phi i8 [ 1, %4 ], [ 1, %1 ], [ %15, %13 ], [ 1, %7 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @is_gimple_condexpr(ptr noundef %0) local_unnamed_addr #0 !prof !1144 {
  %2 = tail call zeroext i8 @is_gimple_val(ptr noundef %0) #22, !range !552
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %22, !prof !1145

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !539
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %22, !prof !1146

10:                                               ; preds = %4
  %11 = tail call zeroext i8 @tree_could_trap_p(ptr noundef nonnull %0) #23
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %22, !prof !1147

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !536
  %16 = tail call zeroext i8 @is_gimple_val(ptr noundef %15) #22, !range !552
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18, !prof !1148

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !536
  %21 = tail call zeroext i8 @is_gimple_val(ptr noundef %20) #22, !range !552
  br label %22

22:                                               ; preds = %4, %10, %13, %18, %1
  %23 = phi i8 [ 1, %1 ], [ 0, %13 ], [ 0, %10 ], [ 0, %4 ], [ %21, %18 ]
  ret i8 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_gimple_id(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !1149 {
  %2 = tail call zeroext i8 @is_gimple_variable(ptr noundef %0) #22, !range !552
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11, !prof !1150

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %7 [
    i16 29, label %11
    i16 30, label %11
    i16 33, label %11
  ], !prof !1151

7:                                                ; preds = %4
  %8 = and i64 %5, 65535
  %9 = icmp eq i64 %8, 28
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %4, %4, %4, %7, %1
  %12 = phi i8 [ 1, %4 ], [ 1, %1 ], [ %10, %7 ], [ 1, %4 ], [ 1, %4 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1152 !PGOFuncName !1153 {
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
  ], !prof !1154

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @is_gimple_constant(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !1155 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %16 [
    i16 23, label %17
    i16 24, label %17
    i16 25, label %17
    i16 28, label %17
    i16 26, label %17
    i16 27, label %17
    i16 51, label %4
  ], !prof !1156

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !536
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8, !prof !1157

8:                                                ; preds = %4
  %9 = load i64, ptr %6, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 14
  br i1 %11, label %12, label %17, !prof !1157

12:                                               ; preds = %8
  %13 = lshr i64 %2, 17
  %14 = trunc i64 %13 to i8
  %15 = and i8 %14, 1
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %4, %8, %1, %1, %1, %1, %1, %1, %16, %12
  %18 = phi i8 [ 0, %16 ], [ %15, %12 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 0, %8 ], [ 0, %4 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @is_gimple_address(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !672 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 121
  br i1 %4, label %5, label %48

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !536
  %8 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %7) #22, !range !552
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %5, %22
  %11 = phi ptr [ %24, %22 ], [ %7, %5 ]
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -45
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !536
  %20 = tail call zeroext i8 @is_gimple_val(ptr noundef %19) #22, !range !552
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %10, %17
  %23 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !536
  %25 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %24) #22, !range !552
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %10, !llvm.loop !1158

27:                                               ; preds = %22, %5
  %28 = phi ptr [ %7, %5 ], [ %24, %22 ]
  %29 = load i64, ptr %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = and i32 %30, 65535
  %32 = and i64 %29, 65535
  %33 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !539
  %35 = icmp eq i32 %34, 1
  %36 = add nsw i32 %31, -47
  %37 = icmp ult i32 %36, 3
  %38 = or i1 %35, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %27
  %40 = trunc i64 %29 to i16
  %41 = add i16 %40, -29
  %42 = icmp ult i16 %41, 8
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = shl nuw nsw i16 %41, 3
  %45 = zext nneg i16 %44 to i64
  %46 = lshr i64 72058697861300481, %45
  %47 = trunc i64 %46 to i8
  br label %48

48:                                               ; preds = %17, %39, %43, %27, %1
  %49 = phi i8 [ 0, %1 ], [ 1, %27 ], [ %47, %43 ], [ 0, %39 ], [ 0, %17 ]
  ret i8 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @is_gimple_invariant_address(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !1159 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 121
  br i1 %4, label %5, label %20, !prof !1160

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !536
  %8 = tail call fastcc ptr @strip_invariant_refs(ptr noundef %7) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10, !prof !1161

10:                                               ; preds = %5
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !539
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %20, label %16, !prof !1162

16:                                               ; preds = %10
  %17 = tail call zeroext i8 @decl_address_invariant_p(ptr noundef nonnull %8) #23
  %18 = icmp ne i8 %17, 0
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %5, %16, %10, %1
  %21 = phi i8 [ 0, %1 ], [ 0, %5 ], [ 1, %10 ], [ %19, %16 ]
  ret i8 %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @strip_invariant_refs(ptr noundef readonly %0) unnamed_addr #16 !prof !1163 !PGOFuncName !1164 {
  %2 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #22, !range !552
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %30, label %4, !prof !1165

4:                                                ; preds = %1, %25
  %5 = phi ptr [ %27, %25 ], [ %0, %1 ]
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %25 [
    i16 45, label %8
    i16 46, label %8
    i16 41, label %21
  ], !prof !1166

8:                                                ; preds = %4, %4
  %9 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !536
  %11 = tail call zeroext i8 @is_gimple_constant(ptr noundef %10) #22, !range !552
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %30, label %13, !prof !1167

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !536
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %30, !prof !1168

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !536
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %30, !prof !1169

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !536
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30, !prof !1170

25:                                               ; preds = %4, %21, %17
  %26 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !536
  %28 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %27) #22, !range !552
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %4, !prof !1171, !llvm.loop !1172

30:                                               ; preds = %17, %13, %8, %21, %25, %1
  %31 = phi ptr [ %0, %1 ], [ %27, %25 ], [ null, %21 ], [ null, %8 ], [ null, %13 ], [ null, %17 ]
  ret ptr %31
}

; Function Attrs: optsize
declare zeroext i8 @decl_address_invariant_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @is_gimple_ip_invariant_address(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !1173 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 121
  br i1 %4, label %5, label %20, !prof !1174

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !536
  %8 = tail call fastcc ptr @strip_invariant_refs(ptr noundef %7) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10, !prof !1175

10:                                               ; preds = %5
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !539
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %20, label %16, !prof !1176

16:                                               ; preds = %10
  %17 = tail call zeroext i8 @decl_address_ip_invariant_p(ptr noundef nonnull %8) #23
  %18 = icmp ne i8 %17, 0
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %5, %16, %10, %1
  %21 = phi i8 [ 0, %1 ], [ 0, %5 ], [ 1, %10 ], [ %19, %16 ]
  ret i8 %21
}

; Function Attrs: optsize
declare zeroext i8 @decl_address_ip_invariant_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @is_gimple_ip_invariant(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !1177 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 121
  br i1 %4, label %5, label %7, !prof !1178

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @is_gimple_ip_invariant_address(ptr noundef nonnull %0) #22, !range !552
  br label %9

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @is_gimple_constant(ptr noundef nonnull %0) #22, !range !552
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i8 [ %6, %5 ], [ %8, %7 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @is_gimple_stmt(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !1179 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %23 [
    i16 116, label %4
    i16 58, label %15
    i16 56, label %15
    i16 138, label %24
    i16 134, label %24
    i16 135, label %24
    i16 133, label %24
    i16 139, label %24
    i16 130, label %24
    i16 131, label %24
    i16 143, label %24
    i16 142, label %24
    i16 140, label %24
    i16 147, label %24
    i16 153, label %24
    i16 155, label %24
    i16 156, label %24
    i16 158, label %24
    i16 157, label %24
    i16 159, label %24
    i16 160, label %24
    i16 161, label %24
    i16 154, label %24
    i16 59, label %24
    i16 53, label %24
    i16 185, label %24
  ], !prof !1180

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !536
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 19
  br i1 %9, label %10, label %24, !prof !1181

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !536
  %13 = tail call i32 @integer_zerop(ptr noundef %12) #23
  %14 = icmp ne i32 %13, 0
  br label %24

15:                                               ; preds = %1, %1
  %16 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !536
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i64, ptr %17, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 19
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %15, %19, %4, %10, %23
  %25 = phi i1 [ false, %23 ], [ false, %4 ], [ %14, %10 ], [ true, %15 ], [ %22, %19 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ]
  %26 = zext i1 %25 to i8
  ret i8 %26
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_gimple_variable(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !1182 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 32, label %8
    i16 34, label %8
    i16 36, label %8
  ], !prof !1183

4:                                                ; preds = %1
  %5 = and i64 %2, 65535
  %6 = icmp eq i64 %5, 141
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %1, %1, %4
  %9 = phi i8 [ 1, %1 ], [ %7, %4 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %9
}

; Function Attrs: optsize
declare zeroext i8 @needs_to_live_in_memory(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @is_gimple_non_addressable(ptr noundef %0) local_unnamed_addr #0 !prof !1184 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %8, !prof !1185

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !536
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %10 = tail call zeroext i8 @is_gimple_variable(ptr noundef %9) #22, !range !552
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12, !prof !1186

12:                                               ; preds = %8
  %13 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef %9) #23
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i8 [ 0, %8 ], [ %15, %12 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @is_gimple_asm_val(ptr noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 32
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5, %1
  %11 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %0) #22, !range !552
  br label %12

12:                                               ; preds = %5, %10
  %13 = phi i8 [ %11, %10 ], [ 1, %5 ]
  ret i8 %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @is_gimple_min_lval(ptr noundef readonly %0) local_unnamed_addr #16 !prof !1187 {
  %2 = tail call fastcc ptr @strip_invariant_refs(ptr noundef %0) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4, !prof !1188

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @is_gimple_id(ptr noundef nonnull %2) #22, !range !552
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %12, !prof !1189

7:                                                ; preds = %4
  %8 = load i64, ptr %2, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 47
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %4, %7, %1
  %13 = phi i8 [ 0, %1 ], [ 1, %4 ], [ %11, %7 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_gimple_cast(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !672 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 116, label %8
    i16 113, label %8
  ]

4:                                                ; preds = %1
  %5 = and i64 %2, 65535
  %6 = icmp eq i64 %5, 77
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %1, %4
  %9 = phi i8 [ 1, %1 ], [ %7, %4 ], [ 1, %1 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_call_expr_in(ptr noundef readonly %0) local_unnamed_addr #8 !prof !672 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 53
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !536
  %8 = load i64, ptr %7, align 8
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i64 [ %8, %5 ], [ %2, %1 ]
  %11 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %12 = and i64 %10, 65535
  %13 = icmp eq i64 %12, 150
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !536
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i64 [ %18, %14 ], [ %12, %9 ]
  %21 = phi ptr [ %16, %14 ], [ %11, %9 ]
  %22 = icmp eq i64 %20, 59
  %23 = select i1 %22, ptr %21, ptr null
  ret ptr %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @get_base_address(ptr noundef readonly %0) local_unnamed_addr #16 !prof !1190 {
  %2 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #22, !range !552
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %10, label %4, !prof !1191

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !536
  %8 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %7) #22, !range !552
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %4, !prof !1192, !llvm.loop !1193

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %19 [
    i16 32, label %20
    i16 34, label %20
    i16 36, label %20
    i16 141, label %14
    i16 28, label %20
    i16 51, label %20
    i16 47, label %20
    i16 48, label %20
    i16 49, label %20
  ], !prof !1194

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !536
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %19 [
    i16 32, label %20
    i16 34, label %20
    i16 36, label %20
  ], !prof !1195

19:                                               ; preds = %10, %14
  br label %20

20:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %14, %14, %14, %19
  %21 = phi ptr [ null, %19 ], [ %11, %14 ], [ %11, %14 ], [ %11, %14 ], [ %11, %10 ], [ %11, %10 ], [ %11, %10 ], [ %11, %10 ], [ %11, %10 ], [ %11, %10 ], [ %11, %10 ], [ %11, %10 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @recalculate_side_effects(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !1196 {
  %2 = load i64, ptr %0, align 8
  %3 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %0) #22
  %4 = and i64 %2, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !539
  switch i32 %6, label %33 [
    i32 10, label %7
    i32 5, label %9
    i32 6, label %9
    i32 7, label %9
    i32 4, label %9
    i32 9, label %9
    i32 1, label %34
  ], !prof !1197

7:                                                ; preds = %1
  %8 = trunc i64 %2 to i16
  switch i16 %8, label %9 [
    i16 54, label %34
    i16 53, label %34
    i16 129, label %34
    i16 125, label %34
    i16 126, label %34
    i16 127, label %34
    i16 128, label %34
  ], !prof !1198

9:                                                ; preds = %7, %1, %1, %1, %1, %1
  %10 = lshr i64 %2, 3
  %11 = and i64 %10, 65536
  %12 = and i64 %2, -65537
  %13 = or disjoint i64 %11, %12
  store i64 %13, ptr %0, align 8
  %14 = icmp sgt i32 %3, 0
  br i1 %14, label %15, label %34, !prof !1199

15:                                               ; preds = %9
  %16 = zext nneg i32 %3 to i64
  br label %17

17:                                               ; preds = %15, %29
  %18 = phi i64 [ %13, %15 ], [ %30, %29 ]
  %19 = phi i64 [ 0, %15 ], [ %31, %29 ]
  %20 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !536
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23, !prof !1200

23:                                               ; preds = %17
  %24 = load i64, ptr %21, align 8
  %25 = and i64 %24, 65536
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %29, label %27, !prof !1201

27:                                               ; preds = %23
  %28 = or i64 %18, 65536
  store i64 %28, ptr %0, align 8
  br label %29

29:                                               ; preds = %27, %23, %17
  %30 = phi i64 [ %28, %27 ], [ %18, %23 ], [ %18, %17 ]
  %31 = add nuw nsw i64 %19, 1
  %32 = icmp eq i64 %31, %16
  br i1 %32, label %34, label %17, !prof !1202, !llvm.loop !1203

33:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 2917, ptr noundef nonnull @.str.37) #23
  br label %34

34:                                               ; preds = %29, %9, %33, %1, %7, %7, %7, %7, %7, %7, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !1196 !PGOFuncName !1204 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !539
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13, !prof !1205

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !536
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !536
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !536
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @canonicalize_cond_expr_cond(ptr noundef %0) local_unnamed_addr #0 !prof !1206 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %13 [
    i16 116, label %4
    i16 113, label %4
  ], !prof !1207

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !536
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  %10 = tail call fastcc zeroext i8 @truth_value_p(i32 noundef %9) #22, !range !552
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12, !prof !1208

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %1, %12, %4
  %14 = phi i64 [ %7, %12 ], [ %2, %4 ], [ %2, %1 ]
  %15 = phi ptr [ %6, %12 ], [ %0, %4 ], [ %0, %1 ]
  %16 = trunc i64 %14 to i16
  switch i16 %16, label %69 [
    i16 116, label %26
    i16 113, label %26
    i16 96, label %17
    i16 56, label %39
  ], !prof !1209

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !536
  %20 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !536
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !536
  %24 = tail call ptr @build_int_cst(ptr noundef %23, i64 noundef 0) #23
  %25 = tail call ptr @build2_stat(i32 noundef 101, ptr noundef %19, ptr noundef %21, ptr noundef %24) #23
  br label %69

26:                                               ; preds = %13, %13
  %27 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !536
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 7
  br i1 %31, label %32, label %69, !prof !1208

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !536
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !536
  %37 = tail call ptr @build_int_cst(ptr noundef %36, i64 noundef 0) #23
  %38 = tail call ptr @build2_stat(i32 noundef 102, ptr noundef nonnull %28, ptr noundef %34, ptr noundef %37) #23
  br label %69

39:                                               ; preds = %13
  %40 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !536
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !539
  %46 = icmp eq i32 %45, 5
  br i1 %46, label %47, label %69, !prof !1210

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !536
  %50 = tail call i32 @integer_onep(ptr noundef %49) #23
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %69, label %52, !prof !1211

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 1, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !536
  %55 = tail call i32 @integer_zerop(ptr noundef %54) #23
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %69, label %57, !prof !1212

57:                                               ; preds = %52
  %58 = load ptr, ptr %40, align 8, !tbaa !536
  %59 = load i64, ptr %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = and i32 %60, 65535
  %62 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !536
  %64 = getelementptr inbounds %struct.tree_exp, ptr %58, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !536
  %66 = getelementptr inbounds %struct.tree_exp, ptr %58, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !536
  %68 = tail call ptr @build2_stat(i32 noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67) #23
  br label %69

69:                                               ; preds = %26, %13, %17, %57, %52, %47, %39, %32
  %70 = phi ptr [ %38, %32 ], [ %25, %17 ], [ %68, %57 ], [ %15, %52 ], [ %15, %47 ], [ %15, %39 ], [ %15, %13 ], [ %15, %26 ]
  %71 = tail call zeroext i8 @is_gimple_condexpr(ptr noundef %70) #22, !range !552
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %72, ptr null, ptr %70, !prof !1213
  ret ptr %73
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @truth_value_p(i32 noundef %0) unnamed_addr #2 !prof !1214 !PGOFuncName !1215 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !539
  %5 = icmp eq i32 %4, 5
  %6 = icmp eq i32 %0, 93
  %7 = or i1 %6, %5
  %8 = icmp eq i32 %0, 91
  %9 = or i1 %8, %7
  %10 = and i32 %0, -3
  %11 = icmp eq i32 %10, 92
  %12 = or i1 %11, %9
  %13 = add i32 %0, -95
  %14 = icmp ult i32 %13, 2
  %15 = or i1 %14, %12
  %16 = zext i1 %15 to i8
  ret i8 %16
}

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gimple_call_copy_skip_args(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !714 {
  %3 = alloca ptr, align 8
  %4 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #22
  %5 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %6 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %5) #22
  store ptr %6, ptr %3, align 8, !tbaa !555
  %7 = icmp sgt i32 %5, 0
  br i1 %7, label %8, label %17, !prof !1216

8:                                                ; preds = %2, %14
  %9 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %9) #23
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !1217

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %9) #22
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %6, ptr noundef %13) #22
  br label %14

14:                                               ; preds = %8, %12
  %15 = add nuw nsw i32 %9, 1
  %16 = icmp eq i32 %15, %5
  br i1 %16, label %17, label %8, !prof !1218, !llvm.loop !1219

17:                                               ; preds = %14, %2
  %18 = tail call ptr @gimple_build_call_vec(ptr noundef %4, ptr noundef %6) #22
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %3) #22
  %19 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !1220

21:                                               ; preds = %17
  %22 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #22
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %18, ptr noundef %22) #22
  br label %23

23:                                               ; preds = %21, %17
  %24 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #22
  tail call fastcc void @gimple_set_vuse(ptr noundef %18, ptr noundef %24) #22
  %25 = tail call fastcc ptr @gimple_vdef(ptr noundef %0) #22
  tail call fastcc void @gimple_set_vdef(ptr noundef %18, ptr noundef %25) #22
  %26 = tail call fastcc ptr @gimple_block(ptr noundef %0) #22
  tail call fastcc void @gimple_set_block(ptr noundef %18, ptr noundef %26) #22
  %27 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef %0) #22, !range !552
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29, !prof !1221

29:                                               ; preds = %23
  %30 = tail call fastcc i32 @gimple_location(ptr noundef %0) #22
  tail call fastcc void @gimple_set_location(ptr noundef %18, i32 noundef %30) #22
  br label %31

31:                                               ; preds = %29, %23
  %32 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #22
  tail call fastcc void @gimple_call_set_chain(ptr noundef %18, ptr noundef %32) #22
  %33 = tail call fastcc zeroext i8 @gimple_call_tail_p(ptr noundef %0) #22, !range !552
  tail call fastcc void @gimple_call_set_tail(ptr noundef %18, i8 noundef zeroext %33) #22
  %34 = tail call fastcc zeroext i8 @gimple_call_cannot_inline_p(ptr noundef %0) #22, !range !552
  tail call fastcc void @gimple_call_set_cannot_inline(ptr noundef %18, i8 noundef zeroext %34) #22
  %35 = tail call fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr noundef %0) #22, !range !552
  tail call fastcc void @gimple_call_set_return_slot_opt(ptr noundef %18, i8 noundef zeroext %35) #22
  %36 = tail call fastcc zeroext i8 @gimple_call_from_thunk_p(ptr noundef %0) #22, !range !552
  tail call fastcc void @gimple_call_set_from_thunk(ptr noundef %18, i8 noundef zeroext %36) #22
  %37 = tail call fastcc zeroext i8 @gimple_call_va_arg_pack_p(ptr noundef %0) #22, !range !552
  tail call fastcc void @gimple_call_set_va_arg_pack(ptr noundef %18, i8 noundef zeroext %37) #22
  tail call void @gimple_set_modified(ptr noundef %18, i8 noundef zeroext 1) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !714 !PGOFuncName !1222 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #23
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !prof !1223 !PGOFuncName !1224 {
  %3 = load i32, ptr %0, align 8, !tbaa !577
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !577
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !555
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #17 !prof !714 !PGOFuncName !1225 {
  %2 = load ptr, ptr %0, align 8, !tbaa !555
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1221

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !555
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_chain(ptr noundef %0) unnamed_addr #0 !prof !1226 !PGOFuncName !1227 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #22
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_tail_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !714 !PGOFuncName !1228 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 19
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_cannot_inline_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !714 !PGOFuncName !1229 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1226 !PGOFuncName !1230 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 18
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_from_thunk_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !714 !PGOFuncName !1231 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 17
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_va_arg_pack_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !714 !PGOFuncName !1232 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 20
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #18

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @compare_field_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !672 {
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = lshr i64 %4, 32
  %6 = and i64 %5, 255
  %7 = shl nuw i64 1, %6
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = lshr i64 %9, 32
  %11 = and i64 %10, 255
  %12 = shl nuw i64 1, %11
  %13 = icmp eq i64 %7, %12
  %14 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !536
  br i1 %13, label %16, label %28

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !536
  %19 = tail call i32 @operand_equal_p(ptr noundef %15, ptr noundef %18, i32 noundef 0) #23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %60, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !536
  %24 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !536
  %26 = tail call i32 @tree_int_cst_equal(ptr noundef %23, ptr noundef %25) #23
  %27 = icmp ne i32 %26, 0
  br label %60

28:                                               ; preds = %2
  %29 = tail call i32 @host_integerp(ptr noundef %15, i32 noundef 0) #23
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %60, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !536
  %34 = tail call i32 @host_integerp(ptr noundef %33, i32 noundef 0) #23
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %60, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !536
  %39 = getelementptr inbounds %struct.tree_int_cst, ptr %38, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !536
  %41 = load ptr, ptr %14, align 8, !tbaa !536
  %42 = getelementptr inbounds %struct.tree_int_cst, ptr %41, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !536
  %44 = lshr i64 %40, 3
  %45 = add i64 %43, %44
  %46 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !536
  %48 = getelementptr inbounds %struct.tree_int_cst, ptr %47, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !536
  %50 = load ptr, ptr %32, align 8, !tbaa !536
  %51 = getelementptr inbounds %struct.tree_int_cst, ptr %50, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !536
  %53 = lshr i64 %49, 3
  %54 = add i64 %52, %53
  %55 = icmp eq i64 %45, %54
  %56 = xor i64 %49, %40
  %57 = and i64 %56, 7
  %58 = icmp eq i64 %57, 0
  %59 = select i1 %55, i1 %58, i1 false
  br label %60

60:                                               ; preds = %28, %31, %16, %21, %36
  %61 = phi i1 [ %59, %36 ], [ false, %16 ], [ %27, %21 ], [ false, %31 ], [ false, %28 ]
  %62 = zext i1 %61 to i8
  ret i8 %62
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_register_type(ptr noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !539
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 3819, ptr noundef nonnull @.str.37) #23
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %10 = load ptr, ptr %9, align 8, !tbaa !536
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @gimple_register_type(ptr noundef %10) #22
  br label %14

14:                                               ; preds = %12, %8
  %15 = load ptr, ptr @gimple_types, align 8, !tbaa !555
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call ptr @htab_create(i64 noundef 16381, ptr noundef nonnull @gimple_type_hash, ptr noundef nonnull @gimple_type_eq, ptr noundef null) #23
  store ptr %18, ptr @gimple_types, align 8, !tbaa !555
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi ptr [ %18, %17 ], [ %15, %14 ]
  %21 = tail call ptr @htab_find_slot(ptr noundef %20, ptr noundef nonnull %0, i32 noundef 1) #23
  %22 = load ptr, ptr %21, align 8, !tbaa !555
  %23 = icmp eq ptr %22, null
  %24 = icmp eq ptr %22, %0
  %25 = or i1 %23, %24
  br i1 %25, label %94, label %26

26:                                               ; preds = %19
  %27 = load i64, ptr %0, align 8
  %28 = load i64, ptr %22, align 8
  %29 = xor i64 %28, %27
  %30 = and i64 %29, 262144
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 3837, ptr noundef nonnull @.str.37) #23
  br label %33

33:                                               ; preds = %26, %32
  %34 = load ptr, ptr %9, align 8, !tbaa !536
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %49, label %36

36:                                               ; preds = %33, %39
  %37 = phi ptr [ %41, %39 ], [ %34, %33 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 15
  %41 = load ptr, ptr %40, align 8, !tbaa !536
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %43, label %36, !llvm.loop !1233

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 15
  %45 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 15
  %46 = load ptr, ptr %45, align 8, !tbaa !536
  store ptr %46, ptr %44, align 8, !tbaa !536
  br label %47

47:                                               ; preds = %36, %43
  %48 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 15
  store ptr null, ptr %48, align 8, !tbaa !536
  br label %49

49:                                               ; preds = %47, %33
  %50 = load i64, ptr %0, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %95 [
    i16 10, label %52
    i16 12, label %73
  ]

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !536
  %55 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !536
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %67, label %58

58:                                               ; preds = %52, %61
  %59 = phi ptr [ %63, %61 ], [ %56, %52 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.tree_type, ptr %59, i64 0, i32 13
  %63 = load ptr, ptr %62, align 8, !tbaa !536
  %64 = icmp eq ptr %63, %0
  br i1 %64, label %65, label %58, !llvm.loop !1234

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.tree_type, ptr %59, i64 0, i32 13
  br label %67

67:                                               ; preds = %52, %65
  %68 = phi ptr [ %66, %65 ], [ %55, %52 ]
  %69 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %70 = load ptr, ptr %69, align 8, !tbaa !536
  store ptr %70, ptr %68, align 8, !tbaa !536
  br label %71

71:                                               ; preds = %58, %67
  %72 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  store ptr null, ptr %72, align 8, !tbaa !536
  br label %95

73:                                               ; preds = %49
  %74 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !536
  %76 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 10
  %77 = load ptr, ptr %76, align 8, !tbaa !536
  %78 = icmp eq ptr %77, %0
  br i1 %78, label %88, label %79

79:                                               ; preds = %73, %82
  %80 = phi ptr [ %84, %82 ], [ %77, %73 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %92, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.tree_type, ptr %80, i64 0, i32 13
  %84 = load ptr, ptr %83, align 8, !tbaa !536
  %85 = icmp eq ptr %84, %0
  br i1 %85, label %86, label %79, !llvm.loop !1235

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.tree_type, ptr %80, i64 0, i32 13
  br label %88

88:                                               ; preds = %73, %86
  %89 = phi ptr [ %87, %86 ], [ %76, %73 ]
  %90 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %91 = load ptr, ptr %90, align 8, !tbaa !536
  store ptr %91, ptr %89, align 8, !tbaa !536
  br label %92

92:                                               ; preds = %79, %88
  %93 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  store ptr null, ptr %93, align 8, !tbaa !536
  br label %95

94:                                               ; preds = %19
  store ptr %0, ptr %21, align 8, !tbaa !555
  br label %95

95:                                               ; preds = %71, %92, %49, %94
  %96 = phi ptr [ %0, %94 ], [ %22, %49 ], [ %22, %92 ], [ %22, %71 ]
  ret ptr %96
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gimple_type_hash(ptr noundef %0) #0 !prof !672 !PGOFuncName !1236 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.obstack, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  store ptr null, ptr %2, align 8, !tbaa !555
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #24
  %4 = load ptr, ptr @type_hash_cache, align 8, !tbaa !555
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call ptr @pointer_map_create() #23
  store ptr %7, ptr @type_hash_cache, align 8, !tbaa !555
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ %4, %1 ]
  %10 = tail call ptr @pointer_map_contains(ptr noundef %9, ptr noundef %0) #23
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !555
  %14 = ptrtoint ptr %13 to i64
  %15 = trunc i64 %14 to i32
  %16 = tail call i32 @iterative_hash_hashval_t(i32 noundef %15, i32 noundef 0) #23
  br label %35

17:                                               ; preds = %8
  store i32 1, ptr @next_dfs_num, align 4, !tbaa !539
  %18 = tail call ptr @pointer_map_create() #23
  %19 = call i32 @_obstack_begin(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #23
  %20 = call fastcc i32 @iterative_hash_gimple_type(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef %18, ptr noundef nonnull %3) #22
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %2) #22
  call void @pointer_map_destroy(ptr noundef %18) #23
  %21 = getelementptr inbounds %struct.obstack, ptr %3, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !1237
  %23 = ptrtoint ptr %22 to i64
  %24 = sub i64 0, %23
  %25 = getelementptr inbounds %struct.obstack, ptr %3, i64 0, i32 5
  store i64 %24, ptr %25, align 8, !tbaa !1239
  %26 = icmp sgt i64 %24, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.obstack, ptr %3, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !1240
  %30 = ptrtoint ptr %29 to i64
  %31 = sub i64 %30, %23
  %32 = icmp sgt i64 %31, %24
  br i1 %32, label %35, label %33

33:                                               ; preds = %27, %17
  %34 = getelementptr inbounds i8, ptr %22, i64 %24
  call void @obstack_free(ptr noundef nonnull %3, ptr noundef %34) #23
  br label %35

35:                                               ; preds = %27, %33, %12
  %36 = phi i32 [ %16, %12 ], [ %20, %33 ], [ %20, %27 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret i32 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gimple_type_eq(ptr noundef %0, ptr noundef %1) #0 !prof !672 !PGOFuncName !1241 {
  %3 = tail call fastcc i32 @gimple_types_compatible_p(ptr noundef %0, ptr noundef %1) #22
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @iterative_hash_hashval_t(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @iterative_hash_gimple_type(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !672 !PGOFuncName !1242 {
  %6 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 5
  store i64 16, ptr %6, align 8, !tbaa !1239
  %7 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !1240
  %9 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !1243
  %11 = ptrtoint ptr %8 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = icmp slt i64 %13, 16
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  tail call void @_obstack_newchunk(ptr noundef nonnull %4, i32 noundef 16) #23
  %16 = load i64, ptr %6, align 8, !tbaa !1239
  %17 = load ptr, ptr %9, align 8, !tbaa !1243
  br label %18

18:                                               ; preds = %5, %15
  %19 = phi ptr [ %10, %5 ], [ %17, %15 ]
  %20 = phi i64 [ 16, %5 ], [ %16, %15 ]
  %21 = getelementptr inbounds i8, ptr %19, i64 %20
  %22 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !1244
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 10
  %27 = load i8, ptr %26, align 8
  %28 = or i8 %27, 2
  store i8 %28, ptr %26, align 8
  br label %29

29:                                               ; preds = %18, %25
  %30 = ptrtoint ptr %23 to i64
  store i64 %30, ptr %6, align 8, !tbaa !1239
  %31 = ptrtoint ptr %21 to i64
  %32 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !1245
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %31
  %36 = xor i32 %33, -1
  %37 = sext i32 %36 to i64
  %38 = and i64 %35, %37
  %39 = inttoptr i64 %38 to ptr
  store ptr %39, ptr %9, align 8, !tbaa !1243
  %40 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !1237
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %38, %42
  %44 = load ptr, ptr %7, align 8, !tbaa !1240
  %45 = ptrtoint ptr %44 to i64
  %46 = sub i64 %45, %42
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %29
  store ptr %44, ptr %9, align 8, !tbaa !1243
  br label %49

49:                                               ; preds = %29, %48
  %50 = phi ptr [ %39, %29 ], [ %44, %48 ]
  store ptr %50, ptr %22, align 8, !tbaa !1244
  %51 = tail call ptr @pointer_map_insert(ptr noundef %3, ptr noundef %0) #23
  store ptr %23, ptr %51, align 8, !tbaa !555
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef %2, ptr noundef %0) #22
  %52 = load i32, ptr @next_dfs_num, align 4, !tbaa !539
  %53 = add i32 %52, 1
  store i32 %53, ptr @next_dfs_num, align 4, !tbaa !539
  store i32 %52, ptr %23, align 4, !tbaa !1246
  %54 = getelementptr inbounds %struct.sccs, ptr %23, i64 0, i32 1
  store i32 %52, ptr %54, align 4, !tbaa !1248
  %55 = getelementptr inbounds %struct.sccs, ptr %23, i64 0, i32 2
  store i8 1, ptr %55, align 4, !tbaa !1249
  %56 = load i64, ptr %0, align 8
  %57 = trunc i64 %56 to i32
  %58 = and i32 %57, 65535
  %59 = tail call i32 @iterative_hash_hashval_t(i32 noundef %58, i32 noundef 0) #23
  %60 = load i64, ptr %0, align 8
  %61 = trunc i64 %60 to i32
  %62 = lshr i32 %61, 20
  %63 = and i32 %62, 1
  %64 = lshr i32 %61, 18
  %65 = and i32 %64, 2
  %66 = or disjoint i32 %63, %65
  %67 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = lshr i32 %68, 11
  %70 = and i32 %69, 4
  %71 = or disjoint i32 %66, %70
  %72 = lshr i64 %60, 48
  %73 = trunc i64 %72 to i32
  %74 = and i32 %73, 65280
  %75 = or disjoint i32 %71, %74
  %76 = tail call i32 @iterative_hash_hashval_t(i32 noundef %75, i32 noundef %59) #23
  %77 = load i64, ptr %0, align 8
  %78 = trunc i64 %77 to i32
  %79 = lshr i32 %78, 18
  %80 = and i32 %79, 1
  %81 = tail call i32 @iterative_hash_hashval_t(i32 noundef %80, i32 noundef %76) #23
  %82 = load i64, ptr %0, align 8
  %83 = trunc i64 %82 to i16
  switch i16 %83, label %107 [
    i16 6, label %84
    i16 7, label %84
    i16 8, label %84
    i16 9, label %84
    i16 11, label %84
  ]

84:                                               ; preds = %49, %49, %49, %49, %49
  %85 = load i32, ptr %67, align 4
  %86 = and i32 %85, 1023
  %87 = tail call i32 @iterative_hash_hashval_t(i32 noundef %86, i32 noundef %81) #23
  %88 = load i64, ptr %0, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 14
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #23
  br label %97

93:                                               ; preds = %84
  %94 = load i32, ptr %67, align 4
  %95 = lshr i32 %94, 16
  %96 = and i32 %95, 255
  br label %97

97:                                               ; preds = %93, %91
  %98 = phi i32 [ %92, %91 ], [ %96, %93 ]
  %99 = tail call i32 @iterative_hash_hashval_t(i32 noundef %98, i32 noundef %87) #23
  %100 = load i64, ptr %0, align 8
  %101 = trunc i64 %100 to i32
  %102 = lshr i32 %101, 21
  %103 = and i32 %102, 1
  %104 = tail call i32 @iterative_hash_hashval_t(i32 noundef %103, i32 noundef %99) #23
  %105 = load i64, ptr %0, align 8
  %106 = trunc i64 %105 to i16
  br label %107

107:                                              ; preds = %49, %97
  %108 = phi i16 [ %83, %49 ], [ %106, %97 ]
  %109 = phi i32 [ %81, %49 ], [ %104, %97 ]
  switch i16 %108, label %128 [
    i16 10, label %110
    i16 12, label %110
  ]

110:                                              ; preds = %107, %107
  %111 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !536
  %113 = load i64, ptr %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = and i32 %114, 65535
  %116 = add nsw i32 %115, -16
  %117 = icmp ult i32 %116, 3
  br i1 %117, label %118, label %126

118:                                              ; preds = %110
  %119 = tail call i32 @iterative_hash_hashval_t(i32 noundef %115, i32 noundef %109) #23
  %120 = load ptr, ptr %111, align 8, !tbaa !536
  %121 = getelementptr inbounds %struct.tree_type, ptr %120, i64 0, i32 16
  %122 = load ptr, ptr %121, align 8, !tbaa !536
  %123 = getelementptr inbounds %struct.tree_type, ptr %122, i64 0, i32 12
  %124 = load ptr, ptr %123, align 8, !tbaa !536
  %125 = tail call fastcc i32 @iterative_hash_name(ptr noundef %124, i32 noundef %119) #22
  br label %128

126:                                              ; preds = %110
  %127 = tail call fastcc i32 @visit(ptr noundef nonnull %112, ptr noundef nonnull %23, i32 noundef %109, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4) #22
  br label %128

128:                                              ; preds = %107, %118, %126
  %129 = phi i32 [ %125, %118 ], [ %127, %126 ], [ %109, %107 ]
  %130 = load i64, ptr %0, align 8
  %131 = and i64 %130, 65535
  %132 = icmp eq i64 %131, 8
  br i1 %132, label %133, label %156

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %135 = load ptr, ptr %134, align 8, !tbaa !536
  %136 = load ptr, ptr @global_trees, align 16, !tbaa !555
  %137 = icmp eq ptr %135, %136
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = tail call i32 @iterative_hash_expr(ptr noundef %135, i32 noundef %129) #23
  %140 = load ptr, ptr @global_trees, align 16, !tbaa !555
  br label %141

141:                                              ; preds = %138, %133
  %142 = phi ptr [ %140, %138 ], [ %135, %133 ]
  %143 = phi i32 [ %139, %138 ], [ %129, %133 ]
  %144 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %145 = load ptr, ptr %144, align 8, !tbaa !536
  %146 = icmp eq ptr %145, %142
  br i1 %146, label %149, label %147

147:                                              ; preds = %141
  %148 = tail call i32 @iterative_hash_expr(ptr noundef %145, i32 noundef %143) #23
  br label %149

149:                                              ; preds = %147, %141
  %150 = phi i32 [ %148, %147 ], [ %143, %141 ]
  %151 = load i32, ptr %67, align 4
  %152 = lshr i32 %151, 24
  %153 = and i32 %152, 1
  %154 = tail call i32 @iterative_hash_hashval_t(i32 noundef %153, i32 noundef %150) #23
  %155 = load i64, ptr %0, align 8
  br label %156

156:                                              ; preds = %149, %128
  %157 = phi i64 [ %155, %149 ], [ %130, %128 ]
  %158 = phi i32 [ %154, %149 ], [ %129, %128 ]
  %159 = and i64 %157, 65535
  %160 = icmp eq i64 %159, 15
  br i1 %160, label %161, label %173

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !536
  %164 = icmp eq ptr %163, null
  br i1 %164, label %173, label %165

165:                                              ; preds = %161
  %166 = load i32, ptr %67, align 4
  %167 = lshr i32 %166, 24
  %168 = and i32 %167, 1
  %169 = tail call i32 @iterative_hash_hashval_t(i32 noundef %168, i32 noundef %158) #23
  %170 = load ptr, ptr %162, align 8, !tbaa !536
  %171 = tail call fastcc i32 @visit(ptr noundef %170, ptr noundef nonnull %23, i32 noundef %169, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4) #22
  %172 = load i64, ptr %0, align 8
  br label %173

173:                                              ; preds = %165, %161, %156
  %174 = phi i64 [ %172, %165 ], [ %157, %161 ], [ %157, %156 ]
  %175 = phi i32 [ %171, %165 ], [ %158, %161 ], [ %158, %156 ]
  %176 = trunc i64 %174 to i32
  %177 = and i32 %176, 65535
  %178 = add nsw i32 %177, -13
  %179 = icmp ult i32 %178, 3
  br i1 %179, label %180, label %185

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !536
  %183 = tail call fastcc i32 @visit(ptr noundef %182, ptr noundef nonnull %23, i32 noundef %175, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4) #22
  %184 = load i64, ptr %0, align 8
  br label %185

185:                                              ; preds = %173, %180
  %186 = phi i64 [ %184, %180 ], [ %174, %173 ]
  %187 = phi i32 [ %183, %180 ], [ %175, %173 ]
  %188 = and i64 %186, 65534
  %189 = icmp eq i64 %188, 20
  br i1 %189, label %190, label %221

190:                                              ; preds = %185
  %191 = and i64 %186, 21
  %192 = icmp eq i64 %191, 21
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %195 = load ptr, ptr %194, align 8, !tbaa !536
  %196 = tail call fastcc i32 @visit(ptr noundef %195, ptr noundef nonnull %23, i32 noundef %187, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4) #22
  br label %197

197:                                              ; preds = %193, %190
  %198 = phi i32 [ %196, %193 ], [ %187, %190 ]
  %199 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !536
  %201 = tail call fastcc i32 @visit(ptr noundef %200, ptr noundef nonnull %23, i32 noundef %198, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4) #22
  %202 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !536
  %204 = icmp eq ptr %203, null
  br i1 %204, label %216, label %205

205:                                              ; preds = %197, %205
  %206 = phi ptr [ %214, %205 ], [ %203, %197 ]
  %207 = phi i32 [ %211, %205 ], [ %201, %197 ]
  %208 = phi i32 [ %212, %205 ], [ 0, %197 ]
  %209 = getelementptr inbounds %struct.tree_list, ptr %206, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !536
  %211 = tail call fastcc i32 @visit(ptr noundef %210, ptr noundef nonnull %23, i32 noundef %207, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  %212 = add i32 %208, 1
  %213 = getelementptr inbounds %struct.tree_common, ptr %206, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !536
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %205, !llvm.loop !1250

216:                                              ; preds = %205, %197
  %217 = phi i32 [ 0, %197 ], [ %212, %205 ]
  %218 = phi i32 [ %201, %197 ], [ %211, %205 ]
  %219 = tail call i32 @iterative_hash_hashval_t(i32 noundef %217, i32 noundef %218) #23
  %220 = load i64, ptr %0, align 8
  br label %221

221:                                              ; preds = %185, %216
  %222 = phi i64 [ %220, %216 ], [ %186, %185 ]
  %223 = phi i32 [ %219, %216 ], [ %187, %185 ]
  %224 = trunc i64 %222 to i32
  %225 = and i32 %224, 65535
  %226 = add nsw i32 %225, -16
  %227 = icmp ult i32 %226, 3
  br i1 %227, label %228, label %255

228:                                              ; preds = %221
  %229 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %230 = load ptr, ptr %229, align 8, !tbaa !536
  %231 = getelementptr inbounds %struct.tree_type, ptr %230, i64 0, i32 12
  %232 = load ptr, ptr %231, align 8, !tbaa !536
  %233 = tail call fastcc i32 @iterative_hash_name(ptr noundef %232, i32 noundef %223) #22
  %234 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !536
  %236 = icmp eq ptr %235, null
  br i1 %236, label %251, label %237

237:                                              ; preds = %228, %237
  %238 = phi ptr [ %249, %237 ], [ %235, %228 ]
  %239 = phi i32 [ %246, %237 ], [ %233, %228 ]
  %240 = phi i32 [ %247, %237 ], [ 0, %228 ]
  %241 = getelementptr inbounds %struct.tree_decl_minimal, ptr %238, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !536
  %243 = tail call fastcc i32 @iterative_hash_name(ptr noundef %242, i32 noundef %239) #22
  %244 = getelementptr inbounds %struct.tree_common, ptr %238, i64 0, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !536
  %246 = tail call fastcc i32 @visit(ptr noundef %245, ptr noundef nonnull %23, i32 noundef %243, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  %247 = add i32 %240, 1
  %248 = getelementptr inbounds %struct.tree_common, ptr %238, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !536
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %237, !llvm.loop !1251

251:                                              ; preds = %237, %228
  %252 = phi i32 [ 0, %228 ], [ %247, %237 ]
  %253 = phi i32 [ %233, %228 ], [ %246, %237 ]
  %254 = tail call i32 @iterative_hash_hashval_t(i32 noundef %252, i32 noundef %253) #23
  br label %255

255:                                              ; preds = %221, %251
  %256 = phi i32 [ %254, %251 ], [ %223, %221 ]
  %257 = getelementptr inbounds %struct.sccs, ptr %23, i64 0, i32 3
  store i32 %256, ptr %257, align 4, !tbaa !1252
  %258 = load i32, ptr %54, align 4, !tbaa !1248
  %259 = load i32, ptr %23, align 4, !tbaa !1246
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %279

261:                                              ; preds = %255, %268
  %262 = load ptr, ptr %2, align 8, !tbaa !555
  %263 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %262) #22
  %264 = load ptr, ptr @type_hash_cache, align 8, !tbaa !555
  %265 = tail call ptr @pointer_map_contains(ptr noundef %264, ptr noundef %263) #23
  %266 = icmp eq ptr %265, null
  br i1 %266, label %268, label %267

267:                                              ; preds = %261
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 3747, ptr noundef nonnull @.str.37) #23
  br label %268

268:                                              ; preds = %261, %267
  %269 = tail call ptr @pointer_map_contains(ptr noundef %3, ptr noundef %263) #23
  %270 = load ptr, ptr %269, align 8, !tbaa !555
  %271 = getelementptr inbounds %struct.sccs, ptr %270, i64 0, i32 2
  store i8 0, ptr %271, align 4, !tbaa !1249
  %272 = load ptr, ptr @type_hash_cache, align 8, !tbaa !555
  %273 = tail call ptr @pointer_map_insert(ptr noundef %272, ptr noundef %263) #23
  %274 = getelementptr inbounds %struct.sccs, ptr %270, i64 0, i32 3
  %275 = load i32, ptr %274, align 4, !tbaa !1252
  %276 = zext i32 %275 to i64
  %277 = inttoptr i64 %276 to ptr
  store ptr %277, ptr %273, align 8, !tbaa !555
  %278 = icmp eq ptr %263, %0
  br i1 %278, label %279, label %261, !llvm.loop !1253

279:                                              ; preds = %268, %255
  %280 = tail call i32 @iterative_hash_hashval_t(i32 noundef %256, i32 noundef %1) #23
  ret i32 %280
}

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !1254 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !555
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @iterative_hash_name(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !1255 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 35
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !536
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = load i64, ptr %10, align 8
  %14 = and i64 %13, 65535
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i64 [ %14, %12 ], [ %6, %4 ]
  %17 = phi ptr [ %10, %12 ], [ %0, %4 ]
  %18 = icmp eq i64 %16, 1
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 3586, ptr noundef nonnull @.str.37) #23
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.tree_identifier, ptr %17, i64 0, i32 1, i32 2
  %22 = tail call i32 @iterative_hash(ptr noundef nonnull %21, i64 noundef 4, i32 noundef %1) #23
  br label %23

23:                                               ; preds = %8, %2, %20
  %24 = phi i32 [ %22, %20 ], [ %1, %2 ], [ %1, %8 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @visit(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !prof !672 !PGOFuncName !1256 {
  %7 = load ptr, ptr @type_hash_cache, align 8, !tbaa !555
  %8 = tail call ptr @pointer_map_contains(ptr noundef %7, ptr noundef %0) #23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !555
  %12 = ptrtoint ptr %11 to i64
  %13 = trunc i64 %12 to i32
  %14 = tail call i32 @iterative_hash_hashval_t(i32 noundef %13, i32 noundef %2) #23
  br label %46

15:                                               ; preds = %6
  %16 = tail call ptr @pointer_map_contains(ptr noundef %4, ptr noundef %0) #23
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 8, !tbaa !555
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %15, %18
  %22 = tail call fastcc i32 @iterative_hash_gimple_type(ptr noundef %0, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #22
  %23 = tail call ptr @pointer_map_contains(ptr noundef %4, ptr noundef %0) #23
  %24 = load ptr, ptr %23, align 8, !tbaa !555
  %25 = getelementptr inbounds %struct.sccs, ptr %1, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !1248
  %27 = getelementptr inbounds %struct.sccs, ptr %24, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !1248
  %29 = tail call i32 @llvm.umin.i32(i32 %26, i32 %28)
  store i32 %29, ptr %25, align 4, !tbaa !1248
  %30 = getelementptr inbounds %struct.sccs, ptr %24, i64 0, i32 2
  %31 = load i8, ptr %30, align 4, !tbaa !1249
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %21, %18
  %34 = phi ptr [ %19, %18 ], [ %24, %21 ]
  %35 = load i32, ptr %34, align 4, !tbaa !1246
  %36 = load i32, ptr %1, align 4, !tbaa !1246
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.sccs, ptr %34, i64 0, i32 2
  %40 = load i8, ptr %39, align 4, !tbaa !1249
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.sccs, ptr %1, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !1248
  %45 = tail call i32 @llvm.umin.i32(i32 %35, i32 %44)
  store i32 %45, ptr %43, align 4, !tbaa !1248
  br label %46

46:                                               ; preds = %33, %38, %42, %21, %10
  %47 = phi i32 [ %14, %10 ], [ %22, %21 ], [ %2, %42 ], [ %2, %38 ], [ %2, %33 ]
  ret i32 %47
}

; Function Attrs: optsize
declare i32 @iterative_hash_expr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #4 !prof !672 !PGOFuncName !1257 {
  %2 = load i32, ptr %0, align 8, !tbaa !577
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !577
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !555
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !672 !PGOFuncName !1258 {
  %2 = load ptr, ptr %0, align 8, !tbaa !555
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !555
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1259 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1260
  %6 = load i32, ptr %0, align 8, !tbaa !577
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @iterative_hash(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimple_types_compatible_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !1261 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %449, label %4

4:                                                ; preds = %2, %100
  %5 = phi ptr [ %104, %100 ], [ %1, %2 ]
  %6 = phi ptr [ %102, %100 ], [ %0, %2 ]
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %5, null
  %9 = or i1 %7, %8
  br i1 %9, label %449, label %10

10:                                               ; preds = %4
  %11 = load i64, ptr %6, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i64, ptr %5, align 8
  %14 = trunc i64 %13 to i32
  %15 = xor i32 %14, %12
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %449

18:                                               ; preds = %10
  %19 = lshr i32 %12, 20
  %20 = and i32 %19, 1
  %21 = lshr i32 %12, 18
  %22 = and i32 %21, 2
  %23 = or disjoint i32 %20, %22
  %24 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 11
  %27 = and i32 %26, 4
  %28 = lshr i64 %11, 48
  %29 = trunc i64 %28 to i32
  %30 = and i32 %29, 65280
  %31 = or disjoint i32 %23, %30
  %32 = or disjoint i32 %31, %27
  %33 = lshr i32 %14, 20
  %34 = and i32 %33, 1
  %35 = lshr i32 %14, 18
  %36 = and i32 %35, 2
  %37 = or disjoint i32 %34, %36
  %38 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 11
  %41 = and i32 %40, 4
  %42 = lshr i64 %13, 48
  %43 = trunc i64 %42 to i32
  %44 = and i32 %43, 65280
  %45 = or disjoint i32 %37, %44
  %46 = or disjoint i32 %45, %41
  %47 = icmp eq i32 %32, %46
  br i1 %47, label %48, label %449

48:                                               ; preds = %18
  %49 = trunc i64 %11 to i16
  switch i16 %49, label %106 [
    i16 19, label %449
    i16 6, label %50
    i16 7, label %50
    i16 8, label %50
    i16 9, label %50
    i16 11, label %50
    i16 14, label %50
    i16 13, label %50
    i16 5, label %50
  ]

50:                                               ; preds = %48, %48, %48, %48, %48, %48, %48, %48
  %51 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 7
  %52 = load i32, ptr %51, align 8, !tbaa !536
  %53 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 7
  %54 = load i32, ptr %53, align 8, !tbaa !536
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %449

56:                                               ; preds = %50
  %57 = xor i32 %39, %25
  %58 = and i32 %57, 1023
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %449

60:                                               ; preds = %56
  %61 = and i64 %11, 65535
  %62 = icmp eq i64 %61, 14
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = tail call i32 @vector_type_mode(ptr noundef nonnull %6) #23
  %65 = load i64, ptr %5, align 8
  br label %69

66:                                               ; preds = %60
  %67 = lshr i32 %25, 16
  %68 = and i32 %67, 255
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi i64 [ %65, %63 ], [ %13, %66 ]
  %71 = phi i32 [ %64, %63 ], [ %68, %66 ]
  %72 = and i64 %70, 65535
  %73 = icmp eq i64 %72, 14
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = tail call i32 @vector_type_mode(ptr noundef nonnull %5) #23
  br label %80

76:                                               ; preds = %69
  %77 = load i32, ptr %38, align 4
  %78 = lshr i32 %77, 16
  %79 = and i32 %78, 255
  br label %80

80:                                               ; preds = %76, %74
  %81 = phi i32 [ %75, %74 ], [ %79, %76 ]
  %82 = icmp eq i32 %71, %81
  br i1 %82, label %83, label %449

83:                                               ; preds = %80
  %84 = load i64, ptr %6, align 8
  %85 = load i64, ptr %5, align 8
  %86 = xor i64 %85, %84
  %87 = and i64 %86, 2097152
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %449

89:                                               ; preds = %83
  %90 = and i64 %84, 65535
  %91 = icmp eq i64 %90, 8
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, ptr %24, align 4
  %94 = load i32, ptr %38, align 4
  %95 = xor i32 %94, %93
  %96 = and i32 %95, 16778240
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %449

98:                                               ; preds = %92, %89
  %99 = trunc i64 %84 to i16
  switch i16 %99, label %106 [
    i16 9, label %449
    i16 11, label %449
    i16 14, label %100
    i16 13, label %100
  ]

100:                                              ; preds = %98, %98
  %101 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !536
  %103 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !536
  %105 = icmp eq ptr %102, %104
  br i1 %105, label %449, label %4

106:                                              ; preds = %98, %48
  %107 = tail call i32 @gimple_type_hash(ptr noundef nonnull %6) #22
  %108 = tail call i32 @gimple_type_hash(ptr noundef nonnull %5) #22
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %449

110:                                              ; preds = %106
  %111 = tail call fastcc ptr @lookup_type_pair(ptr noundef nonnull %6, ptr noundef nonnull %5) #22
  %112 = getelementptr inbounds %struct.type_pair_d, ptr %111, i64 0, i32 2
  %113 = load i32, ptr %112, align 4, !tbaa !1262
  switch i32 %113, label %117 [
    i32 0, label %114
    i32 1, label %114
    i32 -1, label %449
    i32 -2, label %118
  ]

114:                                              ; preds = %110, %110
  %115 = icmp eq i32 %113, 1
  %116 = zext i1 %115 to i32
  br label %449

117:                                              ; preds = %110
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 3245, ptr noundef nonnull @.str.37) #23
  br label %118

118:                                              ; preds = %110, %117
  store i32 -1, ptr %112, align 4, !tbaa !1262
  %119 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !536
  %121 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 4
  %122 = load ptr, ptr %121, align 8, !tbaa !536
  %123 = tail call i32 @attribute_list_equal(ptr noundef %120, ptr noundef %122) #23
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %447, label %125

125:                                              ; preds = %118
  %126 = load i64, ptr %6, align 8
  %127 = trunc i64 %126 to i16
  switch i16 %127, label %446 [
    i16 15, label %128
    i16 21, label %190
    i16 20, label %197
    i16 5, label %239
    i16 10, label %253
    i16 12, label %253
    i16 8, label %304
    i16 7, label %304
    i16 6, label %338
    i16 16, label %385
    i16 17, label %385
    i16 18, label %385
  ]

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !536
  %131 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !536
  %133 = tail call fastcc i32 @gimple_types_compatible_p(ptr noundef %130, ptr noundef %132) #22
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %447, label %135

135:                                              ; preds = %128
  %136 = load i32, ptr %24, align 4
  %137 = load i32, ptr %38, align 4
  %138 = xor i32 %137, %136
  %139 = and i32 %138, 16781312
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %447

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !536
  %144 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !536
  %146 = icmp eq ptr %143, null
  %147 = icmp eq ptr %145, null
  %148 = select i1 %146, i1 %147, i1 false
  br i1 %148, label %448, label %149

149:                                              ; preds = %141
  %150 = select i1 %146, i1 true, i1 %147
  br i1 %150, label %447, label %151

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.tree_type, ptr %143, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !536
  %154 = icmp ne ptr %153, null
  %155 = getelementptr inbounds %struct.tree_type, ptr %145, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !536
  %157 = icmp ne ptr %156, null
  %158 = xor i1 %154, %157
  br i1 %158, label %447, label %159

159:                                              ; preds = %151
  %160 = and i1 %154, %157
  br i1 %160, label %161, label %164

161:                                              ; preds = %159
  %162 = tail call i32 @operand_equal_p(ptr noundef nonnull %153, ptr noundef nonnull %156, i32 noundef 0) #23
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %447, label %164

164:                                              ; preds = %159, %161
  %165 = getelementptr inbounds %struct.tree_type, ptr %143, i64 0, i32 13
  %166 = load ptr, ptr %165, align 8, !tbaa !536
  %167 = getelementptr inbounds %struct.tree_type, ptr %145, i64 0, i32 13
  %168 = load ptr, ptr %167, align 8, !tbaa !536
  %169 = getelementptr inbounds %struct.tree_type, ptr %143, i64 0, i32 14
  %170 = load ptr, ptr %169, align 8, !tbaa !536
  %171 = getelementptr inbounds %struct.tree_type, ptr %145, i64 0, i32 14
  %172 = load ptr, ptr %171, align 8, !tbaa !536
  %173 = icmp eq ptr %166, %168
  br i1 %173, label %181, label %174

174:                                              ; preds = %164
  %175 = icmp ne ptr %166, null
  %176 = icmp ne ptr %168, null
  %177 = and i1 %175, %176
  br i1 %177, label %178, label %447

178:                                              ; preds = %174
  %179 = tail call i32 @operand_equal_p(ptr noundef nonnull %166, ptr noundef nonnull %168, i32 noundef 0) #23
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %447, label %181

181:                                              ; preds = %178, %164
  %182 = icmp eq ptr %170, %172
  br i1 %182, label %448, label %183

183:                                              ; preds = %181
  %184 = icmp ne ptr %170, null
  %185 = icmp ne ptr %172, null
  %186 = select i1 %184, i1 %185, i1 false
  br i1 %186, label %187, label %447

187:                                              ; preds = %183
  %188 = tail call i32 @operand_equal_p(ptr noundef nonnull %170, ptr noundef nonnull %172, i32 noundef 0) #23
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %447, label %448

190:                                              ; preds = %125
  %191 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 14
  %192 = load ptr, ptr %191, align 8, !tbaa !536
  %193 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 14
  %194 = load ptr, ptr %193, align 8, !tbaa !536
  %195 = tail call fastcc i32 @gimple_types_compatible_p(ptr noundef %192, ptr noundef %194) #22
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %447, label %197

197:                                              ; preds = %190, %125
  %198 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !536
  %200 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !536
  %202 = tail call fastcc i32 @gimple_types_compatible_p(ptr noundef %199, ptr noundef %201) #22
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %447, label %204

204:                                              ; preds = %197
  %205 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 14), align 8, !tbaa !1264
  %206 = tail call i32 %205(ptr noundef nonnull %6, ptr noundef nonnull %5) #23
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %447, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !536
  %211 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !536
  %213 = icmp eq ptr %210, %212
  br i1 %213, label %448, label %214

214:                                              ; preds = %208
  %215 = icmp ne ptr %210, null
  %216 = icmp ne ptr %212, null
  %217 = and i1 %215, %216
  br i1 %217, label %218, label %235

218:                                              ; preds = %214, %227
  %219 = phi ptr [ %229, %227 ], [ %210, %214 ]
  %220 = phi ptr [ %231, %227 ], [ %212, %214 ]
  %221 = getelementptr inbounds %struct.tree_list, ptr %219, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !536
  %223 = getelementptr inbounds %struct.tree_list, ptr %220, i64 0, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !536
  %225 = tail call fastcc i32 @gimple_types_compatible_p(ptr noundef %222, ptr noundef %224) #22
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %447, label %227

227:                                              ; preds = %218
  %228 = getelementptr inbounds %struct.tree_common, ptr %219, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !536
  %230 = getelementptr inbounds %struct.tree_common, ptr %220, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !536
  %232 = icmp ne ptr %229, null
  %233 = icmp ne ptr %231, null
  %234 = select i1 %232, i1 %233, i1 false
  br i1 %234, label %218, label %235, !llvm.loop !1276

235:                                              ; preds = %227, %214
  %236 = phi i1 [ %215, %214 ], [ %232, %227 ]
  %237 = phi i1 [ %216, %214 ], [ %233, %227 ]
  %238 = select i1 %236, i1 true, i1 %237
  br i1 %238, label %447, label %448

239:                                              ; preds = %125
  %240 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !536
  %242 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !536
  %244 = tail call fastcc i32 @gimple_types_compatible_p(ptr noundef %241, ptr noundef %243) #22
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %447, label %246

246:                                              ; preds = %239
  %247 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 14
  %248 = load ptr, ptr %247, align 8, !tbaa !536
  %249 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 14
  %250 = load ptr, ptr %249, align 8, !tbaa !536
  %251 = tail call fastcc i32 @gimple_types_compatible_p(ptr noundef %248, ptr noundef %250) #22
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %447, label %448

253:                                              ; preds = %125, %125
  %254 = load i64, ptr %5, align 8
  %255 = xor i64 %254, %126
  %256 = and i64 %255, 67108864
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %447

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !536
  %261 = load i64, ptr %260, align 8
  %262 = trunc i64 %261 to i32
  %263 = and i32 %262, 65535
  %264 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %265 = load ptr, ptr %264, align 8, !tbaa !536
  %266 = load i64, ptr %265, align 8
  %267 = trunc i64 %266 to i32
  %268 = and i32 %267, 65535
  %269 = icmp eq i32 %263, %268
  %270 = add nsw i32 %263, -16
  %271 = icmp ult i32 %270, 3
  %272 = and i1 %271, %269
  br i1 %272, label %273, label %299

273:                                              ; preds = %258
  %274 = getelementptr inbounds %struct.tree_type, ptr %260, i64 0, i32 2
  %275 = load ptr, ptr %274, align 8, !tbaa !536
  %276 = icmp eq ptr %275, null
  br i1 %276, label %281, label %277

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.tree_type, ptr %265, i64 0, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !536
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %299

281:                                              ; preds = %277, %273
  %282 = getelementptr inbounds %struct.tree_type, ptr %260, i64 0, i32 16
  %283 = load ptr, ptr %282, align 8, !tbaa !536
  %284 = getelementptr inbounds %struct.tree_type, ptr %265, i64 0, i32 16
  %285 = load ptr, ptr %284, align 8, !tbaa !536
  %286 = tail call fastcc zeroext i8 @compare_type_names_p(ptr noundef %283, ptr noundef %285, i8 noundef zeroext 1) #22, !range !552
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %281
  %289 = load ptr, ptr %259, align 8, !tbaa !536
  %290 = load ptr, ptr %264, align 8, !tbaa !536
  br label %299

291:                                              ; preds = %281
  %292 = load ptr, ptr %264, align 8, !tbaa !536
  %293 = getelementptr inbounds %struct.tree_type, ptr %292, i64 0, i32 2
  %294 = load ptr, ptr %293, align 8, !tbaa !536
  %295 = icmp eq ptr %294, null
  br i1 %295, label %297, label %296

296:                                              ; preds = %291
  store ptr %292, ptr %259, align 8, !tbaa !536
  br label %448

297:                                              ; preds = %291
  %298 = load ptr, ptr %259, align 8, !tbaa !536
  store ptr %298, ptr %264, align 8, !tbaa !536
  br label %448

299:                                              ; preds = %288, %277, %258
  %300 = phi ptr [ %290, %288 ], [ %265, %277 ], [ %265, %258 ]
  %301 = phi ptr [ %289, %288 ], [ %260, %277 ], [ %260, %258 ]
  %302 = tail call fastcc i32 @gimple_types_compatible_p(ptr noundef %301, ptr noundef %300) #22
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %447, label %448

304:                                              ; preds = %125, %125
  %305 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 13
  %306 = load ptr, ptr %305, align 8, !tbaa !536
  %307 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 14
  %308 = load ptr, ptr %307, align 8, !tbaa !536
  %309 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 13
  %310 = load ptr, ptr %309, align 8, !tbaa !536
  %311 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 14
  %312 = load ptr, ptr %311, align 8, !tbaa !536
  %313 = icmp eq ptr %306, null
  %314 = icmp eq ptr %310, null
  %315 = select i1 %313, i1 %314, i1 false
  br i1 %315, label %323, label %316

316:                                              ; preds = %304
  %317 = icmp ne ptr %306, null
  %318 = icmp ne ptr %310, null
  %319 = select i1 %317, i1 %318, i1 false
  br i1 %319, label %320, label %323

320:                                              ; preds = %316
  %321 = tail call i32 @operand_equal_p(ptr noundef nonnull %306, ptr noundef nonnull %310, i32 noundef 0) #23
  %322 = icmp ne i32 %321, 0
  br label %323

323:                                              ; preds = %320, %304, %316
  %324 = phi i1 [ false, %316 ], [ true, %304 ], [ %322, %320 ]
  %325 = icmp eq ptr %308, null
  %326 = icmp eq ptr %312, null
  %327 = select i1 %325, i1 %326, i1 false
  br i1 %327, label %335, label %328

328:                                              ; preds = %323
  %329 = icmp ne ptr %308, null
  %330 = icmp ne ptr %312, null
  %331 = select i1 %329, i1 %330, i1 false
  br i1 %331, label %332, label %447

332:                                              ; preds = %328
  %333 = tail call i32 @operand_equal_p(ptr noundef nonnull %308, ptr noundef nonnull %312, i32 noundef 0) #23
  %334 = icmp ne i32 %333, 0
  br label %335

335:                                              ; preds = %332, %323
  %336 = phi i1 [ true, %323 ], [ %334, %332 ]
  %337 = and i1 %324, %336
  br i1 %337, label %448, label %447

338:                                              ; preds = %125
  %339 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 1
  %340 = load ptr, ptr %339, align 8, !tbaa !536
  %341 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !536
  %343 = icmp eq ptr %340, %342
  br i1 %343, label %448, label %344

344:                                              ; preds = %338
  %345 = icmp ne ptr %340, null
  %346 = icmp ne ptr %342, null
  %347 = and i1 %345, %346
  br i1 %347, label %348, label %381

348:                                              ; preds = %344, %373
  %349 = phi ptr [ %377, %373 ], [ %342, %344 ]
  %350 = phi ptr [ %375, %373 ], [ %340, %344 ]
  %351 = getelementptr inbounds %struct.tree_list, ptr %350, i64 0, i32 2
  %352 = load ptr, ptr %351, align 8, !tbaa !536
  %353 = getelementptr inbounds %struct.tree_list, ptr %349, i64 0, i32 2
  %354 = load ptr, ptr %353, align 8, !tbaa !536
  %355 = load i64, ptr %352, align 8
  %356 = and i64 %355, 65535
  %357 = icmp eq i64 %356, 33
  br i1 %357, label %358, label %361

358:                                              ; preds = %348
  %359 = getelementptr inbounds %struct.tree_decl_common, ptr %352, i64 0, i32 5
  %360 = load ptr, ptr %359, align 8, !tbaa !536
  br label %361

361:                                              ; preds = %358, %348
  %362 = phi ptr [ %360, %358 ], [ %352, %348 ]
  %363 = load i64, ptr %354, align 8
  %364 = and i64 %363, 65535
  %365 = icmp eq i64 %364, 33
  br i1 %365, label %366, label %369

366:                                              ; preds = %361
  %367 = getelementptr inbounds %struct.tree_decl_common, ptr %354, i64 0, i32 5
  %368 = load ptr, ptr %367, align 8, !tbaa !536
  br label %369

369:                                              ; preds = %366, %361
  %370 = phi ptr [ %368, %366 ], [ %354, %361 ]
  %371 = tail call i32 @tree_int_cst_equal(ptr noundef %362, ptr noundef %370) #23
  %372 = icmp eq i32 %371, 1
  br i1 %372, label %373, label %447

373:                                              ; preds = %369
  %374 = getelementptr inbounds %struct.tree_common, ptr %350, i64 0, i32 1
  %375 = load ptr, ptr %374, align 8, !tbaa !536
  %376 = getelementptr inbounds %struct.tree_common, ptr %349, i64 0, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !536
  %378 = icmp ne ptr %375, null
  %379 = icmp ne ptr %377, null
  %380 = select i1 %378, i1 %379, i1 false
  br i1 %380, label %348, label %381, !llvm.loop !1277

381:                                              ; preds = %373, %344
  %382 = phi i1 [ %345, %344 ], [ %378, %373 ]
  %383 = phi i1 [ %346, %344 ], [ %379, %373 ]
  %384 = select i1 %382, i1 true, i1 %383
  br i1 %384, label %447, label %448

385:                                              ; preds = %125, %125, %125
  %386 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 19
  %387 = load ptr, ptr %386, align 8, !tbaa !536
  %388 = icmp eq ptr %387, null
  %389 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 19
  %390 = load ptr, ptr %389, align 8, !tbaa !536
  %391 = icmp ne ptr %390, null
  %392 = xor i1 %388, %391
  br i1 %392, label %393, label %447

393:                                              ; preds = %385
  %394 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 16
  %395 = load ptr, ptr %394, align 8, !tbaa !536
  %396 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 16
  %397 = load ptr, ptr %396, align 8, !tbaa !536
  %398 = tail call fastcc zeroext i8 @compare_type_names_p(ptr noundef %395, ptr noundef %397, i8 noundef zeroext 0) #22, !range !552
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %447, label %400

400:                                              ; preds = %393
  %401 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 1
  %402 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !536
  %404 = load ptr, ptr %401, align 8, !tbaa !536
  %405 = icmp ne ptr %404, null
  %406 = icmp ne ptr %403, null
  %407 = select i1 %405, i1 %406, i1 false
  br i1 %407, label %408, label %442

408:                                              ; preds = %400, %434
  %409 = phi ptr [ %438, %434 ], [ %404, %400 ]
  %410 = phi ptr [ %437, %434 ], [ %403, %400 ]
  %411 = getelementptr inbounds %struct.tree_decl_minimal, ptr %409, i64 0, i32 3
  %412 = load ptr, ptr %411, align 8, !tbaa !536
  %413 = getelementptr inbounds %struct.tree_decl_minimal, ptr %410, i64 0, i32 3
  %414 = load ptr, ptr %413, align 8, !tbaa !536
  %415 = icmp eq ptr %412, %414
  br i1 %415, label %416, label %447

416:                                              ; preds = %408
  %417 = getelementptr inbounds %struct.tree_decl_common, ptr %409, i64 0, i32 2
  %418 = load i64, ptr %417, align 8
  %419 = getelementptr inbounds %struct.tree_decl_common, ptr %410, i64 0, i32 2
  %420 = load i64, ptr %419, align 8
  %421 = xor i64 %420, %418
  %422 = and i64 %421, 67108864
  %423 = icmp eq i64 %422, 0
  br i1 %423, label %424, label %447

424:                                              ; preds = %416
  %425 = tail call zeroext i8 @compare_field_offset(ptr noundef nonnull %409, ptr noundef nonnull %410) #22, !range !552
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %447, label %427

427:                                              ; preds = %424
  %428 = getelementptr inbounds %struct.tree_common, ptr %409, i64 0, i32 2
  %429 = load ptr, ptr %428, align 8, !tbaa !536
  %430 = getelementptr inbounds %struct.tree_common, ptr %410, i64 0, i32 2
  %431 = load ptr, ptr %430, align 8, !tbaa !536
  %432 = tail call fastcc i32 @gimple_types_compatible_p(ptr noundef %429, ptr noundef %431) #22
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %447, label %434

434:                                              ; preds = %427
  %435 = getelementptr inbounds %struct.tree_common, ptr %409, i64 0, i32 1
  %436 = getelementptr inbounds %struct.tree_common, ptr %410, i64 0, i32 1
  %437 = load ptr, ptr %436, align 8, !tbaa !536
  %438 = load ptr, ptr %435, align 8, !tbaa !536
  %439 = icmp ne ptr %438, null
  %440 = icmp ne ptr %437, null
  %441 = select i1 %439, i1 %440, i1 false
  br i1 %441, label %408, label %442, !llvm.loop !1278

442:                                              ; preds = %434, %400
  %443 = phi i1 [ %405, %400 ], [ %439, %434 ]
  %444 = phi i1 [ %406, %400 ], [ %440, %434 ]
  %445 = select i1 %443, i1 true, i1 %444
  br i1 %445, label %447, label %448

446:                                              ; preds = %125
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 3493, ptr noundef nonnull @.str.37) #23
  br label %447

447:                                              ; preds = %408, %416, %424, %427, %369, %218, %442, %393, %385, %381, %328, %235, %174, %178, %183, %187, %151, %161, %149, %335, %299, %253, %239, %246, %204, %197, %190, %128, %135, %118, %446
  store i32 0, ptr %112, align 4, !tbaa !1262
  br label %449

448:                                              ; preds = %381, %338, %442, %235, %141, %181, %187, %335, %299, %296, %297, %246, %208
  store i32 1, ptr %112, align 4, !tbaa !1262
  br label %449

449:                                              ; preds = %100, %4, %10, %18, %48, %83, %80, %56, %50, %92, %98, %98, %2, %110, %106, %448, %447, %114
  %450 = phi i32 [ %116, %114 ], [ 0, %447 ], [ 1, %448 ], [ 0, %106 ], [ 1, %110 ], [ 1, %2 ], [ 1, %100 ], [ 0, %4 ], [ 0, %10 ], [ 0, %18 ], [ 1, %48 ], [ 0, %83 ], [ 0, %80 ], [ 0, %56 ], [ 0, %50 ], [ 0, %92 ], [ 1, %98 ], [ 1, %98 ]
  ret i32 %450
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_type_pair(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !672 !PGOFuncName !1279 {
  %3 = alloca %struct.type_pair_d, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #24
  %4 = load ptr, ptr @gtc_visited, align 8, !tbaa !555
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call ptr @htab_create(i64 noundef 251, ptr noundef nonnull @type_pair_hash, ptr noundef nonnull @type_pair_eq, ptr noundef null) #23
  store ptr %7, ptr @gtc_visited, align 8, !tbaa !555
  %8 = tail call i32 @_obstack_begin(ptr noundef nonnull @gtc_ob, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #23
  %9 = load ptr, ptr @gtc_visited, align 8, !tbaa !555
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi ptr [ %9, %6 ], [ %4, %2 ]
  %12 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !536
  store i32 %13, ptr %3, align 4, !tbaa !1280
  %14 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !536
  %16 = getelementptr inbounds %struct.type_pair_d, ptr %3, i64 0, i32 1
  store i32 %15, ptr %16, align 4, !tbaa !1281
  %17 = call ptr @htab_find_slot(ptr noundef %11, ptr noundef nonnull %3, i32 noundef 1) #23
  %18 = load ptr, ptr %17, align 8, !tbaa !555
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %61

20:                                               ; preds = %10
  store i64 12, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 5), align 8, !tbaa !1239
  %21 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 4), align 8, !tbaa !1240
  %22 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 3), align 8, !tbaa !1243
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = icmp slt i64 %25, 12
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  call void @_obstack_newchunk(ptr noundef nonnull @gtc_ob, i32 noundef 12) #23
  %28 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 5), align 8, !tbaa !1239
  %29 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 3), align 8, !tbaa !1243
  br label %30

30:                                               ; preds = %20, %27
  %31 = phi ptr [ %22, %20 ], [ %29, %27 ]
  %32 = phi i64 [ 12, %20 ], [ %28, %27 ]
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 2), align 8, !tbaa !1244
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 10), align 8
  %38 = or i8 %37, 2
  store i8 %38, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 10), align 8
  br label %39

39:                                               ; preds = %30, %36
  %40 = ptrtoint ptr %34 to i64
  store i64 %40, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 5), align 8, !tbaa !1239
  %41 = ptrtoint ptr %33 to i64
  %42 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 6), align 8, !tbaa !1245
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = xor i32 %42, -1
  %46 = sext i32 %45 to i64
  %47 = and i64 %44, %46
  %48 = inttoptr i64 %47 to ptr
  %49 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 1), align 8, !tbaa !1237
  %50 = ptrtoint ptr %49 to i64
  %51 = sub i64 %47, %50
  %52 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 4), align 8, !tbaa !1240
  %53 = ptrtoint ptr %52 to i64
  %54 = sub i64 %53, %50
  %55 = icmp sgt i64 %51, %54
  %56 = select i1 %55, ptr %52, ptr %48
  store ptr %56, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 3), align 8
  store ptr %56, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 2), align 8, !tbaa !1244
  %57 = load i32, ptr %12, align 8, !tbaa !536
  store i32 %57, ptr %34, align 4, !tbaa !1280
  %58 = load i32, ptr %14, align 8, !tbaa !536
  %59 = getelementptr inbounds %struct.type_pair_d, ptr %34, i64 0, i32 1
  store i32 %58, ptr %59, align 4, !tbaa !1281
  %60 = getelementptr inbounds %struct.type_pair_d, ptr %34, i64 0, i32 2
  store i32 -2, ptr %60, align 4, !tbaa !1262
  store ptr %34, ptr %17, align 8, !tbaa !555
  br label %61

61:                                               ; preds = %10, %39
  %62 = phi ptr [ %34, %39 ], [ %18, %10 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #24
  ret ptr %62
}

; Function Attrs: optsize
declare i32 @attribute_list_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @compare_type_names_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !672 !PGOFuncName !1282 {
  %4 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !536
  %6 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !536
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = icmp ne ptr %5, null
  %11 = icmp ne ptr %7, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %15, label %60

13:                                               ; preds = %3
  %14 = icmp eq ptr %5, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %9, %13
  %16 = load i64, ptr %5, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 35
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !536
  %22 = icmp ne ptr %21, null
  %23 = select i1 %8, i1 true, i1 %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %19
  %25 = icmp eq ptr %21, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %24
  %27 = load i64, ptr %21, align 8
  %28 = and i64 %27, 65535
  br label %29

29:                                               ; preds = %26, %15
  %30 = phi i64 [ %28, %26 ], [ %17, %15 ]
  %31 = phi ptr [ %21, %26 ], [ %5, %15 ]
  %32 = icmp eq i64 %30, 1
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 3108, ptr noundef nonnull @.str.37) #23
  br label %34

34:                                               ; preds = %13, %24, %29, %33
  %35 = phi ptr [ null, %24 ], [ %31, %29 ], [ %31, %33 ], [ null, %13 ]
  %36 = icmp eq ptr %7, null
  br i1 %36, label %56, label %37

37:                                               ; preds = %34
  %38 = load i64, ptr %7, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 35
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !536
  %44 = icmp ne ptr %43, null
  %45 = select i1 %8, i1 true, i1 %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = icmp eq ptr %43, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %46
  %49 = load i64, ptr %43, align 8
  %50 = and i64 %49, 65535
  br label %51

51:                                               ; preds = %48, %37
  %52 = phi i64 [ %50, %48 ], [ %39, %37 ]
  %53 = phi ptr [ %43, %48 ], [ %7, %37 ]
  %54 = icmp eq i64 %52, 1
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 3117, ptr noundef nonnull @.str.37) #23
  br label %56

56:                                               ; preds = %34, %46, %51, %55
  %57 = phi ptr [ null, %46 ], [ %53, %51 ], [ %53, %55 ], [ null, %34 ]
  %58 = icmp eq ptr %35, %57
  %59 = zext i1 %58 to i8
  br label %60

60:                                               ; preds = %56, %41, %19, %9
  %61 = phi i8 [ 0, %9 ], [ 0, %19 ], [ 0, %41 ], [ %59, %56 ]
  ret i8 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @type_pair_hash(ptr nocapture noundef readonly %0) #0 !prof !672 !PGOFuncName !1283 {
  %2 = load i32, ptr %0, align 4, !tbaa !1280
  %3 = getelementptr inbounds %struct.type_pair_d, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !1281
  %5 = tail call i32 @iterative_hash_hashval_t(i32 noundef %4, i32 noundef %2) #23
  %6 = tail call i32 @iterative_hash_hashval_t(i32 noundef %2, i32 noundef %4) #23
  %7 = xor i32 %6, %5
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @type_pair_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !prof !672 !PGOFuncName !1284 {
  %3 = load i32, ptr %0, align 4, !tbaa !1280
  %4 = load i32, ptr %1, align 4, !tbaa !1280
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.type_pair_d, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !1281
  br label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.type_pair_d, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !1281
  %12 = getelementptr inbounds %struct.type_pair_d, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !1281
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %6, %9
  %16 = phi i32 [ %8, %6 ], [ %13, %9 ]
  %17 = icmp eq i32 %3, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.type_pair_d, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !1281
  %21 = icmp eq i32 %20, %4
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %15, %18, %9
  %24 = phi i32 [ 1, %9 ], [ 0, %15 ], [ %22, %18 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_gimple_types_stats() local_unnamed_addr #0 !prof !672 {
  %1 = load ptr, ptr @gimple_types, align 8, !tbaa !555
  %2 = icmp eq ptr %1, null
  %3 = load ptr, ptr @stderr, align 8, !tbaa !555
  br i1 %2, label %17, label %4

4:                                                ; preds = %0
  %5 = tail call i64 @htab_size(ptr noundef nonnull %1) #23
  %6 = load ptr, ptr @gimple_types, align 8, !tbaa !555
  %7 = tail call i64 @htab_elements(ptr noundef %6) #23
  %8 = load ptr, ptr @gimple_types, align 8, !tbaa !555
  %9 = getelementptr inbounds %struct.htab, ptr %8, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !1285
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.htab, ptr %8, i64 0, i32 8
  %13 = load i32, ptr %12, align 4, !tbaa !1287
  %14 = zext i32 %13 to i64
  %15 = tail call double @htab_collisions(ptr noundef %8) #23
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.41, i64 noundef %5, i64 noundef %7, i64 noundef %11, i64 noundef %14, double noundef %15) #26
  br label %19

17:                                               ; preds = %0
  %18 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 27, i64 1, ptr %3) #25
  br label %19

19:                                               ; preds = %17, %4
  %20 = load ptr, ptr @gtc_visited, align 8, !tbaa !555
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr @stderr, align 8, !tbaa !555
  br i1 %21, label %36, label %23

23:                                               ; preds = %19
  %24 = tail call i64 @htab_size(ptr noundef nonnull %20) #23
  %25 = load ptr, ptr @gtc_visited, align 8, !tbaa !555
  %26 = tail call i64 @htab_elements(ptr noundef %25) #23
  %27 = load ptr, ptr @gtc_visited, align 8, !tbaa !555
  %28 = getelementptr inbounds %struct.htab, ptr %27, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !1285
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.htab, ptr %27, i64 0, i32 8
  %32 = load i32, ptr %31, align 4, !tbaa !1287
  %33 = zext i32 %32 to i64
  %34 = tail call double @htab_collisions(ptr noundef %27) #23
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.43, i64 noundef %24, i64 noundef %26, i64 noundef %30, i64 noundef %33, double noundef %34) #26
  br label %38

36:                                               ; preds = %19
  %37 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 38, i64 1, ptr %22) #25
  br label %38

38:                                               ; preds = %36, %23
  ret void
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare double @htab_collisions(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_gimple_type_tables() local_unnamed_addr #0 !prof !672 {
  %1 = load i32, ptr @flag_lto_report, align 4, !tbaa !539
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @print_gimple_types_stats() #22
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @gimple_types, align 8, !tbaa !555
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @htab_delete(ptr noundef nonnull %5) #23
  store ptr null, ptr @gimple_types, align 8, !tbaa !555
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr @type_hash_cache, align 8, !tbaa !555
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @pointer_map_destroy(ptr noundef nonnull %9) #23
  store ptr null, ptr @type_hash_cache, align 8, !tbaa !555
  br label %12

12:                                               ; preds = %11, %8
  %13 = load ptr, ptr @gtc_visited, align 8, !tbaa !555
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  tail call void @htab_delete(ptr noundef nonnull %13) #23
  %16 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 1), align 8, !tbaa !1237
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 0, %17
  store i64 %18, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 5), align 8, !tbaa !1239
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 4), align 8, !tbaa !1240
  %22 = ptrtoint ptr %21 to i64
  %23 = sub i64 %22, %17
  %24 = icmp sgt i64 %23, %18
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, ptr %16, i64 %18
  store ptr %26, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 2), align 8, !tbaa !1244
  store ptr %26, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 3), align 8, !tbaa !1243
  br label %29

27:                                               ; preds = %20, %15
  %28 = getelementptr inbounds i8, ptr %16, i64 %18
  tail call void @obstack_free(ptr noundef nonnull @gtc_ob, ptr noundef %28) #23
  br label %29

29:                                               ; preds = %27, %25
  store ptr null, ptr @gtc_visited, align 8, !tbaa !555
  br label %30

30:                                               ; preds = %29, %12
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_unsigned_type(ptr noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = tail call fastcc ptr @gimple_signed_or_unsigned_type(i8 noundef zeroext 1, ptr noundef %0) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_signed_or_unsigned_type(i8 noundef zeroext %0, ptr noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !1288 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !536
  %5 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8
  %6 = icmp eq ptr %4, %5
  %7 = load ptr, ptr @integer_types, align 16
  %8 = icmp eq ptr %4, %7
  %9 = select i1 %6, i1 true, i1 %8
  %10 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16
  %11 = icmp eq ptr %4, %10
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = icmp eq i8 %0, 0
  %15 = select i1 %14, ptr %5, ptr %10
  br label %818

16:                                               ; preds = %2
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8
  %18 = icmp eq ptr %4, %17
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16
  %20 = icmp eq ptr %4, %19
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = icmp eq i8 %0, 0
  %24 = select i1 %23, ptr %17, ptr %19
  br label %818

25:                                               ; preds = %16
  %26 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 3), align 8
  %27 = icmp eq ptr %4, %26
  %28 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 4), align 16
  %29 = icmp eq ptr %4, %28
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = icmp eq i8 %0, 0
  %33 = select i1 %32, ptr %26, ptr %28
  br label %818

34:                                               ; preds = %25
  %35 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8
  %36 = icmp eq ptr %4, %35
  %37 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 8), align 16
  %38 = icmp eq ptr %4, %37
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = icmp eq i8 %0, 0
  %42 = select i1 %41, ptr %35, ptr %37
  br label %818

43:                                               ; preds = %34
  %44 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8
  %45 = icmp eq ptr %4, %44
  %46 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16
  %47 = icmp eq ptr %4, %46
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = icmp eq i8 %0, 0
  %51 = select i1 %50, ptr %44, ptr %46
  br label %818

52:                                               ; preds = %43
  %53 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 5), align 8
  %54 = icmp eq ptr %4, %53
  %55 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 10), align 16
  %56 = icmp eq ptr %4, %55
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = icmp eq i8 %0, 0
  %60 = select i1 %59, ptr %53, ptr %55
  br label %818

61:                                               ; preds = %52
  %62 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 4), align 16
  %63 = icmp eq ptr %4, %62
  %64 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 9), align 8
  %65 = icmp eq ptr %4, %64
  %66 = select i1 %63, i1 true, i1 %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = icmp eq i8 %0, 0
  %69 = select i1 %68, ptr %62, ptr %64
  br label %818

70:                                               ; preds = %61
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 3), align 8
  %72 = icmp eq ptr %4, %71
  %73 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 8), align 16
  %74 = icmp eq ptr %4, %73
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = icmp eq i8 %0, 0
  %78 = select i1 %77, ptr %71, ptr %73
  br label %818

79:                                               ; preds = %70
  %80 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 2), align 16
  %81 = icmp eq ptr %4, %80
  %82 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 7), align 8
  %83 = icmp eq ptr %4, %82
  %84 = select i1 %81, i1 true, i1 %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = icmp eq i8 %0, 0
  %87 = select i1 %86, ptr %80, ptr %82
  br label %818

88:                                               ; preds = %79
  %89 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 1), align 8
  %90 = icmp eq ptr %4, %89
  %91 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 6), align 16
  %92 = icmp eq ptr %4, %91
  %93 = select i1 %90, i1 true, i1 %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = icmp eq i8 %0, 0
  %96 = select i1 %95, ptr %89, ptr %91
  br label %818

97:                                               ; preds = %88
  %98 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 65), align 8
  %99 = icmp eq ptr %4, %98
  %100 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 69), align 8
  %101 = icmp eq ptr %4, %100
  %102 = select i1 %99, i1 true, i1 %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = icmp eq i8 %0, 0
  %105 = select i1 %104, ptr %98, ptr %100
  br label %818

106:                                              ; preds = %97
  %107 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 66), align 16
  %108 = icmp eq ptr %4, %107
  %109 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 70), align 16
  %110 = icmp eq ptr %4, %109
  %111 = select i1 %108, i1 true, i1 %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = icmp eq i8 %0, 0
  %114 = select i1 %113, ptr %107, ptr %109
  br label %818

115:                                              ; preds = %106
  %116 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 67), align 8
  %117 = icmp eq ptr %4, %116
  %118 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 71), align 8
  %119 = icmp eq ptr %4, %118
  %120 = select i1 %117, i1 true, i1 %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = icmp eq i8 %0, 0
  %123 = select i1 %122, ptr %116, ptr %118
  br label %818

124:                                              ; preds = %115
  %125 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 68), align 16
  %126 = icmp eq ptr %4, %125
  %127 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 72), align 16
  %128 = icmp eq ptr %4, %127
  %129 = select i1 %126, i1 true, i1 %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = icmp eq i8 %0, 0
  %132 = select i1 %131, ptr %125, ptr %127
  br label %818

133:                                              ; preds = %124
  %134 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 57), align 8
  %135 = icmp eq ptr %4, %134
  %136 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 61), align 8
  %137 = icmp eq ptr %4, %136
  %138 = select i1 %135, i1 true, i1 %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = icmp eq i8 %0, 0
  %141 = select i1 %140, ptr %134, ptr %136
  br label %818

142:                                              ; preds = %133
  %143 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 58), align 16
  %144 = icmp eq ptr %4, %143
  %145 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 62), align 16
  %146 = icmp eq ptr %4, %145
  %147 = select i1 %144, i1 true, i1 %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = icmp eq i8 %0, 0
  %150 = select i1 %149, ptr %143, ptr %145
  br label %818

151:                                              ; preds = %142
  %152 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 59), align 8
  %153 = icmp eq ptr %4, %152
  %154 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 63), align 8
  %155 = icmp eq ptr %4, %154
  %156 = select i1 %153, i1 true, i1 %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = icmp eq i8 %0, 0
  %159 = select i1 %158, ptr %152, ptr %154
  br label %818

160:                                              ; preds = %151
  %161 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 60), align 16
  %162 = icmp eq ptr %4, %161
  %163 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 64), align 16
  %164 = icmp eq ptr %4, %163
  %165 = select i1 %162, i1 true, i1 %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = icmp eq i8 %0, 0
  %168 = select i1 %167, ptr %161, ptr %163
  br label %818

169:                                              ; preds = %160
  %170 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 81), align 8
  %171 = icmp eq ptr %4, %170
  %172 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 85), align 8
  %173 = icmp eq ptr %4, %172
  %174 = select i1 %171, i1 true, i1 %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %169
  %176 = icmp eq i8 %0, 0
  %177 = select i1 %176, ptr %170, ptr %172
  br label %818

178:                                              ; preds = %169
  %179 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 82), align 16
  %180 = icmp eq ptr %4, %179
  %181 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 86), align 16
  %182 = icmp eq ptr %4, %181
  %183 = select i1 %180, i1 true, i1 %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = icmp eq i8 %0, 0
  %186 = select i1 %185, ptr %179, ptr %181
  br label %818

187:                                              ; preds = %178
  %188 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 83), align 8
  %189 = icmp eq ptr %4, %188
  %190 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 87), align 8
  %191 = icmp eq ptr %4, %190
  %192 = select i1 %189, i1 true, i1 %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %187
  %194 = icmp eq i8 %0, 0
  %195 = select i1 %194, ptr %188, ptr %190
  br label %818

196:                                              ; preds = %187
  %197 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 84), align 16
  %198 = icmp eq ptr %4, %197
  %199 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 88), align 16
  %200 = icmp eq ptr %4, %199
  %201 = select i1 %198, i1 true, i1 %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = icmp eq i8 %0, 0
  %204 = select i1 %203, ptr %197, ptr %199
  br label %818

205:                                              ; preds = %196
  %206 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 73), align 8
  %207 = icmp eq ptr %4, %206
  %208 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 77), align 8
  %209 = icmp eq ptr %4, %208
  %210 = select i1 %207, i1 true, i1 %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  %212 = icmp eq i8 %0, 0
  %213 = select i1 %212, ptr %206, ptr %208
  br label %818

214:                                              ; preds = %205
  %215 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 74), align 16
  %216 = icmp eq ptr %4, %215
  %217 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 78), align 16
  %218 = icmp eq ptr %4, %217
  %219 = select i1 %216, i1 true, i1 %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %214
  %221 = icmp eq i8 %0, 0
  %222 = select i1 %221, ptr %215, ptr %217
  br label %818

223:                                              ; preds = %214
  %224 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 75), align 8
  %225 = icmp eq ptr %4, %224
  %226 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 79), align 8
  %227 = icmp eq ptr %4, %226
  %228 = select i1 %225, i1 true, i1 %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %223
  %230 = icmp eq i8 %0, 0
  %231 = select i1 %230, ptr %224, ptr %226
  br label %818

232:                                              ; preds = %223
  %233 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 76), align 16
  %234 = icmp eq ptr %4, %233
  %235 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 80), align 16
  %236 = icmp eq ptr %4, %235
  %237 = select i1 %234, i1 true, i1 %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %232
  %239 = icmp eq i8 %0, 0
  %240 = select i1 %239, ptr %233, ptr %235
  br label %818

241:                                              ; preds = %232
  %242 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 89), align 8
  %243 = icmp eq ptr %4, %242
  %244 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 94), align 16
  %245 = icmp eq ptr %4, %244
  %246 = select i1 %243, i1 true, i1 %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %241
  %248 = icmp eq i8 %0, 0
  %249 = select i1 %248, ptr %242, ptr %244
  br label %818

250:                                              ; preds = %241
  %251 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 90), align 16
  %252 = icmp eq ptr %4, %251
  %253 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 95), align 8
  %254 = icmp eq ptr %4, %253
  %255 = select i1 %252, i1 true, i1 %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %250
  %257 = icmp eq i8 %0, 0
  %258 = select i1 %257, ptr %251, ptr %253
  br label %818

259:                                              ; preds = %250
  %260 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 91), align 8
  %261 = icmp eq ptr %4, %260
  %262 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 96), align 16
  %263 = icmp eq ptr %4, %262
  %264 = select i1 %261, i1 true, i1 %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %259
  %266 = icmp eq i8 %0, 0
  %267 = select i1 %266, ptr %260, ptr %262
  br label %818

268:                                              ; preds = %259
  %269 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 92), align 16
  %270 = icmp eq ptr %4, %269
  %271 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 97), align 8
  %272 = icmp eq ptr %4, %271
  %273 = select i1 %270, i1 true, i1 %272
  br i1 %273, label %274, label %277

274:                                              ; preds = %268
  %275 = icmp eq i8 %0, 0
  %276 = select i1 %275, ptr %269, ptr %271
  br label %818

277:                                              ; preds = %268
  %278 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 93), align 8
  %279 = icmp eq ptr %4, %278
  %280 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 98), align 16
  %281 = icmp eq ptr %4, %280
  %282 = select i1 %279, i1 true, i1 %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %277
  %284 = icmp eq i8 %0, 0
  %285 = select i1 %284, ptr %278, ptr %280
  br label %818

286:                                              ; preds = %277
  %287 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 99), align 8
  %288 = icmp eq ptr %4, %287
  %289 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 104), align 16
  %290 = icmp eq ptr %4, %289
  %291 = select i1 %288, i1 true, i1 %290
  br i1 %291, label %292, label %295

292:                                              ; preds = %286
  %293 = icmp eq i8 %0, 0
  %294 = select i1 %293, ptr %287, ptr %289
  br label %818

295:                                              ; preds = %286
  %296 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 100), align 16
  %297 = icmp eq ptr %4, %296
  %298 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 105), align 8
  %299 = icmp eq ptr %4, %298
  %300 = select i1 %297, i1 true, i1 %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %295
  %302 = icmp eq i8 %0, 0
  %303 = select i1 %302, ptr %296, ptr %298
  br label %818

304:                                              ; preds = %295
  %305 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 101), align 8
  %306 = icmp eq ptr %4, %305
  %307 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 106), align 16
  %308 = icmp eq ptr %4, %307
  %309 = select i1 %306, i1 true, i1 %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %304
  %311 = icmp eq i8 %0, 0
  %312 = select i1 %311, ptr %305, ptr %307
  br label %818

313:                                              ; preds = %304
  %314 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 102), align 16
  %315 = icmp eq ptr %4, %314
  %316 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 107), align 8
  %317 = icmp eq ptr %4, %316
  %318 = select i1 %315, i1 true, i1 %317
  br i1 %318, label %319, label %322

319:                                              ; preds = %313
  %320 = icmp eq i8 %0, 0
  %321 = select i1 %320, ptr %314, ptr %316
  br label %818

322:                                              ; preds = %313
  %323 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 103), align 8
  %324 = icmp eq ptr %4, %323
  %325 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 108), align 16
  %326 = icmp eq ptr %4, %325
  %327 = select i1 %324, i1 true, i1 %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %322
  %329 = icmp eq i8 %0, 0
  %330 = select i1 %329, ptr %323, ptr %325
  br label %818

331:                                              ; preds = %322
  %332 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 109), align 8
  %333 = icmp eq ptr %4, %332
  %334 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 113), align 8
  %335 = icmp eq ptr %4, %334
  %336 = select i1 %333, i1 true, i1 %335
  br i1 %336, label %337, label %340

337:                                              ; preds = %331
  %338 = icmp eq i8 %0, 0
  %339 = select i1 %338, ptr %332, ptr %334
  br label %818

340:                                              ; preds = %331
  %341 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 110), align 16
  %342 = icmp eq ptr %4, %341
  %343 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 114), align 16
  %344 = icmp eq ptr %4, %343
  %345 = select i1 %342, i1 true, i1 %344
  br i1 %345, label %346, label %349

346:                                              ; preds = %340
  %347 = icmp eq i8 %0, 0
  %348 = select i1 %347, ptr %341, ptr %343
  br label %818

349:                                              ; preds = %340
  %350 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 111), align 8
  %351 = icmp eq ptr %4, %350
  %352 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 115), align 8
  %353 = icmp eq ptr %4, %352
  %354 = select i1 %351, i1 true, i1 %353
  br i1 %354, label %355, label %358

355:                                              ; preds = %349
  %356 = icmp eq i8 %0, 0
  %357 = select i1 %356, ptr %350, ptr %352
  br label %818

358:                                              ; preds = %349
  %359 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 112), align 16
  %360 = icmp eq ptr %4, %359
  %361 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 116), align 16
  %362 = icmp eq ptr %4, %361
  %363 = select i1 %360, i1 true, i1 %362
  br i1 %363, label %364, label %367

364:                                              ; preds = %358
  %365 = icmp eq i8 %0, 0
  %366 = select i1 %365, ptr %359, ptr %361
  br label %818

367:                                              ; preds = %358
  %368 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 117), align 8
  %369 = icmp eq ptr %4, %368
  %370 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 121), align 8
  %371 = icmp eq ptr %4, %370
  %372 = select i1 %369, i1 true, i1 %371
  br i1 %372, label %373, label %376

373:                                              ; preds = %367
  %374 = icmp eq i8 %0, 0
  %375 = select i1 %374, ptr %368, ptr %370
  br label %818

376:                                              ; preds = %367
  %377 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 118), align 16
  %378 = icmp eq ptr %4, %377
  %379 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 122), align 16
  %380 = icmp eq ptr %4, %379
  %381 = select i1 %378, i1 true, i1 %380
  br i1 %381, label %382, label %385

382:                                              ; preds = %376
  %383 = icmp eq i8 %0, 0
  %384 = select i1 %383, ptr %377, ptr %379
  br label %818

385:                                              ; preds = %376
  %386 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 119), align 8
  %387 = icmp eq ptr %4, %386
  %388 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 123), align 8
  %389 = icmp eq ptr %4, %388
  %390 = select i1 %387, i1 true, i1 %389
  br i1 %390, label %391, label %394

391:                                              ; preds = %385
  %392 = icmp eq i8 %0, 0
  %393 = select i1 %392, ptr %386, ptr %388
  br label %818

394:                                              ; preds = %385
  %395 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 120), align 16
  %396 = icmp eq ptr %4, %395
  %397 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 124), align 16
  %398 = icmp eq ptr %4, %397
  %399 = select i1 %396, i1 true, i1 %398
  br i1 %399, label %400, label %403

400:                                              ; preds = %394
  %401 = icmp eq i8 %0, 0
  %402 = select i1 %401, ptr %395, ptr %397
  br label %818

403:                                              ; preds = %394
  %404 = load i64, ptr %1, align 8
  %405 = trunc i64 %404 to i32
  %406 = and i32 %405, 65535
  %407 = add nsw i32 %406, -6
  %408 = icmp ult i32 %407, 3
  br i1 %408, label %409, label %818

409:                                              ; preds = %403
  %410 = lshr i32 %405, 21
  %411 = and i32 %410, 1
  %412 = zext nneg i8 %0 to i32
  %413 = icmp eq i32 %411, %412
  br i1 %413, label %818, label %414

414:                                              ; preds = %409
  %415 = and i64 %404, 65535
  %416 = icmp eq i64 %415, 14
  br i1 %416, label %417, label %420

417:                                              ; preds = %414
  %418 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #23
  %419 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8, !tbaa !555
  br label %425

420:                                              ; preds = %414
  %421 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %422 = load i32, ptr %421, align 4
  %423 = lshr i32 %422, 16
  %424 = and i32 %423, 255
  br label %425

425:                                              ; preds = %420, %417
  %426 = phi ptr [ %419, %417 ], [ %5, %420 ]
  %427 = phi i32 [ %418, %417 ], [ %424, %420 ]
  %428 = load i64, ptr %426, align 8
  %429 = and i64 %428, 65535
  %430 = icmp eq i64 %429, 14
  br i1 %430, label %431, label %433

431:                                              ; preds = %425
  %432 = tail call i32 @vector_type_mode(ptr noundef nonnull %426) #23
  br label %438

433:                                              ; preds = %425
  %434 = getelementptr inbounds %struct.tree_type, ptr %426, i64 0, i32 6
  %435 = load i32, ptr %434, align 4
  %436 = lshr i32 %435, 16
  %437 = and i32 %436, 255
  br label %438

438:                                              ; preds = %433, %431
  %439 = phi i32 [ %432, %431 ], [ %437, %433 ]
  %440 = icmp eq i32 %427, %439
  br i1 %440, label %441, label %454

441:                                              ; preds = %438
  %442 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %443 = load i32, ptr %442, align 4
  %444 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8
  %445 = getelementptr inbounds %struct.tree_type, ptr %444, i64 0, i32 6
  %446 = load i32, ptr %445, align 4
  %447 = xor i32 %446, %443
  %448 = and i32 %447, 1023
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %454

450:                                              ; preds = %441
  %451 = icmp eq i8 %0, 0
  %452 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16
  %453 = select i1 %451, ptr %444, ptr %452
  br label %818

454:                                              ; preds = %441, %438
  %455 = load i64, ptr %1, align 8
  %456 = and i64 %455, 65535
  %457 = icmp eq i64 %456, 14
  br i1 %457, label %458, label %460

458:                                              ; preds = %454
  %459 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #23
  br label %465

460:                                              ; preds = %454
  %461 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %462 = load i32, ptr %461, align 4
  %463 = lshr i32 %462, 16
  %464 = and i32 %463, 255
  br label %465

465:                                              ; preds = %460, %458
  %466 = phi i32 [ %459, %458 ], [ %464, %460 ]
  %467 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !555
  %468 = load i64, ptr %467, align 8
  %469 = and i64 %468, 65535
  %470 = icmp eq i64 %469, 14
  br i1 %470, label %471, label %473

471:                                              ; preds = %465
  %472 = tail call i32 @vector_type_mode(ptr noundef nonnull %467) #23
  br label %478

473:                                              ; preds = %465
  %474 = getelementptr inbounds %struct.tree_type, ptr %467, i64 0, i32 6
  %475 = load i32, ptr %474, align 4
  %476 = lshr i32 %475, 16
  %477 = and i32 %476, 255
  br label %478

478:                                              ; preds = %473, %471
  %479 = phi i32 [ %472, %471 ], [ %477, %473 ]
  %480 = icmp eq i32 %466, %479
  br i1 %480, label %481, label %494

481:                                              ; preds = %478
  %482 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %483 = load i32, ptr %482, align 4
  %484 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8
  %485 = getelementptr inbounds %struct.tree_type, ptr %484, i64 0, i32 6
  %486 = load i32, ptr %485, align 4
  %487 = xor i32 %486, %483
  %488 = and i32 %487, 1023
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %494

490:                                              ; preds = %481
  %491 = icmp eq i8 %0, 0
  %492 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16
  %493 = select i1 %491, ptr %484, ptr %492
  br label %818

494:                                              ; preds = %481, %478
  %495 = load i64, ptr %1, align 8
  %496 = and i64 %495, 65535
  %497 = icmp eq i64 %496, 14
  br i1 %497, label %498, label %500

498:                                              ; preds = %494
  %499 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #23
  br label %505

500:                                              ; preds = %494
  %501 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %502 = load i32, ptr %501, align 4
  %503 = lshr i32 %502, 16
  %504 = and i32 %503, 255
  br label %505

505:                                              ; preds = %500, %498
  %506 = phi i32 [ %499, %498 ], [ %504, %500 ]
  %507 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 3), align 8, !tbaa !555
  %508 = load i64, ptr %507, align 8
  %509 = and i64 %508, 65535
  %510 = icmp eq i64 %509, 14
  br i1 %510, label %511, label %513

511:                                              ; preds = %505
  %512 = tail call i32 @vector_type_mode(ptr noundef nonnull %507) #23
  br label %518

513:                                              ; preds = %505
  %514 = getelementptr inbounds %struct.tree_type, ptr %507, i64 0, i32 6
  %515 = load i32, ptr %514, align 4
  %516 = lshr i32 %515, 16
  %517 = and i32 %516, 255
  br label %518

518:                                              ; preds = %513, %511
  %519 = phi i32 [ %512, %511 ], [ %517, %513 ]
  %520 = icmp eq i32 %506, %519
  br i1 %520, label %521, label %534

521:                                              ; preds = %518
  %522 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %523 = load i32, ptr %522, align 4
  %524 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 3), align 8
  %525 = getelementptr inbounds %struct.tree_type, ptr %524, i64 0, i32 6
  %526 = load i32, ptr %525, align 4
  %527 = xor i32 %526, %523
  %528 = and i32 %527, 1023
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %530, label %534

530:                                              ; preds = %521
  %531 = icmp eq i8 %0, 0
  %532 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 4), align 16
  %533 = select i1 %531, ptr %524, ptr %532
  br label %818

534:                                              ; preds = %521, %518
  %535 = load i64, ptr %1, align 8
  %536 = and i64 %535, 65535
  %537 = icmp eq i64 %536, 14
  br i1 %537, label %538, label %540

538:                                              ; preds = %534
  %539 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #23
  br label %545

540:                                              ; preds = %534
  %541 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %542 = load i32, ptr %541, align 4
  %543 = lshr i32 %542, 16
  %544 = and i32 %543, 255
  br label %545

545:                                              ; preds = %540, %538
  %546 = phi i32 [ %539, %538 ], [ %544, %540 ]
  %547 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !555
  %548 = load i64, ptr %547, align 8
  %549 = and i64 %548, 65535
  %550 = icmp eq i64 %549, 14
  br i1 %550, label %551, label %553

551:                                              ; preds = %545
  %552 = tail call i32 @vector_type_mode(ptr noundef nonnull %547) #23
  br label %558

553:                                              ; preds = %545
  %554 = getelementptr inbounds %struct.tree_type, ptr %547, i64 0, i32 6
  %555 = load i32, ptr %554, align 4
  %556 = lshr i32 %555, 16
  %557 = and i32 %556, 255
  br label %558

558:                                              ; preds = %553, %551
  %559 = phi i32 [ %552, %551 ], [ %557, %553 ]
  %560 = icmp eq i32 %546, %559
  br i1 %560, label %561, label %574

561:                                              ; preds = %558
  %562 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %563 = load i32, ptr %562, align 4
  %564 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8
  %565 = getelementptr inbounds %struct.tree_type, ptr %564, i64 0, i32 6
  %566 = load i32, ptr %565, align 4
  %567 = xor i32 %566, %563
  %568 = and i32 %567, 1023
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %574

570:                                              ; preds = %561
  %571 = icmp eq i8 %0, 0
  %572 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 8), align 16
  %573 = select i1 %571, ptr %564, ptr %572
  br label %818

574:                                              ; preds = %561, %558
  %575 = load i64, ptr %1, align 8
  %576 = and i64 %575, 65535
  %577 = icmp eq i64 %576, 14
  br i1 %577, label %578, label %580

578:                                              ; preds = %574
  %579 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #23
  br label %585

580:                                              ; preds = %574
  %581 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %582 = load i32, ptr %581, align 4
  %583 = lshr i32 %582, 16
  %584 = and i32 %583, 255
  br label %585

585:                                              ; preds = %580, %578
  %586 = phi i32 [ %579, %578 ], [ %584, %580 ]
  %587 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !555
  %588 = load i64, ptr %587, align 8
  %589 = and i64 %588, 65535
  %590 = icmp eq i64 %589, 14
  br i1 %590, label %591, label %593

591:                                              ; preds = %585
  %592 = tail call i32 @vector_type_mode(ptr noundef nonnull %587) #23
  br label %598

593:                                              ; preds = %585
  %594 = getelementptr inbounds %struct.tree_type, ptr %587, i64 0, i32 6
  %595 = load i32, ptr %594, align 4
  %596 = lshr i32 %595, 16
  %597 = and i32 %596, 255
  br label %598

598:                                              ; preds = %593, %591
  %599 = phi i32 [ %592, %591 ], [ %597, %593 ]
  %600 = icmp eq i32 %586, %599
  br i1 %600, label %601, label %614

601:                                              ; preds = %598
  %602 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %603 = load i32, ptr %602, align 4
  %604 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8
  %605 = getelementptr inbounds %struct.tree_type, ptr %604, i64 0, i32 6
  %606 = load i32, ptr %605, align 4
  %607 = xor i32 %606, %603
  %608 = and i32 %607, 1023
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %610, label %614

610:                                              ; preds = %601
  %611 = icmp eq i8 %0, 0
  %612 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16
  %613 = select i1 %611, ptr %604, ptr %612
  br label %818

614:                                              ; preds = %601, %598
  %615 = load i64, ptr %1, align 8
  %616 = and i64 %615, 65535
  %617 = icmp eq i64 %616, 14
  br i1 %617, label %618, label %620

618:                                              ; preds = %614
  %619 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #23
  br label %625

620:                                              ; preds = %614
  %621 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %622 = load i32, ptr %621, align 4
  %623 = lshr i32 %622, 16
  %624 = and i32 %623, 255
  br label %625

625:                                              ; preds = %620, %618
  %626 = phi i32 [ %619, %618 ], [ %624, %620 ]
  %627 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 5), align 8, !tbaa !555
  %628 = load i64, ptr %627, align 8
  %629 = and i64 %628, 65535
  %630 = icmp eq i64 %629, 14
  br i1 %630, label %631, label %633

631:                                              ; preds = %625
  %632 = tail call i32 @vector_type_mode(ptr noundef nonnull %627) #23
  br label %638

633:                                              ; preds = %625
  %634 = getelementptr inbounds %struct.tree_type, ptr %627, i64 0, i32 6
  %635 = load i32, ptr %634, align 4
  %636 = lshr i32 %635, 16
  %637 = and i32 %636, 255
  br label %638

638:                                              ; preds = %633, %631
  %639 = phi i32 [ %632, %631 ], [ %637, %633 ]
  %640 = icmp eq i32 %626, %639
  br i1 %640, label %641, label %654

641:                                              ; preds = %638
  %642 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %643 = load i32, ptr %642, align 4
  %644 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 5), align 8
  %645 = getelementptr inbounds %struct.tree_type, ptr %644, i64 0, i32 6
  %646 = load i32, ptr %645, align 4
  %647 = xor i32 %646, %643
  %648 = and i32 %647, 1023
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %650, label %654

650:                                              ; preds = %641
  %651 = icmp eq i8 %0, 0
  %652 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 10), align 16
  %653 = select i1 %651, ptr %644, ptr %652
  br label %818

654:                                              ; preds = %641, %638
  %655 = load i64, ptr %1, align 8
  %656 = and i64 %655, 65535
  %657 = icmp eq i64 %656, 14
  br i1 %657, label %658, label %660

658:                                              ; preds = %654
  %659 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #23
  br label %665

660:                                              ; preds = %654
  %661 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %662 = load i32, ptr %661, align 4
  %663 = lshr i32 %662, 16
  %664 = and i32 %663, 255
  br label %665

665:                                              ; preds = %660, %658
  %666 = phi i32 [ %659, %658 ], [ %664, %660 ]
  %667 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 4), align 16, !tbaa !555
  %668 = load i64, ptr %667, align 8
  %669 = and i64 %668, 65535
  %670 = icmp eq i64 %669, 14
  br i1 %670, label %671, label %673

671:                                              ; preds = %665
  %672 = tail call i32 @vector_type_mode(ptr noundef nonnull %667) #23
  br label %678

673:                                              ; preds = %665
  %674 = getelementptr inbounds %struct.tree_type, ptr %667, i64 0, i32 6
  %675 = load i32, ptr %674, align 4
  %676 = lshr i32 %675, 16
  %677 = and i32 %676, 255
  br label %678

678:                                              ; preds = %673, %671
  %679 = phi i32 [ %672, %671 ], [ %677, %673 ]
  %680 = icmp eq i32 %666, %679
  br i1 %680, label %681, label %694

681:                                              ; preds = %678
  %682 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %683 = load i32, ptr %682, align 4
  %684 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 4), align 16
  %685 = getelementptr inbounds %struct.tree_type, ptr %684, i64 0, i32 6
  %686 = load i32, ptr %685, align 4
  %687 = xor i32 %686, %683
  %688 = and i32 %687, 1023
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %690, label %694

690:                                              ; preds = %681
  %691 = icmp eq i8 %0, 0
  %692 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 9), align 8
  %693 = select i1 %691, ptr %684, ptr %692
  br label %818

694:                                              ; preds = %681, %678
  %695 = load i64, ptr %1, align 8
  %696 = and i64 %695, 65535
  %697 = icmp eq i64 %696, 14
  br i1 %697, label %698, label %700

698:                                              ; preds = %694
  %699 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #23
  br label %705

700:                                              ; preds = %694
  %701 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %702 = load i32, ptr %701, align 4
  %703 = lshr i32 %702, 16
  %704 = and i32 %703, 255
  br label %705

705:                                              ; preds = %700, %698
  %706 = phi i32 [ %699, %698 ], [ %704, %700 ]
  %707 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 3), align 8, !tbaa !555
  %708 = load i64, ptr %707, align 8
  %709 = and i64 %708, 65535
  %710 = icmp eq i64 %709, 14
  br i1 %710, label %711, label %713

711:                                              ; preds = %705
  %712 = tail call i32 @vector_type_mode(ptr noundef nonnull %707) #23
  br label %718

713:                                              ; preds = %705
  %714 = getelementptr inbounds %struct.tree_type, ptr %707, i64 0, i32 6
  %715 = load i32, ptr %714, align 4
  %716 = lshr i32 %715, 16
  %717 = and i32 %716, 255
  br label %718

718:                                              ; preds = %713, %711
  %719 = phi i32 [ %712, %711 ], [ %717, %713 ]
  %720 = icmp eq i32 %706, %719
  br i1 %720, label %721, label %734

721:                                              ; preds = %718
  %722 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %723 = load i32, ptr %722, align 4
  %724 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 3), align 8
  %725 = getelementptr inbounds %struct.tree_type, ptr %724, i64 0, i32 6
  %726 = load i32, ptr %725, align 4
  %727 = xor i32 %726, %723
  %728 = and i32 %727, 1023
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %730, label %734

730:                                              ; preds = %721
  %731 = icmp eq i8 %0, 0
  %732 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 8), align 16
  %733 = select i1 %731, ptr %724, ptr %732
  br label %818

734:                                              ; preds = %721, %718
  %735 = load i64, ptr %1, align 8
  %736 = and i64 %735, 65535
  %737 = icmp eq i64 %736, 14
  br i1 %737, label %738, label %740

738:                                              ; preds = %734
  %739 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #23
  br label %745

740:                                              ; preds = %734
  %741 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %742 = load i32, ptr %741, align 4
  %743 = lshr i32 %742, 16
  %744 = and i32 %743, 255
  br label %745

745:                                              ; preds = %740, %738
  %746 = phi i32 [ %739, %738 ], [ %744, %740 ]
  %747 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 2), align 16, !tbaa !555
  %748 = load i64, ptr %747, align 8
  %749 = and i64 %748, 65535
  %750 = icmp eq i64 %749, 14
  br i1 %750, label %751, label %753

751:                                              ; preds = %745
  %752 = tail call i32 @vector_type_mode(ptr noundef nonnull %747) #23
  br label %758

753:                                              ; preds = %745
  %754 = getelementptr inbounds %struct.tree_type, ptr %747, i64 0, i32 6
  %755 = load i32, ptr %754, align 4
  %756 = lshr i32 %755, 16
  %757 = and i32 %756, 255
  br label %758

758:                                              ; preds = %753, %751
  %759 = phi i32 [ %752, %751 ], [ %757, %753 ]
  %760 = icmp eq i32 %746, %759
  br i1 %760, label %761, label %774

761:                                              ; preds = %758
  %762 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %763 = load i32, ptr %762, align 4
  %764 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 2), align 16
  %765 = getelementptr inbounds %struct.tree_type, ptr %764, i64 0, i32 6
  %766 = load i32, ptr %765, align 4
  %767 = xor i32 %766, %763
  %768 = and i32 %767, 1023
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %770, label %774

770:                                              ; preds = %761
  %771 = icmp eq i8 %0, 0
  %772 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 7), align 8
  %773 = select i1 %771, ptr %764, ptr %772
  br label %818

774:                                              ; preds = %761, %758
  %775 = load i64, ptr %1, align 8
  %776 = and i64 %775, 65535
  %777 = icmp eq i64 %776, 14
  br i1 %777, label %778, label %780

778:                                              ; preds = %774
  %779 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #23
  br label %785

780:                                              ; preds = %774
  %781 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %782 = load i32, ptr %781, align 4
  %783 = lshr i32 %782, 16
  %784 = and i32 %783, 255
  br label %785

785:                                              ; preds = %780, %778
  %786 = phi i32 [ %779, %778 ], [ %784, %780 ]
  %787 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 1), align 8, !tbaa !555
  %788 = load i64, ptr %787, align 8
  %789 = and i64 %788, 65535
  %790 = icmp eq i64 %789, 14
  br i1 %790, label %791, label %793

791:                                              ; preds = %785
  %792 = tail call i32 @vector_type_mode(ptr noundef nonnull %787) #23
  br label %798

793:                                              ; preds = %785
  %794 = getelementptr inbounds %struct.tree_type, ptr %787, i64 0, i32 6
  %795 = load i32, ptr %794, align 4
  %796 = lshr i32 %795, 16
  %797 = and i32 %796, 255
  br label %798

798:                                              ; preds = %793, %791
  %799 = phi i32 [ %792, %791 ], [ %797, %793 ]
  %800 = icmp eq i32 %786, %799
  %801 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %802 = load i32, ptr %801, align 4
  br i1 %800, label %803, label %814

803:                                              ; preds = %798
  %804 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 1), align 8
  %805 = getelementptr inbounds %struct.tree_type, ptr %804, i64 0, i32 6
  %806 = load i32, ptr %805, align 4
  %807 = xor i32 %806, %802
  %808 = and i32 %807, 1023
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %810, label %814

810:                                              ; preds = %803
  %811 = icmp eq i8 %0, 0
  %812 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 6), align 16
  %813 = select i1 %811, ptr %804, ptr %812
  br label %818

814:                                              ; preds = %798, %803
  %815 = and i32 %802, 1023
  %816 = zext nneg i32 %815 to i64
  %817 = tail call ptr @build_nonstandard_integer_type(i64 noundef %816, i32 noundef %412) #23
  br label %818

818:                                              ; preds = %403, %409, %814, %810, %770, %730, %690, %650, %610, %570, %530, %490, %450, %400, %391, %382, %373, %364, %355, %346, %337, %328, %319, %310, %301, %292, %283, %274, %265, %256, %247, %238, %229, %220, %211, %202, %193, %184, %175, %166, %157, %148, %139, %130, %121, %112, %103, %94, %85, %76, %67, %58, %49, %40, %31, %22, %13
  %819 = phi ptr [ %15, %13 ], [ %24, %22 ], [ %33, %31 ], [ %42, %40 ], [ %51, %49 ], [ %60, %58 ], [ %69, %67 ], [ %78, %76 ], [ %87, %85 ], [ %96, %94 ], [ %105, %103 ], [ %114, %112 ], [ %123, %121 ], [ %132, %130 ], [ %141, %139 ], [ %150, %148 ], [ %159, %157 ], [ %168, %166 ], [ %177, %175 ], [ %186, %184 ], [ %195, %193 ], [ %204, %202 ], [ %213, %211 ], [ %222, %220 ], [ %231, %229 ], [ %240, %238 ], [ %249, %247 ], [ %258, %256 ], [ %267, %265 ], [ %276, %274 ], [ %285, %283 ], [ %294, %292 ], [ %303, %301 ], [ %312, %310 ], [ %321, %319 ], [ %330, %328 ], [ %339, %337 ], [ %348, %346 ], [ %357, %355 ], [ %366, %364 ], [ %375, %373 ], [ %384, %382 ], [ %393, %391 ], [ %402, %400 ], [ %453, %450 ], [ %493, %490 ], [ %533, %530 ], [ %573, %570 ], [ %613, %610 ], [ %653, %650 ], [ %693, %690 ], [ %733, %730 ], [ %773, %770 ], [ %813, %810 ], [ %817, %814 ], [ %1, %403 ], [ %1, %409 ]
  ret ptr %819
}

; Function Attrs: optsize
declare ptr @build_nonstandard_integer_type(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_signed_type(ptr noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = tail call fastcc ptr @gimple_signed_or_unsigned_type(i8 noundef zeroext 0, ptr noundef %0) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @gimple_get_alias_set(ptr noundef %0) local_unnamed_addr #0 !prof !672 {
  br label %2

2:                                                ; preds = %11, %1
  %3 = phi ptr [ %0, %1 ], [ %10, %11 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %18 [
    i16 41, label %6
    i16 45, label %6
  ]

6:                                                ; preds = %2, %2
  %7 = and i64 %4, 65535
  %8 = icmp eq i64 %7, 41
  %9 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !536
  br i1 %8, label %12, label %11

11:                                               ; preds = %6, %12
  br label %2, !llvm.loop !1289

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !536
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 17
  br i1 %17, label %47, label %11

18:                                               ; preds = %2
  %19 = load i64, ptr %0, align 8
  %20 = and i64 %19, 65535
  %21 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !539
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %47

24:                                               ; preds = %18
  %25 = load ptr, ptr @integer_types, align 16, !tbaa !555
  %26 = icmp eq ptr %25, %0
  %27 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8
  %28 = icmp eq ptr %27, %0
  %29 = select i1 %26, i1 true, i1 %28
  %30 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16
  %31 = icmp eq ptr %30, %0
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %47, label %33

33:                                               ; preds = %24
  %34 = and i64 %19, 2162687
  %35 = icmp eq i64 %34, 2097160
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = tail call ptr @gimple_signed_type(ptr noundef nonnull %0) #22
  %38 = icmp eq ptr %37, %0
  br i1 %38, label %47, label %44

39:                                               ; preds = %33
  %40 = trunc i64 %19 to i16
  switch i16 %40, label %47 [
    i16 10, label %41
    i16 12, label %41
  ]

41:                                               ; preds = %39, %39
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !555
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41, %36
  %45 = phi ptr [ %37, %36 ], [ %42, %41 ]
  %46 = tail call i32 @get_alias_set(ptr noundef %45) #23
  br label %47

47:                                               ; preds = %12, %44, %36, %41, %39, %24, %18
  %48 = phi i32 [ -1, %18 ], [ 0, %24 ], [ -1, %39 ], [ -1, %41 ], [ -1, %36 ], [ %46, %44 ], [ 0, %12 ]
  ret i32 %48
}

; Function Attrs: optsize
declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @count_uses_and_derefs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 !prof !1290 {
  %6 = alloca %struct.ssa_operand_iterator_d, align 8
  %7 = alloca %struct.walk_stmt_info, align 8
  %8 = alloca %struct.count_ptr_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #24
  store i32 0, ptr %2, align 4, !tbaa !539
  store i32 0, ptr %3, align 4, !tbaa !539
  store i32 0, ptr %4, align 4, !tbaa !539
  %9 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %6, ptr noundef %1) #22
  %10 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #22
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %22, !prof !1291

12:                                               ; preds = %5, %18
  %13 = phi ptr [ %19, %18 ], [ %9, %5 ]
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %18, !prof !1292

15:                                               ; preds = %12
  %16 = load i32, ptr %2, align 4, !tbaa !539
  %17 = add i32 %16, 1
  store i32 %17, ptr %2, align 4, !tbaa !539
  br label %18

18:                                               ; preds = %12, %15
  %19 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %6) #22
  %20 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #22
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %12, label %22, !prof !1293, !llvm.loop !1294

22:                                               ; preds = %18, %5
  %23 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %1) #22, !range !552
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %33, !prof !1295

25:                                               ; preds = %22
  %26 = tail call fastcc i32 @gimple_code(ptr noundef %1) #22, !range !559
  %27 = trunc i32 %26 to i8
  switch i8 %27, label %28 [
    i8 9, label %33
    i8 7, label %33
  ], !prof !1296

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %1) #22, !range !552
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %33, !prof !1297

31:                                               ; preds = %28
  %32 = load i32, ptr %3, align 4, !tbaa !539
  br label %40

33:                                               ; preds = %25, %25, %28, %22
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #24
  store ptr %0, ptr %8, align 8, !tbaa !1298
  %34 = getelementptr inbounds %struct.count_ptr_d, ptr %8, i64 0, i32 1
  store i32 0, ptr %34, align 8, !tbaa !1300
  %35 = getelementptr inbounds %struct.count_ptr_d, ptr %8, i64 0, i32 2
  store i32 0, ptr %35, align 4, !tbaa !1301
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  %36 = getelementptr inbounds %struct.walk_stmt_info, ptr %7, i64 0, i32 1
  store ptr %8, ptr %36, align 8, !tbaa !1302
  %37 = call ptr @walk_gimple_op(ptr noundef %1, ptr noundef nonnull @count_ptr_derefs, ptr noundef nonnull %7) #22
  %38 = load i32, ptr %34, align 8, !tbaa !1300
  store i32 %38, ptr %4, align 4, !tbaa !539
  %39 = load i32, ptr %35, align 4, !tbaa !1301
  store i32 %39, ptr %3, align 4, !tbaa !539
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #24
  br label %40

40:                                               ; preds = %31, %33
  %41 = phi i32 [ %32, %31 ], [ %39, %33 ]
  %42 = load i32, ptr %2, align 4, !tbaa !539
  %43 = load i32, ptr %4, align 4, !tbaa !539
  %44 = add i32 %43, %41
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %46, label %47, !prof !1303

46:                                               ; preds = %40
  call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 4318, ptr noundef nonnull @.str.37) #23
  br label %47

47:                                               ; preds = %40, %46
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !prof !1290 !PGOFuncName !1304 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #22
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !1305
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #22
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1307 !PGOFuncName !1308 {
  %2 = load i8, ptr %0, align 8, !tbaa !1309
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #11 !prof !1307 !PGOFuncName !1310 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1311
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1312

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #22
  %8 = load ptr, ptr %3, align 8, !tbaa !1313
  store ptr %8, ptr %2, align 8, !tbaa !1311
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1316
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !1317

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1318
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #22
  %17 = load ptr, ptr %11, align 8, !tbaa !1320
  store ptr %17, ptr %10, align 8, !tbaa !1316
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !1309
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noalias noundef ptr @count_ptr_derefs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #19 !prof !1321 !PGOFuncName !1322 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1302
  %6 = load ptr, ptr %0, align 8, !tbaa !555
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %27 [
    i16 121, label %9
    i16 47, label %10
    i16 48, label %10
    i16 49, label %10
  ], !prof !1323

9:                                                ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !539
  br label %27

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !536
  %13 = load ptr, ptr %5, align 8, !tbaa !1298
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %27, !prof !1324

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  %17 = load i8, ptr %16, align 1, !tbaa !825
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19, !prof !1325

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.count_ptr_d, ptr %5, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !1300
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !1300
  br label %27

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.count_ptr_d, ptr %5, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !1301
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !1301
  br label %27

27:                                               ; preds = %10, %23, %19, %3, %9
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !prof !1290 !PGOFuncName !1326 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !1316
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #22
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !1311
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7, !prof !1303

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1327

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !tbaa !1313
  store ptr %11, ptr %5, align 8, !tbaa !1311
  br label %12

12:                                               ; preds = %10, %7, %2
  store i8 0, ptr %0, align 8, !tbaa !1309
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1290 !PGOFuncName !1328 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #22, !range !552
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1303

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !536
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !1329 !PGOFuncName !1330 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1331
  %4 = load ptr, ptr %3, align 8, !tbaa !555
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1332 {
  %2 = load ptr, ptr %0, align 8, !tbaa !555
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef readonly %4) local_unnamed_addr #0 !prof !1333 {
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #22, !range !552
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %88, label %12, !prof !1334

12:                                               ; preds = %5
  %13 = icmp eq ptr %3, null
  br i1 %13, label %20, label %14, !prof !1335

14:                                               ; preds = %12
  %15 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #22
  %16 = tail call fastcc ptr @get_base_loadstore(ptr noundef %15) #22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18, !prof !1336

18:                                               ; preds = %14
  %19 = tail call zeroext i8 %3(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %1) #23
  br label %20

20:                                               ; preds = %14, %18, %12
  %21 = phi i8 [ %19, %18 ], [ 0, %14 ], [ 0, %12 ]
  %22 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #22
  %23 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %22) #22, !range !552
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25, !prof !1337

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %28, %25 ], [ %22, %20 ]
  %27 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !536
  %29 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %28) #22, !range !552
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %25, !prof !1338, !llvm.loop !1339

31:                                               ; preds = %25, %20
  %32 = phi ptr [ %22, %20 ], [ %28, %25 ]
  %33 = icmp eq ptr %4, null
  br i1 %33, label %79, label %34, !prof !1340

34:                                               ; preds = %31
  %35 = load i64, ptr %32, align 8
  %36 = trunc i64 %35 to i16
  switch i16 %36, label %45 [
    i16 121, label %54
    i16 152, label %37
  ], !prof !1341

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !536
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41, !prof !1342

41:                                               ; preds = %37
  %42 = load i64, ptr %39, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 121
  br i1 %44, label %54, label %45, !prof !1342

45:                                               ; preds = %34, %41, %37
  %46 = and i64 %35, 65535
  %47 = icmp eq i64 %46, 50
  br i1 %47, label %48, label %60, !prof !1343

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !536
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 121
  br i1 %53, label %54, label %60

54:                                               ; preds = %48, %41, %34
  %55 = phi ptr [ %32, %34 ], [ %39, %41 ], [ %50, %48 ]
  %56 = getelementptr inbounds %struct.tree_exp, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !536
  %58 = tail call zeroext i8 %4(ptr noundef %0, ptr noundef %57, ptr noundef %1) #23
  %59 = or i8 %58, %21
  br label %60

60:                                               ; preds = %54, %48, %45
  %61 = phi i8 [ %21, %48 ], [ %21, %45 ], [ %59, %54 ]
  %62 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #22
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 152
  br i1 %65, label %66, label %79, !prof !1344

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.tree_exp, ptr %62, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !536
  %69 = icmp eq ptr %68, null
  br i1 %69, label %79, label %70, !prof !1345

70:                                               ; preds = %66
  %71 = load i64, ptr %68, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 121
  br i1 %73, label %74, label %79, !prof !1345

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.tree_exp, ptr %68, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !536
  %77 = tail call zeroext i8 %4(ptr noundef %0, ptr noundef %76, ptr noundef %1) #23
  %78 = or i8 %77, %61
  br label %79

79:                                               ; preds = %60, %66, %70, %74, %31
  %80 = phi i8 [ %78, %74 ], [ %61, %70 ], [ %61, %66 ], [ %61, %60 ], [ %21, %31 ]
  %81 = icmp eq ptr %2, null
  br i1 %81, label %346, label %82, !prof !1346

82:                                               ; preds = %79
  %83 = tail call fastcc ptr @get_base_loadstore(ptr noundef %32) #22
  %84 = icmp eq ptr %83, null
  br i1 %84, label %346, label %85, !prof !1347

85:                                               ; preds = %82
  %86 = tail call zeroext i8 %2(ptr noundef %0, ptr noundef nonnull %83, ptr noundef %1) #23
  %87 = or i8 %86, %80
  br label %346

88:                                               ; preds = %5
  %89 = icmp ne ptr %4, null
  br i1 %89, label %90, label %120, !prof !1348

90:                                               ; preds = %88
  %91 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #22, !range !552
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %96, !prof !1349

93:                                               ; preds = %90
  %94 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %120, !prof !1350

96:                                               ; preds = %93, %90
  %97 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %346, label %99, !prof !1351

99:                                               ; preds = %96, %115
  %100 = phi i8 [ %116, %115 ], [ 0, %96 ]
  %101 = phi i32 [ %117, %115 ], [ 0, %96 ]
  %102 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %101) #22
  %103 = icmp eq ptr %102, null
  br i1 %103, label %115, label %104, !prof !1352

104:                                              ; preds = %99
  %105 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %101) #22
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 121
  br i1 %108, label %109, label %115, !prof !1353

109:                                              ; preds = %104
  %110 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %101) #22
  %111 = getelementptr inbounds %struct.tree_exp, ptr %110, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !536
  %113 = tail call zeroext i8 %4(ptr noundef %0, ptr noundef %112, ptr noundef %1) #23
  %114 = or i8 %113, %100
  br label %115

115:                                              ; preds = %99, %104, %109
  %116 = phi i8 [ %114, %109 ], [ %100, %104 ], [ %100, %99 ]
  %117 = add nuw i32 %101, 1
  %118 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #22
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %99, label %346, !prof !1354, !llvm.loop !1355

120:                                              ; preds = %93, %88
  %121 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #22, !range !552
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %199, label %123, !prof !1356

123:                                              ; preds = %120
  %124 = icmp eq ptr %3, null
  br i1 %124, label %133, label %125, !prof !1357

125:                                              ; preds = %123
  %126 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #22
  %127 = icmp eq ptr %126, null
  br i1 %127, label %133, label %128, !prof !1358

128:                                              ; preds = %125
  %129 = tail call fastcc ptr @get_base_loadstore(ptr noundef nonnull %126) #22
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131, !prof !1359

131:                                              ; preds = %128
  %132 = tail call zeroext i8 %3(ptr noundef %0, ptr noundef nonnull %129, ptr noundef %1) #23
  br label %133

133:                                              ; preds = %125, %131, %128, %123
  %134 = phi i8 [ 0, %123 ], [ %132, %131 ], [ 0, %128 ], [ 0, %125 ]
  %135 = icmp ne ptr %2, null
  %136 = or i1 %135, %89
  br i1 %136, label %137, label %346, !prof !1360

137:                                              ; preds = %133
  %138 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #22
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %165, label %140, !prof !1361

140:                                              ; preds = %137, %160
  %141 = phi i8 [ %161, %160 ], [ %134, %137 ]
  %142 = phi i32 [ %162, %160 ], [ 0, %137 ]
  %143 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %142) #22
  br i1 %89, label %144, label %153, !prof !1362

144:                                              ; preds = %140
  %145 = load i64, ptr %143, align 8
  %146 = and i64 %145, 65535
  %147 = icmp eq i64 %146, 121
  br i1 %147, label %148, label %153, !prof !1363

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.tree_exp, ptr %143, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !536
  %151 = tail call zeroext i8 %4(ptr noundef %0, ptr noundef %150, ptr noundef %1) #23
  %152 = or i8 %151, %141
  br label %160

153:                                              ; preds = %144, %140
  br i1 %135, label %154, label %160, !prof !1364

154:                                              ; preds = %153
  %155 = tail call fastcc ptr @get_base_loadstore(ptr noundef %143) #22
  %156 = icmp eq ptr %155, null
  br i1 %156, label %160, label %157, !prof !1365

157:                                              ; preds = %154
  %158 = tail call zeroext i8 %2(ptr noundef %0, ptr noundef nonnull %155, ptr noundef %1) #23
  %159 = or i8 %158, %141
  br label %160

160:                                              ; preds = %153, %157, %154, %148
  %161 = phi i8 [ %152, %148 ], [ %159, %157 ], [ %141, %154 ], [ %141, %153 ]
  %162 = add nuw i32 %142, 1
  %163 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #22
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %140, label %165, !prof !1366, !llvm.loop !1367

165:                                              ; preds = %160, %137
  %166 = phi i8 [ %134, %137 ], [ %161, %160 ]
  br i1 %89, label %167, label %346, !prof !1368

167:                                              ; preds = %165
  %168 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #22
  %169 = icmp eq ptr %168, null
  br i1 %169, label %181, label %170, !prof !1369

170:                                              ; preds = %167
  %171 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #22
  %172 = load i64, ptr %171, align 8
  %173 = and i64 %172, 65535
  %174 = icmp eq i64 %173, 121
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #22
  %177 = getelementptr inbounds %struct.tree_exp, ptr %176, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !536
  %179 = tail call zeroext i8 %4(ptr noundef %0, ptr noundef %178, ptr noundef %1) #23
  %180 = or i8 %179, %166
  br label %181

181:                                              ; preds = %175, %170, %167
  %182 = phi i8 [ %166, %167 ], [ %166, %170 ], [ %180, %175 ]
  %183 = tail call fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr noundef %0) #22, !range !552
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %346, label %185, !prof !1370

185:                                              ; preds = %181
  %186 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #22
  %187 = icmp eq ptr %186, null
  br i1 %187, label %346, label %188, !prof !1371

188:                                              ; preds = %185
  %189 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #22
  %190 = getelementptr inbounds %struct.tree_common, ptr %189, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !536
  %192 = load i64, ptr %191, align 8
  %193 = and i64 %192, 262144
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %346, label %195, !prof !1372

195:                                              ; preds = %188
  %196 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #22
  %197 = tail call zeroext i8 %4(ptr noundef %0, ptr noundef %196, ptr noundef %1) #23
  %198 = or i8 %197, %182
  br label %346

199:                                              ; preds = %120
  %200 = tail call fastcc i32 @gimple_code(ptr noundef %0) #22, !range !559
  %201 = trunc i32 %200 to i8
  switch i8 %201, label %322 [
    i8 7, label %202
    i8 9, label %303
  ], !prof !1373

202:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #24
  %203 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %0) #22, !range !559
  %204 = shl nuw nsw i32 %203, 3
  %205 = zext nneg i32 %204 to i64
  %206 = alloca i8, i64 %205, align 16
  %207 = icmp ne ptr %3, null
  %208 = or i1 %207, %89
  br i1 %208, label %209, label %250

209:                                              ; preds = %202
  %210 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %0) #22, !range !559
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %250, label %212

212:                                              ; preds = %209, %244
  %213 = phi i64 [ %246, %244 ], [ 0, %209 ]
  %214 = phi i8 [ %245, %244 ], [ 0, %209 ]
  %215 = trunc i64 %213 to i32
  %216 = call fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %215) #22
  %217 = getelementptr inbounds %struct.tree_list, ptr %216, i64 0, i32 2
  %218 = load ptr, ptr %217, align 8, !tbaa !536
  %219 = call fastcc ptr @get_base_loadstore(ptr noundef %218) #22
  %220 = icmp ne ptr %219, null
  %221 = and i1 %207, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %212
  %223 = call zeroext i8 %3(ptr noundef %0, ptr noundef nonnull %219, ptr noundef %1) #23
  %224 = or i8 %223, %214
  br label %225

225:                                              ; preds = %222, %212
  %226 = phi i8 [ %224, %222 ], [ %214, %212 ]
  br i1 %89, label %227, label %244

227:                                              ; preds = %225
  %228 = getelementptr inbounds %struct.tree_list, ptr %216, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !536
  %230 = getelementptr inbounds %struct.tree_list, ptr %229, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !536
  %232 = getelementptr inbounds %struct.tree_string, ptr %231, i64 0, i32 2
  store ptr %232, ptr %6, align 8, !tbaa !555
  %233 = getelementptr inbounds ptr, ptr %206, i64 %213
  store ptr %232, ptr %233, align 8, !tbaa !555
  %234 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %6, i32 noundef %215, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #23
  %235 = load i8, ptr %8, align 1
  %236 = icmp eq i8 %235, 0
  %237 = select i1 %220, i1 %236, i1 false
  %238 = load i8, ptr %7, align 1
  %239 = icmp ne i8 %238, 0
  %240 = select i1 %237, i1 %239, i1 false
  br i1 %240, label %241, label %244

241:                                              ; preds = %227
  %242 = call zeroext i8 %4(ptr noundef %0, ptr noundef nonnull %219, ptr noundef %1) #23
  %243 = or i8 %242, %226
  br label %244

244:                                              ; preds = %227, %241, %225
  %245 = phi i8 [ %243, %241 ], [ %226, %227 ], [ %226, %225 ]
  %246 = add nuw nsw i64 %213, 1
  %247 = call fastcc i32 @gimple_asm_noutputs(ptr noundef %0) #22, !range !559
  %248 = zext nneg i32 %247 to i64
  %249 = icmp ult i64 %246, %248
  br i1 %249, label %212, label %250, !llvm.loop !1374

250:                                              ; preds = %244, %209, %202
  %251 = phi i8 [ 0, %202 ], [ 0, %209 ], [ %245, %244 ]
  %252 = icmp ne ptr %2, null
  %253 = or i1 %252, %89
  br i1 %253, label %254, label %301

254:                                              ; preds = %250
  %255 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %0) #22, !range !559
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %301, label %257

257:                                              ; preds = %254, %296
  %258 = phi i8 [ %297, %296 ], [ %251, %254 ]
  %259 = phi i32 [ %298, %296 ], [ 0, %254 ]
  %260 = call fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %259) #22
  %261 = getelementptr inbounds %struct.tree_list, ptr %260, i64 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !536
  br i1 %89, label %263, label %272

263:                                              ; preds = %257
  %264 = load i64, ptr %262, align 8
  %265 = and i64 %264, 65535
  %266 = icmp eq i64 %265, 121
  br i1 %266, label %267, label %272

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.tree_exp, ptr %262, i64 0, i32 3
  %269 = load ptr, ptr %268, align 8, !tbaa !536
  %270 = call zeroext i8 %4(ptr noundef %0, ptr noundef %269, ptr noundef %1) #23
  %271 = or i8 %270, %258
  br label %296

272:                                              ; preds = %257, %263
  %273 = call fastcc ptr @get_base_loadstore(ptr noundef %262) #22
  %274 = icmp eq ptr %273, null
  br i1 %274, label %296, label %275

275:                                              ; preds = %272
  br i1 %252, label %276, label %279

276:                                              ; preds = %275
  %277 = call zeroext i8 %2(ptr noundef %0, ptr noundef nonnull %273, ptr noundef %1) #23
  %278 = or i8 %277, %258
  br label %279

279:                                              ; preds = %276, %275
  %280 = phi i8 [ %278, %276 ], [ %258, %275 ]
  br i1 %89, label %281, label %296

281:                                              ; preds = %279
  %282 = getelementptr inbounds %struct.tree_list, ptr %260, i64 0, i32 1
  %283 = load ptr, ptr %282, align 8, !tbaa !536
  %284 = getelementptr inbounds %struct.tree_list, ptr %283, i64 0, i32 2
  %285 = load ptr, ptr %284, align 8, !tbaa !536
  %286 = getelementptr inbounds %struct.tree_string, ptr %285, i64 0, i32 2
  store ptr %286, ptr %6, align 8, !tbaa !555
  %287 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0, i32 noundef %203, i32 noundef 0, ptr noundef nonnull %206, ptr noundef nonnull %7, ptr noundef nonnull %8) #23
  %288 = load i8, ptr %8, align 1, !tbaa !536
  %289 = icmp eq i8 %288, 0
  %290 = load i8, ptr %7, align 1
  %291 = icmp ne i8 %290, 0
  %292 = select i1 %289, i1 %291, i1 false
  br i1 %292, label %293, label %296

293:                                              ; preds = %281
  %294 = call zeroext i8 %4(ptr noundef %0, ptr noundef nonnull %273, ptr noundef %1) #23
  %295 = or i8 %294, %280
  br label %296

296:                                              ; preds = %279, %293, %281, %272, %267
  %297 = phi i8 [ %271, %267 ], [ %295, %293 ], [ %280, %281 ], [ %280, %279 ], [ %258, %272 ]
  %298 = add nuw nsw i32 %259, 1
  %299 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %0) #22, !range !559
  %300 = icmp ult i32 %298, %299
  br i1 %300, label %257, label %301, !llvm.loop !1375

301:                                              ; preds = %296, %254, %250
  %302 = phi i8 [ %251, %250 ], [ %251, %254 ], [ %297, %296 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  br label %346

303:                                              ; preds = %199
  %304 = tail call fastcc ptr @gimple_return_retval(ptr noundef %0) #22
  %305 = icmp eq ptr %304, null
  br i1 %305, label %346, label %306, !prof !1376

306:                                              ; preds = %303
  br i1 %89, label %307, label %315, !prof !1377

307:                                              ; preds = %306
  %308 = load i64, ptr %304, align 8
  %309 = and i64 %308, 65535
  %310 = icmp eq i64 %309, 121
  br i1 %310, label %311, label %315, !prof !1378

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.tree_exp, ptr %304, i64 0, i32 3
  %313 = load ptr, ptr %312, align 8, !tbaa !536
  %314 = tail call zeroext i8 %4(ptr noundef %0, ptr noundef %313, ptr noundef %1) #23
  br label %346

315:                                              ; preds = %307, %306
  %316 = icmp eq ptr %2, null
  br i1 %316, label %346, label %317, !prof !1379

317:                                              ; preds = %315
  %318 = tail call fastcc ptr @get_base_loadstore(ptr noundef nonnull %304) #22
  %319 = icmp eq ptr %318, null
  br i1 %319, label %346, label %320, !prof !1380

320:                                              ; preds = %317
  %321 = tail call zeroext i8 %2(ptr noundef %0, ptr noundef nonnull %318, ptr noundef %1) #23
  br label %346

322:                                              ; preds = %199
  %323 = icmp eq i32 %200, 16
  %324 = and i1 %89, %323
  br i1 %324, label %325, label %346, !prof !1381

325:                                              ; preds = %322
  %326 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #22
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %346, label %328

328:                                              ; preds = %325, %341
  %329 = phi i8 [ %342, %341 ], [ 0, %325 ]
  %330 = phi i32 [ %343, %341 ], [ 0, %325 ]
  %331 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %330) #22
  %332 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %331) #22
  %333 = load i64, ptr %332, align 8
  %334 = and i64 %333, 65535
  %335 = icmp eq i64 %334, 121
  br i1 %335, label %336, label %341

336:                                              ; preds = %328
  %337 = getelementptr inbounds %struct.tree_exp, ptr %332, i64 0, i32 3
  %338 = load ptr, ptr %337, align 8, !tbaa !536
  %339 = tail call zeroext i8 %4(ptr noundef %0, ptr noundef %338, ptr noundef %1) #23
  %340 = or i8 %339, %329
  br label %341

341:                                              ; preds = %336, %328
  %342 = phi i8 [ %340, %336 ], [ %329, %328 ]
  %343 = add nuw i32 %330, 1
  %344 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #22
  %345 = icmp ult i32 %343, %344
  br i1 %345, label %328, label %346, !llvm.loop !1382

346:                                              ; preds = %341, %115, %325, %96, %133, %165, %303, %315, %320, %317, %311, %79, %85, %82, %301, %322, %181, %185, %188, %195
  %347 = phi i8 [ %198, %195 ], [ %182, %188 ], [ %182, %185 ], [ %182, %181 ], [ %302, %301 ], [ 0, %322 ], [ %87, %85 ], [ %80, %82 ], [ %80, %79 ], [ %314, %311 ], [ %321, %320 ], [ 0, %317 ], [ 0, %315 ], [ 0, %303 ], [ %166, %165 ], [ %134, %133 ], [ 0, %96 ], [ 0, %325 ], [ %116, %115 ], [ %342, %341 ]
  ret i8 %347
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_base_loadstore(ptr noundef readonly %0) unnamed_addr #16 !prof !1383 !PGOFuncName !1384 {
  %2 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #22, !range !552
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %10, label %4, !prof !1385

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !536
  %8 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %7) #22, !range !552
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %4, !prof !1386, !llvm.loop !1387

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = and i64 %12, 65535
  %16 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !539
  %18 = icmp eq i32 %17, 3
  %19 = add nsw i32 %14, -47
  %20 = icmp ult i32 %19, 3
  %21 = or i1 %18, %20
  %22 = icmp eq i32 %14, 152
  %23 = or i1 %22, %21
  %24 = select i1 %23, ptr %11, ptr null, !prof !1388
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #0 !prof !1389 !PGOFuncName !1390 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #22
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1391 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !536
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !1392 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #22
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !1393 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !536
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 3103, ptr noundef nonnull @.str.37) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @walk_stmt_load_store_ops(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !1394 {
  %5 = tail call zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null) #22
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @gimple_ior_addresses_taken(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !1395 {
  %3 = tail call zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef %1, ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull @gimple_ior_addresses_taken_1) #22
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @gimple_ior_addresses_taken_1(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !prof !1396 !PGOFuncName !1397 {
  %4 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %1) #22, !range !552
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6, !prof !1398

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %1, %3 ]
  %8 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !536
  %10 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %9) #22, !range !552
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %6, !prof !1399, !llvm.loop !1400

12:                                               ; preds = %6, %3
  %13 = phi ptr [ %1, %3 ], [ %9, %6 ]
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !539
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %23, !prof !1401

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.tree_decl_minimal, ptr %13, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !536
  %22 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %21) #23
  br label %23

23:                                               ; preds = %12, %19
  %24 = phi i8 [ 1, %19 ], [ 0, %12 ]
  ret i8 %24
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_decl_printable_name(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !672 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !536
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 4565, ptr noundef nonnull @.str.37) #23
  br label %9

9:                                                ; preds = %4, %8
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, 65535
  %12 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %11, i64 13
  %13 = load i8, ptr %12, align 1, !tbaa !536
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !536
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = icmp sgt i32 %1, 1
  %21 = icmp eq i64 %11, 29
  %22 = select i1 %21, i32 16427, i32 16426
  %23 = select i1 %20, i32 %22, i32 0
  %24 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #23
  %25 = getelementptr inbounds %struct.tree_identifier, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !536
  %27 = tail call ptr @cplus_demangle_v3(ptr noundef %26, i32 noundef %23) #23
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr %26, ptr %27
  br label %35

30:                                               ; preds = %15, %9
  %31 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !536
  %33 = getelementptr inbounds %struct.tree_identifier, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !536
  br label %35

35:                                               ; preds = %30, %19
  %36 = phi ptr [ %29, %19 ], [ %34, %30 ]
  ret ptr %36
}

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @cplus_demangle_v3(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_fold_obj_type_ref(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !672 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !536
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_binfo, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !536
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !536
  %11 = tail call i64 @tree_low_cst(ptr noundef %10, i32 noundef 1) #23
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %6, %13
  %14 = phi ptr [ %18, %13 ], [ %8, %6 ]
  %15 = phi i64 [ %16, %13 ], [ 0, %6 ]
  %16 = add nuw nsw i64 %15, 1
  %17 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !536
  %19 = icmp eq i64 %16, %11
  br i1 %19, label %20, label %13, !llvm.loop !1402

20:                                               ; preds = %13, %6
  %21 = phi ptr [ %8, %6 ], [ %18, %13 ]
  %22 = getelementptr inbounds %struct.tree_list, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !536
  %24 = tail call ptr @cgraph_node(ptr noundef %23) #23
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 18, i32 2
  %26 = load i8, ptr %25, align 8
  %27 = or i8 %26, -128
  store i8 %27, ptr %25, align 8
  %28 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %23) #23
  br label %29

29:                                               ; preds = %2, %20
  %30 = phi ptr [ %28, %20 ], [ null, %2 ]
  ret ptr %30
}

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { optsize }
attributes #23 = { nounwind optsize }
attributes #24 = { nounwind }
attributes #25 = { cold }
attributes #26 = { cold optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!524}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523}
!36 = !{ptr @gimple_alloc_stat, ptr @gimple_size, i64 2381234}
!37 = !{ptr @gimple_alloc_stat, ptr @ggc_alloc_cleared_stat, i64 2381234}
!38 = !{ptr @gimple_alloc_stat, ptr @gimple_set_code, i64 2381234}
!39 = !{ptr @gimple_alloc_stat, ptr @gimple_set_num_ops, i64 2381234}
!40 = !{ptr @gimple_size, ptr @gss_for_code, i64 3032671}
!41 = !{ptr @gimple_build_return, ptr @gimple_build_with_ops_stat, i64 28600}
!42 = !{ptr @gimple_build_return, ptr @gimple_return_set_retval, i64 24054}
!43 = !{ptr @gimple_build_with_ops_stat, ptr @gimple_alloc_stat, i64 1436044}
!44 = !{ptr @gimple_build_with_ops_stat, ptr @gimple_set_subcode, i64 1436044}
!45 = !{ptr @gimple_return_set_retval, ptr @gimple_set_op, i64 24055}
!46 = !{ptr @gimple_set_subcode, ptr @fancy_abort, i64 1}
!47 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 5166038}
!48 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 5166037}
!49 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!50 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 5166038}
!51 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 122815657}
!52 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 112285190}
!53 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!54 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 112840158}
!55 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 112840158}
!56 = !{ptr @gimple_build_call_vec, ptr @VEC_tree_base_length, i64 3864}
!57 = !{ptr @gimple_build_call_vec, ptr @gimple_build_call_1, i64 3864}
!58 = !{ptr @gimple_build_call_vec, ptr @VEC_tree_base_index, i64 9816}
!59 = !{ptr @gimple_build_call_vec, ptr @gimple_call_set_arg, i64 9816}
!60 = !{ptr @gimple_build_call_1, ptr @gimple_build_with_ops_stat, i64 87695}
!61 = !{ptr @gimple_build_call_1, ptr @build_fold_addr_expr_loc, i64 84123}
!62 = !{ptr @gimple_build_call_1, ptr @gimple_set_op, i64 87695}
!63 = !{ptr @gimple_call_set_arg, ptr @gimple_set_op, i64 182458}
!64 = !{ptr @gimple_build_call, ptr @is_gimple_call_addr, i64 1}
!65 = !{ptr @gimple_build_call, ptr @gimple_build_call_1, i64 27}
!66 = !{ptr @gimple_build_call, ptr @gimple_call_set_arg, i64 25}
!67 = !{ptr @is_gimple_call_addr, ptr @is_gimple_val, i64 158878}
!68 = !{ptr @gimple_build_call_from_tree, ptr @get_callee_fndecl, i64 83804}
!69 = !{ptr @gimple_build_call_from_tree, ptr @fancy_abort, i64 1}
!70 = !{ptr @gimple_build_call_from_tree, ptr @gimple_build_call_1, i64 83804}
!71 = !{ptr @gimple_build_call_from_tree, ptr @gimple_call_set_arg, i64 172614}
!72 = !{ptr @gimple_build_call_from_tree, ptr @tree_block, i64 83804}
!73 = !{ptr @gimple_build_call_from_tree, ptr @gimple_set_block, i64 83804}
!74 = !{ptr @gimple_build_call_from_tree, ptr @gimple_call_set_chain, i64 83804}
!75 = !{ptr @gimple_build_call_from_tree, ptr @gimple_call_set_tail, i64 83804}
!76 = !{ptr @gimple_build_call_from_tree, ptr @gimple_call_set_cannot_inline, i64 83804}
!77 = !{ptr @gimple_build_call_from_tree, ptr @gimple_call_set_return_slot_opt, i64 83804}
!78 = !{ptr @gimple_build_call_from_tree, ptr @gimple_call_set_from_thunk, i64 83804}
!79 = !{ptr @gimple_build_call_from_tree, ptr @gimple_call_set_va_arg_pack, i64 83804}
!80 = !{ptr @gimple_build_call_from_tree, ptr @gimple_set_no_warning, i64 83804}
!81 = !{ptr @gimple_call_set_chain, ptr @gimple_set_op, i64 85193}
!82 = !{ptr @extract_ops_from_tree, ptr @get_gimple_rhs_class, i64 2072420}
!83 = !{ptr @extract_ops_from_tree, ptr @fancy_abort, i64 1}
!84 = !{ptr @gimple_build_assign_stat, ptr @extract_ops_from_tree, i64 880268}
!85 = !{ptr @gimple_build_assign_stat, ptr @gimple_build_assign_with_ops_stat, i64 880268}
!86 = !{ptr @gimple_build_assign_with_ops_stat, ptr @get_gimple_rhs_num_ops, i64 884811}
!87 = !{ptr @gimple_build_assign_with_ops_stat, ptr @gimple_build_with_ops_stat, i64 884811}
!88 = !{ptr @gimple_build_assign_with_ops_stat, ptr @gimple_assign_set_lhs, i64 884811}
!89 = !{ptr @gimple_build_assign_with_ops_stat, ptr @gimple_assign_set_rhs1, i64 884811}
!90 = !{ptr @gimple_build_assign_with_ops_stat, ptr @fancy_abort, i64 1}
!91 = !{ptr @gimple_build_assign_with_ops_stat, ptr @gimple_assign_set_rhs2, i64 84036}
!92 = !{ptr @get_gimple_rhs_num_ops, ptr @get_gimple_rhs_class, i64 1452338}
!93 = !{ptr @get_gimple_rhs_num_ops, ptr @fancy_abort, i64 1}
!94 = !{ptr @gimple_assign_set_lhs, ptr @gimple_set_op, i64 907563}
!95 = !{ptr @gimple_assign_set_rhs1, ptr @gimple_set_op, i64 1046506}
!96 = !{ptr @gimple_assign_set_rhs2, ptr @gimple_set_op, i64 96725}
!97 = !{ptr @gimplify_assign, ptr @build2_stat, i64 899}
!98 = !{ptr @gimplify_assign, ptr @gimplify_and_add, i64 899}
!99 = !{ptr @gimplify_assign, ptr @ggc_free, i64 899}
!100 = !{ptr @gimplify_assign, ptr @gimple_seq_last_stmt, i64 899}
!101 = !{ptr @gimple_seq_last_stmt, ptr @gimple_seq_last, i64 899}
!102 = !{ptr @gimple_build_cond, ptr @fancy_abort, i64 1}
!103 = !{ptr @gimple_build_cond, ptr @gimple_build_with_ops_stat, i64 124146}
!104 = !{ptr @gimple_build_cond, ptr @gimple_cond_set_lhs, i64 124146}
!105 = !{ptr @gimple_build_cond, ptr @gimple_cond_set_rhs, i64 124146}
!106 = !{ptr @gimple_build_cond, ptr @gimple_cond_set_true_label, i64 124146}
!107 = !{ptr @gimple_build_cond, ptr @gimple_cond_set_false_label, i64 124146}
!108 = !{ptr @gimple_cond_set_lhs, ptr @gimple_set_op, i64 150539}
!109 = !{ptr @gimple_cond_set_rhs, ptr @gimple_set_op, i64 150539}
!110 = !{ptr @gimple_cond_set_true_label, ptr @gimple_set_op, i64 124146}
!111 = !{ptr @gimple_cond_set_false_label, ptr @gimple_set_op, i64 124146}
!112 = !{ptr @gimple_cond_get_ops_from_tree, ptr @is_gimple_min_invariant, i64 18650}
!113 = !{ptr @gimple_cond_get_ops_from_tree, ptr @fancy_abort, i64 4}
!114 = !{ptr @gimple_cond_get_ops_from_tree, ptr @extract_ops_from_tree, i64 129637}
!115 = !{ptr @gimple_cond_get_ops_from_tree, ptr @fold_convert_loc, i64 18652}
!116 = !{ptr @is_gimple_min_invariant, ptr @is_gimple_invariant_address, i64 1562047}
!117 = !{ptr @is_gimple_min_invariant, ptr @is_gimple_constant, i64 74534264}
!118 = !{ptr @gimple_build_cond_from_tree, ptr @gimple_cond_get_ops_from_tree, i64 431}
!119 = !{ptr @gimple_build_cond_from_tree, ptr @gimple_build_cond, i64 431}
!120 = !{ptr @gimple_cond_set_condition_from_tree, ptr @gimple_cond_get_ops_from_tree, i64 26393}
!121 = !{ptr @gimple_cond_set_condition_from_tree, ptr @gimple_cond_set_condition, i64 26393}
!122 = !{ptr @gimple_cond_set_condition, ptr @gimple_cond_set_code, i64 26393}
!123 = !{ptr @gimple_cond_set_condition, ptr @gimple_cond_set_lhs, i64 26393}
!124 = !{ptr @gimple_cond_set_condition, ptr @gimple_cond_set_rhs, i64 26393}
!125 = !{ptr @gimple_build_label, ptr @gimple_build_with_ops_stat, i64 244954}
!126 = !{ptr @gimple_build_label, ptr @gimple_label_set_label, i64 244954}
!127 = !{ptr @gimple_label_set_label, ptr @gimple_set_op, i64 244954}
!128 = !{ptr @gimple_build_goto, ptr @gimple_build_with_ops_stat, i64 64284}
!129 = !{ptr @gimple_build_goto, ptr @gimple_goto_set_dest, i64 64284}
!130 = !{ptr @gimple_goto_set_dest, ptr @gimple_set_op, i64 64284}
!131 = !{ptr @gimple_build_nop, ptr @gimple_alloc_stat, i64 275951}
!132 = !{ptr @gimple_build_bind, ptr @gimple_alloc_stat, i64 16762}
!133 = !{ptr @gimple_build_bind, ptr @gimple_bind_set_vars, i64 16762}
!134 = !{ptr @gimple_build_bind, ptr @gimple_bind_set_body, i64 1}
!135 = !{ptr @gimple_build_bind, ptr @gimple_bind_set_block, i64 16573}
!136 = !{ptr @gimple_bind_set_block, ptr @fancy_abort, i64 1}
!137 = !{ptr @gimple_build_try, ptr @gimple_alloc_stat, i64 2}
!138 = !{ptr @gimple_build_try, ptr @gimple_set_subcode, i64 2}
!139 = !{ptr @gimple_build_try, ptr @gimple_try_set_eval, i64 2}
!140 = !{ptr @gimple_build_try, ptr @gimple_try_set_cleanup, i64 2}
!141 = !{ptr @gimple_build_switch_nlabels, ptr @gimple_build_with_ops_stat, i64 1554}
!142 = !{ptr @gimple_build_switch_nlabels, ptr @gimple_switch_set_index, i64 1554}
!143 = !{ptr @gimple_build_switch_nlabels, ptr @gimple_switch_set_default_label, i64 1553}
!144 = !{ptr @gimple_switch_set_index, ptr @fancy_abort, i64 1}
!145 = !{ptr @gimple_switch_set_index, ptr @gimple_set_op, i64 1554}
!146 = !{ptr @gimple_switch_set_default_label, ptr @gimple_switch_set_label, i64 1554}
!147 = !{ptr @gimple_switch_set_label, ptr @gimple_num_ops, i64 26312}
!148 = !{ptr @gimple_switch_set_label, ptr @fancy_abort, i64 2}
!149 = !{ptr @gimple_switch_set_label, ptr @gimple_set_op, i64 26312}
!150 = !{ptr @gimple_build_switch_vec, ptr @VEC_tree_base_length, i64 1554}
!151 = !{ptr @gimple_build_switch_vec, ptr @gimple_build_switch_nlabels, i64 1554}
!152 = !{ptr @gimple_build_switch_vec, ptr @VEC_tree_base_index, i64 24743}
!153 = !{ptr @gimple_build_switch_vec, ptr @gimple_switch_set_label, i64 24743}
!154 = !{ptr @gimple_build_predict, ptr @gimple_alloc_stat, i64 1038}
!155 = !{ptr @gimple_build_predict, ptr @gimple_predict_set_predictor, i64 1038}
!156 = !{ptr @gimple_build_predict, ptr @gimple_predict_set_outcome, i64 1038}
!157 = !{ptr @gimple_seq_alloc, ptr @fancy_abort, i64 1}
!158 = !{ptr @gimple_seq_alloc, ptr @ggc_alloc_cleared_stat, i64 968753}
!159 = !{ptr @gimple_seq_free, ptr @gimple_seq_first, i64 442086}
!160 = !{ptr @gimple_seq_free, ptr @fancy_abort, i64 3}
!161 = !{ptr @gimple_seq_free, ptr @gimple_seq_last, i64 442086}
!162 = !{ptr @gimple_seq_add_stmt, ptr @gimple_seq_alloc, i64 186929}
!163 = !{ptr @gimple_seq_add_stmt, ptr @gsi_last, i64 216377}
!164 = !{ptr @gimple_seq_add_stmt, ptr @gsi_insert_after, i64 216377}
!165 = !{ptr @gsi_last, ptr @gimple_seq_last, i64 355505}
!166 = !{ptr @gsi_last, ptr @gimple_bb, i64 141806}
!167 = !{ptr @gimple_seq_add_seq, ptr @gimple_seq_alloc, i64 13591}
!168 = !{ptr @gimple_seq_add_seq, ptr @gsi_last, i64 139126}
!169 = !{ptr @gimple_seq_add_seq, ptr @gsi_insert_seq_after, i64 139126}
!170 = !{ptr @gsi_start, ptr @gimple_seq_first, i64 735557}
!171 = !{ptr @gsi_start, ptr @gimple_bb, i64 712943}
!172 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 1506404}
!173 = !{ptr @gimple_copy, ptr @gimple_code, i64 650699}
!174 = !{ptr @gimple_copy, ptr @gimple_num_ops, i64 650698}
!175 = !{ptr @gimple_copy, ptr @gimple_alloc_stat, i64 650698}
!176 = !{ptr @gimple_copy, ptr @gimple_size, i64 650698}
!177 = !{ptr @gimple_copy, ptr @gimple_has_substatements, i64 650698}
!178 = !{ptr @gimple_copy, ptr @gimple_omp_for_cond, i64 1}
!179 = !{ptr @gimple_copy, ptr @gimple_omp_for_set_cond, i64 1}
!180 = !{ptr @gimple_copy, ptr @gimple_omp_for_index, i64 1}
!181 = !{ptr @gimple_copy, ptr @gimple_omp_for_set_index, i64 1}
!182 = !{ptr @gimple_copy, ptr @gimple_omp_for_initial, i64 1}
!183 = !{ptr @gimple_copy, ptr @unshare_expr, i64 1848232}
!184 = !{ptr @gimple_copy, ptr @gimple_omp_for_set_initial, i64 1}
!185 = !{ptr @gimple_copy, ptr @gimple_omp_for_final, i64 1}
!186 = !{ptr @gimple_copy, ptr @gimple_omp_for_set_final, i64 1}
!187 = !{ptr @gimple_copy, ptr @gimple_omp_for_incr, i64 1}
!188 = !{ptr @gimple_copy, ptr @gimple_omp_for_set_incr, i64 1}
!189 = !{ptr @gimple_copy, ptr @gimple_omp_for_collapse, i64 1}
!190 = !{ptr @gimple_copy, ptr @gimple_omp_body, i64 1}
!191 = !{ptr @gimple_copy, ptr @gimple_seq_copy, i64 1}
!192 = !{ptr @gimple_copy, ptr @gimple_omp_set_body, i64 1}
!193 = !{ptr @gimple_copy, ptr @gimple_op, i64 1848229}
!194 = !{ptr @gimple_copy, ptr @gimple_set_op, i64 1848229}
!195 = !{ptr @gimple_copy, ptr @gimple_has_ops, i64 649713}
!196 = !{ptr @gimple_copy, ptr @gimple_set_def_ops, i64 649712}
!197 = !{ptr @gimple_copy, ptr @gimple_set_use_ops, i64 649712}
!198 = !{ptr @gimple_copy, ptr @gimple_has_mem_ops, i64 649713}
!199 = !{ptr @gimple_copy, ptr @gimple_vdef, i64 493849}
!200 = !{ptr @gimple_copy, ptr @gimple_set_vdef, i64 493849}
!201 = !{ptr @gimple_copy, ptr @gimple_vuse, i64 493849}
!202 = !{ptr @gimple_copy, ptr @gimple_set_vuse, i64 493849}
!203 = !{ptr @gimple_copy, ptr @gimple_set_modified, i64 649713}
!204 = !{ptr @walk_gimple_seq, ptr @gsi_start, i64 735557}
!205 = !{ptr @walk_gimple_seq, ptr @gsi_end_p, i64 2932219}
!206 = !{ptr @walk_gimple_seq, ptr @walk_gimple_stmt, i64 2196802}
!207 = !{ptr @walk_gimple_seq, ptr @fancy_abort, i64 1}
!208 = !{ptr @walk_gimple_seq, ptr @gsi_stmt, i64 140}
!209 = !{ptr @walk_gimple_seq, ptr @gsi_next, i64 2196662}
!210 = !{ptr @walk_gimple_stmt, ptr @gsi_stmt, i64 4393193}
!211 = !{ptr @walk_gimple_stmt, ptr @gimple_has_location, i64 1}
!212 = !{ptr @walk_gimple_stmt, ptr @gimple_location, i64 1}
!213 = !{ptr @walk_gimple_stmt, ptr @fancy_abort, i64 2}
!214 = !{ptr @walk_gimple_stmt, ptr @walk_gimple_op, i64 1}
!215 = !{ptr @walk_gimple_stmt, ptr @gimple_code, i64 2196526}
!216 = !{ptr @walk_gimple_stmt, ptr @gimple_bind_body, i64 1}
!217 = !{ptr @walk_gimple_stmt, ptr @walk_gimple_seq, i64 14}
!218 = !{ptr @walk_gimple_stmt, ptr @gimple_catch_handler, i64 1}
!219 = !{ptr @walk_gimple_stmt, ptr @gimple_eh_filter_failure, i64 1}
!220 = !{ptr @walk_gimple_stmt, ptr @gimple_try_eval, i64 1}
!221 = !{ptr @walk_gimple_stmt, ptr @gimple_omp_for_pre_body, i64 1}
!222 = !{ptr @walk_gimple_stmt, ptr @gimple_omp_body, i64 8}
!223 = !{ptr @walk_gimple_stmt, ptr @gimple_wce_cleanup, i64 1}
!224 = !{ptr @walk_gimple_stmt, ptr @gimple_has_substatements, i64 2196512}
!225 = !{ptr @walk_gimple_op, ptr @gimple_code, i64 3073804}
!226 = !{ptr @walk_gimple_op, ptr @gimple_assign_lhs, i64 1250800}
!227 = !{ptr @walk_gimple_op, ptr @is_gimple_reg, i64 1250800}
!228 = !{ptr @walk_gimple_op, ptr @gimple_assign_single_p, i64 1564352}
!229 = !{ptr @walk_gimple_op, ptr @gimple_num_ops, i64 6928640}
!230 = !{ptr @walk_gimple_op, ptr @gimple_op_ptr, i64 6373676}
!231 = !{ptr @walk_gimple_op, ptr @walk_tree_1, i64 8787272}
!232 = !{ptr @walk_gimple_op, ptr @gimple_assign_rhs1, i64 1250790}
!233 = !{ptr @walk_gimple_op, ptr @is_gimple_mem_rhs, i64 1250790}
!234 = !{ptr @walk_gimple_op, ptr @gimple_call_chain_ptr, i64 452438}
!235 = !{ptr @walk_gimple_op, ptr @gimple_call_fn_ptr, i64 452437}
!236 = !{ptr @walk_gimple_op, ptr @gimple_call_num_args, i64 1508702}
!237 = !{ptr @walk_gimple_op, ptr @gimple_call_arg_ptr, i64 1056278}
!238 = !{ptr @walk_gimple_op, ptr @gimple_call_lhs_ptr, i64 452424}
!239 = !{ptr @walk_gimple_op, ptr @gimple_catch_types_ptr, i64 1}
!240 = !{ptr @walk_gimple_op, ptr @gimple_eh_filter_types_ptr, i64 1}
!241 = !{ptr @walk_gimple_op, ptr @walk_gimple_asm, i64 1}
!242 = !{ptr @walk_gimple_op, ptr @gimple_omp_continue_control_def_ptr, i64 1}
!243 = !{ptr @walk_gimple_op, ptr @gimple_omp_critical_name_ptr, i64 1}
!244 = !{ptr @walk_gimple_op, ptr @gimple_omp_for_clauses_ptr, i64 1}
!245 = !{ptr @walk_gimple_op, ptr @gimple_omp_for_index_ptr, i64 2}
!246 = !{ptr @walk_gimple_op, ptr @gimple_omp_for_initial_ptr, i64 2}
!247 = !{ptr @walk_gimple_op, ptr @gimple_omp_for_final_ptr, i64 2}
!248 = !{ptr @walk_gimple_op, ptr @gimple_omp_for_incr_ptr, i64 2}
!249 = !{ptr @walk_gimple_op, ptr @gimple_omp_for_collapse, i64 2}
!250 = !{ptr @walk_gimple_op, ptr @gimple_omp_parallel_clauses_ptr, i64 1}
!251 = !{ptr @walk_gimple_op, ptr @gimple_omp_task_clauses_ptr, i64 1}
!252 = !{ptr @walk_gimple_op, ptr @gimple_omp_sections_clauses_ptr, i64 1}
!253 = !{ptr @walk_gimple_op, ptr @gimple_omp_single_clauses_ptr, i64 1}
!254 = !{ptr @walk_gimple_op, ptr @gimple_omp_atomic_load_lhs_ptr, i64 1}
!255 = !{ptr @walk_gimple_op, ptr @gimple_omp_atomic_store_val_ptr, i64 1}
!256 = !{ptr @walk_gimple_op, ptr @gimple_statement_structure, i64 554966}
!257 = !{ptr @is_gimple_reg, ptr @is_gimple_variable, i64 39301601}
!258 = !{ptr @is_gimple_reg, ptr @is_gimple_reg_type, i64 36493112}
!259 = !{ptr @is_gimple_reg, ptr @needs_to_live_in_memory, i64 36261497}
!260 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 33688415}
!261 = !{ptr @gimple_assign_single_p, ptr @gimple_code, i64 23686169}
!262 = !{ptr @gimple_assign_single_p, ptr @gimple_assign_rhs_code, i64 18325443}
!263 = !{ptr @gimple_assign_single_p, ptr @get_gimple_rhs_class, i64 18325443}
!264 = !{ptr @gimple_op_ptr, ptr @gimple_has_ops, i64 8787299}
!265 = !{ptr @gimple_op_ptr, ptr @gimple_ops, i64 8787298}
!266 = !{ptr @is_gimple_mem_rhs, ptr @is_gimple_reg_type, i64 1250798}
!267 = !{ptr @is_gimple_mem_rhs, ptr @is_gimple_val, i64 1250798}
!268 = !{ptr @is_gimple_mem_rhs, ptr @is_gimple_lvalue, i64 1064}
!269 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 27145329}
!270 = !{ptr @gimple_call_chain_ptr, ptr @gimple_op_ptr, i64 452440}
!271 = !{ptr @gimple_call_fn_ptr, ptr @gimple_op_ptr, i64 452440}
!272 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 5110972}
!273 = !{ptr @gimple_call_arg_ptr, ptr @gimple_op_ptr, i64 1056279}
!274 = !{ptr @gimple_call_lhs_ptr, ptr @gimple_op_ptr, i64 452429}
!275 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 98331853}
!276 = !{ptr @gimple_op, ptr @gimple_ops, i64 98331852}
!277 = !{ptr @gimple_has_location, ptr @gimple_location, i64 1389}
!278 = !{ptr @gimple_has_substatements, ptr @gimple_code, i64 2847226}
!279 = !{ptr @gimple_set_body, ptr @fancy_abort, i64 1}
!280 = !{ptr @gimple_has_body_p, ptr @gimple_body, i64 492623}
!281 = !{ptr @gimple_call_flags, ptr @gimple_call_fndecl, i64 9181456}
!282 = !{ptr @gimple_call_flags, ptr @flags_from_decl_or_type, i64 9181454}
!283 = !{ptr @gimple_call_flags, ptr @gimple_call_fn, i64 279669}
!284 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 9182448}
!285 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 9513657}
!286 = !{ptr @gimple_assign_copy_p, ptr @gimple_code, i64 8085072}
!287 = !{ptr @gimple_assign_copy_p, ptr @gimple_assign_rhs_code, i64 7881407}
!288 = !{ptr @gimple_assign_copy_p, ptr @get_gimple_rhs_class, i64 7881407}
!289 = !{ptr @gimple_assign_copy_p, ptr @gimple_op, i64 5306420}
!290 = !{ptr @gimple_assign_copy_p, ptr @is_gimple_val, i64 5306420}
!291 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 29559133}
!292 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 29559133}
!293 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 21046854}
!294 = !{ptr @is_gimple_val, ptr @is_gimple_variable, i64 17122565}
!295 = !{ptr @is_gimple_val, ptr @is_gimple_reg_type, i64 2797599}
!296 = !{ptr @is_gimple_val, ptr @is_gimple_reg, i64 2793670}
!297 = !{ptr @is_gimple_val, ptr @is_gimple_min_invariant, i64 6141530}
!298 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 29559133}
!299 = !{ptr @gimple_assign_ssa_name_copy_p, ptr @gimple_code, i64 4377608}
!300 = !{ptr @gimple_assign_ssa_name_copy_p, ptr @gimple_assign_rhs_code, i64 3186994}
!301 = !{ptr @gimple_assign_ssa_name_copy_p, ptr @get_gimple_rhs_class, i64 3186994}
!302 = !{ptr @gimple_assign_ssa_name_copy_p, ptr @gimple_assign_lhs, i64 2181139}
!303 = !{ptr @gimple_assign_ssa_name_copy_p, ptr @gimple_assign_rhs1, i64 1958130}
!304 = !{ptr @gimple_assign_unary_nop_p, ptr @gimple_code, i64 119}
!305 = !{ptr @gimple_assign_unary_nop_p, ptr @gimple_assign_rhs_code, i64 163}
!306 = !{ptr @gimple_assign_unary_nop_p, ptr @gimple_assign_rhs1, i64 286}
!307 = !{ptr @gimple_assign_unary_nop_p, ptr @gimple_assign_lhs, i64 190}
!308 = !{ptr @gimple_assign_unary_nop_p, ptr @vector_type_mode, i64 2}
!309 = !{ptr @gimple_set_bb, ptr @gimple_code, i64 4224527}
!310 = !{ptr @gimple_set_bb, ptr @gimple_label_label, i64 496824}
!311 = !{ptr @gimple_set_bb, ptr @VEC_basic_block_base_length, i64 266746}
!312 = !{ptr @gimple_set_bb, ptr @VEC_basic_block_gc_safe_grow_cleared, i64 5971}
!313 = !{ptr @gimple_set_bb, ptr @VEC_basic_block_base_replace, i64 496824}
!314 = !{ptr @gimple_label_label, ptr @gimple_op, i64 496823}
!315 = !{ptr @VEC_basic_block_gc_safe_grow_cleared, ptr @VEC_basic_block_base_length, i64 5970}
!316 = !{ptr @VEC_basic_block_gc_safe_grow_cleared, ptr @VEC_basic_block_gc_safe_grow, i64 5970}
!317 = !{ptr @VEC_basic_block_gc_safe_grow_cleared, ptr @VEC_basic_block_base_address, i64 5970}
!318 = !{ptr @VEC_basic_block_gc_safe_grow, ptr @VEC_basic_block_gc_reserve_exact, i64 5970}
!319 = !{ptr @VEC_basic_block_gc_reserve_exact, ptr @VEC_basic_block_base_space, i64 5970}
!320 = !{ptr @VEC_basic_block_gc_reserve_exact, ptr @vec_gc_p_reserve_exact, i64 5969}
!321 = !{ptr @gimple_assign_set_rhs_from_tree, ptr @extract_ops_from_tree, i64 154816}
!322 = !{ptr @gimple_assign_set_rhs_from_tree, ptr @gimple_assign_set_rhs_with_ops, i64 154816}
!323 = !{ptr @gimple_assign_set_rhs_with_ops, ptr @get_gimple_rhs_num_ops, i64 161695}
!324 = !{ptr @gimple_assign_set_rhs_with_ops, ptr @gsi_stmt, i64 161695}
!325 = !{ptr @gimple_assign_set_rhs_with_ops, ptr @gimple_num_ops, i64 161695}
!326 = !{ptr @gimple_assign_set_rhs_with_ops, ptr @gimple_assign_lhs, i64 740}
!327 = !{ptr @gimple_assign_set_rhs_with_ops, ptr @gimple_code, i64 1480}
!328 = !{ptr @gimple_assign_set_rhs_with_ops, ptr @gimple_alloc_stat, i64 740}
!329 = !{ptr @gimple_assign_set_rhs_with_ops, ptr @gimple_size, i64 740}
!330 = !{ptr @gimple_assign_set_rhs_with_ops, ptr @gsi_replace, i64 740}
!331 = !{ptr @gimple_assign_set_rhs_with_ops, ptr @gimple_assign_set_lhs, i64 740}
!332 = !{ptr @gimple_assign_set_rhs_with_ops, ptr @gimple_set_num_ops, i64 161695}
!333 = !{ptr @gimple_assign_set_rhs_with_ops, ptr @gimple_set_subcode, i64 161695}
!334 = !{ptr @gimple_assign_set_rhs_with_ops, ptr @gimple_assign_set_rhs1, i64 161695}
!335 = !{ptr @gimple_assign_set_rhs_with_ops, ptr @gimple_assign_set_rhs2, i64 12691}
!336 = !{ptr @gimple_get_lhs, ptr @gimple_code, i64 32707148}
!337 = !{ptr @gimple_get_lhs, ptr @gimple_assign_lhs, i64 26951974}
!338 = !{ptr @gimple_get_lhs, ptr @gimple_call_lhs, i64 3322177}
!339 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 3768273}
!340 = !{ptr @gimple_set_lhs, ptr @gimple_code, i64 22053}
!341 = !{ptr @gimple_set_lhs, ptr @gimple_assign_set_lhs, i64 22012}
!342 = !{ptr @gimple_set_lhs, ptr @gimple_call_set_lhs, i64 40}
!343 = !{ptr @gimple_set_lhs, ptr @fancy_abort, i64 1}
!344 = !{ptr @gimple_call_set_lhs, ptr @gimple_set_op, i64 1135}
!345 = !{ptr @gimple_set_def_ops, ptr @gimple_has_ops, i64 649714}
!346 = !{ptr @gimple_set_def_ops, ptr @fancy_abort, i64 1}
!347 = !{ptr @gimple_set_use_ops, ptr @gimple_has_ops, i64 649714}
!348 = !{ptr @gimple_set_use_ops, ptr @fancy_abort, i64 1}
!349 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 4965852}
!350 = !{ptr @gimple_set_vdef, ptr @gimple_has_mem_ops, i64 495239}
!351 = !{ptr @gimple_set_vdef, ptr @fancy_abort, i64 1}
!352 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 495239}
!353 = !{ptr @gimple_set_vuse, ptr @gimple_has_mem_ops, i64 495239}
!354 = !{ptr @gimple_set_vuse, ptr @fancy_abort, i64 1}
!355 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 1324017}
!356 = !{ptr @gimple_set_modified, ptr @gimple_has_ops, i64 7752547}
!357 = !{ptr @gimple_set_modified, ptr @is_gimple_call, i64 3739728}
!358 = !{ptr @gimple_set_modified, ptr @gimple_call_noreturn_p, i64 412012}
!359 = !{ptr @gimple_set_modified, ptr @VEC_gimple_gc_safe_push, i64 12628}
!360 = !{ptr @is_gimple_call, ptr @gimple_code, i64 8406228}
!361 = !{ptr @gimple_call_noreturn_p, ptr @gimple_call_flags, i64 412011}
!362 = !{ptr @VEC_gimple_gc_safe_push, ptr @VEC_gimple_gc_reserve, i64 12627}
!363 = !{ptr @VEC_gimple_gc_safe_push, ptr @VEC_gimple_base_quick_push, i64 12627}
!364 = !{ptr @VEC_gimple_gc_reserve, ptr @VEC_gimple_base_space, i64 12627}
!365 = !{ptr @VEC_gimple_gc_reserve, ptr @vec_gc_p_reserve, i64 2980}
!366 = !{ptr @gimple_has_side_effects, ptr @is_gimple_debug, i64 1506404}
!367 = !{ptr @gimple_has_side_effects, ptr @gimple_has_volatile_ops, i64 1506406}
!368 = !{ptr @gimple_has_side_effects, ptr @is_gimple_call, i64 1506393}
!369 = !{ptr @gimple_has_side_effects, ptr @gimple_num_ops, i64 2034277}
!370 = !{ptr @gimple_has_side_effects, ptr @gimple_call_num_args, i64 867315}
!371 = !{ptr @gimple_has_side_effects, ptr @gimple_call_flags, i64 922267}
!372 = !{ptr @gimple_has_side_effects, ptr @gimple_call_lhs, i64 57758}
!373 = !{ptr @gimple_has_side_effects, ptr @gimple_call_fn, i64 28887}
!374 = !{ptr @gimple_has_side_effects, ptr @gimple_call_arg, i64 47208}
!375 = !{ptr @gimple_has_side_effects, ptr @gimple_op, i64 1395200}
!376 = !{ptr @gimple_has_side_effects, ptr @fancy_abort, i64 1}
!377 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 1506404}
!378 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 1868120}
!379 = !{ptr @gimple_rhs_has_side_effects, ptr @is_gimple_call, i64 942670}
!380 = !{ptr @gimple_rhs_has_side_effects, ptr @gimple_call_num_args, i64 104891}
!381 = !{ptr @gimple_rhs_has_side_effects, ptr @gimple_call_flags, i64 104891}
!382 = !{ptr @gimple_rhs_has_side_effects, ptr @gimple_call_fn, i64 21265}
!383 = !{ptr @gimple_rhs_has_side_effects, ptr @gimple_has_volatile_ops, i64 4}
!384 = !{ptr @gimple_rhs_has_side_effects, ptr @gimple_call_arg, i64 34963}
!385 = !{ptr @gimple_rhs_has_side_effects, ptr @is_gimple_assign, i64 837779}
!386 = !{ptr @gimple_rhs_has_side_effects, ptr @gimple_num_ops, i64 1849350}
!387 = !{ptr @gimple_rhs_has_side_effects, ptr @gimple_op, i64 2023148}
!388 = !{ptr @gimple_rhs_has_side_effects, ptr @is_gimple_debug, i64 1}
!389 = !{ptr @gimple_rhs_has_side_effects, ptr @fancy_abort, i64 2}
!390 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 4453809}
!391 = !{ptr @gimple_could_trap_p, ptr @gimple_could_trap_p_1, i64 166413}
!392 = !{ptr @gimple_could_trap_p_1, ptr @is_gimple_assign, i64 167110}
!393 = !{ptr @gimple_could_trap_p_1, ptr @gimple_num_ops, i64 502436}
!394 = !{ptr @gimple_could_trap_p_1, ptr @gimple_op, i64 429135}
!395 = !{ptr @gimple_could_trap_p_1, ptr @tree_could_trap_p, i64 429135}
!396 = !{ptr @gimple_could_trap_p_1, ptr @gimple_code, i64 73300}
!397 = !{ptr @gimple_could_trap_p_1, ptr @gimple_asm_volatile_p, i64 1}
!398 = !{ptr @gimple_could_trap_p_1, ptr @gimple_call_fndecl, i64 871}
!399 = !{ptr @gimple_could_trap_p_1, ptr @gimple_expr_type, i64 72428}
!400 = !{ptr @gimple_could_trap_p_1, ptr @gimple_assign_rhs_code, i64 72428}
!401 = !{ptr @gimple_could_trap_p_1, ptr @get_gimple_rhs_class, i64 72428}
!402 = !{ptr @gimple_could_trap_p_1, ptr @gimple_assign_rhs2, i64 40411}
!403 = !{ptr @gimple_could_trap_p_1, ptr @operation_could_trap_p, i64 72428}
!404 = !{ptr @gimple_expr_type, ptr @gimple_code, i64 82561}
!405 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs_code, i64 82560}
!406 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs1, i64 8666}
!407 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 73894}
!408 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 46065}
!409 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 46064}
!410 = !{ptr @gimple_assign_rhs_could_trap_p, ptr @is_gimple_assign, i64 697}
!411 = !{ptr @gimple_assign_rhs_could_trap_p, ptr @fancy_abort, i64 1}
!412 = !{ptr @gimple_assign_rhs_could_trap_p, ptr @gimple_could_trap_p_1, i64 697}
!413 = !{ptr @is_gimple_operand, ptr @get_gimple_rhs_class, i64 91}
!414 = !{ptr @is_gimple_reg_rhs, ptr @get_gimple_rhs_class, i64 20895}
!415 = !{ptr @is_gimple_lvalue, ptr @is_gimple_addressable, i64 465373}
!416 = !{ptr @is_gimple_addressable, ptr @is_gimple_id, i64 782669}
!417 = !{ptr @is_gimple_addressable, ptr @handled_component_p, i64 178980}
!418 = !{ptr @is_gimple_condexpr, ptr @is_gimple_val, i64 462873}
!419 = !{ptr @is_gimple_condexpr, ptr @tree_could_trap_p, i64 147166}
!420 = !{ptr @is_gimple_id, ptr @is_gimple_variable, i64 1198362}
!421 = !{ptr @is_gimple_invariant_address, ptr @strip_invariant_refs, i64 1562045}
!422 = !{ptr @is_gimple_invariant_address, ptr @decl_address_invariant_p, i64 1320001}
!423 = !{ptr @strip_invariant_refs, ptr @handled_component_p, i64 3062455}
!424 = !{ptr @strip_invariant_refs, ptr @is_gimple_constant, i64 465580}
!425 = !{ptr @is_gimple_ip_invariant_address, ptr @strip_invariant_refs, i64 10614}
!426 = !{ptr @is_gimple_ip_invariant_address, ptr @decl_address_ip_invariant_p, i64 5459}
!427 = !{ptr @is_gimple_ip_invariant, ptr @is_gimple_ip_invariant_address, i64 10616}
!428 = !{ptr @is_gimple_ip_invariant, ptr @is_gimple_constant, i64 125534}
!429 = !{ptr @is_gimple_stmt, ptr @integer_zerop, i64 118}
!430 = !{ptr @is_gimple_non_addressable, ptr @is_gimple_variable, i64 355}
!431 = !{ptr @is_gimple_non_addressable, ptr @needs_to_live_in_memory, i64 310}
!432 = !{ptr @is_gimple_min_lval, ptr @strip_invariant_refs, i64 415558}
!433 = !{ptr @is_gimple_min_lval, ptr @is_gimple_id, i64 415556}
!434 = !{ptr @get_base_address, ptr @handled_component_p, i64 7818922}
!435 = !{ptr @recalculate_side_effects, ptr @tree_operand_length, i64 1588120}
!436 = !{ptr @recalculate_side_effects, ptr @fancy_abort, i64 1}
!437 = !{ptr @canonicalize_cond_expr_cond, ptr @truth_value_p, i64 13026}
!438 = !{ptr @canonicalize_cond_expr_cond, ptr @build_int_cst, i64 13028}
!439 = !{ptr @canonicalize_cond_expr_cond, ptr @build2_stat, i64 14350}
!440 = !{ptr @canonicalize_cond_expr_cond, ptr @integer_onep, i64 1326}
!441 = !{ptr @canonicalize_cond_expr_cond, ptr @integer_zerop, i64 1323}
!442 = !{ptr @canonicalize_cond_expr_cond, ptr @is_gimple_condexpr, i64 62440}
!443 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_call_fn, i64 1389}
!444 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_call_num_args, i64 1389}
!445 = !{ptr @gimple_call_copy_skip_args, ptr @VEC_tree_heap_alloc, i64 1389}
!446 = !{ptr @gimple_call_copy_skip_args, ptr @bitmap_bit_p, i64 6779}
!447 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_call_arg, i64 4635}
!448 = !{ptr @gimple_call_copy_skip_args, ptr @VEC_tree_base_quick_push, i64 4635}
!449 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_build_call_vec, i64 1389}
!450 = !{ptr @gimple_call_copy_skip_args, ptr @VEC_tree_heap_free, i64 1389}
!451 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_call_lhs, i64 2483}
!452 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_call_set_lhs, i64 1094}
!453 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_vuse, i64 1389}
!454 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_set_vuse, i64 1389}
!455 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_vdef, i64 1389}
!456 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_set_vdef, i64 1389}
!457 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_block, i64 1389}
!458 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_set_block, i64 1389}
!459 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_has_location, i64 1389}
!460 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_location, i64 1388}
!461 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_set_location, i64 1388}
!462 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_call_chain, i64 1389}
!463 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_call_set_chain, i64 1389}
!464 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_call_tail_p, i64 1389}
!465 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_call_set_tail, i64 1389}
!466 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_call_cannot_inline_p, i64 1389}
!467 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_call_set_cannot_inline, i64 1389}
!468 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_call_return_slot_opt_p, i64 1389}
!469 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_call_set_return_slot_opt, i64 1389}
!470 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_call_from_thunk_p, i64 1389}
!471 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_call_set_from_thunk, i64 1389}
!472 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_call_va_arg_pack_p, i64 1389}
!473 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_call_set_va_arg_pack, i64 1389}
!474 = !{ptr @gimple_call_copy_skip_args, ptr @gimple_set_modified, i64 1389}
!475 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 1389}
!476 = !{ptr @VEC_tree_heap_free, ptr @free, i64 1388}
!477 = !{ptr @gimple_call_chain, ptr @gimple_op, i64 601580}
!478 = !{ptr @count_uses_and_derefs, ptr @op_iter_init_tree, i64 828778}
!479 = !{ptr @count_uses_and_derefs, ptr @op_iter_done, i64 2031824}
!480 = !{ptr @count_uses_and_derefs, ptr @op_iter_next_tree, i64 1203046}
!481 = !{ptr @count_uses_and_derefs, ptr @is_gimple_assign, i64 828778}
!482 = !{ptr @count_uses_and_derefs, ptr @gimple_code, i64 320036}
!483 = !{ptr @count_uses_and_derefs, ptr @is_gimple_call, i64 315158}
!484 = !{ptr @count_uses_and_derefs, ptr @walk_gimple_op, i64 729055}
!485 = !{ptr @count_uses_and_derefs, ptr @fancy_abort, i64 1}
!486 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 828778}
!487 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 828778}
!488 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 1203046}
!489 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 1}
!490 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 828778}
!491 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 828777}
!492 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 828778}
!493 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_assign_single_p, i64 6574740}
!494 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_assign_lhs, i64 3303562}
!495 = !{ptr @walk_stmt_load_store_addr_ops, ptr @get_base_loadstore, i64 3155838}
!496 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_assign_rhs1, i64 2880593}
!497 = !{ptr @walk_stmt_load_store_addr_ops, ptr @handled_component_p, i64 6227903}
!498 = !{ptr @walk_stmt_load_store_addr_ops, ptr @is_gimple_assign, i64 2619443}
!499 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_code, i64 2794035}
!500 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_num_ops, i64 7790696}
!501 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_op, i64 10176693}
!502 = !{ptr @walk_stmt_load_store_addr_ops, ptr @is_gimple_call, i64 1902274}
!503 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_call_lhs, i64 385855}
!504 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_call_num_args, i64 2628665}
!505 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_call_arg, i64 1781295}
!506 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_call_chain, i64 600192}
!507 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_call_return_slot_opt_p, i64 600191}
!508 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_asm_noutputs, i64 11}
!509 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_asm_output_op, i64 10}
!510 = !{ptr @walk_stmt_load_store_addr_ops, ptr @parse_output_constraint, i64 6}
!511 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_asm_input_op, i64 10}
!512 = !{ptr @walk_stmt_load_store_addr_ops, ptr @parse_input_constraint, i64 3}
!513 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_asm_ninputs, i64 10}
!514 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_return_retval, i64 71648}
!515 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_phi_num_args, i64 21}
!516 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_phi_arg_imm_use_ptr, i64 20}
!517 = !{ptr @walk_stmt_load_store_addr_ops, ptr @get_use_from_ptr, i64 20}
!518 = !{ptr @get_base_loadstore, ptr @handled_component_p, i64 3378284}
!519 = !{ptr @gimple_return_retval, ptr @gimple_op, i64 71647}
!520 = !{ptr @walk_stmt_load_store_ops, ptr @walk_stmt_load_store_addr_ops, i64 1872780}
!521 = !{ptr @gimple_ior_addresses_taken, ptr @walk_stmt_load_store_addr_ops, i64 3694537}
!522 = !{ptr @gimple_ior_addresses_taken_1, ptr @handled_component_p, i64 264413}
!523 = !{ptr @gimple_ior_addresses_taken_1, ptr @bitmap_set_bit, i64 45017}
!524 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!525 = !{!"function_entry_count", i64 2381234}
!526 = !{!"branch_weights", i32 294738, i32 2086498}
!527 = !{!"function_entry_count", i64 3032671}
!528 = !{!"gimple.c:gimple_size"}
!529 = !{!530, !530, i64 0}
!530 = !{!"long", !531, i64 0}
!531 = !{!"omnipotent char", !532, i64 0}
!532 = !{!"Simple C/C++ TBAA"}
!533 = !{!"gimple.c:gimple_set_code"}
!534 = !{!"function_entry_count", i64 2542929}
!535 = !{!"gimple.c:gimple_set_num_ops"}
!536 = !{!531, !531, i64 0}
!537 = !{!"function_entry_count", i64 115872829}
!538 = !{!"gimple.c:gss_for_code"}
!539 = !{!540, !540, i64 0}
!540 = !{!"int", !531, i64 0}
!541 = !{!"function_entry_count", i64 28600}
!542 = !{!"branch_weights", i32 4546, i32 24056}
!543 = !{!"function_entry_count", i64 1436044}
!544 = !{!"gimple.c:gimple_build_with_ops_stat"}
!545 = !{!"function_entry_count", i64 24055}
!546 = !{!"gimple.c:gimple_return_set_retval"}
!547 = !{!"function_entry_count", i64 1597741}
!548 = !{!"gimple.c:gimple_set_subcode"}
!549 = !{!"branch_weights", i32 1597742, i32 1}
!550 = !{!"function_entry_count", i64 5166038}
!551 = !{!"gimple.c:gimple_set_op"}
!552 = !{i8 0, i8 2}
!553 = !{!"branch_weights", i32 1, i32 5166039}
!554 = !{!"branch_weights", i32 5166039, i32 1}
!555 = !{!556, !556, i64 0}
!556 = !{!"any pointer", !531, i64 0}
!557 = !{!"function_entry_count", i64 122815657}
!558 = !{!"gimple.c:gimple_has_ops"}
!559 = !{i32 0, i32 256}
!560 = !{!"function_entry_count", i64 30230586}
!561 = !{!"gimple.c:gimple_num_ops"}
!562 = !{!"function_entry_count", i64 112285190}
!563 = !{!"gimple.c:gimple_ops"}
!564 = !{!"branch_weights", i32 1, i32 112285191}
!565 = !{!"function_entry_count", i64 498773932}
!566 = !{!"gimple.c:gimple_code"}
!567 = !{!"function_entry_count", i64 112840158}
!568 = !{!"gimple.c:gimple_statement_structure"}
!569 = !{!"function_entry_count", i64 3864}
!570 = !{!"branch_weights", i32 1, i32 3864}
!571 = !{!"branch_weights", i32 3864, i32 5955}
!572 = distinct !{!572, !573}
!573 = !{!"llvm.loop.mustprogress"}
!574 = !{!"function_entry_count", i64 5418}
!575 = !{!"gimple.c:VEC_tree_base_length"}
!576 = !{!"branch_weights", i32 1, i32 5419}
!577 = !{!578, !540, i64 0}
!578 = !{!"VEC_tree_base", !540, i64 0, !540, i64 4, !531, i64 8}
!579 = !{!"function_entry_count", i64 87695}
!580 = !{!"gimple.c:gimple_build_call_1"}
!581 = !{!"branch_weights", i32 84125, i32 3572}
!582 = !{!"function_entry_count", i64 182458}
!583 = !{!"gimple.c:gimple_call_set_arg"}
!584 = !{!"function_entry_count", i64 34576}
!585 = !{!"gimple.c:VEC_tree_base_index"}
!586 = !{!"function_entry_count", i64 27}
!587 = !{!"branch_weights", i32 28, i32 1}
!588 = !{!"branch_weights", i32 2, i32 26}
!589 = !{!"branch_weights", i32 26, i32 0}
!590 = distinct !{!590, !573}
!591 = !{!"function_entry_count", i64 158879}
!592 = !{!"branch_weights", i32 1, i32 158880}
!593 = !{!"function_entry_count", i64 83804}
!594 = !{!"branch_weights", i32 83805, i32 1}
!595 = !{!"branch_weights", i32 2154, i32 81652}
!596 = !{!"branch_weights", i32 1, i32 83804}
!597 = !{!"branch_weights", i32 83804, i32 88812}
!598 = distinct !{!598, !573}
!599 = !{!"function_entry_count", i64 85193}
!600 = !{!"gimple.c:gimple_set_block"}
!601 = !{!"gimple.c:gimple_call_set_chain"}
!602 = !{!"gimple.c:gimple_call_set_tail"}
!603 = !{!"branch_weights", i32 85194, i32 1}
!604 = !{!"gimple.c:gimple_call_set_cannot_inline"}
!605 = !{!"gimple.c:gimple_call_set_return_slot_opt"}
!606 = !{!"branch_weights", i32 84830, i32 365}
!607 = !{!"gimple.c:gimple_call_set_from_thunk"}
!608 = !{!"gimple.c:gimple_call_set_va_arg_pack"}
!609 = !{!"gimple.c:gimple_set_no_warning"}
!610 = !{!"function_entry_count", i64 2072420}
!611 = !{!"branch_weights", i32 1476, i32 334970686, i32 188498783, i32 -1758937934}
!612 = !{!"function_entry_count", i64 62581285}
!613 = !{!"gimple.c:get_gimple_rhs_class"}
!614 = !{!"function_entry_count", i64 880268}
!615 = !{!"function_entry_count", i64 884811}
!616 = !{i32 0, i32 3}
!617 = !{!"branch_weights", i32 800777, i32 84036}
!618 = !{!"branch_weights", i32 84036, i32 1}
!619 = !{!"function_entry_count", i64 1452338}
!620 = !{!"branch_weights", i32 -921344323, i32 483953752}
!621 = !{!"branch_weights", i32 182204, i32 1}
!622 = !{!"function_entry_count", i64 907563}
!623 = !{!"gimple.c:gimple_assign_set_lhs"}
!624 = !{!"branch_weights", i32 1, i32 907564}
!625 = !{!"branch_weights", i32 434208, i32 473357}
!626 = !{!"function_entry_count", i64 1046506}
!627 = !{!"gimple.c:gimple_assign_set_rhs1"}
!628 = !{!"function_entry_count", i64 96725}
!629 = !{!"gimple.c:gimple_assign_set_rhs2"}
!630 = !{!"function_entry_count", i64 899}
!631 = !{!"gimple.c:gimple_seq_last_stmt"}
!632 = !{!"branch_weights", i32 1, i32 900}
!633 = !{!634, !556, i64 0}
!634 = !{!"gimple_seq_node_d", !556, i64 0, !556, i64 8, !556, i64 16}
!635 = !{!"function_entry_count", i64 798491}
!636 = !{!"gimple.c:gimple_seq_last"}
!637 = !{!"branch_weights", i32 1, i32 798492}
!638 = !{!639, !556, i64 8}
!639 = !{!"gimple_seq_d", !556, i64 0, !556, i64 8, !556, i64 16}
!640 = !{!"function_entry_count", i64 124146}
!641 = !{!"branch_weights", i32 124147, i32 1}
!642 = !{!"function_entry_count", i64 150539}
!643 = !{!"gimple.c:gimple_cond_set_lhs"}
!644 = !{!"gimple.c:gimple_cond_set_rhs"}
!645 = !{!"gimple.c:gimple_cond_set_true_label"}
!646 = !{!"gimple.c:gimple_cond_set_false_label"}
!647 = !{!"function_entry_count", i64 129637}
!648 = !{!"branch_weights", i32 -1215383260, i32 517541706}
!649 = !{!"branch_weights", i32 2070166827, i32 347859801}
!650 = !{!"branch_weights", i32 9483, i32 9169}
!651 = !{!"branch_weights", i32 608049, i32 -172092026, i32 608497, i32 608273, i32 1648420987}
!652 = !{!"branch_weights", i32 1, i32 10844, i32 2, i32 1}
!653 = !{!"branch_weights", i32 1, i32 129638}
!654 = !{!"branch_weights", i32 110988, i32 18651}
!655 = !{!"branch_weights", i32 1, i32 18651}
!656 = !{!"branch_weights", i32 18651, i32 1}
!657 = !{!"function_entry_count", i64 76096311}
!658 = !{!"branch_weights", i32 1562047, i32 74534266}
!659 = !{!"function_entry_count", i64 431}
!660 = !{!"function_entry_count", i64 26393}
!661 = !{!"gimple.c:gimple_cond_set_condition"}
!662 = !{!"gimple.c:gimple_cond_set_code"}
!663 = !{!"function_entry_count", i64 244954}
!664 = !{!"gimple.c:gimple_label_set_label"}
!665 = !{!"function_entry_count", i64 64284}
!666 = !{!"gimple.c:gimple_goto_set_dest"}
!667 = !{!"function_entry_count", i64 275951}
!668 = !{!"function_entry_count", i64 16762}
!669 = !{!"branch_weights", i32 16763, i32 1}
!670 = !{!"branch_weights", i32 189, i32 16575}
!671 = !{!"gimple.c:gimple_bind_set_vars"}
!672 = !{!"function_entry_count", i64 0}
!673 = !{!"gimple.c:gimple_bind_set_body"}
!674 = !{!"function_entry_count", i64 16574}
!675 = !{!"gimple.c:gimple_bind_set_block"}
!676 = !{!"branch_weights", i32 1, i32 16575}
!677 = !{!"branch_weights", i32 16575, i32 1}
!678 = distinct !{!678, !573}
!679 = distinct !{!679, !573}
!680 = distinct !{!680, !573}
!681 = distinct !{!681, !573}
!682 = !{!"gimple.c:gimple_build_asm_1"}
!683 = !{!"gimple.c:gimple_asm_set_input_op"}
!684 = !{!"gimple.c:gimple_asm_set_output_op"}
!685 = !{!"gimple.c:gimple_asm_set_clobber_op"}
!686 = !{!"gimple.c:gimple_asm_set_label_op"}
!687 = !{!"gimple.c:gimple_catch_set_types"}
!688 = !{!"gimple.c:gimple_catch_set_handler"}
!689 = !{!"gimple.c:gimple_eh_filter_set_types"}
!690 = !{!"gimple.c:gimple_eh_filter_set_failure"}
!691 = !{!"gimple.c:gimple_eh_must_not_throw_set_fndecl"}
!692 = !{!"function_entry_count", i64 2}
!693 = !{!"branch_weights", i32 13, i32 3}
!694 = !{!"branch_weights", i32 1, i32 3}
!695 = !{!"gimple.c:gimple_try_set_eval"}
!696 = !{!"gimple.c:gimple_try_set_cleanup"}
!697 = !{!"gimple.c:gimple_wce_set_cleanup"}
!698 = !{!"function_entry_count", i64 1554}
!699 = !{!"branch_weights", i32 1, i32 1555}
!700 = !{!"gimple.c:gimple_switch_set_index"}
!701 = !{!"branch_weights", i32 16500, i32 6818112, i32 608256, i32 3960, i32 3300}
!702 = !{!"branch_weights", i32 5, i32 1}
!703 = !{!"gimple.c:gimple_switch_set_default_label"}
!704 = !{!"function_entry_count", i64 26312}
!705 = !{!"gimple.c:gimple_switch_set_label"}
!706 = !{!"branch_weights", i32 26313, i32 1}
!707 = !{!"branch_weights", i32 1, i32 26313}
!708 = distinct !{!708, !573}
!709 = !{!"branch_weights", i32 1, i32 1554}
!710 = !{!"branch_weights", i32 1554, i32 23205}
!711 = distinct !{!711, !573}
!712 = !{!"gimple.c:gimple_debug_bind_set_var"}
!713 = !{!"gimple.c:gimple_debug_bind_set_value"}
!714 = !{!"function_entry_count", i64 1389}
!715 = !{!"gimple.c:gimple_block"}
!716 = !{!"gimple.c:gimple_set_location"}
!717 = !{!"function_entry_count", i64 2778}
!718 = !{!"gimple.c:gimple_location"}
!719 = !{!"gimple.c:gimple_omp_critical_set_name"}
!720 = !{!"gimple.c:gimple_omp_set_body"}
!721 = !{!"gimple.c:gimple_omp_for_set_clauses"}
!722 = !{!"gimple.c:gimple_omp_for_set_pre_body"}
!723 = !{!"gimple.c:gimple_omp_parallel_set_clauses"}
!724 = !{!"gimple.c:gimple_omp_parallel_set_child_fn"}
!725 = !{!"gimple.c:gimple_omp_parallel_set_data_arg"}
!726 = !{!"gimple.c:gimple_omp_task_set_clauses"}
!727 = !{!"gimple.c:gimple_omp_task_set_child_fn"}
!728 = !{!"gimple.c:gimple_omp_task_set_data_arg"}
!729 = !{!"gimple.c:gimple_omp_task_set_copy_fn"}
!730 = !{!"gimple.c:gimple_omp_task_set_arg_size"}
!731 = !{!"gimple.c:gimple_omp_task_set_arg_align"}
!732 = !{!"gimple.c:gimple_omp_continue_set_control_def"}
!733 = !{!"gimple.c:gimple_omp_continue_set_control_use"}
!734 = !{!"gimple.c:gimple_omp_return_set_nowait"}
!735 = !{!"gimple.c:gimple_omp_sections_set_clauses"}
!736 = !{!"gimple.c:gimple_omp_single_set_clauses"}
!737 = !{!"gimple.c:gimple_omp_atomic_load_set_lhs"}
!738 = !{!"gimple.c:gimple_omp_atomic_load_set_rhs"}
!739 = !{!"gimple.c:gimple_omp_atomic_store_set_val"}
!740 = !{!"function_entry_count", i64 1038}
!741 = !{!"gimple.c:gimple_predict_set_predictor"}
!742 = !{!"gimple.c:gimple_predict_set_outcome"}
!743 = !{!"branch_weights", i32 1, i32 1039}
!744 = !{!"function_entry_count", i64 1410806}
!745 = !{!"branch_weights", i32 968754, i32 442054}
!746 = !{!639, !556, i64 16}
!747 = !{!"branch_weights", i32 1, i32 442054}
!748 = !{!"function_entry_count", i64 442087}
!749 = !{!"branch_weights", i32 1, i32 442088}
!750 = !{!"branch_weights", i32 442088, i32 1}
!751 = !{!"function_entry_count", i64 1177644}
!752 = !{!"gimple.c:gimple_seq_first"}
!753 = !{!"branch_weights", i32 1, i32 1177645}
!754 = !{!639, !556, i64 0}
!755 = !{!"function_entry_count", i64 216378}
!756 = !{!"branch_weights", i32 1, i32 216379}
!757 = !{!"branch_weights", i32 186932, i32 29448}
!758 = !{!"function_entry_count", i64 355505}
!759 = !{!"gimple.c:gsi_last"}
!760 = !{!761, !556, i64 0}
!761 = !{!"", !556, i64 0, !556, i64 8, !556, i64 16}
!762 = !{!761, !556, i64 8}
!763 = !{!"branch_weights", i32 213699, i32 141808}
!764 = !{!"branch_weights", i32 1, i32 141808}
!765 = !{!761, !556, i64 16}
!766 = !{!"function_entry_count", i64 854752}
!767 = !{!"gimple.c:gimple_bb"}
!768 = !{!"function_entry_count", i64 148163}
!769 = !{!"branch_weights", i32 9037, i32 139128}
!770 = !{!"branch_weights", i32 13591, i32 125538}
!771 = distinct !{!771, !573}
!772 = !{!"gimple.c:gimple_seq_empty_p"}
!773 = !{!"function_entry_count", i64 735557}
!774 = !{!"gimple.c:gsi_start"}
!775 = !{!"branch_weights", i32 22613, i32 712946}
!776 = !{!"branch_weights", i32 1, i32 712946}
!777 = !{!"function_entry_count", i64 2932085}
!778 = !{!"gimple.c:gsi_end_p"}
!779 = !{!"gimple.c:empty_stmt_p"}
!780 = !{!"function_entry_count", i64 4555029}
!781 = !{!"gimple.c:gsi_stmt"}
!782 = !{!"function_entry_count", i64 1506404}
!783 = !{!"gimple.c:is_gimple_debug"}
!784 = !{!"function_entry_count", i64 2196528}
!785 = !{!"gimple.c:gsi_next"}
!786 = !{!634, !556, i64 16}
!787 = !{!"gimple.c:gimple_bind_body"}
!788 = distinct !{!788, !573}
!789 = !{!"function_entry_count", i64 650698}
!790 = !{!"branch_weights", i32 650699, i32 1}
!791 = distinct !{!791, !573}
!792 = !{!"branch_weights", i32 985, i32 649715}
!793 = !{!"branch_weights", i32 649715, i32 1198520}
!794 = distinct !{!794, !573}
!795 = !{!"branch_weights", i32 1, i32 649715}
!796 = !{!"branch_weights", i32 155865, i32 493851}
!797 = !{!"branch_weights", i32 735418, i32 1}
!798 = !{!"branch_weights", i32 2196529, i32 140}
!799 = !{!"branch_weights", i32 1, i32 140}
!800 = !{!801, !556, i64 48}
!801 = !{!"walk_stmt_info", !761, i64 0, !556, i64 24, !556, i64 32, !531, i64 40, !531, i64 41, !531, i64 42, !531, i64 43, !556, i64 48}
!802 = !{!"branch_weights", i32 1461250, i32 735418}
!803 = distinct !{!803, !573}
!804 = !{!"branch_weights", i32 1, i32 735419}
!805 = !{!"function_entry_count", i64 2196667}
!806 = !{!"branch_weights", i32 1, i32 2196668}
!807 = !{i64 0, i64 8, !555, i64 8, i64 8, !555, i64 16, i64 8, !555}
!808 = !{!801, !531, i64 43}
!809 = !{!"branch_weights", i32 2196668, i32 1}
!810 = !{!"branch_weights", i32 2196529, i32 1}
!811 = !{!"branch_weights", i32 2196529, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!812 = !{!"function_entry_count", i64 3073804}
!813 = !{!"branch_weights", i32 1275514, i32 1798292}
!814 = !{!801, !556, i64 32}
!815 = !{!"branch_weights", i32 554969, i32 2063293, i32 452441, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 104, i32 1, i32 1, i32 3002}
!816 = !{!"branch_weights", i32 812486, i32 1250808}
!817 = !{!"branch_weights", i32 214261, i32 1036548}
!818 = !{!801, !531, i64 40}
!819 = !{!"branch_weights", i32 2063283, i32 1}
!820 = !{!"branch_weights", i32 314516, i32 2063283}
!821 = distinct !{!821, !573}
!822 = !{!"branch_weights", i32 2377790, i32 10}
!823 = !{!"branch_weights", i32 812486, i32 1250799}
!824 = !{!"branch_weights", i32 722984, i32 527816}
!825 = !{!801, !531, i64 41}
!826 = !{!"branch_weights", i32 2063284, i32 1}
!827 = !{!"branch_weights", i32 163768, i32 288674}
!828 = !{!"branch_weights", i32 452441, i32 1}
!829 = !{!"branch_weights", i32 1, i32 452429}
!830 = !{!"branch_weights", i32 603851, i32 452429}
!831 = distinct !{!831, !573}
!832 = !{!"branch_weights", i32 1056269, i32 12}
!833 = !{!"branch_weights", i32 163768, i32 288663}
!834 = !{!"branch_weights", i32 452430, i32 1}
!835 = distinct !{!835, !573}
!836 = !{!"branch_weights", i32 -954470143, i32 6019}
!837 = !{!"branch_weights", i32 1, i32 554968}
!838 = !{!"branch_weights", i32 1377663, i32 554968}
!839 = distinct !{!839, !573}
!840 = !{!"branch_weights", i32 1932631, i32 1}
!841 = !{!"function_entry_count", i64 39301601}
!842 = !{!"branch_weights", i32 23681814, i32 15619789}
!843 = !{!"branch_weights", i32 2808489, i32 36493114}
!844 = !{!"branch_weights", i32 231514, i32 36261601}
!845 = !{!"branch_weights", i32 36261501, i32 101}
!846 = !{!"branch_weights", i32 29856427, i32 6405075}
!847 = !{!"branch_weights", i32 27857101, i32 1999327}
!848 = !{!"branch_weights", i32 27857101, i32 1}
!849 = !{!"branch_weights", i32 150565, i32 -894672715}
!850 = !{!"function_entry_count", i64 33688415}
!851 = !{!"gimple.c:gimple_assign_lhs"}
!852 = !{!"function_entry_count", i64 23686169}
!853 = !{!"branch_weights", i32 18325445, i32 5360726}
!854 = !{i32 0, i32 65536}
!855 = !{!"function_entry_count", i64 8787299}
!856 = !{!"gimple.c:gimple_op_ptr"}
!857 = !{!"branch_weights", i32 1, i32 8787300}
!858 = !{!"function_entry_count", i64 1250798}
!859 = !{!"branch_weights", i32 1619, i32 1249181}
!860 = !{!"branch_weights", i32 1065, i32 555}
!861 = !{!"function_entry_count", i64 27145329}
!862 = !{!"gimple.c:gimple_assign_rhs1"}
!863 = !{!"function_entry_count", i64 452440}
!864 = !{!"gimple.c:gimple_call_chain_ptr"}
!865 = !{!"gimple.c:gimple_call_fn_ptr"}
!866 = !{!"function_entry_count", i64 5110972}
!867 = !{!"gimple.c:gimple_call_num_args"}
!868 = !{!"function_entry_count", i64 1056279}
!869 = !{!"gimple.c:gimple_call_arg_ptr"}
!870 = !{!"function_entry_count", i64 452429}
!871 = !{!"gimple.c:gimple_call_lhs_ptr"}
!872 = !{!"gimple.c:gimple_catch_types_ptr"}
!873 = !{!"gimple.c:gimple_eh_filter_types_ptr"}
!874 = !{!"gimple.c:walk_gimple_asm"}
!875 = distinct !{!875, !573}
!876 = distinct !{!876, !573}
!877 = distinct !{!877, !573}
!878 = !{!"gimple.c:gimple_omp_continue_control_def_ptr"}
!879 = !{!"gimple.c:gimple_omp_continue_control_use_ptr"}
!880 = !{!"gimple.c:gimple_omp_critical_name_ptr"}
!881 = !{!"gimple.c:gimple_omp_for_clauses_ptr"}
!882 = !{!"gimple.c:gimple_omp_for_collapse"}
!883 = !{!"gimple.c:gimple_omp_for_index_ptr"}
!884 = !{!"gimple.c:gimple_omp_for_initial_ptr"}
!885 = !{!"gimple.c:gimple_omp_for_final_ptr"}
!886 = !{!"gimple.c:gimple_omp_for_incr_ptr"}
!887 = !{!"gimple.c:gimple_omp_parallel_clauses_ptr"}
!888 = !{!"gimple.c:gimple_omp_parallel_child_fn_ptr"}
!889 = !{!"gimple.c:gimple_omp_parallel_data_arg_ptr"}
!890 = !{!"gimple.c:gimple_omp_task_clauses_ptr"}
!891 = !{!"gimple.c:gimple_omp_task_child_fn_ptr"}
!892 = !{!"gimple.c:gimple_omp_task_data_arg_ptr"}
!893 = !{!"gimple.c:gimple_omp_task_copy_fn_ptr"}
!894 = !{!"gimple.c:gimple_omp_task_arg_size_ptr"}
!895 = !{!"gimple.c:gimple_omp_task_arg_align_ptr"}
!896 = !{!"gimple.c:gimple_omp_sections_clauses_ptr"}
!897 = !{!"gimple.c:gimple_omp_sections_control_ptr"}
!898 = !{!"gimple.c:gimple_omp_single_clauses_ptr"}
!899 = !{!"gimple.c:gimple_omp_atomic_load_lhs_ptr"}
!900 = !{!"gimple.c:gimple_omp_atomic_load_rhs_ptr"}
!901 = !{!"gimple.c:gimple_omp_atomic_store_val_ptr"}
!902 = !{!"function_entry_count", i64 98331853}
!903 = !{!"gimple.c:gimple_op"}
!904 = !{!"branch_weights", i32 1, i32 98331854}
!905 = !{!"gimple.c:gimple_asm_noutputs"}
!906 = !{!"gimple.c:gimple_asm_output_op"}
!907 = !{!"gimple.c:gimple_asm_ninputs"}
!908 = !{!"gimple.c:gimple_asm_input_op"}
!909 = !{!"gimple.c:gimple_asm_nlabels"}
!910 = !{!"gimple.c:gimple_asm_label_op"}
!911 = !{!"gimple.c:gimple_has_location"}
!912 = !{!"gimple.c:gimple_catch_handler"}
!913 = !{!"gimple.c:gimple_eh_filter_failure"}
!914 = !{!"gimple.c:gimple_try_eval"}
!915 = !{!"gimple.c:gimple_try_cleanup"}
!916 = !{!"gimple.c:gimple_omp_for_pre_body"}
!917 = !{!"gimple.c:gimple_omp_body"}
!918 = !{!"gimple.c:gimple_wce_cleanup"}
!919 = !{!"function_entry_count", i64 2847226}
!920 = !{!"gimple.c:gimple_has_substatements"}
!921 = !{!"function_entry_count", i64 53676}
!922 = !{!"branch_weights", i32 8755, i32 44923}
!923 = !{!"branch_weights", i32 8755, i32 1}
!924 = !{!925, !556, i64 16}
!925 = !{!"function", !556, i64 0, !556, i64 8, !556, i64 16, !556, i64 24, !556, i64 32, !556, i64 40, !556, i64 48, !556, i64 56, !556, i64 64, !556, i64 72, !556, i64 80, !556, i64 88, !556, i64 96, !540, i64 104, !540, i64 108, !540, i64 112, !540, i64 116, !540, i64 120, !540, i64 124, !556, i64 128, !540, i64 136, !540, i64 137, !540, i64 138, !540, i64 138, !540, i64 138, !540, i64 138, !540, i64 138, !540, i64 138, !540, i64 138, !540, i64 139, !540, i64 139, !540, i64 139, !540, i64 139, !540, i64 139, !540, i64 139, !540, i64 139}
!926 = !{!"function_entry_count", i64 564649}
!927 = !{!"branch_weights", i32 20495, i32 544156}
!928 = !{!"function_entry_count", i64 492623}
!929 = !{!"branch_weights", i32 492624, i32 1}
!930 = !{!"branch_weights", i32 11741, i32 480884}
!931 = !{!925, !556, i64 8}
!932 = !{!"function_entry_count", i64 9181456}
!933 = !{!"branch_weights", i32 279669, i32 8901789}
!934 = !{!"branch_weights", i32 1, i32 279669}
!935 = !{!"branch_weights", i32 279669, i32 1}
!936 = !{!"function_entry_count", i64 9182448}
!937 = !{!"gimple.c:gimple_call_fndecl"}
!938 = !{!"branch_weights", i32 8902781, i32 279669}
!939 = !{!"function_entry_count", i64 9513657}
!940 = !{!"gimple.c:gimple_call_fn"}
!941 = !{!"function_entry_count", i64 8085072}
!942 = !{!"branch_weights", i32 7881409, i32 203665}
!943 = !{!"branch_weights", i32 5306422, i32 2574988}
!944 = !{!"function_entry_count", i64 29559133}
!945 = !{!"gimple.c:gimple_assign_rhs_code"}
!946 = !{!"branch_weights", i32 21046855, i32 8512280}
!947 = !{!"function_entry_count", i64 8939130}
!948 = !{!"branch_weights", i32 6141532, i32 2797600}
!949 = !{!"branch_weights", i32 3929, i32 2793672}
!950 = !{!"branch_weights", i32 755696, i32 2037977}
!951 = !{!"branch_weights", i32 6141532, i32 2041905}
!952 = !{!"gimple.c:gimple_expr_code"}
!953 = !{!"branch_weights", i32 1, i32 118236536, i32 2, i32 1}
!954 = !{!"function_entry_count", i64 4377608}
!955 = !{!"branch_weights", i32 3186995, i32 1190615}
!956 = !{!"branch_weights", i32 2181141, i32 1005855}
!957 = !{!"branch_weights", i32 1958132, i32 223010}
!958 = !{!"function_entry_count", i64 119}
!959 = !{!"branch_weights", i32 120, i32 1}
!960 = !{!"branch_weights", i32 97, i32 24}
!961 = !{!"branch_weights", i32 1, i32 24}
!962 = !{!"branch_weights", i32 1, i32 97}
!963 = !{!"function_entry_count", i64 4266787}
!964 = !{!"branch_weights", i32 42260, i32 4224529}
!965 = !{!"branch_weights", i32 496824, i32 3727706}
!966 = !{!"branch_weights", i32 266747, i32 230078}
!967 = !{!968, !556, i64 40}
!968 = !{!"control_flow_graph", !556, i64 0, !556, i64 8, !556, i64 16, !540, i64 24, !540, i64 28, !540, i64 32, !556, i64 40, !540, i64 48, !531, i64 52, !531, i64 60, !540, i64 68, !540, i64 72}
!969 = !{!968, !540, i64 72}
!970 = !{!"branch_weights", i32 260777, i32 5971}
!971 = !{!"function_entry_count", i64 496823}
!972 = !{!"gimple.c:gimple_label_label"}
!973 = !{!"function_entry_count", i64 278686}
!974 = !{!"gimple.c:VEC_basic_block_base_length"}
!975 = !{!"branch_weights", i32 1, i32 278687}
!976 = !{!977, !540, i64 0}
!977 = !{!"VEC_basic_block_base", !540, i64 0, !540, i64 4, !531, i64 8}
!978 = !{!"function_entry_count", i64 5970}
!979 = !{!"gimple.c:VEC_basic_block_gc_safe_grow_cleared"}
!980 = !{!"gimple.c:VEC_basic_block_base_replace"}
!981 = !{!"gimple.c:VEC_basic_block_gc_safe_grow"}
!982 = !{!"branch_weights", i32 1, i32 5971}
!983 = !{}
!984 = !{!"gimple.c:VEC_basic_block_base_address"}
!985 = !{!"gimple.c:VEC_basic_block_gc_reserve_exact"}
!986 = !{i32 0, i32 2}
!987 = !{!"branch_weights", i32 5971, i32 1}
!988 = !{!"gimple.c:VEC_basic_block_base_space"}
!989 = !{!977, !540, i64 4}
!990 = !{!"function_entry_count", i64 154816}
!991 = !{!"function_entry_count", i64 161695}
!992 = !{!"branch_weights", i32 160957, i32 740}
!993 = !{!"branch_weights", i32 12691, i32 149006}
!994 = !{!"function_entry_count", i64 32707148}
!995 = !{!"branch_weights", i32 213658463, i32 -1928125584, i32 291743659}
!996 = !{!"function_entry_count", i64 3768273}
!997 = !{!"gimple.c:gimple_call_lhs"}
!998 = !{!"function_entry_count", i64 22053}
!999 = !{!"branch_weights", i32 41, i32 924588, i32 1681}
!1000 = !{!"function_entry_count", i64 1135}
!1001 = !{!"gimple.c:gimple_call_set_lhs"}
!1002 = !{!"branch_weights", i32 1, i32 1136}
!1003 = !{!"branch_weights", i32 1130, i32 7}
!1004 = !{!"gimple.c:gimple_bind_vars"}
!1005 = !{!"gimple.c:gimple_bind_block"}
!1006 = !{!"gimple.c:gimple_catch_types"}
!1007 = !{!"gimple.c:gimple_eh_filter_types"}
!1008 = !{!"gimple.c:gimple_omp_for_clauses"}
!1009 = !{!"gimple.c:gimple_omp_for_set_cond"}
!1010 = !{!1011, !540, i64 0}
!1011 = !{!"gimple_omp_for_iter", !540, i64 0, !556, i64 8, !556, i64 16, !556, i64 24, !556, i64 32}
!1012 = !{!"gimple.c:gimple_omp_for_cond"}
!1013 = !{!"gimple.c:gimple_omp_for_set_index"}
!1014 = !{!1011, !556, i64 8}
!1015 = !{!"gimple.c:gimple_omp_for_index"}
!1016 = !{!"gimple.c:gimple_omp_for_initial"}
!1017 = !{!1011, !556, i64 16}
!1018 = !{!"gimple.c:gimple_omp_for_set_initial"}
!1019 = !{!"gimple.c:gimple_omp_for_final"}
!1020 = !{!1011, !556, i64 24}
!1021 = !{!"gimple.c:gimple_omp_for_set_final"}
!1022 = !{!"gimple.c:gimple_omp_for_incr"}
!1023 = !{!1011, !556, i64 32}
!1024 = !{!"gimple.c:gimple_omp_for_set_incr"}
!1025 = !{!"gimple.c:gimple_omp_parallel_clauses"}
!1026 = !{!"gimple.c:gimple_omp_parallel_child_fn"}
!1027 = !{!"gimple.c:gimple_omp_parallel_data_arg"}
!1028 = !{!"gimple.c:gimple_omp_task_clauses"}
!1029 = !{!"gimple.c:gimple_omp_task_child_fn"}
!1030 = !{!"gimple.c:gimple_omp_task_data_arg"}
!1031 = !{!"gimple.c:gimple_omp_task_copy_fn"}
!1032 = !{!"gimple.c:gimple_omp_task_arg_size"}
!1033 = !{!"gimple.c:gimple_omp_task_arg_align"}
!1034 = !{!"gimple.c:gimple_omp_critical_name"}
!1035 = !{!"gimple.c:gimple_omp_sections_clauses"}
!1036 = !{!"gimple.c:gimple_omp_sections_control"}
!1037 = !{!"gimple.c:gimple_omp_sections_set_control"}
!1038 = !{!"function_entry_count", i64 649714}
!1039 = !{!"gimple.c:gimple_set_def_ops"}
!1040 = !{!"gimple.c:gimple_set_use_ops"}
!1041 = !{!"function_entry_count", i64 4965852}
!1042 = !{!"gimple.c:gimple_has_mem_ops"}
!1043 = !{!"function_entry_count", i64 495239}
!1044 = !{!"gimple.c:gimple_set_vdef"}
!1045 = !{!"branch_weights", i32 1, i32 495240}
!1046 = !{!"gimple.c:gimple_vdef"}
!1047 = !{!"gimple.c:gimple_set_vuse"}
!1048 = !{!"function_entry_count", i64 1324017}
!1049 = !{!"gimple.c:gimple_vuse"}
!1050 = !{!"branch_weights", i32 99724, i32 1224295}
!1051 = !{!"function_entry_count", i64 7752547}
!1052 = !{!"branch_weights", i32 224695, i32 7527854}
!1053 = !{!"branch_weights", i32 3462604, i32 4065251}
!1054 = !{!925, !556, i64 24}
!1055 = !{!"branch_weights", i32 325522, i32 3739730}
!1056 = !{!"branch_weights", i32 3327719, i32 412012}
!1057 = !{!"branch_weights", i32 399385, i32 12628}
!1058 = !{!"function_entry_count", i64 8406228}
!1059 = !{!"gimple.c:is_gimple_call"}
!1060 = !{!"function_entry_count", i64 412011}
!1061 = !{!"gimple.c:gimple_call_noreturn_p"}
!1062 = !{!"function_entry_count", i64 12627}
!1063 = !{!"gimple.c:VEC_gimple_gc_safe_push"}
!1064 = !{!"gimple.c:VEC_gimple_gc_reserve"}
!1065 = !{!"branch_weights", i32 2980, i32 9649}
!1066 = !{!"gimple.c:VEC_gimple_base_quick_push"}
!1067 = !{!1068, !540, i64 0}
!1068 = !{!"VEC_gimple_base", !540, i64 0, !540, i64 4, !531, i64 8}
!1069 = !{!"gimple.c:VEC_gimple_base_space"}
!1070 = !{!"branch_weights", i32 2011, i32 10618}
!1071 = !{!1068, !540, i64 4}
!1072 = !{!"branch_weights", i32 1506405, i32 1}
!1073 = !{!"branch_weights", i32 1506396, i32 10}
!1074 = !{!"branch_weights", i32 639080, i32 867317}
!1075 = !{!"branch_weights", i32 1, i32 639079}
!1076 = !{!"branch_weights", i32 812366, i32 54952}
!1077 = !{!"branch_weights", i32 28889, i32 26064}
!1078 = !{!"branch_weights", i32 18, i32 28872}
!1079 = !{!"branch_weights", i32 28872, i32 1}
!1080 = !{!"branch_weights", i32 28889, i32 1}
!1081 = !{!"branch_weights", i32 1, i32 28888}
!1082 = !{!"branch_weights", i32 28888, i32 18325}
!1083 = distinct !{!1083, !573}
!1084 = !{!"branch_weights", i32 47213, i32 1}
!1085 = !{!"branch_weights", i32 756126, i32 639079}
!1086 = distinct !{!1086, !573}
!1087 = !{!"branch_weights", i32 1395205, i32 1}
!1088 = !{!"gimple.c:gimple_has_volatile_ops"}
!1089 = !{!"branch_weights", i32 1, i32 1506405}
!1090 = !{!"function_entry_count", i64 1868120}
!1091 = !{!"gimple.c:gimple_call_arg"}
!1092 = !{!"function_entry_count", i64 942670}
!1093 = !{!"branch_weights", i32 837781, i32 104891}
!1094 = !{!"branch_weights", i32 94259, i32 10633}
!1095 = !{!"branch_weights", i32 10633, i32 1}
!1096 = !{!"branch_weights", i32 1, i32 10632}
!1097 = !{!"branch_weights", i32 10632, i32 6855}
!1098 = distinct !{!1098, !573}
!1099 = !{!"branch_weights", i32 17487, i32 1}
!1100 = !{!"branch_weights", i32 1, i32 837781}
!1101 = !{!"branch_weights", i32 837780, i32 1}
!1102 = !{!"branch_weights", i32 173796, i32 837780}
!1103 = distinct !{!1103, !573}
!1104 = !{!"branch_weights", i32 1011576, i32 1}
!1105 = distinct !{!1105, !573}
!1106 = !{!"function_entry_count", i64 4453809}
!1107 = !{!"gimple.c:is_gimple_assign"}
!1108 = !{!"function_entry_count", i64 166413}
!1109 = !{!"function_entry_count", i64 167110}
!1110 = !{!"gimple.c:gimple_could_trap_p_1"}
!1111 = !{!"branch_weights", i32 83553, i32 1}
!1112 = !{!"branch_weights", i32 298685, i32 83553}
!1113 = distinct !{!1113, !573}
!1114 = !{!"branch_weights", i32 298681, i32 83558}
!1115 = !{!"branch_weights", i32 1, i32 1, i32 993, i32 82562}
!1116 = !{!"branch_weights", i32 1, i32 993}
!1117 = !{!"branch_weights", i32 993, i32 1}
!1118 = !{!"branch_weights", i32 46066, i32 36497}
!1119 = !{!"branch_weights", i32 -19194239, i32 6016006, i32 51860, i32 51860}
!1120 = !{!"branch_weights", i32 -2147483648, i32 0}
!1121 = !{!"branch_weights", i32 22458, i32 35685}
!1122 = !{!"gimple.c:gimple_asm_volatile_p"}
!1123 = !{!"function_entry_count", i64 82561}
!1124 = !{!"gimple.c:gimple_expr_type"}
!1125 = !{!"branch_weights", i32 1, i32 2, i32 330248, i32 1}
!1126 = !{!"branch_weights", i32 8666, i32 73897}
!1127 = !{!"function_entry_count", i64 46065}
!1128 = !{!"gimple.c:gimple_assign_rhs2"}
!1129 = !{!"branch_weights", i32 46066, i32 1}
!1130 = !{!"gimple.c:gimple_call_return_type"}
!1131 = !{!"function_entry_count", i64 697}
!1132 = !{!"branch_weights", i32 1, i32 698}
!1133 = !{!"function_entry_count", i64 92}
!1134 = !{!"branch_weights", i32 1, i32 93}
!1135 = !{!"function_entry_count", i64 20895}
!1136 = !{!"function_entry_count", i64 42031068}
!1137 = !{!"function_entry_count", i64 465373}
!1138 = !{!"branch_weights", i32 1494, i32 463881}
!1139 = !{!"branch_weights", i32 1, i32 1494}
!1140 = !{!"function_entry_count", i64 782669}
!1141 = !{!"branch_weights", i32 178980, i32 603691}
!1142 = !{!"branch_weights", i32 28516, i32 150465}
!1143 = !{!"branch_weights", i32 47595419, i32 3164841}
!1144 = !{!"function_entry_count", i64 191682}
!1145 = !{!"branch_weights", i32 173802, i32 17882}
!1146 = !{!"branch_weights", i32 147168, i32 26635}
!1147 = !{!"branch_weights", i32 146966, i32 203}
!1148 = !{!"branch_weights", i32 22735, i32 124232}
!1149 = !{!"function_entry_count", i64 1198362}
!1150 = !{!"branch_weights", i32 659149, i32 539215}
!1151 = !{!"branch_weights", i32 -496787062, i32 1176728069, i32 7547, i32 7547}
!1152 = !{!"function_entry_count", i64 20912676}
!1153 = !{!"gimple.c:handled_component_p"}
!1154 = !{!"branch_weights", i32 12452747, i32 82598, i32 6054482, i32 2322801, i32 1, i32 53, i32 1, i32 1}
!1155 = !{!"function_entry_count", i64 75117456}
!1156 = !{!"branch_weights", i32 59222916, i32 15884745, i32 2564, i32 1, i32 266, i32 1, i32 117, i32 6854}
!1157 = !{!"branch_weights", i32 1, i32 6854}
!1158 = distinct !{!1158, !573}
!1159 = !{!"function_entry_count", i64 1562046}
!1160 = !{!"branch_weights", i32 1562047, i32 1}
!1161 = !{!"branch_weights", i32 33838, i32 1528210}
!1162 = !{!"branch_weights", i32 208207, i32 1320004}
!1163 = !{!"function_entry_count", i64 1988219}
!1164 = !{!"gimple.c:strip_invariant_refs"}
!1165 = !{!"branch_weights", i32 864586, i32 1089796}
!1166 = !{!"branch_weights", i32 1, i32 457657, i32 1, i32 632140}
!1167 = !{!"branch_weights", i32 33783, i32 423875}
!1168 = !{!"branch_weights", i32 423819, i32 57}
!1169 = !{!"branch_weights", i32 423819, i32 1}
!1170 = !{!"branch_weights", i32 632140, i32 1}
!1171 = !{!"branch_weights", i32 1089796, i32 0}
!1172 = distinct !{!1172, !573}
!1173 = !{!"function_entry_count", i64 10615}
!1174 = !{!"branch_weights", i32 10616, i32 1}
!1175 = !{!"branch_weights", i32 1, i32 10616}
!1176 = !{!"branch_weights", i32 5156, i32 5461}
!1177 = !{!"function_entry_count", i64 136150}
!1178 = !{!"branch_weights", i32 10616, i32 125536}
!1179 = !{!"function_entry_count", i64 178008}
!1180 = !{!"branch_weights", i32 281, i32 119, i32 1, i32 1, i32 1555, i32 28770, i32 25496, i32 53728, i32 26243, i32 1, i32 1, i32 1, i32 1, i32 1, i32 40786, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1039}
!1181 = !{!"branch_weights", i32 119, i32 1}
!1182 = !{!"function_entry_count", i64 57622883}
!1183 = !{!"branch_weights", i32 1465200243, i32 -1224612317, i32 185468060, i32 93073}
!1184 = !{!"function_entry_count", i64 355}
!1185 = !{!"branch_weights", i32 1, i32 356}
!1186 = !{!"branch_weights", i32 45, i32 312}
!1187 = !{!"function_entry_count", i64 415558}
!1188 = !{!"branch_weights", i32 2, i32 415558}
!1189 = !{!"branch_weights", i32 308064, i32 107495}
!1190 = !{!"function_entry_count", i64 4304526}
!1191 = !{!"branch_weights", i32 790130, i32 3514397}
!1192 = !{!"branch_weights", i32 3514397, i32 0}
!1193 = distinct !{!1193, !573}
!1194 = !{!"branch_weights", i32 607977351, i32 -754768208, i32 72420239, i32 3998331, i32 -839843028, i32 -1271714722, i32 -1271714722, i32 -1271714722, i32 -1271714722, i32 -1271714722}
!1195 = !{!"branch_weights", i32 2731, i32 -790757159, i32 59666888, i32 2731}
!1196 = !{!"function_entry_count", i64 1588120}
!1197 = !{!"branch_weights", i32 1, i32 18229, i32 126116, i32 127651, i32 163696, i32 1152433, i32 1, i32 1}
!1198 = !{!"branch_weights", i32 18229, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!1199 = !{!"branch_weights", i32 1588120, i32 1}
!1200 = !{!"branch_weights", i32 974244, i32 2707339}
!1201 = !{!"branch_weights", i32 2696085, i32 11255}
!1202 = !{!"branch_weights", i32 1588120, i32 2093462}
!1203 = distinct !{!1203, !573}
!1204 = !{!"gimple.c:tree_operand_length"}
!1205 = !{!"branch_weights", i32 1, i32 1588121}
!1206 = !{!"function_entry_count", i64 62440}
!1207 = !{!"branch_weights", i32 -1852927407, i32 643669450, i32 49417}
!1208 = !{!"branch_weights", i32 13025, i32 1}
!1209 = !{!"branch_weights", i32 -1592705423, i32 731957364, i32 56195, i32 168582, i32 74568019}
!1210 = !{!"branch_weights", i32 1327, i32 1}
!1211 = !{!"branch_weights", i32 3, i32 1325}
!1212 = !{!"branch_weights", i32 1, i32 1325}
!1213 = !{!"branch_weights", i32 43050, i32 19392}
!1214 = !{!"function_entry_count", i64 13024}
!1215 = !{!"gimple.c:truth_value_p"}
!1216 = !{!"branch_weights", i32 1389, i32 1}
!1217 = !{!"branch_weights", i32 4639, i32 2146}
!1218 = !{!"branch_weights", i32 1389, i32 5395}
!1219 = distinct !{!1219, !573}
!1220 = !{!"branch_weights", i32 295, i32 1096}
!1221 = !{!"branch_weights", i32 1, i32 1390}
!1222 = !{!"gimple.c:VEC_tree_heap_alloc"}
!1223 = !{!"function_entry_count", i64 4638}
!1224 = !{!"gimple.c:VEC_tree_base_quick_push"}
!1225 = !{!"gimple.c:VEC_tree_heap_free"}
!1226 = !{!"function_entry_count", i64 601580}
!1227 = !{!"gimple.c:gimple_call_chain"}
!1228 = !{!"gimple.c:gimple_call_tail_p"}
!1229 = !{!"gimple.c:gimple_call_cannot_inline_p"}
!1230 = !{!"gimple.c:gimple_call_return_slot_opt_p"}
!1231 = !{!"gimple.c:gimple_call_from_thunk_p"}
!1232 = !{!"gimple.c:gimple_call_va_arg_pack_p"}
!1233 = distinct !{!1233, !573}
!1234 = distinct !{!1234, !573}
!1235 = distinct !{!1235, !573}
!1236 = !{!"gimple.c:gimple_type_hash"}
!1237 = !{!1238, !556, i64 8}
!1238 = !{!"obstack", !530, i64 0, !556, i64 8, !556, i64 16, !556, i64 24, !556, i64 32, !530, i64 40, !540, i64 48, !556, i64 56, !556, i64 64, !556, i64 72, !540, i64 80, !540, i64 80, !540, i64 80}
!1239 = !{!1238, !530, i64 40}
!1240 = !{!1238, !556, i64 32}
!1241 = !{!"gimple.c:gimple_type_eq"}
!1242 = !{!"gimple.c:iterative_hash_gimple_type"}
!1243 = !{!1238, !556, i64 24}
!1244 = !{!1238, !556, i64 16}
!1245 = !{!1238, !540, i64 48}
!1246 = !{!1247, !540, i64 0}
!1247 = !{!"sccs", !540, i64 0, !540, i64 4, !531, i64 8, !540, i64 12}
!1248 = !{!1247, !540, i64 4}
!1249 = !{!1247, !531, i64 8}
!1250 = distinct !{!1250, !573}
!1251 = distinct !{!1251, !573}
!1252 = !{!1247, !540, i64 12}
!1253 = distinct !{!1253, !573}
!1254 = !{!"gimple.c:VEC_tree_heap_safe_push"}
!1255 = !{!"gimple.c:iterative_hash_name"}
!1256 = !{!"gimple.c:visit"}
!1257 = !{!"gimple.c:VEC_tree_base_pop"}
!1258 = !{!"gimple.c:VEC_tree_heap_reserve"}
!1259 = !{!"gimple.c:VEC_tree_base_space"}
!1260 = !{!578, !540, i64 4}
!1261 = !{!"gimple.c:gimple_types_compatible_p"}
!1262 = !{!1263, !540, i64 8}
!1263 = !{!"type_pair_d", !540, i64 0, !540, i64 4, !540, i64 8}
!1264 = !{!1265, !556, i64 832}
!1265 = !{!"gcc_target", !1266, i64 0, !1268, i64 368, !1269, i64 664, !540, i64 744, !556, i64 752, !556, i64 760, !556, i64 768, !556, i64 776, !556, i64 784, !556, i64 792, !556, i64 800, !556, i64 808, !556, i64 816, !556, i64 824, !556, i64 832, !556, i64 840, !556, i64 848, !556, i64 856, !556, i64 864, !556, i64 872, !556, i64 880, !556, i64 888, !556, i64 896, !556, i64 904, !556, i64 912, !556, i64 920, !556, i64 928, !556, i64 936, !556, i64 944, !556, i64 952, !556, i64 960, !556, i64 968, !556, i64 976, !556, i64 984, !556, i64 992, !556, i64 1000, !556, i64 1008, !556, i64 1016, !556, i64 1024, !556, i64 1032, !556, i64 1040, !556, i64 1048, !556, i64 1056, !530, i64 1064, !530, i64 1072, !556, i64 1080, !556, i64 1088, !556, i64 1096, !556, i64 1104, !556, i64 1112, !556, i64 1120, !556, i64 1128, !556, i64 1136, !556, i64 1144, !556, i64 1152, !556, i64 1160, !556, i64 1168, !1270, i64 1176, !556, i64 1232, !556, i64 1240, !556, i64 1248, !556, i64 1256, !556, i64 1264, !556, i64 1272, !556, i64 1280, !556, i64 1288, !556, i64 1296, !556, i64 1304, !556, i64 1312, !556, i64 1320, !556, i64 1328, !556, i64 1336, !556, i64 1344, !556, i64 1352, !556, i64 1360, !556, i64 1368, !556, i64 1376, !556, i64 1384, !556, i64 1392, !556, i64 1400, !556, i64 1408, !556, i64 1416, !556, i64 1424, !556, i64 1432, !556, i64 1440, !556, i64 1448, !556, i64 1456, !530, i64 1464, !1271, i64 1472, !556, i64 1664, !556, i64 1672, !556, i64 1680, !556, i64 1688, !556, i64 1696, !556, i64 1704, !556, i64 1712, !556, i64 1720, !556, i64 1728, !556, i64 1736, !556, i64 1744, !556, i64 1752, !556, i64 1760, !556, i64 1768, !556, i64 1776, !1272, i64 1784, !1273, i64 1792, !1274, i64 1896, !1275, i64 1968, !556, i64 2016, !531, i64 2024, !531, i64 2025, !531, i64 2026, !531, i64 2027, !531, i64 2028, !531, i64 2029, !531, i64 2030, !531, i64 2031, !531, i64 2032, !531, i64 2033, !531, i64 2034, !531, i64 2035}
!1266 = !{!"asm_out", !556, i64 0, !556, i64 8, !556, i64 16, !1267, i64 24, !1267, i64 56, !556, i64 88, !556, i64 96, !556, i64 104, !556, i64 112, !556, i64 120, !556, i64 128, !556, i64 136, !556, i64 144, !556, i64 152, !556, i64 160, !556, i64 168, !556, i64 176, !556, i64 184, !556, i64 192, !556, i64 200, !556, i64 208, !556, i64 216, !556, i64 224, !556, i64 232, !556, i64 240, !556, i64 248, !556, i64 256, !556, i64 264, !556, i64 272, !556, i64 280, !556, i64 288, !556, i64 296, !556, i64 304, !556, i64 312, !556, i64 320, !556, i64 328, !556, i64 336, !556, i64 344, !556, i64 352, !556, i64 360}
!1267 = !{!"asm_int_op", !556, i64 0, !556, i64 8, !556, i64 16, !556, i64 24}
!1268 = !{!"sched", !556, i64 0, !556, i64 8, !556, i64 16, !556, i64 24, !556, i64 32, !556, i64 40, !556, i64 48, !556, i64 56, !556, i64 64, !556, i64 72, !556, i64 80, !556, i64 88, !556, i64 96, !556, i64 104, !556, i64 112, !556, i64 120, !556, i64 128, !556, i64 136, !556, i64 144, !556, i64 152, !556, i64 160, !556, i64 168, !556, i64 176, !556, i64 184, !556, i64 192, !556, i64 200, !556, i64 208, !556, i64 216, !556, i64 224, !556, i64 232, !556, i64 240, !556, i64 248, !556, i64 256, !556, i64 264, !556, i64 272, !556, i64 280, !556, i64 288}
!1269 = !{!"vectorize", !556, i64 0, !556, i64 8, !556, i64 16, !556, i64 24, !556, i64 32, !556, i64 40, !556, i64 48, !556, i64 56, !556, i64 64, !556, i64 72}
!1270 = !{!"addr_space", !556, i64 0, !556, i64 8, !556, i64 16, !556, i64 24, !556, i64 32, !556, i64 40, !556, i64 48}
!1271 = !{!"calls", !556, i64 0, !556, i64 8, !556, i64 16, !556, i64 24, !556, i64 32, !556, i64 40, !556, i64 48, !556, i64 56, !556, i64 64, !556, i64 72, !556, i64 80, !556, i64 88, !556, i64 96, !556, i64 104, !556, i64 112, !556, i64 120, !556, i64 128, !556, i64 136, !556, i64 144, !556, i64 152, !556, i64 160, !556, i64 168, !556, i64 176, !556, i64 184}
!1272 = !{!"c", !556, i64 0}
!1273 = !{!"cxx", !556, i64 0, !556, i64 8, !556, i64 16, !556, i64 24, !556, i64 32, !556, i64 40, !556, i64 48, !556, i64 56, !556, i64 64, !556, i64 72, !556, i64 80, !556, i64 88, !556, i64 96}
!1274 = !{!"emutls", !556, i64 0, !556, i64 8, !556, i64 16, !556, i64 24, !556, i64 32, !556, i64 40, !556, i64 48, !556, i64 56, !531, i64 64, !531, i64 65}
!1275 = !{!"target_option_hooks", !556, i64 0, !556, i64 8, !556, i64 16, !556, i64 24, !556, i64 32, !556, i64 40}
!1276 = distinct !{!1276, !573}
!1277 = distinct !{!1277, !573}
!1278 = distinct !{!1278, !573}
!1279 = !{!"gimple.c:lookup_type_pair"}
!1280 = !{!1263, !540, i64 0}
!1281 = !{!1263, !540, i64 4}
!1282 = !{!"gimple.c:compare_type_names_p"}
!1283 = !{!"gimple.c:type_pair_hash"}
!1284 = !{!"gimple.c:type_pair_eq"}
!1285 = !{!1286, !540, i64 56}
!1286 = !{!"htab", !556, i64 0, !556, i64 8, !556, i64 16, !556, i64 24, !530, i64 32, !530, i64 40, !530, i64 48, !540, i64 56, !540, i64 60, !556, i64 64, !556, i64 72, !556, i64 80, !556, i64 88, !556, i64 96, !540, i64 104}
!1287 = !{!1286, !540, i64 60}
!1288 = !{!"gimple.c:gimple_signed_or_unsigned_type"}
!1289 = distinct !{!1289, !573}
!1290 = !{!"function_entry_count", i64 828778}
!1291 = !{!"branch_weights", i32 828778, i32 1}
!1292 = !{!"branch_weights", i32 836731, i32 366317}
!1293 = !{!"branch_weights", i32 374269, i32 828778}
!1294 = distinct !{!1294, !573}
!1295 = !{!"branch_weights", i32 320037, i32 508743}
!1296 = !{!"branch_weights", i32 -1191015549, i32 48032658, i32 9848}
!1297 = !{!"branch_weights", i32 99724, i32 215438}
!1298 = !{!1299, !556, i64 0}
!1299 = !{!"count_ptr_d", !556, i64 0, !540, i64 8, !540, i64 12}
!1300 = !{!1299, !540, i64 8}
!1301 = !{!1299, !540, i64 12}
!1302 = !{!801, !556, i64 24}
!1303 = !{!"branch_weights", i32 1, i32 828779}
!1304 = !{!"gimple.c:op_iter_init_tree"}
!1305 = !{!1306, !540, i64 4}
!1306 = !{!"ssa_operand_iterator_d", !531, i64 0, !540, i64 4, !556, i64 8, !556, i64 16, !540, i64 24, !540, i64 28, !556, i64 32}
!1307 = !{!"function_entry_count", i64 2031824}
!1308 = !{!"gimple.c:op_iter_done"}
!1309 = !{!1306, !531, i64 0}
!1310 = !{!"gimple.c:op_iter_next_tree"}
!1311 = !{!1306, !556, i64 16}
!1312 = !{!"branch_weights", i32 828779, i32 1203047}
!1313 = !{!1314, !556, i64 0}
!1314 = !{!"use_optype_d", !556, i64 0, !1315, i64 8}
!1315 = !{!"ssa_use_operand_d", !556, i64 0, !556, i64 8, !531, i64 16, !556, i64 24}
!1316 = !{!1306, !556, i64 8}
!1317 = !{!"branch_weights", i32 828779, i32 1}
!1318 = !{!1319, !556, i64 8}
!1319 = !{!"def_optype_d", !556, i64 0, !556, i64 8}
!1320 = !{!1319, !556, i64 0}
!1321 = !{!"function_entry_count", i64 3927737}
!1322 = !{!"gimple.c:count_ptr_derefs"}
!1323 = !{!"branch_weights", i32 -725555118, i32 265052694, i32 455688835, i32 1090, i32 1092}
!1324 = !{!"branch_weights", i32 378201, i32 38994}
!1325 = !{!"branch_weights", i32 301528, i32 76674}
!1326 = !{!"gimple.c:op_iter_init"}
!1327 = !{!"branch_weights", i32 173562, i32 655218}
!1328 = !{!"gimple.c:gimple_use_ops"}
!1329 = !{!"function_entry_count", i64 1203046}
!1330 = !{!"gimple.c:get_use_from_ptr"}
!1331 = !{!1315, !556, i64 24}
!1332 = !{!"gimple.c:get_def_from_ptr"}
!1333 = !{!"function_entry_count", i64 6574740}
!1334 = !{!"branch_weights", i32 3694148, i32 2880594}
!1335 = !{!"branch_weights", i32 1659548, i32 1221047}
!1336 = !{!"branch_weights", i32 1032896, i32 188152}
!1337 = !{!"branch_weights", i32 1, i32 2880593}
!1338 = !{!"branch_weights", i32 2880593, i32 466718}
!1339 = distinct !{!1339, !573}
!1340 = !{!"branch_weights", i32 798078, i32 2082517}
!1341 = !{!"branch_weights", i32 -243601037, i32 90895170, i32 41770}
!1342 = !{!"branch_weights", i32 1, i32 21}
!1343 = !{!"branch_weights", i32 1, i32 2036821}
!1344 = !{!"branch_weights", i32 7, i32 2082511}
!1345 = !{!"branch_weights", i32 1, i32 7}
!1346 = !{!"branch_weights", i32 1859763, i32 1020832}
!1347 = !{!"branch_weights", i32 182009, i32 838824}
!1348 = !{!"branch_weights", i32 2619445, i32 1074704}
!1349 = !{!"branch_weights", i32 1739134, i32 880312}
!1350 = !{!"branch_weights", i32 911563, i32 827572}
!1351 = !{!"branch_weights", i32 1, i32 1791873}
!1352 = !{!"branch_weights", i32 1823125, i32 4175703}
!1353 = !{!"branch_weights", i32 2171, i32 4173533}
!1354 = !{!"branch_weights", i32 4206954, i32 1791873}
!1355 = distinct !{!1355, !573}
!1356 = !{!"branch_weights", i32 1054904, i32 847372}
!1357 = !{!"branch_weights", i32 462041, i32 385332}
!1358 = !{!"branch_weights", i32 149415, i32 235918}
!1359 = !{!"branch_weights", i32 235630, i32 289}
!1360 = !{!"branch_weights", i32 -800001343, i32 4124}
!1361 = !{!"branch_weights", i32 1, i32 847371}
!1362 = !{!"branch_weights", i32 1260227, i32 521073}
!1363 = !{!"branch_weights", i32 114310, i32 1145918}
!1364 = !{!"branch_weights", i32 660489, i32 1006502}
!1365 = !{!"branch_weights", i32 659684, i32 806}
!1366 = !{!"branch_weights", i32 933928, i32 847371}
!1367 = distinct !{!1367, !573}
!1368 = !{!"branch_weights", i32 1521058644, i32 626425004}
!1369 = !{!"branch_weights", i32 600192, i32 1}
!1370 = !{!"branch_weights", i32 599931, i32 262}
!1371 = !{!"branch_weights", i32 1, i32 262}
!1372 = !{!"branch_weights", i32 262, i32 1}
!1373 = !{!"branch_weights", i32 -243241741, i32 4120, i32 295241257}
!1374 = distinct !{!1374, !573}
!1375 = distinct !{!1375, !573}
!1376 = !{!"branch_weights", i32 28726, i32 42923}
!1377 = !{!"branch_weights", i32 29669, i32 13255}
!1378 = !{!"branch_weights", i32 121, i32 29549}
!1379 = !{!"branch_weights", i32 25263, i32 17541}
!1380 = !{!"branch_weights", i32 17460, i32 82}
!1381 = !{!"branch_weights", i32 2782, i32 -1558885697}
!1382 = distinct !{!1382, !573}
!1383 = !{!"function_entry_count", i64 3155822}
!1384 = !{!"gimple.c:get_base_loadstore"}
!1385 = !{!"branch_weights", i32 2933361, i32 222462}
!1386 = !{!"branch_weights", i32 222462, i32 0}
!1387 = distinct !{!1387, !573}
!1388 = !{!"branch_weights", i32 1497469445, i32 -1196086585}
!1389 = !{!"function_entry_count", i64 71647}
!1390 = !{!"gimple.c:gimple_return_retval"}
!1391 = !{!"gimple.c:gimple_phi_num_args"}
!1392 = !{!"gimple.c:gimple_phi_arg_imm_use_ptr"}
!1393 = !{!"gimple.c:gimple_phi_arg"}
!1394 = !{!"function_entry_count", i64 1872780}
!1395 = !{!"function_entry_count", i64 3694537}
!1396 = !{!"function_entry_count", i64 128909}
!1397 = !{!"gimple.c:gimple_ior_addresses_taken_1"}
!1398 = !{!"branch_weights", i32 1, i32 128909}
!1399 = !{!"branch_weights", i32 128909, i32 6596}
!1400 = distinct !{!1400, !573}
!1401 = !{!"branch_weights", i32 45018, i32 83893}
!1402 = distinct !{!1402, !573}
